#include "server.hpp"
#include <functional>
#include <mutex>


void server::ThreadPool::start()
{
  const uint32_t num_threads = std::thread::hardware_concurrency();  // Max # of threads the system supports
  this->threads.resize(num_threads);
  for (uint32_t i = 0; i < num_threads; i++) {
    this->threads.emplace_back(std::move(std::thread { [this]() { this->thread_loop(); } }));
  }
}

void server::ThreadPool::thread_loop()
{
  while (true) {
    Action* job;
    {
      std::unique_lock<std::mutex> lock(this->queue_mutex);
      this->mutex_condition.wait(lock, [this] { return !this->jobs.empty() || this->should_terminate; });
      if (this->should_terminate) {
        return;
      }
      job = jobs.front();
      this->jobs.pop();
    }
    job->job();
    delete job;
  }
}

void server::ThreadPool::queue_job(Action* job)
{
  {
    std::unique_lock<std::mutex> lock(this->queue_mutex);
    this->jobs.push(job);
  }

  this->mutex_condition.notify_one();
}

bool server::ThreadPool::busy()
{
  bool pool_busy;
  {
    std::unique_lock<std::mutex> lock(this->queue_mutex);
    pool_busy = this->jobs.empty();
  }
  return pool_busy;
}

void server::ThreadPool::stop()
{
  {
    std::unique_lock<std::mutex> lock(this->queue_mutex);
    this->should_terminate = true;
  }

  this->mutex_condition.notify_all();
  for (std::thread& active_thread : this->threads) {
    active_thread.join();
  }
  this->threads.clear();
}
