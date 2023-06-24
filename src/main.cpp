#include "server/server.hpp"
#include <cstring>
#include <future>
#include <iostream>
#include <memory>
#include <netinet/in.h>
#include <sys/socket.h>
#include <thread>
#include <unistd.h>
#include <vector>

int main(int argc, char** argv)
{
  std::string PORT { "8080" };
  if (argc >= 2) {
    PORT = std::string { argv[1] };
  }

  int sockfd;
  struct sockaddr_in addr;
  char buffer[1024];
  int bytes_recvd;

  sockfd = socket(AF_INET, SOCK_STREAM, 0);
  if (sockfd < 0) {
    std::cerr << "Error creating socket" << std::endl;
    return -1;
  }

  addr.sin_family = AF_INET;
  addr.sin_port = htons(std::atoi(PORT.c_str()));
  addr.sin_addr.s_addr = INADDR_ANY;

  int ret = bind(sockfd, (struct sockaddr*)&addr, sizeof(addr));
  if (ret < 0) {
    std::cerr << "Error binding to port" << std::endl;
    return -1;
  }

  std::cout << "Successfully bound to port " << PORT << std::endl;

  listen(sockfd, 10);

  auto thread_pool = server::ThreadPool();
  struct sockaddr_in client_addr;
  socklen_t length = sizeof(sockaddr_in);
  int new_sd;

  thread_pool.start();

  while ((new_sd = accept(sockfd, (sockaddr*)&client_addr, (socklen_t*)&length)) > 0) {
    server::Client* conn = new server::Client { new_sd };  // freed in server/client.cpp
    thread_pool.queue_job(conn);
  }

  thread_pool.stop();
  close(sockfd);
  // close(client_fd);

  return 0;
}
