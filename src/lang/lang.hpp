#pragma once
#include "tokens.hpp"
#include <iostream>
#include <optional>
#include <sysexits.h>  // https://man.freebsd.org/cgi/man.cgi?query=sysexits&apropos=0&sektion=0&manpath=FreeBSD+4.3-RELEASE&format=html
#include <vector>

namespace lang {

static bool had_error = false;



void report(const size_t& line, const size_t& start, const size_t& end, const std::string& message);

void error(const size_t& line, const size_t& start, const size_t& end, const std::string& message);

int run_file(const std::string& path);

int run_repl();

void run(const std::string& script);

class Scanner {
private:
    std::string source;
    std::vector<Token> tokens;
    size_t start = 0;
    size_t current = 0;
    size_t line = 1;
    const bool is_at_end();

    /**
    `advance` moves the iterator's cursor forward.
    @param i The amount forward to move the cursor. Defaults to 1.
    */
    void advance(const size_t& i = 1);

    // `match` check to see if the next character in the iterator matches `expected`.
    // If so, it'll advance the cursor by 1.
    bool match(const char& expected);
    const char peek_next();
    void string();
    const bool is_digit(const char& c);
    void number();
    const bool is_alpha(const char& c);
    const bool is_alphanumeric(const char& c);
    void identifier();
    // New methods
    const char cursor();

    // Maniulation
    void add_token(const TokenType& tk, const std::optional<std::string>& literal = std::nullopt);
    void scan_token();

public:
    Scanner(const std::string& src);
    Scanner(const Scanner&) = default;
    Scanner(Scanner&&) = default;
    Scanner& operator=(const Scanner&) = delete;
    Scanner& operator=(Scanner&&) = delete;

    std::vector<Token> scan_tokens();
};
}
