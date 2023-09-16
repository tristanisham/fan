#include "lib.hpp"
#include "wren.h"
#include <math.h>

void vm_pow(WrenVM *vm) {
    double a = wrenGetSlotDouble(vm, 1);
    double b = wrenGetSlotDouble(vm, 2);

    double result = pow(a, b);

    wrenSetSlotDouble(vm, 0, result);
}

