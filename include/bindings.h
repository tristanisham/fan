#include <cstdarg>
#include <cstdint>
#include <cstdlib>
#include <ostream>
#include <new>

constexpr static const uint32_t __GNUC_VA_LIST = 1;

constexpr static const uint32_t true_ = 1;

constexpr static const uint32_t false_ = 0;

constexpr static const uint32_t __bool_true_false_are_defined = 1;

constexpr static const uint32_t _FEATURES_H = 1;

constexpr static const uint32_t _DEFAULT_SOURCE = 1;

constexpr static const uint32_t __GLIBC_USE_ISOC2X = 0;

constexpr static const uint32_t __USE_ISOC11 = 1;

constexpr static const uint32_t __USE_ISOC99 = 1;

constexpr static const uint32_t __USE_ISOC95 = 1;

constexpr static const uint32_t __USE_POSIX_IMPLICITLY = 1;

constexpr static const uint32_t _POSIX_SOURCE = 1;

constexpr static const uint32_t _POSIX_C_SOURCE = 200809;

constexpr static const uint32_t __USE_POSIX = 1;

constexpr static const uint32_t __USE_POSIX2 = 1;

constexpr static const uint32_t __USE_POSIX199309 = 1;

constexpr static const uint32_t __USE_POSIX199506 = 1;

constexpr static const uint32_t __USE_XOPEN2K = 1;

constexpr static const uint32_t __USE_XOPEN2K8 = 1;

constexpr static const uint32_t _ATFILE_SOURCE = 1;

constexpr static const uint32_t __USE_MISC = 1;

constexpr static const uint32_t __USE_ATFILE = 1;

constexpr static const uint32_t __USE_FORTIFY_LEVEL = 0;

constexpr static const uint32_t __GLIBC_USE_DEPRECATED_GETS = 0;

constexpr static const uint32_t __GLIBC_USE_DEPRECATED_SCANF = 0;

constexpr static const uint32_t _STDC_PREDEF_H = 1;

constexpr static const uint32_t __STDC_IEC_559__ = 1;

constexpr static const uint32_t __STDC_IEC_559_COMPLEX__ = 1;

constexpr static const uint32_t __STDC_ISO_10646__ = 201706;

constexpr static const uint32_t __GNU_LIBRARY__ = 6;

constexpr static const uint32_t __GLIBC__ = 2;

constexpr static const uint32_t __GLIBC_MINOR__ = 31;

constexpr static const uint32_t _SYS_CDEFS_H = 1;

constexpr static const uint32_t __glibc_c99_flexarr_available = 1;

constexpr static const uint32_t __WORDSIZE = 64;

constexpr static const uint32_t __WORDSIZE_TIME64_COMPAT32 = 1;

constexpr static const uint32_t __SYSCALL_WORDSIZE = 64;

constexpr static const uint32_t __LONG_DOUBLE_USES_FLOAT128 = 0;

constexpr static const uint32_t __HAVE_GENERIC_SELECTION = 1;

constexpr static const uint32_t __GLIBC_USE_LIB_EXT2 = 0;

constexpr static const uint32_t __GLIBC_USE_IEC_60559_BFP_EXT = 0;

constexpr static const uint32_t __GLIBC_USE_IEC_60559_BFP_EXT_C2X = 0;

constexpr static const uint32_t __GLIBC_USE_IEC_60559_FUNCS_EXT = 0;

constexpr static const uint32_t __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = 0;

constexpr static const uint32_t __GLIBC_USE_IEC_60559_TYPES_EXT = 0;

constexpr static const uint32_t _STDLIB_H = 1;

constexpr static const uint32_t WNOHANG = 1;

constexpr static const uint32_t WUNTRACED = 2;

constexpr static const uint32_t WSTOPPED = 2;

constexpr static const uint32_t WEXITED = 4;

constexpr static const uint32_t WCONTINUED = 8;

constexpr static const uint32_t WNOWAIT = 16777216;

constexpr static const uint32_t __WNOTHREAD = 536870912;

constexpr static const uint32_t __WALL = 1073741824;

constexpr static const uint32_t __WCLONE = 2147483648;

constexpr static const uint32_t __ENUM_IDTYPE_T = 1;

