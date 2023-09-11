#pragma once
#include "../http/http.hpp"
#include "./router/router.hpp"
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

// extern "C" {
// #include "../sqlite/sqlite3.h"
// }

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
        virtual ~Action() = default;  // Add this line
    };

    void start();
    /**
    @param job Freed by reciever. Do not free as caller.
    */
    void queue_job(Action* job);
    void stop();
    bool busy();

private:
    /**
    thread_loop() frees *Actions after running
    */
    void thread_loop();
    bool should_terminate = false;
    std::mutex queue_mutex;
    std::condition_variable mutex_condition;
    std::vector<std::thread> threads;
    std::queue<Action*> jobs;
};

/**
 * @class Config handles routing/server instructions for Void
 */
class Config : public ThreadPool::Action {
private:
    int client_fd;
    std::shared_ptr<Router> router;

    void bind_client_fd(const int& client_id);

public:
    // Move/Copy semantics
    Config() = default;
    Config(const Config&) = default;
    Config(Config&&) = default;
    Config& operator=(const Config&) = default;
    Config& operator=(Config&&) = default;

    // Removed const reference because I was unsure of lifetimes.
    // Might be an extra copy.
    void add_router(std::shared_ptr<Router> router);

    http::Response route(const http::Request& req);
};

std::shared_ptr<Config> default_config();

// Implemented in ./backend.cpp
class Backend : public ThreadPool::Action {
public:
    // Client(const int& client_id);
    Backend(const int& client_id, Config* config);

    void job() override;

private:
    int client_fd;
    Config* config;
};

/**
@param port - The port for the server to bind to
@param std::shared_ptr<Router> - A router for the server if you want one. Will be default_router() if not.
*/
int start(int port, std::shared_ptr<Config> = default_config());

}
