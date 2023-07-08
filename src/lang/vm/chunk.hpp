#pragma once
#include <iostream>
#include <stdint.h>
#include <vector>

namespace lang {
using Value = double;
enum class OpCode { OP_RETURN, OP_CONSTANT };

class Chunk { // https://craftinginterpreters.com/chunks-of-bytecode.html#constant-instructions
private:
    std::vector<OpCode> code;
    std::vector<Value> constants;

public:
    /**
    @param opcode gets **moved** into an internal store
    */
    void push_back(const OpCode& opcode);
    void shrink_to_fit();

    // Custom
    static const size_t simple_instruction(const std::string& name, const size_t& offset);
    size_t disassemble_instruction(const size_t& offset);
    void disassemble_chunk(const std::string& name);

    // Values
    /**
    @param value gets **moved** into an internal store
    */
    size_t add_constant(const Value& value);
};
}