constexpr static const uint32_t __W_CONTINUED = 65535;

constexpr static const uint32_t __WCOREFLAG = 128;

constexpr static const uint32_t __HAVE_FLOAT128 = 0;

constexpr static const uint32_t __HAVE_DISTINCT_FLOAT128 = 0;

constexpr static const uint32_t __HAVE_FLOAT64X = 1;

constexpr static const uint32_t __HAVE_FLOAT64X_LONG_DOUBLE = 1;

constexpr static const uint32_t __HAVE_FLOAT16 = 0;

constexpr static const uint32_t __HAVE_FLOAT32 = 1;

constexpr static const uint32_t __HAVE_FLOAT64 = 1;

constexpr static const uint32_t __HAVE_FLOAT32X = 1;

constexpr static const uint32_t __HAVE_FLOAT128X = 0;

constexpr static const uint32_t __HAVE_DISTINCT_FLOAT16 = 0;

constexpr static const uint32_t __HAVE_DISTINCT_FLOAT32 = 0;

constexpr static const uint32_t __HAVE_DISTINCT_FLOAT64 = 0;

constexpr static const uint32_t __HAVE_DISTINCT_FLOAT32X = 0;

constexpr static const uint32_t __HAVE_DISTINCT_FLOAT64X = 0;

constexpr static const uint32_t __HAVE_DISTINCT_FLOAT128X = 0;

constexpr static const uint32_t __HAVE_FLOATN_NOT_TYPEDEF = 0;

constexpr static const uint32_t __ldiv_t_defined = 1;

constexpr static const uint32_t __lldiv_t_defined = 1;

constexpr static const uint32_t RAND_MAX = 2147483647;

constexpr static const uint32_t EXIT_FAILURE = 1;

constexpr static const uint32_t EXIT_SUCCESS = 0;

constexpr static const uint32_t _SYS_TYPES_H = 1;

constexpr static const uint32_t _BITS_TYPES_H = 1;

constexpr static const uint32_t __TIMESIZE = 64;

constexpr static const uint32_t _BITS_TYPESIZES_H = 1;

constexpr static const uint32_t __OFF_T_MATCHES_OFF64_T = 1;

constexpr static const uint32_t __INO_T_MATCHES_INO64_T = 1;

constexpr static const uint32_t __RLIM_T_MATCHES_RLIM64_T = 1;

constexpr static const uint32_t __STATFS_MATCHES_STATFS64 = 1;

constexpr static const uint32_t __FD_SETSIZE = 1024;

constexpr static const uint32_t _BITS_TIME64_H = 1;

constexpr static const uint32_t __clock_t_defined = 1;

constexpr static const uint32_t __clockid_t_defined = 1;

constexpr static const uint32_t __time_t_defined = 1;

constexpr static const uint32_t __timer_t_defined = 1;

constexpr static const uint32_t _BITS_STDINT_INTN_H = 1;

constexpr static const uint32_t __BIT_TYPES_DEFINED__ = 1;

constexpr static const uint32_t _ENDIAN_H = 1;

constexpr static const uint32_t _BITS_ENDIAN_H = 1;

constexpr static const uint32_t __LITTLE_ENDIAN = 1234;

constexpr static const uint32_t __BIG_ENDIAN = 4321;

constexpr static const uint32_t __PDP_ENDIAN = 3412;

constexpr static const uint32_t _BITS_ENDIANNESS_H = 1;

constexpr static const uint32_t __BYTE_ORDER = 1234;

constexpr static const uint32_t __FLOAT_WORD_ORDER = 1234;

constexpr static const uint32_t LITTLE_ENDIAN = 1234;

constexpr static const uint32_t BIG_ENDIAN = 4321;

constexpr static const uint32_t PDP_ENDIAN = 3412;

constexpr static const uint32_t BYTE_ORDER = 1234;

constexpr static const uint32_t _BITS_BYTESWAP_H = 1;

constexpr static const uint32_t _BITS_UINTN_IDENTITY_H = 1;

constexpr static const uint32_t _SYS_SELECT_H = 1;

constexpr static const uint32_t __sigset_t_defined = 1;

constexpr static const uint32_t __timeval_defined = 1;

constexpr static const uint32_t _STRUCT_TIMESPEC = 1;

