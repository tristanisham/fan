pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const struct___va_list_tag_1 = extern struct {
    gp_offset: c_uint,
    fp_offset: c_uint,
    overflow_arg_area: ?*anyopaque,
    reg_save_area: ?*anyopaque,
};
pub const __builtin_va_list = [1]struct___va_list_tag_1;
pub const __gnuc_va_list = __builtin_va_list;
pub const va_list = __builtin_va_list;
pub const wchar_t = c_int;
pub const P_ALL: c_int = 0;
pub const P_PID: c_int = 1;
pub const P_PGID: c_int = 2;
pub const idtype_t = c_uint;
pub const _Float32 = f32;
pub const _Float64 = f64;
pub const _Float32x = f64;
pub const _Float64x = c_longdouble;
pub const div_t = extern struct {
    quot: c_int,
    rem: c_int,
};
pub const ldiv_t = extern struct {
    quot: c_long,
    rem: c_long,
};
pub const lldiv_t = extern struct {
    quot: c_longlong,
    rem: c_longlong,
};
pub extern fn __ctype_get_mb_cur_max() usize;
pub extern fn atof(__nptr: [*c]const u8) f64;
pub extern fn atoi(__nptr: [*c]const u8) c_int;
pub extern fn atol(__nptr: [*c]const u8) c_long;
pub extern fn atoll(__nptr: [*c]const u8) c_longlong;
pub extern fn strtod(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f64;
pub extern fn strtof(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f32;
pub extern fn strtold(__nptr: [*c]const u8, __endptr: [*c][*c]u8) c_longdouble;
pub extern fn strtol(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_long;
pub extern fn strtoul(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn strtoq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtouq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn strtoll(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtoull(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn l64a(__n: c_long) [*c]u8;
pub extern fn a64l(__s: [*c]const u8) c_long;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int,
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
pub const u_char = __u_char;
pub const u_short = __u_short;
pub const u_int = __u_int;
pub const u_long = __u_long;
pub const quad_t = __quad_t;
pub const u_quad_t = __u_quad_t;
pub const fsid_t = __fsid_t;
pub const loff_t = __loff_t;
pub const ino_t = __ino_t;
pub const dev_t = __dev_t;
pub const gid_t = __gid_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const uid_t = __uid_t;
pub const off_t = __off_t;
pub const pid_t = __pid_t;
pub const id_t = __id_t;
pub const daddr_t = __daddr_t;
pub const caddr_t = __caddr_t;
pub const key_t = __key_t;
pub const clock_t = __clock_t;
pub const clockid_t = __clockid_t;
pub const time_t = __time_t;
pub const timer_t = __timer_t;
pub const ulong = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_int8_t = __uint8_t;
pub const u_int16_t = __uint16_t;
pub const u_int32_t = __uint32_t;
pub const u_int64_t = __uint64_t;
pub const register_t = c_long;
pub fn __bswap_16(arg___bsx: __uint16_t) callconv(.C) __uint16_t {
    var __bsx = arg___bsx;
    return @as(__uint16_t, @bitCast(@as(c_short, @truncate(((@as(c_int, @bitCast(@as(c_uint, __bsx))) >> @intCast(8)) & @as(c_int, 255)) | ((@as(c_int, @bitCast(@as(c_uint, __bsx))) & @as(c_int, 255)) << @intCast(8))))));
}
pub fn __bswap_32(arg___bsx: __uint32_t) callconv(.C) __uint32_t {
    var __bsx = arg___bsx;
    return ((((__bsx & @as(c_uint, 4278190080)) >> @intCast(24)) | ((__bsx & @as(c_uint, 16711680)) >> @intCast(8))) | ((__bsx & @as(c_uint, 65280)) << @intCast(8))) | ((__bsx & @as(c_uint, 255)) << @intCast(24));
}
pub fn __bswap_64(arg___bsx: __uint64_t) callconv(.C) __uint64_t {
    var __bsx = arg___bsx;
    return @as(__uint64_t, @bitCast(@as(c_ulong, @truncate(((((((((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 18374686479671623680)) >> @intCast(56)) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 71776119061217280)) >> @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 280375465082880)) >> @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 1095216660480)) >> @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 4278190080)) << @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 16711680)) << @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 65280)) << @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 255)) << @intCast(56))))));
}
pub fn __uint16_identity(arg___x: __uint16_t) callconv(.C) __uint16_t {
    var __x = arg___x;
    return __x;
}
pub fn __uint32_identity(arg___x: __uint32_t) callconv(.C) __uint32_t {
    var __x = arg___x;
    return __x;
}
pub fn __uint64_identity(arg___x: __uint64_t) callconv(.C) __uint64_t {
    var __x = arg___x;
    return __x;
}
pub const __sigset_t = extern struct {
    __val: [16]c_ulong,
};
pub const sigset_t = __sigset_t;
pub const struct_timeval = extern struct {
    tv_sec: __time_t,
    tv_usec: __suseconds_t,
};
pub const struct_timespec = extern struct {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
};
pub const suseconds_t = __suseconds_t;
pub const __fd_mask = c_long;
pub const fd_set = extern struct {
    __fds_bits: [16]__fd_mask,
};
pub const fd_mask = __fd_mask;
pub extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
pub extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;
pub const blksize_t = __blksize_t;
pub const blkcnt_t = __blkcnt_t;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
pub const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list,
    __next: [*c]struct___pthread_internal_list,
};
pub const __pthread_list_t = struct___pthread_internal_list;
pub const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist,
};
pub const __pthread_slist_t = struct___pthread_internal_slist;
pub const struct___pthread_mutex_s = extern struct {
    __lock: c_int,
    __count: c_uint,
    __owner: c_int,
    __nusers: c_uint,
    __kind: c_int,
    __spins: c_short,
    __elision: c_short,
    __list: __pthread_list_t,
};
pub const struct___pthread_rwlock_arch_t = extern struct {
    __readers: c_uint,
    __writers: c_uint,
    __wrphase_futex: c_uint,
    __writers_futex: c_uint,
    __pad3: c_uint,
    __pad4: c_uint,
    __cur_writer: c_int,
    __shared: c_int,
    __rwelision: i8,
    __pad1: [7]u8,
    __pad2: c_ulong,
    __flags: c_uint,
};
const struct_unnamed_3 = extern struct {
    __low: c_uint,
    __high: c_uint,
};
const union_unnamed_2 = extern union {
    __wseq: c_ulonglong,
    __wseq32: struct_unnamed_3,
};
const struct_unnamed_5 = extern struct {
    __low: c_uint,
    __high: c_uint,
};
const union_unnamed_4 = extern union {
    __g1_start: c_ulonglong,
    __g1_start32: struct_unnamed_5,
};
pub const struct___pthread_cond_s = extern struct {
    unnamed_0: union_unnamed_2,
    unnamed_1: union_unnamed_4,
    __g_refs: [2]c_uint,
    __g_size: [2]c_uint,
    __g1_orig_size: c_uint,
    __wrefs: c_uint,
    __g_signals: [2]c_uint,
};
pub const pthread_t = c_ulong;
pub const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_key_t = c_uint;
pub const pthread_once_t = c_int;
pub const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_attr_t = union_pthread_attr_t;
pub const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
pub const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
pub const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
pub const pthread_spinlock_t = c_int;
pub const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
pub const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub extern fn random() c_long;
pub extern fn srandom(__seed: c_uint) void;
pub extern fn initstate(__seed: c_uint, __statebuf: [*c]u8, __statelen: usize) [*c]u8;
pub extern fn setstate(__statebuf: [*c]u8) [*c]u8;
pub const struct_random_data = extern struct {
    fptr: [*c]i32,
    rptr: [*c]i32,
    state: [*c]i32,
    rand_type: c_int,
    rand_deg: c_int,
    rand_sep: c_int,
    end_ptr: [*c]i32,
};
pub extern fn random_r(noalias __buf: [*c]struct_random_data, noalias __result: [*c]i32) c_int;
pub extern fn srandom_r(__seed: c_uint, __buf: [*c]struct_random_data) c_int;
pub extern fn initstate_r(__seed: c_uint, noalias __statebuf: [*c]u8, __statelen: usize, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn setstate_r(noalias __statebuf: [*c]u8, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn rand() c_int;
pub extern fn srand(__seed: c_uint) void;
pub extern fn rand_r(__seed: [*c]c_uint) c_int;
pub extern fn drand48() f64;
pub extern fn erand48(__xsubi: [*c]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn srand48(__seedval: c_long) void;
pub extern fn seed48(__seed16v: [*c]c_ushort) [*c]c_ushort;
pub extern fn lcong48(__param: [*c]c_ushort) void;
pub const struct_drand48_data = extern struct {
    __x: [3]c_ushort,
    __old_x: [3]c_ushort,
    __c: c_ushort,
    __init: c_ushort,
    __a: c_ulonglong,
};
pub extern fn drand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn erand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn lrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn nrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn mrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn jrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn srand48_r(__seedval: c_long, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn seed48_r(__seed16v: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn lcong48_r(__param: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn malloc(__size: c_ulong) ?*anyopaque;
pub extern fn calloc(__nmemb: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn realloc(__ptr: ?*anyopaque, __size: c_ulong) ?*anyopaque;
pub extern fn reallocarray(__ptr: ?*anyopaque, __nmemb: usize, __size: usize) ?*anyopaque;
pub extern fn free(__ptr: ?*anyopaque) void;
pub extern fn alloca(__size: c_ulong) ?*anyopaque;
pub extern fn valloc(__size: usize) ?*anyopaque;
pub extern fn posix_memalign(__memptr: [*c]?*anyopaque, __alignment: usize, __size: usize) c_int;
pub extern fn aligned_alloc(__alignment: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn abort() noreturn;
pub extern fn atexit(__func: ?*const fn () callconv(.C) void) c_int;
pub extern fn at_quick_exit(__func: ?*const fn () callconv(.C) void) c_int;
pub extern fn on_exit(__func: ?*const fn (c_int, ?*anyopaque) callconv(.C) void, __arg: ?*anyopaque) c_int;
pub extern fn exit(__status: c_int) noreturn;
pub extern fn quick_exit(__status: c_int) noreturn;
pub extern fn _Exit(__status: c_int) noreturn;
pub extern fn getenv(__name: [*c]const u8) [*c]u8;
pub extern fn putenv(__string: [*c]u8) c_int;
pub extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __replace: c_int) c_int;
pub extern fn unsetenv(__name: [*c]const u8) c_int;
pub extern fn clearenv() c_int;
pub extern fn mktemp(__template: [*c]u8) [*c]u8;
pub extern fn mkstemp(__template: [*c]u8) c_int;
pub extern fn mkstemps(__template: [*c]u8, __suffixlen: c_int) c_int;
pub extern fn mkdtemp(__template: [*c]u8) [*c]u8;
pub extern fn system(__command: [*c]const u8) c_int;
pub extern fn realpath(noalias __name: [*c]const u8, noalias __resolved: [*c]u8) [*c]u8;
pub const __compar_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;
pub extern fn bsearch(__key: ?*const anyopaque, __base: ?*const anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) ?*anyopaque;
pub extern fn qsort(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;
pub extern fn abs(__x: c_int) c_int;
pub extern fn labs(__x: c_long) c_long;
pub extern fn llabs(__x: c_longlong) c_longlong;
pub extern fn div(__numer: c_int, __denom: c_int) div_t;
pub extern fn ldiv(__numer: c_long, __denom: c_long) ldiv_t;
pub extern fn lldiv(__numer: c_longlong, __denom: c_longlong) lldiv_t;
pub extern fn ecvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn fcvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn gcvt(__value: f64, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn qecvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qfcvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qgcvt(__value: c_longdouble, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn ecvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn fcvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qecvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qfcvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
pub extern fn mbtowc(noalias __pwc: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) c_int;
pub extern fn wctomb(__s: [*c]u8, __wchar: wchar_t) c_int;
pub extern fn mbstowcs(noalias __pwcs: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) usize;
pub extern fn wcstombs(noalias __s: [*c]u8, noalias __pwcs: [*c]const wchar_t, __n: usize) usize;
pub extern fn rpmatch(__response: [*c]const u8) c_int;
pub extern fn getsubopt(noalias __optionp: [*c][*c]u8, noalias __tokens: [*c]const [*c]u8, noalias __valuep: [*c][*c]u8) c_int;
pub extern fn getloadavg(__loadavg: [*c]f64, __nelem: c_int) c_int;
pub const struct_sObj = extern struct {
    type: ObjType,
    isDark: bool,
    classObj: [*c]ObjClass,
    next: [*c]struct_sObj,
};
pub const Obj = struct_sObj;
pub const struct_sObjString = extern struct {
    obj: Obj align(8),
    length: u32,
    hash: u32,
    pub fn value(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        return @as(ReturnType, @ptrCast(@alignCast(@as(Intermediate, @ptrCast(self)) + 32)));
    }
};
pub const ObjString = struct_sObjString;
pub const Value = u64;
pub const struct_sObjClass = extern struct {
    obj: Obj,
    superclass: [*c]ObjClass,
    numFields: c_int,
    methods: MethodBuffer,
    name: [*c]ObjString,
    attributes: Value,
};
pub const ObjClass = struct_sObjClass;
pub const struct_sObjUpvalue = extern struct {
    obj: Obj,
    value: [*c]Value,
    closed: Value,
    next: [*c]struct_sObjUpvalue,
};
pub const ObjUpvalue = struct_sObjUpvalue;
pub const struct_sObjFiber = extern struct {
    obj: Obj,
    stack: [*c]Value,
    stackTop: [*c]Value,
    stackCapacity: c_int,
    frames: [*c]CallFrame,
    numFrames: c_int,
    frameCapacity: c_int,
    openUpvalues: [*c]ObjUpvalue,
    caller: [*c]struct_sObjFiber,
    @"error": Value,
    state: FiberState,
};
pub const ObjFiber = struct_sObjFiber;
pub const struct_WrenHandle = extern struct {
    value: Value,
    prev: [*c]WrenHandle,
    next: [*c]WrenHandle,
};
pub const WrenHandle = struct_WrenHandle;
pub const struct_sLoop = extern struct {
    start: c_int,
    exitJump: c_int,
    body: c_int,
    scopeDepth: c_int,
    enclosing: [*c]struct_sLoop,
};
pub const Loop = struct_sLoop;
pub const struct_sCompiler = extern struct {
    parser: [*c]Parser,
    parent: [*c]struct_sCompiler,
    locals: [256]Local,
    numLocals: c_int,
    upvalues: [256]CompilerUpvalue,
    scopeDepth: c_int,
    numSlots: c_int,
    loop: [*c]Loop,
    enclosingClass: [*c]ClassInfo,
    @"fn": [*c]ObjFn,
    constants: [*c]ObjMap,
    isInitializer: bool,
    numAttributes: c_int,
    attributes: [*c]ObjMap,
};
pub const Compiler = struct_sCompiler;
pub const SymbolTable = StringBuffer;
pub const struct_WrenVM = extern struct {
    boolClass: [*c]ObjClass,
    classClass: [*c]ObjClass,
    fiberClass: [*c]ObjClass,
    fnClass: [*c]ObjClass,
    listClass: [*c]ObjClass,
    mapClass: [*c]ObjClass,
    nullClass: [*c]ObjClass,
    numClass: [*c]ObjClass,
    objectClass: [*c]ObjClass,
    rangeClass: [*c]ObjClass,
    stringClass: [*c]ObjClass,
    fiber: [*c]ObjFiber,
    modules: [*c]ObjMap,
    lastModule: [*c]ObjModule,
    bytesAllocated: usize,
    nextGC: usize,
    first: [*c]Obj,
    gray: [*c][*c]Obj,
    grayCount: c_int,
    grayCapacity: c_int,
    tempRoots: [8][*c]Obj,
    numTempRoots: c_int,
    handles: [*c]WrenHandle,
    apiStack: [*c]Value,
    config: WrenConfiguration,
    compiler: [*c]Compiler,
    methodNames: SymbolTable,
};
pub const WrenVM = struct_WrenVM;
pub const WrenReallocateFn = ?*const fn (?*anyopaque, usize, ?*anyopaque) callconv(.C) ?*anyopaque;
pub const WrenForeignMethodFn = ?*const fn ([*c]WrenVM) callconv(.C) void;
pub const WrenFinalizerFn = ?*const fn (?*anyopaque) callconv(.C) void;
pub const WrenResolveModuleFn = ?*const fn ([*c]WrenVM, [*c]const u8, [*c]const u8) callconv(.C) [*c]const u8;
pub const WrenLoadModuleCompleteFn = ?*const fn ([*c]WrenVM, [*c]const u8, struct_WrenLoadModuleResult) callconv(.C) void;
pub const struct_WrenLoadModuleResult = extern struct {
    source: [*c]const u8,
    onComplete: WrenLoadModuleCompleteFn,
    userData: ?*anyopaque,
};
pub const WrenLoadModuleResult = struct_WrenLoadModuleResult;
pub const WrenLoadModuleFn = ?*const fn ([*c]WrenVM, [*c]const u8) callconv(.C) WrenLoadModuleResult;
pub const WrenBindForeignMethodFn = ?*const fn ([*c]WrenVM, [*c]const u8, [*c]const u8, bool, [*c]const u8) callconv(.C) WrenForeignMethodFn;
pub const WrenWriteFn = ?*const fn ([*c]WrenVM, [*c]const u8) callconv(.C) void;
pub const WREN_ERROR_COMPILE: c_int = 0;
pub const WREN_ERROR_RUNTIME: c_int = 1;
pub const WREN_ERROR_STACK_TRACE: c_int = 2;
pub const WrenErrorType = c_uint;
pub const WrenErrorFn = ?*const fn ([*c]WrenVM, WrenErrorType, [*c]const u8, c_int, [*c]const u8) callconv(.C) void;
pub const WrenForeignClassMethods = extern struct {
    allocate: WrenForeignMethodFn,
    finalize: WrenFinalizerFn,
};
pub const WrenBindForeignClassFn = ?*const fn ([*c]WrenVM, [*c]const u8, [*c]const u8) callconv(.C) WrenForeignClassMethods;
pub const WrenConfiguration = extern struct {
    reallocateFn: WrenReallocateFn,
    resolveModuleFn: WrenResolveModuleFn,
    loadModuleFn: WrenLoadModuleFn,
    bindForeignMethodFn: WrenBindForeignMethodFn,
    bindForeignClassFn: WrenBindForeignClassFn,
    writeFn: WrenWriteFn,
    errorFn: WrenErrorFn,
    initialHeapSize: usize,
    minHeapSize: usize,
    heapGrowthPercent: c_int,
    userData: ?*anyopaque,
};
pub const WREN_RESULT_SUCCESS: c_int = 0;
pub const WREN_RESULT_COMPILE_ERROR: c_int = 1;
pub const WREN_RESULT_RUNTIME_ERROR: c_int = 2;
pub const WrenInterpretResult = c_uint;
pub const WREN_TYPE_BOOL: c_int = 0;
pub const WREN_TYPE_NUM: c_int = 1;
pub const WREN_TYPE_FOREIGN: c_int = 2;
pub const WREN_TYPE_LIST: c_int = 3;
pub const WREN_TYPE_MAP: c_int = 4;
pub const WREN_TYPE_NULL: c_int = 5;
pub const WREN_TYPE_STRING: c_int = 6;
pub const WREN_TYPE_UNKNOWN: c_int = 7;
pub const WrenType = c_uint;
pub export fn wrenGetVersionNumber() c_int {
    return ((@as(c_int, 0) * @as(c_int, 1000000)) + (@as(c_int, 4) * @as(c_int, 1000))) + @as(c_int, 0);
}
pub export fn wrenInitConfiguration(arg_config: [*c]WrenConfiguration) void {
    var config = arg_config;
    config.*.reallocateFn = &defaultReallocate;
    config.*.resolveModuleFn = null;
    config.*.loadModuleFn = null;
    config.*.bindForeignMethodFn = null;
    config.*.bindForeignClassFn = null;
    config.*.writeFn = null;
    config.*.errorFn = null;
    config.*.initialHeapSize = @as(usize, @bitCast(@as(c_long, (@as(c_int, 1024) * @as(c_int, 1024)) * @as(c_int, 10))));
    config.*.minHeapSize = @as(usize, @bitCast(@as(c_long, @as(c_int, 1024) * @as(c_int, 1024))));
    config.*.heapGrowthPercent = 50;
    config.*.userData = @as(?*anyopaque, @ptrFromInt(@as(c_int, 0)));
}
pub export fn wrenNewVM(arg_config: [*c]WrenConfiguration) [*c]WrenVM {
    var config = arg_config;
    var reallocate: WrenReallocateFn = &defaultReallocate;
    var userData: ?*anyopaque = @as(?*anyopaque, @ptrFromInt(@as(c_int, 0)));
    if (config != @as([*c]WrenConfiguration, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        userData = config.*.userData;
        reallocate = if (config.*.reallocateFn != null) config.*.reallocateFn else &defaultReallocate;
    }
    var vm: [*c]WrenVM = @as([*c]WrenVM, @ptrCast(@alignCast(reallocate.?(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @sizeOf(WrenVM), userData))));
    _ = memset(@as(?*anyopaque, @ptrCast(vm)), @as(c_int, 0), @sizeOf(WrenVM));
    if (config != @as([*c]WrenConfiguration, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        _ = memcpy(@as(?*anyopaque, @ptrCast(&vm.*.config)), @as(?*const anyopaque, @ptrCast(config)), @sizeOf(WrenConfiguration));
        vm.*.config.reallocateFn = reallocate;
    } else {
        wrenInitConfiguration(&vm.*.config);
    }
    vm.*.grayCount = 0;
    vm.*.grayCapacity = 4;
    vm.*.gray = @as([*c][*c]Obj, @ptrCast(@alignCast(reallocate.?(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(c_ulong, @bitCast(@as(c_long, vm.*.grayCapacity))) *% @sizeOf([*c]Obj), userData))));
    vm.*.nextGC = vm.*.config.initialHeapSize;
    wrenSymbolTableInit(&vm.*.methodNames);
    vm.*.modules = wrenNewMap(vm);
    wrenInitializeCore(vm);
    return vm;
}
pub export fn wrenFreeVM(arg_vm: [*c]WrenVM) void {
    var vm = arg_vm;
    while (true) {
        if (!false) break;
    }
    var obj: [*c]Obj = vm.*.first;
    while (obj != @as([*c]Obj, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var next: [*c]Obj = obj.*.next;
        wrenFreeObj(vm, obj);
        obj = next;
    }
    vm.*.gray = @as([*c][*c]Obj, @ptrCast(@alignCast(vm.*.config.reallocateFn.?(@as(?*anyopaque, @ptrCast(vm.*.gray)), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), vm.*.config.userData))));
    while (true) {
        if (!false) break;
    }
    wrenSymbolTableClear(vm, &vm.*.methodNames);
    _ = wrenReallocate(vm, @as(?*anyopaque, @ptrCast(vm)), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
}
pub export fn wrenCollectGarbage(arg_vm: [*c]WrenVM) void {
    var vm = arg_vm;
    vm.*.bytesAllocated = 0;
    wrenGrayObj(vm, @as([*c]Obj, @ptrCast(@alignCast(vm.*.modules))));
    {
        var i: c_int = 0;
        while (i < vm.*.numTempRoots) : (i += 1) {
            wrenGrayObj(vm, vm.*.tempRoots[@as(c_uint, @intCast(i))]);
        }
    }
    wrenGrayObj(vm, @as([*c]Obj, @ptrCast(@alignCast(vm.*.fiber))));
    {
        var handle: [*c]WrenHandle = vm.*.handles;
        while (handle != @as([*c]WrenHandle, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (handle = handle.*.next) {
            wrenGrayValue(vm, handle.*.value);
        }
    }
    if (vm.*.compiler != @as([*c]Compiler, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        wrenMarkCompiler(vm, vm.*.compiler);
    }
    wrenBlackenSymbolTable(vm, &vm.*.methodNames);
    wrenBlackenObjects(vm);
    var obj: [*c][*c]Obj = &vm.*.first;
    while (obj.* != @as([*c]Obj, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        if (!obj.*.*.isDark) {
            var unreached: [*c]Obj = obj.*;
            obj.* = unreached.*.next;
            wrenFreeObj(vm, unreached);
        } else {
            obj.*.*.isDark = @as(c_int, 0) != 0;
            obj = &obj.*.*.next;
        }
    }
    vm.*.nextGC = vm.*.bytesAllocated +% ((vm.*.bytesAllocated *% @as(usize, @bitCast(@as(c_long, vm.*.config.heapGrowthPercent)))) / @as(usize, @bitCast(@as(c_long, @as(c_int, 100)))));
    if (vm.*.nextGC < vm.*.config.minHeapSize) {
        vm.*.nextGC = vm.*.config.minHeapSize;
    }
}
pub export fn wrenInterpret(arg_vm: [*c]WrenVM, arg_module: [*c]const u8, arg_source: [*c]const u8) WrenInterpretResult {
    var vm = arg_vm;
    var module = arg_module;
    var source = arg_source;
    var closure: [*c]ObjClosure = wrenCompileSource(vm, module, source, @as(c_int, 0) != 0, @as(c_int, 1) != 0);
    if (closure == @as([*c]ObjClosure, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return @as(c_uint, @bitCast(WREN_RESULT_COMPILE_ERROR));
    wrenPushRoot(vm, @as([*c]Obj, @ptrCast(@alignCast(closure))));
    var fiber: [*c]ObjFiber = wrenNewFiber(vm, closure);
    wrenPopRoot(vm);
    vm.*.apiStack = null;
    return runInterpreter(vm, fiber);
}
pub export fn wrenMakeCallHandle(arg_vm: [*c]WrenVM, arg_signature: [*c]const u8) [*c]WrenHandle {
    var vm = arg_vm;
    var signature = arg_signature;
    while (true) {
        if (!false) break;
    }
    var signatureLength: c_int = @as(c_int, @bitCast(@as(c_uint, @truncate(strlen(signature)))));
    while (true) {
        if (!false) break;
    }
    var numParams: c_int = 0;
    if (@as(c_int, @bitCast(@as(c_uint, (blk: {
        const tmp = signatureLength - @as(c_int, 1);
        if (tmp >= 0) break :blk signature + @as(usize, @intCast(tmp)) else break :blk signature - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*))) == @as(c_int, ')')) {
        {
            var i: c_int = signatureLength - @as(c_int, 1);
            while ((i > @as(c_int, 0)) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk signature + @as(usize, @intCast(tmp)) else break :blk signature - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))) != @as(c_int, '('))) : (i -= 1) {
                if (@as(c_int, @bitCast(@as(c_uint, (blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk signature + @as(usize, @intCast(tmp)) else break :blk signature - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))) == @as(c_int, '_')) {
                    numParams += 1;
                }
            }
        }
    }
    if (@as(c_int, @bitCast(@as(c_uint, signature[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '[')) {
        {
            var i: c_int = 0;
            while ((i < signatureLength) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk signature + @as(usize, @intCast(tmp)) else break :blk signature - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))) != @as(c_int, ']'))) : (i += 1) {
                if (@as(c_int, @bitCast(@as(c_uint, (blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk signature + @as(usize, @intCast(tmp)) else break :blk signature - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))) == @as(c_int, '_')) {
                    numParams += 1;
                }
            }
        }
    }
    var method_1: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, signature, @as(usize, @bitCast(@as(c_long, signatureLength))));
    var @"fn": [*c]ObjFn = wrenNewFunction(vm, null, numParams + @as(c_int, 1));
    var value: [*c]WrenHandle = wrenMakeHandle(vm, wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(@"fn")))));
    value.*.value = wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(wrenNewClosure(vm, @"fn")))));
    wrenByteBufferWrite(vm, &@"fn".*.code, @as(u8, @bitCast(@as(i8, @truncate(CODE_CALL_0 + numParams)))));
    wrenByteBufferWrite(vm, &@"fn".*.code, @as(u8, @bitCast(@as(i8, @truncate((method_1 >> @intCast(8)) & @as(c_int, 255))))));
    wrenByteBufferWrite(vm, &@"fn".*.code, @as(u8, @bitCast(@as(i8, @truncate(method_1 & @as(c_int, 255))))));
    wrenByteBufferWrite(vm, &@"fn".*.code, @as(u8, @bitCast(@as(i8, @truncate(CODE_RETURN)))));
    wrenByteBufferWrite(vm, &@"fn".*.code, @as(u8, @bitCast(@as(i8, @truncate(CODE_END)))));
    wrenIntBufferFill(vm, &@"fn".*.debug.*.sourceLines, @as(c_int, 0), @as(c_int, 5));
    wrenFunctionBindName(vm, @"fn", signature, signatureLength);
    return value;
}
pub export fn wrenCall(arg_vm: [*c]WrenVM, arg_method_1: [*c]WrenHandle) WrenInterpretResult {
    var vm = arg_vm;
    var method_1 = arg_method_1;
    while (true) {
        if (!false) break;
    }
    while (true) {
        if (!false) break;
    }
    while (true) {
        if (!false) break;
    }
    while (true) {
        if (!false) break;
    }
    while (true) {
        if (!false) break;
    }
    var closure: [*c]ObjClosure = @as([*c]ObjClosure, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(method_1.*.value & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    while (true) {
        if (!false) break;
    }
    vm.*.apiStack = null;
    vm.*.fiber.*.stackTop = &(blk: {
        const tmp = closure.*.@"fn".*.maxSlots;
        if (tmp >= 0) break :blk vm.*.fiber.*.stack + @as(usize, @intCast(tmp)) else break :blk vm.*.fiber.*.stack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*;
    wrenCallFunction(vm, vm.*.fiber, closure, @as(c_int, 0));
    var result: WrenInterpretResult = runInterpreter(vm, vm.*.fiber);
    if (vm.*.fiber != @as([*c]ObjFiber, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        vm.*.apiStack = vm.*.fiber.*.stack;
    }
    return result;
}
pub export fn wrenReleaseHandle(arg_vm: [*c]WrenVM, arg_handle: [*c]WrenHandle) void {
    var vm = arg_vm;
    var handle = arg_handle;
    while (true) {
        if (!false) break;
    }
    if (vm.*.handles == handle) {
        vm.*.handles = handle.*.next;
    }
    if (handle.*.prev != @as([*c]WrenHandle, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        handle.*.prev.*.next = handle.*.next;
    }
    if (handle.*.next != @as([*c]WrenHandle, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        handle.*.next.*.prev = handle.*.prev;
    }
    handle.*.prev = null;
    handle.*.next = null;
    handle.*.value = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
    _ = wrenReallocate(vm, @as(?*anyopaque, @ptrCast(handle)), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
}
pub export fn wrenGetSlotCount(arg_vm: [*c]WrenVM) c_int {
    var vm = arg_vm;
    if (vm.*.apiStack == @as([*c]Value, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return 0;
    return @as(c_int, @bitCast(@as(c_int, @truncate(@divExact(@as(c_long, @bitCast(@intFromPtr(vm.*.fiber.*.stackTop) -% @intFromPtr(vm.*.apiStack))), @sizeOf(Value))))));
}
pub export fn wrenEnsureSlots(arg_vm: [*c]WrenVM, arg_numSlots: c_int) void {
    var vm = arg_vm;
    var numSlots = arg_numSlots;
    if (vm.*.apiStack == @as([*c]Value, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        vm.*.fiber = wrenNewFiber(vm, null);
        vm.*.apiStack = vm.*.fiber.*.stack;
    }
    var currentSize: c_int = @as(c_int, @bitCast(@as(c_int, @truncate(@divExact(@as(c_long, @bitCast(@intFromPtr(vm.*.fiber.*.stackTop) -% @intFromPtr(vm.*.apiStack))), @sizeOf(Value))))));
    if (currentSize >= numSlots) return;
    var needed: c_int = @as(c_int, @bitCast(@as(c_int, @truncate(@divExact(@as(c_long, @bitCast(@intFromPtr(vm.*.apiStack) -% @intFromPtr(vm.*.fiber.*.stack))), @sizeOf(Value)))))) + numSlots;
    wrenEnsureStack(vm, vm.*.fiber, needed);
    vm.*.fiber.*.stackTop = vm.*.apiStack + @as(usize, @bitCast(@as(isize, @intCast(numSlots))));
}
pub export fn wrenGetSlotType(arg_vm: [*c]WrenVM, arg_slot: c_int) WrenType {
    var vm = arg_vm;
    var slot = arg_slot;
    validateApiSlot(vm, slot);
    if (wrenIsBool((blk: {
        const tmp = slot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*)) return @as(c_uint, @bitCast(WREN_TYPE_BOOL));
    if (((blk: {
        const tmp = slot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* & @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) != @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) return @as(c_uint, @bitCast(WREN_TYPE_NUM));
    if (wrenIsObjType((blk: {
        const tmp = slot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*, @as(c_uint, @bitCast(OBJ_FOREIGN)))) return @as(c_uint, @bitCast(WREN_TYPE_FOREIGN));
    if (wrenIsObjType((blk: {
        const tmp = slot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*, @as(c_uint, @bitCast(OBJ_LIST)))) return @as(c_uint, @bitCast(WREN_TYPE_LIST));
    if (wrenIsObjType((blk: {
        const tmp = slot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*, @as(c_uint, @bitCast(OBJ_MAP)))) return @as(c_uint, @bitCast(WREN_TYPE_MAP));
    if ((blk: {
        const tmp = slot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))))) return @as(c_uint, @bitCast(WREN_TYPE_NULL));
    if (wrenIsObjType((blk: {
        const tmp = slot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*, @as(c_uint, @bitCast(OBJ_STRING)))) return @as(c_uint, @bitCast(WREN_TYPE_STRING));
    return @as(c_uint, @bitCast(WREN_TYPE_UNKNOWN));
}
pub export fn wrenGetSlotBool(arg_vm: [*c]WrenVM, arg_slot: c_int) bool {
    var vm = arg_vm;
    var slot = arg_slot;
    validateApiSlot(vm, slot);
    while (true) {
        if (!false) break;
    }
    return (blk: {
        const tmp = slot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3))))));
}
pub export fn wrenGetSlotBytes(arg_vm: [*c]WrenVM, arg_slot: c_int, arg_length: [*c]c_int) [*c]const u8 {
    var vm = arg_vm;
    var slot = arg_slot;
    var length = arg_length;
    validateApiSlot(vm, slot);
    while (true) {
        if (!false) break;
    }
    var string: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast((blk: {
        const tmp = slot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    length.* = @as(c_int, @bitCast(string.*.length));
    return string.*.value();
}
pub export fn wrenGetSlotDouble(arg_vm: [*c]WrenVM, arg_slot: c_int) f64 {
    var vm = arg_vm;
    var slot = arg_slot;
    validateApiSlot(vm, slot);
    while (true) {
        if (!false) break;
    }
    return wrenValueToNum((blk: {
        const tmp = slot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*);
}
pub export fn wrenGetSlotForeign(arg_vm: [*c]WrenVM, arg_slot: c_int) ?*anyopaque {
    var vm = arg_vm;
    var slot = arg_slot;
    validateApiSlot(vm, slot);
    while (true) {
        if (!false) break;
    }
    return @as(?*anyopaque, @ptrCast(@as([*c]ObjForeign, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast((blk: {
        const tmp = slot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.data()));
}
pub export fn wrenGetSlotString(arg_vm: [*c]WrenVM, arg_slot: c_int) [*c]const u8 {
    var vm = arg_vm;
    var slot = arg_slot;
    validateApiSlot(vm, slot);
    while (true) {
        if (!false) break;
    }
    return @as([*c]u8, @ptrCast(@alignCast(&@as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast((blk: {
        const tmp = slot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.value())));
}
pub export fn wrenGetSlotHandle(arg_vm: [*c]WrenVM, arg_slot: c_int) [*c]WrenHandle {
    var vm = arg_vm;
    var slot = arg_slot;
    validateApiSlot(vm, slot);
    return wrenMakeHandle(vm, (blk: {
        const tmp = slot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*);
}
pub export fn wrenSetSlotBool(arg_vm: [*c]WrenVM, arg_slot: c_int, arg_value: bool) void {
    var vm = arg_vm;
    var slot = arg_slot;
    var value = arg_value;
    setSlot(vm, slot, if (@as(c_int, @intFromBool(value)) != 0) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2)))))));
}
pub export fn wrenSetSlotBytes(arg_vm: [*c]WrenVM, arg_slot: c_int, arg_bytes: [*c]const u8, arg_length: usize) void {
    var vm = arg_vm;
    var slot = arg_slot;
    var bytes = arg_bytes;
    var length = arg_length;
    while (true) {
        if (!false) break;
    }
    setSlot(vm, slot, wrenNewStringLength(vm, bytes, length));
}
pub export fn wrenSetSlotDouble(arg_vm: [*c]WrenVM, arg_slot: c_int, arg_value: f64) void {
    var vm = arg_vm;
    var slot = arg_slot;
    var value = arg_value;
    setSlot(vm, slot, wrenNumToValue(value));
}
pub export fn wrenSetSlotNewForeign(arg_vm: [*c]WrenVM, arg_slot: c_int, arg_classSlot: c_int, arg_size: usize) ?*anyopaque {
    var vm = arg_vm;
    var slot = arg_slot;
    var classSlot = arg_classSlot;
    var size = arg_size;
    validateApiSlot(vm, slot);
    validateApiSlot(vm, classSlot);
    while (true) {
        if (!false) break;
    }
    var classObj: [*c]ObjClass = @as([*c]ObjClass, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast((blk: {
        const tmp = classSlot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    while (true) {
        if (!false) break;
    }
    var foreign: [*c]ObjForeign = wrenNewForeign(vm, classObj, size);
    (blk: {
        const tmp = slot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* = wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(foreign))));
    return @as(?*anyopaque, @ptrCast(foreign.*.data()));
}
pub export fn wrenSetSlotNewList(arg_vm: [*c]WrenVM, arg_slot: c_int) void {
    var vm = arg_vm;
    var slot = arg_slot;
    setSlot(vm, slot, wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(wrenNewList(vm, @as(u32, @bitCast(@as(c_int, 0)))))))));
}
pub export fn wrenSetSlotNewMap(arg_vm: [*c]WrenVM, arg_slot: c_int) void {
    var vm = arg_vm;
    var slot = arg_slot;
    setSlot(vm, slot, wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(wrenNewMap(vm))))));
}
pub export fn wrenSetSlotNull(arg_vm: [*c]WrenVM, arg_slot: c_int) void {
    var vm = arg_vm;
    var slot = arg_slot;
    setSlot(vm, slot, @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1)))))));
}
pub export fn wrenSetSlotString(arg_vm: [*c]WrenVM, arg_slot: c_int, arg_text: [*c]const u8) void {
    var vm = arg_vm;
    var slot = arg_slot;
    var text = arg_text;
    while (true) {
        if (!false) break;
    }
    setSlot(vm, slot, wrenNewString(vm, text));
}
pub export fn wrenSetSlotHandle(arg_vm: [*c]WrenVM, arg_slot: c_int, arg_handle: [*c]WrenHandle) void {
    var vm = arg_vm;
    var slot = arg_slot;
    var handle = arg_handle;
    while (true) {
        if (!false) break;
    }
    setSlot(vm, slot, handle.*.value);
}
pub export fn wrenGetListCount(arg_vm: [*c]WrenVM, arg_slot: c_int) c_int {
    var vm = arg_vm;
    var slot = arg_slot;
    validateApiSlot(vm, slot);
    while (true) {
        if (!false) break;
    }
    var elements: ValueBuffer = @as([*c]ObjList, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast((blk: {
        const tmp = slot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.elements;
    return elements.count;
}
pub export fn wrenGetListElement(arg_vm: [*c]WrenVM, arg_listSlot: c_int, arg_index_1: c_int, arg_elementSlot: c_int) void {
    var vm = arg_vm;
    var listSlot = arg_listSlot;
    var index_1 = arg_index_1;
    var elementSlot = arg_elementSlot;
    validateApiSlot(vm, listSlot);
    validateApiSlot(vm, elementSlot);
    while (true) {
        if (!false) break;
    }
    var elements: ValueBuffer = @as([*c]ObjList, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast((blk: {
        const tmp = listSlot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.elements;
    var usedIndex: u32 = wrenValidateIndex(@as(u32, @bitCast(elements.count)), @as(i64, @bitCast(@as(c_long, index_1))));
    while (true) {
        if (!false) break;
    }
    (blk: {
        const tmp = elementSlot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* = elements.data[usedIndex];
}
pub export fn wrenSetListElement(arg_vm: [*c]WrenVM, arg_listSlot: c_int, arg_index_1: c_int, arg_elementSlot: c_int) void {
    var vm = arg_vm;
    var listSlot = arg_listSlot;
    var index_1 = arg_index_1;
    var elementSlot = arg_elementSlot;
    validateApiSlot(vm, listSlot);
    validateApiSlot(vm, elementSlot);
    while (true) {
        if (!false) break;
    }
    var list_2: [*c]ObjList = @as([*c]ObjList, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast((blk: {
        const tmp = listSlot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var usedIndex: u32 = wrenValidateIndex(@as(u32, @bitCast(list_2.*.elements.count)), @as(i64, @bitCast(@as(c_long, index_1))));
    while (true) {
        if (!false) break;
    }
    list_2.*.elements.data[usedIndex] = (blk: {
        const tmp = elementSlot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*;
}
pub export fn wrenInsertInList(arg_vm: [*c]WrenVM, arg_listSlot: c_int, arg_index_1: c_int, arg_elementSlot: c_int) void {
    var vm = arg_vm;
    var listSlot = arg_listSlot;
    var index_1 = arg_index_1;
    var elementSlot = arg_elementSlot;
    validateApiSlot(vm, listSlot);
    validateApiSlot(vm, elementSlot);
    while (true) {
        if (!false) break;
    }
    var list_2: [*c]ObjList = @as([*c]ObjList, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast((blk: {
        const tmp = listSlot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    if (index_1 < @as(c_int, 0)) {
        index_1 = (list_2.*.elements.count + @as(c_int, 1)) + index_1;
    }
    while (true) {
        if (!false) break;
    }
    wrenListInsert(vm, list_2, (blk: {
        const tmp = elementSlot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*, @as(u32, @bitCast(index_1)));
}
pub export fn wrenGetMapCount(arg_vm: [*c]WrenVM, arg_slot: c_int) c_int {
    var vm = arg_vm;
    var slot = arg_slot;
    validateApiSlot(vm, slot);
    while (true) {
        if (!false) break;
    }
    var map_1: [*c]ObjMap = @as([*c]ObjMap, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast((blk: {
        const tmp = slot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    return @as(c_int, @bitCast(map_1.*.count));
}
pub export fn wrenGetMapContainsKey(arg_vm: [*c]WrenVM, arg_mapSlot: c_int, arg_keySlot: c_int) bool {
    var vm = arg_vm;
    var mapSlot = arg_mapSlot;
    var keySlot = arg_keySlot;
    validateApiSlot(vm, mapSlot);
    validateApiSlot(vm, keySlot);
    while (true) {
        if (!false) break;
    }
    var key: Value = (blk: {
        const tmp = keySlot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*;
    while (true) {
        if (!false) break;
    }
    if (!validateKey(vm, key)) return @as(c_int, 0) != 0;
    var map_1: [*c]ObjMap = @as([*c]ObjMap, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast((blk: {
        const tmp = mapSlot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var value: Value = wrenMapGet(map_1, key);
    return !(value == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4)))))));
}
pub export fn wrenGetMapValue(arg_vm: [*c]WrenVM, arg_mapSlot: c_int, arg_keySlot: c_int, arg_valueSlot: c_int) void {
    var vm = arg_vm;
    var mapSlot = arg_mapSlot;
    var keySlot = arg_keySlot;
    var valueSlot = arg_valueSlot;
    validateApiSlot(vm, mapSlot);
    validateApiSlot(vm, keySlot);
    validateApiSlot(vm, valueSlot);
    while (true) {
        if (!false) break;
    }
    var map_1: [*c]ObjMap = @as([*c]ObjMap, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast((blk: {
        const tmp = mapSlot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var value: Value = wrenMapGet(map_1, (blk: {
        const tmp = keySlot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*);
    if (value == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4))))))) {
        value = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
    }
    (blk: {
        const tmp = valueSlot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* = value;
}
pub export fn wrenSetMapValue(arg_vm: [*c]WrenVM, arg_mapSlot: c_int, arg_keySlot: c_int, arg_valueSlot: c_int) void {
    var vm = arg_vm;
    var mapSlot = arg_mapSlot;
    var keySlot = arg_keySlot;
    var valueSlot = arg_valueSlot;
    validateApiSlot(vm, mapSlot);
    validateApiSlot(vm, keySlot);
    validateApiSlot(vm, valueSlot);
    while (true) {
        if (!false) break;
    }
    var key: Value = (blk: {
        const tmp = keySlot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*;
    while (true) {
        if (!false) break;
    }
    if (!validateKey(vm, key)) {
        return;
    }
    var value: Value = (blk: {
        const tmp = valueSlot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*;
    var map_1: [*c]ObjMap = @as([*c]ObjMap, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast((blk: {
        const tmp = mapSlot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    wrenMapSet(vm, map_1, key, value);
}
pub export fn wrenRemoveMapValue(arg_vm: [*c]WrenVM, arg_mapSlot: c_int, arg_keySlot: c_int, arg_removedValueSlot: c_int) void {
    var vm = arg_vm;
    var mapSlot = arg_mapSlot;
    var keySlot = arg_keySlot;
    var removedValueSlot = arg_removedValueSlot;
    validateApiSlot(vm, mapSlot);
    validateApiSlot(vm, keySlot);
    while (true) {
        if (!false) break;
    }
    var key: Value = (blk: {
        const tmp = keySlot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*;
    if (!validateKey(vm, key)) {
        return;
    }
    var map_1: [*c]ObjMap = @as([*c]ObjMap, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast((blk: {
        const tmp = mapSlot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var removed: Value = wrenMapRemoveKey(vm, map_1, key);
    setSlot(vm, removedValueSlot, removed);
}
pub export fn wrenGetVariable(arg_vm: [*c]WrenVM, arg_module: [*c]const u8, arg_name_1: [*c]const u8, arg_slot: c_int) void {
    var vm = arg_vm;
    var module = arg_module;
    var name_1 = arg_name_1;
    var slot = arg_slot;
    while (true) {
        if (!false) break;
    }
    while (true) {
        if (!false) break;
    }
    var moduleName: Value = wrenStringFormat(vm, "$", module);
    wrenPushRoot(vm, @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(moduleName & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))));
    var moduleObj: [*c]ObjModule = getModule(vm, moduleName);
    while (true) {
        if (!false) break;
    }
    wrenPopRoot(vm);
    var variableSlot: c_int = wrenSymbolTableFind(&moduleObj.*.variableNames, name_1, strlen(name_1));
    while (true) {
        if (!false) break;
    }
    setSlot(vm, slot, (blk: {
        const tmp = variableSlot;
        if (tmp >= 0) break :blk moduleObj.*.variables.data + @as(usize, @intCast(tmp)) else break :blk moduleObj.*.variables.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*);
}
pub export fn wrenHasVariable(arg_vm: [*c]WrenVM, arg_module: [*c]const u8, arg_name_1: [*c]const u8) bool {
    var vm = arg_vm;
    var module = arg_module;
    var name_1 = arg_name_1;
    while (true) {
        if (!false) break;
    }
    while (true) {
        if (!false) break;
    }
    var moduleName: Value = wrenStringFormat(vm, "$", module);
    wrenPushRoot(vm, @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(moduleName & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))));
    var moduleObj: [*c]ObjModule = getModule(vm, moduleName);
    while (true) {
        if (!false) break;
    }
    wrenPopRoot(vm);
    var variableSlot: c_int = wrenSymbolTableFind(&moduleObj.*.variableNames, name_1, strlen(name_1));
    return variableSlot != -@as(c_int, 1);
}
pub export fn wrenHasModule(arg_vm: [*c]WrenVM, arg_module: [*c]const u8) bool {
    var vm = arg_vm;
    var module = arg_module;
    while (true) {
        if (!false) break;
    }
    var moduleName: Value = wrenStringFormat(vm, "$", module);
    wrenPushRoot(vm, @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(moduleName & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))));
    var moduleObj: [*c]ObjModule = getModule(vm, moduleName);
    wrenPopRoot(vm);
    return moduleObj != @as([*c]ObjModule, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))));
}
pub export fn wrenAbortFiber(arg_vm: [*c]WrenVM, arg_slot: c_int) void {
    var vm = arg_vm;
    var slot = arg_slot;
    validateApiSlot(vm, slot);
    vm.*.fiber.*.@"error" = (blk: {
        const tmp = slot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*;
}
pub export fn wrenGetUserData(arg_vm: [*c]WrenVM) ?*anyopaque {
    var vm = arg_vm;
    return vm.*.config.userData;
}
pub export fn wrenSetUserData(arg_vm: [*c]WrenVM, arg_userData: ?*anyopaque) void {
    var vm = arg_vm;
    var userData = arg_userData;
    vm.*.config.userData = userData;
}
pub extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memccpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memset(__s: ?*anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn memchr(__s: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcat(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncat(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcoll(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strxfrm(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub const struct___locale_data_6 = opaque {};
pub const struct___locale_struct = extern struct {
    __locales: [13]?*struct___locale_data_6,
    __ctype_b: [*c]const c_ushort,
    __ctype_tolower: [*c]const c_int,
    __ctype_toupper: [*c]const c_int,
    __names: [13][*c]const u8,
};
pub const __locale_t = [*c]struct___locale_struct;
pub const locale_t = __locale_t;
pub extern fn strcoll_l(__s1: [*c]const u8, __s2: [*c]const u8, __l: locale_t) c_int;
pub extern fn strxfrm_l(__dest: [*c]u8, __src: [*c]const u8, __n: usize, __l: locale_t) usize;
pub extern fn strdup(__s: [*c]const u8) [*c]u8;
pub extern fn strndup(__string: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strcspn(__s: [*c]const u8, __reject: [*c]const u8) c_ulong;
pub extern fn strspn(__s: [*c]const u8, __accept: [*c]const u8) c_ulong;
pub extern fn strpbrk(__s: [*c]const u8, __accept: [*c]const u8) [*c]u8;
pub extern fn strstr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
pub extern fn strtok(__s: [*c]u8, __delim: [*c]const u8) [*c]u8;
pub extern fn __strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strlen(__s: [*c]const u8) c_ulong;
pub extern fn strnlen(__string: [*c]const u8, __maxlen: usize) usize;
pub extern fn strerror(__errnum: c_int) [*c]u8;
pub extern fn strerror_r(__errnum: c_int, __buf: [*c]u8, __buflen: usize) c_int;
pub extern fn strerror_l(__errnum: c_int, __l: locale_t) [*c]u8;
pub extern fn bcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn bcopy(__src: ?*const anyopaque, __dest: ?*anyopaque, __n: usize) void;
pub extern fn bzero(__s: ?*anyopaque, __n: c_ulong) void;
pub extern fn index(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn rindex(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn ffs(__i: c_int) c_int;
pub extern fn ffsl(__l: c_long) c_int;
pub extern fn ffsll(__ll: c_longlong) c_int;
pub extern fn strcasecmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncasecmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __loc: locale_t) c_int;
pub extern fn strncasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __n: usize, __loc: locale_t) c_int;
pub extern fn explicit_bzero(__s: ?*anyopaque, __n: usize) void;
pub extern fn strsep(noalias __stringp: [*c][*c]u8, noalias __delim: [*c]const u8) [*c]u8;
pub extern fn strsignal(__sig: c_int) [*c]u8;
pub extern fn __stpcpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
pub extern fn stpcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn __stpncpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
pub extern fn stpncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub const int_least8_t = __int_least8_t;
pub const int_least16_t = __int_least16_t;
pub const int_least32_t = __int_least32_t;
pub const int_least64_t = __int_least64_t;
pub const uint_least8_t = __uint_least8_t;
pub const uint_least16_t = __uint_least16_t;
pub const uint_least32_t = __uint_least32_t;
pub const uint_least64_t = __uint_least64_t;
pub const int_fast8_t = i8;
pub const int_fast16_t = c_long;
pub const int_fast32_t = c_long;
pub const int_fast64_t = c_long;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = c_ulong;
pub const uint_fast32_t = c_ulong;
pub const uint_fast64_t = c_ulong;
pub const intmax_t = __intmax_t;
pub const uintmax_t = __uintmax_t;
pub const float_t = f32;
pub const double_t = f64;
pub extern fn __fpclassify(__value: f64) c_int;
pub extern fn __signbit(__value: f64) c_int;
pub extern fn __isinf(__value: f64) c_int;
pub extern fn __finite(__value: f64) c_int;
pub extern fn __isnan(__value: f64) c_int;
pub extern fn __iseqsig(__x: f64, __y: f64) c_int;
pub extern fn __issignaling(__value: f64) c_int;
pub extern fn acos(__x: f64) f64;
pub extern fn __acos(__x: f64) f64;
pub extern fn asin(__x: f64) f64;
pub extern fn __asin(__x: f64) f64;
pub extern fn atan(__x: f64) f64;
pub extern fn __atan(__x: f64) f64;
pub extern fn atan2(__y: f64, __x: f64) f64;
pub extern fn __atan2(__y: f64, __x: f64) f64;
pub extern fn cos(__x: f64) f64;
pub extern fn __cos(__x: f64) f64;
pub extern fn sin(__x: f64) f64;
pub extern fn __sin(__x: f64) f64;
pub extern fn tan(__x: f64) f64;
pub extern fn __tan(__x: f64) f64;
pub extern fn cosh(__x: f64) f64;
pub extern fn __cosh(__x: f64) f64;
pub extern fn sinh(__x: f64) f64;
pub extern fn __sinh(__x: f64) f64;
pub extern fn tanh(__x: f64) f64;
pub extern fn __tanh(__x: f64) f64;
pub extern fn acosh(__x: f64) f64;
pub extern fn __acosh(__x: f64) f64;
pub extern fn asinh(__x: f64) f64;
pub extern fn __asinh(__x: f64) f64;
pub extern fn atanh(__x: f64) f64;
pub extern fn __atanh(__x: f64) f64;
pub extern fn exp(__x: f64) f64;
pub extern fn __exp(__x: f64) f64;
pub extern fn frexp(__x: f64, __exponent: [*c]c_int) f64;
pub extern fn __frexp(__x: f64, __exponent: [*c]c_int) f64;
pub extern fn ldexp(__x: f64, __exponent: c_int) f64;
pub extern fn __ldexp(__x: f64, __exponent: c_int) f64;
pub extern fn log(__x: f64) f64;
pub extern fn __log(__x: f64) f64;
pub extern fn log10(__x: f64) f64;
pub extern fn __log10(__x: f64) f64;
pub extern fn modf(__x: f64, __iptr: [*c]f64) f64;
pub extern fn __modf(__x: f64, __iptr: [*c]f64) f64;
pub extern fn expm1(__x: f64) f64;
pub extern fn __expm1(__x: f64) f64;
pub extern fn log1p(__x: f64) f64;
pub extern fn __log1p(__x: f64) f64;
pub extern fn logb(__x: f64) f64;
pub extern fn __logb(__x: f64) f64;
pub extern fn exp2(__x: f64) f64;
pub extern fn __exp2(__x: f64) f64;
pub extern fn log2(__x: f64) f64;
pub extern fn __log2(__x: f64) f64;
pub extern fn pow(__x: f64, __y: f64) f64;
pub extern fn __pow(__x: f64, __y: f64) f64;
pub extern fn sqrt(__x: f64) f64;
pub extern fn __sqrt(__x: f64) f64;
pub extern fn hypot(__x: f64, __y: f64) f64;
pub extern fn __hypot(__x: f64, __y: f64) f64;
pub extern fn cbrt(__x: f64) f64;
pub extern fn __cbrt(__x: f64) f64;
pub extern fn ceil(__x: f64) f64;
pub extern fn __ceil(__x: f64) f64;
pub extern fn fabs(__x: f64) f64;
pub extern fn __fabs(__x: f64) f64;
pub extern fn floor(__x: f64) f64;
pub extern fn __floor(__x: f64) f64;
pub extern fn fmod(__x: f64, __y: f64) f64;
pub extern fn __fmod(__x: f64, __y: f64) f64;
pub extern fn isinf(__value: f64) c_int;
pub extern fn finite(__value: f64) c_int;
pub extern fn drem(__x: f64, __y: f64) f64;
pub extern fn __drem(__x: f64, __y: f64) f64;
pub extern fn significand(__x: f64) f64;
pub extern fn __significand(__x: f64) f64;
pub extern fn copysign(__x: f64, __y: f64) f64;
pub extern fn __copysign(__x: f64, __y: f64) f64;
pub extern fn nan(__tagb: [*c]const u8) f64;
pub extern fn __nan(__tagb: [*c]const u8) f64;
pub extern fn isnan(__value: f64) c_int;
pub extern fn j0(f64) f64;
pub extern fn __j0(f64) f64;
pub extern fn j1(f64) f64;
pub extern fn __j1(f64) f64;
pub extern fn jn(c_int, f64) f64;
pub extern fn __jn(c_int, f64) f64;
pub extern fn y0(f64) f64;
pub extern fn __y0(f64) f64;
pub extern fn y1(f64) f64;
pub extern fn __y1(f64) f64;
pub extern fn yn(c_int, f64) f64;
pub extern fn __yn(c_int, f64) f64;
pub extern fn erf(f64) f64;
pub extern fn __erf(f64) f64;
pub extern fn erfc(f64) f64;
pub extern fn __erfc(f64) f64;
pub extern fn lgamma(f64) f64;
pub extern fn __lgamma(f64) f64;
pub extern fn tgamma(f64) f64;
pub extern fn __tgamma(f64) f64;
pub extern fn gamma(f64) f64;
pub extern fn __gamma(f64) f64;
pub extern fn lgamma_r(f64, __signgamp: [*c]c_int) f64;
pub extern fn __lgamma_r(f64, __signgamp: [*c]c_int) f64;
pub extern fn rint(__x: f64) f64;
pub extern fn __rint(__x: f64) f64;
pub extern fn nextafter(__x: f64, __y: f64) f64;
pub extern fn __nextafter(__x: f64, __y: f64) f64;
pub extern fn nexttoward(__x: f64, __y: c_longdouble) f64;
pub extern fn __nexttoward(__x: f64, __y: c_longdouble) f64;
pub extern fn remainder(__x: f64, __y: f64) f64;
pub extern fn __remainder(__x: f64, __y: f64) f64;
pub extern fn scalbn(__x: f64, __n: c_int) f64;
pub extern fn __scalbn(__x: f64, __n: c_int) f64;
pub extern fn ilogb(__x: f64) c_int;
pub extern fn __ilogb(__x: f64) c_int;
pub extern fn scalbln(__x: f64, __n: c_long) f64;
pub extern fn __scalbln(__x: f64, __n: c_long) f64;
pub extern fn nearbyint(__x: f64) f64;
pub extern fn __nearbyint(__x: f64) f64;
pub extern fn round(__x: f64) f64;
pub extern fn __round(__x: f64) f64;
pub extern fn trunc(__x: f64) f64;
pub extern fn __trunc(__x: f64) f64;
pub extern fn remquo(__x: f64, __y: f64, __quo: [*c]c_int) f64;
pub extern fn __remquo(__x: f64, __y: f64, __quo: [*c]c_int) f64;
pub extern fn lrint(__x: f64) c_long;
pub extern fn __lrint(__x: f64) c_long;
pub extern fn llrint(__x: f64) c_longlong;
pub extern fn __llrint(__x: f64) c_longlong;
pub extern fn lround(__x: f64) c_long;
pub extern fn __lround(__x: f64) c_long;
pub extern fn llround(__x: f64) c_longlong;
pub extern fn __llround(__x: f64) c_longlong;
pub extern fn fdim(__x: f64, __y: f64) f64;
pub extern fn __fdim(__x: f64, __y: f64) f64;
pub extern fn fmax(__x: f64, __y: f64) f64;
pub extern fn __fmax(__x: f64, __y: f64) f64;
pub extern fn fmin(__x: f64, __y: f64) f64;
pub extern fn __fmin(__x: f64, __y: f64) f64;
pub extern fn fma(__x: f64, __y: f64, __z: f64) f64;
pub extern fn __fma(__x: f64, __y: f64, __z: f64) f64;
pub extern fn scalb(__x: f64, __n: f64) f64;
pub extern fn __scalb(__x: f64, __n: f64) f64;
pub extern fn __fpclassifyf(__value: f32) c_int;
pub extern fn __signbitf(__value: f32) c_int;
pub extern fn __isinff(__value: f32) c_int;
pub extern fn __finitef(__value: f32) c_int;
pub extern fn __isnanf(__value: f32) c_int;
pub extern fn __iseqsigf(__x: f32, __y: f32) c_int;
pub extern fn __issignalingf(__value: f32) c_int;
pub extern fn acosf(__x: f32) f32;
pub extern fn __acosf(__x: f32) f32;
pub extern fn asinf(__x: f32) f32;
pub extern fn __asinf(__x: f32) f32;
pub extern fn atanf(__x: f32) f32;
pub extern fn __atanf(__x: f32) f32;
pub extern fn atan2f(__y: f32, __x: f32) f32;
pub extern fn __atan2f(__y: f32, __x: f32) f32;
pub extern fn cosf(__x: f32) f32;
pub extern fn __cosf(__x: f32) f32;
pub extern fn sinf(__x: f32) f32;
pub extern fn __sinf(__x: f32) f32;
pub extern fn tanf(__x: f32) f32;
pub extern fn __tanf(__x: f32) f32;
pub extern fn coshf(__x: f32) f32;
pub extern fn __coshf(__x: f32) f32;
pub extern fn sinhf(__x: f32) f32;
pub extern fn __sinhf(__x: f32) f32;
pub extern fn tanhf(__x: f32) f32;
pub extern fn __tanhf(__x: f32) f32;
pub extern fn acoshf(__x: f32) f32;
pub extern fn __acoshf(__x: f32) f32;
pub extern fn asinhf(__x: f32) f32;
pub extern fn __asinhf(__x: f32) f32;
pub extern fn atanhf(__x: f32) f32;
pub extern fn __atanhf(__x: f32) f32;
pub extern fn expf(__x: f32) f32;
pub extern fn __expf(__x: f32) f32;
pub extern fn frexpf(__x: f32, __exponent: [*c]c_int) f32;
pub extern fn __frexpf(__x: f32, __exponent: [*c]c_int) f32;
pub extern fn ldexpf(__x: f32, __exponent: c_int) f32;
pub extern fn __ldexpf(__x: f32, __exponent: c_int) f32;
pub extern fn logf(__x: f32) f32;
pub extern fn __logf(__x: f32) f32;
pub extern fn log10f(__x: f32) f32;
pub extern fn __log10f(__x: f32) f32;
pub extern fn modff(__x: f32, __iptr: [*c]f32) f32;
pub extern fn __modff(__x: f32, __iptr: [*c]f32) f32;
pub extern fn expm1f(__x: f32) f32;
pub extern fn __expm1f(__x: f32) f32;
pub extern fn log1pf(__x: f32) f32;
pub extern fn __log1pf(__x: f32) f32;
pub extern fn logbf(__x: f32) f32;
pub extern fn __logbf(__x: f32) f32;
pub extern fn exp2f(__x: f32) f32;
pub extern fn __exp2f(__x: f32) f32;
pub extern fn log2f(__x: f32) f32;
pub extern fn __log2f(__x: f32) f32;
pub extern fn powf(__x: f32, __y: f32) f32;
pub extern fn __powf(__x: f32, __y: f32) f32;
pub extern fn sqrtf(__x: f32) f32;
pub extern fn __sqrtf(__x: f32) f32;
pub extern fn hypotf(__x: f32, __y: f32) f32;
pub extern fn __hypotf(__x: f32, __y: f32) f32;
pub extern fn cbrtf(__x: f32) f32;
pub extern fn __cbrtf(__x: f32) f32;
pub extern fn ceilf(__x: f32) f32;
pub extern fn __ceilf(__x: f32) f32;
pub extern fn fabsf(__x: f32) f32;
pub extern fn __fabsf(__x: f32) f32;
pub extern fn floorf(__x: f32) f32;
pub extern fn __floorf(__x: f32) f32;
pub extern fn fmodf(__x: f32, __y: f32) f32;
pub extern fn __fmodf(__x: f32, __y: f32) f32;
pub extern fn isinff(__value: f32) c_int;
pub extern fn finitef(__value: f32) c_int;
pub extern fn dremf(__x: f32, __y: f32) f32;
pub extern fn __dremf(__x: f32, __y: f32) f32;
pub extern fn significandf(__x: f32) f32;
pub extern fn __significandf(__x: f32) f32;
pub extern fn copysignf(__x: f32, __y: f32) f32;
pub extern fn __copysignf(__x: f32, __y: f32) f32;
pub extern fn nanf(__tagb: [*c]const u8) f32;
pub extern fn __nanf(__tagb: [*c]const u8) f32;
pub extern fn isnanf(__value: f32) c_int;
pub extern fn j0f(f32) f32;
pub extern fn __j0f(f32) f32;
pub extern fn j1f(f32) f32;
pub extern fn __j1f(f32) f32;
pub extern fn jnf(c_int, f32) f32;
pub extern fn __jnf(c_int, f32) f32;
pub extern fn y0f(f32) f32;
pub extern fn __y0f(f32) f32;
pub extern fn y1f(f32) f32;
pub extern fn __y1f(f32) f32;
pub extern fn ynf(c_int, f32) f32;
pub extern fn __ynf(c_int, f32) f32;
pub extern fn erff(f32) f32;
pub extern fn __erff(f32) f32;
pub extern fn erfcf(f32) f32;
pub extern fn __erfcf(f32) f32;
pub extern fn lgammaf(f32) f32;
pub extern fn __lgammaf(f32) f32;
pub extern fn tgammaf(f32) f32;
pub extern fn __tgammaf(f32) f32;
pub extern fn gammaf(f32) f32;
pub extern fn __gammaf(f32) f32;
pub extern fn lgammaf_r(f32, __signgamp: [*c]c_int) f32;
pub extern fn __lgammaf_r(f32, __signgamp: [*c]c_int) f32;
pub extern fn rintf(__x: f32) f32;
pub extern fn __rintf(__x: f32) f32;
pub extern fn nextafterf(__x: f32, __y: f32) f32;
pub extern fn __nextafterf(__x: f32, __y: f32) f32;
pub extern fn nexttowardf(__x: f32, __y: c_longdouble) f32;
pub extern fn __nexttowardf(__x: f32, __y: c_longdouble) f32;
pub extern fn remainderf(__x: f32, __y: f32) f32;
pub extern fn __remainderf(__x: f32, __y: f32) f32;
pub extern fn scalbnf(__x: f32, __n: c_int) f32;
pub extern fn __scalbnf(__x: f32, __n: c_int) f32;
pub extern fn ilogbf(__x: f32) c_int;
pub extern fn __ilogbf(__x: f32) c_int;
pub extern fn scalblnf(__x: f32, __n: c_long) f32;
pub extern fn __scalblnf(__x: f32, __n: c_long) f32;
pub extern fn nearbyintf(__x: f32) f32;
pub extern fn __nearbyintf(__x: f32) f32;
pub extern fn roundf(__x: f32) f32;
pub extern fn __roundf(__x: f32) f32;
pub extern fn truncf(__x: f32) f32;
pub extern fn __truncf(__x: f32) f32;
pub extern fn remquof(__x: f32, __y: f32, __quo: [*c]c_int) f32;
pub extern fn __remquof(__x: f32, __y: f32, __quo: [*c]c_int) f32;
pub extern fn lrintf(__x: f32) c_long;
pub extern fn __lrintf(__x: f32) c_long;
pub extern fn llrintf(__x: f32) c_longlong;
pub extern fn __llrintf(__x: f32) c_longlong;
pub extern fn lroundf(__x: f32) c_long;
pub extern fn __lroundf(__x: f32) c_long;
pub extern fn llroundf(__x: f32) c_longlong;
pub extern fn __llroundf(__x: f32) c_longlong;
pub extern fn fdimf(__x: f32, __y: f32) f32;
pub extern fn __fdimf(__x: f32, __y: f32) f32;
pub extern fn fmaxf(__x: f32, __y: f32) f32;
pub extern fn __fmaxf(__x: f32, __y: f32) f32;
pub extern fn fminf(__x: f32, __y: f32) f32;
pub extern fn __fminf(__x: f32, __y: f32) f32;
pub extern fn fmaf(__x: f32, __y: f32, __z: f32) f32;
pub extern fn __fmaf(__x: f32, __y: f32, __z: f32) f32;
pub extern fn scalbf(__x: f32, __n: f32) f32;
pub extern fn __scalbf(__x: f32, __n: f32) f32;
pub extern fn __fpclassifyl(__value: c_longdouble) c_int;
pub extern fn __signbitl(__value: c_longdouble) c_int;
pub extern fn __isinfl(__value: c_longdouble) c_int;
pub extern fn __finitel(__value: c_longdouble) c_int;
pub extern fn __isnanl(__value: c_longdouble) c_int;
pub extern fn __iseqsigl(__x: c_longdouble, __y: c_longdouble) c_int;
pub extern fn __issignalingl(__value: c_longdouble) c_int;
pub extern fn acosl(__x: c_longdouble) c_longdouble;
pub extern fn __acosl(__x: c_longdouble) c_longdouble;
pub extern fn asinl(__x: c_longdouble) c_longdouble;
pub extern fn __asinl(__x: c_longdouble) c_longdouble;
pub extern fn atanl(__x: c_longdouble) c_longdouble;
pub extern fn __atanl(__x: c_longdouble) c_longdouble;
pub extern fn atan2l(__y: c_longdouble, __x: c_longdouble) c_longdouble;
pub extern fn __atan2l(__y: c_longdouble, __x: c_longdouble) c_longdouble;
pub extern fn cosl(__x: c_longdouble) c_longdouble;
pub extern fn __cosl(__x: c_longdouble) c_longdouble;
pub extern fn sinl(__x: c_longdouble) c_longdouble;
pub extern fn __sinl(__x: c_longdouble) c_longdouble;
pub extern fn tanl(__x: c_longdouble) c_longdouble;
pub extern fn __tanl(__x: c_longdouble) c_longdouble;
pub extern fn coshl(__x: c_longdouble) c_longdouble;
pub extern fn __coshl(__x: c_longdouble) c_longdouble;
pub extern fn sinhl(__x: c_longdouble) c_longdouble;
pub extern fn __sinhl(__x: c_longdouble) c_longdouble;
pub extern fn tanhl(__x: c_longdouble) c_longdouble;
pub extern fn __tanhl(__x: c_longdouble) c_longdouble;
pub extern fn acoshl(__x: c_longdouble) c_longdouble;
pub extern fn __acoshl(__x: c_longdouble) c_longdouble;
pub extern fn asinhl(__x: c_longdouble) c_longdouble;
pub extern fn __asinhl(__x: c_longdouble) c_longdouble;
pub extern fn atanhl(__x: c_longdouble) c_longdouble;
pub extern fn __atanhl(__x: c_longdouble) c_longdouble;
pub extern fn expl(__x: c_longdouble) c_longdouble;
pub extern fn __expl(__x: c_longdouble) c_longdouble;
pub extern fn frexpl(__x: c_longdouble, __exponent: [*c]c_int) c_longdouble;
pub extern fn __frexpl(__x: c_longdouble, __exponent: [*c]c_int) c_longdouble;
pub extern fn ldexpl(__x: c_longdouble, __exponent: c_int) c_longdouble;
pub extern fn __ldexpl(__x: c_longdouble, __exponent: c_int) c_longdouble;
pub extern fn logl(__x: c_longdouble) c_longdouble;
pub extern fn __logl(__x: c_longdouble) c_longdouble;
pub extern fn log10l(__x: c_longdouble) c_longdouble;
pub extern fn __log10l(__x: c_longdouble) c_longdouble;
pub extern fn modfl(__x: c_longdouble, __iptr: [*c]c_longdouble) c_longdouble;
pub extern fn __modfl(__x: c_longdouble, __iptr: [*c]c_longdouble) c_longdouble;
pub extern fn expm1l(__x: c_longdouble) c_longdouble;
pub extern fn __expm1l(__x: c_longdouble) c_longdouble;
pub extern fn log1pl(__x: c_longdouble) c_longdouble;
pub extern fn __log1pl(__x: c_longdouble) c_longdouble;
pub extern fn logbl(__x: c_longdouble) c_longdouble;
pub extern fn __logbl(__x: c_longdouble) c_longdouble;
pub extern fn exp2l(__x: c_longdouble) c_longdouble;
pub extern fn __exp2l(__x: c_longdouble) c_longdouble;
pub extern fn log2l(__x: c_longdouble) c_longdouble;
pub extern fn __log2l(__x: c_longdouble) c_longdouble;
pub extern fn powl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __powl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn sqrtl(__x: c_longdouble) c_longdouble;
pub extern fn __sqrtl(__x: c_longdouble) c_longdouble;
pub extern fn hypotl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __hypotl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn cbrtl(__x: c_longdouble) c_longdouble;
pub extern fn __cbrtl(__x: c_longdouble) c_longdouble;
pub extern fn ceill(__x: c_longdouble) c_longdouble;
pub extern fn __ceill(__x: c_longdouble) c_longdouble;
pub extern fn fabsl(__x: c_longdouble) c_longdouble;
pub extern fn __fabsl(__x: c_longdouble) c_longdouble;
pub extern fn floorl(__x: c_longdouble) c_longdouble;
pub extern fn __floorl(__x: c_longdouble) c_longdouble;
pub extern fn fmodl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmodl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn isinfl(__value: c_longdouble) c_int;
pub extern fn finitel(__value: c_longdouble) c_int;
pub extern fn dreml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __dreml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn significandl(__x: c_longdouble) c_longdouble;
pub extern fn __significandl(__x: c_longdouble) c_longdouble;
pub extern fn copysignl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __copysignl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn nanl(__tagb: [*c]const u8) c_longdouble;
pub extern fn __nanl(__tagb: [*c]const u8) c_longdouble;
pub extern fn isnanl(__value: c_longdouble) c_int;
pub extern fn j0l(c_longdouble) c_longdouble;
pub extern fn __j0l(c_longdouble) c_longdouble;
pub extern fn j1l(c_longdouble) c_longdouble;
pub extern fn __j1l(c_longdouble) c_longdouble;
pub extern fn jnl(c_int, c_longdouble) c_longdouble;
pub extern fn __jnl(c_int, c_longdouble) c_longdouble;
pub extern fn y0l(c_longdouble) c_longdouble;
pub extern fn __y0l(c_longdouble) c_longdouble;
pub extern fn y1l(c_longdouble) c_longdouble;
pub extern fn __y1l(c_longdouble) c_longdouble;
pub extern fn ynl(c_int, c_longdouble) c_longdouble;
pub extern fn __ynl(c_int, c_longdouble) c_longdouble;
pub extern fn erfl(c_longdouble) c_longdouble;
pub extern fn __erfl(c_longdouble) c_longdouble;
pub extern fn erfcl(c_longdouble) c_longdouble;
pub extern fn __erfcl(c_longdouble) c_longdouble;
pub extern fn lgammal(c_longdouble) c_longdouble;
pub extern fn __lgammal(c_longdouble) c_longdouble;
pub extern fn tgammal(c_longdouble) c_longdouble;
pub extern fn __tgammal(c_longdouble) c_longdouble;
pub extern fn gammal(c_longdouble) c_longdouble;
pub extern fn __gammal(c_longdouble) c_longdouble;
pub extern fn lgammal_r(c_longdouble, __signgamp: [*c]c_int) c_longdouble;
pub extern fn __lgammal_r(c_longdouble, __signgamp: [*c]c_int) c_longdouble;
pub extern fn rintl(__x: c_longdouble) c_longdouble;
pub extern fn __rintl(__x: c_longdouble) c_longdouble;
pub extern fn nextafterl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __nextafterl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn nexttowardl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __nexttowardl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn remainderl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __remainderl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn scalbnl(__x: c_longdouble, __n: c_int) c_longdouble;
pub extern fn __scalbnl(__x: c_longdouble, __n: c_int) c_longdouble;
pub extern fn ilogbl(__x: c_longdouble) c_int;
pub extern fn __ilogbl(__x: c_longdouble) c_int;
pub extern fn scalblnl(__x: c_longdouble, __n: c_long) c_longdouble;
pub extern fn __scalblnl(__x: c_longdouble, __n: c_long) c_longdouble;
pub extern fn nearbyintl(__x: c_longdouble) c_longdouble;
pub extern fn __nearbyintl(__x: c_longdouble) c_longdouble;
pub extern fn roundl(__x: c_longdouble) c_longdouble;
pub extern fn __roundl(__x: c_longdouble) c_longdouble;
pub extern fn truncl(__x: c_longdouble) c_longdouble;
pub extern fn __truncl(__x: c_longdouble) c_longdouble;
pub extern fn remquol(__x: c_longdouble, __y: c_longdouble, __quo: [*c]c_int) c_longdouble;
pub extern fn __remquol(__x: c_longdouble, __y: c_longdouble, __quo: [*c]c_int) c_longdouble;
pub extern fn lrintl(__x: c_longdouble) c_long;
pub extern fn __lrintl(__x: c_longdouble) c_long;
pub extern fn llrintl(__x: c_longdouble) c_longlong;
pub extern fn __llrintl(__x: c_longdouble) c_longlong;
pub extern fn lroundl(__x: c_longdouble) c_long;
pub extern fn __lroundl(__x: c_longdouble) c_long;
pub extern fn llroundl(__x: c_longdouble) c_longlong;
pub extern fn __llroundl(__x: c_longdouble) c_longlong;
pub extern fn fdiml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fdiml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmaxl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaxl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmal(__x: c_longdouble, __y: c_longdouble, __z: c_longdouble) c_longdouble;
pub extern fn __fmal(__x: c_longdouble, __y: c_longdouble, __z: c_longdouble) c_longdouble;
pub extern fn scalbl(__x: c_longdouble, __n: c_longdouble) c_longdouble;
pub extern fn __scalbl(__x: c_longdouble, __n: c_longdouble) c_longdouble;
pub extern var signgam: c_int;
pub const FP_NAN: c_int = 0;
pub const FP_INFINITE: c_int = 1;
pub const FP_ZERO: c_int = 2;
pub const FP_SUBNORMAL: c_int = 3;
pub const FP_NORMAL: c_int = 4;
const enum_unnamed_7 = c_uint;
pub const WrenDoubleBits = extern union {
    bits64: u64,
    bits32: [2]u32,
    num: f64,
};
pub fn wrenDoubleFromBits(arg_bits: u64) callconv(.C) f64 {
    var bits = arg_bits;
    var data: WrenDoubleBits = undefined;
    data.bits64 = bits;
    return data.num;
}
pub fn wrenDoubleToBits(arg_num: f64) callconv(.C) u64 {
    var num = arg_num;
    var data: WrenDoubleBits = undefined;
    data.num = num;
    return data.bits64;
}
pub const ByteBuffer = extern struct {
    data: [*c]u8,
    count: c_int,
    capacity: c_int,
};
pub export fn wrenByteBufferInit(arg_buffer: [*c]ByteBuffer) void {
    var buffer = arg_buffer;
    buffer.*.data = null;
    buffer.*.capacity = 0;
    buffer.*.count = 0;
}
pub export fn wrenByteBufferClear(arg_vm: [*c]WrenVM, arg_buffer: [*c]ByteBuffer) void {
    var vm = arg_vm;
    var buffer = arg_buffer;
    _ = wrenReallocate(vm, @as(?*anyopaque, @ptrCast(buffer.*.data)), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
    wrenByteBufferInit(buffer);
}
pub export fn wrenByteBufferFill(arg_vm: [*c]WrenVM, arg_buffer: [*c]ByteBuffer, arg_data: u8, arg_count: c_int) void {
    var vm = arg_vm;
    var buffer = arg_buffer;
    var data = arg_data;
    var count = arg_count;
    if (buffer.*.capacity < (buffer.*.count + count)) {
        var capacity: c_int = wrenPowerOf2Ceil(buffer.*.count + count);
        buffer.*.data = @as([*c]u8, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrCast(buffer.*.data)), @as(c_ulong, @bitCast(@as(c_long, buffer.*.capacity))) *% @sizeOf(u8), @as(c_ulong, @bitCast(@as(c_long, capacity))) *% @sizeOf(u8)))));
        buffer.*.capacity = capacity;
    }
    {
        var i: c_int = 0;
        while (i < count) : (i += 1) {
            (blk: {
                const tmp = blk_1: {
                    const ref = &buffer.*.count;
                    const tmp_2 = ref.*;
                    ref.* += 1;
                    break :blk_1 tmp_2;
                };
                if (tmp >= 0) break :blk buffer.*.data + @as(usize, @intCast(tmp)) else break :blk buffer.*.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = data;
        }
    }
}
pub export fn wrenByteBufferWrite(arg_vm: [*c]WrenVM, arg_buffer: [*c]ByteBuffer, arg_data: u8) void {
    var vm = arg_vm;
    var buffer = arg_buffer;
    var data = arg_data;
    wrenByteBufferFill(vm, buffer, data, @as(c_int, 1));
}
pub const IntBuffer = extern struct {
    data: [*c]c_int,
    count: c_int,
    capacity: c_int,
};
pub export fn wrenIntBufferInit(arg_buffer: [*c]IntBuffer) void {
    var buffer = arg_buffer;
    buffer.*.data = null;
    buffer.*.capacity = 0;
    buffer.*.count = 0;
}
pub export fn wrenIntBufferClear(arg_vm: [*c]WrenVM, arg_buffer: [*c]IntBuffer) void {
    var vm = arg_vm;
    var buffer = arg_buffer;
    _ = wrenReallocate(vm, @as(?*anyopaque, @ptrCast(buffer.*.data)), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
    wrenIntBufferInit(buffer);
}
pub export fn wrenIntBufferFill(arg_vm: [*c]WrenVM, arg_buffer: [*c]IntBuffer, arg_data: c_int, arg_count: c_int) void {
    var vm = arg_vm;
    var buffer = arg_buffer;
    var data = arg_data;
    var count = arg_count;
    if (buffer.*.capacity < (buffer.*.count + count)) {
        var capacity: c_int = wrenPowerOf2Ceil(buffer.*.count + count);
        buffer.*.data = @as([*c]c_int, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrCast(buffer.*.data)), @as(c_ulong, @bitCast(@as(c_long, buffer.*.capacity))) *% @sizeOf(c_int), @as(c_ulong, @bitCast(@as(c_long, capacity))) *% @sizeOf(c_int)))));
        buffer.*.capacity = capacity;
    }
    {
        var i: c_int = 0;
        while (i < count) : (i += 1) {
            (blk: {
                const tmp = blk_1: {
                    const ref = &buffer.*.count;
                    const tmp_2 = ref.*;
                    ref.* += 1;
                    break :blk_1 tmp_2;
                };
                if (tmp >= 0) break :blk buffer.*.data + @as(usize, @intCast(tmp)) else break :blk buffer.*.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = data;
        }
    }
}
pub export fn wrenIntBufferWrite(arg_vm: [*c]WrenVM, arg_buffer: [*c]IntBuffer, arg_data: c_int) void {
    var vm = arg_vm;
    var buffer = arg_buffer;
    var data = arg_data;
    wrenIntBufferFill(vm, buffer, data, @as(c_int, 1));
}
pub const StringBuffer = extern struct {
    data: [*c][*c]ObjString,
    count: c_int,
    capacity: c_int,
};
pub export fn wrenStringBufferInit(arg_buffer: [*c]StringBuffer) void {
    var buffer = arg_buffer;
    buffer.*.data = null;
    buffer.*.capacity = 0;
    buffer.*.count = 0;
}
pub export fn wrenStringBufferClear(arg_vm: [*c]WrenVM, arg_buffer: [*c]StringBuffer) void {
    var vm = arg_vm;
    var buffer = arg_buffer;
    _ = wrenReallocate(vm, @as(?*anyopaque, @ptrCast(buffer.*.data)), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
    wrenStringBufferInit(buffer);
}
pub export fn wrenStringBufferFill(arg_vm: [*c]WrenVM, arg_buffer: [*c]StringBuffer, arg_data: [*c]ObjString, arg_count: c_int) void {
    var vm = arg_vm;
    var buffer = arg_buffer;
    var data = arg_data;
    var count = arg_count;
    if (buffer.*.capacity < (buffer.*.count + count)) {
        var capacity: c_int = wrenPowerOf2Ceil(buffer.*.count + count);
        buffer.*.data = @as([*c][*c]ObjString, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrCast(buffer.*.data)), @as(c_ulong, @bitCast(@as(c_long, buffer.*.capacity))) *% @sizeOf([*c]ObjString), @as(c_ulong, @bitCast(@as(c_long, capacity))) *% @sizeOf([*c]ObjString)))));
        buffer.*.capacity = capacity;
    }
    {
        var i: c_int = 0;
        while (i < count) : (i += 1) {
            (blk: {
                const tmp = blk_1: {
                    const ref = &buffer.*.count;
                    const tmp_2 = ref.*;
                    ref.* += 1;
                    break :blk_1 tmp_2;
                };
                if (tmp >= 0) break :blk buffer.*.data + @as(usize, @intCast(tmp)) else break :blk buffer.*.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = data;
        }
    }
}
pub export fn wrenStringBufferWrite(arg_vm: [*c]WrenVM, arg_buffer: [*c]StringBuffer, arg_data: [*c]ObjString) void {
    var vm = arg_vm;
    var buffer = arg_buffer;
    var data = arg_data;
    wrenStringBufferFill(vm, buffer, data, @as(c_int, 1));
}
pub export fn wrenSymbolTableInit(arg_symbols: [*c]SymbolTable) void {
    var symbols = arg_symbols;
    wrenStringBufferInit(symbols);
}
pub export fn wrenSymbolTableClear(arg_vm: [*c]WrenVM, arg_symbols: [*c]SymbolTable) void {
    var vm = arg_vm;
    var symbols = arg_symbols;
    wrenStringBufferClear(vm, symbols);
}
pub export fn wrenSymbolTableAdd(arg_vm: [*c]WrenVM, arg_symbols: [*c]SymbolTable, arg_name_1: [*c]const u8, arg_length: usize) c_int {
    var vm = arg_vm;
    var symbols = arg_symbols;
    var name_1 = arg_name_1;
    var length = arg_length;
    var symbol: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(wrenNewStringLength(vm, name_1, length) & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    wrenPushRoot(vm, &symbol.*.obj);
    wrenStringBufferWrite(vm, symbols, symbol);
    wrenPopRoot(vm);
    return symbols.*.count - @as(c_int, 1);
}
pub export fn wrenSymbolTableEnsure(arg_vm: [*c]WrenVM, arg_symbols: [*c]SymbolTable, arg_name_1: [*c]const u8, arg_length: usize) c_int {
    var vm = arg_vm;
    var symbols = arg_symbols;
    var name_1 = arg_name_1;
    var length = arg_length;
    var existing: c_int = wrenSymbolTableFind(symbols, name_1, length);
    if (existing != -@as(c_int, 1)) return existing;
    return wrenSymbolTableAdd(vm, symbols, name_1, length);
}
pub export fn wrenSymbolTableFind(arg_symbols: [*c]const SymbolTable, arg_name_1: [*c]const u8, arg_length: usize) c_int {
    var symbols = arg_symbols;
    var name_1 = arg_name_1;
    var length = arg_length;
    {
        var i: c_int = 0;
        while (i < symbols.*.count) : (i += 1) {
            if (wrenStringEqualsCString((blk: {
                const tmp = i;
                if (tmp >= 0) break :blk symbols.*.data + @as(usize, @intCast(tmp)) else break :blk symbols.*.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*, name_1, length)) return i;
        }
    }
    return -@as(c_int, 1);
}
pub export fn wrenBlackenSymbolTable(arg_vm: [*c]WrenVM, arg_symbolTable: [*c]SymbolTable) void {
    var vm = arg_vm;
    var symbolTable = arg_symbolTable;
    {
        var i: c_int = 0;
        while (i < symbolTable.*.count) : (i += 1) {
            wrenGrayObj(vm, &(blk: {
                const tmp = i;
                if (tmp >= 0) break :blk symbolTable.*.data + @as(usize, @intCast(tmp)) else break :blk symbolTable.*.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*.*.obj);
        }
    }
    vm.*.bytesAllocated +%= @as(c_ulong, @bitCast(@as(c_long, symbolTable.*.capacity))) *% @sizeOf([*c]ObjString);
}
pub export fn wrenUtf8EncodeNumBytes(arg_value: c_int) c_int {
    var value = arg_value;
    while (true) {
        if (!false) break;
    }
    if (value <= @as(c_int, 127)) return 1;
    if (value <= @as(c_int, 2047)) return 2;
    if (value <= @as(c_int, 65535)) return 3;
    if (value <= @as(c_int, 1114111)) return 4;
    return 0;
}
pub export fn wrenUtf8Encode(arg_value: c_int, arg_bytes: [*c]u8) c_int {
    var value = arg_value;
    var bytes = arg_bytes;
    if (value <= @as(c_int, 127)) {
        bytes.* = @as(u8, @bitCast(@as(i8, @truncate(value & @as(c_int, 127)))));
        return 1;
    } else if (value <= @as(c_int, 2047)) {
        bytes.* = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 192) | ((value & @as(c_int, 1984)) >> @intCast(6))))));
        bytes += 1;
        bytes.* = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 128) | (value & @as(c_int, 63))))));
        return 2;
    } else if (value <= @as(c_int, 65535)) {
        bytes.* = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 224) | ((value & @as(c_int, 61440)) >> @intCast(12))))));
        bytes += 1;
        bytes.* = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 128) | ((value & @as(c_int, 4032)) >> @intCast(6))))));
        bytes += 1;
        bytes.* = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 128) | (value & @as(c_int, 63))))));
        return 3;
    } else if (value <= @as(c_int, 1114111)) {
        bytes.* = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 240) | ((value & @as(c_int, 1835008)) >> @intCast(18))))));
        bytes += 1;
        bytes.* = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 128) | ((value & @as(c_int, 258048)) >> @intCast(12))))));
        bytes += 1;
        bytes.* = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 128) | ((value & @as(c_int, 4032)) >> @intCast(6))))));
        bytes += 1;
        bytes.* = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 128) | (value & @as(c_int, 63))))));
        return 4;
    }
    return 0;
}
pub export fn wrenUtf8Decode(arg_bytes: [*c]const u8, arg_length: u32) c_int {
    var bytes = arg_bytes;
    var length = arg_length;
    if (@as(c_int, @bitCast(@as(c_uint, bytes.*))) <= @as(c_int, 127)) return @as(c_int, @bitCast(@as(c_uint, bytes.*)));
    var value: c_int = undefined;
    var remainingBytes: u32 = undefined;
    if ((@as(c_int, @bitCast(@as(c_uint, bytes.*))) & @as(c_int, 224)) == @as(c_int, 192)) {
        value = @as(c_int, @bitCast(@as(c_uint, bytes.*))) & @as(c_int, 31);
        remainingBytes = 1;
    } else if ((@as(c_int, @bitCast(@as(c_uint, bytes.*))) & @as(c_int, 240)) == @as(c_int, 224)) {
        value = @as(c_int, @bitCast(@as(c_uint, bytes.*))) & @as(c_int, 15);
        remainingBytes = 2;
    } else if ((@as(c_int, @bitCast(@as(c_uint, bytes.*))) & @as(c_int, 248)) == @as(c_int, 240)) {
        value = @as(c_int, @bitCast(@as(c_uint, bytes.*))) & @as(c_int, 7);
        remainingBytes = 3;
    } else {
        return -@as(c_int, 1);
    }
    if (remainingBytes > (length -% @as(u32, @bitCast(@as(c_int, 1))))) return -@as(c_int, 1);
    while (remainingBytes > @as(u32, @bitCast(@as(c_int, 0)))) {
        bytes += 1;
        remainingBytes -%= 1;
        if ((@as(c_int, @bitCast(@as(c_uint, bytes.*))) & @as(c_int, 192)) != @as(c_int, 128)) return -@as(c_int, 1);
        value = (value << @intCast(6)) | (@as(c_int, @bitCast(@as(c_uint, bytes.*))) & @as(c_int, 63));
    }
    return value;
}
pub export fn wrenUtf8DecodeNumBytes(arg_byte: u8) c_int {
    var byte = arg_byte;
    if ((@as(c_int, @bitCast(@as(c_uint, byte))) & @as(c_int, 192)) == @as(c_int, 128)) return 0;
    if ((@as(c_int, @bitCast(@as(c_uint, byte))) & @as(c_int, 248)) == @as(c_int, 240)) return 4;
    if ((@as(c_int, @bitCast(@as(c_uint, byte))) & @as(c_int, 240)) == @as(c_int, 224)) return 3;
    if ((@as(c_int, @bitCast(@as(c_uint, byte))) & @as(c_int, 224)) == @as(c_int, 192)) return 2;
    return 1;
}
pub export fn wrenPowerOf2Ceil(arg_n: c_int) c_int {
    var n = arg_n;
    n -= 1;
    n |= n >> @intCast(1);
    n |= n >> @intCast(2);
    n |= n >> @intCast(4);
    n |= n >> @intCast(8);
    n |= n >> @intCast(16);
    n += 1;
    return n;
}
pub export fn wrenValidateIndex(arg_count: u32, arg_value: i64) u32 {
    var count = arg_count;
    var value = arg_value;
    if (value < @as(i64, @bitCast(@as(c_long, @as(c_int, 0))))) {
        value = @as(i64, @bitCast(@as(c_ulong, count))) + value;
    }
    if ((value >= @as(i64, @bitCast(@as(c_long, @as(c_int, 0))))) and (value < @as(i64, @bitCast(@as(c_ulong, count))))) return @as(u32, @bitCast(@as(c_int, @truncate(value))));
    return @as(c_uint, 4294967295);
}
pub const OBJ_CLASS: c_int = 0;
pub const OBJ_CLOSURE: c_int = 1;
pub const OBJ_FIBER: c_int = 2;
pub const OBJ_FN: c_int = 3;
pub const OBJ_FOREIGN: c_int = 4;
pub const OBJ_INSTANCE: c_int = 5;
pub const OBJ_LIST: c_int = 6;
pub const OBJ_MAP: c_int = 7;
pub const OBJ_MODULE: c_int = 8;
pub const OBJ_RANGE: c_int = 9;
pub const OBJ_STRING: c_int = 10;
pub const OBJ_UPVALUE: c_int = 11;
pub const ObjType = c_uint;
pub const ValueBuffer = extern struct {
    data: [*c]Value,
    count: c_int,
    capacity: c_int,
};
pub export fn wrenValueBufferInit(arg_buffer: [*c]ValueBuffer) void {
    var buffer = arg_buffer;
    buffer.*.data = null;
    buffer.*.capacity = 0;
    buffer.*.count = 0;
}
pub export fn wrenValueBufferClear(arg_vm: [*c]WrenVM, arg_buffer: [*c]ValueBuffer) void {
    var vm = arg_vm;
    var buffer = arg_buffer;
    _ = wrenReallocate(vm, @as(?*anyopaque, @ptrCast(buffer.*.data)), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
    wrenValueBufferInit(buffer);
}
pub export fn wrenValueBufferFill(arg_vm: [*c]WrenVM, arg_buffer: [*c]ValueBuffer, arg_data: Value, arg_count: c_int) void {
    var vm = arg_vm;
    var buffer = arg_buffer;
    var data = arg_data;
    var count = arg_count;
    if (buffer.*.capacity < (buffer.*.count + count)) {
        var capacity: c_int = wrenPowerOf2Ceil(buffer.*.count + count);
        buffer.*.data = @as([*c]Value, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrCast(buffer.*.data)), @as(c_ulong, @bitCast(@as(c_long, buffer.*.capacity))) *% @sizeOf(Value), @as(c_ulong, @bitCast(@as(c_long, capacity))) *% @sizeOf(Value)))));
        buffer.*.capacity = capacity;
    }
    {
        var i: c_int = 0;
        while (i < count) : (i += 1) {
            (blk: {
                const tmp = blk_1: {
                    const ref = &buffer.*.count;
                    const tmp_2 = ref.*;
                    ref.* += 1;
                    break :blk_1 tmp_2;
                };
                if (tmp >= 0) break :blk buffer.*.data + @as(usize, @intCast(tmp)) else break :blk buffer.*.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = data;
        }
    }
}
pub export fn wrenValueBufferWrite(arg_vm: [*c]WrenVM, arg_buffer: [*c]ValueBuffer, arg_data: Value) void {
    var vm = arg_vm;
    var buffer = arg_buffer;
    var data = arg_data;
    wrenValueBufferFill(vm, buffer, data, @as(c_int, 1));
}
pub const Primitive = ?*const fn ([*c]WrenVM, [*c]Value) callconv(.C) bool;
pub const FnDebug = extern struct {
    name: [*c]u8,
    sourceLines: IntBuffer,
};
pub const ObjModule = extern struct {
    obj: Obj,
    variables: ValueBuffer,
    variableNames: SymbolTable,
    name: [*c]ObjString,
};
pub const ObjFn = extern struct {
    obj: Obj,
    code: ByteBuffer,
    constants: ValueBuffer,
    module: [*c]ObjModule,
    maxSlots: c_int,
    numUpvalues: c_int,
    arity: c_int,
    debug: [*c]FnDebug,
};
pub const ObjClosure = extern struct {
    obj: Obj align(8),
    @"fn": [*c]ObjFn,
    pub fn upvalues(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), [*c]struct_sObjUpvalue) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), [*c]struct_sObjUpvalue);
        return @as(ReturnType, @ptrCast(@alignCast(@as(Intermediate, @ptrCast(self)) + 32)));
    }
};
pub const CallFrame = extern struct {
    ip: [*c]u8,
    closure: [*c]ObjClosure,
    stackStart: [*c]Value,
};
pub const FIBER_TRY: c_int = 0;
pub const FIBER_ROOT: c_int = 1;
pub const FIBER_OTHER: c_int = 2;
pub const FiberState = c_uint;
pub const METHOD_PRIMITIVE: c_int = 0;
pub const METHOD_FUNCTION_CALL: c_int = 1;
pub const METHOD_FOREIGN: c_int = 2;
pub const METHOD_BLOCK: c_int = 3;
pub const METHOD_NONE: c_int = 4;
pub const MethodType = c_uint;
const union_unnamed_8 = extern union {
    primitive: Primitive,
    foreign: WrenForeignMethodFn,
    closure: [*c]ObjClosure,
};
pub const Method = extern struct {
    type: MethodType,
    as: union_unnamed_8,
};
pub const MethodBuffer = extern struct {
    data: [*c]Method,
    count: c_int,
    capacity: c_int,
};
pub export fn wrenMethodBufferInit(arg_buffer: [*c]MethodBuffer) void {
    var buffer = arg_buffer;
    buffer.*.data = null;
    buffer.*.capacity = 0;
    buffer.*.count = 0;
}
pub export fn wrenMethodBufferClear(arg_vm: [*c]WrenVM, arg_buffer: [*c]MethodBuffer) void {
    var vm = arg_vm;
    var buffer = arg_buffer;
    _ = wrenReallocate(vm, @as(?*anyopaque, @ptrCast(buffer.*.data)), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
    wrenMethodBufferInit(buffer);
}
pub export fn wrenMethodBufferFill(arg_vm: [*c]WrenVM, arg_buffer: [*c]MethodBuffer, arg_data: Method, arg_count: c_int) void {
    var vm = arg_vm;
    var buffer = arg_buffer;
    var data = arg_data;
    var count = arg_count;
    if (buffer.*.capacity < (buffer.*.count + count)) {
        var capacity: c_int = wrenPowerOf2Ceil(buffer.*.count + count);
        buffer.*.data = @as([*c]Method, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrCast(buffer.*.data)), @as(c_ulong, @bitCast(@as(c_long, buffer.*.capacity))) *% @sizeOf(Method), @as(c_ulong, @bitCast(@as(c_long, capacity))) *% @sizeOf(Method)))));
        buffer.*.capacity = capacity;
    }
    {
        var i: c_int = 0;
        while (i < count) : (i += 1) {
            (blk: {
                const tmp = blk_1: {
                    const ref = &buffer.*.count;
                    const tmp_2 = ref.*;
                    ref.* += 1;
                    break :blk_1 tmp_2;
                };
                if (tmp >= 0) break :blk buffer.*.data + @as(usize, @intCast(tmp)) else break :blk buffer.*.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = data;
        }
    }
}
pub export fn wrenMethodBufferWrite(arg_vm: [*c]WrenVM, arg_buffer: [*c]MethodBuffer, arg_data: Method) void {
    var vm = arg_vm;
    var buffer = arg_buffer;
    var data = arg_data;
    wrenMethodBufferFill(vm, buffer, data, @as(c_int, 1));
}
pub const ObjForeign = extern struct {
    obj: Obj align(8),
    pub fn data(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        return @as(ReturnType, @ptrCast(@alignCast(@as(Intermediate, @ptrCast(self)) + 24)));
    }
};
pub const ObjInstance = extern struct {
    obj: Obj align(8),
    pub fn fields(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), c_ulong) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), c_ulong);
        return @as(ReturnType, @ptrCast(@alignCast(@as(Intermediate, @ptrCast(self)) + 24)));
    }
};
pub const ObjList = extern struct {
    obj: Obj,
    elements: ValueBuffer,
};
pub const MapEntry = extern struct {
    key: Value,
    value: Value,
};
pub const ObjMap = extern struct {
    obj: Obj,
    capacity: u32,
    count: u32,
    entries: [*c]MapEntry,
};
pub const ObjRange = extern struct {
    obj: Obj,
    from: f64,
    to: f64,
    isInclusive: bool,
};
pub export fn wrenNewSingleClass(arg_vm: [*c]WrenVM, arg_numFields: c_int, arg_name_1: [*c]ObjString) [*c]ObjClass {
    var vm = arg_vm;
    var numFields = arg_numFields;
    var name_1 = arg_name_1;
    var classObj: [*c]ObjClass = @as([*c]ObjClass, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @sizeOf(ObjClass)))));
    initObj(vm, &classObj.*.obj, @as(c_uint, @bitCast(OBJ_CLASS)), null);
    classObj.*.superclass = null;
    classObj.*.numFields = numFields;
    classObj.*.name = name_1;
    classObj.*.attributes = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
    wrenPushRoot(vm, @as([*c]Obj, @ptrCast(@alignCast(classObj))));
    wrenMethodBufferInit(&classObj.*.methods);
    wrenPopRoot(vm);
    return classObj;
}
pub export fn wrenBindSuperclass(arg_vm: [*c]WrenVM, arg_subclass: [*c]ObjClass, arg_superclass: [*c]ObjClass) void {
    var vm = arg_vm;
    var subclass = arg_subclass;
    var superclass = arg_superclass;
    while (true) {
        if (!false) break;
    }
    subclass.*.superclass = superclass;
    if (subclass.*.numFields != -@as(c_int, 1)) {
        subclass.*.numFields += superclass.*.numFields;
    } else {
        while (true) {
            if (!false) break;
        }
    }
    {
        var i: c_int = 0;
        while (i < superclass.*.methods.count) : (i += 1) {
            wrenBindMethod(vm, subclass, i, (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk superclass.*.methods.data + @as(usize, @intCast(tmp)) else break :blk superclass.*.methods.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*);
        }
    }
}
pub export fn wrenNewClass(arg_vm: [*c]WrenVM, arg_superclass: [*c]ObjClass, arg_numFields: c_int, arg_name_1: [*c]ObjString) [*c]ObjClass {
    var vm = arg_vm;
    var superclass = arg_superclass;
    var numFields = arg_numFields;
    var name_1 = arg_name_1;
    var metaclassName: Value = wrenStringFormat(vm, "@ metaclass", wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(name_1)))));
    wrenPushRoot(vm, @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(metaclassName & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))));
    var metaclass: [*c]ObjClass = wrenNewSingleClass(vm, @as(c_int, 0), @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(metaclassName & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))));
    metaclass.*.obj.classObj = vm.*.classClass;
    wrenPopRoot(vm);
    wrenPushRoot(vm, @as([*c]Obj, @ptrCast(@alignCast(metaclass))));
    wrenBindSuperclass(vm, metaclass, vm.*.classClass);
    var classObj: [*c]ObjClass = wrenNewSingleClass(vm, numFields, name_1);
    wrenPushRoot(vm, @as([*c]Obj, @ptrCast(@alignCast(classObj))));
    classObj.*.obj.classObj = metaclass;
    wrenBindSuperclass(vm, classObj, superclass);
    wrenPopRoot(vm);
    wrenPopRoot(vm);
    return classObj;
}
pub export fn wrenBindMethod(arg_vm: [*c]WrenVM, arg_classObj: [*c]ObjClass, arg_symbol: c_int, arg_method_1: Method) void {
    var vm = arg_vm;
    var classObj = arg_classObj;
    var symbol = arg_symbol;
    var method_1 = arg_method_1;
    if (symbol >= classObj.*.methods.count) {
        var noMethod: Method = undefined;
        noMethod.type = @as(c_uint, @bitCast(METHOD_NONE));
        wrenMethodBufferFill(vm, &classObj.*.methods, noMethod, (symbol - classObj.*.methods.count) + @as(c_int, 1));
    }
    (blk: {
        const tmp = symbol;
        if (tmp >= 0) break :blk classObj.*.methods.data + @as(usize, @intCast(tmp)) else break :blk classObj.*.methods.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* = method_1;
}
pub export fn wrenNewClosure(arg_vm: [*c]WrenVM, arg_fn: [*c]ObjFn) [*c]ObjClosure {
    var vm = arg_vm;
    var @"fn" = arg_fn;
    var closure: [*c]ObjClosure = @as([*c]ObjClosure, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @sizeOf(ObjClosure) +% (@sizeOf([*c]ObjUpvalue) *% @as(c_ulong, @bitCast(@as(c_long, @"fn".*.numUpvalues))))))));
    initObj(vm, &closure.*.obj, @as(c_uint, @bitCast(OBJ_CLOSURE)), vm.*.fnClass);
    closure.*.@"fn" = @"fn";
    {
        var i: c_int = 0;
        while (i < @"fn".*.numUpvalues) : (i += 1) {
            closure.*.upvalues()[@as(c_uint, @intCast(i))] = null;
        }
    }
    return closure;
}
pub export fn wrenNewFiber(arg_vm: [*c]WrenVM, arg_closure: [*c]ObjClosure) [*c]ObjFiber {
    var vm = arg_vm;
    var closure = arg_closure;
    var frames: [*c]CallFrame = @as([*c]CallFrame, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @sizeOf(CallFrame) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 4))))))));
    var stackCapacity: c_int = if (closure == @as([*c]ObjClosure, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) @as(c_int, 1) else wrenPowerOf2Ceil(closure.*.@"fn".*.maxSlots + @as(c_int, 1));
    var stack: [*c]Value = @as([*c]Value, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @sizeOf(Value) *% @as(c_ulong, @bitCast(@as(c_long, stackCapacity)))))));
    var fiber: [*c]ObjFiber = @as([*c]ObjFiber, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @sizeOf(ObjFiber)))));
    initObj(vm, &fiber.*.obj, @as(c_uint, @bitCast(OBJ_FIBER)), vm.*.fiberClass);
    fiber.*.stack = stack;
    fiber.*.stackTop = fiber.*.stack;
    fiber.*.stackCapacity = stackCapacity;
    fiber.*.frames = frames;
    fiber.*.frameCapacity = 4;
    fiber.*.numFrames = 0;
    fiber.*.openUpvalues = null;
    fiber.*.caller = null;
    fiber.*.@"error" = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
    fiber.*.state = @as(c_uint, @bitCast(FIBER_OTHER));
    if (closure != @as([*c]ObjClosure, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        wrenAppendCallFrame(vm, fiber, closure, fiber.*.stack);
        fiber.*.stackTop[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(closure))));
        fiber.*.stackTop += 1;
    }
    return fiber;
}
pub fn wrenAppendCallFrame(arg_vm: [*c]WrenVM, arg_fiber: [*c]ObjFiber, arg_closure: [*c]ObjClosure, arg_stackStart: [*c]Value) callconv(.C) void {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var fiber = arg_fiber;
    var closure = arg_closure;
    var stackStart = arg_stackStart;
    while (true) {
        if (!false) break;
    }
    var frame: [*c]CallFrame = &(blk: {
        const tmp = blk_1: {
            const ref = &fiber.*.numFrames;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        };
        if (tmp >= 0) break :blk fiber.*.frames + @as(usize, @intCast(tmp)) else break :blk fiber.*.frames - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*;
    frame.*.stackStart = stackStart;
    frame.*.closure = closure;
    frame.*.ip = closure.*.@"fn".*.code.data;
}
pub export fn wrenEnsureStack(arg_vm: [*c]WrenVM, arg_fiber: [*c]ObjFiber, arg_needed: c_int) void {
    var vm = arg_vm;
    var fiber = arg_fiber;
    var needed = arg_needed;
    if (fiber.*.stackCapacity >= needed) return;
    var capacity: c_int = wrenPowerOf2Ceil(needed);
    var oldStack: [*c]Value = fiber.*.stack;
    fiber.*.stack = @as([*c]Value, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrCast(fiber.*.stack)), @sizeOf(Value) *% @as(c_ulong, @bitCast(@as(c_long, fiber.*.stackCapacity))), @sizeOf(Value) *% @as(c_ulong, @bitCast(@as(c_long, capacity)))))));
    fiber.*.stackCapacity = capacity;
    if (fiber.*.stack != oldStack) {
        if ((vm.*.apiStack >= oldStack) and (vm.*.apiStack <= fiber.*.stackTop)) {
            vm.*.apiStack = fiber.*.stack + @as(usize, @bitCast(@as(isize, @intCast(@divExact(@as(c_long, @bitCast(@intFromPtr(vm.*.apiStack) -% @intFromPtr(oldStack))), @sizeOf(Value))))));
        }
        {
            var i: c_int = 0;
            while (i < fiber.*.numFrames) : (i += 1) {
                var frame: [*c]CallFrame = &(blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk fiber.*.frames + @as(usize, @intCast(tmp)) else break :blk fiber.*.frames - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*;
                frame.*.stackStart = fiber.*.stack + @as(usize, @bitCast(@as(isize, @intCast(@divExact(@as(c_long, @bitCast(@intFromPtr(frame.*.stackStart) -% @intFromPtr(oldStack))), @sizeOf(Value))))));
            }
        }
        {
            var upvalue: [*c]ObjUpvalue = fiber.*.openUpvalues;
            while (upvalue != @as([*c]ObjUpvalue, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (upvalue = upvalue.*.next) {
                upvalue.*.value = fiber.*.stack + @as(usize, @bitCast(@as(isize, @intCast(@divExact(@as(c_long, @bitCast(@intFromPtr(upvalue.*.value) -% @intFromPtr(oldStack))), @sizeOf(Value))))));
            }
        }
        fiber.*.stackTop = fiber.*.stack + @as(usize, @bitCast(@as(isize, @intCast(@divExact(@as(c_long, @bitCast(@intFromPtr(fiber.*.stackTop) -% @intFromPtr(oldStack))), @sizeOf(Value))))));
    }
}
pub fn wrenHasError(arg_fiber: [*c]const ObjFiber) callconv(.C) bool {
    var fiber = arg_fiber;
    return !(fiber.*.@"error" == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1)))))));
}
pub export fn wrenNewForeign(arg_vm: [*c]WrenVM, arg_classObj: [*c]ObjClass, arg_size: usize) [*c]ObjForeign {
    var vm = arg_vm;
    var classObj = arg_classObj;
    var size = arg_size;
    var object: [*c]ObjForeign = @as([*c]ObjForeign, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @sizeOf(ObjForeign) +% (@sizeOf(u8) *% size)))));
    initObj(vm, &object.*.obj, @as(c_uint, @bitCast(OBJ_FOREIGN)), classObj);
    _ = memset(@as(?*anyopaque, @ptrCast(object.*.data())), @as(c_int, 0), size);
    return object;
}
pub export fn wrenNewFunction(arg_vm: [*c]WrenVM, arg_module: [*c]ObjModule, arg_maxSlots: c_int) [*c]ObjFn {
    var vm = arg_vm;
    var module = arg_module;
    var maxSlots = arg_maxSlots;
    var debug: [*c]FnDebug = @as([*c]FnDebug, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @sizeOf(FnDebug)))));
    debug.*.name = null;
    wrenIntBufferInit(&debug.*.sourceLines);
    var @"fn": [*c]ObjFn = @as([*c]ObjFn, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @sizeOf(ObjFn)))));
    initObj(vm, &@"fn".*.obj, @as(c_uint, @bitCast(OBJ_FN)), vm.*.fnClass);
    wrenValueBufferInit(&@"fn".*.constants);
    wrenByteBufferInit(&@"fn".*.code);
    @"fn".*.module = module;
    @"fn".*.maxSlots = maxSlots;
    @"fn".*.numUpvalues = 0;
    @"fn".*.arity = 0;
    @"fn".*.debug = debug;
    return @"fn";
}
pub export fn wrenFunctionBindName(arg_vm: [*c]WrenVM, arg_fn: [*c]ObjFn, arg_name_1: [*c]const u8, arg_length: c_int) void {
    var vm = arg_vm;
    var @"fn" = arg_fn;
    var name_1 = arg_name_1;
    var length = arg_length;
    @"fn".*.debug.*.name = @as([*c]u8, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @sizeOf(u8) *% @as(c_ulong, @bitCast(@as(c_long, length + @as(c_int, 1))))))));
    _ = memcpy(@as(?*anyopaque, @ptrCast(@"fn".*.debug.*.name)), @as(?*const anyopaque, @ptrCast(name_1)), @as(c_ulong, @bitCast(@as(c_long, length))));
    (blk: {
        const tmp = length;
        if (tmp >= 0) break :blk @"fn".*.debug.*.name + @as(usize, @intCast(tmp)) else break :blk @"fn".*.debug.*.name - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* = '\x00';
}
pub export fn wrenNewInstance(arg_vm: [*c]WrenVM, arg_classObj: [*c]ObjClass) Value {
    var vm = arg_vm;
    var classObj = arg_classObj;
    var instance: [*c]ObjInstance = @as([*c]ObjInstance, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @sizeOf(ObjInstance) +% (@sizeOf(Value) *% @as(c_ulong, @bitCast(@as(c_long, classObj.*.numFields))))))));
    initObj(vm, &instance.*.obj, @as(c_uint, @bitCast(OBJ_INSTANCE)), classObj);
    {
        var i: c_int = 0;
        while (i < classObj.*.numFields) : (i += 1) {
            instance.*.fields()[@as(c_uint, @intCast(i))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
        }
    }
    return wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(instance))));
}
pub export fn wrenNewList(arg_vm: [*c]WrenVM, arg_numElements: u32) [*c]ObjList {
    var vm = arg_vm;
    var numElements = arg_numElements;
    var elements: [*c]Value = null;
    if (numElements > @as(u32, @bitCast(@as(c_int, 0)))) {
        elements = @as([*c]Value, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @sizeOf(Value) *% @as(c_ulong, @bitCast(@as(c_ulong, numElements)))))));
    }
    var list_1: [*c]ObjList = @as([*c]ObjList, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @sizeOf(ObjList)))));
    initObj(vm, &list_1.*.obj, @as(c_uint, @bitCast(OBJ_LIST)), vm.*.listClass);
    list_1.*.elements.capacity = @as(c_int, @bitCast(numElements));
    list_1.*.elements.count = @as(c_int, @bitCast(numElements));
    list_1.*.elements.data = elements;
    return list_1;
}
pub export fn wrenListInsert(arg_vm: [*c]WrenVM, arg_list_1: [*c]ObjList, arg_value: Value, arg_index_2: u32) void {
    var vm = arg_vm;
    var list_1 = arg_list_1;
    var value = arg_value;
    var index_2 = arg_index_2;
    if ((value & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) {
        wrenPushRoot(vm, @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(value & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))));
    }
    wrenValueBufferWrite(vm, &list_1.*.elements, @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1)))))));
    if ((value & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) {
        wrenPopRoot(vm);
    }
    {
        var i: u32 = @as(u32, @bitCast(list_1.*.elements.count - @as(c_int, 1)));
        while (i > index_2) : (i -%= 1) {
            list_1.*.elements.data[i] = list_1.*.elements.data[i -% @as(u32, @bitCast(@as(c_int, 1)))];
        }
    }
    list_1.*.elements.data[index_2] = value;
}
pub export fn wrenListRemoveAt(arg_vm: [*c]WrenVM, arg_list_1: [*c]ObjList, arg_index_2: u32) Value {
    var vm = arg_vm;
    var list_1 = arg_list_1;
    var index_2 = arg_index_2;
    var removed: Value = list_1.*.elements.data[index_2];
    if ((removed & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) {
        wrenPushRoot(vm, @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(removed & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))));
    }
    {
        var i: c_int = @as(c_int, @bitCast(index_2));
        while (i < (list_1.*.elements.count - @as(c_int, 1))) : (i += 1) {
            (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk list_1.*.elements.data + @as(usize, @intCast(tmp)) else break :blk list_1.*.elements.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = (blk: {
                const tmp = i + @as(c_int, 1);
                if (tmp >= 0) break :blk list_1.*.elements.data + @as(usize, @intCast(tmp)) else break :blk list_1.*.elements.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*;
        }
    }
    if (@divTrunc(list_1.*.elements.capacity, @as(c_int, 2)) >= list_1.*.elements.count) {
        list_1.*.elements.data = @as([*c]Value, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrCast(list_1.*.elements.data)), @sizeOf(Value) *% @as(c_ulong, @bitCast(@as(c_long, list_1.*.elements.capacity))), @sizeOf(Value) *% @as(c_ulong, @bitCast(@as(c_long, @divTrunc(list_1.*.elements.capacity, @as(c_int, 2)))))))));
        list_1.*.elements.capacity = @divTrunc(list_1.*.elements.capacity, @as(c_int, 2));
    }
    if ((removed & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) {
        wrenPopRoot(vm);
    }
    list_1.*.elements.count -= 1;
    return removed;
}
pub export fn wrenListIndexOf(arg_vm: [*c]WrenVM, arg_list_1: [*c]ObjList, arg_value: Value) c_int {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var list_1 = arg_list_1;
    var value = arg_value;
    var count: c_int = list_1.*.elements.count;
    {
        var i: c_int = 0;
        while (i < count) : (i += 1) {
            var item: Value = (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk list_1.*.elements.data + @as(usize, @intCast(tmp)) else break :blk list_1.*.elements.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*;
            if (wrenValuesEqual(item, value)) {
                return i;
            }
        }
    }
    return -@as(c_int, 1);
}
pub export fn wrenNewMap(arg_vm: [*c]WrenVM) [*c]ObjMap {
    var vm = arg_vm;
    var map_1: [*c]ObjMap = @as([*c]ObjMap, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @sizeOf(ObjMap)))));
    initObj(vm, &map_1.*.obj, @as(c_uint, @bitCast(OBJ_MAP)), vm.*.mapClass);
    map_1.*.capacity = 0;
    map_1.*.count = 0;
    map_1.*.entries = null;
    return map_1;
}
pub fn wrenMapIsValidKey(arg_arg: Value) callconv(.C) bool {
    var arg = arg_arg;
    return (((((@as(c_int, @intFromBool(wrenIsBool(arg))) != 0) or (@as(c_int, @intFromBool(wrenIsObjType(arg, @as(c_uint, @bitCast(OBJ_CLASS))))) != 0)) or (arg == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1)))))))) or ((arg & @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) != @as(u64, @bitCast(@as(c_long, 9222246136947933184))))) or (@as(c_int, @intFromBool(wrenIsObjType(arg, @as(c_uint, @bitCast(OBJ_RANGE))))) != 0)) or (@as(c_int, @intFromBool(wrenIsObjType(arg, @as(c_uint, @bitCast(OBJ_STRING))))) != 0);
}
pub export fn wrenMapGet(arg_map_1: [*c]ObjMap, arg_key: Value) Value {
    var map_1 = arg_map_1;
    var key = arg_key;
    var entry: [*c]MapEntry = undefined;
    if (findEntry(map_1.*.entries, map_1.*.capacity, key, &entry)) return entry.*.value;
    return @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4))))));
}
pub export fn wrenMapSet(arg_vm: [*c]WrenVM, arg_map_1: [*c]ObjMap, arg_key: Value, arg_value: Value) void {
    var vm = arg_vm;
    var map_1 = arg_map_1;
    var key = arg_key;
    var value = arg_value;
    if ((map_1.*.count +% @as(u32, @bitCast(@as(c_int, 1)))) > ((map_1.*.capacity *% @as(u32, @bitCast(@as(c_int, 75)))) / @as(u32, @bitCast(@as(c_int, 100))))) {
        var capacity: u32 = map_1.*.capacity *% @as(u32, @bitCast(@as(c_int, 2)));
        if (capacity < @as(u32, @bitCast(@as(c_int, 16)))) {
            capacity = 16;
        }
        resizeMap(vm, map_1, capacity);
    }
    if (insertEntry(map_1.*.entries, map_1.*.capacity, key, value)) {
        map_1.*.count +%= 1;
    }
}
pub export fn wrenMapClear(arg_vm: [*c]WrenVM, arg_map_1: [*c]ObjMap) void {
    var vm = arg_vm;
    var map_1 = arg_map_1;
    _ = wrenReallocate(vm, @as(?*anyopaque, @ptrCast(map_1.*.entries)), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
    map_1.*.entries = null;
    map_1.*.capacity = 0;
    map_1.*.count = 0;
}
pub export fn wrenMapRemoveKey(arg_vm: [*c]WrenVM, arg_map_1: [*c]ObjMap, arg_key: Value) Value {
    var vm = arg_vm;
    var map_1 = arg_map_1;
    var key = arg_key;
    var entry: [*c]MapEntry = undefined;
    if (!findEntry(map_1.*.entries, map_1.*.capacity, key, &entry)) return @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
    var value: Value = entry.*.value;
    entry.*.key = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4))))));
    entry.*.value = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3))))));
    if ((value & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) {
        wrenPushRoot(vm, @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(value & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))));
    }
    map_1.*.count -%= 1;
    if (map_1.*.count == @as(u32, @bitCast(@as(c_int, 0)))) {
        wrenMapClear(vm, map_1);
    } else if ((map_1.*.capacity > @as(u32, @bitCast(@as(c_int, 16)))) and (map_1.*.count < (((map_1.*.capacity / @as(u32, @bitCast(@as(c_int, 2)))) *% @as(u32, @bitCast(@as(c_int, 75)))) / @as(u32, @bitCast(@as(c_int, 100)))))) {
        var capacity: u32 = map_1.*.capacity / @as(u32, @bitCast(@as(c_int, 2)));
        if (capacity < @as(u32, @bitCast(@as(c_int, 16)))) {
            capacity = 16;
        }
        resizeMap(vm, map_1, capacity);
    }
    if ((value & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) {
        wrenPopRoot(vm);
    }
    return value;
}
pub export fn wrenNewModule(arg_vm: [*c]WrenVM, arg_name_1: [*c]ObjString) [*c]ObjModule {
    var vm = arg_vm;
    var name_1 = arg_name_1;
    var module: [*c]ObjModule = @as([*c]ObjModule, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @sizeOf(ObjModule)))));
    initObj(vm, @as([*c]Obj, @ptrCast(@alignCast(module))), @as(c_uint, @bitCast(OBJ_MODULE)), null);
    wrenPushRoot(vm, @as([*c]Obj, @ptrCast(@alignCast(module))));
    wrenSymbolTableInit(&module.*.variableNames);
    wrenValueBufferInit(&module.*.variables);
    module.*.name = name_1;
    wrenPopRoot(vm);
    return module;
}
pub export fn wrenNewRange(arg_vm: [*c]WrenVM, arg_from: f64, arg_to: f64, arg_isInclusive: bool) Value {
    var vm = arg_vm;
    var from = arg_from;
    var to = arg_to;
    var isInclusive = arg_isInclusive;
    var range: [*c]ObjRange = @as([*c]ObjRange, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @sizeOf(ObjRange)))));
    initObj(vm, &range.*.obj, @as(c_uint, @bitCast(OBJ_RANGE)), vm.*.rangeClass);
    range.*.from = from;
    range.*.to = to;
    range.*.isInclusive = isInclusive;
    return wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(range))));
}
pub export fn wrenNewString(arg_vm: [*c]WrenVM, arg_text: [*c]const u8) Value {
    var vm = arg_vm;
    var text = arg_text;
    return wrenNewStringLength(vm, text, strlen(text));
}
pub export fn wrenNewStringLength(arg_vm: [*c]WrenVM, arg_text: [*c]const u8, arg_length: usize) Value {
    var vm = arg_vm;
    var text = arg_text;
    var length = arg_length;
    while (true) {
        if (!false) break;
    }
    var string: [*c]ObjString = allocateString(vm, length);
    if ((length > @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) and (text != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
        _ = memcpy(@as(?*anyopaque, @ptrCast(string.*.value())), @as(?*const anyopaque, @ptrCast(text)), length);
    }
    hashString(string);
    return wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(string))));
}
pub export fn wrenNewStringFromRange(arg_vm: [*c]WrenVM, arg_source: [*c]ObjString, arg_start: c_int, arg_count: u32, arg_step: c_int) Value {
    var vm = arg_vm;
    var source = arg_source;
    var start = arg_start;
    var count = arg_count;
    var step = arg_step;
    var from: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(source.*.value())));
    var length: c_int = 0;
    {
        var i: u32 = 0;
        while (i < count) : (i +%= 1) {
            length += wrenUtf8DecodeNumBytes(from[@as(u32, @bitCast(start)) +% (i *% @as(u32, @bitCast(step)))]);
        }
    }
    var result: [*c]ObjString = allocateString(vm, @as(usize, @bitCast(@as(c_long, length))));
    result.*.value()[@as(c_uint, @intCast(length))] = '\x00';
    var to: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(result.*.value())));
    {
        var i: u32 = 0;
        while (i < count) : (i +%= 1) {
            var index_1: c_int = @as(c_int, @bitCast(@as(u32, @bitCast(start)) +% (i *% @as(u32, @bitCast(step)))));
            var codePoint: c_int = wrenUtf8Decode(from + @as(usize, @bitCast(@as(isize, @intCast(index_1)))), source.*.length -% @as(u32, @bitCast(index_1)));
            if (codePoint != -@as(c_int, 1)) {
                to += @as(usize, @bitCast(@as(isize, @intCast(wrenUtf8Encode(codePoint, to)))));
            }
        }
    }
    hashString(result);
    return wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(result))));
}
pub export fn wrenNumToString(arg_vm: [*c]WrenVM, arg_value: f64) Value {
    var vm = arg_vm;
    var value = arg_value;
    if (__builtin_isnan(value) != 0) return wrenNewStringLength(vm, "nan", @sizeOf([4]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
    if (__builtin_isinf_sign(value) != 0) {
        if (value > 0.0) {
            return wrenNewStringLength(vm, "infinity", @sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
        } else {
            return wrenNewStringLength(vm, "-infinity", @sizeOf([10]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
        }
    }
    var buffer: [24]u8 = undefined;
    var length: c_int = sprintf(@as([*c]u8, @ptrCast(@alignCast(&buffer))), "%.14g", value);
    return wrenNewStringLength(vm, @as([*c]u8, @ptrCast(@alignCast(&buffer))), @as(usize, @bitCast(@as(c_long, length))));
} // src/wren/wren.c:10367:7: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn wrenStringFormat(vm: [*c]WrenVM, format: [*c]const u8, ...) Value;
pub export fn wrenStringFromCodePoint(arg_vm: [*c]WrenVM, arg_value: c_int) Value {
    var vm = arg_vm;
    var value = arg_value;
    var length: c_int = wrenUtf8EncodeNumBytes(value);
    while (true) {
        if (!false) break;
    }
    var string: [*c]ObjString = allocateString(vm, @as(usize, @bitCast(@as(c_long, length))));
    _ = wrenUtf8Encode(value, @as([*c]u8, @ptrCast(@alignCast(string.*.value()))));
    hashString(string);
    return wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(string))));
}
pub export fn wrenStringFromByte(arg_vm: [*c]WrenVM, arg_value: u8) Value {
    var vm = arg_vm;
    var value = arg_value;
    var length: c_int = 1;
    var string: [*c]ObjString = allocateString(vm, @as(usize, @bitCast(@as(c_long, length))));
    string.*.value()[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(u8, @bitCast(value));
    hashString(string);
    return wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(string))));
}
pub export fn wrenStringCodePointAt(arg_vm: [*c]WrenVM, arg_string: [*c]ObjString, arg_index_1: u32) Value {
    var vm = arg_vm;
    var string = arg_string;
    var index_1 = arg_index_1;
    while (true) {
        if (!false) break;
    }
    var codePoint: c_int = wrenUtf8Decode(@as([*c]u8, @ptrCast(@alignCast(string.*.value()))) + index_1, string.*.length -% index_1);
    if (codePoint == -@as(c_int, 1)) {
        var bytes: [2]u8 = undefined;
        bytes[@as(c_uint, @intCast(@as(c_int, 0)))] = string.*.value()[index_1];
        bytes[@as(c_uint, @intCast(@as(c_int, 1)))] = '\x00';
        return wrenNewStringLength(vm, @as([*c]u8, @ptrCast(@alignCast(&bytes))), @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
    }
    return wrenStringFromCodePoint(vm, codePoint);
}
pub export fn wrenStringFind(arg_haystack: [*c]ObjString, arg_needle: [*c]ObjString, arg_start: u32) u32 {
    var haystack = arg_haystack;
    var needle = arg_needle;
    var start = arg_start;
    if (needle.*.length == @as(u32, @bitCast(@as(c_int, 0)))) return start;
    if ((start +% needle.*.length) > haystack.*.length) return @as(c_uint, 4294967295);
    if (start >= haystack.*.length) return @as(c_uint, 4294967295);
    var shift: [255]u32 = undefined;
    var needleEnd: u32 = needle.*.length -% @as(u32, @bitCast(@as(c_int, 1)));
    {
        var index_1: u32 = 0;
        while (index_1 < @as(u32, @bitCast(@as(c_int, 255)))) : (index_1 +%= 1) {
            shift[index_1] = needle.*.length;
        }
    }
    {
        var index_1: u32 = 0;
        while (index_1 < needleEnd) : (index_1 +%= 1) {
            var c: u8 = needle.*.value()[index_1];
            shift[@as(u8, @bitCast(c))] = needleEnd -% index_1;
        }
    }
    var lastChar: u8 = needle.*.value()[needleEnd];
    var range: u32 = haystack.*.length -% needle.*.length;
    {
        var index_1: u32 = start;
        while (index_1 <= range) {
            var c: u8 = haystack.*.value()[index_1 +% needleEnd];
            if ((@as(c_int, @bitCast(@as(c_uint, lastChar))) == @as(c_int, @bitCast(@as(c_uint, c)))) and (memcmp(@as(?*const anyopaque, @ptrCast(haystack.*.value() + index_1)), @as(?*const anyopaque, @ptrCast(needle.*.value())), @as(c_ulong, @bitCast(@as(c_ulong, needleEnd)))) == @as(c_int, 0))) {
                return index_1;
            }
            index_1 +%= shift[@as(u8, @bitCast(c))];
        }
    }
    return @as(c_uint, 4294967295);
}
pub fn wrenStringEqualsCString(arg_a: [*c]const ObjString, arg_b: [*c]const u8, arg_length: usize) callconv(.C) bool {
    var a = arg_a;
    var b = arg_b;
    var length = arg_length;
    return (@as(usize, @bitCast(@as(c_ulong, a.*.length))) == length) and (memcmp(@as(?*const anyopaque, @ptrCast(a.*.value())), @as(?*const anyopaque, @ptrCast(b)), length) == @as(c_int, 0));
}
pub export fn wrenNewUpvalue(arg_vm: [*c]WrenVM, arg_value: [*c]Value) [*c]ObjUpvalue {
    var vm = arg_vm;
    var value = arg_value;
    var upvalue: [*c]ObjUpvalue = @as([*c]ObjUpvalue, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @sizeOf(ObjUpvalue)))));
    initObj(vm, &upvalue.*.obj, @as(c_uint, @bitCast(OBJ_UPVALUE)), null);
    upvalue.*.value = value;
    upvalue.*.closed = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
    upvalue.*.next = null;
    return upvalue;
}
pub export fn wrenGrayObj(arg_vm: [*c]WrenVM, arg_obj: [*c]Obj) void {
    var vm = arg_vm;
    var obj = arg_obj;
    if (obj == @as([*c]Obj, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return;
    if (obj.*.isDark) return;
    obj.*.isDark = @as(c_int, 1) != 0;
    if (vm.*.grayCount >= vm.*.grayCapacity) {
        vm.*.grayCapacity = vm.*.grayCount * @as(c_int, 2);
        vm.*.gray = @as([*c][*c]Obj, @ptrCast(@alignCast(vm.*.config.reallocateFn.?(@as(?*anyopaque, @ptrCast(vm.*.gray)), @as(c_ulong, @bitCast(@as(c_long, vm.*.grayCapacity))) *% @sizeOf([*c]Obj), vm.*.config.userData))));
    }
    (blk: {
        const tmp = blk_1: {
            const ref = &vm.*.grayCount;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        };
        if (tmp >= 0) break :blk vm.*.gray + @as(usize, @intCast(tmp)) else break :blk vm.*.gray - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* = obj;
}
pub export fn wrenGrayValue(arg_vm: [*c]WrenVM, arg_value: Value) void {
    var vm = arg_vm;
    var value = arg_value;
    if (!((value & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63))))) return;
    wrenGrayObj(vm, @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(value & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))));
}
pub export fn wrenGrayBuffer(arg_vm: [*c]WrenVM, arg_buffer: [*c]ValueBuffer) void {
    var vm = arg_vm;
    var buffer = arg_buffer;
    {
        var i: c_int = 0;
        while (i < buffer.*.count) : (i += 1) {
            wrenGrayValue(vm, (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk buffer.*.data + @as(usize, @intCast(tmp)) else break :blk buffer.*.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*);
        }
    }
}
pub export fn wrenBlackenObjects(arg_vm: [*c]WrenVM) void {
    var vm = arg_vm;
    while (vm.*.grayCount > @as(c_int, 0)) {
        var obj: [*c]Obj = (blk: {
            const tmp = blk_1: {
                const ref = &vm.*.grayCount;
                ref.* -= 1;
                break :blk_1 ref.*;
            };
            if (tmp >= 0) break :blk vm.*.gray + @as(usize, @intCast(tmp)) else break :blk vm.*.gray - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*;
        blackenObject(vm, obj);
    }
}
pub export fn wrenFreeObj(arg_vm: [*c]WrenVM, arg_obj: [*c]Obj) void {
    var vm = arg_vm;
    var obj = arg_obj;
    while (true) {
        switch (obj.*.type) {
            @as(c_uint, @bitCast(@as(c_int, 0))) => {
                wrenMethodBufferClear(vm, &@as([*c]ObjClass, @ptrCast(@alignCast(obj))).*.methods);
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 2))) => {
                {
                    var fiber: [*c]ObjFiber = @as([*c]ObjFiber, @ptrCast(@alignCast(obj)));
                    _ = wrenReallocate(vm, @as(?*anyopaque, @ptrCast(fiber.*.frames)), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
                    _ = wrenReallocate(vm, @as(?*anyopaque, @ptrCast(fiber.*.stack)), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
                    break;
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 3))) => {
                {
                    var @"fn": [*c]ObjFn = @as([*c]ObjFn, @ptrCast(@alignCast(obj)));
                    wrenValueBufferClear(vm, &@"fn".*.constants);
                    wrenByteBufferClear(vm, &@"fn".*.code);
                    wrenIntBufferClear(vm, &@"fn".*.debug.*.sourceLines);
                    _ = wrenReallocate(vm, @as(?*anyopaque, @ptrCast(@"fn".*.debug.*.name)), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
                    _ = wrenReallocate(vm, @as(?*anyopaque, @ptrCast(@"fn".*.debug)), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
                    break;
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 4))) => {
                wrenFinalizeForeign(vm, @as([*c]ObjForeign, @ptrCast(@alignCast(obj))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 6))) => {
                wrenValueBufferClear(vm, &@as([*c]ObjList, @ptrCast(@alignCast(obj))).*.elements);
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 7))) => {
                _ = wrenReallocate(vm, @as(?*anyopaque, @ptrCast(@as([*c]ObjMap, @ptrCast(@alignCast(obj))).*.entries)), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 8))) => {
                wrenSymbolTableClear(vm, &@as([*c]ObjModule, @ptrCast(@alignCast(obj))).*.variableNames);
                wrenValueBufferClear(vm, &@as([*c]ObjModule, @ptrCast(@alignCast(obj))).*.variables);
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 1))), @as(c_uint, @bitCast(@as(c_int, 5))), @as(c_uint, @bitCast(@as(c_int, 9))), @as(c_uint, @bitCast(@as(c_int, 10))), @as(c_uint, @bitCast(@as(c_int, 11))) => break,
            else => {},
        }
        break;
    }
    _ = wrenReallocate(vm, @as(?*anyopaque, @ptrCast(obj)), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
}
pub export fn wrenGetClass(arg_vm: [*c]WrenVM, arg_value: Value) [*c]ObjClass {
    var vm = arg_vm;
    var value = arg_value;
    return wrenGetClassInline(vm, value);
}
pub fn wrenValuesSame(arg_a: Value, arg_b: Value) callconv(.C) bool {
    var a = arg_a;
    var b = arg_b;
    return a == b;
}
pub export fn wrenValuesEqual(arg_a: Value, arg_b: Value) bool {
    var a = arg_a;
    var b = arg_b;
    if (wrenValuesSame(a, b)) return @as(c_int, 1) != 0;
    if (!((a & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) or !((b & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63))))) return @as(c_int, 0) != 0;
    var aObj: [*c]Obj = @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(a & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))));
    var bObj: [*c]Obj = @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(b & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))));
    if (aObj.*.type != bObj.*.type) return @as(c_int, 0) != 0;
    while (true) {
        switch (aObj.*.type) {
            @as(c_uint, @bitCast(@as(c_int, 9))) => {
                {
                    var aRange: [*c]ObjRange = @as([*c]ObjRange, @ptrCast(@alignCast(aObj)));
                    var bRange: [*c]ObjRange = @as([*c]ObjRange, @ptrCast(@alignCast(bObj)));
                    return ((aRange.*.from == bRange.*.from) and (aRange.*.to == bRange.*.to)) and (@as(c_int, @intFromBool(aRange.*.isInclusive)) == @as(c_int, @intFromBool(bRange.*.isInclusive)));
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 10))) => {
                {
                    var aString: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(aObj)));
                    var bString: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(bObj)));
                    return (aString.*.hash == bString.*.hash) and (@as(c_int, @intFromBool(wrenStringEqualsCString(aString, bString.*.value(), @as(usize, @bitCast(@as(c_ulong, bString.*.length)))))) != 0);
                }
            },
            else => return @as(c_int, 0) != 0,
        }
        break;
    }
    return false;
}
pub fn wrenIsBool(arg_value: Value) callconv(.C) bool {
    var value = arg_value;
    return (value == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3))))))) or (value == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2)))))));
}
pub fn wrenIsObjType(arg_value: Value, arg_type: ObjType) callconv(.C) bool {
    var value = arg_value;
    var @"type" = arg_type;
    return ((value & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) and (@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(value & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))).*.type == @"type");
}
pub fn wrenObjectToValue(arg_obj: [*c]Obj) callconv(.C) Value {
    var obj = arg_obj;
    return @as(Value, @bitCast(((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) | @as(u64, @bitCast(@as(usize, @intCast(@intFromPtr(obj)))))));
}
pub fn wrenValueToNum(arg_value: Value) callconv(.C) f64 {
    var value = arg_value;
    return wrenDoubleFromBits(value);
}
pub fn wrenNumToValue(arg_num: f64) callconv(.C) Value {
    var num = arg_num;
    return wrenDoubleToBits(num);
}
pub export fn wrenCompile(arg_vm: [*c]WrenVM, arg_module: [*c]ObjModule, arg_source: [*c]const u8, arg_isExpression: bool, arg_printErrors: bool) [*c]ObjFn {
    var vm = arg_vm;
    var module = arg_module;
    var source = arg_source;
    var isExpression = arg_isExpression;
    var printErrors = arg_printErrors;
    if (strncmp(source, "\xef\xbb\xbf", @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3))))) == @as(c_int, 0)) {
        source += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 3)))));
    }
    var parser: Parser = undefined;
    parser.vm = vm;
    parser.module = module;
    parser.source = source;
    parser.tokenStart = source;
    parser.currentChar = source;
    parser.currentLine = 1;
    parser.numParens = 0;
    parser.next.type = @as(c_uint, @bitCast(TOKEN_ERROR));
    parser.next.start = source;
    parser.next.length = 0;
    parser.next.line = 0;
    parser.next.value = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4))))));
    parser.printErrors = printErrors;
    parser.hasError = @as(c_int, 0) != 0;
    nextToken(&parser);
    nextToken(&parser);
    var numExistingVariables: c_int = module.*.variables.count;
    var compiler: Compiler = undefined;
    initCompiler(&compiler, &parser, null, @as(c_int, 0) != 0);
    ignoreNewlines(&compiler);
    if (isExpression) {
        expression(&compiler);
        consume(&compiler, @as(c_uint, @bitCast(TOKEN_EOF)), "Expect end of expression.");
    } else {
        while (!match(&compiler, @as(c_uint, @bitCast(TOKEN_EOF)))) {
            definition(&compiler);
            if (!matchLine(&compiler)) {
                consume(&compiler, @as(c_uint, @bitCast(TOKEN_EOF)), "Expect end of file.");
                break;
            }
        }
        emitOp(&compiler, @as(c_uint, @bitCast(CODE_END_MODULE)));
    }
    emitOp(&compiler, @as(c_uint, @bitCast(CODE_RETURN)));
    {
        var i: c_int = numExistingVariables;
        while (i < parser.module.*.variables.count) : (i += 1) {
            if (((blk: {
                const tmp = i;
                if (tmp >= 0) break :blk parser.module.*.variables.data + @as(usize, @intCast(tmp)) else break :blk parser.module.*.variables.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* & @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) != @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) {
                parser.previous.type = @as(c_uint, @bitCast(TOKEN_NAME));
                parser.previous.start = (blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk parser.module.*.variableNames.data + @as(usize, @intCast(tmp)) else break :blk parser.module.*.variableNames.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*.*.value();
                parser.previous.length = @as(c_int, @bitCast((blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk parser.module.*.variableNames.data + @as(usize, @intCast(tmp)) else break :blk parser.module.*.variableNames.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*.*.length));
                parser.previous.line = @as(c_int, @intFromFloat(wrenValueToNum((blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk parser.module.*.variables.data + @as(usize, @intCast(tmp)) else break :blk parser.module.*.variables.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*)));
                @"error"(&compiler, "Variable is used but not defined.");
            }
        }
    }
    return endCompiler(&compiler, "(script)", @as(c_int, 8));
}
pub export fn wrenBindMethodCode(arg_classObj: [*c]ObjClass, arg_fn: [*c]ObjFn) void {
    var classObj = arg_classObj;
    var @"fn" = arg_fn;
    var ip: c_int = 0;
    while (true) {
        var instruction: Code = @as(c_uint, @bitCast(@as(c_uint, (blk: {
            const tmp = ip;
            if (tmp >= 0) break :blk @"fn".*.code.data + @as(usize, @intCast(tmp)) else break :blk @"fn".*.code.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*)));
        while (true) {
            switch (instruction) {
                @as(c_uint, @bitCast(@as(c_int, 21))), @as(c_uint, @bitCast(@as(c_int, 22))), @as(c_uint, @bitCast(@as(c_int, 19))), @as(c_uint, @bitCast(@as(c_int, 20))) => {
                    (blk: {
                        const tmp = ip + @as(c_int, 1);
                        if (tmp >= 0) break :blk @"fn".*.code.data + @as(usize, @intCast(tmp)) else break :blk @"fn".*.code.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).* +%= @as(u8, @bitCast(@as(i8, @truncate(classObj.*.superclass.*.numFields))));
                    break;
                },
                @as(c_uint, @bitCast(@as(c_int, 41))), @as(c_uint, @bitCast(@as(c_int, 42))), @as(c_uint, @bitCast(@as(c_int, 43))), @as(c_uint, @bitCast(@as(c_int, 44))), @as(c_uint, @bitCast(@as(c_int, 45))), @as(c_uint, @bitCast(@as(c_int, 46))), @as(c_uint, @bitCast(@as(c_int, 47))), @as(c_uint, @bitCast(@as(c_int, 48))), @as(c_uint, @bitCast(@as(c_int, 49))), @as(c_uint, @bitCast(@as(c_int, 50))), @as(c_uint, @bitCast(@as(c_int, 51))), @as(c_uint, @bitCast(@as(c_int, 52))), @as(c_uint, @bitCast(@as(c_int, 53))), @as(c_uint, @bitCast(@as(c_int, 54))), @as(c_uint, @bitCast(@as(c_int, 55))), @as(c_uint, @bitCast(@as(c_int, 56))), @as(c_uint, @bitCast(@as(c_int, 57))) => {
                    {
                        var constant: c_int = (@as(c_int, @bitCast(@as(c_uint, (blk: {
                            const tmp = ip + @as(c_int, 3);
                            if (tmp >= 0) break :blk @"fn".*.code.data + @as(usize, @intCast(tmp)) else break :blk @"fn".*.code.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))) << @intCast(8)) | @as(c_int, @bitCast(@as(c_uint, (blk: {
                            const tmp = ip + @as(c_int, 4);
                            if (tmp >= 0) break :blk @"fn".*.code.data + @as(usize, @intCast(tmp)) else break :blk @"fn".*.code.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*)));
                        (blk: {
                            const tmp = constant;
                            if (tmp >= 0) break :blk @"fn".*.constants.data + @as(usize, @intCast(tmp)) else break :blk @"fn".*.constants.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).* = wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(classObj.*.superclass))));
                        break;
                    }
                },
                @as(c_uint, @bitCast(@as(c_int, 65))) => {
                    {
                        var constant: c_int = (@as(c_int, @bitCast(@as(c_uint, (blk: {
                            const tmp = ip + @as(c_int, 1);
                            if (tmp >= 0) break :blk @"fn".*.code.data + @as(usize, @intCast(tmp)) else break :blk @"fn".*.code.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))) << @intCast(8)) | @as(c_int, @bitCast(@as(c_uint, (blk: {
                            const tmp = ip + @as(c_int, 2);
                            if (tmp >= 0) break :blk @"fn".*.code.data + @as(usize, @intCast(tmp)) else break :blk @"fn".*.code.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*)));
                        wrenBindMethodCode(classObj, @as([*c]ObjFn, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast((blk: {
                            const tmp = constant;
                            if (tmp >= 0) break :blk @"fn".*.constants.data + @as(usize, @intCast(tmp)) else break :blk @"fn".*.constants.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).* & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))));
                        break;
                    }
                },
                @as(c_uint, @bitCast(@as(c_int, 76))) => return,
                else => break,
            }
            break;
        }
        ip += @as(c_int, 1) + getByteCountForArguments(@"fn".*.code.data, @"fn".*.constants.data, ip);
    }
}
pub export fn wrenMarkCompiler(arg_vm: [*c]WrenVM, arg_compiler: [*c]Compiler) void {
    var vm = arg_vm;
    var compiler = arg_compiler;
    wrenGrayValue(vm, compiler.*.parser.*.current.value);
    wrenGrayValue(vm, compiler.*.parser.*.previous.value);
    wrenGrayValue(vm, compiler.*.parser.*.next.value);
    while (true) {
        wrenGrayObj(vm, @as([*c]Obj, @ptrCast(@alignCast(compiler.*.@"fn"))));
        wrenGrayObj(vm, @as([*c]Obj, @ptrCast(@alignCast(compiler.*.constants))));
        wrenGrayObj(vm, @as([*c]Obj, @ptrCast(@alignCast(compiler.*.attributes))));
        if (compiler.*.enclosingClass != @as([*c]ClassInfo, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            wrenBlackenSymbolTable(vm, &compiler.*.enclosingClass.*.fields);
            if (compiler.*.enclosingClass.*.methodAttributes != @as([*c]ObjMap, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                wrenGrayObj(vm, @as([*c]Obj, @ptrCast(@alignCast(compiler.*.enclosingClass.*.methodAttributes))));
            }
            if (compiler.*.enclosingClass.*.classAttributes != @as([*c]ObjMap, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                wrenGrayObj(vm, @as([*c]Obj, @ptrCast(@alignCast(compiler.*.enclosingClass.*.classAttributes))));
            }
        }
        compiler = compiler.*.parent;
        if (!(compiler != @as([*c]Compiler, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) break;
    }
}
pub const CODE_CONSTANT: c_int = 0;
pub const CODE_NULL: c_int = 1;
pub const CODE_FALSE: c_int = 2;
pub const CODE_TRUE: c_int = 3;
pub const CODE_LOAD_LOCAL_0: c_int = 4;
pub const CODE_LOAD_LOCAL_1: c_int = 5;
pub const CODE_LOAD_LOCAL_2: c_int = 6;
pub const CODE_LOAD_LOCAL_3: c_int = 7;
pub const CODE_LOAD_LOCAL_4: c_int = 8;
pub const CODE_LOAD_LOCAL_5: c_int = 9;
pub const CODE_LOAD_LOCAL_6: c_int = 10;
pub const CODE_LOAD_LOCAL_7: c_int = 11;
pub const CODE_LOAD_LOCAL_8: c_int = 12;
pub const CODE_LOAD_LOCAL: c_int = 13;
pub const CODE_STORE_LOCAL: c_int = 14;
pub const CODE_LOAD_UPVALUE: c_int = 15;
pub const CODE_STORE_UPVALUE: c_int = 16;
pub const CODE_LOAD_MODULE_VAR: c_int = 17;
pub const CODE_STORE_MODULE_VAR: c_int = 18;
pub const CODE_LOAD_FIELD_THIS: c_int = 19;
pub const CODE_STORE_FIELD_THIS: c_int = 20;
pub const CODE_LOAD_FIELD: c_int = 21;
pub const CODE_STORE_FIELD: c_int = 22;
pub const CODE_POP: c_int = 23;
pub const CODE_CALL_0: c_int = 24;
pub const CODE_CALL_1: c_int = 25;
pub const CODE_CALL_2: c_int = 26;
pub const CODE_CALL_3: c_int = 27;
pub const CODE_CALL_4: c_int = 28;
pub const CODE_CALL_5: c_int = 29;
pub const CODE_CALL_6: c_int = 30;
pub const CODE_CALL_7: c_int = 31;
pub const CODE_CALL_8: c_int = 32;
pub const CODE_CALL_9: c_int = 33;
pub const CODE_CALL_10: c_int = 34;
pub const CODE_CALL_11: c_int = 35;
pub const CODE_CALL_12: c_int = 36;
pub const CODE_CALL_13: c_int = 37;
pub const CODE_CALL_14: c_int = 38;
pub const CODE_CALL_15: c_int = 39;
pub const CODE_CALL_16: c_int = 40;
pub const CODE_SUPER_0: c_int = 41;
pub const CODE_SUPER_1: c_int = 42;
pub const CODE_SUPER_2: c_int = 43;
pub const CODE_SUPER_3: c_int = 44;
pub const CODE_SUPER_4: c_int = 45;
pub const CODE_SUPER_5: c_int = 46;
pub const CODE_SUPER_6: c_int = 47;
pub const CODE_SUPER_7: c_int = 48;
pub const CODE_SUPER_8: c_int = 49;
pub const CODE_SUPER_9: c_int = 50;
pub const CODE_SUPER_10: c_int = 51;
pub const CODE_SUPER_11: c_int = 52;
pub const CODE_SUPER_12: c_int = 53;
pub const CODE_SUPER_13: c_int = 54;
pub const CODE_SUPER_14: c_int = 55;
pub const CODE_SUPER_15: c_int = 56;
pub const CODE_SUPER_16: c_int = 57;
pub const CODE_JUMP: c_int = 58;
pub const CODE_LOOP: c_int = 59;
pub const CODE_JUMP_IF: c_int = 60;
pub const CODE_AND: c_int = 61;
pub const CODE_OR: c_int = 62;
pub const CODE_CLOSE_UPVALUE: c_int = 63;
pub const CODE_RETURN: c_int = 64;
pub const CODE_CLOSURE: c_int = 65;
pub const CODE_CONSTRUCT: c_int = 66;
pub const CODE_FOREIGN_CONSTRUCT: c_int = 67;
pub const CODE_CLASS: c_int = 68;
pub const CODE_END_CLASS: c_int = 69;
pub const CODE_FOREIGN_CLASS: c_int = 70;
pub const CODE_METHOD_INSTANCE: c_int = 71;
pub const CODE_METHOD_STATIC: c_int = 72;
pub const CODE_END_MODULE: c_int = 73;
pub const CODE_IMPORT_MODULE: c_int = 74;
pub const CODE_IMPORT_VARIABLE: c_int = 75;
pub const CODE_END: c_int = 76;
pub const Code = c_uint;
pub export fn wrenReallocate(arg_vm: [*c]WrenVM, arg_memory: ?*anyopaque, arg_oldSize: usize, arg_newSize: usize) ?*anyopaque {
    var vm = arg_vm;
    var memory = arg_memory;
    var oldSize = arg_oldSize;
    var newSize = arg_newSize;
    vm.*.bytesAllocated +%= newSize -% oldSize;
    if ((newSize > @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) and (vm.*.bytesAllocated > vm.*.nextGC)) {
        wrenCollectGarbage(vm);
    }
    return vm.*.config.reallocateFn.?(memory, newSize, vm.*.config.userData);
}
pub export fn wrenFinalizeForeign(arg_vm: [*c]WrenVM, arg_foreign: [*c]ObjForeign) void {
    var vm = arg_vm;
    var foreign = arg_foreign;
    var symbol: c_int = wrenSymbolTableFind(&vm.*.methodNames, "<finalize>", @as(usize, @bitCast(@as(c_long, @as(c_int, 10)))));
    while (true) {
        if (!false) break;
    }
    if (symbol == -@as(c_int, 1)) return;
    var classObj: [*c]ObjClass = foreign.*.obj.classObj;
    if (symbol >= classObj.*.methods.count) return;
    var method_1: [*c]Method = &(blk: {
        const tmp = symbol;
        if (tmp >= 0) break :blk classObj.*.methods.data + @as(usize, @intCast(tmp)) else break :blk classObj.*.methods.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*;
    if (method_1.*.type == @as(c_uint, @bitCast(METHOD_NONE))) return;
    while (true) {
        if (!false) break;
    }
    var finalizer: WrenFinalizerFn = @as(WrenFinalizerFn, @ptrCast(@alignCast(method_1.*.as.foreign)));
    finalizer.?(@as(?*anyopaque, @ptrCast(foreign.*.data())));
}
pub export fn wrenMakeHandle(arg_vm: [*c]WrenVM, arg_value: Value) [*c]WrenHandle {
    var vm = arg_vm;
    var value = arg_value;
    if ((value & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) {
        wrenPushRoot(vm, @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(value & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))));
    }
    var handle: [*c]WrenHandle = @as([*c]WrenHandle, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @sizeOf(WrenHandle)))));
    handle.*.value = value;
    if ((value & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) {
        wrenPopRoot(vm);
    }
    if (vm.*.handles != @as([*c]WrenHandle, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        vm.*.handles.*.prev = handle;
    }
    handle.*.prev = null;
    handle.*.next = vm.*.handles;
    vm.*.handles = handle;
    return handle;
}
pub export fn wrenCompileSource(arg_vm: [*c]WrenVM, arg_module: [*c]const u8, arg_source: [*c]const u8, arg_isExpression: bool, arg_printErrors: bool) [*c]ObjClosure {
    var vm = arg_vm;
    var module = arg_module;
    var source = arg_source;
    var isExpression = arg_isExpression;
    var printErrors = arg_printErrors;
    var nameValue: Value = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
    if (module != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        nameValue = wrenNewString(vm, module);
        wrenPushRoot(vm, @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(nameValue & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))));
    }
    var closure: [*c]ObjClosure = compileInModule(vm, nameValue, source, isExpression, printErrors);
    if (module != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        wrenPopRoot(vm);
    }
    return closure;
}
pub export fn wrenGetModuleVariable(arg_vm: [*c]WrenVM, arg_moduleName: Value, arg_variableName: Value) Value {
    var vm = arg_vm;
    var moduleName = arg_moduleName;
    var variableName = arg_variableName;
    var module: [*c]ObjModule = getModule(vm, moduleName);
    if (module == @as([*c]ObjModule, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        vm.*.fiber.*.@"error" = wrenStringFormat(vm, "Module '@' is not loaded.", moduleName);
        return @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
    }
    return getModuleVariable(vm, module, variableName);
}
pub export fn wrenFindVariable(arg_vm: [*c]WrenVM, arg_module: [*c]ObjModule, arg_name_1: [*c]const u8) Value {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var module = arg_module;
    var name_1 = arg_name_1;
    var symbol: c_int = wrenSymbolTableFind(&module.*.variableNames, name_1, strlen(name_1));
    return (blk: {
        const tmp = symbol;
        if (tmp >= 0) break :blk module.*.variables.data + @as(usize, @intCast(tmp)) else break :blk module.*.variables.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*;
}
pub export fn wrenDeclareVariable(arg_vm: [*c]WrenVM, arg_module: [*c]ObjModule, arg_name_1: [*c]const u8, arg_length: usize, arg_line: c_int) c_int {
    var vm = arg_vm;
    var module = arg_module;
    var name_1 = arg_name_1;
    var length = arg_length;
    var line = arg_line;
    if (module.*.variables.count == @as(c_int, 65536)) return -@as(c_int, 2);
    wrenValueBufferWrite(vm, &module.*.variables, wrenNumToValue(@as(f64, @floatFromInt(line))));
    return wrenSymbolTableAdd(vm, &module.*.variableNames, name_1, length);
}
pub export fn wrenDefineVariable(arg_vm: [*c]WrenVM, arg_module: [*c]ObjModule, arg_name_1: [*c]const u8, arg_length: usize, arg_value: Value, arg_line: [*c]c_int) c_int {
    var vm = arg_vm;
    var module = arg_module;
    var name_1 = arg_name_1;
    var length = arg_length;
    var value = arg_value;
    var line = arg_line;
    if (module.*.variables.count == @as(c_int, 65536)) return -@as(c_int, 2);
    if ((value & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) {
        wrenPushRoot(vm, @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(value & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))));
    }
    var symbol: c_int = wrenSymbolTableFind(&module.*.variableNames, name_1, length);
    if (symbol == -@as(c_int, 1)) {
        symbol = wrenSymbolTableAdd(vm, &module.*.variableNames, name_1, length);
        wrenValueBufferWrite(vm, &module.*.variables, value);
    } else if (((blk: {
        const tmp = symbol;
        if (tmp >= 0) break :blk module.*.variables.data + @as(usize, @intCast(tmp)) else break :blk module.*.variables.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* & @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) != @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) {
        if (line != null) {
            line.* = @as(c_int, @intFromFloat(wrenValueToNum((blk: {
                const tmp = symbol;
                if (tmp >= 0) break :blk module.*.variables.data + @as(usize, @intCast(tmp)) else break :blk module.*.variables.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*)));
        }
        (blk: {
            const tmp = symbol;
            if (tmp >= 0) break :blk module.*.variables.data + @as(usize, @intCast(tmp)) else break :blk module.*.variables.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).* = value;
        if (wrenIsLocalName(name_1)) {
            symbol = -@as(c_int, 3);
        }
    } else {
        symbol = -@as(c_int, 1);
    }
    if ((value & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) {
        wrenPopRoot(vm);
    }
    return symbol;
}
pub fn wrenCallFunction(arg_vm: [*c]WrenVM, arg_fiber: [*c]ObjFiber, arg_closure: [*c]ObjClosure, arg_numArgs: c_int) callconv(.C) void {
    var vm = arg_vm;
    var fiber = arg_fiber;
    var closure = arg_closure;
    var numArgs = arg_numArgs;
    if ((fiber.*.numFrames + @as(c_int, 1)) > fiber.*.frameCapacity) {
        var max: c_int = fiber.*.frameCapacity * @as(c_int, 2);
        fiber.*.frames = @as([*c]CallFrame, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrCast(fiber.*.frames)), @sizeOf(CallFrame) *% @as(c_ulong, @bitCast(@as(c_long, fiber.*.frameCapacity))), @sizeOf(CallFrame) *% @as(c_ulong, @bitCast(@as(c_long, max)))))));
        fiber.*.frameCapacity = max;
    }
    var stackSize: c_int = @as(c_int, @bitCast(@as(c_int, @truncate(@divExact(@as(c_long, @bitCast(@intFromPtr(fiber.*.stackTop) -% @intFromPtr(fiber.*.stack))), @sizeOf(Value))))));
    var needed: c_int = stackSize + closure.*.@"fn".*.maxSlots;
    wrenEnsureStack(vm, fiber, needed);
    wrenAppendCallFrame(vm, fiber, closure, fiber.*.stackTop - @as(usize, @bitCast(@as(isize, @intCast(numArgs)))));
}
pub export fn wrenPushRoot(arg_vm: [*c]WrenVM, arg_obj: [*c]Obj) void {
    var vm = arg_vm;
    var obj = arg_obj;
    while (true) {
        if (!false) break;
    }
    while (true) {
        if (!false) break;
    }
    vm.*.tempRoots[@as(c_uint, @intCast(blk: {
            const ref = &vm.*.numTempRoots;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }))] = obj;
}
pub export fn wrenPopRoot(arg_vm: [*c]WrenVM) void {
    var vm = arg_vm;
    while (true) {
        if (!false) break;
    }
    vm.*.numTempRoots -= 1;
}
pub fn wrenGetClassInline(arg_vm: [*c]WrenVM, arg_value: Value) callconv(.C) [*c]ObjClass {
    var vm = arg_vm;
    var value = arg_value;
    if ((value & @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) != @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) return vm.*.numClass;
    if ((value & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) return @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(value & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))).*.classObj;
    while (true) {
        switch (@as(c_int, @bitCast(@as(c_uint, @truncate(value & @as(Value, @bitCast(@as(c_long, @as(c_int, 7))))))))) {
            @as(c_int, 2) => return vm.*.boolClass,
            @as(c_int, 0) => return vm.*.numClass,
            @as(c_int, 1) => return vm.*.nullClass,
            @as(c_int, 3) => return vm.*.boolClass,
            @as(c_int, 4) => {
                {}
            },
            else => {},
        }
        break;
    }
    return null;
}
pub fn wrenIsLocalName(arg_name_1: [*c]const u8) callconv(.C) bool {
    var name_1 = arg_name_1;
    return (@as(c_int, @bitCast(@as(c_uint, name_1[@as(c_uint, @intCast(@as(c_int, 0)))]))) >= @as(c_int, 'a')) and (@as(c_int, @bitCast(@as(c_uint, name_1[@as(c_uint, @intCast(@as(c_int, 0)))]))) <= @as(c_int, 'z'));
}
pub fn wrenIsFalsyValue(arg_value: Value) callconv(.C) bool {
    var value = arg_value;
    return (value == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))))) or (value == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1)))))));
}
pub export fn wrenDebugPrintStackTrace(arg_vm: [*c]WrenVM) void {
    var vm = arg_vm;
    if (vm.*.config.errorFn == @as(WrenErrorFn, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return;
    var fiber: [*c]ObjFiber = vm.*.fiber;
    if (wrenIsObjType(fiber.*.@"error", @as(c_uint, @bitCast(OBJ_STRING)))) {
        vm.*.config.errorFn.?(vm, @as(c_uint, @bitCast(WREN_ERROR_RUNTIME)), null, -@as(c_int, 1), @as([*c]u8, @ptrCast(@alignCast(&@as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(fiber.*.@"error" & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.value()))));
    } else {
        vm.*.config.errorFn.?(vm, @as(c_uint, @bitCast(WREN_ERROR_RUNTIME)), null, -@as(c_int, 1), "[error object]");
    }
    {
        var i: c_int = fiber.*.numFrames - @as(c_int, 1);
        while (i >= @as(c_int, 0)) : (i -= 1) {
            var frame: [*c]CallFrame = &(blk: {
                const tmp = i;
                if (tmp >= 0) break :blk fiber.*.frames + @as(usize, @intCast(tmp)) else break :blk fiber.*.frames - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*;
            var @"fn": [*c]ObjFn = frame.*.closure.*.@"fn";
            if (@"fn".*.module == @as([*c]ObjModule, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) continue;
            if (@"fn".*.module.*.name == @as([*c]ObjString, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) continue;
            var line: c_int = (blk: {
                const tmp = @divExact(@as(c_long, @bitCast(@intFromPtr(frame.*.ip) -% @intFromPtr(@"fn".*.code.data))), @sizeOf(u8)) - @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))));
                if (tmp >= 0) break :blk @"fn".*.debug.*.sourceLines.data + @as(usize, @intCast(tmp)) else break :blk @"fn".*.debug.*.sourceLines.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*;
            vm.*.config.errorFn.?(vm, @as(c_uint, @bitCast(WREN_ERROR_STACK_TRACE)), @"fn".*.module.*.name.*.value(), line, @"fn".*.debug.*.name);
        }
    }
}
pub export fn wrenDumpValue(arg_value: Value) void {
    var value = arg_value;
    if ((value & @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) != @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) {
        _ = printf("%.14g", wrenValueToNum(value));
    } else if ((value & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) {
        dumpObject(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(value & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))));
    } else {
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, @truncate(value & @as(Value, @bitCast(@as(c_long, @as(c_int, 7))))))))) {
                @as(c_int, 2) => {
                    _ = printf("false");
                    break;
                },
                @as(c_int, 0) => {
                    _ = printf("NaN");
                    break;
                },
                @as(c_int, 1) => {
                    _ = printf("null");
                    break;
                },
                @as(c_int, 3) => {
                    _ = printf("true");
                    break;
                },
                @as(c_int, 4) => {
                    {}
                },
                else => {},
            }
            break;
        }
    }
}
pub export fn wrenDumpInstruction(arg_vm: [*c]WrenVM, arg_fn: [*c]ObjFn, arg_i: c_int) c_int {
    var vm = arg_vm;
    var @"fn" = arg_fn;
    var i = arg_i;
    return dumpInstruction(vm, @"fn", i, null);
}
pub export fn wrenDumpCode(arg_vm: [*c]WrenVM, arg_fn: [*c]ObjFn) void {
    var vm = arg_vm;
    var @"fn" = arg_fn;
    _ = printf("%s: %s\n", if (@"fn".*.module.*.name == @as([*c]ObjString, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) "<core>" else @"fn".*.module.*.name.*.value(), @"fn".*.debug.*.name);
    var i: c_int = 0;
    var lastLine: c_int = -@as(c_int, 1);
    while (true) {
        var offset: c_int = dumpInstruction(vm, @"fn", i, &lastLine);
        if (offset == -@as(c_int, 1)) break;
        i += offset;
    }
    _ = printf("\n");
}
pub export fn wrenDumpStack(arg_fiber: [*c]ObjFiber) void {
    var fiber = arg_fiber;
    _ = printf("(fiber %p) ", fiber);
    {
        var slot: [*c]Value = fiber.*.stack;
        while (slot < fiber.*.stackTop) : (slot += 1) {
            wrenDumpValue(slot.*);
            _ = printf(" | ");
        }
    }
    _ = printf("\n");
}
const union_unnamed_9 = extern union {
    __wch: c_uint,
    __wchb: [4]u8,
};
pub const __mbstate_t = extern struct {
    __count: c_int,
    __value: union_unnamed_9,
};
pub const struct__G_fpos_t = extern struct {
    __pos: __off_t,
    __state: __mbstate_t,
};
pub const __fpos_t = struct__G_fpos_t;
pub const struct__G_fpos64_t = extern struct {
    __pos: __off64_t,
    __state: __mbstate_t,
};
pub const __fpos64_t = struct__G_fpos64_t;
pub const struct__IO_marker = opaque {};
pub const _IO_lock_t = anyopaque;
pub const struct__IO_codecvt = opaque {};
pub const struct__IO_wide_data = opaque {};
pub const struct__IO_FILE = extern struct {
    _flags: c_int,
    _IO_read_ptr: [*c]u8,
    _IO_read_end: [*c]u8,
    _IO_read_base: [*c]u8,
    _IO_write_base: [*c]u8,
    _IO_write_ptr: [*c]u8,
    _IO_write_end: [*c]u8,
    _IO_buf_base: [*c]u8,
    _IO_buf_end: [*c]u8,
    _IO_save_base: [*c]u8,
    _IO_backup_base: [*c]u8,
    _IO_save_end: [*c]u8,
    _markers: ?*struct__IO_marker,
    _chain: [*c]struct__IO_FILE,
    _fileno: c_int,
    _flags2: c_int,
    _old_offset: __off_t,
    _cur_column: c_ushort,
    _vtable_offset: i8,
    _shortbuf: [1]u8,
    _lock: ?*_IO_lock_t,
    _offset: __off64_t,
    _codecvt: ?*struct__IO_codecvt,
    _wide_data: ?*struct__IO_wide_data,
    _freeres_list: [*c]struct__IO_FILE,
    _freeres_buf: ?*anyopaque,
    __pad5: usize,
    _mode: c_int,
    _unused2: [20]u8,
};
pub const __FILE = struct__IO_FILE;
pub const FILE = struct__IO_FILE;
pub const fpos_t = __fpos_t;
pub extern var stdin: [*c]FILE;
pub extern var stdout: [*c]FILE;
pub extern var stderr: [*c]FILE;
pub extern fn remove(__filename: [*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn renameat(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam(__s: [*c]u8) [*c]u8;
pub extern fn tmpnam_r(__s: [*c]u8) [*c]u8;
pub extern fn tempnam(__dir: [*c]const u8, __pfx: [*c]const u8) [*c]u8;
pub extern fn fclose(__stream: [*c]FILE) c_int;
pub extern fn fflush(__stream: [*c]FILE) c_int;
pub extern fn fflush_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fopen(__filename: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn freopen(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
pub extern fn fdopen(__fd: c_int, __modes: [*c]const u8) [*c]FILE;
pub extern fn fmemopen(__s: ?*anyopaque, __len: usize, __modes: [*c]const u8) [*c]FILE;
pub extern fn open_memstream(__bufloc: [*c][*c]u8, __sizeloc: [*c]usize) [*c]FILE;
pub extern fn setbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8) void;
pub extern fn setvbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __modes: c_int, __n: usize) c_int;
pub extern fn setbuffer(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __size: usize) void;
pub extern fn setlinebuf(__stream: [*c]FILE) void;
pub extern fn fprintf(__stream: [*c]FILE, __format: [*c]const u8, ...) c_int;
pub extern fn printf(__format: [*c]const u8, ...) c_int;
pub extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;
pub extern fn vfprintf(__s: [*c]FILE, __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn vprintf(__format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn vsprintf(__s: [*c]u8, __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn snprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, ...) c_int;
pub extern fn vsnprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn vdprintf(__fd: c_int, noalias __fmt: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn dprintf(__fd: c_int, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn fscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, ...) c_int;
pub extern fn scanf(noalias __format: [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, ...) c_int;
pub extern fn vfscanf(noalias __s: [*c]FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn vsscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn fgetc(__stream: [*c]FILE) c_int;
pub extern fn getc(__stream: [*c]FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn getc_unlocked(__stream: [*c]FILE) c_int;
pub extern fn getchar_unlocked() c_int;
pub extern fn fgetc_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fputc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putchar(__c: c_int) c_int;
pub extern fn fputc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putchar_unlocked(__c: c_int) c_int;
pub extern fn getw(__stream: [*c]FILE) c_int;
pub extern fn putw(__w: c_int, __stream: [*c]FILE) c_int;
pub extern fn fgets(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
pub extern fn __getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getline(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
pub extern fn puts(__s: [*c]const u8) c_int;
pub extern fn ungetc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn fread(__ptr: ?*anyopaque, __size: c_ulong, __n: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __n: c_ulong, __s: [*c]FILE) c_ulong;
pub extern fn fread_unlocked(noalias __ptr: ?*anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fwrite_unlocked(noalias __ptr: ?*const anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fseek(__stream: [*c]FILE, __off: c_long, __whence: c_int) c_int;
pub extern fn ftell(__stream: [*c]FILE) c_long;
pub extern fn rewind(__stream: [*c]FILE) void;
pub extern fn fseeko(__stream: [*c]FILE, __off: __off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: [*c]FILE) __off_t;
pub extern fn fgetpos(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos_t) c_int;
pub extern fn fsetpos(__stream: [*c]FILE, __pos: [*c]const fpos_t) c_int;
pub extern fn clearerr(__stream: [*c]FILE) void;
pub extern fn feof(__stream: [*c]FILE) c_int;
pub extern fn ferror(__stream: [*c]FILE) c_int;
pub extern fn clearerr_unlocked(__stream: [*c]FILE) void;
pub extern fn feof_unlocked(__stream: [*c]FILE) c_int;
pub extern fn ferror_unlocked(__stream: [*c]FILE) c_int;
pub extern fn perror(__s: [*c]const u8) void;
pub extern var sys_nerr: c_int;
pub const sys_errlist: [*c]const [*c]const u8 = @extern([*c]const [*c]const u8, .{
    .name = "sys_errlist",
});
pub extern fn fileno(__stream: [*c]FILE) c_int;
pub extern fn fileno_unlocked(__stream: [*c]FILE) c_int;
pub extern fn popen(__command: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn pclose(__stream: [*c]FILE) c_int;
pub extern fn ctermid(__s: [*c]u8) [*c]u8;
pub extern fn flockfile(__stream: [*c]FILE) void;
pub extern fn ftrylockfile(__stream: [*c]FILE) c_int;
pub extern fn funlockfile(__stream: [*c]FILE) void;
pub extern fn __uflow([*c]FILE) c_int;
pub extern fn __overflow([*c]FILE, c_int) c_int;
pub fn dumpObject(arg_obj: [*c]Obj) callconv(.C) void {
    var obj = arg_obj;
    while (true) {
        switch (obj.*.type) {
            @as(c_uint, @bitCast(@as(c_int, 0))) => {
                _ = printf("[class %s %p]", @as([*c]ObjClass, @ptrCast(@alignCast(obj))).*.name.*.value(), obj);
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 1))) => {
                _ = printf("[closure %p]", obj);
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 2))) => {
                _ = printf("[fiber %p]", obj);
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 3))) => {
                _ = printf("[fn %p]", obj);
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 4))) => {
                _ = printf("[foreign %p]", obj);
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 5))) => {
                _ = printf("[instance %p]", obj);
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 6))) => {
                _ = printf("[list %p]", obj);
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 7))) => {
                _ = printf("[map %p]", obj);
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 8))) => {
                _ = printf("[module %p]", obj);
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 9))) => {
                _ = printf("[range %p]", obj);
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 10))) => {
                _ = printf("%s", @as([*c]ObjString, @ptrCast(@alignCast(obj))).*.value());
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 11))) => {
                _ = printf("[upvalue %p]", obj);
                break;
            },
            else => {
                _ = printf("[unknown object %d]", obj.*.type);
                break;
            },
        }
        break;
    }
}
pub fn dumpInstruction(arg_vm: [*c]WrenVM, arg_fn: [*c]ObjFn, arg_i: c_int, arg_lastLine: [*c]c_int) callconv(.C) c_int {
    var vm = arg_vm;
    var @"fn" = arg_fn;
    var i = arg_i;
    var lastLine = arg_lastLine;
    var start: c_int = i;
    var bytecode: [*c]u8 = @"fn".*.code.data;
    var code: Code = @as(c_uint, @bitCast(@as(c_uint, (blk: {
        const tmp = i;
        if (tmp >= 0) break :blk bytecode + @as(usize, @intCast(tmp)) else break :blk bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*)));
    var line: c_int = (blk: {
        const tmp = i;
        if (tmp >= 0) break :blk @"fn".*.debug.*.sourceLines.data + @as(usize, @intCast(tmp)) else break :blk @"fn".*.debug.*.sourceLines.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*;
    if ((lastLine == @as([*c]c_int, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) or (lastLine.* != line)) {
        _ = printf("%4d:", line);
        if (lastLine != @as([*c]c_int, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            lastLine.* = line;
        }
    } else {
        _ = printf("     ");
    }
    _ = printf(" %04d  ", blk: {
        const ref = &i;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    });
    while (true) {
        switch (code) {
            @as(c_uint, @bitCast(@as(c_int, 0))) => {
                {
                    var constant: c_int = blk: {
                        i += @as(c_int, 2);
                        break :blk (@as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 2);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))) << @intCast(8)) | @as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 1);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*)));
                    };
                    _ = printf("%-16s %5d '", "CONSTANT", constant);
                    wrenDumpValue((blk: {
                        const tmp = constant;
                        if (tmp >= 0) break :blk @"fn".*.constants.data + @as(usize, @intCast(tmp)) else break :blk @"fn".*.constants.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*);
                    _ = printf("'\n");
                    break;
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 1))) => {
                _ = printf("NULL\n");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 2))) => {
                _ = printf("FALSE\n");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 3))) => {
                _ = printf("TRUE\n");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 4))) => {
                _ = printf("LOAD_LOCAL_0\n");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 5))) => {
                _ = printf("LOAD_LOCAL_1\n");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 6))) => {
                _ = printf("LOAD_LOCAL_2\n");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 7))) => {
                _ = printf("LOAD_LOCAL_3\n");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 8))) => {
                _ = printf("LOAD_LOCAL_4\n");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 9))) => {
                _ = printf("LOAD_LOCAL_5\n");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 10))) => {
                _ = printf("LOAD_LOCAL_6\n");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 11))) => {
                _ = printf("LOAD_LOCAL_7\n");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 12))) => {
                _ = printf("LOAD_LOCAL_8\n");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 13))) => {
                _ = printf("%-16s %5d\n", "LOAD_LOCAL", @as(c_int, @bitCast(@as(c_uint, (blk: {
                    const tmp = blk_1: {
                        const ref = &i;
                        const tmp_2 = ref.*;
                        ref.* += 1;
                        break :blk_1 tmp_2;
                    };
                    if (tmp >= 0) break :blk bytecode + @as(usize, @intCast(tmp)) else break :blk bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 14))) => {
                _ = printf("%-16s %5d\n", "STORE_LOCAL", @as(c_int, @bitCast(@as(c_uint, (blk: {
                    const tmp = blk_1: {
                        const ref = &i;
                        const tmp_2 = ref.*;
                        ref.* += 1;
                        break :blk_1 tmp_2;
                    };
                    if (tmp >= 0) break :blk bytecode + @as(usize, @intCast(tmp)) else break :blk bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 15))) => {
                _ = printf("%-16s %5d\n", "LOAD_UPVALUE", @as(c_int, @bitCast(@as(c_uint, (blk: {
                    const tmp = blk_1: {
                        const ref = &i;
                        const tmp_2 = ref.*;
                        ref.* += 1;
                        break :blk_1 tmp_2;
                    };
                    if (tmp >= 0) break :blk bytecode + @as(usize, @intCast(tmp)) else break :blk bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 16))) => {
                _ = printf("%-16s %5d\n", "STORE_UPVALUE", @as(c_int, @bitCast(@as(c_uint, (blk: {
                    const tmp = blk_1: {
                        const ref = &i;
                        const tmp_2 = ref.*;
                        ref.* += 1;
                        break :blk_1 tmp_2;
                    };
                    if (tmp >= 0) break :blk bytecode + @as(usize, @intCast(tmp)) else break :blk bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 17))) => {
                {
                    var slot: c_int = blk: {
                        i += @as(c_int, 2);
                        break :blk (@as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 2);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))) << @intCast(8)) | @as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 1);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*)));
                    };
                    _ = printf("%-16s %5d '%s'\n", "LOAD_MODULE_VAR", slot, (blk: {
                        const tmp = slot;
                        if (tmp >= 0) break :blk @"fn".*.module.*.variableNames.data + @as(usize, @intCast(tmp)) else break :blk @"fn".*.module.*.variableNames.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*.*.value());
                    break;
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 18))) => {
                {
                    var slot: c_int = blk: {
                        i += @as(c_int, 2);
                        break :blk (@as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 2);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))) << @intCast(8)) | @as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 1);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*)));
                    };
                    _ = printf("%-16s %5d '%s'\n", "STORE_MODULE_VAR", slot, (blk: {
                        const tmp = slot;
                        if (tmp >= 0) break :blk @"fn".*.module.*.variableNames.data + @as(usize, @intCast(tmp)) else break :blk @"fn".*.module.*.variableNames.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*.*.value());
                    break;
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 19))) => {
                _ = printf("%-16s %5d\n", "LOAD_FIELD_THIS", @as(c_int, @bitCast(@as(c_uint, (blk: {
                    const tmp = blk_1: {
                        const ref = &i;
                        const tmp_2 = ref.*;
                        ref.* += 1;
                        break :blk_1 tmp_2;
                    };
                    if (tmp >= 0) break :blk bytecode + @as(usize, @intCast(tmp)) else break :blk bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 20))) => {
                _ = printf("%-16s %5d\n", "STORE_FIELD_THIS", @as(c_int, @bitCast(@as(c_uint, (blk: {
                    const tmp = blk_1: {
                        const ref = &i;
                        const tmp_2 = ref.*;
                        ref.* += 1;
                        break :blk_1 tmp_2;
                    };
                    if (tmp >= 0) break :blk bytecode + @as(usize, @intCast(tmp)) else break :blk bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 21))) => {
                _ = printf("%-16s %5d\n", "LOAD_FIELD", @as(c_int, @bitCast(@as(c_uint, (blk: {
                    const tmp = blk_1: {
                        const ref = &i;
                        const tmp_2 = ref.*;
                        ref.* += 1;
                        break :blk_1 tmp_2;
                    };
                    if (tmp >= 0) break :blk bytecode + @as(usize, @intCast(tmp)) else break :blk bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 22))) => {
                _ = printf("%-16s %5d\n", "STORE_FIELD", @as(c_int, @bitCast(@as(c_uint, (blk: {
                    const tmp = blk_1: {
                        const ref = &i;
                        const tmp_2 = ref.*;
                        ref.* += 1;
                        break :blk_1 tmp_2;
                    };
                    if (tmp >= 0) break :blk bytecode + @as(usize, @intCast(tmp)) else break :blk bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 23))) => {
                _ = printf("POP\n");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 24))), @as(c_uint, @bitCast(@as(c_int, 25))), @as(c_uint, @bitCast(@as(c_int, 26))), @as(c_uint, @bitCast(@as(c_int, 27))), @as(c_uint, @bitCast(@as(c_int, 28))), @as(c_uint, @bitCast(@as(c_int, 29))), @as(c_uint, @bitCast(@as(c_int, 30))), @as(c_uint, @bitCast(@as(c_int, 31))), @as(c_uint, @bitCast(@as(c_int, 32))), @as(c_uint, @bitCast(@as(c_int, 33))), @as(c_uint, @bitCast(@as(c_int, 34))), @as(c_uint, @bitCast(@as(c_int, 35))), @as(c_uint, @bitCast(@as(c_int, 36))), @as(c_uint, @bitCast(@as(c_int, 37))), @as(c_uint, @bitCast(@as(c_int, 38))), @as(c_uint, @bitCast(@as(c_int, 39))), @as(c_uint, @bitCast(@as(c_int, 40))) => {
                {
                    var numArgs: c_int = @as(c_int, @bitCast(@as(c_uint, (blk: {
                        const tmp = i - @as(c_int, 1);
                        if (tmp >= 0) break :blk bytecode + @as(usize, @intCast(tmp)) else break :blk bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*))) - CODE_CALL_0;
                    var symbol: c_int = blk: {
                        i += @as(c_int, 2);
                        break :blk (@as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 2);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))) << @intCast(8)) | @as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 1);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*)));
                    };
                    _ = printf("CALL_%-11d %5d '%s'\n", numArgs, symbol, (blk: {
                        const tmp = symbol;
                        if (tmp >= 0) break :blk vm.*.methodNames.data + @as(usize, @intCast(tmp)) else break :blk vm.*.methodNames.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*.*.value());
                    break;
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 41))), @as(c_uint, @bitCast(@as(c_int, 42))), @as(c_uint, @bitCast(@as(c_int, 43))), @as(c_uint, @bitCast(@as(c_int, 44))), @as(c_uint, @bitCast(@as(c_int, 45))), @as(c_uint, @bitCast(@as(c_int, 46))), @as(c_uint, @bitCast(@as(c_int, 47))), @as(c_uint, @bitCast(@as(c_int, 48))), @as(c_uint, @bitCast(@as(c_int, 49))), @as(c_uint, @bitCast(@as(c_int, 50))), @as(c_uint, @bitCast(@as(c_int, 51))), @as(c_uint, @bitCast(@as(c_int, 52))), @as(c_uint, @bitCast(@as(c_int, 53))), @as(c_uint, @bitCast(@as(c_int, 54))), @as(c_uint, @bitCast(@as(c_int, 55))), @as(c_uint, @bitCast(@as(c_int, 56))), @as(c_uint, @bitCast(@as(c_int, 57))) => {
                {
                    var numArgs: c_int = @as(c_int, @bitCast(@as(c_uint, (blk: {
                        const tmp = i - @as(c_int, 1);
                        if (tmp >= 0) break :blk bytecode + @as(usize, @intCast(tmp)) else break :blk bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*))) - CODE_SUPER_0;
                    var symbol: c_int = blk: {
                        i += @as(c_int, 2);
                        break :blk (@as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 2);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))) << @intCast(8)) | @as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 1);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*)));
                    };
                    var superclass: c_int = blk: {
                        i += @as(c_int, 2);
                        break :blk (@as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 2);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))) << @intCast(8)) | @as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 1);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*)));
                    };
                    _ = printf("SUPER_%-10d %5d '%s' %5d\n", numArgs, symbol, (blk: {
                        const tmp = symbol;
                        if (tmp >= 0) break :blk vm.*.methodNames.data + @as(usize, @intCast(tmp)) else break :blk vm.*.methodNames.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*.*.value(), superclass);
                    break;
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 58))) => {
                {
                    var offset: c_int = blk: {
                        i += @as(c_int, 2);
                        break :blk (@as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 2);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))) << @intCast(8)) | @as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 1);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*)));
                    };
                    _ = printf("%-16s %5d to %d\n", "JUMP", offset, i + offset);
                    break;
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 59))) => {
                {
                    var offset: c_int = blk: {
                        i += @as(c_int, 2);
                        break :blk (@as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 2);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))) << @intCast(8)) | @as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 1);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*)));
                    };
                    _ = printf("%-16s %5d to %d\n", "LOOP", offset, i - offset);
                    break;
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 60))) => {
                {
                    var offset: c_int = blk: {
                        i += @as(c_int, 2);
                        break :blk (@as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 2);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))) << @intCast(8)) | @as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 1);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*)));
                    };
                    _ = printf("%-16s %5d to %d\n", "JUMP_IF", offset, i + offset);
                    break;
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 61))) => {
                {
                    var offset: c_int = blk: {
                        i += @as(c_int, 2);
                        break :blk (@as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 2);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))) << @intCast(8)) | @as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 1);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*)));
                    };
                    _ = printf("%-16s %5d to %d\n", "AND", offset, i + offset);
                    break;
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 62))) => {
                {
                    var offset: c_int = blk: {
                        i += @as(c_int, 2);
                        break :blk (@as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 2);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))) << @intCast(8)) | @as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 1);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*)));
                    };
                    _ = printf("%-16s %5d to %d\n", "OR", offset, i + offset);
                    break;
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 63))) => {
                _ = printf("CLOSE_UPVALUE\n");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 64))) => {
                _ = printf("RETURN\n");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 65))) => {
                {
                    var constant: c_int = blk: {
                        i += @as(c_int, 2);
                        break :blk (@as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 2);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))) << @intCast(8)) | @as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 1);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*)));
                    };
                    _ = printf("%-16s %5d ", "CLOSURE", constant);
                    wrenDumpValue((blk: {
                        const tmp = constant;
                        if (tmp >= 0) break :blk @"fn".*.constants.data + @as(usize, @intCast(tmp)) else break :blk @"fn".*.constants.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*);
                    _ = printf(" ");
                    var loadedFn: [*c]ObjFn = @as([*c]ObjFn, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast((blk: {
                        const tmp = constant;
                        if (tmp >= 0) break :blk @"fn".*.constants.data + @as(usize, @intCast(tmp)) else break :blk @"fn".*.constants.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).* & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
                    {
                        var j: c_int = 0;
                        while (j < loadedFn.*.numUpvalues) : (j += 1) {
                            var isLocal: c_int = @as(c_int, @bitCast(@as(c_uint, (blk: {
                                const tmp = blk_1: {
                                    const ref = &i;
                                    const tmp_2 = ref.*;
                                    ref.* += 1;
                                    break :blk_1 tmp_2;
                                };
                                if (tmp >= 0) break :blk bytecode + @as(usize, @intCast(tmp)) else break :blk bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*)));
                            var index_1: c_int = @as(c_int, @bitCast(@as(c_uint, (blk: {
                                const tmp = blk_1: {
                                    const ref = &i;
                                    const tmp_2 = ref.*;
                                    ref.* += 1;
                                    break :blk_1 tmp_2;
                                };
                                if (tmp >= 0) break :blk bytecode + @as(usize, @intCast(tmp)) else break :blk bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*)));
                            if (j > @as(c_int, 0)) {
                                _ = printf(", ");
                            }
                            _ = printf("%s %d", if (isLocal != 0) "local" else "upvalue", index_1);
                        }
                    }
                    _ = printf("\n");
                    break;
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 66))) => {
                _ = printf("CONSTRUCT\n");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 67))) => {
                _ = printf("FOREIGN_CONSTRUCT\n");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 68))) => {
                {
                    var numFields: c_int = @as(c_int, @bitCast(@as(c_uint, (blk: {
                        const tmp = blk_1: {
                            const ref = &i;
                            const tmp_2 = ref.*;
                            ref.* += 1;
                            break :blk_1 tmp_2;
                        };
                        if (tmp >= 0) break :blk bytecode + @as(usize, @intCast(tmp)) else break :blk bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*)));
                    _ = printf("%-16s %5d fields\n", "CLASS", numFields);
                    break;
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 70))) => {
                _ = printf("FOREIGN_CLASS\n");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 69))) => {
                _ = printf("END_CLASS\n");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 71))) => {
                {
                    var symbol: c_int = blk: {
                        i += @as(c_int, 2);
                        break :blk (@as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 2);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))) << @intCast(8)) | @as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 1);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*)));
                    };
                    _ = printf("%-16s %5d '%s'\n", "METHOD_INSTANCE", symbol, (blk: {
                        const tmp = symbol;
                        if (tmp >= 0) break :blk vm.*.methodNames.data + @as(usize, @intCast(tmp)) else break :blk vm.*.methodNames.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*.*.value());
                    break;
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 72))) => {
                {
                    var symbol: c_int = blk: {
                        i += @as(c_int, 2);
                        break :blk (@as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 2);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))) << @intCast(8)) | @as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 1);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*)));
                    };
                    _ = printf("%-16s %5d '%s'\n", "METHOD_STATIC", symbol, (blk: {
                        const tmp = symbol;
                        if (tmp >= 0) break :blk vm.*.methodNames.data + @as(usize, @intCast(tmp)) else break :blk vm.*.methodNames.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*.*.value());
                    break;
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 73))) => {
                _ = printf("END_MODULE\n");
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 74))) => {
                {
                    var name_1: c_int = blk: {
                        i += @as(c_int, 2);
                        break :blk (@as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 2);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))) << @intCast(8)) | @as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 1);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*)));
                    };
                    _ = printf("%-16s %5d '", "IMPORT_MODULE", name_1);
                    wrenDumpValue((blk: {
                        const tmp = name_1;
                        if (tmp >= 0) break :blk @"fn".*.constants.data + @as(usize, @intCast(tmp)) else break :blk @"fn".*.constants.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*);
                    _ = printf("'\n");
                    break;
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 75))) => {
                {
                    var variable: c_int = blk: {
                        i += @as(c_int, 2);
                        break :blk (@as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 2);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))) << @intCast(8)) | @as(c_int, @bitCast(@as(c_uint, (blk_1: {
                            const tmp = i - @as(c_int, 1);
                            if (tmp >= 0) break :blk_1 bytecode + @as(usize, @intCast(tmp)) else break :blk_1 bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*)));
                    };
                    _ = printf("%-16s %5d '", "IMPORT_VARIABLE", variable);
                    wrenDumpValue((blk: {
                        const tmp = variable;
                        if (tmp >= 0) break :blk @"fn".*.constants.data + @as(usize, @intCast(tmp)) else break :blk @"fn".*.constants.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*);
                    _ = printf("'\n");
                    break;
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 76))) => {
                _ = printf("END\n");
                break;
            },
            else => {
                _ = printf("UKNOWN! [%d]\n", @as(c_int, @bitCast(@as(c_uint, (blk: {
                    const tmp = i - @as(c_int, 1);
                    if (tmp >= 0) break :blk bytecode + @as(usize, @intCast(tmp)) else break :blk bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))));
                break;
            },
        }
        break;
    }
    if (code == @as(c_uint, @bitCast(CODE_END))) return -@as(c_int, 1);
    return i - start;
}
pub export fn validateFn(arg_vm: [*c]WrenVM, arg_arg: Value, arg_argName: [*c]const u8) bool {
    var vm = arg_vm;
    var arg = arg_arg;
    var argName = arg_argName;
    if (wrenIsObjType(arg, @as(c_uint, @bitCast(OBJ_CLOSURE)))) return @as(c_int, 1) != 0;
    while (true) {
        vm.*.fiber.*.@"error" = wrenStringFormat(vm, "$ must be a function.", argName);
        return @as(c_int, 0) != 0;
    }
    return false;
}
pub export fn validateNum(arg_vm: [*c]WrenVM, arg_arg: Value, arg_argName: [*c]const u8) bool {
    var vm = arg_vm;
    var arg = arg_arg;
    var argName = arg_argName;
    if ((arg & @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) != @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) return @as(c_int, 1) != 0;
    while (true) {
        vm.*.fiber.*.@"error" = wrenStringFormat(vm, "$ must be a number.", argName);
        return @as(c_int, 0) != 0;
    }
    return false;
}
pub export fn validateIntValue(arg_vm: [*c]WrenVM, arg_value: f64, arg_argName: [*c]const u8) bool {
    var vm = arg_vm;
    var value = arg_value;
    var argName = arg_argName;
    if (trunc(value) == value) return @as(c_int, 1) != 0;
    while (true) {
        vm.*.fiber.*.@"error" = wrenStringFormat(vm, "$ must be an integer.", argName);
        return @as(c_int, 0) != 0;
    }
    return false;
}
pub export fn validateInt(arg_vm: [*c]WrenVM, arg_arg: Value, arg_argName: [*c]const u8) bool {
    var vm = arg_vm;
    var arg = arg_arg;
    var argName = arg_argName;
    if (!validateNum(vm, arg, argName)) return @as(c_int, 0) != 0;
    return validateIntValue(vm, wrenValueToNum(arg), argName);
}
pub export fn validateKey(arg_vm: [*c]WrenVM, arg_arg: Value) bool {
    var vm = arg_vm;
    var arg = arg_arg;
    if (wrenMapIsValidKey(arg)) return @as(c_int, 1) != 0;
    while (true) {
        vm.*.fiber.*.@"error" = wrenNewStringLength(vm, "Key must be a value type.", @sizeOf([26]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
        return @as(c_int, 0) != 0;
    }
    return false;
}
pub export fn validateIndex(arg_vm: [*c]WrenVM, arg_arg: Value, arg_count: u32, arg_argName: [*c]const u8) u32 {
    var vm = arg_vm;
    var arg = arg_arg;
    var count = arg_count;
    var argName = arg_argName;
    if (!validateNum(vm, arg, argName)) return @as(c_uint, 4294967295);
    return validateIndexValue(vm, count, wrenValueToNum(arg), argName);
}
pub export fn validateString(arg_vm: [*c]WrenVM, arg_arg: Value, arg_argName: [*c]const u8) bool {
    var vm = arg_vm;
    var arg = arg_arg;
    var argName = arg_argName;
    if (wrenIsObjType(arg, @as(c_uint, @bitCast(OBJ_STRING)))) return @as(c_int, 1) != 0;
    while (true) {
        vm.*.fiber.*.@"error" = wrenStringFormat(vm, "$ must be a string.", argName);
        return @as(c_int, 0) != 0;
    }
    return false;
}
pub export fn calculateRange(arg_vm: [*c]WrenVM, arg_range: [*c]ObjRange, arg_length: [*c]u32, arg_step: [*c]c_int) u32 {
    var vm = arg_vm;
    var range = arg_range;
    var length = arg_length;
    var step = arg_step;
    step.* = 0;
    if ((range.*.from == @as(f64, @floatFromInt(length.*))) and (range.*.to == (if (@as(c_int, @intFromBool(range.*.isInclusive)) != 0) -1.0 else @as(f64, @floatFromInt(length.*))))) {
        length.* = 0;
        return 0;
    }
    var from: u32 = validateIndexValue(vm, length.*, range.*.from, "Range start");
    if (from == @as(c_uint, 4294967295)) return @as(c_uint, 4294967295);
    var value: f64 = range.*.to;
    if (!validateIntValue(vm, value, "Range end")) return @as(c_uint, 4294967295);
    if (value < @as(f64, @floatFromInt(@as(c_int, 0)))) {
        value = @as(f64, @floatFromInt(length.*)) + value;
    }
    if (!range.*.isInclusive) {
        if (value == @as(f64, @floatFromInt(from))) {
            length.* = 0;
            return from;
        }
        value += @as(f64, @floatFromInt(if (value >= @as(f64, @floatFromInt(from))) -@as(c_int, 1) else @as(c_int, 1)));
    }
    if ((value < @as(f64, @floatFromInt(@as(c_int, 0)))) or (value >= @as(f64, @floatFromInt(length.*)))) {
        vm.*.fiber.*.@"error" = wrenNewStringLength(vm, "Range end out of bounds.", @sizeOf([25]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
        return @as(c_uint, 4294967295);
    }
    var to: u32 = @as(u32, @intFromFloat(value));
    length.* = @as(u32, @bitCast(abs(@as(c_int, @bitCast(from -% to))) + @as(c_int, 1)));
    step.* = if (from < to) @as(c_int, 1) else -@as(c_int, 1);
    return from;
}
pub fn validateIndexValue(arg_vm: [*c]WrenVM, arg_count: u32, arg_value: f64, arg_argName: [*c]const u8) callconv(.C) u32 {
    var vm = arg_vm;
    var count = arg_count;
    var value = arg_value;
    var argName = arg_argName;
    if (!validateIntValue(vm, value, argName)) return @as(c_uint, 4294967295);
    if (value < @as(f64, @floatFromInt(@as(c_int, 0)))) {
        value = @as(f64, @floatFromInt(count)) + value;
    }
    if ((value >= @as(f64, @floatFromInt(@as(c_int, 0)))) and (value < @as(f64, @floatFromInt(count)))) return @as(u32, @intFromFloat(value));
    vm.*.fiber.*.@"error" = wrenStringFormat(vm, "$ out of bounds.", argName);
    return @as(c_uint, 4294967295);
}
pub const _ISupper: c_int = 256;
pub const _ISlower: c_int = 512;
pub const _ISalpha: c_int = 1024;
pub const _ISdigit: c_int = 2048;
pub const _ISxdigit: c_int = 4096;
pub const _ISspace: c_int = 8192;
pub const _ISprint: c_int = 16384;
pub const _ISgraph: c_int = 32768;
pub const _ISblank: c_int = 1;
pub const _IScntrl: c_int = 2;
pub const _ISpunct: c_int = 4;
pub const _ISalnum: c_int = 8;
const enum_unnamed_10 = c_uint;
pub extern fn __ctype_b_loc() [*c][*c]const c_ushort;
pub extern fn __ctype_tolower_loc() [*c][*c]const __int32_t;
pub extern fn __ctype_toupper_loc() [*c][*c]const __int32_t;
pub extern fn isalnum(c_int) c_int;
pub extern fn isalpha(c_int) c_int;
pub extern fn iscntrl(c_int) c_int;
pub extern fn isdigit(c_int) c_int;
pub extern fn islower(c_int) c_int;
pub extern fn isgraph(c_int) c_int;
pub extern fn isprint(c_int) c_int;
pub extern fn ispunct(c_int) c_int;
pub extern fn isspace(c_int) c_int;
pub extern fn isupper(c_int) c_int;
pub extern fn isxdigit(c_int) c_int;
pub extern fn tolower(__c: c_int) c_int;
pub extern fn toupper(__c: c_int) c_int;
pub extern fn isblank(c_int) c_int;
pub extern fn isascii(__c: c_int) c_int;
pub extern fn toascii(__c: c_int) c_int;
pub extern fn _toupper(c_int) c_int;
pub extern fn _tolower(c_int) c_int;
pub extern fn isalnum_l(c_int, locale_t) c_int;
pub extern fn isalpha_l(c_int, locale_t) c_int;
pub extern fn iscntrl_l(c_int, locale_t) c_int;
pub extern fn isdigit_l(c_int, locale_t) c_int;
pub extern fn islower_l(c_int, locale_t) c_int;
pub extern fn isgraph_l(c_int, locale_t) c_int;
pub extern fn isprint_l(c_int, locale_t) c_int;
pub extern fn ispunct_l(c_int, locale_t) c_int;
pub extern fn isspace_l(c_int, locale_t) c_int;
pub extern fn isupper_l(c_int, locale_t) c_int;
pub extern fn isxdigit_l(c_int, locale_t) c_int;
pub extern fn isblank_l(c_int, locale_t) c_int;
pub extern fn __tolower_l(__c: c_int, __l: locale_t) c_int;
pub extern fn tolower_l(__c: c_int, __l: locale_t) c_int;
pub extern fn __toupper_l(__c: c_int, __l: locale_t) c_int;
pub extern fn toupper_l(__c: c_int, __l: locale_t) c_int;
pub extern fn __errno_location() [*c]c_int;
pub const struct_tm = extern struct {
    tm_sec: c_int,
    tm_min: c_int,
    tm_hour: c_int,
    tm_mday: c_int,
    tm_mon: c_int,
    tm_year: c_int,
    tm_wday: c_int,
    tm_yday: c_int,
    tm_isdst: c_int,
    tm_gmtoff: c_long,
    tm_zone: [*c]const u8,
};
pub const struct_itimerspec = extern struct {
    it_interval: struct_timespec,
    it_value: struct_timespec,
};
pub const struct_sigevent = opaque {};
pub extern fn clock() clock_t;
pub extern fn time(__timer: [*c]time_t) time_t;
pub extern fn difftime(__time1: time_t, __time0: time_t) f64;
pub extern fn mktime(__tp: [*c]struct_tm) time_t;
pub extern fn strftime(noalias __s: [*c]u8, __maxsize: usize, noalias __format: [*c]const u8, noalias __tp: [*c]const struct_tm) usize;
pub extern fn strftime_l(noalias __s: [*c]u8, __maxsize: usize, noalias __format: [*c]const u8, noalias __tp: [*c]const struct_tm, __loc: locale_t) usize;
pub extern fn gmtime(__timer: [*c]const time_t) [*c]struct_tm;
pub extern fn localtime(__timer: [*c]const time_t) [*c]struct_tm;
pub extern fn gmtime_r(noalias __timer: [*c]const time_t, noalias __tp: [*c]struct_tm) [*c]struct_tm;
pub extern fn localtime_r(noalias __timer: [*c]const time_t, noalias __tp: [*c]struct_tm) [*c]struct_tm;
pub extern fn asctime(__tp: [*c]const struct_tm) [*c]u8;
pub extern fn ctime(__timer: [*c]const time_t) [*c]u8;
pub extern fn asctime_r(noalias __tp: [*c]const struct_tm, noalias __buf: [*c]u8) [*c]u8;
pub extern fn ctime_r(noalias __timer: [*c]const time_t, noalias __buf: [*c]u8) [*c]u8;
pub extern var __tzname: [2][*c]u8;
pub extern var __daylight: c_int;
pub extern var __timezone: c_long;
pub extern var tzname: [2][*c]u8;
pub extern fn tzset() void;
pub extern var daylight: c_int;
pub extern var timezone: c_long;
pub extern fn timegm(__tp: [*c]struct_tm) time_t;
pub extern fn timelocal(__tp: [*c]struct_tm) time_t;
pub extern fn dysize(__year: c_int) c_int;
pub extern fn nanosleep(__requested_time: [*c]const struct_timespec, __remaining: [*c]struct_timespec) c_int;
pub extern fn clock_getres(__clock_id: clockid_t, __res: [*c]struct_timespec) c_int;
pub extern fn clock_gettime(__clock_id: clockid_t, __tp: [*c]struct_timespec) c_int;
pub extern fn clock_settime(__clock_id: clockid_t, __tp: [*c]const struct_timespec) c_int;
pub extern fn clock_nanosleep(__clock_id: clockid_t, __flags: c_int, __req: [*c]const struct_timespec, __rem: [*c]struct_timespec) c_int;
pub extern fn clock_getcpuclockid(__pid: pid_t, __clock_id: [*c]clockid_t) c_int;
pub extern fn timer_create(__clock_id: clockid_t, noalias __evp: ?*struct_sigevent, noalias __timerid: [*c]timer_t) c_int;
pub extern fn timer_delete(__timerid: timer_t) c_int;
pub extern fn timer_settime(__timerid: timer_t, __flags: c_int, noalias __value: [*c]const struct_itimerspec, noalias __ovalue: [*c]struct_itimerspec) c_int;
pub extern fn timer_gettime(__timerid: timer_t, __value: [*c]struct_itimerspec) c_int;
pub extern fn timer_getoverrun(__timerid: timer_t) c_int;
pub extern fn timespec_get(__ts: [*c]struct_timespec, __base: c_int) c_int;
pub export fn wrenInitializeCore(arg_vm: [*c]WrenVM) void {
    var vm = arg_vm;
    var coreModule: [*c]ObjModule = wrenNewModule(vm, null);
    wrenPushRoot(vm, @as([*c]Obj, @ptrCast(@alignCast(coreModule))));
    wrenMapSet(vm, vm.*.modules, @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1)))))), wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(coreModule)))));
    wrenPopRoot(vm);
    vm.*.objectClass = defineClass(vm, coreModule, "Object");
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "!", strlen("!"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_object_not;
        wrenBindMethod(vm, vm.*.objectClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "==(_)", strlen("==(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_object_eqeq;
        wrenBindMethod(vm, vm.*.objectClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "!=(_)", strlen("!=(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_object_bangeq;
        wrenBindMethod(vm, vm.*.objectClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "is(_)", strlen("is(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_object_is;
        wrenBindMethod(vm, vm.*.objectClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "toString", strlen("toString"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_object_toString;
        wrenBindMethod(vm, vm.*.objectClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "type", strlen("type"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_object_type;
        wrenBindMethod(vm, vm.*.objectClass, symbol, method_1);
        if (!false) break;
    }
    vm.*.classClass = defineClass(vm, coreModule, "Class");
    wrenBindSuperclass(vm, vm.*.classClass, vm.*.objectClass);
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "name", strlen("name"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_class_name;
        wrenBindMethod(vm, vm.*.classClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "supertype", strlen("supertype"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_class_supertype;
        wrenBindMethod(vm, vm.*.classClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "toString", strlen("toString"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_class_toString;
        wrenBindMethod(vm, vm.*.classClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "attributes", strlen("attributes"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_class_attributes;
        wrenBindMethod(vm, vm.*.classClass, symbol, method_1);
        if (!false) break;
    }
    var objectMetaclass: [*c]ObjClass = defineClass(vm, coreModule, "Object metaclass");
    vm.*.objectClass.*.obj.classObj = objectMetaclass;
    objectMetaclass.*.obj.classObj = vm.*.classClass;
    vm.*.classClass.*.obj.classObj = vm.*.classClass;
    wrenBindSuperclass(vm, objectMetaclass, vm.*.classClass);
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "same(_,_)", strlen("same(_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_object_same;
        wrenBindMethod(vm, objectMetaclass, symbol, method_1);
        if (!false) break;
    }
    _ = wrenInterpret(vm, null, coreModuleSource);
    vm.*.boolClass = @as([*c]ObjClass, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(wrenFindVariable(vm, coreModule, "Bool") & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "toString", strlen("toString"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_bool_toString;
        wrenBindMethod(vm, vm.*.boolClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "!", strlen("!"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_bool_not;
        wrenBindMethod(vm, vm.*.boolClass, symbol, method_1);
        if (!false) break;
    }
    vm.*.fiberClass = @as([*c]ObjClass, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(wrenFindVariable(vm, coreModule, "Fiber") & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "new(_)", strlen("new(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_fiber_new;
        wrenBindMethod(vm, vm.*.fiberClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "abort(_)", strlen("abort(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_fiber_abort;
        wrenBindMethod(vm, vm.*.fiberClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "current", strlen("current"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_fiber_current;
        wrenBindMethod(vm, vm.*.fiberClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "suspend()", strlen("suspend()"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_fiber_suspend;
        wrenBindMethod(vm, vm.*.fiberClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "yield()", strlen("yield()"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_fiber_yield;
        wrenBindMethod(vm, vm.*.fiberClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "yield(_)", strlen("yield(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_fiber_yield1;
        wrenBindMethod(vm, vm.*.fiberClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "call()", strlen("call()"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_fiber_call;
        wrenBindMethod(vm, vm.*.fiberClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "call(_)", strlen("call(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_fiber_call1;
        wrenBindMethod(vm, vm.*.fiberClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "error", strlen("error"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_fiber_error;
        wrenBindMethod(vm, vm.*.fiberClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "isDone", strlen("isDone"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_fiber_isDone;
        wrenBindMethod(vm, vm.*.fiberClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "transfer()", strlen("transfer()"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_fiber_transfer;
        wrenBindMethod(vm, vm.*.fiberClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "transfer(_)", strlen("transfer(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_fiber_transfer1;
        wrenBindMethod(vm, vm.*.fiberClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "transferError(_)", strlen("transferError(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_fiber_transferError;
        wrenBindMethod(vm, vm.*.fiberClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "try()", strlen("try()"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_fiber_try;
        wrenBindMethod(vm, vm.*.fiberClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "try(_)", strlen("try(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_fiber_try1;
        wrenBindMethod(vm, vm.*.fiberClass, symbol, method_1);
        if (!false) break;
    }
    vm.*.fnClass = @as([*c]ObjClass, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(wrenFindVariable(vm, coreModule, "Fn") & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "new(_)", strlen("new(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_fn_new;
        wrenBindMethod(vm, vm.*.fnClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "arity", strlen("arity"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_fn_arity;
        wrenBindMethod(vm, vm.*.fnClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "call()", strlen("call()"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_FUNCTION_CALL));
        method_1.as.primitive = &prim_fn_call0;
        wrenBindMethod(vm, vm.*.fnClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "call(_)", strlen("call(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_FUNCTION_CALL));
        method_1.as.primitive = &prim_fn_call1;
        wrenBindMethod(vm, vm.*.fnClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "call(_,_)", strlen("call(_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_FUNCTION_CALL));
        method_1.as.primitive = &prim_fn_call2;
        wrenBindMethod(vm, vm.*.fnClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "call(_,_,_)", strlen("call(_,_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_FUNCTION_CALL));
        method_1.as.primitive = &prim_fn_call3;
        wrenBindMethod(vm, vm.*.fnClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "call(_,_,_,_)", strlen("call(_,_,_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_FUNCTION_CALL));
        method_1.as.primitive = &prim_fn_call4;
        wrenBindMethod(vm, vm.*.fnClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "call(_,_,_,_,_)", strlen("call(_,_,_,_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_FUNCTION_CALL));
        method_1.as.primitive = &prim_fn_call5;
        wrenBindMethod(vm, vm.*.fnClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "call(_,_,_,_,_,_)", strlen("call(_,_,_,_,_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_FUNCTION_CALL));
        method_1.as.primitive = &prim_fn_call6;
        wrenBindMethod(vm, vm.*.fnClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "call(_,_,_,_,_,_,_)", strlen("call(_,_,_,_,_,_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_FUNCTION_CALL));
        method_1.as.primitive = &prim_fn_call7;
        wrenBindMethod(vm, vm.*.fnClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "call(_,_,_,_,_,_,_,_)", strlen("call(_,_,_,_,_,_,_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_FUNCTION_CALL));
        method_1.as.primitive = &prim_fn_call8;
        wrenBindMethod(vm, vm.*.fnClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "call(_,_,_,_,_,_,_,_,_)", strlen("call(_,_,_,_,_,_,_,_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_FUNCTION_CALL));
        method_1.as.primitive = &prim_fn_call9;
        wrenBindMethod(vm, vm.*.fnClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "call(_,_,_,_,_,_,_,_,_,_)", strlen("call(_,_,_,_,_,_,_,_,_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_FUNCTION_CALL));
        method_1.as.primitive = &prim_fn_call10;
        wrenBindMethod(vm, vm.*.fnClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "call(_,_,_,_,_,_,_,_,_,_,_)", strlen("call(_,_,_,_,_,_,_,_,_,_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_FUNCTION_CALL));
        method_1.as.primitive = &prim_fn_call11;
        wrenBindMethod(vm, vm.*.fnClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "call(_,_,_,_,_,_,_,_,_,_,_,_)", strlen("call(_,_,_,_,_,_,_,_,_,_,_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_FUNCTION_CALL));
        method_1.as.primitive = &prim_fn_call12;
        wrenBindMethod(vm, vm.*.fnClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "call(_,_,_,_,_,_,_,_,_,_,_,_,_)", strlen("call(_,_,_,_,_,_,_,_,_,_,_,_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_FUNCTION_CALL));
        method_1.as.primitive = &prim_fn_call13;
        wrenBindMethod(vm, vm.*.fnClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "call(_,_,_,_,_,_,_,_,_,_,_,_,_,_)", strlen("call(_,_,_,_,_,_,_,_,_,_,_,_,_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_FUNCTION_CALL));
        method_1.as.primitive = &prim_fn_call14;
        wrenBindMethod(vm, vm.*.fnClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "call(_,_,_,_,_,_,_,_,_,_,_,_,_,_,_)", strlen("call(_,_,_,_,_,_,_,_,_,_,_,_,_,_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_FUNCTION_CALL));
        method_1.as.primitive = &prim_fn_call15;
        wrenBindMethod(vm, vm.*.fnClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "call(_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_)", strlen("call(_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_FUNCTION_CALL));
        method_1.as.primitive = &prim_fn_call16;
        wrenBindMethod(vm, vm.*.fnClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "toString", strlen("toString"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_fn_toString;
        wrenBindMethod(vm, vm.*.fnClass, symbol, method_1);
        if (!false) break;
    }
    vm.*.nullClass = @as([*c]ObjClass, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(wrenFindVariable(vm, coreModule, "Null") & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "!", strlen("!"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_null_not;
        wrenBindMethod(vm, vm.*.nullClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "toString", strlen("toString"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_null_toString;
        wrenBindMethod(vm, vm.*.nullClass, symbol, method_1);
        if (!false) break;
    }
    vm.*.numClass = @as([*c]ObjClass, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(wrenFindVariable(vm, coreModule, "Num") & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "fromString(_)", strlen("fromString(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_fromString;
        wrenBindMethod(vm, vm.*.numClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "infinity", strlen("infinity"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_infinity;
        wrenBindMethod(vm, vm.*.numClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "nan", strlen("nan"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_nan;
        wrenBindMethod(vm, vm.*.numClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "pi", strlen("pi"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_pi;
        wrenBindMethod(vm, vm.*.numClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "tau", strlen("tau"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_tau;
        wrenBindMethod(vm, vm.*.numClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "largest", strlen("largest"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_largest;
        wrenBindMethod(vm, vm.*.numClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "smallest", strlen("smallest"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_smallest;
        wrenBindMethod(vm, vm.*.numClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "maxSafeInteger", strlen("maxSafeInteger"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_maxSafeInteger;
        wrenBindMethod(vm, vm.*.numClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "minSafeInteger", strlen("minSafeInteger"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_minSafeInteger;
        wrenBindMethod(vm, vm.*.numClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "-(_)", strlen("-(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_minus;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "+(_)", strlen("+(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_plus;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "*(_)", strlen("*(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_multiply;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "/(_)", strlen("/(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_divide;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "<(_)", strlen("<(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_lt;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, ">(_)", strlen(">(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_gt;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "<=(_)", strlen("<=(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_lte;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, ">=(_)", strlen(">=(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_gte;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "&(_)", strlen("&(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_bitwiseAnd;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "|(_)", strlen("|(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_bitwiseOr;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "^(_)", strlen("^(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_bitwiseXor;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "<<(_)", strlen("<<(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_bitwiseLeftShift;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, ">>(_)", strlen(">>(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_bitwiseRightShift;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "abs", strlen("abs"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_abs;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "acos", strlen("acos"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_acos;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "asin", strlen("asin"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_asin;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "atan", strlen("atan"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_atan;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "cbrt", strlen("cbrt"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_cbrt;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "ceil", strlen("ceil"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_ceil;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "cos", strlen("cos"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_cos;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "floor", strlen("floor"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_floor;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "-", strlen("-"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_negate;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "round", strlen("round"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_round;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "min(_)", strlen("min(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_min;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "max(_)", strlen("max(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_max;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "clamp(_,_)", strlen("clamp(_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_clamp;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "sin", strlen("sin"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_sin;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "sqrt", strlen("sqrt"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_sqrt;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "tan", strlen("tan"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_tan;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "log", strlen("log"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_log;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "log2", strlen("log2"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_log2;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "exp", strlen("exp"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_exp;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "%(_)", strlen("%(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_mod;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "~", strlen("~"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_bitwiseNot;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "..(_)", strlen("..(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_dotDot;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "...(_)", strlen("...(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_dotDotDot;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "atan(_)", strlen("atan(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_atan2;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "pow(_)", strlen("pow(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_pow;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "fraction", strlen("fraction"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_fraction;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "isInfinity", strlen("isInfinity"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_isInfinity;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "isInteger", strlen("isInteger"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_isInteger;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "isNan", strlen("isNan"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_isNan;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "sign", strlen("sign"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_sign;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "toString", strlen("toString"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_toString;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "truncate", strlen("truncate"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_truncate;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "==(_)", strlen("==(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_eqeq;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "!=(_)", strlen("!=(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_num_bangeq;
        wrenBindMethod(vm, vm.*.numClass, symbol, method_1);
        if (!false) break;
    }
    vm.*.stringClass = @as([*c]ObjClass, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(wrenFindVariable(vm, coreModule, "String") & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "fromCodePoint(_)", strlen("fromCodePoint(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_string_fromCodePoint;
        wrenBindMethod(vm, vm.*.stringClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "fromByte(_)", strlen("fromByte(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_string_fromByte;
        wrenBindMethod(vm, vm.*.stringClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "+(_)", strlen("+(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_string_plus;
        wrenBindMethod(vm, vm.*.stringClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "[_]", strlen("[_]"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_string_subscript;
        wrenBindMethod(vm, vm.*.stringClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "byteAt_(_)", strlen("byteAt_(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_string_byteAt;
        wrenBindMethod(vm, vm.*.stringClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "byteCount_", strlen("byteCount_"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_string_byteCount;
        wrenBindMethod(vm, vm.*.stringClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "codePointAt_(_)", strlen("codePointAt_(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_string_codePointAt;
        wrenBindMethod(vm, vm.*.stringClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "contains(_)", strlen("contains(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_string_contains;
        wrenBindMethod(vm, vm.*.stringClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "endsWith(_)", strlen("endsWith(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_string_endsWith;
        wrenBindMethod(vm, vm.*.stringClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "indexOf(_)", strlen("indexOf(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_string_indexOf1;
        wrenBindMethod(vm, vm.*.stringClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "indexOf(_,_)", strlen("indexOf(_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_string_indexOf2;
        wrenBindMethod(vm, vm.*.stringClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "iterate(_)", strlen("iterate(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_string_iterate;
        wrenBindMethod(vm, vm.*.stringClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "iterateByte_(_)", strlen("iterateByte_(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_string_iterateByte;
        wrenBindMethod(vm, vm.*.stringClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "iteratorValue(_)", strlen("iteratorValue(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_string_iteratorValue;
        wrenBindMethod(vm, vm.*.stringClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "startsWith(_)", strlen("startsWith(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_string_startsWith;
        wrenBindMethod(vm, vm.*.stringClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "toString", strlen("toString"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_string_toString;
        wrenBindMethod(vm, vm.*.stringClass, symbol, method_1);
        if (!false) break;
    }
    vm.*.listClass = @as([*c]ObjClass, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(wrenFindVariable(vm, coreModule, "List") & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "filled(_,_)", strlen("filled(_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_list_filled;
        wrenBindMethod(vm, vm.*.listClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "new()", strlen("new()"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_list_new;
        wrenBindMethod(vm, vm.*.listClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "[_]", strlen("[_]"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_list_subscript;
        wrenBindMethod(vm, vm.*.listClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "[_]=(_)", strlen("[_]=(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_list_subscriptSetter;
        wrenBindMethod(vm, vm.*.listClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "add(_)", strlen("add(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_list_add;
        wrenBindMethod(vm, vm.*.listClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "addCore_(_)", strlen("addCore_(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_list_addCore;
        wrenBindMethod(vm, vm.*.listClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "clear()", strlen("clear()"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_list_clear;
        wrenBindMethod(vm, vm.*.listClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "count", strlen("count"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_list_count;
        wrenBindMethod(vm, vm.*.listClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "insert(_,_)", strlen("insert(_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_list_insert;
        wrenBindMethod(vm, vm.*.listClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "iterate(_)", strlen("iterate(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_list_iterate;
        wrenBindMethod(vm, vm.*.listClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "iteratorValue(_)", strlen("iteratorValue(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_list_iteratorValue;
        wrenBindMethod(vm, vm.*.listClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "removeAt(_)", strlen("removeAt(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_list_removeAt;
        wrenBindMethod(vm, vm.*.listClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "remove(_)", strlen("remove(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_list_removeValue;
        wrenBindMethod(vm, vm.*.listClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "indexOf(_)", strlen("indexOf(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_list_indexOf;
        wrenBindMethod(vm, vm.*.listClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "swap(_,_)", strlen("swap(_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_list_swap;
        wrenBindMethod(vm, vm.*.listClass, symbol, method_1);
        if (!false) break;
    }
    vm.*.mapClass = @as([*c]ObjClass, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(wrenFindVariable(vm, coreModule, "Map") & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "new()", strlen("new()"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_map_new;
        wrenBindMethod(vm, vm.*.mapClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "[_]", strlen("[_]"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_map_subscript;
        wrenBindMethod(vm, vm.*.mapClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "[_]=(_)", strlen("[_]=(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_map_subscriptSetter;
        wrenBindMethod(vm, vm.*.mapClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "addCore_(_,_)", strlen("addCore_(_,_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_map_addCore;
        wrenBindMethod(vm, vm.*.mapClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "clear()", strlen("clear()"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_map_clear;
        wrenBindMethod(vm, vm.*.mapClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "containsKey(_)", strlen("containsKey(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_map_containsKey;
        wrenBindMethod(vm, vm.*.mapClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "count", strlen("count"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_map_count;
        wrenBindMethod(vm, vm.*.mapClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "remove(_)", strlen("remove(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_map_remove;
        wrenBindMethod(vm, vm.*.mapClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "iterate(_)", strlen("iterate(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_map_iterate;
        wrenBindMethod(vm, vm.*.mapClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "keyIteratorValue_(_)", strlen("keyIteratorValue_(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_map_keyIteratorValue;
        wrenBindMethod(vm, vm.*.mapClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "valueIteratorValue_(_)", strlen("valueIteratorValue_(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_map_valueIteratorValue;
        wrenBindMethod(vm, vm.*.mapClass, symbol, method_1);
        if (!false) break;
    }
    vm.*.rangeClass = @as([*c]ObjClass, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(wrenFindVariable(vm, coreModule, "Range") & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "from", strlen("from"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_range_from;
        wrenBindMethod(vm, vm.*.rangeClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "to", strlen("to"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_range_to;
        wrenBindMethod(vm, vm.*.rangeClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "min", strlen("min"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_range_min;
        wrenBindMethod(vm, vm.*.rangeClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "max", strlen("max"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_range_max;
        wrenBindMethod(vm, vm.*.rangeClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "isInclusive", strlen("isInclusive"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_range_isInclusive;
        wrenBindMethod(vm, vm.*.rangeClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "iterate(_)", strlen("iterate(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_range_iterate;
        wrenBindMethod(vm, vm.*.rangeClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "iteratorValue(_)", strlen("iteratorValue(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_range_iteratorValue;
        wrenBindMethod(vm, vm.*.rangeClass, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "toString", strlen("toString"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_range_toString;
        wrenBindMethod(vm, vm.*.rangeClass, symbol, method_1);
        if (!false) break;
    }
    var systemClass: [*c]ObjClass = @as([*c]ObjClass, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(wrenFindVariable(vm, coreModule, "System") & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "clock", strlen("clock"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_system_clock;
        wrenBindMethod(vm, systemClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "gc()", strlen("gc()"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_system_gc;
        wrenBindMethod(vm, systemClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    while (true) {
        var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "writeString_(_)", strlen("writeString_(_)"));
        var method_1: Method = undefined;
        method_1.type = @as(c_uint, @bitCast(METHOD_PRIMITIVE));
        method_1.as.primitive = &prim_system_writeString;
        wrenBindMethod(vm, systemClass.*.obj.classObj, symbol, method_1);
        if (!false) break;
    }
    {
        var obj: [*c]Obj = vm.*.first;
        while (obj != @as([*c]Obj, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (obj = obj.*.next) {
            if (obj.*.type == @as(c_uint, @bitCast(OBJ_STRING))) {
                obj.*.classObj = vm.*.stringClass;
            }
        }
    }
}
pub var coreModuleSource: [*c]const u8 = "class Bool {}\nclass Fiber {}\nclass Fn {}\nclass Null {}\nclass Num {}\n\nclass Sequence {\n  all(f) {\n    var result = true\n    for (element in this) {\n      result = f.call(element)\n      if (!result) return result\n    }\n    return result\n  }\n\n  any(f) {\n    var result = false\n    for (element in this) {\n      result = f.call(element)\n      if (result) return result\n    }\n    return result\n  }\n\n  contains(element) {\n    for (item in this) {\n      if (element == item) return true\n    }\n    return false\n  }\n\n  count {\n    var result = 0\n    for (element in this) {\n      result = result + 1\n    }\n    return result\n  }\n\n  count(f) {\n    var result = 0\n    for (element in this) {\n      if (f.call(element)) result = result + 1\n    }\n    return result\n  }\n\n  each(f) {\n    for (element in this) {\n      f.call(element)\n    }\n  }\n\n  isEmpty { iterate(null) ? false : true }\n\n  map(transformation) { MapSequence.new(this, transformation) }\n\n  skip(count) {\n    if (!(count is Num) || !count.isInteger || count < 0) {\n      Fiber.abort(\"Count must be a non-negative integer.\")\n    }\n\n    return SkipSequence.new(this, count)\n  }\n\n  take(count) {\n    if (!(count is Num) || !count.isInteger || count < 0) {\n      Fiber.abort(\"Count must be a non-negative integer.\")\n    }\n\n    return TakeSequence.new(this, count)\n  }\n\n  where(predicate) { WhereSequence.new(this, predicate) }\n\n  reduce(acc, f) {\n    for (element in this) {\n      acc = f.call(acc, element)\n    }\n    return acc\n  }\n\n  reduce(f) {\n    var iter = iterate(null)\n    if (!iter) Fiber.abort(\"Can't reduce an empty sequence.\")\n\n    // Seed with the first element.\n    var result = iteratorValue(iter)\n    while (iter = iterate(iter)) {\n      result = f.call(result, iteratorValue(iter))\n    }\n\n    return result\n  }\n\n  join() { join(\"\") }\n\n  join(sep) {\n    var first = true\n    var result = \"\"\n\n    for (element in this) {\n      if (!first) result = result + sep\n      first = false\n      result = result + element.toString\n    }\n\n    return result\n  }\n\n  toList {\n    var result = List.new()\n    for (element in this) {\n      result.add(element)\n    }\n    return result\n  }\n}\n\nclass MapSequence is Sequence {\n  construct new(sequence, fn) {\n    _sequence = sequence\n    _fn = fn\n  }\n\n  iterate(iterator) { _sequence.iterate(iterator) }\n  iteratorValue(iterator) { _fn.call(_sequence.iteratorValue(iterator)) }\n}\n\nclass SkipSequence is Sequence {\n  construct new(sequence, count) {\n    _sequence = sequence\n    _count = count\n  }\n\n  iterate(iterator) {\n    if (iterator) {\n      return _sequence.iterate(iterator)\n    } else {\n      iterator = _sequence.iterate(iterator)\n      var count = _count\n      while (count > 0 && iterator) {\n        iterator = _sequence.iterate(iterator)\n        count = count - 1\n      }\n      return iterator\n    }\n  }\n\n  iteratorValue(iterator) { _sequence.iteratorValue(iterator) }\n}\n\nclass TakeSequence is Sequence {\n  construct new(sequence, count) {\n    _sequence = sequence\n    _count = count\n  }\n\n  iterate(iterator) {\n    if (!iterator) _taken = 1 else _taken = _taken + 1\n    return _taken > _count ? null : _sequence.iterate(iterator)\n  }\n\n  iteratorValue(iterator) { _sequence.iteratorValue(iterator) }\n}\n\nclass WhereSequence is Sequence {\n  construct new(sequence, fn) {\n    _sequence = sequence\n    _fn = fn\n  }\n\n  iterate(iterator) {\n    while (iterator = _sequence.iterate(iterator)) {\n      if (_fn.call(_sequence.iteratorValue(iterator))) break\n    }\n    return iterator\n  }\n\n  iteratorValue(iterator) { _sequence.iteratorValue(iterator) }\n}\n\nclass String is Sequence {\n  bytes { StringByteSequence.new(this) }\n  codePoints { StringCodePointSequence.new(this) }\n\n  split(delimiter) {\n    if (!(delimiter is String) || delimiter.isEmpty) {\n      Fiber.abort(\"Delimiter must be a non-empty string.\")\n    }\n\n    var result = []\n\n    var last = 0\n    var index = 0\n\n    var delimSize = delimiter.byteCount_\n    var size = byteCount_\n\n    while (last < size && (index = indexOf(delimiter, last)) != -1) {\n      result.add(this[last...index])\n      last = index + delimSize\n    }\n\n    if (last < size) {\n      result.add(this[last..-1])\n    } else {\n      result.add(\"\")\n    }\n    return result\n  }\n\n  replace(from, to) {\n    if (!(from is String) || from.isEmpty) {\n      Fiber.abort(\"From must be a non-empty string.\")\n    } else if (!(to is String)) {\n      Fiber.abort(\"To must be a string.\")\n    }\n\n    var result = \"\"\n\n    var last = 0\n    var index = 0\n\n    var fromSize = from.byteCount_\n    var size = byteCount_\n\n    while (last < size && (index = indexOf(from, last)) != -1) {\n      result = result + this[last...index] + to\n      last = index + fromSize\n    }\n\n    if (last < size) result = result + this[last..-1]\n\n    return result\n  }\n\n  trim() { trim_(\"\\t\\r\\n \", true, true) }\n  trim(chars) { trim_(chars, true, true) }\n  trimEnd() { trim_(\"\\t\\r\\n \", false, true) }\n  trimEnd(chars) { trim_(chars, false, true) }\n  trimStart() { trim_(\"\\t\\r\\n \", true, false) }\n  trimStart(chars) { trim_(chars, true, false) }\n\n  trim_(chars, trimStart, trimEnd) {\n    if (!(chars is String)) {\n      Fiber.abort(\"Characters must be a string.\")\n    }\n\n    var codePoints = chars.codePoints.toList\n\n    var start\n    if (trimStart) {\n      while (start = iterate(start)) {\n        if (!codePoints.contains(codePointAt_(start))) break\n      }\n\n      if (start == false) return \"\"\n    } else {\n      start = 0\n    }\n\n    var end\n    if (trimEnd) {\n      end = byteCount_ - 1\n      while (end >= start) {\n        var codePoint = codePointAt_(end)\n        if (codePoint != -1 && !codePoints.contains(codePoint)) break\n        end = end - 1\n      }\n\n      if (end < start) return \"\"\n    } else {\n      end = -1\n    }\n\n    return this[start..end]\n  }\n\n  *(count) {\n    if (!(count is Num) || !count.isInteger || count < 0) {\n      Fiber.abort(\"Count must be a non-negative integer.\")\n    }\n\n    var result = \"\"\n    for (i in 0...count) {\n      result = result + this\n    }\n    return result\n  }\n}\n\nclass StringByteSequence is Sequence {\n  construct new(string) {\n    _string = string\n  }\n\n  [index] { _string.byteAt_(index) }\n  iterate(iterator) { _string.iterateByte_(iterator) }\n  iteratorValue(iterator) { _string.byteAt_(iterator) }\n\n  count { _string.byteCount_ }\n}\n\nclass StringCodePointSequence is Sequence {\n  construct new(string) {\n    _string = string\n  }\n\n  [index] { _string.codePointAt_(index) }\n  iterate(iterator) { _string.iterate(iterator) }\n  iteratorValue(iterator) { _string.codePointAt_(iterator) }\n\n  count { _string.count }\n}\n\nclass List is Sequence {\n  addAll(other) {\n    for (element in other) {\n      add(element)\n    }\n    return other\n  }\n\n  sort() { sort {|low, high| low < high } }\n\n  sort(comparer) {\n    if (!(comparer is Fn)) {\n      Fiber.abort(\"Comparer must be a function.\")\n    }\n    quicksort_(0, count - 1, comparer)\n    return this\n  }\n\n  quicksort_(low, high, comparer) {\n    if (low < high) {\n      var p = partition_(low, high, comparer)\n      quicksort_(low, p - 1, comparer)\n      quicksort_(p + 1, high, comparer)\n    }\n  }\n\n  partition_(low, high, comparer) {\n    var p = this[high]\n    var i = low - 1\n    for (j in low..(high-1)) {\n      if (comparer.call(this[j], p)) {  \n        i = i + 1\n        var t = this[i]\n        this[i] = this[j]\n        this[j] = t\n      }\n    }\n    var t = this[i+1]\n    this[i+1] = this[high]\n    this[high] = t\n    return i+1\n  }\n\n  toString { \"[%(join(\", \"))]\" }\n\n  +(other) {\n    var result = this[0..-1]\n    for (element in other) {\n      result.add(element)\n    }\n    return result\n  }\n\n  *(count) {\n    if (!(count is Num) || !count.isInteger || count < 0) {\n      Fiber.abort(\"Count must be a non-negative integer.\")\n    }\n\n    var result = []\n    for (i in 0...count) {\n      result.addAll(this)\n    }\n    return result\n  }\n}\n\nclass Map is Sequence {\n  keys { MapKeySequence.new(this) }\n  values { MapValueSequence.new(this) }\n\n  toString {\n    var first = true\n    var result = \"{\"\n\n    for (key in keys) {\n      if (!first) result = result + \", \"\n      first = false\n      result = result + \"%(key): %(this[key])\"\n    }\n\n    return result + \"}\"\n  }\n\n  iteratorValue(iterator) {\n    return MapEntry.new(\n        keyIteratorValue_(iterator),\n        valueIteratorValue_(iterator))\n  }\n}\n\nclass MapEntry {\n  construct new(key, value) {\n    _key = key\n    _value = value\n  }\n\n  key { _key }\n  value { _value }\n\n  toString { \"%(_key):%(_value)\" }\n}\n\nclass MapKeySequence is Sequence {\n  construct new(map) {\n    _map = map\n  }\n\n  iterate(n) { _map.iterate(n) }\n  iteratorValue(iterator) { _map.keyIteratorValue_(iterator) }\n}\n\nclass MapValueSequence is Sequence {\n  construct new(map) {\n    _map = map\n  }\n\n  iterate(n) { _map.iterate(n) }\n  iteratorValue(iterator) { _map.valueIteratorValue_(iterator) }\n}\n\nclass Range is Sequence {}\n\nclass System {\n  static print() {\n    writeString_(\"\\n\")\n  }\n\n  static print(obj) {\n    writeObject_(obj)\n    writeString_(\"\\n\")\n    return obj\n  }\n\n  static printAll(sequence) {\n    for (object in sequence) writeObject_(object)\n    writeString_(\"\\n\")\n  }\n\n  static write(obj) {\n    writeObject_(obj)\n    return obj\n  }\n\n  static writeAll(sequence) {\n    for (object in sequence) writeObject_(object)\n  }\n\n  static writeObject_(obj) {\n    var string = obj.toString\n    if (string is String) {\n      writeString_(string)\n    } else {\n      writeString_(\"[invalid toString]\")\n    }\n  }\n}\n\nclass ClassAttributes {\n  self { _attributes }\n  methods { _methods }\n  construct new(attributes, methods) {\n    _attributes = attributes\n    _methods = methods\n  }\n  toString { \"attributes:%(_attributes) methods:%(_methods)\" }\n}\n";
pub fn prim_bool_not(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = if (!(args[@as(c_uint, @intCast(@as(c_int, 0)))] == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))))) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_bool_toString(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (args[@as(c_uint, @intCast(@as(c_int, 0)))] == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3))))))) {
        while (true) {
            args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNewStringLength(vm, "true", @sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
            return @as(c_int, 1) != 0;
        }
    } else {
        while (true) {
            args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNewStringLength(vm, "false", @sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
            return @as(c_int, 1) != 0;
        }
    }
    return false;
}
pub fn prim_class_name(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(@as([*c]ObjClass, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.name))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_class_supertype(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    var classObj: [*c]ObjClass = @as([*c]ObjClass, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    if (classObj.*.superclass == @as([*c]ObjClass, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
        return @as(c_int, 1) != 0;
    };
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(classObj.*.superclass))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_class_toString(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(@as([*c]ObjClass, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.name))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_class_attributes(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as([*c]ObjClass, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.attributes;
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_fiber_new(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateFn(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Argument")) return @as(c_int, 0) != 0;
    var closure: [*c]ObjClosure = @as([*c]ObjClosure, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 1)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    if (closure.*.@"fn".*.arity > @as(c_int, 1)) {
        while (true) {
            vm.*.fiber.*.@"error" = wrenNewStringLength(vm, "Function cannot take more than one parameter.", @sizeOf([46]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
            return @as(c_int, 0) != 0;
        }
    }
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(wrenNewFiber(vm, closure)))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_fiber_abort(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    vm.*.fiber.*.@"error" = args[@as(c_uint, @intCast(@as(c_int, 1)))];
    return args[@as(c_uint, @intCast(@as(c_int, 1)))] == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
}
pub fn runFiber(arg_vm: [*c]WrenVM, arg_fiber: [*c]ObjFiber, arg_args: [*c]Value, arg_isCall: bool, arg_hasValue: bool, arg_verb: [*c]const u8) callconv(.C) bool {
    var vm = arg_vm;
    var fiber = arg_fiber;
    var args = arg_args;
    var isCall = arg_isCall;
    var hasValue = arg_hasValue;
    var verb = arg_verb;
    if (wrenHasError(fiber)) {
        while (true) {
            vm.*.fiber.*.@"error" = wrenStringFormat(vm, "Cannot $ an aborted fiber.", verb);
            return @as(c_int, 0) != 0;
        }
    }
    if (isCall) {
        if (fiber.*.caller != @as([*c]struct_sObjFiber, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) while (true) {
            vm.*.fiber.*.@"error" = wrenNewStringLength(vm, "Fiber has already been called.", @sizeOf([31]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
            return @as(c_int, 0) != 0;
        };
        if (fiber.*.state == @as(c_uint, @bitCast(FIBER_ROOT))) while (true) {
            vm.*.fiber.*.@"error" = wrenNewStringLength(vm, "Cannot call root fiber.", @sizeOf([24]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
            return @as(c_int, 0) != 0;
        };
        fiber.*.caller = vm.*.fiber;
    }
    if (fiber.*.numFrames == @as(c_int, 0)) {
        while (true) {
            vm.*.fiber.*.@"error" = wrenStringFormat(vm, "Cannot $ a finished fiber.", verb);
            return @as(c_int, 0) != 0;
        }
    }
    if (hasValue) {
        vm.*.fiber.*.stackTop -= 1;
    }
    if ((fiber.*.numFrames == @as(c_int, 1)) and (fiber.*.frames[@as(c_uint, @intCast(@as(c_int, 0)))].ip == fiber.*.frames[@as(c_uint, @intCast(@as(c_int, 0)))].closure.*.@"fn".*.code.data)) {
        if (fiber.*.frames[@as(c_uint, @intCast(@as(c_int, 0)))].closure.*.@"fn".*.arity == @as(c_int, 1)) {
            fiber.*.stackTop[@as(c_uint, @intCast(@as(c_int, 0)))] = if (@as(c_int, @intFromBool(hasValue)) != 0) args[@as(c_uint, @intCast(@as(c_int, 1)))] else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
            fiber.*.stackTop += 1;
        }
    } else {
        (blk: {
            const tmp = -@as(c_int, 1);
            if (tmp >= 0) break :blk fiber.*.stackTop + @as(usize, @intCast(tmp)) else break :blk fiber.*.stackTop - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).* = if (@as(c_int, @intFromBool(hasValue)) != 0) args[@as(c_uint, @intCast(@as(c_int, 1)))] else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
    }
    vm.*.fiber = fiber;
    return @as(c_int, 0) != 0;
}
pub fn prim_fiber_call(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    return runFiber(vm, @as([*c]ObjFiber, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))), args, @as(c_int, 1) != 0, @as(c_int, 0) != 0, "call");
}
pub fn prim_fiber_call1(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    return runFiber(vm, @as([*c]ObjFiber, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))), args, @as(c_int, 1) != 0, @as(c_int, 1) != 0, "call");
}
pub fn prim_fiber_current(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(vm.*.fiber))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_fiber_error(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as([*c]ObjFiber, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.@"error";
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_fiber_isDone(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    var runFiber_1: [*c]ObjFiber = @as([*c]ObjFiber, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = if ((runFiber_1.*.numFrames == @as(c_int, 0)) or (@as(c_int, @intFromBool(wrenHasError(runFiber_1))) != 0)) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_fiber_suspend(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    _ = @TypeOf(args);
    vm.*.fiber = null;
    vm.*.apiStack = null;
    return @as(c_int, 0) != 0;
}
pub fn prim_fiber_transfer(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    return runFiber(vm, @as([*c]ObjFiber, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))), args, @as(c_int, 0) != 0, @as(c_int, 0) != 0, "transfer to");
}
pub fn prim_fiber_transfer1(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    return runFiber(vm, @as([*c]ObjFiber, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))), args, @as(c_int, 0) != 0, @as(c_int, 1) != 0, "transfer to");
}
pub fn prim_fiber_transferError(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    _ = runFiber(vm, @as([*c]ObjFiber, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))), args, @as(c_int, 0) != 0, @as(c_int, 1) != 0, "transfer to");
    vm.*.fiber.*.@"error" = args[@as(c_uint, @intCast(@as(c_int, 1)))];
    return @as(c_int, 0) != 0;
}
pub fn prim_fiber_try(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    _ = runFiber(vm, @as([*c]ObjFiber, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))), args, @as(c_int, 1) != 0, @as(c_int, 0) != 0, "try");
    if (!wrenHasError(vm.*.fiber)) {
        vm.*.fiber.*.state = @as(c_uint, @bitCast(FIBER_TRY));
    }
    return @as(c_int, 0) != 0;
}
pub fn prim_fiber_try1(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    _ = runFiber(vm, @as([*c]ObjFiber, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))), args, @as(c_int, 1) != 0, @as(c_int, 1) != 0, "try");
    if (!wrenHasError(vm.*.fiber)) {
        vm.*.fiber.*.state = @as(c_uint, @bitCast(FIBER_TRY));
    }
    return @as(c_int, 0) != 0;
}
pub fn prim_fiber_yield(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    _ = @TypeOf(args);
    var current: [*c]ObjFiber = vm.*.fiber;
    vm.*.fiber = current.*.caller;
    current.*.caller = null;
    current.*.state = @as(c_uint, @bitCast(FIBER_OTHER));
    if (vm.*.fiber != @as([*c]ObjFiber, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        (blk: {
            const tmp = -@as(c_int, 1);
            if (tmp >= 0) break :blk vm.*.fiber.*.stackTop + @as(usize, @intCast(tmp)) else break :blk vm.*.fiber.*.stackTop - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).* = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
    }
    return @as(c_int, 0) != 0;
}
pub fn prim_fiber_yield1(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var current: [*c]ObjFiber = vm.*.fiber;
    vm.*.fiber = current.*.caller;
    current.*.caller = null;
    current.*.state = @as(c_uint, @bitCast(FIBER_OTHER));
    if (vm.*.fiber != @as([*c]ObjFiber, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        (blk: {
            const tmp = -@as(c_int, 1);
            if (tmp >= 0) break :blk vm.*.fiber.*.stackTop + @as(usize, @intCast(tmp)) else break :blk vm.*.fiber.*.stackTop - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).* = args[@as(c_uint, @intCast(@as(c_int, 1)))];
        current.*.stackTop -= 1;
    }
    return @as(c_int, 0) != 0;
}
pub fn prim_fn_new(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateFn(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Argument")) return @as(c_int, 0) != 0;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = args[@as(c_uint, @intCast(@as(c_int, 1)))];
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_fn_arity(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(@as([*c]ObjClosure, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.@"fn".*.arity)));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn call_fn(arg_vm: [*c]WrenVM, arg_args: [*c]Value, arg_numArgs: c_int) callconv(.C) void {
    var vm = arg_vm;
    var args = arg_args;
    var numArgs = arg_numArgs;
    wrenCallFunction(vm, vm.*.fiber, @as([*c]ObjClosure, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))), numArgs + @as(c_int, 1));
}
pub fn prim_fn_call0(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    call_fn(vm, args, @as(c_int, 0));
    return @as(c_int, 0) != 0;
}
pub fn prim_fn_call1(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    call_fn(vm, args, @as(c_int, 1));
    return @as(c_int, 0) != 0;
}
pub fn prim_fn_call2(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    call_fn(vm, args, @as(c_int, 2));
    return @as(c_int, 0) != 0;
}
pub fn prim_fn_call3(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    call_fn(vm, args, @as(c_int, 3));
    return @as(c_int, 0) != 0;
}
pub fn prim_fn_call4(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    call_fn(vm, args, @as(c_int, 4));
    return @as(c_int, 0) != 0;
}
pub fn prim_fn_call5(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    call_fn(vm, args, @as(c_int, 5));
    return @as(c_int, 0) != 0;
}
pub fn prim_fn_call6(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    call_fn(vm, args, @as(c_int, 6));
    return @as(c_int, 0) != 0;
}
pub fn prim_fn_call7(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    call_fn(vm, args, @as(c_int, 7));
    return @as(c_int, 0) != 0;
}
pub fn prim_fn_call8(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    call_fn(vm, args, @as(c_int, 8));
    return @as(c_int, 0) != 0;
}
pub fn prim_fn_call9(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    call_fn(vm, args, @as(c_int, 9));
    return @as(c_int, 0) != 0;
}
pub fn prim_fn_call10(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    call_fn(vm, args, @as(c_int, 10));
    return @as(c_int, 0) != 0;
}
pub fn prim_fn_call11(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    call_fn(vm, args, @as(c_int, 11));
    return @as(c_int, 0) != 0;
}
pub fn prim_fn_call12(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    call_fn(vm, args, @as(c_int, 12));
    return @as(c_int, 0) != 0;
}
pub fn prim_fn_call13(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    call_fn(vm, args, @as(c_int, 13));
    return @as(c_int, 0) != 0;
}
pub fn prim_fn_call14(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    call_fn(vm, args, @as(c_int, 14));
    return @as(c_int, 0) != 0;
}
pub fn prim_fn_call15(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    call_fn(vm, args, @as(c_int, 15));
    return @as(c_int, 0) != 0;
}
pub fn prim_fn_call16(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    call_fn(vm, args, @as(c_int, 16));
    return @as(c_int, 0) != 0;
}
pub fn prim_fn_toString(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNewStringLength(vm, "<fn>", @sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_list_filled(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateInt(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Size")) return @as(c_int, 0) != 0;
    if (wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))]) < @as(f64, @floatFromInt(@as(c_int, 0)))) while (true) {
        vm.*.fiber.*.@"error" = wrenNewStringLength(vm, "Size cannot be negative.", @sizeOf([25]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
        return @as(c_int, 0) != 0;
    };
    var size: u32 = @as(u32, @intFromFloat(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))])));
    var list_1: [*c]ObjList = wrenNewList(vm, size);
    {
        var i: u32 = 0;
        while (i < size) : (i +%= 1) {
            list_1.*.elements.data[i] = args[@as(c_uint, @intCast(@as(c_int, 2)))];
        }
    }
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(list_1))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_list_new(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(wrenNewList(vm, @as(u32, @bitCast(@as(c_int, 0))))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_list_add(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    wrenValueBufferWrite(vm, &@as([*c]ObjList, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.elements, args[@as(c_uint, @intCast(@as(c_int, 1)))]);
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = args[@as(c_uint, @intCast(@as(c_int, 1)))];
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_list_addCore(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    wrenValueBufferWrite(vm, &@as([*c]ObjList, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.elements, args[@as(c_uint, @intCast(@as(c_int, 1)))]);
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = args[@as(c_uint, @intCast(@as(c_int, 0)))];
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_list_clear(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    wrenValueBufferClear(vm, &@as([*c]ObjList, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.elements);
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_list_count(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(@as([*c]ObjList, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.elements.count)));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_list_insert(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var list_1: [*c]ObjList = @as([*c]ObjList, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var index_2: u32 = validateIndex(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], @as(u32, @bitCast(list_1.*.elements.count + @as(c_int, 1))), "Index");
    if (index_2 == @as(c_uint, 4294967295)) return @as(c_int, 0) != 0;
    wrenListInsert(vm, list_1, args[@as(c_uint, @intCast(@as(c_int, 2)))], index_2);
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = args[@as(c_uint, @intCast(@as(c_int, 2)))];
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_list_iterate(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var list_1: [*c]ObjList = @as([*c]ObjList, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    if (args[@as(c_uint, @intCast(@as(c_int, 1)))] == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))))) {
        if (list_1.*.elements.count == @as(c_int, 0)) while (true) {
            args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
            return @as(c_int, 1) != 0;
        };
        while (true) {
            args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(@as(c_int, 0))));
            return @as(c_int, 1) != 0;
        }
    }
    if (!validateInt(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Iterator")) return @as(c_int, 0) != 0;
    var index_2: f64 = wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))]);
    if ((index_2 < @as(f64, @floatFromInt(@as(c_int, 0)))) or (index_2 >= @as(f64, @floatFromInt(list_1.*.elements.count - @as(c_int, 1))))) while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    };
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(index_2 + @as(f64, @floatFromInt(@as(c_int, 1))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_list_iteratorValue(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var list_1: [*c]ObjList = @as([*c]ObjList, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var index_2: u32 = validateIndex(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], @as(u32, @bitCast(list_1.*.elements.count)), "Iterator");
    if (index_2 == @as(c_uint, 4294967295)) return @as(c_int, 0) != 0;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = list_1.*.elements.data[index_2];
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_list_removeAt(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var list_1: [*c]ObjList = @as([*c]ObjList, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var index_2: u32 = validateIndex(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], @as(u32, @bitCast(list_1.*.elements.count)), "Index");
    if (index_2 == @as(c_uint, 4294967295)) return @as(c_int, 0) != 0;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenListRemoveAt(vm, list_1, index_2);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_list_removeValue(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var list_1: [*c]ObjList = @as([*c]ObjList, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var index_2: c_int = wrenListIndexOf(vm, list_1, args[@as(c_uint, @intCast(@as(c_int, 1)))]);
    if (index_2 == -@as(c_int, 1)) while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
        return @as(c_int, 1) != 0;
    };
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenListRemoveAt(vm, list_1, @as(u32, @bitCast(index_2)));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_list_indexOf(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var list_1: [*c]ObjList = @as([*c]ObjList, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(wrenListIndexOf(vm, list_1, args[@as(c_uint, @intCast(@as(c_int, 1)))]))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_list_swap(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var list_1: [*c]ObjList = @as([*c]ObjList, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var indexA: u32 = validateIndex(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], @as(u32, @bitCast(list_1.*.elements.count)), "Index 0");
    if (indexA == @as(c_uint, 4294967295)) return @as(c_int, 0) != 0;
    var indexB: u32 = validateIndex(vm, args[@as(c_uint, @intCast(@as(c_int, 2)))], @as(u32, @bitCast(list_1.*.elements.count)), "Index 1");
    if (indexB == @as(c_uint, 4294967295)) return @as(c_int, 0) != 0;
    var a: Value = list_1.*.elements.data[indexA];
    list_1.*.elements.data[indexA] = list_1.*.elements.data[indexB];
    list_1.*.elements.data[indexB] = a;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_list_subscript(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var list_1: [*c]ObjList = @as([*c]ObjList, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    if ((args[@as(c_uint, @intCast(@as(c_int, 1)))] & @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) != @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) {
        var index_1: u32 = validateIndex(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], @as(u32, @bitCast(list_1.*.elements.count)), "Subscript");
        if (index_1 == @as(c_uint, 4294967295)) return @as(c_int, 0) != 0;
        while (true) {
            args[@as(c_uint, @intCast(@as(c_int, 0)))] = list_1.*.elements.data[index_1];
            return @as(c_int, 1) != 0;
        }
    }
    if (!wrenIsObjType(args[@as(c_uint, @intCast(@as(c_int, 1)))], @as(c_uint, @bitCast(OBJ_RANGE)))) {
        while (true) {
            vm.*.fiber.*.@"error" = wrenNewStringLength(vm, "Subscript must be a number or a range.", @sizeOf([39]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
            return @as(c_int, 0) != 0;
        }
    }
    var step: c_int = undefined;
    var count: u32 = @as(u32, @bitCast(list_1.*.elements.count));
    var start: u32 = calculateRange(vm, @as([*c]ObjRange, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 1)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))), &count, &step);
    if (start == @as(c_uint, 4294967295)) return @as(c_int, 0) != 0;
    var result: [*c]ObjList = wrenNewList(vm, count);
    {
        var i: u32 = 0;
        while (i < count) : (i +%= 1) {
            result.*.elements.data[i] = list_1.*.elements.data[start +% (i *% @as(u32, @bitCast(step)))];
        }
    }
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(result))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_list_subscriptSetter(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var list_1: [*c]ObjList = @as([*c]ObjList, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var index_2: u32 = validateIndex(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], @as(u32, @bitCast(list_1.*.elements.count)), "Subscript");
    if (index_2 == @as(c_uint, 4294967295)) return @as(c_int, 0) != 0;
    list_1.*.elements.data[index_2] = args[@as(c_uint, @intCast(@as(c_int, 2)))];
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = args[@as(c_uint, @intCast(@as(c_int, 2)))];
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_map_new(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(wrenNewMap(vm)))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_map_subscript(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateKey(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))])) return @as(c_int, 0) != 0;
    var map_1: [*c]ObjMap = @as([*c]ObjMap, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var value: Value = wrenMapGet(map_1, args[@as(c_uint, @intCast(@as(c_int, 1)))]);
    if (value == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4))))))) while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
        return @as(c_int, 1) != 0;
    };
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = value;
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_map_subscriptSetter(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateKey(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))])) return @as(c_int, 0) != 0;
    wrenMapSet(vm, @as([*c]ObjMap, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))), args[@as(c_uint, @intCast(@as(c_int, 1)))], args[@as(c_uint, @intCast(@as(c_int, 2)))]);
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = args[@as(c_uint, @intCast(@as(c_int, 2)))];
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_map_addCore(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateKey(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))])) return @as(c_int, 0) != 0;
    wrenMapSet(vm, @as([*c]ObjMap, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))), args[@as(c_uint, @intCast(@as(c_int, 1)))], args[@as(c_uint, @intCast(@as(c_int, 2)))]);
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = args[@as(c_uint, @intCast(@as(c_int, 0)))];
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_map_clear(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    wrenMapClear(vm, @as([*c]ObjMap, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))));
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_map_containsKey(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateKey(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))])) return @as(c_int, 0) != 0;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = if (!(wrenMapGet(@as([*c]ObjMap, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))), args[@as(c_uint, @intCast(@as(c_int, 1)))]) == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4)))))))) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_map_count(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(@as([*c]ObjMap, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.count)));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_map_iterate(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var map_1: [*c]ObjMap = @as([*c]ObjMap, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    if (map_1.*.count == @as(u32, @bitCast(@as(c_int, 0)))) while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    };
    var index_2: u32 = 0;
    if (!(args[@as(c_uint, @intCast(@as(c_int, 1)))] == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1)))))))) {
        if (!validateInt(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Iterator")) return @as(c_int, 0) != 0;
        if (wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))]) < @as(f64, @floatFromInt(@as(c_int, 0)))) while (true) {
            args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
            return @as(c_int, 1) != 0;
        };
        index_2 = @as(u32, @intFromFloat(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))])));
        if (index_2 >= map_1.*.capacity) while (true) {
            args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
            return @as(c_int, 1) != 0;
        };
        index_2 +%= 1;
    }
    while (index_2 < map_1.*.capacity) : (index_2 +%= 1) {
        if (!(map_1.*.entries[index_2].key == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4)))))))) while (true) {
            args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(index_2)));
            return @as(c_int, 1) != 0;
        };
    }
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_map_remove(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateKey(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))])) return @as(c_int, 0) != 0;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenMapRemoveKey(vm, @as([*c]ObjMap, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))), args[@as(c_uint, @intCast(@as(c_int, 1)))]);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_map_keyIteratorValue(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var map_1: [*c]ObjMap = @as([*c]ObjMap, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var index_2: u32 = validateIndex(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], map_1.*.capacity, "Iterator");
    if (index_2 == @as(c_uint, 4294967295)) return @as(c_int, 0) != 0;
    var entry: [*c]MapEntry = &map_1.*.entries[index_2];
    if (entry.*.key == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4))))))) {
        while (true) {
            vm.*.fiber.*.@"error" = wrenNewStringLength(vm, "Invalid map iterator.", @sizeOf([22]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
            return @as(c_int, 0) != 0;
        }
    }
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = entry.*.key;
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_map_valueIteratorValue(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var map_1: [*c]ObjMap = @as([*c]ObjMap, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var index_2: u32 = validateIndex(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], map_1.*.capacity, "Iterator");
    if (index_2 == @as(c_uint, 4294967295)) return @as(c_int, 0) != 0;
    var entry: [*c]MapEntry = &map_1.*.entries[index_2];
    if (entry.*.key == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4))))))) {
        while (true) {
            vm.*.fiber.*.@"error" = wrenNewStringLength(vm, "Invalid map iterator.", @sizeOf([22]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
            return @as(c_int, 0) != 0;
        }
    }
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = entry.*.value;
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_null_not(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_null_toString(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNewStringLength(vm, "null", @sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_fromString(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateString(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Argument")) return @as(c_int, 0) != 0;
    var string: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 1)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    if (string.*.length == @as(u32, @bitCast(@as(c_int, 0)))) while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
        return @as(c_int, 1) != 0;
    };
    __errno_location().* = 0;
    var end: [*c]u8 = undefined;
    var number: f64 = strtod(string.*.value(), &end);
    while ((@as(c_int, @bitCast(@as(c_uint, end.*))) != @as(c_int, '\x00')) and ((@as(c_int, @bitCast(@as(c_uint, (blk: {
        const tmp = @as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(end.*)))));
        if (tmp >= 0) break :blk __ctype_b_loc().* + @as(usize, @intCast(tmp)) else break :blk __ctype_b_loc().* - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*))) & @as(c_int, @bitCast(@as(c_uint, @as(c_ushort, @bitCast(@as(c_short, @truncate(_ISspace)))))))) != 0)) {
        end += 1;
    }
    if (__errno_location().* == @as(c_int, 34)) while (true) {
        vm.*.fiber.*.@"error" = wrenNewStringLength(vm, "Number literal is too large.", @sizeOf([29]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
        return @as(c_int, 0) != 0;
    };
    if (end < (string.*.value() + string.*.length)) while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
        return @as(c_int, 1) != 0;
    };
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(number);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_infinity(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatCast(__builtin_inff())));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_nan(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(wrenDoubleFromBits(@as(c_ulong, 9221120237041090560)));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_pi(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(3.141592653589793);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_tau(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(6.283185307179586);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_largest(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(179769313486231570000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000.0);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_smallest(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(0.000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000022250738585072014);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_maxSafeInteger(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(9007199254740991.0);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_minSafeInteger(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(-9007199254740991.0);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_minus(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Right operand")) return @as(c_int, 0) != 0;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]) - wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))]));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_plus(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Right operand")) return @as(c_int, 0) != 0;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]) + wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))]));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_multiply(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Right operand")) return @as(c_int, 0) != 0;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]) * wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))]));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_divide(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Right operand")) return @as(c_int, 0) != 0;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]) / wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))]));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_lt(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Right operand")) return @as(c_int, 0) != 0;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = if (wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]) < wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))])) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_gt(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Right operand")) return @as(c_int, 0) != 0;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = if (wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]) > wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))])) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_lte(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Right operand")) return @as(c_int, 0) != 0;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = if (wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]) <= wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))])) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_gte(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Right operand")) return @as(c_int, 0) != 0;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = if (wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]) >= wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))])) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_bitwiseAnd(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Right operand")) return @as(c_int, 0) != 0;
    var left: u32 = @as(u32, @intFromFloat(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])));
    var right: u32 = @as(u32, @intFromFloat(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))])));
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(left & right)));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_bitwiseOr(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Right operand")) return @as(c_int, 0) != 0;
    var left: u32 = @as(u32, @intFromFloat(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])));
    var right: u32 = @as(u32, @intFromFloat(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))])));
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(left | right)));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_bitwiseXor(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Right operand")) return @as(c_int, 0) != 0;
    var left: u32 = @as(u32, @intFromFloat(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])));
    var right: u32 = @as(u32, @intFromFloat(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))])));
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(left ^ right)));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_bitwiseLeftShift(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Right operand")) return @as(c_int, 0) != 0;
    var left: u32 = @as(u32, @intFromFloat(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])));
    var right: u32 = @as(u32, @intFromFloat(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))])));
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(left << @intCast(right))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_bitwiseRightShift(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Right operand")) return @as(c_int, 0) != 0;
    var left: u32 = @as(u32, @intFromFloat(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])));
    var right: u32 = @as(u32, @intFromFloat(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))])));
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(left >> @intCast(right))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_abs(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(fabs(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_acos(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(acos(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_asin(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(asin(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_atan(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(atan(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_cbrt(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(cbrt(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_ceil(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(ceil(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_cos(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(cos(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_floor(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(floor(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_negate(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(-wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_round(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(round(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_sin(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(sin(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_sqrt(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(sqrt(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_tan(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(tan(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_log(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(log(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_log2(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(log2(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_exp(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(exp(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_mod(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Right operand")) return @as(c_int, 0) != 0;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(fmod(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]), wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))])));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_eqeq(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    if (!((args[@as(c_uint, @intCast(@as(c_int, 1)))] & @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) != @as(u64, @bitCast(@as(c_long, 9222246136947933184))))) while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    };
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = if (wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]) == wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))])) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_bangeq(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    if (!((args[@as(c_uint, @intCast(@as(c_int, 1)))] & @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) != @as(u64, @bitCast(@as(c_long, 9222246136947933184))))) while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3))))));
        return @as(c_int, 1) != 0;
    };
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = if (wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]) != wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))])) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_bitwiseNot(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(~@as(u32, @intFromFloat(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_dotDot(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Right hand side of range")) return @as(c_int, 0) != 0;
    var from: f64 = wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]);
    var to: f64 = wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))]);
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNewRange(vm, from, to, @as(c_int, 1) != 0);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_dotDotDot(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Right hand side of range")) return @as(c_int, 0) != 0;
    var from: f64 = wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]);
    var to: f64 = wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))]);
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNewRange(vm, from, to, @as(c_int, 0) != 0);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_atan2(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "x value")) return @as(c_int, 0) != 0;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(atan2(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]), wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))])));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_min(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Other value")) return @as(c_int, 0) != 0;
    var value: f64 = wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]);
    var other: f64 = wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))]);
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(if (value <= other) value else other);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_max(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Other value")) return @as(c_int, 0) != 0;
    var value: f64 = wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]);
    var other: f64 = wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))]);
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(if (value > other) value else other);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_clamp(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Min value")) return @as(c_int, 0) != 0;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 2)))], "Max value")) return @as(c_int, 0) != 0;
    var value: f64 = wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]);
    var min: f64 = wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))]);
    var max: f64 = wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 2)))]);
    var result: f64 = if (value < min) min else if (value > max) max else value;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(result);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_pow(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Power value")) return @as(c_int, 0) != 0;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(pow(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]), wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))])));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_fraction(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    var unused: f64 = undefined;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(modf(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]), &unused));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_isInfinity(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = if (__builtin_isinf_sign(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])) != 0) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_isInteger(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    var value: f64 = wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]);
    if ((__builtin_isnan(value) != 0) or (__builtin_isinf_sign(value) != 0)) while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    };
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = if (trunc(value) == value) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_isNan(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = if (__builtin_isnan(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))])) != 0) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_sign(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    var value: f64 = wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]);
    if (value > @as(f64, @floatFromInt(@as(c_int, 0)))) {
        while (true) {
            args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(@as(c_int, 1))));
            return @as(c_int, 1) != 0;
        }
    } else if (value < @as(f64, @floatFromInt(@as(c_int, 0)))) {
        while (true) {
            args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(-@as(c_int, 1))));
            return @as(c_int, 1) != 0;
        }
    } else {
        while (true) {
            args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(@as(c_int, 0))));
            return @as(c_int, 1) != 0;
        }
    }
    return false;
}
pub fn prim_num_toString(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToString(vm, wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_num_truncate(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    var integer: f64 = undefined;
    _ = modf(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 0)))]), &integer);
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(integer);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_object_same(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = if (@as(c_int, @intFromBool(wrenValuesEqual(args[@as(c_uint, @intCast(@as(c_int, 1)))], args[@as(c_uint, @intCast(@as(c_int, 2)))]))) != 0) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_object_not(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_object_eqeq(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = if (@as(c_int, @intFromBool(wrenValuesEqual(args[@as(c_uint, @intCast(@as(c_int, 0)))], args[@as(c_uint, @intCast(@as(c_int, 1)))]))) != 0) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_object_bangeq(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = if (!wrenValuesEqual(args[@as(c_uint, @intCast(@as(c_int, 0)))], args[@as(c_uint, @intCast(@as(c_int, 1)))])) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_object_is(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!wrenIsObjType(args[@as(c_uint, @intCast(@as(c_int, 1)))], @as(c_uint, @bitCast(OBJ_CLASS)))) {
        while (true) {
            vm.*.fiber.*.@"error" = wrenNewStringLength(vm, "Right operand must be a class.", @sizeOf([31]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
            return @as(c_int, 0) != 0;
        }
    }
    var classObj: [*c]ObjClass = wrenGetClass(vm, args[@as(c_uint, @intCast(@as(c_int, 0)))]);
    var baseClassObj: [*c]ObjClass = @as([*c]ObjClass, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 1)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    while (true) {
        if (baseClassObj == classObj) while (true) {
            args[@as(c_uint, @intCast(@as(c_int, 0)))] = if (@as(c_int, 1) != 0) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
            return @as(c_int, 1) != 0;
        };
        classObj = classObj.*.superclass;
        if (!(classObj != @as([*c]ObjClass, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) break;
    }
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = if (@as(c_int, 0) != 0) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_object_toString(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var obj: [*c]Obj = @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))));
    var name_1: Value = wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(obj.*.classObj.*.name))));
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenStringFormat(vm, "instance of @", name_1);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_object_type(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(wrenGetClass(vm, args[@as(c_uint, @intCast(@as(c_int, 0)))])))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_range_from(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as([*c]ObjRange, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.from);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_range_to(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as([*c]ObjRange, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.to);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_range_min(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    var range: [*c]ObjRange = @as([*c]ObjRange, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(fmin(range.*.from, range.*.to));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_range_max(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    var range: [*c]ObjRange = @as([*c]ObjRange, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(fmax(range.*.from, range.*.to));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_range_isInclusive(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = if (@as(c_int, @intFromBool(@as([*c]ObjRange, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.isInclusive)) != 0) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_range_iterate(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var range: [*c]ObjRange = @as([*c]ObjRange, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    if ((range.*.from == range.*.to) and !range.*.isInclusive) while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    };
    if (args[@as(c_uint, @intCast(@as(c_int, 1)))] == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))))) while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(range.*.from);
        return @as(c_int, 1) != 0;
    };
    if (!validateNum(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Iterator")) return @as(c_int, 0) != 0;
    var iterator: f64 = wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))]);
    if (range.*.from < range.*.to) {
        iterator += 1;
        if (iterator > range.*.to) while (true) {
            args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
            return @as(c_int, 1) != 0;
        };
    } else {
        iterator -= 1;
        if (iterator < range.*.to) while (true) {
            args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
            return @as(c_int, 1) != 0;
        };
    }
    if (!range.*.isInclusive and (iterator == range.*.to)) while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    };
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(iterator);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_range_iteratorValue(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = args[@as(c_uint, @intCast(@as(c_int, 1)))];
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_range_toString(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var range: [*c]ObjRange = @as([*c]ObjRange, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var from: Value = wrenNumToString(vm, range.*.from);
    wrenPushRoot(vm, @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(from & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))));
    var to: Value = wrenNumToString(vm, range.*.to);
    wrenPushRoot(vm, @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(to & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))));
    var result: Value = wrenStringFormat(vm, "@$@", from, if (@as(c_int, @intFromBool(range.*.isInclusive)) != 0) ".." else "...", to);
    wrenPopRoot(vm);
    wrenPopRoot(vm);
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = result;
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_string_fromCodePoint(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateInt(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Code point")) return @as(c_int, 0) != 0;
    var codePoint: c_int = @as(c_int, @intFromFloat(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))])));
    if (codePoint < @as(c_int, 0)) {
        while (true) {
            vm.*.fiber.*.@"error" = wrenNewStringLength(vm, "Code point cannot be negative.", @sizeOf([31]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
            return @as(c_int, 0) != 0;
        }
    } else if (codePoint > @as(c_int, 1114111)) {
        while (true) {
            vm.*.fiber.*.@"error" = wrenNewStringLength(vm, "Code point cannot be greater than 0x10ffff.", @sizeOf([44]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
            return @as(c_int, 0) != 0;
        }
    }
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenStringFromCodePoint(vm, codePoint);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_string_fromByte(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateInt(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Byte")) return @as(c_int, 0) != 0;
    var byte: c_int = @as(c_int, @intFromFloat(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))])));
    if (byte < @as(c_int, 0)) {
        while (true) {
            vm.*.fiber.*.@"error" = wrenNewStringLength(vm, "Byte cannot be negative.", @sizeOf([25]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
            return @as(c_int, 0) != 0;
        }
    } else if (byte > @as(c_int, 255)) {
        while (true) {
            vm.*.fiber.*.@"error" = wrenNewStringLength(vm, "Byte cannot be greater than 0xff.", @sizeOf([34]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
            return @as(c_int, 0) != 0;
        }
    }
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenStringFromByte(vm, @as(u8, @bitCast(@as(i8, @truncate(byte)))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_string_byteAt(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var string: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var index_1: u32 = validateIndex(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], string.*.length, "Index");
    if (index_1 == @as(c_uint, 4294967295)) return @as(c_int, 0) != 0;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(@as(u8, @bitCast(string.*.value()[index_1])))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_string_byteCount(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(@as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.length)));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_string_codePointAt(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var string: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var index_1: u32 = validateIndex(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], string.*.length, "Index");
    if (index_1 == @as(c_uint, 4294967295)) return @as(c_int, 0) != 0;
    var bytes: [*c]const u8 = @as([*c]u8, @ptrCast(@alignCast(string.*.value())));
    if ((@as(c_int, @bitCast(@as(c_uint, bytes[index_1]))) & @as(c_int, 192)) == @as(c_int, 128)) while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(-@as(c_int, 1))));
        return @as(c_int, 1) != 0;
    };
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(wrenUtf8Decode(@as([*c]u8, @ptrCast(@alignCast(string.*.value()))) + index_1, string.*.length -% index_1))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_string_contains(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateString(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Argument")) return @as(c_int, 0) != 0;
    var string: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var search: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 1)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = if (wrenStringFind(string, search, @as(u32, @bitCast(@as(c_int, 0)))) != @as(c_uint, 4294967295)) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_string_endsWith(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateString(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Argument")) return @as(c_int, 0) != 0;
    var string: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var search: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 1)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    if (search.*.length > string.*.length) while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    };
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = if (memcmp(@as(?*const anyopaque, @ptrCast((string.*.value() + string.*.length) - search.*.length)), @as(?*const anyopaque, @ptrCast(search.*.value())), @as(c_ulong, @bitCast(@as(c_ulong, search.*.length)))) == @as(c_int, 0)) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_string_indexOf1(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateString(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Argument")) return @as(c_int, 0) != 0;
    var string: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var search: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 1)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var index_1: u32 = wrenStringFind(string, search, @as(u32, @bitCast(@as(c_int, 0))));
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(if (index_1 == @as(c_uint, 4294967295)) -@as(c_int, 1) else @as(c_int, @bitCast(index_1)))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_string_indexOf2(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateString(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Argument")) return @as(c_int, 0) != 0;
    var string: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var search: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 1)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var start: u32 = validateIndex(vm, args[@as(c_uint, @intCast(@as(c_int, 2)))], string.*.length, "Start");
    if (start == @as(c_uint, 4294967295)) return @as(c_int, 0) != 0;
    var index_1: u32 = wrenStringFind(string, search, start);
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(if (index_1 == @as(c_uint, 4294967295)) -@as(c_int, 1) else @as(c_int, @bitCast(index_1)))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_string_iterate(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var string: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    if (args[@as(c_uint, @intCast(@as(c_int, 1)))] == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))))) {
        if (string.*.length == @as(u32, @bitCast(@as(c_int, 0)))) while (true) {
            args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
            return @as(c_int, 1) != 0;
        };
        while (true) {
            args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(@as(c_int, 0))));
            return @as(c_int, 1) != 0;
        }
    }
    if (!validateInt(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Iterator")) return @as(c_int, 0) != 0;
    if (wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))]) < @as(f64, @floatFromInt(@as(c_int, 0)))) while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    };
    var index_1: u32 = @as(u32, @intFromFloat(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))])));
    while (true) {
        index_1 +%= 1;
        if (index_1 >= string.*.length) while (true) {
            args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
            return @as(c_int, 1) != 0;
        };
        if (!((@as(c_int, @bitCast(@as(c_uint, string.*.value()[index_1]))) & @as(c_int, 192)) == @as(c_int, 128))) break;
    }
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(index_1)));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_string_iterateByte(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var string: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    if (args[@as(c_uint, @intCast(@as(c_int, 1)))] == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))))) {
        if (string.*.length == @as(u32, @bitCast(@as(c_int, 0)))) while (true) {
            args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
            return @as(c_int, 1) != 0;
        };
        while (true) {
            args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(@as(c_int, 0))));
            return @as(c_int, 1) != 0;
        }
    }
    if (!validateInt(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Iterator")) return @as(c_int, 0) != 0;
    if (wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))]) < @as(f64, @floatFromInt(@as(c_int, 0)))) while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    };
    var index_1: u32 = @as(u32, @intFromFloat(wrenValueToNum(args[@as(c_uint, @intCast(@as(c_int, 1)))])));
    index_1 +%= 1;
    if (index_1 >= string.*.length) while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    };
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(index_1)));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_string_iteratorValue(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var string: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var index_1: u32 = validateIndex(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], string.*.length, "Iterator");
    if (index_1 == @as(c_uint, 4294967295)) return @as(c_int, 0) != 0;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenStringCodePointAt(vm, string, index_1);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_string_startsWith(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateString(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Argument")) return @as(c_int, 0) != 0;
    var string: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var search: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 1)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    if (search.*.length > string.*.length) while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    };
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = if (memcmp(@as(?*const anyopaque, @ptrCast(string.*.value())), @as(?*const anyopaque, @ptrCast(search.*.value())), @as(c_ulong, @bitCast(@as(c_ulong, search.*.length)))) == @as(c_int, 0)) @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3)))))) else @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_string_plus(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (!validateString(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], "Right operand")) return @as(c_int, 0) != 0;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenStringFormat(vm, "@@", args[@as(c_uint, @intCast(@as(c_int, 0)))], args[@as(c_uint, @intCast(@as(c_int, 1)))]);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_string_subscript(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    var string: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    if ((args[@as(c_uint, @intCast(@as(c_int, 1)))] & @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) != @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) {
        var index_1: c_int = @as(c_int, @bitCast(validateIndex(vm, args[@as(c_uint, @intCast(@as(c_int, 1)))], string.*.length, "Subscript")));
        if (index_1 == -@as(c_int, 1)) return @as(c_int, 0) != 0;
        while (true) {
            args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenStringCodePointAt(vm, string, @as(u32, @bitCast(index_1)));
            return @as(c_int, 1) != 0;
        }
    }
    if (!wrenIsObjType(args[@as(c_uint, @intCast(@as(c_int, 1)))], @as(c_uint, @bitCast(OBJ_RANGE)))) {
        while (true) {
            vm.*.fiber.*.@"error" = wrenNewStringLength(vm, "Subscript must be a number or a range.", @sizeOf([39]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
            return @as(c_int, 0) != 0;
        }
    }
    var step: c_int = undefined;
    var count: u32 = string.*.length;
    var start: c_int = @as(c_int, @bitCast(calculateRange(vm, @as([*c]ObjRange, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 1)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))), &count, &step)));
    if (start == -@as(c_int, 1)) return @as(c_int, 0) != 0;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNewStringFromRange(vm, string, start, count, step);
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_string_toString(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = args[@as(c_uint, @intCast(@as(c_int, 0)))];
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_system_clock(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var args = arg_args;
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenNumToValue(@as(f64, @floatFromInt(clock())) / @as(f64, @floatFromInt(@as(__clock_t, @bitCast(@as(c_long, @as(c_int, 1000000)))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_system_gc(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    wrenCollectGarbage(vm);
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn prim_system_writeString(arg_vm: [*c]WrenVM, arg_args: [*c]Value) callconv(.C) bool {
    var vm = arg_vm;
    var args = arg_args;
    if (vm.*.config.writeFn != @as(WrenWriteFn, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        vm.*.config.writeFn.?(vm, @as([*c]u8, @ptrCast(@alignCast(&@as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(args[@as(c_uint, @intCast(@as(c_int, 1)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.value()))));
    }
    while (true) {
        args[@as(c_uint, @intCast(@as(c_int, 0)))] = args[@as(c_uint, @intCast(@as(c_int, 1)))];
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn defineClass(arg_vm: [*c]WrenVM, arg_module: [*c]ObjModule, arg_name_1: [*c]const u8) callconv(.C) [*c]ObjClass {
    var vm = arg_vm;
    var module = arg_module;
    var name_1 = arg_name_1;
    var nameString: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(wrenNewString(vm, name_1) & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    wrenPushRoot(vm, @as([*c]Obj, @ptrCast(@alignCast(nameString))));
    var classObj: [*c]ObjClass = wrenNewSingleClass(vm, @as(c_int, 0), nameString);
    _ = wrenDefineVariable(vm, module, name_1, @as(usize, @bitCast(@as(c_ulong, nameString.*.length))), wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(classObj)))), null);
    wrenPopRoot(vm);
    return classObj;
}
pub const TOKEN_LEFT_PAREN: c_int = 0;
pub const TOKEN_RIGHT_PAREN: c_int = 1;
pub const TOKEN_LEFT_BRACKET: c_int = 2;
pub const TOKEN_RIGHT_BRACKET: c_int = 3;
pub const TOKEN_LEFT_BRACE: c_int = 4;
pub const TOKEN_RIGHT_BRACE: c_int = 5;
pub const TOKEN_COLON: c_int = 6;
pub const TOKEN_DOT: c_int = 7;
pub const TOKEN_DOTDOT: c_int = 8;
pub const TOKEN_DOTDOTDOT: c_int = 9;
pub const TOKEN_COMMA: c_int = 10;
pub const TOKEN_STAR: c_int = 11;
pub const TOKEN_SLASH: c_int = 12;
pub const TOKEN_PERCENT: c_int = 13;
pub const TOKEN_HASH: c_int = 14;
pub const TOKEN_PLUS: c_int = 15;
pub const TOKEN_MINUS: c_int = 16;
pub const TOKEN_LTLT: c_int = 17;
pub const TOKEN_GTGT: c_int = 18;
pub const TOKEN_PIPE: c_int = 19;
pub const TOKEN_PIPEPIPE: c_int = 20;
pub const TOKEN_CARET: c_int = 21;
pub const TOKEN_AMP: c_int = 22;
pub const TOKEN_AMPAMP: c_int = 23;
pub const TOKEN_BANG: c_int = 24;
pub const TOKEN_TILDE: c_int = 25;
pub const TOKEN_QUESTION: c_int = 26;
pub const TOKEN_EQ: c_int = 27;
pub const TOKEN_LT: c_int = 28;
pub const TOKEN_GT: c_int = 29;
pub const TOKEN_LTEQ: c_int = 30;
pub const TOKEN_GTEQ: c_int = 31;
pub const TOKEN_EQEQ: c_int = 32;
pub const TOKEN_BANGEQ: c_int = 33;
pub const TOKEN_BREAK: c_int = 34;
pub const TOKEN_CONTINUE: c_int = 35;
pub const TOKEN_CLASS: c_int = 36;
pub const TOKEN_CONSTRUCT: c_int = 37;
pub const TOKEN_ELSE: c_int = 38;
pub const TOKEN_FALSE: c_int = 39;
pub const TOKEN_FOR: c_int = 40;
pub const TOKEN_FOREIGN: c_int = 41;
pub const TOKEN_IF: c_int = 42;
pub const TOKEN_IMPORT: c_int = 43;
pub const TOKEN_AS: c_int = 44;
pub const TOKEN_IN: c_int = 45;
pub const TOKEN_IS: c_int = 46;
pub const TOKEN_NULL: c_int = 47;
pub const TOKEN_RETURN: c_int = 48;
pub const TOKEN_STATIC: c_int = 49;
pub const TOKEN_SUPER: c_int = 50;
pub const TOKEN_THIS: c_int = 51;
pub const TOKEN_TRUE: c_int = 52;
pub const TOKEN_VAR: c_int = 53;
pub const TOKEN_WHILE: c_int = 54;
pub const TOKEN_FIELD: c_int = 55;
pub const TOKEN_STATIC_FIELD: c_int = 56;
pub const TOKEN_NAME: c_int = 57;
pub const TOKEN_NUMBER: c_int = 58;
pub const TOKEN_STRING: c_int = 59;
pub const TOKEN_INTERPOLATION: c_int = 60;
pub const TOKEN_LINE: c_int = 61;
pub const TOKEN_ERROR: c_int = 62;
pub const TOKEN_EOF: c_int = 63;
pub const TokenType = c_uint;
pub const Token = extern struct {
    type: TokenType,
    start: [*c]const u8,
    length: c_int,
    line: c_int,
    value: Value,
};
pub const Parser = extern struct {
    vm: [*c]WrenVM,
    module: [*c]ObjModule,
    source: [*c]const u8,
    tokenStart: [*c]const u8,
    currentChar: [*c]const u8,
    currentLine: c_int,
    next: Token,
    current: Token,
    previous: Token,
    parens: [8]c_int,
    numParens: c_int,
    printErrors: bool,
    hasError: bool,
};
pub const Local = extern struct {
    name: [*c]const u8,
    length: c_int,
    depth: c_int,
    isUpvalue: bool,
};
pub const CompilerUpvalue = extern struct {
    isLocal: bool,
    index: c_int,
};
pub const SIG_METHOD: c_int = 0;
pub const SIG_GETTER: c_int = 1;
pub const SIG_SETTER: c_int = 2;
pub const SIG_SUBSCRIPT: c_int = 3;
pub const SIG_SUBSCRIPT_SETTER: c_int = 4;
pub const SIG_INITIALIZER: c_int = 5;
pub const SignatureType = c_uint;
pub const Signature = extern struct {
    name: [*c]const u8,
    length: c_int,
    type: SignatureType,
    arity: c_int,
};
pub const ClassInfo = extern struct {
    name: [*c]ObjString,
    classAttributes: [*c]ObjMap,
    methodAttributes: [*c]ObjMap,
    fields: SymbolTable,
    methods: IntBuffer,
    staticMethods: IntBuffer,
    isForeign: bool,
    inStatic: bool,
    signature: [*c]Signature,
};
pub const SCOPE_LOCAL: c_int = 0;
pub const SCOPE_UPVALUE: c_int = 1;
pub const SCOPE_MODULE: c_int = 2;
pub const Scope = c_uint;
pub const Variable = extern struct {
    index: c_int,
    scope: Scope,
};
pub fn disallowAttributes(arg_compiler: [*c]Compiler) callconv(.C) void {
    var compiler = arg_compiler;
    if (compiler.*.numAttributes > @as(c_int, 0)) {
        @"error"(compiler, "Attributes can only specified before a class or a method");
        wrenMapClear(compiler.*.parser.*.vm, compiler.*.attributes);
        compiler.*.numAttributes = 0;
    }
}
pub fn addToAttributeGroup(arg_compiler: [*c]Compiler, arg_group: Value, arg_key: Value, arg_value: Value) callconv(.C) void {
    var compiler = arg_compiler;
    var group = arg_group;
    var key = arg_key;
    var value = arg_value;
    var vm: [*c]WrenVM = compiler.*.parser.*.vm;
    if ((group & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) {
        wrenPushRoot(vm, @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(group & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))));
    }
    if ((key & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) {
        wrenPushRoot(vm, @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(key & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))));
    }
    if ((value & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) {
        wrenPushRoot(vm, @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(value & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))));
    }
    var groupMapValue: Value = wrenMapGet(compiler.*.attributes, group);
    if (groupMapValue == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4))))))) {
        groupMapValue = wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(wrenNewMap(vm)))));
        wrenMapSet(vm, compiler.*.attributes, group, groupMapValue);
    }
    var groupMap: [*c]ObjMap = @as([*c]ObjMap, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(groupMapValue & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var keyItemsValue: Value = wrenMapGet(groupMap, key);
    if (keyItemsValue == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4))))))) {
        keyItemsValue = wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(wrenNewList(vm, @as(u32, @bitCast(@as(c_int, 0))))))));
        wrenMapSet(vm, groupMap, key, keyItemsValue);
    }
    var keyItems: [*c]ObjList = @as([*c]ObjList, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(keyItemsValue & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    wrenValueBufferWrite(vm, &keyItems.*.elements, value);
    if ((group & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) {
        wrenPopRoot(vm);
    }
    if ((key & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) {
        wrenPopRoot(vm);
    }
    if ((value & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) {
        wrenPopRoot(vm);
    }
}
pub fn emitClassAttributes(arg_compiler: [*c]Compiler, arg_classInfo: [*c]ClassInfo) callconv(.C) void {
    var compiler = arg_compiler;
    var classInfo = arg_classInfo;
    loadCoreVariable(compiler, "ClassAttributes");
    if (classInfo.*.classAttributes != null) emitAttributes(compiler, classInfo.*.classAttributes) else @"null"(compiler, @as(c_int, 0) != 0);
    if (classInfo.*.methodAttributes != null) emitAttributeMethods(compiler, classInfo.*.methodAttributes) else @"null"(compiler, @as(c_int, 0) != 0);
    callMethod(compiler, @as(c_int, 2), "new(_,_)", @as(c_int, 8));
}
pub fn copyAttributes(arg_compiler: [*c]Compiler, arg_into: [*c]ObjMap) callconv(.C) void {
    var compiler = arg_compiler;
    var into = arg_into;
    compiler.*.numAttributes = 0;
    if (compiler.*.attributes.*.count == @as(u32, @bitCast(@as(c_int, 0)))) return;
    if (into == @as([*c]ObjMap, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return;
    var vm: [*c]WrenVM = compiler.*.parser.*.vm;
    {
        var attrIdx: u32 = 0;
        while (attrIdx < compiler.*.attributes.*.capacity) : (attrIdx +%= 1) {
            var attrEntry: [*c]const MapEntry = &compiler.*.attributes.*.entries[attrIdx];
            if (attrEntry.*.key == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4))))))) continue;
            wrenMapSet(vm, into, attrEntry.*.key, attrEntry.*.value);
        }
    }
    wrenMapClear(vm, compiler.*.attributes);
}
pub fn copyMethodAttributes(arg_compiler: [*c]Compiler, arg_isForeign: bool, arg_isStatic: bool, arg_fullSignature: [*c]const u8, arg_length: i32) callconv(.C) void {
    var compiler = arg_compiler;
    var isForeign = arg_isForeign;
    var isStatic = arg_isStatic;
    var fullSignature = arg_fullSignature;
    var length = arg_length;
    compiler.*.numAttributes = 0;
    if (compiler.*.attributes.*.count == @as(u32, @bitCast(@as(c_int, 0)))) return;
    var vm: [*c]WrenVM = compiler.*.parser.*.vm;
    var methodAttr: [*c]ObjMap = wrenNewMap(vm);
    wrenPushRoot(vm, @as([*c]Obj, @ptrCast(@alignCast(methodAttr))));
    copyAttributes(compiler, methodAttr);
    var fullLength: i32 = length;
    if (isForeign) {
        fullLength += @as(c_int, 8);
    }
    if (isStatic) {
        fullLength += @as(c_int, 7);
    }
    var fullSignatureWithPrefix: [117]u8 = undefined;
    var foreignPrefix: [*c]const u8 = if (@as(c_int, @intFromBool(isForeign)) != 0) "foreign " else "";
    var staticPrefix: [*c]const u8 = if (@as(c_int, @intFromBool(isStatic)) != 0) "static " else "";
    _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&fullSignatureWithPrefix))), "%s%s%.*s", foreignPrefix, staticPrefix, length, fullSignature);
    fullSignatureWithPrefix[@as(c_uint, @intCast(fullLength))] = '\x00';
    if (compiler.*.enclosingClass.*.methodAttributes == @as([*c]ObjMap, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        compiler.*.enclosingClass.*.methodAttributes = wrenNewMap(vm);
    }
    var key: Value = wrenNewStringLength(vm, @as([*c]u8, @ptrCast(@alignCast(&fullSignatureWithPrefix))), @as(usize, @bitCast(@as(c_long, fullLength))));
    wrenMapSet(vm, compiler.*.enclosingClass.*.methodAttributes, key, wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(methodAttr)))));
    wrenPopRoot(vm);
}
pub const stackEffects: [77]c_int = [77]c_int{
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    0,
    1,
    0,
    1,
    0,
    1,
    0,
    0,
    -@as(c_int, 1),
    -@as(c_int, 1),
    0,
    -@as(c_int, 1),
    -@as(c_int, 2),
    -@as(c_int, 3),
    -@as(c_int, 4),
    -@as(c_int, 5),
    -@as(c_int, 6),
    -@as(c_int, 7),
    -@as(c_int, 8),
    -@as(c_int, 9),
    -@as(c_int, 10),
    -@as(c_int, 11),
    -@as(c_int, 12),
    -@as(c_int, 13),
    -@as(c_int, 14),
    -@as(c_int, 15),
    -@as(c_int, 16),
    0,
    -@as(c_int, 1),
    -@as(c_int, 2),
    -@as(c_int, 3),
    -@as(c_int, 4),
    -@as(c_int, 5),
    -@as(c_int, 6),
    -@as(c_int, 7),
    -@as(c_int, 8),
    -@as(c_int, 9),
    -@as(c_int, 10),
    -@as(c_int, 11),
    -@as(c_int, 12),
    -@as(c_int, 13),
    -@as(c_int, 14),
    -@as(c_int, 15),
    -@as(c_int, 16),
    0,
    0,
    -@as(c_int, 1),
    -@as(c_int, 1),
    -@as(c_int, 1),
    -@as(c_int, 1),
    0,
    1,
    0,
    0,
    -@as(c_int, 1),
    -@as(c_int, 2),
    -@as(c_int, 1),
    -@as(c_int, 2),
    -@as(c_int, 2),
    1,
    1,
    1,
    0,
};
pub fn printError(arg_parser: [*c]Parser, arg_line: c_int, arg_label: [*c]const u8, arg_format: [*c]const u8, arg_args: [*c]struct___va_list_tag_1) callconv(.C) void {
    var parser = arg_parser;
    var line = arg_line;
    var label = arg_label;
    var format = arg_format;
    var args = arg_args;
    parser.*.hasError = @as(c_int, 1) != 0;
    if (!parser.*.printErrors) return;
    if (parser.*.vm.*.config.errorFn == @as(WrenErrorFn, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return;
    var message: [159]u8 = undefined;
    var length: c_int = sprintf(@as([*c]u8, @ptrCast(@alignCast(&message))), "%s: ", label);
    length += vsprintf(@as([*c]u8, @ptrCast(@alignCast(&message))) + @as(usize, @bitCast(@as(isize, @intCast(length)))), format, args);
    while (true) {
        if (!false) break;
    }
    var module: [*c]ObjString = parser.*.module.*.name;
    var module_name: [*c]const u8 = if (module != null) module.*.value() else "<unknown>";
    parser.*.vm.*.config.errorFn.?(parser.*.vm, @as(c_uint, @bitCast(WREN_ERROR_COMPILE)), module_name, line, @as([*c]u8, @ptrCast(@alignCast(&message))));
} // src/wren/wren.c:5860:13: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn lexError(parser: [*c]Parser, format: [*c]const u8, ...) void; // src/wren/wren.c:5876:13: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn @"error"(compiler: [*c]Compiler, format: [*c]const u8, ...) void;
pub fn addConstant(arg_compiler: [*c]Compiler, arg_constant: Value) callconv(.C) c_int {
    var compiler = arg_compiler;
    var constant = arg_constant;
    if (compiler.*.parser.*.hasError) return -@as(c_int, 1);
    if (compiler.*.constants != @as([*c]ObjMap, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var existing: Value = wrenMapGet(compiler.*.constants, constant);
        if ((existing & @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) != @as(u64, @bitCast(@as(c_long, 9222246136947933184)))) return @as(c_int, @intFromFloat(wrenValueToNum(existing)));
    }
    if (compiler.*.@"fn".*.constants.count < (@as(c_int, 1) << @intCast(16))) {
        if ((constant & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) {
            wrenPushRoot(compiler.*.parser.*.vm, @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(constant & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))));
        }
        wrenValueBufferWrite(compiler.*.parser.*.vm, &compiler.*.@"fn".*.constants, constant);
        if ((constant & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) {
            wrenPopRoot(compiler.*.parser.*.vm);
        }
        if (compiler.*.constants == @as([*c]ObjMap, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            compiler.*.constants = wrenNewMap(compiler.*.parser.*.vm);
        }
        wrenMapSet(compiler.*.parser.*.vm, compiler.*.constants, constant, wrenNumToValue(@as(f64, @floatFromInt(compiler.*.@"fn".*.constants.count - @as(c_int, 1)))));
    } else {
        @"error"(compiler, "A function may only contain %d unique constants.", @as(c_int, 1) << @intCast(16));
    }
    return compiler.*.@"fn".*.constants.count - @as(c_int, 1);
}
pub fn initCompiler(arg_compiler: [*c]Compiler, arg_parser: [*c]Parser, arg_parent: [*c]Compiler, arg_isMethod: bool) callconv(.C) void {
    var compiler = arg_compiler;
    var parser = arg_parser;
    var parent = arg_parent;
    var isMethod = arg_isMethod;
    compiler.*.parser = parser;
    compiler.*.parent = parent;
    compiler.*.loop = null;
    compiler.*.enclosingClass = null;
    compiler.*.isInitializer = @as(c_int, 0) != 0;
    compiler.*.@"fn" = null;
    compiler.*.constants = null;
    compiler.*.attributes = null;
    parser.*.vm.*.compiler = compiler;
    compiler.*.numLocals = 1;
    compiler.*.numSlots = compiler.*.numLocals;
    if (isMethod) {
        compiler.*.locals[@as(c_uint, @intCast(@as(c_int, 0)))].name = "this";
        compiler.*.locals[@as(c_uint, @intCast(@as(c_int, 0)))].length = 4;
    } else {
        compiler.*.locals[@as(c_uint, @intCast(@as(c_int, 0)))].name = null;
        compiler.*.locals[@as(c_uint, @intCast(@as(c_int, 0)))].length = 0;
    }
    compiler.*.locals[@as(c_uint, @intCast(@as(c_int, 0)))].depth = -@as(c_int, 1);
    compiler.*.locals[@as(c_uint, @intCast(@as(c_int, 0)))].isUpvalue = @as(c_int, 0) != 0;
    if (parent == @as([*c]Compiler, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        compiler.*.scopeDepth = -@as(c_int, 1);
    } else {
        compiler.*.scopeDepth = 0;
    }
    compiler.*.numAttributes = 0;
    compiler.*.attributes = wrenNewMap(parser.*.vm);
    compiler.*.@"fn" = wrenNewFunction(parser.*.vm, parser.*.module, compiler.*.numLocals);
}
pub const Keyword = extern struct {
    identifier: [*c]const u8,
    length: usize,
    tokenType: TokenType,
};
pub var keywords: [22]Keyword = [22]Keyword{
    Keyword{
        .identifier = "break",
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 5)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_BREAK)),
    },
    Keyword{
        .identifier = "continue",
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 8)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_CONTINUE)),
    },
    Keyword{
        .identifier = "class",
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 5)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_CLASS)),
    },
    Keyword{
        .identifier = "construct",
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 9)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_CONSTRUCT)),
    },
    Keyword{
        .identifier = "else",
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 4)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_ELSE)),
    },
    Keyword{
        .identifier = "false",
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 5)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_FALSE)),
    },
    Keyword{
        .identifier = "for",
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 3)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_FOR)),
    },
    Keyword{
        .identifier = "foreign",
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 7)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_FOREIGN)),
    },
    Keyword{
        .identifier = "if",
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 2)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_IF)),
    },
    Keyword{
        .identifier = "import",
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 6)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_IMPORT)),
    },
    Keyword{
        .identifier = "as",
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 2)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_AS)),
    },
    Keyword{
        .identifier = "in",
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 2)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_IN)),
    },
    Keyword{
        .identifier = "is",
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 2)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_IS)),
    },
    Keyword{
        .identifier = "null",
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 4)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_NULL)),
    },
    Keyword{
        .identifier = "return",
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 6)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_RETURN)),
    },
    Keyword{
        .identifier = "static",
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 6)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_STATIC)),
    },
    Keyword{
        .identifier = "super",
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 5)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_SUPER)),
    },
    Keyword{
        .identifier = "this",
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 4)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_THIS)),
    },
    Keyword{
        .identifier = "true",
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 4)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_TRUE)),
    },
    Keyword{
        .identifier = "var",
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 3)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_VAR)),
    },
    Keyword{
        .identifier = "while",
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 5)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_WHILE)),
    },
    Keyword{
        .identifier = null,
        .length = @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))),
        .tokenType = @as(c_uint, @bitCast(TOKEN_EOF)),
    },
};
pub fn isName(arg_c: u8) callconv(.C) bool {
    var c = arg_c;
    return (((@as(c_int, @bitCast(@as(c_uint, c))) >= @as(c_int, 'a')) and (@as(c_int, @bitCast(@as(c_uint, c))) <= @as(c_int, 'z'))) or ((@as(c_int, @bitCast(@as(c_uint, c))) >= @as(c_int, 'A')) and (@as(c_int, @bitCast(@as(c_uint, c))) <= @as(c_int, 'Z')))) or (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '_'));
}
pub fn isDigit(arg_c: u8) callconv(.C) bool {
    var c = arg_c;
    return (@as(c_int, @bitCast(@as(c_uint, c))) >= @as(c_int, '0')) and (@as(c_int, @bitCast(@as(c_uint, c))) <= @as(c_int, '9'));
}
pub fn peekChar(arg_parser: [*c]Parser) callconv(.C) u8 {
    var parser = arg_parser;
    return parser.*.currentChar.*;
}
pub fn peekNextChar(arg_parser: [*c]Parser) callconv(.C) u8 {
    var parser = arg_parser;
    if (@as(c_int, @bitCast(@as(c_uint, peekChar(parser)))) == @as(c_int, '\x00')) return '\x00';
    return (parser.*.currentChar + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))).*;
}
pub fn nextChar(arg_parser: [*c]Parser) callconv(.C) u8 {
    var parser = arg_parser;
    var c: u8 = peekChar(parser);
    parser.*.currentChar += 1;
    if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '\n')) {
        parser.*.currentLine += 1;
    }
    return c;
}
pub fn matchChar(arg_parser: [*c]Parser, arg_c: u8) callconv(.C) bool {
    var parser = arg_parser;
    var c = arg_c;
    if (@as(c_int, @bitCast(@as(c_uint, peekChar(parser)))) != @as(c_int, @bitCast(@as(c_uint, c)))) return @as(c_int, 0) != 0;
    _ = nextChar(parser);
    return @as(c_int, 1) != 0;
}
pub fn makeToken(arg_parser: [*c]Parser, arg_type: TokenType) callconv(.C) void {
    var parser = arg_parser;
    var @"type" = arg_type;
    parser.*.next.type = @"type";
    parser.*.next.start = parser.*.tokenStart;
    parser.*.next.length = @as(c_int, @bitCast(@as(c_int, @truncate(@divExact(@as(c_long, @bitCast(@intFromPtr(parser.*.currentChar) -% @intFromPtr(parser.*.tokenStart))), @sizeOf(u8))))));
    parser.*.next.line = parser.*.currentLine;
    if (@"type" == @as(c_uint, @bitCast(TOKEN_LINE))) {
        parser.*.next.line -= 1;
    }
}
pub fn twoCharToken(arg_parser: [*c]Parser, arg_c: u8, arg_two: TokenType, arg_one: TokenType) callconv(.C) void {
    var parser = arg_parser;
    var c = arg_c;
    var two = arg_two;
    var one = arg_one;
    makeToken(parser, if (@as(c_int, @intFromBool(matchChar(parser, c))) != 0) two else one);
}
pub fn skipLineComment(arg_parser: [*c]Parser) callconv(.C) void {
    var parser = arg_parser;
    while ((@as(c_int, @bitCast(@as(c_uint, peekChar(parser)))) != @as(c_int, '\n')) and (@as(c_int, @bitCast(@as(c_uint, peekChar(parser)))) != @as(c_int, '\x00'))) {
        _ = nextChar(parser);
    }
}
pub fn skipBlockComment(arg_parser: [*c]Parser) callconv(.C) void {
    var parser = arg_parser;
    var nesting: c_int = 1;
    while (nesting > @as(c_int, 0)) {
        if (@as(c_int, @bitCast(@as(c_uint, peekChar(parser)))) == @as(c_int, '\x00')) {
            lexError(parser, "Unterminated block comment.");
            return;
        }
        if ((@as(c_int, @bitCast(@as(c_uint, peekChar(parser)))) == @as(c_int, '/')) and (@as(c_int, @bitCast(@as(c_uint, peekNextChar(parser)))) == @as(c_int, '*'))) {
            _ = nextChar(parser);
            _ = nextChar(parser);
            nesting += 1;
            continue;
        }
        if ((@as(c_int, @bitCast(@as(c_uint, peekChar(parser)))) == @as(c_int, '*')) and (@as(c_int, @bitCast(@as(c_uint, peekNextChar(parser)))) == @as(c_int, '/'))) {
            _ = nextChar(parser);
            _ = nextChar(parser);
            nesting -= 1;
            continue;
        }
        _ = nextChar(parser);
    }
}
pub fn readHexDigit(arg_parser: [*c]Parser) callconv(.C) c_int {
    var parser = arg_parser;
    var c: u8 = nextChar(parser);
    if ((@as(c_int, @bitCast(@as(c_uint, c))) >= @as(c_int, '0')) and (@as(c_int, @bitCast(@as(c_uint, c))) <= @as(c_int, '9'))) return @as(c_int, @bitCast(@as(c_uint, c))) - @as(c_int, '0');
    if ((@as(c_int, @bitCast(@as(c_uint, c))) >= @as(c_int, 'a')) and (@as(c_int, @bitCast(@as(c_uint, c))) <= @as(c_int, 'f'))) return (@as(c_int, @bitCast(@as(c_uint, c))) - @as(c_int, 'a')) + @as(c_int, 10);
    if ((@as(c_int, @bitCast(@as(c_uint, c))) >= @as(c_int, 'A')) and (@as(c_int, @bitCast(@as(c_uint, c))) <= @as(c_int, 'F'))) return (@as(c_int, @bitCast(@as(c_uint, c))) - @as(c_int, 'A')) + @as(c_int, 10);
    parser.*.currentChar -= 1;
    return -@as(c_int, 1);
}
pub fn makeNumber(arg_parser: [*c]Parser, arg_isHex: bool) callconv(.C) void {
    var parser = arg_parser;
    var isHex = arg_isHex;
    __errno_location().* = 0;
    if (isHex) {
        parser.*.next.value = wrenNumToValue(@as(f64, @floatFromInt(strtoll(parser.*.tokenStart, null, @as(c_int, 16)))));
    } else {
        parser.*.next.value = wrenNumToValue(strtod(parser.*.tokenStart, null));
    }
    if (__errno_location().* == @as(c_int, 34)) {
        lexError(parser, "Number literal was too large (%d).", @sizeOf(c_long));
        parser.*.next.value = wrenNumToValue(@as(f64, @floatFromInt(@as(c_int, 0))));
    }
    makeToken(parser, @as(c_uint, @bitCast(TOKEN_NUMBER)));
}
pub fn readHexNumber(arg_parser: [*c]Parser) callconv(.C) void {
    var parser = arg_parser;
    _ = nextChar(parser);
    while (readHexDigit(parser) != -@as(c_int, 1)) continue;
    makeNumber(parser, @as(c_int, 1) != 0);
}
pub fn readNumber(arg_parser: [*c]Parser) callconv(.C) void {
    var parser = arg_parser;
    while (isDigit(peekChar(parser))) {
        _ = nextChar(parser);
    }
    if ((@as(c_int, @bitCast(@as(c_uint, peekChar(parser)))) == @as(c_int, '.')) and (@as(c_int, @intFromBool(isDigit(peekNextChar(parser)))) != 0)) {
        _ = nextChar(parser);
        while (isDigit(peekChar(parser))) {
            _ = nextChar(parser);
        }
    }
    if ((@as(c_int, @intFromBool(matchChar(parser, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 'e')))))))) != 0) or (@as(c_int, @intFromBool(matchChar(parser, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 'E')))))))) != 0)) {
        if (!matchChar(parser, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '+'))))))) {
            _ = matchChar(parser, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '-'))))));
        }
        if (!isDigit(peekChar(parser))) {
            lexError(parser, "Unterminated scientific notation.");
        }
        while (isDigit(peekChar(parser))) {
            _ = nextChar(parser);
        }
    }
    makeNumber(parser, @as(c_int, 0) != 0);
}
pub fn readName(arg_parser: [*c]Parser, arg_type: TokenType, arg_firstChar: u8) callconv(.C) void {
    var parser = arg_parser;
    var @"type" = arg_type;
    var firstChar = arg_firstChar;
    var string: ByteBuffer = undefined;
    wrenByteBufferInit(&string);
    wrenByteBufferWrite(parser.*.vm, &string, @as(u8, @bitCast(firstChar)));
    while ((@as(c_int, @intFromBool(isName(peekChar(parser)))) != 0) or (@as(c_int, @intFromBool(isDigit(peekChar(parser)))) != 0)) {
        var c: u8 = nextChar(parser);
        wrenByteBufferWrite(parser.*.vm, &string, @as(u8, @bitCast(c)));
    }
    var length: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(parser.*.currentChar) -% @intFromPtr(parser.*.tokenStart))), @sizeOf(u8))));
    {
        var i: c_int = 0;
        while (keywords[@as(c_uint, @intCast(i))].identifier != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (i += 1) {
            if ((length == keywords[@as(c_uint, @intCast(i))].length) and (memcmp(@as(?*const anyopaque, @ptrCast(parser.*.tokenStart)), @as(?*const anyopaque, @ptrCast(keywords[@as(c_uint, @intCast(i))].identifier)), length) == @as(c_int, 0))) {
                @"type" = keywords[@as(c_uint, @intCast(i))].tokenType;
                break;
            }
        }
    }
    parser.*.next.value = wrenNewStringLength(parser.*.vm, @as([*c]u8, @ptrCast(@alignCast(string.data))), @as(usize, @bitCast(@as(c_long, string.count))));
    wrenByteBufferClear(parser.*.vm, &string);
    makeToken(parser, @"type");
}
pub fn readHexEscape(arg_parser: [*c]Parser, arg_digits: c_int, arg_description: [*c]const u8) callconv(.C) c_int {
    var parser = arg_parser;
    var digits = arg_digits;
    var description = arg_description;
    var value: c_int = 0;
    {
        var i: c_int = 0;
        while (i < digits) : (i += 1) {
            if ((@as(c_int, @bitCast(@as(c_uint, peekChar(parser)))) == @as(c_int, '"')) or (@as(c_int, @bitCast(@as(c_uint, peekChar(parser)))) == @as(c_int, '\x00'))) {
                lexError(parser, "Incomplete %s escape sequence.", description);
                parser.*.currentChar -= 1;
                break;
            }
            var digit: c_int = readHexDigit(parser);
            if (digit == -@as(c_int, 1)) {
                lexError(parser, "Invalid %s escape sequence.", description);
                break;
            }
            value = (value * @as(c_int, 16)) | digit;
        }
    }
    return value;
}
pub fn readUnicodeEscape(arg_parser: [*c]Parser, arg_string: [*c]ByteBuffer, arg_length: c_int) callconv(.C) void {
    var parser = arg_parser;
    var string = arg_string;
    var length = arg_length;
    var value: c_int = readHexEscape(parser, length, "Unicode");
    var numBytes: c_int = wrenUtf8EncodeNumBytes(value);
    if (numBytes != @as(c_int, 0)) {
        wrenByteBufferFill(parser.*.vm, string, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))), numBytes);
        _ = wrenUtf8Encode(value, (string.*.data + @as(usize, @bitCast(@as(isize, @intCast(string.*.count))))) - @as(usize, @bitCast(@as(isize, @intCast(numBytes)))));
    }
}
pub fn readRawString(arg_parser: [*c]Parser) callconv(.C) void {
    var parser = arg_parser;
    var string: ByteBuffer = undefined;
    wrenByteBufferInit(&string);
    var @"type": TokenType = @as(c_uint, @bitCast(TOKEN_STRING));
    _ = nextChar(parser);
    _ = nextChar(parser);
    var skipStart: c_int = 0;
    var firstNewline: c_int = -@as(c_int, 1);
    var skipEnd: c_int = -@as(c_int, 1);
    var lastNewline: c_int = -@as(c_int, 1);
    while (true) {
        var c: u8 = nextChar(parser);
        var c1: u8 = peekChar(parser);
        var c2: u8 = peekNextChar(parser);
        if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '\r')) continue;
        if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '\n')) {
            lastNewline = string.count;
            skipEnd = lastNewline;
            firstNewline = if (firstNewline == -@as(c_int, 1)) string.count else firstNewline;
        }
        if (((@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '"')) and (@as(c_int, @bitCast(@as(c_uint, c1))) == @as(c_int, '"'))) and (@as(c_int, @bitCast(@as(c_uint, c2))) == @as(c_int, '"'))) break;
        var isWhitespace: bool = (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, ' ')) or (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '\t'));
        skipEnd = if ((@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '\n')) or (@as(c_int, @intFromBool(isWhitespace)) != 0)) skipEnd else -@as(c_int, 1);
        var skippable: bool = ((skipStart != -@as(c_int, 1)) and (@as(c_int, @intFromBool(isWhitespace)) != 0)) and (firstNewline == -@as(c_int, 1));
        skipStart = if (@as(c_int, @intFromBool(skippable)) != 0) string.count + @as(c_int, 1) else skipStart;
        if (((firstNewline == -@as(c_int, 1)) and !isWhitespace) and (@as(c_int, @bitCast(@as(c_uint, c))) != @as(c_int, '\n'))) {
            skipStart = -@as(c_int, 1);
        }
        if (((@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '\x00')) or (@as(c_int, @bitCast(@as(c_uint, c1))) == @as(c_int, '\x00'))) or (@as(c_int, @bitCast(@as(c_uint, c2))) == @as(c_int, '\x00'))) {
            lexError(parser, "Unterminated raw string.");
            parser.*.currentChar -= 1;
            break;
        }
        wrenByteBufferWrite(parser.*.vm, &string, @as(u8, @bitCast(c)));
    }
    _ = nextChar(parser);
    _ = nextChar(parser);
    var offset: c_int = 0;
    var count: c_int = string.count;
    if ((firstNewline != -@as(c_int, 1)) and (skipStart == firstNewline)) {
        offset = firstNewline + @as(c_int, 1);
    }
    if ((lastNewline != -@as(c_int, 1)) and (skipEnd == lastNewline)) {
        count = lastNewline;
    }
    count -= if (offset > count) count else offset;
    parser.*.next.value = wrenNewStringLength(parser.*.vm, @as([*c]u8, @ptrCast(@alignCast(string.data))) + @as(usize, @bitCast(@as(isize, @intCast(offset)))), @as(usize, @bitCast(@as(c_long, count))));
    wrenByteBufferClear(parser.*.vm, &string);
    makeToken(parser, @"type");
}
pub fn readString(arg_parser: [*c]Parser) callconv(.C) void {
    var parser = arg_parser;
    var string: ByteBuffer = undefined;
    var @"type": TokenType = @as(c_uint, @bitCast(TOKEN_STRING));
    wrenByteBufferInit(&string);
    while (true) {
        var c: u8 = nextChar(parser);
        if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '"')) break;
        if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '\r')) continue;
        if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '\x00')) {
            lexError(parser, "Unterminated string.");
            parser.*.currentChar -= 1;
            break;
        }
        if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '%')) {
            if (parser.*.numParens < @as(c_int, 8)) {
                if (@as(c_int, @bitCast(@as(c_uint, nextChar(parser)))) != @as(c_int, '(')) {
                    lexError(parser, "Expect '(' after '%%'.");
                }
                parser.*.parens[@as(c_uint, @intCast(blk: {
                        const ref = &parser.*.numParens;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }))] = 1;
                @"type" = @as(c_uint, @bitCast(TOKEN_INTERPOLATION));
                break;
            }
            lexError(parser, "Interpolation may only nest %d levels deep.", @as(c_int, 8));
        }
        if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '\\')) {
            while (true) {
                switch (@as(c_int, @bitCast(@as(c_uint, nextChar(parser))))) {
                    @as(c_int, 34) => {
                        wrenByteBufferWrite(parser.*.vm, &string, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '"'))))));
                        break;
                    },
                    @as(c_int, 92) => {
                        wrenByteBufferWrite(parser.*.vm, &string, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '\\'))))));
                        break;
                    },
                    @as(c_int, 37) => {
                        wrenByteBufferWrite(parser.*.vm, &string, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '%'))))));
                        break;
                    },
                    @as(c_int, 48) => {
                        wrenByteBufferWrite(parser.*.vm, &string, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '\x00'))))));
                        break;
                    },
                    @as(c_int, 97) => {
                        wrenByteBufferWrite(parser.*.vm, &string, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '\x07'))))));
                        break;
                    },
                    @as(c_int, 98) => {
                        wrenByteBufferWrite(parser.*.vm, &string, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '\x08'))))));
                        break;
                    },
                    @as(c_int, 101) => {
                        wrenByteBufferWrite(parser.*.vm, &string, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '\x1b'))))));
                        break;
                    },
                    @as(c_int, 102) => {
                        wrenByteBufferWrite(parser.*.vm, &string, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '\x0c'))))));
                        break;
                    },
                    @as(c_int, 110) => {
                        wrenByteBufferWrite(parser.*.vm, &string, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '\n'))))));
                        break;
                    },
                    @as(c_int, 114) => {
                        wrenByteBufferWrite(parser.*.vm, &string, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '\r'))))));
                        break;
                    },
                    @as(c_int, 116) => {
                        wrenByteBufferWrite(parser.*.vm, &string, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '\t'))))));
                        break;
                    },
                    @as(c_int, 117) => {
                        readUnicodeEscape(parser, &string, @as(c_int, 4));
                        break;
                    },
                    @as(c_int, 85) => {
                        readUnicodeEscape(parser, &string, @as(c_int, 8));
                        break;
                    },
                    @as(c_int, 118) => {
                        wrenByteBufferWrite(parser.*.vm, &string, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '\x0b'))))));
                        break;
                    },
                    @as(c_int, 120) => {
                        wrenByteBufferWrite(parser.*.vm, &string, @as(u8, @bitCast(@as(i8, @truncate(readHexEscape(parser, @as(c_int, 2), "byte"))))));
                        break;
                    },
                    else => {
                        lexError(parser, "Invalid escape character '%c'.", @as(c_int, @bitCast(@as(c_uint, (parser.*.currentChar - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))).*))));
                        break;
                    },
                }
                break;
            }
        } else {
            wrenByteBufferWrite(parser.*.vm, &string, @as(u8, @bitCast(c)));
        }
    }
    parser.*.next.value = wrenNewStringLength(parser.*.vm, @as([*c]u8, @ptrCast(@alignCast(string.data))), @as(usize, @bitCast(@as(c_long, string.count))));
    wrenByteBufferClear(parser.*.vm, &string);
    makeToken(parser, @"type");
}
pub fn nextToken(arg_parser: [*c]Parser) callconv(.C) void {
    var parser = arg_parser;
    parser.*.previous = parser.*.current;
    parser.*.current = parser.*.next;
    if (parser.*.next.type == @as(c_uint, @bitCast(TOKEN_EOF))) return;
    if (parser.*.current.type == @as(c_uint, @bitCast(TOKEN_EOF))) return;
    while (@as(c_int, @bitCast(@as(c_uint, peekChar(parser)))) != @as(c_int, '\x00')) {
        parser.*.tokenStart = parser.*.currentChar;
        var c: u8 = nextChar(parser);
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, c)))) {
                @as(c_int, 40) => {
                    if (parser.*.numParens > @as(c_int, 0)) {
                        parser.*.parens[@as(c_uint, @intCast(parser.*.numParens - @as(c_int, 1)))] += 1;
                    }
                    makeToken(parser, @as(c_uint, @bitCast(TOKEN_LEFT_PAREN)));
                    return;
                },
                @as(c_int, 41) => {
                    if ((parser.*.numParens > @as(c_int, 0)) and ((blk: {
                        const ref = &parser.*.parens[@as(c_uint, @intCast(parser.*.numParens - @as(c_int, 1)))];
                        ref.* -= 1;
                        break :blk ref.*;
                    }) == @as(c_int, 0))) {
                        parser.*.numParens -= 1;
                        readString(parser);
                        return;
                    }
                    makeToken(parser, @as(c_uint, @bitCast(TOKEN_RIGHT_PAREN)));
                    return;
                },
                @as(c_int, 91) => {
                    makeToken(parser, @as(c_uint, @bitCast(TOKEN_LEFT_BRACKET)));
                    return;
                },
                @as(c_int, 93) => {
                    makeToken(parser, @as(c_uint, @bitCast(TOKEN_RIGHT_BRACKET)));
                    return;
                },
                @as(c_int, 123) => {
                    makeToken(parser, @as(c_uint, @bitCast(TOKEN_LEFT_BRACE)));
                    return;
                },
                @as(c_int, 125) => {
                    makeToken(parser, @as(c_uint, @bitCast(TOKEN_RIGHT_BRACE)));
                    return;
                },
                @as(c_int, 58) => {
                    makeToken(parser, @as(c_uint, @bitCast(TOKEN_COLON)));
                    return;
                },
                @as(c_int, 44) => {
                    makeToken(parser, @as(c_uint, @bitCast(TOKEN_COMMA)));
                    return;
                },
                @as(c_int, 42) => {
                    makeToken(parser, @as(c_uint, @bitCast(TOKEN_STAR)));
                    return;
                },
                @as(c_int, 37) => {
                    makeToken(parser, @as(c_uint, @bitCast(TOKEN_PERCENT)));
                    return;
                },
                @as(c_int, 35) => {
                    {
                        if (((parser.*.currentLine == @as(c_int, 1)) and (@as(c_int, @bitCast(@as(c_uint, peekChar(parser)))) == @as(c_int, '!'))) and (@as(c_int, @bitCast(@as(c_uint, peekNextChar(parser)))) == @as(c_int, '/'))) {
                            skipLineComment(parser);
                            break;
                        }
                        makeToken(parser, @as(c_uint, @bitCast(TOKEN_HASH)));
                        return;
                    }
                },
                @as(c_int, 94) => {
                    makeToken(parser, @as(c_uint, @bitCast(TOKEN_CARET)));
                    return;
                },
                @as(c_int, 43) => {
                    makeToken(parser, @as(c_uint, @bitCast(TOKEN_PLUS)));
                    return;
                },
                @as(c_int, 45) => {
                    makeToken(parser, @as(c_uint, @bitCast(TOKEN_MINUS)));
                    return;
                },
                @as(c_int, 126) => {
                    makeToken(parser, @as(c_uint, @bitCast(TOKEN_TILDE)));
                    return;
                },
                @as(c_int, 63) => {
                    makeToken(parser, @as(c_uint, @bitCast(TOKEN_QUESTION)));
                    return;
                },
                @as(c_int, 124) => {
                    twoCharToken(parser, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '|'))))), @as(c_uint, @bitCast(TOKEN_PIPEPIPE)), @as(c_uint, @bitCast(TOKEN_PIPE)));
                    return;
                },
                @as(c_int, 38) => {
                    twoCharToken(parser, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '&'))))), @as(c_uint, @bitCast(TOKEN_AMPAMP)), @as(c_uint, @bitCast(TOKEN_AMP)));
                    return;
                },
                @as(c_int, 61) => {
                    twoCharToken(parser, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '='))))), @as(c_uint, @bitCast(TOKEN_EQEQ)), @as(c_uint, @bitCast(TOKEN_EQ)));
                    return;
                },
                @as(c_int, 33) => {
                    twoCharToken(parser, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '='))))), @as(c_uint, @bitCast(TOKEN_BANGEQ)), @as(c_uint, @bitCast(TOKEN_BANG)));
                    return;
                },
                @as(c_int, 46) => {
                    if (matchChar(parser, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '.'))))))) {
                        twoCharToken(parser, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '.'))))), @as(c_uint, @bitCast(TOKEN_DOTDOTDOT)), @as(c_uint, @bitCast(TOKEN_DOTDOT)));
                        return;
                    }
                    makeToken(parser, @as(c_uint, @bitCast(TOKEN_DOT)));
                    return;
                },
                @as(c_int, 47) => {
                    if (matchChar(parser, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '/'))))))) {
                        skipLineComment(parser);
                        break;
                    }
                    if (matchChar(parser, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '*'))))))) {
                        skipBlockComment(parser);
                        break;
                    }
                    makeToken(parser, @as(c_uint, @bitCast(TOKEN_SLASH)));
                    return;
                },
                @as(c_int, 60) => {
                    if (matchChar(parser, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '<'))))))) {
                        makeToken(parser, @as(c_uint, @bitCast(TOKEN_LTLT)));
                    } else {
                        twoCharToken(parser, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '='))))), @as(c_uint, @bitCast(TOKEN_LTEQ)), @as(c_uint, @bitCast(TOKEN_LT)));
                    }
                    return;
                },
                @as(c_int, 62) => {
                    if (matchChar(parser, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '>'))))))) {
                        makeToken(parser, @as(c_uint, @bitCast(TOKEN_GTGT)));
                    } else {
                        twoCharToken(parser, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '='))))), @as(c_uint, @bitCast(TOKEN_GTEQ)), @as(c_uint, @bitCast(TOKEN_GT)));
                    }
                    return;
                },
                @as(c_int, 10) => {
                    makeToken(parser, @as(c_uint, @bitCast(TOKEN_LINE)));
                    return;
                },
                @as(c_int, 32), @as(c_int, 13), @as(c_int, 9) => {
                    while (((@as(c_int, @bitCast(@as(c_uint, peekChar(parser)))) == @as(c_int, ' ')) or (@as(c_int, @bitCast(@as(c_uint, peekChar(parser)))) == @as(c_int, '\r'))) or (@as(c_int, @bitCast(@as(c_uint, peekChar(parser)))) == @as(c_int, '\t'))) {
                        _ = nextChar(parser);
                    }
                    break;
                },
                @as(c_int, 34) => {
                    {
                        if ((@as(c_int, @bitCast(@as(c_uint, peekChar(parser)))) == @as(c_int, '"')) and (@as(c_int, @bitCast(@as(c_uint, peekNextChar(parser)))) == @as(c_int, '"'))) {
                            readRawString(parser);
                            return;
                        }
                        readString(parser);
                        return;
                    }
                },
                @as(c_int, 95) => {
                    readName(parser, @as(c_uint, @bitCast(if (@as(c_int, @bitCast(@as(c_uint, peekChar(parser)))) == @as(c_int, '_')) TOKEN_STATIC_FIELD else TOKEN_FIELD)), c);
                    return;
                },
                @as(c_int, 48) => {
                    if (@as(c_int, @bitCast(@as(c_uint, peekChar(parser)))) == @as(c_int, 'x')) {
                        readHexNumber(parser);
                        return;
                    }
                    readNumber(parser);
                    return;
                },
                else => {
                    if (isName(c)) {
                        readName(parser, @as(c_uint, @bitCast(TOKEN_NAME)), c);
                    } else if (isDigit(c)) {
                        readNumber(parser);
                    } else {
                        if ((@as(c_int, @bitCast(@as(c_uint, c))) >= @as(c_int, 32)) and (@as(c_int, @bitCast(@as(c_uint, c))) <= @as(c_int, 126))) {
                            lexError(parser, "Invalid character '%c'.", @as(c_int, @bitCast(@as(c_uint, c))));
                        } else {
                            lexError(parser, "Invalid byte 0x%x.", @as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(c))))));
                        }
                        parser.*.next.type = @as(c_uint, @bitCast(TOKEN_ERROR));
                        parser.*.next.length = 0;
                    }
                    return;
                },
            }
            break;
        }
    }
    parser.*.tokenStart = parser.*.currentChar;
    makeToken(parser, @as(c_uint, @bitCast(TOKEN_EOF)));
}
pub fn peek(arg_compiler: [*c]Compiler) callconv(.C) TokenType {
    var compiler = arg_compiler;
    return compiler.*.parser.*.current.type;
}
pub fn peekNext(arg_compiler: [*c]Compiler) callconv(.C) TokenType {
    var compiler = arg_compiler;
    return compiler.*.parser.*.next.type;
}
pub fn match(arg_compiler: [*c]Compiler, arg_expected: TokenType) callconv(.C) bool {
    var compiler = arg_compiler;
    var expected = arg_expected;
    if (peek(compiler) != expected) return @as(c_int, 0) != 0;
    nextToken(compiler.*.parser);
    return @as(c_int, 1) != 0;
}
pub fn consume(arg_compiler: [*c]Compiler, arg_expected: TokenType, arg_errorMessage: [*c]const u8) callconv(.C) void {
    var compiler = arg_compiler;
    var expected = arg_expected;
    var errorMessage = arg_errorMessage;
    nextToken(compiler.*.parser);
    if (compiler.*.parser.*.previous.type != expected) {
        @"error"(compiler, errorMessage);
        if (compiler.*.parser.*.current.type == expected) {
            nextToken(compiler.*.parser);
        }
    }
}
pub fn matchLine(arg_compiler: [*c]Compiler) callconv(.C) bool {
    var compiler = arg_compiler;
    if (!match(compiler, @as(c_uint, @bitCast(TOKEN_LINE)))) return @as(c_int, 0) != 0;
    while (match(compiler, @as(c_uint, @bitCast(TOKEN_LINE)))) {}
    return @as(c_int, 1) != 0;
}
pub fn ignoreNewlines(arg_compiler: [*c]Compiler) callconv(.C) void {
    var compiler = arg_compiler;
    _ = matchLine(compiler);
}
pub fn consumeLine(arg_compiler: [*c]Compiler, arg_errorMessage: [*c]const u8) callconv(.C) void {
    var compiler = arg_compiler;
    var errorMessage = arg_errorMessage;
    consume(compiler, @as(c_uint, @bitCast(TOKEN_LINE)), errorMessage);
    ignoreNewlines(compiler);
}
pub fn allowLineBeforeDot(arg_compiler: [*c]Compiler) callconv(.C) void {
    var compiler = arg_compiler;
    if ((peek(compiler) == @as(c_uint, @bitCast(TOKEN_LINE))) and (peekNext(compiler) == @as(c_uint, @bitCast(TOKEN_DOT)))) {
        nextToken(compiler.*.parser);
    }
}
pub fn emitByte(arg_compiler: [*c]Compiler, arg_byte: c_int) callconv(.C) c_int {
    var compiler = arg_compiler;
    var byte = arg_byte;
    wrenByteBufferWrite(compiler.*.parser.*.vm, &compiler.*.@"fn".*.code, @as(u8, @bitCast(@as(i8, @truncate(byte)))));
    wrenIntBufferWrite(compiler.*.parser.*.vm, &compiler.*.@"fn".*.debug.*.sourceLines, compiler.*.parser.*.previous.line);
    return compiler.*.@"fn".*.code.count - @as(c_int, 1);
}
pub fn emitOp(arg_compiler: [*c]Compiler, arg_instruction: Code) callconv(.C) void {
    var compiler = arg_compiler;
    var instruction = arg_instruction;
    _ = emitByte(compiler, @as(c_int, @bitCast(instruction)));
    compiler.*.numSlots += stackEffects[instruction];
    if (compiler.*.numSlots > compiler.*.@"fn".*.maxSlots) {
        compiler.*.@"fn".*.maxSlots = compiler.*.numSlots;
    }
}
pub fn emitShort(arg_compiler: [*c]Compiler, arg_arg: c_int) callconv(.C) void {
    var compiler = arg_compiler;
    var arg = arg_arg;
    _ = emitByte(compiler, (arg >> @intCast(8)) & @as(c_int, 255));
    _ = emitByte(compiler, arg & @as(c_int, 255));
}
pub fn emitByteArg(arg_compiler: [*c]Compiler, arg_instruction: Code, arg_arg: c_int) callconv(.C) c_int {
    var compiler = arg_compiler;
    var instruction = arg_instruction;
    var arg = arg_arg;
    emitOp(compiler, instruction);
    return emitByte(compiler, arg);
}
pub fn emitShortArg(arg_compiler: [*c]Compiler, arg_instruction: Code, arg_arg: c_int) callconv(.C) void {
    var compiler = arg_compiler;
    var instruction = arg_instruction;
    var arg = arg_arg;
    emitOp(compiler, instruction);
    emitShort(compiler, arg);
}
pub fn emitJump(arg_compiler: [*c]Compiler, arg_instruction: Code) callconv(.C) c_int {
    var compiler = arg_compiler;
    var instruction = arg_instruction;
    emitOp(compiler, instruction);
    _ = emitByte(compiler, @as(c_int, 255));
    return emitByte(compiler, @as(c_int, 255)) - @as(c_int, 1);
}
pub fn emitConstant(arg_compiler: [*c]Compiler, arg_value: Value) callconv(.C) void {
    var compiler = arg_compiler;
    var value = arg_value;
    var constant: c_int = addConstant(compiler, value);
    emitShortArg(compiler, @as(c_uint, @bitCast(CODE_CONSTANT)), constant);
}
pub fn addLocal(arg_compiler: [*c]Compiler, arg_name_1: [*c]const u8, arg_length: c_int) callconv(.C) c_int {
    var compiler = arg_compiler;
    var name_1 = arg_name_1;
    var length = arg_length;
    var local: [*c]Local = &compiler.*.locals[@as(c_uint, @intCast(compiler.*.numLocals))];
    local.*.name = name_1;
    local.*.length = length;
    local.*.depth = compiler.*.scopeDepth;
    local.*.isUpvalue = @as(c_int, 0) != 0;
    return blk: {
        const ref = &compiler.*.numLocals;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    };
}
pub fn declareVariable(arg_compiler: [*c]Compiler, arg_token: [*c]Token) callconv(.C) c_int {
    var compiler = arg_compiler;
    var token = arg_token;
    if (token == @as([*c]Token, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        token = &compiler.*.parser.*.previous;
    }
    if (token.*.length > @as(c_int, 64)) {
        @"error"(compiler, "Variable name cannot be longer than %d characters.", @as(c_int, 64));
    }
    if (compiler.*.scopeDepth == -@as(c_int, 1)) {
        var line: c_int = -@as(c_int, 1);
        var symbol: c_int = wrenDefineVariable(compiler.*.parser.*.vm, compiler.*.parser.*.module, token.*.start, @as(usize, @bitCast(@as(c_long, token.*.length))), @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1)))))), &line);
        if (symbol == -@as(c_int, 1)) {
            @"error"(compiler, "Module variable is already defined.");
        } else if (symbol == -@as(c_int, 2)) {
            @"error"(compiler, "Too many module variables defined.");
        } else if (symbol == -@as(c_int, 3)) {
            @"error"(compiler, "Variable '%.*s' referenced before this definition (first use at line %d).", token.*.length, token.*.start, line);
        }
        return symbol;
    }
    {
        var i: c_int = compiler.*.numLocals - @as(c_int, 1);
        while (i >= @as(c_int, 0)) : (i -= 1) {
            var local: [*c]Local = &compiler.*.locals[@as(c_uint, @intCast(i))];
            if (local.*.depth < compiler.*.scopeDepth) break;
            if ((local.*.length == token.*.length) and (memcmp(@as(?*const anyopaque, @ptrCast(local.*.name)), @as(?*const anyopaque, @ptrCast(token.*.start)), @as(c_ulong, @bitCast(@as(c_long, token.*.length)))) == @as(c_int, 0))) {
                @"error"(compiler, "Variable is already declared in this scope.");
                return i;
            }
        }
    }
    if (compiler.*.numLocals == @as(c_int, 256)) {
        @"error"(compiler, "Cannot declare more than %d variables in one scope.", @as(c_int, 256));
        return -@as(c_int, 1);
    }
    return addLocal(compiler, token.*.start, token.*.length);
}
pub fn declareNamedVariable(arg_compiler: [*c]Compiler) callconv(.C) c_int {
    var compiler = arg_compiler;
    consume(compiler, @as(c_uint, @bitCast(TOKEN_NAME)), "Expect variable name.");
    return declareVariable(compiler, null);
}
pub fn defineVariable(arg_compiler: [*c]Compiler, arg_symbol: c_int) callconv(.C) void {
    var compiler = arg_compiler;
    var symbol = arg_symbol;
    if (compiler.*.scopeDepth >= @as(c_int, 0)) return;
    emitShortArg(compiler, @as(c_uint, @bitCast(CODE_STORE_MODULE_VAR)), symbol);
    emitOp(compiler, @as(c_uint, @bitCast(CODE_POP)));
}
pub fn pushScope(arg_compiler: [*c]Compiler) callconv(.C) void {
    var compiler = arg_compiler;
    compiler.*.scopeDepth += 1;
}
pub fn discardLocals(arg_compiler: [*c]Compiler, arg_depth: c_int) callconv(.C) c_int {
    var compiler = arg_compiler;
    var depth = arg_depth;
    while (true) {
        if (!false) break;
    }
    var local: c_int = compiler.*.numLocals - @as(c_int, 1);
    while ((local >= @as(c_int, 0)) and (compiler.*.locals[@as(c_uint, @intCast(local))].depth >= depth)) {
        if (compiler.*.locals[@as(c_uint, @intCast(local))].isUpvalue) {
            _ = emitByte(compiler, CODE_CLOSE_UPVALUE);
        } else {
            _ = emitByte(compiler, CODE_POP);
        }
        local -= 1;
    }
    return (compiler.*.numLocals - local) - @as(c_int, 1);
}
pub fn popScope(arg_compiler: [*c]Compiler) callconv(.C) void {
    var compiler = arg_compiler;
    var popped: c_int = discardLocals(compiler, compiler.*.scopeDepth);
    compiler.*.numLocals -= popped;
    compiler.*.numSlots -= popped;
    compiler.*.scopeDepth -= 1;
}
pub fn resolveLocal(arg_compiler: [*c]Compiler, arg_name_1: [*c]const u8, arg_length: c_int) callconv(.C) c_int {
    var compiler = arg_compiler;
    var name_1 = arg_name_1;
    var length = arg_length;
    {
        var i: c_int = compiler.*.numLocals - @as(c_int, 1);
        while (i >= @as(c_int, 0)) : (i -= 1) {
            if ((compiler.*.locals[@as(c_uint, @intCast(i))].length == length) and (memcmp(@as(?*const anyopaque, @ptrCast(name_1)), @as(?*const anyopaque, @ptrCast(compiler.*.locals[@as(c_uint, @intCast(i))].name)), @as(c_ulong, @bitCast(@as(c_long, length)))) == @as(c_int, 0))) {
                return i;
            }
        }
    }
    return -@as(c_int, 1);
}
pub fn addUpvalue(arg_compiler: [*c]Compiler, arg_isLocal: bool, arg_index_1: c_int) callconv(.C) c_int {
    var compiler = arg_compiler;
    var isLocal = arg_isLocal;
    var index_1 = arg_index_1;
    {
        var i: c_int = 0;
        while (i < compiler.*.@"fn".*.numUpvalues) : (i += 1) {
            var upvalue: [*c]CompilerUpvalue = &compiler.*.upvalues[@as(c_uint, @intCast(i))];
            if ((upvalue.*.index == index_1) and (@as(c_int, @intFromBool(upvalue.*.isLocal)) == @as(c_int, @intFromBool(isLocal)))) return i;
        }
    }
    compiler.*.upvalues[@as(c_uint, @intCast(compiler.*.@"fn".*.numUpvalues))].isLocal = isLocal;
    compiler.*.upvalues[@as(c_uint, @intCast(compiler.*.@"fn".*.numUpvalues))].index = index_1;
    return blk: {
        const ref = &compiler.*.@"fn".*.numUpvalues;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    };
}
pub fn findUpvalue(arg_compiler: [*c]Compiler, arg_name_1: [*c]const u8, arg_length: c_int) callconv(.C) c_int {
    var compiler = arg_compiler;
    var name_1 = arg_name_1;
    var length = arg_length;
    if (compiler.*.parent == @as([*c]struct_sCompiler, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return -@as(c_int, 1);
    if ((@as(c_int, @bitCast(@as(c_uint, name_1[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '_')) and (compiler.*.parent.*.enclosingClass != @as([*c]ClassInfo, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) return -@as(c_int, 1);
    var local: c_int = resolveLocal(compiler.*.parent, name_1, length);
    if (local != -@as(c_int, 1)) {
        compiler.*.parent.*.locals[@as(c_uint, @intCast(local))].isUpvalue = @as(c_int, 1) != 0;
        return addUpvalue(compiler, @as(c_int, 1) != 0, local);
    }
    var upvalue: c_int = findUpvalue(compiler.*.parent, name_1, length);
    if (upvalue != -@as(c_int, 1)) {
        return addUpvalue(compiler, @as(c_int, 0) != 0, upvalue);
    }
    return -@as(c_int, 1);
}
pub fn resolveNonmodule(arg_compiler: [*c]Compiler, arg_name_1: [*c]const u8, arg_length: c_int) callconv(.C) Variable {
    var compiler = arg_compiler;
    var name_1 = arg_name_1;
    var length = arg_length;
    var variable: Variable = undefined;
    variable.scope = @as(c_uint, @bitCast(SCOPE_LOCAL));
    variable.index = resolveLocal(compiler, name_1, length);
    if (variable.index != -@as(c_int, 1)) return variable;
    variable.scope = @as(c_uint, @bitCast(SCOPE_UPVALUE));
    variable.index = findUpvalue(compiler, name_1, length);
    return variable;
}
pub fn resolveName(arg_compiler: [*c]Compiler, arg_name_1: [*c]const u8, arg_length: c_int) callconv(.C) Variable {
    var compiler = arg_compiler;
    var name_1 = arg_name_1;
    var length = arg_length;
    var variable: Variable = resolveNonmodule(compiler, name_1, length);
    if (variable.index != -@as(c_int, 1)) return variable;
    variable.scope = @as(c_uint, @bitCast(SCOPE_MODULE));
    variable.index = wrenSymbolTableFind(&compiler.*.parser.*.module.*.variableNames, name_1, @as(usize, @bitCast(@as(c_long, length))));
    return variable;
}
pub fn loadLocal(arg_compiler: [*c]Compiler, arg_slot: c_int) callconv(.C) void {
    var compiler = arg_compiler;
    var slot = arg_slot;
    if (slot <= @as(c_int, 8)) {
        emitOp(compiler, @as(c_uint, @bitCast(CODE_LOAD_LOCAL_0 + slot)));
        return;
    }
    _ = emitByteArg(compiler, @as(c_uint, @bitCast(CODE_LOAD_LOCAL)), slot);
}
pub fn endCompiler(arg_compiler: [*c]Compiler, arg_debugName: [*c]const u8, arg_debugNameLength: c_int) callconv(.C) [*c]ObjFn {
    var compiler = arg_compiler;
    var debugName = arg_debugName;
    var debugNameLength = arg_debugNameLength;
    if (compiler.*.parser.*.hasError) {
        compiler.*.parser.*.vm.*.compiler = compiler.*.parent;
        return null;
    }
    emitOp(compiler, @as(c_uint, @bitCast(CODE_END)));
    wrenFunctionBindName(compiler.*.parser.*.vm, compiler.*.@"fn", debugName, debugNameLength);
    if (compiler.*.parent != @as([*c]struct_sCompiler, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var constant: c_int = addConstant(compiler.*.parent, wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(compiler.*.@"fn")))));
        emitShortArg(compiler.*.parent, @as(c_uint, @bitCast(CODE_CLOSURE)), constant);
        {
            var i: c_int = 0;
            while (i < compiler.*.@"fn".*.numUpvalues) : (i += 1) {
                _ = emitByte(compiler.*.parent, if (@as(c_int, @intFromBool(compiler.*.upvalues[@as(c_uint, @intCast(i))].isLocal)) != 0) @as(c_int, 1) else @as(c_int, 0));
                _ = emitByte(compiler.*.parent, compiler.*.upvalues[@as(c_uint, @intCast(i))].index);
            }
        }
    }
    compiler.*.parser.*.vm.*.compiler = compiler.*.parent;
    return compiler.*.@"fn";
}
pub const PREC_NONE: c_int = 0;
pub const PREC_LOWEST: c_int = 1;
pub const PREC_ASSIGNMENT: c_int = 2;
pub const PREC_CONDITIONAL: c_int = 3;
pub const PREC_LOGICAL_OR: c_int = 4;
pub const PREC_LOGICAL_AND: c_int = 5;
pub const PREC_EQUALITY: c_int = 6;
pub const PREC_IS: c_int = 7;
pub const PREC_COMPARISON: c_int = 8;
pub const PREC_BITWISE_OR: c_int = 9;
pub const PREC_BITWISE_XOR: c_int = 10;
pub const PREC_BITWISE_AND: c_int = 11;
pub const PREC_BITWISE_SHIFT: c_int = 12;
pub const PREC_RANGE: c_int = 13;
pub const PREC_TERM: c_int = 14;
pub const PREC_FACTOR: c_int = 15;
pub const PREC_UNARY: c_int = 16;
pub const PREC_CALL: c_int = 17;
pub const PREC_PRIMARY: c_int = 18;
pub const Precedence = c_uint;
pub const GrammarFn = ?*const fn ([*c]Compiler, bool) callconv(.C) void;
pub const SignatureFn = ?*const fn ([*c]Compiler, [*c]Signature) callconv(.C) void;
pub const GrammarRule = extern struct {
    prefix: GrammarFn,
    infix: GrammarFn,
    method: SignatureFn,
    precedence: Precedence,
    name: [*c]const u8,
};
pub fn getRule(arg_type: TokenType) callconv(.C) [*c]GrammarRule {
    var @"type" = arg_type;
    return &rules[@"type"];
}
pub export fn expression(arg_compiler: [*c]Compiler) void {
    var compiler = arg_compiler;
    parsePrecedence(compiler, @as(c_uint, @bitCast(PREC_LOWEST)));
}
pub export fn statement(arg_compiler: [*c]Compiler) void {
    var compiler = arg_compiler;
    if (match(compiler, @as(c_uint, @bitCast(TOKEN_BREAK)))) {
        if (compiler.*.loop == @as([*c]Loop, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            @"error"(compiler, "Cannot use 'break' outside of a loop.");
            return;
        }
        _ = discardLocals(compiler, compiler.*.loop.*.scopeDepth + @as(c_int, 1));
        _ = emitJump(compiler, @as(c_uint, @bitCast(CODE_END)));
    } else if (match(compiler, @as(c_uint, @bitCast(TOKEN_CONTINUE)))) {
        if (compiler.*.loop == @as([*c]Loop, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            @"error"(compiler, "Cannot use 'continue' outside of a loop.");
            return;
        }
        _ = discardLocals(compiler, compiler.*.loop.*.scopeDepth + @as(c_int, 1));
        var loopOffset: c_int = (compiler.*.@"fn".*.code.count - compiler.*.loop.*.start) + @as(c_int, 2);
        emitShortArg(compiler, @as(c_uint, @bitCast(CODE_LOOP)), loopOffset);
    } else if (match(compiler, @as(c_uint, @bitCast(TOKEN_FOR)))) {
        forStatement(compiler);
    } else if (match(compiler, @as(c_uint, @bitCast(TOKEN_IF)))) {
        ifStatement(compiler);
    } else if (match(compiler, @as(c_uint, @bitCast(TOKEN_RETURN)))) {
        if (peek(compiler) == @as(c_uint, @bitCast(TOKEN_LINE))) {
            var result: Code = @as(c_uint, @bitCast(if (@as(c_int, @intFromBool(compiler.*.isInitializer)) != 0) CODE_LOAD_LOCAL_0 else CODE_NULL));
            emitOp(compiler, result);
        } else {
            if (compiler.*.isInitializer) {
                @"error"(compiler, "A constructor cannot return a value.");
            }
            expression(compiler);
        }
        emitOp(compiler, @as(c_uint, @bitCast(CODE_RETURN)));
    } else if (match(compiler, @as(c_uint, @bitCast(TOKEN_WHILE)))) {
        whileStatement(compiler);
    } else if (match(compiler, @as(c_uint, @bitCast(TOKEN_LEFT_BRACE)))) {
        pushScope(compiler);
        if (finishBlock(compiler)) {
            emitOp(compiler, @as(c_uint, @bitCast(CODE_POP)));
        }
        popScope(compiler);
    } else {
        expression(compiler);
        emitOp(compiler, @as(c_uint, @bitCast(CODE_POP)));
    }
}
pub export fn definition(arg_compiler: [*c]Compiler) void {
    var compiler = arg_compiler;
    if (matchAttribute(compiler)) {
        definition(compiler);
        return;
    }
    if (match(compiler, @as(c_uint, @bitCast(TOKEN_CLASS)))) {
        classDefinition(compiler, @as(c_int, 0) != 0);
        return;
    } else if (match(compiler, @as(c_uint, @bitCast(TOKEN_FOREIGN)))) {
        consume(compiler, @as(c_uint, @bitCast(TOKEN_CLASS)), "Expect 'class' after 'foreign'.");
        classDefinition(compiler, @as(c_int, 1) != 0);
        return;
    }
    disallowAttributes(compiler);
    if (match(compiler, @as(c_uint, @bitCast(TOKEN_IMPORT)))) {
        import(compiler);
    } else if (match(compiler, @as(c_uint, @bitCast(TOKEN_VAR)))) {
        variableDefinition(compiler);
    } else {
        statement(compiler);
    }
}
pub export fn parsePrecedence(arg_compiler: [*c]Compiler, arg_precedence: Precedence) void {
    var compiler = arg_compiler;
    var precedence = arg_precedence;
    nextToken(compiler.*.parser);
    var prefix: GrammarFn = rules[compiler.*.parser.*.previous.type].prefix;
    if (prefix == @as(GrammarFn, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        @"error"(compiler, "Expected expression.");
        return;
    }
    var canAssign: bool = precedence <= @as(c_uint, @bitCast(PREC_CONDITIONAL));
    prefix.?(compiler, canAssign);
    while (precedence <= rules[compiler.*.parser.*.current.type].precedence) {
        nextToken(compiler.*.parser);
        var infix: GrammarFn = rules[compiler.*.parser.*.previous.type].infix;
        infix.?(compiler, canAssign);
    }
}
pub fn patchJump(arg_compiler: [*c]Compiler, arg_offset: c_int) callconv(.C) void {
    var compiler = arg_compiler;
    var offset = arg_offset;
    var jump: c_int = (compiler.*.@"fn".*.code.count - offset) - @as(c_int, 2);
    if (jump > (@as(c_int, 1) << @intCast(16))) {
        @"error"(compiler, "Too much code to jump over.");
    }
    (blk: {
        const tmp = offset;
        if (tmp >= 0) break :blk compiler.*.@"fn".*.code.data + @as(usize, @intCast(tmp)) else break :blk compiler.*.@"fn".*.code.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* = @as(u8, @bitCast(@as(i8, @truncate((jump >> @intCast(8)) & @as(c_int, 255)))));
    (blk: {
        const tmp = offset + @as(c_int, 1);
        if (tmp >= 0) break :blk compiler.*.@"fn".*.code.data + @as(usize, @intCast(tmp)) else break :blk compiler.*.@"fn".*.code.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* = @as(u8, @bitCast(@as(i8, @truncate(jump & @as(c_int, 255)))));
}
pub fn finishBlock(arg_compiler: [*c]Compiler) callconv(.C) bool {
    var compiler = arg_compiler;
    if (match(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_BRACE)))) return @as(c_int, 0) != 0;
    if (!matchLine(compiler)) {
        expression(compiler);
        consume(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_BRACE)), "Expect '}' at end of block.");
        return @as(c_int, 1) != 0;
    }
    if (match(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_BRACE)))) return @as(c_int, 0) != 0;
    while (true) {
        definition(compiler);
        consumeLine(compiler, "Expect newline after statement.");
        if (!((peek(compiler) != @as(c_uint, @bitCast(TOKEN_RIGHT_BRACE))) and (peek(compiler) != @as(c_uint, @bitCast(TOKEN_EOF))))) break;
    }
    consume(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_BRACE)), "Expect '}' at end of block.");
    return @as(c_int, 0) != 0;
}
pub fn finishBody(arg_compiler: [*c]Compiler) callconv(.C) void {
    var compiler = arg_compiler;
    var isExpressionBody: bool = finishBlock(compiler);
    if (compiler.*.isInitializer) {
        if (isExpressionBody) {
            emitOp(compiler, @as(c_uint, @bitCast(CODE_POP)));
        }
        emitOp(compiler, @as(c_uint, @bitCast(CODE_LOAD_LOCAL_0)));
    } else if (!isExpressionBody) {
        emitOp(compiler, @as(c_uint, @bitCast(CODE_NULL)));
    }
    emitOp(compiler, @as(c_uint, @bitCast(CODE_RETURN)));
}
pub fn validateNumParameters(arg_compiler: [*c]Compiler, arg_numArgs: c_int) callconv(.C) void {
    var compiler = arg_compiler;
    var numArgs = arg_numArgs;
    if (numArgs == (@as(c_int, 16) + @as(c_int, 1))) {
        @"error"(compiler, "Methods cannot have more than %d parameters.", @as(c_int, 16));
    }
}
pub fn finishParameterList(arg_compiler: [*c]Compiler, arg_signature: [*c]Signature) callconv(.C) void {
    var compiler = arg_compiler;
    var signature = arg_signature;
    while (true) {
        ignoreNewlines(compiler);
        validateNumParameters(compiler, blk: {
            const ref = &signature.*.arity;
            ref.* += 1;
            break :blk ref.*;
        });
        _ = declareNamedVariable(compiler);
        if (!match(compiler, @as(c_uint, @bitCast(TOKEN_COMMA)))) break;
    }
}
pub fn methodSymbol(arg_compiler: [*c]Compiler, arg_name_1: [*c]const u8, arg_length: c_int) callconv(.C) c_int {
    var compiler = arg_compiler;
    var name_1 = arg_name_1;
    var length = arg_length;
    return wrenSymbolTableEnsure(compiler.*.parser.*.vm, &compiler.*.parser.*.vm.*.methodNames, name_1, @as(usize, @bitCast(@as(c_long, length))));
}
pub fn signatureParameterList(arg_name_1: [*c]u8, arg_length: [*c]c_int, arg_numParams: c_int, arg_leftBracket: u8, arg_rightBracket: u8) callconv(.C) void {
    var name_1 = arg_name_1;
    var length = arg_length;
    var numParams = arg_numParams;
    var leftBracket = arg_leftBracket;
    var rightBracket = arg_rightBracket;
    (blk: {
        const tmp = blk_1: {
            const ref = &length.*;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        };
        if (tmp >= 0) break :blk name_1 + @as(usize, @intCast(tmp)) else break :blk name_1 - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* = leftBracket;
    {
        var i: c_int = 0;
        while ((i < numParams) and (i < @as(c_int, 16))) : (i += 1) {
            if (i > @as(c_int, 0)) {
                (blk: {
                    const tmp = blk_1: {
                        const ref = &length.*;
                        const tmp_2 = ref.*;
                        ref.* += 1;
                        break :blk_1 tmp_2;
                    };
                    if (tmp >= 0) break :blk name_1 + @as(usize, @intCast(tmp)) else break :blk name_1 - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).* = ',';
            }
            (blk: {
                const tmp = blk_1: {
                    const ref = &length.*;
                    const tmp_2 = ref.*;
                    ref.* += 1;
                    break :blk_1 tmp_2;
                };
                if (tmp >= 0) break :blk name_1 + @as(usize, @intCast(tmp)) else break :blk name_1 - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = '_';
        }
    }
    (blk: {
        const tmp = blk_1: {
            const ref = &length.*;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        };
        if (tmp >= 0) break :blk name_1 + @as(usize, @intCast(tmp)) else break :blk name_1 - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* = rightBracket;
}
pub fn signatureToString(arg_signature: [*c]Signature, arg_name_1: [*c]u8, arg_length: [*c]c_int) callconv(.C) void {
    var signature = arg_signature;
    var name_1 = arg_name_1;
    var length = arg_length;
    length.* = 0;
    _ = memcpy(@as(?*anyopaque, @ptrCast(name_1 + @as(usize, @bitCast(@as(isize, @intCast(length.*)))))), @as(?*const anyopaque, @ptrCast(signature.*.name)), @as(c_ulong, @bitCast(@as(c_long, signature.*.length))));
    length.* += signature.*.length;
    while (true) {
        switch (signature.*.type) {
            @as(c_uint, @bitCast(@as(c_int, 0))) => {
                signatureParameterList(name_1, length, signature.*.arity, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '('))))), @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ')'))))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 1))) => break,
            @as(c_uint, @bitCast(@as(c_int, 2))) => {
                (blk: {
                    const tmp = blk_1: {
                        const ref = &length.*;
                        const tmp_2 = ref.*;
                        ref.* += 1;
                        break :blk_1 tmp_2;
                    };
                    if (tmp >= 0) break :blk name_1 + @as(usize, @intCast(tmp)) else break :blk name_1 - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).* = '=';
                signatureParameterList(name_1, length, @as(c_int, 1), @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '('))))), @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ')'))))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 3))) => {
                signatureParameterList(name_1, length, signature.*.arity, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '['))))), @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ']'))))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 4))) => {
                signatureParameterList(name_1, length, signature.*.arity - @as(c_int, 1), @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '['))))), @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ']'))))));
                (blk: {
                    const tmp = blk_1: {
                        const ref = &length.*;
                        const tmp_2 = ref.*;
                        ref.* += 1;
                        break :blk_1 tmp_2;
                    };
                    if (tmp >= 0) break :blk name_1 + @as(usize, @intCast(tmp)) else break :blk name_1 - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).* = '=';
                signatureParameterList(name_1, length, @as(c_int, 1), @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '('))))), @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ')'))))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 5))) => {
                _ = memcpy(@as(?*anyopaque, @ptrCast(name_1)), @as(?*const anyopaque, @ptrCast("init ")), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 5)))));
                _ = memcpy(@as(?*anyopaque, @ptrCast(name_1 + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 5))))))), @as(?*const anyopaque, @ptrCast(signature.*.name)), @as(c_ulong, @bitCast(@as(c_long, signature.*.length))));
                length.* = @as(c_int, 5) + signature.*.length;
                signatureParameterList(name_1, length, signature.*.arity, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '('))))), @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ')'))))));
                break;
            },
            else => {},
        }
        break;
    }
    (blk: {
        const tmp = length.*;
        if (tmp >= 0) break :blk name_1 + @as(usize, @intCast(tmp)) else break :blk name_1 - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* = '\x00';
}
pub fn signatureSymbol(arg_compiler: [*c]Compiler, arg_signature: [*c]Signature) callconv(.C) c_int {
    var compiler = arg_compiler;
    var signature = arg_signature;
    var name_1: [102]u8 = undefined;
    var length: c_int = undefined;
    signatureToString(signature, @as([*c]u8, @ptrCast(@alignCast(&name_1))), &length);
    return methodSymbol(compiler, @as([*c]u8, @ptrCast(@alignCast(&name_1))), length);
}
pub fn signatureFromToken(arg_compiler: [*c]Compiler, arg_type: SignatureType) callconv(.C) Signature {
    var compiler = arg_compiler;
    var @"type" = arg_type;
    var signature: Signature = undefined;
    var token: [*c]Token = &compiler.*.parser.*.previous;
    signature.name = token.*.start;
    signature.length = token.*.length;
    signature.type = @"type";
    signature.arity = 0;
    if (signature.length > @as(c_int, 64)) {
        @"error"(compiler, "Method names cannot be longer than %d characters.", @as(c_int, 64));
        signature.length = 64;
    }
    return signature;
}
pub fn finishArgumentList(arg_compiler: [*c]Compiler, arg_signature: [*c]Signature) callconv(.C) void {
    var compiler = arg_compiler;
    var signature = arg_signature;
    while (true) {
        ignoreNewlines(compiler);
        validateNumParameters(compiler, blk: {
            const ref = &signature.*.arity;
            ref.* += 1;
            break :blk ref.*;
        });
        expression(compiler);
        if (!match(compiler, @as(c_uint, @bitCast(TOKEN_COMMA)))) break;
    }
    ignoreNewlines(compiler);
}
pub fn callSignature(arg_compiler: [*c]Compiler, arg_instruction: Code, arg_signature: [*c]Signature) callconv(.C) void {
    var compiler = arg_compiler;
    var instruction = arg_instruction;
    var signature = arg_signature;
    var symbol: c_int = signatureSymbol(compiler, signature);
    emitShortArg(compiler, instruction +% @as(c_uint, @bitCast(signature.*.arity)), symbol);
    if (instruction == @as(c_uint, @bitCast(CODE_SUPER_0))) {
        emitShort(compiler, addConstant(compiler, @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))))));
    }
}
pub fn callMethod(arg_compiler: [*c]Compiler, arg_numArgs: c_int, arg_name_1: [*c]const u8, arg_length: c_int) callconv(.C) void {
    var compiler = arg_compiler;
    var numArgs = arg_numArgs;
    var name_1 = arg_name_1;
    var length = arg_length;
    var symbol: c_int = methodSymbol(compiler, name_1, length);
    emitShortArg(compiler, @as(c_uint, @bitCast(CODE_CALL_0 + numArgs)), symbol);
}
pub fn methodCall(arg_compiler: [*c]Compiler, arg_instruction: Code, arg_signature: [*c]Signature) callconv(.C) void {
    var compiler = arg_compiler;
    var instruction = arg_instruction;
    var signature = arg_signature;
    var called: Signature = Signature{
        .name = signature.*.name,
        .length = signature.*.length,
        .type = @as(c_uint, @bitCast(SIG_GETTER)),
        .arity = @as(c_int, 0),
    };
    if (match(compiler, @as(c_uint, @bitCast(TOKEN_LEFT_PAREN)))) {
        called.type = @as(c_uint, @bitCast(SIG_METHOD));
        ignoreNewlines(compiler);
        if (peek(compiler) != @as(c_uint, @bitCast(TOKEN_RIGHT_PAREN))) {
            finishArgumentList(compiler, &called);
        }
        consume(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_PAREN)), "Expect ')' after arguments.");
    }
    if (match(compiler, @as(c_uint, @bitCast(TOKEN_LEFT_BRACE)))) {
        called.type = @as(c_uint, @bitCast(SIG_METHOD));
        called.arity += 1;
        var fnCompiler: Compiler = undefined;
        initCompiler(&fnCompiler, compiler.*.parser, compiler, @as(c_int, 0) != 0);
        var fnSignature: Signature = Signature{
            .name = "",
            .length = @as(c_int, 0),
            .type = @as(c_uint, @bitCast(SIG_METHOD)),
            .arity = @as(c_int, 0),
        };
        if (match(compiler, @as(c_uint, @bitCast(TOKEN_PIPE)))) {
            finishParameterList(&fnCompiler, &fnSignature);
            consume(compiler, @as(c_uint, @bitCast(TOKEN_PIPE)), "Expect '|' after function parameters.");
        }
        fnCompiler.@"fn".*.arity = fnSignature.arity;
        finishBody(&fnCompiler);
        var blockName: [117]u8 = undefined;
        var blockLength: c_int = undefined;
        signatureToString(&called, @as([*c]u8, @ptrCast(@alignCast(&blockName))), &blockLength);
        _ = memmove(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&blockName))) + @as(usize, @bitCast(@as(isize, @intCast(blockLength)))))), @as(?*const anyopaque, @ptrCast(" block argument")), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 16)))));
        _ = endCompiler(&fnCompiler, @as([*c]u8, @ptrCast(@alignCast(&blockName))), blockLength + @as(c_int, 15));
    }
    if (signature.*.type == @as(c_uint, @bitCast(SIG_INITIALIZER))) {
        if (called.type != @as(c_uint, @bitCast(SIG_METHOD))) {
            @"error"(compiler, "A superclass constructor must have an argument list.");
        }
        called.type = @as(c_uint, @bitCast(SIG_INITIALIZER));
    }
    callSignature(compiler, instruction, &called);
}
pub fn namedCall(arg_compiler: [*c]Compiler, arg_canAssign: bool, arg_instruction: Code) callconv(.C) void {
    var compiler = arg_compiler;
    var canAssign = arg_canAssign;
    var instruction = arg_instruction;
    var signature: Signature = signatureFromToken(compiler, @as(c_uint, @bitCast(SIG_GETTER)));
    if ((@as(c_int, @intFromBool(canAssign)) != 0) and (@as(c_int, @intFromBool(match(compiler, @as(c_uint, @bitCast(TOKEN_EQ))))) != 0)) {
        ignoreNewlines(compiler);
        signature.type = @as(c_uint, @bitCast(SIG_SETTER));
        signature.arity = 1;
        expression(compiler);
        callSignature(compiler, instruction, &signature);
    } else {
        methodCall(compiler, instruction, &signature);
        allowLineBeforeDot(compiler);
    }
}
pub fn loadVariable(arg_compiler: [*c]Compiler, arg_variable: Variable) callconv(.C) void {
    var compiler = arg_compiler;
    var variable = arg_variable;
    while (true) {
        switch (variable.scope) {
            @as(c_uint, @bitCast(@as(c_int, 0))) => {
                loadLocal(compiler, variable.index);
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 1))) => {
                _ = emitByteArg(compiler, @as(c_uint, @bitCast(CODE_LOAD_UPVALUE)), variable.index);
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 2))) => {
                emitShortArg(compiler, @as(c_uint, @bitCast(CODE_LOAD_MODULE_VAR)), variable.index);
                break;
            },
            else => {
                {}
            },
        }
        break;
    }
}
pub fn loadThis(arg_compiler: [*c]Compiler) callconv(.C) void {
    var compiler = arg_compiler;
    loadVariable(compiler, resolveNonmodule(compiler, "this", @as(c_int, 4)));
}
pub fn loadCoreVariable(arg_compiler: [*c]Compiler, arg_name_1: [*c]const u8) callconv(.C) void {
    var compiler = arg_compiler;
    var name_1 = arg_name_1;
    var symbol: c_int = wrenSymbolTableFind(&compiler.*.parser.*.module.*.variableNames, name_1, strlen(name_1));
    while (true) {
        if (!false) break;
    }
    emitShortArg(compiler, @as(c_uint, @bitCast(CODE_LOAD_MODULE_VAR)), symbol);
}
pub fn grouping(arg_compiler: [*c]Compiler, arg_canAssign: bool) callconv(.C) void {
    var compiler = arg_compiler;
    var canAssign = arg_canAssign;
    _ = @TypeOf(canAssign);
    expression(compiler);
    consume(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_PAREN)), "Expect ')' after expression.");
}
pub fn list(arg_compiler: [*c]Compiler, arg_canAssign: bool) callconv(.C) void {
    var compiler = arg_compiler;
    var canAssign = arg_canAssign;
    _ = @TypeOf(canAssign);
    loadCoreVariable(compiler, "List");
    callMethod(compiler, @as(c_int, 0), "new()", @as(c_int, 5));
    while (true) {
        ignoreNewlines(compiler);
        if (peek(compiler) == @as(c_uint, @bitCast(TOKEN_RIGHT_BRACKET))) break;
        expression(compiler);
        callMethod(compiler, @as(c_int, 1), "addCore_(_)", @as(c_int, 11));
        if (!match(compiler, @as(c_uint, @bitCast(TOKEN_COMMA)))) break;
    }
    ignoreNewlines(compiler);
    consume(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_BRACKET)), "Expect ']' after list elements.");
}
pub fn map(arg_compiler: [*c]Compiler, arg_canAssign: bool) callconv(.C) void {
    var compiler = arg_compiler;
    var canAssign = arg_canAssign;
    _ = @TypeOf(canAssign);
    loadCoreVariable(compiler, "Map");
    callMethod(compiler, @as(c_int, 0), "new()", @as(c_int, 5));
    while (true) {
        ignoreNewlines(compiler);
        if (peek(compiler) == @as(c_uint, @bitCast(TOKEN_RIGHT_BRACE))) break;
        parsePrecedence(compiler, @as(c_uint, @bitCast(PREC_UNARY)));
        consume(compiler, @as(c_uint, @bitCast(TOKEN_COLON)), "Expect ':' after map key.");
        ignoreNewlines(compiler);
        expression(compiler);
        callMethod(compiler, @as(c_int, 2), "addCore_(_,_)", @as(c_int, 13));
        if (!match(compiler, @as(c_uint, @bitCast(TOKEN_COMMA)))) break;
    }
    ignoreNewlines(compiler);
    consume(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_BRACE)), "Expect '}' after map entries.");
}
pub fn unaryOp(arg_compiler: [*c]Compiler, arg_canAssign: bool) callconv(.C) void {
    var compiler = arg_compiler;
    var canAssign = arg_canAssign;
    _ = @TypeOf(canAssign);
    var rule: [*c]GrammarRule = getRule(compiler.*.parser.*.previous.type);
    ignoreNewlines(compiler);
    parsePrecedence(compiler, @as(c_uint, @bitCast(PREC_UNARY + @as(c_int, 1))));
    callMethod(compiler, @as(c_int, 0), rule.*.name, @as(c_int, 1));
}
pub fn boolean(arg_compiler: [*c]Compiler, arg_canAssign: bool) callconv(.C) void {
    var compiler = arg_compiler;
    var canAssign = arg_canAssign;
    _ = @TypeOf(canAssign);
    emitOp(compiler, @as(c_uint, @bitCast(if (compiler.*.parser.*.previous.type == @as(c_uint, @bitCast(TOKEN_FALSE))) CODE_FALSE else CODE_TRUE)));
}
pub fn getEnclosingClassCompiler(arg_compiler: [*c]Compiler) callconv(.C) [*c]Compiler {
    var compiler = arg_compiler;
    while (compiler != @as([*c]Compiler, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        if (compiler.*.enclosingClass != @as([*c]ClassInfo, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return compiler;
        compiler = compiler.*.parent;
    }
    return null;
}
pub fn getEnclosingClass(arg_compiler: [*c]Compiler) callconv(.C) [*c]ClassInfo {
    var compiler = arg_compiler;
    compiler = getEnclosingClassCompiler(compiler);
    return if (compiler == @as([*c]Compiler, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) null else compiler.*.enclosingClass;
}
pub fn field(arg_compiler: [*c]Compiler, arg_canAssign: bool) callconv(.C) void {
    var compiler = arg_compiler;
    var canAssign = arg_canAssign;
    var field_1: c_int = 255;
    var enclosingClass: [*c]ClassInfo = getEnclosingClass(compiler);
    if (enclosingClass == @as([*c]ClassInfo, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        @"error"(compiler, "Cannot reference a field outside of a class definition.");
    } else if (enclosingClass.*.isForeign) {
        @"error"(compiler, "Cannot define fields in a foreign class.");
    } else if (enclosingClass.*.inStatic) {
        @"error"(compiler, "Cannot use an instance field in a static method.");
    } else {
        field_1 = wrenSymbolTableEnsure(compiler.*.parser.*.vm, &enclosingClass.*.fields, compiler.*.parser.*.previous.start, @as(usize, @bitCast(@as(c_long, compiler.*.parser.*.previous.length))));
        if (field_1 >= @as(c_int, 255)) {
            @"error"(compiler, "A class can only have %d fields.", @as(c_int, 255));
        }
    }
    var isLoad: bool = @as(c_int, 1) != 0;
    if ((@as(c_int, @intFromBool(canAssign)) != 0) and (@as(c_int, @intFromBool(match(compiler, @as(c_uint, @bitCast(TOKEN_EQ))))) != 0)) {
        expression(compiler);
        isLoad = @as(c_int, 0) != 0;
    }
    if ((compiler.*.parent != @as([*c]struct_sCompiler, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (compiler.*.parent.*.enclosingClass == enclosingClass)) {
        _ = emitByteArg(compiler, @as(c_uint, @bitCast(if (@as(c_int, @intFromBool(isLoad)) != 0) CODE_LOAD_FIELD_THIS else CODE_STORE_FIELD_THIS)), field_1);
    } else {
        loadThis(compiler);
        _ = emitByteArg(compiler, @as(c_uint, @bitCast(if (@as(c_int, @intFromBool(isLoad)) != 0) CODE_LOAD_FIELD else CODE_STORE_FIELD)), field_1);
    }
    allowLineBeforeDot(compiler);
}
pub fn bareName(arg_compiler: [*c]Compiler, arg_canAssign: bool, arg_variable: Variable) callconv(.C) void {
    var compiler = arg_compiler;
    var canAssign = arg_canAssign;
    var variable = arg_variable;
    if ((@as(c_int, @intFromBool(canAssign)) != 0) and (@as(c_int, @intFromBool(match(compiler, @as(c_uint, @bitCast(TOKEN_EQ))))) != 0)) {
        expression(compiler);
        while (true) {
            switch (variable.scope) {
                @as(c_uint, @bitCast(@as(c_int, 0))) => {
                    _ = emitByteArg(compiler, @as(c_uint, @bitCast(CODE_STORE_LOCAL)), variable.index);
                    break;
                },
                @as(c_uint, @bitCast(@as(c_int, 1))) => {
                    _ = emitByteArg(compiler, @as(c_uint, @bitCast(CODE_STORE_UPVALUE)), variable.index);
                    break;
                },
                @as(c_uint, @bitCast(@as(c_int, 2))) => {
                    emitShortArg(compiler, @as(c_uint, @bitCast(CODE_STORE_MODULE_VAR)), variable.index);
                    break;
                },
                else => {
                    {}
                },
            }
            break;
        }
        return;
    }
    loadVariable(compiler, variable);
    allowLineBeforeDot(compiler);
}
pub fn staticField(arg_compiler: [*c]Compiler, arg_canAssign: bool) callconv(.C) void {
    var compiler = arg_compiler;
    var canAssign = arg_canAssign;
    var classCompiler: [*c]Compiler = getEnclosingClassCompiler(compiler);
    if (classCompiler == @as([*c]Compiler, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        @"error"(compiler, "Cannot use a static field outside of a class definition.");
        return;
    }
    var token: [*c]Token = &compiler.*.parser.*.previous;
    if (resolveLocal(classCompiler, token.*.start, token.*.length) == -@as(c_int, 1)) {
        var symbol: c_int = declareVariable(classCompiler, null);
        emitOp(classCompiler, @as(c_uint, @bitCast(CODE_NULL)));
        defineVariable(classCompiler, symbol);
    }
    var variable: Variable = resolveName(compiler, token.*.start, token.*.length);
    bareName(compiler, canAssign, variable);
}
pub fn name(arg_compiler: [*c]Compiler, arg_canAssign: bool) callconv(.C) void {
    var compiler = arg_compiler;
    var canAssign = arg_canAssign;
    var token: [*c]Token = &compiler.*.parser.*.previous;
    var variable: Variable = resolveNonmodule(compiler, token.*.start, token.*.length);
    if (variable.index != -@as(c_int, 1)) {
        bareName(compiler, canAssign, variable);
        return;
    }
    if ((@as(c_int, @intFromBool(wrenIsLocalName(token.*.start))) != 0) and (getEnclosingClass(compiler) != @as([*c]ClassInfo, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
        loadThis(compiler);
        namedCall(compiler, canAssign, @as(c_uint, @bitCast(CODE_CALL_0)));
        return;
    }
    variable.scope = @as(c_uint, @bitCast(SCOPE_MODULE));
    variable.index = wrenSymbolTableFind(&compiler.*.parser.*.module.*.variableNames, token.*.start, @as(usize, @bitCast(@as(c_long, token.*.length))));
    if (variable.index == -@as(c_int, 1)) {
        variable.index = wrenDeclareVariable(compiler.*.parser.*.vm, compiler.*.parser.*.module, token.*.start, @as(usize, @bitCast(@as(c_long, token.*.length))), token.*.line);
        if (variable.index == -@as(c_int, 2)) {
            @"error"(compiler, "Too many module variables defined.");
        }
    }
    bareName(compiler, canAssign, variable);
}
pub fn @"null"(arg_compiler: [*c]Compiler, arg_canAssign: bool) callconv(.C) void {
    var compiler = arg_compiler;
    var canAssign = arg_canAssign;
    _ = @TypeOf(canAssign);
    emitOp(compiler, @as(c_uint, @bitCast(CODE_NULL)));
}
pub fn literal(arg_compiler: [*c]Compiler, arg_canAssign: bool) callconv(.C) void {
    var compiler = arg_compiler;
    var canAssign = arg_canAssign;
    _ = @TypeOf(canAssign);
    emitConstant(compiler, compiler.*.parser.*.previous.value);
}
pub fn stringInterpolation(arg_compiler: [*c]Compiler, arg_canAssign: bool) callconv(.C) void {
    var compiler = arg_compiler;
    var canAssign = arg_canAssign;
    _ = @TypeOf(canAssign);
    loadCoreVariable(compiler, "List");
    callMethod(compiler, @as(c_int, 0), "new()", @as(c_int, 5));
    while (true) {
        literal(compiler, @as(c_int, 0) != 0);
        callMethod(compiler, @as(c_int, 1), "addCore_(_)", @as(c_int, 11));
        ignoreNewlines(compiler);
        expression(compiler);
        callMethod(compiler, @as(c_int, 1), "addCore_(_)", @as(c_int, 11));
        ignoreNewlines(compiler);
        if (!match(compiler, @as(c_uint, @bitCast(TOKEN_INTERPOLATION)))) break;
    }
    consume(compiler, @as(c_uint, @bitCast(TOKEN_STRING)), "Expect end of string interpolation.");
    literal(compiler, @as(c_int, 0) != 0);
    callMethod(compiler, @as(c_int, 1), "addCore_(_)", @as(c_int, 11));
    callMethod(compiler, @as(c_int, 0), "join()", @as(c_int, 6));
}
pub fn super_(arg_compiler: [*c]Compiler, arg_canAssign: bool) callconv(.C) void {
    var compiler = arg_compiler;
    var canAssign = arg_canAssign;
    var enclosingClass: [*c]ClassInfo = getEnclosingClass(compiler);
    if (enclosingClass == @as([*c]ClassInfo, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        @"error"(compiler, "Cannot use 'super' outside of a method.");
    }
    loadThis(compiler);
    if (match(compiler, @as(c_uint, @bitCast(TOKEN_DOT)))) {
        consume(compiler, @as(c_uint, @bitCast(TOKEN_NAME)), "Expect method name after 'super.'.");
        namedCall(compiler, canAssign, @as(c_uint, @bitCast(CODE_SUPER_0)));
    } else if (enclosingClass != @as([*c]ClassInfo, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        methodCall(compiler, @as(c_uint, @bitCast(CODE_SUPER_0)), enclosingClass.*.signature);
    }
}
pub fn this_(arg_compiler: [*c]Compiler, arg_canAssign: bool) callconv(.C) void {
    var compiler = arg_compiler;
    var canAssign = arg_canAssign;
    _ = @TypeOf(canAssign);
    if (getEnclosingClass(compiler) == @as([*c]ClassInfo, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        @"error"(compiler, "Cannot use 'this' outside of a method.");
        return;
    }
    loadThis(compiler);
}
pub fn subscript(arg_compiler: [*c]Compiler, arg_canAssign: bool) callconv(.C) void {
    var compiler = arg_compiler;
    var canAssign = arg_canAssign;
    var signature: Signature = Signature{
        .name = "",
        .length = @as(c_int, 0),
        .type = @as(c_uint, @bitCast(SIG_SUBSCRIPT)),
        .arity = @as(c_int, 0),
    };
    finishArgumentList(compiler, &signature);
    consume(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_BRACKET)), "Expect ']' after arguments.");
    allowLineBeforeDot(compiler);
    if ((@as(c_int, @intFromBool(canAssign)) != 0) and (@as(c_int, @intFromBool(match(compiler, @as(c_uint, @bitCast(TOKEN_EQ))))) != 0)) {
        signature.type = @as(c_uint, @bitCast(SIG_SUBSCRIPT_SETTER));
        validateNumParameters(compiler, blk: {
            const ref = &signature.arity;
            ref.* += 1;
            break :blk ref.*;
        });
        expression(compiler);
    }
    callSignature(compiler, @as(c_uint, @bitCast(CODE_CALL_0)), &signature);
}
pub fn call(arg_compiler: [*c]Compiler, arg_canAssign: bool) callconv(.C) void {
    var compiler = arg_compiler;
    var canAssign = arg_canAssign;
    ignoreNewlines(compiler);
    consume(compiler, @as(c_uint, @bitCast(TOKEN_NAME)), "Expect method name after '.'.");
    namedCall(compiler, canAssign, @as(c_uint, @bitCast(CODE_CALL_0)));
}
pub fn and_(arg_compiler: [*c]Compiler, arg_canAssign: bool) callconv(.C) void {
    var compiler = arg_compiler;
    var canAssign = arg_canAssign;
    _ = @TypeOf(canAssign);
    ignoreNewlines(compiler);
    var jump: c_int = emitJump(compiler, @as(c_uint, @bitCast(CODE_AND)));
    parsePrecedence(compiler, @as(c_uint, @bitCast(PREC_LOGICAL_AND)));
    patchJump(compiler, jump);
}
pub fn or_(arg_compiler: [*c]Compiler, arg_canAssign: bool) callconv(.C) void {
    var compiler = arg_compiler;
    var canAssign = arg_canAssign;
    _ = @TypeOf(canAssign);
    ignoreNewlines(compiler);
    var jump: c_int = emitJump(compiler, @as(c_uint, @bitCast(CODE_OR)));
    parsePrecedence(compiler, @as(c_uint, @bitCast(PREC_LOGICAL_OR)));
    patchJump(compiler, jump);
}
pub fn conditional(arg_compiler: [*c]Compiler, arg_canAssign: bool) callconv(.C) void {
    var compiler = arg_compiler;
    var canAssign = arg_canAssign;
    _ = @TypeOf(canAssign);
    ignoreNewlines(compiler);
    var ifJump: c_int = emitJump(compiler, @as(c_uint, @bitCast(CODE_JUMP_IF)));
    parsePrecedence(compiler, @as(c_uint, @bitCast(PREC_CONDITIONAL)));
    consume(compiler, @as(c_uint, @bitCast(TOKEN_COLON)), "Expect ':' after then branch of conditional operator.");
    ignoreNewlines(compiler);
    var elseJump: c_int = emitJump(compiler, @as(c_uint, @bitCast(CODE_JUMP)));
    patchJump(compiler, ifJump);
    parsePrecedence(compiler, @as(c_uint, @bitCast(PREC_ASSIGNMENT)));
    patchJump(compiler, elseJump);
}
pub export fn infixOp(arg_compiler: [*c]Compiler, arg_canAssign: bool) void {
    var compiler = arg_compiler;
    var canAssign = arg_canAssign;
    _ = @TypeOf(canAssign);
    var rule: [*c]GrammarRule = getRule(compiler.*.parser.*.previous.type);
    ignoreNewlines(compiler);
    parsePrecedence(compiler, rule.*.precedence +% @as(c_uint, @bitCast(@as(c_int, 1))));
    var signature: Signature = Signature{
        .name = rule.*.name,
        .length = @as(c_int, @bitCast(@as(c_uint, @truncate(strlen(rule.*.name))))),
        .type = @as(c_uint, @bitCast(SIG_METHOD)),
        .arity = @as(c_int, 1),
    };
    callSignature(compiler, @as(c_uint, @bitCast(CODE_CALL_0)), &signature);
}
pub export fn infixSignature(arg_compiler: [*c]Compiler, arg_signature: [*c]Signature) void {
    var compiler = arg_compiler;
    var signature = arg_signature;
    signature.*.type = @as(c_uint, @bitCast(SIG_METHOD));
    signature.*.arity = 1;
    consume(compiler, @as(c_uint, @bitCast(TOKEN_LEFT_PAREN)), "Expect '(' after operator name.");
    _ = declareNamedVariable(compiler);
    consume(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_PAREN)), "Expect ')' after parameter name.");
}
pub export fn unarySignature(arg_compiler: [*c]Compiler, arg_signature: [*c]Signature) void {
    var compiler = arg_compiler;
    _ = @TypeOf(compiler);
    var signature = arg_signature;
    signature.*.type = @as(c_uint, @bitCast(SIG_GETTER));
}
pub export fn mixedSignature(arg_compiler: [*c]Compiler, arg_signature: [*c]Signature) void {
    var compiler = arg_compiler;
    var signature = arg_signature;
    signature.*.type = @as(c_uint, @bitCast(SIG_GETTER));
    if (match(compiler, @as(c_uint, @bitCast(TOKEN_LEFT_PAREN)))) {
        signature.*.type = @as(c_uint, @bitCast(SIG_METHOD));
        signature.*.arity = 1;
        _ = declareNamedVariable(compiler);
        consume(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_PAREN)), "Expect ')' after parameter name.");
    }
}
pub fn maybeSetter(arg_compiler: [*c]Compiler, arg_signature: [*c]Signature) callconv(.C) bool {
    var compiler = arg_compiler;
    var signature = arg_signature;
    if (!match(compiler, @as(c_uint, @bitCast(TOKEN_EQ)))) return @as(c_int, 0) != 0;
    if (signature.*.type == @as(c_uint, @bitCast(SIG_SUBSCRIPT))) {
        signature.*.type = @as(c_uint, @bitCast(SIG_SUBSCRIPT_SETTER));
    } else {
        signature.*.type = @as(c_uint, @bitCast(SIG_SETTER));
    }
    consume(compiler, @as(c_uint, @bitCast(TOKEN_LEFT_PAREN)), "Expect '(' after '='.");
    _ = declareNamedVariable(compiler);
    consume(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_PAREN)), "Expect ')' after parameter name.");
    signature.*.arity += 1;
    return @as(c_int, 1) != 0;
}
pub export fn subscriptSignature(arg_compiler: [*c]Compiler, arg_signature: [*c]Signature) void {
    var compiler = arg_compiler;
    var signature = arg_signature;
    signature.*.type = @as(c_uint, @bitCast(SIG_SUBSCRIPT));
    signature.*.length = 0;
    finishParameterList(compiler, signature);
    consume(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_BRACKET)), "Expect ']' after parameters.");
    _ = maybeSetter(compiler, signature);
}
pub fn parameterList(arg_compiler: [*c]Compiler, arg_signature: [*c]Signature) callconv(.C) void {
    var compiler = arg_compiler;
    var signature = arg_signature;
    if (!match(compiler, @as(c_uint, @bitCast(TOKEN_LEFT_PAREN)))) return;
    signature.*.type = @as(c_uint, @bitCast(SIG_METHOD));
    ignoreNewlines(compiler);
    if (match(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_PAREN)))) return;
    finishParameterList(compiler, signature);
    consume(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_PAREN)), "Expect ')' after parameters.");
}
pub export fn namedSignature(arg_compiler: [*c]Compiler, arg_signature: [*c]Signature) void {
    var compiler = arg_compiler;
    var signature = arg_signature;
    signature.*.type = @as(c_uint, @bitCast(SIG_GETTER));
    if (maybeSetter(compiler, signature)) return;
    parameterList(compiler, signature);
}
pub export fn constructorSignature(arg_compiler: [*c]Compiler, arg_signature: [*c]Signature) void {
    var compiler = arg_compiler;
    var signature = arg_signature;
    consume(compiler, @as(c_uint, @bitCast(TOKEN_NAME)), "Expect constructor name after 'construct'.");
    signature.* = signatureFromToken(compiler, @as(c_uint, @bitCast(SIG_INITIALIZER)));
    if (match(compiler, @as(c_uint, @bitCast(TOKEN_EQ)))) {
        @"error"(compiler, "A constructor cannot be a setter.");
    }
    if (!match(compiler, @as(c_uint, @bitCast(TOKEN_LEFT_PAREN)))) {
        @"error"(compiler, "A constructor cannot be a getter.");
        return;
    }
    if (match(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_PAREN)))) return;
    finishParameterList(compiler, signature);
    consume(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_PAREN)), "Expect ')' after parameters.");
}
pub export var rules: [64]GrammarRule = [64]GrammarRule{
    GrammarRule{
        .prefix = &grouping,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = &list,
        .infix = &subscript,
        .method = &subscriptSignature,
        .precedence = @as(c_uint, @bitCast(PREC_CALL)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = &map,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = &call,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_CALL)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = &infixOp,
        .method = &infixSignature,
        .precedence = @as(c_uint, @bitCast(PREC_RANGE)),
        .name = "..",
    },
    GrammarRule{
        .prefix = null,
        .infix = &infixOp,
        .method = &infixSignature,
        .precedence = @as(c_uint, @bitCast(PREC_RANGE)),
        .name = "...",
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = &infixOp,
        .method = &infixSignature,
        .precedence = @as(c_uint, @bitCast(PREC_FACTOR)),
        .name = "*",
    },
    GrammarRule{
        .prefix = null,
        .infix = &infixOp,
        .method = &infixSignature,
        .precedence = @as(c_uint, @bitCast(PREC_FACTOR)),
        .name = "/",
    },
    GrammarRule{
        .prefix = null,
        .infix = &infixOp,
        .method = &infixSignature,
        .precedence = @as(c_uint, @bitCast(PREC_FACTOR)),
        .name = "%",
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = &infixOp,
        .method = &infixSignature,
        .precedence = @as(c_uint, @bitCast(PREC_TERM)),
        .name = "+",
    },
    GrammarRule{
        .prefix = &unaryOp,
        .infix = &infixOp,
        .method = &mixedSignature,
        .precedence = @as(c_uint, @bitCast(PREC_TERM)),
        .name = "-",
    },
    GrammarRule{
        .prefix = null,
        .infix = &infixOp,
        .method = &infixSignature,
        .precedence = @as(c_uint, @bitCast(PREC_BITWISE_SHIFT)),
        .name = "<<",
    },
    GrammarRule{
        .prefix = null,
        .infix = &infixOp,
        .method = &infixSignature,
        .precedence = @as(c_uint, @bitCast(PREC_BITWISE_SHIFT)),
        .name = ">>",
    },
    GrammarRule{
        .prefix = null,
        .infix = &infixOp,
        .method = &infixSignature,
        .precedence = @as(c_uint, @bitCast(PREC_BITWISE_OR)),
        .name = "|",
    },
    GrammarRule{
        .prefix = null,
        .infix = &or_,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_LOGICAL_OR)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = &infixOp,
        .method = &infixSignature,
        .precedence = @as(c_uint, @bitCast(PREC_BITWISE_XOR)),
        .name = "^",
    },
    GrammarRule{
        .prefix = null,
        .infix = &infixOp,
        .method = &infixSignature,
        .precedence = @as(c_uint, @bitCast(PREC_BITWISE_AND)),
        .name = "&",
    },
    GrammarRule{
        .prefix = null,
        .infix = &and_,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_LOGICAL_AND)),
        .name = null,
    },
    GrammarRule{
        .prefix = &unaryOp,
        .infix = null,
        .method = &unarySignature,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = "!",
    },
    GrammarRule{
        .prefix = &unaryOp,
        .infix = null,
        .method = &unarySignature,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = "~",
    },
    GrammarRule{
        .prefix = null,
        .infix = &conditional,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_ASSIGNMENT)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = &infixOp,
        .method = &infixSignature,
        .precedence = @as(c_uint, @bitCast(PREC_COMPARISON)),
        .name = "<",
    },
    GrammarRule{
        .prefix = null,
        .infix = &infixOp,
        .method = &infixSignature,
        .precedence = @as(c_uint, @bitCast(PREC_COMPARISON)),
        .name = ">",
    },
    GrammarRule{
        .prefix = null,
        .infix = &infixOp,
        .method = &infixSignature,
        .precedence = @as(c_uint, @bitCast(PREC_COMPARISON)),
        .name = "<=",
    },
    GrammarRule{
        .prefix = null,
        .infix = &infixOp,
        .method = &infixSignature,
        .precedence = @as(c_uint, @bitCast(PREC_COMPARISON)),
        .name = ">=",
    },
    GrammarRule{
        .prefix = null,
        .infix = &infixOp,
        .method = &infixSignature,
        .precedence = @as(c_uint, @bitCast(PREC_EQUALITY)),
        .name = "==",
    },
    GrammarRule{
        .prefix = null,
        .infix = &infixOp,
        .method = &infixSignature,
        .precedence = @as(c_uint, @bitCast(PREC_EQUALITY)),
        .name = "!=",
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = &constructorSignature,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = &boolean,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = &infixOp,
        .method = &infixSignature,
        .precedence = @as(c_uint, @bitCast(PREC_IS)),
        .name = "is",
    },
    GrammarRule{
        .prefix = &@"null",
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = &super_,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = &this_,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = &boolean,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = &field,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = &staticField,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = &name,
        .infix = null,
        .method = &namedSignature,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = &literal,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = &literal,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = &stringInterpolation,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
    GrammarRule{
        .prefix = null,
        .infix = null,
        .method = null,
        .precedence = @as(c_uint, @bitCast(PREC_NONE)),
        .name = null,
    },
};
pub fn getByteCountForArguments(arg_bytecode: [*c]const u8, arg_constants: [*c]const Value, arg_ip: c_int) callconv(.C) c_int {
    var bytecode = arg_bytecode;
    var constants = arg_constants;
    var ip = arg_ip;
    var instruction: Code = @as(c_uint, @bitCast(@as(c_uint, (blk: {
        const tmp = ip;
        if (tmp >= 0) break :blk bytecode + @as(usize, @intCast(tmp)) else break :blk bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*)));
    while (true) {
        switch (instruction) {
            @as(c_uint, @bitCast(@as(c_int, 1))), @as(c_uint, @bitCast(@as(c_int, 2))), @as(c_uint, @bitCast(@as(c_int, 3))), @as(c_uint, @bitCast(@as(c_int, 23))), @as(c_uint, @bitCast(@as(c_int, 63))), @as(c_uint, @bitCast(@as(c_int, 64))), @as(c_uint, @bitCast(@as(c_int, 76))), @as(c_uint, @bitCast(@as(c_int, 4))), @as(c_uint, @bitCast(@as(c_int, 5))), @as(c_uint, @bitCast(@as(c_int, 6))), @as(c_uint, @bitCast(@as(c_int, 7))), @as(c_uint, @bitCast(@as(c_int, 8))), @as(c_uint, @bitCast(@as(c_int, 9))), @as(c_uint, @bitCast(@as(c_int, 10))), @as(c_uint, @bitCast(@as(c_int, 11))), @as(c_uint, @bitCast(@as(c_int, 12))), @as(c_uint, @bitCast(@as(c_int, 66))), @as(c_uint, @bitCast(@as(c_int, 67))), @as(c_uint, @bitCast(@as(c_int, 70))), @as(c_uint, @bitCast(@as(c_int, 73))), @as(c_uint, @bitCast(@as(c_int, 69))) => return 0,
            @as(c_uint, @bitCast(@as(c_int, 13))), @as(c_uint, @bitCast(@as(c_int, 14))), @as(c_uint, @bitCast(@as(c_int, 15))), @as(c_uint, @bitCast(@as(c_int, 16))), @as(c_uint, @bitCast(@as(c_int, 19))), @as(c_uint, @bitCast(@as(c_int, 20))), @as(c_uint, @bitCast(@as(c_int, 21))), @as(c_uint, @bitCast(@as(c_int, 22))), @as(c_uint, @bitCast(@as(c_int, 68))) => return 1,
            @as(c_uint, @bitCast(@as(c_int, 0))), @as(c_uint, @bitCast(@as(c_int, 17))), @as(c_uint, @bitCast(@as(c_int, 18))), @as(c_uint, @bitCast(@as(c_int, 24))), @as(c_uint, @bitCast(@as(c_int, 25))), @as(c_uint, @bitCast(@as(c_int, 26))), @as(c_uint, @bitCast(@as(c_int, 27))), @as(c_uint, @bitCast(@as(c_int, 28))), @as(c_uint, @bitCast(@as(c_int, 29))), @as(c_uint, @bitCast(@as(c_int, 30))), @as(c_uint, @bitCast(@as(c_int, 31))), @as(c_uint, @bitCast(@as(c_int, 32))), @as(c_uint, @bitCast(@as(c_int, 33))), @as(c_uint, @bitCast(@as(c_int, 34))), @as(c_uint, @bitCast(@as(c_int, 35))), @as(c_uint, @bitCast(@as(c_int, 36))), @as(c_uint, @bitCast(@as(c_int, 37))), @as(c_uint, @bitCast(@as(c_int, 38))), @as(c_uint, @bitCast(@as(c_int, 39))), @as(c_uint, @bitCast(@as(c_int, 40))), @as(c_uint, @bitCast(@as(c_int, 58))), @as(c_uint, @bitCast(@as(c_int, 59))), @as(c_uint, @bitCast(@as(c_int, 60))), @as(c_uint, @bitCast(@as(c_int, 61))), @as(c_uint, @bitCast(@as(c_int, 62))), @as(c_uint, @bitCast(@as(c_int, 71))), @as(c_uint, @bitCast(@as(c_int, 72))), @as(c_uint, @bitCast(@as(c_int, 74))), @as(c_uint, @bitCast(@as(c_int, 75))) => return 2,
            @as(c_uint, @bitCast(@as(c_int, 41))), @as(c_uint, @bitCast(@as(c_int, 42))), @as(c_uint, @bitCast(@as(c_int, 43))), @as(c_uint, @bitCast(@as(c_int, 44))), @as(c_uint, @bitCast(@as(c_int, 45))), @as(c_uint, @bitCast(@as(c_int, 46))), @as(c_uint, @bitCast(@as(c_int, 47))), @as(c_uint, @bitCast(@as(c_int, 48))), @as(c_uint, @bitCast(@as(c_int, 49))), @as(c_uint, @bitCast(@as(c_int, 50))), @as(c_uint, @bitCast(@as(c_int, 51))), @as(c_uint, @bitCast(@as(c_int, 52))), @as(c_uint, @bitCast(@as(c_int, 53))), @as(c_uint, @bitCast(@as(c_int, 54))), @as(c_uint, @bitCast(@as(c_int, 55))), @as(c_uint, @bitCast(@as(c_int, 56))), @as(c_uint, @bitCast(@as(c_int, 57))) => return 4,
            @as(c_uint, @bitCast(@as(c_int, 65))) => {
                {
                    var constant: c_int = (@as(c_int, @bitCast(@as(c_uint, (blk: {
                        const tmp = ip + @as(c_int, 1);
                        if (tmp >= 0) break :blk bytecode + @as(usize, @intCast(tmp)) else break :blk bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*))) << @intCast(8)) | @as(c_int, @bitCast(@as(c_uint, (blk: {
                        const tmp = ip + @as(c_int, 2);
                        if (tmp >= 0) break :blk bytecode + @as(usize, @intCast(tmp)) else break :blk bytecode - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*)));
                    var loadedFn: [*c]ObjFn = @as([*c]ObjFn, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast((blk: {
                        const tmp = constant;
                        if (tmp >= 0) break :blk constants + @as(usize, @intCast(tmp)) else break :blk constants - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).* & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
                    return @as(c_int, 2) + (loadedFn.*.numUpvalues * @as(c_int, 2));
                }
            },
            else => {},
        }
        break;
    }
    return 0;
}
pub fn startLoop(arg_compiler: [*c]Compiler, arg_loop: [*c]Loop) callconv(.C) void {
    var compiler = arg_compiler;
    var loop = arg_loop;
    loop.*.enclosing = compiler.*.loop;
    loop.*.start = compiler.*.@"fn".*.code.count - @as(c_int, 1);
    loop.*.scopeDepth = compiler.*.scopeDepth;
    compiler.*.loop = loop;
}
pub fn testExitLoop(arg_compiler: [*c]Compiler) callconv(.C) void {
    var compiler = arg_compiler;
    compiler.*.loop.*.exitJump = emitJump(compiler, @as(c_uint, @bitCast(CODE_JUMP_IF)));
}
pub fn loopBody(arg_compiler: [*c]Compiler) callconv(.C) void {
    var compiler = arg_compiler;
    compiler.*.loop.*.body = compiler.*.@"fn".*.code.count;
    statement(compiler);
}
pub fn endLoop(arg_compiler: [*c]Compiler) callconv(.C) void {
    var compiler = arg_compiler;
    var loopOffset: c_int = (compiler.*.@"fn".*.code.count - compiler.*.loop.*.start) + @as(c_int, 2);
    emitShortArg(compiler, @as(c_uint, @bitCast(CODE_LOOP)), loopOffset);
    patchJump(compiler, compiler.*.loop.*.exitJump);
    var i: c_int = compiler.*.loop.*.body;
    while (i < compiler.*.@"fn".*.code.count) {
        if (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = i;
            if (tmp >= 0) break :blk compiler.*.@"fn".*.code.data + @as(usize, @intCast(tmp)) else break :blk compiler.*.@"fn".*.code.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))) == CODE_END) {
            (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk compiler.*.@"fn".*.code.data + @as(usize, @intCast(tmp)) else break :blk compiler.*.@"fn".*.code.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = @as(u8, @bitCast(@as(i8, @truncate(CODE_JUMP))));
            patchJump(compiler, i + @as(c_int, 1));
            i += @as(c_int, 3);
        } else {
            i += @as(c_int, 1) + getByteCountForArguments(compiler.*.@"fn".*.code.data, compiler.*.@"fn".*.constants.data, i);
        }
    }
    compiler.*.loop = compiler.*.loop.*.enclosing;
}
pub fn forStatement(arg_compiler: [*c]Compiler) callconv(.C) void {
    var compiler = arg_compiler;
    pushScope(compiler);
    consume(compiler, @as(c_uint, @bitCast(TOKEN_LEFT_PAREN)), "Expect '(' after 'for'.");
    consume(compiler, @as(c_uint, @bitCast(TOKEN_NAME)), "Expect for loop variable name.");
    var name_1: [*c]const u8 = compiler.*.parser.*.previous.start;
    var length: c_int = compiler.*.parser.*.previous.length;
    consume(compiler, @as(c_uint, @bitCast(TOKEN_IN)), "Expect 'in' after loop variable.");
    ignoreNewlines(compiler);
    expression(compiler);
    if ((compiler.*.numLocals + @as(c_int, 2)) > @as(c_int, 256)) {
        @"error"(compiler, "Cannot declare more than %d variables in one scope. (Not enough space for for-loops internal variables)", @as(c_int, 256));
        return;
    }
    var seqSlot: c_int = addLocal(compiler, "seq ", @as(c_int, 4));
    @"null"(compiler, @as(c_int, 0) != 0);
    var iterSlot: c_int = addLocal(compiler, "iter ", @as(c_int, 5));
    consume(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_PAREN)), "Expect ')' after loop expression.");
    var loop: Loop = undefined;
    startLoop(compiler, &loop);
    loadLocal(compiler, seqSlot);
    loadLocal(compiler, iterSlot);
    callMethod(compiler, @as(c_int, 1), "iterate(_)", @as(c_int, 10));
    _ = emitByteArg(compiler, @as(c_uint, @bitCast(CODE_STORE_LOCAL)), iterSlot);
    testExitLoop(compiler);
    loadLocal(compiler, seqSlot);
    loadLocal(compiler, iterSlot);
    callMethod(compiler, @as(c_int, 1), "iteratorValue(_)", @as(c_int, 16));
    pushScope(compiler);
    _ = addLocal(compiler, name_1, length);
    loopBody(compiler);
    popScope(compiler);
    endLoop(compiler);
    popScope(compiler);
}
pub fn ifStatement(arg_compiler: [*c]Compiler) callconv(.C) void {
    var compiler = arg_compiler;
    consume(compiler, @as(c_uint, @bitCast(TOKEN_LEFT_PAREN)), "Expect '(' after 'if'.");
    expression(compiler);
    consume(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_PAREN)), "Expect ')' after if condition.");
    var ifJump: c_int = emitJump(compiler, @as(c_uint, @bitCast(CODE_JUMP_IF)));
    statement(compiler);
    if (match(compiler, @as(c_uint, @bitCast(TOKEN_ELSE)))) {
        var elseJump: c_int = emitJump(compiler, @as(c_uint, @bitCast(CODE_JUMP)));
        patchJump(compiler, ifJump);
        statement(compiler);
        patchJump(compiler, elseJump);
    } else {
        patchJump(compiler, ifJump);
    }
}
pub fn whileStatement(arg_compiler: [*c]Compiler) callconv(.C) void {
    var compiler = arg_compiler;
    var loop: Loop = undefined;
    startLoop(compiler, &loop);
    consume(compiler, @as(c_uint, @bitCast(TOKEN_LEFT_PAREN)), "Expect '(' after 'while'.");
    expression(compiler);
    consume(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_PAREN)), "Expect ')' after while condition.");
    testExitLoop(compiler);
    loopBody(compiler);
    endLoop(compiler);
}
pub fn createConstructor(arg_compiler: [*c]Compiler, arg_signature: [*c]Signature, arg_initializerSymbol: c_int) callconv(.C) void {
    var compiler = arg_compiler;
    var signature = arg_signature;
    var initializerSymbol = arg_initializerSymbol;
    var methodCompiler: Compiler = undefined;
    initCompiler(&methodCompiler, compiler.*.parser, compiler, @as(c_int, 1) != 0);
    emitOp(&methodCompiler, @as(c_uint, @bitCast(if (@as(c_int, @intFromBool(compiler.*.enclosingClass.*.isForeign)) != 0) CODE_FOREIGN_CONSTRUCT else CODE_CONSTRUCT)));
    emitShortArg(&methodCompiler, @as(c_uint, @bitCast(CODE_CALL_0 + signature.*.arity)), initializerSymbol);
    emitOp(&methodCompiler, @as(c_uint, @bitCast(CODE_RETURN)));
    _ = endCompiler(&methodCompiler, "", @as(c_int, 0));
}
pub fn defineMethod(arg_compiler: [*c]Compiler, arg_classVariable: Variable, arg_isStatic: bool, arg_methodSymbol_1: c_int) callconv(.C) void {
    var compiler = arg_compiler;
    var classVariable = arg_classVariable;
    var isStatic = arg_isStatic;
    var methodSymbol_1 = arg_methodSymbol_1;
    loadVariable(compiler, classVariable);
    var instruction: Code = @as(c_uint, @bitCast(if (@as(c_int, @intFromBool(isStatic)) != 0) CODE_METHOD_STATIC else CODE_METHOD_INSTANCE));
    emitShortArg(compiler, instruction, methodSymbol_1);
}
pub fn declareMethod(arg_compiler: [*c]Compiler, arg_signature: [*c]Signature, arg_name_1: [*c]const u8, arg_length: c_int) callconv(.C) c_int {
    var compiler = arg_compiler;
    var signature = arg_signature;
    var name_1 = arg_name_1;
    var length = arg_length;
    _ = @TypeOf(length);
    var symbol: c_int = signatureSymbol(compiler, signature);
    var classInfo: [*c]ClassInfo = compiler.*.enclosingClass;
    var methods: [*c]IntBuffer = if (@as(c_int, @intFromBool(classInfo.*.inStatic)) != 0) &classInfo.*.staticMethods else &classInfo.*.methods;
    {
        var i: c_int = 0;
        while (i < methods.*.count) : (i += 1) {
            if ((blk: {
                const tmp = i;
                if (tmp >= 0) break :blk methods.*.data + @as(usize, @intCast(tmp)) else break :blk methods.*.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* == symbol) {
                var staticPrefix: [*c]const u8 = if (@as(c_int, @intFromBool(classInfo.*.inStatic)) != 0) "static " else "";
                @"error"(compiler, "Class %s already defines a %smethod '%s'.", &compiler.*.enclosingClass.*.name.*.value(), staticPrefix, name_1);
                break;
            }
        }
    }
    wrenIntBufferWrite(compiler.*.parser.*.vm, methods, symbol);
    return symbol;
}
pub fn consumeLiteral(arg_compiler: [*c]Compiler, arg_message: [*c]const u8) callconv(.C) Value {
    var compiler = arg_compiler;
    var message = arg_message;
    if (match(compiler, @as(c_uint, @bitCast(TOKEN_FALSE)))) return @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
    if (match(compiler, @as(c_uint, @bitCast(TOKEN_TRUE)))) return @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 3))))));
    if (match(compiler, @as(c_uint, @bitCast(TOKEN_NUMBER)))) return compiler.*.parser.*.previous.value;
    if (match(compiler, @as(c_uint, @bitCast(TOKEN_STRING)))) return compiler.*.parser.*.previous.value;
    if (match(compiler, @as(c_uint, @bitCast(TOKEN_NAME)))) return compiler.*.parser.*.previous.value;
    @"error"(compiler, message);
    nextToken(compiler.*.parser);
    return @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
}
pub fn matchAttribute(arg_compiler: [*c]Compiler) callconv(.C) bool {
    var compiler = arg_compiler;
    if (match(compiler, @as(c_uint, @bitCast(TOKEN_HASH)))) {
        compiler.*.numAttributes += 1;
        var runtimeAccess: bool = match(compiler, @as(c_uint, @bitCast(TOKEN_BANG)));
        if (match(compiler, @as(c_uint, @bitCast(TOKEN_NAME)))) {
            var group: Value = compiler.*.parser.*.previous.value;
            var ahead: TokenType = peek(compiler);
            if ((ahead == @as(c_uint, @bitCast(TOKEN_EQ))) or (ahead == @as(c_uint, @bitCast(TOKEN_LINE)))) {
                var key: Value = group;
                var value: Value = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
                if (match(compiler, @as(c_uint, @bitCast(TOKEN_EQ)))) {
                    value = consumeLiteral(compiler, "Expect a Bool, Num, String or Identifier literal for an attribute value.");
                }
                if (runtimeAccess) {
                    addToAttributeGroup(compiler, @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1)))))), key, value);
                }
            } else if (match(compiler, @as(c_uint, @bitCast(TOKEN_LEFT_PAREN)))) {
                ignoreNewlines(compiler);
                if (match(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_PAREN)))) {
                    @"error"(compiler, "Expected attributes in group, group cannot be empty.");
                } else {
                    while (peek(compiler) != @as(c_uint, @bitCast(TOKEN_RIGHT_PAREN))) {
                        consume(compiler, @as(c_uint, @bitCast(TOKEN_NAME)), "Expect name for attribute key.");
                        var key: Value = compiler.*.parser.*.previous.value;
                        var value: Value = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
                        if (match(compiler, @as(c_uint, @bitCast(TOKEN_EQ)))) {
                            value = consumeLiteral(compiler, "Expect a Bool, Num, String or Identifier literal for an attribute value.");
                        }
                        if (runtimeAccess) {
                            addToAttributeGroup(compiler, group, key, value);
                        }
                        ignoreNewlines(compiler);
                        if (!match(compiler, @as(c_uint, @bitCast(TOKEN_COMMA)))) break;
                        ignoreNewlines(compiler);
                    }
                    ignoreNewlines(compiler);
                    consume(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_PAREN)), "Expected ')' after grouped attributes.");
                }
            } else {
                @"error"(compiler, "Expect an equal, newline or grouping after an attribute key.");
            }
        } else {
            @"error"(compiler, "Expect an attribute definition after #.");
        }
        consumeLine(compiler, "Expect newline after attribute.");
        return @as(c_int, 1) != 0;
    }
    return @as(c_int, 0) != 0;
}
pub fn method(arg_compiler: [*c]Compiler, arg_classVariable: Variable) callconv(.C) bool {
    var compiler = arg_compiler;
    var classVariable = arg_classVariable;
    if (matchAttribute(compiler)) {
        return method(compiler, classVariable);
    }
    var isForeign: bool = match(compiler, @as(c_uint, @bitCast(TOKEN_FOREIGN)));
    var isStatic: bool = match(compiler, @as(c_uint, @bitCast(TOKEN_STATIC)));
    compiler.*.enclosingClass.*.inStatic = isStatic;
    var signatureFn: SignatureFn = rules[compiler.*.parser.*.current.type].method;
    nextToken(compiler.*.parser);
    if (signatureFn == @as(SignatureFn, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        @"error"(compiler, "Expect method definition.");
        return @as(c_int, 0) != 0;
    }
    var signature: Signature = signatureFromToken(compiler, @as(c_uint, @bitCast(SIG_GETTER)));
    compiler.*.enclosingClass.*.signature = &signature;
    var methodCompiler: Compiler = undefined;
    initCompiler(&methodCompiler, compiler.*.parser, compiler, @as(c_int, 1) != 0);
    signatureFn.?(&methodCompiler, &signature);
    methodCompiler.isInitializer = signature.type == @as(c_uint, @bitCast(SIG_INITIALIZER));
    if ((@as(c_int, @intFromBool(isStatic)) != 0) and (signature.type == @as(c_uint, @bitCast(SIG_INITIALIZER)))) {
        @"error"(compiler, "A constructor cannot be static.");
    }
    var fullSignature: [102]u8 = undefined;
    var length: c_int = undefined;
    signatureToString(&signature, @as([*c]u8, @ptrCast(@alignCast(&fullSignature))), &length);
    copyMethodAttributes(compiler, isForeign, isStatic, @as([*c]u8, @ptrCast(@alignCast(&fullSignature))), length);
    var methodSymbol_1: c_int = declareMethod(compiler, &signature, @as([*c]u8, @ptrCast(@alignCast(&fullSignature))), length);
    if (isForeign) {
        emitConstant(compiler, wrenNewStringLength(compiler.*.parser.*.vm, @as([*c]u8, @ptrCast(@alignCast(&fullSignature))), @as(usize, @bitCast(@as(c_long, length)))));
        methodCompiler.parser.*.vm.*.compiler = methodCompiler.parent;
    } else {
        consume(compiler, @as(c_uint, @bitCast(TOKEN_LEFT_BRACE)), "Expect '{' to begin method body.");
        finishBody(&methodCompiler);
        _ = endCompiler(&methodCompiler, @as([*c]u8, @ptrCast(@alignCast(&fullSignature))), length);
    }
    defineMethod(compiler, classVariable, isStatic, methodSymbol_1);
    if (signature.type == @as(c_uint, @bitCast(SIG_INITIALIZER))) {
        signature.type = @as(c_uint, @bitCast(SIG_METHOD));
        var constructorSymbol: c_int = signatureSymbol(compiler, &signature);
        createConstructor(compiler, &signature, methodSymbol_1);
        defineMethod(compiler, classVariable, @as(c_int, 1) != 0, constructorSymbol);
    }
    return @as(c_int, 1) != 0;
}
pub fn classDefinition(arg_compiler: [*c]Compiler, arg_isForeign: bool) callconv(.C) void {
    var compiler = arg_compiler;
    var isForeign = arg_isForeign;
    var classVariable: Variable = undefined;
    classVariable.scope = @as(c_uint, @bitCast(if (compiler.*.scopeDepth == -@as(c_int, 1)) SCOPE_MODULE else SCOPE_LOCAL));
    classVariable.index = declareNamedVariable(compiler);
    var classNameString: Value = wrenNewStringLength(compiler.*.parser.*.vm, compiler.*.parser.*.previous.start, @as(usize, @bitCast(@as(c_long, compiler.*.parser.*.previous.length))));
    var className: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(classNameString & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    emitConstant(compiler, classNameString);
    if (match(compiler, @as(c_uint, @bitCast(TOKEN_IS)))) {
        parsePrecedence(compiler, @as(c_uint, @bitCast(PREC_CALL)));
    } else {
        loadCoreVariable(compiler, "Object");
    }
    var numFieldsInstruction: c_int = -@as(c_int, 1);
    if (isForeign) {
        emitOp(compiler, @as(c_uint, @bitCast(CODE_FOREIGN_CLASS)));
    } else {
        numFieldsInstruction = emitByteArg(compiler, @as(c_uint, @bitCast(CODE_CLASS)), @as(c_int, 255));
    }
    defineVariable(compiler, classVariable.index);
    pushScope(compiler);
    var classInfo: ClassInfo = undefined;
    classInfo.isForeign = isForeign;
    classInfo.name = className;
    classInfo.classAttributes = if (compiler.*.attributes.*.count > @as(u32, @bitCast(@as(c_int, 0)))) wrenNewMap(compiler.*.parser.*.vm) else null;
    classInfo.methodAttributes = null;
    copyAttributes(compiler, classInfo.classAttributes);
    wrenSymbolTableInit(&classInfo.fields);
    wrenIntBufferInit(&classInfo.methods);
    wrenIntBufferInit(&classInfo.staticMethods);
    compiler.*.enclosingClass = &classInfo;
    consume(compiler, @as(c_uint, @bitCast(TOKEN_LEFT_BRACE)), "Expect '{' after class declaration.");
    _ = matchLine(compiler);
    while (!match(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_BRACE)))) {
        if (!method(compiler, classVariable)) break;
        if (match(compiler, @as(c_uint, @bitCast(TOKEN_RIGHT_BRACE)))) break;
        consumeLine(compiler, "Expect newline after definition in class.");
    }
    var hasAttr: bool = (classInfo.classAttributes != @as([*c]ObjMap, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) or (classInfo.methodAttributes != @as([*c]ObjMap, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))));
    if (hasAttr) {
        emitClassAttributes(compiler, &classInfo);
        loadVariable(compiler, classVariable);
        emitOp(compiler, @as(c_uint, @bitCast(CODE_END_CLASS)));
    }
    if (!isForeign) {
        (blk: {
            const tmp = numFieldsInstruction;
            if (tmp >= 0) break :blk compiler.*.@"fn".*.code.data + @as(usize, @intCast(tmp)) else break :blk compiler.*.@"fn".*.code.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).* = @as(u8, @bitCast(@as(i8, @truncate(classInfo.fields.count))));
    }
    wrenSymbolTableClear(compiler.*.parser.*.vm, &classInfo.fields);
    wrenIntBufferClear(compiler.*.parser.*.vm, &classInfo.methods);
    wrenIntBufferClear(compiler.*.parser.*.vm, &classInfo.staticMethods);
    compiler.*.enclosingClass = null;
    popScope(compiler);
}
pub fn import(arg_compiler: [*c]Compiler) callconv(.C) void {
    var compiler = arg_compiler;
    ignoreNewlines(compiler);
    consume(compiler, @as(c_uint, @bitCast(TOKEN_STRING)), "Expect a string after 'import'.");
    var moduleConstant: c_int = addConstant(compiler, compiler.*.parser.*.previous.value);
    emitShortArg(compiler, @as(c_uint, @bitCast(CODE_IMPORT_MODULE)), moduleConstant);
    emitOp(compiler, @as(c_uint, @bitCast(CODE_POP)));
    if (!match(compiler, @as(c_uint, @bitCast(TOKEN_FOR)))) return;
    while (true) {
        ignoreNewlines(compiler);
        consume(compiler, @as(c_uint, @bitCast(TOKEN_NAME)), "Expect variable name.");
        var sourceVariableToken: Token = compiler.*.parser.*.previous;
        var sourceVariableConstant: c_int = addConstant(compiler, wrenNewStringLength(compiler.*.parser.*.vm, sourceVariableToken.start, @as(usize, @bitCast(@as(c_long, sourceVariableToken.length)))));
        var slot: c_int = -@as(c_int, 1);
        if (match(compiler, @as(c_uint, @bitCast(TOKEN_AS)))) {
            slot = declareNamedVariable(compiler);
        } else {
            slot = declareVariable(compiler, &sourceVariableToken);
        }
        emitShortArg(compiler, @as(c_uint, @bitCast(CODE_IMPORT_VARIABLE)), sourceVariableConstant);
        defineVariable(compiler, slot);
        if (!match(compiler, @as(c_uint, @bitCast(TOKEN_COMMA)))) break;
    }
}
pub fn variableDefinition(arg_compiler: [*c]Compiler) callconv(.C) void {
    var compiler = arg_compiler;
    consume(compiler, @as(c_uint, @bitCast(TOKEN_NAME)), "Expect variable name.");
    var nameToken: Token = compiler.*.parser.*.previous;
    if (match(compiler, @as(c_uint, @bitCast(TOKEN_EQ)))) {
        ignoreNewlines(compiler);
        expression(compiler);
    } else {
        @"null"(compiler, @as(c_int, 0) != 0);
    }
    var symbol: c_int = declareVariable(compiler, &nameToken);
    defineVariable(compiler, symbol);
}
pub fn emitAttributes(arg_compiler: [*c]Compiler, arg_attributes: [*c]ObjMap) callconv(.C) void {
    var compiler = arg_compiler;
    var attributes = arg_attributes;
    loadCoreVariable(compiler, "Map");
    callMethod(compiler, @as(c_int, 0), "new()", @as(c_int, 5));
    {
        var groupIdx: u32 = 0;
        while (groupIdx < attributes.*.capacity) : (groupIdx +%= 1) {
            var groupEntry: [*c]const MapEntry = &attributes.*.entries[groupIdx];
            if (groupEntry.*.key == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4))))))) continue;
            emitConstant(compiler, groupEntry.*.key);
            loadCoreVariable(compiler, "Map");
            callMethod(compiler, @as(c_int, 0), "new()", @as(c_int, 5));
            var groupItems: [*c]ObjMap = @as([*c]ObjMap, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(groupEntry.*.value & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
            {
                var itemIdx: u32 = 0;
                while (itemIdx < groupItems.*.capacity) : (itemIdx +%= 1) {
                    var itemEntry: [*c]const MapEntry = &groupItems.*.entries[itemIdx];
                    if (itemEntry.*.key == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4))))))) continue;
                    emitConstant(compiler, itemEntry.*.key);
                    loadCoreVariable(compiler, "List");
                    callMethod(compiler, @as(c_int, 0), "new()", @as(c_int, 5));
                    var items: [*c]ObjList = @as([*c]ObjList, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(itemEntry.*.value & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
                    {
                        var itemIdx_1: c_int = 0;
                        while (itemIdx_1 < items.*.elements.count) : (itemIdx_1 += 1) {
                            emitConstant(compiler, (blk: {
                                const tmp = itemIdx_1;
                                if (tmp >= 0) break :blk items.*.elements.data + @as(usize, @intCast(tmp)) else break :blk items.*.elements.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*);
                            callMethod(compiler, @as(c_int, 1), "addCore_(_)", @as(c_int, 11));
                        }
                    }
                    callMethod(compiler, @as(c_int, 2), "addCore_(_,_)", @as(c_int, 13));
                }
            }
            callMethod(compiler, @as(c_int, 2), "addCore_(_,_)", @as(c_int, 13));
        }
    }
}
pub fn emitAttributeMethods(arg_compiler: [*c]Compiler, arg_attributes: [*c]ObjMap) callconv(.C) void {
    var compiler = arg_compiler;
    var attributes = arg_attributes;
    loadCoreVariable(compiler, "Map");
    callMethod(compiler, @as(c_int, 0), "new()", @as(c_int, 5));
    {
        var methodIdx: u32 = 0;
        while (methodIdx < attributes.*.capacity) : (methodIdx +%= 1) {
            var methodEntry: [*c]const MapEntry = &attributes.*.entries[methodIdx];
            if (methodEntry.*.key == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4))))))) continue;
            emitConstant(compiler, methodEntry.*.key);
            var attributeMap: [*c]ObjMap = @as([*c]ObjMap, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(methodEntry.*.value & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
            emitAttributes(compiler, attributeMap);
            callMethod(compiler, @as(c_int, 2), "addCore_(_,_)", @as(c_int, 13));
        }
    }
}
pub fn initObj(arg_vm: [*c]WrenVM, arg_obj: [*c]Obj, arg_type: ObjType, arg_classObj: [*c]ObjClass) callconv(.C) void {
    var vm = arg_vm;
    var obj = arg_obj;
    var @"type" = arg_type;
    var classObj = arg_classObj;
    obj.*.type = @"type";
    obj.*.isDark = @as(c_int, 0) != 0;
    obj.*.classObj = classObj;
    obj.*.next = vm.*.first;
    vm.*.first = obj;
}
pub fn hashBits(arg_hash: u64) callconv(.C) u32 {
    var hash = arg_hash;
    hash = ~hash +% (hash << @intCast(18));
    hash = hash ^ (hash >> @intCast(31));
    hash = hash *% @as(u64, @bitCast(@as(c_long, @as(c_int, 21))));
    hash = hash ^ (hash >> @intCast(11));
    hash = hash +% (hash << @intCast(6));
    hash = hash ^ (hash >> @intCast(22));
    return @as(u32, @bitCast(@as(c_uint, @truncate(hash & @as(u64, @bitCast(@as(c_long, @as(c_int, 1073741823))))))));
}
pub fn hashNumber(arg_num: f64) callconv(.C) u32 {
    var num = arg_num;
    return hashBits(wrenDoubleToBits(num));
}
pub fn hashObject(arg_object: [*c]Obj) callconv(.C) u32 {
    var object = arg_object;
    while (true) {
        switch (object.*.type) {
            @as(c_uint, @bitCast(@as(c_int, 0))) => return hashObject(@as([*c]Obj, @ptrCast(@alignCast(@as([*c]ObjClass, @ptrCast(@alignCast(object))).*.name)))),
            @as(c_uint, @bitCast(@as(c_int, 3))) => {
                {
                    var @"fn": [*c]ObjFn = @as([*c]ObjFn, @ptrCast(@alignCast(object)));
                    return hashNumber(@as(f64, @floatFromInt(@"fn".*.arity))) ^ hashNumber(@as(f64, @floatFromInt(@"fn".*.code.count)));
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 9))) => {
                {
                    var range: [*c]ObjRange = @as([*c]ObjRange, @ptrCast(@alignCast(object)));
                    return hashNumber(range.*.from) ^ hashNumber(range.*.to);
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 10))) => return @as([*c]ObjString, @ptrCast(@alignCast(object))).*.hash,
            else => {
                while (true) {
                    if (!false) break;
                }
                return 0;
            },
        }
        break;
    }
    return @import("std").mem.zeroes(u32);
}
pub fn hashValue(arg_value: Value) callconv(.C) u32 {
    var value = arg_value;
    if ((value & (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) == (@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | (@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)))) return hashObject(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(value & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))));
    return hashBits(value);
}
pub fn findEntry(arg_entries: [*c]MapEntry, arg_capacity: u32, arg_key: Value, arg_result: [*c][*c]MapEntry) callconv(.C) bool {
    var entries = arg_entries;
    var capacity = arg_capacity;
    var key = arg_key;
    var result = arg_result;
    if (capacity == @as(u32, @bitCast(@as(c_int, 0)))) return @as(c_int, 0) != 0;
    var startIndex: u32 = hashValue(key) % capacity;
    var index_1: u32 = startIndex;
    var tombstone: [*c]MapEntry = null;
    while (true) {
        var entry: [*c]MapEntry = &entries[index_1];
        if (entry.*.key == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4))))))) {
            if (entry.*.value == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))))) {
                result.* = if (tombstone != @as([*c]MapEntry, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) tombstone else entry;
                return @as(c_int, 0) != 0;
            } else {
                if (tombstone == @as([*c]MapEntry, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                    tombstone = entry;
                }
            }
        } else if (wrenValuesEqual(entry.*.key, key)) {
            result.* = entry;
            return @as(c_int, 1) != 0;
        }
        index_1 = (index_1 +% @as(u32, @bitCast(@as(c_int, 1)))) % capacity;
        if (!(index_1 != startIndex)) break;
    }
    while (true) {
        if (!false) break;
    }
    result.* = tombstone;
    return @as(c_int, 0) != 0;
}
pub fn insertEntry(arg_entries: [*c]MapEntry, arg_capacity: u32, arg_key: Value, arg_value: Value) callconv(.C) bool {
    var entries = arg_entries;
    var capacity = arg_capacity;
    var key = arg_key;
    var value = arg_value;
    while (true) {
        if (!false) break;
    }
    var entry: [*c]MapEntry = undefined;
    if (findEntry(entries, capacity, key, &entry)) {
        entry.*.value = value;
        return @as(c_int, 0) != 0;
    } else {
        entry.*.key = key;
        entry.*.value = value;
        return @as(c_int, 1) != 0;
    }
    return false;
}
pub fn resizeMap(arg_vm: [*c]WrenVM, arg_map_1: [*c]ObjMap, arg_capacity: u32) callconv(.C) void {
    var vm = arg_vm;
    var map_1 = arg_map_1;
    var capacity = arg_capacity;
    var entries: [*c]MapEntry = @as([*c]MapEntry, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @sizeOf(MapEntry) *% @as(c_ulong, @bitCast(@as(c_ulong, capacity)))))));
    {
        var i: u32 = 0;
        while (i < capacity) : (i +%= 1) {
            entries[i].key = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4))))));
            entries[i].value = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))));
        }
    }
    if (map_1.*.capacity > @as(u32, @bitCast(@as(c_int, 0)))) {
        {
            var i: u32 = 0;
            while (i < map_1.*.capacity) : (i +%= 1) {
                var entry: [*c]MapEntry = &map_1.*.entries[i];
                if (entry.*.key == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4))))))) continue;
                _ = insertEntry(entries, capacity, entry.*.key, entry.*.value);
            }
        }
    }
    _ = wrenReallocate(vm, @as(?*anyopaque, @ptrCast(map_1.*.entries)), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
    map_1.*.entries = entries;
    map_1.*.capacity = capacity;
}
pub fn allocateString(arg_vm: [*c]WrenVM, arg_length: usize) callconv(.C) [*c]ObjString {
    var vm = arg_vm;
    var length = arg_length;
    var string: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(wrenReallocate(vm, @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @sizeOf(ObjString) +% (@sizeOf(u8) *% (length +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))))))));
    initObj(vm, &string.*.obj, @as(c_uint, @bitCast(OBJ_STRING)), vm.*.stringClass);
    string.*.length = @as(u32, @bitCast(@as(c_int, @bitCast(@as(c_uint, @truncate(length))))));
    string.*.value()[length] = '\x00';
    return string;
}
pub fn hashString(arg_string: [*c]ObjString) callconv(.C) void {
    var string = arg_string;
    var hash: u32 = 2166136261;
    {
        var i: u32 = 0;
        while (i < string.*.length) : (i +%= 1) {
            hash ^= @as(u32, @bitCast(@as(c_uint, string.*.value()[i])));
            hash *%= @as(u32, @bitCast(@as(c_int, 16777619)));
        }
    }
    string.*.hash = hash;
}
pub fn blackenClass(arg_vm: [*c]WrenVM, arg_classObj: [*c]ObjClass) callconv(.C) void {
    var vm = arg_vm;
    var classObj = arg_classObj;
    wrenGrayObj(vm, @as([*c]Obj, @ptrCast(@alignCast(classObj.*.obj.classObj))));
    wrenGrayObj(vm, @as([*c]Obj, @ptrCast(@alignCast(classObj.*.superclass))));
    {
        var i: c_int = 0;
        while (i < classObj.*.methods.count) : (i += 1) {
            if ((blk: {
                const tmp = i;
                if (tmp >= 0) break :blk classObj.*.methods.data + @as(usize, @intCast(tmp)) else break :blk classObj.*.methods.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*.type == @as(c_uint, @bitCast(METHOD_BLOCK))) {
                wrenGrayObj(vm, @as([*c]Obj, @ptrCast(@alignCast((blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk classObj.*.methods.data + @as(usize, @intCast(tmp)) else break :blk classObj.*.methods.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*.as.closure))));
            }
        }
    }
    wrenGrayObj(vm, @as([*c]Obj, @ptrCast(@alignCast(classObj.*.name))));
    if (!(classObj.*.attributes == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1)))))))) {
        wrenGrayObj(vm, @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(classObj.*.attributes & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))));
    }
    vm.*.bytesAllocated +%= @sizeOf(ObjClass);
    vm.*.bytesAllocated +%= @as(c_ulong, @bitCast(@as(c_long, classObj.*.methods.capacity))) *% @sizeOf(Method);
}
pub fn blackenClosure(arg_vm: [*c]WrenVM, arg_closure: [*c]ObjClosure) callconv(.C) void {
    var vm = arg_vm;
    var closure = arg_closure;
    wrenGrayObj(vm, @as([*c]Obj, @ptrCast(@alignCast(closure.*.@"fn"))));
    {
        var i: c_int = 0;
        while (i < closure.*.@"fn".*.numUpvalues) : (i += 1) {
            wrenGrayObj(vm, @as([*c]Obj, @ptrCast(@alignCast(closure.*.upvalues()[@as(c_uint, @intCast(i))]))));
        }
    }
    vm.*.bytesAllocated +%= @sizeOf(ObjClosure);
    vm.*.bytesAllocated +%= @sizeOf([*c]ObjUpvalue) *% @as(c_ulong, @bitCast(@as(c_long, closure.*.@"fn".*.numUpvalues)));
}
pub fn blackenFiber(arg_vm: [*c]WrenVM, arg_fiber: [*c]ObjFiber) callconv(.C) void {
    var vm = arg_vm;
    var fiber = arg_fiber;
    {
        var i: c_int = 0;
        while (i < fiber.*.numFrames) : (i += 1) {
            wrenGrayObj(vm, @as([*c]Obj, @ptrCast(@alignCast((blk: {
                const tmp = i;
                if (tmp >= 0) break :blk fiber.*.frames + @as(usize, @intCast(tmp)) else break :blk fiber.*.frames - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*.closure))));
        }
    }
    {
        var slot: [*c]Value = fiber.*.stack;
        while (slot < fiber.*.stackTop) : (slot += 1) {
            wrenGrayValue(vm, slot.*);
        }
    }
    var upvalue: [*c]ObjUpvalue = fiber.*.openUpvalues;
    while (upvalue != @as([*c]ObjUpvalue, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        wrenGrayObj(vm, @as([*c]Obj, @ptrCast(@alignCast(upvalue))));
        upvalue = upvalue.*.next;
    }
    wrenGrayObj(vm, @as([*c]Obj, @ptrCast(@alignCast(fiber.*.caller))));
    wrenGrayValue(vm, fiber.*.@"error");
    vm.*.bytesAllocated +%= @sizeOf(ObjFiber);
    vm.*.bytesAllocated +%= @as(c_ulong, @bitCast(@as(c_long, fiber.*.frameCapacity))) *% @sizeOf(CallFrame);
    vm.*.bytesAllocated +%= @as(c_ulong, @bitCast(@as(c_long, fiber.*.stackCapacity))) *% @sizeOf(Value);
}
pub fn blackenFn(arg_vm: [*c]WrenVM, arg_fn: [*c]ObjFn) callconv(.C) void {
    var vm = arg_vm;
    var @"fn" = arg_fn;
    wrenGrayBuffer(vm, &@"fn".*.constants);
    vm.*.bytesAllocated +%= @sizeOf(ObjFn);
    vm.*.bytesAllocated +%= @sizeOf(u8) *% @as(c_ulong, @bitCast(@as(c_long, @"fn".*.code.capacity)));
    vm.*.bytesAllocated +%= @sizeOf(Value) *% @as(c_ulong, @bitCast(@as(c_long, @"fn".*.constants.capacity)));
    vm.*.bytesAllocated +%= @sizeOf(c_int) *% @as(c_ulong, @bitCast(@as(c_long, @"fn".*.code.capacity)));
}
pub fn blackenForeign(arg_vm: [*c]WrenVM, arg_foreign: [*c]ObjForeign) callconv(.C) void {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var foreign = arg_foreign;
    _ = @TypeOf(foreign);
}
pub fn blackenInstance(arg_vm: [*c]WrenVM, arg_instance: [*c]ObjInstance) callconv(.C) void {
    var vm = arg_vm;
    var instance = arg_instance;
    wrenGrayObj(vm, @as([*c]Obj, @ptrCast(@alignCast(instance.*.obj.classObj))));
    {
        var i: c_int = 0;
        while (i < instance.*.obj.classObj.*.numFields) : (i += 1) {
            wrenGrayValue(vm, instance.*.fields()[@as(c_uint, @intCast(i))]);
        }
    }
    vm.*.bytesAllocated +%= @sizeOf(ObjInstance);
    vm.*.bytesAllocated +%= @sizeOf(Value) *% @as(c_ulong, @bitCast(@as(c_long, instance.*.obj.classObj.*.numFields)));
}
pub fn blackenList(arg_vm: [*c]WrenVM, arg_list_1: [*c]ObjList) callconv(.C) void {
    var vm = arg_vm;
    var list_1 = arg_list_1;
    wrenGrayBuffer(vm, &list_1.*.elements);
    vm.*.bytesAllocated +%= @sizeOf(ObjList);
    vm.*.bytesAllocated +%= @sizeOf(Value) *% @as(c_ulong, @bitCast(@as(c_long, list_1.*.elements.capacity)));
}
pub fn blackenMap(arg_vm: [*c]WrenVM, arg_map_1: [*c]ObjMap) callconv(.C) void {
    var vm = arg_vm;
    var map_1 = arg_map_1;
    {
        var i: u32 = 0;
        while (i < map_1.*.capacity) : (i +%= 1) {
            var entry: [*c]MapEntry = &map_1.*.entries[i];
            if (entry.*.key == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4))))))) continue;
            wrenGrayValue(vm, entry.*.key);
            wrenGrayValue(vm, entry.*.value);
        }
    }
    vm.*.bytesAllocated +%= @sizeOf(ObjMap);
    vm.*.bytesAllocated +%= @sizeOf(MapEntry) *% @as(c_ulong, @bitCast(@as(c_ulong, map_1.*.capacity)));
}
pub fn blackenModule(arg_vm: [*c]WrenVM, arg_module: [*c]ObjModule) callconv(.C) void {
    var vm = arg_vm;
    var module = arg_module;
    {
        var i: c_int = 0;
        while (i < module.*.variables.count) : (i += 1) {
            wrenGrayValue(vm, (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk module.*.variables.data + @as(usize, @intCast(tmp)) else break :blk module.*.variables.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*);
        }
    }
    wrenBlackenSymbolTable(vm, &module.*.variableNames);
    wrenGrayObj(vm, @as([*c]Obj, @ptrCast(@alignCast(module.*.name))));
    vm.*.bytesAllocated +%= @sizeOf(ObjModule);
}
pub fn blackenRange(arg_vm: [*c]WrenVM, arg_range: [*c]ObjRange) callconv(.C) void {
    var vm = arg_vm;
    var range = arg_range;
    _ = @TypeOf(range);
    vm.*.bytesAllocated +%= @sizeOf(ObjRange);
}
pub fn blackenString(arg_vm: [*c]WrenVM, arg_string: [*c]ObjString) callconv(.C) void {
    var vm = arg_vm;
    var string = arg_string;
    vm.*.bytesAllocated +%= (@sizeOf(ObjString) +% @as(c_ulong, @bitCast(@as(c_ulong, string.*.length)))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))));
}
pub fn blackenUpvalue(arg_vm: [*c]WrenVM, arg_upvalue: [*c]ObjUpvalue) callconv(.C) void {
    var vm = arg_vm;
    var upvalue = arg_upvalue;
    wrenGrayValue(vm, upvalue.*.closed);
    vm.*.bytesAllocated +%= @sizeOf(ObjUpvalue);
}
pub fn blackenObject(arg_vm: [*c]WrenVM, arg_obj: [*c]Obj) callconv(.C) void {
    var vm = arg_vm;
    var obj = arg_obj;
    while (true) {
        switch (obj.*.type) {
            @as(c_uint, @bitCast(@as(c_int, 0))) => {
                blackenClass(vm, @as([*c]ObjClass, @ptrCast(@alignCast(obj))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 1))) => {
                blackenClosure(vm, @as([*c]ObjClosure, @ptrCast(@alignCast(obj))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 2))) => {
                blackenFiber(vm, @as([*c]ObjFiber, @ptrCast(@alignCast(obj))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 3))) => {
                blackenFn(vm, @as([*c]ObjFn, @ptrCast(@alignCast(obj))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 4))) => {
                blackenForeign(vm, @as([*c]ObjForeign, @ptrCast(@alignCast(obj))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 5))) => {
                blackenInstance(vm, @as([*c]ObjInstance, @ptrCast(@alignCast(obj))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 6))) => {
                blackenList(vm, @as([*c]ObjList, @ptrCast(@alignCast(obj))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 7))) => {
                blackenMap(vm, @as([*c]ObjMap, @ptrCast(@alignCast(obj))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 8))) => {
                blackenModule(vm, @as([*c]ObjModule, @ptrCast(@alignCast(obj))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 9))) => {
                blackenRange(vm, @as([*c]ObjRange, @ptrCast(@alignCast(obj))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 10))) => {
                blackenString(vm, @as([*c]ObjString, @ptrCast(@alignCast(obj))));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 11))) => {
                blackenUpvalue(vm, @as([*c]ObjUpvalue, @ptrCast(@alignCast(obj))));
                break;
            },
            else => {},
        }
        break;
    }
}
pub export fn wrenMetaSource() [*c]const u8 {
    return metaModuleSource;
}
pub export fn wrenMetaBindForeignMethod(arg_vm: [*c]WrenVM, arg_className: [*c]const u8, arg_isStatic: bool, arg_signature: [*c]const u8) WrenForeignMethodFn {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var className = arg_className;
    _ = @TypeOf(className);
    var isStatic = arg_isStatic;
    _ = @TypeOf(isStatic);
    var signature = arg_signature;
    while (true) {
        if (!false) break;
    }
    while (true) {
        if (!false) break;
    }
    if (strcmp(signature, "compile_(_,_,_)") == @as(c_int, 0)) {
        return &metaCompile;
    }
    if (strcmp(signature, "getModuleVariables_(_)") == @as(c_int, 0)) {
        return &metaGetModuleVariables;
    }
    while (true) {
        if (!false) break;
    }
    return null;
}
pub export fn wrenRandomSource() [*c]const u8 {
    return randomModuleSource;
}
pub export fn wrenRandomBindForeignClass(arg_vm: [*c]WrenVM, arg_module: [*c]const u8, arg_className: [*c]const u8) WrenForeignClassMethods {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var module = arg_module;
    _ = @TypeOf(module);
    var className = arg_className;
    _ = @TypeOf(className);
    while (true) {
        if (!false) break;
    }
    var methods: WrenForeignClassMethods = undefined;
    methods.allocate = &randomAllocate;
    methods.finalize = null;
    return methods;
}
pub export fn wrenRandomBindForeignMethod(arg_vm: [*c]WrenVM, arg_className: [*c]const u8, arg_isStatic: bool, arg_signature: [*c]const u8) WrenForeignMethodFn {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var className = arg_className;
    _ = @TypeOf(className);
    var isStatic = arg_isStatic;
    _ = @TypeOf(isStatic);
    var signature = arg_signature;
    while (true) {
        if (!false) break;
    }
    if (strcmp(signature, "<allocate>") == @as(c_int, 0)) return &randomAllocate;
    if (strcmp(signature, "seed_()") == @as(c_int, 0)) return &randomSeed0;
    if (strcmp(signature, "seed_(_)") == @as(c_int, 0)) return &randomSeed1;
    if (strcmp(signature, "seed_(_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_)") == @as(c_int, 0)) {
        return &randomSeed16;
    }
    if (strcmp(signature, "float()") == @as(c_int, 0)) return &randomFloat;
    if (strcmp(signature, "int()") == @as(c_int, 0)) return &randomInt0;
    while (true) {
        if (!false) break;
    }
    return null;
}
pub fn defaultReallocate(arg_ptr: ?*anyopaque, arg_newSize: usize, arg__: ?*anyopaque) callconv(.C) ?*anyopaque {
    var ptr = arg_ptr;
    var newSize = arg_newSize;
    var @"_" = arg__;
    _ = @TypeOf(@"_");
    if (newSize == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
        free(ptr);
        return @as(?*anyopaque, @ptrFromInt(@as(c_int, 0)));
    }
    return realloc(ptr, newSize);
}
pub fn captureUpvalue(arg_vm: [*c]WrenVM, arg_fiber: [*c]ObjFiber, arg_local: [*c]Value) callconv(.C) [*c]ObjUpvalue {
    var vm = arg_vm;
    var fiber = arg_fiber;
    var local = arg_local;
    if (fiber.*.openUpvalues == @as([*c]ObjUpvalue, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        fiber.*.openUpvalues = wrenNewUpvalue(vm, local);
        return fiber.*.openUpvalues;
    }
    var prevUpvalue: [*c]ObjUpvalue = null;
    var upvalue: [*c]ObjUpvalue = fiber.*.openUpvalues;
    while ((upvalue != @as([*c]ObjUpvalue, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (upvalue.*.value > local)) {
        prevUpvalue = upvalue;
        upvalue = upvalue.*.next;
    }
    if ((upvalue != @as([*c]ObjUpvalue, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (upvalue.*.value == local)) return upvalue;
    var createdUpvalue: [*c]ObjUpvalue = wrenNewUpvalue(vm, local);
    if (prevUpvalue == @as([*c]ObjUpvalue, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        fiber.*.openUpvalues = createdUpvalue;
    } else {
        prevUpvalue.*.next = createdUpvalue;
    }
    createdUpvalue.*.next = upvalue;
    return createdUpvalue;
}
pub fn closeUpvalues(arg_fiber: [*c]ObjFiber, arg_last: [*c]Value) callconv(.C) void {
    var fiber = arg_fiber;
    var last = arg_last;
    while ((fiber.*.openUpvalues != @as([*c]ObjUpvalue, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (fiber.*.openUpvalues.*.value >= last)) {
        var upvalue: [*c]ObjUpvalue = fiber.*.openUpvalues;
        upvalue.*.closed = upvalue.*.value.*;
        upvalue.*.value = &upvalue.*.closed;
        fiber.*.openUpvalues = upvalue.*.next;
    }
}
pub fn findForeignMethod(arg_vm: [*c]WrenVM, arg_moduleName: [*c]const u8, arg_className: [*c]const u8, arg_isStatic: bool, arg_signature: [*c]const u8) callconv(.C) WrenForeignMethodFn {
    var vm = arg_vm;
    var moduleName = arg_moduleName;
    var className = arg_className;
    var isStatic = arg_isStatic;
    var signature = arg_signature;
    var method_1: WrenForeignMethodFn = null;
    if (vm.*.config.bindForeignMethodFn != @as(WrenBindForeignMethodFn, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        method_1 = vm.*.config.bindForeignMethodFn.?(vm, moduleName, className, isStatic, signature);
    }
    if (method_1 == @as(WrenForeignMethodFn, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        if (strcmp(moduleName, "meta") == @as(c_int, 0)) {
            method_1 = wrenMetaBindForeignMethod(vm, className, isStatic, signature);
        }
        if (strcmp(moduleName, "random") == @as(c_int, 0)) {
            method_1 = wrenRandomBindForeignMethod(vm, className, isStatic, signature);
        }
    }
    return method_1;
}
pub fn bindMethod(arg_vm: [*c]WrenVM, arg_methodType: c_int, arg_symbol: c_int, arg_module: [*c]ObjModule, arg_classObj: [*c]ObjClass, arg_methodValue: Value) callconv(.C) void {
    var vm = arg_vm;
    var methodType = arg_methodType;
    var symbol = arg_symbol;
    var module = arg_module;
    var classObj = arg_classObj;
    var methodValue = arg_methodValue;
    var className: [*c]const u8 = classObj.*.name.*.value();
    if (methodType == CODE_METHOD_STATIC) {
        classObj = classObj.*.obj.classObj;
    }
    var method_1: Method = undefined;
    if (wrenIsObjType(methodValue, @as(c_uint, @bitCast(OBJ_STRING)))) {
        var name_1: [*c]const u8 = @as([*c]u8, @ptrCast(@alignCast(&@as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(methodValue & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.value())));
        method_1.type = @as(c_uint, @bitCast(METHOD_FOREIGN));
        method_1.as.foreign = findForeignMethod(vm, module.*.name.*.value(), className, methodType == CODE_METHOD_STATIC, name_1);
        if (method_1.as.foreign == @as(WrenForeignMethodFn, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            vm.*.fiber.*.@"error" = wrenStringFormat(vm, "Could not find foreign method '@' for class $ in module '$'.", methodValue, classObj.*.name.*.value(), module.*.name.*.value());
            return;
        }
    } else {
        method_1.as.closure = @as([*c]ObjClosure, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(methodValue & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
        method_1.type = @as(c_uint, @bitCast(METHOD_BLOCK));
        wrenBindMethodCode(classObj, method_1.as.closure.*.@"fn");
    }
    wrenBindMethod(vm, classObj, symbol, method_1);
}
pub fn callForeign(arg_vm: [*c]WrenVM, arg_fiber: [*c]ObjFiber, arg_foreign: WrenForeignMethodFn, arg_numArgs: c_int) callconv(.C) void {
    var vm = arg_vm;
    var fiber = arg_fiber;
    var foreign = arg_foreign;
    var numArgs = arg_numArgs;
    while (true) {
        if (!false) break;
    }
    vm.*.apiStack = fiber.*.stackTop - @as(usize, @bitCast(@as(isize, @intCast(numArgs))));
    foreign.?(vm);
    fiber.*.stackTop = vm.*.apiStack + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
    vm.*.apiStack = null;
}
pub fn runtimeError(arg_vm: [*c]WrenVM) callconv(.C) void {
    var vm = arg_vm;
    while (true) {
        if (!false) break;
    }
    var current: [*c]ObjFiber = vm.*.fiber;
    var error_1: Value = current.*.@"error";
    while (current != @as([*c]ObjFiber, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        current.*.@"error" = error_1;
        if (current.*.state == @as(c_uint, @bitCast(FIBER_TRY))) {
            (blk: {
                const tmp = -@as(c_int, 1);
                if (tmp >= 0) break :blk current.*.caller.*.stackTop + @as(usize, @intCast(tmp)) else break :blk current.*.caller.*.stackTop - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = vm.*.fiber.*.@"error";
            vm.*.fiber = current.*.caller;
            return;
        }
        var caller: [*c]ObjFiber = current.*.caller;
        current.*.caller = null;
        current = caller;
    }
    wrenDebugPrintStackTrace(vm);
    vm.*.fiber = null;
    vm.*.apiStack = null;
}
pub fn methodNotFound(arg_vm: [*c]WrenVM, arg_classObj: [*c]ObjClass, arg_symbol: c_int) callconv(.C) void {
    var vm = arg_vm;
    var classObj = arg_classObj;
    var symbol = arg_symbol;
    vm.*.fiber.*.@"error" = wrenStringFormat(vm, "@ does not implement '$'.", wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(classObj.*.name)))), (blk: {
        const tmp = symbol;
        if (tmp >= 0) break :blk vm.*.methodNames.data + @as(usize, @intCast(tmp)) else break :blk vm.*.methodNames.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.*.value());
}
pub fn getModule(arg_vm: [*c]WrenVM, arg_name_1: Value) callconv(.C) [*c]ObjModule {
    var vm = arg_vm;
    var name_1 = arg_name_1;
    var moduleValue: Value = wrenMapGet(vm.*.modules, name_1);
    return if (!(moduleValue == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4)))))))) @as([*c]ObjModule, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(moduleValue & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))) else null;
}
pub fn compileInModule(arg_vm: [*c]WrenVM, arg_name_1: Value, arg_source: [*c]const u8, arg_isExpression: bool, arg_printErrors: bool) callconv(.C) [*c]ObjClosure {
    var vm = arg_vm;
    var name_1 = arg_name_1;
    var source = arg_source;
    var isExpression = arg_isExpression;
    var printErrors = arg_printErrors;
    var module: [*c]ObjModule = getModule(vm, name_1);
    if (module == @as([*c]ObjModule, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        module = wrenNewModule(vm, @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(name_1 & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))));
        wrenPushRoot(vm, @as([*c]Obj, @ptrCast(@alignCast(module))));
        wrenMapSet(vm, vm.*.modules, name_1, wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(module)))));
        wrenPopRoot(vm);
        var coreModule: [*c]ObjModule = getModule(vm, @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1)))))));
        {
            var i: c_int = 0;
            while (i < coreModule.*.variables.count) : (i += 1) {
                _ = wrenDefineVariable(vm, module, (blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk coreModule.*.variableNames.data + @as(usize, @intCast(tmp)) else break :blk coreModule.*.variableNames.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*.*.value(), @as(usize, @bitCast(@as(c_ulong, (blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk coreModule.*.variableNames.data + @as(usize, @intCast(tmp)) else break :blk coreModule.*.variableNames.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*.*.length))), (blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk coreModule.*.variables.data + @as(usize, @intCast(tmp)) else break :blk coreModule.*.variables.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*, null);
            }
        }
    }
    var @"fn": [*c]ObjFn = wrenCompile(vm, module, source, isExpression, printErrors);
    if (@"fn" == @as([*c]ObjFn, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        return null;
    }
    wrenPushRoot(vm, @as([*c]Obj, @ptrCast(@alignCast(@"fn"))));
    var closure: [*c]ObjClosure = wrenNewClosure(vm, @"fn");
    wrenPopRoot(vm);
    return closure;
}
pub fn validateSuperclass(arg_vm: [*c]WrenVM, arg_name_1: Value, arg_superclassValue: Value, arg_numFields: c_int) callconv(.C) Value {
    var vm = arg_vm;
    var name_1 = arg_name_1;
    var superclassValue = arg_superclassValue;
    var numFields = arg_numFields;
    if (!wrenIsObjType(superclassValue, @as(c_uint, @bitCast(OBJ_CLASS)))) {
        return wrenStringFormat(vm, "Class '@' cannot inherit from a non-class object.", name_1);
    }
    var superclass: [*c]ObjClass = @as([*c]ObjClass, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(superclassValue & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    if ((((((((((superclass == vm.*.classClass) or (superclass == vm.*.fiberClass)) or (superclass == vm.*.fnClass)) or (superclass == vm.*.listClass)) or (superclass == vm.*.mapClass)) or (superclass == vm.*.rangeClass)) or (superclass == vm.*.stringClass)) or (superclass == vm.*.boolClass)) or (superclass == vm.*.nullClass)) or (superclass == vm.*.numClass)) {
        return wrenStringFormat(vm, "Class '@' cannot inherit from built-in class '@'.", name_1, wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(superclass.*.name)))));
    }
    if (superclass.*.numFields == -@as(c_int, 1)) {
        return wrenStringFormat(vm, "Class '@' cannot inherit from foreign class '@'.", name_1, wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(superclass.*.name)))));
    }
    if ((numFields == -@as(c_int, 1)) and (superclass.*.numFields > @as(c_int, 0))) {
        return wrenStringFormat(vm, "Foreign class '@' may not inherit from a class with fields.", name_1);
    }
    if ((superclass.*.numFields + numFields) > @as(c_int, 255)) {
        return wrenStringFormat(vm, "Class '@' may not have more than 255 fields, including inherited ones.", name_1);
    }
    return @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
}
pub fn bindForeignClass(arg_vm: [*c]WrenVM, arg_classObj: [*c]ObjClass, arg_module: [*c]ObjModule) callconv(.C) void {
    var vm = arg_vm;
    var classObj = arg_classObj;
    var module = arg_module;
    var methods: WrenForeignClassMethods = undefined;
    methods.allocate = null;
    methods.finalize = null;
    if (vm.*.config.bindForeignClassFn != @as(WrenBindForeignClassFn, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        methods = vm.*.config.bindForeignClassFn.?(vm, module.*.name.*.value(), classObj.*.name.*.value());
    }
    if ((methods.allocate == @as(WrenForeignMethodFn, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (methods.finalize == @as(WrenFinalizerFn, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
        if (strcmp(module.*.name.*.value(), "random") == @as(c_int, 0)) {
            methods = wrenRandomBindForeignClass(vm, module.*.name.*.value(), classObj.*.name.*.value());
        }
    }
    var method_1: Method = undefined;
    method_1.type = @as(c_uint, @bitCast(METHOD_FOREIGN));
    var symbol: c_int = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "<allocate>", @as(usize, @bitCast(@as(c_long, @as(c_int, 10)))));
    if (methods.allocate != @as(WrenForeignMethodFn, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        method_1.as.foreign = methods.allocate;
        wrenBindMethod(vm, classObj, symbol, method_1);
    }
    symbol = wrenSymbolTableEnsure(vm, &vm.*.methodNames, "<finalize>", @as(usize, @bitCast(@as(c_long, @as(c_int, 10)))));
    if (methods.finalize != @as(WrenFinalizerFn, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        method_1.as.foreign = @as(WrenForeignMethodFn, @ptrCast(@alignCast(methods.finalize)));
        wrenBindMethod(vm, classObj, symbol, method_1);
    }
}
pub fn endClass(arg_vm: [*c]WrenVM) callconv(.C) void {
    var vm = arg_vm;
    var attributes: Value = (blk: {
        const tmp = -@as(c_int, 2);
        if (tmp >= 0) break :blk vm.*.fiber.*.stackTop + @as(usize, @intCast(tmp)) else break :blk vm.*.fiber.*.stackTop - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*;
    var classValue: Value = (blk: {
        const tmp = -@as(c_int, 1);
        if (tmp >= 0) break :blk vm.*.fiber.*.stackTop + @as(usize, @intCast(tmp)) else break :blk vm.*.fiber.*.stackTop - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*;
    vm.*.fiber.*.stackTop -= @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))));
    var classObj: [*c]ObjClass = @as([*c]ObjClass, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(classValue & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    classObj.*.attributes = attributes;
}
pub fn createClass(arg_vm: [*c]WrenVM, arg_numFields: c_int, arg_module: [*c]ObjModule) callconv(.C) void {
    var vm = arg_vm;
    var numFields = arg_numFields;
    var module = arg_module;
    var name_1: Value = (blk: {
        const tmp = -@as(c_int, 2);
        if (tmp >= 0) break :blk vm.*.fiber.*.stackTop + @as(usize, @intCast(tmp)) else break :blk vm.*.fiber.*.stackTop - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*;
    var superclass: Value = (blk: {
        const tmp = -@as(c_int, 1);
        if (tmp >= 0) break :blk vm.*.fiber.*.stackTop + @as(usize, @intCast(tmp)) else break :blk vm.*.fiber.*.stackTop - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*;
    vm.*.fiber.*.stackTop -= 1;
    vm.*.fiber.*.@"error" = validateSuperclass(vm, name_1, superclass, numFields);
    if (wrenHasError(vm.*.fiber)) return;
    var classObj: [*c]ObjClass = wrenNewClass(vm, @as([*c]ObjClass, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(superclass & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))), numFields, @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(name_1 & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))));
    (blk: {
        const tmp = -@as(c_int, 1);
        if (tmp >= 0) break :blk vm.*.fiber.*.stackTop + @as(usize, @intCast(tmp)) else break :blk vm.*.fiber.*.stackTop - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* = wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(classObj))));
    if (numFields == -@as(c_int, 1)) {
        bindForeignClass(vm, classObj, module);
    }
}
pub fn createForeign(arg_vm: [*c]WrenVM, arg_fiber: [*c]ObjFiber, arg_stack: [*c]Value) callconv(.C) void {
    var vm = arg_vm;
    var fiber = arg_fiber;
    _ = @TypeOf(fiber);
    var stack = arg_stack;
    var classObj: [*c]ObjClass = @as([*c]ObjClass, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(stack[@as(c_uint, @intCast(@as(c_int, 0)))] & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    while (true) {
        if (!false) break;
    }
    var symbol: c_int = wrenSymbolTableFind(&vm.*.methodNames, "<allocate>", @as(usize, @bitCast(@as(c_long, @as(c_int, 10)))));
    while (true) {
        if (!false) break;
    }
    while (true) {
        if (!false) break;
    }
    var method_1: [*c]Method = &(blk: {
        const tmp = symbol;
        if (tmp >= 0) break :blk classObj.*.methods.data + @as(usize, @intCast(tmp)) else break :blk classObj.*.methods.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*;
    while (true) {
        if (!false) break;
    }
    while (true) {
        if (!false) break;
    }
    vm.*.apiStack = stack;
    method_1.*.as.foreign.?(vm);
    vm.*.apiStack = null;
}
pub fn resolveModule(arg_vm: [*c]WrenVM, arg_name_1: Value) callconv(.C) Value {
    var vm = arg_vm;
    var name_1 = arg_name_1;
    if (vm.*.config.resolveModuleFn == @as(WrenResolveModuleFn, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return name_1;
    var fiber: [*c]ObjFiber = vm.*.fiber;
    var @"fn": [*c]ObjFn = (blk: {
        const tmp = fiber.*.numFrames - @as(c_int, 1);
        if (tmp >= 0) break :blk fiber.*.frames + @as(usize, @intCast(tmp)) else break :blk fiber.*.frames - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.closure.*.@"fn";
    var importer: [*c]ObjString = @"fn".*.module.*.name;
    var resolved: [*c]const u8 = vm.*.config.resolveModuleFn.?(vm, importer.*.value(), @as([*c]u8, @ptrCast(@alignCast(&@as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(name_1 & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.value()))));
    if (resolved == @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        vm.*.fiber.*.@"error" = wrenStringFormat(vm, "Could not resolve module '@' imported from '@'.", name_1, wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(importer)))));
        return @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
    }
    if (resolved == @as([*c]const u8, @ptrCast(@alignCast(@as([*c]u8, @ptrCast(@alignCast(&@as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(name_1 & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.value()))))))) return name_1;
    name_1 = wrenNewString(vm, resolved);
    _ = wrenReallocate(vm, @as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@volatileCast(@constCast(resolved)))))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
    return name_1;
}
pub fn importModule(arg_vm: [*c]WrenVM, arg_name_1: Value) callconv(.C) Value {
    var vm = arg_vm;
    var name_1 = arg_name_1;
    name_1 = resolveModule(vm, name_1);
    var existing: Value = wrenMapGet(vm.*.modules, name_1);
    if (!(existing == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4)))))))) return existing;
    wrenPushRoot(vm, @as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(name_1 & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))));
    var result: WrenLoadModuleResult = WrenLoadModuleResult{
        .source = null,
        .onComplete = @import("std").mem.zeroes(WrenLoadModuleCompleteFn),
        .userData = null,
    };
    var source: [*c]const u8 = null;
    _ = @TypeOf(source);
    if (vm.*.config.loadModuleFn != @as(WrenLoadModuleFn, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        result = vm.*.config.loadModuleFn.?(vm, @as([*c]u8, @ptrCast(@alignCast(&@as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(name_1 & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.value()))));
    }
    if (result.source == @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        result.onComplete = null;
        var nameString: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(name_1 & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
        if (strcmp(nameString.*.value(), "meta") == @as(c_int, 0)) {
            result.source = wrenMetaSource();
        }
        if (strcmp(nameString.*.value(), "random") == @as(c_int, 0)) {
            result.source = wrenRandomSource();
        }
    }
    if (result.source == @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        vm.*.fiber.*.@"error" = wrenStringFormat(vm, "Could not load module '@'.", name_1);
        wrenPopRoot(vm);
        return @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
    }
    var moduleClosure: [*c]ObjClosure = compileInModule(vm, name_1, result.source, @as(c_int, 0) != 0, @as(c_int, 1) != 0);
    if (result.onComplete != null) {
        result.onComplete.?(vm, @as([*c]u8, @ptrCast(@alignCast(&@as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(name_1 & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.value()))), result);
    }
    if (moduleClosure == @as([*c]ObjClosure, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        vm.*.fiber.*.@"error" = wrenStringFormat(vm, "Could not compile module '@'.", name_1);
        wrenPopRoot(vm);
        return @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
    }
    wrenPopRoot(vm);
    return wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(moduleClosure))));
}
pub fn getModuleVariable(arg_vm: [*c]WrenVM, arg_module: [*c]ObjModule, arg_variableName: Value) callconv(.C) Value {
    var vm = arg_vm;
    var module = arg_module;
    var variableName = arg_variableName;
    var variable: [*c]ObjString = @as([*c]ObjString, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(variableName & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var variableEntry: u32 = @as(u32, @bitCast(wrenSymbolTableFind(&module.*.variableNames, variable.*.value(), @as(usize, @bitCast(@as(c_ulong, variable.*.length))))));
    if (variableEntry != @as(c_uint, 4294967295)) {
        return module.*.variables.data[variableEntry];
    }
    vm.*.fiber.*.@"error" = wrenStringFormat(vm, "Could not find a variable named '@' in module '@'.", variableName, wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(module.*.name)))));
    return @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
}
pub fn checkArity(arg_vm: [*c]WrenVM, arg_value: Value, arg_numArgs: c_int) callconv(.C) bool {
    var vm = arg_vm;
    var value = arg_value;
    var numArgs = arg_numArgs;
    while (true) {
        if (!false) break;
    }
    var @"fn": [*c]ObjFn = @as([*c]ObjClosure, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(value & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184))))))))))).*.@"fn";
    if ((numArgs - @as(c_int, 1)) >= @"fn".*.arity) return @as(c_int, 1) != 0;
    vm.*.fiber.*.@"error" = wrenNewStringLength(vm, "Function expects more arguments.", @sizeOf([33]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
    return @as(c_int, 0) != 0;
} // src/wren/wren.c:11803:29: warning: TODO implement translation of stmt class AddrLabelExprClass
// src/wren/wren.c:11736:28: warning: unable to translate function, demoted to extern
pub extern fn runInterpreter(arg_vm: [*c]WrenVM, arg_fiber: [*c]ObjFiber) callconv(.C) WrenInterpretResult;
pub fn validateApiSlot(arg_vm: [*c]WrenVM, arg_slot: c_int) callconv(.C) void {
    var vm = arg_vm;
    _ = @TypeOf(vm);
    var slot = arg_slot;
    _ = @TypeOf(slot);
    while (true) {
        if (!false) break;
    }
    while (true) {
        if (!false) break;
    }
}
pub fn setSlot(arg_vm: [*c]WrenVM, arg_slot: c_int, arg_value: Value) callconv(.C) void {
    var vm = arg_vm;
    var slot = arg_slot;
    var value = arg_value;
    validateApiSlot(vm, slot);
    (blk: {
        const tmp = slot;
        if (tmp >= 0) break :blk vm.*.apiStack + @as(usize, @intCast(tmp)) else break :blk vm.*.apiStack - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* = value;
}
pub var randomModuleSource: [*c]const u8 = "foreign class Random {\n  construct new() {\n    seed_()\n  }\n\n  construct new(seed) {\n    if (seed is Num) {\n      seed_(seed)\n    } else if (seed is Sequence) {\n      if (seed.isEmpty) Fiber.abort(\"Sequence cannot be empty.\")\n\n      // TODO: Empty sequence.\n      var seeds = []\n      for (element in seed) {\n        if (!(element is Num)) Fiber.abort(\"Sequence elements must all be numbers.\")\n\n        seeds.add(element)\n        if (seeds.count == 16) break\n      }\n\n      // Cycle the values to fill in any missing slots.\n      var i = 0\n      while (seeds.count < 16) {\n        seeds.add(seeds[i])\n        i = i + 1\n      }\n\n      seed_(\n          seeds[0], seeds[1], seeds[2], seeds[3],\n          seeds[4], seeds[5], seeds[6], seeds[7],\n          seeds[8], seeds[9], seeds[10], seeds[11],\n          seeds[12], seeds[13], seeds[14], seeds[15])\n    } else {\n      Fiber.abort(\"Seed must be a number or a sequence of numbers.\")\n    }\n  }\n\n  foreign seed_()\n  foreign seed_(seed)\n  foreign seed_(n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16)\n\n  foreign float()\n  float(end) { float() * end }\n  float(start, end) { float() * (end - start) + start }\n\n  foreign int()\n  int(end) { (float() * end).floor }\n  int(start, end) { (float() * (end - start)).floor + start }\n\n  sample(list) {\n    if (list.count == 0) Fiber.abort(\"Not enough elements to sample.\")\n    return list[int(list.count)]\n  }\n  sample(list, count) {\n    if (count > list.count) Fiber.abort(\"Not enough elements to sample.\")\n\n    var result = []\n\n    // The algorithm described in \"Programming pearls: a sample of brilliance\".\n    // Use a hash map for sample sizes less than 1/4 of the population size and\n    // an array of booleans for larger samples. This simple heuristic improves\n    // performance for large sample sizes as well as reduces memory usage.\n    if (count * 4 < list.count) {\n      var picked = {}\n      for (i in list.count - count...list.count) {\n        var index = int(i + 1)\n        if (picked.containsKey(index)) index = i\n        picked[index] = true\n        result.add(list[index])\n      }\n    } else {\n      var picked = List.filled(list.count, false)\n      for (i in list.count - count...list.count) {\n        var index = int(i + 1)\n        if (picked[index]) index = i\n        picked[index] = true\n        result.add(list[index])\n      }\n    }\n\n    return result\n  }\n\n  shuffle(list) {\n    if (list.isEmpty) return\n\n    // Fisher-Yates shuffle.\n    for (i in 0...list.count - 1) {\n      var from = int(i, list.count)\n      var temp = list[from]\n      list[from] = list[i]\n      list[i] = temp\n    }\n  }\n}\n";
pub const Well512 = extern struct {
    state: [16]u32,
    index: u32,
};
pub fn advanceState(arg_well: [*c]Well512) callconv(.C) u32 {
    var well = arg_well;
    var a: u32 = undefined;
    var b: u32 = undefined;
    var c: u32 = undefined;
    var d: u32 = undefined;
    a = well.*.state[well.*.index];
    c = well.*.state[(well.*.index +% @as(u32, @bitCast(@as(c_int, 13)))) & @as(u32, @bitCast(@as(c_int, 15)))];
    b = ((a ^ c) ^ (a << @intCast(16))) ^ (c << @intCast(15));
    c = well.*.state[(well.*.index +% @as(u32, @bitCast(@as(c_int, 9)))) & @as(u32, @bitCast(@as(c_int, 15)))];
    c ^= c >> @intCast(11);
    a = blk: {
        const tmp = b ^ c;
        well.*.state[well.*.index] = tmp;
        break :blk tmp;
    };
    d = a ^ ((a << @intCast(5)) & @as(c_uint, 3661901092));
    well.*.index = (well.*.index +% @as(u32, @bitCast(@as(c_int, 15)))) & @as(u32, @bitCast(@as(c_int, 15)));
    a = well.*.state[well.*.index];
    well.*.state[well.*.index] = ((((a ^ b) ^ d) ^ (a << @intCast(2))) ^ (b << @intCast(18))) ^ (c << @intCast(28));
    return well.*.state[well.*.index];
}
pub fn randomAllocate(arg_vm: [*c]WrenVM) callconv(.C) void {
    var vm = arg_vm;
    var well: [*c]Well512 = @as([*c]Well512, @ptrCast(@alignCast(wrenSetSlotNewForeign(vm, @as(c_int, 0), @as(c_int, 0), @sizeOf(Well512)))));
    well.*.index = 0;
}
pub fn randomSeed0(arg_vm: [*c]WrenVM) callconv(.C) void {
    var vm = arg_vm;
    var well: [*c]Well512 = @as([*c]Well512, @ptrCast(@alignCast(wrenGetSlotForeign(vm, @as(c_int, 0)))));
    srand(@as(u32, @bitCast(@as(c_int, @truncate(time(null))))));
    {
        var i: c_int = 0;
        while (i < @as(c_int, 16)) : (i += 1) {
            well.*.state[@as(c_uint, @intCast(i))] = @as(u32, @bitCast(rand()));
        }
    }
}
pub fn randomSeed1(arg_vm: [*c]WrenVM) callconv(.C) void {
    var vm = arg_vm;
    var well: [*c]Well512 = @as([*c]Well512, @ptrCast(@alignCast(wrenGetSlotForeign(vm, @as(c_int, 0)))));
    srand(@as(u32, @intFromFloat(wrenGetSlotDouble(vm, @as(c_int, 1)))));
    {
        var i: c_int = 0;
        while (i < @as(c_int, 16)) : (i += 1) {
            well.*.state[@as(c_uint, @intCast(i))] = @as(u32, @bitCast(rand()));
        }
    }
}
pub fn randomSeed16(arg_vm: [*c]WrenVM) callconv(.C) void {
    var vm = arg_vm;
    var well: [*c]Well512 = @as([*c]Well512, @ptrCast(@alignCast(wrenGetSlotForeign(vm, @as(c_int, 0)))));
    {
        var i: c_int = 0;
        while (i < @as(c_int, 16)) : (i += 1) {
            well.*.state[@as(c_uint, @intCast(i))] = @as(u32, @intFromFloat(wrenGetSlotDouble(vm, i + @as(c_int, 1))));
        }
    }
}
pub fn randomFloat(arg_vm: [*c]WrenVM) callconv(.C) void {
    var vm = arg_vm;
    var well: [*c]Well512 = @as([*c]Well512, @ptrCast(@alignCast(wrenGetSlotForeign(vm, @as(c_int, 0)))));
    var result: f64 = @as(f64, @floatFromInt(advanceState(well))) * @as(f64, @floatFromInt(@as(c_int, 1) << @intCast(21)));
    result += @as(f64, @floatFromInt(advanceState(well) & @as(u32, @bitCast((@as(c_int, 1) << @intCast(21)) - @as(c_int, 1)))));
    result /= 9007199254740992.0;
    wrenSetSlotDouble(vm, @as(c_int, 0), result);
}
pub fn randomInt0(arg_vm: [*c]WrenVM) callconv(.C) void {
    var vm = arg_vm;
    var well: [*c]Well512 = @as([*c]Well512, @ptrCast(@alignCast(wrenGetSlotForeign(vm, @as(c_int, 0)))));
    wrenSetSlotDouble(vm, @as(c_int, 0), @as(f64, @floatFromInt(advanceState(well))));
}
pub var metaModuleSource: [*c]const u8 = "class Meta {\n  static getModuleVariables(module) {\n    if (!(module is String)) Fiber.abort(\"Module name must be a string.\")\n    var result = getModuleVariables_(module)\n    if (result != null) return result\n\n    Fiber.abort(\"Could not find a module named '%(module)'.\")\n  }\n\n  static eval(source) {\n    if (!(source is String)) Fiber.abort(\"Source code must be a string.\")\n\n    var closure = compile_(source, false, false)\n    // TODO: Include compile errors.\n    if (closure == null) Fiber.abort(\"Could not compile source code.\")\n\n    closure.call()\n  }\n\n  static compileExpression(source) {\n    if (!(source is String)) Fiber.abort(\"Source code must be a string.\")\n    return compile_(source, true, true)\n  }\n\n  static compile(source) {\n    if (!(source is String)) Fiber.abort(\"Source code must be a string.\")\n    return compile_(source, false, true)\n  }\n\n  foreign static compile_(source, isExpression, printErrors)\n  foreign static getModuleVariables_(module)\n}\n";
pub export fn metaCompile(arg_vm: [*c]WrenVM) void {
    var vm = arg_vm;
    var source: [*c]const u8 = wrenGetSlotString(vm, @as(c_int, 1));
    var isExpression: bool = wrenGetSlotBool(vm, @as(c_int, 2));
    var printErrors: bool = wrenGetSlotBool(vm, @as(c_int, 3));
    var currentFiber: [*c]ObjFiber = vm.*.fiber;
    var @"fn": [*c]ObjFn = (blk: {
        const tmp = currentFiber.*.numFrames - @as(c_int, 2);
        if (tmp >= 0) break :blk currentFiber.*.frames + @as(usize, @intCast(tmp)) else break :blk currentFiber.*.frames - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.closure.*.@"fn";
    var module: [*c]ObjString = @"fn".*.module.*.name;
    var closure: [*c]ObjClosure = wrenCompileSource(vm, module.*.value(), source, isExpression, printErrors);
    if (closure == @as([*c]ObjClosure, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        vm.*.apiStack[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
    } else {
        vm.*.apiStack[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(closure))));
    }
}
pub export fn metaGetModuleVariables(arg_vm: [*c]WrenVM) void {
    var vm = arg_vm;
    wrenEnsureSlots(vm, @as(c_int, 3));
    var moduleValue: Value = wrenMapGet(vm.*.modules, vm.*.apiStack[@as(c_uint, @intCast(@as(c_int, 1)))]);
    if (moduleValue == @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 4))))))) {
        vm.*.apiStack[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
        return;
    }
    var module: [*c]ObjModule = @as([*c]ObjModule, @ptrCast(@alignCast(@as([*c]Obj, @ptrFromInt(@as(usize, @bitCast(moduleValue & ~((@as(u64, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast(63)) | @as(u64, @bitCast(@as(c_long, 9222246136947933184)))))))))));
    var names: [*c]ObjList = wrenNewList(vm, @as(u32, @bitCast(module.*.variableNames.count)));
    vm.*.apiStack[@as(c_uint, @intCast(@as(c_int, 0)))] = wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast(names))));
    {
        var i: c_int = 0;
        while (i < names.*.elements.count) : (i += 1) {
            (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk names.*.elements.data + @as(usize, @intCast(tmp)) else break :blk names.*.elements.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = @as(Value, @bitCast(@as(u64, @bitCast(@as(c_long, 9222246136947933184))) | @as(u64, @bitCast(@as(c_long, @as(c_int, 1))))));
        }
    }
    {
        var i: c_int = 0;
        while (i < names.*.elements.count) : (i += 1) {
            (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk names.*.elements.data + @as(usize, @intCast(tmp)) else break :blk names.*.elements.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = wrenObjectToValue(@as([*c]Obj, @ptrCast(@alignCast((blk: {
                const tmp = i;
                if (tmp >= 0) break :blk module.*.variableNames.data + @as(usize, @intCast(tmp)) else break :blk module.*.variableNames.data - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))));
        }
    }
}
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):80:9
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):86:9
pub const __FLT16_DENORM_MIN__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):109:9
pub const __FLT16_EPSILON__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):113:9
pub const __FLT16_MAX__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):119:9
pub const __FLT16_MIN__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):122:9
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):183:9
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):205:9
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):213:9
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):342:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):343:9
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // /home/tristan/.zvm/master/lib/include/stdarg.h:33:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // /home/tristan/.zvm/master/lib/include/stdarg.h:35:9
pub const va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // /home/tristan/.zvm/master/lib/include/stdarg.h:36:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /home/tristan/.zvm/master/lib/include/stdarg.h:41:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /home/tristan/.zvm/master/lib/include/stdarg.h:46:9
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`"); // /usr/include/features.h:179:9
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:55:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:56:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:57:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:58:11
pub const __glibc_clang_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:92:10
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:105:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:106:9
pub const __warndecl = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:133:10
pub const __warnattr = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:134:10
pub const __errordecl = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:135:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:143:10
pub const __REDIRECT = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:174:10
pub const __REDIRECT_NTH = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:181:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:183:11
pub const __ASMNAME2 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:187:10
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:208:10
pub const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:219:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:226:10
pub const __attribute_const__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:233:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:242:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:243:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:251:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:261:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:274:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:284:10
pub const __nonnull = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:293:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:301:10
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__inline`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:319:10
pub const __extern_inline = @compileError("unable to translate macro: undefined identifier `__inline`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:346:11
pub const __extern_always_inline = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:347:11
pub const __restrict_arr = @compileError("unable to translate macro: undefined identifier `__restrict`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:387:10
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:410:10
pub const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:441:10
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:479:10
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:493:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:494:10
pub const __CFLOAT32 = @compileError("unable to translate: TODO _Complex"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:149:12
pub const __CFLOAT64 = @compileError("unable to translate: TODO _Complex"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:160:13
pub const __CFLOAT32X = @compileError("unable to translate: TODO _Complex"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:169:12
pub const __CFLOAT64X = @compileError("unable to translate: TODO _Complex"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:178:13
pub const __builtin_nansf32 = @compileError("unable to translate macro: undefined identifier `__builtin_nansf`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:221:12
pub const __builtin_huge_valf64 = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:255:13
pub const __builtin_inff64 = @compileError("unable to translate macro: undefined identifier `__builtin_inf`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:256:13
pub const __builtin_nanf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nan`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:257:13
pub const __builtin_nansf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nans`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:258:13
pub const __builtin_huge_valf32x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:272:12
pub const __builtin_inff32x = @compileError("unable to translate macro: undefined identifier `__builtin_inf`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:273:12
pub const __builtin_nanf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nan`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:274:12
pub const __builtin_nansf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nans`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:275:12
pub const __builtin_huge_valf64x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:289:13
pub const __builtin_inff64x = @compileError("unable to translate macro: undefined identifier `__builtin_infl`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:290:13
pub const __builtin_nanf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nanl`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:291:13
pub const __builtin_nansf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nansl`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:292:13
pub const __STD_TYPE = @compileError("unable to translate C expr: unexpected token 'typedef'"); // /usr/include/x86_64-linux-gnu/bits/types.h:137:10
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`"); // /usr/include/x86_64-linux-gnu/bits/typesizes.h:72:9
pub const __FD_ZERO = @compileError("unable to translate macro: undefined identifier `__d0`"); // /usr/include/x86_64-linux-gnu/bits/select.h:33:10
pub const __FD_SET = @compileError("unable to translate C expr: expected ')' instead got '|='"); // /usr/include/x86_64-linux-gnu/bits/select.h:58:9
pub const __FD_CLR = @compileError("unable to translate C expr: expected ')' instead got '&='"); // /usr/include/x86_64-linux-gnu/bits/select.h:60:9
pub const __PTHREAD_MUTEX_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/x86_64-linux-gnu/bits/struct_mutex.h:56:10
pub const __PTHREAD_RWLOCK_ELISION_EXTRA = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/x86_64-linux-gnu/bits/struct_rwlock.h:40:11
pub const ALLOCATE = @compileError("unable to translate C expr: unexpected token ')'"); // src/wren/wren.c:707:9
pub const ALLOCATE_FLEX = @compileError("unable to translate C expr: unexpected token ')'"); // src/wren/wren.c:712:9
pub const ALLOCATE_ARRAY = @compileError("unable to translate C expr: unexpected token ')'"); // src/wren/wren.c:717:9
pub const ASSERT = @compileError("unable to translate C expr: unexpected token 'do'"); // src/wren/wren.c:777:11
pub const UNREACHABLE = @compileError("unable to translate C expr: unexpected token 'Eof'"); // src/wren/wren.c:785:13
pub const HUGE_VAL = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // /usr/include/math.h:48:10
pub const HUGE_VALL = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`"); // /usr/include/math.h:60:11
pub const __GLIBC_FLT_EVAL_METHOD = @compileError("unable to translate macro: undefined identifier `__FLT_EVAL_METHOD__`"); // /usr/include/x86_64-linux-gnu/bits/flt-eval-method.h:27:11
pub const __SIMD_DECL = @compileError("unable to translate macro: undefined identifier `__DECL_SIMD_`"); // /usr/include/math.h:262:9
pub const __MATHCALL_VEC = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /usr/include/math.h:264:9
pub const __MATHDECL_VEC = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /usr/include/math.h:268:9
pub const __MATHDECL = @compileError("unable to translate macro: undefined identifier `__`"); // /usr/include/math.h:274:9
pub const __MATHDECLX = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/math.h:279:9
pub const __MATHDECL_1 = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/math.h:282:9
pub const __MATHCALL_NARROW_ARGS_1 = @compileError("unable to translate macro: undefined identifier `_Marg_`"); // /usr/include/math.h:487:9
pub const __MATHCALL_NARROW_ARGS_2 = @compileError("unable to translate macro: undefined identifier `_Marg_`"); // /usr/include/math.h:488:9
pub const __MATHCALL_NARROW_ARGS_3 = @compileError("unable to translate macro: undefined identifier `_Marg_`"); // /usr/include/math.h:489:9
pub const __MATHCALL_NARROW_NORMAL = @compileError("unable to translate macro: undefined identifier `_Mret_`"); // /usr/include/math.h:490:9
pub const __MATHCALL_NARROW_REDIR = @compileError("unable to translate macro: undefined identifier `_Mret_`"); // /usr/include/math.h:492:9
pub const __MATH_TG = @compileError("unable to translate macro: undefined identifier `f`"); // /usr/include/math.h:841:10
pub const fpclassify = @compileError("unable to translate macro: undefined identifier `__builtin_fpclassify`"); // /usr/include/math.h:886:11
pub const isfinite = @compileError("unable to translate macro: undefined identifier `__builtin_isfinite`"); // /usr/include/math.h:913:11
pub const isnormal = @compileError("unable to translate macro: undefined identifier `__builtin_isnormal`"); // /usr/include/math.h:921:11
pub const isgreater = @compileError("unable to translate macro: undefined identifier `__builtin_isgreater`"); // /usr/include/math.h:1214:11
pub const isgreaterequal = @compileError("unable to translate macro: undefined identifier `__builtin_isgreaterequal`"); // /usr/include/math.h:1215:11
pub const isless = @compileError("unable to translate macro: undefined identifier `__builtin_isless`"); // /usr/include/math.h:1216:11
pub const islessequal = @compileError("unable to translate macro: undefined identifier `__builtin_islessequal`"); // /usr/include/math.h:1217:11
pub const islessgreater = @compileError("unable to translate macro: undefined identifier `__builtin_islessgreater`"); // /usr/include/math.h:1218:11
pub const isunordered = @compileError("unable to translate macro: undefined identifier `__builtin_isunordered`"); // /usr/include/math.h:1219:11
pub const DECLARE_BUFFER = @compileError("unable to translate macro: undefined identifier `data`"); // src/wren/wren.c:842:9
pub const DEFINE_BUFFER = @compileError("unable to translate macro: undefined identifier `wren`"); // src/wren/wren.c:856:9
pub const OPCODE = @compileError("unable to translate macro: undefined identifier `CODE_`"); // src/wren/wren.c:1904:11
pub const __getc_unlocked_body = @compileError("TODO postfix inc/dec expr"); // /usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h:102:9
pub const __putc_unlocked_body = @compileError("TODO postfix inc/dec expr"); // /usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h:106:9
pub const READ_BYTE = @compileError("unable to translate macro: undefined identifier `bytecode`"); // src/wren/wren.c:2503:11
pub const READ_SHORT = @compileError("unable to translate macro: undefined identifier `i`"); // src/wren/wren.c:2504:11
pub const BYTE_INSTRUCTION = @compileError("unable to translate C expr: unexpected token ';'"); // src/wren/wren.c:2506:11
pub const PRIMITIVE = @compileError("unable to translate macro: undefined identifier `symbol`"); // src/wren/wren.c:2987:9
pub const FUNCTION_CALL = @compileError("unable to translate macro: undefined identifier `symbol`"); // src/wren/wren.c:3000:9
pub const DEF_PRIMITIVE = @compileError("unable to translate macro: undefined identifier `prim_`"); // src/wren/wren.c:3014:9
pub const RETURN_VAL = @compileError("unable to translate macro: undefined identifier `args`"); // src/wren/wren.c:3017:9
pub const RETURN_ERROR = @compileError("unable to translate macro: undefined identifier `vm`"); // src/wren/wren.c:3031:9
pub const RETURN_ERROR_FMT = @compileError("unable to translate C expr: expected ')' instead got '...'"); // src/wren/wren.c:3038:9
pub const __exctype = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/ctype.h:102:9
pub const __tobody = @compileError("unable to translate macro: undefined identifier `__extension__`"); // /usr/include/ctype.h:155:9
pub const __exctype_l = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/ctype.h:244:10
pub const FLT_EVAL_METHOD = @compileError("unable to translate macro: undefined identifier `__FLT_EVAL_METHOD__`"); // /home/tristan/.zvm/master/lib/include/float.h:91:9
pub const FLT_ROUNDS = @compileError("unable to translate macro: undefined identifier `__builtin_flt_rounds`"); // /home/tristan/.zvm/master/lib/include/float.h:93:9
pub const DEF_FN_CALL = @compileError("unable to translate macro: undefined identifier `fn_call`"); // src/wren/wren.c:3984:9
pub const DEF_NUM_CONSTANT = @compileError("unable to translate macro: undefined identifier `num_`"); // src/wren/wren.c:4348:9
pub const DEF_NUM_INFIX = @compileError("unable to translate macro: undefined identifier `num_`"); // src/wren/wren.c:4366:9
pub const DEF_NUM_BITWISE = @compileError("unable to translate macro: undefined identifier `num_bitwise`"); // src/wren/wren.c:4383:9
pub const DEF_NUM_FN = @compileError("unable to translate macro: undefined identifier `num_`"); // src/wren/wren.c:4399:9
pub const UNUSED = @compileError("unable to translate C expr: unexpected token '{'"); // src/wren/wren.c:8159:9
pub const PREFIX = @compileError("unable to translate C expr: unexpected token '{'"); // src/wren/wren.c:8160:9
pub const INFIX = @compileError("unable to translate C expr: unexpected token '{'"); // src/wren/wren.c:8161:9
pub const INFIX_OPERATOR = @compileError("unable to translate C expr: unexpected token '{'"); // src/wren/wren.c:8162:9
pub const PREFIX_OPERATOR = @compileError("unable to translate C expr: unexpected token '{'"); // src/wren/wren.c:8163:9
pub const OPERATOR = @compileError("unable to translate C expr: unexpected token '{'"); // src/wren/wren.c:8164:9
pub const PUSH = @compileError("unable to translate macro: undefined identifier `fiber`"); // src/wren/wren.c:11751:11
pub const POP = @compileError("unable to translate macro: undefined identifier `fiber`"); // src/wren/wren.c:11752:11
pub const DROP = @compileError("unable to translate macro: undefined identifier `fiber`"); // src/wren/wren.c:11753:11
pub const PEEK = @compileError("unable to translate macro: undefined identifier `fiber`"); // src/wren/wren.c:11754:11
pub const PEEK2 = @compileError("unable to translate macro: undefined identifier `fiber`"); // src/wren/wren.c:11755:11
pub const STORE_FRAME = @compileError("unable to translate macro: undefined identifier `frame`"); // src/wren/wren.c:11761:11
pub const LOAD_FRAME = @compileError("unable to translate macro: undefined identifier `frame`"); // src/wren/wren.c:11765:11
pub const RUNTIME_ERROR = @compileError("unable to translate macro: undefined identifier `vm`"); // src/wren/wren.c:11777:11
pub const DEBUG_TRACE_INSTRUCTIONS = @compileError("unable to translate C expr: unexpected token 'do'"); // src/wren/wren.c:11797:13
pub const INTERPRET_LOOP = @compileError("unable to translate C expr: unexpected token ';'"); // src/wren/wren.c:12026:11
pub const CASE_CODE = @compileError("unable to translate macro: undefined identifier `code_`"); // src/wren/wren.c:12027:11
pub const DISPATCH = @compileError("unable to translate macro: undefined identifier `dispatchTable`"); // src/wren/wren.c:12029:11
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 16);
pub const __clang_minor__ = @as(c_int, 0);
pub const __clang_patchlevel__ = @as(c_int, 6);
pub const __clang_version__ = "16.0.6 (https://github.com/ziglang/zig-bootstrap 34644ad5032c58e39327d33d7f96d63d7c330003)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 16.0.6 (https://github.com/ziglang/zig-bootstrap 34644ad5032c58e39327d33d7f96d63d7c330003)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __znver2 = @as(c_int, 1);
pub const __znver2__ = @as(c_int, 1);
pub const __tune_znver2__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __SSE4A__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __CLZERO__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __RDPRU__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __ELF__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __GLIBC_MINOR__ = @as(c_int, 19);
pub const _DEBUG = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const wren_h = "";
pub const __GNUC_VA_LIST = "";
pub const __STDARG_H = "";
pub const _VA_LIST = "";
pub const __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION = "";
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2X = @as(c_int, 0);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub const __LEAF = "";
pub const __LEAF_ATTR = "";
pub inline fn __P(args: anytype) @TypeOf(args) {
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    return args;
}
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin_object_size(ptr, @as(c_int, 0))) {
    return __builtin_object_size(ptr, @as(c_int, 0));
}
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub inline fn __ASMNAME(cname: anytype) @TypeOf(__ASMNAME2(__USER_LABEL_PREFIX__, cname)) {
    return __ASMNAME2(__USER_LABEL_PREFIX__, cname);
}
pub const __wur = "";
pub const __attribute_artificial__ = "";
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 0))) {
    return __builtin_expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 1))) {
    return __builtin_expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub const __LONG_DOUBLE_USES_FLOAT128 = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name_1: anytype, proto: anytype, alias: anytype) @TypeOf(name_1 ++ proto) {
    _ = @TypeOf(alias);
    return name_1 ++ proto;
}
pub inline fn __LDBL_REDIR(name_1: anytype, proto: anytype) @TypeOf(name_1 ++ proto) {
    return name_1 ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name_1: anytype, proto: anytype, alias: anytype) @TypeOf(name_1 ++ proto ++ __THROW) {
    _ = @TypeOf(alias);
    return name_1 ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name_1: anytype, proto: anytype) @TypeOf(name_1 ++ proto ++ __THROW) {
    return name_1 ++ proto ++ __THROW;
}
pub inline fn __REDIRECT_LDBL(name_1: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name_1, proto, alias)) {
    return __REDIRECT(name_1, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name_1: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name_1, proto, alias)) {
    return __REDIRECT_NTH(name_1, proto, alias);
}
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_lchmod = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_sstk = "";
pub const __stub_stty = "";
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 0);
pub const __need_size_t = "";
pub const __need_wchar_t = "";
pub const __need_NULL = "";
pub const _SIZE_T = "";
pub const _WCHAR_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const _STDLIB_H = @as(c_int, 1);
pub const WNOHANG = @as(c_int, 1);
pub const WUNTRACED = @as(c_int, 2);
pub const WSTOPPED = @as(c_int, 2);
pub const WEXITED = @as(c_int, 4);
pub const WCONTINUED = @as(c_int, 8);
pub const WNOWAIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01000000, .hexadecimal);
pub const __WNOTHREAD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hexadecimal);
pub const __WALL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hexadecimal);
pub const __WCLONE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hexadecimal);
pub const __ENUM_IDTYPE_T = @as(c_int, 1);
pub inline fn __WEXITSTATUS(status: anytype) @TypeOf((status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hexadecimal)) >> @as(c_int, 8)) {
    return (status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hexadecimal)) >> @as(c_int, 8);
}
pub inline fn __WTERMSIG(status: anytype) @TypeOf(status & @as(c_int, 0x7f)) {
    return status & @as(c_int, 0x7f);
}
pub inline fn __WSTOPSIG(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    return __WEXITSTATUS(status);
}
pub inline fn __WIFEXITED(status: anytype) @TypeOf(__WTERMSIG(status) == @as(c_int, 0)) {
    return __WTERMSIG(status) == @as(c_int, 0);
}
pub inline fn __WIFSIGNALED(status: anytype) @TypeOf((@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0)) {
    return (@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0);
}
pub inline fn __WIFSTOPPED(status: anytype) @TypeOf((status & @as(c_int, 0xff)) == @as(c_int, 0x7f)) {
    return (status & @as(c_int, 0xff)) == @as(c_int, 0x7f);
}
pub inline fn __WIFCONTINUED(status: anytype) @TypeOf(status == __W_CONTINUED) {
    return status == __W_CONTINUED;
}
pub inline fn __WCOREDUMP(status: anytype) @TypeOf(status & __WCOREFLAG) {
    return status & __WCOREFLAG;
}
pub inline fn __W_EXITCODE(ret: anytype, sig: anytype) @TypeOf((ret << @as(c_int, 8)) | sig) {
    return (ret << @as(c_int, 8)) | sig;
}
pub inline fn __W_STOPCODE(sig: anytype) @TypeOf((sig << @as(c_int, 8)) | @as(c_int, 0x7f)) {
    return (sig << @as(c_int, 8)) | @as(c_int, 0x7f);
}
pub const __W_CONTINUED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hexadecimal);
pub const __WCOREFLAG = @as(c_int, 0x80);
pub inline fn WEXITSTATUS(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    return __WEXITSTATUS(status);
}
pub inline fn WTERMSIG(status: anytype) @TypeOf(__WTERMSIG(status)) {
    return __WTERMSIG(status);
}
pub inline fn WSTOPSIG(status: anytype) @TypeOf(__WSTOPSIG(status)) {
    return __WSTOPSIG(status);
}
pub inline fn WIFEXITED(status: anytype) @TypeOf(__WIFEXITED(status)) {
    return __WIFEXITED(status);
}
pub inline fn WIFSIGNALED(status: anytype) @TypeOf(__WIFSIGNALED(status)) {
    return __WIFSIGNALED(status);
}
pub inline fn WIFSTOPPED(status: anytype) @TypeOf(__WIFSTOPPED(status)) {
    return __WIFSTOPPED(status);
}
pub inline fn WIFCONTINUED(status: anytype) @TypeOf(__WIFCONTINUED(status)) {
    return __WIFCONTINUED(status);
}
pub const _BITS_FLOATN_H = "";
pub const __HAVE_FLOAT128 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128 = @as(c_int, 0);
pub const __HAVE_FLOAT64X = @as(c_int, 1);
pub const __HAVE_FLOAT64X_LONG_DOUBLE = @as(c_int, 1);
pub const _BITS_FLOATN_COMMON_H = "";
pub const __HAVE_FLOAT16 = @as(c_int, 0);
pub const __HAVE_FLOAT32 = @as(c_int, 1);
pub const __HAVE_FLOAT64 = @as(c_int, 1);
pub const __HAVE_FLOAT32X = @as(c_int, 1);
pub const __HAVE_FLOAT128X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
pub const __HAVE_DISTINCT_FLOAT32 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT32X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
pub const __HAVE_FLOAT128_UNLIKE_LDBL = (__HAVE_DISTINCT_FLOAT128 != 0) and (__LDBL_MANT_DIG__ != @as(c_int, 113));
pub const __HAVE_FLOATN_NOT_TYPEDEF = @as(c_int, 0);
pub const __f32 = @import("std").zig.c_translation.Macros.F_SUFFIX;
pub inline fn __f64(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __f32x(x: anytype) @TypeOf(x) {
    return x;
}
pub const __f64x = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub inline fn __builtin_huge_valf32() @TypeOf(__builtin_huge_valf()) {
    return __builtin_huge_valf();
}
pub inline fn __builtin_inff32() @TypeOf(__builtin_inff()) {
    return __builtin_inff();
}
pub inline fn __builtin_nanf32(x: anytype) @TypeOf(__builtin_nanf(x)) {
    return __builtin_nanf(x);
}
pub const __ldiv_t_defined = @as(c_int, 1);
pub const __lldiv_t_defined = @as(c_int, 1);
pub const RAND_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const MB_CUR_MAX = __ctype_get_mb_cur_max();
pub const _SYS_TYPES_H = @as(c_int, 1);
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __TIMESIZE = __WORDSIZE;
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const __u_char_defined = "";
pub const __ino_t_defined = "";
pub const __dev_t_defined = "";
pub const __gid_t_defined = "";
pub const __mode_t_defined = "";
pub const __nlink_t_defined = "";
pub const __uid_t_defined = "";
pub const __off_t_defined = "";
pub const __pid_t_defined = "";
pub const __id_t_defined = "";
pub const __ssize_t_defined = "";
pub const __daddr_t_defined = "";
pub const __key_t_defined = "";
pub const __clock_t_defined = @as(c_int, 1);
pub const __clockid_t_defined = @as(c_int, 1);
pub const __time_t_defined = @as(c_int, 1);
pub const __timer_t_defined = @as(c_int, 1);
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const __BIT_TYPES_DEFINED__ = @as(c_int, 1);
pub const _ENDIAN_H = @as(c_int, 1);
pub const _BITS_ENDIAN_H = @as(c_int, 1);
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __PDP_ENDIAN = @as(c_int, 3412);
pub const _BITS_ENDIANNESS_H = @as(c_int, 1);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub inline fn __LONG_LONG_PAIR(HI: anytype, LO: anytype) @TypeOf(HI) {
    return blk: {
        _ = @TypeOf(LO);
        break :blk HI;
    };
}
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const _BITS_BYTESWAP_H = @as(c_int, 1);
pub inline fn __bswap_constant_16(x: anytype) __uint16_t {
    return @import("std").zig.c_translation.cast(__uint16_t, ((x >> @as(c_int, 8)) & @as(c_int, 0xff)) | ((x & @as(c_int, 0xff)) << @as(c_int, 8)));
}
pub inline fn __bswap_constant_32(x: anytype) @TypeOf(((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hexadecimal)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hexadecimal)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24))) {
    return ((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hexadecimal)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hexadecimal)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24));
}
pub inline fn __bswap_constant_64(x: anytype) @TypeOf(((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56))) {
    return ((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56));
}
pub const _BITS_UINTN_IDENTITY_H = @as(c_int, 1);
pub inline fn htobe16(x: anytype) @TypeOf(__bswap_16(x)) {
    return __bswap_16(x);
}
pub inline fn htole16(x: anytype) @TypeOf(__uint16_identity(x)) {
    return __uint16_identity(x);
}
pub inline fn be16toh(x: anytype) @TypeOf(__bswap_16(x)) {
    return __bswap_16(x);
}
pub inline fn le16toh(x: anytype) @TypeOf(__uint16_identity(x)) {
    return __uint16_identity(x);
}
pub inline fn htobe32(x: anytype) @TypeOf(__bswap_32(x)) {
    return __bswap_32(x);
}
pub inline fn htole32(x: anytype) @TypeOf(__uint32_identity(x)) {
    return __uint32_identity(x);
}
pub inline fn be32toh(x: anytype) @TypeOf(__bswap_32(x)) {
    return __bswap_32(x);
}
pub inline fn le32toh(x: anytype) @TypeOf(__uint32_identity(x)) {
    return __uint32_identity(x);
}
pub inline fn htobe64(x: anytype) @TypeOf(__bswap_64(x)) {
    return __bswap_64(x);
}
pub inline fn htole64(x: anytype) @TypeOf(__uint64_identity(x)) {
    return __uint64_identity(x);
}
pub inline fn be64toh(x: anytype) @TypeOf(__bswap_64(x)) {
    return __bswap_64(x);
}
pub inline fn le64toh(x: anytype) @TypeOf(__uint64_identity(x)) {
    return __uint64_identity(x);
}
pub const _SYS_SELECT_H = @as(c_int, 1);
pub const __FD_ZERO_STOS = "stosq";
pub inline fn __FD_ISSET(d: anytype, set: anytype) @TypeOf((__FDS_BITS(set)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0)) {
    return (__FDS_BITS(set)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0);
}
pub const __sigset_t_defined = @as(c_int, 1);
pub const ____sigset_t_defined = "";
pub const _SIGSET_NWORDS = @import("std").zig.c_translation.MacroArithmetic.div(@as(c_int, 1024), @as(c_int, 8) * @import("std").zig.c_translation.sizeof(c_ulong));
pub const __timeval_defined = @as(c_int, 1);
pub const _STRUCT_TIMESPEC = @as(c_int, 1);
pub const __suseconds_t_defined = "";
pub const __NFDBITS = @as(c_int, 8) * @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(__fd_mask));
pub inline fn __FD_ELT(d: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS)) {
    return @import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS);
}
pub inline fn __FD_MASK(d: anytype) __fd_mask {
    return @import("std").zig.c_translation.cast(__fd_mask, @as(c_ulong, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(d, __NFDBITS));
}
pub inline fn __FDS_BITS(set: anytype) @TypeOf(set.*.__fds_bits) {
    return set.*.__fds_bits;
}
pub const FD_SETSIZE = __FD_SETSIZE;
pub const NFDBITS = __NFDBITS;
pub inline fn FD_SET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_SET(fd, fdsetp)) {
    return __FD_SET(fd, fdsetp);
}
pub inline fn FD_CLR(fd: anytype, fdsetp: anytype) @TypeOf(__FD_CLR(fd, fdsetp)) {
    return __FD_CLR(fd, fdsetp);
}
pub inline fn FD_ISSET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_ISSET(fd, fdsetp)) {
    return __FD_ISSET(fd, fdsetp);
}
pub inline fn FD_ZERO(fdsetp: anytype) @TypeOf(__FD_ZERO(fdsetp)) {
    return __FD_ZERO(fdsetp);
}
pub const __blksize_t_defined = "";
pub const __blkcnt_t_defined = "";
pub const __fsblkcnt_t_defined = "";
pub const __fsfilcnt_t_defined = "";
pub const _BITS_PTHREADTYPES_COMMON_H = @as(c_int, 1);
pub const _THREAD_SHARED_TYPES_H = @as(c_int, 1);
pub const _BITS_PTHREADTYPES_ARCH_H = @as(c_int, 1);
pub const __SIZEOF_PTHREAD_MUTEX_T = @as(c_int, 40);
pub const __SIZEOF_PTHREAD_ATTR_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_RWLOCK_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_BARRIER_T = @as(c_int, 32);
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_COND_T = @as(c_int, 48);
pub const __SIZEOF_PTHREAD_CONDATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = @as(c_int, 8);
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = @as(c_int, 4);
pub const __LOCK_ALIGNMENT = "";
pub const __ONCE_ALIGNMENT = "";
pub const _THREAD_MUTEX_INTERNAL_H = @as(c_int, 1);
pub const __PTHREAD_MUTEX_HAVE_PREV = @as(c_int, 1);
pub const _RWLOCK_INTERNAL_H = "";
pub inline fn __PTHREAD_RWLOCK_INITIALIZER(__flags: anytype) @TypeOf(__flags) {
    return blk: {
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @TypeOf(__PTHREAD_RWLOCK_ELISION_EXTRA);
        _ = @as(c_int, 0);
        break :blk __flags;
    };
}
pub const __have_pthread_attr_t = @as(c_int, 1);
pub const _ALLOCA_H = @as(c_int, 1);
pub const __COMPAR_FN_T = "";
pub const __STDBOOL_H = "";
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const WREN_VERSION_MAJOR = @as(c_int, 0);
pub const WREN_VERSION_MINOR = @as(c_int, 4);
pub const WREN_VERSION_PATCH = @as(c_int, 0);
pub const WREN_VERSION_STRING = "0.4.0";
pub const WREN_VERSION_NUMBER = ((WREN_VERSION_MAJOR * @import("std").zig.c_translation.promoteIntLiteral(c_int, 1000000, .decimal)) + (WREN_VERSION_MINOR * @as(c_int, 1000))) + WREN_VERSION_PATCH;
pub const WREN_API = "";
pub const wren_debug_h = "";
pub const wren_value_h = "";
pub const _STRING_H = @as(c_int, 1);
pub const _BITS_TYPES_LOCALE_T_H = @as(c_int, 1);
pub const _BITS_TYPES___LOCALE_T_H = @as(c_int, 1);
pub const _STRINGS_H = @as(c_int, 1);
pub const wren_common_h = "";
pub const __STDC_LIMIT_MACROS = "";
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H = @as(c_int, 1);
pub const _BITS_WCHAR_H = @as(c_int, 1);
pub const __WCHAR_MAX = __WCHAR_MAX__;
pub const __WCHAR_MIN = -__WCHAR_MAX - @as(c_int, 1);
pub const _BITS_STDINT_UINTN_H = @as(c_int, 1);
pub const __intptr_t_defined = "";
pub const __INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_LEAST8_MIN = -@as(c_int, 128);
pub const INT_LEAST16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT_LEAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT_LEAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_LEAST8_MAX = @as(c_int, 127);
pub const INT_LEAST16_MAX = @as(c_int, 32767);
pub const INT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT_LEAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_LEAST8_MAX = @as(c_int, 255);
pub const UINT_LEAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_FAST8_MIN = -@as(c_int, 128);
pub const INT_FAST16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_FAST8_MAX = @as(c_int, 127);
pub const INT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_FAST8_MAX = @as(c_int, 255);
pub const UINT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTPTR_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const UINTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INTMAX_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const PTRDIFF_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const PTRDIFF_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const SIG_ATOMIC_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const SIG_ATOMIC_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const WCHAR_MIN = __WCHAR_MIN;
pub const WCHAR_MAX = __WCHAR_MAX;
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    return c;
}
pub const INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    return c;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const WREN_NAN_TAGGING = @as(c_int, 1);
pub const WREN_COMPUTED_GOTO = @as(c_int, 1);
pub const WREN_OPT_META = @as(c_int, 1);
pub const WREN_OPT_RANDOM = @as(c_int, 1);
pub const WREN_DEBUG_GC_STRESS = @as(c_int, 0);
pub const WREN_DEBUG_TRACE_MEMORY = @as(c_int, 0);
pub const WREN_DEBUG_TRACE_GC = @as(c_int, 0);
pub const WREN_DEBUG_DUMP_COMPILED_CODE = @as(c_int, 0);
pub const WREN_DEBUG_TRACE_INSTRUCTIONS = @as(c_int, 0);
pub const MAX_MODULE_VARS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const MAX_PARAMETERS = @as(c_int, 16);
pub const MAX_METHOD_NAME = @as(c_int, 64);
pub const MAX_METHOD_SIGNATURE = (MAX_METHOD_NAME + (MAX_PARAMETERS * @as(c_int, 2))) + @as(c_int, 6);
pub const MAX_VARIABLE_NAME = @as(c_int, 64);
pub const MAX_FIELDS = @as(c_int, 255);
pub inline fn DEALLOCATE(vm: anytype, pointer: anytype) @TypeOf(wrenReallocate(vm, pointer, @as(c_int, 0), @as(c_int, 0))) {
    return wrenReallocate(vm, pointer, @as(c_int, 0), @as(c_int, 0));
}
pub const FLEXIBLE_ARRAY = "";
pub const wren_math_h = "";
pub const _MATH_H = @as(c_int, 1);
pub const _BITS_LIBM_SIMD_DECL_STUBS_H = @as(c_int, 1);
pub const __DECL_SIMD_cos = "";
pub const __DECL_SIMD_cosf = "";
pub const __DECL_SIMD_cosl = "";
pub const __DECL_SIMD_cosf16 = "";
pub const __DECL_SIMD_cosf32 = "";
pub const __DECL_SIMD_cosf64 = "";
pub const __DECL_SIMD_cosf128 = "";
pub const __DECL_SIMD_cosf32x = "";
pub const __DECL_SIMD_cosf64x = "";
pub const __DECL_SIMD_cosf128x = "";
pub const __DECL_SIMD_sin = "";
pub const __DECL_SIMD_sinf = "";
pub const __DECL_SIMD_sinl = "";
pub const __DECL_SIMD_sinf16 = "";
pub const __DECL_SIMD_sinf32 = "";
pub const __DECL_SIMD_sinf64 = "";
pub const __DECL_SIMD_sinf128 = "";
pub const __DECL_SIMD_sinf32x = "";
pub const __DECL_SIMD_sinf64x = "";
pub const __DECL_SIMD_sinf128x = "";
pub const __DECL_SIMD_sincos = "";
pub const __DECL_SIMD_sincosf = "";
pub const __DECL_SIMD_sincosl = "";
pub const __DECL_SIMD_sincosf16 = "";
pub const __DECL_SIMD_sincosf32 = "";
pub const __DECL_SIMD_sincosf64 = "";
pub const __DECL_SIMD_sincosf128 = "";
pub const __DECL_SIMD_sincosf32x = "";
pub const __DECL_SIMD_sincosf64x = "";
pub const __DECL_SIMD_sincosf128x = "";
pub const __DECL_SIMD_log = "";
pub const __DECL_SIMD_logf = "";
pub const __DECL_SIMD_logl = "";
pub const __DECL_SIMD_logf16 = "";
pub const __DECL_SIMD_logf32 = "";
pub const __DECL_SIMD_logf64 = "";
pub const __DECL_SIMD_logf128 = "";
pub const __DECL_SIMD_logf32x = "";
pub const __DECL_SIMD_logf64x = "";
pub const __DECL_SIMD_logf128x = "";
pub const __DECL_SIMD_exp = "";
pub const __DECL_SIMD_expf = "";
pub const __DECL_SIMD_expl = "";
pub const __DECL_SIMD_expf16 = "";
pub const __DECL_SIMD_expf32 = "";
pub const __DECL_SIMD_expf64 = "";
pub const __DECL_SIMD_expf128 = "";
pub const __DECL_SIMD_expf32x = "";
pub const __DECL_SIMD_expf64x = "";
pub const __DECL_SIMD_expf128x = "";
pub const __DECL_SIMD_pow = "";
pub const __DECL_SIMD_powf = "";
pub const __DECL_SIMD_powl = "";
pub const __DECL_SIMD_powf16 = "";
pub const __DECL_SIMD_powf32 = "";
pub const __DECL_SIMD_powf64 = "";
pub const __DECL_SIMD_powf128 = "";
pub const __DECL_SIMD_powf32x = "";
pub const __DECL_SIMD_powf64x = "";
pub const __DECL_SIMD_powf128x = "";
pub const HUGE_VALF = __builtin_huge_valf();
pub const INFINITY = __builtin_inff();
pub const NAN = __builtin_nanf("");
pub const __FP_LOGB0_IS_MIN = @as(c_int, 1);
pub const __FP_LOGBNAN_IS_MIN = @as(c_int, 1);
pub const FP_ILOGB0 = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const FP_ILOGBNAN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub inline fn __MATHCALL(function: anytype, suffix: anytype, args: anytype) @TypeOf(__MATHDECL(_Mdouble_, function, suffix, args)) {
    return __MATHDECL(_Mdouble_, function, suffix, args);
}
pub inline fn __MATHCALLX(function: anytype, suffix: anytype, args: anytype, attrib: anytype) @TypeOf(__MATHDECLX(_Mdouble_, function, suffix, args, attrib)) {
    return __MATHDECLX(_Mdouble_, function, suffix, args, attrib);
}
pub const _Mdouble_ = f64;
pub inline fn __MATH_PRECNAME(name_1: anytype, r: anytype) @TypeOf(__CONCAT(name_1, r)) {
    return __CONCAT(name_1, r);
}
pub const __MATH_DECLARING_DOUBLE = @as(c_int, 1);
pub const __MATH_DECLARING_FLOATN = @as(c_int, 0);
pub const __MATH_DECLARE_LDOUBLE = @as(c_int, 1);
pub inline fn __MATHCALL_NARROW(func: anytype, redir: anytype, nargs: anytype) @TypeOf(__MATHCALL_NARROW_NORMAL(func, nargs)) {
    _ = @TypeOf(redir);
    return __MATHCALL_NARROW_NORMAL(func, nargs);
}
pub inline fn signbit(x: anytype) @TypeOf(__builtin_signbit(x)) {
    return __builtin_signbit(x);
}
pub const MATH_ERRNO = @as(c_int, 1);
pub const MATH_ERREXCEPT = @as(c_int, 2);
pub const math_errhandling = MATH_ERRNO | MATH_ERREXCEPT;
pub const M_E = @as(f64, 2.7182818284590452354);
pub const M_LOG2E = @as(f64, 1.4426950408889634074);
pub const M_LOG10E = @as(f64, 0.43429448190325182765);
pub const M_LN2 = @as(f64, 0.69314718055994530942);
pub const M_LN10 = @as(f64, 2.30258509299404568402);
pub const M_PI = @as(f64, 3.14159265358979323846);
pub const M_PI_2 = @as(f64, 1.57079632679489661923);
pub const M_PI_4 = @as(f64, 0.78539816339744830962);
pub const M_1_PI = @as(f64, 0.31830988618379067154);
pub const M_2_PI = @as(f64, 0.63661977236758134308);
pub const M_2_SQRTPI = @as(f64, 1.12837916709551257390);
pub const M_SQRT2 = @as(f64, 1.41421356237309504880);
pub const M_SQRT1_2 = @as(f64, 0.70710678118654752440);
pub const WREN_DOUBLE_QNAN_POS_MIN_BITS = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7FF8000000000000, .hexadecimal));
pub const WREN_DOUBLE_QNAN_POS_MAX_BITS = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7FFFFFFFFFFFFFFF, .hexadecimal));
pub const WREN_DOUBLE_NAN = wrenDoubleFromBits(WREN_DOUBLE_QNAN_POS_MIN_BITS);
pub const wren_utils_h = "";
pub inline fn AS_CLASS(value: anytype) [*c]ObjClass {
    return @import("std").zig.c_translation.cast([*c]ObjClass, AS_OBJ(value));
}
pub inline fn AS_CLOSURE(value: anytype) [*c]ObjClosure {
    return @import("std").zig.c_translation.cast([*c]ObjClosure, AS_OBJ(value));
}
pub inline fn AS_FIBER(v: anytype) [*c]ObjFiber {
    return @import("std").zig.c_translation.cast([*c]ObjFiber, AS_OBJ(v));
}
pub inline fn AS_FN(value: anytype) [*c]ObjFn {
    return @import("std").zig.c_translation.cast([*c]ObjFn, AS_OBJ(value));
}
pub inline fn AS_FOREIGN(v: anytype) [*c]ObjForeign {
    return @import("std").zig.c_translation.cast([*c]ObjForeign, AS_OBJ(v));
}
pub inline fn AS_INSTANCE(value: anytype) [*c]ObjInstance {
    return @import("std").zig.c_translation.cast([*c]ObjInstance, AS_OBJ(value));
}
pub inline fn AS_LIST(value: anytype) [*c]ObjList {
    return @import("std").zig.c_translation.cast([*c]ObjList, AS_OBJ(value));
}
pub inline fn AS_MAP(value: anytype) [*c]ObjMap {
    return @import("std").zig.c_translation.cast([*c]ObjMap, AS_OBJ(value));
}
pub inline fn AS_MODULE(value: anytype) [*c]ObjModule {
    return @import("std").zig.c_translation.cast([*c]ObjModule, AS_OBJ(value));
}
pub inline fn AS_NUM(value: anytype) @TypeOf(wrenValueToNum(value)) {
    return wrenValueToNum(value);
}
pub inline fn AS_RANGE(v: anytype) [*c]ObjRange {
    return @import("std").zig.c_translation.cast([*c]ObjRange, AS_OBJ(v));
}
pub inline fn AS_STRING(v: anytype) [*c]ObjString {
    return @import("std").zig.c_translation.cast([*c]ObjString, AS_OBJ(v));
}
pub inline fn AS_CSTRING(v: anytype) @TypeOf(AS_STRING(v).*.value) {
    return AS_STRING(v).*.value;
}
pub inline fn BOOL_VAL(boolean_1: anytype) @TypeOf(if (boolean_1) TRUE_VAL else FALSE_VAL) {
    return if (boolean_1) TRUE_VAL else FALSE_VAL;
}
pub inline fn NUM_VAL(num: anytype) @TypeOf(wrenNumToValue(num)) {
    return wrenNumToValue(num);
}
pub inline fn OBJ_VAL(obj: anytype) @TypeOf(wrenObjectToValue(@import("std").zig.c_translation.cast([*c]Obj, obj))) {
    return wrenObjectToValue(@import("std").zig.c_translation.cast([*c]Obj, obj));
}
pub inline fn IS_BOOL(value: anytype) @TypeOf(wrenIsBool(value)) {
    return wrenIsBool(value);
}
pub inline fn IS_CLASS(value: anytype) @TypeOf(wrenIsObjType(value, OBJ_CLASS)) {
    return wrenIsObjType(value, OBJ_CLASS);
}
pub inline fn IS_CLOSURE(value: anytype) @TypeOf(wrenIsObjType(value, OBJ_CLOSURE)) {
    return wrenIsObjType(value, OBJ_CLOSURE);
}
pub inline fn IS_FIBER(value: anytype) @TypeOf(wrenIsObjType(value, OBJ_FIBER)) {
    return wrenIsObjType(value, OBJ_FIBER);
}
pub inline fn IS_FN(value: anytype) @TypeOf(wrenIsObjType(value, OBJ_FN)) {
    return wrenIsObjType(value, OBJ_FN);
}
pub inline fn IS_FOREIGN(value: anytype) @TypeOf(wrenIsObjType(value, OBJ_FOREIGN)) {
    return wrenIsObjType(value, OBJ_FOREIGN);
}
pub inline fn IS_INSTANCE(value: anytype) @TypeOf(wrenIsObjType(value, OBJ_INSTANCE)) {
    return wrenIsObjType(value, OBJ_INSTANCE);
}
pub inline fn IS_LIST(value: anytype) @TypeOf(wrenIsObjType(value, OBJ_LIST)) {
    return wrenIsObjType(value, OBJ_LIST);
}
pub inline fn IS_MAP(value: anytype) @TypeOf(wrenIsObjType(value, OBJ_MAP)) {
    return wrenIsObjType(value, OBJ_MAP);
}
pub inline fn IS_RANGE(value: anytype) @TypeOf(wrenIsObjType(value, OBJ_RANGE)) {
    return wrenIsObjType(value, OBJ_RANGE);
}
pub inline fn IS_STRING(value: anytype) @TypeOf(wrenIsObjType(value, OBJ_STRING)) {
    return wrenIsObjType(value, OBJ_STRING);
}
pub inline fn CONST_STRING(vm: anytype, text: anytype) @TypeOf(wrenNewStringLength(vm, text, @import("std").zig.c_translation.sizeof(text) - @as(c_int, 1))) {
    return wrenNewStringLength(vm, text, @import("std").zig.c_translation.sizeof(text) - @as(c_int, 1));
}
pub const SIGN_BIT = @import("std").zig.c_translation.cast(u64, @as(c_int, 1)) << @as(c_int, 63);
pub const QNAN = @import("std").zig.c_translation.cast(u64, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7ffc000000000000, .hexadecimal));
pub inline fn IS_NUM(value: anytype) @TypeOf((value & QNAN) != QNAN) {
    return (value & QNAN) != QNAN;
}
pub inline fn IS_OBJ(value: anytype) @TypeOf((value & (QNAN | SIGN_BIT)) == (QNAN | SIGN_BIT)) {
    return (value & (QNAN | SIGN_BIT)) == (QNAN | SIGN_BIT);
}
pub inline fn IS_FALSE(value: anytype) @TypeOf(value == FALSE_VAL) {
    return value == FALSE_VAL;
}
pub inline fn IS_NULL(value: anytype) @TypeOf(value == NULL_VAL) {
    return value == NULL_VAL;
}
pub inline fn IS_UNDEFINED(value: anytype) @TypeOf(value == UNDEFINED_VAL) {
    return value == UNDEFINED_VAL;
}
pub const MASK_TAG = @as(c_int, 7);
pub const TAG_NAN = @as(c_int, 0);
pub const TAG_NULL = @as(c_int, 1);
pub const TAG_FALSE = @as(c_int, 2);
pub const TAG_TRUE = @as(c_int, 3);
pub const TAG_UNDEFINED = @as(c_int, 4);
pub const TAG_UNUSED2 = @as(c_int, 5);
pub const TAG_UNUSED3 = @as(c_int, 6);
pub const TAG_UNUSED4 = @as(c_int, 7);
pub inline fn AS_BOOL(value: anytype) @TypeOf(value == TRUE_VAL) {
    return value == TRUE_VAL;
}
pub inline fn AS_OBJ(value: anytype) [*c]Obj {
    return @import("std").zig.c_translation.cast([*c]Obj, @import("std").zig.c_translation.cast(usize, value & ~(SIGN_BIT | QNAN)));
}
pub const NULL_VAL = @import("std").zig.c_translation.cast(Value, @import("std").zig.c_translation.cast(u64, QNAN | TAG_NULL));
pub const FALSE_VAL = @import("std").zig.c_translation.cast(Value, @import("std").zig.c_translation.cast(u64, QNAN | TAG_FALSE));
pub const TRUE_VAL = @import("std").zig.c_translation.cast(Value, @import("std").zig.c_translation.cast(u64, QNAN | TAG_TRUE));
pub const UNDEFINED_VAL = @import("std").zig.c_translation.cast(Value, @import("std").zig.c_translation.cast(u64, QNAN | TAG_UNDEFINED));
pub inline fn GET_TAG(value: anytype) c_int {
    return @import("std").zig.c_translation.cast(c_int, value & MASK_TAG);
}
pub const wren_vm_h = "";
pub const wren_compiler_h = "";
pub const WREN_MAX_TEMP_ROOTS = @as(c_int, 8);
pub const _STDIO_H = @as(c_int, 1);
pub const __need___va_list = "";
pub const _____fpos_t_defined = @as(c_int, 1);
pub const ____mbstate_t_defined = @as(c_int, 1);
pub const _____fpos64_t_defined = @as(c_int, 1);
pub const ____FILE_defined = @as(c_int, 1);
pub const __FILE_defined = @as(c_int, 1);
pub const __struct_FILE_defined = @as(c_int, 1);
pub const _IO_EOF_SEEN = @as(c_int, 0x0010);
pub inline fn __feof_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0)) {
    return (_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0);
}
pub const _IO_ERR_SEEN = @as(c_int, 0x0020);
pub inline fn __ferror_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0)) {
    return (_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0);
}
pub const _IO_USER_LOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hexadecimal);
pub const _VA_LIST_DEFINED = "";
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 8192);
pub const EOF = -@as(c_int, 1);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const P_tmpdir = "/tmp";
pub const _BITS_STDIO_LIM_H = @as(c_int, 1);
pub const L_tmpnam = @as(c_int, 20);
pub const TMP_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 238328, .decimal);
pub const FILENAME_MAX = @as(c_int, 4096);
pub const L_ctermid = @as(c_int, 9);
pub const FOPEN_MAX = @as(c_int, 16);
pub const wren_primitive_h = "";
pub inline fn RETURN_OBJ(obj: anytype) @TypeOf(RETURN_VAL(OBJ_VAL(obj))) {
    return RETURN_VAL(OBJ_VAL(obj));
}
pub inline fn RETURN_BOOL(value: anytype) @TypeOf(RETURN_VAL(BOOL_VAL(value))) {
    return RETURN_VAL(BOOL_VAL(value));
}
pub const RETURN_FALSE = RETURN_VAL(FALSE_VAL);
pub const RETURN_NULL = RETURN_VAL(NULL_VAL);
pub inline fn RETURN_NUM(value: anytype) @TypeOf(RETURN_VAL(NUM_VAL(value))) {
    return RETURN_VAL(NUM_VAL(value));
}
pub const RETURN_TRUE = RETURN_VAL(TRUE_VAL);
pub const _CTYPE_H = @as(c_int, 1);
pub inline fn _ISbit(bit: anytype) @TypeOf(if (bit < @as(c_int, 8)) (@as(c_int, 1) << bit) << @as(c_int, 8) else (@as(c_int, 1) << bit) >> @as(c_int, 8)) {
    return if (bit < @as(c_int, 8)) (@as(c_int, 1) << bit) << @as(c_int, 8) else (@as(c_int, 1) << bit) >> @as(c_int, 8);
}
pub inline fn __isctype(c: anytype, @"type": anytype) @TypeOf(__ctype_b_loc().*[@as(usize, @intCast(@import("std").zig.c_translation.cast(c_int, c)))] & @import("std").zig.c_translation.cast(c_ushort, @"type")) {
    return __ctype_b_loc().*[@as(usize, @intCast(@import("std").zig.c_translation.cast(c_int, c)))] & @import("std").zig.c_translation.cast(c_ushort, @"type");
}
pub inline fn __isascii(c: anytype) @TypeOf((c & ~@as(c_int, 0x7f)) == @as(c_int, 0)) {
    return (c & ~@as(c_int, 0x7f)) == @as(c_int, 0);
}
pub inline fn __toascii(c: anytype) @TypeOf(c & @as(c_int, 0x7f)) {
    return c & @as(c_int, 0x7f);
}
pub inline fn __isctype_l(c: anytype, @"type": anytype, locale: anytype) @TypeOf(locale.*.__ctype_b[@as(usize, @intCast(@import("std").zig.c_translation.cast(c_int, c)))] & @import("std").zig.c_translation.cast(c_ushort, @"type")) {
    return locale.*.__ctype_b[@as(usize, @intCast(@import("std").zig.c_translation.cast(c_int, c)))] & @import("std").zig.c_translation.cast(c_ushort, @"type");
}
pub inline fn __isalnum_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISalnum, l)) {
    return __isctype_l(c, _ISalnum, l);
}
pub inline fn __isalpha_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISalpha, l)) {
    return __isctype_l(c, _ISalpha, l);
}
pub inline fn __iscntrl_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _IScntrl, l)) {
    return __isctype_l(c, _IScntrl, l);
}
pub inline fn __isdigit_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISdigit, l)) {
    return __isctype_l(c, _ISdigit, l);
}
pub inline fn __islower_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISlower, l)) {
    return __isctype_l(c, _ISlower, l);
}
pub inline fn __isgraph_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISgraph, l)) {
    return __isctype_l(c, _ISgraph, l);
}
pub inline fn __isprint_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISprint, l)) {
    return __isctype_l(c, _ISprint, l);
}
pub inline fn __ispunct_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISpunct, l)) {
    return __isctype_l(c, _ISpunct, l);
}
pub inline fn __isspace_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISspace, l)) {
    return __isctype_l(c, _ISspace, l);
}
pub inline fn __isupper_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISupper, l)) {
    return __isctype_l(c, _ISupper, l);
}
pub inline fn __isxdigit_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISxdigit, l)) {
    return __isctype_l(c, _ISxdigit, l);
}
pub inline fn __isblank_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISblank, l)) {
    return __isctype_l(c, _ISblank, l);
}
pub inline fn __isascii_l(c: anytype, l: anytype) @TypeOf(__isascii(c)) {
    return blk_1: {
        _ = @TypeOf(l);
        break :blk_1 __isascii(c);
    };
}
pub inline fn __toascii_l(c: anytype, l: anytype) @TypeOf(__toascii(c)) {
    return blk_1: {
        _ = @TypeOf(l);
        break :blk_1 __toascii(c);
    };
}
pub inline fn isascii_l(c: anytype, l: anytype) @TypeOf(__isascii_l(c, l)) {
    return __isascii_l(c, l);
}
pub inline fn toascii_l(c: anytype, l: anytype) @TypeOf(__toascii_l(c, l)) {
    return __toascii_l(c, l);
}
pub const _ERRNO_H = @as(c_int, 1);
pub const _BITS_ERRNO_H = @as(c_int, 1);
pub const _ASM_GENERIC_ERRNO_H = "";
pub const _ASM_GENERIC_ERRNO_BASE_H = "";
pub const EPERM = @as(c_int, 1);
pub const ENOENT = @as(c_int, 2);
pub const ESRCH = @as(c_int, 3);
pub const EINTR = @as(c_int, 4);
pub const EIO = @as(c_int, 5);
pub const ENXIO = @as(c_int, 6);
pub const E2BIG = @as(c_int, 7);
pub const ENOEXEC = @as(c_int, 8);
pub const EBADF = @as(c_int, 9);
pub const ECHILD = @as(c_int, 10);
pub const EAGAIN = @as(c_int, 11);
pub const ENOMEM = @as(c_int, 12);
pub const EACCES = @as(c_int, 13);
pub const EFAULT = @as(c_int, 14);
pub const ENOTBLK = @as(c_int, 15);
pub const EBUSY = @as(c_int, 16);
pub const EEXIST = @as(c_int, 17);
pub const EXDEV = @as(c_int, 18);
pub const ENODEV = @as(c_int, 19);
pub const ENOTDIR = @as(c_int, 20);
pub const EISDIR = @as(c_int, 21);
pub const EINVAL = @as(c_int, 22);
pub const ENFILE = @as(c_int, 23);
pub const EMFILE = @as(c_int, 24);
pub const ENOTTY = @as(c_int, 25);
pub const ETXTBSY = @as(c_int, 26);
pub const EFBIG = @as(c_int, 27);
pub const ENOSPC = @as(c_int, 28);
pub const ESPIPE = @as(c_int, 29);
pub const EROFS = @as(c_int, 30);
pub const EMLINK = @as(c_int, 31);
pub const EPIPE = @as(c_int, 32);
pub const EDOM = @as(c_int, 33);
pub const ERANGE = @as(c_int, 34);
pub const EDEADLK = @as(c_int, 35);
pub const ENAMETOOLONG = @as(c_int, 36);
pub const ENOLCK = @as(c_int, 37);
pub const ENOSYS = @as(c_int, 38);
pub const ENOTEMPTY = @as(c_int, 39);
pub const ELOOP = @as(c_int, 40);
pub const EWOULDBLOCK = EAGAIN;
pub const ENOMSG = @as(c_int, 42);
pub const EIDRM = @as(c_int, 43);
pub const ECHRNG = @as(c_int, 44);
pub const EL2NSYNC = @as(c_int, 45);
pub const EL3HLT = @as(c_int, 46);
pub const EL3RST = @as(c_int, 47);
pub const ELNRNG = @as(c_int, 48);
pub const EUNATCH = @as(c_int, 49);
pub const ENOCSI = @as(c_int, 50);
pub const EL2HLT = @as(c_int, 51);
pub const EBADE = @as(c_int, 52);
pub const EBADR = @as(c_int, 53);
pub const EXFULL = @as(c_int, 54);
pub const ENOANO = @as(c_int, 55);
pub const EBADRQC = @as(c_int, 56);
pub const EBADSLT = @as(c_int, 57);
pub const EDEADLOCK = EDEADLK;
pub const EBFONT = @as(c_int, 59);
pub const ENOSTR = @as(c_int, 60);
pub const ENODATA = @as(c_int, 61);
pub const ETIME = @as(c_int, 62);
pub const ENOSR = @as(c_int, 63);
pub const ENONET = @as(c_int, 64);
pub const ENOPKG = @as(c_int, 65);
pub const EREMOTE = @as(c_int, 66);
pub const ENOLINK = @as(c_int, 67);
pub const EADV = @as(c_int, 68);
pub const ESRMNT = @as(c_int, 69);
pub const ECOMM = @as(c_int, 70);
pub const EPROTO = @as(c_int, 71);
pub const EMULTIHOP = @as(c_int, 72);
pub const EDOTDOT = @as(c_int, 73);
pub const EBADMSG = @as(c_int, 74);
pub const EOVERFLOW = @as(c_int, 75);
pub const ENOTUNIQ = @as(c_int, 76);
pub const EBADFD = @as(c_int, 77);
pub const EREMCHG = @as(c_int, 78);
pub const ELIBACC = @as(c_int, 79);
pub const ELIBBAD = @as(c_int, 80);
pub const ELIBSCN = @as(c_int, 81);
pub const ELIBMAX = @as(c_int, 82);
pub const ELIBEXEC = @as(c_int, 83);
pub const EILSEQ = @as(c_int, 84);
pub const ERESTART = @as(c_int, 85);
pub const ESTRPIPE = @as(c_int, 86);
pub const EUSERS = @as(c_int, 87);
pub const ENOTSOCK = @as(c_int, 88);
pub const EDESTADDRREQ = @as(c_int, 89);
pub const EMSGSIZE = @as(c_int, 90);
pub const EPROTOTYPE = @as(c_int, 91);
pub const ENOPROTOOPT = @as(c_int, 92);
pub const EPROTONOSUPPORT = @as(c_int, 93);
pub const ESOCKTNOSUPPORT = @as(c_int, 94);
pub const EOPNOTSUPP = @as(c_int, 95);
pub const EPFNOSUPPORT = @as(c_int, 96);
pub const EAFNOSUPPORT = @as(c_int, 97);
pub const EADDRINUSE = @as(c_int, 98);
pub const EADDRNOTAVAIL = @as(c_int, 99);
pub const ENETDOWN = @as(c_int, 100);
pub const ENETUNREACH = @as(c_int, 101);
pub const ENETRESET = @as(c_int, 102);
pub const ECONNABORTED = @as(c_int, 103);
pub const ECONNRESET = @as(c_int, 104);
pub const ENOBUFS = @as(c_int, 105);
pub const EISCONN = @as(c_int, 106);
pub const ENOTCONN = @as(c_int, 107);
pub const ESHUTDOWN = @as(c_int, 108);
pub const ETOOMANYREFS = @as(c_int, 109);
pub const ETIMEDOUT = @as(c_int, 110);
pub const ECONNREFUSED = @as(c_int, 111);
pub const EHOSTDOWN = @as(c_int, 112);
pub const EHOSTUNREACH = @as(c_int, 113);
pub const EALREADY = @as(c_int, 114);
pub const EINPROGRESS = @as(c_int, 115);
pub const ESTALE = @as(c_int, 116);
pub const EUCLEAN = @as(c_int, 117);
pub const ENOTNAM = @as(c_int, 118);
pub const ENAVAIL = @as(c_int, 119);
pub const EISNAM = @as(c_int, 120);
pub const EREMOTEIO = @as(c_int, 121);
pub const EDQUOT = @as(c_int, 122);
pub const ENOMEDIUM = @as(c_int, 123);
pub const EMEDIUMTYPE = @as(c_int, 124);
pub const ECANCELED = @as(c_int, 125);
pub const ENOKEY = @as(c_int, 126);
pub const EKEYEXPIRED = @as(c_int, 127);
pub const EKEYREVOKED = @as(c_int, 128);
pub const EKEYREJECTED = @as(c_int, 129);
pub const EOWNERDEAD = @as(c_int, 130);
pub const ENOTRECOVERABLE = @as(c_int, 131);
pub const ERFKILL = @as(c_int, 132);
pub const EHWPOISON = @as(c_int, 133);
pub const ENOTSUP = EOPNOTSUPP;
pub const errno = __errno_location().*;
pub const __CLANG_FLOAT_H = "";
pub const FLT_RADIX = __FLT_RADIX__;
pub const FLT_MANT_DIG = __FLT_MANT_DIG__;
pub const DBL_MANT_DIG = __DBL_MANT_DIG__;
pub const LDBL_MANT_DIG = __LDBL_MANT_DIG__;
pub const DECIMAL_DIG = __DECIMAL_DIG__;
pub const FLT_DIG = __FLT_DIG__;
pub const DBL_DIG = __DBL_DIG__;
pub const LDBL_DIG = __LDBL_DIG__;
pub const FLT_MIN_EXP = __FLT_MIN_EXP__;
pub const DBL_MIN_EXP = __DBL_MIN_EXP__;
pub const LDBL_MIN_EXP = __LDBL_MIN_EXP__;
pub const FLT_MIN_10_EXP = __FLT_MIN_10_EXP__;
pub const DBL_MIN_10_EXP = __DBL_MIN_10_EXP__;
pub const LDBL_MIN_10_EXP = __LDBL_MIN_10_EXP__;
pub const FLT_MAX_EXP = __FLT_MAX_EXP__;
pub const DBL_MAX_EXP = __DBL_MAX_EXP__;
pub const LDBL_MAX_EXP = __LDBL_MAX_EXP__;
pub const FLT_MAX_10_EXP = __FLT_MAX_10_EXP__;
pub const DBL_MAX_10_EXP = __DBL_MAX_10_EXP__;
pub const LDBL_MAX_10_EXP = __LDBL_MAX_10_EXP__;
pub const FLT_MAX = __FLT_MAX__;
pub const DBL_MAX = __DBL_MAX__;
pub const LDBL_MAX = __LDBL_MAX__;
pub const FLT_EPSILON = __FLT_EPSILON__;
pub const DBL_EPSILON = __DBL_EPSILON__;
pub const LDBL_EPSILON = __LDBL_EPSILON__;
pub const FLT_MIN = __FLT_MIN__;
pub const DBL_MIN = __DBL_MIN__;
pub const LDBL_MIN = __LDBL_MIN__;
pub const FLT_TRUE_MIN = __FLT_DENORM_MIN__;
pub const DBL_TRUE_MIN = __DBL_DENORM_MIN__;
pub const LDBL_TRUE_MIN = __LDBL_DENORM_MIN__;
pub const FLT_DECIMAL_DIG = __FLT_DECIMAL_DIG__;
pub const DBL_DECIMAL_DIG = __DBL_DECIMAL_DIG__;
pub const LDBL_DECIMAL_DIG = __LDBL_DECIMAL_DIG__;
pub const FLT_HAS_SUBNORM = __FLT_HAS_DENORM__;
pub const DBL_HAS_SUBNORM = __DBL_HAS_DENORM__;
pub const LDBL_HAS_SUBNORM = __LDBL_HAS_DENORM__;
pub const _TIME_H = @as(c_int, 1);
pub const _BITS_TIME_H = @as(c_int, 1);
pub const CLOCKS_PER_SEC = @import("std").zig.c_translation.cast(__clock_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 1000000, .decimal));
pub const CLOCK_REALTIME = @as(c_int, 0);
pub const CLOCK_MONOTONIC = @as(c_int, 1);
pub const CLOCK_PROCESS_CPUTIME_ID = @as(c_int, 2);
pub const CLOCK_THREAD_CPUTIME_ID = @as(c_int, 3);
pub const CLOCK_MONOTONIC_RAW = @as(c_int, 4);
pub const CLOCK_REALTIME_COARSE = @as(c_int, 5);
pub const CLOCK_MONOTONIC_COARSE = @as(c_int, 6);
pub const CLOCK_BOOTTIME = @as(c_int, 7);
pub const CLOCK_REALTIME_ALARM = @as(c_int, 8);
pub const CLOCK_BOOTTIME_ALARM = @as(c_int, 9);
pub const CLOCK_TAI = @as(c_int, 11);
pub const TIMER_ABSTIME = @as(c_int, 1);
pub const __struct_tm_defined = @as(c_int, 1);
pub const __itimerspec_defined = @as(c_int, 1);
pub const TIME_UTC = @as(c_int, 1);
pub inline fn __isleap(year: anytype) @TypeOf((@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 4)) == @as(c_int, 0)) and ((@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 100)) != @as(c_int, 0)) or (@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 400)) == @as(c_int, 0)))) {
    return (@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 4)) == @as(c_int, 0)) and ((@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 100)) != @as(c_int, 0)) or (@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 400)) == @as(c_int, 0)));
}
pub const wren_core_h = "";
pub const MAX_LOCALS = @as(c_int, 256);
pub const MAX_UPVALUES = @as(c_int, 256);
pub const MAX_CONSTANTS = @as(c_int, 1) << @as(c_int, 16);
pub const MAX_JUMP = @as(c_int, 1) << @as(c_int, 16);
pub const MAX_INTERPOLATION_NESTING = @as(c_int, 8);
pub const ERROR_MESSAGE_SIZE = (@as(c_int, 80) + MAX_VARIABLE_NAME) + @as(c_int, 15);
pub const MIN_CAPACITY = @as(c_int, 16);
pub const GROW_FACTOR = @as(c_int, 2);
pub const MAP_LOAD_PERCENT = @as(c_int, 75);
pub const INITIAL_CALL_FRAMES = @as(c_int, 4);
pub const wren_opt_meta_h = "";
pub const wren_opt_random_h = "";
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const __pthread_internal_list = struct___pthread_internal_list;
pub const __pthread_internal_slist = struct___pthread_internal_slist;
pub const __pthread_mutex_s = struct___pthread_mutex_s;
pub const __pthread_rwlock_arch_t = struct___pthread_rwlock_arch_t;
pub const __pthread_cond_s = struct___pthread_cond_s;
pub const random_data = struct_random_data;
pub const drand48_data = struct_drand48_data;
pub const sObj = struct_sObj;
pub const sObjString = struct_sObjString;
pub const sObjClass = struct_sObjClass;
pub const sObjUpvalue = struct_sObjUpvalue;
pub const sObjFiber = struct_sObjFiber;
pub const sLoop = struct_sLoop;
pub const sCompiler = struct_sCompiler;
pub const __locale_struct = struct___locale_struct;
pub const _G_fpos_t = struct__G_fpos_t;
pub const _G_fpos64_t = struct__G_fpos64_t;
pub const _IO_marker = struct__IO_marker;
pub const _IO_codecvt = struct__IO_codecvt;
pub const _IO_wide_data = struct__IO_wide_data;
pub const _IO_FILE = struct__IO_FILE;
pub const tm = struct_tm;
pub const itimerspec = struct_itimerspec;
pub const sigevent = struct_sigevent;
