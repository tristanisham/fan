#include "./server.hpp"


std::shared_ptr<server::Router> server::default_router() {    
    return std::make_shared<server::Router>(server::Router{});
}