constexpr static const uint32_t FD_SETSIZE = 1024;

constexpr static const uint32_t _BITS_PTHREADTYPES_COMMON_H = 1;

constexpr static const uint32_t _THREAD_SHARED_TYPES_H = 1;

constexpr static const uint32_t _BITS_PTHREADTYPES_ARCH_H = 1;

constexpr static const uint32_t __SIZEOF_PTHREAD_MUTEX_T = 40;

constexpr static const uint32_t __SIZEOF_PTHREAD_ATTR_T = 56;

constexpr static const uint32_t __SIZEOF_PTHREAD_RWLOCK_T = 56;

constexpr static const uint32_t __SIZEOF_PTHREAD_BARRIER_T = 32;

constexpr static const uint32_t __SIZEOF_PTHREAD_MUTEXATTR_T = 4;

constexpr static const uint32_t __SIZEOF_PTHREAD_COND_T = 48;

constexpr static const uint32_t __SIZEOF_PTHREAD_CONDATTR_T = 4;

constexpr static const uint32_t __SIZEOF_PTHREAD_RWLOCKATTR_T = 8;

constexpr static const uint32_t __SIZEOF_PTHREAD_BARRIERATTR_T = 4;

constexpr static const uint32_t _THREAD_MUTEX_INTERNAL_H = 1;

constexpr static const uint32_t __PTHREAD_MUTEX_HAVE_PREV = 1;

constexpr static const uint32_t __have_pthread_attr_t = 1;

constexpr static const uint32_t _ALLOCA_H = 1;

constexpr static const uint32_t WREN_VERSION_MAJOR = 0;

constexpr static const uint32_t WREN_VERSION_MINOR = 4;

constexpr static const uint32_t WREN_VERSION_PATCH = 0;

constexpr static const uint32_t WREN_VERSION_NUMBER = 4000;

using __fd_mask = long;

struct fd_set {
  __fd_mask __fds_bits[16];
};

using __time_t = long;

using __suseconds_t = long;

struct timeval {
  __time_t tv_sec;
  __suseconds_t tv_usec;
};

using __syscall_slong_t = long;

struct timespec {
  __time_t tv_sec;
  __syscall_slong_t tv_nsec;
};

struct __sigset_t {
  unsigned long __val[16];
};

struct random_data {
  int32_t *fptr;
  int32_t *rptr;
  int32_t *state;
  int rand_type;
  int rand_deg;
  int rand_sep;
  int32_t *end_ptr;
};

struct drand48_data {
  unsigned short __x[3];
  unsigned short __old_x[3];
  unsigned short __c;
  unsigned short __init;
  unsigned long long __a;
};

using __compar_fn_t = int(*)(const void *arg1, const void *arg2);

struct div_t {
  int quot;
  int rem;
};

struct ldiv_t {
  long quot;
  long rem;
};

struct lldiv_t {
  long long quot;
  long long rem;
};

using wchar_t = int;

using WrenReallocateFn = void*(*)(void *memory, uintptr_t newSize, void *userData);

struct WrenVM {
  uint8_t _unused[0];
};

using WrenResolveModuleFn = const char*(*)(WrenVM *vm, const char *importer, const char *name);

using WrenLoadModuleCompleteFn = void(*)(WrenVM *vm, const char *name, WrenLoadModuleResult result);

struct WrenLoadModuleResult {
  const char *source;
  WrenLoadModuleCompleteFn onComplete;
  void *userData;
};

using WrenLoadModuleFn = WrenLoadModuleResult(*)(WrenVM *vm, const char *name);

using WrenForeignMethodFn = void(*)(WrenVM *vm);

using WrenBindForeignMethodFn = WrenForeignMethodFn(*)(WrenVM *vm,
                                                       const char *module,
                                                       const char *className,
                                                       bool isStatic,
                                                       const char *signature);

using WrenFinalizerFn = void(*)(void *data);

struct WrenForeignClassMethods {
  WrenForeignMethodFn allocate;
  WrenFinalizerFn finalize;
};

using WrenBindForeignClassFn = WrenForeignClassMethods(*)(WrenVM *vm,
                                                          const char *module,
                                                          const char *className);

