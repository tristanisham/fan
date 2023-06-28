#include "./server.hpp"

void server::Router::job() {

}

std::shared_ptr<server::Router> server::default_router() {
    return std::make_shared<server::Router>(server::Router{});
}