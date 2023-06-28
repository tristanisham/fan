#include "./server.hpp"

int server::start(int port, std::shared_ptr<server::Router> router)
{
    int sockfd;
    struct sockaddr_in addr;

    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0) {
        std::cerr << "Error creating socket" << std::endl;
        return -1;
    }

    addr.sin_family = AF_INET;
    addr.sin_port = htons(port);
    addr.sin_addr.s_addr = INADDR_ANY;

    int ret = bind(sockfd, (struct sockaddr*)&addr, sizeof(addr));
    if (ret < 0) {
        std::cerr << "Error binding to  http://localhost:" << port << std::endl;
        return -1;
    }

    std::cout << "Successfully bound to http://localhost:" << port << std::endl;

    listen(sockfd, 10);

    auto thread_pool = server::ThreadPool();
    struct sockaddr_in client_addr;
    socklen_t length = sizeof(sockaddr_in);
    int new_sd;

    thread_pool.start();

    while ((new_sd = accept(sockfd, (sockaddr*)&client_addr, (socklen_t*)&length)) > 0) {
        server::Client* conn = new server::Client { new_sd, router.get() };  // freed in server/client.cpp
        thread_pool.queue_job(conn);
    }

    thread_pool.stop();
    close(sockfd);
    return 0;
}
