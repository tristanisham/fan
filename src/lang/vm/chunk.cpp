#include "chunk.hpp"
#include <cstddef>
#include <cstdint>
#include <cstdio>

void lang::Chunk::write_chunk(const lang::OpCode& opcode)
{
    this->code.push_back(static_cast<uint8_t>(std::move(opcode)));
}

void lang::Chunk::write_chunk(const uint8_t& chunk) { this->code.push_back(std::move(chunk)); }

void lang::Chunk::shrink_to_fit() { this->code.shrink_to_fit(); }

const lang::OpCode lang::Chunk::at(const size_t& i) { return static_cast<OpCode>(this->code.at(i)); }

const size_t lang::Chunk::simple_instruction(const std::string& name, const size_t& offset)
{
    std::cout << name << std::endl;
    return offset + 1;
}

void lang::Chunk::print_value(const Value& value) { printf("%g", value); }

const size_t lang::Chunk::constant_instruction(const std::string& name, const size_t& offset)
{
    uint8_t constant = this->code.at(offset + 1);
    printf("%-16s %4d '", name.c_str(), constant);
    print_value(this->constants.at(constant));
    printf("\n");
    return offset + 2;
}

size_t lang::Chunk::disassemble_instruction(const size_t& offset)
{
    OpCode instruction = this->at(offset);
    switch (instruction) {
    case OpCode::OP_RETURN:
        return Chunk::simple_instruction("OP_RETURN", offset);
    case OpCode::OP_CONSTANT:
        return this->constant_instruction("OP_CONSTANT", offset);
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