using WrenWriteFn = void(*)(WrenVM *vm, const char *text);

using WrenErrorType = unsigned int;

using WrenErrorFn = void(*)(WrenVM *vm,
                            WrenErrorType type_,
                            const char *module,
                            int line,
                            const char *message);

struct WrenConfiguration {
  WrenReallocateFn reallocateFn;
  WrenResolveModuleFn resolveModuleFn;
  WrenLoadModuleFn loadModuleFn;
  WrenBindForeignMethodFn bindForeignMethodFn;
  WrenBindForeignClassFn bindForeignClassFn;
  WrenWriteFn writeFn;
  WrenErrorFn errorFn;
  uintptr_t initialHeapSize;
  uintptr_t minHeapSize;
  int heapGrowthPercent;
  void *userData;
};

using WrenInterpretResult = unsigned int;

struct WrenHandle {
  uint8_t _unused[0];
};

using WrenType = unsigned int;

using idtype_t = unsigned int;

constexpr static const idtype_t idtype_t_P_ALL = 0;

constexpr static const idtype_t idtype_t_P_PID = 1;

constexpr static const idtype_t idtype_t_P_PGID = 2;

constexpr static const WrenErrorType WrenErrorType_WREN_ERROR_COMPILE = 0;

constexpr static const WrenErrorType WrenErrorType_WREN_ERROR_RUNTIME = 1;

constexpr static const WrenErrorType WrenErrorType_WREN_ERROR_STACK_TRACE = 2;

constexpr static const WrenInterpretResult WrenInterpretResult_WREN_RESULT_SUCCESS = 0;

constexpr static const WrenInterpretResult WrenInterpretResult_WREN_RESULT_COMPILE_ERROR = 1;

constexpr static const WrenInterpretResult WrenInterpretResult_WREN_RESULT_RUNTIME_ERROR = 2;

constexpr static const WrenType WrenType_WREN_TYPE_BOOL = 0;

constexpr static const WrenType WrenType_WREN_TYPE_NUM = 1;

constexpr static const WrenType WrenType_WREN_TYPE_FOREIGN = 2;

constexpr static const WrenType WrenType_WREN_TYPE_LIST = 3;

constexpr static const WrenType WrenType_WREN_TYPE_MAP = 4;

constexpr static const WrenType WrenType_WREN_TYPE_NULL = 5;

constexpr static const WrenType WrenType_WREN_TYPE_STRING = 6;

constexpr static const WrenType WrenType_WREN_TYPE_UNKNOWN = 7;

