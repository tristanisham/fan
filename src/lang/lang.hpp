#pragma once
#include "tokens.hpp"
#include <iostream>
#include <optional>
#include <sysexits.h>  // https://man.freebsd.org/cgi/man.cgi?query=sysexits&apropos=0&sektion=0&manpath=FreeBSD+4.3-RELEASE&format=html
#include <unordered_map>
#include <vector>

namespace lang {

static bool had_error = false;

static const std::unordered_map<std::string, lang::TokenType> keywords = {
    { "and", lang::TokenType::AND },
    { "class", lang::TokenType::CLASS },
    { "else", lang::TokenType::ELSE },
    { "false", lang::TokenType::FALSE },
    { "for", lang::TokenType::FOR },
    { "fun", lang::TokenType::FUN },
    { "if", lang::TokenType::IF },
    { "nil", lang::TokenType::NIL },
    { "or", lang::TokenType::OR },
    { "print", lang::TokenType::PRINT },
    { "return", lang::TokenType::RETURN },
    { "super", lang::TokenType::SUPER },
    { "this", lang::TokenType::THIS },
    { "true", lang::TokenType::TRUE },
    { "var", lang::TokenType::VAR },
    { "while", lang::TokenType::WHILE },
};

void report(size_t line, const std::string& where, const std::string& message);

void error(size_t line, const std::string& message);

int run_file(const std::string& path);

int run_repl();

void run(const std::string& script);

class Scanner {
private:
    std::string source;
    std::vector<Token> tokens;
    size_t start;
    size_t current;
    size_t line = 1;
    const bool is_at_end();
    const char advance();
    bool match(const char& expected);
    const char peek();
    const char peek_next();
    void string();
    const bool is_digit(const char& c);
    void number();
    const bool is_alpha(const char& c);
    const bool is_alphanumeric(const char& c);
    void identifier();

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
