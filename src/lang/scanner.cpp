#include "lang.hpp"
#include <stdexcept>

using tk = lang::TokenType;

lang::Scanner::Scanner(const std::string& src) { this->source = src; }

const bool lang::Scanner::is_at_end() { return this->current >= this->source.length(); }

const char lang::Scanner::cursor()
{
    if (this->is_at_end()) {
        return '\0';
    }
    return this->source.at(this->current);
}

void lang::Scanner::advance(const size_t& i) { this->current += i; }

void lang::Scanner::add_token(const TokenType& tk, const std::optional<std::string>& literal)
{
    auto text = this->source.substr(this->start, this->current - this->start);
    this->tokens.push_back(lang::Token { tk, text, literal, this->line });
}

bool lang::Scanner::match(const char& expected)
{
    if (this->is_at_end()) {
        return false;
    }

    if (this->peek_next() != expected) {
        return false;
    }

    this->advance();
    return true;
}



const char lang::Scanner::peek_next()
{
    if (this->current + 1 >= this->source.length())
        return '\0';
    return this->source.at(this->current + 1);
}

void lang::Scanner::string()
{
    this->advance();
    while (this->cursor() != '"' && !this->is_at_end()) {
        if (this->cursor() == '\n') {
            this->line++;
        }
        this->advance();
    }

    if (this->is_at_end()) {
        // Good place to add more detailed error message.
        lang::error(this->line, "Unterminated string.");
        return;
    }

    this->advance();

    // Escape sequence parsing goes here.
    auto value = this->source.substr(this->start, this->current - this->start);
    this->add_token(tk::STRING, value);
}

const bool lang::Scanner::is_digit(const char& c) { return (c >= '0' && c <= '9'); }

void lang::Scanner::number()
{
    while (this->is_digit(this->cursor())) {
        this->advance();
    }

    if (this->cursor() == '.' && this->is_digit(this->peek_next())) {
        // Consumes the '.'
        this->advance();

        while (this->is_digit(this->cursor())) {
            this->advance();
        }
    }

    // TODO: fix number parsing
    this->add_token(tk::NUMBER, this->source.substr(this->start, this->current - this->start));
}

const bool lang::Scanner::is_alpha(const char& c)
{
    return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || c == '_';
}

const bool lang::Scanner::is_alphanumeric(const char& c) { return (this->is_alpha(c) || this->is_digit(c)); }

void lang::Scanner::identifier()
{
    while (this->is_alphanumeric(this->cursor())) {
        this->advance();
    }

    auto text = this->source.substr(this->start, this->current - this->start);

    auto pos = lang::keywords.find(text);
    if (pos == lang::keywords.end()) {
        this->add_token(tk::IDENTIFIER);
    } else {
        this->add_token(pos->second);
    }
}

void lang::Scanner::scan_token()
{
    auto c = this->cursor();
    switch (c) {
    case '(':
        this->add_token(tk::LEFT_PAREN);
        this->advance();
        break;
    case ')':
        this->add_token(tk::RIGHT_PAREN);
        this->advance();
        break;
    case '{':
        this->add_token(tk::LEFT_BRACE);
        this->advance();
        break;
    case '}':
        this->add_token(tk::RIGHT_BRACE);
        this->advance();
        break;
    case ',':
        this->add_token(tk::COMMA);
        this->advance();
        break;
    case '.':
        this->add_token(tk::DOT);
        this->advance();
        break;
    case '-':
        this->add_token(tk::MINUS);
        this->advance();
        break;
    case '+':
        this->add_token(tk::PLUS);
        this->advance();
        break;
    case ';':
        this->add_token(tk::SEMICOLON);
        this->advance();
        break;
    case '*':
        this->add_token(tk::STAR);
        this->advance();
        break;
    case '\t':
    case '\r':
    case ' ':
        this->advance();
        break;
    case '\n':
        this->line++;
        this->advance();
        break;
    case '!':
        this->add_token((this->match(c) ? tk::BANG_EQUAL : tk::BANG));
        this->advance();

        break;
    case '=':
        this->add_token((this->match(c) ? tk::EQUAL_EQUAL : tk::EQUAL));
        this->advance();

        break;
    case '<':
        this->add_token((this->match(c) ? tk::LESS_EQUAL : tk::LESS));
        this->advance();

        break;
    case '>':
        this->add_token((this->match(c) ? tk::GREATER_EQUAL : tk::GREATER));
        this->advance();

        break;
    case '/':
        if (this->match('/')) {
            while (this->cursor() != '\n' && !this->is_at_end()) {
                this->advance();
            }
        } else {
            this->add_token(tk::SLASH);
            this->advance();
        }
        break;
    case '"':
        this->string();
        this->advance();
        break;
    default:
        if (this->is_digit(c)) {
            this->number();
        } else if (this->is_alpha(c)) {
            this->identifier();
        } else {
            lang::error(this->line, "Unexpected character: " + std::string(1, c));
        }

        break;
    }
}

std::vector<lang::Token> lang::Scanner::scan_tokens()
{

    while (!this->is_at_end()) {
        this->start = this->current;
        this->scan_token();
    }

    this->tokens.push_back(lang::Token { tk::EOFILE, std::string { EOF }, std::nullopt, this->line });
    return this->tokens;
}
