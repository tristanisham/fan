#include "lang.hpp"
#include <stdexcept>

using tk = lang::TokenType;

lang::Scanner::Scanner(const std::string& src) { this->source = src; }

const bool lang::Scanner::is_at_end() { return this->current >= this->source.length(); }

const char lang::Scanner::advance() { return this->source.at(this->current++); }

void lang::Scanner::add_token(const TokenType& tk, const std::optional<std::string>& literal)
{
    auto text = this->source.substr(this->start, this->current);
    this->tokens.push_back(lang::Token { tk, text, literal, this->line });
}

bool lang::Scanner::match(const char& expected)
{
    if (this->is_at_end())
        return false;
    if (this->source.at(this->current) != expected)
        return false;
    this->current++;
    return true;
}

const char lang::Scanner::peek()
{
    if (this->is_at_end())
        return '\0';
    return this->source.at(this->current);
}

const char lang::Scanner::peek_next()
{
    if (this->current + 1 >= this->source.length())
        return '\0';
    return this->source.at(this->current + 1);
}

void lang::Scanner::string()
{
    while (this->peek() != '"' && !this->is_at_end()) {
        if (this->peek() == '\n') {
            this->line++;
        }
        this->advance();
    }

    if (this->is_at_end()) {
        lang::error(this->line, "Unterminated string.");
        return;
    }

    this->advance();

    // Escape sequence parsing goes here.
    auto value = this->source.substr(this->start + 1, this->current - 1);
    this->add_token(tk::STRING, value);
}

const bool lang::Scanner::is_digit(const char& c) { return (c >= '0' && c <= '9'); }

void lang::Scanner::number()
{
    while (this->is_digit(this->peek())) {
        this->advance();
    }

    if (this->peek() == '.' && this->is_digit(this->peek_next())) {
        // Consumes the '.'
        this->advance();

        while (this->is_digit(this->peek())) {
            this->advance();
        }
    }

    // TODO: fix number parsing
    this->add_token(tk::NUMBER, this->source.substr(this->start, this->current));
}

const bool lang::Scanner::is_alpha(const char& c)
{
    return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || c == '_';
}

const bool lang::Scanner::is_alphanumeric(const char& c) { return (this->is_alpha(c) || this->is_digit(c)); }

void lang::Scanner::identifier()
{
    std::cout << "START 0: " << this->start << std::endl;
    while (this->is_alphanumeric(this->peek())) {
        std::cout << this->peek() << std::endl;
        this->advance();
    }

    auto text = this->source.substr(this->start, this->current);
    std::cout << text << "\n"
              << "START 1: " << this->start << std::endl;

    auto pos = lang::keywords.find(text);
    if (pos == lang::keywords.end()) {
        this->add_token(tk::IDENTIFIER);
    } else {
        this->add_token(pos->second, text);
    }
}

void lang::Scanner::scan_token()
{
    auto c = this->advance();
    if (c == '(') {
        this->add_token(tk::LEFT_PAREN);
    } else if (c == ')') {
        this->add_token(tk::RIGHT_PAREN);
    } else if (c == '{') {
        this->add_token(tk::LEFT_BRACE);
    } else if (c == '}') {
        this->add_token(tk::RIGHT_BRACE);
    } else if (c == ',') {
        this->add_token(tk::COMMA);
    } else if (c == '.') {
        this->add_token(tk::DOT);
    } else if (c == '-') {
        this->add_token(tk::MINUS);
    } else if (c == '+') {
        this->add_token(tk::PLUS);
    } else if (c == ';') {
        this->add_token(tk::SEMICOLON);
    } else if (c == '*') {
        this->add_token(tk::STAR);
    } else if (c == '\n') {
        this->line++;
    } else if (c == '!') {
        this->add_token((this->match(c) ? tk::BANG_EQUAL : tk::BANG));
    } else if (c == '=') {
        this->add_token((this->match(c) ? tk::EQUAL_EQUAL : tk::EQUAL));
    } else if (c == '<') {
        this->add_token((this->match(c) ? tk::LESS_EQUAL : tk::LESS));
    } else if (c == '>') {
        this->add_token((this->match(c) ? tk::GREATER_EQUAL : tk::GREATER));
    } else if (c == '/') {
        if (this->match('/')) {
            while (this->peek() != '\n' && !this->is_at_end()) {
                this->advance();
            }
        } else {
            this->add_token(tk::SLASH, std::string(c, 1));
        }
    } else if (c == ' ' || c == '\r' || c == '\t') {
        // This might break shit.
        // https://craftinginterpreters.com/scanning.html#longer-lexemes
        // Do nothing and be happy about it!
    } else if (c == '"') {
        this->string();
    } else {
        if (this->is_digit(c)) {
            this->number();
        } else if (this->is_alpha(c)) {
            this->identifier();
        } else {
            lang::error(this->line, "Unexpected character: " + std::string(1, c));
        }
    }
}

std::vector<lang::Token> lang::Scanner::scan_tokens()
{

    while (!this->is_at_end()) {
        std::cout << "START Main: " << this->start << "CURRENT Main: " << this->current << std::endl;
        this->start = this->current;
        this->scan_token();
    }

    this->tokens.push_back(lang::Token { tk::EOFILE, std::string { EOF }, std::nullopt, this->line });
    return this->tokens;
}
