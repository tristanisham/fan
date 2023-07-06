#include "lang.hpp"
#include "tokens.hpp"
#include <cstdio>
#include <filesystem>
#include <fstream>
#include <string>
#include <sysexits.h>

namespace fs = std::filesystem;

const char* lang::token_name(const TokenType& tk)
{
    static const char* names[] = { "LEFT_PAREN", "RIGHT_PAREN", "LEFT_BRACE", "RIGHT_BRACE", "COMMA", "DOT", "MINUS",
        "PLUS", "SEMICOLON", "SLASH", "STAR", "BANG", "BANG_EQUAL", "EQUAL", "EQUAL_EQUAL", "GREATER", "GREATER_EQUAL",
        "LESS", "LESS_EQUAL", "IDENTIFIER", "STRING", "NUMBER", "AND", "CLASS", "ELSE", "FALSE", "FUN", "FOR", "IF",
        "NIL", "OR", "PRINT", "RETURN", "SUPER", "THIS", "TRUE", "VAR", "WHILE", "EOFILE" };
    return names[static_cast<int>(tk)];
}

void lang::run(const std::string& script)
{
    lang::Scanner scanner { script };
    auto tokens = scanner.scan_tokens();
    for (auto const& tk : tokens) {
        std::cout << tk << std::endl;
    }
}

int lang::run_file(const std::string& path)
{
    fs::path target { path };
    if (!fs::exists(target)) {
        return EX_NOINPUT;
    }

    std::ifstream t_buff("file.txt");
    std::stringstream buffer;
    buffer << t_buff.rdbuf();

    lang::run(buffer.str());

    if (lang::had_error) {
        return EX_DATAERR;
    }

    return 0;
}

int lang::run_repl()
{
    std::cout << "> ";
    for (std::string line; std::getline(std::cin, line);) {
        if (line.empty()) {
            break;
        }
        lang::run(line);
        lang::had_error = false;
        std::cout << "> ";
    }

    return 0;
}
