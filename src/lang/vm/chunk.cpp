#include "chunk.hpp"
#include <cstddef>
#include <cstdio>

void lang::Chunk::push_back(const lang::OpCode& opcode) { this->code.push_back(std::move(opcode)); }

void lang::Chunk::shrink_to_fit() { this->code.shrink_to_fit(); }

const size_t lang::Chunk::simple_instruction(const std::string& name, const size_t& offset)
{
    std::cout << name << std::endl;
    return offset + 1;
}

size_t lang::Chunk::disassemble_instruction(const size_t& offset)
{
    OpCode instruction = this->code.at(offset);
    switch (instruction) {
    case OpCode::OP_RETURN:
        return Chunk::simple_instruction("OPO_RETURN", offset);
    default:
        std::cout << "Unknown opcode " << static_cast<int>(instruction) << std::endl;
        return offset + 1;
    }
}

void lang::Chunk::disassemble_chunk(const std::string& name)
{
    std::cout << "==" << name << "==" << std::endl;

    for (size_t offset = 0; offset < this->code.size();) {
        offset = this->disassemble_instruction(offset);
    }
}

size_t lang::Chunk::add_constant(const Value& value)
{
    this->constants.push_back(std::move(value));
    return this->constants.size() - 1;
}