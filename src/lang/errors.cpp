#include "lang.hpp"

void lang::report(size_t line, const std::string& where, const std::string& message)
{
    std::cerr << "[Line " << line << "] Error: " << where << ": " << message << std::endl;
    lang::had_error = true;
}

void lang::error(size_t line, const std::string& message) { lang::report(line, "", message); }
