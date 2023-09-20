/**
Copyright 2023 Tristan Isham

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the “Software”), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/
#include "lib.hpp"
#include <math.h>

/**
 * vm_pow binds to 'std/math.Math.pow(_,_)'.
 * Calculates base^pow
 * @param vm WrenVM instance -- required
 * @var a base
 * @var b exponent
 */
void lib::math::pow(WrenVM* vm) {
	double a = wrenGetSlotDouble(vm, 1);
	double b = wrenGetSlotDouble(vm, 2);

	double result = ::pow(a, b);

	wrenSetSlotDouble(vm, 0, result);
}

void lib::math::abs(WrenVM *vm) {
	double a = wrenGetSlotDouble(vm, 1);
	double result = ::fabs(a);

	wrenSetSlotDouble(vm, 0, result);
}
