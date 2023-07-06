#include "lang.hpp"

void lang::report(const size_t& line, const size_t& start, const size_t& end, const std::string& message)
{
    std::cerr << "[Line " << line << " Col "<< start <<":" << end << "] Error: " << message << std::endl;
    lang::had_error = true;
}

void lang::error(const size_t& line, const size_t& start, const size_t& end, const std::string& message) { lang::report(line, start, end, message); }
