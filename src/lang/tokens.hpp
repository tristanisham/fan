#pragma once
#include <iostream>
#include <ostream>
#include <optional>

namespace lang {
enum class TokenType {
    // Single-character tokens.
    LEFT_PAREN,
    RIGHT_PAREN,
    LEFT_BRACE,
    RIGHT_BRACE,
    COMMA,
    DOT,
    MINUS,
    PLUS,
    SEMICOLON,
    SLASH,
    STAR,

    // One or two character tokens.
    BANG,
    BANG_EQUAL,
    EQUAL,
    EQUAL_EQUAL,
    GREATER,
    GREATER_EQUAL,
    LESS,
    LESS_EQUAL,

    // Literals.
    IDENTIFIER,
    STRING,
    NUMBER,

    // Keywords.
    AND,
    CLASS,
    ELSE,
    FALSE,
    FUN,
    FOR,
    IF,
    NIL,
    OR,
    PRINT,
    RETURN,
    SUPER,
    THIS,
    TRUE,
    VAR,
    WHILE,

    EOFILE,
};

const char* token_name(const TokenType& tk);


class Token {
public:
    TokenType type;
    std::string lexeme;
    std::optional<std::string> literal;
    size_t line;

    Token(const Token&) = default;
    Token(Token&&) = default;
    Token& operator=(const Token&) = default;
    Token& operator=(Token&&) = default;
    Token(const TokenType& type, const std::string& lexeme, const std::optional<std::string>& literal, const size_t& line)
    {
        this->type = type;
        this->lexeme = lexeme;
        this->literal = literal;
        this->line = line;
    }

    void token_type_name(std::ostream& os)
    {
        static const char* names[] = { "LEFT_PAREN", "RIGHT_PAREN", "LEFT_BRACE", "RIGHT_BRACE", "COMMA", "DOT",
            "MINUS", "PLUS", "SEMICOLON", "SLASH", "STAR", "BANG", "BANG_EQUAL", "EQUAL", "EQUAL_EQUAL", "GREATER",
            "GREATER_EQUAL", "LESS", "LESS_EQUAL", "IDENTIFIER", "STRING", "NUMBER", "AND", "CLASS", "ELSE", "FALSE",
            "FUN", "FOR", "IF", "NIL", "OR", "PRINT", "RETURN", "SUPER", "THIS", "TRUE", "VAR", "WHILE", "EOFILE" };
        os << names[static_cast<int>(this->type)];
    }

    friend std::ostream& operator<<(std::ostream& os, const Token& obj)
    {
        os << lang::token_name(obj.type) << " " << obj.lexeme << " " << obj.literal.value_or("<null>");
        return os;
    };
};
}