extern "C" {

void fan_str_free(char *ptr);

extern uintptr_t __ctype_get_mb_cur_max();

extern double atof(const char *__nptr);

extern int atoi(const char *__nptr);

extern long atol(const char *__nptr);

extern long long atoll(const char *__nptr);

extern double strtod(const char *__nptr, char **__endptr);

extern float strtof(const char *__nptr, char **__endptr);

extern u128 strtold(const char *__nptr, char **__endptr);

extern long strtol(const char *__nptr, char **__endptr, int __base);

extern unsigned long strtoul(const char *__nptr, char **__endptr, int __base);

extern long long strtoq(const char *__nptr, char **__endptr, int __base);

extern unsigned long long strtouq(const char *__nptr, char **__endptr, int __base);

extern long long strtoll(const char *__nptr, char **__endptr, int __base);

extern unsigned long long strtoull(const char *__nptr, char **__endptr, int __base);

extern char *l64a(long __n);

extern long a64l(const char *__s);

extern int select(int __nfds,
                  fd_set *__readfds,
                  fd_set *__writefds,
                  fd_set *__exceptfds,
                  timeval *__timeout);

extern int pselect(int __nfds,
                   fd_set *__readfds,
                   fd_set *__writefds,
                   fd_set *__exceptfds,
                   const timespec *__timeout,
                   const __sigset_t *__sigmask);

extern long random();

extern void srandom(unsigned int __seed);

extern char *initstate(unsigned int __seed, char *__statebuf, uintptr_t __statelen);

extern char *setstate(char *__statebuf);

extern int random_r(random_data *__buf, int32_t *__result);

extern int srandom_r(unsigned int __seed, random_data *__buf);

extern int initstate_r(unsigned int __seed,
                       char *__statebuf,
                       uintptr_t __statelen,
                       random_data *__buf);

extern int setstate_r(char *__statebuf, random_data *__buf);

extern int rand();

extern void srand(unsigned int __seed);

extern int rand_r(unsigned int *__seed);

extern double drand48();

extern double erand48(unsigned short *__xsubi);

extern long lrand48();

extern long nrand48(unsigned short *__xsubi);

extern long mrand48();

extern long jrand48(unsigned short *__xsubi);

extern void srand48(long __seedval);

extern unsigned short *seed48(unsigned short *__seed16v);

extern void lcong48(unsigned short *__param);

extern int drand48_r(drand48_data *__buffer, double *__result);

extern int erand48_r(unsigned short *__xsubi, drand48_data *__buffer, double *__result);

extern int lrand48_r(drand48_data *__buffer, long *__result);

extern int nrand48_r(unsigned short *__xsubi, drand48_data *__buffer, long *__result);

extern int mrand48_r(drand48_data *__buffer, long *__result);

extern int jrand48_r(unsigned short *__xsubi, drand48_data *__buffer, long *__result);

extern int srand48_r(long __seedval, drand48_data *__buffer);

extern int seed48_r(unsigned short *__seed16v, drand48_data *__buffer);

extern int lcong48_r(unsigned short *__param, drand48_data *__buffer);

extern void *malloc(unsigned long __size);

extern void *calloc(unsigned long __nmemb, unsigned long __size);

extern void *realloc(void *__ptr, unsigned long __size);

extern void *reallocarray(void *__ptr, uintptr_t __nmemb, uintptr_t __size);

extern void free(void *__ptr);

extern void *alloca(unsigned long __size);

extern void *valloc(uintptr_t __size);

extern int posix_memalign(void **__memptr, uintptr_t __alignment, uintptr_t __size);

extern void *aligned_alloc(unsigned long __alignment, unsigned long __size);

extern void abort();

extern int atexit(void (*__func)());

extern int at_quick_exit(void (*__func)());

extern int on_exit(void (*__func)(int __status, void *__arg), void *__arg);

extern void exit(int __status);

extern void quick_exit(int __status);

extern void _Exit(int __status);

extern char *getenv(const char *__name);

extern int putenv(char *__string);

extern int setenv(const char *__name, const char *__value, int __replace);

extern int unsetenv(const char *__name);

extern int clearenv();

extern char *mktemp(char *__template);

extern int mkstemp(char *__template);

extern int mkstemps(char *__template, int __suffixlen);

extern char *mkdtemp(char *__template);

extern int system(const char *__command);

extern char *realpath(const char *__name, char *__resolved);

extern void *bsearch(const void *__key,
                     const void *__base,
                     uintptr_t __nmemb,
                     uintptr_t __size,
                     __compar_fn_t __compar);

extern void qsort(void *__base, uintptr_t __nmemb, uintptr_t __size, __compar_fn_t __compar);

extern int abs(int __x);

extern long labs(long __x);

extern long long llabs(long long __x);

extern div_t div(int __numer, int __denom);

extern ldiv_t ldiv(long __numer, long __denom);

extern lldiv_t lldiv(long long __numer, long long __denom);

extern char *ecvt(double __value, int __ndigit, int *__decpt, int *__sign);

extern char *fcvt(double __value, int __ndigit, int *__decpt, int *__sign);

extern char *gcvt(double __value, int __ndigit, char *__buf);

extern char *qecvt(u128 __value, int __ndigit, int *__decpt, int *__sign);

extern char *qfcvt(u128 __value, int __ndigit, int *__decpt, int *__sign);

extern char *qgcvt(u128 __value, int __ndigit, char *__buf);

extern int ecvt_r(double __value,
                  int __ndigit,
                  int *__decpt,
                  int *__sign,
                  char *__buf,
                  uintptr_t __len);

extern int fcvt_r(double __value,
                  int __ndigit,
                  int *__decpt,
                  int *__sign,
                  char *__buf,
                  uintptr_t __len);

extern int qecvt_r(u128 __value,
                   int __ndigit,
                   int *__decpt,
                   int *__sign,
                   char *__buf,
                   uintptr_t __len);

extern int qfcvt_r(u128 __value,
                   int __ndigit,
                   int *__decpt,
                   int *__sign,
                   char *__buf,
                   uintptr_t __len);

extern int mblen(const char *__s, uintptr_t __n);

extern int mbtowc(wchar_t *__pwc, const char *__s, uintptr_t __n);

extern int wctomb(char *__s, wchar_t __wchar);

extern uintptr_t mbstowcs(wchar_t *__pwcs, const char *__s, uintptr_t __n);

extern uintptr_t wcstombs(char *__s, const wchar_t *__pwcs, uintptr_t __n);

extern int rpmatch(const char *__response);

extern int getsubopt(char **__optionp, char *const *__tokens, char **__valuep);

extern int getloadavg(double *__loadavg, int __nelem);

extern int wrenGetVersionNumber();

extern void wrenInitConfiguration(WrenConfiguration *configuration);

extern WrenVM *wrenNewVM(WrenConfiguration *configuration);

extern void wrenFreeVM(WrenVM *vm);

extern void wrenCollectGarbage(WrenVM *vm);

extern WrenInterpretResult wrenInterpret(WrenVM *vm, const char *module, const char *source);

extern WrenHandle *wrenMakeCallHandle(WrenVM *vm, const char *signature);

extern WrenInterpretResult wrenCall(WrenVM *vm, WrenHandle *method);

extern void wrenReleaseHandle(WrenVM *vm, WrenHandle *handle);

extern int wrenGetSlotCount(WrenVM *vm);

extern void wrenEnsureSlots(WrenVM *vm, int numSlots);

extern WrenType wrenGetSlotType(WrenVM *vm, int slot);

extern bool wrenGetSlotBool(WrenVM *vm, int slot);

extern const char *wrenGetSlotBytes(WrenVM *vm, int slot, int *length);

extern double wrenGetSlotDouble(WrenVM *vm, int slot);

extern void *wrenGetSlotForeign(WrenVM *vm, int slot);

extern const char *wrenGetSlotString(WrenVM *vm, int slot);

extern WrenHandle *wrenGetSlotHandle(WrenVM *vm, int slot);

extern void wrenSetSlotBool(WrenVM *vm, int slot, bool value);

extern void wrenSetSlotBytes(WrenVM *vm, int slot, const char *bytes, uintptr_t length);

extern void wrenSetSlotDouble(WrenVM *vm, int slot, double value);

extern void *wrenSetSlotNewForeign(WrenVM *vm, int slot, int classSlot, uintptr_t size);

extern void wrenSetSlotNewList(WrenVM *vm, int slot);

extern void wrenSetSlotNewMap(WrenVM *vm, int slot);

extern void wrenSetSlotNull(WrenVM *vm, int slot);

extern void wrenSetSlotString(WrenVM *vm, int slot, const char *text);

extern void wrenSetSlotHandle(WrenVM *vm, int slot, WrenHandle *handle);

extern int wrenGetListCount(WrenVM *vm, int slot);

extern void wrenGetListElement(WrenVM *vm, int listSlot, int index, int elementSlot);

extern void wrenSetListElement(WrenVM *vm, int listSlot, int index, int elementSlot);

extern void wrenInsertInList(WrenVM *vm, int listSlot, int index, int elementSlot);

extern int wrenGetMapCount(WrenVM *vm, int slot);

extern bool wrenGetMapContainsKey(WrenVM *vm, int mapSlot, int keySlot);

extern void wrenGetMapValue(WrenVM *vm, int mapSlot, int keySlot, int valueSlot);

extern void wrenSetMapValue(WrenVM *vm, int mapSlot, int keySlot, int valueSlot);

extern void wrenRemoveMapValue(WrenVM *vm, int mapSlot, int keySlot, int removedValueSlot);

extern void wrenGetVariable(WrenVM *vm, const char *module, const char *name, int slot);

extern bool wrenHasVariable(WrenVM *vm, const char *module, const char *name);

extern bool wrenHasModule(WrenVM *vm, const char *module);

extern void wrenAbortFiber(WrenVM *vm, int slot);

extern void *wrenGetUserData(WrenVM *vm);

extern void wrenSetUserData(WrenVM *vm, void *userData);

} // extern "C"
