#pragma once
#include "../http/http.hpp"
#include <condition_variable>
#include <functional>
#include <iostream>
#include <memory>
#include <mutex>
#include <netinet/in.h>
#include <queue>
#include <sys/socket.h>
#include <thread>
#include <unistd.h>
#include <vector>

namespace server {

/**
 * ThreadPool for managing concurrent web requests.
 * Based off: https://stackoverflow.com/questions/15752659/thread-pooling-in-c11
 */
class ThreadPool {

public:
    class Action {
    public:
        virtual void job() {};
    };
    void start();
    void queue_job(Action* job);
    void stop();
    bool busy();

private:
    void thread_loop();
    bool should_terminate = false;
    std::mutex queue_mutex;
    std::condition_variable mutex_condition;
    std::vector<std::thread> threads;
    std::queue<Action*> jobs;
};

class Client : public ThreadPool::Action {
public:
    Client(const int& client_id);

    void job() override;

private:
    int client_fd;
};

class Router : ThreadPool::Action {
public:
    void get(std::string route, std::function<http::Response(http::Request req)> ctx);
    void put(std::string route, std::function<http::Response(http::Request req)> ctx);
    void del(std::string route, std::function<http::Response(http::Request req)> ctx);
    void head(std::string route, std::function<http::Response(http::Request req)> ctx);
    void options(std::string route, std::function<http::Response(http::Request req)> ctx);
    void patch(std::string route, std::function<http::Response(http::Request req)> ctx);
    void trace(std::string route, std::function<http::Response(http::Request req)> ctx);

    void job() override;
};

std::shared_ptr<Router> default_router();

/**
@param port - The port for the server to bind to
@param std::shared_ptr<Router> - A router for the server if you want one. Will be default_router() if not.
*/
int start(int port, std::shared_ptr<Router> = default_router());

}
