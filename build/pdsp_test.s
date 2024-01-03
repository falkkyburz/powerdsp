	.file	"pdsp_test.c"
 # GNU C17 (Rev7, Built by MSYS2 project) version 13.1.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 13.1.0, GMP version 6.2.1, MPFR version 4.2.0-p9, MPC version 1.3.1, isl version isl-0.26-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -mtune=generic -march=nocona -O0
	.text
	.def	fprintf;	.scl	3;	.type	32;	.endef
	.seh_proc	fprintf
fprintf:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __stream, __stream
	movq	%rdx, 24(%rbp)	 # __format, __format
	movq	%r8, 32(%rbp)	 #,
	movq	%r9, 40(%rbp)	 #,
 # C:/msys64/mingw64/include/stdio.h:363:   __builtin_va_list __local_argv; __builtin_va_start( __local_argv, __format );
	leaq	32(%rbp), %rax	 #, tmp85
	movq	%rax, -16(%rbp)	 # tmp85, MEM[(char * *)&__local_argv]
 # C:/msys64/mingw64/include/stdio.h:364:   __retval = __mingw_vfprintf( __stream, __format, __local_argv );
	movq	-16(%rbp), %rcx	 # __local_argv, __local_argv.63_1
	movq	24(%rbp), %rdx	 # __format, tmp86
	movq	16(%rbp), %rax	 # __stream, tmp87
	movq	%rcx, %r8	 # __local_argv.63_1,
	movq	%rax, %rcx	 # tmp87,
	call	__mingw_vfprintf	 #
	movl	%eax, -4(%rbp)	 # tmp88, __retval
 # C:/msys64/mingw64/include/stdio.h:366:   return __retval;
	movl	-4(%rbp), %eax	 # __retval, _9
 # C:/msys64/mingw64/include/stdio.h:367: }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.def	printf;	.scl	3;	.type	32;	.endef
	.seh_proc	printf
printf:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$56, %rsp	 #,
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # __format, __format
	movq	%rdx, 40(%rbp)	 #,
	movq	%r8, 48(%rbp)	 #,
	movq	%r9, 56(%rbp)	 #,
 # C:/msys64/mingw64/include/stdio.h:374:   __builtin_va_list __local_argv; __builtin_va_start( __local_argv, __format );
	leaq	40(%rbp), %rax	 #, tmp86
	movq	%rax, -16(%rbp)	 # tmp86, MEM[(char * *)&__local_argv]
 # C:/msys64/mingw64/include/stdio.h:375:   __retval = __mingw_vfprintf( stdout, __format, __local_argv );
	movq	-16(%rbp), %rbx	 # __local_argv, __local_argv.0_1
	movl	$1, %ecx	 #,
	movq	__imp___acrt_iob_func(%rip), %rax	 #, tmp87
	call	*%rax	 # tmp87
	movq	%rax, %rcx	 #, _2
 # C:/msys64/mingw64/include/stdio.h:375:   __retval = __mingw_vfprintf( stdout, __format, __local_argv );
	movq	32(%rbp), %rax	 # __format, tmp88
	movq	%rbx, %r8	 # __local_argv.0_1,
	movq	%rax, %rdx	 # tmp88,
	call	__mingw_vfprintf	 #
	movl	%eax, -4(%rbp)	 # tmp89, __retval
 # C:/msys64/mingw64/include/stdio.h:377:   return __retval;
	movl	-4(%rbp), %eax	 # __retval, _10
 # C:/msys64/mingw64/include/stdio.h:378: }
	addq	$56, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "-- void test_assert_true(void) --\12\0"
	.text
	.globl	test_assert_true
	.def	test_assert_true;	.scl	2;	.type	32;	.endef
	.seh_proc	test_assert_true
test_assert_true:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
 # ./test/pdsp_test.c:50:     printf("-- void test_assert_true(void) --\n");
	leaq	.LC0(%rip), %rax	 #, tmp82
	movq	%rax, %rcx	 # tmp82,
	call	printf	 #
 # ./test/pdsp_test.c:53: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "-- void test_stopwatch(void) --\12\0"
.LC2:
	.ascii "./test/pdsp_test.c\0"
.LC3:
	.ascii "Assert failed: %s:%i\12\0"
	.text
	.globl	test_stopwatch
	.def	test_stopwatch;	.scl	2;	.type	32;	.endef
	.seh_proc	test_stopwatch
test_stopwatch:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$80, %rsp	 #,
	.seh_stackalloc	80
	.seh_endprologue
 # ./test/pdsp_test.c:57:     printf("-- void test_stopwatch(void) --\n");
	leaq	.LC1(%rip), %rax	 #, tmp94
	movq	%rax, %rcx	 # tmp94,
	call	printf	 #
 # ./test/pdsp_test.c:58:     pdsp_stopwatch_var_t watch_var = {0};
	movl	$0, -8(%rbp)	 #, watch_var.u32_time_mem
 # ./test/pdsp_test.c:59:     pdsp_stopwatch_t watch = {.ps_var = &watch_var, .u32_hw_max = 1000};
	leaq	-8(%rbp), %rax	 #, tmp95
	movq	%rax, -32(%rbp)	 # tmp95, watch.ps_var
	movl	$1000, -24(%rbp)	 #, watch.u32_hw_max
 # ./test/pdsp_test.c:61:     pdsp_stopwatch_start(&watch, 0U);
	leaq	-32(%rbp), %rax	 #, tmp96
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp96,
	call	pdsp_stopwatch_start	 #
 # ./test/pdsp_test.c:62:     out = pdsp_stopwatch_stop(&watch, 555U);
	leaq	-32(%rbp), %rax	 #, tmp97
	movl	$555, %edx	 #,
	movq	%rax, %rcx	 # tmp97,
	call	pdsp_stopwatch_stop	 #
	movl	%eax, -4(%rbp)	 # tmp98, out
 # ./test/pdsp_test.c:63:     PDSP_ASSERT(out == 555);
	cmpl	$555, -4(%rbp)	 #, out
	je	.L7	 #,
 # ./test/pdsp_test.c:63:     PDSP_ASSERT(out == 555);
	movl	$63, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp99
	movq	%rax, %rdx	 # tmp99,
	leaq	.LC3(%rip), %rax	 #, tmp100
	movq	%rax, %rcx	 # tmp100,
	call	printf	 #
.L7:
 # ./test/pdsp_test.c:64:     pdsp_stopwatch_start(&watch, 889);
	leaq	-32(%rbp), %rax	 #, tmp101
	movl	$889, %edx	 #,
	movq	%rax, %rcx	 # tmp101,
	call	pdsp_stopwatch_start	 #
 # ./test/pdsp_test.c:65:     out = pdsp_stopwatch_stop(&watch, 444U);
	leaq	-32(%rbp), %rax	 #, tmp102
	movl	$444, %edx	 #,
	movq	%rax, %rcx	 # tmp102,
	call	pdsp_stopwatch_stop	 #
	movl	%eax, -4(%rbp)	 # tmp103, out
 # ./test/pdsp_test.c:66:     PDSP_ASSERT(out == 555);
	cmpl	$555, -4(%rbp)	 #, out
	je	.L8	 #,
 # ./test/pdsp_test.c:66:     PDSP_ASSERT(out == 555);
	movl	$66, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp104
	movq	%rax, %rdx	 # tmp104,
	leaq	.LC3(%rip), %rax	 #, tmp105
	movq	%rax, %rcx	 # tmp105,
	call	printf	 #
.L8:
 # ./test/pdsp_test.c:68:     pdsp_macro_stopwatch_t mwatch = {.u32_time_mem = 0, .u32_hw_max = 1000};
	movl	$0, -40(%rbp)	 #, mwatch.u32_time_mem
	movl	$1000, -36(%rbp)	 #, mwatch.u32_hw_max
 # ./test/pdsp_test.c:69:     pdsp_macro_stopwatch_start(mwatch, 0U);
	movl	$0, -40(%rbp)	 #, mwatch.u32_time_mem
 # ./test/pdsp_test.c:70:     out = pdsp_macro_stopwatch_stop(mwatch, 555U);
	movl	-40(%rbp), %eax	 # mwatch.u32_time_mem, _1
	cmpl	$554, %eax	 #, _1
	ja	.L9	 #,
 # ./test/pdsp_test.c:70:     out = pdsp_macro_stopwatch_stop(mwatch, 555U);
	movl	-40(%rbp), %edx	 # mwatch.u32_time_mem, _2
	movl	$555, %eax	 #, tmp106
	subl	%edx, %eax	 # _2, iftmp.1_11
	jmp	.L10	 #
.L9:
 # ./test/pdsp_test.c:70:     out = pdsp_macro_stopwatch_stop(mwatch, 555U);
	movl	-36(%rbp), %edx	 # mwatch.u32_hw_max, _3
	movl	-40(%rbp), %eax	 # mwatch.u32_time_mem, _4
	subl	%eax, %edx	 # _4, _5
	leal	555(%rdx), %eax	 #, iftmp.1_11
.L10:
 # ./test/pdsp_test.c:70:     out = pdsp_macro_stopwatch_stop(mwatch, 555U);
	movl	%eax, -4(%rbp)	 # iftmp.1_11, out
 # ./test/pdsp_test.c:71:     PDSP_ASSERT(out == 555);
	cmpl	$555, -4(%rbp)	 #, out
	je	.L11	 #,
 # ./test/pdsp_test.c:71:     PDSP_ASSERT(out == 555);
	movl	$71, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp107
	movq	%rax, %rdx	 # tmp107,
	leaq	.LC3(%rip), %rax	 #, tmp108
	movq	%rax, %rcx	 # tmp108,
	call	printf	 #
.L11:
 # ./test/pdsp_test.c:72:     pdsp_macro_stopwatch_start(mwatch, 889);
	movl	$889, -40(%rbp)	 #, mwatch.u32_time_mem
 # ./test/pdsp_test.c:73:     out = pdsp_macro_stopwatch_stop(mwatch, 444U);
	movl	-40(%rbp), %eax	 # mwatch.u32_time_mem, _6
	cmpl	$443, %eax	 #, _6
	ja	.L12	 #,
 # ./test/pdsp_test.c:73:     out = pdsp_macro_stopwatch_stop(mwatch, 444U);
	movl	-40(%rbp), %edx	 # mwatch.u32_time_mem, _7
	movl	$444, %eax	 #, tmp109
	subl	%edx, %eax	 # _7, iftmp.2_12
	jmp	.L13	 #
.L12:
 # ./test/pdsp_test.c:73:     out = pdsp_macro_stopwatch_stop(mwatch, 444U);
	movl	-36(%rbp), %edx	 # mwatch.u32_hw_max, _8
	movl	-40(%rbp), %eax	 # mwatch.u32_time_mem, _9
	subl	%eax, %edx	 # _9, _10
	leal	444(%rdx), %eax	 #, iftmp.2_12
.L13:
 # ./test/pdsp_test.c:73:     out = pdsp_macro_stopwatch_stop(mwatch, 444U);
	movl	%eax, -4(%rbp)	 # iftmp.2_12, out
 # ./test/pdsp_test.c:74:     PDSP_ASSERT(out == 555);
	cmpl	$555, -4(%rbp)	 #, out
	je	.L15	 #,
 # ./test/pdsp_test.c:74:     PDSP_ASSERT(out == 555);
	movl	$74, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp110
	movq	%rax, %rdx	 # tmp110,
	leaq	.LC3(%rip), %rax	 #, tmp111
	movq	%rax, %rcx	 # tmp111,
	call	printf	 #
.L15:
 # ./test/pdsp_test.c:75: }
	nop	
	addq	$80, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	func_nop
	.def	func_nop;	.scl	2;	.type	32;	.endef
	.seh_proc	func_nop
func_nop:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
 # ./test/pdsp_test.c:84: pdsp_i16_t func_nop(void) { return 0; }
	movl	$0, %eax	 #, _1
 # ./test/pdsp_test.c:84: pdsp_i16_t func_nop(void) { return 0; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	func_start_converter
	.def	func_start_converter;	.scl	2;	.type	32;	.endef
	.seh_proc	func_start_converter
func_start_converter:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
 # ./test/pdsp_test.c:85: pdsp_i16_t func_start_converter(void) { return 1; }
	movl	$1, %eax	 #, _1
 # ./test/pdsp_test.c:85: pdsp_i16_t func_start_converter(void) { return 1; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	func_stop_converter
	.def	func_stop_converter;	.scl	2;	.type	32;	.endef
	.seh_proc	func_stop_converter
func_stop_converter:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
 # ./test/pdsp_test.c:86: pdsp_i16_t func_stop_converter(void) { return 2; }
	movl	$2, %eax	 #, _1
 # ./test/pdsp_test.c:86: pdsp_i16_t func_stop_converter(void) { return 2; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "-- void test_call_i16_func(void) --\12\0"
	.text
	.globl	test_call_i16_func
	.def	test_call_i16_func;	.scl	2;	.type	32;	.endef
	.seh_proc	test_call_i16_func
test_call_i16_func:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$80, %rsp	 #,
	.seh_stackalloc	80
	.seh_endprologue
 # ./test/pdsp_test.c:90:     printf("-- void test_call_i16_func(void) --\n");
	leaq	.LC4(%rip), %rax	 #, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	printf	 #
 # ./test/pdsp_test.c:91:     const pdsp_pi16_func_t flist[FUNC_SIZE] = {func_nop, func_start_converter,
	leaq	func_nop(%rip), %rax	 #, tmp85
	movq	%rax, -32(%rbp)	 # tmp85, flist[0]
	leaq	func_start_converter(%rip), %rax	 #, tmp86
	movq	%rax, -24(%rbp)	 # tmp86, flist[1]
	leaq	func_stop_converter(%rip), %rax	 #, tmp87
	movq	%rax, -16(%rbp)	 # tmp87, flist[2]
 # ./test/pdsp_test.c:94:     pdsp_call_i16_func(flist, FUNC_SIZE, FUNC_START, &ret);
	leaq	-34(%rbp), %rdx	 #, tmp88
	leaq	-32(%rbp), %rax	 #, tmp89
	movq	%rdx, %r9	 # tmp88,
	movl	$1, %r8d	 #,
	movl	$3, %edx	 #,
	movq	%rax, %rcx	 # tmp89,
	call	pdsp_call_i16_func	 #
 # ./test/pdsp_test.c:95:     PDSP_ASSERT(ret == 1);
	movzwl	-34(%rbp), %eax	 # ret, ret.3_1
	cmpw	$1, %ax	 #, ret.3_1
	je	.L23	 #,
 # ./test/pdsp_test.c:95:     PDSP_ASSERT(ret == 1);
	movl	$95, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp90
	movq	%rax, %rdx	 # tmp90,
	leaq	.LC3(%rip), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	printf	 #
.L23:
 # ./test/pdsp_test.c:96:     pdsp_call_i16_func(flist, FUNC_SIZE, FUNC_STOP, &ret);
	leaq	-34(%rbp), %rdx	 #, tmp92
	leaq	-32(%rbp), %rax	 #, tmp93
	movq	%rdx, %r9	 # tmp92,
	movl	$2, %r8d	 #,
	movl	$3, %edx	 #,
	movq	%rax, %rcx	 # tmp93,
	call	pdsp_call_i16_func	 #
 # ./test/pdsp_test.c:97:     PDSP_ASSERT(ret == 2);
	movzwl	-34(%rbp), %eax	 # ret, ret.4_2
	cmpw	$2, %ax	 #, ret.4_2
	je	.L25	 #,
 # ./test/pdsp_test.c:97:     PDSP_ASSERT(ret == 2);
	movl	$97, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp94
	movq	%rax, %rdx	 # tmp94,
	leaq	.LC3(%rip), %rax	 #, tmp95
	movq	%rax, %rcx	 # tmp95,
	call	printf	 #
.L25:
 # ./test/pdsp_test.c:98: }
	nop	
	addq	$80, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "-- void test_i16_to_string(void) --\12\0"
.LC6:
	.ascii ":  6666, -1111:\0"
	.text
	.globl	test_i16_to_string
	.def	test_i16_to_string;	.scl	2;	.type	32;	.endef
	.seh_proc	test_i16_to_string
test_i16_to_string:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$64, %rsp	 #,
	.seh_stackalloc	64
	.seh_endprologue
 # ./test/pdsp_test.c:102:     printf("-- void test_i16_to_string(void) --\n");
	leaq	.LC5(%rip), %rax	 #, tmp86
	movq	%rax, %rcx	 # tmp86,
	call	printf	 #
 # ./test/pdsp_test.c:103:     pdsp_char_t out[16] = {0};
	movq	$0, -32(%rbp)	 #, out
	movq	$0, -24(%rbp)	 #, out
 # ./test/pdsp_test.c:104:     pdsp_char_t *pos = &out[0];
	leaq	-32(%rbp), %rax	 #, tmp87
	movq	%rax, -8(%rbp)	 # tmp87, pos
 # ./test/pdsp_test.c:105:     *pos++ = ':';
	movq	-8(%rbp), %rax	 # pos, pos.5_1
	leaq	1(%rax), %rdx	 #, tmp88
	movq	%rdx, -8(%rbp)	 # tmp88, pos
 # ./test/pdsp_test.c:105:     *pos++ = ':';
	movb	$58, (%rax)	 #, *pos.5_1
 # ./test/pdsp_test.c:106:     pos = pdsp_i16_to_string(6666, pos);
	movq	-8(%rbp), %rax	 # pos, tmp89
	movq	%rax, %rdx	 # tmp89,
	movl	$6666, %ecx	 #,
	call	pdsp_i16_to_string	 #
	movq	%rax, -8(%rbp)	 # tmp90, pos
 # ./test/pdsp_test.c:107:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.6_2
	leaq	1(%rax), %rdx	 #, tmp91
	movq	%rdx, -8(%rbp)	 # tmp91, pos
 # ./test/pdsp_test.c:107:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.6_2
 # ./test/pdsp_test.c:108:     pos = pdsp_i16_to_string(-1111, pos);
	movq	-8(%rbp), %rax	 # pos, tmp92
	movq	%rax, %rdx	 # tmp92,
	movl	$-1111, %ecx	 #,
	call	pdsp_i16_to_string	 #
	movq	%rax, -8(%rbp)	 # tmp93, pos
 # ./test/pdsp_test.c:109:     *pos++ = ':';
	movq	-8(%rbp), %rax	 # pos, pos.7_3
	leaq	1(%rax), %rdx	 #, tmp94
	movq	%rdx, -8(%rbp)	 # tmp94, pos
 # ./test/pdsp_test.c:109:     *pos++ = ':';
	movb	$58, (%rax)	 #, *pos.7_3
 # ./test/pdsp_test.c:110:     PDSP_ASSERT(strcmp(out, ":  6666, -1111:") == 0);
	leaq	-32(%rbp), %rax	 #, tmp95
	leaq	.LC6(%rip), %rdx	 #, tmp96
	movq	%rax, %rcx	 # tmp95,
	call	strcmp	 #
 # ./test/pdsp_test.c:110:     PDSP_ASSERT(strcmp(out, ":  6666, -1111:") == 0);
	testl	%eax, %eax	 # _4
	je	.L28	 #,
	movl	$110, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp97
	movq	%rax, %rdx	 # tmp97,
	leaq	.LC3(%rip), %rax	 #, tmp98
	movq	%rax, %rcx	 # tmp98,
	call	printf	 #
.L28:
 # ./test/pdsp_test.c:111: }
	nop	
	addq	$64, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC7:
	.ascii "-- void test_u16_to_base16(void) --\12\0"
.LC8:
	.ascii ":1337,B00B,B,BB,B0B:\0"
.LC9:
	.ascii ":1337,B00B,000B,00BB,0B0B:\0"
	.text
	.globl	test_u16_to_base16
	.def	test_u16_to_base16;	.scl	2;	.type	32;	.endef
	.seh_proc	test_u16_to_base16
test_u16_to_base16:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$112, %rsp	 #,
	.seh_stackalloc	112
	.seh_endprologue
 # ./test/pdsp_test.c:115:     printf("-- void test_u16_to_base16(void) --\n");
	leaq	.LC7(%rip), %rax	 #, tmp98
	movq	%rax, %rcx	 # tmp98,
	call	printf	 #
 # ./test/pdsp_test.c:116:     pdsp_char_t out[64] = {0};
	movq	$0, -80(%rbp)	 #, out
	movq	$0, -72(%rbp)	 #, out
	movq	$0, -64(%rbp)	 #, out
	movq	$0, -56(%rbp)	 #, out
	movq	$0, -48(%rbp)	 #, out
	movq	$0, -40(%rbp)	 #, out
	movq	$0, -32(%rbp)	 #, out
	movq	$0, -24(%rbp)	 #, out
 # ./test/pdsp_test.c:117:     pdsp_char_t *pos = &out[0];
	leaq	-80(%rbp), %rax	 #, tmp99
	movq	%rax, -8(%rbp)	 # tmp99, pos
 # ./test/pdsp_test.c:118:     *pos++ = ':';
	movq	-8(%rbp), %rax	 # pos, pos.8_1
	leaq	1(%rax), %rdx	 #, tmp100
	movq	%rdx, -8(%rbp)	 # tmp100, pos
 # ./test/pdsp_test.c:118:     *pos++ = ':';
	movb	$58, (%rax)	 #, *pos.8_1
 # ./test/pdsp_test.c:119:     pos = pdsp_u16_to_base16_alt(0x1337, pos, PDSP_FALSE);
	movq	-8(%rbp), %rax	 # pos, tmp101
	movl	$0, %r8d	 #,
	movq	%rax, %rdx	 # tmp101,
	movl	$4919, %ecx	 #,
	call	pdsp_u16_to_base16_alt	 #
	movq	%rax, -8(%rbp)	 # tmp102, pos
 # ./test/pdsp_test.c:120:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.9_2
	leaq	1(%rax), %rdx	 #, tmp103
	movq	%rdx, -8(%rbp)	 # tmp103, pos
 # ./test/pdsp_test.c:120:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.9_2
 # ./test/pdsp_test.c:121:     pos = pdsp_u16_to_base16_alt(0xB00B, pos, PDSP_FALSE);
	movq	-8(%rbp), %rax	 # pos, tmp104
	movl	$0, %r8d	 #,
	movq	%rax, %rdx	 # tmp104,
	movl	$45067, %ecx	 #,
	call	pdsp_u16_to_base16_alt	 #
	movq	%rax, -8(%rbp)	 # tmp105, pos
 # ./test/pdsp_test.c:122:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.10_3
	leaq	1(%rax), %rdx	 #, tmp106
	movq	%rdx, -8(%rbp)	 # tmp106, pos
 # ./test/pdsp_test.c:122:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.10_3
 # ./test/pdsp_test.c:123:     pos = pdsp_u16_to_base16_alt(0xB, pos, PDSP_FALSE);
	movq	-8(%rbp), %rax	 # pos, tmp107
	movl	$0, %r8d	 #,
	movq	%rax, %rdx	 # tmp107,
	movl	$11, %ecx	 #,
	call	pdsp_u16_to_base16_alt	 #
	movq	%rax, -8(%rbp)	 # tmp108, pos
 # ./test/pdsp_test.c:124:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.11_4
	leaq	1(%rax), %rdx	 #, tmp109
	movq	%rdx, -8(%rbp)	 # tmp109, pos
 # ./test/pdsp_test.c:124:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.11_4
 # ./test/pdsp_test.c:125:     pos = pdsp_u16_to_base16_alt(0xBB, pos, PDSP_FALSE);
	movq	-8(%rbp), %rax	 # pos, tmp110
	movl	$0, %r8d	 #,
	movq	%rax, %rdx	 # tmp110,
	movl	$187, %ecx	 #,
	call	pdsp_u16_to_base16_alt	 #
	movq	%rax, -8(%rbp)	 # tmp111, pos
 # ./test/pdsp_test.c:126:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.12_5
	leaq	1(%rax), %rdx	 #, tmp112
	movq	%rdx, -8(%rbp)	 # tmp112, pos
 # ./test/pdsp_test.c:126:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.12_5
 # ./test/pdsp_test.c:127:     pos = pdsp_u16_to_base16_alt(0xB0B, pos, PDSP_FALSE);
	movq	-8(%rbp), %rax	 # pos, tmp113
	movl	$0, %r8d	 #,
	movq	%rax, %rdx	 # tmp113,
	movl	$2827, %ecx	 #,
	call	pdsp_u16_to_base16_alt	 #
	movq	%rax, -8(%rbp)	 # tmp114, pos
 # ./test/pdsp_test.c:128:     *pos++ = ':';
	movq	-8(%rbp), %rax	 # pos, pos.13_6
	leaq	1(%rax), %rdx	 #, tmp115
	movq	%rdx, -8(%rbp)	 # tmp115, pos
 # ./test/pdsp_test.c:128:     *pos++ = ':';
	movb	$58, (%rax)	 #, *pos.13_6
 # ./test/pdsp_test.c:129:     *pos++ = 0;
	movq	-8(%rbp), %rax	 # pos, pos.14_7
	leaq	1(%rax), %rdx	 #, tmp116
	movq	%rdx, -8(%rbp)	 # tmp116, pos
 # ./test/pdsp_test.c:129:     *pos++ = 0;
	movb	$0, (%rax)	 #, *pos.14_7
 # ./test/pdsp_test.c:130:     PDSP_ASSERT(strcmp(out, ":1337,B00B,B,BB,B0B:") == 0);
	leaq	-80(%rbp), %rax	 #, tmp117
	leaq	.LC8(%rip), %rdx	 #, tmp118
	movq	%rax, %rcx	 # tmp117,
	call	strcmp	 #
 # ./test/pdsp_test.c:130:     PDSP_ASSERT(strcmp(out, ":1337,B00B,B,BB,B0B:") == 0);
	testl	%eax, %eax	 # _8
	je	.L30	 #,
	movl	$130, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp119
	movq	%rax, %rdx	 # tmp119,
	leaq	.LC3(%rip), %rax	 #, tmp120
	movq	%rax, %rcx	 # tmp120,
	call	printf	 #
.L30:
 # ./test/pdsp_test.c:131:     pos = &out[0];
	leaq	-80(%rbp), %rax	 #, tmp121
	movq	%rax, -8(%rbp)	 # tmp121, pos
 # ./test/pdsp_test.c:132:     *pos++ = ':';
	movq	-8(%rbp), %rax	 # pos, pos.15_9
	leaq	1(%rax), %rdx	 #, tmp122
	movq	%rdx, -8(%rbp)	 # tmp122, pos
 # ./test/pdsp_test.c:132:     *pos++ = ':';
	movb	$58, (%rax)	 #, *pos.15_9
 # ./test/pdsp_test.c:133:     pos = pdsp_u16_to_base16(pos, 0x1337);
	movq	-8(%rbp), %rax	 # pos, tmp123
	movl	$4919, %edx	 #,
	movq	%rax, %rcx	 # tmp123,
	call	pdsp_u16_to_base16	 #
	movq	%rax, -8(%rbp)	 # tmp124, pos
 # ./test/pdsp_test.c:134:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.16_10
	leaq	1(%rax), %rdx	 #, tmp125
	movq	%rdx, -8(%rbp)	 # tmp125, pos
 # ./test/pdsp_test.c:134:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.16_10
 # ./test/pdsp_test.c:135:     pos = pdsp_u16_to_base16(pos, 0xB00B);
	movq	-8(%rbp), %rax	 # pos, tmp126
	movl	$45067, %edx	 #,
	movq	%rax, %rcx	 # tmp126,
	call	pdsp_u16_to_base16	 #
	movq	%rax, -8(%rbp)	 # tmp127, pos
 # ./test/pdsp_test.c:136:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.17_11
	leaq	1(%rax), %rdx	 #, tmp128
	movq	%rdx, -8(%rbp)	 # tmp128, pos
 # ./test/pdsp_test.c:136:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.17_11
 # ./test/pdsp_test.c:137:     pos = pdsp_u16_to_base16(pos, 0xB);
	movq	-8(%rbp), %rax	 # pos, tmp129
	movl	$11, %edx	 #,
	movq	%rax, %rcx	 # tmp129,
	call	pdsp_u16_to_base16	 #
	movq	%rax, -8(%rbp)	 # tmp130, pos
 # ./test/pdsp_test.c:138:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.18_12
	leaq	1(%rax), %rdx	 #, tmp131
	movq	%rdx, -8(%rbp)	 # tmp131, pos
 # ./test/pdsp_test.c:138:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.18_12
 # ./test/pdsp_test.c:139:     pos = pdsp_u16_to_base16(pos, 0xBB);
	movq	-8(%rbp), %rax	 # pos, tmp132
	movl	$187, %edx	 #,
	movq	%rax, %rcx	 # tmp132,
	call	pdsp_u16_to_base16	 #
	movq	%rax, -8(%rbp)	 # tmp133, pos
 # ./test/pdsp_test.c:140:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.19_13
	leaq	1(%rax), %rdx	 #, tmp134
	movq	%rdx, -8(%rbp)	 # tmp134, pos
 # ./test/pdsp_test.c:140:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.19_13
 # ./test/pdsp_test.c:141:     pos = pdsp_u16_to_base16(pos, 0xB0B);
	movq	-8(%rbp), %rax	 # pos, tmp135
	movl	$2827, %edx	 #,
	movq	%rax, %rcx	 # tmp135,
	call	pdsp_u16_to_base16	 #
	movq	%rax, -8(%rbp)	 # tmp136, pos
 # ./test/pdsp_test.c:142:     *pos++ = ':';
	movq	-8(%rbp), %rax	 # pos, pos.20_14
	leaq	1(%rax), %rdx	 #, tmp137
	movq	%rdx, -8(%rbp)	 # tmp137, pos
 # ./test/pdsp_test.c:142:     *pos++ = ':';
	movb	$58, (%rax)	 #, *pos.20_14
 # ./test/pdsp_test.c:143:     *pos++ = 0;
	movq	-8(%rbp), %rax	 # pos, pos.21_15
	leaq	1(%rax), %rdx	 #, tmp138
	movq	%rdx, -8(%rbp)	 # tmp138, pos
 # ./test/pdsp_test.c:143:     *pos++ = 0;
	movb	$0, (%rax)	 #, *pos.21_15
 # ./test/pdsp_test.c:144:     PDSP_ASSERT(strcmp(out, ":1337,B00B,000B,00BB,0B0B:") == 0);
	leaq	-80(%rbp), %rax	 #, tmp139
	leaq	.LC9(%rip), %rdx	 #, tmp140
	movq	%rax, %rcx	 # tmp139,
	call	strcmp	 #
 # ./test/pdsp_test.c:144:     PDSP_ASSERT(strcmp(out, ":1337,B00B,000B,00BB,0B0B:") == 0);
	testl	%eax, %eax	 # _16
	je	.L32	 #,
	movl	$144, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp141
	movq	%rax, %rdx	 # tmp141,
	leaq	.LC3(%rip), %rax	 #, tmp142
	movq	%rax, %rcx	 # tmp142,
	call	printf	 #
.L32:
 # ./test/pdsp_test.c:145: }
	nop	
	addq	$112, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC10:
	.ascii "-- void test_u32_to_base16(void) --\12\0"
	.align 8
.LC11:
	.ascii ":13371337,0000B00B,0000000B,000000BB,00000B0B:\0"
	.text
	.globl	test_u32_to_base16
	.def	test_u32_to_base16;	.scl	2;	.type	32;	.endef
	.seh_proc	test_u32_to_base16
test_u32_to_base16:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$112, %rsp	 #,
	.seh_stackalloc	112
	.seh_endprologue
 # ./test/pdsp_test.c:149:     printf("-- void test_u32_to_base16(void) --\n");
	leaq	.LC10(%rip), %rax	 #, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	printf	 #
 # ./test/pdsp_test.c:150:     pdsp_char_t out[64] = {0};
	movq	$0, -80(%rbp)	 #, out
	movq	$0, -72(%rbp)	 #, out
	movq	$0, -64(%rbp)	 #, out
	movq	$0, -56(%rbp)	 #, out
	movq	$0, -48(%rbp)	 #, out
	movq	$0, -40(%rbp)	 #, out
	movq	$0, -32(%rbp)	 #, out
	movq	$0, -24(%rbp)	 #, out
 # ./test/pdsp_test.c:151:     pdsp_char_t *pos = &out[0];
	leaq	-80(%rbp), %rax	 #, tmp91
	movq	%rax, -8(%rbp)	 # tmp91, pos
 # ./test/pdsp_test.c:152:     *pos++ = ':';
	movq	-8(%rbp), %rax	 # pos, pos.22_1
	leaq	1(%rax), %rdx	 #, tmp92
	movq	%rdx, -8(%rbp)	 # tmp92, pos
 # ./test/pdsp_test.c:152:     *pos++ = ':';
	movb	$58, (%rax)	 #, *pos.22_1
 # ./test/pdsp_test.c:153:     pos = pdsp_u32_to_base16(pos, 0x13371337);
	movq	-8(%rbp), %rax	 # pos, tmp93
	movl	$322376503, %edx	 #,
	movq	%rax, %rcx	 # tmp93,
	call	pdsp_u32_to_base16	 #
	movq	%rax, -8(%rbp)	 # tmp94, pos
 # ./test/pdsp_test.c:154:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.23_2
	leaq	1(%rax), %rdx	 #, tmp95
	movq	%rdx, -8(%rbp)	 # tmp95, pos
 # ./test/pdsp_test.c:154:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.23_2
 # ./test/pdsp_test.c:155:     pos = pdsp_u32_to_base16(pos, 0xB00B);
	movq	-8(%rbp), %rax	 # pos, tmp96
	movl	$45067, %edx	 #,
	movq	%rax, %rcx	 # tmp96,
	call	pdsp_u32_to_base16	 #
	movq	%rax, -8(%rbp)	 # tmp97, pos
 # ./test/pdsp_test.c:156:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.24_3
	leaq	1(%rax), %rdx	 #, tmp98
	movq	%rdx, -8(%rbp)	 # tmp98, pos
 # ./test/pdsp_test.c:156:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.24_3
 # ./test/pdsp_test.c:157:     pos = pdsp_u32_to_base16(pos, 0xB);
	movq	-8(%rbp), %rax	 # pos, tmp99
	movl	$11, %edx	 #,
	movq	%rax, %rcx	 # tmp99,
	call	pdsp_u32_to_base16	 #
	movq	%rax, -8(%rbp)	 # tmp100, pos
 # ./test/pdsp_test.c:158:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.25_4
	leaq	1(%rax), %rdx	 #, tmp101
	movq	%rdx, -8(%rbp)	 # tmp101, pos
 # ./test/pdsp_test.c:158:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.25_4
 # ./test/pdsp_test.c:159:     pos = pdsp_u32_to_base16(pos, 0xBB);
	movq	-8(%rbp), %rax	 # pos, tmp102
	movl	$187, %edx	 #,
	movq	%rax, %rcx	 # tmp102,
	call	pdsp_u32_to_base16	 #
	movq	%rax, -8(%rbp)	 # tmp103, pos
 # ./test/pdsp_test.c:160:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.26_5
	leaq	1(%rax), %rdx	 #, tmp104
	movq	%rdx, -8(%rbp)	 # tmp104, pos
 # ./test/pdsp_test.c:160:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.26_5
 # ./test/pdsp_test.c:161:     pos = pdsp_u32_to_base16(pos, 0xB0B);
	movq	-8(%rbp), %rax	 # pos, tmp105
	movl	$2827, %edx	 #,
	movq	%rax, %rcx	 # tmp105,
	call	pdsp_u32_to_base16	 #
	movq	%rax, -8(%rbp)	 # tmp106, pos
 # ./test/pdsp_test.c:162:     *pos++ = ':';
	movq	-8(%rbp), %rax	 # pos, pos.27_6
	leaq	1(%rax), %rdx	 #, tmp107
	movq	%rdx, -8(%rbp)	 # tmp107, pos
 # ./test/pdsp_test.c:162:     *pos++ = ':';
	movb	$58, (%rax)	 #, *pos.27_6
 # ./test/pdsp_test.c:163:     *pos++ = 0;
	movq	-8(%rbp), %rax	 # pos, pos.28_7
	leaq	1(%rax), %rdx	 #, tmp108
	movq	%rdx, -8(%rbp)	 # tmp108, pos
 # ./test/pdsp_test.c:163:     *pos++ = 0;
	movb	$0, (%rax)	 #, *pos.28_7
 # ./test/pdsp_test.c:164:     PDSP_ASSERT(strcmp(out, ":13371337,0000B00B,0000000B,000000BB,00000B0B:") ==
	leaq	-80(%rbp), %rax	 #, tmp109
	leaq	.LC11(%rip), %rdx	 #, tmp110
	movq	%rax, %rcx	 # tmp109,
	call	strcmp	 #
 # ./test/pdsp_test.c:164:     PDSP_ASSERT(strcmp(out, ":13371337,0000B00B,0000000B,000000BB,00000B0B:") ==
	testl	%eax, %eax	 # _8
	je	.L35	 #,
	movl	$164, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp111
	movq	%rax, %rdx	 # tmp111,
	leaq	.LC3(%rip), %rax	 #, tmp112
	movq	%rax, %rcx	 # tmp112,
	call	printf	 #
.L35:
 # ./test/pdsp_test.c:166: }
	nop	
	addq	$112, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "-- void test_u64_to_base16(void) --\12\0"
	.align 8
.LC13:
	.ascii ":0123456789ABCDEF,AFFAFFAFFAFFAFFA:\0"
	.align 8
.LC14:
	.ascii ":EFCDAB8967452301,FAAFFFFAAFFFFAAF:\0"
	.text
	.globl	test_u64_to_base16
	.def	test_u64_to_base16;	.scl	2;	.type	32;	.endef
	.seh_proc	test_u64_to_base16
test_u64_to_base16:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	addq	$-128, %rsp	 #,
	.seh_stackalloc	128
	.seh_endprologue
 # ./test/pdsp_test.c:170:     printf("-- void test_u64_to_base16(void) --\n");
	leaq	.LC12(%rip), %rax	 #, tmp97
	movq	%rax, %rcx	 # tmp97,
	call	printf	 #
 # ./test/pdsp_test.c:171:     pdsp_char_t out[64] = {0};
	movq	$0, -80(%rbp)	 #, out
	movq	$0, -72(%rbp)	 #, out
	movq	$0, -64(%rbp)	 #, out
	movq	$0, -56(%rbp)	 #, out
	movq	$0, -48(%rbp)	 #, out
	movq	$0, -40(%rbp)	 #, out
	movq	$0, -32(%rbp)	 #, out
	movq	$0, -24(%rbp)	 #, out
 # ./test/pdsp_test.c:172:     pdsp_char_t *pos = &out[0];
	leaq	-80(%rbp), %rax	 #, tmp98
	movq	%rax, -8(%rbp)	 # tmp98, pos
 # ./test/pdsp_test.c:173:     *pos++ = ':';
	movq	-8(%rbp), %rax	 # pos, pos.29_1
	leaq	1(%rax), %rdx	 #, tmp99
	movq	%rdx, -8(%rbp)	 # tmp99, pos
 # ./test/pdsp_test.c:173:     *pos++ = ':';
	movb	$58, (%rax)	 #, *pos.29_1
 # ./test/pdsp_test.c:174:     pos = pdsp_u64_to_base16_alt(0x0123456789ABCDEF, pos);
	movq	-8(%rbp), %rax	 # pos, tmp100
	movq	%rax, %rdx	 # tmp100,
	movabsq	$81985529216486895, %rax	 #, tmp101
	movq	%rax, %rcx	 # tmp101,
	call	pdsp_u64_to_base16_alt	 #
	movq	%rax, -8(%rbp)	 # tmp102, pos
 # ./test/pdsp_test.c:175:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.30_2
	leaq	1(%rax), %rdx	 #, tmp103
	movq	%rdx, -8(%rbp)	 # tmp103, pos
 # ./test/pdsp_test.c:175:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.30_2
 # ./test/pdsp_test.c:176:     pos = pdsp_u64_to_base16_alt(0xAFFAFFAFFAFFAFFA, pos);
	movq	-8(%rbp), %rax	 # pos, tmp104
	movq	%rax, %rdx	 # tmp104,
	movabsq	$-5766015241599078406, %rax	 #, tmp105
	movq	%rax, %rcx	 # tmp105,
	call	pdsp_u64_to_base16_alt	 #
	movq	%rax, -8(%rbp)	 # tmp106, pos
 # ./test/pdsp_test.c:177:     *pos++ = ':';
	movq	-8(%rbp), %rax	 # pos, pos.31_3
	leaq	1(%rax), %rdx	 #, tmp107
	movq	%rdx, -8(%rbp)	 # tmp107, pos
 # ./test/pdsp_test.c:177:     *pos++ = ':';
	movb	$58, (%rax)	 #, *pos.31_3
 # ./test/pdsp_test.c:178:     *pos++ = 0;
	movq	-8(%rbp), %rax	 # pos, pos.32_4
	leaq	1(%rax), %rdx	 #, tmp108
	movq	%rdx, -8(%rbp)	 # tmp108, pos
 # ./test/pdsp_test.c:178:     *pos++ = 0;
	movb	$0, (%rax)	 #, *pos.32_4
 # ./test/pdsp_test.c:179:     PDSP_ASSERT(strcmp(out, ":0123456789ABCDEF,AFFAFFAFFAFFAFFA:") == 0);
	leaq	-80(%rbp), %rax	 #, tmp109
	leaq	.LC13(%rip), %rdx	 #, tmp110
	movq	%rax, %rcx	 # tmp109,
	call	strcmp	 #
 # ./test/pdsp_test.c:179:     PDSP_ASSERT(strcmp(out, ":0123456789ABCDEF,AFFAFFAFFAFFAFFA:") == 0);
	testl	%eax, %eax	 # _5
	je	.L37	 #,
	movl	$179, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp111
	movq	%rax, %rdx	 # tmp111,
	leaq	.LC3(%rip), %rax	 #, tmp112
	movq	%rax, %rcx	 # tmp112,
	call	printf	 #
.L37:
 # ./test/pdsp_test.c:180:     pos = &out[0];
	leaq	-80(%rbp), %rax	 #, tmp113
	movq	%rax, -8(%rbp)	 # tmp113, pos
 # ./test/pdsp_test.c:181:     *pos++ = ':';
	movq	-8(%rbp), %rax	 # pos, pos.33_6
	leaq	1(%rax), %rdx	 #, tmp114
	movq	%rdx, -8(%rbp)	 # tmp114, pos
 # ./test/pdsp_test.c:181:     *pos++ = ':';
	movb	$58, (%rax)	 #, *pos.33_6
 # ./test/pdsp_test.c:182:     pos = pdsp_u64_to_base16(pos, 0x0123456789ABCDEF);
	movq	-8(%rbp), %rax	 # pos, tmp115
	movabsq	$81985529216486895, %rdx	 #, tmp116
	movq	%rax, %rcx	 # tmp115,
	call	pdsp_u64_to_base16	 #
	movq	%rax, -8(%rbp)	 # tmp117, pos
 # ./test/pdsp_test.c:183:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.34_7
	leaq	1(%rax), %rdx	 #, tmp118
	movq	%rdx, -8(%rbp)	 # tmp118, pos
 # ./test/pdsp_test.c:183:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.34_7
 # ./test/pdsp_test.c:184:     pos = pdsp_u64_to_base16(pos, 0xAFFAFFAFFAFFAFFA);
	movq	-8(%rbp), %rax	 # pos, tmp119
	movabsq	$-5766015241599078406, %rdx	 #, tmp120
	movq	%rax, %rcx	 # tmp119,
	call	pdsp_u64_to_base16	 #
	movq	%rax, -8(%rbp)	 # tmp121, pos
 # ./test/pdsp_test.c:185:     *pos++ = ':';
	movq	-8(%rbp), %rax	 # pos, pos.35_8
	leaq	1(%rax), %rdx	 #, tmp122
	movq	%rdx, -8(%rbp)	 # tmp122, pos
 # ./test/pdsp_test.c:185:     *pos++ = ':';
	movb	$58, (%rax)	 #, *pos.35_8
 # ./test/pdsp_test.c:186:     *pos++ = 0;
	movq	-8(%rbp), %rax	 # pos, pos.36_9
	leaq	1(%rax), %rdx	 #, tmp123
	movq	%rdx, -8(%rbp)	 # tmp123, pos
 # ./test/pdsp_test.c:186:     *pos++ = 0;
	movb	$0, (%rax)	 #, *pos.36_9
 # ./test/pdsp_test.c:187:     PDSP_ASSERT(strcmp(out, ":0123456789ABCDEF,AFFAFFAFFAFFAFFA:") == 0);
	leaq	-80(%rbp), %rax	 #, tmp124
	leaq	.LC13(%rip), %rdx	 #, tmp125
	movq	%rax, %rcx	 # tmp124,
	call	strcmp	 #
 # ./test/pdsp_test.c:187:     PDSP_ASSERT(strcmp(out, ":0123456789ABCDEF,AFFAFFAFFAFFAFFA:") == 0);
	testl	%eax, %eax	 # _10
	je	.L38	 #,
	movl	$187, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp126
	movq	%rax, %rdx	 # tmp126,
	leaq	.LC3(%rip), %rax	 #, tmp127
	movq	%rax, %rcx	 # tmp127,
	call	printf	 #
.L38:
 # ./test/pdsp_test.c:188:     pdsp_u64_t data[] = {0x0123456789ABCDEF, 0xAFFAFFAFFAFFAFFA};
	movabsq	$81985529216486895, %rax	 #, tmp145
	movq	%rax, -96(%rbp)	 # tmp145, data[0]
	movabsq	$-5766015241599078406, %rax	 #, tmp146
	movq	%rax, -88(%rbp)	 # tmp146, data[1]
 # ./test/pdsp_test.c:189:     pos = &out[0];
	leaq	-80(%rbp), %rax	 #, tmp128
	movq	%rax, -8(%rbp)	 # tmp128, pos
 # ./test/pdsp_test.c:190:     *pos++ = ':';
	movq	-8(%rbp), %rax	 # pos, pos.37_11
	leaq	1(%rax), %rdx	 #, tmp129
	movq	%rdx, -8(%rbp)	 # tmp129, pos
 # ./test/pdsp_test.c:190:     *pos++ = ':';
	movb	$58, (%rax)	 #, *pos.37_11
 # ./test/pdsp_test.c:191:     pos = pdsp_u8_to_base16(pos, (pdsp_u8_t *)&data[0], 8);
	leaq	-96(%rbp), %rdx	 #, tmp130
	movq	-8(%rbp), %rax	 # pos, tmp131
	movl	$8, %r8d	 #,
	movq	%rax, %rcx	 # tmp131,
	call	pdsp_u8_to_base16	 #
	movq	%rax, -8(%rbp)	 # tmp132, pos
 # ./test/pdsp_test.c:192:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.38_12
	leaq	1(%rax), %rdx	 #, tmp133
	movq	%rdx, -8(%rbp)	 # tmp133, pos
 # ./test/pdsp_test.c:192:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.38_12
 # ./test/pdsp_test.c:193:     pos = pdsp_u8_to_base16(pos, (pdsp_u8_t *)&data[1], 8);
	leaq	-96(%rbp), %rax	 #, tmp134
	leaq	8(%rax), %rdx	 #, tmp135
	movq	-8(%rbp), %rax	 # pos, tmp136
	movl	$8, %r8d	 #,
	movq	%rax, %rcx	 # tmp136,
	call	pdsp_u8_to_base16	 #
	movq	%rax, -8(%rbp)	 # tmp137, pos
 # ./test/pdsp_test.c:194:     *pos++ = ':';
	movq	-8(%rbp), %rax	 # pos, pos.39_13
	leaq	1(%rax), %rdx	 #, tmp138
	movq	%rdx, -8(%rbp)	 # tmp138, pos
 # ./test/pdsp_test.c:194:     *pos++ = ':';
	movb	$58, (%rax)	 #, *pos.39_13
 # ./test/pdsp_test.c:195:     *pos++ = 0;
	movq	-8(%rbp), %rax	 # pos, pos.40_14
	leaq	1(%rax), %rdx	 #, tmp139
	movq	%rdx, -8(%rbp)	 # tmp139, pos
 # ./test/pdsp_test.c:195:     *pos++ = 0;
	movb	$0, (%rax)	 #, *pos.40_14
 # ./test/pdsp_test.c:196:     PDSP_ASSERT(strcmp(out, ":EFCDAB8967452301,FAAFFFFAAFFFFAAF:") == 0);
	leaq	-80(%rbp), %rax	 #, tmp140
	leaq	.LC14(%rip), %rdx	 #, tmp141
	movq	%rax, %rcx	 # tmp140,
	call	strcmp	 #
 # ./test/pdsp_test.c:196:     PDSP_ASSERT(strcmp(out, ":EFCDAB8967452301,FAAFFFFAAFFFFAAF:") == 0);
	testl	%eax, %eax	 # _15
	je	.L40	 #,
	movl	$196, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp142
	movq	%rax, %rdx	 # tmp142,
	leaq	.LC3(%rip), %rax	 #, tmp143
	movq	%rax, %rcx	 # tmp143,
	call	printf	 #
.L40:
 # ./test/pdsp_test.c:197: }
	nop	
	subq	$-128, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC15:
	.ascii "-- void test_u16_to_base64(void) --\12\0"
.LC16:
	.ascii ":Ezc,sAs,AAs,ALs,Cws:\0"
	.text
	.globl	test_u16_to_base64
	.def	test_u16_to_base64;	.scl	2;	.type	32;	.endef
	.seh_proc	test_u16_to_base64
test_u16_to_base64:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$112, %rsp	 #,
	.seh_stackalloc	112
	.seh_endprologue
 # ./test/pdsp_test.c:201:     printf("-- void test_u16_to_base64(void) --\n");
	leaq	.LC15(%rip), %rax	 #, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	printf	 #
 # ./test/pdsp_test.c:202:     pdsp_char_t out[64] = {0};
	movq	$0, -80(%rbp)	 #, out
	movq	$0, -72(%rbp)	 #, out
	movq	$0, -64(%rbp)	 #, out
	movq	$0, -56(%rbp)	 #, out
	movq	$0, -48(%rbp)	 #, out
	movq	$0, -40(%rbp)	 #, out
	movq	$0, -32(%rbp)	 #, out
	movq	$0, -24(%rbp)	 #, out
 # ./test/pdsp_test.c:203:     pdsp_char_t *pos = &out[0];
	leaq	-80(%rbp), %rax	 #, tmp91
	movq	%rax, -8(%rbp)	 # tmp91, pos
 # ./test/pdsp_test.c:204:     *pos++ = ':';
	movq	-8(%rbp), %rax	 # pos, pos.41_1
	leaq	1(%rax), %rdx	 #, tmp92
	movq	%rdx, -8(%rbp)	 # tmp92, pos
 # ./test/pdsp_test.c:204:     *pos++ = ':';
	movb	$58, (%rax)	 #, *pos.41_1
 # ./test/pdsp_test.c:205:     pos = pdsp_u16_to_base64(pos, 0x1337);
	movq	-8(%rbp), %rax	 # pos, tmp93
	movl	$4919, %edx	 #,
	movq	%rax, %rcx	 # tmp93,
	call	pdsp_u16_to_base64	 #
	movq	%rax, -8(%rbp)	 # tmp94, pos
 # ./test/pdsp_test.c:206:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.42_2
	leaq	1(%rax), %rdx	 #, tmp95
	movq	%rdx, -8(%rbp)	 # tmp95, pos
 # ./test/pdsp_test.c:206:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.42_2
 # ./test/pdsp_test.c:207:     pos = pdsp_u16_to_base64(pos, 0xB00B);
	movq	-8(%rbp), %rax	 # pos, tmp96
	movl	$45067, %edx	 #,
	movq	%rax, %rcx	 # tmp96,
	call	pdsp_u16_to_base64	 #
	movq	%rax, -8(%rbp)	 # tmp97, pos
 # ./test/pdsp_test.c:208:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.43_3
	leaq	1(%rax), %rdx	 #, tmp98
	movq	%rdx, -8(%rbp)	 # tmp98, pos
 # ./test/pdsp_test.c:208:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.43_3
 # ./test/pdsp_test.c:209:     pos = pdsp_u16_to_base64(pos, 0xB);
	movq	-8(%rbp), %rax	 # pos, tmp99
	movl	$11, %edx	 #,
	movq	%rax, %rcx	 # tmp99,
	call	pdsp_u16_to_base64	 #
	movq	%rax, -8(%rbp)	 # tmp100, pos
 # ./test/pdsp_test.c:210:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.44_4
	leaq	1(%rax), %rdx	 #, tmp101
	movq	%rdx, -8(%rbp)	 # tmp101, pos
 # ./test/pdsp_test.c:210:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.44_4
 # ./test/pdsp_test.c:211:     pos = pdsp_u16_to_base64(pos, 0xBB);
	movq	-8(%rbp), %rax	 # pos, tmp102
	movl	$187, %edx	 #,
	movq	%rax, %rcx	 # tmp102,
	call	pdsp_u16_to_base64	 #
	movq	%rax, -8(%rbp)	 # tmp103, pos
 # ./test/pdsp_test.c:212:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.45_5
	leaq	1(%rax), %rdx	 #, tmp104
	movq	%rdx, -8(%rbp)	 # tmp104, pos
 # ./test/pdsp_test.c:212:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.45_5
 # ./test/pdsp_test.c:213:     pos = pdsp_u16_to_base64(pos, 0xB0B);
	movq	-8(%rbp), %rax	 # pos, tmp105
	movl	$2827, %edx	 #,
	movq	%rax, %rcx	 # tmp105,
	call	pdsp_u16_to_base64	 #
	movq	%rax, -8(%rbp)	 # tmp106, pos
 # ./test/pdsp_test.c:214:     *pos++ = ':';
	movq	-8(%rbp), %rax	 # pos, pos.46_6
	leaq	1(%rax), %rdx	 #, tmp107
	movq	%rdx, -8(%rbp)	 # tmp107, pos
 # ./test/pdsp_test.c:214:     *pos++ = ':';
	movb	$58, (%rax)	 #, *pos.46_6
 # ./test/pdsp_test.c:215:     *pos++ = 0;
	movq	-8(%rbp), %rax	 # pos, pos.47_7
	leaq	1(%rax), %rdx	 #, tmp108
	movq	%rdx, -8(%rbp)	 # tmp108, pos
 # ./test/pdsp_test.c:215:     *pos++ = 0;
	movb	$0, (%rax)	 #, *pos.47_7
 # ./test/pdsp_test.c:216:     PDSP_ASSERT(strcmp(out, ":Ezc,sAs,AAs,ALs,Cws:") == 0);
	leaq	-80(%rbp), %rax	 #, tmp109
	leaq	.LC16(%rip), %rdx	 #, tmp110
	movq	%rax, %rcx	 # tmp109,
	call	strcmp	 #
 # ./test/pdsp_test.c:216:     PDSP_ASSERT(strcmp(out, ":Ezc,sAs,AAs,ALs,Cws:") == 0);
	testl	%eax, %eax	 # _8
	je	.L43	 #,
	movl	$216, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp111
	movq	%rax, %rdx	 # tmp111,
	leaq	.LC3(%rip), %rax	 #, tmp112
	movq	%rax, %rcx	 # tmp112,
	call	printf	 #
.L43:
 # ./test/pdsp_test.c:217: }
	nop	
	addq	$112, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC17:
	.ascii "-- void test_u32_to_base64(void) --\12\0"
	.align 8
.LC18:
	.ascii ":EzcTNw,AACwCw,AAAACw,AAAAuw,AAALCw:\0"
	.text
	.globl	test_u32_to_base64
	.def	test_u32_to_base64;	.scl	2;	.type	32;	.endef
	.seh_proc	test_u32_to_base64
test_u32_to_base64:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$112, %rsp	 #,
	.seh_stackalloc	112
	.seh_endprologue
 # ./test/pdsp_test.c:221:     printf("-- void test_u32_to_base64(void) --\n");
	leaq	.LC17(%rip), %rax	 #, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	printf	 #
 # ./test/pdsp_test.c:222:     pdsp_char_t out[64] = {0};
	movq	$0, -80(%rbp)	 #, out
	movq	$0, -72(%rbp)	 #, out
	movq	$0, -64(%rbp)	 #, out
	movq	$0, -56(%rbp)	 #, out
	movq	$0, -48(%rbp)	 #, out
	movq	$0, -40(%rbp)	 #, out
	movq	$0, -32(%rbp)	 #, out
	movq	$0, -24(%rbp)	 #, out
 # ./test/pdsp_test.c:223:     pdsp_char_t *pos = &out[0];
	leaq	-80(%rbp), %rax	 #, tmp91
	movq	%rax, -8(%rbp)	 # tmp91, pos
 # ./test/pdsp_test.c:224:     *pos++ = ':';
	movq	-8(%rbp), %rax	 # pos, pos.48_1
	leaq	1(%rax), %rdx	 #, tmp92
	movq	%rdx, -8(%rbp)	 # tmp92, pos
 # ./test/pdsp_test.c:224:     *pos++ = ':';
	movb	$58, (%rax)	 #, *pos.48_1
 # ./test/pdsp_test.c:225:     pos = pdsp_u32_to_base64(pos, 0x13371337);
	movq	-8(%rbp), %rax	 # pos, tmp93
	movl	$322376503, %edx	 #,
	movq	%rax, %rcx	 # tmp93,
	call	pdsp_u32_to_base64	 #
	movq	%rax, -8(%rbp)	 # tmp94, pos
 # ./test/pdsp_test.c:226:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.49_2
	leaq	1(%rax), %rdx	 #, tmp95
	movq	%rdx, -8(%rbp)	 # tmp95, pos
 # ./test/pdsp_test.c:226:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.49_2
 # ./test/pdsp_test.c:227:     pos = pdsp_u32_to_base64(pos, 0xB00B);
	movq	-8(%rbp), %rax	 # pos, tmp96
	movl	$45067, %edx	 #,
	movq	%rax, %rcx	 # tmp96,
	call	pdsp_u32_to_base64	 #
	movq	%rax, -8(%rbp)	 # tmp97, pos
 # ./test/pdsp_test.c:228:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.50_3
	leaq	1(%rax), %rdx	 #, tmp98
	movq	%rdx, -8(%rbp)	 # tmp98, pos
 # ./test/pdsp_test.c:228:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.50_3
 # ./test/pdsp_test.c:229:     pos = pdsp_u32_to_base64(pos, 0xB);
	movq	-8(%rbp), %rax	 # pos, tmp99
	movl	$11, %edx	 #,
	movq	%rax, %rcx	 # tmp99,
	call	pdsp_u32_to_base64	 #
	movq	%rax, -8(%rbp)	 # tmp100, pos
 # ./test/pdsp_test.c:230:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.51_4
	leaq	1(%rax), %rdx	 #, tmp101
	movq	%rdx, -8(%rbp)	 # tmp101, pos
 # ./test/pdsp_test.c:230:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.51_4
 # ./test/pdsp_test.c:231:     pos = pdsp_u32_to_base64(pos, 0xBB);
	movq	-8(%rbp), %rax	 # pos, tmp102
	movl	$187, %edx	 #,
	movq	%rax, %rcx	 # tmp102,
	call	pdsp_u32_to_base64	 #
	movq	%rax, -8(%rbp)	 # tmp103, pos
 # ./test/pdsp_test.c:232:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.52_5
	leaq	1(%rax), %rdx	 #, tmp104
	movq	%rdx, -8(%rbp)	 # tmp104, pos
 # ./test/pdsp_test.c:232:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.52_5
 # ./test/pdsp_test.c:233:     pos = pdsp_u32_to_base64(pos, 0xB0B);
	movq	-8(%rbp), %rax	 # pos, tmp105
	movl	$2827, %edx	 #,
	movq	%rax, %rcx	 # tmp105,
	call	pdsp_u32_to_base64	 #
	movq	%rax, -8(%rbp)	 # tmp106, pos
 # ./test/pdsp_test.c:234:     *pos++ = ':';
	movq	-8(%rbp), %rax	 # pos, pos.53_6
	leaq	1(%rax), %rdx	 #, tmp107
	movq	%rdx, -8(%rbp)	 # tmp107, pos
 # ./test/pdsp_test.c:234:     *pos++ = ':';
	movb	$58, (%rax)	 #, *pos.53_6
 # ./test/pdsp_test.c:235:     *pos++ = 0;
	movq	-8(%rbp), %rax	 # pos, pos.54_7
	leaq	1(%rax), %rdx	 #, tmp108
	movq	%rdx, -8(%rbp)	 # tmp108, pos
 # ./test/pdsp_test.c:235:     *pos++ = 0;
	movb	$0, (%rax)	 #, *pos.54_7
 # ./test/pdsp_test.c:236:     PDSP_ASSERT(strcmp(out, ":EzcTNw,AACwCw,AAAACw,AAAAuw,AAALCw:") == 0);
	leaq	-80(%rbp), %rax	 #, tmp109
	leaq	.LC18(%rip), %rdx	 #, tmp110
	movq	%rax, %rcx	 # tmp109,
	call	strcmp	 #
 # ./test/pdsp_test.c:236:     PDSP_ASSERT(strcmp(out, ":EzcTNw,AACwCw,AAAACw,AAAAuw,AAALCw:") == 0);
	testl	%eax, %eax	 # _8
	je	.L46	 #,
	movl	$236, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp111
	movq	%rax, %rdx	 # tmp111,
	leaq	.LC3(%rip), %rax	 #, tmp112
	movq	%rax, %rcx	 # tmp112,
	call	printf	 #
.L46:
 # ./test/pdsp_test.c:237: }
	nop	
	addq	$112, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC19:
	.ascii "-- void test_u64_to_base64(void) --\12\0"
.LC20:
	.ascii ":ASNFZ4mrze8,r/r/r/r/r/o:\0"
	.text
	.globl	test_u64_to_base64
	.def	test_u64_to_base64;	.scl	2;	.type	32;	.endef
	.seh_proc	test_u64_to_base64
test_u64_to_base64:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$112, %rsp	 #,
	.seh_stackalloc	112
	.seh_endprologue
 # ./test/pdsp_test.c:241:     printf("-- void test_u64_to_base64(void) --\n");
	leaq	.LC19(%rip), %rax	 #, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	printf	 #
 # ./test/pdsp_test.c:242:     pdsp_char_t out[64] = {0};
	movq	$0, -80(%rbp)	 #, out
	movq	$0, -72(%rbp)	 #, out
	movq	$0, -64(%rbp)	 #, out
	movq	$0, -56(%rbp)	 #, out
	movq	$0, -48(%rbp)	 #, out
	movq	$0, -40(%rbp)	 #, out
	movq	$0, -32(%rbp)	 #, out
	movq	$0, -24(%rbp)	 #, out
 # ./test/pdsp_test.c:243:     pdsp_char_t *pos = &out[0];
	leaq	-80(%rbp), %rax	 #, tmp88
	movq	%rax, -8(%rbp)	 # tmp88, pos
 # ./test/pdsp_test.c:244:     *pos++ = ':';
	movq	-8(%rbp), %rax	 # pos, pos.55_1
	leaq	1(%rax), %rdx	 #, tmp89
	movq	%rdx, -8(%rbp)	 # tmp89, pos
 # ./test/pdsp_test.c:244:     *pos++ = ':';
	movb	$58, (%rax)	 #, *pos.55_1
 # ./test/pdsp_test.c:245:     pos = pdsp_u64_to_base64(pos, 0x0123456789ABCDEF);
	movq	-8(%rbp), %rax	 # pos, tmp90
	movabsq	$81985529216486895, %rdx	 #, tmp91
	movq	%rax, %rcx	 # tmp90,
	call	pdsp_u64_to_base64	 #
	movq	%rax, -8(%rbp)	 # tmp92, pos
 # ./test/pdsp_test.c:246:     *pos++ = ',';
	movq	-8(%rbp), %rax	 # pos, pos.56_2
	leaq	1(%rax), %rdx	 #, tmp93
	movq	%rdx, -8(%rbp)	 # tmp93, pos
 # ./test/pdsp_test.c:246:     *pos++ = ',';
	movb	$44, (%rax)	 #, *pos.56_2
 # ./test/pdsp_test.c:247:     pos = pdsp_u64_to_base64(pos, 0xAFFAFFAFFAFFAFFA);
	movq	-8(%rbp), %rax	 # pos, tmp94
	movabsq	$-5766015241599078406, %rdx	 #, tmp95
	movq	%rax, %rcx	 # tmp94,
	call	pdsp_u64_to_base64	 #
	movq	%rax, -8(%rbp)	 # tmp96, pos
 # ./test/pdsp_test.c:248:     *pos++ = ':';
	movq	-8(%rbp), %rax	 # pos, pos.57_3
	leaq	1(%rax), %rdx	 #, tmp97
	movq	%rdx, -8(%rbp)	 # tmp97, pos
 # ./test/pdsp_test.c:248:     *pos++ = ':';
	movb	$58, (%rax)	 #, *pos.57_3
 # ./test/pdsp_test.c:249:     *pos++ = 0;
	movq	-8(%rbp), %rax	 # pos, pos.58_4
	leaq	1(%rax), %rdx	 #, tmp98
	movq	%rdx, -8(%rbp)	 # tmp98, pos
 # ./test/pdsp_test.c:249:     *pos++ = 0;
	movb	$0, (%rax)	 #, *pos.58_4
 # ./test/pdsp_test.c:250:     PDSP_ASSERT(strcmp(out, ":ASNFZ4mrze8,r/r/r/r/r/o:") == 0);
	leaq	-80(%rbp), %rax	 #, tmp99
	leaq	.LC20(%rip), %rdx	 #, tmp100
	movq	%rax, %rcx	 # tmp99,
	call	strcmp	 #
 # ./test/pdsp_test.c:250:     PDSP_ASSERT(strcmp(out, ":ASNFZ4mrze8,r/r/r/r/r/o:") == 0);
	testl	%eax, %eax	 # _5
	je	.L49	 #,
	movl	$250, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp101
	movq	%rax, %rdx	 # tmp101,
	leaq	.LC3(%rip), %rax	 #, tmp102
	movq	%rax, %rcx	 # tmp102,
	call	printf	 #
.L49:
 # ./test/pdsp_test.c:251: }
	nop	
	addq	$112, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC21:
	.ascii "-- void test_map(void) --\12\0"
	.text
	.globl	test_map
	.def	test_map;	.scl	2;	.type	32;	.endef
	.seh_proc	test_map
test_map:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
 # ./test/pdsp_test.c:255:     printf("-- void test_map(void) --\n");
	leaq	.LC21(%rip), %rax	 #, tmp86
	movq	%rax, %rcx	 # tmp86,
	call	printf	 #
 # ./test/pdsp_test.c:256:     PDSP_ASSERT(pdsp_map(1.5f, 1.0f, 2.0f, 1.0f, 2.0f) == 1.5f);
	movss	.LC22(%rip), %xmm0	 #, tmp87
	movss	%xmm0, 32(%rsp)	 # tmp87,
	movss	.LC23(%rip), %xmm3	 #,
	movss	.LC22(%rip), %xmm2	 #,
	movss	.LC23(%rip), %xmm1	 #,
	movl	.LC24(%rip), %eax	 #, tmp88
	movd	%eax, %xmm0	 # tmp88,
	call	pdsp_map	 #
	movd	%xmm0, %eax	 #, _1
 # ./test/pdsp_test.c:256:     PDSP_ASSERT(pdsp_map(1.5f, 1.0f, 2.0f, 1.0f, 2.0f) == 1.5f);
	movd	%eax, %xmm4	 # _1, _1
	ucomiss	.LC24(%rip), %xmm4	 #, _1
	jp	.L59	 #,
	movd	%eax, %xmm5	 # _1, _1
	ucomiss	.LC24(%rip), %xmm5	 #, _1
	je	.L51	 #,
.L59:
	movl	$256, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp89
	movq	%rax, %rdx	 # tmp89,
	leaq	.LC3(%rip), %rax	 #, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	printf	 #
.L51:
 # ./test/pdsp_test.c:257:     PDSP_ASSERT(pdsp_map(1.5f, 1.0f, 1.0f, 1.0f, 2.0f) == 1.5f);
	movss	.LC22(%rip), %xmm0	 #, tmp91
	movss	%xmm0, 32(%rsp)	 # tmp91,
	movss	.LC23(%rip), %xmm3	 #,
	movss	.LC23(%rip), %xmm2	 #,
	movss	.LC23(%rip), %xmm1	 #,
	movl	.LC24(%rip), %eax	 #, tmp92
	movd	%eax, %xmm0	 # tmp92,
	call	pdsp_map	 #
	movd	%xmm0, %eax	 #, _2
 # ./test/pdsp_test.c:257:     PDSP_ASSERT(pdsp_map(1.5f, 1.0f, 1.0f, 1.0f, 2.0f) == 1.5f);
	movd	%eax, %xmm4	 # _2, _2
	ucomiss	.LC24(%rip), %xmm4	 #, _2
	jp	.L60	 #,
	movd	%eax, %xmm5	 # _2, _2
	ucomiss	.LC24(%rip), %xmm5	 #, _2
	je	.L53	 #,
.L60:
	movl	$257, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp93
	movq	%rax, %rdx	 # tmp93,
	leaq	.LC3(%rip), %rax	 #, tmp94
	movq	%rax, %rcx	 # tmp94,
	call	printf	 #
.L53:
 # ./test/pdsp_test.c:258:     PDSP_ASSERT(pdsp_map(1.5f, 1.0f, 2.0f, 1.0f, 1.0f) == 1.0f);
	movss	.LC23(%rip), %xmm0	 #, tmp95
	movss	%xmm0, 32(%rsp)	 # tmp95,
	movss	.LC23(%rip), %xmm3	 #,
	movss	.LC22(%rip), %xmm2	 #,
	movss	.LC23(%rip), %xmm1	 #,
	movl	.LC24(%rip), %eax	 #, tmp96
	movd	%eax, %xmm0	 # tmp96,
	call	pdsp_map	 #
	movd	%xmm0, %eax	 #, _3
 # ./test/pdsp_test.c:258:     PDSP_ASSERT(pdsp_map(1.5f, 1.0f, 2.0f, 1.0f, 1.0f) == 1.0f);
	movss	.LC23(%rip), %xmm0	 #, tmp97
	movd	%eax, %xmm1	 # _3, _3
	ucomiss	%xmm0, %xmm1	 # tmp97, _3
	jp	.L61	 #,
	movss	.LC23(%rip), %xmm0	 #, tmp98
	movd	%eax, %xmm2	 # _3, _3
	ucomiss	%xmm0, %xmm2	 # tmp98, _3
	je	.L55	 #,
.L61:
	movl	$258, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp99
	movq	%rax, %rdx	 # tmp99,
	leaq	.LC3(%rip), %rax	 #, tmp100
	movq	%rax, %rcx	 # tmp100,
	call	printf	 #
.L55:
 # ./test/pdsp_test.c:259:     PDSP_ASSERT(pdsp_map(-1.0f, 0.0f, 1.0f, 0.0f, 1.0f) == -1.0f);
	movss	.LC23(%rip), %xmm0	 #, tmp101
	movss	%xmm0, 32(%rsp)	 # tmp101,
	pxor	%xmm3, %xmm3	 #
	movss	.LC23(%rip), %xmm2	 #,
	pxor	%xmm1, %xmm1	 #
	movl	.LC26(%rip), %eax	 #, tmp102
	movd	%eax, %xmm0	 # tmp102,
	call	pdsp_map	 #
	movd	%xmm0, %eax	 #, _4
 # ./test/pdsp_test.c:259:     PDSP_ASSERT(pdsp_map(-1.0f, 0.0f, 1.0f, 0.0f, 1.0f) == -1.0f);
	movss	.LC26(%rip), %xmm0	 #, tmp103
	movd	%eax, %xmm3	 # _4, _4
	ucomiss	%xmm0, %xmm3	 # tmp103, _4
	jp	.L62	 #,
	movss	.LC26(%rip), %xmm0	 #, tmp104
	movd	%eax, %xmm4	 # _4, _4
	ucomiss	%xmm0, %xmm4	 # tmp104, _4
	je	.L63	 #,
.L62:
	movl	$259, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp105
	movq	%rax, %rdx	 # tmp105,
	leaq	.LC3(%rip), %rax	 #, tmp106
	movq	%rax, %rcx	 # tmp106,
	call	printf	 #
.L63:
 # ./test/pdsp_test.c:265: }
	nop	
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC27:
	.ascii "-- void test_map_idx(void) --\12\0"
	.text
	.globl	test_map_idx
	.def	test_map_idx;	.scl	2;	.type	32;	.endef
	.seh_proc	test_map_idx
test_map_idx:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
 # ./test/pdsp_test.c:269:     printf("-- void test_map_idx(void) --\n");
	leaq	.LC27(%rip), %rax	 #, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	printf	 #
 # ./test/pdsp_test.c:273:     PDSP_ASSERT(pdsp_map_idx(1.5f, 1.0f, 2.0f, 10.0) == 5);
	movss	.LC28(%rip), %xmm3	 #,
	movss	.LC22(%rip), %xmm2	 #,
	movss	.LC23(%rip), %xmm1	 #,
	movl	.LC24(%rip), %eax	 #, tmp86
	movd	%eax, %xmm0	 # tmp86,
	call	pdsp_map_idx	 #
 # ./test/pdsp_test.c:273:     PDSP_ASSERT(pdsp_map_idx(1.5f, 1.0f, 2.0f, 10.0) == 5);
	cmpw	$5, %ax	 #, _1
	je	.L65	 #,
	movl	$273, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp87
	movq	%rax, %rdx	 # tmp87,
	leaq	.LC3(%rip), %rax	 #, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	printf	 #
.L65:
 # ./test/pdsp_test.c:274:     PDSP_ASSERT(pdsp_map_idx(-1.5f, 1.0f, 2.0f, 10.0) == 0);
	movss	.LC28(%rip), %xmm3	 #,
	movss	.LC22(%rip), %xmm2	 #,
	movss	.LC23(%rip), %xmm1	 #,
	movl	.LC29(%rip), %eax	 #, tmp89
	movd	%eax, %xmm0	 # tmp89,
	call	pdsp_map_idx	 #
 # ./test/pdsp_test.c:274:     PDSP_ASSERT(pdsp_map_idx(-1.5f, 1.0f, 2.0f, 10.0) == 0);
	testw	%ax, %ax	 # _2
	je	.L66	 #,
	movl	$274, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp90
	movq	%rax, %rdx	 # tmp90,
	leaq	.LC3(%rip), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	printf	 #
.L66:
 # ./test/pdsp_test.c:275:     PDSP_ASSERT(pdsp_map_idx(3.0f, 1.0f, 2.0f, 10.0) == 10);
	movss	.LC28(%rip), %xmm3	 #,
	movss	.LC22(%rip), %xmm2	 #,
	movss	.LC23(%rip), %xmm1	 #,
	movl	.LC30(%rip), %eax	 #, tmp92
	movd	%eax, %xmm0	 # tmp92,
	call	pdsp_map_idx	 #
 # ./test/pdsp_test.c:275:     PDSP_ASSERT(pdsp_map_idx(3.0f, 1.0f, 2.0f, 10.0) == 10);
	cmpw	$10, %ax	 #, _3
	je	.L68	 #,
	movl	$275, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp93
	movq	%rax, %rdx	 # tmp93,
	leaq	.LC3(%rip), %rax	 #, tmp94
	movq	%rax, %rcx	 # tmp94,
	call	printf	 #
.L68:
 # ./test/pdsp_test.c:276: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC31:
	.ascii "-- void test_interpolate_2d(void) --\12\0"
	.text
	.globl	test_interpolate_2d
	.def	test_interpolate_2d;	.scl	2;	.type	32;	.endef
	.seh_proc	test_interpolate_2d
test_interpolate_2d:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	addq	$-128, %rsp	 #,
	.seh_stackalloc	128
	.seh_endprologue
 # ./test/pdsp_test.c:280:     printf("-- void test_interpolate_2d(void) --\n");
	leaq	.LC31(%rip), %rax	 #, tmp94
	movq	%rax, %rcx	 # tmp94,
	call	printf	 #
 # ./test/pdsp_test.c:281:     const pdsp_f32_t xarr[5] = {0.0f, 1.0f, 2.0f, 3.0f, 4.0f};
	pxor	%xmm0, %xmm0	 # tmp95
	movss	%xmm0, -32(%rbp)	 # tmp95, xarr[0]
	movss	.LC23(%rip), %xmm0	 #, tmp96
	movss	%xmm0, -28(%rbp)	 # tmp96, xarr[1]
	movss	.LC22(%rip), %xmm0	 #, tmp97
	movss	%xmm0, -24(%rbp)	 # tmp97, xarr[2]
	movss	.LC30(%rip), %xmm0	 #, tmp98
	movss	%xmm0, -20(%rbp)	 # tmp98, xarr[3]
	movss	.LC32(%rip), %xmm0	 #, tmp99
	movss	%xmm0, -16(%rbp)	 # tmp99, xarr[4]
 # ./test/pdsp_test.c:282:     const pdsp_f32_t yarr[5] = {0.0f, 1.0f, 2.0f, 3.0f, 4.0f};
	pxor	%xmm0, %xmm0	 # tmp100
	movss	%xmm0, -64(%rbp)	 # tmp100, yarr[0]
	movss	.LC23(%rip), %xmm0	 #, tmp101
	movss	%xmm0, -60(%rbp)	 # tmp101, yarr[1]
	movss	.LC22(%rip), %xmm0	 #, tmp102
	movss	%xmm0, -56(%rbp)	 # tmp102, yarr[2]
	movss	.LC30(%rip), %xmm0	 #, tmp103
	movss	%xmm0, -52(%rbp)	 # tmp103, yarr[3]
	movss	.LC32(%rip), %xmm0	 #, tmp104
	movss	%xmm0, -48(%rbp)	 # tmp104, yarr[4]
 # ./test/pdsp_test.c:283:     const pdsp_f32_t yarrn[5] = {0.0f, -1.0f, -2.0f, -3.0f, -4.0f};
	pxor	%xmm0, %xmm0	 # tmp105
	movss	%xmm0, -96(%rbp)	 # tmp105, yarrn[0]
	movss	.LC26(%rip), %xmm0	 #, tmp106
	movss	%xmm0, -92(%rbp)	 # tmp106, yarrn[1]
	movss	.LC33(%rip), %xmm0	 #, tmp107
	movss	%xmm0, -88(%rbp)	 # tmp107, yarrn[2]
	movss	.LC34(%rip), %xmm0	 #, tmp108
	movss	%xmm0, -84(%rbp)	 # tmp108, yarrn[3]
	movss	.LC35(%rip), %xmm0	 #, tmp109
	movss	%xmm0, -80(%rbp)	 # tmp109, yarrn[4]
 # ./test/pdsp_test.c:284:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarr, 5, -0.5f) == -0.5f);
	leaq	-64(%rbp), %rdx	 #, tmp110
	leaq	-32(%rbp), %rax	 #, tmp111
	movss	.LC36(%rip), %xmm3	 #,
	movl	$5, %r8d	 #,
	movq	%rax, %rcx	 # tmp111,
	call	pdsp_interpolate_2d	 #
	movd	%xmm0, %eax	 #, _1
 # ./test/pdsp_test.c:284:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarr, 5, -0.5f) == -0.5f);
	movd	%eax, %xmm1	 # _1, _1
	ucomiss	.LC36(%rip), %xmm1	 #, _1
	jp	.L94	 #,
	movd	%eax, %xmm2	 # _1, _1
	ucomiss	.LC36(%rip), %xmm2	 #, _1
	je	.L70	 #,
.L94:
	movl	$284, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp112
	movq	%rax, %rdx	 # tmp112,
	leaq	.LC3(%rip), %rax	 #, tmp113
	movq	%rax, %rcx	 # tmp113,
	call	printf	 #
.L70:
 # ./test/pdsp_test.c:285:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarr, 5, 0.5f) == 0.5f);
	leaq	-64(%rbp), %rdx	 #, tmp114
	leaq	-32(%rbp), %rax	 #, tmp115
	movss	.LC37(%rip), %xmm3	 #,
	movl	$5, %r8d	 #,
	movq	%rax, %rcx	 # tmp115,
	call	pdsp_interpolate_2d	 #
	movd	%xmm0, %eax	 #, _2
 # ./test/pdsp_test.c:285:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarr, 5, 0.5f) == 0.5f);
	movd	%eax, %xmm4	 # _2, _2
	ucomiss	.LC37(%rip), %xmm4	 #, _2
	jp	.L95	 #,
	movd	%eax, %xmm5	 # _2, _2
	ucomiss	.LC37(%rip), %xmm5	 #, _2
	je	.L72	 #,
.L95:
	movl	$285, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp116
	movq	%rax, %rdx	 # tmp116,
	leaq	.LC3(%rip), %rax	 #, tmp117
	movq	%rax, %rcx	 # tmp117,
	call	printf	 #
.L72:
 # ./test/pdsp_test.c:286:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarr, 5, 1.5f) == 1.5f);
	leaq	-64(%rbp), %rdx	 #, tmp118
	leaq	-32(%rbp), %rax	 #, tmp119
	movss	.LC24(%rip), %xmm3	 #,
	movl	$5, %r8d	 #,
	movq	%rax, %rcx	 # tmp119,
	call	pdsp_interpolate_2d	 #
	movd	%xmm0, %eax	 #, _3
 # ./test/pdsp_test.c:286:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarr, 5, 1.5f) == 1.5f);
	movd	%eax, %xmm1	 # _3, _3
	ucomiss	.LC24(%rip), %xmm1	 #, _3
	jp	.L96	 #,
	movd	%eax, %xmm2	 # _3, _3
	ucomiss	.LC24(%rip), %xmm2	 #, _3
	je	.L74	 #,
.L96:
	movl	$286, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp120
	movq	%rax, %rdx	 # tmp120,
	leaq	.LC3(%rip), %rax	 #, tmp121
	movq	%rax, %rcx	 # tmp121,
	call	printf	 #
.L74:
 # ./test/pdsp_test.c:287:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarr, 5, 2.5f) == 2.5f);
	leaq	-64(%rbp), %rdx	 #, tmp122
	leaq	-32(%rbp), %rax	 #, tmp123
	movss	.LC38(%rip), %xmm3	 #,
	movl	$5, %r8d	 #,
	movq	%rax, %rcx	 # tmp123,
	call	pdsp_interpolate_2d	 #
	movd	%xmm0, %eax	 #, _4
 # ./test/pdsp_test.c:287:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarr, 5, 2.5f) == 2.5f);
	movd	%eax, %xmm4	 # _4, _4
	ucomiss	.LC38(%rip), %xmm4	 #, _4
	jp	.L97	 #,
	movd	%eax, %xmm5	 # _4, _4
	ucomiss	.LC38(%rip), %xmm5	 #, _4
	je	.L76	 #,
.L97:
	movl	$287, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp124
	movq	%rax, %rdx	 # tmp124,
	leaq	.LC3(%rip), %rax	 #, tmp125
	movq	%rax, %rcx	 # tmp125,
	call	printf	 #
.L76:
 # ./test/pdsp_test.c:288:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarr, 5, 3.5f) == 3.5f);
	leaq	-64(%rbp), %rdx	 #, tmp126
	leaq	-32(%rbp), %rax	 #, tmp127
	movss	.LC39(%rip), %xmm3	 #,
	movl	$5, %r8d	 #,
	movq	%rax, %rcx	 # tmp127,
	call	pdsp_interpolate_2d	 #
	movd	%xmm0, %eax	 #, _5
 # ./test/pdsp_test.c:288:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarr, 5, 3.5f) == 3.5f);
	movd	%eax, %xmm1	 # _5, _5
	ucomiss	.LC39(%rip), %xmm1	 #, _5
	jp	.L98	 #,
	movd	%eax, %xmm2	 # _5, _5
	ucomiss	.LC39(%rip), %xmm2	 #, _5
	je	.L78	 #,
.L98:
	movl	$288, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp128
	movq	%rax, %rdx	 # tmp128,
	leaq	.LC3(%rip), %rax	 #, tmp129
	movq	%rax, %rcx	 # tmp129,
	call	printf	 #
.L78:
 # ./test/pdsp_test.c:289:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarr, 5, 4.5f) == 4.5f);
	leaq	-64(%rbp), %rdx	 #, tmp130
	leaq	-32(%rbp), %rax	 #, tmp131
	movss	.LC40(%rip), %xmm3	 #,
	movl	$5, %r8d	 #,
	movq	%rax, %rcx	 # tmp131,
	call	pdsp_interpolate_2d	 #
	movd	%xmm0, %eax	 #, _6
 # ./test/pdsp_test.c:289:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarr, 5, 4.5f) == 4.5f);
	movd	%eax, %xmm4	 # _6, _6
	ucomiss	.LC40(%rip), %xmm4	 #, _6
	jp	.L99	 #,
	movd	%eax, %xmm5	 # _6, _6
	ucomiss	.LC40(%rip), %xmm5	 #, _6
	je	.L80	 #,
.L99:
	movl	$289, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp132
	movq	%rax, %rdx	 # tmp132,
	leaq	.LC3(%rip), %rax	 #, tmp133
	movq	%rax, %rcx	 # tmp133,
	call	printf	 #
.L80:
 # ./test/pdsp_test.c:290:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarrn, 5, -0.5f) == 0.5f);
	leaq	-96(%rbp), %rdx	 #, tmp134
	leaq	-32(%rbp), %rax	 #, tmp135
	movss	.LC36(%rip), %xmm3	 #,
	movl	$5, %r8d	 #,
	movq	%rax, %rcx	 # tmp135,
	call	pdsp_interpolate_2d	 #
	movd	%xmm0, %eax	 #, _7
 # ./test/pdsp_test.c:290:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarrn, 5, -0.5f) == 0.5f);
	movd	%eax, %xmm1	 # _7, _7
	ucomiss	.LC37(%rip), %xmm1	 #, _7
	jp	.L100	 #,
	movd	%eax, %xmm2	 # _7, _7
	ucomiss	.LC37(%rip), %xmm2	 #, _7
	je	.L82	 #,
.L100:
	movl	$290, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp136
	movq	%rax, %rdx	 # tmp136,
	leaq	.LC3(%rip), %rax	 #, tmp137
	movq	%rax, %rcx	 # tmp137,
	call	printf	 #
.L82:
 # ./test/pdsp_test.c:291:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarrn, 5, 0.5f) == -0.5f);
	leaq	-96(%rbp), %rdx	 #, tmp138
	leaq	-32(%rbp), %rax	 #, tmp139
	movss	.LC37(%rip), %xmm3	 #,
	movl	$5, %r8d	 #,
	movq	%rax, %rcx	 # tmp139,
	call	pdsp_interpolate_2d	 #
	movd	%xmm0, %eax	 #, _8
 # ./test/pdsp_test.c:291:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarrn, 5, 0.5f) == -0.5f);
	movd	%eax, %xmm4	 # _8, _8
	ucomiss	.LC36(%rip), %xmm4	 #, _8
	jp	.L101	 #,
	movd	%eax, %xmm5	 # _8, _8
	ucomiss	.LC36(%rip), %xmm5	 #, _8
	je	.L84	 #,
.L101:
	movl	$291, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp140
	movq	%rax, %rdx	 # tmp140,
	leaq	.LC3(%rip), %rax	 #, tmp141
	movq	%rax, %rcx	 # tmp141,
	call	printf	 #
.L84:
 # ./test/pdsp_test.c:292:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarrn, 5, 1.5f) == -1.5f);
	leaq	-96(%rbp), %rdx	 #, tmp142
	leaq	-32(%rbp), %rax	 #, tmp143
	movss	.LC24(%rip), %xmm3	 #,
	movl	$5, %r8d	 #,
	movq	%rax, %rcx	 # tmp143,
	call	pdsp_interpolate_2d	 #
	movd	%xmm0, %eax	 #, _9
 # ./test/pdsp_test.c:292:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarrn, 5, 1.5f) == -1.5f);
	movd	%eax, %xmm1	 # _9, _9
	ucomiss	.LC29(%rip), %xmm1	 #, _9
	jp	.L102	 #,
	movd	%eax, %xmm2	 # _9, _9
	ucomiss	.LC29(%rip), %xmm2	 #, _9
	je	.L86	 #,
.L102:
	movl	$292, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp144
	movq	%rax, %rdx	 # tmp144,
	leaq	.LC3(%rip), %rax	 #, tmp145
	movq	%rax, %rcx	 # tmp145,
	call	printf	 #
.L86:
 # ./test/pdsp_test.c:293:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarrn, 5, 2.5f) == -2.5f);
	leaq	-96(%rbp), %rdx	 #, tmp146
	leaq	-32(%rbp), %rax	 #, tmp147
	movss	.LC38(%rip), %xmm3	 #,
	movl	$5, %r8d	 #,
	movq	%rax, %rcx	 # tmp147,
	call	pdsp_interpolate_2d	 #
	movd	%xmm0, %eax	 #, _10
 # ./test/pdsp_test.c:293:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarrn, 5, 2.5f) == -2.5f);
	movd	%eax, %xmm4	 # _10, _10
	ucomiss	.LC41(%rip), %xmm4	 #, _10
	jp	.L103	 #,
	movd	%eax, %xmm5	 # _10, _10
	ucomiss	.LC41(%rip), %xmm5	 #, _10
	je	.L88	 #,
.L103:
	movl	$293, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp148
	movq	%rax, %rdx	 # tmp148,
	leaq	.LC3(%rip), %rax	 #, tmp149
	movq	%rax, %rcx	 # tmp149,
	call	printf	 #
.L88:
 # ./test/pdsp_test.c:294:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarrn, 5, 3.5f) == -3.5f);
	leaq	-96(%rbp), %rdx	 #, tmp150
	leaq	-32(%rbp), %rax	 #, tmp151
	movss	.LC39(%rip), %xmm3	 #,
	movl	$5, %r8d	 #,
	movq	%rax, %rcx	 # tmp151,
	call	pdsp_interpolate_2d	 #
	movd	%xmm0, %eax	 #, _11
 # ./test/pdsp_test.c:294:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarrn, 5, 3.5f) == -3.5f);
	movd	%eax, %xmm1	 # _11, _11
	ucomiss	.LC42(%rip), %xmm1	 #, _11
	jp	.L104	 #,
	movd	%eax, %xmm2	 # _11, _11
	ucomiss	.LC42(%rip), %xmm2	 #, _11
	je	.L90	 #,
.L104:
	movl	$294, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp152
	movq	%rax, %rdx	 # tmp152,
	leaq	.LC3(%rip), %rax	 #, tmp153
	movq	%rax, %rcx	 # tmp153,
	call	printf	 #
.L90:
 # ./test/pdsp_test.c:295:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarrn, 5, 4.5f) == -4.5f);
	leaq	-96(%rbp), %rdx	 #, tmp154
	leaq	-32(%rbp), %rax	 #, tmp155
	movss	.LC40(%rip), %xmm3	 #,
	movl	$5, %r8d	 #,
	movq	%rax, %rcx	 # tmp155,
	call	pdsp_interpolate_2d	 #
	movd	%xmm0, %eax	 #, _12
 # ./test/pdsp_test.c:295:     PDSP_ASSERT(pdsp_interpolate_2d(xarr, yarrn, 5, 4.5f) == -4.5f);
	movd	%eax, %xmm4	 # _12, _12
	ucomiss	.LC43(%rip), %xmm4	 #, _12
	jp	.L105	 #,
	movd	%eax, %xmm5	 # _12, _12
	ucomiss	.LC43(%rip), %xmm5	 #, _12
	je	.L106	 #,
.L105:
	movl	$295, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp156
	movq	%rax, %rdx	 # tmp156,
	leaq	.LC3(%rip), %rax	 #, tmp157
	movq	%rax, %rcx	 # tmp157,
	call	printf	 #
.L106:
 # ./test/pdsp_test.c:296: }
	nop	
	subq	$-128, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC44:
	.ascii "-- void test_array_set(void) --\12\0"
	.text
	.globl	test_array_set
	.def	test_array_set;	.scl	2;	.type	32;	.endef
	.seh_proc	test_array_set
test_array_set:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$80, %rsp	 #,
	.seh_stackalloc	80
	.seh_endprologue
 # ./test/pdsp_test.c:300:     printf("-- void test_array_set(void) --\n");
	leaq	.LC44(%rip), %rax	 #, tmp102
	movq	%rax, %rcx	 # tmp102,
	call	printf	 #
 # ./test/pdsp_test.c:301:     pdsp_f32_t af32[5] = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f};
	movss	.LC23(%rip), %xmm0	 #, tmp103
	movss	%xmm0, -32(%rbp)	 # tmp103, af32[0]
	movss	.LC22(%rip), %xmm0	 #, tmp104
	movss	%xmm0, -28(%rbp)	 # tmp104, af32[1]
	movss	.LC30(%rip), %xmm0	 #, tmp105
	movss	%xmm0, -24(%rbp)	 # tmp105, af32[2]
	movss	.LC32(%rip), %xmm0	 #, tmp106
	movss	%xmm0, -20(%rbp)	 # tmp106, af32[3]
	movss	.LC45(%rip), %xmm0	 #, tmp107
	movss	%xmm0, -16(%rbp)	 # tmp107, af32[4]
 # ./test/pdsp_test.c:302:     pdsp_i16_t ai16[5] = {1, 2, 3, 4, 5};
	movw	$1, -42(%rbp)	 #, ai16[0]
	movw	$2, -40(%rbp)	 #, ai16[1]
	movw	$3, -38(%rbp)	 #, ai16[2]
	movw	$4, -36(%rbp)	 #, ai16[3]
	movw	$5, -34(%rbp)	 #, ai16[4]
 # ./test/pdsp_test.c:303:     pdsp_array_set_f32(af32, 4, 0.0f);
	leaq	-32(%rbp), %rax	 #, tmp108
	pxor	%xmm2, %xmm2	 #
	movl	$4, %edx	 #,
	movq	%rax, %rcx	 # tmp108,
	call	pdsp_array_set_f32	 #
 # ./test/pdsp_test.c:304:     pdsp_array_set_i16(ai16, 4, 0);
	leaq	-42(%rbp), %rax	 #, tmp109
	movl	$0, %r8d	 #,
	movl	$4, %edx	 #,
	movq	%rax, %rcx	 # tmp109,
	call	pdsp_array_set_i16	 #
 # ./test/pdsp_test.c:305:     PDSP_ASSERT(af32[0] == 0.0f);
	movss	-32(%rbp), %xmm0	 # af32[0], _1
	pxor	%xmm1, %xmm1	 # tmp110
	ucomiss	%xmm1, %xmm0	 # tmp110, _1
	jp	.L138	 #,
	pxor	%xmm1, %xmm1	 # tmp111
	ucomiss	%xmm1, %xmm0	 # tmp111, _1
	je	.L108	 #,
.L138:
 # ./test/pdsp_test.c:305:     PDSP_ASSERT(af32[0] == 0.0f);
	movl	$305, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp112
	movq	%rax, %rdx	 # tmp112,
	leaq	.LC3(%rip), %rax	 #, tmp113
	movq	%rax, %rcx	 # tmp113,
	call	printf	 #
.L108:
 # ./test/pdsp_test.c:306:     PDSP_ASSERT(af32[1] == 0.0f);
	movss	-28(%rbp), %xmm0	 # af32[1], _2
	pxor	%xmm1, %xmm1	 # tmp114
	ucomiss	%xmm1, %xmm0	 # tmp114, _2
	jp	.L139	 #,
	pxor	%xmm1, %xmm1	 # tmp115
	ucomiss	%xmm1, %xmm0	 # tmp115, _2
	je	.L110	 #,
.L139:
 # ./test/pdsp_test.c:306:     PDSP_ASSERT(af32[1] == 0.0f);
	movl	$306, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp116
	movq	%rax, %rdx	 # tmp116,
	leaq	.LC3(%rip), %rax	 #, tmp117
	movq	%rax, %rcx	 # tmp117,
	call	printf	 #
.L110:
 # ./test/pdsp_test.c:307:     PDSP_ASSERT(af32[2] == 0.0f);
	movss	-24(%rbp), %xmm0	 # af32[2], _3
	pxor	%xmm1, %xmm1	 # tmp118
	ucomiss	%xmm1, %xmm0	 # tmp118, _3
	jp	.L140	 #,
	pxor	%xmm1, %xmm1	 # tmp119
	ucomiss	%xmm1, %xmm0	 # tmp119, _3
	je	.L112	 #,
.L140:
 # ./test/pdsp_test.c:307:     PDSP_ASSERT(af32[2] == 0.0f);
	movl	$307, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp120
	movq	%rax, %rdx	 # tmp120,
	leaq	.LC3(%rip), %rax	 #, tmp121
	movq	%rax, %rcx	 # tmp121,
	call	printf	 #
.L112:
 # ./test/pdsp_test.c:308:     PDSP_ASSERT(af32[3] == 0.0f);
	movss	-20(%rbp), %xmm0	 # af32[3], _4
	pxor	%xmm1, %xmm1	 # tmp122
	ucomiss	%xmm1, %xmm0	 # tmp122, _4
	jp	.L141	 #,
	pxor	%xmm1, %xmm1	 # tmp123
	ucomiss	%xmm1, %xmm0	 # tmp123, _4
	je	.L114	 #,
.L141:
 # ./test/pdsp_test.c:308:     PDSP_ASSERT(af32[3] == 0.0f);
	movl	$308, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp124
	movq	%rax, %rdx	 # tmp124,
	leaq	.LC3(%rip), %rax	 #, tmp125
	movq	%rax, %rcx	 # tmp125,
	call	printf	 #
.L114:
 # ./test/pdsp_test.c:309:     PDSP_ASSERT(af32[4] == 5.0f);
	movss	-16(%rbp), %xmm0	 # af32[4], _5
	ucomiss	.LC45(%rip), %xmm0	 #, _5
	jp	.L142	 #,
	ucomiss	.LC45(%rip), %xmm0	 #, _5
	je	.L116	 #,
.L142:
 # ./test/pdsp_test.c:309:     PDSP_ASSERT(af32[4] == 5.0f);
	movl	$309, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp126
	movq	%rax, %rdx	 # tmp126,
	leaq	.LC3(%rip), %rax	 #, tmp127
	movq	%rax, %rcx	 # tmp127,
	call	printf	 #
.L116:
 # ./test/pdsp_test.c:310:     PDSP_ASSERT(ai16[0] == 0);
	movzwl	-42(%rbp), %eax	 # ai16[0], _6
	testw	%ax, %ax	 # _6
	je	.L118	 #,
 # ./test/pdsp_test.c:310:     PDSP_ASSERT(ai16[0] == 0);
	movl	$310, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp128
	movq	%rax, %rdx	 # tmp128,
	leaq	.LC3(%rip), %rax	 #, tmp129
	movq	%rax, %rcx	 # tmp129,
	call	printf	 #
.L118:
 # ./test/pdsp_test.c:311:     PDSP_ASSERT(ai16[1] == 0);
	movzwl	-40(%rbp), %eax	 # ai16[1], _7
	testw	%ax, %ax	 # _7
	je	.L119	 #,
 # ./test/pdsp_test.c:311:     PDSP_ASSERT(ai16[1] == 0);
	movl	$311, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp130
	movq	%rax, %rdx	 # tmp130,
	leaq	.LC3(%rip), %rax	 #, tmp131
	movq	%rax, %rcx	 # tmp131,
	call	printf	 #
.L119:
 # ./test/pdsp_test.c:312:     PDSP_ASSERT(ai16[2] == 0);
	movzwl	-38(%rbp), %eax	 # ai16[2], _8
	testw	%ax, %ax	 # _8
	je	.L120	 #,
 # ./test/pdsp_test.c:312:     PDSP_ASSERT(ai16[2] == 0);
	movl	$312, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp132
	movq	%rax, %rdx	 # tmp132,
	leaq	.LC3(%rip), %rax	 #, tmp133
	movq	%rax, %rcx	 # tmp133,
	call	printf	 #
.L120:
 # ./test/pdsp_test.c:313:     PDSP_ASSERT(ai16[3] == 0);
	movzwl	-36(%rbp), %eax	 # ai16[3], _9
	testw	%ax, %ax	 # _9
	je	.L121	 #,
 # ./test/pdsp_test.c:313:     PDSP_ASSERT(ai16[3] == 0);
	movl	$313, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp134
	movq	%rax, %rdx	 # tmp134,
	leaq	.LC3(%rip), %rax	 #, tmp135
	movq	%rax, %rcx	 # tmp135,
	call	printf	 #
.L121:
 # ./test/pdsp_test.c:314:     PDSP_ASSERT(ai16[4] == 5);
	movzwl	-34(%rbp), %eax	 # ai16[4], _10
	cmpw	$5, %ax	 #, _10
	je	.L122	 #,
 # ./test/pdsp_test.c:314:     PDSP_ASSERT(ai16[4] == 5);
	movl	$314, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp136
	movq	%rax, %rdx	 # tmp136,
	leaq	.LC3(%rip), %rax	 #, tmp137
	movq	%rax, %rcx	 # tmp137,
	call	printf	 #
.L122:
 # ./test/pdsp_test.c:315:     pdsp_array_set_f32(af32, 4, 1.0f);
	leaq	-32(%rbp), %rax	 #, tmp138
	movss	.LC23(%rip), %xmm2	 #,
	movl	$4, %edx	 #,
	movq	%rax, %rcx	 # tmp138,
	call	pdsp_array_set_f32	 #
 # ./test/pdsp_test.c:316:     pdsp_array_set_i16(ai16, 4, 1);
	leaq	-42(%rbp), %rax	 #, tmp139
	movl	$1, %r8d	 #,
	movl	$4, %edx	 #,
	movq	%rax, %rcx	 # tmp139,
	call	pdsp_array_set_i16	 #
 # ./test/pdsp_test.c:317:     PDSP_ASSERT(af32[0] == 1.0f);
	movss	-32(%rbp), %xmm0	 # af32[0], _11
	movss	.LC23(%rip), %xmm1	 #, tmp140
	ucomiss	%xmm1, %xmm0	 # tmp140, _11
	jp	.L143	 #,
	movss	.LC23(%rip), %xmm1	 #, tmp141
	ucomiss	%xmm1, %xmm0	 # tmp141, _11
	je	.L123	 #,
.L143:
 # ./test/pdsp_test.c:317:     PDSP_ASSERT(af32[0] == 1.0f);
	movl	$317, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp142
	movq	%rax, %rdx	 # tmp142,
	leaq	.LC3(%rip), %rax	 #, tmp143
	movq	%rax, %rcx	 # tmp143,
	call	printf	 #
.L123:
 # ./test/pdsp_test.c:318:     PDSP_ASSERT(af32[1] == 1.0f);
	movss	-28(%rbp), %xmm0	 # af32[1], _12
	movss	.LC23(%rip), %xmm1	 #, tmp144
	ucomiss	%xmm1, %xmm0	 # tmp144, _12
	jp	.L144	 #,
	movss	.LC23(%rip), %xmm1	 #, tmp145
	ucomiss	%xmm1, %xmm0	 # tmp145, _12
	je	.L125	 #,
.L144:
 # ./test/pdsp_test.c:318:     PDSP_ASSERT(af32[1] == 1.0f);
	movl	$318, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp146
	movq	%rax, %rdx	 # tmp146,
	leaq	.LC3(%rip), %rax	 #, tmp147
	movq	%rax, %rcx	 # tmp147,
	call	printf	 #
.L125:
 # ./test/pdsp_test.c:319:     PDSP_ASSERT(af32[2] == 1.0f);
	movss	-24(%rbp), %xmm0	 # af32[2], _13
	movss	.LC23(%rip), %xmm1	 #, tmp148
	ucomiss	%xmm1, %xmm0	 # tmp148, _13
	jp	.L145	 #,
	movss	.LC23(%rip), %xmm1	 #, tmp149
	ucomiss	%xmm1, %xmm0	 # tmp149, _13
	je	.L127	 #,
.L145:
 # ./test/pdsp_test.c:319:     PDSP_ASSERT(af32[2] == 1.0f);
	movl	$319, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp150
	movq	%rax, %rdx	 # tmp150,
	leaq	.LC3(%rip), %rax	 #, tmp151
	movq	%rax, %rcx	 # tmp151,
	call	printf	 #
.L127:
 # ./test/pdsp_test.c:320:     PDSP_ASSERT(af32[3] == 1.0f);
	movss	-20(%rbp), %xmm0	 # af32[3], _14
	movss	.LC23(%rip), %xmm1	 #, tmp152
	ucomiss	%xmm1, %xmm0	 # tmp152, _14
	jp	.L146	 #,
	movss	.LC23(%rip), %xmm1	 #, tmp153
	ucomiss	%xmm1, %xmm0	 # tmp153, _14
	je	.L129	 #,
.L146:
 # ./test/pdsp_test.c:320:     PDSP_ASSERT(af32[3] == 1.0f);
	movl	$320, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp154
	movq	%rax, %rdx	 # tmp154,
	leaq	.LC3(%rip), %rax	 #, tmp155
	movq	%rax, %rcx	 # tmp155,
	call	printf	 #
.L129:
 # ./test/pdsp_test.c:321:     PDSP_ASSERT(af32[4] == 5.0f);
	movss	-16(%rbp), %xmm0	 # af32[4], _15
	ucomiss	.LC45(%rip), %xmm0	 #, _15
	jp	.L147	 #,
	ucomiss	.LC45(%rip), %xmm0	 #, _15
	je	.L131	 #,
.L147:
 # ./test/pdsp_test.c:321:     PDSP_ASSERT(af32[4] == 5.0f);
	movl	$321, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp156
	movq	%rax, %rdx	 # tmp156,
	leaq	.LC3(%rip), %rax	 #, tmp157
	movq	%rax, %rcx	 # tmp157,
	call	printf	 #
.L131:
 # ./test/pdsp_test.c:322:     PDSP_ASSERT(ai16[0] == 1);
	movzwl	-42(%rbp), %eax	 # ai16[0], _16
	cmpw	$1, %ax	 #, _16
	je	.L133	 #,
 # ./test/pdsp_test.c:322:     PDSP_ASSERT(ai16[0] == 1);
	movl	$322, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp158
	movq	%rax, %rdx	 # tmp158,
	leaq	.LC3(%rip), %rax	 #, tmp159
	movq	%rax, %rcx	 # tmp159,
	call	printf	 #
.L133:
 # ./test/pdsp_test.c:323:     PDSP_ASSERT(ai16[1] == 1);
	movzwl	-40(%rbp), %eax	 # ai16[1], _17
	cmpw	$1, %ax	 #, _17
	je	.L134	 #,
 # ./test/pdsp_test.c:323:     PDSP_ASSERT(ai16[1] == 1);
	movl	$323, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp160
	movq	%rax, %rdx	 # tmp160,
	leaq	.LC3(%rip), %rax	 #, tmp161
	movq	%rax, %rcx	 # tmp161,
	call	printf	 #
.L134:
 # ./test/pdsp_test.c:324:     PDSP_ASSERT(ai16[2] == 1);
	movzwl	-38(%rbp), %eax	 # ai16[2], _18
	cmpw	$1, %ax	 #, _18
	je	.L135	 #,
 # ./test/pdsp_test.c:324:     PDSP_ASSERT(ai16[2] == 1);
	movl	$324, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp162
	movq	%rax, %rdx	 # tmp162,
	leaq	.LC3(%rip), %rax	 #, tmp163
	movq	%rax, %rcx	 # tmp163,
	call	printf	 #
.L135:
 # ./test/pdsp_test.c:325:     PDSP_ASSERT(ai16[3] == 1);
	movzwl	-36(%rbp), %eax	 # ai16[3], _19
	cmpw	$1, %ax	 #, _19
	je	.L136	 #,
 # ./test/pdsp_test.c:325:     PDSP_ASSERT(ai16[3] == 1);
	movl	$325, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp164
	movq	%rax, %rdx	 # tmp164,
	leaq	.LC3(%rip), %rax	 #, tmp165
	movq	%rax, %rcx	 # tmp165,
	call	printf	 #
.L136:
 # ./test/pdsp_test.c:326:     PDSP_ASSERT(ai16[4] == 5);
	movzwl	-34(%rbp), %eax	 # ai16[4], _20
	cmpw	$5, %ax	 #, _20
	je	.L148	 #,
 # ./test/pdsp_test.c:326:     PDSP_ASSERT(ai16[4] == 5);
	movl	$326, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp166
	movq	%rax, %rdx	 # tmp166,
	leaq	.LC3(%rip), %rax	 #, tmp167
	movq	%rax, %rcx	 # tmp167,
	call	printf	 #
.L148:
 # ./test/pdsp_test.c:327: }
	nop	
	addq	$80, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	app_f32
	.def	app_f32;	.scl	2;	.type	32;	.endef
	.seh_proc	app_f32
app_f32:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movss	%xmm0, 16(%rbp)	 # in, in
 # ./test/pdsp_test.c:329: pdsp_f32_t app_f32(pdsp_f32_t in) { return in * 2.0f; }
	movss	16(%rbp), %xmm0	 # in, tmp84
	addss	%xmm0, %xmm0	 # tmp84, _2
 # ./test/pdsp_test.c:329: pdsp_f32_t app_f32(pdsp_f32_t in) { return in * 2.0f; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	app_i16
	.def	app_i16;	.scl	2;	.type	32;	.endef
	.seh_proc	app_i16
app_i16:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, %eax	 # in, tmp86
	movw	%ax, 16(%rbp)	 # tmp87, in
 # ./test/pdsp_test.c:330: pdsp_i16_t app_i16(pdsp_i16_t in) { return in * 2; }
	movzwl	16(%rbp), %eax	 # in, in.59_1
	addl	%eax, %eax	 # _2
 # ./test/pdsp_test.c:330: pdsp_i16_t app_i16(pdsp_i16_t in) { return in * 2; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC46:
	.ascii "-- void test_array_apply(void) --\12\0"
	.text
	.globl	test_array_apply
	.def	test_array_apply;	.scl	2;	.type	32;	.endef
	.seh_proc	test_array_apply
test_array_apply:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	addq	$-128, %rsp	 #,
	.seh_stackalloc	128
	.seh_endprologue
 # ./test/pdsp_test.c:334:     printf("-- void test_array_apply(void) --\n");
	leaq	.LC46(%rip), %rax	 #, tmp92
	movq	%rax, %rcx	 # tmp92,
	call	printf	 #
 # ./test/pdsp_test.c:335:     const pdsp_f32_t af32[5] = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f};
	movss	.LC23(%rip), %xmm0	 #, tmp93
	movss	%xmm0, -32(%rbp)	 # tmp93, af32[0]
	movss	.LC22(%rip), %xmm0	 #, tmp94
	movss	%xmm0, -28(%rbp)	 # tmp94, af32[1]
	movss	.LC30(%rip), %xmm0	 #, tmp95
	movss	%xmm0, -24(%rbp)	 # tmp95, af32[2]
	movss	.LC32(%rip), %xmm0	 #, tmp96
	movss	%xmm0, -20(%rbp)	 # tmp96, af32[3]
	movss	.LC45(%rip), %xmm0	 #, tmp97
	movss	%xmm0, -16(%rbp)	 # tmp97, af32[4]
 # ./test/pdsp_test.c:336:     pdsp_f32_t af32_out[5] = {0};
	pxor	%xmm0, %xmm0	 # tmp98
	movups	%xmm0, -64(%rbp)	 # tmp98, af32_out
	movd	%xmm0, -48(%rbp)	 # tmp98, af32_out
 # ./test/pdsp_test.c:337:     const pdsp_i16_t ai16[5] = {1, 2, 3, 4, 5};
	movw	$1, -74(%rbp)	 #, ai16[0]
	movw	$2, -72(%rbp)	 #, ai16[1]
	movw	$3, -70(%rbp)	 #, ai16[2]
	movw	$4, -68(%rbp)	 #, ai16[3]
	movw	$5, -66(%rbp)	 #, ai16[4]
 # ./test/pdsp_test.c:338:     pdsp_i16_t ai16_out[5] = {0};
	movq	$0, -84(%rbp)	 #, ai16_out
	movw	$0, -76(%rbp)	 #, ai16_out
 # ./test/pdsp_test.c:339:     pdsp_array_apply_f32(af32, af32_out, 4, app_f32);
	leaq	-64(%rbp), %rdx	 #, tmp99
	leaq	-32(%rbp), %rax	 #, tmp100
	leaq	app_f32(%rip), %r9	 #,
	movl	$4, %r8d	 #,
	movq	%rax, %rcx	 # tmp100,
	call	pdsp_array_apply_f32	 #
 # ./test/pdsp_test.c:340:     pdsp_array_apply_i16(ai16, ai16_out, 4, app_i16);
	leaq	-84(%rbp), %rdx	 #, tmp101
	leaq	-74(%rbp), %rax	 #, tmp102
	leaq	app_i16(%rip), %r9	 #,
	movl	$4, %r8d	 #,
	movq	%rax, %rcx	 # tmp102,
	call	pdsp_array_apply_i16	 #
 # ./test/pdsp_test.c:341:     PDSP_ASSERT(af32_out[0] == 2.0f);
	movss	-64(%rbp), %xmm0	 # af32_out[0], _1
	ucomiss	.LC22(%rip), %xmm0	 #, _1
	jp	.L174	 #,
	ucomiss	.LC22(%rip), %xmm0	 #, _1
	je	.L154	 #,
.L174:
 # ./test/pdsp_test.c:341:     PDSP_ASSERT(af32_out[0] == 2.0f);
	movl	$341, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp103
	movq	%rax, %rdx	 # tmp103,
	leaq	.LC3(%rip), %rax	 #, tmp104
	movq	%rax, %rcx	 # tmp104,
	call	printf	 #
.L154:
 # ./test/pdsp_test.c:342:     PDSP_ASSERT(af32_out[1] == 4.0f);
	movss	-60(%rbp), %xmm0	 # af32_out[1], _2
	ucomiss	.LC32(%rip), %xmm0	 #, _2
	jp	.L175	 #,
	ucomiss	.LC32(%rip), %xmm0	 #, _2
	je	.L156	 #,
.L175:
 # ./test/pdsp_test.c:342:     PDSP_ASSERT(af32_out[1] == 4.0f);
	movl	$342, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp105
	movq	%rax, %rdx	 # tmp105,
	leaq	.LC3(%rip), %rax	 #, tmp106
	movq	%rax, %rcx	 # tmp106,
	call	printf	 #
.L156:
 # ./test/pdsp_test.c:343:     PDSP_ASSERT(af32_out[2] == 6.0f);
	movss	-56(%rbp), %xmm0	 # af32_out[2], _3
	ucomiss	.LC47(%rip), %xmm0	 #, _3
	jp	.L176	 #,
	ucomiss	.LC47(%rip), %xmm0	 #, _3
	je	.L158	 #,
.L176:
 # ./test/pdsp_test.c:343:     PDSP_ASSERT(af32_out[2] == 6.0f);
	movl	$343, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp107
	movq	%rax, %rdx	 # tmp107,
	leaq	.LC3(%rip), %rax	 #, tmp108
	movq	%rax, %rcx	 # tmp108,
	call	printf	 #
.L158:
 # ./test/pdsp_test.c:344:     PDSP_ASSERT(af32_out[3] == 8.0f);
	movss	-52(%rbp), %xmm0	 # af32_out[3], _4
	ucomiss	.LC48(%rip), %xmm0	 #, _4
	jp	.L177	 #,
	ucomiss	.LC48(%rip), %xmm0	 #, _4
	je	.L160	 #,
.L177:
 # ./test/pdsp_test.c:344:     PDSP_ASSERT(af32_out[3] == 8.0f);
	movl	$344, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp109
	movq	%rax, %rdx	 # tmp109,
	leaq	.LC3(%rip), %rax	 #, tmp110
	movq	%rax, %rcx	 # tmp110,
	call	printf	 #
.L160:
 # ./test/pdsp_test.c:345:     PDSP_ASSERT(af32_out[4] == 0.0f);
	movss	-48(%rbp), %xmm0	 # af32_out[4], _5
	pxor	%xmm1, %xmm1	 # tmp111
	ucomiss	%xmm1, %xmm0	 # tmp111, _5
	jp	.L178	 #,
	pxor	%xmm1, %xmm1	 # tmp112
	ucomiss	%xmm1, %xmm0	 # tmp112, _5
	je	.L162	 #,
.L178:
 # ./test/pdsp_test.c:345:     PDSP_ASSERT(af32_out[4] == 0.0f);
	movl	$345, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp113
	movq	%rax, %rdx	 # tmp113,
	leaq	.LC3(%rip), %rax	 #, tmp114
	movq	%rax, %rcx	 # tmp114,
	call	printf	 #
.L162:
 # ./test/pdsp_test.c:346:     PDSP_ASSERT(af32_out[0] == 2);
	movss	-64(%rbp), %xmm0	 # af32_out[0], _6
	ucomiss	.LC22(%rip), %xmm0	 #, _6
	jp	.L179	 #,
	ucomiss	.LC22(%rip), %xmm0	 #, _6
	je	.L164	 #,
.L179:
 # ./test/pdsp_test.c:346:     PDSP_ASSERT(af32_out[0] == 2);
	movl	$346, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp115
	movq	%rax, %rdx	 # tmp115,
	leaq	.LC3(%rip), %rax	 #, tmp116
	movq	%rax, %rcx	 # tmp116,
	call	printf	 #
.L164:
 # ./test/pdsp_test.c:347:     PDSP_ASSERT(af32_out[1] == 4);
	movss	-60(%rbp), %xmm0	 # af32_out[1], _7
	ucomiss	.LC32(%rip), %xmm0	 #, _7
	jp	.L180	 #,
	ucomiss	.LC32(%rip), %xmm0	 #, _7
	je	.L166	 #,
.L180:
 # ./test/pdsp_test.c:347:     PDSP_ASSERT(af32_out[1] == 4);
	movl	$347, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp117
	movq	%rax, %rdx	 # tmp117,
	leaq	.LC3(%rip), %rax	 #, tmp118
	movq	%rax, %rcx	 # tmp118,
	call	printf	 #
.L166:
 # ./test/pdsp_test.c:348:     PDSP_ASSERT(af32_out[2] == 6);
	movss	-56(%rbp), %xmm0	 # af32_out[2], _8
	ucomiss	.LC47(%rip), %xmm0	 #, _8
	jp	.L181	 #,
	ucomiss	.LC47(%rip), %xmm0	 #, _8
	je	.L168	 #,
.L181:
 # ./test/pdsp_test.c:348:     PDSP_ASSERT(af32_out[2] == 6);
	movl	$348, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp119
	movq	%rax, %rdx	 # tmp119,
	leaq	.LC3(%rip), %rax	 #, tmp120
	movq	%rax, %rcx	 # tmp120,
	call	printf	 #
.L168:
 # ./test/pdsp_test.c:349:     PDSP_ASSERT(af32_out[3] == 8);
	movss	-52(%rbp), %xmm0	 # af32_out[3], _9
	ucomiss	.LC48(%rip), %xmm0	 #, _9
	jp	.L182	 #,
	ucomiss	.LC48(%rip), %xmm0	 #, _9
	je	.L170	 #,
.L182:
 # ./test/pdsp_test.c:349:     PDSP_ASSERT(af32_out[3] == 8);
	movl	$349, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp121
	movq	%rax, %rdx	 # tmp121,
	leaq	.LC3(%rip), %rax	 #, tmp122
	movq	%rax, %rcx	 # tmp122,
	call	printf	 #
.L170:
 # ./test/pdsp_test.c:350:     PDSP_ASSERT(af32_out[4] == 0);
	movss	-48(%rbp), %xmm0	 # af32_out[4], _10
	pxor	%xmm1, %xmm1	 # tmp123
	ucomiss	%xmm1, %xmm0	 # tmp123, _10
	jp	.L183	 #,
	pxor	%xmm1, %xmm1	 # tmp124
	ucomiss	%xmm1, %xmm0	 # tmp124, _10
	je	.L184	 #,
.L183:
 # ./test/pdsp_test.c:350:     PDSP_ASSERT(af32_out[4] == 0);
	movl	$350, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp125
	movq	%rax, %rdx	 # tmp125,
	leaq	.LC3(%rip), %rax	 #, tmp126
	movq	%rax, %rcx	 # tmp126,
	call	printf	 #
.L184:
 # ./test/pdsp_test.c:351: }
	nop	
	subq	$-128, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC49:
	.ascii "-- void test_array_linlogspace(void) --\12\0"
	.text
	.globl	test_array_linlogspace
	.def	test_array_linlogspace;	.scl	2;	.type	32;	.endef
	.seh_proc	test_array_linlogspace
test_array_linlogspace:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$64, %rsp	 #,
	.seh_stackalloc	64
	.seh_endprologue
 # ./test/pdsp_test.c:355:     printf("-- void test_array_linlogspace(void) --\n");
	leaq	.LC49(%rip), %rax	 #, tmp97
	movq	%rax, %rcx	 # tmp97,
	call	printf	 #
 # ./test/pdsp_test.c:356:     pdsp_f32_t af32_out[5] = {0};
	pxor	%xmm0, %xmm0	 # tmp98
	movups	%xmm0, -32(%rbp)	 # tmp98, af32_out
	movd	%xmm0, -16(%rbp)	 # tmp98, af32_out
 # ./test/pdsp_test.c:357:     pdsp_array_linspace_f32(af32_out, 4, 10.0f, 40.0f);
	leaq	-32(%rbp), %rax	 #, tmp99
	movss	.LC50(%rip), %xmm3	 #,
	movss	.LC28(%rip), %xmm2	 #,
	movl	$4, %edx	 #,
	movq	%rax, %rcx	 # tmp99,
	call	pdsp_array_linspace_f32	 #
 # ./test/pdsp_test.c:358:     PDSP_ASSERT(af32_out[0] == 10.0f);
	movss	-32(%rbp), %xmm0	 # af32_out[0], _1
	ucomiss	.LC28(%rip), %xmm0	 #, _1
	jp	.L216	 #,
	ucomiss	.LC28(%rip), %xmm0	 #, _1
	je	.L186	 #,
.L216:
 # ./test/pdsp_test.c:358:     PDSP_ASSERT(af32_out[0] == 10.0f);
	movl	$358, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp100
	movq	%rax, %rdx	 # tmp100,
	leaq	.LC3(%rip), %rax	 #, tmp101
	movq	%rax, %rcx	 # tmp101,
	call	printf	 #
.L186:
 # ./test/pdsp_test.c:359:     PDSP_ASSERT(af32_out[1] == 20.0f);
	movss	-28(%rbp), %xmm0	 # af32_out[1], _2
	ucomiss	.LC51(%rip), %xmm0	 #, _2
	jp	.L217	 #,
	ucomiss	.LC51(%rip), %xmm0	 #, _2
	je	.L188	 #,
.L217:
 # ./test/pdsp_test.c:359:     PDSP_ASSERT(af32_out[1] == 20.0f);
	movl	$359, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp102
	movq	%rax, %rdx	 # tmp102,
	leaq	.LC3(%rip), %rax	 #, tmp103
	movq	%rax, %rcx	 # tmp103,
	call	printf	 #
.L188:
 # ./test/pdsp_test.c:360:     PDSP_ASSERT(af32_out[2] == 30.0f);
	movss	-24(%rbp), %xmm0	 # af32_out[2], _3
	ucomiss	.LC52(%rip), %xmm0	 #, _3
	jp	.L218	 #,
	ucomiss	.LC52(%rip), %xmm0	 #, _3
	je	.L190	 #,
.L218:
 # ./test/pdsp_test.c:360:     PDSP_ASSERT(af32_out[2] == 30.0f);
	movl	$360, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp104
	movq	%rax, %rdx	 # tmp104,
	leaq	.LC3(%rip), %rax	 #, tmp105
	movq	%rax, %rcx	 # tmp105,
	call	printf	 #
.L190:
 # ./test/pdsp_test.c:361:     PDSP_ASSERT(af32_out[3] == 40.0f);
	movss	-20(%rbp), %xmm0	 # af32_out[3], _4
	ucomiss	.LC50(%rip), %xmm0	 #, _4
	jp	.L219	 #,
	ucomiss	.LC50(%rip), %xmm0	 #, _4
	je	.L192	 #,
.L219:
 # ./test/pdsp_test.c:361:     PDSP_ASSERT(af32_out[3] == 40.0f);
	movl	$361, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp106
	movq	%rax, %rdx	 # tmp106,
	leaq	.LC3(%rip), %rax	 #, tmp107
	movq	%rax, %rcx	 # tmp107,
	call	printf	 #
.L192:
 # ./test/pdsp_test.c:362:     PDSP_ASSERT(af32_out[4] == 0.0f);
	movss	-16(%rbp), %xmm0	 # af32_out[4], _5
	pxor	%xmm1, %xmm1	 # tmp108
	ucomiss	%xmm1, %xmm0	 # tmp108, _5
	jp	.L220	 #,
	pxor	%xmm1, %xmm1	 # tmp109
	ucomiss	%xmm1, %xmm0	 # tmp109, _5
	je	.L194	 #,
.L220:
 # ./test/pdsp_test.c:362:     PDSP_ASSERT(af32_out[4] == 0.0f);
	movl	$362, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp110
	movq	%rax, %rdx	 # tmp110,
	leaq	.LC3(%rip), %rax	 #, tmp111
	movq	%rax, %rcx	 # tmp111,
	call	printf	 #
.L194:
 # ./test/pdsp_test.c:363:     pdsp_array_linspace_f32(af32_out, 5, 10.0f, 50.0f);
	leaq	-32(%rbp), %rax	 #, tmp112
	movss	.LC53(%rip), %xmm3	 #,
	movss	.LC28(%rip), %xmm2	 #,
	movl	$5, %edx	 #,
	movq	%rax, %rcx	 # tmp112,
	call	pdsp_array_linspace_f32	 #
 # ./test/pdsp_test.c:364:     PDSP_ASSERT(af32_out[0] == 10.0f);
	movss	-32(%rbp), %xmm0	 # af32_out[0], _6
	ucomiss	.LC28(%rip), %xmm0	 #, _6
	jp	.L221	 #,
	ucomiss	.LC28(%rip), %xmm0	 #, _6
	je	.L196	 #,
.L221:
 # ./test/pdsp_test.c:364:     PDSP_ASSERT(af32_out[0] == 10.0f);
	movl	$364, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp113
	movq	%rax, %rdx	 # tmp113,
	leaq	.LC3(%rip), %rax	 #, tmp114
	movq	%rax, %rcx	 # tmp114,
	call	printf	 #
.L196:
 # ./test/pdsp_test.c:365:     PDSP_ASSERT(af32_out[1] == 20.0f);
	movss	-28(%rbp), %xmm0	 # af32_out[1], _7
	ucomiss	.LC51(%rip), %xmm0	 #, _7
	jp	.L222	 #,
	ucomiss	.LC51(%rip), %xmm0	 #, _7
	je	.L198	 #,
.L222:
 # ./test/pdsp_test.c:365:     PDSP_ASSERT(af32_out[1] == 20.0f);
	movl	$365, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp115
	movq	%rax, %rdx	 # tmp115,
	leaq	.LC3(%rip), %rax	 #, tmp116
	movq	%rax, %rcx	 # tmp116,
	call	printf	 #
.L198:
 # ./test/pdsp_test.c:366:     PDSP_ASSERT(af32_out[2] == 30.0f);
	movss	-24(%rbp), %xmm0	 # af32_out[2], _8
	ucomiss	.LC52(%rip), %xmm0	 #, _8
	jp	.L223	 #,
	ucomiss	.LC52(%rip), %xmm0	 #, _8
	je	.L200	 #,
.L223:
 # ./test/pdsp_test.c:366:     PDSP_ASSERT(af32_out[2] == 30.0f);
	movl	$366, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp117
	movq	%rax, %rdx	 # tmp117,
	leaq	.LC3(%rip), %rax	 #, tmp118
	movq	%rax, %rcx	 # tmp118,
	call	printf	 #
.L200:
 # ./test/pdsp_test.c:367:     PDSP_ASSERT(af32_out[3] == 40.0f);
	movss	-20(%rbp), %xmm0	 # af32_out[3], _9
	ucomiss	.LC50(%rip), %xmm0	 #, _9
	jp	.L224	 #,
	ucomiss	.LC50(%rip), %xmm0	 #, _9
	je	.L202	 #,
.L224:
 # ./test/pdsp_test.c:367:     PDSP_ASSERT(af32_out[3] == 40.0f);
	movl	$367, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp119
	movq	%rax, %rdx	 # tmp119,
	leaq	.LC3(%rip), %rax	 #, tmp120
	movq	%rax, %rcx	 # tmp120,
	call	printf	 #
.L202:
 # ./test/pdsp_test.c:368:     PDSP_ASSERT(af32_out[4] == 50.0f);
	movss	-16(%rbp), %xmm0	 # af32_out[4], _10
	ucomiss	.LC53(%rip), %xmm0	 #, _10
	jp	.L225	 #,
	ucomiss	.LC53(%rip), %xmm0	 #, _10
	je	.L204	 #,
.L225:
 # ./test/pdsp_test.c:368:     PDSP_ASSERT(af32_out[4] == 50.0f);
	movl	$368, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp121
	movq	%rax, %rdx	 # tmp121,
	leaq	.LC3(%rip), %rax	 #, tmp122
	movq	%rax, %rcx	 # tmp122,
	call	printf	 #
.L204:
 # ./test/pdsp_test.c:369:     pdsp_array_logspace_f32(af32_out, 5, 1.0f, 2.0f);
	leaq	-32(%rbp), %rax	 #, tmp123
	movss	.LC22(%rip), %xmm3	 #,
	movss	.LC23(%rip), %xmm2	 #,
	movl	$5, %edx	 #,
	movq	%rax, %rcx	 # tmp123,
	call	pdsp_array_logspace_f32	 #
 # ./test/pdsp_test.c:370:     PDSP_ASSERT(af32_out[0] == powf(10.0f, 1.0f));
	movss	-32(%rbp), %xmm0	 # af32_out[0], _11
	ucomiss	.LC28(%rip), %xmm0	 #, _11
	jp	.L226	 #,
	ucomiss	.LC28(%rip), %xmm0	 #, _11
	je	.L206	 #,
.L226:
 # ./test/pdsp_test.c:370:     PDSP_ASSERT(af32_out[0] == powf(10.0f, 1.0f));
	movl	$370, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp124
	movq	%rax, %rdx	 # tmp124,
	leaq	.LC3(%rip), %rax	 #, tmp125
	movq	%rax, %rcx	 # tmp125,
	call	printf	 #
.L206:
 # ./test/pdsp_test.c:371:     PDSP_ASSERT(af32_out[1] == powf(10.0f, 1.25f));
	movss	-28(%rbp), %xmm0	 # af32_out[1], _12
	ucomiss	.LC54(%rip), %xmm0	 #, _12
	jp	.L227	 #,
	ucomiss	.LC54(%rip), %xmm0	 #, _12
	je	.L208	 #,
.L227:
 # ./test/pdsp_test.c:371:     PDSP_ASSERT(af32_out[1] == powf(10.0f, 1.25f));
	movl	$371, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp126
	movq	%rax, %rdx	 # tmp126,
	leaq	.LC3(%rip), %rax	 #, tmp127
	movq	%rax, %rcx	 # tmp127,
	call	printf	 #
.L208:
 # ./test/pdsp_test.c:372:     PDSP_ASSERT(af32_out[2] == powf(10.0f, 1.5f));
	movss	-24(%rbp), %xmm0	 # af32_out[2], _13
	ucomiss	.LC55(%rip), %xmm0	 #, _13
	jp	.L228	 #,
	ucomiss	.LC55(%rip), %xmm0	 #, _13
	je	.L210	 #,
.L228:
 # ./test/pdsp_test.c:372:     PDSP_ASSERT(af32_out[2] == powf(10.0f, 1.5f));
	movl	$372, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp128
	movq	%rax, %rdx	 # tmp128,
	leaq	.LC3(%rip), %rax	 #, tmp129
	movq	%rax, %rcx	 # tmp129,
	call	printf	 #
.L210:
 # ./test/pdsp_test.c:373:     PDSP_ASSERT(af32_out[3] == powf(10.0f, 1.75f));
	movss	-20(%rbp), %xmm0	 # af32_out[3], _14
	ucomiss	.LC56(%rip), %xmm0	 #, _14
	jp	.L229	 #,
	ucomiss	.LC56(%rip), %xmm0	 #, _14
	je	.L212	 #,
.L229:
 # ./test/pdsp_test.c:373:     PDSP_ASSERT(af32_out[3] == powf(10.0f, 1.75f));
	movl	$373, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp130
	movq	%rax, %rdx	 # tmp130,
	leaq	.LC3(%rip), %rax	 #, tmp131
	movq	%rax, %rcx	 # tmp131,
	call	printf	 #
.L212:
 # ./test/pdsp_test.c:374:     PDSP_ASSERT(af32_out[4] == powf(10.0f, 2.0f));
	movss	-16(%rbp), %xmm0	 # af32_out[4], _15
	ucomiss	.LC57(%rip), %xmm0	 #, _15
	jp	.L230	 #,
	ucomiss	.LC57(%rip), %xmm0	 #, _15
	je	.L231	 #,
.L230:
 # ./test/pdsp_test.c:374:     PDSP_ASSERT(af32_out[4] == powf(10.0f, 2.0f));
	movl	$374, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp132
	movq	%rax, %rdx	 # tmp132,
	leaq	.LC3(%rip), %rax	 #, tmp133
	movq	%rax, %rcx	 # tmp133,
	call	printf	 #
.L231:
 # ./test/pdsp_test.c:375: }
	nop	
	addq	$64, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC58:
	.ascii "-- void test_hysteresis_value(void) --\12\0"
	.text
	.globl	test_hysteresis_value
	.def	test_hysteresis_value;	.scl	2;	.type	32;	.endef
	.seh_proc	test_hysteresis_value
test_hysteresis_value:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$64, %rsp	 #,
	.seh_stackalloc	64
	.seh_endprologue
 # ./test/pdsp_test.c:379:     printf("-- void test_hysteresis_value(void) --\n");
	leaq	.LC58(%rip), %rax	 #, tmp140
	movq	%rax, %rcx	 # tmp140,
	call	printf	 #
 # ./test/pdsp_test.c:380:     pdsp_hyst_t hyst = {.b_state = 0, .f32_low = -1.0f, .f32_high = 1.0f};
	movb	$0, -12(%rbp)	 #, hyst.b_state
	movss	.LC26(%rip), %xmm0	 #, tmp141
	movss	%xmm0, -8(%rbp)	 # tmp141, hyst.f32_low
	movss	.LC23(%rip), %xmm0	 #, tmp142
	movss	%xmm0, -4(%rbp)	 # tmp142, hyst.f32_high
 # ./test/pdsp_test.c:381:     pdsp_hysteresis_value_clear(&hyst);
	leaq	-12(%rbp), %rax	 #, tmp143
	movq	%rax, %rcx	 # tmp143,
	call	pdsp_hysteresis_value_clear	 #
 # ./test/pdsp_test.c:382:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, -2.0f) == PDSP_FALSE);
	leaq	-12(%rbp), %rax	 #, tmp144
	movss	.LC33(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp144,
	call	pdsp_hysteresis_value	 #
 # ./test/pdsp_test.c:382:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, -2.0f) == PDSP_FALSE);
	testb	%al, %al	 # _1
	je	.L233	 #,
	movl	$382, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp145
	movq	%rax, %rdx	 # tmp145,
	leaq	.LC3(%rip), %rax	 #, tmp146
	movq	%rax, %rcx	 # tmp146,
	call	printf	 #
.L233:
 # ./test/pdsp_test.c:383:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, -2.0f) == PDSP_FALSE);
	leaq	-12(%rbp), %rax	 #, tmp147
	movss	.LC33(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp147,
	call	pdsp_hysteresis_value	 #
 # ./test/pdsp_test.c:383:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, -2.0f) == PDSP_FALSE);
	testb	%al, %al	 # _2
	je	.L234	 #,
	movl	$383, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp148
	movq	%rax, %rdx	 # tmp148,
	leaq	.LC3(%rip), %rax	 #, tmp149
	movq	%rax, %rcx	 # tmp149,
	call	printf	 #
.L234:
 # ./test/pdsp_test.c:384:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, -1.0f) == PDSP_FALSE);
	leaq	-12(%rbp), %rax	 #, tmp150
	movss	.LC26(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp150,
	call	pdsp_hysteresis_value	 #
 # ./test/pdsp_test.c:384:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, -1.0f) == PDSP_FALSE);
	testb	%al, %al	 # _3
	je	.L235	 #,
	movl	$384, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp151
	movq	%rax, %rdx	 # tmp151,
	leaq	.LC3(%rip), %rax	 #, tmp152
	movq	%rax, %rcx	 # tmp152,
	call	printf	 #
.L235:
 # ./test/pdsp_test.c:385:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, 0.0f) == PDSP_FALSE);
	leaq	-12(%rbp), %rax	 #, tmp153
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp153,
	call	pdsp_hysteresis_value	 #
 # ./test/pdsp_test.c:385:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, 0.0f) == PDSP_FALSE);
	testb	%al, %al	 # _4
	je	.L236	 #,
	movl	$385, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp154
	movq	%rax, %rdx	 # tmp154,
	leaq	.LC3(%rip), %rax	 #, tmp155
	movq	%rax, %rcx	 # tmp155,
	call	printf	 #
.L236:
 # ./test/pdsp_test.c:386:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, 1.0f) == PDSP_FALSE);
	leaq	-12(%rbp), %rax	 #, tmp156
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp156,
	call	pdsp_hysteresis_value	 #
 # ./test/pdsp_test.c:386:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, 1.0f) == PDSP_FALSE);
	testb	%al, %al	 # _5
	je	.L237	 #,
	movl	$386, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp157
	movq	%rax, %rdx	 # tmp157,
	leaq	.LC3(%rip), %rax	 #, tmp158
	movq	%rax, %rcx	 # tmp158,
	call	printf	 #
.L237:
 # ./test/pdsp_test.c:387:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, 2.0f) == PDSP_TRUE);
	leaq	-12(%rbp), %rax	 #, tmp159
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp159,
	call	pdsp_hysteresis_value	 #
 # ./test/pdsp_test.c:387:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, 2.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _7
	testb	%al, %al	 # _7
	je	.L238	 #,
	movl	$387, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp160
	movq	%rax, %rdx	 # tmp160,
	leaq	.LC3(%rip), %rax	 #, tmp161
	movq	%rax, %rcx	 # tmp161,
	call	printf	 #
.L238:
 # ./test/pdsp_test.c:388:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, 2.0f) == PDSP_TRUE);
	leaq	-12(%rbp), %rax	 #, tmp162
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp162,
	call	pdsp_hysteresis_value	 #
 # ./test/pdsp_test.c:388:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, 2.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _9
	testb	%al, %al	 # _9
	je	.L239	 #,
	movl	$388, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp163
	movq	%rax, %rdx	 # tmp163,
	leaq	.LC3(%rip), %rax	 #, tmp164
	movq	%rax, %rcx	 # tmp164,
	call	printf	 #
.L239:
 # ./test/pdsp_test.c:389:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, 1.0f) == PDSP_TRUE);
	leaq	-12(%rbp), %rax	 #, tmp165
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp165,
	call	pdsp_hysteresis_value	 #
 # ./test/pdsp_test.c:389:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, 1.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _11
	testb	%al, %al	 # _11
	je	.L240	 #,
	movl	$389, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp166
	movq	%rax, %rdx	 # tmp166,
	leaq	.LC3(%rip), %rax	 #, tmp167
	movq	%rax, %rcx	 # tmp167,
	call	printf	 #
.L240:
 # ./test/pdsp_test.c:390:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, 0.0f) == PDSP_TRUE);
	leaq	-12(%rbp), %rax	 #, tmp168
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp168,
	call	pdsp_hysteresis_value	 #
 # ./test/pdsp_test.c:390:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, 0.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _13
	testb	%al, %al	 # _13
	je	.L241	 #,
	movl	$390, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp169
	movq	%rax, %rdx	 # tmp169,
	leaq	.LC3(%rip), %rax	 #, tmp170
	movq	%rax, %rcx	 # tmp170,
	call	printf	 #
.L241:
 # ./test/pdsp_test.c:391:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, -1.0f) == PDSP_TRUE);
	leaq	-12(%rbp), %rax	 #, tmp171
	movss	.LC26(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp171,
	call	pdsp_hysteresis_value	 #
 # ./test/pdsp_test.c:391:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, -1.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _15
	testb	%al, %al	 # _15
	je	.L242	 #,
	movl	$391, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp172
	movq	%rax, %rdx	 # tmp172,
	leaq	.LC3(%rip), %rax	 #, tmp173
	movq	%rax, %rcx	 # tmp173,
	call	printf	 #
.L242:
 # ./test/pdsp_test.c:392:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, -2.0f) == PDSP_FALSE);
	leaq	-12(%rbp), %rax	 #, tmp174
	movss	.LC33(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp174,
	call	pdsp_hysteresis_value	 #
 # ./test/pdsp_test.c:392:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, -2.0f) == PDSP_FALSE);
	testb	%al, %al	 # _16
	je	.L243	 #,
	movl	$392, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp175
	movq	%rax, %rdx	 # tmp175,
	leaq	.LC3(%rip), %rax	 #, tmp176
	movq	%rax, %rcx	 # tmp176,
	call	printf	 #
.L243:
 # ./test/pdsp_test.c:393:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, -2.0f) == PDSP_FALSE);
	leaq	-12(%rbp), %rax	 #, tmp177
	movss	.LC33(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp177,
	call	pdsp_hysteresis_value	 #
 # ./test/pdsp_test.c:393:     PDSP_ASSERT(pdsp_hysteresis_value(&hyst, -2.0f) == PDSP_FALSE);
	testb	%al, %al	 # _17
	je	.L244	 #,
	movl	$393, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp178
	movq	%rax, %rdx	 # tmp178,
	leaq	.LC3(%rip), %rax	 #, tmp179
	movq	%rax, %rcx	 # tmp179,
	call	printf	 #
.L244:
 # ./test/pdsp_test.c:395:     pdsp_macro_hyst_t mhyst = {
	movb	$0, -24(%rbp)	 #, mhyst.b_state
	movss	.LC26(%rip), %xmm0	 #, tmp180
	movss	%xmm0, -20(%rbp)	 # tmp180, mhyst.f32_low
	movss	.LC23(%rip), %xmm0	 #, tmp181
	movss	%xmm0, -16(%rbp)	 # tmp181, mhyst.f32_high
 # ./test/pdsp_test.c:397:     pdsp_macro_hysteresis_value_run(mhyst, -2.0f);
	movss	-16(%rbp), %xmm1	 # mhyst.f32_high, _18
	movss	.LC33(%rip), %xmm0	 #, tmp182
	comiss	%xmm1, %xmm0	 # _18, tmp182
	jbe	.L329	 #,
 # ./test/pdsp_test.c:397:     pdsp_macro_hysteresis_value_run(mhyst, -2.0f);
	movb	$1, -24(%rbp)	 #, mhyst.b_state
	jmp	.L247	 #
.L329:
 # ./test/pdsp_test.c:397:     pdsp_macro_hysteresis_value_run(mhyst, -2.0f);
	movss	-20(%rbp), %xmm0	 # mhyst.f32_low, _19
	comiss	.LC33(%rip), %xmm0	 #, _19
	jbe	.L247	 #,
 # ./test/pdsp_test.c:397:     pdsp_macro_hysteresis_value_run(mhyst, -2.0f);
	movb	$0, -24(%rbp)	 #, mhyst.b_state
.L247:
 # ./test/pdsp_test.c:398:     PDSP_ASSERT(mhyst.b_state == PDSP_FALSE);
	movzbl	-24(%rbp), %eax	 # mhyst.b_state, _20
	testb	%al, %al	 # _20
	je	.L249	 #,
 # ./test/pdsp_test.c:398:     PDSP_ASSERT(mhyst.b_state == PDSP_FALSE);
	movl	$398, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp183
	movq	%rax, %rdx	 # tmp183,
	leaq	.LC3(%rip), %rax	 #, tmp184
	movq	%rax, %rcx	 # tmp184,
	call	printf	 #
.L249:
 # ./test/pdsp_test.c:399:     pdsp_macro_hysteresis_value_run(mhyst, -2.0f);
	movss	-16(%rbp), %xmm1	 # mhyst.f32_high, _21
	movss	.LC33(%rip), %xmm0	 #, tmp185
	comiss	%xmm1, %xmm0	 # _21, tmp185
	jbe	.L330	 #,
 # ./test/pdsp_test.c:399:     pdsp_macro_hysteresis_value_run(mhyst, -2.0f);
	movb	$1, -24(%rbp)	 #, mhyst.b_state
	jmp	.L252	 #
.L330:
 # ./test/pdsp_test.c:399:     pdsp_macro_hysteresis_value_run(mhyst, -2.0f);
	movss	-20(%rbp), %xmm0	 # mhyst.f32_low, _22
	comiss	.LC33(%rip), %xmm0	 #, _22
	jbe	.L252	 #,
 # ./test/pdsp_test.c:399:     pdsp_macro_hysteresis_value_run(mhyst, -2.0f);
	movb	$0, -24(%rbp)	 #, mhyst.b_state
.L252:
 # ./test/pdsp_test.c:400:     PDSP_ASSERT(mhyst.b_state == PDSP_FALSE);
	movzbl	-24(%rbp), %eax	 # mhyst.b_state, _23
	testb	%al, %al	 # _23
	je	.L254	 #,
 # ./test/pdsp_test.c:400:     PDSP_ASSERT(mhyst.b_state == PDSP_FALSE);
	movl	$400, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp186
	movq	%rax, %rdx	 # tmp186,
	leaq	.LC3(%rip), %rax	 #, tmp187
	movq	%rax, %rcx	 # tmp187,
	call	printf	 #
.L254:
 # ./test/pdsp_test.c:401:     pdsp_macro_hysteresis_value_run(mhyst, -1.0f);
	movss	-16(%rbp), %xmm1	 # mhyst.f32_high, _24
	movss	.LC26(%rip), %xmm0	 #, tmp188
	comiss	%xmm1, %xmm0	 # _24, tmp188
	jbe	.L331	 #,
 # ./test/pdsp_test.c:401:     pdsp_macro_hysteresis_value_run(mhyst, -1.0f);
	movb	$1, -24(%rbp)	 #, mhyst.b_state
	jmp	.L257	 #
.L331:
 # ./test/pdsp_test.c:401:     pdsp_macro_hysteresis_value_run(mhyst, -1.0f);
	movss	-20(%rbp), %xmm0	 # mhyst.f32_low, _25
	movss	.LC26(%rip), %xmm1	 #, tmp189
	comiss	%xmm1, %xmm0	 # tmp189, _25
	jbe	.L257	 #,
 # ./test/pdsp_test.c:401:     pdsp_macro_hysteresis_value_run(mhyst, -1.0f);
	movb	$0, -24(%rbp)	 #, mhyst.b_state
.L257:
 # ./test/pdsp_test.c:402:     PDSP_ASSERT(mhyst.b_state == PDSP_FALSE);
	movzbl	-24(%rbp), %eax	 # mhyst.b_state, _26
	testb	%al, %al	 # _26
	je	.L259	 #,
 # ./test/pdsp_test.c:402:     PDSP_ASSERT(mhyst.b_state == PDSP_FALSE);
	movl	$402, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp190
	movq	%rax, %rdx	 # tmp190,
	leaq	.LC3(%rip), %rax	 #, tmp191
	movq	%rax, %rcx	 # tmp191,
	call	printf	 #
.L259:
 # ./test/pdsp_test.c:403:     pdsp_macro_hysteresis_value_run(mhyst, 0.0f);
	movss	-16(%rbp), %xmm1	 # mhyst.f32_high, _27
	pxor	%xmm0, %xmm0	 # tmp192
	comiss	%xmm1, %xmm0	 # _27, tmp192
	jbe	.L332	 #,
 # ./test/pdsp_test.c:403:     pdsp_macro_hysteresis_value_run(mhyst, 0.0f);
	movb	$1, -24(%rbp)	 #, mhyst.b_state
	jmp	.L262	 #
.L332:
 # ./test/pdsp_test.c:403:     pdsp_macro_hysteresis_value_run(mhyst, 0.0f);
	movss	-20(%rbp), %xmm0	 # mhyst.f32_low, _28
	pxor	%xmm1, %xmm1	 # tmp193
	comiss	%xmm1, %xmm0	 # tmp193, _28
	jbe	.L262	 #,
 # ./test/pdsp_test.c:403:     pdsp_macro_hysteresis_value_run(mhyst, 0.0f);
	movb	$0, -24(%rbp)	 #, mhyst.b_state
.L262:
 # ./test/pdsp_test.c:404:     PDSP_ASSERT(mhyst.b_state == PDSP_FALSE);
	movzbl	-24(%rbp), %eax	 # mhyst.b_state, _29
	testb	%al, %al	 # _29
	je	.L264	 #,
 # ./test/pdsp_test.c:404:     PDSP_ASSERT(mhyst.b_state == PDSP_FALSE);
	movl	$404, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp194
	movq	%rax, %rdx	 # tmp194,
	leaq	.LC3(%rip), %rax	 #, tmp195
	movq	%rax, %rcx	 # tmp195,
	call	printf	 #
.L264:
 # ./test/pdsp_test.c:405:     pdsp_macro_hysteresis_value_run(mhyst, 1.0f);
	movss	-16(%rbp), %xmm1	 # mhyst.f32_high, _30
	movss	.LC23(%rip), %xmm0	 #, tmp196
	comiss	%xmm1, %xmm0	 # _30, tmp196
	jbe	.L333	 #,
 # ./test/pdsp_test.c:405:     pdsp_macro_hysteresis_value_run(mhyst, 1.0f);
	movb	$1, -24(%rbp)	 #, mhyst.b_state
	jmp	.L267	 #
.L333:
 # ./test/pdsp_test.c:405:     pdsp_macro_hysteresis_value_run(mhyst, 1.0f);
	movss	-20(%rbp), %xmm0	 # mhyst.f32_low, _31
	movss	.LC23(%rip), %xmm1	 #, tmp197
	comiss	%xmm1, %xmm0	 # tmp197, _31
	jbe	.L267	 #,
 # ./test/pdsp_test.c:405:     pdsp_macro_hysteresis_value_run(mhyst, 1.0f);
	movb	$0, -24(%rbp)	 #, mhyst.b_state
.L267:
 # ./test/pdsp_test.c:406:     PDSP_ASSERT(mhyst.b_state == PDSP_FALSE);
	movzbl	-24(%rbp), %eax	 # mhyst.b_state, _32
	testb	%al, %al	 # _32
	je	.L269	 #,
 # ./test/pdsp_test.c:406:     PDSP_ASSERT(mhyst.b_state == PDSP_FALSE);
	movl	$406, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp198
	movq	%rax, %rdx	 # tmp198,
	leaq	.LC3(%rip), %rax	 #, tmp199
	movq	%rax, %rcx	 # tmp199,
	call	printf	 #
.L269:
 # ./test/pdsp_test.c:407:     pdsp_macro_hysteresis_value_run(mhyst, 2.0f);
	movss	-16(%rbp), %xmm1	 # mhyst.f32_high, _33
	movss	.LC22(%rip), %xmm0	 #, tmp200
	comiss	%xmm1, %xmm0	 # _33, tmp200
	jbe	.L334	 #,
 # ./test/pdsp_test.c:407:     pdsp_macro_hysteresis_value_run(mhyst, 2.0f);
	movb	$1, -24(%rbp)	 #, mhyst.b_state
	jmp	.L272	 #
.L334:
 # ./test/pdsp_test.c:407:     pdsp_macro_hysteresis_value_run(mhyst, 2.0f);
	movss	-20(%rbp), %xmm0	 # mhyst.f32_low, _34
	comiss	.LC22(%rip), %xmm0	 #, _34
	jbe	.L272	 #,
 # ./test/pdsp_test.c:407:     pdsp_macro_hysteresis_value_run(mhyst, 2.0f);
	movb	$0, -24(%rbp)	 #, mhyst.b_state
.L272:
 # ./test/pdsp_test.c:408:     PDSP_ASSERT(mhyst.b_state == PDSP_TRUE);
	movzbl	-24(%rbp), %eax	 # mhyst.b_state, _35
	xorl	$1, %eax	 #, _36
	testb	%al, %al	 # _36
	je	.L274	 #,
 # ./test/pdsp_test.c:408:     PDSP_ASSERT(mhyst.b_state == PDSP_TRUE);
	movl	$408, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp201
	movq	%rax, %rdx	 # tmp201,
	leaq	.LC3(%rip), %rax	 #, tmp202
	movq	%rax, %rcx	 # tmp202,
	call	printf	 #
.L274:
 # ./test/pdsp_test.c:409:     pdsp_macro_hysteresis_value_run(mhyst, 2.0f);
	movss	-16(%rbp), %xmm1	 # mhyst.f32_high, _37
	movss	.LC22(%rip), %xmm0	 #, tmp203
	comiss	%xmm1, %xmm0	 # _37, tmp203
	jbe	.L335	 #,
 # ./test/pdsp_test.c:409:     pdsp_macro_hysteresis_value_run(mhyst, 2.0f);
	movb	$1, -24(%rbp)	 #, mhyst.b_state
	jmp	.L277	 #
.L335:
 # ./test/pdsp_test.c:409:     pdsp_macro_hysteresis_value_run(mhyst, 2.0f);
	movss	-20(%rbp), %xmm0	 # mhyst.f32_low, _38
	comiss	.LC22(%rip), %xmm0	 #, _38
	jbe	.L277	 #,
 # ./test/pdsp_test.c:409:     pdsp_macro_hysteresis_value_run(mhyst, 2.0f);
	movb	$0, -24(%rbp)	 #, mhyst.b_state
.L277:
 # ./test/pdsp_test.c:410:     PDSP_ASSERT(mhyst.b_state == PDSP_TRUE);
	movzbl	-24(%rbp), %eax	 # mhyst.b_state, _39
	xorl	$1, %eax	 #, _40
	testb	%al, %al	 # _40
	je	.L279	 #,
 # ./test/pdsp_test.c:410:     PDSP_ASSERT(mhyst.b_state == PDSP_TRUE);
	movl	$410, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp204
	movq	%rax, %rdx	 # tmp204,
	leaq	.LC3(%rip), %rax	 #, tmp205
	movq	%rax, %rcx	 # tmp205,
	call	printf	 #
.L279:
 # ./test/pdsp_test.c:411:     pdsp_macro_hysteresis_value_run(mhyst, 1.0f);
	movss	-16(%rbp), %xmm1	 # mhyst.f32_high, _41
	movss	.LC23(%rip), %xmm0	 #, tmp206
	comiss	%xmm1, %xmm0	 # _41, tmp206
	jbe	.L336	 #,
 # ./test/pdsp_test.c:411:     pdsp_macro_hysteresis_value_run(mhyst, 1.0f);
	movb	$1, -24(%rbp)	 #, mhyst.b_state
	jmp	.L282	 #
.L336:
 # ./test/pdsp_test.c:411:     pdsp_macro_hysteresis_value_run(mhyst, 1.0f);
	movss	-20(%rbp), %xmm0	 # mhyst.f32_low, _42
	movss	.LC23(%rip), %xmm1	 #, tmp207
	comiss	%xmm1, %xmm0	 # tmp207, _42
	jbe	.L282	 #,
 # ./test/pdsp_test.c:411:     pdsp_macro_hysteresis_value_run(mhyst, 1.0f);
	movb	$0, -24(%rbp)	 #, mhyst.b_state
.L282:
 # ./test/pdsp_test.c:412:     PDSP_ASSERT(mhyst.b_state == PDSP_TRUE);
	movzbl	-24(%rbp), %eax	 # mhyst.b_state, _43
	xorl	$1, %eax	 #, _44
	testb	%al, %al	 # _44
	je	.L284	 #,
 # ./test/pdsp_test.c:412:     PDSP_ASSERT(mhyst.b_state == PDSP_TRUE);
	movl	$412, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp208
	movq	%rax, %rdx	 # tmp208,
	leaq	.LC3(%rip), %rax	 #, tmp209
	movq	%rax, %rcx	 # tmp209,
	call	printf	 #
.L284:
 # ./test/pdsp_test.c:413:     pdsp_macro_hysteresis_value_run(mhyst, 0.0f);
	movss	-16(%rbp), %xmm1	 # mhyst.f32_high, _45
	pxor	%xmm0, %xmm0	 # tmp210
	comiss	%xmm1, %xmm0	 # _45, tmp210
	jbe	.L337	 #,
 # ./test/pdsp_test.c:413:     pdsp_macro_hysteresis_value_run(mhyst, 0.0f);
	movb	$1, -24(%rbp)	 #, mhyst.b_state
	jmp	.L287	 #
.L337:
 # ./test/pdsp_test.c:413:     pdsp_macro_hysteresis_value_run(mhyst, 0.0f);
	movss	-20(%rbp), %xmm0	 # mhyst.f32_low, _46
	pxor	%xmm1, %xmm1	 # tmp211
	comiss	%xmm1, %xmm0	 # tmp211, _46
	jbe	.L287	 #,
 # ./test/pdsp_test.c:413:     pdsp_macro_hysteresis_value_run(mhyst, 0.0f);
	movb	$0, -24(%rbp)	 #, mhyst.b_state
.L287:
 # ./test/pdsp_test.c:414:     PDSP_ASSERT(mhyst.b_state == PDSP_TRUE);
	movzbl	-24(%rbp), %eax	 # mhyst.b_state, _47
	xorl	$1, %eax	 #, _48
	testb	%al, %al	 # _48
	je	.L289	 #,
 # ./test/pdsp_test.c:414:     PDSP_ASSERT(mhyst.b_state == PDSP_TRUE);
	movl	$414, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp212
	movq	%rax, %rdx	 # tmp212,
	leaq	.LC3(%rip), %rax	 #, tmp213
	movq	%rax, %rcx	 # tmp213,
	call	printf	 #
.L289:
 # ./test/pdsp_test.c:415:     pdsp_macro_hysteresis_value_run(mhyst, -1.0f);
	movss	-16(%rbp), %xmm1	 # mhyst.f32_high, _49
	movss	.LC26(%rip), %xmm0	 #, tmp214
	comiss	%xmm1, %xmm0	 # _49, tmp214
	jbe	.L338	 #,
 # ./test/pdsp_test.c:415:     pdsp_macro_hysteresis_value_run(mhyst, -1.0f);
	movb	$1, -24(%rbp)	 #, mhyst.b_state
	jmp	.L292	 #
.L338:
 # ./test/pdsp_test.c:415:     pdsp_macro_hysteresis_value_run(mhyst, -1.0f);
	movss	-20(%rbp), %xmm0	 # mhyst.f32_low, _50
	movss	.LC26(%rip), %xmm1	 #, tmp215
	comiss	%xmm1, %xmm0	 # tmp215, _50
	jbe	.L292	 #,
 # ./test/pdsp_test.c:415:     pdsp_macro_hysteresis_value_run(mhyst, -1.0f);
	movb	$0, -24(%rbp)	 #, mhyst.b_state
.L292:
 # ./test/pdsp_test.c:416:     PDSP_ASSERT(mhyst.b_state == PDSP_TRUE);
	movzbl	-24(%rbp), %eax	 # mhyst.b_state, _51
	xorl	$1, %eax	 #, _52
	testb	%al, %al	 # _52
	je	.L294	 #,
 # ./test/pdsp_test.c:416:     PDSP_ASSERT(mhyst.b_state == PDSP_TRUE);
	movl	$416, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp216
	movq	%rax, %rdx	 # tmp216,
	leaq	.LC3(%rip), %rax	 #, tmp217
	movq	%rax, %rcx	 # tmp217,
	call	printf	 #
.L294:
 # ./test/pdsp_test.c:417:     pdsp_macro_hysteresis_value_run(mhyst, -2.0f);
	movss	-16(%rbp), %xmm1	 # mhyst.f32_high, _53
	movss	.LC33(%rip), %xmm0	 #, tmp218
	comiss	%xmm1, %xmm0	 # _53, tmp218
	jbe	.L339	 #,
 # ./test/pdsp_test.c:417:     pdsp_macro_hysteresis_value_run(mhyst, -2.0f);
	movb	$1, -24(%rbp)	 #, mhyst.b_state
	jmp	.L297	 #
.L339:
 # ./test/pdsp_test.c:417:     pdsp_macro_hysteresis_value_run(mhyst, -2.0f);
	movss	-20(%rbp), %xmm0	 # mhyst.f32_low, _54
	comiss	.LC33(%rip), %xmm0	 #, _54
	jbe	.L297	 #,
 # ./test/pdsp_test.c:417:     pdsp_macro_hysteresis_value_run(mhyst, -2.0f);
	movb	$0, -24(%rbp)	 #, mhyst.b_state
.L297:
 # ./test/pdsp_test.c:418:     PDSP_ASSERT(mhyst.b_state == PDSP_FALSE);
	movzbl	-24(%rbp), %eax	 # mhyst.b_state, _55
	testb	%al, %al	 # _55
	je	.L299	 #,
 # ./test/pdsp_test.c:418:     PDSP_ASSERT(mhyst.b_state == PDSP_FALSE);
	movl	$418, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp219
	movq	%rax, %rdx	 # tmp219,
	leaq	.LC3(%rip), %rax	 #, tmp220
	movq	%rax, %rcx	 # tmp220,
	call	printf	 #
.L299:
 # ./test/pdsp_test.c:419:     pdsp_macro_hysteresis_value_run(mhyst, -2.0f);
	movss	-16(%rbp), %xmm1	 # mhyst.f32_high, _56
	movss	.LC33(%rip), %xmm0	 #, tmp221
	comiss	%xmm1, %xmm0	 # _56, tmp221
	jbe	.L340	 #,
 # ./test/pdsp_test.c:419:     pdsp_macro_hysteresis_value_run(mhyst, -2.0f);
	movb	$1, -24(%rbp)	 #, mhyst.b_state
	jmp	.L302	 #
.L340:
 # ./test/pdsp_test.c:419:     pdsp_macro_hysteresis_value_run(mhyst, -2.0f);
	movss	-20(%rbp), %xmm0	 # mhyst.f32_low, _57
	comiss	.LC33(%rip), %xmm0	 #, _57
	jbe	.L302	 #,
 # ./test/pdsp_test.c:419:     pdsp_macro_hysteresis_value_run(mhyst, -2.0f);
	movb	$0, -24(%rbp)	 #, mhyst.b_state
.L302:
 # ./test/pdsp_test.c:420:     PDSP_ASSERT(mhyst.b_state == PDSP_FALSE);
	movzbl	-24(%rbp), %eax	 # mhyst.b_state, _58
	testb	%al, %al	 # _58
	je	.L341	 #,
 # ./test/pdsp_test.c:420:     PDSP_ASSERT(mhyst.b_state == PDSP_FALSE);
	movl	$420, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp222
	movq	%rax, %rdx	 # tmp222,
	leaq	.LC3(%rip), %rax	 #, tmp223
	movq	%rax, %rcx	 # tmp223,
	call	printf	 #
.L341:
 # ./test/pdsp_test.c:421: }
	nop	
	addq	$64, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC59:
	.ascii "-- void test_hysteresis_list(void) --\12\0"
	.text
	.globl	test_hysteresis_list
	.def	test_hysteresis_list;	.scl	2;	.type	32;	.endef
	.seh_proc	test_hysteresis_list
test_hysteresis_list:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$96, %rsp	 #,
	.seh_stackalloc	96
	.seh_endprologue
 # ./test/pdsp_test.c:425:     printf("-- void test_hysteresis_list(void) --\n");
	leaq	.LC59(%rip), %rax	 #, tmp97
	movq	%rax, %rcx	 # tmp97,
	call	printf	 #
 # ./test/pdsp_test.c:426:     pdsp_f32_t af32_hyst_dn[4] = {0.0f, 0.8f, 1.8f, 2.8f};
	pxor	%xmm0, %xmm0	 # tmp98
	movss	%xmm0, -16(%rbp)	 # tmp98, af32_hyst_dn[0]
	movss	.LC60(%rip), %xmm0	 #, tmp99
	movss	%xmm0, -12(%rbp)	 # tmp99, af32_hyst_dn[1]
	movss	.LC61(%rip), %xmm0	 #, tmp100
	movss	%xmm0, -8(%rbp)	 # tmp100, af32_hyst_dn[2]
	movss	.LC62(%rip), %xmm0	 #, tmp101
	movss	%xmm0, -4(%rbp)	 # tmp101, af32_hyst_dn[3]
 # ./test/pdsp_test.c:427:     pdsp_f32_t af32_hyst_up[4] = {1.2f, 2.2f, 3.2f, 4.0f};
	movss	.LC63(%rip), %xmm0	 #, tmp102
	movss	%xmm0, -32(%rbp)	 # tmp102, af32_hyst_up[0]
	movss	.LC64(%rip), %xmm0	 #, tmp103
	movss	%xmm0, -28(%rbp)	 # tmp103, af32_hyst_up[1]
	movss	.LC65(%rip), %xmm0	 #, tmp104
	movss	%xmm0, -24(%rbp)	 # tmp104, af32_hyst_up[2]
	movss	.LC32(%rip), %xmm0	 #, tmp105
	movss	%xmm0, -20(%rbp)	 # tmp105, af32_hyst_up[3]
 # ./test/pdsp_test.c:428:     pdsp_hyst_list_t hyst = {.u16_state = 0,
	movw	$0, -64(%rbp)	 #, hyst.u16_state
	leaq	-32(%rbp), %rax	 #, tmp106
	movq	%rax, -56(%rbp)	 # tmp106, hyst.af32_thres_up
	leaq	-16(%rbp), %rax	 #, tmp107
	movq	%rax, -48(%rbp)	 # tmp107, hyst.af32_thres_dn
	movw	$4, -40(%rbp)	 #, hyst.u16_size
 # ./test/pdsp_test.c:432:     pdsp_hysteresis_list_clear(&hyst);
	leaq	-64(%rbp), %rax	 #, tmp108
	movq	%rax, %rcx	 # tmp108,
	call	pdsp_hysteresis_list_clear	 #
 # ./test/pdsp_test.c:433:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 0.0f) == 0U);
	leaq	-64(%rbp), %rax	 #, tmp109
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp109,
	call	pdsp_hysteresis_list	 #
 # ./test/pdsp_test.c:433:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 0.0f) == 0U);
	testw	%ax, %ax	 # _1
	je	.L343	 #,
	movl	$433, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp110
	movq	%rax, %rdx	 # tmp110,
	leaq	.LC3(%rip), %rax	 #, tmp111
	movq	%rax, %rcx	 # tmp111,
	call	printf	 #
.L343:
 # ./test/pdsp_test.c:434:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 1.0f) == 0U);
	leaq	-64(%rbp), %rax	 #, tmp112
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp112,
	call	pdsp_hysteresis_list	 #
 # ./test/pdsp_test.c:434:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 1.0f) == 0U);
	testw	%ax, %ax	 # _2
	je	.L344	 #,
	movl	$434, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp113
	movq	%rax, %rdx	 # tmp113,
	leaq	.LC3(%rip), %rax	 #, tmp114
	movq	%rax, %rcx	 # tmp114,
	call	printf	 #
.L344:
 # ./test/pdsp_test.c:435:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 1.3f) == 1U);
	leaq	-64(%rbp), %rax	 #, tmp115
	movss	.LC66(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp115,
	call	pdsp_hysteresis_list	 #
 # ./test/pdsp_test.c:435:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 1.3f) == 1U);
	cmpw	$1, %ax	 #, _3
	je	.L345	 #,
	movl	$435, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp116
	movq	%rax, %rdx	 # tmp116,
	leaq	.LC3(%rip), %rax	 #, tmp117
	movq	%rax, %rcx	 # tmp117,
	call	printf	 #
.L345:
 # ./test/pdsp_test.c:436:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 1.0f) == 1U);
	leaq	-64(%rbp), %rax	 #, tmp118
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp118,
	call	pdsp_hysteresis_list	 #
 # ./test/pdsp_test.c:436:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 1.0f) == 1U);
	cmpw	$1, %ax	 #, _4
	je	.L346	 #,
	movl	$436, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp119
	movq	%rax, %rdx	 # tmp119,
	leaq	.LC3(%rip), %rax	 #, tmp120
	movq	%rax, %rcx	 # tmp120,
	call	printf	 #
.L346:
 # ./test/pdsp_test.c:437:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 2.0f) == 1U);
	leaq	-64(%rbp), %rax	 #, tmp121
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp121,
	call	pdsp_hysteresis_list	 #
 # ./test/pdsp_test.c:437:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 2.0f) == 1U);
	cmpw	$1, %ax	 #, _5
	je	.L347	 #,
	movl	$437, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp122
	movq	%rax, %rdx	 # tmp122,
	leaq	.LC3(%rip), %rax	 #, tmp123
	movq	%rax, %rcx	 # tmp123,
	call	printf	 #
.L347:
 # ./test/pdsp_test.c:438:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 2.3f) == 2U);
	leaq	-64(%rbp), %rax	 #, tmp124
	movss	.LC67(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp124,
	call	pdsp_hysteresis_list	 #
 # ./test/pdsp_test.c:438:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 2.3f) == 2U);
	cmpw	$2, %ax	 #, _6
	je	.L348	 #,
	movl	$438, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp125
	movq	%rax, %rdx	 # tmp125,
	leaq	.LC3(%rip), %rax	 #, tmp126
	movq	%rax, %rcx	 # tmp126,
	call	printf	 #
.L348:
 # ./test/pdsp_test.c:439:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 4.0f) == 2U);
	leaq	-64(%rbp), %rax	 #, tmp127
	movss	.LC32(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp127,
	call	pdsp_hysteresis_list	 #
 # ./test/pdsp_test.c:439:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 4.0f) == 2U);
	cmpw	$2, %ax	 #, _7
	je	.L349	 #,
	movl	$439, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp128
	movq	%rax, %rdx	 # tmp128,
	leaq	.LC3(%rip), %rax	 #, tmp129
	movq	%rax, %rcx	 # tmp129,
	call	printf	 #
.L349:
 # ./test/pdsp_test.c:440:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 0.0f) == 1U);
	leaq	-64(%rbp), %rax	 #, tmp130
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp130,
	call	pdsp_hysteresis_list	 #
 # ./test/pdsp_test.c:440:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 0.0f) == 1U);
	cmpw	$1, %ax	 #, _8
	je	.L350	 #,
	movl	$440, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp131
	movq	%rax, %rdx	 # tmp131,
	leaq	.LC3(%rip), %rax	 #, tmp132
	movq	%rax, %rcx	 # tmp132,
	call	printf	 #
.L350:
 # ./test/pdsp_test.c:441:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 0.0f) == 0U);
	leaq	-64(%rbp), %rax	 #, tmp133
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp133,
	call	pdsp_hysteresis_list	 #
 # ./test/pdsp_test.c:441:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 0.0f) == 0U);
	testw	%ax, %ax	 # _9
	je	.L351	 #,
	movl	$441, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp134
	movq	%rax, %rdx	 # tmp134,
	leaq	.LC3(%rip), %rax	 #, tmp135
	movq	%rax, %rcx	 # tmp135,
	call	printf	 #
.L351:
 # ./test/pdsp_test.c:442:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 1.3f) == 1U);
	leaq	-64(%rbp), %rax	 #, tmp136
	movss	.LC66(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp136,
	call	pdsp_hysteresis_list	 #
 # ./test/pdsp_test.c:442:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 1.3f) == 1U);
	cmpw	$1, %ax	 #, _10
	je	.L352	 #,
	movl	$442, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp137
	movq	%rax, %rdx	 # tmp137,
	leaq	.LC3(%rip), %rax	 #, tmp138
	movq	%rax, %rcx	 # tmp138,
	call	printf	 #
.L352:
 # ./test/pdsp_test.c:443:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 0.7f) == 0U);
	leaq	-64(%rbp), %rax	 #, tmp139
	movss	.LC68(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp139,
	call	pdsp_hysteresis_list	 #
 # ./test/pdsp_test.c:443:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 0.7f) == 0U);
	testw	%ax, %ax	 # _11
	je	.L353	 #,
	movl	$443, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp140
	movq	%rax, %rdx	 # tmp140,
	leaq	.LC3(%rip), %rax	 #, tmp141
	movq	%rax, %rcx	 # tmp141,
	call	printf	 #
.L353:
 # ./test/pdsp_test.c:444:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 10.0f) == 1U);
	leaq	-64(%rbp), %rax	 #, tmp142
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp142,
	call	pdsp_hysteresis_list	 #
 # ./test/pdsp_test.c:444:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 10.0f) == 1U);
	cmpw	$1, %ax	 #, _12
	je	.L354	 #,
	movl	$444, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp143
	movq	%rax, %rdx	 # tmp143,
	leaq	.LC3(%rip), %rax	 #, tmp144
	movq	%rax, %rcx	 # tmp144,
	call	printf	 #
.L354:
 # ./test/pdsp_test.c:445:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 10.0f) == 2U);
	leaq	-64(%rbp), %rax	 #, tmp145
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp145,
	call	pdsp_hysteresis_list	 #
 # ./test/pdsp_test.c:445:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 10.0f) == 2U);
	cmpw	$2, %ax	 #, _13
	je	.L355	 #,
	movl	$445, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp146
	movq	%rax, %rdx	 # tmp146,
	leaq	.LC3(%rip), %rax	 #, tmp147
	movq	%rax, %rcx	 # tmp147,
	call	printf	 #
.L355:
 # ./test/pdsp_test.c:446:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 10.0f) == 2U);
	leaq	-64(%rbp), %rax	 #, tmp148
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp148,
	call	pdsp_hysteresis_list	 #
 # ./test/pdsp_test.c:446:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 10.0f) == 2U);
	cmpw	$2, %ax	 #, _14
	je	.L356	 #,
	movl	$446, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp149
	movq	%rax, %rdx	 # tmp149,
	leaq	.LC3(%rip), %rax	 #, tmp150
	movq	%rax, %rcx	 # tmp150,
	call	printf	 #
.L356:
 # ./test/pdsp_test.c:447:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 1.7f) == 1U);
	leaq	-64(%rbp), %rax	 #, tmp151
	movss	.LC69(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp151,
	call	pdsp_hysteresis_list	 #
 # ./test/pdsp_test.c:447:     PDSP_ASSERT(pdsp_hysteresis_list(&hyst, 1.7f) == 1U);
	cmpw	$1, %ax	 #, _15
	je	.L358	 #,
	movl	$447, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp152
	movq	%rax, %rdx	 # tmp152,
	leaq	.LC3(%rip), %rax	 #, tmp153
	movq	%rax, %rcx	 # tmp153,
	call	printf	 #
.L358:
 # ./test/pdsp_test.c:448: }
	nop	
	addq	$96, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC70:
	.ascii "-- void test_debounce(void) --\12\0"
	.text
	.globl	test_debounce
	.def	test_debounce;	.scl	2;	.type	32;	.endef
	.seh_proc	test_debounce
test_debounce:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$80, %rsp	 #,
	.seh_stackalloc	80
	.seh_endprologue
 # ./test/pdsp_test.c:452:     printf("-- void test_debounce(void) --\n");
	leaq	.LC70(%rip), %rax	 #, tmp208
	movq	%rax, %rcx	 # tmp208,
	call	printf	 #
 # ./test/pdsp_test.c:453:     pdsp_debounce_t hyst = {.b_state = 0,
	movb	$0, -32(%rbp)	 #, hyst.b_state
	pxor	%xmm0, %xmm0	 # tmp209
	movss	%xmm0, -28(%rbp)	 # tmp209, hyst.f32_time
	movss	.LC23(%rip), %xmm0	 #, tmp210
	movss	%xmm0, -24(%rbp)	 # tmp210, hyst.f32_t_step
	movss	.LC22(%rip), %xmm0	 #, tmp211
	movss	%xmm0, -20(%rbp)	 # tmp211, hyst.f32_t_high
	movss	.LC22(%rip), %xmm0	 #, tmp212
	movss	%xmm0, -16(%rbp)	 # tmp212, hyst.f32_t_low
 # ./test/pdsp_test.c:458:     pdsp_debounce_clear(&hyst);
	leaq	-32(%rbp), %rax	 #, tmp213
	movq	%rax, %rcx	 # tmp213,
	call	pdsp_debounce_clear	 #
 # ./test/pdsp_test.c:459:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_FALSE) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp214
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp214,
	call	pdsp_debounce	 #
 # ./test/pdsp_test.c:459:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_FALSE) == PDSP_FALSE);
	testb	%al, %al	 # _1
	je	.L360	 #,
	movl	$459, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp215
	movq	%rax, %rdx	 # tmp215,
	leaq	.LC3(%rip), %rax	 #, tmp216
	movq	%rax, %rcx	 # tmp216,
	call	printf	 #
.L360:
 # ./test/pdsp_test.c:460:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_FALSE) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp217
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp217,
	call	pdsp_debounce	 #
 # ./test/pdsp_test.c:460:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_FALSE) == PDSP_FALSE);
	testb	%al, %al	 # _2
	je	.L361	 #,
	movl	$460, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp218
	movq	%rax, %rdx	 # tmp218,
	leaq	.LC3(%rip), %rax	 #, tmp219
	movq	%rax, %rcx	 # tmp219,
	call	printf	 #
.L361:
 # ./test/pdsp_test.c:461:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_TRUE) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp220
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp220,
	call	pdsp_debounce	 #
 # ./test/pdsp_test.c:461:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_TRUE) == PDSP_FALSE);
	testb	%al, %al	 # _3
	je	.L362	 #,
	movl	$461, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp221
	movq	%rax, %rdx	 # tmp221,
	leaq	.LC3(%rip), %rax	 #, tmp222
	movq	%rax, %rcx	 # tmp222,
	call	printf	 #
.L362:
 # ./test/pdsp_test.c:462:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_TRUE) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp223
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp223,
	call	pdsp_debounce	 #
 # ./test/pdsp_test.c:462:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_TRUE) == PDSP_FALSE);
	testb	%al, %al	 # _4
	je	.L363	 #,
	movl	$462, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp224
	movq	%rax, %rdx	 # tmp224,
	leaq	.LC3(%rip), %rax	 #, tmp225
	movq	%rax, %rcx	 # tmp225,
	call	printf	 #
.L363:
 # ./test/pdsp_test.c:463:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_TRUE) == PDSP_TRUE);
	leaq	-32(%rbp), %rax	 #, tmp226
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp226,
	call	pdsp_debounce	 #
 # ./test/pdsp_test.c:463:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_TRUE) == PDSP_TRUE);
	xorl	$1, %eax	 #, _6
	testb	%al, %al	 # _6
	je	.L364	 #,
	movl	$463, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp227
	movq	%rax, %rdx	 # tmp227,
	leaq	.LC3(%rip), %rax	 #, tmp228
	movq	%rax, %rcx	 # tmp228,
	call	printf	 #
.L364:
 # ./test/pdsp_test.c:464:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_TRUE) == PDSP_TRUE);
	leaq	-32(%rbp), %rax	 #, tmp229
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp229,
	call	pdsp_debounce	 #
 # ./test/pdsp_test.c:464:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_TRUE) == PDSP_TRUE);
	xorl	$1, %eax	 #, _8
	testb	%al, %al	 # _8
	je	.L365	 #,
	movl	$464, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp230
	movq	%rax, %rdx	 # tmp230,
	leaq	.LC3(%rip), %rax	 #, tmp231
	movq	%rax, %rcx	 # tmp231,
	call	printf	 #
.L365:
 # ./test/pdsp_test.c:465:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_FALSE) == PDSP_TRUE);
	leaq	-32(%rbp), %rax	 #, tmp232
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp232,
	call	pdsp_debounce	 #
 # ./test/pdsp_test.c:465:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_FALSE) == PDSP_TRUE);
	xorl	$1, %eax	 #, _10
	testb	%al, %al	 # _10
	je	.L366	 #,
	movl	$465, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp233
	movq	%rax, %rdx	 # tmp233,
	leaq	.LC3(%rip), %rax	 #, tmp234
	movq	%rax, %rcx	 # tmp234,
	call	printf	 #
.L366:
 # ./test/pdsp_test.c:466:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_FALSE) == PDSP_TRUE);
	leaq	-32(%rbp), %rax	 #, tmp235
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp235,
	call	pdsp_debounce	 #
 # ./test/pdsp_test.c:466:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_FALSE) == PDSP_TRUE);
	xorl	$1, %eax	 #, _12
	testb	%al, %al	 # _12
	je	.L367	 #,
	movl	$466, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp236
	movq	%rax, %rdx	 # tmp236,
	leaq	.LC3(%rip), %rax	 #, tmp237
	movq	%rax, %rcx	 # tmp237,
	call	printf	 #
.L367:
 # ./test/pdsp_test.c:467:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_FALSE) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp238
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp238,
	call	pdsp_debounce	 #
 # ./test/pdsp_test.c:467:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_FALSE) == PDSP_FALSE);
	testb	%al, %al	 # _13
	je	.L368	 #,
	movl	$467, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp239
	movq	%rax, %rdx	 # tmp239,
	leaq	.LC3(%rip), %rax	 #, tmp240
	movq	%rax, %rcx	 # tmp240,
	call	printf	 #
.L368:
 # ./test/pdsp_test.c:468:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_FALSE) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp241
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp241,
	call	pdsp_debounce	 #
 # ./test/pdsp_test.c:468:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_FALSE) == PDSP_FALSE);
	testb	%al, %al	 # _14
	je	.L369	 #,
	movl	$468, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp242
	movq	%rax, %rdx	 # tmp242,
	leaq	.LC3(%rip), %rax	 #, tmp243
	movq	%rax, %rcx	 # tmp243,
	call	printf	 #
.L369:
 # ./test/pdsp_test.c:469:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_TRUE) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp244
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp244,
	call	pdsp_debounce	 #
 # ./test/pdsp_test.c:469:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_TRUE) == PDSP_FALSE);
	testb	%al, %al	 # _15
	je	.L370	 #,
	movl	$469, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp245
	movq	%rax, %rdx	 # tmp245,
	leaq	.LC3(%rip), %rax	 #, tmp246
	movq	%rax, %rcx	 # tmp246,
	call	printf	 #
.L370:
 # ./test/pdsp_test.c:470:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_TRUE) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp247
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp247,
	call	pdsp_debounce	 #
 # ./test/pdsp_test.c:470:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_TRUE) == PDSP_FALSE);
	testb	%al, %al	 # _16
	je	.L371	 #,
	movl	$470, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp248
	movq	%rax, %rdx	 # tmp248,
	leaq	.LC3(%rip), %rax	 #, tmp249
	movq	%rax, %rcx	 # tmp249,
	call	printf	 #
.L371:
 # ./test/pdsp_test.c:471:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_TRUE) == PDSP_TRUE);
	leaq	-32(%rbp), %rax	 #, tmp250
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp250,
	call	pdsp_debounce	 #
 # ./test/pdsp_test.c:471:     PDSP_ASSERT(pdsp_debounce(&hyst, PDSP_TRUE) == PDSP_TRUE);
	xorl	$1, %eax	 #, _18
	testb	%al, %al	 # _18
	je	.L372	 #,
	movl	$471, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp251
	movq	%rax, %rdx	 # tmp251,
	leaq	.LC3(%rip), %rax	 #, tmp252
	movq	%rax, %rcx	 # tmp252,
	call	printf	 #
.L372:
 # ./test/pdsp_test.c:473:     pdsp_debounce_cnt_t debounce = {
	movb	$0, -40(%rbp)	 #, debounce.b_state
	movw	$0, -38(%rbp)	 #, debounce.u16_count
	movw	$2, -36(%rbp)	 #, debounce.u16_cnt_high
	movw	$2, -34(%rbp)	 #, debounce.u16_cnt_low
 # ./test/pdsp_test.c:475:     pdsp_debounce_cnt_clear(&debounce);
	leaq	-40(%rbp), %rax	 #, tmp253
	movq	%rax, %rcx	 # tmp253,
	call	pdsp_debounce_cnt_clear	 #
 # ./test/pdsp_test.c:476:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_FALSE) == PDSP_FALSE);
	leaq	-40(%rbp), %rax	 #, tmp254
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp254,
	call	pdsp_debounce_cnt	 #
 # ./test/pdsp_test.c:476:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_FALSE) == PDSP_FALSE);
	testb	%al, %al	 # _19
	je	.L373	 #,
	movl	$476, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp255
	movq	%rax, %rdx	 # tmp255,
	leaq	.LC3(%rip), %rax	 #, tmp256
	movq	%rax, %rcx	 # tmp256,
	call	printf	 #
.L373:
 # ./test/pdsp_test.c:477:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_FALSE) == PDSP_FALSE);
	leaq	-40(%rbp), %rax	 #, tmp257
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp257,
	call	pdsp_debounce_cnt	 #
 # ./test/pdsp_test.c:477:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_FALSE) == PDSP_FALSE);
	testb	%al, %al	 # _20
	je	.L374	 #,
	movl	$477, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp258
	movq	%rax, %rdx	 # tmp258,
	leaq	.LC3(%rip), %rax	 #, tmp259
	movq	%rax, %rcx	 # tmp259,
	call	printf	 #
.L374:
 # ./test/pdsp_test.c:478:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_TRUE) == PDSP_FALSE);
	leaq	-40(%rbp), %rax	 #, tmp260
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp260,
	call	pdsp_debounce_cnt	 #
 # ./test/pdsp_test.c:478:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_TRUE) == PDSP_FALSE);
	testb	%al, %al	 # _21
	je	.L375	 #,
	movl	$478, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp261
	movq	%rax, %rdx	 # tmp261,
	leaq	.LC3(%rip), %rax	 #, tmp262
	movq	%rax, %rcx	 # tmp262,
	call	printf	 #
.L375:
 # ./test/pdsp_test.c:479:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_TRUE) == PDSP_FALSE);
	leaq	-40(%rbp), %rax	 #, tmp263
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp263,
	call	pdsp_debounce_cnt	 #
 # ./test/pdsp_test.c:479:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_TRUE) == PDSP_FALSE);
	testb	%al, %al	 # _22
	je	.L376	 #,
	movl	$479, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp264
	movq	%rax, %rdx	 # tmp264,
	leaq	.LC3(%rip), %rax	 #, tmp265
	movq	%rax, %rcx	 # tmp265,
	call	printf	 #
.L376:
 # ./test/pdsp_test.c:480:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_TRUE) == PDSP_TRUE);
	leaq	-40(%rbp), %rax	 #, tmp266
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp266,
	call	pdsp_debounce_cnt	 #
 # ./test/pdsp_test.c:480:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_TRUE) == PDSP_TRUE);
	xorl	$1, %eax	 #, _24
	testb	%al, %al	 # _24
	je	.L377	 #,
	movl	$480, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp267
	movq	%rax, %rdx	 # tmp267,
	leaq	.LC3(%rip), %rax	 #, tmp268
	movq	%rax, %rcx	 # tmp268,
	call	printf	 #
.L377:
 # ./test/pdsp_test.c:481:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_TRUE) == PDSP_TRUE);
	leaq	-40(%rbp), %rax	 #, tmp269
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp269,
	call	pdsp_debounce_cnt	 #
 # ./test/pdsp_test.c:481:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_TRUE) == PDSP_TRUE);
	xorl	$1, %eax	 #, _26
	testb	%al, %al	 # _26
	je	.L378	 #,
	movl	$481, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp270
	movq	%rax, %rdx	 # tmp270,
	leaq	.LC3(%rip), %rax	 #, tmp271
	movq	%rax, %rcx	 # tmp271,
	call	printf	 #
.L378:
 # ./test/pdsp_test.c:482:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_FALSE) == PDSP_TRUE);
	leaq	-40(%rbp), %rax	 #, tmp272
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp272,
	call	pdsp_debounce_cnt	 #
 # ./test/pdsp_test.c:482:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_FALSE) == PDSP_TRUE);
	xorl	$1, %eax	 #, _28
	testb	%al, %al	 # _28
	je	.L379	 #,
	movl	$482, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp273
	movq	%rax, %rdx	 # tmp273,
	leaq	.LC3(%rip), %rax	 #, tmp274
	movq	%rax, %rcx	 # tmp274,
	call	printf	 #
.L379:
 # ./test/pdsp_test.c:483:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_FALSE) == PDSP_TRUE);
	leaq	-40(%rbp), %rax	 #, tmp275
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp275,
	call	pdsp_debounce_cnt	 #
 # ./test/pdsp_test.c:483:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_FALSE) == PDSP_TRUE);
	xorl	$1, %eax	 #, _30
	testb	%al, %al	 # _30
	je	.L380	 #,
	movl	$483, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp276
	movq	%rax, %rdx	 # tmp276,
	leaq	.LC3(%rip), %rax	 #, tmp277
	movq	%rax, %rcx	 # tmp277,
	call	printf	 #
.L380:
 # ./test/pdsp_test.c:484:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_FALSE) == PDSP_FALSE);
	leaq	-40(%rbp), %rax	 #, tmp278
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp278,
	call	pdsp_debounce_cnt	 #
 # ./test/pdsp_test.c:484:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_FALSE) == PDSP_FALSE);
	testb	%al, %al	 # _31
	je	.L381	 #,
	movl	$484, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp279
	movq	%rax, %rdx	 # tmp279,
	leaq	.LC3(%rip), %rax	 #, tmp280
	movq	%rax, %rcx	 # tmp280,
	call	printf	 #
.L381:
 # ./test/pdsp_test.c:485:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_FALSE) == PDSP_FALSE);
	leaq	-40(%rbp), %rax	 #, tmp281
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp281,
	call	pdsp_debounce_cnt	 #
 # ./test/pdsp_test.c:485:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_FALSE) == PDSP_FALSE);
	testb	%al, %al	 # _32
	je	.L382	 #,
	movl	$485, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp282
	movq	%rax, %rdx	 # tmp282,
	leaq	.LC3(%rip), %rax	 #, tmp283
	movq	%rax, %rcx	 # tmp283,
	call	printf	 #
.L382:
 # ./test/pdsp_test.c:486:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_TRUE) == PDSP_FALSE);
	leaq	-40(%rbp), %rax	 #, tmp284
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp284,
	call	pdsp_debounce_cnt	 #
 # ./test/pdsp_test.c:486:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_TRUE) == PDSP_FALSE);
	testb	%al, %al	 # _33
	je	.L383	 #,
	movl	$486, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp285
	movq	%rax, %rdx	 # tmp285,
	leaq	.LC3(%rip), %rax	 #, tmp286
	movq	%rax, %rcx	 # tmp286,
	call	printf	 #
.L383:
 # ./test/pdsp_test.c:487:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_TRUE) == PDSP_FALSE);
	leaq	-40(%rbp), %rax	 #, tmp287
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp287,
	call	pdsp_debounce_cnt	 #
 # ./test/pdsp_test.c:487:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_TRUE) == PDSP_FALSE);
	testb	%al, %al	 # _34
	je	.L384	 #,
	movl	$487, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp288
	movq	%rax, %rdx	 # tmp288,
	leaq	.LC3(%rip), %rax	 #, tmp289
	movq	%rax, %rcx	 # tmp289,
	call	printf	 #
.L384:
 # ./test/pdsp_test.c:488:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_TRUE) == PDSP_TRUE);
	leaq	-40(%rbp), %rax	 #, tmp290
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp290,
	call	pdsp_debounce_cnt	 #
 # ./test/pdsp_test.c:488:     PDSP_ASSERT(pdsp_debounce_cnt(&debounce, PDSP_TRUE) == PDSP_TRUE);
	xorl	$1, %eax	 #, _36
	testb	%al, %al	 # _36
	je	.L385	 #,
	movl	$488, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp291
	movq	%rax, %rdx	 # tmp291,
	leaq	.LC3(%rip), %rax	 #, tmp292
	movq	%rax, %rcx	 # tmp292,
	call	printf	 #
.L385:
 # ./test/pdsp_test.c:490:     pdsp_macro_debounce_cnt_t debouncem = {
	movb	$0, -48(%rbp)	 #, debouncem.b_state
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
	movw	$2, -44(%rbp)	 #, debouncem.u16_cnt_high
	movw	$2, -42(%rbp)	 #, debouncem.u16_cnt_low
 # ./test/pdsp_test.c:492:     pdsp_macro_debounce_cnt_clear(debouncem);
	movb	$0, -48(%rbp)	 #, debouncem.b_state
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
 # ./test/pdsp_test.c:493:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _42
	testb	%al, %al	 # _42
	je	.L386	 #,
 # ./test/pdsp_test.c:493:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _43
	addl	$1, %eax	 #, _45
	movw	%ax, -46(%rbp)	 # _45, debouncem.u16_count
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _46
	movzwl	-42(%rbp), %edx	 # debouncem.u16_cnt_low, _47
	cmpw	%ax, %dx	 # _46, _47
	jnb	.L387	 #,
 # ./test/pdsp_test.c:493:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movb	$0, -48(%rbp)	 #, debouncem.b_state
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
	jmp	.L387	 #
.L386:
 # ./test/pdsp_test.c:493:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
.L387:
 # ./test/pdsp_test.c:494:     PDSP_ASSERT(debouncem.b_state == PDSP_FALSE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _48
	testb	%al, %al	 # _48
	je	.L388	 #,
 # ./test/pdsp_test.c:494:     PDSP_ASSERT(debouncem.b_state == PDSP_FALSE);
	movl	$494, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp293
	movq	%rax, %rdx	 # tmp293,
	leaq	.LC3(%rip), %rax	 #, tmp294
	movq	%rax, %rcx	 # tmp294,
	call	printf	 #
.L388:
 # ./test/pdsp_test.c:495:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _54
	testb	%al, %al	 # _54
	je	.L389	 #,
 # ./test/pdsp_test.c:495:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _55
	addl	$1, %eax	 #, _57
	movw	%ax, -46(%rbp)	 # _57, debouncem.u16_count
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _58
	movzwl	-42(%rbp), %edx	 # debouncem.u16_cnt_low, _59
	cmpw	%ax, %dx	 # _58, _59
	jnb	.L390	 #,
 # ./test/pdsp_test.c:495:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movb	$0, -48(%rbp)	 #, debouncem.b_state
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
	jmp	.L390	 #
.L389:
 # ./test/pdsp_test.c:495:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
.L390:
 # ./test/pdsp_test.c:496:     PDSP_ASSERT(debouncem.b_state == PDSP_FALSE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _60
	testb	%al, %al	 # _60
	je	.L391	 #,
 # ./test/pdsp_test.c:496:     PDSP_ASSERT(debouncem.b_state == PDSP_FALSE);
	movl	$496, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp295
	movq	%rax, %rdx	 # tmp295,
	leaq	.LC3(%rip), %rax	 #, tmp296
	movq	%rax, %rcx	 # tmp296,
	call	printf	 #
.L391:
 # ./test/pdsp_test.c:497:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _61
	xorl	$1, %eax	 #, _62
	testb	%al, %al	 # _62
	je	.L392	 #,
 # ./test/pdsp_test.c:497:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _63
	addl	$1, %eax	 #, _65
	movw	%ax, -46(%rbp)	 # _65, debouncem.u16_count
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _66
	movzwl	-44(%rbp), %edx	 # debouncem.u16_cnt_high, _67
	cmpw	%ax, %dx	 # _66, _67
	jnb	.L393	 #,
 # ./test/pdsp_test.c:497:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movb	$1, -48(%rbp)	 #, debouncem.b_state
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
	jmp	.L393	 #
.L392:
 # ./test/pdsp_test.c:497:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
.L393:
 # ./test/pdsp_test.c:498:     PDSP_ASSERT(debouncem.b_state == PDSP_FALSE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _73
	testb	%al, %al	 # _73
	je	.L394	 #,
 # ./test/pdsp_test.c:498:     PDSP_ASSERT(debouncem.b_state == PDSP_FALSE);
	movl	$498, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp297
	movq	%rax, %rdx	 # tmp297,
	leaq	.LC3(%rip), %rax	 #, tmp298
	movq	%rax, %rcx	 # tmp298,
	call	printf	 #
.L394:
 # ./test/pdsp_test.c:499:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _74
	xorl	$1, %eax	 #, _75
	testb	%al, %al	 # _75
	je	.L395	 #,
 # ./test/pdsp_test.c:499:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _76
	addl	$1, %eax	 #, _78
	movw	%ax, -46(%rbp)	 # _78, debouncem.u16_count
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _79
	movzwl	-44(%rbp), %edx	 # debouncem.u16_cnt_high, _80
	cmpw	%ax, %dx	 # _79, _80
	jnb	.L396	 #,
 # ./test/pdsp_test.c:499:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movb	$1, -48(%rbp)	 #, debouncem.b_state
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
	jmp	.L396	 #
.L395:
 # ./test/pdsp_test.c:499:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
.L396:
 # ./test/pdsp_test.c:500:     PDSP_ASSERT(debouncem.b_state == PDSP_FALSE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _86
	testb	%al, %al	 # _86
	je	.L397	 #,
 # ./test/pdsp_test.c:500:     PDSP_ASSERT(debouncem.b_state == PDSP_FALSE);
	movl	$500, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp299
	movq	%rax, %rdx	 # tmp299,
	leaq	.LC3(%rip), %rax	 #, tmp300
	movq	%rax, %rcx	 # tmp300,
	call	printf	 #
.L397:
 # ./test/pdsp_test.c:501:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _87
	xorl	$1, %eax	 #, _88
	testb	%al, %al	 # _88
	je	.L398	 #,
 # ./test/pdsp_test.c:501:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _89
	addl	$1, %eax	 #, _91
	movw	%ax, -46(%rbp)	 # _91, debouncem.u16_count
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _92
	movzwl	-44(%rbp), %edx	 # debouncem.u16_cnt_high, _93
	cmpw	%ax, %dx	 # _92, _93
	jnb	.L399	 #,
 # ./test/pdsp_test.c:501:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movb	$1, -48(%rbp)	 #, debouncem.b_state
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
	jmp	.L399	 #
.L398:
 # ./test/pdsp_test.c:501:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
.L399:
 # ./test/pdsp_test.c:502:     PDSP_ASSERT(debouncem.b_state == PDSP_TRUE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _99
	xorl	$1, %eax	 #, _100
	testb	%al, %al	 # _100
	je	.L400	 #,
 # ./test/pdsp_test.c:502:     PDSP_ASSERT(debouncem.b_state == PDSP_TRUE);
	movl	$502, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp301
	movq	%rax, %rdx	 # tmp301,
	leaq	.LC3(%rip), %rax	 #, tmp302
	movq	%rax, %rcx	 # tmp302,
	call	printf	 #
.L400:
 # ./test/pdsp_test.c:503:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _101
	xorl	$1, %eax	 #, _102
	testb	%al, %al	 # _102
	je	.L401	 #,
 # ./test/pdsp_test.c:503:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _103
	addl	$1, %eax	 #, _105
	movw	%ax, -46(%rbp)	 # _105, debouncem.u16_count
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _106
	movzwl	-44(%rbp), %edx	 # debouncem.u16_cnt_high, _107
	cmpw	%ax, %dx	 # _106, _107
	jnb	.L402	 #,
 # ./test/pdsp_test.c:503:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movb	$1, -48(%rbp)	 #, debouncem.b_state
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
	jmp	.L402	 #
.L401:
 # ./test/pdsp_test.c:503:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
.L402:
 # ./test/pdsp_test.c:504:     PDSP_ASSERT(debouncem.b_state == PDSP_TRUE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _113
	xorl	$1, %eax	 #, _114
	testb	%al, %al	 # _114
	je	.L403	 #,
 # ./test/pdsp_test.c:504:     PDSP_ASSERT(debouncem.b_state == PDSP_TRUE);
	movl	$504, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp303
	movq	%rax, %rdx	 # tmp303,
	leaq	.LC3(%rip), %rax	 #, tmp304
	movq	%rax, %rcx	 # tmp304,
	call	printf	 #
.L403:
 # ./test/pdsp_test.c:505:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _120
	testb	%al, %al	 # _120
	je	.L404	 #,
 # ./test/pdsp_test.c:505:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _121
	addl	$1, %eax	 #, _123
	movw	%ax, -46(%rbp)	 # _123, debouncem.u16_count
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _124
	movzwl	-42(%rbp), %edx	 # debouncem.u16_cnt_low, _125
	cmpw	%ax, %dx	 # _124, _125
	jnb	.L405	 #,
 # ./test/pdsp_test.c:505:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movb	$0, -48(%rbp)	 #, debouncem.b_state
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
	jmp	.L405	 #
.L404:
 # ./test/pdsp_test.c:505:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
.L405:
 # ./test/pdsp_test.c:506:     PDSP_ASSERT(debouncem.b_state == PDSP_TRUE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _126
	xorl	$1, %eax	 #, _127
	testb	%al, %al	 # _127
	je	.L406	 #,
 # ./test/pdsp_test.c:506:     PDSP_ASSERT(debouncem.b_state == PDSP_TRUE);
	movl	$506, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp305
	movq	%rax, %rdx	 # tmp305,
	leaq	.LC3(%rip), %rax	 #, tmp306
	movq	%rax, %rcx	 # tmp306,
	call	printf	 #
.L406:
 # ./test/pdsp_test.c:507:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _133
	testb	%al, %al	 # _133
	je	.L407	 #,
 # ./test/pdsp_test.c:507:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _134
	addl	$1, %eax	 #, _136
	movw	%ax, -46(%rbp)	 # _136, debouncem.u16_count
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _137
	movzwl	-42(%rbp), %edx	 # debouncem.u16_cnt_low, _138
	cmpw	%ax, %dx	 # _137, _138
	jnb	.L408	 #,
 # ./test/pdsp_test.c:507:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movb	$0, -48(%rbp)	 #, debouncem.b_state
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
	jmp	.L408	 #
.L407:
 # ./test/pdsp_test.c:507:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
.L408:
 # ./test/pdsp_test.c:508:     PDSP_ASSERT(debouncem.b_state == PDSP_TRUE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _139
	xorl	$1, %eax	 #, _140
	testb	%al, %al	 # _140
	je	.L409	 #,
 # ./test/pdsp_test.c:508:     PDSP_ASSERT(debouncem.b_state == PDSP_TRUE);
	movl	$508, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp307
	movq	%rax, %rdx	 # tmp307,
	leaq	.LC3(%rip), %rax	 #, tmp308
	movq	%rax, %rcx	 # tmp308,
	call	printf	 #
.L409:
 # ./test/pdsp_test.c:509:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _146
	testb	%al, %al	 # _146
	je	.L410	 #,
 # ./test/pdsp_test.c:509:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _147
	addl	$1, %eax	 #, _149
	movw	%ax, -46(%rbp)	 # _149, debouncem.u16_count
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _150
	movzwl	-42(%rbp), %edx	 # debouncem.u16_cnt_low, _151
	cmpw	%ax, %dx	 # _150, _151
	jnb	.L411	 #,
 # ./test/pdsp_test.c:509:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movb	$0, -48(%rbp)	 #, debouncem.b_state
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
	jmp	.L411	 #
.L410:
 # ./test/pdsp_test.c:509:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
.L411:
 # ./test/pdsp_test.c:510:     PDSP_ASSERT(debouncem.b_state == PDSP_FALSE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _152
	testb	%al, %al	 # _152
	je	.L412	 #,
 # ./test/pdsp_test.c:510:     PDSP_ASSERT(debouncem.b_state == PDSP_FALSE);
	movl	$510, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp309
	movq	%rax, %rdx	 # tmp309,
	leaq	.LC3(%rip), %rax	 #, tmp310
	movq	%rax, %rcx	 # tmp310,
	call	printf	 #
.L412:
 # ./test/pdsp_test.c:511:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _158
	testb	%al, %al	 # _158
	je	.L413	 #,
 # ./test/pdsp_test.c:511:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _159
	addl	$1, %eax	 #, _161
	movw	%ax, -46(%rbp)	 # _161, debouncem.u16_count
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _162
	movzwl	-42(%rbp), %edx	 # debouncem.u16_cnt_low, _163
	cmpw	%ax, %dx	 # _162, _163
	jnb	.L414	 #,
 # ./test/pdsp_test.c:511:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movb	$0, -48(%rbp)	 #, debouncem.b_state
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
	jmp	.L414	 #
.L413:
 # ./test/pdsp_test.c:511:     pdsp_macro_debounce_cnt(debouncem, PDSP_FALSE);
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
.L414:
 # ./test/pdsp_test.c:512:     PDSP_ASSERT(debouncem.b_state == PDSP_FALSE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _164
	testb	%al, %al	 # _164
	je	.L415	 #,
 # ./test/pdsp_test.c:512:     PDSP_ASSERT(debouncem.b_state == PDSP_FALSE);
	movl	$512, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp311
	movq	%rax, %rdx	 # tmp311,
	leaq	.LC3(%rip), %rax	 #, tmp312
	movq	%rax, %rcx	 # tmp312,
	call	printf	 #
.L415:
 # ./test/pdsp_test.c:513:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _165
	xorl	$1, %eax	 #, _166
	testb	%al, %al	 # _166
	je	.L416	 #,
 # ./test/pdsp_test.c:513:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _167
	addl	$1, %eax	 #, _169
	movw	%ax, -46(%rbp)	 # _169, debouncem.u16_count
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _170
	movzwl	-44(%rbp), %edx	 # debouncem.u16_cnt_high, _171
	cmpw	%ax, %dx	 # _170, _171
	jnb	.L417	 #,
 # ./test/pdsp_test.c:513:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movb	$1, -48(%rbp)	 #, debouncem.b_state
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
	jmp	.L417	 #
.L416:
 # ./test/pdsp_test.c:513:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
.L417:
 # ./test/pdsp_test.c:514:     PDSP_ASSERT(debouncem.b_state == PDSP_FALSE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _177
	testb	%al, %al	 # _177
	je	.L418	 #,
 # ./test/pdsp_test.c:514:     PDSP_ASSERT(debouncem.b_state == PDSP_FALSE);
	movl	$514, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp313
	movq	%rax, %rdx	 # tmp313,
	leaq	.LC3(%rip), %rax	 #, tmp314
	movq	%rax, %rcx	 # tmp314,
	call	printf	 #
.L418:
 # ./test/pdsp_test.c:515:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _178
	xorl	$1, %eax	 #, _179
	testb	%al, %al	 # _179
	je	.L419	 #,
 # ./test/pdsp_test.c:515:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _180
	addl	$1, %eax	 #, _182
	movw	%ax, -46(%rbp)	 # _182, debouncem.u16_count
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _183
	movzwl	-44(%rbp), %edx	 # debouncem.u16_cnt_high, _184
	cmpw	%ax, %dx	 # _183, _184
	jnb	.L420	 #,
 # ./test/pdsp_test.c:515:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movb	$1, -48(%rbp)	 #, debouncem.b_state
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
	jmp	.L420	 #
.L419:
 # ./test/pdsp_test.c:515:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
.L420:
 # ./test/pdsp_test.c:516:     PDSP_ASSERT(debouncem.b_state == PDSP_FALSE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _190
	testb	%al, %al	 # _190
	je	.L421	 #,
 # ./test/pdsp_test.c:516:     PDSP_ASSERT(debouncem.b_state == PDSP_FALSE);
	movl	$516, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp315
	movq	%rax, %rdx	 # tmp315,
	leaq	.LC3(%rip), %rax	 #, tmp316
	movq	%rax, %rcx	 # tmp316,
	call	printf	 #
.L421:
 # ./test/pdsp_test.c:517:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _191
	xorl	$1, %eax	 #, _192
	testb	%al, %al	 # _192
	je	.L422	 #,
 # ./test/pdsp_test.c:517:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _193
	addl	$1, %eax	 #, _195
	movw	%ax, -46(%rbp)	 # _195, debouncem.u16_count
	movzwl	-46(%rbp), %eax	 # debouncem.u16_count, _196
	movzwl	-44(%rbp), %edx	 # debouncem.u16_cnt_high, _197
	cmpw	%ax, %dx	 # _196, _197
	jnb	.L423	 #,
 # ./test/pdsp_test.c:517:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movb	$1, -48(%rbp)	 #, debouncem.b_state
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
	jmp	.L423	 #
.L422:
 # ./test/pdsp_test.c:517:     pdsp_macro_debounce_cnt(debouncem, PDSP_TRUE);
	movw	$0, -46(%rbp)	 #, debouncem.u16_count
.L423:
 # ./test/pdsp_test.c:518:     PDSP_ASSERT(debouncem.b_state == PDSP_TRUE);
	movzbl	-48(%rbp), %eax	 # debouncem.b_state, _203
	xorl	$1, %eax	 #, _204
	testb	%al, %al	 # _204
	je	.L425	 #,
 # ./test/pdsp_test.c:518:     PDSP_ASSERT(debouncem.b_state == PDSP_TRUE);
	movl	$518, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp317
	movq	%rax, %rdx	 # tmp317,
	leaq	.LC3(%rip), %rax	 #, tmp318
	movq	%rax, %rcx	 # tmp318,
	call	printf	 #
.L425:
 # ./test/pdsp_test.c:519: }
	nop	
	addq	$80, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC71:
	.ascii "-- void test_robust(void) --\12\0"
	.text
	.globl	test_robust
	.def	test_robust;	.scl	2;	.type	32;	.endef
	.seh_proc	test_robust
test_robust:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$160, %rsp	 #,
	.seh_stackalloc	160
	.seh_endprologue
 # ./test/pdsp_test.c:523:     printf("-- void test_robust(void) --\n");
	leaq	.LC71(%rip), %rax	 #, tmp162
	movq	%rax, %rcx	 # tmp162,
	call	printf	 #
 # ./test/pdsp_test.c:524:     pdsp_f32_t af32_thres_up[4] = {1.0f, 2.0f, 2.5f, 3.0f};
	movss	.LC23(%rip), %xmm0	 #, tmp163
	movss	%xmm0, -16(%rbp)	 # tmp163, af32_thres_up[0]
	movss	.LC22(%rip), %xmm0	 #, tmp164
	movss	%xmm0, -12(%rbp)	 # tmp164, af32_thres_up[1]
	movss	.LC38(%rip), %xmm0	 #, tmp165
	movss	%xmm0, -8(%rbp)	 # tmp165, af32_thres_up[2]
	movss	.LC30(%rip), %xmm0	 #, tmp166
	movss	%xmm0, -4(%rbp)	 # tmp166, af32_thres_up[3]
 # ./test/pdsp_test.c:525:     pdsp_f32_t af32_thres_dn[4] = {0.0f, 0.5f, 1.5f, 2.0f};
	pxor	%xmm0, %xmm0	 # tmp167
	movss	%xmm0, -32(%rbp)	 # tmp167, af32_thres_dn[0]
	movss	.LC37(%rip), %xmm0	 #, tmp168
	movss	%xmm0, -28(%rbp)	 # tmp168, af32_thres_dn[1]
	movss	.LC24(%rip), %xmm0	 #, tmp169
	movss	%xmm0, -24(%rbp)	 # tmp169, af32_thres_dn[2]
	movss	.LC22(%rip), %xmm0	 #, tmp170
	movss	%xmm0, -20(%rbp)	 # tmp170, af32_thres_dn[3]
 # ./test/pdsp_test.c:526:     pdsp_f32_t af32_time_up[4] = {2.0f, 2.0f, 2.0f, 2.0f};
	movss	.LC22(%rip), %xmm0	 #, tmp171
	movss	%xmm0, -48(%rbp)	 # tmp171, af32_time_up[0]
	movss	.LC22(%rip), %xmm0	 #, tmp172
	movss	%xmm0, -44(%rbp)	 # tmp172, af32_time_up[1]
	movss	.LC22(%rip), %xmm0	 #, tmp173
	movss	%xmm0, -40(%rbp)	 # tmp173, af32_time_up[2]
	movss	.LC22(%rip), %xmm0	 #, tmp174
	movss	%xmm0, -36(%rbp)	 # tmp174, af32_time_up[3]
 # ./test/pdsp_test.c:527:     pdsp_f32_t af32_time_dn[4] = {2.0f, 2.0f, 2.0f, 2.0f};
	movss	.LC22(%rip), %xmm0	 #, tmp175
	movss	%xmm0, -64(%rbp)	 # tmp175, af32_time_dn[0]
	movss	.LC22(%rip), %xmm0	 #, tmp176
	movss	%xmm0, -60(%rbp)	 # tmp176, af32_time_dn[1]
	movss	.LC22(%rip), %xmm0	 #, tmp177
	movss	%xmm0, -56(%rbp)	 # tmp177, af32_time_dn[2]
	movss	.LC22(%rip), %xmm0	 #, tmp178
	movss	%xmm0, -52(%rbp)	 # tmp178, af32_time_dn[3]
 # ./test/pdsp_test.c:528:     pdsp_robust_t rbst = {.u16_state = 0,
	movw	$0, -128(%rbp)	 #, rbst.u16_state
	pxor	%xmm0, %xmm0	 # tmp179
	movss	%xmm0, -124(%rbp)	 # tmp179, rbst.f32_time
	movss	.LC23(%rip), %xmm0	 #, tmp180
	movss	%xmm0, -120(%rbp)	 # tmp180, rbst.f32_t_step
	leaq	-16(%rbp), %rax	 #, tmp181
	movq	%rax, -112(%rbp)	 # tmp181, rbst.af32_thres_up
	leaq	-32(%rbp), %rax	 #, tmp182
	movq	%rax, -104(%rbp)	 # tmp182, rbst.af32_thres_dn
	leaq	-48(%rbp), %rax	 #, tmp183
	movq	%rax, -96(%rbp)	 # tmp183, rbst.af32_time_up
	leaq	-64(%rbp), %rax	 #, tmp184
	movq	%rax, -88(%rbp)	 # tmp184, rbst.af32_time_dn
	movw	$4, -80(%rbp)	 #, rbst.u16_size
 # ./test/pdsp_test.c:536:     pdsp_robust_clear(&rbst);
	leaq	-128(%rbp), %rax	 #, tmp185
	movq	%rax, %rcx	 # tmp185,
	call	pdsp_robust_clear	 #
 # ./test/pdsp_test.c:537:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 0U);
	leaq	-128(%rbp), %rax	 #, tmp186
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp186,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:537:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 0U);
	testw	%ax, %ax	 # _1
	je	.L427	 #,
	movl	$537, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp187
	movq	%rax, %rdx	 # tmp187,
	leaq	.LC3(%rip), %rax	 #, tmp188
	movq	%rax, %rcx	 # tmp188,
	call	printf	 #
.L427:
 # ./test/pdsp_test.c:538:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 0U);
	leaq	-128(%rbp), %rax	 #, tmp189
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp189,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:538:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 0U);
	testw	%ax, %ax	 # _2
	je	.L428	 #,
	movl	$538, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp190
	movq	%rax, %rdx	 # tmp190,
	leaq	.LC3(%rip), %rax	 #, tmp191
	movq	%rax, %rcx	 # tmp191,
	call	printf	 #
.L428:
 # ./test/pdsp_test.c:539:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp192
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp192,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:539:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 1U);
	cmpw	$1, %ax	 #, _3
	je	.L429	 #,
	movl	$539, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp193
	movq	%rax, %rdx	 # tmp193,
	leaq	.LC3(%rip), %rax	 #, tmp194
	movq	%rax, %rcx	 # tmp194,
	call	printf	 #
.L429:
 # ./test/pdsp_test.c:540:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp195
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp195,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:540:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 1U);
	cmpw	$1, %ax	 #, _4
	je	.L430	 #,
	movl	$540, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp196
	movq	%rax, %rdx	 # tmp196,
	leaq	.LC3(%rip), %rax	 #, tmp197
	movq	%rax, %rcx	 # tmp197,
	call	printf	 #
.L430:
 # ./test/pdsp_test.c:541:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp198
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp198,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:541:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 1U);
	cmpw	$1, %ax	 #, _5
	je	.L431	 #,
	movl	$541, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp199
	movq	%rax, %rdx	 # tmp199,
	leaq	.LC3(%rip), %rax	 #, tmp200
	movq	%rax, %rcx	 # tmp200,
	call	printf	 #
.L431:
 # ./test/pdsp_test.c:542:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp201
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp201,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:542:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 2U);
	cmpw	$2, %ax	 #, _6
	je	.L432	 #,
	movl	$542, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp202
	movq	%rax, %rdx	 # tmp202,
	leaq	.LC3(%rip), %rax	 #, tmp203
	movq	%rax, %rcx	 # tmp203,
	call	printf	 #
.L432:
 # ./test/pdsp_test.c:543:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp204
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp204,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:543:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 2U);
	cmpw	$2, %ax	 #, _7
	je	.L433	 #,
	movl	$543, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp205
	movq	%rax, %rdx	 # tmp205,
	leaq	.LC3(%rip), %rax	 #, tmp206
	movq	%rax, %rcx	 # tmp206,
	call	printf	 #
.L433:
 # ./test/pdsp_test.c:544:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp207
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp207,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:544:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 2U);
	cmpw	$2, %ax	 #, _8
	je	.L434	 #,
	movl	$544, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp208
	movq	%rax, %rdx	 # tmp208,
	leaq	.LC3(%rip), %rax	 #, tmp209
	movq	%rax, %rcx	 # tmp209,
	call	printf	 #
.L434:
 # ./test/pdsp_test.c:545:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
	leaq	-128(%rbp), %rax	 #, tmp210
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp210,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:545:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
	cmpw	$3, %ax	 #, _9
	je	.L435	 #,
	movl	$545, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp211
	movq	%rax, %rdx	 # tmp211,
	leaq	.LC3(%rip), %rax	 #, tmp212
	movq	%rax, %rcx	 # tmp212,
	call	printf	 #
.L435:
 # ./test/pdsp_test.c:546:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
	leaq	-128(%rbp), %rax	 #, tmp213
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp213,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:546:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
	cmpw	$3, %ax	 #, _10
	je	.L436	 #,
	movl	$546, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp214
	movq	%rax, %rdx	 # tmp214,
	leaq	.LC3(%rip), %rax	 #, tmp215
	movq	%rax, %rcx	 # tmp215,
	call	printf	 #
.L436:
 # ./test/pdsp_test.c:547:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
	leaq	-128(%rbp), %rax	 #, tmp216
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp216,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:547:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
	cmpw	$3, %ax	 #, _11
	je	.L437	 #,
	movl	$547, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp217
	movq	%rax, %rdx	 # tmp217,
	leaq	.LC3(%rip), %rax	 #, tmp218
	movq	%rax, %rcx	 # tmp218,
	call	printf	 #
.L437:
 # ./test/pdsp_test.c:548:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
	leaq	-128(%rbp), %rax	 #, tmp219
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp219,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:548:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
	cmpw	$3, %ax	 #, _12
	je	.L438	 #,
	movl	$548, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp220
	movq	%rax, %rdx	 # tmp220,
	leaq	.LC3(%rip), %rax	 #, tmp221
	movq	%rax, %rcx	 # tmp221,
	call	printf	 #
.L438:
 # ./test/pdsp_test.c:549:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
	leaq	-128(%rbp), %rax	 #, tmp222
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp222,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:549:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
	cmpw	$3, %ax	 #, _13
	je	.L439	 #,
	movl	$549, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp223
	movq	%rax, %rdx	 # tmp223,
	leaq	.LC3(%rip), %rax	 #, tmp224
	movq	%rax, %rcx	 # tmp224,
	call	printf	 #
.L439:
 # ./test/pdsp_test.c:550:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
	leaq	-128(%rbp), %rax	 #, tmp225
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp225,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:550:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
	cmpw	$3, %ax	 #, _14
	je	.L440	 #,
	movl	$550, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp226
	movq	%rax, %rdx	 # tmp226,
	leaq	.LC3(%rip), %rax	 #, tmp227
	movq	%rax, %rcx	 # tmp227,
	call	printf	 #
.L440:
 # ./test/pdsp_test.c:551:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 3U);
	leaq	-128(%rbp), %rax	 #, tmp228
	movss	.LC72(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp228,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:551:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 3U);
	cmpw	$3, %ax	 #, _15
	je	.L441	 #,
	movl	$551, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp229
	movq	%rax, %rdx	 # tmp229,
	leaq	.LC3(%rip), %rax	 #, tmp230
	movq	%rax, %rcx	 # tmp230,
	call	printf	 #
.L441:
 # ./test/pdsp_test.c:552:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 3U);
	leaq	-128(%rbp), %rax	 #, tmp231
	movss	.LC72(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp231,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:552:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 3U);
	cmpw	$3, %ax	 #, _16
	je	.L442	 #,
	movl	$552, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp232
	movq	%rax, %rdx	 # tmp232,
	leaq	.LC3(%rip), %rax	 #, tmp233
	movq	%rax, %rcx	 # tmp233,
	call	printf	 #
.L442:
 # ./test/pdsp_test.c:553:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp234
	movss	.LC72(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp234,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:553:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 2U);
	cmpw	$2, %ax	 #, _17
	je	.L443	 #,
	movl	$553, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp235
	movq	%rax, %rdx	 # tmp235,
	leaq	.LC3(%rip), %rax	 #, tmp236
	movq	%rax, %rcx	 # tmp236,
	call	printf	 #
.L443:
 # ./test/pdsp_test.c:554:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp237
	movss	.LC72(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp237,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:554:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 2U);
	cmpw	$2, %ax	 #, _18
	je	.L444	 #,
	movl	$554, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp238
	movq	%rax, %rdx	 # tmp238,
	leaq	.LC3(%rip), %rax	 #, tmp239
	movq	%rax, %rcx	 # tmp239,
	call	printf	 #
.L444:
 # ./test/pdsp_test.c:555:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp240
	movss	.LC72(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp240,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:555:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 2U);
	cmpw	$2, %ax	 #, _19
	je	.L445	 #,
	movl	$555, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp241
	movq	%rax, %rdx	 # tmp241,
	leaq	.LC3(%rip), %rax	 #, tmp242
	movq	%rax, %rcx	 # tmp242,
	call	printf	 #
.L445:
 # ./test/pdsp_test.c:556:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp243
	movss	.LC72(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp243,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:556:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 1U);
	cmpw	$1, %ax	 #, _20
	je	.L446	 #,
	movl	$556, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp244
	movq	%rax, %rdx	 # tmp244,
	leaq	.LC3(%rip), %rax	 #, tmp245
	movq	%rax, %rcx	 # tmp245,
	call	printf	 #
.L446:
 # ./test/pdsp_test.c:557:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp246
	movss	.LC72(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp246,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:557:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 1U);
	cmpw	$1, %ax	 #, _21
	je	.L447	 #,
	movl	$557, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp247
	movq	%rax, %rdx	 # tmp247,
	leaq	.LC3(%rip), %rax	 #, tmp248
	movq	%rax, %rcx	 # tmp248,
	call	printf	 #
.L447:
 # ./test/pdsp_test.c:558:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp249
	movss	.LC72(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp249,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:558:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 1U);
	cmpw	$1, %ax	 #, _22
	je	.L448	 #,
	movl	$558, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp250
	movq	%rax, %rdx	 # tmp250,
	leaq	.LC3(%rip), %rax	 #, tmp251
	movq	%rax, %rcx	 # tmp251,
	call	printf	 #
.L448:
 # ./test/pdsp_test.c:559:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 0U);
	leaq	-128(%rbp), %rax	 #, tmp252
	movss	.LC72(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp252,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:559:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 0U);
	testw	%ax, %ax	 # _23
	je	.L449	 #,
	movl	$559, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp253
	movq	%rax, %rdx	 # tmp253,
	leaq	.LC3(%rip), %rax	 #, tmp254
	movq	%rax, %rcx	 # tmp254,
	call	printf	 #
.L449:
 # ./test/pdsp_test.c:560:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 0U);
	leaq	-128(%rbp), %rax	 #, tmp255
	movss	.LC72(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp255,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:560:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 0U);
	testw	%ax, %ax	 # _24
	je	.L450	 #,
	movl	$560, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp256
	movq	%rax, %rdx	 # tmp256,
	leaq	.LC3(%rip), %rax	 #, tmp257
	movq	%rax, %rcx	 # tmp257,
	call	printf	 #
.L450:
 # ./test/pdsp_test.c:561:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 0U);
	leaq	-128(%rbp), %rax	 #, tmp258
	movss	.LC72(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp258,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:561:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 0U);
	testw	%ax, %ax	 # _25
	je	.L451	 #,
	movl	$561, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp259
	movq	%rax, %rdx	 # tmp259,
	leaq	.LC3(%rip), %rax	 #, tmp260
	movq	%rax, %rcx	 # tmp260,
	call	printf	 #
.L451:
 # ./test/pdsp_test.c:562:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 0U);
	leaq	-128(%rbp), %rax	 #, tmp261
	movss	.LC72(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp261,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:562:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 0U);
	testw	%ax, %ax	 # _26
	je	.L452	 #,
	movl	$562, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp262
	movq	%rax, %rdx	 # tmp262,
	leaq	.LC3(%rip), %rax	 #, tmp263
	movq	%rax, %rcx	 # tmp263,
	call	printf	 #
.L452:
 # ./test/pdsp_test.c:563:     pdsp_robust_clear(&rbst);
	leaq	-128(%rbp), %rax	 #, tmp264
	movq	%rax, %rcx	 # tmp264,
	call	pdsp_robust_clear	 #
 # ./test/pdsp_test.c:564:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 0U);
	leaq	-128(%rbp), %rax	 #, tmp265
	movss	.LC73(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp265,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:564:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 0U);
	testw	%ax, %ax	 # _27
	je	.L453	 #,
	movl	$564, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp266
	movq	%rax, %rdx	 # tmp266,
	leaq	.LC3(%rip), %rax	 #, tmp267
	movq	%rax, %rcx	 # tmp267,
	call	printf	 #
.L453:
 # ./test/pdsp_test.c:565:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 0U);
	leaq	-128(%rbp), %rax	 #, tmp268
	movss	.LC73(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp268,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:565:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 0U);
	testw	%ax, %ax	 # _28
	je	.L454	 #,
	movl	$565, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp269
	movq	%rax, %rdx	 # tmp269,
	leaq	.LC3(%rip), %rax	 #, tmp270
	movq	%rax, %rcx	 # tmp270,
	call	printf	 #
.L454:
 # ./test/pdsp_test.c:566:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp271
	movss	.LC73(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp271,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:566:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
	cmpw	$1, %ax	 #, _29
	je	.L455	 #,
	movl	$566, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp272
	movq	%rax, %rdx	 # tmp272,
	leaq	.LC3(%rip), %rax	 #, tmp273
	movq	%rax, %rcx	 # tmp273,
	call	printf	 #
.L455:
 # ./test/pdsp_test.c:567:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp274
	movss	.LC73(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp274,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:567:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
	cmpw	$1, %ax	 #, _30
	je	.L456	 #,
	movl	$567, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp275
	movq	%rax, %rdx	 # tmp275,
	leaq	.LC3(%rip), %rax	 #, tmp276
	movq	%rax, %rcx	 # tmp276,
	call	printf	 #
.L456:
 # ./test/pdsp_test.c:568:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp277
	movss	.LC73(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp277,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:568:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
	cmpw	$1, %ax	 #, _31
	je	.L457	 #,
	movl	$568, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp278
	movq	%rax, %rdx	 # tmp278,
	leaq	.LC3(%rip), %rax	 #, tmp279
	movq	%rax, %rcx	 # tmp279,
	call	printf	 #
.L457:
 # ./test/pdsp_test.c:569:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp280
	movss	.LC73(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp280,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:569:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
	cmpw	$2, %ax	 #, _32
	je	.L458	 #,
	movl	$569, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp281
	movq	%rax, %rdx	 # tmp281,
	leaq	.LC3(%rip), %rax	 #, tmp282
	movq	%rax, %rcx	 # tmp282,
	call	printf	 #
.L458:
 # ./test/pdsp_test.c:570:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp283
	movss	.LC73(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp283,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:570:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
	cmpw	$2, %ax	 #, _33
	je	.L459	 #,
	movl	$570, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp284
	movq	%rax, %rdx	 # tmp284,
	leaq	.LC3(%rip), %rax	 #, tmp285
	movq	%rax, %rcx	 # tmp285,
	call	printf	 #
.L459:
 # ./test/pdsp_test.c:571:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp286
	movss	.LC73(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp286,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:571:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
	cmpw	$2, %ax	 #, _34
	je	.L460	 #,
	movl	$571, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp287
	movq	%rax, %rdx	 # tmp287,
	leaq	.LC3(%rip), %rax	 #, tmp288
	movq	%rax, %rcx	 # tmp288,
	call	printf	 #
.L460:
 # ./test/pdsp_test.c:572:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp289
	movss	.LC73(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp289,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:572:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
	cmpw	$2, %ax	 #, _35
	je	.L461	 #,
	movl	$572, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp290
	movq	%rax, %rdx	 # tmp290,
	leaq	.LC3(%rip), %rax	 #, tmp291
	movq	%rax, %rcx	 # tmp291,
	call	printf	 #
.L461:
 # ./test/pdsp_test.c:573:     pdsp_robust_clear(&rbst);
	leaq	-128(%rbp), %rax	 #, tmp292
	movq	%rax, %rcx	 # tmp292,
	call	pdsp_robust_clear	 #
 # ./test/pdsp_test.c:574:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 0U);
	leaq	-128(%rbp), %rax	 #, tmp293
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp293,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:574:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 0U);
	testw	%ax, %ax	 # _36
	je	.L462	 #,
	movl	$574, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp294
	movq	%rax, %rdx	 # tmp294,
	leaq	.LC3(%rip), %rax	 #, tmp295
	movq	%rax, %rcx	 # tmp295,
	call	printf	 #
.L462:
 # ./test/pdsp_test.c:575:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 0U);
	leaq	-128(%rbp), %rax	 #, tmp296
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp296,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:575:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 0U);
	testw	%ax, %ax	 # _37
	je	.L463	 #,
	movl	$575, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp297
	movq	%rax, %rdx	 # tmp297,
	leaq	.LC3(%rip), %rax	 #, tmp298
	movq	%rax, %rcx	 # tmp298,
	call	printf	 #
.L463:
 # ./test/pdsp_test.c:576:     PDSP_ASSERT(pdsp_robust(&rbst, 0.0f) == 0U);
	leaq	-128(%rbp), %rax	 #, tmp299
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp299,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:576:     PDSP_ASSERT(pdsp_robust(&rbst, 0.0f) == 0U);
	testw	%ax, %ax	 # _38
	je	.L464	 #,
	movl	$576, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp300
	movq	%rax, %rdx	 # tmp300,
	leaq	.LC3(%rip), %rax	 #, tmp301
	movq	%rax, %rcx	 # tmp301,
	call	printf	 #
.L464:
 # ./test/pdsp_test.c:577:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 0U);
	leaq	-128(%rbp), %rax	 #, tmp302
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp302,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:577:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 0U);
	testw	%ax, %ax	 # _39
	je	.L465	 #,
	movl	$577, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp303
	movq	%rax, %rdx	 # tmp303,
	leaq	.LC3(%rip), %rax	 #, tmp304
	movq	%rax, %rcx	 # tmp304,
	call	printf	 #
.L465:
 # ./test/pdsp_test.c:578:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 0U);
	leaq	-128(%rbp), %rax	 #, tmp305
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp305,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:578:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 0U);
	testw	%ax, %ax	 # _40
	je	.L466	 #,
	movl	$578, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp306
	movq	%rax, %rdx	 # tmp306,
	leaq	.LC3(%rip), %rax	 #, tmp307
	movq	%rax, %rcx	 # tmp307,
	call	printf	 #
.L466:
 # ./test/pdsp_test.c:579:     PDSP_ASSERT(pdsp_robust(&rbst, 0.0f) == 0U);
	leaq	-128(%rbp), %rax	 #, tmp308
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp308,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:579:     PDSP_ASSERT(pdsp_robust(&rbst, 0.0f) == 0U);
	testw	%ax, %ax	 # _41
	je	.L467	 #,
	movl	$579, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp309
	movq	%rax, %rdx	 # tmp309,
	leaq	.LC3(%rip), %rax	 #, tmp310
	movq	%rax, %rcx	 # tmp310,
	call	printf	 #
.L467:
 # ./test/pdsp_test.c:580:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 0U);
	leaq	-128(%rbp), %rax	 #, tmp311
	movss	.LC73(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp311,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:580:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 0U);
	testw	%ax, %ax	 # _42
	je	.L468	 #,
	movl	$580, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp312
	movq	%rax, %rdx	 # tmp312,
	leaq	.LC3(%rip), %rax	 #, tmp313
	movq	%rax, %rcx	 # tmp313,
	call	printf	 #
.L468:
 # ./test/pdsp_test.c:581:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 0U);
	leaq	-128(%rbp), %rax	 #, tmp314
	movss	.LC73(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp314,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:581:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 0U);
	testw	%ax, %ax	 # _43
	je	.L469	 #,
	movl	$581, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp315
	movq	%rax, %rdx	 # tmp315,
	leaq	.LC3(%rip), %rax	 #, tmp316
	movq	%rax, %rcx	 # tmp316,
	call	printf	 #
.L469:
 # ./test/pdsp_test.c:582:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp317
	movss	.LC73(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp317,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:582:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
	cmpw	$1, %ax	 #, _44
	je	.L470	 #,
	movl	$582, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp318
	movq	%rax, %rdx	 # tmp318,
	leaq	.LC3(%rip), %rax	 #, tmp319
	movq	%rax, %rcx	 # tmp319,
	call	printf	 #
.L470:
 # ./test/pdsp_test.c:583:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp320
	movss	.LC73(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp320,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:583:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
	cmpw	$1, %ax	 #, _45
	je	.L471	 #,
	movl	$583, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp321
	movq	%rax, %rdx	 # tmp321,
	leaq	.LC3(%rip), %rax	 #, tmp322
	movq	%rax, %rcx	 # tmp322,
	call	printf	 #
.L471:
 # ./test/pdsp_test.c:584:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp323
	movss	.LC73(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp323,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:584:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
	cmpw	$1, %ax	 #, _46
	je	.L472	 #,
	movl	$584, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp324
	movq	%rax, %rdx	 # tmp324,
	leaq	.LC3(%rip), %rax	 #, tmp325
	movq	%rax, %rcx	 # tmp325,
	call	printf	 #
.L472:
 # ./test/pdsp_test.c:585:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp326
	movss	.LC73(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp326,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:585:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
	cmpw	$2, %ax	 #, _47
	je	.L473	 #,
	movl	$585, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp327
	movq	%rax, %rdx	 # tmp327,
	leaq	.LC3(%rip), %rax	 #, tmp328
	movq	%rax, %rcx	 # tmp328,
	call	printf	 #
.L473:
 # ./test/pdsp_test.c:586:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp329
	movss	.LC73(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp329,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:586:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
	cmpw	$2, %ax	 #, _48
	je	.L474	 #,
	movl	$586, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp330
	movq	%rax, %rdx	 # tmp330,
	leaq	.LC3(%rip), %rax	 #, tmp331
	movq	%rax, %rcx	 # tmp331,
	call	printf	 #
.L474:
 # ./test/pdsp_test.c:587:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp332
	movss	.LC73(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp332,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:587:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
	cmpw	$2, %ax	 #, _49
	je	.L475	 #,
	movl	$587, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp333
	movq	%rax, %rdx	 # tmp333,
	leaq	.LC3(%rip), %rax	 #, tmp334
	movq	%rax, %rcx	 # tmp334,
	call	printf	 #
.L475:
 # ./test/pdsp_test.c:588:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp335
	movss	.LC73(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp335,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:588:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 2U);
	cmpw	$2, %ax	 #, _50
	je	.L476	 #,
	movl	$588, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp336
	movq	%rax, %rdx	 # tmp336,
	leaq	.LC3(%rip), %rax	 #, tmp337
	movq	%rax, %rcx	 # tmp337,
	call	printf	 #
.L476:
 # ./test/pdsp_test.c:589:     PDSP_ASSERT(pdsp_robust(&rbst, 1.4f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp338
	movss	.LC74(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp338,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:589:     PDSP_ASSERT(pdsp_robust(&rbst, 1.4f) == 2U);
	cmpw	$2, %ax	 #, _51
	je	.L477	 #,
	movl	$589, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp339
	movq	%rax, %rdx	 # tmp339,
	leaq	.LC3(%rip), %rax	 #, tmp340
	movq	%rax, %rcx	 # tmp340,
	call	printf	 #
.L477:
 # ./test/pdsp_test.c:590:     PDSP_ASSERT(pdsp_robust(&rbst, 1.4f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp341
	movss	.LC74(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp341,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:590:     PDSP_ASSERT(pdsp_robust(&rbst, 1.4f) == 2U);
	cmpw	$2, %ax	 #, _52
	je	.L478	 #,
	movl	$590, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp342
	movq	%rax, %rdx	 # tmp342,
	leaq	.LC3(%rip), %rax	 #, tmp343
	movq	%rax, %rcx	 # tmp343,
	call	printf	 #
.L478:
 # ./test/pdsp_test.c:591:     PDSP_ASSERT(pdsp_robust(&rbst, 1.4f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp344
	movss	.LC74(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp344,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:591:     PDSP_ASSERT(pdsp_robust(&rbst, 1.4f) == 1U);
	cmpw	$1, %ax	 #, _53
	je	.L479	 #,
	movl	$591, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp345
	movq	%rax, %rdx	 # tmp345,
	leaq	.LC3(%rip), %rax	 #, tmp346
	movq	%rax, %rcx	 # tmp346,
	call	printf	 #
.L479:
 # ./test/pdsp_test.c:592:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp347
	movss	.LC73(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp347,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:592:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
	cmpw	$1, %ax	 #, _54
	je	.L480	 #,
	movl	$592, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp348
	movq	%rax, %rdx	 # tmp348,
	leaq	.LC3(%rip), %rax	 #, tmp349
	movq	%rax, %rcx	 # tmp349,
	call	printf	 #
.L480:
 # ./test/pdsp_test.c:593:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp350
	movss	.LC73(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp350,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:593:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
	cmpw	$1, %ax	 #, _55
	je	.L481	 #,
	movl	$593, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp351
	movq	%rax, %rdx	 # tmp351,
	leaq	.LC3(%rip), %rax	 #, tmp352
	movq	%rax, %rcx	 # tmp352,
	call	printf	 #
.L481:
 # ./test/pdsp_test.c:594:     PDSP_ASSERT(pdsp_robust(&rbst, 1.4f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp353
	movss	.LC74(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp353,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:594:     PDSP_ASSERT(pdsp_robust(&rbst, 1.4f) == 1U);
	cmpw	$1, %ax	 #, _56
	je	.L482	 #,
	movl	$594, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp354
	movq	%rax, %rdx	 # tmp354,
	leaq	.LC3(%rip), %rax	 #, tmp355
	movq	%rax, %rcx	 # tmp355,
	call	printf	 #
.L482:
 # ./test/pdsp_test.c:595:     PDSP_ASSERT(pdsp_robust(&rbst, 1.4f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp356
	movss	.LC74(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp356,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:595:     PDSP_ASSERT(pdsp_robust(&rbst, 1.4f) == 1U);
	cmpw	$1, %ax	 #, _57
	je	.L483	 #,
	movl	$595, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp357
	movq	%rax, %rdx	 # tmp357,
	leaq	.LC3(%rip), %rax	 #, tmp358
	movq	%rax, %rcx	 # tmp358,
	call	printf	 #
.L483:
 # ./test/pdsp_test.c:596:     PDSP_ASSERT(pdsp_robust(&rbst, 1.4f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp359
	movss	.LC74(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp359,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:596:     PDSP_ASSERT(pdsp_robust(&rbst, 1.4f) == 1U);
	cmpw	$1, %ax	 #, _58
	je	.L484	 #,
	movl	$596, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp360
	movq	%rax, %rdx	 # tmp360,
	leaq	.LC3(%rip), %rax	 #, tmp361
	movq	%rax, %rcx	 # tmp361,
	call	printf	 #
.L484:
 # ./test/pdsp_test.c:597:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp362
	movss	.LC73(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp362,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:597:     PDSP_ASSERT(pdsp_robust(&rbst, 2.1f) == 1U);
	cmpw	$1, %ax	 #, _59
	je	.L485	 #,
	movl	$597, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp363
	movq	%rax, %rdx	 # tmp363,
	leaq	.LC3(%rip), %rax	 #, tmp364
	movq	%rax, %rcx	 # tmp364,
	call	printf	 #
.L485:
 # ./test/pdsp_test.c:598:     PDSP_ASSERT(pdsp_robust(&rbst, 1.4f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp365
	movss	.LC74(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp365,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:598:     PDSP_ASSERT(pdsp_robust(&rbst, 1.4f) == 1U);
	cmpw	$1, %ax	 #, _60
	je	.L486	 #,
	movl	$598, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp366
	movq	%rax, %rdx	 # tmp366,
	leaq	.LC3(%rip), %rax	 #, tmp367
	movq	%rax, %rcx	 # tmp367,
	call	printf	 #
.L486:
 # ./test/pdsp_test.c:599:     PDSP_ASSERT(pdsp_robust(&rbst, 0.0f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp368
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp368,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:599:     PDSP_ASSERT(pdsp_robust(&rbst, 0.0f) == 1U);
	cmpw	$1, %ax	 #, _61
	je	.L487	 #,
	movl	$599, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp369
	movq	%rax, %rdx	 # tmp369,
	leaq	.LC3(%rip), %rax	 #, tmp370
	movq	%rax, %rcx	 # tmp370,
	call	printf	 #
.L487:
 # ./test/pdsp_test.c:600:     PDSP_ASSERT(pdsp_robust(&rbst, 0.0f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp371
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp371,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:600:     PDSP_ASSERT(pdsp_robust(&rbst, 0.0f) == 1U);
	cmpw	$1, %ax	 #, _62
	je	.L488	 #,
	movl	$600, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp372
	movq	%rax, %rdx	 # tmp372,
	leaq	.LC3(%rip), %rax	 #, tmp373
	movq	%rax, %rcx	 # tmp373,
	call	printf	 #
.L488:
 # ./test/pdsp_test.c:601:     PDSP_ASSERT(pdsp_robust(&rbst, 0.0f) == 0U);
	leaq	-128(%rbp), %rax	 #, tmp374
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp374,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:601:     PDSP_ASSERT(pdsp_robust(&rbst, 0.0f) == 0U);
	testw	%ax, %ax	 # _63
	je	.L489	 #,
	movl	$601, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp375
	movq	%rax, %rdx	 # tmp375,
	leaq	.LC3(%rip), %rax	 #, tmp376
	movq	%rax, %rcx	 # tmp376,
	call	printf	 #
.L489:
 # ./test/pdsp_test.c:602:     PDSP_ASSERT(pdsp_robust(&rbst, 0.0f) == 0U);
	leaq	-128(%rbp), %rax	 #, tmp377
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp377,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:602:     PDSP_ASSERT(pdsp_robust(&rbst, 0.0f) == 0U);
	testw	%ax, %ax	 # _64
	je	.L490	 #,
	movl	$602, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp378
	movq	%rax, %rdx	 # tmp378,
	leaq	.LC3(%rip), %rax	 #, tmp379
	movq	%rax, %rcx	 # tmp379,
	call	printf	 #
.L490:
 # ./test/pdsp_test.c:603:     PDSP_ASSERT(pdsp_robust(&rbst, 0.0f) == 0U);
	leaq	-128(%rbp), %rax	 #, tmp380
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp380,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:603:     PDSP_ASSERT(pdsp_robust(&rbst, 0.0f) == 0U);
	testw	%ax, %ax	 # _65
	je	.L491	 #,
	movl	$603, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp381
	movq	%rax, %rdx	 # tmp381,
	leaq	.LC3(%rip), %rax	 #, tmp382
	movq	%rax, %rcx	 # tmp382,
	call	printf	 #
.L491:
 # ./test/pdsp_test.c:604:     pdsp_robust_clear(&rbst);
	leaq	-128(%rbp), %rax	 #, tmp383
	movq	%rax, %rcx	 # tmp383,
	call	pdsp_robust_clear	 #
 # ./test/pdsp_test.c:605:     af32_time_up[0] = 0.0;
	pxor	%xmm0, %xmm0	 # tmp384
	movss	%xmm0, -48(%rbp)	 # tmp384, af32_time_up[0]
 # ./test/pdsp_test.c:606:     af32_time_up[1] = 0.0;
	pxor	%xmm0, %xmm0	 # tmp385
	movss	%xmm0, -44(%rbp)	 # tmp385, af32_time_up[1]
 # ./test/pdsp_test.c:607:     af32_time_up[2] = 0.0;
	pxor	%xmm0, %xmm0	 # tmp386
	movss	%xmm0, -40(%rbp)	 # tmp386, af32_time_up[2]
 # ./test/pdsp_test.c:608:     af32_time_up[3] = 0.0;
	pxor	%xmm0, %xmm0	 # tmp387
	movss	%xmm0, -36(%rbp)	 # tmp387, af32_time_up[3]
 # ./test/pdsp_test.c:609:     af32_time_dn[0] = 0.0;
	pxor	%xmm0, %xmm0	 # tmp388
	movss	%xmm0, -64(%rbp)	 # tmp388, af32_time_dn[0]
 # ./test/pdsp_test.c:610:     af32_time_dn[1] = 0.0;
	pxor	%xmm0, %xmm0	 # tmp389
	movss	%xmm0, -60(%rbp)	 # tmp389, af32_time_dn[1]
 # ./test/pdsp_test.c:611:     af32_time_dn[2] = 0.0;
	pxor	%xmm0, %xmm0	 # tmp390
	movss	%xmm0, -56(%rbp)	 # tmp390, af32_time_dn[2]
 # ./test/pdsp_test.c:612:     af32_time_dn[3] = 0.0;
	pxor	%xmm0, %xmm0	 # tmp391
	movss	%xmm0, -52(%rbp)	 # tmp391, af32_time_dn[3]
 # ./test/pdsp_test.c:613:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp392
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp392,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:613:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 1U);
	cmpw	$1, %ax	 #, _66
	je	.L492	 #,
	movl	$613, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp393
	movq	%rax, %rdx	 # tmp393,
	leaq	.LC3(%rip), %rax	 #, tmp394
	movq	%rax, %rcx	 # tmp394,
	call	printf	 #
.L492:
 # ./test/pdsp_test.c:614:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp395
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp395,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:614:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 2U);
	cmpw	$2, %ax	 #, _67
	je	.L493	 #,
	movl	$614, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp396
	movq	%rax, %rdx	 # tmp396,
	leaq	.LC3(%rip), %rax	 #, tmp397
	movq	%rax, %rcx	 # tmp397,
	call	printf	 #
.L493:
 # ./test/pdsp_test.c:615:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
	leaq	-128(%rbp), %rax	 #, tmp398
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp398,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:615:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
	cmpw	$3, %ax	 #, _68
	je	.L494	 #,
	movl	$615, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp399
	movq	%rax, %rdx	 # tmp399,
	leaq	.LC3(%rip), %rax	 #, tmp400
	movq	%rax, %rcx	 # tmp400,
	call	printf	 #
.L494:
 # ./test/pdsp_test.c:616:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp401
	movss	.LC72(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp401,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:616:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 2U);
	cmpw	$2, %ax	 #, _69
	je	.L495	 #,
	movl	$616, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp402
	movq	%rax, %rdx	 # tmp402,
	leaq	.LC3(%rip), %rax	 #, tmp403
	movq	%rax, %rcx	 # tmp403,
	call	printf	 #
.L495:
 # ./test/pdsp_test.c:617:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp404
	movss	.LC72(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp404,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:617:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 1U);
	cmpw	$1, %ax	 #, _70
	je	.L496	 #,
	movl	$617, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp405
	movq	%rax, %rdx	 # tmp405,
	leaq	.LC3(%rip), %rax	 #, tmp406
	movq	%rax, %rcx	 # tmp406,
	call	printf	 #
.L496:
 # ./test/pdsp_test.c:618:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 0U);
	leaq	-128(%rbp), %rax	 #, tmp407
	movss	.LC72(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp407,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:618:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 0U);
	testw	%ax, %ax	 # _71
	je	.L497	 #,
	movl	$618, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp408
	movq	%rax, %rdx	 # tmp408,
	leaq	.LC3(%rip), %rax	 #, tmp409
	movq	%rax, %rcx	 # tmp409,
	call	printf	 #
.L497:
 # ./test/pdsp_test.c:619:     af32_time_up[0] = 0.0;
	pxor	%xmm0, %xmm0	 # tmp410
	movss	%xmm0, -48(%rbp)	 # tmp410, af32_time_up[0]
 # ./test/pdsp_test.c:620:     af32_time_up[1] = 1.0;
	movss	.LC23(%rip), %xmm0	 #, tmp411
	movss	%xmm0, -44(%rbp)	 # tmp411, af32_time_up[1]
 # ./test/pdsp_test.c:621:     af32_time_up[2] = 2.0;
	movss	.LC22(%rip), %xmm0	 #, tmp412
	movss	%xmm0, -40(%rbp)	 # tmp412, af32_time_up[2]
 # ./test/pdsp_test.c:622:     af32_time_up[3] = 0.0;
	pxor	%xmm0, %xmm0	 # tmp413
	movss	%xmm0, -36(%rbp)	 # tmp413, af32_time_up[3]
 # ./test/pdsp_test.c:623:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp414
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp414,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:623:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 1U);
	cmpw	$1, %ax	 #, _72
	je	.L498	 #,
	movl	$623, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp415
	movq	%rax, %rdx	 # tmp415,
	leaq	.LC3(%rip), %rax	 #, tmp416
	movq	%rax, %rcx	 # tmp416,
	call	printf	 #
.L498:
 # ./test/pdsp_test.c:624:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp417
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp417,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:624:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 1U);
	cmpw	$1, %ax	 #, _73
	je	.L499	 #,
	movl	$624, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp418
	movq	%rax, %rdx	 # tmp418,
	leaq	.LC3(%rip), %rax	 #, tmp419
	movq	%rax, %rcx	 # tmp419,
	call	printf	 #
.L499:
 # ./test/pdsp_test.c:625:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp420
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp420,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:625:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 2U);
	cmpw	$2, %ax	 #, _74
	je	.L500	 #,
	movl	$625, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp421
	movq	%rax, %rdx	 # tmp421,
	leaq	.LC3(%rip), %rax	 #, tmp422
	movq	%rax, %rcx	 # tmp422,
	call	printf	 #
.L500:
 # ./test/pdsp_test.c:626:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp423
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp423,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:626:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 2U);
	cmpw	$2, %ax	 #, _75
	je	.L501	 #,
	movl	$626, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp424
	movq	%rax, %rdx	 # tmp424,
	leaq	.LC3(%rip), %rax	 #, tmp425
	movq	%rax, %rcx	 # tmp425,
	call	printf	 #
.L501:
 # ./test/pdsp_test.c:627:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp426
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp426,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:627:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 2U);
	cmpw	$2, %ax	 #, _76
	je	.L502	 #,
	movl	$627, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp427
	movq	%rax, %rdx	 # tmp427,
	leaq	.LC3(%rip), %rax	 #, tmp428
	movq	%rax, %rcx	 # tmp428,
	call	printf	 #
.L502:
 # ./test/pdsp_test.c:628:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
	leaq	-128(%rbp), %rax	 #, tmp429
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp429,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:628:     PDSP_ASSERT(pdsp_robust(&rbst, 10.0f) == 3U);
	cmpw	$3, %ax	 #, _77
	je	.L503	 #,
	movl	$628, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp430
	movq	%rax, %rdx	 # tmp430,
	leaq	.LC3(%rip), %rax	 #, tmp431
	movq	%rax, %rcx	 # tmp431,
	call	printf	 #
.L503:
 # ./test/pdsp_test.c:629:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 2U);
	leaq	-128(%rbp), %rax	 #, tmp432
	movss	.LC72(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp432,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:629:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 2U);
	cmpw	$2, %ax	 #, _78
	je	.L504	 #,
	movl	$629, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp433
	movq	%rax, %rdx	 # tmp433,
	leaq	.LC3(%rip), %rax	 #, tmp434
	movq	%rax, %rcx	 # tmp434,
	call	printf	 #
.L504:
 # ./test/pdsp_test.c:630:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 1U);
	leaq	-128(%rbp), %rax	 #, tmp435
	movss	.LC72(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp435,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:630:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 1U);
	cmpw	$1, %ax	 #, _79
	je	.L505	 #,
	movl	$630, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp436
	movq	%rax, %rdx	 # tmp436,
	leaq	.LC3(%rip), %rax	 #, tmp437
	movq	%rax, %rcx	 # tmp437,
	call	printf	 #
.L505:
 # ./test/pdsp_test.c:631:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 0U);
	leaq	-128(%rbp), %rax	 #, tmp438
	movss	.LC72(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp438,
	call	pdsp_robust	 #
 # ./test/pdsp_test.c:631:     PDSP_ASSERT(pdsp_robust(&rbst, -10.0f) == 0U);
	testw	%ax, %ax	 # _80
	je	.L507	 #,
	movl	$631, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp439
	movq	%rax, %rdx	 # tmp439,
	leaq	.LC3(%rip), %rax	 #, tmp440
	movq	%rax, %rcx	 # tmp440,
	call	printf	 #
.L507:
 # ./test/pdsp_test.c:632: }
	nop	
	addq	$160, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC75:
	.ascii "-- void test_backlash(void) --\12\0"
	.text
	.globl	test_backlash
	.def	test_backlash;	.scl	2;	.type	32;	.endef
	.seh_proc	test_backlash
test_backlash:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
 # ./test/pdsp_test.c:636:     printf("-- void test_backlash(void) --\n");
	leaq	.LC75(%rip), %rax	 #, tmp104
	movq	%rax, %rcx	 # tmp104,
	call	printf	 #
 # ./test/pdsp_test.c:637:     pdsp_backlash_t bklsh = {.f32_backlash_half = 2.0f, .f32_state = 0.0f};
	movss	.LC22(%rip), %xmm0	 #, tmp105
	movss	%xmm0, -8(%rbp)	 # tmp105, bklsh.f32_backlash_half
	pxor	%xmm0, %xmm0	 # tmp106
	movss	%xmm0, -4(%rbp)	 # tmp106, bklsh.f32_state
 # ./test/pdsp_test.c:638:     PDSP_ASSERT(pdsp_backlash(&bklsh, 0.0f) == 0.0f);
	leaq	-8(%rbp), %rax	 #, tmp107
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp107,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _1
 # ./test/pdsp_test.c:638:     PDSP_ASSERT(pdsp_backlash(&bklsh, 0.0f) == 0.0f);
	pxor	%xmm0, %xmm0	 # tmp108
	movd	%eax, %xmm2	 # _1, _1
	ucomiss	%xmm0, %xmm2	 # tmp108, _1
	jp	.L553	 #,
	pxor	%xmm0, %xmm0	 # tmp109
	movd	%eax, %xmm3	 # _1, _1
	ucomiss	%xmm0, %xmm3	 # tmp109, _1
	je	.L509	 #,
.L553:
	movl	$638, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp110
	movq	%rax, %rdx	 # tmp110,
	leaq	.LC3(%rip), %rax	 #, tmp111
	movq	%rax, %rcx	 # tmp111,
	call	printf	 #
.L509:
 # ./test/pdsp_test.c:639:     PDSP_ASSERT(pdsp_backlash(&bklsh, 1.0f) == 0.0f);
	leaq	-8(%rbp), %rax	 #, tmp112
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp112,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _2
 # ./test/pdsp_test.c:639:     PDSP_ASSERT(pdsp_backlash(&bklsh, 1.0f) == 0.0f);
	pxor	%xmm0, %xmm0	 # tmp113
	movd	%eax, %xmm4	 # _2, _2
	ucomiss	%xmm0, %xmm4	 # tmp113, _2
	jp	.L554	 #,
	pxor	%xmm0, %xmm0	 # tmp114
	movd	%eax, %xmm5	 # _2, _2
	ucomiss	%xmm0, %xmm5	 # tmp114, _2
	je	.L511	 #,
.L554:
	movl	$639, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp115
	movq	%rax, %rdx	 # tmp115,
	leaq	.LC3(%rip), %rax	 #, tmp116
	movq	%rax, %rcx	 # tmp116,
	call	printf	 #
.L511:
 # ./test/pdsp_test.c:640:     PDSP_ASSERT(pdsp_backlash(&bklsh, 2.0f) == 0.0f);
	leaq	-8(%rbp), %rax	 #, tmp117
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp117,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _3
 # ./test/pdsp_test.c:640:     PDSP_ASSERT(pdsp_backlash(&bklsh, 2.0f) == 0.0f);
	pxor	%xmm0, %xmm0	 # tmp118
	movd	%eax, %xmm2	 # _3, _3
	ucomiss	%xmm0, %xmm2	 # tmp118, _3
	jp	.L555	 #,
	pxor	%xmm0, %xmm0	 # tmp119
	movd	%eax, %xmm3	 # _3, _3
	ucomiss	%xmm0, %xmm3	 # tmp119, _3
	je	.L513	 #,
.L555:
	movl	$640, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp120
	movq	%rax, %rdx	 # tmp120,
	leaq	.LC3(%rip), %rax	 #, tmp121
	movq	%rax, %rcx	 # tmp121,
	call	printf	 #
.L513:
 # ./test/pdsp_test.c:641:     PDSP_ASSERT(pdsp_backlash(&bklsh, 3.0f) == 1.0f);
	leaq	-8(%rbp), %rax	 #, tmp122
	movss	.LC30(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp122,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _4
 # ./test/pdsp_test.c:641:     PDSP_ASSERT(pdsp_backlash(&bklsh, 3.0f) == 1.0f);
	movss	.LC23(%rip), %xmm0	 #, tmp123
	movd	%eax, %xmm4	 # _4, _4
	ucomiss	%xmm0, %xmm4	 # tmp123, _4
	jp	.L556	 #,
	movss	.LC23(%rip), %xmm0	 #, tmp124
	movd	%eax, %xmm5	 # _4, _4
	ucomiss	%xmm0, %xmm5	 # tmp124, _4
	je	.L515	 #,
.L556:
	movl	$641, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp125
	movq	%rax, %rdx	 # tmp125,
	leaq	.LC3(%rip), %rax	 #, tmp126
	movq	%rax, %rcx	 # tmp126,
	call	printf	 #
.L515:
 # ./test/pdsp_test.c:642:     PDSP_ASSERT(pdsp_backlash(&bklsh, 2.0f) == 1.0f);
	leaq	-8(%rbp), %rax	 #, tmp127
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp127,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _5
 # ./test/pdsp_test.c:642:     PDSP_ASSERT(pdsp_backlash(&bklsh, 2.0f) == 1.0f);
	movss	.LC23(%rip), %xmm0	 #, tmp128
	movd	%eax, %xmm2	 # _5, _5
	ucomiss	%xmm0, %xmm2	 # tmp128, _5
	jp	.L557	 #,
	movss	.LC23(%rip), %xmm0	 #, tmp129
	movd	%eax, %xmm3	 # _5, _5
	ucomiss	%xmm0, %xmm3	 # tmp129, _5
	je	.L517	 #,
.L557:
	movl	$642, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp130
	movq	%rax, %rdx	 # tmp130,
	leaq	.LC3(%rip), %rax	 #, tmp131
	movq	%rax, %rcx	 # tmp131,
	call	printf	 #
.L517:
 # ./test/pdsp_test.c:643:     PDSP_ASSERT(pdsp_backlash(&bklsh, 1.0f) == 1.0f);
	leaq	-8(%rbp), %rax	 #, tmp132
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp132,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _6
 # ./test/pdsp_test.c:643:     PDSP_ASSERT(pdsp_backlash(&bklsh, 1.0f) == 1.0f);
	movss	.LC23(%rip), %xmm0	 #, tmp133
	movd	%eax, %xmm4	 # _6, _6
	ucomiss	%xmm0, %xmm4	 # tmp133, _6
	jp	.L558	 #,
	movss	.LC23(%rip), %xmm0	 #, tmp134
	movd	%eax, %xmm5	 # _6, _6
	ucomiss	%xmm0, %xmm5	 # tmp134, _6
	je	.L519	 #,
.L558:
	movl	$643, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp135
	movq	%rax, %rdx	 # tmp135,
	leaq	.LC3(%rip), %rax	 #, tmp136
	movq	%rax, %rcx	 # tmp136,
	call	printf	 #
.L519:
 # ./test/pdsp_test.c:644:     PDSP_ASSERT(pdsp_backlash(&bklsh, 0.0f) == 1.0f);
	leaq	-8(%rbp), %rax	 #, tmp137
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp137,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _7
 # ./test/pdsp_test.c:644:     PDSP_ASSERT(pdsp_backlash(&bklsh, 0.0f) == 1.0f);
	movss	.LC23(%rip), %xmm0	 #, tmp138
	movd	%eax, %xmm2	 # _7, _7
	ucomiss	%xmm0, %xmm2	 # tmp138, _7
	jp	.L559	 #,
	movss	.LC23(%rip), %xmm0	 #, tmp139
	movd	%eax, %xmm3	 # _7, _7
	ucomiss	%xmm0, %xmm3	 # tmp139, _7
	je	.L521	 #,
.L559:
	movl	$644, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp140
	movq	%rax, %rdx	 # tmp140,
	leaq	.LC3(%rip), %rax	 #, tmp141
	movq	%rax, %rcx	 # tmp141,
	call	printf	 #
.L521:
 # ./test/pdsp_test.c:645:     PDSP_ASSERT(pdsp_backlash(&bklsh, -1.0f) == 1.0f);
	leaq	-8(%rbp), %rax	 #, tmp142
	movss	.LC26(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp142,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _8
 # ./test/pdsp_test.c:645:     PDSP_ASSERT(pdsp_backlash(&bklsh, -1.0f) == 1.0f);
	movss	.LC23(%rip), %xmm0	 #, tmp143
	movd	%eax, %xmm4	 # _8, _8
	ucomiss	%xmm0, %xmm4	 # tmp143, _8
	jp	.L560	 #,
	movss	.LC23(%rip), %xmm0	 #, tmp144
	movd	%eax, %xmm5	 # _8, _8
	ucomiss	%xmm0, %xmm5	 # tmp144, _8
	je	.L523	 #,
.L560:
	movl	$645, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp145
	movq	%rax, %rdx	 # tmp145,
	leaq	.LC3(%rip), %rax	 #, tmp146
	movq	%rax, %rcx	 # tmp146,
	call	printf	 #
.L523:
 # ./test/pdsp_test.c:646:     PDSP_ASSERT(pdsp_backlash(&bklsh, -2.0f) == 0.0f);
	leaq	-8(%rbp), %rax	 #, tmp147
	movss	.LC33(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp147,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _9
 # ./test/pdsp_test.c:646:     PDSP_ASSERT(pdsp_backlash(&bklsh, -2.0f) == 0.0f);
	pxor	%xmm0, %xmm0	 # tmp148
	movd	%eax, %xmm2	 # _9, _9
	ucomiss	%xmm0, %xmm2	 # tmp148, _9
	jp	.L561	 #,
	pxor	%xmm0, %xmm0	 # tmp149
	movd	%eax, %xmm3	 # _9, _9
	ucomiss	%xmm0, %xmm3	 # tmp149, _9
	je	.L525	 #,
.L561:
	movl	$646, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp150
	movq	%rax, %rdx	 # tmp150,
	leaq	.LC3(%rip), %rax	 #, tmp151
	movq	%rax, %rcx	 # tmp151,
	call	printf	 #
.L525:
 # ./test/pdsp_test.c:647:     PDSP_ASSERT(pdsp_backlash(&bklsh, -3.0f) == -1.0f);
	leaq	-8(%rbp), %rax	 #, tmp152
	movss	.LC34(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp152,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _10
 # ./test/pdsp_test.c:647:     PDSP_ASSERT(pdsp_backlash(&bklsh, -3.0f) == -1.0f);
	movss	.LC26(%rip), %xmm0	 #, tmp153
	movd	%eax, %xmm4	 # _10, _10
	ucomiss	%xmm0, %xmm4	 # tmp153, _10
	jp	.L562	 #,
	movss	.LC26(%rip), %xmm0	 #, tmp154
	movd	%eax, %xmm5	 # _10, _10
	ucomiss	%xmm0, %xmm5	 # tmp154, _10
	je	.L527	 #,
.L562:
	movl	$647, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp155
	movq	%rax, %rdx	 # tmp155,
	leaq	.LC3(%rip), %rax	 #, tmp156
	movq	%rax, %rcx	 # tmp156,
	call	printf	 #
.L527:
 # ./test/pdsp_test.c:648:     PDSP_ASSERT(pdsp_backlash(&bklsh, -100.0f) == -98.0f);
	leaq	-8(%rbp), %rax	 #, tmp157
	movss	.LC76(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp157,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _11
 # ./test/pdsp_test.c:648:     PDSP_ASSERT(pdsp_backlash(&bklsh, -100.0f) == -98.0f);
	movd	%eax, %xmm2	 # _11, _11
	ucomiss	.LC77(%rip), %xmm2	 #, _11
	jp	.L563	 #,
	movd	%eax, %xmm3	 # _11, _11
	ucomiss	.LC77(%rip), %xmm3	 #, _11
	je	.L529	 #,
.L563:
	movl	$648, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp158
	movq	%rax, %rdx	 # tmp158,
	leaq	.LC3(%rip), %rax	 #, tmp159
	movq	%rax, %rcx	 # tmp159,
	call	printf	 #
.L529:
 # ./test/pdsp_test.c:649:     PDSP_ASSERT(pdsp_backlash(&bklsh, -99.0f) == -98.0f);
	leaq	-8(%rbp), %rax	 #, tmp160
	movss	.LC78(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp160,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _12
 # ./test/pdsp_test.c:649:     PDSP_ASSERT(pdsp_backlash(&bklsh, -99.0f) == -98.0f);
	movd	%eax, %xmm4	 # _12, _12
	ucomiss	.LC77(%rip), %xmm4	 #, _12
	jp	.L564	 #,
	movd	%eax, %xmm5	 # _12, _12
	ucomiss	.LC77(%rip), %xmm5	 #, _12
	je	.L531	 #,
.L564:
	movl	$649, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp161
	movq	%rax, %rdx	 # tmp161,
	leaq	.LC3(%rip), %rax	 #, tmp162
	movq	%rax, %rcx	 # tmp162,
	call	printf	 #
.L531:
 # ./test/pdsp_test.c:650:     PDSP_ASSERT(pdsp_backlash(&bklsh, -98.0f) == -98.0f);
	leaq	-8(%rbp), %rax	 #, tmp163
	movss	.LC77(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp163,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _13
 # ./test/pdsp_test.c:650:     PDSP_ASSERT(pdsp_backlash(&bklsh, -98.0f) == -98.0f);
	movd	%eax, %xmm2	 # _13, _13
	ucomiss	.LC77(%rip), %xmm2	 #, _13
	jp	.L565	 #,
	movd	%eax, %xmm3	 # _13, _13
	ucomiss	.LC77(%rip), %xmm3	 #, _13
	je	.L533	 #,
.L565:
	movl	$650, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp164
	movq	%rax, %rdx	 # tmp164,
	leaq	.LC3(%rip), %rax	 #, tmp165
	movq	%rax, %rcx	 # tmp165,
	call	printf	 #
.L533:
 # ./test/pdsp_test.c:651:     PDSP_ASSERT(pdsp_backlash(&bklsh, -97.0f) == -98.0f);
	leaq	-8(%rbp), %rax	 #, tmp166
	movss	.LC79(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp166,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _14
 # ./test/pdsp_test.c:651:     PDSP_ASSERT(pdsp_backlash(&bklsh, -97.0f) == -98.0f);
	movd	%eax, %xmm4	 # _14, _14
	ucomiss	.LC77(%rip), %xmm4	 #, _14
	jp	.L566	 #,
	movd	%eax, %xmm5	 # _14, _14
	ucomiss	.LC77(%rip), %xmm5	 #, _14
	je	.L535	 #,
.L566:
	movl	$651, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp167
	movq	%rax, %rdx	 # tmp167,
	leaq	.LC3(%rip), %rax	 #, tmp168
	movq	%rax, %rcx	 # tmp168,
	call	printf	 #
.L535:
 # ./test/pdsp_test.c:652:     PDSP_ASSERT(pdsp_backlash(&bklsh, -96.0f) == -98.0f);
	leaq	-8(%rbp), %rax	 #, tmp169
	movss	.LC80(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp169,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _15
 # ./test/pdsp_test.c:652:     PDSP_ASSERT(pdsp_backlash(&bklsh, -96.0f) == -98.0f);
	movd	%eax, %xmm2	 # _15, _15
	ucomiss	.LC77(%rip), %xmm2	 #, _15
	jp	.L567	 #,
	movd	%eax, %xmm3	 # _15, _15
	ucomiss	.LC77(%rip), %xmm3	 #, _15
	je	.L537	 #,
.L567:
	movl	$652, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp170
	movq	%rax, %rdx	 # tmp170,
	leaq	.LC3(%rip), %rax	 #, tmp171
	movq	%rax, %rcx	 # tmp171,
	call	printf	 #
.L537:
 # ./test/pdsp_test.c:653:     PDSP_ASSERT(pdsp_backlash(&bklsh, -95.0f) == -97.0f);
	leaq	-8(%rbp), %rax	 #, tmp172
	movss	.LC81(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp172,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _16
 # ./test/pdsp_test.c:653:     PDSP_ASSERT(pdsp_backlash(&bklsh, -95.0f) == -97.0f);
	movd	%eax, %xmm4	 # _16, _16
	ucomiss	.LC79(%rip), %xmm4	 #, _16
	jp	.L568	 #,
	movd	%eax, %xmm5	 # _16, _16
	ucomiss	.LC79(%rip), %xmm5	 #, _16
	je	.L539	 #,
.L568:
	movl	$653, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp173
	movq	%rax, %rdx	 # tmp173,
	leaq	.LC3(%rip), %rax	 #, tmp174
	movq	%rax, %rcx	 # tmp174,
	call	printf	 #
.L539:
 # ./test/pdsp_test.c:654:     PDSP_ASSERT(pdsp_backlash(&bklsh, 100.0f) == 98.0f);
	leaq	-8(%rbp), %rax	 #, tmp175
	movss	.LC57(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp175,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _17
 # ./test/pdsp_test.c:654:     PDSP_ASSERT(pdsp_backlash(&bklsh, 100.0f) == 98.0f);
	movd	%eax, %xmm2	 # _17, _17
	ucomiss	.LC82(%rip), %xmm2	 #, _17
	jp	.L569	 #,
	movd	%eax, %xmm3	 # _17, _17
	ucomiss	.LC82(%rip), %xmm3	 #, _17
	je	.L541	 #,
.L569:
	movl	$654, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp176
	movq	%rax, %rdx	 # tmp176,
	leaq	.LC3(%rip), %rax	 #, tmp177
	movq	%rax, %rcx	 # tmp177,
	call	printf	 #
.L541:
 # ./test/pdsp_test.c:655:     PDSP_ASSERT(pdsp_backlash(&bklsh, 99.0f) == 98.0f);
	leaq	-8(%rbp), %rax	 #, tmp178
	movss	.LC83(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp178,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _18
 # ./test/pdsp_test.c:655:     PDSP_ASSERT(pdsp_backlash(&bklsh, 99.0f) == 98.0f);
	movd	%eax, %xmm4	 # _18, _18
	ucomiss	.LC82(%rip), %xmm4	 #, _18
	jp	.L570	 #,
	movd	%eax, %xmm5	 # _18, _18
	ucomiss	.LC82(%rip), %xmm5	 #, _18
	je	.L543	 #,
.L570:
	movl	$655, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp179
	movq	%rax, %rdx	 # tmp179,
	leaq	.LC3(%rip), %rax	 #, tmp180
	movq	%rax, %rcx	 # tmp180,
	call	printf	 #
.L543:
 # ./test/pdsp_test.c:656:     PDSP_ASSERT(pdsp_backlash(&bklsh, 98.0f) == 98.0f);
	leaq	-8(%rbp), %rax	 #, tmp181
	movss	.LC82(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp181,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _19
 # ./test/pdsp_test.c:656:     PDSP_ASSERT(pdsp_backlash(&bklsh, 98.0f) == 98.0f);
	movd	%eax, %xmm2	 # _19, _19
	ucomiss	.LC82(%rip), %xmm2	 #, _19
	jp	.L571	 #,
	movd	%eax, %xmm3	 # _19, _19
	ucomiss	.LC82(%rip), %xmm3	 #, _19
	je	.L545	 #,
.L571:
	movl	$656, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp182
	movq	%rax, %rdx	 # tmp182,
	leaq	.LC3(%rip), %rax	 #, tmp183
	movq	%rax, %rcx	 # tmp183,
	call	printf	 #
.L545:
 # ./test/pdsp_test.c:657:     PDSP_ASSERT(pdsp_backlash(&bklsh, 97.0f) == 98.0f);
	leaq	-8(%rbp), %rax	 #, tmp184
	movss	.LC84(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp184,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _20
 # ./test/pdsp_test.c:657:     PDSP_ASSERT(pdsp_backlash(&bklsh, 97.0f) == 98.0f);
	movd	%eax, %xmm4	 # _20, _20
	ucomiss	.LC82(%rip), %xmm4	 #, _20
	jp	.L572	 #,
	movd	%eax, %xmm5	 # _20, _20
	ucomiss	.LC82(%rip), %xmm5	 #, _20
	je	.L547	 #,
.L572:
	movl	$657, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp185
	movq	%rax, %rdx	 # tmp185,
	leaq	.LC3(%rip), %rax	 #, tmp186
	movq	%rax, %rcx	 # tmp186,
	call	printf	 #
.L547:
 # ./test/pdsp_test.c:658:     PDSP_ASSERT(pdsp_backlash(&bklsh, 96.0f) == 98.0f);
	leaq	-8(%rbp), %rax	 #, tmp187
	movss	.LC85(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp187,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _21
 # ./test/pdsp_test.c:658:     PDSP_ASSERT(pdsp_backlash(&bklsh, 96.0f) == 98.0f);
	movd	%eax, %xmm2	 # _21, _21
	ucomiss	.LC82(%rip), %xmm2	 #, _21
	jp	.L573	 #,
	movd	%eax, %xmm3	 # _21, _21
	ucomiss	.LC82(%rip), %xmm3	 #, _21
	je	.L549	 #,
.L573:
	movl	$658, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp188
	movq	%rax, %rdx	 # tmp188,
	leaq	.LC3(%rip), %rax	 #, tmp189
	movq	%rax, %rcx	 # tmp189,
	call	printf	 #
.L549:
 # ./test/pdsp_test.c:659:     PDSP_ASSERT(pdsp_backlash(&bklsh, 95.0f) == 97.0f);
	leaq	-8(%rbp), %rax	 #, tmp190
	movss	.LC86(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp190,
	call	pdsp_backlash	 #
	movd	%xmm0, %eax	 #, _22
 # ./test/pdsp_test.c:659:     PDSP_ASSERT(pdsp_backlash(&bklsh, 95.0f) == 97.0f);
	movd	%eax, %xmm4	 # _22, _22
	ucomiss	.LC84(%rip), %xmm4	 #, _22
	jp	.L574	 #,
	movd	%eax, %xmm5	 # _22, _22
	ucomiss	.LC84(%rip), %xmm5	 #, _22
	je	.L575	 #,
.L574:
	movl	$659, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp191
	movq	%rax, %rdx	 # tmp191,
	leaq	.LC3(%rip), %rax	 #, tmp192
	movq	%rax, %rcx	 # tmp192,
	call	printf	 #
.L575:
 # ./test/pdsp_test.c:660: }
	nop	
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC87:
	.ascii "-- void test_edge_delay(void) --\12\0"
	.text
	.globl	test_edge_delay
	.def	test_edge_delay;	.scl	2;	.type	32;	.endef
	.seh_proc	test_edge_delay
test_edge_delay:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
 # ./test/pdsp_test.c:664:     printf("-- void test_edge_delay(void) --\n");
	leaq	.LC87(%rip), %rax	 #, tmp126
	movq	%rax, %rcx	 # tmp126,
	call	printf	 #
 # ./test/pdsp_test.c:666:     pdsp_edge_delay_init(&redfed, 0, 2, 4);
	leaq	-8(%rbp), %rax	 #, tmp127
	movl	$4, %r9d	 #,
	movl	$2, %r8d	 #,
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp127,
	call	pdsp_edge_delay_init	 #
 # ./test/pdsp_test.c:667:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 0U);
	leaq	-8(%rbp), %rax	 #, tmp128
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp128,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:667:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 0U);
	testw	%ax, %ax	 # _1
	je	.L577	 #,
	movl	$667, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp129
	movq	%rax, %rdx	 # tmp129,
	leaq	.LC3(%rip), %rax	 #, tmp130
	movq	%rax, %rcx	 # tmp130,
	call	printf	 #
.L577:
 # ./test/pdsp_test.c:668:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 0U);
	leaq	-8(%rbp), %rax	 #, tmp131
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp131,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:668:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 0U);
	testw	%ax, %ax	 # _2
	je	.L578	 #,
	movl	$668, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp132
	movq	%rax, %rdx	 # tmp132,
	leaq	.LC3(%rip), %rax	 #, tmp133
	movq	%rax, %rcx	 # tmp133,
	call	printf	 #
.L578:
 # ./test/pdsp_test.c:669:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 0U);
	leaq	-8(%rbp), %rax	 #, tmp134
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp134,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:669:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 0U);
	testw	%ax, %ax	 # _3
	je	.L579	 #,
	movl	$669, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp135
	movq	%rax, %rdx	 # tmp135,
	leaq	.LC3(%rip), %rax	 #, tmp136
	movq	%rax, %rcx	 # tmp136,
	call	printf	 #
.L579:
 # ./test/pdsp_test.c:670:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp137
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp137,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:670:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	cmpw	$1, %ax	 #, _4
	je	.L580	 #,
	movl	$670, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp138
	movq	%rax, %rdx	 # tmp138,
	leaq	.LC3(%rip), %rax	 #, tmp139
	movq	%rax, %rcx	 # tmp139,
	call	printf	 #
.L580:
 # ./test/pdsp_test.c:671:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp140
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp140,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:671:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	cmpw	$1, %ax	 #, _5
	je	.L581	 #,
	movl	$671, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp141
	movq	%rax, %rdx	 # tmp141,
	leaq	.LC3(%rip), %rax	 #, tmp142
	movq	%rax, %rcx	 # tmp142,
	call	printf	 #
.L581:
 # ./test/pdsp_test.c:672:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp143
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp143,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:672:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 1U);
	cmpw	$1, %ax	 #, _6
	je	.L582	 #,
	movl	$672, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp144
	movq	%rax, %rdx	 # tmp144,
	leaq	.LC3(%rip), %rax	 #, tmp145
	movq	%rax, %rcx	 # tmp145,
	call	printf	 #
.L582:
 # ./test/pdsp_test.c:673:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp146
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp146,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:673:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 1U);
	cmpw	$1, %ax	 #, _7
	je	.L583	 #,
	movl	$673, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp147
	movq	%rax, %rdx	 # tmp147,
	leaq	.LC3(%rip), %rax	 #, tmp148
	movq	%rax, %rcx	 # tmp148,
	call	printf	 #
.L583:
 # ./test/pdsp_test.c:674:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp149
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp149,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:674:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 1U);
	cmpw	$1, %ax	 #, _8
	je	.L584	 #,
	movl	$674, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp150
	movq	%rax, %rdx	 # tmp150,
	leaq	.LC3(%rip), %rax	 #, tmp151
	movq	%rax, %rcx	 # tmp151,
	call	printf	 #
.L584:
 # ./test/pdsp_test.c:675:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp152
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp152,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:675:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 1U);
	cmpw	$1, %ax	 #, _9
	je	.L585	 #,
	movl	$675, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp153
	movq	%rax, %rdx	 # tmp153,
	leaq	.LC3(%rip), %rax	 #, tmp154
	movq	%rax, %rcx	 # tmp154,
	call	printf	 #
.L585:
 # ./test/pdsp_test.c:676:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 0U);
	leaq	-8(%rbp), %rax	 #, tmp155
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp155,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:676:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 0U);
	testw	%ax, %ax	 # _10
	je	.L586	 #,
	movl	$676, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp156
	movq	%rax, %rdx	 # tmp156,
	leaq	.LC3(%rip), %rax	 #, tmp157
	movq	%rax, %rcx	 # tmp157,
	call	printf	 #
.L586:
 # ./test/pdsp_test.c:677:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 0U);
	leaq	-8(%rbp), %rax	 #, tmp158
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp158,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:677:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 0U);
	testw	%ax, %ax	 # _11
	je	.L587	 #,
	movl	$677, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp159
	movq	%rax, %rdx	 # tmp159,
	leaq	.LC3(%rip), %rax	 #, tmp160
	movq	%rax, %rcx	 # tmp160,
	call	printf	 #
.L587:
 # ./test/pdsp_test.c:678:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 0U);
	leaq	-8(%rbp), %rax	 #, tmp161
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp161,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:678:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 0U);
	testw	%ax, %ax	 # _12
	je	.L588	 #,
	movl	$678, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp162
	movq	%rax, %rdx	 # tmp162,
	leaq	.LC3(%rip), %rax	 #, tmp163
	movq	%rax, %rcx	 # tmp163,
	call	printf	 #
.L588:
 # ./test/pdsp_test.c:679:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 0U);
	leaq	-8(%rbp), %rax	 #, tmp164
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp164,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:679:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 0U);
	testw	%ax, %ax	 # _13
	je	.L589	 #,
	movl	$679, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp165
	movq	%rax, %rdx	 # tmp165,
	leaq	.LC3(%rip), %rax	 #, tmp166
	movq	%rax, %rcx	 # tmp166,
	call	printf	 #
.L589:
 # ./test/pdsp_test.c:680:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 0U);
	leaq	-8(%rbp), %rax	 #, tmp167
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp167,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:680:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 0U);
	testw	%ax, %ax	 # _14
	je	.L590	 #,
	movl	$680, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp168
	movq	%rax, %rdx	 # tmp168,
	leaq	.LC3(%rip), %rax	 #, tmp169
	movq	%rax, %rcx	 # tmp169,
	call	printf	 #
.L590:
 # ./test/pdsp_test.c:681:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 0U);
	leaq	-8(%rbp), %rax	 #, tmp170
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp170,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:681:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 0U);
	testw	%ax, %ax	 # _15
	je	.L591	 #,
	movl	$681, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp171
	movq	%rax, %rdx	 # tmp171,
	leaq	.LC3(%rip), %rax	 #, tmp172
	movq	%rax, %rcx	 # tmp172,
	call	printf	 #
.L591:
 # ./test/pdsp_test.c:682:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 0U);
	leaq	-8(%rbp), %rax	 #, tmp173
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp173,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:682:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 0U);
	testw	%ax, %ax	 # _16
	je	.L592	 #,
	movl	$682, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp174
	movq	%rax, %rdx	 # tmp174,
	leaq	.LC3(%rip), %rax	 #, tmp175
	movq	%rax, %rcx	 # tmp175,
	call	printf	 #
.L592:
 # ./test/pdsp_test.c:683:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 0U);
	leaq	-8(%rbp), %rax	 #, tmp176
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp176,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:683:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 0U);
	testw	%ax, %ax	 # _17
	je	.L593	 #,
	movl	$683, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp177
	movq	%rax, %rdx	 # tmp177,
	leaq	.LC3(%rip), %rax	 #, tmp178
	movq	%rax, %rcx	 # tmp178,
	call	printf	 #
.L593:
 # ./test/pdsp_test.c:684:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp179
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp179,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:684:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	cmpw	$1, %ax	 #, _18
	je	.L594	 #,
	movl	$684, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp180
	movq	%rax, %rdx	 # tmp180,
	leaq	.LC3(%rip), %rax	 #, tmp181
	movq	%rax, %rcx	 # tmp181,
	call	printf	 #
.L594:
 # ./test/pdsp_test.c:685:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp182
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp182,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:685:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	cmpw	$1, %ax	 #, _19
	je	.L595	 #,
	movl	$685, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp183
	movq	%rax, %rdx	 # tmp183,
	leaq	.LC3(%rip), %rax	 #, tmp184
	movq	%rax, %rcx	 # tmp184,
	call	printf	 #
.L595:
 # ./test/pdsp_test.c:686:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp185
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp185,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:686:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	cmpw	$1, %ax	 #, _20
	je	.L596	 #,
	movl	$686, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp186
	movq	%rax, %rdx	 # tmp186,
	leaq	.LC3(%rip), %rax	 #, tmp187
	movq	%rax, %rcx	 # tmp187,
	call	printf	 #
.L596:
 # ./test/pdsp_test.c:687:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp188
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp188,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:687:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	cmpw	$1, %ax	 #, _21
	je	.L597	 #,
	movl	$687, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp189
	movq	%rax, %rdx	 # tmp189,
	leaq	.LC3(%rip), %rax	 #, tmp190
	movq	%rax, %rcx	 # tmp190,
	call	printf	 #
.L597:
 # ./test/pdsp_test.c:688:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp191
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp191,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:688:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	cmpw	$1, %ax	 #, _22
	je	.L598	 #,
	movl	$688, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp192
	movq	%rax, %rdx	 # tmp192,
	leaq	.LC3(%rip), %rax	 #, tmp193
	movq	%rax, %rcx	 # tmp193,
	call	printf	 #
.L598:
 # ./test/pdsp_test.c:689:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp194
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp194,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:689:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 1U);
	cmpw	$1, %ax	 #, _23
	je	.L599	 #,
	movl	$689, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp195
	movq	%rax, %rdx	 # tmp195,
	leaq	.LC3(%rip), %rax	 #, tmp196
	movq	%rax, %rcx	 # tmp196,
	call	printf	 #
.L599:
 # ./test/pdsp_test.c:690:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp197
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp197,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:690:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 1U);
	cmpw	$1, %ax	 #, _24
	je	.L600	 #,
	movl	$690, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp198
	movq	%rax, %rdx	 # tmp198,
	leaq	.LC3(%rip), %rax	 #, tmp199
	movq	%rax, %rcx	 # tmp199,
	call	printf	 #
.L600:
 # ./test/pdsp_test.c:691:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp200
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp200,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:691:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 1U);
	cmpw	$1, %ax	 #, _25
	je	.L601	 #,
	movl	$691, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp201
	movq	%rax, %rdx	 # tmp201,
	leaq	.LC3(%rip), %rax	 #, tmp202
	movq	%rax, %rcx	 # tmp202,
	call	printf	 #
.L601:
 # ./test/pdsp_test.c:692:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp203
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp203,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:692:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	cmpw	$1, %ax	 #, _26
	je	.L602	 #,
	movl	$692, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp204
	movq	%rax, %rdx	 # tmp204,
	leaq	.LC3(%rip), %rax	 #, tmp205
	movq	%rax, %rcx	 # tmp205,
	call	printf	 #
.L602:
 # ./test/pdsp_test.c:693:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp206
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp206,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:693:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	cmpw	$1, %ax	 #, _27
	je	.L603	 #,
	movl	$693, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp207
	movq	%rax, %rdx	 # tmp207,
	leaq	.LC3(%rip), %rax	 #, tmp208
	movq	%rax, %rcx	 # tmp208,
	call	printf	 #
.L603:
 # ./test/pdsp_test.c:694:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp209
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp209,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:694:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	cmpw	$1, %ax	 #, _28
	je	.L604	 #,
	movl	$694, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp210
	movq	%rax, %rdx	 # tmp210,
	leaq	.LC3(%rip), %rax	 #, tmp211
	movq	%rax, %rcx	 # tmp211,
	call	printf	 #
.L604:
 # ./test/pdsp_test.c:695:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp212
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp212,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:695:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	cmpw	$1, %ax	 #, _29
	je	.L605	 #,
	movl	$695, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp213
	movq	%rax, %rdx	 # tmp213,
	leaq	.LC3(%rip), %rax	 #, tmp214
	movq	%rax, %rcx	 # tmp214,
	call	printf	 #
.L605:
 # ./test/pdsp_test.c:696:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp215
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp215,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:696:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	cmpw	$1, %ax	 #, _30
	je	.L606	 #,
	movl	$696, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp216
	movq	%rax, %rdx	 # tmp216,
	leaq	.LC3(%rip), %rax	 #, tmp217
	movq	%rax, %rcx	 # tmp217,
	call	printf	 #
.L606:
 # ./test/pdsp_test.c:697:     pdsp_edge_delay_init(&redfed, 0, 0, 0);
	leaq	-8(%rbp), %rax	 #, tmp218
	movl	$0, %r9d	 #,
	movl	$0, %r8d	 #,
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp218,
	call	pdsp_edge_delay_init	 #
 # ./test/pdsp_test.c:698:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 0U);
	leaq	-8(%rbp), %rax	 #, tmp219
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp219,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:698:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 0U);
	testw	%ax, %ax	 # _31
	je	.L607	 #,
	movl	$698, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp220
	movq	%rax, %rdx	 # tmp220,
	leaq	.LC3(%rip), %rax	 #, tmp221
	movq	%rax, %rcx	 # tmp221,
	call	printf	 #
.L607:
 # ./test/pdsp_test.c:699:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 0U);
	leaq	-8(%rbp), %rax	 #, tmp222
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp222,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:699:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 0U);
	testw	%ax, %ax	 # _32
	je	.L608	 #,
	movl	$699, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp223
	movq	%rax, %rdx	 # tmp223,
	leaq	.LC3(%rip), %rax	 #, tmp224
	movq	%rax, %rcx	 # tmp224,
	call	printf	 #
.L608:
 # ./test/pdsp_test.c:700:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp225
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp225,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:700:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	cmpw	$1, %ax	 #, _33
	je	.L609	 #,
	movl	$700, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp226
	movq	%rax, %rdx	 # tmp226,
	leaq	.LC3(%rip), %rax	 #, tmp227
	movq	%rax, %rcx	 # tmp227,
	call	printf	 #
.L609:
 # ./test/pdsp_test.c:701:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp228
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp228,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:701:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	cmpw	$1, %ax	 #, _34
	je	.L610	 #,
	movl	$701, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp229
	movq	%rax, %rdx	 # tmp229,
	leaq	.LC3(%rip), %rax	 #, tmp230
	movq	%rax, %rcx	 # tmp230,
	call	printf	 #
.L610:
 # ./test/pdsp_test.c:702:     pdsp_edge_delay_init(&redfed, 0, 1, 2);
	leaq	-8(%rbp), %rax	 #, tmp231
	movl	$2, %r9d	 #,
	movl	$1, %r8d	 #,
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp231,
	call	pdsp_edge_delay_init	 #
 # ./test/pdsp_test.c:703:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 0U);
	leaq	-8(%rbp), %rax	 #, tmp232
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp232,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:703:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 0U);
	testw	%ax, %ax	 # _35
	je	.L611	 #,
	movl	$703, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp233
	movq	%rax, %rdx	 # tmp233,
	leaq	.LC3(%rip), %rax	 #, tmp234
	movq	%rax, %rcx	 # tmp234,
	call	printf	 #
.L611:
 # ./test/pdsp_test.c:704:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 0U);
	leaq	-8(%rbp), %rax	 #, tmp235
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp235,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:704:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 0U);
	testw	%ax, %ax	 # _36
	je	.L612	 #,
	movl	$704, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp236
	movq	%rax, %rdx	 # tmp236,
	leaq	.LC3(%rip), %rax	 #, tmp237
	movq	%rax, %rcx	 # tmp237,
	call	printf	 #
.L612:
 # ./test/pdsp_test.c:705:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp238
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp238,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:705:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	cmpw	$1, %ax	 #, _37
	je	.L613	 #,
	movl	$705, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp239
	movq	%rax, %rdx	 # tmp239,
	leaq	.LC3(%rip), %rax	 #, tmp240
	movq	%rax, %rcx	 # tmp240,
	call	printf	 #
.L613:
 # ./test/pdsp_test.c:706:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp241
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp241,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:706:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 1U) == 1U);
	cmpw	$1, %ax	 #, _38
	je	.L614	 #,
	movl	$706, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp242
	movq	%rax, %rdx	 # tmp242,
	leaq	.LC3(%rip), %rax	 #, tmp243
	movq	%rax, %rcx	 # tmp243,
	call	printf	 #
.L614:
 # ./test/pdsp_test.c:707:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 2U) == 1U);
	leaq	-8(%rbp), %rax	 #, tmp244
	movl	$2, %edx	 #,
	movq	%rax, %rcx	 # tmp244,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:707:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 2U) == 1U);
	cmpw	$1, %ax	 #, _39
	je	.L615	 #,
	movl	$707, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp245
	movq	%rax, %rdx	 # tmp245,
	leaq	.LC3(%rip), %rax	 #, tmp246
	movq	%rax, %rcx	 # tmp246,
	call	printf	 #
.L615:
 # ./test/pdsp_test.c:708:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 2U) == 2U);
	leaq	-8(%rbp), %rax	 #, tmp247
	movl	$2, %edx	 #,
	movq	%rax, %rcx	 # tmp247,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:708:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 2U) == 2U);
	cmpw	$2, %ax	 #, _40
	je	.L616	 #,
	movl	$708, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp248
	movq	%rax, %rdx	 # tmp248,
	leaq	.LC3(%rip), %rax	 #, tmp249
	movq	%rax, %rcx	 # tmp249,
	call	printf	 #
.L616:
 # ./test/pdsp_test.c:709:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 2U) == 2U);
	leaq	-8(%rbp), %rax	 #, tmp250
	movl	$2, %edx	 #,
	movq	%rax, %rcx	 # tmp250,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:709:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 2U) == 2U);
	cmpw	$2, %ax	 #, _41
	je	.L617	 #,
	movl	$709, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp251
	movq	%rax, %rdx	 # tmp251,
	leaq	.LC3(%rip), %rax	 #, tmp252
	movq	%rax, %rcx	 # tmp252,
	call	printf	 #
.L617:
 # ./test/pdsp_test.c:710:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 2U);
	leaq	-8(%rbp), %rax	 #, tmp253
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp253,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:710:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 2U);
	cmpw	$2, %ax	 #, _42
	je	.L618	 #,
	movl	$710, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp254
	movq	%rax, %rdx	 # tmp254,
	leaq	.LC3(%rip), %rax	 #, tmp255
	movq	%rax, %rcx	 # tmp255,
	call	printf	 #
.L618:
 # ./test/pdsp_test.c:711:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 2U);
	leaq	-8(%rbp), %rax	 #, tmp256
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp256,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:711:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 2U);
	cmpw	$2, %ax	 #, _43
	je	.L619	 #,
	movl	$711, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp257
	movq	%rax, %rdx	 # tmp257,
	leaq	.LC3(%rip), %rax	 #, tmp258
	movq	%rax, %rcx	 # tmp258,
	call	printf	 #
.L619:
 # ./test/pdsp_test.c:712:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 0U);
	leaq	-8(%rbp), %rax	 #, tmp259
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp259,
	call	pdsp_edge_delay	 #
 # ./test/pdsp_test.c:712:     PDSP_ASSERT(pdsp_edge_delay(&redfed, 0U) == 0U);
	testw	%ax, %ax	 # _44
	je	.L621	 #,
	movl	$712, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp260
	movq	%rax, %rdx	 # tmp260,
	leaq	.LC3(%rip), %rax	 #, tmp261
	movq	%rax, %rcx	 # tmp261,
	call	printf	 #
.L621:
 # ./test/pdsp_test.c:713: }
	nop	
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC88:
	.ascii "-- void test_monoflop(void) --\12\0"
	.text
	.globl	test_monoflop
	.def	test_monoflop;	.scl	2;	.type	32;	.endef
	.seh_proc	test_monoflop
test_monoflop:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
 # ./test/pdsp_test.c:717:     printf("-- void test_monoflop(void) --\n");
	leaq	.LC88(%rip), %rax	 #, tmp157
	movq	%rax, %rcx	 # tmp157,
	call	printf	 #
 # ./test/pdsp_test.c:719:     pdsp_monoflop_init(&mf, 2, 0, 1);
	leaq	-10(%rbp), %rax	 #, tmp158
	movl	$1, %r9d	 #,
	movl	$0, %r8d	 #,
	movl	$2, %edx	 #,
	movq	%rax, %rcx	 # tmp158,
	call	pdsp_monoflop_init	 #
 # ./test/pdsp_test.c:720:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp159
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp159,
	call	pdsp_monoflop	 #
 # ./test/pdsp_test.c:720:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _1
	je	.L623	 #,
	movl	$720, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp160
	movq	%rax, %rdx	 # tmp160,
	leaq	.LC3(%rip), %rax	 #, tmp161
	movq	%rax, %rcx	 # tmp161,
	call	printf	 #
.L623:
 # ./test/pdsp_test.c:722:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp162
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp162,
	call	pdsp_monoflop	 #
 # ./test/pdsp_test.c:722:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _2
	je	.L624	 #,
	movl	$722, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp163
	movq	%rax, %rdx	 # tmp163,
	leaq	.LC3(%rip), %rax	 #, tmp164
	movq	%rax, %rcx	 # tmp164,
	call	printf	 #
.L624:
 # ./test/pdsp_test.c:723:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp165
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp165,
	call	pdsp_monoflop	 #
 # ./test/pdsp_test.c:723:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _3
	je	.L625	 #,
	movl	$723, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp166
	movq	%rax, %rdx	 # tmp166,
	leaq	.LC3(%rip), %rax	 #, tmp167
	movq	%rax, %rcx	 # tmp167,
	call	printf	 #
.L625:
 # ./test/pdsp_test.c:724:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_TRUE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp168
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp168,
	call	pdsp_monoflop	 #
 # ./test/pdsp_test.c:724:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_TRUE) == 0U);
	testw	%ax, %ax	 # _4
	je	.L626	 #,
	movl	$724, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp169
	movq	%rax, %rdx	 # tmp169,
	leaq	.LC3(%rip), %rax	 #, tmp170
	movq	%rax, %rcx	 # tmp170,
	call	printf	 #
.L626:
 # ./test/pdsp_test.c:725:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_TRUE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp171
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp171,
	call	pdsp_monoflop	 #
 # ./test/pdsp_test.c:725:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_TRUE) == 0U);
	testw	%ax, %ax	 # _5
	je	.L627	 #,
	movl	$725, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp172
	movq	%rax, %rdx	 # tmp172,
	leaq	.LC3(%rip), %rax	 #, tmp173
	movq	%rax, %rcx	 # tmp173,
	call	printf	 #
.L627:
 # ./test/pdsp_test.c:726:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp174
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp174,
	call	pdsp_monoflop	 #
 # ./test/pdsp_test.c:726:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _6
	je	.L628	 #,
	movl	$726, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp175
	movq	%rax, %rdx	 # tmp175,
	leaq	.LC3(%rip), %rax	 #, tmp176
	movq	%rax, %rcx	 # tmp176,
	call	printf	 #
.L628:
 # ./test/pdsp_test.c:728:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp177
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp177,
	call	pdsp_monoflop	 #
 # ./test/pdsp_test.c:728:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _7
	je	.L629	 #,
	movl	$728, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp178
	movq	%rax, %rdx	 # tmp178,
	leaq	.LC3(%rip), %rax	 #, tmp179
	movq	%rax, %rcx	 # tmp179,
	call	printf	 #
.L629:
 # ./test/pdsp_test.c:729:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_FALSE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp180
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp180,
	call	pdsp_monoflop	 #
 # ./test/pdsp_test.c:729:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_FALSE) == 1U);
	cmpw	$1, %ax	 #, _8
	je	.L630	 #,
	movl	$729, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp181
	movq	%rax, %rdx	 # tmp181,
	leaq	.LC3(%rip), %rax	 #, tmp182
	movq	%rax, %rcx	 # tmp182,
	call	printf	 #
.L630:
 # ./test/pdsp_test.c:730:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_TRUE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp183
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp183,
	call	pdsp_monoflop	 #
 # ./test/pdsp_test.c:730:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_TRUE) == 0U);
	testw	%ax, %ax	 # _9
	je	.L631	 #,
	movl	$730, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp184
	movq	%rax, %rdx	 # tmp184,
	leaq	.LC3(%rip), %rax	 #, tmp185
	movq	%rax, %rcx	 # tmp185,
	call	printf	 #
.L631:
 # ./test/pdsp_test.c:731:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp186
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp186,
	call	pdsp_monoflop	 #
 # ./test/pdsp_test.c:731:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _10
	je	.L632	 #,
	movl	$731, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp187
	movq	%rax, %rdx	 # tmp187,
	leaq	.LC3(%rip), %rax	 #, tmp188
	movq	%rax, %rcx	 # tmp188,
	call	printf	 #
.L632:
 # ./test/pdsp_test.c:732:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp189
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp189,
	call	pdsp_monoflop	 #
 # ./test/pdsp_test.c:732:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _11
	je	.L633	 #,
	movl	$732, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp190
	movq	%rax, %rdx	 # tmp190,
	leaq	.LC3(%rip), %rax	 #, tmp191
	movq	%rax, %rcx	 # tmp191,
	call	printf	 #
.L633:
 # ./test/pdsp_test.c:733:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_FALSE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp192
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp192,
	call	pdsp_monoflop	 #
 # ./test/pdsp_test.c:733:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_FALSE) == 1U);
	cmpw	$1, %ax	 #, _12
	je	.L634	 #,
	movl	$733, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp193
	movq	%rax, %rdx	 # tmp193,
	leaq	.LC3(%rip), %rax	 #, tmp194
	movq	%rax, %rcx	 # tmp194,
	call	printf	 #
.L634:
 # ./test/pdsp_test.c:734:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_TRUE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp195
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp195,
	call	pdsp_monoflop	 #
 # ./test/pdsp_test.c:734:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_TRUE) == 0U);
	testw	%ax, %ax	 # _13
	je	.L635	 #,
	movl	$734, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp196
	movq	%rax, %rdx	 # tmp196,
	leaq	.LC3(%rip), %rax	 #, tmp197
	movq	%rax, %rcx	 # tmp197,
	call	printf	 #
.L635:
 # ./test/pdsp_test.c:735:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp198
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp198,
	call	pdsp_monoflop	 #
 # ./test/pdsp_test.c:735:     PDSP_ASSERT(pdsp_monoflop(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _14
	je	.L636	 #,
	movl	$735, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp199
	movq	%rax, %rdx	 # tmp199,
	leaq	.LC3(%rip), %rax	 #, tmp200
	movq	%rax, %rcx	 # tmp200,
	call	printf	 #
.L636:
 # ./test/pdsp_test.c:737:     pdsp_monoflop_init(&mf, 2, 0, 1);
	leaq	-10(%rbp), %rax	 #, tmp201
	movl	$1, %r9d	 #,
	movl	$0, %r8d	 #,
	movl	$2, %edx	 #,
	movq	%rax, %rcx	 # tmp201,
	call	pdsp_monoflop_init	 #
 # ./test/pdsp_test.c:738:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp202
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp202,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:738:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _15
	je	.L637	 #,
	movl	$738, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp203
	movq	%rax, %rdx	 # tmp203,
	leaq	.LC3(%rip), %rax	 #, tmp204
	movq	%rax, %rcx	 # tmp204,
	call	printf	 #
.L637:
 # ./test/pdsp_test.c:740:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp205
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp205,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:740:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _16
	je	.L638	 #,
	movl	$740, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp206
	movq	%rax, %rdx	 # tmp206,
	leaq	.LC3(%rip), %rax	 #, tmp207
	movq	%rax, %rcx	 # tmp207,
	call	printf	 #
.L638:
 # ./test/pdsp_test.c:741:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp208
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp208,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:741:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _17
	je	.L639	 #,
	movl	$741, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp209
	movq	%rax, %rdx	 # tmp209,
	leaq	.LC3(%rip), %rax	 #, tmp210
	movq	%rax, %rcx	 # tmp210,
	call	printf	 #
.L639:
 # ./test/pdsp_test.c:742:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp211
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp211,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:742:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 0U);
	testw	%ax, %ax	 # _18
	je	.L640	 #,
	movl	$742, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp212
	movq	%rax, %rdx	 # tmp212,
	leaq	.LC3(%rip), %rax	 #, tmp213
	movq	%rax, %rcx	 # tmp213,
	call	printf	 #
.L640:
 # ./test/pdsp_test.c:743:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp214
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp214,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:743:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 0U);
	testw	%ax, %ax	 # _19
	je	.L641	 #,
	movl	$743, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp215
	movq	%rax, %rdx	 # tmp215,
	leaq	.LC3(%rip), %rax	 #, tmp216
	movq	%rax, %rcx	 # tmp216,
	call	printf	 #
.L641:
 # ./test/pdsp_test.c:744:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp217
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp217,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:744:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 0U);
	testw	%ax, %ax	 # _20
	je	.L642	 #,
	movl	$744, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp218
	movq	%rax, %rdx	 # tmp218,
	leaq	.LC3(%rip), %rax	 #, tmp219
	movq	%rax, %rcx	 # tmp219,
	call	printf	 #
.L642:
 # ./test/pdsp_test.c:745:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp220
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp220,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:745:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _21
	je	.L643	 #,
	movl	$745, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp221
	movq	%rax, %rdx	 # tmp221,
	leaq	.LC3(%rip), %rax	 #, tmp222
	movq	%rax, %rcx	 # tmp222,
	call	printf	 #
.L643:
 # ./test/pdsp_test.c:746:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp223
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp223,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:746:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _22
	je	.L644	 #,
	movl	$746, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp224
	movq	%rax, %rdx	 # tmp224,
	leaq	.LC3(%rip), %rax	 #, tmp225
	movq	%rax, %rcx	 # tmp225,
	call	printf	 #
.L644:
 # ./test/pdsp_test.c:747:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp226
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp226,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:747:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _23
	je	.L645	 #,
	movl	$747, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp227
	movq	%rax, %rdx	 # tmp227,
	leaq	.LC3(%rip), %rax	 #, tmp228
	movq	%rax, %rcx	 # tmp228,
	call	printf	 #
.L645:
 # ./test/pdsp_test.c:748:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp229
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp229,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:748:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _24
	je	.L646	 #,
	movl	$748, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp230
	movq	%rax, %rdx	 # tmp230,
	leaq	.LC3(%rip), %rax	 #, tmp231
	movq	%rax, %rcx	 # tmp231,
	call	printf	 #
.L646:
 # ./test/pdsp_test.c:749:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp232
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp232,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:749:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _25
	je	.L647	 #,
	movl	$749, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp233
	movq	%rax, %rdx	 # tmp233,
	leaq	.LC3(%rip), %rax	 #, tmp234
	movq	%rax, %rcx	 # tmp234,
	call	printf	 #
.L647:
 # ./test/pdsp_test.c:750:     pdsp_monoflop_init(&mf, 4, 0, 1);
	leaq	-10(%rbp), %rax	 #, tmp235
	movl	$1, %r9d	 #,
	movl	$0, %r8d	 #,
	movl	$4, %edx	 #,
	movq	%rax, %rcx	 # tmp235,
	call	pdsp_monoflop_init	 #
 # ./test/pdsp_test.c:751:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp236
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp236,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:751:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _26
	je	.L648	 #,
	movl	$751, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp237
	movq	%rax, %rdx	 # tmp237,
	leaq	.LC3(%rip), %rax	 #, tmp238
	movq	%rax, %rcx	 # tmp238,
	call	printf	 #
.L648:
 # ./test/pdsp_test.c:753:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp239
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp239,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:753:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _27
	je	.L649	 #,
	movl	$753, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp240
	movq	%rax, %rdx	 # tmp240,
	leaq	.LC3(%rip), %rax	 #, tmp241
	movq	%rax, %rcx	 # tmp241,
	call	printf	 #
.L649:
 # ./test/pdsp_test.c:754:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp242
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp242,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:754:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 1U);
	cmpw	$1, %ax	 #, _28
	je	.L650	 #,
	movl	$754, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp243
	movq	%rax, %rdx	 # tmp243,
	leaq	.LC3(%rip), %rax	 #, tmp244
	movq	%rax, %rcx	 # tmp244,
	call	printf	 #
.L650:
 # ./test/pdsp_test.c:755:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp245
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp245,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:755:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 1U);
	cmpw	$1, %ax	 #, _29
	je	.L651	 #,
	movl	$755, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp246
	movq	%rax, %rdx	 # tmp246,
	leaq	.LC3(%rip), %rax	 #, tmp247
	movq	%rax, %rcx	 # tmp247,
	call	printf	 #
.L651:
 # ./test/pdsp_test.c:757:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp248
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp248,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:757:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _30
	je	.L652	 #,
	movl	$757, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp249
	movq	%rax, %rdx	 # tmp249,
	leaq	.LC3(%rip), %rax	 #, tmp250
	movq	%rax, %rcx	 # tmp250,
	call	printf	 #
.L652:
 # ./test/pdsp_test.c:758:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp251
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp251,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:758:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 1U);
	cmpw	$1, %ax	 #, _31
	je	.L653	 #,
	movl	$758, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp252
	movq	%rax, %rdx	 # tmp252,
	leaq	.LC3(%rip), %rax	 #, tmp253
	movq	%rax, %rcx	 # tmp253,
	call	printf	 #
.L653:
 # ./test/pdsp_test.c:759:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp254
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp254,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:759:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 1U);
	cmpw	$1, %ax	 #, _32
	je	.L654	 #,
	movl	$759, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp255
	movq	%rax, %rdx	 # tmp255,
	leaq	.LC3(%rip), %rax	 #, tmp256
	movq	%rax, %rcx	 # tmp256,
	call	printf	 #
.L654:
 # ./test/pdsp_test.c:760:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp257
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp257,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:760:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 1U);
	cmpw	$1, %ax	 #, _33
	je	.L655	 #,
	movl	$760, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp258
	movq	%rax, %rdx	 # tmp258,
	leaq	.LC3(%rip), %rax	 #, tmp259
	movq	%rax, %rcx	 # tmp259,
	call	printf	 #
.L655:
 # ./test/pdsp_test.c:761:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp260
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp260,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:761:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _34
	je	.L656	 #,
	movl	$761, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp261
	movq	%rax, %rdx	 # tmp261,
	leaq	.LC3(%rip), %rax	 #, tmp262
	movq	%rax, %rcx	 # tmp262,
	call	printf	 #
.L656:
 # ./test/pdsp_test.c:762:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp263
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp263,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:762:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _35
	je	.L657	 #,
	movl	$762, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp264
	movq	%rax, %rdx	 # tmp264,
	leaq	.LC3(%rip), %rax	 #, tmp265
	movq	%rax, %rcx	 # tmp265,
	call	printf	 #
.L657:
 # ./test/pdsp_test.c:763:     pdsp_monoflop_init(&mf, 0, 0, 1);
	leaq	-10(%rbp), %rax	 #, tmp266
	movl	$1, %r9d	 #,
	movl	$0, %r8d	 #,
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp266,
	call	pdsp_monoflop_init	 #
 # ./test/pdsp_test.c:764:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp267
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp267,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:764:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _36
	je	.L658	 #,
	movl	$764, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp268
	movq	%rax, %rdx	 # tmp268,
	leaq	.LC3(%rip), %rax	 #, tmp269
	movq	%rax, %rcx	 # tmp269,
	call	printf	 #
.L658:
 # ./test/pdsp_test.c:765:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp270
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp270,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:765:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _37
	je	.L659	 #,
	movl	$765, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp271
	movq	%rax, %rdx	 # tmp271,
	leaq	.LC3(%rip), %rax	 #, tmp272
	movq	%rax, %rcx	 # tmp272,
	call	printf	 #
.L659:
 # ./test/pdsp_test.c:766:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp273
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp273,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:766:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _38
	je	.L660	 #,
	movl	$766, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp274
	movq	%rax, %rdx	 # tmp274,
	leaq	.LC3(%rip), %rax	 #, tmp275
	movq	%rax, %rcx	 # tmp275,
	call	printf	 #
.L660:
 # ./test/pdsp_test.c:767:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp276
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp276,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:767:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _39
	je	.L661	 #,
	movl	$767, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp277
	movq	%rax, %rdx	 # tmp277,
	leaq	.LC3(%rip), %rax	 #, tmp278
	movq	%rax, %rcx	 # tmp278,
	call	printf	 #
.L661:
 # ./test/pdsp_test.c:768:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp279
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp279,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:768:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _40
	je	.L662	 #,
	movl	$768, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp280
	movq	%rax, %rdx	 # tmp280,
	leaq	.LC3(%rip), %rax	 #, tmp281
	movq	%rax, %rcx	 # tmp281,
	call	printf	 #
.L662:
 # ./test/pdsp_test.c:769:     pdsp_monoflop_init(&mf, 1, 0, 1);
	leaq	-10(%rbp), %rax	 #, tmp282
	movl	$1, %r9d	 #,
	movl	$0, %r8d	 #,
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp282,
	call	pdsp_monoflop_init	 #
 # ./test/pdsp_test.c:770:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp283
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp283,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:770:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _41
	je	.L663	 #,
	movl	$770, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp284
	movq	%rax, %rdx	 # tmp284,
	leaq	.LC3(%rip), %rax	 #, tmp285
	movq	%rax, %rcx	 # tmp285,
	call	printf	 #
.L663:
 # ./test/pdsp_test.c:771:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp286
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp286,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:771:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _42
	je	.L664	 #,
	movl	$771, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp287
	movq	%rax, %rdx	 # tmp287,
	leaq	.LC3(%rip), %rax	 #, tmp288
	movq	%rax, %rcx	 # tmp288,
	call	printf	 #
.L664:
 # ./test/pdsp_test.c:772:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp289
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp289,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:772:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _43
	je	.L665	 #,
	movl	$772, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp290
	movq	%rax, %rdx	 # tmp290,
	leaq	.LC3(%rip), %rax	 #, tmp291
	movq	%rax, %rcx	 # tmp291,
	call	printf	 #
.L665:
 # ./test/pdsp_test.c:773:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp292
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp292,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:773:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _44
	je	.L666	 #,
	movl	$773, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp293
	movq	%rax, %rdx	 # tmp293,
	leaq	.LC3(%rip), %rax	 #, tmp294
	movq	%rax, %rcx	 # tmp294,
	call	printf	 #
.L666:
 # ./test/pdsp_test.c:774:     pdsp_monoflop_init(&mf, 1, 0, 1);
	leaq	-10(%rbp), %rax	 #, tmp295
	movl	$1, %r9d	 #,
	movl	$0, %r8d	 #,
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp295,
	call	pdsp_monoflop_init	 #
 # ./test/pdsp_test.c:775:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp296
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp296,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:775:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _45
	je	.L667	 #,
	movl	$775, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp297
	movq	%rax, %rdx	 # tmp297,
	leaq	.LC3(%rip), %rax	 #, tmp298
	movq	%rax, %rcx	 # tmp298,
	call	printf	 #
.L667:
 # ./test/pdsp_test.c:776:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp299
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp299,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:776:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _46
	je	.L668	 #,
	movl	$776, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp300
	movq	%rax, %rdx	 # tmp300,
	leaq	.LC3(%rip), %rax	 #, tmp301
	movq	%rax, %rcx	 # tmp301,
	call	printf	 #
.L668:
 # ./test/pdsp_test.c:777:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp302
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp302,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:777:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _47
	je	.L669	 #,
	movl	$777, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp303
	movq	%rax, %rdx	 # tmp303,
	leaq	.LC3(%rip), %rax	 #, tmp304
	movq	%rax, %rcx	 # tmp304,
	call	printf	 #
.L669:
 # ./test/pdsp_test.c:778:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp305
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp305,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:778:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _48
	je	.L670	 #,
	movl	$778, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp306
	movq	%rax, %rdx	 # tmp306,
	leaq	.LC3(%rip), %rax	 #, tmp307
	movq	%rax, %rcx	 # tmp307,
	call	printf	 #
.L670:
 # ./test/pdsp_test.c:779:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp308
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp308,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:779:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _49
	je	.L671	 #,
	movl	$779, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp309
	movq	%rax, %rdx	 # tmp309,
	leaq	.LC3(%rip), %rax	 #, tmp310
	movq	%rax, %rcx	 # tmp310,
	call	printf	 #
.L671:
 # ./test/pdsp_test.c:780:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp311
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp311,
	call	pdsp_monoflop_rtr	 #
 # ./test/pdsp_test.c:780:     PDSP_ASSERT(pdsp_monoflop_rtr(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _50
	je	.L672	 #,
	movl	$780, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp312
	movq	%rax, %rdx	 # tmp312,
	leaq	.LC3(%rip), %rax	 #, tmp313
	movq	%rax, %rcx	 # tmp313,
	call	printf	 #
.L672:
 # ./test/pdsp_test.c:781:     pdsp_monoflop_init(&mf, 4, 0, 1);
	leaq	-10(%rbp), %rax	 #, tmp314
	movl	$1, %r9d	 #,
	movl	$0, %r8d	 #,
	movl	$4, %edx	 #,
	movq	%rax, %rcx	 # tmp314,
	call	pdsp_monoflop_init	 #
 # ./test/pdsp_test.c:782:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp315
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp315,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:782:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _51
	je	.L673	 #,
	movl	$782, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp316
	movq	%rax, %rdx	 # tmp316,
	leaq	.LC3(%rip), %rax	 #, tmp317
	movq	%rax, %rcx	 # tmp317,
	call	printf	 #
.L673:
 # ./test/pdsp_test.c:784:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp318
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp318,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:784:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _52
	je	.L674	 #,
	movl	$784, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp319
	movq	%rax, %rdx	 # tmp319,
	leaq	.LC3(%rip), %rax	 #, tmp320
	movq	%rax, %rcx	 # tmp320,
	call	printf	 #
.L674:
 # ./test/pdsp_test.c:785:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp321
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp321,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:785:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _53
	je	.L675	 #,
	movl	$785, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp322
	movq	%rax, %rdx	 # tmp322,
	leaq	.LC3(%rip), %rax	 #, tmp323
	movq	%rax, %rcx	 # tmp323,
	call	printf	 #
.L675:
 # ./test/pdsp_test.c:786:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp324
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp324,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:786:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _54
	je	.L676	 #,
	movl	$786, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp325
	movq	%rax, %rdx	 # tmp325,
	leaq	.LC3(%rip), %rax	 #, tmp326
	movq	%rax, %rcx	 # tmp326,
	call	printf	 #
.L676:
 # ./test/pdsp_test.c:787:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp327
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp327,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:787:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _55
	je	.L677	 #,
	movl	$787, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp328
	movq	%rax, %rdx	 # tmp328,
	leaq	.LC3(%rip), %rax	 #, tmp329
	movq	%rax, %rcx	 # tmp329,
	call	printf	 #
.L677:
 # ./test/pdsp_test.c:788:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp330
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp330,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:788:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _56
	je	.L678	 #,
	movl	$788, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp331
	movq	%rax, %rdx	 # tmp331,
	leaq	.LC3(%rip), %rax	 #, tmp332
	movq	%rax, %rcx	 # tmp332,
	call	printf	 #
.L678:
 # ./test/pdsp_test.c:789:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_TRUE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp333
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp333,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:789:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_TRUE) == 0U);
	testw	%ax, %ax	 # _57
	je	.L679	 #,
	movl	$789, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp334
	movq	%rax, %rdx	 # tmp334,
	leaq	.LC3(%rip), %rax	 #, tmp335
	movq	%rax, %rcx	 # tmp335,
	call	printf	 #
.L679:
 # ./test/pdsp_test.c:790:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_TRUE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp336
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp336,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:790:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_TRUE) == 0U);
	testw	%ax, %ax	 # _58
	je	.L680	 #,
	movl	$790, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp337
	movq	%rax, %rdx	 # tmp337,
	leaq	.LC3(%rip), %rax	 #, tmp338
	movq	%rax, %rcx	 # tmp338,
	call	printf	 #
.L680:
 # ./test/pdsp_test.c:792:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp339
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp339,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:792:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 1U);
	cmpw	$1, %ax	 #, _59
	je	.L681	 #,
	movl	$792, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp340
	movq	%rax, %rdx	 # tmp340,
	leaq	.LC3(%rip), %rax	 #, tmp341
	movq	%rax, %rcx	 # tmp341,
	call	printf	 #
.L681:
 # ./test/pdsp_test.c:793:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp342
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp342,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:793:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 1U);
	cmpw	$1, %ax	 #, _60
	je	.L682	 #,
	movl	$793, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp343
	movq	%rax, %rdx	 # tmp343,
	leaq	.LC3(%rip), %rax	 #, tmp344
	movq	%rax, %rcx	 # tmp344,
	call	printf	 #
.L682:
 # ./test/pdsp_test.c:794:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp345
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp345,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:794:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 1U);
	cmpw	$1, %ax	 #, _61
	je	.L683	 #,
	movl	$794, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp346
	movq	%rax, %rdx	 # tmp346,
	leaq	.LC3(%rip), %rax	 #, tmp347
	movq	%rax, %rcx	 # tmp347,
	call	printf	 #
.L683:
 # ./test/pdsp_test.c:795:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp348
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp348,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:795:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 1U);
	cmpw	$1, %ax	 #, _62
	je	.L684	 #,
	movl	$795, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp349
	movq	%rax, %rdx	 # tmp349,
	leaq	.LC3(%rip), %rax	 #, tmp350
	movq	%rax, %rcx	 # tmp350,
	call	printf	 #
.L684:
 # ./test/pdsp_test.c:796:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp351
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp351,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:796:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 1U);
	cmpw	$1, %ax	 #, _63
	je	.L685	 #,
	movl	$796, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp352
	movq	%rax, %rdx	 # tmp352,
	leaq	.LC3(%rip), %rax	 #, tmp353
	movq	%rax, %rcx	 # tmp353,
	call	printf	 #
.L685:
 # ./test/pdsp_test.c:797:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp354
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp354,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:797:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _64
	je	.L686	 #,
	movl	$797, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp355
	movq	%rax, %rdx	 # tmp355,
	leaq	.LC3(%rip), %rax	 #, tmp356
	movq	%rax, %rcx	 # tmp356,
	call	printf	 #
.L686:
 # ./test/pdsp_test.c:798:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp357
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp357,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:798:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _65
	je	.L687	 #,
	movl	$798, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp358
	movq	%rax, %rdx	 # tmp358,
	leaq	.LC3(%rip), %rax	 #, tmp359
	movq	%rax, %rcx	 # tmp359,
	call	printf	 #
.L687:
 # ./test/pdsp_test.c:800:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp360
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp360,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:800:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _66
	je	.L688	 #,
	movl	$800, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp361
	movq	%rax, %rdx	 # tmp361,
	leaq	.LC3(%rip), %rax	 #, tmp362
	movq	%rax, %rcx	 # tmp362,
	call	printf	 #
.L688:
 # ./test/pdsp_test.c:801:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp363
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp363,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:801:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _67
	je	.L689	 #,
	movl	$801, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp364
	movq	%rax, %rdx	 # tmp364,
	leaq	.LC3(%rip), %rax	 #, tmp365
	movq	%rax, %rcx	 # tmp365,
	call	printf	 #
.L689:
 # ./test/pdsp_test.c:802:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_TRUE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp366
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp366,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:802:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_TRUE) == 1U);
	cmpw	$1, %ax	 #, _68
	je	.L690	 #,
	movl	$802, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp367
	movq	%rax, %rdx	 # tmp367,
	leaq	.LC3(%rip), %rax	 #, tmp368
	movq	%rax, %rcx	 # tmp368,
	call	printf	 #
.L690:
 # ./test/pdsp_test.c:804:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp369
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp369,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:804:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 1U);
	cmpw	$1, %ax	 #, _69
	je	.L691	 #,
	movl	$804, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp370
	movq	%rax, %rdx	 # tmp370,
	leaq	.LC3(%rip), %rax	 #, tmp371
	movq	%rax, %rcx	 # tmp371,
	call	printf	 #
.L691:
 # ./test/pdsp_test.c:805:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp372
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp372,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:805:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 1U);
	cmpw	$1, %ax	 #, _70
	je	.L692	 #,
	movl	$805, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp373
	movq	%rax, %rdx	 # tmp373,
	leaq	.LC3(%rip), %rax	 #, tmp374
	movq	%rax, %rcx	 # tmp374,
	call	printf	 #
.L692:
 # ./test/pdsp_test.c:806:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp375
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp375,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:806:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 1U);
	cmpw	$1, %ax	 #, _71
	je	.L693	 #,
	movl	$806, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp376
	movq	%rax, %rdx	 # tmp376,
	leaq	.LC3(%rip), %rax	 #, tmp377
	movq	%rax, %rcx	 # tmp377,
	call	printf	 #
.L693:
 # ./test/pdsp_test.c:807:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp378
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp378,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:807:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 1U);
	cmpw	$1, %ax	 #, _72
	je	.L694	 #,
	movl	$807, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp379
	movq	%rax, %rdx	 # tmp379,
	leaq	.LC3(%rip), %rax	 #, tmp380
	movq	%rax, %rcx	 # tmp380,
	call	printf	 #
.L694:
 # ./test/pdsp_test.c:808:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp381
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp381,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:808:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 1U);
	cmpw	$1, %ax	 #, _73
	je	.L695	 #,
	movl	$808, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp382
	movq	%rax, %rdx	 # tmp382,
	leaq	.LC3(%rip), %rax	 #, tmp383
	movq	%rax, %rcx	 # tmp383,
	call	printf	 #
.L695:
 # ./test/pdsp_test.c:809:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp384
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp384,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:809:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _74
	je	.L696	 #,
	movl	$809, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp385
	movq	%rax, %rdx	 # tmp385,
	leaq	.LC3(%rip), %rax	 #, tmp386
	movq	%rax, %rcx	 # tmp386,
	call	printf	 #
.L696:
 # ./test/pdsp_test.c:810:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp387
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp387,
	call	pdsp_monoflop_rtr_det	 #
 # ./test/pdsp_test.c:810:     PDSP_ASSERT(pdsp_monoflop_rtr_det(&mf, PDSP_FALSE) == 0U);
	testw	%ax, %ax	 # _75
	je	.L698	 #,
	movl	$810, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp388
	movq	%rax, %rdx	 # tmp388,
	leaq	.LC3(%rip), %rax	 #, tmp389
	movq	%rax, %rcx	 # tmp389,
	call	printf	 #
.L698:
 # ./test/pdsp_test.c:811: }
	nop	
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC89:
	.ascii "-- void test_pulse(void) --\12\0"
	.text
	.globl	test_pulse
	.def	test_pulse;	.scl	2;	.type	32;	.endef
	.seh_proc	test_pulse
test_pulse:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$64, %rsp	 #,
	.seh_stackalloc	64
	.seh_endprologue
 # ./test/pdsp_test.c:815:     printf("-- void test_pulse(void) --\n");
	leaq	.LC89(%rip), %rax	 #, tmp107
	movq	%rax, %rcx	 # tmp107,
	call	printf	 #
 # ./test/pdsp_test.c:817:     pdsp_pulse_init(&pulse, 1, 2, 1, 0);
	leaq	-10(%rbp), %rax	 #, tmp108
	movl	$0, 32(%rsp)	 #,
	movl	$1, %r9d	 #,
	movl	$2, %r8d	 #,
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp108,
	call	pdsp_pulse_init	 #
 # ./test/pdsp_test.c:818:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp109
	movq	%rax, %rcx	 # tmp109,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:818:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	cmpw	$1, %ax	 #, _1
	je	.L700	 #,
	movl	$818, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp110
	movq	%rax, %rdx	 # tmp110,
	leaq	.LC3(%rip), %rax	 #, tmp111
	movq	%rax, %rcx	 # tmp111,
	call	printf	 #
.L700:
 # ./test/pdsp_test.c:819:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp112
	movq	%rax, %rcx	 # tmp112,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:819:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	testw	%ax, %ax	 # _2
	je	.L701	 #,
	movl	$819, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp113
	movq	%rax, %rdx	 # tmp113,
	leaq	.LC3(%rip), %rax	 #, tmp114
	movq	%rax, %rcx	 # tmp114,
	call	printf	 #
.L701:
 # ./test/pdsp_test.c:820:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp115
	movq	%rax, %rcx	 # tmp115,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:820:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	cmpw	$1, %ax	 #, _3
	je	.L702	 #,
	movl	$820, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp116
	movq	%rax, %rdx	 # tmp116,
	leaq	.LC3(%rip), %rax	 #, tmp117
	movq	%rax, %rcx	 # tmp117,
	call	printf	 #
.L702:
 # ./test/pdsp_test.c:821:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp118
	movq	%rax, %rcx	 # tmp118,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:821:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	testw	%ax, %ax	 # _4
	je	.L703	 #,
	movl	$821, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp119
	movq	%rax, %rdx	 # tmp119,
	leaq	.LC3(%rip), %rax	 #, tmp120
	movq	%rax, %rcx	 # tmp120,
	call	printf	 #
.L703:
 # ./test/pdsp_test.c:822:     pdsp_pulse_init(&pulse, 2, 4, 1, 0);
	leaq	-10(%rbp), %rax	 #, tmp121
	movl	$0, 32(%rsp)	 #,
	movl	$1, %r9d	 #,
	movl	$4, %r8d	 #,
	movl	$2, %edx	 #,
	movq	%rax, %rcx	 # tmp121,
	call	pdsp_pulse_init	 #
 # ./test/pdsp_test.c:823:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp122
	movq	%rax, %rcx	 # tmp122,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:823:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	cmpw	$1, %ax	 #, _5
	je	.L704	 #,
	movl	$823, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp123
	movq	%rax, %rdx	 # tmp123,
	leaq	.LC3(%rip), %rax	 #, tmp124
	movq	%rax, %rcx	 # tmp124,
	call	printf	 #
.L704:
 # ./test/pdsp_test.c:824:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp125
	movq	%rax, %rcx	 # tmp125,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:824:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	cmpw	$1, %ax	 #, _6
	je	.L705	 #,
	movl	$824, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp126
	movq	%rax, %rdx	 # tmp126,
	leaq	.LC3(%rip), %rax	 #, tmp127
	movq	%rax, %rcx	 # tmp127,
	call	printf	 #
.L705:
 # ./test/pdsp_test.c:825:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp128
	movq	%rax, %rcx	 # tmp128,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:825:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	testw	%ax, %ax	 # _7
	je	.L706	 #,
	movl	$825, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp129
	movq	%rax, %rdx	 # tmp129,
	leaq	.LC3(%rip), %rax	 #, tmp130
	movq	%rax, %rcx	 # tmp130,
	call	printf	 #
.L706:
 # ./test/pdsp_test.c:826:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp131
	movq	%rax, %rcx	 # tmp131,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:826:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	testw	%ax, %ax	 # _8
	je	.L707	 #,
	movl	$826, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp132
	movq	%rax, %rdx	 # tmp132,
	leaq	.LC3(%rip), %rax	 #, tmp133
	movq	%rax, %rcx	 # tmp133,
	call	printf	 #
.L707:
 # ./test/pdsp_test.c:827:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp134
	movq	%rax, %rcx	 # tmp134,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:827:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	cmpw	$1, %ax	 #, _9
	je	.L708	 #,
	movl	$827, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp135
	movq	%rax, %rdx	 # tmp135,
	leaq	.LC3(%rip), %rax	 #, tmp136
	movq	%rax, %rcx	 # tmp136,
	call	printf	 #
.L708:
 # ./test/pdsp_test.c:828:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp137
	movq	%rax, %rcx	 # tmp137,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:828:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	cmpw	$1, %ax	 #, _10
	je	.L709	 #,
	movl	$828, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp138
	movq	%rax, %rdx	 # tmp138,
	leaq	.LC3(%rip), %rax	 #, tmp139
	movq	%rax, %rcx	 # tmp139,
	call	printf	 #
.L709:
 # ./test/pdsp_test.c:829:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp140
	movq	%rax, %rcx	 # tmp140,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:829:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	testw	%ax, %ax	 # _11
	je	.L710	 #,
	movl	$829, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp141
	movq	%rax, %rdx	 # tmp141,
	leaq	.LC3(%rip), %rax	 #, tmp142
	movq	%rax, %rcx	 # tmp142,
	call	printf	 #
.L710:
 # ./test/pdsp_test.c:830:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp143
	movq	%rax, %rcx	 # tmp143,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:830:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	testw	%ax, %ax	 # _12
	je	.L711	 #,
	movl	$830, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp144
	movq	%rax, %rdx	 # tmp144,
	leaq	.LC3(%rip), %rax	 #, tmp145
	movq	%rax, %rcx	 # tmp145,
	call	printf	 #
.L711:
 # ./test/pdsp_test.c:831:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp146
	movq	%rax, %rcx	 # tmp146,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:831:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	cmpw	$1, %ax	 #, _13
	je	.L712	 #,
	movl	$831, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp147
	movq	%rax, %rdx	 # tmp147,
	leaq	.LC3(%rip), %rax	 #, tmp148
	movq	%rax, %rcx	 # tmp148,
	call	printf	 #
.L712:
 # ./test/pdsp_test.c:832:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp149
	movq	%rax, %rcx	 # tmp149,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:832:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	cmpw	$1, %ax	 #, _14
	je	.L713	 #,
	movl	$832, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp150
	movq	%rax, %rdx	 # tmp150,
	leaq	.LC3(%rip), %rax	 #, tmp151
	movq	%rax, %rcx	 # tmp151,
	call	printf	 #
.L713:
 # ./test/pdsp_test.c:833:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp152
	movq	%rax, %rcx	 # tmp152,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:833:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	testw	%ax, %ax	 # _15
	je	.L714	 #,
	movl	$833, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp153
	movq	%rax, %rdx	 # tmp153,
	leaq	.LC3(%rip), %rax	 #, tmp154
	movq	%rax, %rcx	 # tmp154,
	call	printf	 #
.L714:
 # ./test/pdsp_test.c:834:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp155
	movq	%rax, %rcx	 # tmp155,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:834:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	testw	%ax, %ax	 # _16
	je	.L715	 #,
	movl	$834, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp156
	movq	%rax, %rdx	 # tmp156,
	leaq	.LC3(%rip), %rax	 #, tmp157
	movq	%rax, %rcx	 # tmp157,
	call	printf	 #
.L715:
 # ./test/pdsp_test.c:835:     pdsp_pulse_init(&pulse, 1, 3, 1, 0);
	leaq	-10(%rbp), %rax	 #, tmp158
	movl	$0, 32(%rsp)	 #,
	movl	$1, %r9d	 #,
	movl	$3, %r8d	 #,
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp158,
	call	pdsp_pulse_init	 #
 # ./test/pdsp_test.c:836:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp159
	movq	%rax, %rcx	 # tmp159,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:836:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	cmpw	$1, %ax	 #, _17
	je	.L716	 #,
	movl	$836, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp160
	movq	%rax, %rdx	 # tmp160,
	leaq	.LC3(%rip), %rax	 #, tmp161
	movq	%rax, %rcx	 # tmp161,
	call	printf	 #
.L716:
 # ./test/pdsp_test.c:837:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp162
	movq	%rax, %rcx	 # tmp162,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:837:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	testw	%ax, %ax	 # _18
	je	.L717	 #,
	movl	$837, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp163
	movq	%rax, %rdx	 # tmp163,
	leaq	.LC3(%rip), %rax	 #, tmp164
	movq	%rax, %rcx	 # tmp164,
	call	printf	 #
.L717:
 # ./test/pdsp_test.c:838:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp165
	movq	%rax, %rcx	 # tmp165,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:838:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	testw	%ax, %ax	 # _19
	je	.L718	 #,
	movl	$838, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp166
	movq	%rax, %rdx	 # tmp166,
	leaq	.LC3(%rip), %rax	 #, tmp167
	movq	%rax, %rcx	 # tmp167,
	call	printf	 #
.L718:
 # ./test/pdsp_test.c:839:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp168
	movq	%rax, %rcx	 # tmp168,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:839:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	cmpw	$1, %ax	 #, _20
	je	.L719	 #,
	movl	$839, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp169
	movq	%rax, %rdx	 # tmp169,
	leaq	.LC3(%rip), %rax	 #, tmp170
	movq	%rax, %rcx	 # tmp170,
	call	printf	 #
.L719:
 # ./test/pdsp_test.c:840:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp171
	movq	%rax, %rcx	 # tmp171,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:840:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	testw	%ax, %ax	 # _21
	je	.L720	 #,
	movl	$840, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp172
	movq	%rax, %rdx	 # tmp172,
	leaq	.LC3(%rip), %rax	 #, tmp173
	movq	%rax, %rcx	 # tmp173,
	call	printf	 #
.L720:
 # ./test/pdsp_test.c:841:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp174
	movq	%rax, %rcx	 # tmp174,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:841:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	testw	%ax, %ax	 # _22
	je	.L721	 #,
	movl	$841, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp175
	movq	%rax, %rdx	 # tmp175,
	leaq	.LC3(%rip), %rax	 #, tmp176
	movq	%rax, %rcx	 # tmp176,
	call	printf	 #
.L721:
 # ./test/pdsp_test.c:842:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	leaq	-10(%rbp), %rax	 #, tmp177
	movq	%rax, %rcx	 # tmp177,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:842:     PDSP_ASSERT(pdsp_pulse(&pulse) == 1U);
	cmpw	$1, %ax	 #, _23
	je	.L722	 #,
	movl	$842, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp178
	movq	%rax, %rdx	 # tmp178,
	leaq	.LC3(%rip), %rax	 #, tmp179
	movq	%rax, %rcx	 # tmp179,
	call	printf	 #
.L722:
 # ./test/pdsp_test.c:843:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp180
	movq	%rax, %rcx	 # tmp180,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:843:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	testw	%ax, %ax	 # _24
	je	.L723	 #,
	movl	$843, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp181
	movq	%rax, %rdx	 # tmp181,
	leaq	.LC3(%rip), %rax	 #, tmp182
	movq	%rax, %rcx	 # tmp182,
	call	printf	 #
.L723:
 # ./test/pdsp_test.c:844:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	leaq	-10(%rbp), %rax	 #, tmp183
	movq	%rax, %rcx	 # tmp183,
	call	pdsp_pulse	 #
 # ./test/pdsp_test.c:844:     PDSP_ASSERT(pdsp_pulse(&pulse) == 0U);
	testw	%ax, %ax	 # _25
	je	.L725	 #,
	movl	$844, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp184
	movq	%rax, %rdx	 # tmp184,
	leaq	.LC3(%rip), %rax	 #, tmp185
	movq	%rax, %rcx	 # tmp185,
	call	printf	 #
.L725:
 # ./test/pdsp_test.c:845: }
	nop	
	addq	$64, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC90:
	.ascii "-- void test_status(void) --\12\0"
	.text
	.globl	test_status
	.def	test_status;	.scl	2;	.type	32;	.endef
	.seh_proc	test_status
test_status:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
 # ./test/pdsp_test.c:849:     printf("-- void test_status(void) --\n");
	leaq	.LC90(%rip), %rax	 #, tmp93
	movq	%rax, %rcx	 # tmp93,
	call	printf	 #
 # ./test/pdsp_test.c:850:     pdsp_u32_t u32_status = 0U;
	movl	$0, -12(%rbp)	 #, u32_status
 # ./test/pdsp_test.c:851:     pdsp_u32_t *pu32_status = &u32_status;
	leaq	-12(%rbp), %rax	 #, tmp94
	movq	%rax, -8(%rbp)	 # tmp94, pu32_status
 # ./test/pdsp_test.c:852:     PDSP_ASSERT(u32_status == 0x0);
	movl	-12(%rbp), %eax	 # u32_status, u32_status.60_1
	testl	%eax, %eax	 # u32_status.60_1
	je	.L727	 #,
 # ./test/pdsp_test.c:852:     PDSP_ASSERT(u32_status == 0x0);
	movl	$852, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp95
	movq	%rax, %rdx	 # tmp95,
	leaq	.LC3(%rip), %rax	 #, tmp96
	movq	%rax, %rcx	 # tmp96,
	call	printf	 #
.L727:
 # ./test/pdsp_test.c:853:     pdsp_mask_set(pu32_status, 0x1);
	movq	-8(%rbp), %rax	 # pu32_status, tmp97
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp97,
	call	pdsp_mask_set	 #
 # ./test/pdsp_test.c:854:     PDSP_ASSERT(u32_status == 0x1U);
	movl	-12(%rbp), %eax	 # u32_status, u32_status.61_2
	cmpl	$1, %eax	 #, u32_status.61_2
	je	.L728	 #,
 # ./test/pdsp_test.c:854:     PDSP_ASSERT(u32_status == 0x1U);
	movl	$854, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp98
	movq	%rax, %rdx	 # tmp98,
	leaq	.LC3(%rip), %rax	 #, tmp99
	movq	%rax, %rcx	 # tmp99,
	call	printf	 #
.L728:
 # ./test/pdsp_test.c:855:     PDSP_ASSERT(pdsp_mask_get(pu32_status, 0x1, 0x0) == PDSP_TRUE);
	movq	-8(%rbp), %rax	 # pu32_status, tmp100
	movl	$0, %r8d	 #,
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp100,
	call	pdsp_mask_get	 #
 # ./test/pdsp_test.c:855:     PDSP_ASSERT(pdsp_mask_get(pu32_status, 0x1, 0x0) == PDSP_TRUE);
	xorl	$1, %eax	 #, _4
	testb	%al, %al	 # _4
	je	.L729	 #,
	movl	$855, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp101
	movq	%rax, %rdx	 # tmp101,
	leaq	.LC3(%rip), %rax	 #, tmp102
	movq	%rax, %rcx	 # tmp102,
	call	printf	 #
.L729:
 # ./test/pdsp_test.c:856:     PDSP_ASSERT(pdsp_mask_get(pu32_status, 0x0, 0xFFFFFFFE) == PDSP_TRUE);
	movq	-8(%rbp), %rax	 # pu32_status, tmp103
	movl	$-2, %r8d	 #,
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp103,
	call	pdsp_mask_get	 #
 # ./test/pdsp_test.c:856:     PDSP_ASSERT(pdsp_mask_get(pu32_status, 0x0, 0xFFFFFFFE) == PDSP_TRUE);
	xorl	$1, %eax	 #, _6
	testb	%al, %al	 # _6
	je	.L730	 #,
	movl	$856, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp104
	movq	%rax, %rdx	 # tmp104,
	leaq	.LC3(%rip), %rax	 #, tmp105
	movq	%rax, %rcx	 # tmp105,
	call	printf	 #
.L730:
 # ./test/pdsp_test.c:857:     pdsp_mask_clear(pu32_status, 0xFFFFFFFF);
	movq	-8(%rbp), %rax	 # pu32_status, tmp106
	movl	$-1, %edx	 #,
	movq	%rax, %rcx	 # tmp106,
	call	pdsp_mask_clear	 #
 # ./test/pdsp_test.c:858:     PDSP_ASSERT(u32_status == 0x0);
	movl	-12(%rbp), %eax	 # u32_status, u32_status.62_7
	testl	%eax, %eax	 # u32_status.62_7
	je	.L731	 #,
 # ./test/pdsp_test.c:858:     PDSP_ASSERT(u32_status == 0x0);
	movl	$858, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp107
	movq	%rax, %rdx	 # tmp107,
	leaq	.LC3(%rip), %rax	 #, tmp108
	movq	%rax, %rcx	 # tmp108,
	call	printf	 #
.L731:
 # ./test/pdsp_test.c:859:     pdsp_mask_set(pu32_status, 0x1000);
	movq	-8(%rbp), %rax	 # pu32_status, tmp109
	movl	$4096, %edx	 #,
	movq	%rax, %rcx	 # tmp109,
	call	pdsp_mask_set	 #
 # ./test/pdsp_test.c:860:     PDSP_ASSERT(pdsp_mask_get(pu32_status, 0x1000, 0x0) == PDSP_TRUE);
	movq	-8(%rbp), %rax	 # pu32_status, tmp110
	movl	$0, %r8d	 #,
	movl	$4096, %edx	 #,
	movq	%rax, %rcx	 # tmp110,
	call	pdsp_mask_get	 #
 # ./test/pdsp_test.c:860:     PDSP_ASSERT(pdsp_mask_get(pu32_status, 0x1000, 0x0) == PDSP_TRUE);
	xorl	$1, %eax	 #, _9
	testb	%al, %al	 # _9
	je	.L732	 #,
	movl	$860, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp111
	movq	%rax, %rdx	 # tmp111,
	leaq	.LC3(%rip), %rax	 #, tmp112
	movq	%rax, %rcx	 # tmp112,
	call	printf	 #
.L732:
 # ./test/pdsp_test.c:861:     PDSP_ASSERT(pdsp_mask_get(pu32_status, 0x0, 0xFFFFEFFF) == PDSP_TRUE);
	movq	-8(%rbp), %rax	 # pu32_status, tmp113
	movl	$-4097, %r8d	 #,
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp113,
	call	pdsp_mask_get	 #
 # ./test/pdsp_test.c:861:     PDSP_ASSERT(pdsp_mask_get(pu32_status, 0x0, 0xFFFFEFFF) == PDSP_TRUE);
	xorl	$1, %eax	 #, _11
	testb	%al, %al	 # _11
	je	.L734	 #,
	movl	$861, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp114
	movq	%rax, %rdx	 # tmp114,
	leaq	.LC3(%rip), %rax	 #, tmp115
	movq	%rax, %rcx	 # tmp115,
	call	printf	 #
.L734:
 # ./test/pdsp_test.c:862: }
	nop	
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC91:
	.ascii "-- void test_mean(void) --\12\0"
	.text
	.globl	test_mean
	.def	test_mean;	.scl	2;	.type	32;	.endef
	.seh_proc	test_mean
test_mean:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$64, %rsp	 #,
	.seh_stackalloc	64
	.seh_endprologue
 # ./test/pdsp_test.c:866:     printf("-- void test_mean(void) --\n");
	leaq	.LC91(%rip), %rax	 #, tmp86
	movq	%rax, %rcx	 # tmp86,
	call	printf	 #
 # ./test/pdsp_test.c:867:     pdsp_u16_t m4[4] = {1, 2, 3, 4};
	movw	$1, -8(%rbp)	 #, m4[0]
	movw	$2, -6(%rbp)	 #, m4[1]
	movw	$3, -4(%rbp)	 #, m4[2]
	movw	$4, -2(%rbp)	 #, m4[3]
 # ./test/pdsp_test.c:868:     pdsp_u16_t m8[8] = {1, 2, 3, 4, 5, 6, 7, 8};
	movw	$1, -32(%rbp)	 #, m8[0]
	movw	$2, -30(%rbp)	 #, m8[1]
	movw	$3, -28(%rbp)	 #, m8[2]
	movw	$4, -26(%rbp)	 #, m8[3]
	movw	$5, -24(%rbp)	 #, m8[4]
	movw	$6, -22(%rbp)	 #, m8[5]
	movw	$7, -20(%rbp)	 #, m8[6]
	movw	$8, -18(%rbp)	 #, m8[7]
 # ./test/pdsp_test.c:869:     PDSP_ASSERT(pdsp_mean2w_f32(1.0f, 2.0f, 0.5f) == 1.5f);
	movss	.LC37(%rip), %xmm2	 #,
	movss	.LC22(%rip), %xmm1	 #,
	movl	.LC23(%rip), %eax	 #, tmp87
	movd	%eax, %xmm0	 # tmp87,
	call	pdsp_mean2w_f32	 #
	movd	%xmm0, %eax	 #, _1
 # ./test/pdsp_test.c:869:     PDSP_ASSERT(pdsp_mean2w_f32(1.0f, 2.0f, 0.5f) == 1.5f);
	movd	%eax, %xmm3	 # _1, _1
	ucomiss	.LC24(%rip), %xmm3	 #, _1
	jp	.L744	 #,
	movd	%eax, %xmm4	 # _1, _1
	ucomiss	.LC24(%rip), %xmm4	 #, _1
	je	.L736	 #,
.L744:
	movl	$869, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp88
	movq	%rax, %rdx	 # tmp88,
	leaq	.LC3(%rip), %rax	 #, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	printf	 #
.L736:
 # ./test/pdsp_test.c:870:     PDSP_ASSERT(pdsp_mean2w_f32(1.0f, 2.0f, 1.0f) == 1.0f);
	movss	.LC23(%rip), %xmm2	 #,
	movss	.LC22(%rip), %xmm1	 #,
	movl	.LC23(%rip), %eax	 #, tmp90
	movd	%eax, %xmm0	 # tmp90,
	call	pdsp_mean2w_f32	 #
	movd	%xmm0, %eax	 #, _2
 # ./test/pdsp_test.c:870:     PDSP_ASSERT(pdsp_mean2w_f32(1.0f, 2.0f, 1.0f) == 1.0f);
	movss	.LC23(%rip), %xmm0	 #, tmp91
	movd	%eax, %xmm5	 # _2, _2
	ucomiss	%xmm0, %xmm5	 # tmp91, _2
	jp	.L745	 #,
	movss	.LC23(%rip), %xmm0	 #, tmp92
	movd	%eax, %xmm1	 # _2, _2
	ucomiss	%xmm0, %xmm1	 # tmp92, _2
	je	.L738	 #,
.L745:
	movl	$870, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp93
	movq	%rax, %rdx	 # tmp93,
	leaq	.LC3(%rip), %rax	 #, tmp94
	movq	%rax, %rcx	 # tmp94,
	call	printf	 #
.L738:
 # ./test/pdsp_test.c:871:     PDSP_ASSERT(pdsp_mean4_u16(m4) == 2.5f);
	leaq	-8(%rbp), %rax	 #, tmp95
	movq	%rax, %rcx	 # tmp95,
	call	pdsp_mean4_u16	 #
	movd	%xmm0, %eax	 #, _3
 # ./test/pdsp_test.c:871:     PDSP_ASSERT(pdsp_mean4_u16(m4) == 2.5f);
	movd	%eax, %xmm2	 # _3, _3
	ucomiss	.LC38(%rip), %xmm2	 #, _3
	jp	.L746	 #,
	movd	%eax, %xmm3	 # _3, _3
	ucomiss	.LC38(%rip), %xmm3	 #, _3
	je	.L740	 #,
.L746:
	movl	$871, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp96
	movq	%rax, %rdx	 # tmp96,
	leaq	.LC3(%rip), %rax	 #, tmp97
	movq	%rax, %rcx	 # tmp97,
	call	printf	 #
.L740:
 # ./test/pdsp_test.c:872:     PDSP_ASSERT(pdsp_mean8_u16(m8) == 4.5f);
	leaq	-32(%rbp), %rax	 #, tmp98
	movq	%rax, %rcx	 # tmp98,
	call	pdsp_mean8_u16	 #
	movd	%xmm0, %eax	 #, _4
 # ./test/pdsp_test.c:872:     PDSP_ASSERT(pdsp_mean8_u16(m8) == 4.5f);
	movd	%eax, %xmm4	 # _4, _4
	ucomiss	.LC40(%rip), %xmm4	 #, _4
	jp	.L747	 #,
	movd	%eax, %xmm5	 # _4, _4
	ucomiss	.LC40(%rip), %xmm5	 #, _4
	je	.L748	 #,
.L747:
	movl	$872, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp99
	movq	%rax, %rdx	 # tmp99,
	leaq	.LC3(%rip), %rax	 #, tmp100
	movq	%rax, %rcx	 # tmp100,
	call	printf	 #
.L748:
 # ./test/pdsp_test.c:878: }
	nop	
	addq	$64, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC92:
	.ascii "-- void test_queue(void) --\12\0"
	.text
	.globl	test_queue
	.def	test_queue;	.scl	2;	.type	32;	.endef
	.seh_proc	test_queue
test_queue:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$96, %rsp	 #,
	.seh_stackalloc	96
	.seh_endprologue
 # ./test/pdsp_test.c:882:     printf("-- void test_queue(void) --\n");
	leaq	.LC92(%rip), %rax	 #, tmp210
	movq	%rax, %rcx	 # tmp210,
	call	printf	 #
 # ./test/pdsp_test.c:883:     pdsp_char_t ch[4] = {0};
	movl	$0, -5(%rbp)	 #, ch
 # ./test/pdsp_test.c:884:     pdsp_queue_var_t var = {0};
	movl	$0, -12(%rbp)	 #, var
	movw	$0, -8(%rbp)	 #, var
 # ./test/pdsp_test.c:885:     pdsp_queue_t data = {.ps_var = &var, .pav_data = (void *)ch, .i16_size = 4};
	leaq	-12(%rbp), %rax	 #, tmp211
	movq	%rax, -48(%rbp)	 # tmp211, data.ps_var
	leaq	-5(%rbp), %rax	 #, tmp212
	movq	%rax, -40(%rbp)	 # tmp212, data.pav_data
	movw	$4, -32(%rbp)	 #, data.i16_size
 # ./test/pdsp_test.c:886:     pdsp_queue_init(&data);
	leaq	-48(%rbp), %rax	 #, tmp213
	movq	%rax, %rcx	 # tmp213,
	call	pdsp_queue_init	 #
 # ./test/pdsp_test.c:887:     PDSP_ASSERT(var.i16_count == 0);
	movzwl	-8(%rbp), %eax	 # var.i16_count, _1
	testw	%ax, %ax	 # _1
	je	.L750	 #,
 # ./test/pdsp_test.c:887:     PDSP_ASSERT(var.i16_count == 0);
	movl	$887, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp214
	movq	%rax, %rdx	 # tmp214,
	leaq	.LC3(%rip), %rax	 #, tmp215
	movq	%rax, %rcx	 # tmp215,
	call	printf	 #
.L750:
 # ./test/pdsp_test.c:888:     PDSP_ASSERT(pdsp_queue_is_not_full(&data));
	leaq	-48(%rbp), %rax	 #, tmp216
	movq	%rax, %rcx	 # tmp216,
	call	pdsp_queue_is_not_full	 #
 # ./test/pdsp_test.c:888:     PDSP_ASSERT(pdsp_queue_is_not_full(&data));
	xorl	$1, %eax	 #, _3
	testb	%al, %al	 # _3
	je	.L751	 #,
	movl	$888, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp217
	movq	%rax, %rdx	 # tmp217,
	leaq	.LC3(%rip), %rax	 #, tmp218
	movq	%rax, %rcx	 # tmp218,
	call	printf	 #
.L751:
 # ./test/pdsp_test.c:889:     pdsp_queue_push_ch(&data, 't');
	leaq	-48(%rbp), %rax	 #, tmp219
	movl	$116, %edx	 #,
	movq	%rax, %rcx	 # tmp219,
	call	pdsp_queue_push_ch	 #
 # ./test/pdsp_test.c:890:     PDSP_ASSERT(var.i16_count == 1);
	movzwl	-8(%rbp), %eax	 # var.i16_count, _4
	cmpw	$1, %ax	 #, _4
	je	.L752	 #,
 # ./test/pdsp_test.c:890:     PDSP_ASSERT(var.i16_count == 1);
	movl	$890, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp220
	movq	%rax, %rdx	 # tmp220,
	leaq	.LC3(%rip), %rax	 #, tmp221
	movq	%rax, %rcx	 # tmp221,
	call	printf	 #
.L752:
 # ./test/pdsp_test.c:891:     PDSP_ASSERT(ch[0] == 't');
	movzbl	-5(%rbp), %eax	 # ch[0], _5
	cmpb	$116, %al	 #, _5
	je	.L753	 #,
 # ./test/pdsp_test.c:891:     PDSP_ASSERT(ch[0] == 't');
	movl	$891, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp222
	movq	%rax, %rdx	 # tmp222,
	leaq	.LC3(%rip), %rax	 #, tmp223
	movq	%rax, %rcx	 # tmp223,
	call	printf	 #
.L753:
 # ./test/pdsp_test.c:892:     pdsp_queue_push_ch(&data, 'e');
	leaq	-48(%rbp), %rax	 #, tmp224
	movl	$101, %edx	 #,
	movq	%rax, %rcx	 # tmp224,
	call	pdsp_queue_push_ch	 #
 # ./test/pdsp_test.c:893:     pdsp_queue_push_ch(&data, 's');
	leaq	-48(%rbp), %rax	 #, tmp225
	movl	$115, %edx	 #,
	movq	%rax, %rcx	 # tmp225,
	call	pdsp_queue_push_ch	 #
 # ./test/pdsp_test.c:894:     PDSP_ASSERT(pdsp_queue_is_not_full(&data));
	leaq	-48(%rbp), %rax	 #, tmp226
	movq	%rax, %rcx	 # tmp226,
	call	pdsp_queue_is_not_full	 #
 # ./test/pdsp_test.c:894:     PDSP_ASSERT(pdsp_queue_is_not_full(&data));
	xorl	$1, %eax	 #, _7
	testb	%al, %al	 # _7
	je	.L754	 #,
	movl	$894, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp227
	movq	%rax, %rdx	 # tmp227,
	leaq	.LC3(%rip), %rax	 #, tmp228
	movq	%rax, %rcx	 # tmp228,
	call	printf	 #
.L754:
 # ./test/pdsp_test.c:895:     pdsp_queue_push_ch(&data, 't');
	leaq	-48(%rbp), %rax	 #, tmp229
	movl	$116, %edx	 #,
	movq	%rax, %rcx	 # tmp229,
	call	pdsp_queue_push_ch	 #
 # ./test/pdsp_test.c:896:     PDSP_ASSERT(!pdsp_queue_is_not_full(&data));
	leaq	-48(%rbp), %rax	 #, tmp230
	movq	%rax, %rcx	 # tmp230,
	call	pdsp_queue_is_not_full	 #
 # ./test/pdsp_test.c:896:     PDSP_ASSERT(!pdsp_queue_is_not_full(&data));
	testb	%al, %al	 # _8
	je	.L755	 #,
	movl	$896, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp231
	movq	%rax, %rdx	 # tmp231,
	leaq	.LC3(%rip), %rax	 #, tmp232
	movq	%rax, %rcx	 # tmp232,
	call	printf	 #
.L755:
 # ./test/pdsp_test.c:897:     PDSP_ASSERT(ch[3] == 't');
	movzbl	-2(%rbp), %eax	 # ch[3], _9
	cmpb	$116, %al	 #, _9
	je	.L756	 #,
 # ./test/pdsp_test.c:897:     PDSP_ASSERT(ch[3] == 't');
	movl	$897, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp233
	movq	%rax, %rdx	 # tmp233,
	leaq	.LC3(%rip), %rax	 #, tmp234
	movq	%rax, %rcx	 # tmp234,
	call	printf	 #
.L756:
 # ./test/pdsp_test.c:898:     PDSP_ASSERT(pdsp_queue_pop_ch(&data) == 't');
	leaq	-48(%rbp), %rax	 #, tmp235
	movq	%rax, %rcx	 # tmp235,
	call	pdsp_queue_pop_ch	 #
 # ./test/pdsp_test.c:898:     PDSP_ASSERT(pdsp_queue_pop_ch(&data) == 't');
	cmpb	$116, %al	 #, _10
	je	.L757	 #,
	movl	$898, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp236
	movq	%rax, %rdx	 # tmp236,
	leaq	.LC3(%rip), %rax	 #, tmp237
	movq	%rax, %rcx	 # tmp237,
	call	printf	 #
.L757:
 # ./test/pdsp_test.c:899:     PDSP_ASSERT(pdsp_queue_pop_ch(&data) == 'e');
	leaq	-48(%rbp), %rax	 #, tmp238
	movq	%rax, %rcx	 # tmp238,
	call	pdsp_queue_pop_ch	 #
 # ./test/pdsp_test.c:899:     PDSP_ASSERT(pdsp_queue_pop_ch(&data) == 'e');
	cmpb	$101, %al	 #, _11
	je	.L758	 #,
	movl	$899, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp239
	movq	%rax, %rdx	 # tmp239,
	leaq	.LC3(%rip), %rax	 #, tmp240
	movq	%rax, %rcx	 # tmp240,
	call	printf	 #
.L758:
 # ./test/pdsp_test.c:900:     PDSP_ASSERT(pdsp_queue_pop_ch(&data) == 's');
	leaq	-48(%rbp), %rax	 #, tmp241
	movq	%rax, %rcx	 # tmp241,
	call	pdsp_queue_pop_ch	 #
 # ./test/pdsp_test.c:900:     PDSP_ASSERT(pdsp_queue_pop_ch(&data) == 's');
	cmpb	$115, %al	 #, _12
	je	.L759	 #,
	movl	$900, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp242
	movq	%rax, %rdx	 # tmp242,
	leaq	.LC3(%rip), %rax	 #, tmp243
	movq	%rax, %rcx	 # tmp243,
	call	printf	 #
.L759:
 # ./test/pdsp_test.c:901:     PDSP_ASSERT(pdsp_queue_is_not_empty(&data));
	leaq	-48(%rbp), %rax	 #, tmp244
	movq	%rax, %rcx	 # tmp244,
	call	pdsp_queue_is_not_empty	 #
 # ./test/pdsp_test.c:901:     PDSP_ASSERT(pdsp_queue_is_not_empty(&data));
	xorl	$1, %eax	 #, _14
	testb	%al, %al	 # _14
	je	.L760	 #,
	movl	$901, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp245
	movq	%rax, %rdx	 # tmp245,
	leaq	.LC3(%rip), %rax	 #, tmp246
	movq	%rax, %rcx	 # tmp246,
	call	printf	 #
.L760:
 # ./test/pdsp_test.c:902:     PDSP_ASSERT(pdsp_queue_pop_ch(&data) == 't');
	leaq	-48(%rbp), %rax	 #, tmp247
	movq	%rax, %rcx	 # tmp247,
	call	pdsp_queue_pop_ch	 #
 # ./test/pdsp_test.c:902:     PDSP_ASSERT(pdsp_queue_pop_ch(&data) == 't');
	cmpb	$116, %al	 #, _15
	je	.L761	 #,
	movl	$902, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp248
	movq	%rax, %rdx	 # tmp248,
	leaq	.LC3(%rip), %rax	 #, tmp249
	movq	%rax, %rcx	 # tmp249,
	call	printf	 #
.L761:
 # ./test/pdsp_test.c:903:     PDSP_ASSERT(!pdsp_queue_is_not_empty(&data));
	leaq	-48(%rbp), %rax	 #, tmp250
	movq	%rax, %rcx	 # tmp250,
	call	pdsp_queue_is_not_empty	 #
 # ./test/pdsp_test.c:903:     PDSP_ASSERT(!pdsp_queue_is_not_empty(&data));
	testb	%al, %al	 # _16
	je	.L762	 #,
	movl	$903, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp251
	movq	%rax, %rdx	 # tmp251,
	leaq	.LC3(%rip), %rax	 #, tmp252
	movq	%rax, %rcx	 # tmp252,
	call	printf	 #
.L762:
 # ./test/pdsp_test.c:905:     pdsp_macro_queue_t mdata = {
	movw	$2, -56(%rbp)	 #, mdata.i16_head
	movw	$4, -54(%rbp)	 #, mdata.i16_tail
	movw	$4, -52(%rbp)	 #, mdata.i16_count
	movw	$4, -50(%rbp)	 #, mdata.i16_size
 # ./test/pdsp_test.c:907:     pdsp_macro_queue_init(mdata, 4);
	movw	$4, -50(%rbp)	 #, mdata.i16_size
	movw	$0, -52(%rbp)	 #, mdata.i16_count
	movzwl	-50(%rbp), %eax	 # mdata.i16_size, _17
	subl	$1, %eax	 #, _19
	movw	%ax, -56(%rbp)	 # _20, mdata.i16_head
	movw	$0, -54(%rbp)	 #, mdata.i16_tail
 # ./test/pdsp_test.c:908:     PDSP_ASSERT(mdata.i16_count == 0);
	movzwl	-52(%rbp), %eax	 # mdata.i16_count, _21
	testw	%ax, %ax	 # _21
	je	.L763	 #,
 # ./test/pdsp_test.c:908:     PDSP_ASSERT(mdata.i16_count == 0);
	movl	$908, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp253
	movq	%rax, %rdx	 # tmp253,
	leaq	.LC3(%rip), %rax	 #, tmp254
	movq	%rax, %rcx	 # tmp254,
	call	printf	 #
.L763:
 # ./test/pdsp_test.c:909:     PDSP_ASSERT(pdsp_macro_queue_is_not_full(mdata));
	movzwl	-52(%rbp), %edx	 # mdata.i16_count, _22
	movzwl	-50(%rbp), %eax	 # mdata.i16_size, _23
	cmpw	%ax, %dx	 # _23, _22
	jl	.L764	 #,
 # ./test/pdsp_test.c:909:     PDSP_ASSERT(pdsp_macro_queue_is_not_full(mdata));
	movl	$909, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp255
	movq	%rax, %rdx	 # tmp255,
	leaq	.LC3(%rip), %rax	 #, tmp256
	movq	%rax, %rcx	 # tmp256,
	call	printf	 #
.L764:
 # ./test/pdsp_test.c:910:     pdsp_macro_queue_push(mdata, ch, 't');
	movzwl	-56(%rbp), %eax	 # mdata.i16_head, _24
	addl	$1, %eax	 #, _27
	movw	%ax, -56(%rbp)	 # _28, mdata.i16_head
	movzwl	-56(%rbp), %edx	 # mdata.i16_head, _29
	movzwl	-50(%rbp), %eax	 # mdata.i16_size, _30
	cmpw	%ax, %dx	 # _30, _29
	jl	.L765	 #,
 # ./test/pdsp_test.c:910:     pdsp_macro_queue_push(mdata, ch, 't');
	movw	$0, -56(%rbp)	 #, mdata.i16_head
.L765:
 # ./test/pdsp_test.c:910:     pdsp_macro_queue_push(mdata, ch, 't');
	movzwl	-52(%rbp), %eax	 # mdata.i16_count, _31
	addl	$1, %eax	 #, _34
	movw	%ax, -52(%rbp)	 # _35, mdata.i16_count
	movzwl	-56(%rbp), %eax	 # mdata.i16_head, _36
	cwtl
	cltq
	movb	$116, -5(%rbp,%rax)	 #, ch[_37]
 # ./test/pdsp_test.c:911:     PDSP_ASSERT(mdata.i16_count == 1);
	movzwl	-52(%rbp), %eax	 # mdata.i16_count, _38
	cmpw	$1, %ax	 #, _38
	je	.L766	 #,
 # ./test/pdsp_test.c:911:     PDSP_ASSERT(mdata.i16_count == 1);
	movl	$911, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp258
	movq	%rax, %rdx	 # tmp258,
	leaq	.LC3(%rip), %rax	 #, tmp259
	movq	%rax, %rcx	 # tmp259,
	call	printf	 #
.L766:
 # ./test/pdsp_test.c:912:     PDSP_ASSERT(ch[0] == 't');
	movzbl	-5(%rbp), %eax	 # ch[0], _39
	cmpb	$116, %al	 #, _39
	je	.L767	 #,
 # ./test/pdsp_test.c:912:     PDSP_ASSERT(ch[0] == 't');
	movl	$912, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp260
	movq	%rax, %rdx	 # tmp260,
	leaq	.LC3(%rip), %rax	 #, tmp261
	movq	%rax, %rcx	 # tmp261,
	call	printf	 #
.L767:
 # ./test/pdsp_test.c:913:     pdsp_macro_queue_push(mdata, ch, 'e');
	movzwl	-56(%rbp), %eax	 # mdata.i16_head, _40
	addl	$1, %eax	 #, _43
	movw	%ax, -56(%rbp)	 # _44, mdata.i16_head
	movzwl	-56(%rbp), %edx	 # mdata.i16_head, _45
	movzwl	-50(%rbp), %eax	 # mdata.i16_size, _46
	cmpw	%ax, %dx	 # _46, _45
	jl	.L768	 #,
 # ./test/pdsp_test.c:913:     pdsp_macro_queue_push(mdata, ch, 'e');
	movw	$0, -56(%rbp)	 #, mdata.i16_head
.L768:
 # ./test/pdsp_test.c:913:     pdsp_macro_queue_push(mdata, ch, 'e');
	movzwl	-52(%rbp), %eax	 # mdata.i16_count, _47
	addl	$1, %eax	 #, _50
	movw	%ax, -52(%rbp)	 # _51, mdata.i16_count
	movzwl	-56(%rbp), %eax	 # mdata.i16_head, _52
	cwtl
	cltq
	movb	$101, -5(%rbp,%rax)	 #, ch[_53]
 # ./test/pdsp_test.c:914:     pdsp_macro_queue_push(mdata, ch, 's');
	movzwl	-56(%rbp), %eax	 # mdata.i16_head, _54
	addl	$1, %eax	 #, _57
	movw	%ax, -56(%rbp)	 # _58, mdata.i16_head
	movzwl	-56(%rbp), %edx	 # mdata.i16_head, _59
	movzwl	-50(%rbp), %eax	 # mdata.i16_size, _60
	cmpw	%ax, %dx	 # _60, _59
	jl	.L769	 #,
 # ./test/pdsp_test.c:914:     pdsp_macro_queue_push(mdata, ch, 's');
	movw	$0, -56(%rbp)	 #, mdata.i16_head
.L769:
 # ./test/pdsp_test.c:914:     pdsp_macro_queue_push(mdata, ch, 's');
	movzwl	-52(%rbp), %eax	 # mdata.i16_count, _61
	addl	$1, %eax	 #, _64
	movw	%ax, -52(%rbp)	 # _65, mdata.i16_count
	movzwl	-56(%rbp), %eax	 # mdata.i16_head, _66
	cwtl
	cltq
	movb	$115, -5(%rbp,%rax)	 #, ch[_67]
 # ./test/pdsp_test.c:915:     PDSP_ASSERT(pdsp_macro_queue_is_not_full(mdata));
	movzwl	-52(%rbp), %edx	 # mdata.i16_count, _68
	movzwl	-50(%rbp), %eax	 # mdata.i16_size, _69
	cmpw	%ax, %dx	 # _69, _68
	jl	.L770	 #,
 # ./test/pdsp_test.c:915:     PDSP_ASSERT(pdsp_macro_queue_is_not_full(mdata));
	movl	$915, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp264
	movq	%rax, %rdx	 # tmp264,
	leaq	.LC3(%rip), %rax	 #, tmp265
	movq	%rax, %rcx	 # tmp265,
	call	printf	 #
.L770:
 # ./test/pdsp_test.c:916:     pdsp_macro_queue_push(mdata, ch, 't');
	movzwl	-56(%rbp), %eax	 # mdata.i16_head, _70
	addl	$1, %eax	 #, _73
	movw	%ax, -56(%rbp)	 # _74, mdata.i16_head
	movzwl	-56(%rbp), %edx	 # mdata.i16_head, _75
	movzwl	-50(%rbp), %eax	 # mdata.i16_size, _76
	cmpw	%ax, %dx	 # _76, _75
	jl	.L771	 #,
 # ./test/pdsp_test.c:916:     pdsp_macro_queue_push(mdata, ch, 't');
	movw	$0, -56(%rbp)	 #, mdata.i16_head
.L771:
 # ./test/pdsp_test.c:916:     pdsp_macro_queue_push(mdata, ch, 't');
	movzwl	-52(%rbp), %eax	 # mdata.i16_count, _77
	addl	$1, %eax	 #, _80
	movw	%ax, -52(%rbp)	 # _81, mdata.i16_count
	movzwl	-56(%rbp), %eax	 # mdata.i16_head, _82
	cwtl
	cltq
	movb	$116, -5(%rbp,%rax)	 #, ch[_83]
 # ./test/pdsp_test.c:917:     PDSP_ASSERT(!pdsp_macro_queue_is_not_full(mdata));
	movzwl	-52(%rbp), %edx	 # mdata.i16_count, _84
	movzwl	-50(%rbp), %eax	 # mdata.i16_size, _85
	cmpw	%ax, %dx	 # _85, _84
	jge	.L772	 #,
 # ./test/pdsp_test.c:917:     PDSP_ASSERT(!pdsp_macro_queue_is_not_full(mdata));
	movl	$917, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp267
	movq	%rax, %rdx	 # tmp267,
	leaq	.LC3(%rip), %rax	 #, tmp268
	movq	%rax, %rcx	 # tmp268,
	call	printf	 #
.L772:
 # ./test/pdsp_test.c:918:     PDSP_ASSERT(ch[3] == 't');
	movzbl	-2(%rbp), %eax	 # ch[3], _86
	cmpb	$116, %al	 #, _86
	je	.L773	 #,
 # ./test/pdsp_test.c:918:     PDSP_ASSERT(ch[3] == 't');
	movl	$918, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp269
	movq	%rax, %rdx	 # tmp269,
	leaq	.LC3(%rip), %rax	 #, tmp270
	movq	%rax, %rcx	 # tmp270,
	call	printf	 #
.L773:
 # ./test/pdsp_test.c:920:     temp = pdsp_macro_queue_pop(mdata, ch);
	movzwl	-54(%rbp), %eax	 # mdata.i16_tail, _87
	cwtl
 # ./test/pdsp_test.c:920:     temp = pdsp_macro_queue_pop(mdata, ch);
	cltq
	movzbl	-5(%rbp,%rax), %eax	 # ch[_88], tmp272
	movb	%al, -1(%rbp)	 # tmp272, temp
 # ./test/pdsp_test.c:920:     temp = pdsp_macro_queue_pop(mdata, ch);
	movzwl	-54(%rbp), %eax	 # mdata.i16_tail, _89
	addl	$1, %eax	 #, _92
	movw	%ax, -54(%rbp)	 # _93, mdata.i16_tail
	movzwl	-54(%rbp), %edx	 # mdata.i16_tail, _94
	movzwl	-50(%rbp), %eax	 # mdata.i16_size, _95
	cmpw	%ax, %dx	 # _95, _94
	jl	.L774	 #,
 # ./test/pdsp_test.c:920:     temp = pdsp_macro_queue_pop(mdata, ch);
	movw	$0, -54(%rbp)	 #, mdata.i16_tail
.L774:
 # ./test/pdsp_test.c:920:     temp = pdsp_macro_queue_pop(mdata, ch);
	movzwl	-52(%rbp), %eax	 # mdata.i16_count, _96
	subl	$1, %eax	 #, _99
	movw	%ax, -52(%rbp)	 # _100, mdata.i16_count
 # ./test/pdsp_test.c:921:     PDSP_ASSERT(temp == 't');
	cmpb	$116, -1(%rbp)	 #, temp
	je	.L775	 #,
 # ./test/pdsp_test.c:921:     PDSP_ASSERT(temp == 't');
	movl	$921, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp273
	movq	%rax, %rdx	 # tmp273,
	leaq	.LC3(%rip), %rax	 #, tmp274
	movq	%rax, %rcx	 # tmp274,
	call	printf	 #
.L775:
 # ./test/pdsp_test.c:922:     temp = pdsp_macro_queue_pop(mdata, ch);
	movzwl	-54(%rbp), %eax	 # mdata.i16_tail, _101
	cwtl
 # ./test/pdsp_test.c:922:     temp = pdsp_macro_queue_pop(mdata, ch);
	cltq
	movzbl	-5(%rbp,%rax), %eax	 # ch[_102], tmp276
	movb	%al, -1(%rbp)	 # tmp276, temp
 # ./test/pdsp_test.c:922:     temp = pdsp_macro_queue_pop(mdata, ch);
	movzwl	-54(%rbp), %eax	 # mdata.i16_tail, _103
	addl	$1, %eax	 #, _106
	movw	%ax, -54(%rbp)	 # _107, mdata.i16_tail
	movzwl	-54(%rbp), %edx	 # mdata.i16_tail, _108
	movzwl	-50(%rbp), %eax	 # mdata.i16_size, _109
	cmpw	%ax, %dx	 # _109, _108
	jl	.L776	 #,
 # ./test/pdsp_test.c:922:     temp = pdsp_macro_queue_pop(mdata, ch);
	movw	$0, -54(%rbp)	 #, mdata.i16_tail
.L776:
 # ./test/pdsp_test.c:922:     temp = pdsp_macro_queue_pop(mdata, ch);
	movzwl	-52(%rbp), %eax	 # mdata.i16_count, _110
	subl	$1, %eax	 #, _113
	movw	%ax, -52(%rbp)	 # _114, mdata.i16_count
 # ./test/pdsp_test.c:923:     PDSP_ASSERT(temp == 'e');
	cmpb	$101, -1(%rbp)	 #, temp
	je	.L777	 #,
 # ./test/pdsp_test.c:923:     PDSP_ASSERT(temp == 'e');
	movl	$923, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp277
	movq	%rax, %rdx	 # tmp277,
	leaq	.LC3(%rip), %rax	 #, tmp278
	movq	%rax, %rcx	 # tmp278,
	call	printf	 #
.L777:
 # ./test/pdsp_test.c:924:     temp = pdsp_macro_queue_pop(mdata, ch);
	movzwl	-54(%rbp), %eax	 # mdata.i16_tail, _115
	cwtl
 # ./test/pdsp_test.c:924:     temp = pdsp_macro_queue_pop(mdata, ch);
	cltq
	movzbl	-5(%rbp,%rax), %eax	 # ch[_116], tmp280
	movb	%al, -1(%rbp)	 # tmp280, temp
 # ./test/pdsp_test.c:924:     temp = pdsp_macro_queue_pop(mdata, ch);
	movzwl	-54(%rbp), %eax	 # mdata.i16_tail, _117
	addl	$1, %eax	 #, _120
	movw	%ax, -54(%rbp)	 # _121, mdata.i16_tail
	movzwl	-54(%rbp), %edx	 # mdata.i16_tail, _122
	movzwl	-50(%rbp), %eax	 # mdata.i16_size, _123
	cmpw	%ax, %dx	 # _123, _122
	jl	.L778	 #,
 # ./test/pdsp_test.c:924:     temp = pdsp_macro_queue_pop(mdata, ch);
	movw	$0, -54(%rbp)	 #, mdata.i16_tail
.L778:
 # ./test/pdsp_test.c:924:     temp = pdsp_macro_queue_pop(mdata, ch);
	movzwl	-52(%rbp), %eax	 # mdata.i16_count, _124
	subl	$1, %eax	 #, _127
	movw	%ax, -52(%rbp)	 # _128, mdata.i16_count
 # ./test/pdsp_test.c:925:     PDSP_ASSERT(temp == 's');
	cmpb	$115, -1(%rbp)	 #, temp
	je	.L779	 #,
 # ./test/pdsp_test.c:925:     PDSP_ASSERT(temp == 's');
	movl	$925, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp281
	movq	%rax, %rdx	 # tmp281,
	leaq	.LC3(%rip), %rax	 #, tmp282
	movq	%rax, %rcx	 # tmp282,
	call	printf	 #
.L779:
 # ./test/pdsp_test.c:926:     PDSP_ASSERT(pdsp_macro_queue_is_not_empty(mdata));
	movzwl	-52(%rbp), %eax	 # mdata.i16_count, _129
	testw	%ax, %ax	 # _129
	jg	.L780	 #,
 # ./test/pdsp_test.c:926:     PDSP_ASSERT(pdsp_macro_queue_is_not_empty(mdata));
	movl	$926, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp283
	movq	%rax, %rdx	 # tmp283,
	leaq	.LC3(%rip), %rax	 #, tmp284
	movq	%rax, %rcx	 # tmp284,
	call	printf	 #
.L780:
 # ./test/pdsp_test.c:927:     temp = pdsp_macro_queue_pop(mdata, ch);
	movzwl	-54(%rbp), %eax	 # mdata.i16_tail, _130
	cwtl
 # ./test/pdsp_test.c:927:     temp = pdsp_macro_queue_pop(mdata, ch);
	cltq
	movzbl	-5(%rbp,%rax), %eax	 # ch[_131], tmp286
	movb	%al, -1(%rbp)	 # tmp286, temp
 # ./test/pdsp_test.c:927:     temp = pdsp_macro_queue_pop(mdata, ch);
	movzwl	-54(%rbp), %eax	 # mdata.i16_tail, _132
	addl	$1, %eax	 #, _135
	movw	%ax, -54(%rbp)	 # _136, mdata.i16_tail
	movzwl	-54(%rbp), %edx	 # mdata.i16_tail, _137
	movzwl	-50(%rbp), %eax	 # mdata.i16_size, _138
	cmpw	%ax, %dx	 # _138, _137
	jl	.L781	 #,
 # ./test/pdsp_test.c:927:     temp = pdsp_macro_queue_pop(mdata, ch);
	movw	$0, -54(%rbp)	 #, mdata.i16_tail
.L781:
 # ./test/pdsp_test.c:927:     temp = pdsp_macro_queue_pop(mdata, ch);
	movzwl	-52(%rbp), %eax	 # mdata.i16_count, _139
	subl	$1, %eax	 #, _142
	movw	%ax, -52(%rbp)	 # _143, mdata.i16_count
 # ./test/pdsp_test.c:928:     PDSP_ASSERT(temp == 't');
	cmpb	$116, -1(%rbp)	 #, temp
	je	.L782	 #,
 # ./test/pdsp_test.c:928:     PDSP_ASSERT(temp == 't');
	movl	$928, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp287
	movq	%rax, %rdx	 # tmp287,
	leaq	.LC3(%rip), %rax	 #, tmp288
	movq	%rax, %rcx	 # tmp288,
	call	printf	 #
.L782:
 # ./test/pdsp_test.c:929:     PDSP_ASSERT(!pdsp_macro_queue_is_not_empty(mdata));
	movzwl	-52(%rbp), %eax	 # mdata.i16_count, _144
	testw	%ax, %ax	 # _144
	jle	.L784	 #,
 # ./test/pdsp_test.c:929:     PDSP_ASSERT(!pdsp_macro_queue_is_not_empty(mdata));
	movl	$929, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp289
	movq	%rax, %rdx	 # tmp289,
	leaq	.LC3(%rip), %rax	 #, tmp290
	movq	%rax, %rcx	 # tmp290,
	call	printf	 #
.L784:
 # ./test/pdsp_test.c:930: }
	nop	
	addq	$96, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC93:
	.ascii "-- void test_ain(void) --\12\0"
	.text
	.globl	test_ain
	.def	test_ain;	.scl	2;	.type	32;	.endef
	.seh_proc	test_ain
test_ain:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$64, %rsp	 #,
	.seh_stackalloc	64
	.seh_endprologue
 # ./test/pdsp_test.c:934:     printf("-- void test_ain(void) --\n");
	leaq	.LC93(%rip), %rax	 #, tmp82
	movq	%rax, %rcx	 # tmp82,
	call	printf	 #
 # ./test/pdsp_test.c:935:     pdsp_ain_var_t vin_ain = {.e_ovr_mode = PDSP_OVERRIDE_OFF,
	movl	$0, -32(%rbp)	 #, vin_ain.e_ovr_mode
	pxor	%xmm0, %xmm0	 # tmp83
	movss	%xmm0, -28(%rbp)	 # tmp83, vin_ain.f32_ovr_value
	movss	.LC22(%rip), %xmm0	 #, tmp84
	movss	%xmm0, -24(%rbp)	 # tmp84, vin_ain.f32_gain
	movss	.LC28(%rip), %xmm0	 #, tmp85
	movss	%xmm0, -20(%rbp)	 # tmp85, vin_ain.f32_offset
 # ./test/pdsp_test.c:940:     vin = pdsp_ain(&vin_ain, 1.0f);
	leaq	-32(%rbp), %rax	 #, tmp86
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp86,
	call	pdsp_ain	 #
	movd	%xmm0, %eax	 #, tmp87
	movl	%eax, -4(%rbp)	 # tmp87, vin
 # ./test/pdsp_test.c:941:     PDSP_ASSERT(vin == 12.0f);
	movss	-4(%rbp), %xmm0	 # vin, tmp88
	ucomiss	.LC94(%rip), %xmm0	 #, tmp88
	jp	.L796	 #,
	movss	-4(%rbp), %xmm0	 # vin, tmp89
	ucomiss	.LC94(%rip), %xmm0	 #, tmp89
	je	.L786	 #,
.L796:
 # ./test/pdsp_test.c:941:     PDSP_ASSERT(vin == 12.0f);
	movl	$941, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp90
	movq	%rax, %rdx	 # tmp90,
	leaq	.LC3(%rip), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	printf	 #
.L786:
 # ./test/pdsp_test.c:942:     vin = pdsp_ain(&vin_ain, -2.0f);
	leaq	-32(%rbp), %rax	 #, tmp92
	movss	.LC33(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp92,
	call	pdsp_ain	 #
	movd	%xmm0, %eax	 #, tmp93
	movl	%eax, -4(%rbp)	 # tmp93, vin
 # ./test/pdsp_test.c:943:     PDSP_ASSERT(vin == 6.0f);
	movss	-4(%rbp), %xmm0	 # vin, tmp94
	ucomiss	.LC47(%rip), %xmm0	 #, tmp94
	jp	.L797	 #,
	movss	-4(%rbp), %xmm0	 # vin, tmp95
	ucomiss	.LC47(%rip), %xmm0	 #, tmp95
	je	.L788	 #,
.L797:
 # ./test/pdsp_test.c:943:     PDSP_ASSERT(vin == 6.0f);
	movl	$943, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp96
	movq	%rax, %rdx	 # tmp96,
	leaq	.LC3(%rip), %rax	 #, tmp97
	movq	%rax, %rcx	 # tmp97,
	call	printf	 #
.L788:
 # ./test/pdsp_test.c:944:     pdsp_ain_ovr_enable(&vin_ain, 33.0f);
	leaq	-32(%rbp), %rax	 #, tmp98
	movss	.LC95(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp98,
	call	pdsp_ain_ovr_enable	 #
 # ./test/pdsp_test.c:945:     vin = pdsp_ain(&vin_ain, -2.0f);
	leaq	-32(%rbp), %rax	 #, tmp99
	movss	.LC33(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp99,
	call	pdsp_ain	 #
	movd	%xmm0, %eax	 #, tmp100
	movl	%eax, -4(%rbp)	 # tmp100, vin
 # ./test/pdsp_test.c:946:     PDSP_ASSERT(vin == 33.0f);
	movss	-4(%rbp), %xmm0	 # vin, tmp101
	ucomiss	.LC95(%rip), %xmm0	 #, tmp101
	jp	.L798	 #,
	movss	-4(%rbp), %xmm0	 # vin, tmp102
	ucomiss	.LC95(%rip), %xmm0	 #, tmp102
	je	.L790	 #,
.L798:
 # ./test/pdsp_test.c:946:     PDSP_ASSERT(vin == 33.0f);
	movl	$946, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp103
	movq	%rax, %rdx	 # tmp103,
	leaq	.LC3(%rip), %rax	 #, tmp104
	movq	%rax, %rcx	 # tmp104,
	call	printf	 #
.L790:
 # ./test/pdsp_test.c:947:     pdsp_ain_ovr_disable(&vin_ain);
	leaq	-32(%rbp), %rax	 #, tmp105
	movq	%rax, %rcx	 # tmp105,
	call	pdsp_ain_ovr_disable	 #
 # ./test/pdsp_test.c:948:     vin = pdsp_ain(&vin_ain, -2.0f);
	leaq	-32(%rbp), %rax	 #, tmp106
	movss	.LC33(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp106,
	call	pdsp_ain	 #
	movd	%xmm0, %eax	 #, tmp107
	movl	%eax, -4(%rbp)	 # tmp107, vin
 # ./test/pdsp_test.c:949:     PDSP_ASSERT(vin == 6.0f);
	movss	-4(%rbp), %xmm0	 # vin, tmp108
	ucomiss	.LC47(%rip), %xmm0	 #, tmp108
	jp	.L799	 #,
	movss	-4(%rbp), %xmm0	 # vin, tmp109
	ucomiss	.LC47(%rip), %xmm0	 #, tmp109
	je	.L792	 #,
.L799:
 # ./test/pdsp_test.c:949:     PDSP_ASSERT(vin == 6.0f);
	movl	$949, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp110
	movq	%rax, %rdx	 # tmp110,
	leaq	.LC3(%rip), %rax	 #, tmp111
	movq	%rax, %rcx	 # tmp111,
	call	printf	 #
.L792:
 # ./test/pdsp_test.c:950:     pdsp_ain_ovr_inject(&vin_ain, 4.0f);
	leaq	-32(%rbp), %rax	 #, tmp112
	movss	.LC32(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp112,
	call	pdsp_ain_ovr_inject	 #
 # ./test/pdsp_test.c:951:     vin = pdsp_ain(&vin_ain, -2.0f);
	leaq	-32(%rbp), %rax	 #, tmp113
	movss	.LC33(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp113,
	call	pdsp_ain	 #
	movd	%xmm0, %eax	 #, tmp114
	movl	%eax, -4(%rbp)	 # tmp114, vin
 # ./test/pdsp_test.c:952:     PDSP_ASSERT(vin == 10.0f);
	movss	-4(%rbp), %xmm0	 # vin, tmp115
	ucomiss	.LC28(%rip), %xmm0	 #, tmp115
	jp	.L800	 #,
	movss	-4(%rbp), %xmm0	 # vin, tmp116
	ucomiss	.LC28(%rip), %xmm0	 #, tmp116
	je	.L801	 #,
.L800:
 # ./test/pdsp_test.c:952:     PDSP_ASSERT(vin == 10.0f);
	movl	$952, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp117
	movq	%rax, %rdx	 # tmp117,
	leaq	.LC3(%rip), %rax	 #, tmp118
	movq	%rax, %rcx	 # tmp118,
	call	printf	 #
.L801:
 # ./test/pdsp_test.c:953: }
	nop	
	addq	$64, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC96:
	.ascii "-- void test_ain_calibrate(void) --\12\0"
	.text
	.globl	test_ain_calibrate
	.def	test_ain_calibrate;	.scl	2;	.type	32;	.endef
	.seh_proc	test_ain_calibrate
test_ain_calibrate:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$64, %rsp	 #,
	.seh_stackalloc	64
	.seh_endprologue
 # ./test/pdsp_test.c:957:     printf("-- void test_ain_calibrate(void) --\n");
	leaq	.LC96(%rip), %rax	 #, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	printf	 #
 # ./test/pdsp_test.c:958:     pdsp_ain_var_t vin_ain = {.e_ovr_mode = PDSP_OVERRIDE_OFF,
	movl	$0, -32(%rbp)	 #, vin_ain.e_ovr_mode
	pxor	%xmm0, %xmm0	 # tmp85
	movss	%xmm0, -28(%rbp)	 # tmp85, vin_ain.f32_ovr_value
	movss	.LC22(%rip), %xmm0	 #, tmp86
	movss	%xmm0, -24(%rbp)	 # tmp86, vin_ain.f32_gain
	movss	.LC28(%rip), %xmm0	 #, tmp87
	movss	%xmm0, -20(%rbp)	 # tmp87, vin_ain.f32_offset
 # ./test/pdsp_test.c:963:     vin = pdsp_ain(&vin_ain, 1.0f);
	leaq	-32(%rbp), %rax	 #, tmp88
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp88,
	call	pdsp_ain	 #
	movd	%xmm0, %eax	 #, tmp89
	movl	%eax, -4(%rbp)	 # tmp89, vin
 # ./test/pdsp_test.c:964:     PDSP_ASSERT(vin == 12.0f);
	movss	-4(%rbp), %xmm0	 # vin, tmp90
	ucomiss	.LC94(%rip), %xmm0	 #, tmp90
	jp	.L809	 #,
	movss	-4(%rbp), %xmm0	 # vin, tmp91
	ucomiss	.LC94(%rip), %xmm0	 #, tmp91
	je	.L803	 #,
.L809:
 # ./test/pdsp_test.c:964:     PDSP_ASSERT(vin == 12.0f);
	movl	$964, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp92
	movq	%rax, %rdx	 # tmp92,
	leaq	.LC3(%rip), %rax	 #, tmp93
	movq	%rax, %rcx	 # tmp93,
	call	printf	 #
.L803:
 # ./test/pdsp_test.c:965:     new_gain = pdsp_ain_calibrate_gain(vin_ain.f32_gain, 10.0f, 20.0f);
	movl	-24(%rbp), %eax	 # vin_ain.f32_gain, _1
	movss	.LC51(%rip), %xmm2	 #,
	movss	.LC28(%rip), %xmm1	 #,
	movd	%eax, %xmm0	 # _1,
	call	pdsp_ain_calibrate_gain	 #
	movd	%xmm0, %eax	 #, tmp94
	movl	%eax, -8(%rbp)	 # tmp94, new_gain
 # ./test/pdsp_test.c:966:     PDSP_ASSERT(new_gain == 2.0f * 10.0f / 20.0f);
	movss	.LC23(%rip), %xmm0	 #, tmp95
	ucomiss	-8(%rbp), %xmm0	 # new_gain, tmp95
	jp	.L810	 #,
	movss	.LC23(%rip), %xmm0	 #, tmp96
	ucomiss	-8(%rbp), %xmm0	 # new_gain, tmp96
	je	.L805	 #,
.L810:
 # ./test/pdsp_test.c:966:     PDSP_ASSERT(new_gain == 2.0f * 10.0f / 20.0f);
	movl	$966, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp97
	movq	%rax, %rdx	 # tmp97,
	leaq	.LC3(%rip), %rax	 #, tmp98
	movq	%rax, %rcx	 # tmp98,
	call	printf	 #
.L805:
 # ./test/pdsp_test.c:967:     new_offset = pdsp_ain_calibrate_gain(vin_ain.f32_offset, 0.0f, 10.0f);
	movl	-20(%rbp), %eax	 # vin_ain.f32_offset, _2
	movss	.LC28(%rip), %xmm2	 #,
	pxor	%xmm1, %xmm1	 #
	movd	%eax, %xmm0	 # _2,
	call	pdsp_ain_calibrate_gain	 #
	movd	%xmm0, %eax	 #, tmp99
	movl	%eax, -12(%rbp)	 # tmp99, new_offset
 # ./test/pdsp_test.c:968:     PDSP_ASSERT(new_offset == 0.0f);
	pxor	%xmm0, %xmm0	 # tmp100
	ucomiss	-12(%rbp), %xmm0	 # new_offset, tmp100
	jp	.L811	 #,
	pxor	%xmm0, %xmm0	 # tmp101
	ucomiss	-12(%rbp), %xmm0	 # new_offset, tmp101
	je	.L812	 #,
.L811:
 # ./test/pdsp_test.c:968:     PDSP_ASSERT(new_offset == 0.0f);
	movl	$968, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp102
	movq	%rax, %rdx	 # tmp102,
	leaq	.LC3(%rip), %rax	 #, tmp103
	movq	%rax, %rcx	 # tmp103,
	call	printf	 #
.L812:
 # ./test/pdsp_test.c:969: }
	nop	
	addq	$64, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC97:
	.ascii "-- void test_minmax(void) --\12\0"
	.text
	.globl	test_minmax
	.def	test_minmax;	.scl	2;	.type	32;	.endef
	.seh_proc	test_minmax
test_minmax:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
 # ./test/pdsp_test.c:973:     printf("-- void test_minmax(void) --\n");
	leaq	.LC97(%rip), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	printf	 #
 # ./test/pdsp_test.c:974:     pdsp_minmax_var_t mm_var = {0};
	movq	$0, -12(%rbp)	 #, mm_var
	movl	$0, -4(%rbp)	 #, mm_var
 # ./test/pdsp_test.c:975:     pdsp_minmax_clear(&mm_var);
	leaq	-12(%rbp), %rax	 #, tmp92
	movq	%rax, %rcx	 # tmp92,
	call	pdsp_minmax_clear	 #
 # ./test/pdsp_test.c:976:     pdsp_minmax(&mm_var, 0.0f);
	leaq	-12(%rbp), %rax	 #, tmp93
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp93,
	call	pdsp_minmax	 #
 # ./test/pdsp_test.c:977:     PDSP_ASSERT((mm_var.f32_min == 0.0f) && (mm_var.f32_max == 0.0f) &&
	movss	-12(%rbp), %xmm0	 # mm_var.f32_min, _1
	pxor	%xmm1, %xmm1	 # tmp94
	ucomiss	%xmm1, %xmm0	 # tmp94, _1
	jp	.L814	 #,
	pxor	%xmm1, %xmm1	 # tmp95
	ucomiss	%xmm1, %xmm0	 # tmp95, _1
	jne	.L814	 #,
 # ./test/pdsp_test.c:977:     PDSP_ASSERT((mm_var.f32_min == 0.0f) && (mm_var.f32_max == 0.0f) &&
	movss	-8(%rbp), %xmm0	 # mm_var.f32_max, _2
	pxor	%xmm1, %xmm1	 # tmp96
	ucomiss	%xmm1, %xmm0	 # tmp96, _2
	jp	.L814	 #,
	pxor	%xmm1, %xmm1	 # tmp97
	ucomiss	%xmm1, %xmm0	 # tmp97, _2
	jne	.L814	 #,
 # ./test/pdsp_test.c:977:     PDSP_ASSERT((mm_var.f32_min == 0.0f) && (mm_var.f32_max == 0.0f) &&
	movss	-4(%rbp), %xmm0	 # mm_var.f32_delta, _3
	pxor	%xmm1, %xmm1	 # tmp98
	ucomiss	%xmm1, %xmm0	 # tmp98, _3
	jp	.L814	 #,
	pxor	%xmm1, %xmm1	 # tmp99
	ucomiss	%xmm1, %xmm0	 # tmp99, _3
	je	.L817	 #,
.L814:
 # ./test/pdsp_test.c:977:     PDSP_ASSERT((mm_var.f32_min == 0.0f) && (mm_var.f32_max == 0.0f) &&
	movl	$977, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp100
	movq	%rax, %rdx	 # tmp100,
	leaq	.LC3(%rip), %rax	 #, tmp101
	movq	%rax, %rcx	 # tmp101,
	call	printf	 #
.L817:
 # ./test/pdsp_test.c:979:     pdsp_minmax(&mm_var, 10.0f);
	leaq	-12(%rbp), %rax	 #, tmp102
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp102,
	call	pdsp_minmax	 #
 # ./test/pdsp_test.c:980:     PDSP_ASSERT((mm_var.f32_min == 0.0f) && (mm_var.f32_max == 10.0f) &&
	movss	-12(%rbp), %xmm0	 # mm_var.f32_min, _4
	pxor	%xmm1, %xmm1	 # tmp103
	ucomiss	%xmm1, %xmm0	 # tmp103, _4
	jp	.L819	 #,
	pxor	%xmm1, %xmm1	 # tmp104
	ucomiss	%xmm1, %xmm0	 # tmp104, _4
	jne	.L819	 #,
 # ./test/pdsp_test.c:980:     PDSP_ASSERT((mm_var.f32_min == 0.0f) && (mm_var.f32_max == 10.0f) &&
	movss	-8(%rbp), %xmm0	 # mm_var.f32_max, _5
	ucomiss	.LC28(%rip), %xmm0	 #, _5
	jp	.L819	 #,
	ucomiss	.LC28(%rip), %xmm0	 #, _5
	jne	.L819	 #,
 # ./test/pdsp_test.c:980:     PDSP_ASSERT((mm_var.f32_min == 0.0f) && (mm_var.f32_max == 10.0f) &&
	movss	-4(%rbp), %xmm0	 # mm_var.f32_delta, _6
	ucomiss	.LC28(%rip), %xmm0	 #, _6
	jp	.L819	 #,
	ucomiss	.LC28(%rip), %xmm0	 #, _6
	je	.L822	 #,
.L819:
 # ./test/pdsp_test.c:980:     PDSP_ASSERT((mm_var.f32_min == 0.0f) && (mm_var.f32_max == 10.0f) &&
	movl	$980, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp105
	movq	%rax, %rdx	 # tmp105,
	leaq	.LC3(%rip), %rax	 #, tmp106
	movq	%rax, %rcx	 # tmp106,
	call	printf	 #
.L822:
 # ./test/pdsp_test.c:982:     pdsp_minmax(&mm_var, -10.0f);
	leaq	-12(%rbp), %rax	 #, tmp107
	movss	.LC72(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp107,
	call	pdsp_minmax	 #
 # ./test/pdsp_test.c:983:     PDSP_ASSERT((mm_var.f32_min == -10.0f) && (mm_var.f32_max == 10.0f) &&
	movss	-12(%rbp), %xmm0	 # mm_var.f32_min, _7
	ucomiss	.LC72(%rip), %xmm0	 #, _7
	jp	.L824	 #,
	ucomiss	.LC72(%rip), %xmm0	 #, _7
	jne	.L824	 #,
 # ./test/pdsp_test.c:983:     PDSP_ASSERT((mm_var.f32_min == -10.0f) && (mm_var.f32_max == 10.0f) &&
	movss	-8(%rbp), %xmm0	 # mm_var.f32_max, _8
	ucomiss	.LC28(%rip), %xmm0	 #, _8
	jp	.L824	 #,
	ucomiss	.LC28(%rip), %xmm0	 #, _8
	jne	.L824	 #,
 # ./test/pdsp_test.c:983:     PDSP_ASSERT((mm_var.f32_min == -10.0f) && (mm_var.f32_max == 10.0f) &&
	movss	-4(%rbp), %xmm0	 # mm_var.f32_delta, _9
	ucomiss	.LC51(%rip), %xmm0	 #, _9
	jp	.L824	 #,
	ucomiss	.LC51(%rip), %xmm0	 #, _9
	je	.L835	 #,
.L824:
 # ./test/pdsp_test.c:983:     PDSP_ASSERT((mm_var.f32_min == -10.0f) && (mm_var.f32_max == 10.0f) &&
	movl	$983, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp108
	movq	%rax, %rdx	 # tmp108,
	leaq	.LC3(%rip), %rax	 #, tmp109
	movq	%rax, %rcx	 # tmp109,
	call	printf	 #
.L835:
 # ./test/pdsp_test.c:985: }
	nop	
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC98:
	.ascii "-- void test_expavg(void) --\12\0"
.LC101:
	.ascii "w\0"
.LC102:
	.ascii "./build/test_expavg.csv\0"
.LC104:
	.ascii "X, Y\12\0"
.LC105:
	.ascii "%f, %f\12\0"
.LC106:
	.ascii "fopen failed: %s\12\0"
	.text
	.globl	test_expavg
	.def	test_expavg;	.scl	2;	.type	32;	.endef
	.seh_proc	test_expavg
test_expavg:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$80, %rsp	 #,
	.seh_stackalloc	80
	.seh_endprologue
 # ./test/pdsp_test.c:989:     printf("-- void test_expavg(void) --\n");
	leaq	.LC98(%rip), %rax	 #, tmp93
	movq	%rax, %rcx	 # tmp93,
	call	printf	 #
 # ./test/pdsp_test.c:990:     pdsp_expavg_t expavg = {.f32_out = 0.0f, .f32_tau = 0.5f};
	pxor	%xmm0, %xmm0	 # tmp94
	movss	%xmm0, -32(%rbp)	 # tmp94, expavg.f32_out
	movss	.LC37(%rip), %xmm0	 #, tmp95
	movss	%xmm0, -28(%rbp)	 # tmp95, expavg.f32_tau
 # ./test/pdsp_test.c:992:     pdsp_expavg_clear(&expavg);
	leaq	-32(%rbp), %rax	 #, tmp96
	movq	%rax, %rcx	 # tmp96,
	call	pdsp_expavg_clear	 #
 # ./test/pdsp_test.c:993:     PDSP_ASSERT(expavg.f32_out == 0.0f);
	movss	-32(%rbp), %xmm0	 # expavg.f32_out, _1
	pxor	%xmm1, %xmm1	 # tmp97
	ucomiss	%xmm1, %xmm0	 # tmp97, _1
	jp	.L850	 #,
	pxor	%xmm1, %xmm1	 # tmp98
	ucomiss	%xmm1, %xmm0	 # tmp98, _1
	je	.L837	 #,
.L850:
 # ./test/pdsp_test.c:993:     PDSP_ASSERT(expavg.f32_out == 0.0f);
	movl	$993, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp99
	movq	%rax, %rdx	 # tmp99,
	leaq	.LC3(%rip), %rax	 #, tmp100
	movq	%rax, %rcx	 # tmp100,
	call	printf	 #
.L837:
 # ./test/pdsp_test.c:994:     out = pdsp_expavg(&expavg, 1.0);
	leaq	-32(%rbp), %rax	 #, tmp101
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp101,
	call	pdsp_expavg	 #
	movd	%xmm0, %eax	 #, tmp102
	movl	%eax, -12(%rbp)	 # tmp102, out
 # ./test/pdsp_test.c:995:     PDSP_ASSERT(out == 0.5f);
	movss	-12(%rbp), %xmm0	 # out, tmp103
	ucomiss	.LC37(%rip), %xmm0	 #, tmp103
	jp	.L851	 #,
	movss	-12(%rbp), %xmm0	 # out, tmp104
	ucomiss	.LC37(%rip), %xmm0	 #, tmp104
	je	.L839	 #,
.L851:
 # ./test/pdsp_test.c:995:     PDSP_ASSERT(out == 0.5f);
	movl	$995, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp105
	movq	%rax, %rdx	 # tmp105,
	leaq	.LC3(%rip), %rax	 #, tmp106
	movq	%rax, %rcx	 # tmp106,
	call	printf	 #
.L839:
 # ./test/pdsp_test.c:996:     out = pdsp_expavg(&expavg, 1.0);
	leaq	-32(%rbp), %rax	 #, tmp107
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp107,
	call	pdsp_expavg	 #
	movd	%xmm0, %eax	 #, tmp108
	movl	%eax, -12(%rbp)	 # tmp108, out
 # ./test/pdsp_test.c:997:     PDSP_ASSERT(out == 0.75f);
	movss	-12(%rbp), %xmm0	 # out, tmp109
	ucomiss	.LC99(%rip), %xmm0	 #, tmp109
	jp	.L852	 #,
	movss	-12(%rbp), %xmm0	 # out, tmp110
	ucomiss	.LC99(%rip), %xmm0	 #, tmp110
	je	.L841	 #,
.L852:
 # ./test/pdsp_test.c:997:     PDSP_ASSERT(out == 0.75f);
	movl	$997, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp111
	movq	%rax, %rdx	 # tmp111,
	leaq	.LC3(%rip), %rax	 #, tmp112
	movq	%rax, %rcx	 # tmp112,
	call	printf	 #
.L841:
 # ./test/pdsp_test.c:998:     for (int i = 0; i < 100; i++)
	movl	$0, -4(%rbp)	 #, i
 # ./test/pdsp_test.c:998:     for (int i = 0; i < 100; i++)
	jmp	.L843	 #
.L844:
 # ./test/pdsp_test.c:999:         pdsp_expavg(&expavg, 1.0);
	leaq	-32(%rbp), %rax	 #, tmp113
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp113,
	call	pdsp_expavg	 #
 # ./test/pdsp_test.c:998:     for (int i = 0; i < 100; i++)
	addl	$1, -4(%rbp)	 #, i
.L843:
 # ./test/pdsp_test.c:998:     for (int i = 0; i < 100; i++)
	cmpl	$99, -4(%rbp)	 #, i
	jle	.L844	 #,
 # ./test/pdsp_test.c:1000:     out = pdsp_expavg(&expavg, 1.0);
	leaq	-32(%rbp), %rax	 #, tmp114
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp114,
	call	pdsp_expavg	 #
	movd	%xmm0, %eax	 #, tmp115
	movl	%eax, -12(%rbp)	 # tmp115, out
 # ./test/pdsp_test.c:1001:     PDSP_ASSERT(out >= 0.999f);
	movss	-12(%rbp), %xmm0	 # out, tmp116
	comiss	.LC100(%rip), %xmm0	 #, tmp116
	setnb	%al	 #, _2
	xorl	$1, %eax	 #, _3
	testb	%al, %al	 # _3
	je	.L845	 #,
 # ./test/pdsp_test.c:1001:     PDSP_ASSERT(out >= 0.999f);
	movl	$1001, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp117
	movq	%rax, %rdx	 # tmp117,
	leaq	.LC3(%rip), %rax	 #, tmp118
	movq	%rax, %rcx	 # tmp118,
	call	printf	 #
.L845:
 # ./test/pdsp_test.c:1003:     FILE *fp = fopen("./build/test_expavg.csv", "w");
	leaq	.LC101(%rip), %rax	 #, tmp119
	movq	%rax, %rdx	 # tmp119,
	leaq	.LC102(%rip), %rax	 #, tmp120
	movq	%rax, %rcx	 # tmp120,
	call	fopen	 #
	movq	%rax, -24(%rbp)	 # tmp121, fp
 # ./test/pdsp_test.c:1004:     if (fp != NULL)
	cmpq	$0, -24(%rbp)	 #, fp
	je	.L846	 #,
 # ./test/pdsp_test.c:1007:         pdsp_expavg_t expavg_csv = {.f32_out = 0.0f, .f32_tau = 0.0f};
	pxor	%xmm0, %xmm0	 # tmp122
	movss	%xmm0, -40(%rbp)	 # tmp122, expavg_csv.f32_out
	pxor	%xmm0, %xmm0	 # tmp123
	movss	%xmm0, -36(%rbp)	 # tmp123, expavg_csv.f32_tau
 # ./test/pdsp_test.c:1009:         pdsp_expavg_c2d(&expavg_csv, 0.01f, 1.0f);
	leaq	-40(%rbp), %rax	 #, tmp124
	movss	.LC23(%rip), %xmm2	 #,
	movss	.LC103(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp124,
	call	pdsp_expavg_c2d	 #
 # ./test/pdsp_test.c:1010:         pdsp_expavg_clear(&expavg_csv);
	leaq	-40(%rbp), %rax	 #, tmp125
	movq	%rax, %rcx	 # tmp125,
	call	pdsp_expavg_clear	 #
 # ./test/pdsp_test.c:1011:         fprintf(fp, "X, Y\n");
	movq	-24(%rbp), %rax	 # fp, tmp126
	leaq	.LC104(%rip), %rdx	 #, tmp127
	movq	%rax, %rcx	 # tmp126,
	call	fprintf	 #
 # ./test/pdsp_test.c:1012:         fprintf(fp, "%f, %f\n", 0.0f, 0.0f);
	movl	$0, %eax	 #, tmp128
	movq	%rax, %rdx	 # tmp128, tmp129
	movq	%rdx, %xmm1	 # tmp129, tmp131
	movq	%rax, %rcx	 # tmp130, tmp132
	movl	$0, %eax	 #, tmp133
	movq	%rax, %rdx	 # tmp133, tmp134
	movq	%rdx, %xmm0	 # tmp134, tmp136
	movq	%rax, %rdx	 # tmp135, tmp137
	movq	-24(%rbp), %rax	 # fp, tmp138
	movapd	%xmm1, %xmm3	 # tmp131,
	movq	%rcx, %r9	 # tmp132,
	movapd	%xmm0, %xmm2	 # tmp136,
	movq	%rdx, %r8	 # tmp137,
	leaq	.LC105(%rip), %rdx	 #, tmp139
	movq	%rax, %rcx	 # tmp138,
	call	fprintf	 #
 # ./test/pdsp_test.c:1013:         for (i = 1; i < 100; i++)
	movl	$1, -8(%rbp)	 #, i
 # ./test/pdsp_test.c:1013:         for (i = 1; i < 100; i++)
	jmp	.L847	 #
.L848:
 # ./test/pdsp_test.c:1016:                     pdsp_expavg(&expavg_csv, 1.0f));
	leaq	-40(%rbp), %rax	 #, tmp140
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp140,
	call	pdsp_expavg	 #
 # ./test/pdsp_test.c:1015:             fprintf(fp, "%f, %f\n", (pdsp_f32_t)i * 0.01f,
	pxor	%xmm2, %xmm2	 # _5
	cvtss2sd	%xmm0, %xmm2	 # _4, _5
 # ./test/pdsp_test.c:1015:             fprintf(fp, "%f, %f\n", (pdsp_f32_t)i * 0.01f,
	pxor	%xmm1, %xmm1	 # _6
	cvtsi2ssl	-8(%rbp), %xmm1	 # i, _6
 # ./test/pdsp_test.c:1015:             fprintf(fp, "%f, %f\n", (pdsp_f32_t)i * 0.01f,
	movss	.LC103(%rip), %xmm0	 #, tmp141
	mulss	%xmm1, %xmm0	 # _6, _7
 # ./test/pdsp_test.c:1015:             fprintf(fp, "%f, %f\n", (pdsp_f32_t)i * 0.01f,
	cvtss2sd	%xmm0, %xmm0	 # _7, _8
	movq	%xmm2, %rax	 # _5, tmp142
	movq	%rax, %rdx	 # tmp142, tmp143
	movq	%rdx, %xmm1	 # tmp143, tmp145
	movq	%rax, %rcx	 # tmp144, tmp146
	movq	%xmm0, %rax	 # _8, tmp147
	movq	%rax, %rdx	 # tmp147, tmp148
	movq	%rdx, %xmm0	 # tmp148, tmp150
	movq	%rax, %rdx	 # tmp149, tmp151
	movq	-24(%rbp), %rax	 # fp, tmp152
	movapd	%xmm1, %xmm3	 # tmp145,
	movq	%rcx, %r9	 # tmp146,
	movapd	%xmm0, %xmm2	 # tmp150,
	movq	%rdx, %r8	 # tmp151,
	leaq	.LC105(%rip), %rdx	 #, tmp153
	movq	%rax, %rcx	 # tmp152,
	call	fprintf	 #
 # ./test/pdsp_test.c:1013:         for (i = 1; i < 100; i++)
	addl	$1, -8(%rbp)	 #, i
.L847:
 # ./test/pdsp_test.c:1013:         for (i = 1; i < 100; i++)
	cmpl	$99, -8(%rbp)	 #, i
	jle	.L848	 #,
 # ./test/pdsp_test.c:1018:         fclose(fp);
	movq	-24(%rbp), %rax	 # fp, tmp154
	movq	%rax, %rcx	 # tmp154,
	call	fclose	 #
 # ./test/pdsp_test.c:1024: }
	jmp	.L853	 #
.L846:
 # ./test/pdsp_test.c:1022:         printf("fopen failed: %s\n", strerror(errno));
	movq	__imp__errno(%rip), %rax	 #, tmp155
	call	*%rax	 # tmp155
 # ./test/pdsp_test.c:1022:         printf("fopen failed: %s\n", strerror(errno));
	movl	(%rax), %eax	 # *_9, _10
	movl	%eax, %ecx	 # _10,
	call	strerror	 #
 # ./test/pdsp_test.c:1022:         printf("fopen failed: %s\n", strerror(errno));
	movq	%rax, %rdx	 # _11,
	leaq	.LC106(%rip), %rax	 #, tmp156
	movq	%rax, %rcx	 # tmp156,
	call	printf	 #
.L853:
 # ./test/pdsp_test.c:1024: }
	nop	
	addq	$80, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	test_df2x
	.def	test_df2x;	.scl	2;	.type	32;	.endef
	.seh_proc	test_df2x
test_df2x:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$144, %rsp	 #,
	.seh_stackalloc	144
	.seh_endprologue
 # ./test/pdsp_test.c:1028:     pdsp_1p1z_inv_t p1 = {.f32_b1 = 1.0f, .f32_b0 = 2.0f, .f32_a1 = 1.0f};
	movss	.LC22(%rip), %xmm0	 #, tmp109
	movss	%xmm0, -12(%rbp)	 # tmp109, p1.f32_b0
	movss	.LC23(%rip), %xmm0	 #, tmp110
	movss	%xmm0, -8(%rbp)	 # tmp110, p1.f32_b1
	movss	.LC23(%rip), %xmm0	 #, tmp111
	movss	%xmm0, -4(%rbp)	 # tmp111, p1.f32_a1
 # ./test/pdsp_test.c:1029:     pdsp_2p2z_inv_t p2 = {.f32_b2 = 1.0f,
	movss	.LC30(%rip), %xmm0	 #, tmp112
	movss	%xmm0, -32(%rbp)	 # tmp112, p2.f32_b0
	movss	.LC22(%rip), %xmm0	 #, tmp113
	movss	%xmm0, -28(%rbp)	 # tmp113, p2.f32_b1
	movss	.LC23(%rip), %xmm0	 #, tmp114
	movss	%xmm0, -24(%rbp)	 # tmp114, p2.f32_b2
	movss	.LC22(%rip), %xmm0	 #, tmp115
	movss	%xmm0, -20(%rbp)	 # tmp115, p2.f32_a1
	movss	.LC23(%rip), %xmm0	 #, tmp116
	movss	%xmm0, -16(%rbp)	 # tmp116, p2.f32_a2
 # ./test/pdsp_test.c:1034:     pdsp_3p3z_inv_t p3 = {.f32_b3 = 1.0f,
	movss	.LC32(%rip), %xmm0	 #, tmp117
	movss	%xmm0, -64(%rbp)	 # tmp117, p3.f32_b0
	movss	.LC30(%rip), %xmm0	 #, tmp118
	movss	%xmm0, -60(%rbp)	 # tmp118, p3.f32_b1
	movss	.LC22(%rip), %xmm0	 #, tmp119
	movss	%xmm0, -56(%rbp)	 # tmp119, p3.f32_b2
	movss	.LC23(%rip), %xmm0	 #, tmp120
	movss	%xmm0, -52(%rbp)	 # tmp120, p3.f32_b3
	movss	.LC30(%rip), %xmm0	 #, tmp121
	movss	%xmm0, -48(%rbp)	 # tmp121, p3.f32_a1
	movss	.LC22(%rip), %xmm0	 #, tmp122
	movss	%xmm0, -44(%rbp)	 # tmp122, p3.f32_a2
	movss	.LC23(%rip), %xmm0	 #, tmp123
	movss	%xmm0, -40(%rbp)	 # tmp123, p3.f32_a3
 # ./test/pdsp_test.c:1041:     pdsp_1p1z_var_t f1 = {0};
	movq	$0, -72(%rbp)	 #, f1
 # ./test/pdsp_test.c:1042:     pdsp_2p2z_var_t f2 = {0};
	movq	$0, -84(%rbp)	 #, f2
	movl	$0, -76(%rbp)	 #, f2
 # ./test/pdsp_test.c:1043:     pdsp_3p3z_var_t f3 = {0};
	movq	$0, -112(%rbp)	 #, f3
	movq	$0, -104(%rbp)	 #, f3
 # ./test/pdsp_test.c:1044:     pdsp_df21_clear(&f1);
	leaq	-72(%rbp), %rax	 #, tmp124
	movq	%rax, %rcx	 # tmp124,
	call	pdsp_df21_clear	 #
 # ./test/pdsp_test.c:1045:     PDSP_ASSERT(f1.f32_out == 0.0f);
	movss	-68(%rbp), %xmm0	 # f1.f32_out, _1
	pxor	%xmm1, %xmm1	 # tmp125
	ucomiss	%xmm1, %xmm0	 # tmp125, _1
	jp	.L909	 #,
	pxor	%xmm1, %xmm1	 # tmp126
	ucomiss	%xmm1, %xmm0	 # tmp126, _1
	je	.L855	 #,
.L909:
 # ./test/pdsp_test.c:1045:     PDSP_ASSERT(f1.f32_out == 0.0f);
	movl	$1045, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp127
	movq	%rax, %rdx	 # tmp127,
	leaq	.LC3(%rip), %rax	 #, tmp128
	movq	%rax, %rcx	 # tmp128,
	call	printf	 #
.L855:
 # ./test/pdsp_test.c:1046:     PDSP_ASSERT(f1.f32_x1 == 0.0f);
	movss	-72(%rbp), %xmm0	 # f1.f32_x1, _2
	pxor	%xmm1, %xmm1	 # tmp129
	ucomiss	%xmm1, %xmm0	 # tmp129, _2
	jp	.L910	 #,
	pxor	%xmm1, %xmm1	 # tmp130
	ucomiss	%xmm1, %xmm0	 # tmp130, _2
	je	.L857	 #,
.L910:
 # ./test/pdsp_test.c:1046:     PDSP_ASSERT(f1.f32_x1 == 0.0f);
	movl	$1046, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp131
	movq	%rax, %rdx	 # tmp131,
	leaq	.LC3(%rip), %rax	 #, tmp132
	movq	%rax, %rcx	 # tmp132,
	call	printf	 #
.L857:
 # ./test/pdsp_test.c:1047:     pdsp_df22_clear(&f2);
	leaq	-84(%rbp), %rax	 #, tmp133
	movq	%rax, %rcx	 # tmp133,
	call	pdsp_df22_clear	 #
 # ./test/pdsp_test.c:1048:     PDSP_ASSERT(f2.f32_out == 0.0f);
	movss	-76(%rbp), %xmm0	 # f2.f32_out, _3
	pxor	%xmm1, %xmm1	 # tmp134
	ucomiss	%xmm1, %xmm0	 # tmp134, _3
	jp	.L911	 #,
	pxor	%xmm1, %xmm1	 # tmp135
	ucomiss	%xmm1, %xmm0	 # tmp135, _3
	je	.L859	 #,
.L911:
 # ./test/pdsp_test.c:1048:     PDSP_ASSERT(f2.f32_out == 0.0f);
	movl	$1048, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp136
	movq	%rax, %rdx	 # tmp136,
	leaq	.LC3(%rip), %rax	 #, tmp137
	movq	%rax, %rcx	 # tmp137,
	call	printf	 #
.L859:
 # ./test/pdsp_test.c:1049:     PDSP_ASSERT(f2.f32_x1 == 0.0f);
	movss	-84(%rbp), %xmm0	 # f2.f32_x1, _4
	pxor	%xmm1, %xmm1	 # tmp138
	ucomiss	%xmm1, %xmm0	 # tmp138, _4
	jp	.L912	 #,
	pxor	%xmm1, %xmm1	 # tmp139
	ucomiss	%xmm1, %xmm0	 # tmp139, _4
	je	.L861	 #,
.L912:
 # ./test/pdsp_test.c:1049:     PDSP_ASSERT(f2.f32_x1 == 0.0f);
	movl	$1049, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp140
	movq	%rax, %rdx	 # tmp140,
	leaq	.LC3(%rip), %rax	 #, tmp141
	movq	%rax, %rcx	 # tmp141,
	call	printf	 #
.L861:
 # ./test/pdsp_test.c:1050:     PDSP_ASSERT(f2.f32_x2 == 0.0f);
	movss	-80(%rbp), %xmm0	 # f2.f32_x2, _5
	pxor	%xmm1, %xmm1	 # tmp142
	ucomiss	%xmm1, %xmm0	 # tmp142, _5
	jp	.L913	 #,
	pxor	%xmm1, %xmm1	 # tmp143
	ucomiss	%xmm1, %xmm0	 # tmp143, _5
	je	.L863	 #,
.L913:
 # ./test/pdsp_test.c:1050:     PDSP_ASSERT(f2.f32_x2 == 0.0f);
	movl	$1050, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp144
	movq	%rax, %rdx	 # tmp144,
	leaq	.LC3(%rip), %rax	 #, tmp145
	movq	%rax, %rcx	 # tmp145,
	call	printf	 #
.L863:
 # ./test/pdsp_test.c:1051:     pdsp_df23_clear(&f3);
	leaq	-112(%rbp), %rax	 #, tmp146
	movq	%rax, %rcx	 # tmp146,
	call	pdsp_df23_clear	 #
 # ./test/pdsp_test.c:1052:     PDSP_ASSERT(f3.f32_out == 0.0f);
	movss	-100(%rbp), %xmm0	 # f3.f32_out, _6
	pxor	%xmm1, %xmm1	 # tmp147
	ucomiss	%xmm1, %xmm0	 # tmp147, _6
	jp	.L914	 #,
	pxor	%xmm1, %xmm1	 # tmp148
	ucomiss	%xmm1, %xmm0	 # tmp148, _6
	je	.L865	 #,
.L914:
 # ./test/pdsp_test.c:1052:     PDSP_ASSERT(f3.f32_out == 0.0f);
	movl	$1052, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp149
	movq	%rax, %rdx	 # tmp149,
	leaq	.LC3(%rip), %rax	 #, tmp150
	movq	%rax, %rcx	 # tmp150,
	call	printf	 #
.L865:
 # ./test/pdsp_test.c:1053:     PDSP_ASSERT(f3.f32_x1 == 0.0f);
	movss	-112(%rbp), %xmm0	 # f3.f32_x1, _7
	pxor	%xmm1, %xmm1	 # tmp151
	ucomiss	%xmm1, %xmm0	 # tmp151, _7
	jp	.L915	 #,
	pxor	%xmm1, %xmm1	 # tmp152
	ucomiss	%xmm1, %xmm0	 # tmp152, _7
	je	.L867	 #,
.L915:
 # ./test/pdsp_test.c:1053:     PDSP_ASSERT(f3.f32_x1 == 0.0f);
	movl	$1053, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp153
	movq	%rax, %rdx	 # tmp153,
	leaq	.LC3(%rip), %rax	 #, tmp154
	movq	%rax, %rcx	 # tmp154,
	call	printf	 #
.L867:
 # ./test/pdsp_test.c:1054:     PDSP_ASSERT(f3.f32_x2 == 0.0f);
	movss	-108(%rbp), %xmm0	 # f3.f32_x2, _8
	pxor	%xmm1, %xmm1	 # tmp155
	ucomiss	%xmm1, %xmm0	 # tmp155, _8
	jp	.L916	 #,
	pxor	%xmm1, %xmm1	 # tmp156
	ucomiss	%xmm1, %xmm0	 # tmp156, _8
	je	.L869	 #,
.L916:
 # ./test/pdsp_test.c:1054:     PDSP_ASSERT(f3.f32_x2 == 0.0f);
	movl	$1054, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp157
	movq	%rax, %rdx	 # tmp157,
	leaq	.LC3(%rip), %rax	 #, tmp158
	movq	%rax, %rcx	 # tmp158,
	call	printf	 #
.L869:
 # ./test/pdsp_test.c:1055:     PDSP_ASSERT(f3.f32_x3 == 0.0f);
	movss	-104(%rbp), %xmm0	 # f3.f32_x3, _9
	pxor	%xmm1, %xmm1	 # tmp159
	ucomiss	%xmm1, %xmm0	 # tmp159, _9
	jp	.L917	 #,
	pxor	%xmm1, %xmm1	 # tmp160
	ucomiss	%xmm1, %xmm0	 # tmp160, _9
	je	.L871	 #,
.L917:
 # ./test/pdsp_test.c:1055:     PDSP_ASSERT(f3.f32_x3 == 0.0f);
	movl	$1055, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp161
	movq	%rax, %rdx	 # tmp161,
	leaq	.LC3(%rip), %rax	 #, tmp162
	movq	%rax, %rcx	 # tmp162,
	call	printf	 #
.L871:
 # ./test/pdsp_test.c:1056:     pdsp_df21(&p1, &f1, 1.0f);
	leaq	-72(%rbp), %rdx	 #, tmp163
	leaq	-12(%rbp), %rax	 #, tmp164
	movss	.LC23(%rip), %xmm2	 #,
	movq	%rax, %rcx	 # tmp164,
	call	pdsp_df21	 #
 # ./test/pdsp_test.c:1057:     PDSP_ASSERT(f1.f32_out == 2.0f);
	movss	-68(%rbp), %xmm0	 # f1.f32_out, _10
	ucomiss	.LC22(%rip), %xmm0	 #, _10
	jp	.L918	 #,
	ucomiss	.LC22(%rip), %xmm0	 #, _10
	je	.L873	 #,
.L918:
 # ./test/pdsp_test.c:1057:     PDSP_ASSERT(f1.f32_out == 2.0f);
	movl	$1057, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp165
	movq	%rax, %rdx	 # tmp165,
	leaq	.LC3(%rip), %rax	 #, tmp166
	movq	%rax, %rcx	 # tmp166,
	call	printf	 #
.L873:
 # ./test/pdsp_test.c:1058:     PDSP_ASSERT(f1.f32_x1 == 3.0f);
	movss	-72(%rbp), %xmm0	 # f1.f32_x1, _11
	ucomiss	.LC30(%rip), %xmm0	 #, _11
	jp	.L919	 #,
	ucomiss	.LC30(%rip), %xmm0	 #, _11
	je	.L875	 #,
.L919:
 # ./test/pdsp_test.c:1058:     PDSP_ASSERT(f1.f32_x1 == 3.0f);
	movl	$1058, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp167
	movq	%rax, %rdx	 # tmp167,
	leaq	.LC3(%rip), %rax	 #, tmp168
	movq	%rax, %rcx	 # tmp168,
	call	printf	 #
.L875:
 # ./test/pdsp_test.c:1059:     pdsp_df21(&p1, &f1, 10.0f);
	leaq	-72(%rbp), %rdx	 #, tmp169
	leaq	-12(%rbp), %rax	 #, tmp170
	movss	.LC28(%rip), %xmm2	 #,
	movq	%rax, %rcx	 # tmp170,
	call	pdsp_df21	 #
 # ./test/pdsp_test.c:1060:     PDSP_ASSERT(f1.f32_out == 23.0f);
	movss	-68(%rbp), %xmm0	 # f1.f32_out, _12
	ucomiss	.LC107(%rip), %xmm0	 #, _12
	jp	.L920	 #,
	ucomiss	.LC107(%rip), %xmm0	 #, _12
	je	.L877	 #,
.L920:
 # ./test/pdsp_test.c:1060:     PDSP_ASSERT(f1.f32_out == 23.0f);
	movl	$1060, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp171
	movq	%rax, %rdx	 # tmp171,
	leaq	.LC3(%rip), %rax	 #, tmp172
	movq	%rax, %rcx	 # tmp172,
	call	printf	 #
.L877:
 # ./test/pdsp_test.c:1061:     PDSP_ASSERT(f1.f32_x1 == 33.0f);
	movss	-72(%rbp), %xmm0	 # f1.f32_x1, _13
	ucomiss	.LC95(%rip), %xmm0	 #, _13
	jp	.L921	 #,
	ucomiss	.LC95(%rip), %xmm0	 #, _13
	je	.L879	 #,
.L921:
 # ./test/pdsp_test.c:1061:     PDSP_ASSERT(f1.f32_x1 == 33.0f);
	movl	$1061, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp173
	movq	%rax, %rdx	 # tmp173,
	leaq	.LC3(%rip), %rax	 #, tmp174
	movq	%rax, %rcx	 # tmp174,
	call	printf	 #
.L879:
 # ./test/pdsp_test.c:1062:     pdsp_df22(&p2, &f2, 1.0f);
	leaq	-84(%rbp), %rdx	 #, tmp175
	leaq	-32(%rbp), %rax	 #, tmp176
	movss	.LC23(%rip), %xmm2	 #,
	movq	%rax, %rcx	 # tmp176,
	call	pdsp_df22	 #
 # ./test/pdsp_test.c:1063:     PDSP_ASSERT(f2.f32_out == 3.0f);
	movss	-76(%rbp), %xmm0	 # f2.f32_out, _14
	ucomiss	.LC30(%rip), %xmm0	 #, _14
	jp	.L922	 #,
	ucomiss	.LC30(%rip), %xmm0	 #, _14
	je	.L881	 #,
.L922:
 # ./test/pdsp_test.c:1063:     PDSP_ASSERT(f2.f32_out == 3.0f);
	movl	$1063, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp177
	movq	%rax, %rdx	 # tmp177,
	leaq	.LC3(%rip), %rax	 #, tmp178
	movq	%rax, %rcx	 # tmp178,
	call	printf	 #
.L881:
 # ./test/pdsp_test.c:1064:     PDSP_ASSERT(f2.f32_x1 == 8.0f);
	movss	-84(%rbp), %xmm0	 # f2.f32_x1, _15
	ucomiss	.LC48(%rip), %xmm0	 #, _15
	jp	.L923	 #,
	ucomiss	.LC48(%rip), %xmm0	 #, _15
	je	.L883	 #,
.L923:
 # ./test/pdsp_test.c:1064:     PDSP_ASSERT(f2.f32_x1 == 8.0f);
	movl	$1064, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp179
	movq	%rax, %rdx	 # tmp179,
	leaq	.LC3(%rip), %rax	 #, tmp180
	movq	%rax, %rcx	 # tmp180,
	call	printf	 #
.L883:
 # ./test/pdsp_test.c:1065:     PDSP_ASSERT(f2.f32_x2 == 4.0f);
	movss	-80(%rbp), %xmm0	 # f2.f32_x2, _16
	ucomiss	.LC32(%rip), %xmm0	 #, _16
	jp	.L924	 #,
	ucomiss	.LC32(%rip), %xmm0	 #, _16
	je	.L885	 #,
.L924:
 # ./test/pdsp_test.c:1065:     PDSP_ASSERT(f2.f32_x2 == 4.0f);
	movl	$1065, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp181
	movq	%rax, %rdx	 # tmp181,
	leaq	.LC3(%rip), %rax	 #, tmp182
	movq	%rax, %rcx	 # tmp182,
	call	printf	 #
.L885:
 # ./test/pdsp_test.c:1066:     pdsp_df22(&p2, &f2, 10.0f);
	leaq	-84(%rbp), %rdx	 #, tmp183
	leaq	-32(%rbp), %rax	 #, tmp184
	movss	.LC28(%rip), %xmm2	 #,
	movq	%rax, %rcx	 # tmp184,
	call	pdsp_df22	 #
 # ./test/pdsp_test.c:1067:     PDSP_ASSERT(f2.f32_out == 38.0f);
	movss	-76(%rbp), %xmm0	 # f2.f32_out, _17
	ucomiss	.LC108(%rip), %xmm0	 #, _17
	jp	.L925	 #,
	ucomiss	.LC108(%rip), %xmm0	 #, _17
	je	.L887	 #,
.L925:
 # ./test/pdsp_test.c:1067:     PDSP_ASSERT(f2.f32_out == 38.0f);
	movl	$1067, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp185
	movq	%rax, %rdx	 # tmp185,
	leaq	.LC3(%rip), %rax	 #, tmp186
	movq	%rax, %rcx	 # tmp186,
	call	printf	 #
.L887:
 # ./test/pdsp_test.c:1068:     PDSP_ASSERT(f2.f32_x1 == 100.0f);
	movss	-84(%rbp), %xmm0	 # f2.f32_x1, _18
	ucomiss	.LC57(%rip), %xmm0	 #, _18
	jp	.L926	 #,
	ucomiss	.LC57(%rip), %xmm0	 #, _18
	je	.L889	 #,
.L926:
 # ./test/pdsp_test.c:1068:     PDSP_ASSERT(f2.f32_x1 == 100.0f);
	movl	$1068, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp187
	movq	%rax, %rdx	 # tmp187,
	leaq	.LC3(%rip), %rax	 #, tmp188
	movq	%rax, %rcx	 # tmp188,
	call	printf	 #
.L889:
 # ./test/pdsp_test.c:1069:     PDSP_ASSERT(f2.f32_x2 == 48.0f);
	movss	-80(%rbp), %xmm0	 # f2.f32_x2, _19
	ucomiss	.LC109(%rip), %xmm0	 #, _19
	jp	.L927	 #,
	ucomiss	.LC109(%rip), %xmm0	 #, _19
	je	.L891	 #,
.L927:
 # ./test/pdsp_test.c:1069:     PDSP_ASSERT(f2.f32_x2 == 48.0f);
	movl	$1069, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp189
	movq	%rax, %rdx	 # tmp189,
	leaq	.LC3(%rip), %rax	 #, tmp190
	movq	%rax, %rcx	 # tmp190,
	call	printf	 #
.L891:
 # ./test/pdsp_test.c:1070:     pdsp_df23(&p3, &f3, 1.0f);
	leaq	-112(%rbp), %rdx	 #, tmp191
	leaq	-64(%rbp), %rax	 #, tmp192
	movss	.LC23(%rip), %xmm2	 #,
	movq	%rax, %rcx	 # tmp192,
	call	pdsp_df23	 #
 # ./test/pdsp_test.c:1071:     PDSP_ASSERT(f3.f32_out == 4.0f);
	movss	-100(%rbp), %xmm0	 # f3.f32_out, _20
	ucomiss	.LC32(%rip), %xmm0	 #, _20
	jp	.L928	 #,
	ucomiss	.LC32(%rip), %xmm0	 #, _20
	je	.L893	 #,
.L928:
 # ./test/pdsp_test.c:1071:     PDSP_ASSERT(f3.f32_out == 4.0f);
	movl	$1071, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp193
	movq	%rax, %rdx	 # tmp193,
	leaq	.LC3(%rip), %rax	 #, tmp194
	movq	%rax, %rcx	 # tmp194,
	call	printf	 #
.L893:
 # ./test/pdsp_test.c:1072:     PDSP_ASSERT(f3.f32_x1 == 15.0f);
	movss	-112(%rbp), %xmm0	 # f3.f32_x1, _21
	ucomiss	.LC110(%rip), %xmm0	 #, _21
	jp	.L929	 #,
	ucomiss	.LC110(%rip), %xmm0	 #, _21
	je	.L895	 #,
.L929:
 # ./test/pdsp_test.c:1072:     PDSP_ASSERT(f3.f32_x1 == 15.0f);
	movl	$1072, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp195
	movq	%rax, %rdx	 # tmp195,
	leaq	.LC3(%rip), %rax	 #, tmp196
	movq	%rax, %rcx	 # tmp196,
	call	printf	 #
.L895:
 # ./test/pdsp_test.c:1073:     PDSP_ASSERT(f3.f32_x2 == 10.0f);
	movss	-108(%rbp), %xmm0	 # f3.f32_x2, _22
	ucomiss	.LC28(%rip), %xmm0	 #, _22
	jp	.L930	 #,
	ucomiss	.LC28(%rip), %xmm0	 #, _22
	je	.L897	 #,
.L930:
 # ./test/pdsp_test.c:1073:     PDSP_ASSERT(f3.f32_x2 == 10.0f);
	movl	$1073, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp197
	movq	%rax, %rdx	 # tmp197,
	leaq	.LC3(%rip), %rax	 #, tmp198
	movq	%rax, %rcx	 # tmp198,
	call	printf	 #
.L897:
 # ./test/pdsp_test.c:1074:     PDSP_ASSERT(f3.f32_x3 == 5.0f);
	movss	-104(%rbp), %xmm0	 # f3.f32_x3, _23
	ucomiss	.LC45(%rip), %xmm0	 #, _23
	jp	.L931	 #,
	ucomiss	.LC45(%rip), %xmm0	 #, _23
	je	.L899	 #,
.L931:
 # ./test/pdsp_test.c:1074:     PDSP_ASSERT(f3.f32_x3 == 5.0f);
	movl	$1074, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp199
	movq	%rax, %rdx	 # tmp199,
	leaq	.LC3(%rip), %rax	 #, tmp200
	movq	%rax, %rcx	 # tmp200,
	call	printf	 #
.L899:
 # ./test/pdsp_test.c:1075:     pdsp_df23(&p3, &f3, 10.0f);
	leaq	-112(%rbp), %rdx	 #, tmp201
	leaq	-64(%rbp), %rax	 #, tmp202
	movss	.LC28(%rip), %xmm2	 #,
	movq	%rax, %rcx	 # tmp202,
	call	pdsp_df23	 #
 # ./test/pdsp_test.c:1076:     PDSP_ASSERT(f3.f32_out == 55.0f);
	movss	-100(%rbp), %xmm0	 # f3.f32_out, _24
	ucomiss	.LC111(%rip), %xmm0	 #, _24
	jp	.L932	 #,
	ucomiss	.LC111(%rip), %xmm0	 #, _24
	je	.L901	 #,
.L932:
 # ./test/pdsp_test.c:1076:     PDSP_ASSERT(f3.f32_out == 55.0f);
	movl	$1076, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp203
	movq	%rax, %rdx	 # tmp203,
	leaq	.LC3(%rip), %rax	 #, tmp204
	movq	%rax, %rcx	 # tmp204,
	call	printf	 #
.L901:
 # ./test/pdsp_test.c:1077:     PDSP_ASSERT(f3.f32_x1 == 205.0f);
	movss	-112(%rbp), %xmm0	 # f3.f32_x1, _25
	ucomiss	.LC112(%rip), %xmm0	 #, _25
	jp	.L933	 #,
	ucomiss	.LC112(%rip), %xmm0	 #, _25
	je	.L903	 #,
.L933:
 # ./test/pdsp_test.c:1077:     PDSP_ASSERT(f3.f32_x1 == 205.0f);
	movl	$1077, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp205
	movq	%rax, %rdx	 # tmp205,
	leaq	.LC3(%rip), %rax	 #, tmp206
	movq	%rax, %rcx	 # tmp206,
	call	printf	 #
.L903:
 # ./test/pdsp_test.c:1078:     PDSP_ASSERT(f3.f32_x2 == 135.0f);
	movss	-108(%rbp), %xmm0	 # f3.f32_x2, _26
	ucomiss	.LC113(%rip), %xmm0	 #, _26
	jp	.L934	 #,
	ucomiss	.LC113(%rip), %xmm0	 #, _26
	je	.L905	 #,
.L934:
 # ./test/pdsp_test.c:1078:     PDSP_ASSERT(f3.f32_x2 == 135.0f);
	movl	$1078, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp207
	movq	%rax, %rdx	 # tmp207,
	leaq	.LC3(%rip), %rax	 #, tmp208
	movq	%rax, %rcx	 # tmp208,
	call	printf	 #
.L905:
 # ./test/pdsp_test.c:1079:     PDSP_ASSERT(f3.f32_x3 == 65.0f);
	movss	-104(%rbp), %xmm0	 # f3.f32_x3, _27
	ucomiss	.LC114(%rip), %xmm0	 #, _27
	jp	.L935	 #,
	ucomiss	.LC114(%rip), %xmm0	 #, _27
	je	.L936	 #,
.L935:
 # ./test/pdsp_test.c:1079:     PDSP_ASSERT(f3.f32_x3 == 65.0f);
	movl	$1079, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp209
	movq	%rax, %rdx	 # tmp209,
	leaq	.LC3(%rip), %rax	 #, tmp210
	movq	%rax, %rcx	 # tmp210,
	call	printf	 #
.L936:
 # ./test/pdsp_test.c:1080: }
	nop	
	addq	$144, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC115:
	.ascii "-- void test_med3(void) --\12\0"
	.text
	.globl	test_med3
	.def	test_med3;	.scl	2;	.type	32;	.endef
	.seh_proc	test_med3
test_med3:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
 # ./test/pdsp_test.c:1084:     printf("-- void test_med3(void) --\n");
	leaq	.LC115(%rip), %rax	 #, tmp82
	movq	%rax, %rcx	 # tmp82,
	call	printf	 #
 # ./test/pdsp_test.c:1087:     pdsp_med3_clear(&med3_var);
	leaq	-12(%rbp), %rax	 #, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	pdsp_med3_clear	 #
 # ./test/pdsp_test.c:1088:     out = pdsp_med3(&med3_var, 10.0);
	leaq	-12(%rbp), %rax	 #, tmp84
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp84,
	call	pdsp_med3	 #
	movd	%xmm0, %eax	 #, tmp85
	movl	%eax, -4(%rbp)	 # tmp85, out
 # ./test/pdsp_test.c:1089:     PDSP_ASSERT(out == 0.0f);
	pxor	%xmm0, %xmm0	 # tmp86
	ucomiss	-4(%rbp), %xmm0	 # out, tmp86
	jp	.L946	 #,
	pxor	%xmm0, %xmm0	 # tmp87
	ucomiss	-4(%rbp), %xmm0	 # out, tmp87
	je	.L938	 #,
.L946:
 # ./test/pdsp_test.c:1089:     PDSP_ASSERT(out == 0.0f);
	movl	$1089, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp88
	movq	%rax, %rdx	 # tmp88,
	leaq	.LC3(%rip), %rax	 #, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	printf	 #
.L938:
 # ./test/pdsp_test.c:1090:     out = pdsp_med3(&med3_var, 5.0);
	leaq	-12(%rbp), %rax	 #, tmp90
	movss	.LC45(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp90,
	call	pdsp_med3	 #
	movd	%xmm0, %eax	 #, tmp91
	movl	%eax, -4(%rbp)	 # tmp91, out
 # ./test/pdsp_test.c:1091:     PDSP_ASSERT(out == 5.0f);
	movss	-4(%rbp), %xmm0	 # out, tmp92
	ucomiss	.LC45(%rip), %xmm0	 #, tmp92
	jp	.L947	 #,
	movss	-4(%rbp), %xmm0	 # out, tmp93
	ucomiss	.LC45(%rip), %xmm0	 #, tmp93
	je	.L940	 #,
.L947:
 # ./test/pdsp_test.c:1091:     PDSP_ASSERT(out == 5.0f);
	movl	$1091, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp94
	movq	%rax, %rdx	 # tmp94,
	leaq	.LC3(%rip), %rax	 #, tmp95
	movq	%rax, %rcx	 # tmp95,
	call	printf	 #
.L940:
 # ./test/pdsp_test.c:1092:     out = pdsp_med3(&med3_var, 20.0);
	leaq	-12(%rbp), %rax	 #, tmp96
	movss	.LC51(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp96,
	call	pdsp_med3	 #
	movd	%xmm0, %eax	 #, tmp97
	movl	%eax, -4(%rbp)	 # tmp97, out
 # ./test/pdsp_test.c:1093:     PDSP_ASSERT(out == 10.0f);
	movss	-4(%rbp), %xmm0	 # out, tmp98
	ucomiss	.LC28(%rip), %xmm0	 #, tmp98
	jp	.L948	 #,
	movss	-4(%rbp), %xmm0	 # out, tmp99
	ucomiss	.LC28(%rip), %xmm0	 #, tmp99
	je	.L942	 #,
.L948:
 # ./test/pdsp_test.c:1093:     PDSP_ASSERT(out == 10.0f);
	movl	$1093, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp100
	movq	%rax, %rdx	 # tmp100,
	leaq	.LC3(%rip), %rax	 #, tmp101
	movq	%rax, %rcx	 # tmp101,
	call	printf	 #
.L942:
 # ./test/pdsp_test.c:1094:     out = pdsp_med3(&med3_var, 20.0);
	leaq	-12(%rbp), %rax	 #, tmp102
	movss	.LC51(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp102,
	call	pdsp_med3	 #
	movd	%xmm0, %eax	 #, tmp103
	movl	%eax, -4(%rbp)	 # tmp103, out
 # ./test/pdsp_test.c:1095:     out = pdsp_med3(&med3_var, 20.0);
	leaq	-12(%rbp), %rax	 #, tmp104
	movss	.LC51(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp104,
	call	pdsp_med3	 #
	movd	%xmm0, %eax	 #, tmp105
	movl	%eax, -4(%rbp)	 # tmp105, out
 # ./test/pdsp_test.c:1096:     PDSP_ASSERT(out == 20.0f);
	movss	-4(%rbp), %xmm0	 # out, tmp106
	ucomiss	.LC51(%rip), %xmm0	 #, tmp106
	jp	.L949	 #,
	movss	-4(%rbp), %xmm0	 # out, tmp107
	ucomiss	.LC51(%rip), %xmm0	 #, tmp107
	je	.L950	 #,
.L949:
 # ./test/pdsp_test.c:1096:     PDSP_ASSERT(out == 20.0f);
	movl	$1096, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp108
	movq	%rax, %rdx	 # tmp108,
	leaq	.LC3(%rip), %rax	 #, tmp109
	movq	%rax, %rcx	 # tmp109,
	call	printf	 #
.L950:
 # ./test/pdsp_test.c:1097: }
	nop	
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC116:
	.ascii "-- void test_rollsum(void) --\12\0"
	.text
	.globl	test_rollsum
	.def	test_rollsum;	.scl	2;	.type	32;	.endef
	.seh_proc	test_rollsum
test_rollsum:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	addq	$-128, %rsp	 #,
	.seh_stackalloc	128
	.seh_endprologue
 # ./test/pdsp_test.c:1101:     printf("-- void test_rollsum(void) --\n");
	leaq	.LC116(%rip), %rax	 #, tmp86
	movq	%rax, %rcx	 # tmp86,
	call	printf	 #
 # ./test/pdsp_test.c:1103:     pdsp_f32_t f32_history[4] = {1, 2, 3, 4};
	movss	.LC23(%rip), %xmm0	 #, tmp87
	movss	%xmm0, -32(%rbp)	 # tmp87, f32_history[0]
	movss	.LC22(%rip), %xmm0	 #, tmp88
	movss	%xmm0, -28(%rbp)	 # tmp88, f32_history[1]
	movss	.LC30(%rip), %xmm0	 #, tmp89
	movss	%xmm0, -24(%rbp)	 # tmp89, f32_history[2]
	movss	.LC32(%rip), %xmm0	 #, tmp90
	movss	%xmm0, -20(%rbp)	 # tmp90, f32_history[3]
 # ./test/pdsp_test.c:1104:     pdsp_queue_var_t queue_var = {0};
	movl	$0, -38(%rbp)	 #, queue_var
	movw	$0, -34(%rbp)	 #, queue_var
 # ./test/pdsp_test.c:1105:     pdsp_rollsum_var_t roll_var = {0};
	movq	$0, -48(%rbp)	 #, roll_var
 # ./test/pdsp_test.c:1106:     const pdsp_queue_t queue = {
	leaq	-38(%rbp), %rax	 #, tmp91
	movq	%rax, -80(%rbp)	 # tmp91, queue.ps_var
	leaq	-32(%rbp), %rax	 #, tmp92
	movq	%rax, -72(%rbp)	 # tmp92, queue.pav_data
	movw	$4, -64(%rbp)	 #, queue.i16_size
 # ./test/pdsp_test.c:1108:     const pdsp_rollsum_t roll = {.ps_var = &roll_var, .ps_queue = &queue};
	leaq	-48(%rbp), %rax	 #, tmp93
	movq	%rax, -96(%rbp)	 # tmp93, roll.ps_var
	leaq	-80(%rbp), %rax	 #, tmp94
	movq	%rax, -88(%rbp)	 # tmp94, roll.ps_queue
 # ./test/pdsp_test.c:1109:     pdsp_rollsum_init(&roll, 4);
	leaq	-96(%rbp), %rax	 #, tmp95
	movl	$4, %edx	 #,
	movq	%rax, %rcx	 # tmp95,
	call	pdsp_rollsum_init	 #
 # ./test/pdsp_test.c:1110:     PDSP_ASSERT((f32_history[0] == 0.0f) && (f32_history[1] == 0.0f) &&
	movss	-32(%rbp), %xmm0	 # f32_history[0], _1
	pxor	%xmm1, %xmm1	 # tmp96
	ucomiss	%xmm1, %xmm0	 # tmp96, _1
	jp	.L952	 #,
	pxor	%xmm1, %xmm1	 # tmp97
	ucomiss	%xmm1, %xmm0	 # tmp97, _1
	jne	.L952	 #,
 # ./test/pdsp_test.c:1110:     PDSP_ASSERT((f32_history[0] == 0.0f) && (f32_history[1] == 0.0f) &&
	movss	-28(%rbp), %xmm0	 # f32_history[1], _2
	pxor	%xmm1, %xmm1	 # tmp98
	ucomiss	%xmm1, %xmm0	 # tmp98, _2
	jp	.L952	 #,
	pxor	%xmm1, %xmm1	 # tmp99
	ucomiss	%xmm1, %xmm0	 # tmp99, _2
	jne	.L952	 #,
 # ./test/pdsp_test.c:1110:     PDSP_ASSERT((f32_history[0] == 0.0f) && (f32_history[1] == 0.0f) &&
	movss	-24(%rbp), %xmm0	 # f32_history[2], _3
	pxor	%xmm1, %xmm1	 # tmp100
	ucomiss	%xmm1, %xmm0	 # tmp100, _3
	jp	.L952	 #,
	pxor	%xmm1, %xmm1	 # tmp101
	ucomiss	%xmm1, %xmm0	 # tmp101, _3
	jne	.L952	 #,
 # ./test/pdsp_test.c:1110:     PDSP_ASSERT((f32_history[0] == 0.0f) && (f32_history[1] == 0.0f) &&
	movss	-20(%rbp), %xmm0	 # f32_history[3], _4
	pxor	%xmm1, %xmm1	 # tmp102
	ucomiss	%xmm1, %xmm0	 # tmp102, _4
	jp	.L952	 #,
	pxor	%xmm1, %xmm1	 # tmp103
	ucomiss	%xmm1, %xmm0	 # tmp103, _4
	je	.L956	 #,
.L952:
 # ./test/pdsp_test.c:1110:     PDSP_ASSERT((f32_history[0] == 0.0f) && (f32_history[1] == 0.0f) &&
	movl	$1110, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp104
	movq	%rax, %rdx	 # tmp104,
	leaq	.LC3(%rip), %rax	 #, tmp105
	movq	%rax, %rcx	 # tmp105,
	call	printf	 #
.L956:
 # ./test/pdsp_test.c:1112:     out = pdsp_rollsum(&roll, 10.0);
	leaq	-96(%rbp), %rax	 #, tmp106
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp106,
	call	pdsp_rollsum	 #
	movd	%xmm0, %eax	 #, tmp107
	movl	%eax, -4(%rbp)	 # tmp107, out
 # ./test/pdsp_test.c:1113:     PDSP_ASSERT(out == 10.0);
	movss	-4(%rbp), %xmm0	 # out, tmp108
	ucomiss	.LC28(%rip), %xmm0	 #, tmp108
	jp	.L977	 #,
	movss	-4(%rbp), %xmm0	 # out, tmp109
	ucomiss	.LC28(%rip), %xmm0	 #, tmp109
	je	.L958	 #,
.L977:
 # ./test/pdsp_test.c:1113:     PDSP_ASSERT(out == 10.0);
	movl	$1113, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp110
	movq	%rax, %rdx	 # tmp110,
	leaq	.LC3(%rip), %rax	 #, tmp111
	movq	%rax, %rcx	 # tmp111,
	call	printf	 #
.L958:
 # ./test/pdsp_test.c:1114:     out = pdsp_rollsum(&roll, 1.0);
	leaq	-96(%rbp), %rax	 #, tmp112
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp112,
	call	pdsp_rollsum	 #
	movd	%xmm0, %eax	 #, tmp113
	movl	%eax, -4(%rbp)	 # tmp113, out
 # ./test/pdsp_test.c:1115:     PDSP_ASSERT(out == 11.0);
	movss	-4(%rbp), %xmm0	 # out, tmp114
	ucomiss	.LC117(%rip), %xmm0	 #, tmp114
	jp	.L978	 #,
	movss	-4(%rbp), %xmm0	 # out, tmp115
	ucomiss	.LC117(%rip), %xmm0	 #, tmp115
	je	.L960	 #,
.L978:
 # ./test/pdsp_test.c:1115:     PDSP_ASSERT(out == 11.0);
	movl	$1115, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp116
	movq	%rax, %rdx	 # tmp116,
	leaq	.LC3(%rip), %rax	 #, tmp117
	movq	%rax, %rcx	 # tmp117,
	call	printf	 #
.L960:
 # ./test/pdsp_test.c:1116:     out = pdsp_rollsum(&roll, 3.0);
	leaq	-96(%rbp), %rax	 #, tmp118
	movss	.LC30(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp118,
	call	pdsp_rollsum	 #
	movd	%xmm0, %eax	 #, tmp119
	movl	%eax, -4(%rbp)	 # tmp119, out
 # ./test/pdsp_test.c:1117:     PDSP_ASSERT(out == 14.0);
	movss	-4(%rbp), %xmm0	 # out, tmp120
	ucomiss	.LC118(%rip), %xmm0	 #, tmp120
	jp	.L979	 #,
	movss	-4(%rbp), %xmm0	 # out, tmp121
	ucomiss	.LC118(%rip), %xmm0	 #, tmp121
	je	.L962	 #,
.L979:
 # ./test/pdsp_test.c:1117:     PDSP_ASSERT(out == 14.0);
	movl	$1117, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp122
	movq	%rax, %rdx	 # tmp122,
	leaq	.LC3(%rip), %rax	 #, tmp123
	movq	%rax, %rcx	 # tmp123,
	call	printf	 #
.L962:
 # ./test/pdsp_test.c:1118:     out = pdsp_rollsum(&roll, 6.0);
	leaq	-96(%rbp), %rax	 #, tmp124
	movss	.LC47(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp124,
	call	pdsp_rollsum	 #
	movd	%xmm0, %eax	 #, tmp125
	movl	%eax, -4(%rbp)	 # tmp125, out
 # ./test/pdsp_test.c:1119:     PDSP_ASSERT(out == 20.0);
	movss	-4(%rbp), %xmm0	 # out, tmp126
	ucomiss	.LC51(%rip), %xmm0	 #, tmp126
	jp	.L980	 #,
	movss	-4(%rbp), %xmm0	 # out, tmp127
	ucomiss	.LC51(%rip), %xmm0	 #, tmp127
	je	.L964	 #,
.L980:
 # ./test/pdsp_test.c:1119:     PDSP_ASSERT(out == 20.0);
	movl	$1119, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp128
	movq	%rax, %rdx	 # tmp128,
	leaq	.LC3(%rip), %rax	 #, tmp129
	movq	%rax, %rcx	 # tmp129,
	call	printf	 #
.L964:
 # ./test/pdsp_test.c:1120:     out = pdsp_rollsum(&roll, 0.0);
	leaq	-96(%rbp), %rax	 #, tmp130
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp130,
	call	pdsp_rollsum	 #
	movd	%xmm0, %eax	 #, tmp131
	movl	%eax, -4(%rbp)	 # tmp131, out
 # ./test/pdsp_test.c:1121:     PDSP_ASSERT(out == 10.0);
	movss	-4(%rbp), %xmm0	 # out, tmp132
	ucomiss	.LC28(%rip), %xmm0	 #, tmp132
	jp	.L981	 #,
	movss	-4(%rbp), %xmm0	 # out, tmp133
	ucomiss	.LC28(%rip), %xmm0	 #, tmp133
	je	.L966	 #,
.L981:
 # ./test/pdsp_test.c:1121:     PDSP_ASSERT(out == 10.0);
	movl	$1121, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp134
	movq	%rax, %rdx	 # tmp134,
	leaq	.LC3(%rip), %rax	 #, tmp135
	movq	%rax, %rcx	 # tmp135,
	call	printf	 #
.L966:
 # ./test/pdsp_test.c:1123:     pdsp_rollsum_init(&roll, 2);
	leaq	-96(%rbp), %rax	 #, tmp136
	movl	$2, %edx	 #,
	movq	%rax, %rcx	 # tmp136,
	call	pdsp_rollsum_init	 #
 # ./test/pdsp_test.c:1124:     out = pdsp_rollsum(&roll, 10.0);
	leaq	-96(%rbp), %rax	 #, tmp137
	movss	.LC28(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp137,
	call	pdsp_rollsum	 #
	movd	%xmm0, %eax	 #, tmp138
	movl	%eax, -4(%rbp)	 # tmp138, out
 # ./test/pdsp_test.c:1125:     PDSP_ASSERT(out == 10.0);
	movss	-4(%rbp), %xmm0	 # out, tmp139
	ucomiss	.LC28(%rip), %xmm0	 #, tmp139
	jp	.L982	 #,
	movss	-4(%rbp), %xmm0	 # out, tmp140
	ucomiss	.LC28(%rip), %xmm0	 #, tmp140
	je	.L968	 #,
.L982:
 # ./test/pdsp_test.c:1125:     PDSP_ASSERT(out == 10.0);
	movl	$1125, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp141
	movq	%rax, %rdx	 # tmp141,
	leaq	.LC3(%rip), %rax	 #, tmp142
	movq	%rax, %rcx	 # tmp142,
	call	printf	 #
.L968:
 # ./test/pdsp_test.c:1126:     out = pdsp_rollsum(&roll, 1.0);
	leaq	-96(%rbp), %rax	 #, tmp143
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp143,
	call	pdsp_rollsum	 #
	movd	%xmm0, %eax	 #, tmp144
	movl	%eax, -4(%rbp)	 # tmp144, out
 # ./test/pdsp_test.c:1127:     PDSP_ASSERT(out == 11.0);
	movss	-4(%rbp), %xmm0	 # out, tmp145
	ucomiss	.LC117(%rip), %xmm0	 #, tmp145
	jp	.L983	 #,
	movss	-4(%rbp), %xmm0	 # out, tmp146
	ucomiss	.LC117(%rip), %xmm0	 #, tmp146
	je	.L970	 #,
.L983:
 # ./test/pdsp_test.c:1127:     PDSP_ASSERT(out == 11.0);
	movl	$1127, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp147
	movq	%rax, %rdx	 # tmp147,
	leaq	.LC3(%rip), %rax	 #, tmp148
	movq	%rax, %rcx	 # tmp148,
	call	printf	 #
.L970:
 # ./test/pdsp_test.c:1128:     out = pdsp_rollsum(&roll, 1.0);
	leaq	-96(%rbp), %rax	 #, tmp149
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp149,
	call	pdsp_rollsum	 #
	movd	%xmm0, %eax	 #, tmp150
	movl	%eax, -4(%rbp)	 # tmp150, out
 # ./test/pdsp_test.c:1129:     PDSP_ASSERT(out == 2.0);
	movss	-4(%rbp), %xmm0	 # out, tmp151
	ucomiss	.LC22(%rip), %xmm0	 #, tmp151
	jp	.L984	 #,
	movss	-4(%rbp), %xmm0	 # out, tmp152
	ucomiss	.LC22(%rip), %xmm0	 #, tmp152
	je	.L985	 #,
.L984:
 # ./test/pdsp_test.c:1129:     PDSP_ASSERT(out == 2.0);
	movl	$1129, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp153
	movq	%rax, %rdx	 # tmp153,
	leaq	.LC3(%rip), %rax	 #, tmp154
	movq	%rax, %rcx	 # tmp154,
	call	printf	 #
.L985:
 # ./test/pdsp_test.c:1130: }
	nop	
	subq	$-128, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC119:
	.ascii "-- void test_rollavg(void) --\12\0"
	.text
	.globl	test_rollavg
	.def	test_rollavg;	.scl	2;	.type	32;	.endef
	.seh_proc	test_rollavg
test_rollavg:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	addq	$-128, %rsp	 #,
	.seh_stackalloc	128
	.seh_endprologue
 # ./test/pdsp_test.c:1134:     printf("-- void test_rollavg(void) --\n");
	leaq	.LC119(%rip), %rax	 #, tmp82
	movq	%rax, %rcx	 # tmp82,
	call	printf	 #
 # ./test/pdsp_test.c:1136:     pdsp_f32_t f32_history[4] = {0};
	movq	$0, -32(%rbp)	 #, f32_history
	movq	$0, -24(%rbp)	 #, f32_history
 # ./test/pdsp_test.c:1137:     pdsp_queue_var_t queue_var = {0};
	movl	$0, -38(%rbp)	 #, queue_var
	movw	$0, -34(%rbp)	 #, queue_var
 # ./test/pdsp_test.c:1138:     pdsp_rollsum_var_t roll_var = {0};
	movq	$0, -48(%rbp)	 #, roll_var
 # ./test/pdsp_test.c:1139:     const pdsp_queue_t queue = {
	leaq	-38(%rbp), %rax	 #, tmp83
	movq	%rax, -80(%rbp)	 # tmp83, queue.ps_var
	leaq	-32(%rbp), %rax	 #, tmp84
	movq	%rax, -72(%rbp)	 # tmp84, queue.pav_data
	movw	$4, -64(%rbp)	 #, queue.i16_size
 # ./test/pdsp_test.c:1141:     const pdsp_rollsum_t roll = {.ps_var = &roll_var, .ps_queue = &queue};
	leaq	-48(%rbp), %rax	 #, tmp85
	movq	%rax, -96(%rbp)	 # tmp85, roll.ps_var
	leaq	-80(%rbp), %rax	 #, tmp86
	movq	%rax, -88(%rbp)	 # tmp86, roll.ps_queue
 # ./test/pdsp_test.c:1142:     pdsp_rollavg_init(&roll, 4);
	leaq	-96(%rbp), %rax	 #, tmp87
	movl	$4, %edx	 #,
	movq	%rax, %rcx	 # tmp87,
	call	pdsp_rollavg_init	 #
 # ./test/pdsp_test.c:1143:     pdsp_rollavg_init(&roll, 5);
	leaq	-96(%rbp), %rax	 #, tmp88
	movl	$5, %edx	 #,
	movq	%rax, %rcx	 # tmp88,
	call	pdsp_rollavg_init	 #
 # ./test/pdsp_test.c:1144:     out = pdsp_rollavg(&roll, 1.0f);
	leaq	-96(%rbp), %rax	 #, tmp89
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp89,
	call	pdsp_rollavg	 #
	movd	%xmm0, %eax	 #, tmp90
	movl	%eax, -4(%rbp)	 # tmp90, out
 # ./test/pdsp_test.c:1145:     PDSP_ASSERT(out == 0.25f);
	movss	-4(%rbp), %xmm0	 # out, tmp91
	ucomiss	.LC120(%rip), %xmm0	 #, tmp91
	jp	.L995	 #,
	movss	-4(%rbp), %xmm0	 # out, tmp92
	ucomiss	.LC120(%rip), %xmm0	 #, tmp92
	je	.L987	 #,
.L995:
 # ./test/pdsp_test.c:1145:     PDSP_ASSERT(out == 0.25f);
	movl	$1145, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp93
	movq	%rax, %rdx	 # tmp93,
	leaq	.LC3(%rip), %rax	 #, tmp94
	movq	%rax, %rcx	 # tmp94,
	call	printf	 #
.L987:
 # ./test/pdsp_test.c:1146:     out = pdsp_rollavg(&roll, 1.0f);
	leaq	-96(%rbp), %rax	 #, tmp95
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp95,
	call	pdsp_rollavg	 #
	movd	%xmm0, %eax	 #, tmp96
	movl	%eax, -4(%rbp)	 # tmp96, out
 # ./test/pdsp_test.c:1147:     PDSP_ASSERT(out == 0.5f);
	movss	-4(%rbp), %xmm0	 # out, tmp97
	ucomiss	.LC37(%rip), %xmm0	 #, tmp97
	jp	.L996	 #,
	movss	-4(%rbp), %xmm0	 # out, tmp98
	ucomiss	.LC37(%rip), %xmm0	 #, tmp98
	je	.L989	 #,
.L996:
 # ./test/pdsp_test.c:1147:     PDSP_ASSERT(out == 0.5f);
	movl	$1147, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp99
	movq	%rax, %rdx	 # tmp99,
	leaq	.LC3(%rip), %rax	 #, tmp100
	movq	%rax, %rcx	 # tmp100,
	call	printf	 #
.L989:
 # ./test/pdsp_test.c:1148:     out = pdsp_rollavg(&roll, 1.0f);
	leaq	-96(%rbp), %rax	 #, tmp101
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp101,
	call	pdsp_rollavg	 #
	movd	%xmm0, %eax	 #, tmp102
	movl	%eax, -4(%rbp)	 # tmp102, out
 # ./test/pdsp_test.c:1149:     PDSP_ASSERT(out == 0.75f);
	movss	-4(%rbp), %xmm0	 # out, tmp103
	ucomiss	.LC99(%rip), %xmm0	 #, tmp103
	jp	.L997	 #,
	movss	-4(%rbp), %xmm0	 # out, tmp104
	ucomiss	.LC99(%rip), %xmm0	 #, tmp104
	je	.L991	 #,
.L997:
 # ./test/pdsp_test.c:1149:     PDSP_ASSERT(out == 0.75f);
	movl	$1149, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp105
	movq	%rax, %rdx	 # tmp105,
	leaq	.LC3(%rip), %rax	 #, tmp106
	movq	%rax, %rcx	 # tmp106,
	call	printf	 #
.L991:
 # ./test/pdsp_test.c:1150:     out = pdsp_rollavg(&roll, 1.0f);
	leaq	-96(%rbp), %rax	 #, tmp107
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp107,
	call	pdsp_rollavg	 #
	movd	%xmm0, %eax	 #, tmp108
	movl	%eax, -4(%rbp)	 # tmp108, out
 # ./test/pdsp_test.c:1151:     PDSP_ASSERT(out == 1.0f);
	movss	.LC23(%rip), %xmm0	 #, tmp109
	ucomiss	-4(%rbp), %xmm0	 # out, tmp109
	jp	.L998	 #,
	movss	.LC23(%rip), %xmm0	 #, tmp110
	ucomiss	-4(%rbp), %xmm0	 # out, tmp110
	je	.L999	 #,
.L998:
 # ./test/pdsp_test.c:1151:     PDSP_ASSERT(out == 1.0f);
	movl	$1151, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp111
	movq	%rax, %rdx	 # tmp111,
	leaq	.LC3(%rip), %rax	 #, tmp112
	movq	%rax, %rcx	 # tmp112,
	call	printf	 #
.L999:
 # ./test/pdsp_test.c:1152: }
	nop	
	subq	$-128, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC121:
	.ascii "-- void test_rollrms(void) --\12\0"
	.text
	.globl	test_rollrms
	.def	test_rollrms;	.scl	2;	.type	32;	.endef
	.seh_proc	test_rollrms
test_rollrms:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	addq	$-128, %rsp	 #,
	.seh_stackalloc	128
	.seh_endprologue
 # ./test/pdsp_test.c:1156:     printf("-- void test_rollrms(void) --\n");
	leaq	.LC121(%rip), %rax	 #, tmp82
	movq	%rax, %rcx	 # tmp82,
	call	printf	 #
 # ./test/pdsp_test.c:1158:     pdsp_f32_t f32_history[4] = {0};
	movq	$0, -32(%rbp)	 #, f32_history
	movq	$0, -24(%rbp)	 #, f32_history
 # ./test/pdsp_test.c:1159:     pdsp_queue_var_t queue_var = {0};
	movl	$0, -38(%rbp)	 #, queue_var
	movw	$0, -34(%rbp)	 #, queue_var
 # ./test/pdsp_test.c:1160:     pdsp_rollsum_var_t roll_var = {0};
	movq	$0, -48(%rbp)	 #, roll_var
 # ./test/pdsp_test.c:1161:     const pdsp_queue_t queue = {
	leaq	-38(%rbp), %rax	 #, tmp83
	movq	%rax, -80(%rbp)	 # tmp83, queue.ps_var
	leaq	-32(%rbp), %rax	 #, tmp84
	movq	%rax, -72(%rbp)	 # tmp84, queue.pav_data
	movw	$4, -64(%rbp)	 #, queue.i16_size
 # ./test/pdsp_test.c:1163:     const pdsp_rollsum_t roll = {.ps_var = &roll_var, .ps_queue = &queue};
	leaq	-48(%rbp), %rax	 #, tmp85
	movq	%rax, -96(%rbp)	 # tmp85, roll.ps_var
	leaq	-80(%rbp), %rax	 #, tmp86
	movq	%rax, -88(%rbp)	 # tmp86, roll.ps_queue
 # ./test/pdsp_test.c:1164:     pdsp_rollrms_init(&roll, 4);
	leaq	-96(%rbp), %rax	 #, tmp87
	movl	$4, %edx	 #,
	movq	%rax, %rcx	 # tmp87,
	call	pdsp_rollrms_init	 #
 # ./test/pdsp_test.c:1165:     out = pdsp_rollrms(&roll, 1.0f);
	leaq	-96(%rbp), %rax	 #, tmp88
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp88,
	call	pdsp_rollrms	 #
	movd	%xmm0, %eax	 #, tmp89
	movl	%eax, -4(%rbp)	 # tmp89, out
 # ./test/pdsp_test.c:1166:     PDSP_ASSERT(out == 0.5f);
	movss	-4(%rbp), %xmm0	 # out, tmp90
	ucomiss	.LC37(%rip), %xmm0	 #, tmp90
	jp	.L1003	 #,
	movss	-4(%rbp), %xmm0	 # out, tmp91
	ucomiss	.LC37(%rip), %xmm0	 #, tmp91
	je	.L1004	 #,
.L1003:
 # ./test/pdsp_test.c:1166:     PDSP_ASSERT(out == 0.5f);
	movl	$1166, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp92
	movq	%rax, %rdx	 # tmp92,
	leaq	.LC3(%rip), %rax	 #, tmp93
	movq	%rax, %rcx	 # tmp93,
	call	printf	 #
.L1004:
 # ./test/pdsp_test.c:1167: }
	nop	
	subq	$-128, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC122:
	.ascii "-- void test_delay(void) --\12\0"
	.text
	.globl	test_delay
	.def	test_delay;	.scl	2;	.type	32;	.endef
	.seh_proc	test_delay
test_delay:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$80, %rsp	 #,
	.seh_stackalloc	80
	.seh_endprologue
 # ./test/pdsp_test.c:1171:     printf("-- void test_delay(void) --\n");
	leaq	.LC122(%rip), %rax	 #, tmp107
	movq	%rax, %rcx	 # tmp107,
	call	printf	 #
 # ./test/pdsp_test.c:1172:     pdsp_delayrf_bool_var_t delay_var = {0};
	movl	$0, -4(%rbp)	 #, delay_var
 # ./test/pdsp_test.c:1173:     pdsp_delayrf_bool_t delay = {.ps_var = &delay_var,
	leaq	-4(%rbp), %rax	 #, tmp108
	movq	%rax, -32(%rbp)	 # tmp108, delay.ps_var
	movw	$2, -24(%rbp)	 #, delay.u16_rising_delay_count
	movw	$3, -22(%rbp)	 #, delay.u16_falling_delay_count
 # ./test/pdsp_test.c:1176:     pdsp_delayrf_bool_clear(&delay);
	leaq	-32(%rbp), %rax	 #, tmp109
	movq	%rax, %rcx	 # tmp109,
	call	pdsp_delayrf_bool_clear	 #
 # ./test/pdsp_test.c:1177:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_FALSE) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp110
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp110,
	call	pdsp_delayrf_bool	 #
 # ./test/pdsp_test.c:1177:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_FALSE) == PDSP_FALSE);
	testb	%al, %al	 # _1
	je	.L1006	 #,
	movl	$1177, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp111
	movq	%rax, %rdx	 # tmp111,
	leaq	.LC3(%rip), %rax	 #, tmp112
	movq	%rax, %rcx	 # tmp112,
	call	printf	 #
.L1006:
 # ./test/pdsp_test.c:1178:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_FALSE) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp113
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp113,
	call	pdsp_delayrf_bool	 #
 # ./test/pdsp_test.c:1178:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_FALSE) == PDSP_FALSE);
	testb	%al, %al	 # _2
	je	.L1007	 #,
	movl	$1178, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp114
	movq	%rax, %rdx	 # tmp114,
	leaq	.LC3(%rip), %rax	 #, tmp115
	movq	%rax, %rcx	 # tmp115,
	call	printf	 #
.L1007:
 # ./test/pdsp_test.c:1179:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_TRUE) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp116
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp116,
	call	pdsp_delayrf_bool	 #
 # ./test/pdsp_test.c:1179:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_TRUE) == PDSP_FALSE);
	testb	%al, %al	 # _3
	je	.L1008	 #,
	movl	$1179, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp117
	movq	%rax, %rdx	 # tmp117,
	leaq	.LC3(%rip), %rax	 #, tmp118
	movq	%rax, %rcx	 # tmp118,
	call	printf	 #
.L1008:
 # ./test/pdsp_test.c:1180:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_TRUE) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp119
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp119,
	call	pdsp_delayrf_bool	 #
 # ./test/pdsp_test.c:1180:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_TRUE) == PDSP_FALSE);
	testb	%al, %al	 # _4
	je	.L1009	 #,
	movl	$1180, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp120
	movq	%rax, %rdx	 # tmp120,
	leaq	.LC3(%rip), %rax	 #, tmp121
	movq	%rax, %rcx	 # tmp121,
	call	printf	 #
.L1009:
 # ./test/pdsp_test.c:1181:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_TRUE) == PDSP_TRUE);
	leaq	-32(%rbp), %rax	 #, tmp122
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp122,
	call	pdsp_delayrf_bool	 #
 # ./test/pdsp_test.c:1181:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_TRUE) == PDSP_TRUE);
	xorl	$1, %eax	 #, _6
	testb	%al, %al	 # _6
	je	.L1010	 #,
	movl	$1181, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp123
	movq	%rax, %rdx	 # tmp123,
	leaq	.LC3(%rip), %rax	 #, tmp124
	movq	%rax, %rcx	 # tmp124,
	call	printf	 #
.L1010:
 # ./test/pdsp_test.c:1182:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_TRUE) == PDSP_TRUE);
	leaq	-32(%rbp), %rax	 #, tmp125
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp125,
	call	pdsp_delayrf_bool	 #
 # ./test/pdsp_test.c:1182:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_TRUE) == PDSP_TRUE);
	xorl	$1, %eax	 #, _8
	testb	%al, %al	 # _8
	je	.L1011	 #,
	movl	$1182, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp126
	movq	%rax, %rdx	 # tmp126,
	leaq	.LC3(%rip), %rax	 #, tmp127
	movq	%rax, %rcx	 # tmp127,
	call	printf	 #
.L1011:
 # ./test/pdsp_test.c:1183:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_FALSE) == PDSP_TRUE);
	leaq	-32(%rbp), %rax	 #, tmp128
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp128,
	call	pdsp_delayrf_bool	 #
 # ./test/pdsp_test.c:1183:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_FALSE) == PDSP_TRUE);
	xorl	$1, %eax	 #, _10
	testb	%al, %al	 # _10
	je	.L1012	 #,
	movl	$1183, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp129
	movq	%rax, %rdx	 # tmp129,
	leaq	.LC3(%rip), %rax	 #, tmp130
	movq	%rax, %rcx	 # tmp130,
	call	printf	 #
.L1012:
 # ./test/pdsp_test.c:1184:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_FALSE) == PDSP_TRUE);
	leaq	-32(%rbp), %rax	 #, tmp131
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp131,
	call	pdsp_delayrf_bool	 #
 # ./test/pdsp_test.c:1184:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_FALSE) == PDSP_TRUE);
	xorl	$1, %eax	 #, _12
	testb	%al, %al	 # _12
	je	.L1013	 #,
	movl	$1184, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp132
	movq	%rax, %rdx	 # tmp132,
	leaq	.LC3(%rip), %rax	 #, tmp133
	movq	%rax, %rcx	 # tmp133,
	call	printf	 #
.L1013:
 # ./test/pdsp_test.c:1185:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_FALSE) == PDSP_TRUE);
	leaq	-32(%rbp), %rax	 #, tmp134
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp134,
	call	pdsp_delayrf_bool	 #
 # ./test/pdsp_test.c:1185:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_FALSE) == PDSP_TRUE);
	xorl	$1, %eax	 #, _14
	testb	%al, %al	 # _14
	je	.L1014	 #,
	movl	$1185, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp135
	movq	%rax, %rdx	 # tmp135,
	leaq	.LC3(%rip), %rax	 #, tmp136
	movq	%rax, %rcx	 # tmp136,
	call	printf	 #
.L1014:
 # ./test/pdsp_test.c:1186:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_FALSE) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp137
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp137,
	call	pdsp_delayrf_bool	 #
 # ./test/pdsp_test.c:1186:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_FALSE) == PDSP_FALSE);
	testb	%al, %al	 # _15
	je	.L1015	 #,
	movl	$1186, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp138
	movq	%rax, %rdx	 # tmp138,
	leaq	.LC3(%rip), %rax	 #, tmp139
	movq	%rax, %rcx	 # tmp139,
	call	printf	 #
.L1015:
 # ./test/pdsp_test.c:1187:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_TRUE) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp140
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp140,
	call	pdsp_delayrf_bool	 #
 # ./test/pdsp_test.c:1187:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_TRUE) == PDSP_FALSE);
	testb	%al, %al	 # _16
	je	.L1016	 #,
	movl	$1187, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp141
	movq	%rax, %rdx	 # tmp141,
	leaq	.LC3(%rip), %rax	 #, tmp142
	movq	%rax, %rcx	 # tmp142,
	call	printf	 #
.L1016:
 # ./test/pdsp_test.c:1188:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_TRUE) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp143
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp143,
	call	pdsp_delayrf_bool	 #
 # ./test/pdsp_test.c:1188:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_TRUE) == PDSP_FALSE);
	testb	%al, %al	 # _17
	je	.L1017	 #,
	movl	$1188, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp144
	movq	%rax, %rdx	 # tmp144,
	leaq	.LC3(%rip), %rax	 #, tmp145
	movq	%rax, %rcx	 # tmp145,
	call	printf	 #
.L1017:
 # ./test/pdsp_test.c:1189:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_TRUE) == PDSP_TRUE);
	leaq	-32(%rbp), %rax	 #, tmp146
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp146,
	call	pdsp_delayrf_bool	 #
 # ./test/pdsp_test.c:1189:     PDSP_ASSERT(pdsp_delayrf_bool(&delay, PDSP_TRUE) == PDSP_TRUE);
	xorl	$1, %eax	 #, _19
	testb	%al, %al	 # _19
	je	.L1018	 #,
	movl	$1189, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp147
	movq	%rax, %rdx	 # tmp147,
	leaq	.LC3(%rip), %rax	 #, tmp148
	movq	%rax, %rcx	 # tmp148,
	call	printf	 #
.L1018:
 # ./test/pdsp_test.c:1190:     pdsp_delayrf_bool_t delay0 = {.ps_var = &delay_var,
	leaq	-4(%rbp), %rax	 #, tmp149
	movq	%rax, -48(%rbp)	 # tmp149, delay0.ps_var
	movw	$0, -40(%rbp)	 #, delay0.u16_rising_delay_count
	movw	$0, -38(%rbp)	 #, delay0.u16_falling_delay_count
 # ./test/pdsp_test.c:1193:     pdsp_delayrf_bool_clear(&delay0);
	leaq	-48(%rbp), %rax	 #, tmp150
	movq	%rax, %rcx	 # tmp150,
	call	pdsp_delayrf_bool_clear	 #
 # ./test/pdsp_test.c:1194:     PDSP_ASSERT(pdsp_delayrf_bool(&delay0, PDSP_FALSE) == PDSP_FALSE);
	leaq	-48(%rbp), %rax	 #, tmp151
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp151,
	call	pdsp_delayrf_bool	 #
 # ./test/pdsp_test.c:1194:     PDSP_ASSERT(pdsp_delayrf_bool(&delay0, PDSP_FALSE) == PDSP_FALSE);
	testb	%al, %al	 # _20
	je	.L1019	 #,
	movl	$1194, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp152
	movq	%rax, %rdx	 # tmp152,
	leaq	.LC3(%rip), %rax	 #, tmp153
	movq	%rax, %rcx	 # tmp153,
	call	printf	 #
.L1019:
 # ./test/pdsp_test.c:1195:     PDSP_ASSERT(pdsp_delayrf_bool(&delay0, PDSP_TRUE) == PDSP_TRUE);
	leaq	-48(%rbp), %rax	 #, tmp154
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp154,
	call	pdsp_delayrf_bool	 #
 # ./test/pdsp_test.c:1195:     PDSP_ASSERT(pdsp_delayrf_bool(&delay0, PDSP_TRUE) == PDSP_TRUE);
	xorl	$1, %eax	 #, _22
	testb	%al, %al	 # _22
	je	.L1020	 #,
	movl	$1195, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp155
	movq	%rax, %rdx	 # tmp155,
	leaq	.LC3(%rip), %rax	 #, tmp156
	movq	%rax, %rcx	 # tmp156,
	call	printf	 #
.L1020:
 # ./test/pdsp_test.c:1196:     PDSP_ASSERT(pdsp_delayrf_bool(&delay0, PDSP_FALSE) == PDSP_FALSE);
	leaq	-48(%rbp), %rax	 #, tmp157
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp157,
	call	pdsp_delayrf_bool	 #
 # ./test/pdsp_test.c:1196:     PDSP_ASSERT(pdsp_delayrf_bool(&delay0, PDSP_FALSE) == PDSP_FALSE);
	testb	%al, %al	 # _23
	je	.L1021	 #,
	movl	$1196, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp158
	movq	%rax, %rdx	 # tmp158,
	leaq	.LC3(%rip), %rax	 #, tmp159
	movq	%rax, %rcx	 # tmp159,
	call	printf	 #
.L1021:
 # ./test/pdsp_test.c:1197:     PDSP_ASSERT(pdsp_delayrf_bool(&delay0, PDSP_TRUE) == PDSP_TRUE);
	leaq	-48(%rbp), %rax	 #, tmp160
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp160,
	call	pdsp_delayrf_bool	 #
 # ./test/pdsp_test.c:1197:     PDSP_ASSERT(pdsp_delayrf_bool(&delay0, PDSP_TRUE) == PDSP_TRUE);
	xorl	$1, %eax	 #, _25
	testb	%al, %al	 # _25
	je	.L1023	 #,
	movl	$1197, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp161
	movq	%rax, %rdx	 # tmp161,
	leaq	.LC3(%rip), %rax	 #, tmp162
	movq	%rax, %rcx	 # tmp162,
	call	printf	 #
.L1023:
 # ./test/pdsp_test.c:1198: }
	nop	
	addq	$80, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC123:
	.ascii "-- void test_setp(void) --\12\0"
	.text
	.globl	test_setp
	.def	test_setp;	.scl	2;	.type	32;	.endef
	.seh_proc	test_setp
test_setp:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$120, %rsp	 #,
	.seh_stackalloc	120
	leaq	96(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 96
	movups	%xmm6, 0(%rbp)	 #,
	.seh_savexmm	%xmm6, 96
	.seh_endprologue
 # ./test/pdsp_test.c:1202:     printf("-- void test_setp(void) --\n");
	leaq	.LC123(%rip), %rax	 #, tmp326
	movq	%rax, %rcx	 # tmp326,
	call	printf	 #
 # ./test/pdsp_test.c:1203:     pdsp_setp_var_t setp_var = {0};
	movq	$0, -8(%rbp)	 #, setp_var
 # ./test/pdsp_test.c:1204:     pdsp_setp_t setp = {.ps_var = &setp_var,
	leaq	-8(%rbp), %rax	 #, tmp327
	movq	%rax, -32(%rbp)	 # tmp327, setp.ps_var
	pxor	%xmm0, %xmm0	 # tmp328
	movss	%xmm0, -24(%rbp)	 # tmp328, setp.f32_min
	movss	.LC28(%rip), %xmm0	 #, tmp329
	movss	%xmm0, -20(%rbp)	 # tmp329, setp.f32_max
	movss	.LC23(%rip), %xmm0	 #, tmp330
	movss	%xmm0, -16(%rbp)	 # tmp330, setp.f32_step
 # ./test/pdsp_test.c:1208:     pdsp_setp_init(&setp);
	leaq	-32(%rbp), %rax	 #, tmp331
	movq	%rax, %rcx	 # tmp331,
	call	pdsp_setp_init	 #
 # ./test/pdsp_test.c:1209:     PDSP_ASSERT(setp_var.f32_dest == 0.0f);
	movss	-4(%rbp), %xmm0	 # setp_var.f32_dest, _1
	pxor	%xmm1, %xmm1	 # tmp332
	ucomiss	%xmm1, %xmm0	 # tmp332, _1
	jp	.L1132	 #,
	pxor	%xmm1, %xmm1	 # tmp333
	ucomiss	%xmm1, %xmm0	 # tmp333, _1
	je	.L1025	 #,
.L1132:
 # ./test/pdsp_test.c:1209:     PDSP_ASSERT(setp_var.f32_dest == 0.0f);
	movl	$1209, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp334
	movq	%rax, %rdx	 # tmp334,
	leaq	.LC3(%rip), %rax	 #, tmp335
	movq	%rax, %rcx	 # tmp335,
	call	printf	 #
.L1025:
 # ./test/pdsp_test.c:1210:     PDSP_ASSERT(setp_var.f32_x1 == 0.0f);
	movss	-8(%rbp), %xmm0	 # setp_var.f32_x1, _2
	pxor	%xmm1, %xmm1	 # tmp336
	ucomiss	%xmm1, %xmm0	 # tmp336, _2
	jp	.L1133	 #,
	pxor	%xmm1, %xmm1	 # tmp337
	ucomiss	%xmm1, %xmm0	 # tmp337, _2
	je	.L1027	 #,
.L1133:
 # ./test/pdsp_test.c:1210:     PDSP_ASSERT(setp_var.f32_x1 == 0.0f);
	movl	$1210, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp338
	movq	%rax, %rdx	 # tmp338,
	leaq	.LC3(%rip), %rax	 #, tmp339
	movq	%rax, %rcx	 # tmp339,
	call	printf	 #
.L1027:
 # ./test/pdsp_test.c:1212:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_TRUE);
	leaq	-32(%rbp), %rax	 #, tmp340
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp340,
	call	pdsp_setp_reached	 #
 # ./test/pdsp_test.c:1212:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _4
	testb	%al, %al	 # _4
	je	.L1029	 #,
	movl	$1212, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp341
	movq	%rax, %rdx	 # tmp341,
	leaq	.LC3(%rip), %rax	 #, tmp342
	movq	%rax, %rcx	 # tmp342,
	call	printf	 #
.L1029:
 # ./test/pdsp_test.c:1213:     pdsp_setp_set_dest(&setp, 3.5f);
	leaq	-32(%rbp), %rax	 #, tmp343
	movss	.LC39(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp343,
	call	pdsp_setp_set_dest	 #
 # ./test/pdsp_test.c:1214:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp344
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp344,
	call	pdsp_setp_reached	 #
 # ./test/pdsp_test.c:1214:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	testb	%al, %al	 # _5
	je	.L1030	 #,
	movl	$1214, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp345
	movq	%rax, %rdx	 # tmp345,
	leaq	.LC3(%rip), %rax	 #, tmp346
	movq	%rax, %rcx	 # tmp346,
	call	printf	 #
.L1030:
 # ./test/pdsp_test.c:1215:     PDSP_ASSERT(pdsp_setp_ramp(&setp) == 1.0f);
	leaq	-32(%rbp), %rax	 #, tmp347
	movq	%rax, %rcx	 # tmp347,
	call	pdsp_setp_ramp	 #
	movd	%xmm0, %eax	 #, _6
 # ./test/pdsp_test.c:1215:     PDSP_ASSERT(pdsp_setp_ramp(&setp) == 1.0f);
	movss	.LC23(%rip), %xmm0	 #, tmp348
	movd	%eax, %xmm4	 # _6, _6
	ucomiss	%xmm0, %xmm4	 # tmp348, _6
	jp	.L1134	 #,
	movss	.LC23(%rip), %xmm0	 #, tmp349
	movd	%eax, %xmm5	 # _6, _6
	ucomiss	%xmm0, %xmm5	 # tmp349, _6
	je	.L1031	 #,
.L1134:
	movl	$1215, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp350
	movq	%rax, %rdx	 # tmp350,
	leaq	.LC3(%rip), %rax	 #, tmp351
	movq	%rax, %rcx	 # tmp351,
	call	printf	 #
.L1031:
 # ./test/pdsp_test.c:1216:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp352
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp352,
	call	pdsp_setp_reached	 #
 # ./test/pdsp_test.c:1216:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	testb	%al, %al	 # _7
	je	.L1033	 #,
	movl	$1216, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp353
	movq	%rax, %rdx	 # tmp353,
	leaq	.LC3(%rip), %rax	 #, tmp354
	movq	%rax, %rcx	 # tmp354,
	call	printf	 #
.L1033:
 # ./test/pdsp_test.c:1217:     PDSP_ASSERT(pdsp_setp_ramp(&setp) == 2.0f);
	leaq	-32(%rbp), %rax	 #, tmp355
	movq	%rax, %rcx	 # tmp355,
	call	pdsp_setp_ramp	 #
	movd	%xmm0, %eax	 #, _8
 # ./test/pdsp_test.c:1217:     PDSP_ASSERT(pdsp_setp_ramp(&setp) == 2.0f);
	movd	%eax, %xmm4	 # _8, _8
	ucomiss	.LC22(%rip), %xmm4	 #, _8
	jp	.L1135	 #,
	movd	%eax, %xmm5	 # _8, _8
	ucomiss	.LC22(%rip), %xmm5	 #, _8
	je	.L1034	 #,
.L1135:
	movl	$1217, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp356
	movq	%rax, %rdx	 # tmp356,
	leaq	.LC3(%rip), %rax	 #, tmp357
	movq	%rax, %rcx	 # tmp357,
	call	printf	 #
.L1034:
 # ./test/pdsp_test.c:1218:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp358
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp358,
	call	pdsp_setp_reached	 #
 # ./test/pdsp_test.c:1218:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	testb	%al, %al	 # _9
	je	.L1036	 #,
	movl	$1218, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp359
	movq	%rax, %rdx	 # tmp359,
	leaq	.LC3(%rip), %rax	 #, tmp360
	movq	%rax, %rcx	 # tmp360,
	call	printf	 #
.L1036:
 # ./test/pdsp_test.c:1219:     PDSP_ASSERT(pdsp_setp_ramp(&setp) == 3.0f);
	leaq	-32(%rbp), %rax	 #, tmp361
	movq	%rax, %rcx	 # tmp361,
	call	pdsp_setp_ramp	 #
	movd	%xmm0, %eax	 #, _10
 # ./test/pdsp_test.c:1219:     PDSP_ASSERT(pdsp_setp_ramp(&setp) == 3.0f);
	movd	%eax, %xmm4	 # _10, _10
	ucomiss	.LC30(%rip), %xmm4	 #, _10
	jp	.L1136	 #,
	movd	%eax, %xmm5	 # _10, _10
	ucomiss	.LC30(%rip), %xmm5	 #, _10
	je	.L1037	 #,
.L1136:
	movl	$1219, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp362
	movq	%rax, %rdx	 # tmp362,
	leaq	.LC3(%rip), %rax	 #, tmp363
	movq	%rax, %rcx	 # tmp363,
	call	printf	 #
.L1037:
 # ./test/pdsp_test.c:1220:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp364
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp364,
	call	pdsp_setp_reached	 #
 # ./test/pdsp_test.c:1220:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	testb	%al, %al	 # _11
	je	.L1039	 #,
	movl	$1220, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp365
	movq	%rax, %rdx	 # tmp365,
	leaq	.LC3(%rip), %rax	 #, tmp366
	movq	%rax, %rcx	 # tmp366,
	call	printf	 #
.L1039:
 # ./test/pdsp_test.c:1221:     PDSP_ASSERT(pdsp_setp_ramp(&setp) == 3.5f);
	leaq	-32(%rbp), %rax	 #, tmp367
	movq	%rax, %rcx	 # tmp367,
	call	pdsp_setp_ramp	 #
	movd	%xmm0, %eax	 #, _12
 # ./test/pdsp_test.c:1221:     PDSP_ASSERT(pdsp_setp_ramp(&setp) == 3.5f);
	movd	%eax, %xmm4	 # _12, _12
	ucomiss	.LC39(%rip), %xmm4	 #, _12
	jp	.L1137	 #,
	movd	%eax, %xmm5	 # _12, _12
	ucomiss	.LC39(%rip), %xmm5	 #, _12
	je	.L1040	 #,
.L1137:
	movl	$1221, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp368
	movq	%rax, %rdx	 # tmp368,
	leaq	.LC3(%rip), %rax	 #, tmp369
	movq	%rax, %rcx	 # tmp369,
	call	printf	 #
.L1040:
 # ./test/pdsp_test.c:1222:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_TRUE);
	leaq	-32(%rbp), %rax	 #, tmp370
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp370,
	call	pdsp_setp_reached	 #
 # ./test/pdsp_test.c:1222:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _14
	testb	%al, %al	 # _14
	je	.L1042	 #,
	movl	$1222, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp371
	movq	%rax, %rdx	 # tmp371,
	leaq	.LC3(%rip), %rax	 #, tmp372
	movq	%rax, %rcx	 # tmp372,
	call	printf	 #
.L1042:
 # ./test/pdsp_test.c:1224:     pdsp_setp_init(&setp);
	leaq	-32(%rbp), %rax	 #, tmp373
	movq	%rax, %rcx	 # tmp373,
	call	pdsp_setp_init	 #
 # ./test/pdsp_test.c:1225:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_TRUE);
	leaq	-32(%rbp), %rax	 #, tmp374
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp374,
	call	pdsp_setp_reached	 #
 # ./test/pdsp_test.c:1225:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _16
	testb	%al, %al	 # _16
	je	.L1043	 #,
	movl	$1225, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp375
	movq	%rax, %rdx	 # tmp375,
	leaq	.LC3(%rip), %rax	 #, tmp376
	movq	%rax, %rcx	 # tmp376,
	call	printf	 #
.L1043:
 # ./test/pdsp_test.c:1226:     pdsp_setp_set_dest(&setp, 3.0f);
	leaq	-32(%rbp), %rax	 #, tmp377
	movss	.LC30(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp377,
	call	pdsp_setp_set_dest	 #
 # ./test/pdsp_test.c:1227:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp378
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp378,
	call	pdsp_setp_reached	 #
 # ./test/pdsp_test.c:1227:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	testb	%al, %al	 # _17
	je	.L1044	 #,
	movl	$1227, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp379
	movq	%rax, %rdx	 # tmp379,
	leaq	.LC3(%rip), %rax	 #, tmp380
	movq	%rax, %rcx	 # tmp380,
	call	printf	 #
.L1044:
 # ./test/pdsp_test.c:1228:     PDSP_ASSERT(pdsp_setp_step(&setp) == 3.0f);
	leaq	-32(%rbp), %rax	 #, tmp381
	movq	%rax, %rcx	 # tmp381,
	call	pdsp_setp_step	 #
	movd	%xmm0, %eax	 #, _18
 # ./test/pdsp_test.c:1228:     PDSP_ASSERT(pdsp_setp_step(&setp) == 3.0f);
	movd	%eax, %xmm4	 # _18, _18
	ucomiss	.LC30(%rip), %xmm4	 #, _18
	jp	.L1138	 #,
	movd	%eax, %xmm5	 # _18, _18
	ucomiss	.LC30(%rip), %xmm5	 #, _18
	je	.L1045	 #,
.L1138:
	movl	$1228, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp382
	movq	%rax, %rdx	 # tmp382,
	leaq	.LC3(%rip), %rax	 #, tmp383
	movq	%rax, %rcx	 # tmp383,
	call	printf	 #
.L1045:
 # ./test/pdsp_test.c:1229:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_TRUE);
	leaq	-32(%rbp), %rax	 #, tmp384
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp384,
	call	pdsp_setp_reached	 #
 # ./test/pdsp_test.c:1229:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _20
	testb	%al, %al	 # _20
	je	.L1047	 #,
	movl	$1229, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp385
	movq	%rax, %rdx	 # tmp385,
	leaq	.LC3(%rip), %rax	 #, tmp386
	movq	%rax, %rcx	 # tmp386,
	call	printf	 #
.L1047:
 # ./test/pdsp_test.c:1231:     setp.f32_step = 0.5f;
	movss	.LC37(%rip), %xmm0	 #, tmp387
	movss	%xmm0, -16(%rbp)	 # tmp387, setp.f32_step
 # ./test/pdsp_test.c:1232:     pdsp_setp_init(&setp);
	leaq	-32(%rbp), %rax	 #, tmp388
	movq	%rax, %rcx	 # tmp388,
	call	pdsp_setp_init	 #
 # ./test/pdsp_test.c:1233:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_TRUE);
	leaq	-32(%rbp), %rax	 #, tmp389
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp389,
	call	pdsp_setp_reached	 #
 # ./test/pdsp_test.c:1233:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _22
	testb	%al, %al	 # _22
	je	.L1048	 #,
	movl	$1233, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp390
	movq	%rax, %rdx	 # tmp390,
	leaq	.LC3(%rip), %rax	 #, tmp391
	movq	%rax, %rcx	 # tmp391,
	call	printf	 #
.L1048:
 # ./test/pdsp_test.c:1234:     pdsp_setp_set_dest(&setp, 8.0f);
	leaq	-32(%rbp), %rax	 #, tmp392
	movss	.LC48(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp392,
	call	pdsp_setp_set_dest	 #
 # ./test/pdsp_test.c:1235:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp393
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp393,
	call	pdsp_setp_reached	 #
 # ./test/pdsp_test.c:1235:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	testb	%al, %al	 # _23
	je	.L1049	 #,
	movl	$1235, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp394
	movq	%rax, %rdx	 # tmp394,
	leaq	.LC3(%rip), %rax	 #, tmp395
	movq	%rax, %rcx	 # tmp395,
	call	printf	 #
.L1049:
 # ./test/pdsp_test.c:1236:     PDSP_ASSERT(pdsp_setp_exp(&setp) == (4.0f));
	leaq	-32(%rbp), %rax	 #, tmp396
	movq	%rax, %rcx	 # tmp396,
	call	pdsp_setp_exp	 #
	movd	%xmm0, %eax	 #, _24
 # ./test/pdsp_test.c:1236:     PDSP_ASSERT(pdsp_setp_exp(&setp) == (4.0f));
	movd	%eax, %xmm6	 # _24, _24
	ucomiss	.LC32(%rip), %xmm6	 #, _24
	jp	.L1139	 #,
	movd	%eax, %xmm4	 # _24, _24
	ucomiss	.LC32(%rip), %xmm4	 #, _24
	je	.L1050	 #,
.L1139:
	movl	$1236, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp397
	movq	%rax, %rdx	 # tmp397,
	leaq	.LC3(%rip), %rax	 #, tmp398
	movq	%rax, %rcx	 # tmp398,
	call	printf	 #
.L1050:
 # ./test/pdsp_test.c:1237:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp399
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp399,
	call	pdsp_setp_reached	 #
 # ./test/pdsp_test.c:1237:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	testb	%al, %al	 # _25
	je	.L1052	 #,
	movl	$1237, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp400
	movq	%rax, %rdx	 # tmp400,
	leaq	.LC3(%rip), %rax	 #, tmp401
	movq	%rax, %rcx	 # tmp401,
	call	printf	 #
.L1052:
 # ./test/pdsp_test.c:1238:     PDSP_ASSERT(pdsp_setp_exp(&setp) == 6.0f);
	leaq	-32(%rbp), %rax	 #, tmp402
	movq	%rax, %rcx	 # tmp402,
	call	pdsp_setp_exp	 #
	movd	%xmm0, %eax	 #, _26
 # ./test/pdsp_test.c:1238:     PDSP_ASSERT(pdsp_setp_exp(&setp) == 6.0f);
	movd	%eax, %xmm5	 # _26, _26
	ucomiss	.LC47(%rip), %xmm5	 #, _26
	jp	.L1140	 #,
	movd	%eax, %xmm6	 # _26, _26
	ucomiss	.LC47(%rip), %xmm6	 #, _26
	je	.L1053	 #,
.L1140:
	movl	$1238, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp403
	movq	%rax, %rdx	 # tmp403,
	leaq	.LC3(%rip), %rax	 #, tmp404
	movq	%rax, %rcx	 # tmp404,
	call	printf	 #
.L1053:
 # ./test/pdsp_test.c:1239:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp405
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp405,
	call	pdsp_setp_reached	 #
 # ./test/pdsp_test.c:1239:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	testb	%al, %al	 # _27
	je	.L1055	 #,
	movl	$1239, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp406
	movq	%rax, %rdx	 # tmp406,
	leaq	.LC3(%rip), %rax	 #, tmp407
	movq	%rax, %rcx	 # tmp407,
	call	printf	 #
.L1055:
 # ./test/pdsp_test.c:1240:     PDSP_ASSERT(pdsp_setp_exp(&setp) == 7.0f);
	leaq	-32(%rbp), %rax	 #, tmp408
	movq	%rax, %rcx	 # tmp408,
	call	pdsp_setp_exp	 #
	movd	%xmm0, %eax	 #, _28
 # ./test/pdsp_test.c:1240:     PDSP_ASSERT(pdsp_setp_exp(&setp) == 7.0f);
	movd	%eax, %xmm2	 # _28, _28
	ucomiss	.LC125(%rip), %xmm2	 #, _28
	jp	.L1141	 #,
	movd	%eax, %xmm3	 # _28, _28
	ucomiss	.LC125(%rip), %xmm3	 #, _28
	je	.L1056	 #,
.L1141:
	movl	$1240, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp409
	movq	%rax, %rdx	 # tmp409,
	leaq	.LC3(%rip), %rax	 #, tmp410
	movq	%rax, %rcx	 # tmp410,
	call	printf	 #
.L1056:
 # ./test/pdsp_test.c:1241:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp411
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp411,
	call	pdsp_setp_reached	 #
 # ./test/pdsp_test.c:1241:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	testb	%al, %al	 # _29
	je	.L1058	 #,
	movl	$1241, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp412
	movq	%rax, %rdx	 # tmp412,
	leaq	.LC3(%rip), %rax	 #, tmp413
	movq	%rax, %rcx	 # tmp413,
	call	printf	 #
.L1058:
 # ./test/pdsp_test.c:1242:     PDSP_ASSERT(pdsp_setp_exp(&setp) == 7.5f);
	leaq	-32(%rbp), %rax	 #, tmp414
	movq	%rax, %rcx	 # tmp414,
	call	pdsp_setp_exp	 #
	movd	%xmm0, %eax	 #, _30
 # ./test/pdsp_test.c:1242:     PDSP_ASSERT(pdsp_setp_exp(&setp) == 7.5f);
	movd	%eax, %xmm4	 # _30, _30
	ucomiss	.LC126(%rip), %xmm4	 #, _30
	jp	.L1142	 #,
	movd	%eax, %xmm5	 # _30, _30
	ucomiss	.LC126(%rip), %xmm5	 #, _30
	je	.L1059	 #,
.L1142:
	movl	$1242, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp415
	movq	%rax, %rdx	 # tmp415,
	leaq	.LC3(%rip), %rax	 #, tmp416
	movq	%rax, %rcx	 # tmp416,
	call	printf	 #
.L1059:
 # ./test/pdsp_test.c:1243:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp417
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp417,
	call	pdsp_setp_reached	 #
 # ./test/pdsp_test.c:1243:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	testb	%al, %al	 # _31
	je	.L1061	 #,
	movl	$1243, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp418
	movq	%rax, %rdx	 # tmp418,
	leaq	.LC3(%rip), %rax	 #, tmp419
	movq	%rax, %rcx	 # tmp419,
	call	printf	 #
.L1061:
 # ./test/pdsp_test.c:1244:     PDSP_ASSERT(pdsp_setp_exp(&setp) == 7.75f);
	leaq	-32(%rbp), %rax	 #, tmp420
	movq	%rax, %rcx	 # tmp420,
	call	pdsp_setp_exp	 #
	movd	%xmm0, %eax	 #, _32
 # ./test/pdsp_test.c:1244:     PDSP_ASSERT(pdsp_setp_exp(&setp) == 7.75f);
	movd	%eax, %xmm6	 # _32, _32
	ucomiss	.LC127(%rip), %xmm6	 #, _32
	jp	.L1143	 #,
	movd	%eax, %xmm2	 # _32, _32
	ucomiss	.LC127(%rip), %xmm2	 #, _32
	je	.L1062	 #,
.L1143:
	movl	$1244, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp421
	movq	%rax, %rdx	 # tmp421,
	leaq	.LC3(%rip), %rax	 #, tmp422
	movq	%rax, %rcx	 # tmp422,
	call	printf	 #
.L1062:
 # ./test/pdsp_test.c:1245:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	leaq	-32(%rbp), %rax	 #, tmp423
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp423,
	call	pdsp_setp_reached	 #
 # ./test/pdsp_test.c:1245:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.1f) == PDSP_FALSE);
	testb	%al, %al	 # _33
	je	.L1064	 #,
	movl	$1245, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp424
	movq	%rax, %rdx	 # tmp424,
	leaq	.LC3(%rip), %rax	 #, tmp425
	movq	%rax, %rcx	 # tmp425,
	call	printf	 #
.L1064:
 # ./test/pdsp_test.c:1246:     PDSP_ASSERT(pdsp_setp_exp(&setp) == 7.875f);
	leaq	-32(%rbp), %rax	 #, tmp426
	movq	%rax, %rcx	 # tmp426,
	call	pdsp_setp_exp	 #
	movd	%xmm0, %eax	 #, _34
 # ./test/pdsp_test.c:1246:     PDSP_ASSERT(pdsp_setp_exp(&setp) == 7.875f);
	movd	%eax, %xmm3	 # _34, _34
	ucomiss	.LC128(%rip), %xmm3	 #, _34
	jp	.L1144	 #,
	movd	%eax, %xmm4	 # _34, _34
	ucomiss	.LC128(%rip), %xmm4	 #, _34
	je	.L1065	 #,
.L1144:
	movl	$1246, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp427
	movq	%rax, %rdx	 # tmp427,
	leaq	.LC3(%rip), %rax	 #, tmp428
	movq	%rax, %rcx	 # tmp428,
	call	printf	 #
.L1065:
 # ./test/pdsp_test.c:1247:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.2f) == PDSP_TRUE);
	leaq	-32(%rbp), %rax	 #, tmp429
	movss	.LC129(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp429,
	call	pdsp_setp_reached	 #
 # ./test/pdsp_test.c:1247:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.2f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _36
	testb	%al, %al	 # _36
	je	.L1067	 #,
	movl	$1247, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp430
	movq	%rax, %rdx	 # tmp430,
	leaq	.LC3(%rip), %rax	 #, tmp431
	movq	%rax, %rcx	 # tmp431,
	call	printf	 #
.L1067:
 # ./test/pdsp_test.c:1249:     PDSP_ASSERT(pdsp_setp_reset(&setp, 8.0f) == 8.0f);
	leaq	-32(%rbp), %rax	 #, tmp432
	movss	.LC48(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp432,
	call	pdsp_setp_reset	 #
	movd	%xmm0, %eax	 #, _37
 # ./test/pdsp_test.c:1249:     PDSP_ASSERT(pdsp_setp_reset(&setp, 8.0f) == 8.0f);
	movd	%eax, %xmm5	 # _37, _37
	ucomiss	.LC48(%rip), %xmm5	 #, _37
	jp	.L1145	 #,
	movd	%eax, %xmm6	 # _37, _37
	ucomiss	.LC48(%rip), %xmm6	 #, _37
	je	.L1068	 #,
.L1145:
	movl	$1249, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp433
	movq	%rax, %rdx	 # tmp433,
	leaq	.LC3(%rip), %rax	 #, tmp434
	movq	%rax, %rcx	 # tmp434,
	call	printf	 #
.L1068:
 # ./test/pdsp_test.c:1250:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.001f) == PDSP_TRUE);
	leaq	-32(%rbp), %rax	 #, tmp435
	movss	.LC130(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp435,
	call	pdsp_setp_reached	 #
 # ./test/pdsp_test.c:1250:     PDSP_ASSERT(pdsp_setp_reached(&setp, 0.001f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _39
	testb	%al, %al	 # _39
	je	.L1070	 #,
	movl	$1250, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp436
	movq	%rax, %rdx	 # tmp436,
	leaq	.LC3(%rip), %rax	 #, tmp437
	movq	%rax, %rcx	 # tmp437,
	call	printf	 #
.L1070:
 # ./test/pdsp_test.c:1251:     PDSP_ASSERT(pdsp_setp_reset(&setp, 80.0f) == 10.0f);
	leaq	-32(%rbp), %rax	 #, tmp438
	movss	.LC131(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp438,
	call	pdsp_setp_reset	 #
	movd	%xmm0, %eax	 #, _40
 # ./test/pdsp_test.c:1251:     PDSP_ASSERT(pdsp_setp_reset(&setp, 80.0f) == 10.0f);
	movd	%eax, %xmm2	 # _40, _40
	ucomiss	.LC28(%rip), %xmm2	 #, _40
	jp	.L1146	 #,
	movd	%eax, %xmm3	 # _40, _40
	ucomiss	.LC28(%rip), %xmm3	 #, _40
	je	.L1071	 #,
.L1146:
	movl	$1251, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp439
	movq	%rax, %rdx	 # tmp439,
	leaq	.LC3(%rip), %rax	 #, tmp440
	movq	%rax, %rcx	 # tmp440,
	call	printf	 #
.L1071:
 # ./test/pdsp_test.c:1253:     pdsp_macro_setp_t setpm = {.f32_dest = 0.0f,
	pxor	%xmm0, %xmm0	 # tmp441
	movss	%xmm0, -64(%rbp)	 # tmp441, setpm.f32_min
	movss	.LC28(%rip), %xmm0	 #, tmp442
	movss	%xmm0, -60(%rbp)	 # tmp442, setpm.f32_max
	movss	.LC23(%rip), %xmm0	 #, tmp443
	movss	%xmm0, -56(%rbp)	 # tmp443, setpm.f32_step
	pxor	%xmm0, %xmm0	 # tmp444
	movss	%xmm0, -52(%rbp)	 # tmp444, setpm.f32_x1
	pxor	%xmm0, %xmm0	 # tmp445
	movss	%xmm0, -48(%rbp)	 # tmp445, setpm.f32_dest
 # ./test/pdsp_test.c:1258:     pdsp_macro_setp_init(setpm);
	pxor	%xmm0, %xmm0	 # tmp446
	movss	%xmm0, -52(%rbp)	 # tmp446, setpm.f32_x1
	pxor	%xmm0, %xmm0	 # tmp447
	movss	%xmm0, -48(%rbp)	 # tmp447, setpm.f32_dest
 # ./test/pdsp_test.c:1259:     PDSP_ASSERT(setpm.f32_dest == 0.0f);
	movss	-48(%rbp), %xmm0	 # setpm.f32_dest, _41
	pxor	%xmm1, %xmm1	 # tmp448
	ucomiss	%xmm1, %xmm0	 # tmp448, _41
	jp	.L1147	 #,
	pxor	%xmm1, %xmm1	 # tmp449
	ucomiss	%xmm1, %xmm0	 # tmp449, _41
	je	.L1073	 #,
.L1147:
 # ./test/pdsp_test.c:1259:     PDSP_ASSERT(setpm.f32_dest == 0.0f);
	movl	$1259, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp450
	movq	%rax, %rdx	 # tmp450,
	leaq	.LC3(%rip), %rax	 #, tmp451
	movq	%rax, %rcx	 # tmp451,
	call	printf	 #
.L1073:
 # ./test/pdsp_test.c:1260:     PDSP_ASSERT(setpm.f32_x1 == 0.0f);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _42
	pxor	%xmm1, %xmm1	 # tmp452
	ucomiss	%xmm1, %xmm0	 # tmp452, _42
	jp	.L1148	 #,
	pxor	%xmm1, %xmm1	 # tmp453
	ucomiss	%xmm1, %xmm0	 # tmp453, _42
	je	.L1075	 #,
.L1148:
 # ./test/pdsp_test.c:1260:     PDSP_ASSERT(setpm.f32_x1 == 0.0f);
	movl	$1260, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp454
	movq	%rax, %rdx	 # tmp454,
	leaq	.LC3(%rip), %rax	 #, tmp455
	movq	%rax, %rcx	 # tmp455,
	call	printf	 #
.L1075:
 # ./test/pdsp_test.c:1262:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_TRUE);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _43
	movss	-48(%rbp), %xmm1	 # setpm.f32_dest, _44
	subss	%xmm1, %xmm0	 # _44, _45
	movss	.LC132(%rip), %xmm1	 #, tmp456
	andps	%xmm0, %xmm1	 # _45, _46
	movss	.LC124(%rip), %xmm0	 #, tmp457
	comiss	%xmm1, %xmm0	 # _46, tmp457
	seta	%al	 #, _47
	xorl	$1, %eax	 #, _48
	testb	%al, %al	 # _48
	je	.L1077	 #,
 # ./test/pdsp_test.c:1262:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_TRUE);
	movl	$1262, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp458
	movq	%rax, %rdx	 # tmp458,
	leaq	.LC3(%rip), %rax	 #, tmp459
	movq	%rax, %rcx	 # tmp459,
	call	printf	 #
.L1077:
 # ./test/pdsp_test.c:1263:     pdsp_macro_setp_set_dest(setpm, 3.5f);
	movl	-64(%rbp), %ebx	 # setpm.f32_min, _49
	movl	-60(%rbp), %eax	 # setpm.f32_max, _50
	movss	.LC39(%rip), %xmm1	 #,
	movd	%eax, %xmm0	 # _50,
	call	fminf	 #
	movd	%xmm0, %eax	 #, _51
 # ./test/pdsp_test.c:1263:     pdsp_macro_setp_set_dest(setpm, 3.5f);
	movd	%eax, %xmm1	 # _51,
	movd	%ebx, %xmm0	 # _49,
	call	fmaxf	 #
	movd	%xmm0, %eax	 #, _52
 # ./test/pdsp_test.c:1263:     pdsp_macro_setp_set_dest(setpm, 3.5f);
	movl	%eax, -48(%rbp)	 # _52, setpm.f32_dest
 # ./test/pdsp_test.c:1264:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _53
	movss	-48(%rbp), %xmm1	 # setpm.f32_dest, _54
	subss	%xmm1, %xmm0	 # _54, _55
	movss	.LC132(%rip), %xmm1	 #, tmp460
	andps	%xmm0, %xmm1	 # _55, _56
	movss	.LC124(%rip), %xmm0	 #, tmp461
	comiss	%xmm1, %xmm0	 # _56, tmp461
	jbe	.L1078	 #,
 # ./test/pdsp_test.c:1264:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movl	$1264, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp462
	movq	%rax, %rdx	 # tmp462,
	leaq	.LC3(%rip), %rax	 #, tmp463
	movq	%rax, %rcx	 # tmp463,
	call	printf	 #
.L1078:
 # ./test/pdsp_test.c:1265:     pdsp_macro_setp_ramp(setpm);
	movss	-52(%rbp), %xmm6	 # setpm.f32_x1, _57
	movss	-56(%rbp), %xmm0	 # setpm.f32_step, _58
	movss	.LC133(%rip), %xmm1	 #, tmp464
	xorps	%xmm1, %xmm0	 # tmp464, _58
	movd	%xmm0, %ebx	 # _58, _59
	movl	-56(%rbp), %eax	 # setpm.f32_step, _60
	movss	-48(%rbp), %xmm0	 # setpm.f32_dest, _61
	movss	-52(%rbp), %xmm1	 # setpm.f32_x1, _62
	subss	%xmm1, %xmm0	 # _62, _63
	movaps	%xmm0, %xmm1	 # _63,
	movd	%eax, %xmm0	 # _60,
	call	fminf	 #
	movd	%xmm0, %eax	 #, _64
 # ./test/pdsp_test.c:1265:     pdsp_macro_setp_ramp(setpm);
	movd	%eax, %xmm1	 # _64,
	movd	%ebx, %xmm0	 # _59,
	call	fmaxf	 #
 # ./test/pdsp_test.c:1265:     pdsp_macro_setp_ramp(setpm);
	addss	%xmm6, %xmm0	 # _57, _66
	movss	%xmm0, -52(%rbp)	 # _66, setpm.f32_x1
 # ./test/pdsp_test.c:1266:     PDSP_ASSERT(setpm.f32_x1 == 1.0f);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _67
	movss	.LC23(%rip), %xmm1	 #, tmp465
	ucomiss	%xmm1, %xmm0	 # tmp465, _67
	jp	.L1150	 #,
	movss	.LC23(%rip), %xmm1	 #, tmp466
	ucomiss	%xmm1, %xmm0	 # tmp466, _67
	je	.L1080	 #,
.L1150:
 # ./test/pdsp_test.c:1266:     PDSP_ASSERT(setpm.f32_x1 == 1.0f);
	movl	$1266, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp467
	movq	%rax, %rdx	 # tmp467,
	leaq	.LC3(%rip), %rax	 #, tmp468
	movq	%rax, %rcx	 # tmp468,
	call	printf	 #
.L1080:
 # ./test/pdsp_test.c:1267:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _68
	movss	-48(%rbp), %xmm1	 # setpm.f32_dest, _69
	subss	%xmm1, %xmm0	 # _69, _70
	movss	.LC132(%rip), %xmm1	 #, tmp469
	andps	%xmm0, %xmm1	 # _70, _71
	movss	.LC124(%rip), %xmm0	 #, tmp470
	comiss	%xmm1, %xmm0	 # _71, tmp470
	jbe	.L1082	 #,
 # ./test/pdsp_test.c:1267:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movl	$1267, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp471
	movq	%rax, %rdx	 # tmp471,
	leaq	.LC3(%rip), %rax	 #, tmp472
	movq	%rax, %rcx	 # tmp472,
	call	printf	 #
.L1082:
 # ./test/pdsp_test.c:1268:     pdsp_macro_setp_ramp(setpm);
	movss	-52(%rbp), %xmm6	 # setpm.f32_x1, _72
	movss	-56(%rbp), %xmm0	 # setpm.f32_step, _73
	movss	.LC133(%rip), %xmm1	 #, tmp473
	xorps	%xmm1, %xmm0	 # tmp473, _73
	movd	%xmm0, %ebx	 # _73, _74
	movl	-56(%rbp), %eax	 # setpm.f32_step, _75
	movss	-48(%rbp), %xmm0	 # setpm.f32_dest, _76
	movss	-52(%rbp), %xmm1	 # setpm.f32_x1, _77
	subss	%xmm1, %xmm0	 # _77, _78
	movaps	%xmm0, %xmm1	 # _78,
	movd	%eax, %xmm0	 # _75,
	call	fminf	 #
	movd	%xmm0, %eax	 #, _79
 # ./test/pdsp_test.c:1268:     pdsp_macro_setp_ramp(setpm);
	movd	%eax, %xmm1	 # _79,
	movd	%ebx, %xmm0	 # _74,
	call	fmaxf	 #
 # ./test/pdsp_test.c:1268:     pdsp_macro_setp_ramp(setpm);
	addss	%xmm6, %xmm0	 # _72, _81
	movss	%xmm0, -52(%rbp)	 # _81, setpm.f32_x1
 # ./test/pdsp_test.c:1269:     PDSP_ASSERT(setpm.f32_x1 == 2.0f);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _82
	ucomiss	.LC22(%rip), %xmm0	 #, _82
	jp	.L1152	 #,
	ucomiss	.LC22(%rip), %xmm0	 #, _82
	je	.L1084	 #,
.L1152:
 # ./test/pdsp_test.c:1269:     PDSP_ASSERT(setpm.f32_x1 == 2.0f);
	movl	$1269, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp474
	movq	%rax, %rdx	 # tmp474,
	leaq	.LC3(%rip), %rax	 #, tmp475
	movq	%rax, %rcx	 # tmp475,
	call	printf	 #
.L1084:
 # ./test/pdsp_test.c:1270:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _83
	movss	-48(%rbp), %xmm1	 # setpm.f32_dest, _84
	subss	%xmm1, %xmm0	 # _84, _85
	movss	.LC132(%rip), %xmm1	 #, tmp476
	andps	%xmm0, %xmm1	 # _85, _86
	movss	.LC124(%rip), %xmm0	 #, tmp477
	comiss	%xmm1, %xmm0	 # _86, tmp477
	jbe	.L1086	 #,
 # ./test/pdsp_test.c:1270:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movl	$1270, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp478
	movq	%rax, %rdx	 # tmp478,
	leaq	.LC3(%rip), %rax	 #, tmp479
	movq	%rax, %rcx	 # tmp479,
	call	printf	 #
.L1086:
 # ./test/pdsp_test.c:1271:     pdsp_macro_setp_ramp(setpm);
	movss	-52(%rbp), %xmm6	 # setpm.f32_x1, _87
	movss	-56(%rbp), %xmm0	 # setpm.f32_step, _88
	movss	.LC133(%rip), %xmm1	 #, tmp480
	xorps	%xmm1, %xmm0	 # tmp480, _88
	movd	%xmm0, %ebx	 # _88, _89
	movl	-56(%rbp), %eax	 # setpm.f32_step, _90
	movss	-48(%rbp), %xmm0	 # setpm.f32_dest, _91
	movss	-52(%rbp), %xmm1	 # setpm.f32_x1, _92
	subss	%xmm1, %xmm0	 # _92, _93
	movaps	%xmm0, %xmm1	 # _93,
	movd	%eax, %xmm0	 # _90,
	call	fminf	 #
	movd	%xmm0, %eax	 #, _94
 # ./test/pdsp_test.c:1271:     pdsp_macro_setp_ramp(setpm);
	movd	%eax, %xmm1	 # _94,
	movd	%ebx, %xmm0	 # _89,
	call	fmaxf	 #
 # ./test/pdsp_test.c:1271:     pdsp_macro_setp_ramp(setpm);
	addss	%xmm6, %xmm0	 # _87, _96
	movss	%xmm0, -52(%rbp)	 # _96, setpm.f32_x1
 # ./test/pdsp_test.c:1272:     PDSP_ASSERT(setpm.f32_x1 == 3.0f);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _97
	ucomiss	.LC30(%rip), %xmm0	 #, _97
	jp	.L1154	 #,
	ucomiss	.LC30(%rip), %xmm0	 #, _97
	je	.L1088	 #,
.L1154:
 # ./test/pdsp_test.c:1272:     PDSP_ASSERT(setpm.f32_x1 == 3.0f);
	movl	$1272, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp481
	movq	%rax, %rdx	 # tmp481,
	leaq	.LC3(%rip), %rax	 #, tmp482
	movq	%rax, %rcx	 # tmp482,
	call	printf	 #
.L1088:
 # ./test/pdsp_test.c:1273:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _98
	movss	-48(%rbp), %xmm1	 # setpm.f32_dest, _99
	subss	%xmm1, %xmm0	 # _99, _100
	movss	.LC132(%rip), %xmm1	 #, tmp483
	andps	%xmm0, %xmm1	 # _100, _101
	movss	.LC124(%rip), %xmm0	 #, tmp484
	comiss	%xmm1, %xmm0	 # _101, tmp484
	jbe	.L1090	 #,
 # ./test/pdsp_test.c:1273:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movl	$1273, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp485
	movq	%rax, %rdx	 # tmp485,
	leaq	.LC3(%rip), %rax	 #, tmp486
	movq	%rax, %rcx	 # tmp486,
	call	printf	 #
.L1090:
 # ./test/pdsp_test.c:1274:     pdsp_macro_setp_ramp(setpm);
	movss	-52(%rbp), %xmm6	 # setpm.f32_x1, _102
	movss	-56(%rbp), %xmm0	 # setpm.f32_step, _103
	movss	.LC133(%rip), %xmm1	 #, tmp487
	xorps	%xmm1, %xmm0	 # tmp487, _103
	movd	%xmm0, %ebx	 # _103, _104
	movl	-56(%rbp), %eax	 # setpm.f32_step, _105
	movss	-48(%rbp), %xmm0	 # setpm.f32_dest, _106
	movss	-52(%rbp), %xmm1	 # setpm.f32_x1, _107
	subss	%xmm1, %xmm0	 # _107, _108
	movaps	%xmm0, %xmm1	 # _108,
	movd	%eax, %xmm0	 # _105,
	call	fminf	 #
	movd	%xmm0, %eax	 #, _109
 # ./test/pdsp_test.c:1274:     pdsp_macro_setp_ramp(setpm);
	movd	%eax, %xmm1	 # _109,
	movd	%ebx, %xmm0	 # _104,
	call	fmaxf	 #
 # ./test/pdsp_test.c:1274:     pdsp_macro_setp_ramp(setpm);
	addss	%xmm6, %xmm0	 # _102, _111
	movss	%xmm0, -52(%rbp)	 # _111, setpm.f32_x1
 # ./test/pdsp_test.c:1275:     PDSP_ASSERT(setpm.f32_x1 == 3.5f);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _112
	ucomiss	.LC39(%rip), %xmm0	 #, _112
	jp	.L1156	 #,
	ucomiss	.LC39(%rip), %xmm0	 #, _112
	je	.L1092	 #,
.L1156:
 # ./test/pdsp_test.c:1275:     PDSP_ASSERT(setpm.f32_x1 == 3.5f);
	movl	$1275, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp488
	movq	%rax, %rdx	 # tmp488,
	leaq	.LC3(%rip), %rax	 #, tmp489
	movq	%rax, %rcx	 # tmp489,
	call	printf	 #
.L1092:
 # ./test/pdsp_test.c:1276:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_TRUE);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _113
	movss	-48(%rbp), %xmm1	 # setpm.f32_dest, _114
	subss	%xmm1, %xmm0	 # _114, _115
	movss	.LC132(%rip), %xmm1	 #, tmp490
	andps	%xmm0, %xmm1	 # _115, _116
	movss	.LC124(%rip), %xmm0	 #, tmp491
	comiss	%xmm1, %xmm0	 # _116, tmp491
	seta	%al	 #, _117
	xorl	$1, %eax	 #, _118
	testb	%al, %al	 # _118
	je	.L1094	 #,
 # ./test/pdsp_test.c:1276:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_TRUE);
	movl	$1276, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp492
	movq	%rax, %rdx	 # tmp492,
	leaq	.LC3(%rip), %rax	 #, tmp493
	movq	%rax, %rcx	 # tmp493,
	call	printf	 #
.L1094:
 # ./test/pdsp_test.c:1278:     pdsp_macro_setp_init(setpm);
	pxor	%xmm0, %xmm0	 # tmp494
	movss	%xmm0, -52(%rbp)	 # tmp494, setpm.f32_x1
	pxor	%xmm0, %xmm0	 # tmp495
	movss	%xmm0, -48(%rbp)	 # tmp495, setpm.f32_dest
 # ./test/pdsp_test.c:1279:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_TRUE);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _119
	movss	-48(%rbp), %xmm1	 # setpm.f32_dest, _120
	subss	%xmm1, %xmm0	 # _120, _121
	movss	.LC132(%rip), %xmm1	 #, tmp496
	andps	%xmm0, %xmm1	 # _121, _122
	movss	.LC124(%rip), %xmm0	 #, tmp497
	comiss	%xmm1, %xmm0	 # _122, tmp497
	seta	%al	 #, _123
	xorl	$1, %eax	 #, _124
	testb	%al, %al	 # _124
	je	.L1095	 #,
 # ./test/pdsp_test.c:1279:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_TRUE);
	movl	$1279, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp498
	movq	%rax, %rdx	 # tmp498,
	leaq	.LC3(%rip), %rax	 #, tmp499
	movq	%rax, %rcx	 # tmp499,
	call	printf	 #
.L1095:
 # ./test/pdsp_test.c:1280:     pdsp_macro_setp_set_dest(setpm, 3.0f);
	movl	-64(%rbp), %ebx	 # setpm.f32_min, _125
	movl	-60(%rbp), %eax	 # setpm.f32_max, _126
	movss	.LC30(%rip), %xmm1	 #,
	movd	%eax, %xmm0	 # _126,
	call	fminf	 #
	movd	%xmm0, %eax	 #, _127
 # ./test/pdsp_test.c:1280:     pdsp_macro_setp_set_dest(setpm, 3.0f);
	movd	%eax, %xmm1	 # _127,
	movd	%ebx, %xmm0	 # _125,
	call	fmaxf	 #
	movd	%xmm0, %eax	 #, _128
 # ./test/pdsp_test.c:1280:     pdsp_macro_setp_set_dest(setpm, 3.0f);
	movl	%eax, -48(%rbp)	 # _128, setpm.f32_dest
 # ./test/pdsp_test.c:1281:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _129
	movss	-48(%rbp), %xmm1	 # setpm.f32_dest, _130
	subss	%xmm1, %xmm0	 # _130, _131
	movss	.LC132(%rip), %xmm1	 #, tmp500
	andps	%xmm0, %xmm1	 # _131, _132
	movss	.LC124(%rip), %xmm0	 #, tmp501
	comiss	%xmm1, %xmm0	 # _132, tmp501
	jbe	.L1096	 #,
 # ./test/pdsp_test.c:1281:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movl	$1281, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp502
	movq	%rax, %rdx	 # tmp502,
	leaq	.LC3(%rip), %rax	 #, tmp503
	movq	%rax, %rcx	 # tmp503,
	call	printf	 #
.L1096:
 # ./test/pdsp_test.c:1282:     pdsp_macro_setp_step(setpm);
	movss	-48(%rbp), %xmm0	 # setpm.f32_dest, _133
	movss	%xmm0, -52(%rbp)	 # _133, setpm.f32_x1
 # ./test/pdsp_test.c:1283:     PDSP_ASSERT(setpm.f32_x1 == 3.0f);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _134
	ucomiss	.LC30(%rip), %xmm0	 #, _134
	jp	.L1158	 #,
	ucomiss	.LC30(%rip), %xmm0	 #, _134
	je	.L1098	 #,
.L1158:
 # ./test/pdsp_test.c:1283:     PDSP_ASSERT(setpm.f32_x1 == 3.0f);
	movl	$1283, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp504
	movq	%rax, %rdx	 # tmp504,
	leaq	.LC3(%rip), %rax	 #, tmp505
	movq	%rax, %rcx	 # tmp505,
	call	printf	 #
.L1098:
 # ./test/pdsp_test.c:1284:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_TRUE);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _135
	movss	-48(%rbp), %xmm1	 # setpm.f32_dest, _136
	subss	%xmm1, %xmm0	 # _136, _137
	movss	.LC132(%rip), %xmm1	 #, tmp506
	andps	%xmm0, %xmm1	 # _137, _138
	movss	.LC124(%rip), %xmm0	 #, tmp507
	comiss	%xmm1, %xmm0	 # _138, tmp507
	seta	%al	 #, _139
	xorl	$1, %eax	 #, _140
	testb	%al, %al	 # _140
	je	.L1100	 #,
 # ./test/pdsp_test.c:1284:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_TRUE);
	movl	$1284, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp508
	movq	%rax, %rdx	 # tmp508,
	leaq	.LC3(%rip), %rax	 #, tmp509
	movq	%rax, %rcx	 # tmp509,
	call	printf	 #
.L1100:
 # ./test/pdsp_test.c:1286:     setpm.f32_step = 0.5f;
	movss	.LC37(%rip), %xmm0	 #, tmp510
	movss	%xmm0, -56(%rbp)	 # tmp510, setpm.f32_step
 # ./test/pdsp_test.c:1287:     pdsp_macro_setp_init(setpm);
	pxor	%xmm0, %xmm0	 # tmp511
	movss	%xmm0, -52(%rbp)	 # tmp511, setpm.f32_x1
	pxor	%xmm0, %xmm0	 # tmp512
	movss	%xmm0, -48(%rbp)	 # tmp512, setpm.f32_dest
 # ./test/pdsp_test.c:1288:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_TRUE);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _141
	movss	-48(%rbp), %xmm1	 # setpm.f32_dest, _142
	subss	%xmm1, %xmm0	 # _142, _143
	movss	.LC132(%rip), %xmm1	 #, tmp513
	andps	%xmm0, %xmm1	 # _143, _144
	movss	.LC124(%rip), %xmm0	 #, tmp514
	comiss	%xmm1, %xmm0	 # _144, tmp514
	seta	%al	 #, _145
	xorl	$1, %eax	 #, _146
	testb	%al, %al	 # _146
	je	.L1101	 #,
 # ./test/pdsp_test.c:1288:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_TRUE);
	movl	$1288, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp515
	movq	%rax, %rdx	 # tmp515,
	leaq	.LC3(%rip), %rax	 #, tmp516
	movq	%rax, %rcx	 # tmp516,
	call	printf	 #
.L1101:
 # ./test/pdsp_test.c:1289:     pdsp_macro_setp_set_dest(setpm, 8.0f);
	movl	-64(%rbp), %ebx	 # setpm.f32_min, _147
	movl	-60(%rbp), %eax	 # setpm.f32_max, _148
	movss	.LC48(%rip), %xmm1	 #,
	movd	%eax, %xmm0	 # _148,
	call	fminf	 #
	movd	%xmm0, %eax	 #, _149
 # ./test/pdsp_test.c:1289:     pdsp_macro_setp_set_dest(setpm, 8.0f);
	movd	%eax, %xmm1	 # _149,
	movd	%ebx, %xmm0	 # _147,
	call	fmaxf	 #
	movd	%xmm0, %eax	 #, _150
 # ./test/pdsp_test.c:1289:     pdsp_macro_setp_set_dest(setpm, 8.0f);
	movl	%eax, -48(%rbp)	 # _150, setpm.f32_dest
 # ./test/pdsp_test.c:1290:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _151
	movss	-48(%rbp), %xmm1	 # setpm.f32_dest, _152
	subss	%xmm1, %xmm0	 # _152, _153
	movss	.LC132(%rip), %xmm1	 #, tmp517
	andps	%xmm0, %xmm1	 # _153, _154
	movss	.LC124(%rip), %xmm0	 #, tmp518
	comiss	%xmm1, %xmm0	 # _154, tmp518
	jbe	.L1102	 #,
 # ./test/pdsp_test.c:1290:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movl	$1290, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp519
	movq	%rax, %rdx	 # tmp519,
	leaq	.LC3(%rip), %rax	 #, tmp520
	movq	%rax, %rcx	 # tmp520,
	call	printf	 #
.L1102:
 # ./test/pdsp_test.c:1291:     pdsp_macro_setp_exp(setpm);
	movss	-52(%rbp), %xmm1	 # setpm.f32_x1, _155
	movss	-56(%rbp), %xmm2	 # setpm.f32_step, _156
	movss	-48(%rbp), %xmm0	 # setpm.f32_dest, _157
	movss	-52(%rbp), %xmm3	 # setpm.f32_x1, _158
	subss	%xmm3, %xmm0	 # _158, _159
	mulss	%xmm2, %xmm0	 # _156, _160
	addss	%xmm1, %xmm0	 # _155, _161
	movss	%xmm0, -52(%rbp)	 # _161, setpm.f32_x1
 # ./test/pdsp_test.c:1292:     PDSP_ASSERT(setpm.f32_x1 == 4.0f);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _162
	ucomiss	.LC32(%rip), %xmm0	 #, _162
	jp	.L1160	 #,
	ucomiss	.LC32(%rip), %xmm0	 #, _162
	je	.L1104	 #,
.L1160:
 # ./test/pdsp_test.c:1292:     PDSP_ASSERT(setpm.f32_x1 == 4.0f);
	movl	$1292, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp521
	movq	%rax, %rdx	 # tmp521,
	leaq	.LC3(%rip), %rax	 #, tmp522
	movq	%rax, %rcx	 # tmp522,
	call	printf	 #
.L1104:
 # ./test/pdsp_test.c:1293:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _163
	movss	-48(%rbp), %xmm1	 # setpm.f32_dest, _164
	subss	%xmm1, %xmm0	 # _164, _165
	movss	.LC132(%rip), %xmm1	 #, tmp523
	andps	%xmm0, %xmm1	 # _165, _166
	movss	.LC124(%rip), %xmm0	 #, tmp524
	comiss	%xmm1, %xmm0	 # _166, tmp524
	jbe	.L1106	 #,
 # ./test/pdsp_test.c:1293:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movl	$1293, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp525
	movq	%rax, %rdx	 # tmp525,
	leaq	.LC3(%rip), %rax	 #, tmp526
	movq	%rax, %rcx	 # tmp526,
	call	printf	 #
.L1106:
 # ./test/pdsp_test.c:1294:     pdsp_macro_setp_exp(setpm);
	movss	-52(%rbp), %xmm1	 # setpm.f32_x1, _167
	movss	-56(%rbp), %xmm2	 # setpm.f32_step, _168
	movss	-48(%rbp), %xmm0	 # setpm.f32_dest, _169
	movss	-52(%rbp), %xmm3	 # setpm.f32_x1, _170
	subss	%xmm3, %xmm0	 # _170, _171
	mulss	%xmm2, %xmm0	 # _168, _172
	addss	%xmm1, %xmm0	 # _167, _173
	movss	%xmm0, -52(%rbp)	 # _173, setpm.f32_x1
 # ./test/pdsp_test.c:1295:     PDSP_ASSERT(setpm.f32_x1 == 6.0f);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _174
	ucomiss	.LC47(%rip), %xmm0	 #, _174
	jp	.L1162	 #,
	ucomiss	.LC47(%rip), %xmm0	 #, _174
	je	.L1108	 #,
.L1162:
 # ./test/pdsp_test.c:1295:     PDSP_ASSERT(setpm.f32_x1 == 6.0f);
	movl	$1295, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp527
	movq	%rax, %rdx	 # tmp527,
	leaq	.LC3(%rip), %rax	 #, tmp528
	movq	%rax, %rcx	 # tmp528,
	call	printf	 #
.L1108:
 # ./test/pdsp_test.c:1296:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _175
	movss	-48(%rbp), %xmm1	 # setpm.f32_dest, _176
	subss	%xmm1, %xmm0	 # _176, _177
	movss	.LC132(%rip), %xmm1	 #, tmp529
	andps	%xmm0, %xmm1	 # _177, _178
	movss	.LC124(%rip), %xmm0	 #, tmp530
	comiss	%xmm1, %xmm0	 # _178, tmp530
	jbe	.L1110	 #,
 # ./test/pdsp_test.c:1296:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movl	$1296, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp531
	movq	%rax, %rdx	 # tmp531,
	leaq	.LC3(%rip), %rax	 #, tmp532
	movq	%rax, %rcx	 # tmp532,
	call	printf	 #
.L1110:
 # ./test/pdsp_test.c:1297:     pdsp_macro_setp_exp(setpm);
	movss	-52(%rbp), %xmm1	 # setpm.f32_x1, _179
	movss	-56(%rbp), %xmm2	 # setpm.f32_step, _180
	movss	-48(%rbp), %xmm0	 # setpm.f32_dest, _181
	movss	-52(%rbp), %xmm3	 # setpm.f32_x1, _182
	subss	%xmm3, %xmm0	 # _182, _183
	mulss	%xmm2, %xmm0	 # _180, _184
	addss	%xmm1, %xmm0	 # _179, _185
	movss	%xmm0, -52(%rbp)	 # _185, setpm.f32_x1
 # ./test/pdsp_test.c:1298:     PDSP_ASSERT(setpm.f32_x1 == 7.0f);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _186
	ucomiss	.LC125(%rip), %xmm0	 #, _186
	jp	.L1164	 #,
	ucomiss	.LC125(%rip), %xmm0	 #, _186
	je	.L1112	 #,
.L1164:
 # ./test/pdsp_test.c:1298:     PDSP_ASSERT(setpm.f32_x1 == 7.0f);
	movl	$1298, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp533
	movq	%rax, %rdx	 # tmp533,
	leaq	.LC3(%rip), %rax	 #, tmp534
	movq	%rax, %rcx	 # tmp534,
	call	printf	 #
.L1112:
 # ./test/pdsp_test.c:1299:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _187
	movss	-48(%rbp), %xmm1	 # setpm.f32_dest, _188
	subss	%xmm1, %xmm0	 # _188, _189
	movss	.LC132(%rip), %xmm1	 #, tmp535
	andps	%xmm0, %xmm1	 # _189, _190
	movss	.LC124(%rip), %xmm0	 #, tmp536
	comiss	%xmm1, %xmm0	 # _190, tmp536
	jbe	.L1114	 #,
 # ./test/pdsp_test.c:1299:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movl	$1299, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp537
	movq	%rax, %rdx	 # tmp537,
	leaq	.LC3(%rip), %rax	 #, tmp538
	movq	%rax, %rcx	 # tmp538,
	call	printf	 #
.L1114:
 # ./test/pdsp_test.c:1300:     pdsp_macro_setp_exp(setpm);
	movss	-52(%rbp), %xmm1	 # setpm.f32_x1, _191
	movss	-56(%rbp), %xmm2	 # setpm.f32_step, _192
	movss	-48(%rbp), %xmm0	 # setpm.f32_dest, _193
	movss	-52(%rbp), %xmm3	 # setpm.f32_x1, _194
	subss	%xmm3, %xmm0	 # _194, _195
	mulss	%xmm2, %xmm0	 # _192, _196
	addss	%xmm1, %xmm0	 # _191, _197
	movss	%xmm0, -52(%rbp)	 # _197, setpm.f32_x1
 # ./test/pdsp_test.c:1301:     PDSP_ASSERT(setpm.f32_x1 == 7.5f);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _198
	ucomiss	.LC126(%rip), %xmm0	 #, _198
	jp	.L1166	 #,
	ucomiss	.LC126(%rip), %xmm0	 #, _198
	je	.L1116	 #,
.L1166:
 # ./test/pdsp_test.c:1301:     PDSP_ASSERT(setpm.f32_x1 == 7.5f);
	movl	$1301, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp539
	movq	%rax, %rdx	 # tmp539,
	leaq	.LC3(%rip), %rax	 #, tmp540
	movq	%rax, %rcx	 # tmp540,
	call	printf	 #
.L1116:
 # ./test/pdsp_test.c:1302:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _199
	movss	-48(%rbp), %xmm1	 # setpm.f32_dest, _200
	subss	%xmm1, %xmm0	 # _200, _201
	movss	.LC132(%rip), %xmm1	 #, tmp541
	andps	%xmm0, %xmm1	 # _201, _202
	movss	.LC124(%rip), %xmm0	 #, tmp542
	comiss	%xmm1, %xmm0	 # _202, tmp542
	jbe	.L1118	 #,
 # ./test/pdsp_test.c:1302:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movl	$1302, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp543
	movq	%rax, %rdx	 # tmp543,
	leaq	.LC3(%rip), %rax	 #, tmp544
	movq	%rax, %rcx	 # tmp544,
	call	printf	 #
.L1118:
 # ./test/pdsp_test.c:1303:     pdsp_macro_setp_exp(setpm);
	movss	-52(%rbp), %xmm1	 # setpm.f32_x1, _203
	movss	-56(%rbp), %xmm2	 # setpm.f32_step, _204
	movss	-48(%rbp), %xmm0	 # setpm.f32_dest, _205
	movss	-52(%rbp), %xmm3	 # setpm.f32_x1, _206
	subss	%xmm3, %xmm0	 # _206, _207
	mulss	%xmm2, %xmm0	 # _204, _208
	addss	%xmm1, %xmm0	 # _203, _209
	movss	%xmm0, -52(%rbp)	 # _209, setpm.f32_x1
 # ./test/pdsp_test.c:1304:     PDSP_ASSERT(setpm.f32_x1 == 7.75f);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _210
	ucomiss	.LC127(%rip), %xmm0	 #, _210
	jp	.L1168	 #,
	ucomiss	.LC127(%rip), %xmm0	 #, _210
	je	.L1120	 #,
.L1168:
 # ./test/pdsp_test.c:1304:     PDSP_ASSERT(setpm.f32_x1 == 7.75f);
	movl	$1304, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp545
	movq	%rax, %rdx	 # tmp545,
	leaq	.LC3(%rip), %rax	 #, tmp546
	movq	%rax, %rcx	 # tmp546,
	call	printf	 #
.L1120:
 # ./test/pdsp_test.c:1305:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _211
	movss	-48(%rbp), %xmm1	 # setpm.f32_dest, _212
	subss	%xmm1, %xmm0	 # _212, _213
	movss	.LC132(%rip), %xmm1	 #, tmp547
	andps	%xmm0, %xmm1	 # _213, _214
	movss	.LC124(%rip), %xmm0	 #, tmp548
	comiss	%xmm1, %xmm0	 # _214, tmp548
	jbe	.L1122	 #,
 # ./test/pdsp_test.c:1305:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.1f) == PDSP_FALSE);
	movl	$1305, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp549
	movq	%rax, %rdx	 # tmp549,
	leaq	.LC3(%rip), %rax	 #, tmp550
	movq	%rax, %rcx	 # tmp550,
	call	printf	 #
.L1122:
 # ./test/pdsp_test.c:1306:     pdsp_macro_setp_exp(setpm);
	movss	-52(%rbp), %xmm1	 # setpm.f32_x1, _215
	movss	-56(%rbp), %xmm2	 # setpm.f32_step, _216
	movss	-48(%rbp), %xmm0	 # setpm.f32_dest, _217
	movss	-52(%rbp), %xmm3	 # setpm.f32_x1, _218
	subss	%xmm3, %xmm0	 # _218, _219
	mulss	%xmm2, %xmm0	 # _216, _220
	addss	%xmm1, %xmm0	 # _215, _221
	movss	%xmm0, -52(%rbp)	 # _221, setpm.f32_x1
 # ./test/pdsp_test.c:1307:     PDSP_ASSERT(setpm.f32_x1 == 7.875f);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _222
	ucomiss	.LC128(%rip), %xmm0	 #, _222
	jp	.L1170	 #,
	ucomiss	.LC128(%rip), %xmm0	 #, _222
	je	.L1124	 #,
.L1170:
 # ./test/pdsp_test.c:1307:     PDSP_ASSERT(setpm.f32_x1 == 7.875f);
	movl	$1307, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp551
	movq	%rax, %rdx	 # tmp551,
	leaq	.LC3(%rip), %rax	 #, tmp552
	movq	%rax, %rcx	 # tmp552,
	call	printf	 #
.L1124:
 # ./test/pdsp_test.c:1308:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.2f) == PDSP_TRUE);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _223
	movss	-48(%rbp), %xmm1	 # setpm.f32_dest, _224
	subss	%xmm1, %xmm0	 # _224, _225
	movss	.LC132(%rip), %xmm1	 #, tmp553
	andps	%xmm0, %xmm1	 # _225, _226
	movss	.LC129(%rip), %xmm0	 #, tmp554
	comiss	%xmm1, %xmm0	 # _226, tmp554
	seta	%al	 #, _227
	xorl	$1, %eax	 #, _228
	testb	%al, %al	 # _228
	je	.L1126	 #,
 # ./test/pdsp_test.c:1308:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.2f) == PDSP_TRUE);
	movl	$1308, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp555
	movq	%rax, %rdx	 # tmp555,
	leaq	.LC3(%rip), %rax	 #, tmp556
	movq	%rax, %rcx	 # tmp556,
	call	printf	 #
.L1126:
 # ./test/pdsp_test.c:1310:     pdsp_macro_setp_reset(setpm, 8.0f);
	movl	-64(%rbp), %ebx	 # setpm.f32_min, _229
	movl	-60(%rbp), %eax	 # setpm.f32_max, _230
	movss	.LC48(%rip), %xmm1	 #,
	movd	%eax, %xmm0	 # _230,
	call	fminf	 #
	movd	%xmm0, %eax	 #, _231
 # ./test/pdsp_test.c:1310:     pdsp_macro_setp_reset(setpm, 8.0f);
	movd	%eax, %xmm1	 # _231,
	movd	%ebx, %xmm0	 # _229,
	call	fmaxf	 #
	movd	%xmm0, %eax	 #, _232
 # ./test/pdsp_test.c:1310:     pdsp_macro_setp_reset(setpm, 8.0f);
	movl	%eax, -52(%rbp)	 # _232, setpm.f32_x1
 # ./test/pdsp_test.c:1311:     PDSP_ASSERT(setpm.f32_x1 == 8.0f);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _233
	ucomiss	.LC48(%rip), %xmm0	 #, _233
	jp	.L1171	 #,
	ucomiss	.LC48(%rip), %xmm0	 #, _233
	je	.L1127	 #,
.L1171:
 # ./test/pdsp_test.c:1311:     PDSP_ASSERT(setpm.f32_x1 == 8.0f);
	movl	$1311, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp557
	movq	%rax, %rdx	 # tmp557,
	leaq	.LC3(%rip), %rax	 #, tmp558
	movq	%rax, %rcx	 # tmp558,
	call	printf	 #
.L1127:
 # ./test/pdsp_test.c:1312:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.001f) == PDSP_TRUE);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _234
	movss	-48(%rbp), %xmm1	 # setpm.f32_dest, _235
	subss	%xmm1, %xmm0	 # _235, _236
	movss	.LC132(%rip), %xmm1	 #, tmp559
	andps	%xmm0, %xmm1	 # _236, _237
	movss	.LC130(%rip), %xmm0	 #, tmp560
	comiss	%xmm1, %xmm0	 # _237, tmp560
	seta	%al	 #, _238
	xorl	$1, %eax	 #, _239
	testb	%al, %al	 # _239
	je	.L1129	 #,
 # ./test/pdsp_test.c:1312:     PDSP_ASSERT(pdsp_macro_setp_reached(setpm, 0.001f) == PDSP_TRUE);
	movl	$1312, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp561
	movq	%rax, %rdx	 # tmp561,
	leaq	.LC3(%rip), %rax	 #, tmp562
	movq	%rax, %rcx	 # tmp562,
	call	printf	 #
.L1129:
 # ./test/pdsp_test.c:1313:     pdsp_macro_setp_reset(setpm, 80.0f);
	movl	-64(%rbp), %ebx	 # setpm.f32_min, _240
	movl	-60(%rbp), %eax	 # setpm.f32_max, _241
	movss	.LC131(%rip), %xmm1	 #,
	movd	%eax, %xmm0	 # _241,
	call	fminf	 #
	movd	%xmm0, %eax	 #, _242
 # ./test/pdsp_test.c:1313:     pdsp_macro_setp_reset(setpm, 80.0f);
	movd	%eax, %xmm1	 # _242,
	movd	%ebx, %xmm0	 # _240,
	call	fmaxf	 #
	movd	%xmm0, %eax	 #, _243
 # ./test/pdsp_test.c:1313:     pdsp_macro_setp_reset(setpm, 80.0f);
	movl	%eax, -52(%rbp)	 # _243, setpm.f32_x1
 # ./test/pdsp_test.c:1314:     PDSP_ASSERT(setpm.f32_x1 == 10.0f);
	movss	-52(%rbp), %xmm0	 # setpm.f32_x1, _244
	ucomiss	.LC28(%rip), %xmm0	 #, _244
	jp	.L1172	 #,
	ucomiss	.LC28(%rip), %xmm0	 #, _244
	je	.L1173	 #,
.L1172:
 # ./test/pdsp_test.c:1314:     PDSP_ASSERT(setpm.f32_x1 == 10.0f);
	movl	$1314, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp563
	movq	%rax, %rdx	 # tmp563,
	leaq	.LC3(%rip), %rax	 #, tmp564
	movq	%rax, %rcx	 # tmp564,
	call	printf	 #
.L1173:
 # ./test/pdsp_test.c:1315: }
	nop	
	movups	0(%rbp), %xmm6	 #,
	addq	$120, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC134:
	.ascii "-- void test_setp_smooth(void) --\12\0"
	.text
	.globl	test_setp_smooth
	.def	test_setp_smooth;	.scl	2;	.type	32;	.endef
	.seh_proc	test_setp_smooth
test_setp_smooth:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$96, %rsp	 #,
	.seh_stackalloc	96
	.seh_endprologue
 # ./test/pdsp_test.c:1319:     printf("-- void test_setp_smooth(void) --\n");
	leaq	.LC134(%rip), %rax	 #, tmp167
	movq	%rax, %rcx	 # tmp167,
	call	printf	 #
 # ./test/pdsp_test.c:1320:     pdsp_setp_smooth_var_t setp_var = {0};
	pxor	%xmm0, %xmm0	 # tmp168
	movups	%xmm0, -32(%rbp)	 # tmp168, setp_var
	movq	%xmm0, -16(%rbp)	 # tmp168, setp_var
 # ./test/pdsp_test.c:1321:     pdsp_setp_smooth_t setp = {
	leaq	-32(%rbp), %rax	 #, tmp169
	movq	%rax, -64(%rbp)	 # tmp169, setp.ps_var
	pxor	%xmm0, %xmm0	 # tmp170
	movss	%xmm0, -56(%rbp)	 # tmp170, setp.f32_min
	movss	.LC28(%rip), %xmm0	 #, tmp171
	movss	%xmm0, -52(%rbp)	 # tmp171, setp.f32_max
	movss	.LC23(%rip), %xmm0	 #, tmp172
	movss	%xmm0, -48(%rbp)	 # tmp172, setp.f32_ts
 # ./test/pdsp_test.c:1323:     pdsp_setp_smooth_init(&setp);
	leaq	-64(%rbp), %rax	 #, tmp173
	movq	%rax, %rcx	 # tmp173,
	call	pdsp_setp_smooth_init	 #
 # ./test/pdsp_test.c:1324:     PDSP_ASSERT(setp_var.f32_x1 == 1.0f);
	movss	-32(%rbp), %xmm0	 # setp_var.f32_x1, _1
	movss	.LC23(%rip), %xmm1	 #, tmp174
	ucomiss	%xmm1, %xmm0	 # tmp174, _1
	jp	.L1290	 #,
	movss	.LC23(%rip), %xmm1	 #, tmp175
	ucomiss	%xmm1, %xmm0	 # tmp175, _1
	je	.L1175	 #,
.L1290:
 # ./test/pdsp_test.c:1324:     PDSP_ASSERT(setp_var.f32_x1 == 1.0f);
	movl	$1324, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp176
	movq	%rax, %rdx	 # tmp176,
	leaq	.LC3(%rip), %rax	 #, tmp177
	movq	%rax, %rcx	 # tmp177,
	call	printf	 #
.L1175:
 # ./test/pdsp_test.c:1325:     PDSP_ASSERT(setp_var.f32_dx1 == 0.1f);
	movss	-28(%rbp), %xmm0	 # setp_var.f32_dx1, _2
	ucomiss	.LC124(%rip), %xmm0	 #, _2
	jp	.L1291	 #,
	ucomiss	.LC124(%rip), %xmm0	 #, _2
	je	.L1177	 #,
.L1291:
 # ./test/pdsp_test.c:1325:     PDSP_ASSERT(setp_var.f32_dx1 == 0.1f);
	movl	$1325, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp178
	movq	%rax, %rdx	 # tmp178,
	leaq	.LC3(%rip), %rax	 #, tmp179
	movq	%rax, %rcx	 # tmp179,
	call	printf	 #
.L1177:
 # ./test/pdsp_test.c:1326:     PDSP_ASSERT(setp_var.f32_x2 == 0.0f);
	movss	-24(%rbp), %xmm0	 # setp_var.f32_x2, _3
	pxor	%xmm1, %xmm1	 # tmp180
	ucomiss	%xmm1, %xmm0	 # tmp180, _3
	jp	.L1292	 #,
	pxor	%xmm1, %xmm1	 # tmp181
	ucomiss	%xmm1, %xmm0	 # tmp181, _3
	je	.L1179	 #,
.L1292:
 # ./test/pdsp_test.c:1326:     PDSP_ASSERT(setp_var.f32_x2 == 0.0f);
	movl	$1326, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp182
	movq	%rax, %rdx	 # tmp182,
	leaq	.LC3(%rip), %rax	 #, tmp183
	movq	%rax, %rcx	 # tmp183,
	call	printf	 #
.L1179:
 # ./test/pdsp_test.c:1327:     PDSP_ASSERT(setp_var.f32_start == 0.0f);
	movss	-20(%rbp), %xmm0	 # setp_var.f32_start, _4
	pxor	%xmm1, %xmm1	 # tmp184
	ucomiss	%xmm1, %xmm0	 # tmp184, _4
	jp	.L1293	 #,
	pxor	%xmm1, %xmm1	 # tmp185
	ucomiss	%xmm1, %xmm0	 # tmp185, _4
	je	.L1181	 #,
.L1293:
 # ./test/pdsp_test.c:1327:     PDSP_ASSERT(setp_var.f32_start == 0.0f);
	movl	$1327, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp186
	movq	%rax, %rdx	 # tmp186,
	leaq	.LC3(%rip), %rax	 #, tmp187
	movq	%rax, %rcx	 # tmp187,
	call	printf	 #
.L1181:
 # ./test/pdsp_test.c:1328:     PDSP_ASSERT(setp_var.f32_dest == 0.0f);
	movss	-16(%rbp), %xmm0	 # setp_var.f32_dest, _5
	pxor	%xmm1, %xmm1	 # tmp188
	ucomiss	%xmm1, %xmm0	 # tmp188, _5
	jp	.L1294	 #,
	pxor	%xmm1, %xmm1	 # tmp189
	ucomiss	%xmm1, %xmm0	 # tmp189, _5
	je	.L1183	 #,
.L1294:
 # ./test/pdsp_test.c:1328:     PDSP_ASSERT(setp_var.f32_dest == 0.0f);
	movl	$1328, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp190
	movq	%rax, %rdx	 # tmp190,
	leaq	.LC3(%rip), %rax	 #, tmp191
	movq	%rax, %rcx	 # tmp191,
	call	printf	 #
.L1183:
 # ./test/pdsp_test.c:1329:     PDSP_ASSERT(setp_var.f32_dest_pend == 0.0f);
	movss	-12(%rbp), %xmm0	 # setp_var.f32_dest_pend, _6
	pxor	%xmm1, %xmm1	 # tmp192
	ucomiss	%xmm1, %xmm0	 # tmp192, _6
	jp	.L1295	 #,
	pxor	%xmm1, %xmm1	 # tmp193
	ucomiss	%xmm1, %xmm0	 # tmp193, _6
	je	.L1185	 #,
.L1295:
 # ./test/pdsp_test.c:1329:     PDSP_ASSERT(setp_var.f32_dest_pend == 0.0f);
	movl	$1329, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp194
	movq	%rax, %rdx	 # tmp194,
	leaq	.LC3(%rip), %rax	 #, tmp195
	movq	%rax, %rcx	 # tmp195,
	call	printf	 #
.L1185:
 # ./test/pdsp_test.c:1331:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	leaq	-64(%rbp), %rax	 #, tmp196
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp196,
	call	pdsp_setp_smooth_reached	 #
 # ./test/pdsp_test.c:1331:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _8
	testb	%al, %al	 # _8
	je	.L1187	 #,
	movl	$1331, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp197
	movq	%rax, %rdx	 # tmp197,
	leaq	.LC3(%rip), %rax	 #, tmp198
	movq	%rax, %rcx	 # tmp198,
	call	printf	 #
.L1187:
 # ./test/pdsp_test.c:1332:     pdsp_setp_smooth_set_time(&setp, 2.0f);
	leaq	-64(%rbp), %rax	 #, tmp199
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp199,
	call	pdsp_setp_smooth_set_time	 #
 # ./test/pdsp_test.c:1333:     PDSP_ASSERT(setp_var.f32_dx1 == 0.5f);
	movss	-28(%rbp), %xmm0	 # setp_var.f32_dx1, _9
	ucomiss	.LC37(%rip), %xmm0	 #, _9
	jp	.L1296	 #,
	ucomiss	.LC37(%rip), %xmm0	 #, _9
	je	.L1188	 #,
.L1296:
 # ./test/pdsp_test.c:1333:     PDSP_ASSERT(setp_var.f32_dx1 == 0.5f);
	movl	$1333, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp200
	movq	%rax, %rdx	 # tmp200,
	leaq	.LC3(%rip), %rax	 #, tmp201
	movq	%rax, %rcx	 # tmp201,
	call	printf	 #
.L1188:
 # ./test/pdsp_test.c:1334:     pdsp_setp_smooth_set_dest(&setp, 4.0f);
	leaq	-64(%rbp), %rax	 #, tmp202
	movss	.LC32(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp202,
	call	pdsp_setp_smooth_set_dest	 #
 # ./test/pdsp_test.c:1335:     PDSP_ASSERT(setp_var.f32_dest_pend == 4.0f);
	movss	-12(%rbp), %xmm0	 # setp_var.f32_dest_pend, _10
	ucomiss	.LC32(%rip), %xmm0	 #, _10
	jp	.L1297	 #,
	ucomiss	.LC32(%rip), %xmm0	 #, _10
	je	.L1190	 #,
.L1297:
 # ./test/pdsp_test.c:1335:     PDSP_ASSERT(setp_var.f32_dest_pend == 4.0f);
	movl	$1335, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp203
	movq	%rax, %rdx	 # tmp203,
	leaq	.LC3(%rip), %rax	 #, tmp204
	movq	%rax, %rcx	 # tmp204,
	call	printf	 #
.L1190:
 # ./test/pdsp_test.c:1336:     PDSP_ASSERT(setp_var.f32_dest_pend != setp_var.f32_dest);
	movss	-12(%rbp), %xmm0	 # setp_var.f32_dest_pend, _11
	movss	-16(%rbp), %xmm1	 # setp_var.f32_dest, _12
	ucomiss	%xmm1, %xmm0	 # _12, _11
	jp	.L1192	 #,
	ucomiss	%xmm1, %xmm0	 # _12, _11
	jne	.L1192	 #,
 # ./test/pdsp_test.c:1336:     PDSP_ASSERT(setp_var.f32_dest_pend != setp_var.f32_dest);
	movl	$1336, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp205
	movq	%rax, %rdx	 # tmp205,
	leaq	.LC3(%rip), %rax	 #, tmp206
	movq	%rax, %rcx	 # tmp206,
	call	printf	 #
.L1192:
 # ./test/pdsp_test.c:1337:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	leaq	-64(%rbp), %rax	 #, tmp207
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp207,
	call	pdsp_setp_smooth_reached	 #
 # ./test/pdsp_test.c:1337:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _14
	testb	%al, %al	 # _14
	je	.L1194	 #,
	movl	$1337, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp208
	movq	%rax, %rdx	 # tmp208,
	leaq	.LC3(%rip), %rax	 #, tmp209
	movq	%rax, %rcx	 # tmp209,
	call	printf	 #
.L1194:
 # ./test/pdsp_test.c:1339:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 0.0f);
	leaq	-64(%rbp), %rax	 #, tmp210
	movq	%rax, %rcx	 # tmp210,
	call	pdsp_setp_smooth	 #
	movd	%xmm0, %eax	 #, _15
 # ./test/pdsp_test.c:1339:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 0.0f);
	pxor	%xmm0, %xmm0	 # tmp211
	movd	%eax, %xmm2	 # _15, _15
	ucomiss	%xmm0, %xmm2	 # tmp211, _15
	jp	.L1299	 #,
	pxor	%xmm0, %xmm0	 # tmp212
	movd	%eax, %xmm3	 # _15, _15
	ucomiss	%xmm0, %xmm3	 # tmp212, _15
	je	.L1195	 #,
.L1299:
	movl	$1339, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp213
	movq	%rax, %rdx	 # tmp213,
	leaq	.LC3(%rip), %rax	 #, tmp214
	movq	%rax, %rcx	 # tmp214,
	call	printf	 #
.L1195:
 # ./test/pdsp_test.c:1340:     PDSP_ASSERT(setp_var.f32_dest_pend == setp_var.f32_dest);
	movss	-12(%rbp), %xmm0	 # setp_var.f32_dest_pend, _16
	movss	-16(%rbp), %xmm1	 # setp_var.f32_dest, _17
	ucomiss	%xmm1, %xmm0	 # _17, _16
	jp	.L1300	 #,
	ucomiss	%xmm1, %xmm0	 # _17, _16
	je	.L1197	 #,
.L1300:
 # ./test/pdsp_test.c:1340:     PDSP_ASSERT(setp_var.f32_dest_pend == setp_var.f32_dest);
	movl	$1340, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp215
	movq	%rax, %rdx	 # tmp215,
	leaq	.LC3(%rip), %rax	 #, tmp216
	movq	%rax, %rcx	 # tmp216,
	call	printf	 #
.L1197:
 # ./test/pdsp_test.c:1341:     PDSP_ASSERT(setp_var.f32_x1 == 0.5f);
	movss	-32(%rbp), %xmm0	 # setp_var.f32_x1, _18
	ucomiss	.LC37(%rip), %xmm0	 #, _18
	jp	.L1301	 #,
	ucomiss	.LC37(%rip), %xmm0	 #, _18
	je	.L1199	 #,
.L1301:
 # ./test/pdsp_test.c:1341:     PDSP_ASSERT(setp_var.f32_x1 == 0.5f);
	movl	$1341, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp217
	movq	%rax, %rdx	 # tmp217,
	leaq	.LC3(%rip), %rax	 #, tmp218
	movq	%rax, %rcx	 # tmp218,
	call	printf	 #
.L1199:
 # ./test/pdsp_test.c:1342:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_FALSE);
	leaq	-64(%rbp), %rax	 #, tmp219
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp219,
	call	pdsp_setp_smooth_reached	 #
 # ./test/pdsp_test.c:1342:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_FALSE);
	testb	%al, %al	 # _19
	je	.L1201	 #,
	movl	$1342, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp220
	movq	%rax, %rdx	 # tmp220,
	leaq	.LC3(%rip), %rax	 #, tmp221
	movq	%rax, %rcx	 # tmp221,
	call	printf	 #
.L1201:
 # ./test/pdsp_test.c:1344:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 2.0f);
	leaq	-64(%rbp), %rax	 #, tmp222
	movq	%rax, %rcx	 # tmp222,
	call	pdsp_setp_smooth	 #
	movd	%xmm0, %eax	 #, _20
 # ./test/pdsp_test.c:1344:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 2.0f);
	movd	%eax, %xmm4	 # _20, _20
	ucomiss	.LC22(%rip), %xmm4	 #, _20
	jp	.L1302	 #,
	movd	%eax, %xmm5	 # _20, _20
	ucomiss	.LC22(%rip), %xmm5	 #, _20
	je	.L1202	 #,
.L1302:
	movl	$1344, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp223
	movq	%rax, %rdx	 # tmp223,
	leaq	.LC3(%rip), %rax	 #, tmp224
	movq	%rax, %rcx	 # tmp224,
	call	printf	 #
.L1202:
 # ./test/pdsp_test.c:1345:     PDSP_ASSERT(setp_var.f32_x1 == 1.0f);
	movss	-32(%rbp), %xmm0	 # setp_var.f32_x1, _21
	movss	.LC23(%rip), %xmm1	 #, tmp225
	ucomiss	%xmm1, %xmm0	 # tmp225, _21
	jp	.L1303	 #,
	movss	.LC23(%rip), %xmm1	 #, tmp226
	ucomiss	%xmm1, %xmm0	 # tmp226, _21
	je	.L1204	 #,
.L1303:
 # ./test/pdsp_test.c:1345:     PDSP_ASSERT(setp_var.f32_x1 == 1.0f);
	movl	$1345, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp227
	movq	%rax, %rdx	 # tmp227,
	leaq	.LC3(%rip), %rax	 #, tmp228
	movq	%rax, %rcx	 # tmp228,
	call	printf	 #
.L1204:
 # ./test/pdsp_test.c:1346:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	leaq	-64(%rbp), %rax	 #, tmp229
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp229,
	call	pdsp_setp_smooth_reached	 #
 # ./test/pdsp_test.c:1346:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _23
	testb	%al, %al	 # _23
	je	.L1206	 #,
	movl	$1346, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp230
	movq	%rax, %rdx	 # tmp230,
	leaq	.LC3(%rip), %rax	 #, tmp231
	movq	%rax, %rcx	 # tmp231,
	call	printf	 #
.L1206:
 # ./test/pdsp_test.c:1348:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 4.0f);
	leaq	-64(%rbp), %rax	 #, tmp232
	movq	%rax, %rcx	 # tmp232,
	call	pdsp_setp_smooth	 #
	movd	%xmm0, %eax	 #, _24
 # ./test/pdsp_test.c:1348:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 4.0f);
	movd	%eax, %xmm2	 # _24, _24
	ucomiss	.LC32(%rip), %xmm2	 #, _24
	jp	.L1304	 #,
	movd	%eax, %xmm3	 # _24, _24
	ucomiss	.LC32(%rip), %xmm3	 #, _24
	je	.L1207	 #,
.L1304:
	movl	$1348, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp233
	movq	%rax, %rdx	 # tmp233,
	leaq	.LC3(%rip), %rax	 #, tmp234
	movq	%rax, %rcx	 # tmp234,
	call	printf	 #
.L1207:
 # ./test/pdsp_test.c:1349:     PDSP_ASSERT(setp_var.f32_x1 == 1.0f);
	movss	-32(%rbp), %xmm0	 # setp_var.f32_x1, _25
	movss	.LC23(%rip), %xmm1	 #, tmp235
	ucomiss	%xmm1, %xmm0	 # tmp235, _25
	jp	.L1305	 #,
	movss	.LC23(%rip), %xmm1	 #, tmp236
	ucomiss	%xmm1, %xmm0	 # tmp236, _25
	je	.L1209	 #,
.L1305:
 # ./test/pdsp_test.c:1349:     PDSP_ASSERT(setp_var.f32_x1 == 1.0f);
	movl	$1349, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp237
	movq	%rax, %rdx	 # tmp237,
	leaq	.LC3(%rip), %rax	 #, tmp238
	movq	%rax, %rcx	 # tmp238,
	call	printf	 #
.L1209:
 # ./test/pdsp_test.c:1350:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	leaq	-64(%rbp), %rax	 #, tmp239
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp239,
	call	pdsp_setp_smooth_reached	 #
 # ./test/pdsp_test.c:1350:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _27
	testb	%al, %al	 # _27
	je	.L1211	 #,
	movl	$1350, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp240
	movq	%rax, %rdx	 # tmp240,
	leaq	.LC3(%rip), %rax	 #, tmp241
	movq	%rax, %rcx	 # tmp241,
	call	printf	 #
.L1211:
 # ./test/pdsp_test.c:1352:     pdsp_setp_smooth_init(&setp);
	leaq	-64(%rbp), %rax	 #, tmp242
	movq	%rax, %rcx	 # tmp242,
	call	pdsp_setp_smooth_init	 #
 # ./test/pdsp_test.c:1353:     pdsp_setp_smooth_set_time(&setp, 0.0f);
	leaq	-64(%rbp), %rax	 #, tmp243
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp243,
	call	pdsp_setp_smooth_set_time	 #
 # ./test/pdsp_test.c:1354:     PDSP_ASSERT(setp_var.f32_dx1 == 1.f);
	movss	-28(%rbp), %xmm0	 # setp_var.f32_dx1, _28
	movss	.LC23(%rip), %xmm1	 #, tmp244
	ucomiss	%xmm1, %xmm0	 # tmp244, _28
	jp	.L1306	 #,
	movss	.LC23(%rip), %xmm1	 #, tmp245
	ucomiss	%xmm1, %xmm0	 # tmp245, _28
	je	.L1212	 #,
.L1306:
 # ./test/pdsp_test.c:1354:     PDSP_ASSERT(setp_var.f32_dx1 == 1.f);
	movl	$1354, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp246
	movq	%rax, %rdx	 # tmp246,
	leaq	.LC3(%rip), %rax	 #, tmp247
	movq	%rax, %rcx	 # tmp247,
	call	printf	 #
.L1212:
 # ./test/pdsp_test.c:1355:     pdsp_setp_smooth_set_dest(&setp, 4.0f);
	leaq	-64(%rbp), %rax	 #, tmp248
	movss	.LC32(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp248,
	call	pdsp_setp_smooth_set_dest	 #
 # ./test/pdsp_test.c:1356:     PDSP_ASSERT(setp_var.f32_dest_pend == 4.0f);
	movss	-12(%rbp), %xmm0	 # setp_var.f32_dest_pend, _29
	ucomiss	.LC32(%rip), %xmm0	 #, _29
	jp	.L1307	 #,
	ucomiss	.LC32(%rip), %xmm0	 #, _29
	je	.L1214	 #,
.L1307:
 # ./test/pdsp_test.c:1356:     PDSP_ASSERT(setp_var.f32_dest_pend == 4.0f);
	movl	$1356, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp249
	movq	%rax, %rdx	 # tmp249,
	leaq	.LC3(%rip), %rax	 #, tmp250
	movq	%rax, %rcx	 # tmp250,
	call	printf	 #
.L1214:
 # ./test/pdsp_test.c:1357:     PDSP_ASSERT(setp_var.f32_dest_pend != setp_var.f32_dest);
	movss	-12(%rbp), %xmm0	 # setp_var.f32_dest_pend, _30
	movss	-16(%rbp), %xmm1	 # setp_var.f32_dest, _31
	ucomiss	%xmm1, %xmm0	 # _31, _30
	jp	.L1216	 #,
	ucomiss	%xmm1, %xmm0	 # _31, _30
	jne	.L1216	 #,
 # ./test/pdsp_test.c:1357:     PDSP_ASSERT(setp_var.f32_dest_pend != setp_var.f32_dest);
	movl	$1357, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp251
	movq	%rax, %rdx	 # tmp251,
	leaq	.LC3(%rip), %rax	 #, tmp252
	movq	%rax, %rcx	 # tmp252,
	call	printf	 #
.L1216:
 # ./test/pdsp_test.c:1358:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	leaq	-64(%rbp), %rax	 #, tmp253
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp253,
	call	pdsp_setp_smooth_reached	 #
 # ./test/pdsp_test.c:1358:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _33
	testb	%al, %al	 # _33
	je	.L1218	 #,
	movl	$1358, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp254
	movq	%rax, %rdx	 # tmp254,
	leaq	.LC3(%rip), %rax	 #, tmp255
	movq	%rax, %rcx	 # tmp255,
	call	printf	 #
.L1218:
 # ./test/pdsp_test.c:1360:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 0.0f);
	leaq	-64(%rbp), %rax	 #, tmp256
	movq	%rax, %rcx	 # tmp256,
	call	pdsp_setp_smooth	 #
	movd	%xmm0, %eax	 #, _34
 # ./test/pdsp_test.c:1360:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 0.0f);
	pxor	%xmm0, %xmm0	 # tmp257
	movd	%eax, %xmm4	 # _34, _34
	ucomiss	%xmm0, %xmm4	 # tmp257, _34
	jp	.L1309	 #,
	pxor	%xmm0, %xmm0	 # tmp258
	movd	%eax, %xmm5	 # _34, _34
	ucomiss	%xmm0, %xmm5	 # tmp258, _34
	je	.L1219	 #,
.L1309:
	movl	$1360, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp259
	movq	%rax, %rdx	 # tmp259,
	leaq	.LC3(%rip), %rax	 #, tmp260
	movq	%rax, %rcx	 # tmp260,
	call	printf	 #
.L1219:
 # ./test/pdsp_test.c:1361:     PDSP_ASSERT(setp_var.f32_dest_pend == setp_var.f32_dest);
	movss	-12(%rbp), %xmm0	 # setp_var.f32_dest_pend, _35
	movss	-16(%rbp), %xmm1	 # setp_var.f32_dest, _36
	ucomiss	%xmm1, %xmm0	 # _36, _35
	jp	.L1310	 #,
	ucomiss	%xmm1, %xmm0	 # _36, _35
	je	.L1221	 #,
.L1310:
 # ./test/pdsp_test.c:1361:     PDSP_ASSERT(setp_var.f32_dest_pend == setp_var.f32_dest);
	movl	$1361, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp261
	movq	%rax, %rdx	 # tmp261,
	leaq	.LC3(%rip), %rax	 #, tmp262
	movq	%rax, %rcx	 # tmp262,
	call	printf	 #
.L1221:
 # ./test/pdsp_test.c:1362:     PDSP_ASSERT(setp_var.f32_x1 == 1.0f);
	movss	-32(%rbp), %xmm0	 # setp_var.f32_x1, _37
	movss	.LC23(%rip), %xmm1	 #, tmp263
	ucomiss	%xmm1, %xmm0	 # tmp263, _37
	jp	.L1311	 #,
	movss	.LC23(%rip), %xmm1	 #, tmp264
	ucomiss	%xmm1, %xmm0	 # tmp264, _37
	je	.L1223	 #,
.L1311:
 # ./test/pdsp_test.c:1362:     PDSP_ASSERT(setp_var.f32_x1 == 1.0f);
	movl	$1362, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp265
	movq	%rax, %rdx	 # tmp265,
	leaq	.LC3(%rip), %rax	 #, tmp266
	movq	%rax, %rcx	 # tmp266,
	call	printf	 #
.L1223:
 # ./test/pdsp_test.c:1363:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	leaq	-64(%rbp), %rax	 #, tmp267
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp267,
	call	pdsp_setp_smooth_reached	 #
 # ./test/pdsp_test.c:1363:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _39
	testb	%al, %al	 # _39
	je	.L1225	 #,
	movl	$1363, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp268
	movq	%rax, %rdx	 # tmp268,
	leaq	.LC3(%rip), %rax	 #, tmp269
	movq	%rax, %rcx	 # tmp269,
	call	printf	 #
.L1225:
 # ./test/pdsp_test.c:1365:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 4.0f);
	leaq	-64(%rbp), %rax	 #, tmp270
	movq	%rax, %rcx	 # tmp270,
	call	pdsp_setp_smooth	 #
	movd	%xmm0, %eax	 #, _40
 # ./test/pdsp_test.c:1365:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 4.0f);
	movd	%eax, %xmm2	 # _40, _40
	ucomiss	.LC32(%rip), %xmm2	 #, _40
	jp	.L1312	 #,
	movd	%eax, %xmm3	 # _40, _40
	ucomiss	.LC32(%rip), %xmm3	 #, _40
	je	.L1226	 #,
.L1312:
	movl	$1365, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp271
	movq	%rax, %rdx	 # tmp271,
	leaq	.LC3(%rip), %rax	 #, tmp272
	movq	%rax, %rcx	 # tmp272,
	call	printf	 #
.L1226:
 # ./test/pdsp_test.c:1366:     PDSP_ASSERT(setp_var.f32_x1 == 1.0f);
	movss	-32(%rbp), %xmm0	 # setp_var.f32_x1, _41
	movss	.LC23(%rip), %xmm1	 #, tmp273
	ucomiss	%xmm1, %xmm0	 # tmp273, _41
	jp	.L1313	 #,
	movss	.LC23(%rip), %xmm1	 #, tmp274
	ucomiss	%xmm1, %xmm0	 # tmp274, _41
	je	.L1228	 #,
.L1313:
 # ./test/pdsp_test.c:1366:     PDSP_ASSERT(setp_var.f32_x1 == 1.0f);
	movl	$1366, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp275
	movq	%rax, %rdx	 # tmp275,
	leaq	.LC3(%rip), %rax	 #, tmp276
	movq	%rax, %rcx	 # tmp276,
	call	printf	 #
.L1228:
 # ./test/pdsp_test.c:1367:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	leaq	-64(%rbp), %rax	 #, tmp277
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp277,
	call	pdsp_setp_smooth_reached	 #
 # ./test/pdsp_test.c:1367:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _43
	testb	%al, %al	 # _43
	je	.L1230	 #,
	movl	$1367, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp278
	movq	%rax, %rdx	 # tmp278,
	leaq	.LC3(%rip), %rax	 #, tmp279
	movq	%rax, %rcx	 # tmp279,
	call	printf	 #
.L1230:
 # ./test/pdsp_test.c:1369:     pdsp_setp_smooth_init(&setp);
	leaq	-64(%rbp), %rax	 #, tmp280
	movq	%rax, %rcx	 # tmp280,
	call	pdsp_setp_smooth_init	 #
 # ./test/pdsp_test.c:1370:     pdsp_setp_smooth_set_time(&setp, 4.0f);
	leaq	-64(%rbp), %rax	 #, tmp281
	movss	.LC32(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp281,
	call	pdsp_setp_smooth_set_time	 #
 # ./test/pdsp_test.c:1371:     PDSP_ASSERT(setp_var.f32_dx1 == 0.25f);
	movss	-28(%rbp), %xmm0	 # setp_var.f32_dx1, _44
	ucomiss	.LC120(%rip), %xmm0	 #, _44
	jp	.L1314	 #,
	ucomiss	.LC120(%rip), %xmm0	 #, _44
	je	.L1231	 #,
.L1314:
 # ./test/pdsp_test.c:1371:     PDSP_ASSERT(setp_var.f32_dx1 == 0.25f);
	movl	$1371, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp282
	movq	%rax, %rdx	 # tmp282,
	leaq	.LC3(%rip), %rax	 #, tmp283
	movq	%rax, %rcx	 # tmp283,
	call	printf	 #
.L1231:
 # ./test/pdsp_test.c:1372:     pdsp_setp_smooth_set_dest(&setp, 4.0f);
	leaq	-64(%rbp), %rax	 #, tmp284
	movss	.LC32(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp284,
	call	pdsp_setp_smooth_set_dest	 #
 # ./test/pdsp_test.c:1373:     PDSP_ASSERT(setp_var.f32_dest_pend == 4.0f);
	movss	-12(%rbp), %xmm0	 # setp_var.f32_dest_pend, _45
	ucomiss	.LC32(%rip), %xmm0	 #, _45
	jp	.L1315	 #,
	ucomiss	.LC32(%rip), %xmm0	 #, _45
	je	.L1233	 #,
.L1315:
 # ./test/pdsp_test.c:1373:     PDSP_ASSERT(setp_var.f32_dest_pend == 4.0f);
	movl	$1373, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp285
	movq	%rax, %rdx	 # tmp285,
	leaq	.LC3(%rip), %rax	 #, tmp286
	movq	%rax, %rcx	 # tmp286,
	call	printf	 #
.L1233:
 # ./test/pdsp_test.c:1374:     PDSP_ASSERT(setp_var.f32_dest_pend != setp_var.f32_dest);
	movss	-12(%rbp), %xmm0	 # setp_var.f32_dest_pend, _46
	movss	-16(%rbp), %xmm1	 # setp_var.f32_dest, _47
	ucomiss	%xmm1, %xmm0	 # _47, _46
	jp	.L1235	 #,
	ucomiss	%xmm1, %xmm0	 # _47, _46
	jne	.L1235	 #,
 # ./test/pdsp_test.c:1374:     PDSP_ASSERT(setp_var.f32_dest_pend != setp_var.f32_dest);
	movl	$1374, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp287
	movq	%rax, %rdx	 # tmp287,
	leaq	.LC3(%rip), %rax	 #, tmp288
	movq	%rax, %rcx	 # tmp288,
	call	printf	 #
.L1235:
 # ./test/pdsp_test.c:1375:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	leaq	-64(%rbp), %rax	 #, tmp289
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp289,
	call	pdsp_setp_smooth_reached	 #
 # ./test/pdsp_test.c:1375:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _49
	testb	%al, %al	 # _49
	je	.L1237	 #,
	movl	$1375, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp290
	movq	%rax, %rdx	 # tmp290,
	leaq	.LC3(%rip), %rax	 #, tmp291
	movq	%rax, %rcx	 # tmp291,
	call	printf	 #
.L1237:
 # ./test/pdsp_test.c:1377:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 0.0f);
	leaq	-64(%rbp), %rax	 #, tmp292
	movq	%rax, %rcx	 # tmp292,
	call	pdsp_setp_smooth	 #
	movd	%xmm0, %eax	 #, _50
 # ./test/pdsp_test.c:1377:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 0.0f);
	pxor	%xmm0, %xmm0	 # tmp293
	movd	%eax, %xmm4	 # _50, _50
	ucomiss	%xmm0, %xmm4	 # tmp293, _50
	jp	.L1317	 #,
	pxor	%xmm0, %xmm0	 # tmp294
	movd	%eax, %xmm5	 # _50, _50
	ucomiss	%xmm0, %xmm5	 # tmp294, _50
	je	.L1238	 #,
.L1317:
	movl	$1377, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp295
	movq	%rax, %rdx	 # tmp295,
	leaq	.LC3(%rip), %rax	 #, tmp296
	movq	%rax, %rcx	 # tmp296,
	call	printf	 #
.L1238:
 # ./test/pdsp_test.c:1378:     PDSP_ASSERT(setp_var.f32_dest_pend == setp_var.f32_dest);
	movss	-12(%rbp), %xmm0	 # setp_var.f32_dest_pend, _51
	movss	-16(%rbp), %xmm1	 # setp_var.f32_dest, _52
	ucomiss	%xmm1, %xmm0	 # _52, _51
	jp	.L1318	 #,
	ucomiss	%xmm1, %xmm0	 # _52, _51
	je	.L1240	 #,
.L1318:
 # ./test/pdsp_test.c:1378:     PDSP_ASSERT(setp_var.f32_dest_pend == setp_var.f32_dest);
	movl	$1378, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp297
	movq	%rax, %rdx	 # tmp297,
	leaq	.LC3(%rip), %rax	 #, tmp298
	movq	%rax, %rcx	 # tmp298,
	call	printf	 #
.L1240:
 # ./test/pdsp_test.c:1379:     PDSP_ASSERT(setp_var.f32_x1 == 0.25f);
	movss	-32(%rbp), %xmm0	 # setp_var.f32_x1, _53
	ucomiss	.LC120(%rip), %xmm0	 #, _53
	jp	.L1319	 #,
	ucomiss	.LC120(%rip), %xmm0	 #, _53
	je	.L1242	 #,
.L1319:
 # ./test/pdsp_test.c:1379:     PDSP_ASSERT(setp_var.f32_x1 == 0.25f);
	movl	$1379, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp299
	movq	%rax, %rdx	 # tmp299,
	leaq	.LC3(%rip), %rax	 #, tmp300
	movq	%rax, %rcx	 # tmp300,
	call	printf	 #
.L1242:
 # ./test/pdsp_test.c:1380:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_FALSE);
	leaq	-64(%rbp), %rax	 #, tmp301
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp301,
	call	pdsp_setp_smooth_reached	 #
 # ./test/pdsp_test.c:1380:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_FALSE);
	testb	%al, %al	 # _54
	je	.L1244	 #,
	movl	$1380, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp302
	movq	%rax, %rdx	 # tmp302,
	leaq	.LC3(%rip), %rax	 #, tmp303
	movq	%rax, %rcx	 # tmp303,
	call	printf	 #
.L1244:
 # ./test/pdsp_test.c:1382:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 0.625f);
	leaq	-64(%rbp), %rax	 #, tmp304
	movq	%rax, %rcx	 # tmp304,
	call	pdsp_setp_smooth	 #
	movd	%xmm0, %eax	 #, _55
 # ./test/pdsp_test.c:1382:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 0.625f);
	movd	%eax, %xmm2	 # _55, _55
	ucomiss	.LC135(%rip), %xmm2	 #, _55
	jp	.L1320	 #,
	movd	%eax, %xmm3	 # _55, _55
	ucomiss	.LC135(%rip), %xmm3	 #, _55
	je	.L1245	 #,
.L1320:
	movl	$1382, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp305
	movq	%rax, %rdx	 # tmp305,
	leaq	.LC3(%rip), %rax	 #, tmp306
	movq	%rax, %rcx	 # tmp306,
	call	printf	 #
.L1245:
 # ./test/pdsp_test.c:1383:     pdsp_setp_smooth_set_dest(&setp, 0.0f);
	leaq	-64(%rbp), %rax	 #, tmp307
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp307,
	call	pdsp_setp_smooth_set_dest	 #
 # ./test/pdsp_test.c:1384:     PDSP_ASSERT(setp_var.f32_x1 == 0.5f);
	movss	-32(%rbp), %xmm0	 # setp_var.f32_x1, _56
	ucomiss	.LC37(%rip), %xmm0	 #, _56
	jp	.L1321	 #,
	ucomiss	.LC37(%rip), %xmm0	 #, _56
	je	.L1247	 #,
.L1321:
 # ./test/pdsp_test.c:1384:     PDSP_ASSERT(setp_var.f32_x1 == 0.5f);
	movl	$1384, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp308
	movq	%rax, %rdx	 # tmp308,
	leaq	.LC3(%rip), %rax	 #, tmp309
	movq	%rax, %rcx	 # tmp309,
	call	printf	 #
.L1247:
 # ./test/pdsp_test.c:1385:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_FALSE);
	leaq	-64(%rbp), %rax	 #, tmp310
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp310,
	call	pdsp_setp_smooth_reached	 #
 # ./test/pdsp_test.c:1385:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_FALSE);
	testb	%al, %al	 # _57
	je	.L1249	 #,
	movl	$1385, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp311
	movq	%rax, %rdx	 # tmp311,
	leaq	.LC3(%rip), %rax	 #, tmp312
	movq	%rax, %rcx	 # tmp312,
	call	printf	 #
.L1249:
 # ./test/pdsp_test.c:1387:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 2.0f);
	leaq	-64(%rbp), %rax	 #, tmp313
	movq	%rax, %rcx	 # tmp313,
	call	pdsp_setp_smooth	 #
	movd	%xmm0, %eax	 #, _58
 # ./test/pdsp_test.c:1387:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 2.0f);
	movd	%eax, %xmm4	 # _58, _58
	ucomiss	.LC22(%rip), %xmm4	 #, _58
	jp	.L1322	 #,
	movd	%eax, %xmm5	 # _58, _58
	ucomiss	.LC22(%rip), %xmm5	 #, _58
	je	.L1250	 #,
.L1322:
	movl	$1387, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp314
	movq	%rax, %rdx	 # tmp314,
	leaq	.LC3(%rip), %rax	 #, tmp315
	movq	%rax, %rcx	 # tmp315,
	call	printf	 #
.L1250:
 # ./test/pdsp_test.c:1388:     PDSP_ASSERT(setp_var.f32_x1 == 0.75f);
	movss	-32(%rbp), %xmm0	 # setp_var.f32_x1, _59
	ucomiss	.LC99(%rip), %xmm0	 #, _59
	jp	.L1323	 #,
	ucomiss	.LC99(%rip), %xmm0	 #, _59
	je	.L1252	 #,
.L1323:
 # ./test/pdsp_test.c:1388:     PDSP_ASSERT(setp_var.f32_x1 == 0.75f);
	movl	$1388, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp316
	movq	%rax, %rdx	 # tmp316,
	leaq	.LC3(%rip), %rax	 #, tmp317
	movq	%rax, %rcx	 # tmp317,
	call	printf	 #
.L1252:
 # ./test/pdsp_test.c:1389:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_FALSE);
	leaq	-64(%rbp), %rax	 #, tmp318
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp318,
	call	pdsp_setp_smooth_reached	 #
 # ./test/pdsp_test.c:1389:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_FALSE);
	testb	%al, %al	 # _60
	je	.L1254	 #,
	movl	$1389, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp319
	movq	%rax, %rdx	 # tmp319,
	leaq	.LC3(%rip), %rax	 #, tmp320
	movq	%rax, %rcx	 # tmp320,
	call	printf	 #
.L1254:
 # ./test/pdsp_test.c:1391:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 3.375f);
	leaq	-64(%rbp), %rax	 #, tmp321
	movq	%rax, %rcx	 # tmp321,
	call	pdsp_setp_smooth	 #
	movd	%xmm0, %eax	 #, _61
 # ./test/pdsp_test.c:1391:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 3.375f);
	movd	%eax, %xmm2	 # _61, _61
	ucomiss	.LC136(%rip), %xmm2	 #, _61
	jp	.L1324	 #,
	movd	%eax, %xmm3	 # _61, _61
	ucomiss	.LC136(%rip), %xmm3	 #, _61
	je	.L1255	 #,
.L1324:
	movl	$1391, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp322
	movq	%rax, %rdx	 # tmp322,
	leaq	.LC3(%rip), %rax	 #, tmp323
	movq	%rax, %rcx	 # tmp323,
	call	printf	 #
.L1255:
 # ./test/pdsp_test.c:1392:     PDSP_ASSERT(setp_var.f32_x1 == 1.0f);
	movss	-32(%rbp), %xmm0	 # setp_var.f32_x1, _62
	movss	.LC23(%rip), %xmm1	 #, tmp324
	ucomiss	%xmm1, %xmm0	 # tmp324, _62
	jp	.L1325	 #,
	movss	.LC23(%rip), %xmm1	 #, tmp325
	ucomiss	%xmm1, %xmm0	 # tmp325, _62
	je	.L1257	 #,
.L1325:
 # ./test/pdsp_test.c:1392:     PDSP_ASSERT(setp_var.f32_x1 == 1.0f);
	movl	$1392, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp326
	movq	%rax, %rdx	 # tmp326,
	leaq	.LC3(%rip), %rax	 #, tmp327
	movq	%rax, %rcx	 # tmp327,
	call	printf	 #
.L1257:
 # ./test/pdsp_test.c:1393:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	leaq	-64(%rbp), %rax	 #, tmp328
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp328,
	call	pdsp_setp_smooth_reached	 #
 # ./test/pdsp_test.c:1393:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _64
	testb	%al, %al	 # _64
	je	.L1259	 #,
	movl	$1393, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp329
	movq	%rax, %rdx	 # tmp329,
	leaq	.LC3(%rip), %rax	 #, tmp330
	movq	%rax, %rcx	 # tmp330,
	call	printf	 #
.L1259:
 # ./test/pdsp_test.c:1395:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 4.0f);
	leaq	-64(%rbp), %rax	 #, tmp331
	movq	%rax, %rcx	 # tmp331,
	call	pdsp_setp_smooth	 #
	movd	%xmm0, %eax	 #, _65
 # ./test/pdsp_test.c:1395:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 4.0f);
	movd	%eax, %xmm4	 # _65, _65
	ucomiss	.LC32(%rip), %xmm4	 #, _65
	jp	.L1326	 #,
	movd	%eax, %xmm5	 # _65, _65
	ucomiss	.LC32(%rip), %xmm5	 #, _65
	je	.L1260	 #,
.L1326:
	movl	$1395, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp332
	movq	%rax, %rdx	 # tmp332,
	leaq	.LC3(%rip), %rax	 #, tmp333
	movq	%rax, %rcx	 # tmp333,
	call	printf	 #
.L1260:
 # ./test/pdsp_test.c:1396:     PDSP_ASSERT(setp_var.f32_x1 == 0.25f);
	movss	-32(%rbp), %xmm0	 # setp_var.f32_x1, _66
	ucomiss	.LC120(%rip), %xmm0	 #, _66
	jp	.L1327	 #,
	ucomiss	.LC120(%rip), %xmm0	 #, _66
	je	.L1262	 #,
.L1327:
 # ./test/pdsp_test.c:1396:     PDSP_ASSERT(setp_var.f32_x1 == 0.25f);
	movl	$1396, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp334
	movq	%rax, %rdx	 # tmp334,
	leaq	.LC3(%rip), %rax	 #, tmp335
	movq	%rax, %rcx	 # tmp335,
	call	printf	 #
.L1262:
 # ./test/pdsp_test.c:1397:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_FALSE);
	leaq	-64(%rbp), %rax	 #, tmp336
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp336,
	call	pdsp_setp_smooth_reached	 #
 # ./test/pdsp_test.c:1397:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_FALSE);
	testb	%al, %al	 # _67
	je	.L1264	 #,
	movl	$1397, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp337
	movq	%rax, %rdx	 # tmp337,
	leaq	.LC3(%rip), %rax	 #, tmp338
	movq	%rax, %rcx	 # tmp338,
	call	printf	 #
.L1264:
 # ./test/pdsp_test.c:1399:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 3.375f);
	leaq	-64(%rbp), %rax	 #, tmp339
	movq	%rax, %rcx	 # tmp339,
	call	pdsp_setp_smooth	 #
	movd	%xmm0, %eax	 #, _68
 # ./test/pdsp_test.c:1399:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 3.375f);
	movd	%eax, %xmm2	 # _68, _68
	ucomiss	.LC136(%rip), %xmm2	 #, _68
	jp	.L1328	 #,
	movd	%eax, %xmm3	 # _68, _68
	ucomiss	.LC136(%rip), %xmm3	 #, _68
	je	.L1265	 #,
.L1328:
	movl	$1399, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp340
	movq	%rax, %rdx	 # tmp340,
	leaq	.LC3(%rip), %rax	 #, tmp341
	movq	%rax, %rcx	 # tmp341,
	call	printf	 #
.L1265:
 # ./test/pdsp_test.c:1400:     pdsp_setp_smooth_set_dest(&setp, 0.0f);
	leaq	-64(%rbp), %rax	 #, tmp342
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp342,
	call	pdsp_setp_smooth_set_dest	 #
 # ./test/pdsp_test.c:1401:     PDSP_ASSERT(setp_var.f32_x1 == 0.5f);
	movss	-32(%rbp), %xmm0	 # setp_var.f32_x1, _69
	ucomiss	.LC37(%rip), %xmm0	 #, _69
	jp	.L1329	 #,
	ucomiss	.LC37(%rip), %xmm0	 #, _69
	je	.L1267	 #,
.L1329:
 # ./test/pdsp_test.c:1401:     PDSP_ASSERT(setp_var.f32_x1 == 0.5f);
	movl	$1401, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp343
	movq	%rax, %rdx	 # tmp343,
	leaq	.LC3(%rip), %rax	 #, tmp344
	movq	%rax, %rcx	 # tmp344,
	call	printf	 #
.L1267:
 # ./test/pdsp_test.c:1402:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_FALSE);
	leaq	-64(%rbp), %rax	 #, tmp345
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp345,
	call	pdsp_setp_smooth_reached	 #
 # ./test/pdsp_test.c:1402:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_FALSE);
	testb	%al, %al	 # _70
	je	.L1269	 #,
	movl	$1402, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp346
	movq	%rax, %rdx	 # tmp346,
	leaq	.LC3(%rip), %rax	 #, tmp347
	movq	%rax, %rcx	 # tmp347,
	call	printf	 #
.L1269:
 # ./test/pdsp_test.c:1404:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 2.0f);
	leaq	-64(%rbp), %rax	 #, tmp348
	movq	%rax, %rcx	 # tmp348,
	call	pdsp_setp_smooth	 #
	movd	%xmm0, %eax	 #, _71
 # ./test/pdsp_test.c:1404:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 2.0f);
	movd	%eax, %xmm4	 # _71, _71
	ucomiss	.LC22(%rip), %xmm4	 #, _71
	jp	.L1330	 #,
	movd	%eax, %xmm5	 # _71, _71
	ucomiss	.LC22(%rip), %xmm5	 #, _71
	je	.L1270	 #,
.L1330:
	movl	$1404, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp349
	movq	%rax, %rdx	 # tmp349,
	leaq	.LC3(%rip), %rax	 #, tmp350
	movq	%rax, %rcx	 # tmp350,
	call	printf	 #
.L1270:
 # ./test/pdsp_test.c:1405:     PDSP_ASSERT(setp_var.f32_x1 == 0.75f);
	movss	-32(%rbp), %xmm0	 # setp_var.f32_x1, _72
	ucomiss	.LC99(%rip), %xmm0	 #, _72
	jp	.L1331	 #,
	ucomiss	.LC99(%rip), %xmm0	 #, _72
	je	.L1272	 #,
.L1331:
 # ./test/pdsp_test.c:1405:     PDSP_ASSERT(setp_var.f32_x1 == 0.75f);
	movl	$1405, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp351
	movq	%rax, %rdx	 # tmp351,
	leaq	.LC3(%rip), %rax	 #, tmp352
	movq	%rax, %rcx	 # tmp352,
	call	printf	 #
.L1272:
 # ./test/pdsp_test.c:1406:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_FALSE);
	leaq	-64(%rbp), %rax	 #, tmp353
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp353,
	call	pdsp_setp_smooth_reached	 #
 # ./test/pdsp_test.c:1406:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_FALSE);
	testb	%al, %al	 # _73
	je	.L1274	 #,
	movl	$1406, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp354
	movq	%rax, %rdx	 # tmp354,
	leaq	.LC3(%rip), %rax	 #, tmp355
	movq	%rax, %rcx	 # tmp355,
	call	printf	 #
.L1274:
 # ./test/pdsp_test.c:1408:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 0.625f);
	leaq	-64(%rbp), %rax	 #, tmp356
	movq	%rax, %rcx	 # tmp356,
	call	pdsp_setp_smooth	 #
	movd	%xmm0, %eax	 #, _74
 # ./test/pdsp_test.c:1408:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 0.625f);
	movd	%eax, %xmm2	 # _74, _74
	ucomiss	.LC135(%rip), %xmm2	 #, _74
	jp	.L1332	 #,
	movd	%eax, %xmm3	 # _74, _74
	ucomiss	.LC135(%rip), %xmm3	 #, _74
	je	.L1275	 #,
.L1332:
	movl	$1408, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp357
	movq	%rax, %rdx	 # tmp357,
	leaq	.LC3(%rip), %rax	 #, tmp358
	movq	%rax, %rcx	 # tmp358,
	call	printf	 #
.L1275:
 # ./test/pdsp_test.c:1409:     PDSP_ASSERT(setp_var.f32_x1 == 1.0f);
	movss	-32(%rbp), %xmm0	 # setp_var.f32_x1, _75
	movss	.LC23(%rip), %xmm1	 #, tmp359
	ucomiss	%xmm1, %xmm0	 # tmp359, _75
	jp	.L1333	 #,
	movss	.LC23(%rip), %xmm1	 #, tmp360
	ucomiss	%xmm1, %xmm0	 # tmp360, _75
	je	.L1277	 #,
.L1333:
 # ./test/pdsp_test.c:1409:     PDSP_ASSERT(setp_var.f32_x1 == 1.0f);
	movl	$1409, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp361
	movq	%rax, %rdx	 # tmp361,
	leaq	.LC3(%rip), %rax	 #, tmp362
	movq	%rax, %rcx	 # tmp362,
	call	printf	 #
.L1277:
 # ./test/pdsp_test.c:1410:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	leaq	-64(%rbp), %rax	 #, tmp363
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp363,
	call	pdsp_setp_smooth_reached	 #
 # ./test/pdsp_test.c:1410:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _77
	testb	%al, %al	 # _77
	je	.L1279	 #,
	movl	$1410, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp364
	movq	%rax, %rdx	 # tmp364,
	leaq	.LC3(%rip), %rax	 #, tmp365
	movq	%rax, %rcx	 # tmp365,
	call	printf	 #
.L1279:
 # ./test/pdsp_test.c:1412:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 0.0f);
	leaq	-64(%rbp), %rax	 #, tmp366
	movq	%rax, %rcx	 # tmp366,
	call	pdsp_setp_smooth	 #
	movd	%xmm0, %eax	 #, _78
 # ./test/pdsp_test.c:1412:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 0.0f);
	pxor	%xmm0, %xmm0	 # tmp367
	movd	%eax, %xmm4	 # _78, _78
	ucomiss	%xmm0, %xmm4	 # tmp367, _78
	jp	.L1334	 #,
	pxor	%xmm0, %xmm0	 # tmp368
	movd	%eax, %xmm5	 # _78, _78
	ucomiss	%xmm0, %xmm5	 # tmp368, _78
	je	.L1280	 #,
.L1334:
	movl	$1412, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp369
	movq	%rax, %rdx	 # tmp369,
	leaq	.LC3(%rip), %rax	 #, tmp370
	movq	%rax, %rcx	 # tmp370,
	call	printf	 #
.L1280:
 # ./test/pdsp_test.c:1413:     PDSP_ASSERT(setp_var.f32_x1 == 1.0f);
	movss	-32(%rbp), %xmm0	 # setp_var.f32_x1, _79
	movss	.LC23(%rip), %xmm1	 #, tmp371
	ucomiss	%xmm1, %xmm0	 # tmp371, _79
	jp	.L1335	 #,
	movss	.LC23(%rip), %xmm1	 #, tmp372
	ucomiss	%xmm1, %xmm0	 # tmp372, _79
	je	.L1282	 #,
.L1335:
 # ./test/pdsp_test.c:1413:     PDSP_ASSERT(setp_var.f32_x1 == 1.0f);
	movl	$1413, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp373
	movq	%rax, %rdx	 # tmp373,
	leaq	.LC3(%rip), %rax	 #, tmp374
	movq	%rax, %rcx	 # tmp374,
	call	printf	 #
.L1282:
 # ./test/pdsp_test.c:1414:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	leaq	-64(%rbp), %rax	 #, tmp375
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp375,
	call	pdsp_setp_smooth_reached	 #
 # ./test/pdsp_test.c:1414:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _81
	testb	%al, %al	 # _81
	je	.L1284	 #,
	movl	$1414, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp376
	movq	%rax, %rdx	 # tmp376,
	leaq	.LC3(%rip), %rax	 #, tmp377
	movq	%rax, %rcx	 # tmp377,
	call	printf	 #
.L1284:
 # ./test/pdsp_test.c:1416:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 0.0f);
	leaq	-64(%rbp), %rax	 #, tmp378
	movq	%rax, %rcx	 # tmp378,
	call	pdsp_setp_smooth	 #
	movd	%xmm0, %eax	 #, _82
 # ./test/pdsp_test.c:1416:     PDSP_ASSERT(pdsp_setp_smooth(&setp) == 0.0f);
	pxor	%xmm0, %xmm0	 # tmp379
	movd	%eax, %xmm2	 # _82, _82
	ucomiss	%xmm0, %xmm2	 # tmp379, _82
	jp	.L1336	 #,
	pxor	%xmm0, %xmm0	 # tmp380
	movd	%eax, %xmm3	 # _82, _82
	ucomiss	%xmm0, %xmm3	 # tmp380, _82
	je	.L1285	 #,
.L1336:
	movl	$1416, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp381
	movq	%rax, %rdx	 # tmp381,
	leaq	.LC3(%rip), %rax	 #, tmp382
	movq	%rax, %rcx	 # tmp382,
	call	printf	 #
.L1285:
 # ./test/pdsp_test.c:1417:     PDSP_ASSERT(setp_var.f32_x1 == 1.0f);
	movss	-32(%rbp), %xmm0	 # setp_var.f32_x1, _83
	movss	.LC23(%rip), %xmm1	 #, tmp383
	ucomiss	%xmm1, %xmm0	 # tmp383, _83
	jp	.L1337	 #,
	movss	.LC23(%rip), %xmm1	 #, tmp384
	ucomiss	%xmm1, %xmm0	 # tmp384, _83
	je	.L1287	 #,
.L1337:
 # ./test/pdsp_test.c:1417:     PDSP_ASSERT(setp_var.f32_x1 == 1.0f);
	movl	$1417, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp385
	movq	%rax, %rdx	 # tmp385,
	leaq	.LC3(%rip), %rax	 #, tmp386
	movq	%rax, %rcx	 # tmp386,
	call	printf	 #
.L1287:
 # ./test/pdsp_test.c:1418:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	leaq	-64(%rbp), %rax	 #, tmp387
	movss	.LC124(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp387,
	call	pdsp_setp_smooth_reached	 #
 # ./test/pdsp_test.c:1418:     PDSP_ASSERT(pdsp_setp_smooth_reached(&setp, 0.1f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _85
	testb	%al, %al	 # _85
	je	.L1338	 #,
	movl	$1418, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp388
	movq	%rax, %rdx	 # tmp388,
	leaq	.LC3(%rip), %rax	 #, tmp389
	movq	%rax, %rcx	 # tmp389,
	call	printf	 #
.L1338:
 # ./test/pdsp_test.c:1419: }
	nop	
	addq	$96, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC137:
	.ascii "-- void test_pi(void) --\12\0"
	.text
	.globl	test_pi
	.def	test_pi;	.scl	2;	.type	32;	.endef
	.seh_proc	test_pi
test_pi:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$240, %rsp	 #,
	.seh_stackalloc	240
	.seh_endprologue
 # ./test/pdsp_test.c:1423:     printf("-- void test_pi(void) --\n");
	leaq	.LC137(%rip), %rax	 #, tmp136
	movq	%rax, %rcx	 # tmp136,
	call	printf	 #
 # ./test/pdsp_test.c:1424:     pdsp_pi_var_t pi1_var = {2, 3, 33.0f, 66.0f};
	movw	$2, -12(%rbp)	 #, pi1_var.i16_active
	movw	$3, -10(%rbp)	 #, pi1_var.i16_param_idx
	movss	.LC95(%rip), %xmm0	 #, tmp137
	movss	%xmm0, -8(%rbp)	 # tmp137, pi1_var.f32_x0
	movss	.LC138(%rip), %xmm0	 #, tmp138
	movss	%xmm0, -4(%rbp)	 # tmp138, pi1_var.f32_x1
 # ./test/pdsp_test.c:1425:     pdsp_pi_err_param_t pi1_param[2] = {
	movss	.LC23(%rip), %xmm0	 #, tmp139
	movss	%xmm0, -48(%rbp)	 # tmp139, pi1_param[0].f32_kp
	movss	.LC22(%rip), %xmm0	 #, tmp140
	movss	%xmm0, -44(%rbp)	 # tmp140, pi1_param[0].f32_ki
	movss	.LC22(%rip), %xmm0	 #, tmp141
	movss	%xmm0, -40(%rbp)	 # tmp141, pi1_param[0].f32_ks
	movss	.LC23(%rip), %xmm0	 #, tmp142
	movss	%xmm0, -36(%rbp)	 # tmp142, pi1_param[0].f32_ka
	movss	.LC24(%rip), %xmm0	 #, tmp143
	movss	%xmm0, -32(%rbp)	 # tmp143, pi1_param[1].f32_kp
	movss	.LC38(%rip), %xmm0	 #, tmp144
	movss	%xmm0, -28(%rbp)	 # tmp144, pi1_param[1].f32_ki
	movss	.LC38(%rip), %xmm0	 #, tmp145
	movss	%xmm0, -24(%rbp)	 # tmp145, pi1_param[1].f32_ks
	movss	.LC23(%rip), %xmm0	 #, tmp146
	movss	%xmm0, -20(%rbp)	 # tmp146, pi1_param[1].f32_ka
 # ./test/pdsp_test.c:1428:     pdsp_pi_t pi1 = {.pas_param = pi1_param,
	leaq	-48(%rbp), %rax	 #, tmp147
	movq	%rax, -80(%rbp)	 # tmp147, pi1.pas_param
	movw	$2, -72(%rbp)	 #, pi1.i16_param_size
	leaq	-12(%rbp), %rax	 #, tmp148
	movq	%rax, -64(%rbp)	 # tmp148, pi1.ps_var
	movss	.LC45(%rip), %xmm0	 #, tmp149
	movss	%xmm0, -56(%rbp)	 # tmp149, pi1.f32_max
	movss	.LC139(%rip), %xmm0	 #, tmp150
	movss	%xmm0, -52(%rbp)	 # tmp150, pi1.f32_min
 # ./test/pdsp_test.c:1433:     pdsp_pi_clear(&pi1);
	leaq	-80(%rbp), %rax	 #, tmp151
	movq	%rax, %rcx	 # tmp151,
	call	pdsp_pi_clear	 #
 # ./test/pdsp_test.c:1434:     PDSP_ASSERT(pi1_var.i16_active == 0);
	movzwl	-12(%rbp), %eax	 # pi1_var.i16_active, _1
	testw	%ax, %ax	 # _1
	je	.L1340	 #,
 # ./test/pdsp_test.c:1434:     PDSP_ASSERT(pi1_var.i16_active == 0);
	movl	$1434, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp152
	movq	%rax, %rdx	 # tmp152,
	leaq	.LC3(%rip), %rax	 #, tmp153
	movq	%rax, %rcx	 # tmp153,
	call	printf	 #
.L1340:
 # ./test/pdsp_test.c:1435:     PDSP_ASSERT(pi1_var.i16_param_idx == 0);
	movzwl	-10(%rbp), %eax	 # pi1_var.i16_param_idx, _2
	testw	%ax, %ax	 # _2
	je	.L1341	 #,
 # ./test/pdsp_test.c:1435:     PDSP_ASSERT(pi1_var.i16_param_idx == 0);
	movl	$1435, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp154
	movq	%rax, %rdx	 # tmp154,
	leaq	.LC3(%rip), %rax	 #, tmp155
	movq	%rax, %rcx	 # tmp155,
	call	printf	 #
.L1341:
 # ./test/pdsp_test.c:1436:     PDSP_ASSERT(pi1_var.f32_x0 == 0.0f);
	movss	-8(%rbp), %xmm0	 # pi1_var.f32_x0, _3
	pxor	%xmm1, %xmm1	 # tmp156
	ucomiss	%xmm1, %xmm0	 # tmp156, _3
	jp	.L1440	 #,
	pxor	%xmm1, %xmm1	 # tmp157
	ucomiss	%xmm1, %xmm0	 # tmp157, _3
	je	.L1342	 #,
.L1440:
 # ./test/pdsp_test.c:1436:     PDSP_ASSERT(pi1_var.f32_x0 == 0.0f);
	movl	$1436, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp158
	movq	%rax, %rdx	 # tmp158,
	leaq	.LC3(%rip), %rax	 #, tmp159
	movq	%rax, %rcx	 # tmp159,
	call	printf	 #
.L1342:
 # ./test/pdsp_test.c:1437:     PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
	movss	-4(%rbp), %xmm0	 # pi1_var.f32_x1, _4
	pxor	%xmm1, %xmm1	 # tmp160
	ucomiss	%xmm1, %xmm0	 # tmp160, _4
	jp	.L1441	 #,
	pxor	%xmm1, %xmm1	 # tmp161
	ucomiss	%xmm1, %xmm0	 # tmp161, _4
	je	.L1344	 #,
.L1441:
 # ./test/pdsp_test.c:1437:     PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
	movl	$1437, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp162
	movq	%rax, %rdx	 # tmp162,
	leaq	.LC3(%rip), %rax	 #, tmp163
	movq	%rax, %rcx	 # tmp163,
	call	printf	 #
.L1344:
 # ./test/pdsp_test.c:1438:     PDSP_ASSERT(pdsp_pi(&pi1, 1.0f) == 3.0f);
	leaq	-80(%rbp), %rax	 #, tmp164
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp164,
	call	pdsp_pi	 #
	movd	%xmm0, %eax	 #, _5
 # ./test/pdsp_test.c:1438:     PDSP_ASSERT(pdsp_pi(&pi1, 1.0f) == 3.0f);
	movd	%eax, %xmm2	 # _5, _5
	ucomiss	.LC30(%rip), %xmm2	 #, _5
	jp	.L1442	 #,
	movd	%eax, %xmm3	 # _5, _5
	ucomiss	.LC30(%rip), %xmm3	 #, _5
	je	.L1346	 #,
.L1442:
	movl	$1438, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp165
	movq	%rax, %rdx	 # tmp165,
	leaq	.LC3(%rip), %rax	 #, tmp166
	movq	%rax, %rcx	 # tmp166,
	call	printf	 #
.L1346:
 # ./test/pdsp_test.c:1439:     PDSP_ASSERT(pi1_var.f32_x0 == 2.0f);
	movss	-8(%rbp), %xmm0	 # pi1_var.f32_x0, _6
	ucomiss	.LC22(%rip), %xmm0	 #, _6
	jp	.L1443	 #,
	ucomiss	.LC22(%rip), %xmm0	 #, _6
	je	.L1348	 #,
.L1443:
 # ./test/pdsp_test.c:1439:     PDSP_ASSERT(pi1_var.f32_x0 == 2.0f);
	movl	$1439, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp167
	movq	%rax, %rdx	 # tmp167,
	leaq	.LC3(%rip), %rax	 #, tmp168
	movq	%rax, %rcx	 # tmp168,
	call	printf	 #
.L1348:
 # ./test/pdsp_test.c:1440:     PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
	movss	-4(%rbp), %xmm0	 # pi1_var.f32_x1, _7
	pxor	%xmm1, %xmm1	 # tmp169
	ucomiss	%xmm1, %xmm0	 # tmp169, _7
	jp	.L1444	 #,
	pxor	%xmm1, %xmm1	 # tmp170
	ucomiss	%xmm1, %xmm0	 # tmp170, _7
	je	.L1350	 #,
.L1444:
 # ./test/pdsp_test.c:1440:     PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
	movl	$1440, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp171
	movq	%rax, %rdx	 # tmp171,
	leaq	.LC3(%rip), %rax	 #, tmp172
	movq	%rax, %rcx	 # tmp172,
	call	printf	 #
.L1350:
 # ./test/pdsp_test.c:1441:     PDSP_ASSERT(pdsp_pi(&pi1, 1.0f) == 5.0f);
	leaq	-80(%rbp), %rax	 #, tmp173
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp173,
	call	pdsp_pi	 #
	movd	%xmm0, %eax	 #, _8
 # ./test/pdsp_test.c:1441:     PDSP_ASSERT(pdsp_pi(&pi1, 1.0f) == 5.0f);
	movd	%eax, %xmm4	 # _8, _8
	ucomiss	.LC45(%rip), %xmm4	 #, _8
	jp	.L1445	 #,
	movd	%eax, %xmm5	 # _8, _8
	ucomiss	.LC45(%rip), %xmm5	 #, _8
	je	.L1352	 #,
.L1445:
	movl	$1441, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp174
	movq	%rax, %rdx	 # tmp174,
	leaq	.LC3(%rip), %rax	 #, tmp175
	movq	%rax, %rcx	 # tmp175,
	call	printf	 #
.L1352:
 # ./test/pdsp_test.c:1442:     PDSP_ASSERT(pi1_var.f32_x0 == 4.0f);
	movss	-8(%rbp), %xmm0	 # pi1_var.f32_x0, _9
	ucomiss	.LC32(%rip), %xmm0	 #, _9
	jp	.L1446	 #,
	ucomiss	.LC32(%rip), %xmm0	 #, _9
	je	.L1354	 #,
.L1446:
 # ./test/pdsp_test.c:1442:     PDSP_ASSERT(pi1_var.f32_x0 == 4.0f);
	movl	$1442, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp176
	movq	%rax, %rdx	 # tmp176,
	leaq	.LC3(%rip), %rax	 #, tmp177
	movq	%rax, %rcx	 # tmp177,
	call	printf	 #
.L1354:
 # ./test/pdsp_test.c:1443:     PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
	movss	-4(%rbp), %xmm0	 # pi1_var.f32_x1, _10
	pxor	%xmm1, %xmm1	 # tmp178
	ucomiss	%xmm1, %xmm0	 # tmp178, _10
	jp	.L1447	 #,
	pxor	%xmm1, %xmm1	 # tmp179
	ucomiss	%xmm1, %xmm0	 # tmp179, _10
	je	.L1356	 #,
.L1447:
 # ./test/pdsp_test.c:1443:     PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
	movl	$1443, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp180
	movq	%rax, %rdx	 # tmp180,
	leaq	.LC3(%rip), %rax	 #, tmp181
	movq	%rax, %rcx	 # tmp181,
	call	printf	 #
.L1356:
 # ./test/pdsp_test.c:1444:     PDSP_ASSERT(pdsp_pi(&pi1, 1.0f) == 5.0f);
	leaq	-80(%rbp), %rax	 #, tmp182
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp182,
	call	pdsp_pi	 #
	movd	%xmm0, %eax	 #, _11
 # ./test/pdsp_test.c:1444:     PDSP_ASSERT(pdsp_pi(&pi1, 1.0f) == 5.0f);
	movd	%eax, %xmm2	 # _11, _11
	ucomiss	.LC45(%rip), %xmm2	 #, _11
	jp	.L1448	 #,
	movd	%eax, %xmm3	 # _11, _11
	ucomiss	.LC45(%rip), %xmm3	 #, _11
	je	.L1358	 #,
.L1448:
	movl	$1444, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp183
	movq	%rax, %rdx	 # tmp183,
	leaq	.LC3(%rip), %rax	 #, tmp184
	movq	%rax, %rcx	 # tmp184,
	call	printf	 #
.L1358:
 # ./test/pdsp_test.c:1445:     PDSP_ASSERT(pi1_var.f32_x0 == 6.0f);
	movss	-8(%rbp), %xmm0	 # pi1_var.f32_x0, _12
	ucomiss	.LC47(%rip), %xmm0	 #, _12
	jp	.L1449	 #,
	ucomiss	.LC47(%rip), %xmm0	 #, _12
	je	.L1360	 #,
.L1449:
 # ./test/pdsp_test.c:1445:     PDSP_ASSERT(pi1_var.f32_x0 == 6.0f);
	movl	$1445, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp185
	movq	%rax, %rdx	 # tmp185,
	leaq	.LC3(%rip), %rax	 #, tmp186
	movq	%rax, %rcx	 # tmp186,
	call	printf	 #
.L1360:
 # ./test/pdsp_test.c:1446:     PDSP_ASSERT(pi1_var.f32_x1 == -2.0f);
	movss	-4(%rbp), %xmm0	 # pi1_var.f32_x1, _13
	ucomiss	.LC33(%rip), %xmm0	 #, _13
	jp	.L1450	 #,
	ucomiss	.LC33(%rip), %xmm0	 #, _13
	je	.L1362	 #,
.L1450:
 # ./test/pdsp_test.c:1446:     PDSP_ASSERT(pi1_var.f32_x1 == -2.0f);
	movl	$1446, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp187
	movq	%rax, %rdx	 # tmp187,
	leaq	.LC3(%rip), %rax	 #, tmp188
	movq	%rax, %rcx	 # tmp188,
	call	printf	 #
.L1362:
 # ./test/pdsp_test.c:1447:     PDSP_ASSERT(pdsp_pi(&pi1, 1.0f) == 5.0f);
	leaq	-80(%rbp), %rax	 #, tmp189
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp189,
	call	pdsp_pi	 #
	movd	%xmm0, %eax	 #, _14
 # ./test/pdsp_test.c:1447:     PDSP_ASSERT(pdsp_pi(&pi1, 1.0f) == 5.0f);
	movd	%eax, %xmm4	 # _14, _14
	ucomiss	.LC45(%rip), %xmm4	 #, _14
	jp	.L1451	 #,
	movd	%eax, %xmm5	 # _14, _14
	ucomiss	.LC45(%rip), %xmm5	 #, _14
	je	.L1364	 #,
.L1451:
	movl	$1447, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp190
	movq	%rax, %rdx	 # tmp190,
	leaq	.LC3(%rip), %rax	 #, tmp191
	movq	%rax, %rcx	 # tmp191,
	call	printf	 #
.L1364:
 # ./test/pdsp_test.c:1448:     PDSP_ASSERT(pi1_var.f32_x0 == 4.0f);
	movss	-8(%rbp), %xmm0	 # pi1_var.f32_x0, _15
	ucomiss	.LC32(%rip), %xmm0	 #, _15
	jp	.L1452	 #,
	ucomiss	.LC32(%rip), %xmm0	 #, _15
	je	.L1366	 #,
.L1452:
 # ./test/pdsp_test.c:1448:     PDSP_ASSERT(pi1_var.f32_x0 == 4.0f);
	movl	$1448, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp192
	movq	%rax, %rdx	 # tmp192,
	leaq	.LC3(%rip), %rax	 #, tmp193
	movq	%rax, %rcx	 # tmp193,
	call	printf	 #
.L1366:
 # ./test/pdsp_test.c:1449:     PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
	movss	-4(%rbp), %xmm0	 # pi1_var.f32_x1, _16
	pxor	%xmm1, %xmm1	 # tmp194
	ucomiss	%xmm1, %xmm0	 # tmp194, _16
	jp	.L1453	 #,
	pxor	%xmm1, %xmm1	 # tmp195
	ucomiss	%xmm1, %xmm0	 # tmp195, _16
	je	.L1368	 #,
.L1453:
 # ./test/pdsp_test.c:1449:     PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
	movl	$1449, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp196
	movq	%rax, %rdx	 # tmp196,
	leaq	.LC3(%rip), %rax	 #, tmp197
	movq	%rax, %rcx	 # tmp197,
	call	printf	 #
.L1368:
 # ./test/pdsp_test.c:1450:     PDSP_ASSERT(pdsp_pi(&pi1, 0.0f) == 4.0f);
	leaq	-80(%rbp), %rax	 #, tmp198
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp198,
	call	pdsp_pi	 #
	movd	%xmm0, %eax	 #, _17
 # ./test/pdsp_test.c:1450:     PDSP_ASSERT(pdsp_pi(&pi1, 0.0f) == 4.0f);
	movd	%eax, %xmm2	 # _17, _17
	ucomiss	.LC32(%rip), %xmm2	 #, _17
	jp	.L1454	 #,
	movd	%eax, %xmm3	 # _17, _17
	ucomiss	.LC32(%rip), %xmm3	 #, _17
	je	.L1370	 #,
.L1454:
	movl	$1450, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp199
	movq	%rax, %rdx	 # tmp199,
	leaq	.LC3(%rip), %rax	 #, tmp200
	movq	%rax, %rcx	 # tmp200,
	call	printf	 #
.L1370:
 # ./test/pdsp_test.c:1451:     PDSP_ASSERT(pi1_var.f32_x0 == 4.0f);
	movss	-8(%rbp), %xmm0	 # pi1_var.f32_x0, _18
	ucomiss	.LC32(%rip), %xmm0	 #, _18
	jp	.L1455	 #,
	ucomiss	.LC32(%rip), %xmm0	 #, _18
	je	.L1372	 #,
.L1455:
 # ./test/pdsp_test.c:1451:     PDSP_ASSERT(pi1_var.f32_x0 == 4.0f);
	movl	$1451, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp201
	movq	%rax, %rdx	 # tmp201,
	leaq	.LC3(%rip), %rax	 #, tmp202
	movq	%rax, %rcx	 # tmp202,
	call	printf	 #
.L1372:
 # ./test/pdsp_test.c:1452:     PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
	movss	-4(%rbp), %xmm0	 # pi1_var.f32_x1, _19
	pxor	%xmm1, %xmm1	 # tmp203
	ucomiss	%xmm1, %xmm0	 # tmp203, _19
	jp	.L1456	 #,
	pxor	%xmm1, %xmm1	 # tmp204
	ucomiss	%xmm1, %xmm0	 # tmp204, _19
	je	.L1374	 #,
.L1456:
 # ./test/pdsp_test.c:1452:     PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
	movl	$1452, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp205
	movq	%rax, %rdx	 # tmp205,
	leaq	.LC3(%rip), %rax	 #, tmp206
	movq	%rax, %rcx	 # tmp206,
	call	printf	 #
.L1374:
 # ./test/pdsp_test.c:1453:     PDSP_ASSERT(pdsp_pi(&pi1, -1.0f) == 1.0f);
	leaq	-80(%rbp), %rax	 #, tmp207
	movss	.LC26(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp207,
	call	pdsp_pi	 #
	movd	%xmm0, %eax	 #, _20
 # ./test/pdsp_test.c:1453:     PDSP_ASSERT(pdsp_pi(&pi1, -1.0f) == 1.0f);
	movss	.LC23(%rip), %xmm0	 #, tmp208
	movd	%eax, %xmm4	 # _20, _20
	ucomiss	%xmm0, %xmm4	 # tmp208, _20
	jp	.L1457	 #,
	movss	.LC23(%rip), %xmm0	 #, tmp209
	movd	%eax, %xmm5	 # _20, _20
	ucomiss	%xmm0, %xmm5	 # tmp209, _20
	je	.L1376	 #,
.L1457:
	movl	$1453, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp210
	movq	%rax, %rdx	 # tmp210,
	leaq	.LC3(%rip), %rax	 #, tmp211
	movq	%rax, %rcx	 # tmp211,
	call	printf	 #
.L1376:
 # ./test/pdsp_test.c:1454:     PDSP_ASSERT(pi1_var.f32_x0 == 2.0f);
	movss	-8(%rbp), %xmm0	 # pi1_var.f32_x0, _21
	ucomiss	.LC22(%rip), %xmm0	 #, _21
	jp	.L1458	 #,
	ucomiss	.LC22(%rip), %xmm0	 #, _21
	je	.L1378	 #,
.L1458:
 # ./test/pdsp_test.c:1454:     PDSP_ASSERT(pi1_var.f32_x0 == 2.0f);
	movl	$1454, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp212
	movq	%rax, %rdx	 # tmp212,
	leaq	.LC3(%rip), %rax	 #, tmp213
	movq	%rax, %rcx	 # tmp213,
	call	printf	 #
.L1378:
 # ./test/pdsp_test.c:1455:     PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
	movss	-4(%rbp), %xmm0	 # pi1_var.f32_x1, _22
	pxor	%xmm1, %xmm1	 # tmp214
	ucomiss	%xmm1, %xmm0	 # tmp214, _22
	jp	.L1459	 #,
	pxor	%xmm1, %xmm1	 # tmp215
	ucomiss	%xmm1, %xmm0	 # tmp215, _22
	je	.L1380	 #,
.L1459:
 # ./test/pdsp_test.c:1455:     PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
	movl	$1455, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp216
	movq	%rax, %rdx	 # tmp216,
	leaq	.LC3(%rip), %rax	 #, tmp217
	movq	%rax, %rcx	 # tmp217,
	call	printf	 #
.L1380:
 # ./test/pdsp_test.c:1456:     PDSP_ASSERT(pdsp_pi(&pi1, -1.0f) == -1.0f);
	leaq	-80(%rbp), %rax	 #, tmp218
	movss	.LC26(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp218,
	call	pdsp_pi	 #
	movd	%xmm0, %eax	 #, _23
 # ./test/pdsp_test.c:1456:     PDSP_ASSERT(pdsp_pi(&pi1, -1.0f) == -1.0f);
	movss	.LC26(%rip), %xmm0	 #, tmp219
	movd	%eax, %xmm2	 # _23, _23
	ucomiss	%xmm0, %xmm2	 # tmp219, _23
	jp	.L1460	 #,
	movss	.LC26(%rip), %xmm0	 #, tmp220
	movd	%eax, %xmm3	 # _23, _23
	ucomiss	%xmm0, %xmm3	 # tmp220, _23
	je	.L1382	 #,
.L1460:
	movl	$1456, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp221
	movq	%rax, %rdx	 # tmp221,
	leaq	.LC3(%rip), %rax	 #, tmp222
	movq	%rax, %rcx	 # tmp222,
	call	printf	 #
.L1382:
 # ./test/pdsp_test.c:1457:     PDSP_ASSERT(pi1_var.f32_x0 == 0.0f);
	movss	-8(%rbp), %xmm0	 # pi1_var.f32_x0, _24
	pxor	%xmm1, %xmm1	 # tmp223
	ucomiss	%xmm1, %xmm0	 # tmp223, _24
	jp	.L1461	 #,
	pxor	%xmm1, %xmm1	 # tmp224
	ucomiss	%xmm1, %xmm0	 # tmp224, _24
	je	.L1384	 #,
.L1461:
 # ./test/pdsp_test.c:1457:     PDSP_ASSERT(pi1_var.f32_x0 == 0.0f);
	movl	$1457, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp225
	movq	%rax, %rdx	 # tmp225,
	leaq	.LC3(%rip), %rax	 #, tmp226
	movq	%rax, %rcx	 # tmp226,
	call	printf	 #
.L1384:
 # ./test/pdsp_test.c:1458:     PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
	movss	-4(%rbp), %xmm0	 # pi1_var.f32_x1, _25
	pxor	%xmm1, %xmm1	 # tmp227
	ucomiss	%xmm1, %xmm0	 # tmp227, _25
	jp	.L1462	 #,
	pxor	%xmm1, %xmm1	 # tmp228
	ucomiss	%xmm1, %xmm0	 # tmp228, _25
	je	.L1386	 #,
.L1462:
 # ./test/pdsp_test.c:1458:     PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
	movl	$1458, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp229
	movq	%rax, %rdx	 # tmp229,
	leaq	.LC3(%rip), %rax	 #, tmp230
	movq	%rax, %rcx	 # tmp230,
	call	printf	 #
.L1386:
 # ./test/pdsp_test.c:1459:     PDSP_ASSERT(pdsp_pi(&pi1, -1.0f) == -3.0f);
	leaq	-80(%rbp), %rax	 #, tmp231
	movss	.LC26(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp231,
	call	pdsp_pi	 #
	movd	%xmm0, %eax	 #, _26
 # ./test/pdsp_test.c:1459:     PDSP_ASSERT(pdsp_pi(&pi1, -1.0f) == -3.0f);
	movd	%eax, %xmm4	 # _26, _26
	ucomiss	.LC34(%rip), %xmm4	 #, _26
	jp	.L1463	 #,
	movd	%eax, %xmm5	 # _26, _26
	ucomiss	.LC34(%rip), %xmm5	 #, _26
	je	.L1388	 #,
.L1463:
	movl	$1459, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp232
	movq	%rax, %rdx	 # tmp232,
	leaq	.LC3(%rip), %rax	 #, tmp233
	movq	%rax, %rcx	 # tmp233,
	call	printf	 #
.L1388:
 # ./test/pdsp_test.c:1460:     PDSP_ASSERT(pi1_var.f32_x0 == -2.0f);
	movss	-8(%rbp), %xmm0	 # pi1_var.f32_x0, _27
	ucomiss	.LC33(%rip), %xmm0	 #, _27
	jp	.L1464	 #,
	ucomiss	.LC33(%rip), %xmm0	 #, _27
	je	.L1390	 #,
.L1464:
 # ./test/pdsp_test.c:1460:     PDSP_ASSERT(pi1_var.f32_x0 == -2.0f);
	movl	$1460, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp234
	movq	%rax, %rdx	 # tmp234,
	leaq	.LC3(%rip), %rax	 #, tmp235
	movq	%rax, %rcx	 # tmp235,
	call	printf	 #
.L1390:
 # ./test/pdsp_test.c:1461:     PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
	movss	-4(%rbp), %xmm0	 # pi1_var.f32_x1, _28
	pxor	%xmm1, %xmm1	 # tmp236
	ucomiss	%xmm1, %xmm0	 # tmp236, _28
	jp	.L1465	 #,
	pxor	%xmm1, %xmm1	 # tmp237
	ucomiss	%xmm1, %xmm0	 # tmp237, _28
	je	.L1392	 #,
.L1465:
 # ./test/pdsp_test.c:1461:     PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
	movl	$1461, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp238
	movq	%rax, %rdx	 # tmp238,
	leaq	.LC3(%rip), %rax	 #, tmp239
	movq	%rax, %rcx	 # tmp239,
	call	printf	 #
.L1392:
 # ./test/pdsp_test.c:1462:     PDSP_ASSERT(pdsp_pi(&pi1, -1.0f) == -5.0f);
	leaq	-80(%rbp), %rax	 #, tmp240
	movss	.LC26(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp240,
	call	pdsp_pi	 #
	movd	%xmm0, %eax	 #, _29
 # ./test/pdsp_test.c:1462:     PDSP_ASSERT(pdsp_pi(&pi1, -1.0f) == -5.0f);
	movd	%eax, %xmm2	 # _29, _29
	ucomiss	.LC139(%rip), %xmm2	 #, _29
	jp	.L1466	 #,
	movd	%eax, %xmm3	 # _29, _29
	ucomiss	.LC139(%rip), %xmm3	 #, _29
	je	.L1394	 #,
.L1466:
	movl	$1462, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp241
	movq	%rax, %rdx	 # tmp241,
	leaq	.LC3(%rip), %rax	 #, tmp242
	movq	%rax, %rcx	 # tmp242,
	call	printf	 #
.L1394:
 # ./test/pdsp_test.c:1463:     PDSP_ASSERT(pi1_var.f32_x0 == -4.0f);
	movss	-8(%rbp), %xmm0	 # pi1_var.f32_x0, _30
	ucomiss	.LC35(%rip), %xmm0	 #, _30
	jp	.L1467	 #,
	ucomiss	.LC35(%rip), %xmm0	 #, _30
	je	.L1396	 #,
.L1467:
 # ./test/pdsp_test.c:1463:     PDSP_ASSERT(pi1_var.f32_x0 == -4.0f);
	movl	$1463, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp243
	movq	%rax, %rdx	 # tmp243,
	leaq	.LC3(%rip), %rax	 #, tmp244
	movq	%rax, %rcx	 # tmp244,
	call	printf	 #
.L1396:
 # ./test/pdsp_test.c:1464:     PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
	movss	-4(%rbp), %xmm0	 # pi1_var.f32_x1, _31
	pxor	%xmm1, %xmm1	 # tmp245
	ucomiss	%xmm1, %xmm0	 # tmp245, _31
	jp	.L1468	 #,
	pxor	%xmm1, %xmm1	 # tmp246
	ucomiss	%xmm1, %xmm0	 # tmp246, _31
	je	.L1398	 #,
.L1468:
 # ./test/pdsp_test.c:1464:     PDSP_ASSERT(pi1_var.f32_x1 == 0.0f);
	movl	$1464, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp247
	movq	%rax, %rdx	 # tmp247,
	leaq	.LC3(%rip), %rax	 #, tmp248
	movq	%rax, %rcx	 # tmp248,
	call	printf	 #
.L1398:
 # ./test/pdsp_test.c:1465:     PDSP_ASSERT(pdsp_pi(&pi1, -1.0f) == -5.0f);
	leaq	-80(%rbp), %rax	 #, tmp249
	movss	.LC26(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp249,
	call	pdsp_pi	 #
	movd	%xmm0, %eax	 #, _32
 # ./test/pdsp_test.c:1465:     PDSP_ASSERT(pdsp_pi(&pi1, -1.0f) == -5.0f);
	movd	%eax, %xmm4	 # _32, _32
	ucomiss	.LC139(%rip), %xmm4	 #, _32
	jp	.L1469	 #,
	movd	%eax, %xmm5	 # _32, _32
	ucomiss	.LC139(%rip), %xmm5	 #, _32
	je	.L1400	 #,
.L1469:
	movl	$1465, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp250
	movq	%rax, %rdx	 # tmp250,
	leaq	.LC3(%rip), %rax	 #, tmp251
	movq	%rax, %rcx	 # tmp251,
	call	printf	 #
.L1400:
 # ./test/pdsp_test.c:1466:     PDSP_ASSERT(pi1_var.f32_x0 == -6.0f);
	movss	-8(%rbp), %xmm0	 # pi1_var.f32_x0, _33
	ucomiss	.LC140(%rip), %xmm0	 #, _33
	jp	.L1470	 #,
	ucomiss	.LC140(%rip), %xmm0	 #, _33
	je	.L1402	 #,
.L1470:
 # ./test/pdsp_test.c:1466:     PDSP_ASSERT(pi1_var.f32_x0 == -6.0f);
	movl	$1466, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp252
	movq	%rax, %rdx	 # tmp252,
	leaq	.LC3(%rip), %rax	 #, tmp253
	movq	%rax, %rcx	 # tmp253,
	call	printf	 #
.L1402:
 # ./test/pdsp_test.c:1467:     PDSP_ASSERT(pi1_var.f32_x1 == 2.0f);
	movss	-4(%rbp), %xmm0	 # pi1_var.f32_x1, _34
	ucomiss	.LC22(%rip), %xmm0	 #, _34
	jp	.L1471	 #,
	ucomiss	.LC22(%rip), %xmm0	 #, _34
	je	.L1404	 #,
.L1471:
 # ./test/pdsp_test.c:1467:     PDSP_ASSERT(pi1_var.f32_x1 == 2.0f);
	movl	$1467, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp254
	movq	%rax, %rdx	 # tmp254,
	leaq	.LC3(%rip), %rax	 #, tmp255
	movq	%rax, %rcx	 # tmp255,
	call	printf	 #
.L1404:
 # ./test/pdsp_test.c:1469:     pdsp_f32_t f32_error2[2] = {0};
	movq	$0, -88(%rbp)	 #, f32_error2
 # ./test/pdsp_test.c:1470:     pdsp_pi_var_t pi2_var = {2, 3, 33.0f, 66.0f};
	movw	$2, -100(%rbp)	 #, pi2_var.i16_active
	movw	$3, -98(%rbp)	 #, pi2_var.i16_param_idx
	movss	.LC95(%rip), %xmm0	 #, tmp256
	movss	%xmm0, -96(%rbp)	 # tmp256, pi2_var.f32_x0
	movss	.LC138(%rip), %xmm0	 #, tmp257
	movss	%xmm0, -92(%rbp)	 # tmp257, pi2_var.f32_x1
 # ./test/pdsp_test.c:1471:     pdsp_pi_err_param_t pi2_param[4] = {
	movss	.LC23(%rip), %xmm0	 #, tmp258
	movss	%xmm0, -176(%rbp)	 # tmp258, pi2_param[0].f32_kp
	movss	.LC22(%rip), %xmm0	 #, tmp259
	movss	%xmm0, -172(%rbp)	 # tmp259, pi2_param[0].f32_ki
	movss	.LC22(%rip), %xmm0	 #, tmp260
	movss	%xmm0, -168(%rbp)	 # tmp260, pi2_param[0].f32_ks
	movss	.LC23(%rip), %xmm0	 #, tmp261
	movss	%xmm0, -164(%rbp)	 # tmp261, pi2_param[0].f32_ka
	movss	.LC24(%rip), %xmm0	 #, tmp262
	movss	%xmm0, -160(%rbp)	 # tmp262, pi2_param[1].f32_kp
	movss	.LC38(%rip), %xmm0	 #, tmp263
	movss	%xmm0, -156(%rbp)	 # tmp263, pi2_param[1].f32_ki
	movss	.LC38(%rip), %xmm0	 #, tmp264
	movss	%xmm0, -152(%rbp)	 # tmp264, pi2_param[1].f32_ks
	movss	.LC23(%rip), %xmm0	 #, tmp265
	movss	%xmm0, -148(%rbp)	 # tmp265, pi2_param[1].f32_ka
	movss	.LC22(%rip), %xmm0	 #, tmp266
	movss	%xmm0, -144(%rbp)	 # tmp266, pi2_param[2].f32_kp
	movss	.LC23(%rip), %xmm0	 #, tmp267
	movss	%xmm0, -140(%rbp)	 # tmp267, pi2_param[2].f32_ki
	movss	.LC22(%rip), %xmm0	 #, tmp268
	movss	%xmm0, -136(%rbp)	 # tmp268, pi2_param[2].f32_ks
	movss	.LC23(%rip), %xmm0	 #, tmp269
	movss	%xmm0, -132(%rbp)	 # tmp269, pi2_param[2].f32_ka
	movss	.LC38(%rip), %xmm0	 #, tmp270
	movss	%xmm0, -128(%rbp)	 # tmp270, pi2_param[3].f32_kp
	movss	.LC24(%rip), %xmm0	 #, tmp271
	movss	%xmm0, -124(%rbp)	 # tmp271, pi2_param[3].f32_ki
	movss	.LC38(%rip), %xmm0	 #, tmp272
	movss	%xmm0, -120(%rbp)	 # tmp272, pi2_param[3].f32_ks
	movss	.LC23(%rip), %xmm0	 #, tmp273
	movss	%xmm0, -116(%rbp)	 # tmp273, pi2_param[3].f32_ka
 # ./test/pdsp_test.c:1476:     pdsp_pi_t pi2 = {.pas_param = pi2_param,
	leaq	-176(%rbp), %rax	 #, tmp274
	movq	%rax, -208(%rbp)	 # tmp274, pi2.pas_param
	movw	$2, -200(%rbp)	 #, pi2.i16_param_size
	leaq	-100(%rbp), %rax	 #, tmp275
	movq	%rax, -192(%rbp)	 # tmp275, pi2.ps_var
	movss	.LC28(%rip), %xmm0	 #, tmp276
	movss	%xmm0, -184(%rbp)	 # tmp276, pi2.f32_max
	movss	.LC72(%rip), %xmm0	 #, tmp277
	movss	%xmm0, -180(%rbp)	 # tmp277, pi2.f32_min
 # ./test/pdsp_test.c:1481:     pdsp_pi_clear(&pi2);
	leaq	-208(%rbp), %rax	 #, tmp278
	movq	%rax, %rcx	 # tmp278,
	call	pdsp_pi_clear	 #
 # ./test/pdsp_test.c:1482:     PDSP_ASSERT(pi2_var.i16_active == 0);
	movzwl	-100(%rbp), %eax	 # pi2_var.i16_active, _35
	testw	%ax, %ax	 # _35
	je	.L1406	 #,
 # ./test/pdsp_test.c:1482:     PDSP_ASSERT(pi2_var.i16_active == 0);
	movl	$1482, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp279
	movq	%rax, %rdx	 # tmp279,
	leaq	.LC3(%rip), %rax	 #, tmp280
	movq	%rax, %rcx	 # tmp280,
	call	printf	 #
.L1406:
 # ./test/pdsp_test.c:1483:     PDSP_ASSERT(pi2_var.i16_param_idx == 0);
	movzwl	-98(%rbp), %eax	 # pi2_var.i16_param_idx, _36
	testw	%ax, %ax	 # _36
	je	.L1407	 #,
 # ./test/pdsp_test.c:1483:     PDSP_ASSERT(pi2_var.i16_param_idx == 0);
	movl	$1483, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp281
	movq	%rax, %rdx	 # tmp281,
	leaq	.LC3(%rip), %rax	 #, tmp282
	movq	%rax, %rcx	 # tmp282,
	call	printf	 #
.L1407:
 # ./test/pdsp_test.c:1484:     PDSP_ASSERT(pi2_var.f32_x0 == 0.0f);
	movss	-96(%rbp), %xmm0	 # pi2_var.f32_x0, _37
	pxor	%xmm1, %xmm1	 # tmp283
	ucomiss	%xmm1, %xmm0	 # tmp283, _37
	jp	.L1472	 #,
	pxor	%xmm1, %xmm1	 # tmp284
	ucomiss	%xmm1, %xmm0	 # tmp284, _37
	je	.L1408	 #,
.L1472:
 # ./test/pdsp_test.c:1484:     PDSP_ASSERT(pi2_var.f32_x0 == 0.0f);
	movl	$1484, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp285
	movq	%rax, %rdx	 # tmp285,
	leaq	.LC3(%rip), %rax	 #, tmp286
	movq	%rax, %rcx	 # tmp286,
	call	printf	 #
.L1408:
 # ./test/pdsp_test.c:1485:     PDSP_ASSERT(pi2_var.f32_x1 == 0.0f);
	movss	-92(%rbp), %xmm0	 # pi2_var.f32_x1, _38
	pxor	%xmm1, %xmm1	 # tmp287
	ucomiss	%xmm1, %xmm0	 # tmp287, _38
	jp	.L1473	 #,
	pxor	%xmm1, %xmm1	 # tmp288
	ucomiss	%xmm1, %xmm0	 # tmp288, _38
	je	.L1410	 #,
.L1473:
 # ./test/pdsp_test.c:1485:     PDSP_ASSERT(pi2_var.f32_x1 == 0.0f);
	movl	$1485, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp289
	movq	%rax, %rdx	 # tmp289,
	leaq	.LC3(%rip), %rax	 #, tmp290
	movq	%rax, %rcx	 # tmp290,
	call	printf	 #
.L1410:
 # ./test/pdsp_test.c:1486:     f32_error2[0] = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp291
	movss	%xmm0, -88(%rbp)	 # tmp291, f32_error2[0]
 # ./test/pdsp_test.c:1487:     f32_error2[1] = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp292
	movss	%xmm0, -84(%rbp)	 # tmp292, f32_error2[1]
 # ./test/pdsp_test.c:1488:     PDSP_ASSERT(pdsp_pi2(&pi2, f32_error2) == 0.0f);
	leaq	-88(%rbp), %rdx	 #, tmp293
	leaq	-208(%rbp), %rax	 #, tmp294
	movq	%rax, %rcx	 # tmp294,
	call	pdsp_pi2	 #
	movd	%xmm0, %eax	 #, _39
 # ./test/pdsp_test.c:1488:     PDSP_ASSERT(pdsp_pi2(&pi2, f32_error2) == 0.0f);
	pxor	%xmm0, %xmm0	 # tmp295
	movd	%eax, %xmm2	 # _39, _39
	ucomiss	%xmm0, %xmm2	 # tmp295, _39
	jp	.L1474	 #,
	pxor	%xmm0, %xmm0	 # tmp296
	movd	%eax, %xmm3	 # _39, _39
	ucomiss	%xmm0, %xmm3	 # tmp296, _39
	je	.L1412	 #,
.L1474:
	movl	$1488, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp297
	movq	%rax, %rdx	 # tmp297,
	leaq	.LC3(%rip), %rax	 #, tmp298
	movq	%rax, %rcx	 # tmp298,
	call	printf	 #
.L1412:
 # ./test/pdsp_test.c:1489:     PDSP_ASSERT(pi2_var.i16_active == 0);
	movzwl	-100(%rbp), %eax	 # pi2_var.i16_active, _40
	testw	%ax, %ax	 # _40
	je	.L1414	 #,
 # ./test/pdsp_test.c:1489:     PDSP_ASSERT(pi2_var.i16_active == 0);
	movl	$1489, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp299
	movq	%rax, %rdx	 # tmp299,
	leaq	.LC3(%rip), %rax	 #, tmp300
	movq	%rax, %rcx	 # tmp300,
	call	printf	 #
.L1414:
 # ./test/pdsp_test.c:1490:     PDSP_ASSERT(pi2_var.f32_x0 == 0.0f);
	movss	-96(%rbp), %xmm0	 # pi2_var.f32_x0, _41
	pxor	%xmm1, %xmm1	 # tmp301
	ucomiss	%xmm1, %xmm0	 # tmp301, _41
	jp	.L1475	 #,
	pxor	%xmm1, %xmm1	 # tmp302
	ucomiss	%xmm1, %xmm0	 # tmp302, _41
	je	.L1415	 #,
.L1475:
 # ./test/pdsp_test.c:1490:     PDSP_ASSERT(pi2_var.f32_x0 == 0.0f);
	movl	$1490, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp303
	movq	%rax, %rdx	 # tmp303,
	leaq	.LC3(%rip), %rax	 #, tmp304
	movq	%rax, %rcx	 # tmp304,
	call	printf	 #
.L1415:
 # ./test/pdsp_test.c:1491:     PDSP_ASSERT(pi2_var.f32_x1 == 0.0f);
	movss	-92(%rbp), %xmm0	 # pi2_var.f32_x1, _42
	pxor	%xmm1, %xmm1	 # tmp305
	ucomiss	%xmm1, %xmm0	 # tmp305, _42
	jp	.L1476	 #,
	pxor	%xmm1, %xmm1	 # tmp306
	ucomiss	%xmm1, %xmm0	 # tmp306, _42
	je	.L1417	 #,
.L1476:
 # ./test/pdsp_test.c:1491:     PDSP_ASSERT(pi2_var.f32_x1 == 0.0f);
	movl	$1491, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp307
	movq	%rax, %rdx	 # tmp307,
	leaq	.LC3(%rip), %rax	 #, tmp308
	movq	%rax, %rcx	 # tmp308,
	call	printf	 #
.L1417:
 # ./test/pdsp_test.c:1492:     f32_error2[0] = 1.0f;
	movss	.LC23(%rip), %xmm0	 #, tmp309
	movss	%xmm0, -88(%rbp)	 # tmp309, f32_error2[0]
 # ./test/pdsp_test.c:1493:     f32_error2[1] = 2.0f;
	movss	.LC22(%rip), %xmm0	 #, tmp310
	movss	%xmm0, -84(%rbp)	 # tmp310, f32_error2[1]
 # ./test/pdsp_test.c:1494:     PDSP_ASSERT(pdsp_pi2(&pi2, f32_error2) == 3.0f);
	leaq	-88(%rbp), %rdx	 #, tmp311
	leaq	-208(%rbp), %rax	 #, tmp312
	movq	%rax, %rcx	 # tmp312,
	call	pdsp_pi2	 #
	movd	%xmm0, %eax	 #, _43
 # ./test/pdsp_test.c:1494:     PDSP_ASSERT(pdsp_pi2(&pi2, f32_error2) == 3.0f);
	movd	%eax, %xmm4	 # _43, _43
	ucomiss	.LC30(%rip), %xmm4	 #, _43
	jp	.L1477	 #,
	movd	%eax, %xmm5	 # _43, _43
	ucomiss	.LC30(%rip), %xmm5	 #, _43
	je	.L1419	 #,
.L1477:
	movl	$1494, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp313
	movq	%rax, %rdx	 # tmp313,
	leaq	.LC3(%rip), %rax	 #, tmp314
	movq	%rax, %rcx	 # tmp314,
	call	printf	 #
.L1419:
 # ./test/pdsp_test.c:1495:     PDSP_ASSERT(pi2_var.i16_active == 0);
	movzwl	-100(%rbp), %eax	 # pi2_var.i16_active, _44
	testw	%ax, %ax	 # _44
	je	.L1421	 #,
 # ./test/pdsp_test.c:1495:     PDSP_ASSERT(pi2_var.i16_active == 0);
	movl	$1495, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp315
	movq	%rax, %rdx	 # tmp315,
	leaq	.LC3(%rip), %rax	 #, tmp316
	movq	%rax, %rcx	 # tmp316,
	call	printf	 #
.L1421:
 # ./test/pdsp_test.c:1496:     PDSP_ASSERT(pi2_var.f32_x0 == 2.0f);
	movss	-96(%rbp), %xmm0	 # pi2_var.f32_x0, _45
	ucomiss	.LC22(%rip), %xmm0	 #, _45
	jp	.L1478	 #,
	ucomiss	.LC22(%rip), %xmm0	 #, _45
	je	.L1422	 #,
.L1478:
 # ./test/pdsp_test.c:1496:     PDSP_ASSERT(pi2_var.f32_x0 == 2.0f);
	movl	$1496, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp317
	movq	%rax, %rdx	 # tmp317,
	leaq	.LC3(%rip), %rax	 #, tmp318
	movq	%rax, %rcx	 # tmp318,
	call	printf	 #
.L1422:
 # ./test/pdsp_test.c:1497:     PDSP_ASSERT(pi2_var.f32_x1 == 0.0f);
	movss	-92(%rbp), %xmm0	 # pi2_var.f32_x1, _46
	pxor	%xmm1, %xmm1	 # tmp319
	ucomiss	%xmm1, %xmm0	 # tmp319, _46
	jp	.L1479	 #,
	pxor	%xmm1, %xmm1	 # tmp320
	ucomiss	%xmm1, %xmm0	 # tmp320, _46
	je	.L1424	 #,
.L1479:
 # ./test/pdsp_test.c:1497:     PDSP_ASSERT(pi2_var.f32_x1 == 0.0f);
	movl	$1497, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp321
	movq	%rax, %rdx	 # tmp321,
	leaq	.LC3(%rip), %rax	 #, tmp322
	movq	%rax, %rcx	 # tmp322,
	call	printf	 #
.L1424:
 # ./test/pdsp_test.c:1498:     f32_error2[0] = 2.0f;
	movss	.LC22(%rip), %xmm0	 #, tmp323
	movss	%xmm0, -88(%rbp)	 # tmp323, f32_error2[0]
 # ./test/pdsp_test.c:1499:     f32_error2[1] = 1.0f;
	movss	.LC23(%rip), %xmm0	 #, tmp324
	movss	%xmm0, -84(%rbp)	 # tmp324, f32_error2[1]
 # ./test/pdsp_test.c:1500:     PDSP_ASSERT(pdsp_pi2(&pi2, f32_error2) == 6.0f);
	leaq	-88(%rbp), %rdx	 #, tmp325
	leaq	-208(%rbp), %rax	 #, tmp326
	movq	%rax, %rcx	 # tmp326,
	call	pdsp_pi2	 #
	movd	%xmm0, %eax	 #, _47
 # ./test/pdsp_test.c:1500:     PDSP_ASSERT(pdsp_pi2(&pi2, f32_error2) == 6.0f);
	movd	%eax, %xmm2	 # _47, _47
	ucomiss	.LC47(%rip), %xmm2	 #, _47
	jp	.L1480	 #,
	movd	%eax, %xmm3	 # _47, _47
	ucomiss	.LC47(%rip), %xmm3	 #, _47
	je	.L1426	 #,
.L1480:
	movl	$1500, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp327
	movq	%rax, %rdx	 # tmp327,
	leaq	.LC3(%rip), %rax	 #, tmp328
	movq	%rax, %rcx	 # tmp328,
	call	printf	 #
.L1426:
 # ./test/pdsp_test.c:1501:     PDSP_ASSERT(pi2_var.i16_active == 1);
	movzwl	-100(%rbp), %eax	 # pi2_var.i16_active, _48
	cmpw	$1, %ax	 #, _48
	je	.L1428	 #,
 # ./test/pdsp_test.c:1501:     PDSP_ASSERT(pi2_var.i16_active == 1);
	movl	$1501, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp329
	movq	%rax, %rdx	 # tmp329,
	leaq	.LC3(%rip), %rax	 #, tmp330
	movq	%rax, %rcx	 # tmp330,
	call	printf	 #
.L1428:
 # ./test/pdsp_test.c:1502:     PDSP_ASSERT(pi2_var.f32_x0 == 4.5f);
	movss	-96(%rbp), %xmm0	 # pi2_var.f32_x0, _49
	ucomiss	.LC40(%rip), %xmm0	 #, _49
	jp	.L1481	 #,
	ucomiss	.LC40(%rip), %xmm0	 #, _49
	je	.L1429	 #,
.L1481:
 # ./test/pdsp_test.c:1502:     PDSP_ASSERT(pi2_var.f32_x0 == 4.5f);
	movl	$1502, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp331
	movq	%rax, %rdx	 # tmp331,
	leaq	.LC3(%rip), %rax	 #, tmp332
	movq	%rax, %rcx	 # tmp332,
	call	printf	 #
.L1429:
 # ./test/pdsp_test.c:1503:     PDSP_ASSERT(pi2_var.f32_x1 == 0.0f);
	movss	-92(%rbp), %xmm0	 # pi2_var.f32_x1, _50
	pxor	%xmm1, %xmm1	 # tmp333
	ucomiss	%xmm1, %xmm0	 # tmp333, _50
	jp	.L1482	 #,
	pxor	%xmm1, %xmm1	 # tmp334
	ucomiss	%xmm1, %xmm0	 # tmp334, _50
	je	.L1431	 #,
.L1482:
 # ./test/pdsp_test.c:1503:     PDSP_ASSERT(pi2_var.f32_x1 == 0.0f);
	movl	$1503, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp335
	movq	%rax, %rdx	 # tmp335,
	leaq	.LC3(%rip), %rax	 #, tmp336
	movq	%rax, %rcx	 # tmp336,
	call	printf	 #
.L1431:
 # ./test/pdsp_test.c:1504:     f32_error2[0] = 2.0f;
	movss	.LC22(%rip), %xmm0	 #, tmp337
	movss	%xmm0, -88(%rbp)	 # tmp337, f32_error2[0]
 # ./test/pdsp_test.c:1505:     f32_error2[1] = -1.0f;
	movss	.LC26(%rip), %xmm0	 #, tmp338
	movss	%xmm0, -84(%rbp)	 # tmp338, f32_error2[1]
 # ./test/pdsp_test.c:1506:     PDSP_ASSERT(pdsp_pi2(&pi2, f32_error2) == 0.5f);
	leaq	-88(%rbp), %rdx	 #, tmp339
	leaq	-208(%rbp), %rax	 #, tmp340
	movq	%rax, %rcx	 # tmp340,
	call	pdsp_pi2	 #
	movd	%xmm0, %eax	 #, _51
 # ./test/pdsp_test.c:1506:     PDSP_ASSERT(pdsp_pi2(&pi2, f32_error2) == 0.5f);
	movd	%eax, %xmm4	 # _51, _51
	ucomiss	.LC37(%rip), %xmm4	 #, _51
	jp	.L1483	 #,
	movd	%eax, %xmm5	 # _51, _51
	ucomiss	.LC37(%rip), %xmm5	 #, _51
	je	.L1433	 #,
.L1483:
	movl	$1506, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp341
	movq	%rax, %rdx	 # tmp341,
	leaq	.LC3(%rip), %rax	 #, tmp342
	movq	%rax, %rcx	 # tmp342,
	call	printf	 #
.L1433:
 # ./test/pdsp_test.c:1507:     PDSP_ASSERT(pi2_var.i16_active == 1);
	movzwl	-100(%rbp), %eax	 # pi2_var.i16_active, _52
	cmpw	$1, %ax	 #, _52
	je	.L1435	 #,
 # ./test/pdsp_test.c:1507:     PDSP_ASSERT(pi2_var.i16_active == 1);
	movl	$1507, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp343
	movq	%rax, %rdx	 # tmp343,
	leaq	.LC3(%rip), %rax	 #, tmp344
	movq	%rax, %rcx	 # tmp344,
	call	printf	 #
.L1435:
 # ./test/pdsp_test.c:1508:     PDSP_ASSERT(pi2_var.f32_x0 == 2.0f);
	movss	-96(%rbp), %xmm0	 # pi2_var.f32_x0, _53
	ucomiss	.LC22(%rip), %xmm0	 #, _53
	jp	.L1484	 #,
	ucomiss	.LC22(%rip), %xmm0	 #, _53
	je	.L1436	 #,
.L1484:
 # ./test/pdsp_test.c:1508:     PDSP_ASSERT(pi2_var.f32_x0 == 2.0f);
	movl	$1508, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp345
	movq	%rax, %rdx	 # tmp345,
	leaq	.LC3(%rip), %rax	 #, tmp346
	movq	%rax, %rcx	 # tmp346,
	call	printf	 #
.L1436:
 # ./test/pdsp_test.c:1509:     PDSP_ASSERT(pi2_var.f32_x1 == 0.0f);
	movss	-92(%rbp), %xmm0	 # pi2_var.f32_x1, _54
	pxor	%xmm1, %xmm1	 # tmp347
	ucomiss	%xmm1, %xmm0	 # tmp347, _54
	jp	.L1485	 #,
	pxor	%xmm1, %xmm1	 # tmp348
	ucomiss	%xmm1, %xmm0	 # tmp348, _54
	je	.L1486	 #,
.L1485:
 # ./test/pdsp_test.c:1509:     PDSP_ASSERT(pi2_var.f32_x1 == 0.0f);
	movl	$1509, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp349
	movq	%rax, %rdx	 # tmp349,
	leaq	.LC3(%rip), %rax	 #, tmp350
	movq	%rax, %rcx	 # tmp350,
	call	printf	 #
.L1486:
 # ./test/pdsp_test.c:1510: }
	nop	
	addq	$240, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC141:
	.ascii "-- void test_bit_read_write(void) --\12\0"
	.text
	.globl	test_bit_read_write
	.def	test_bit_read_write;	.scl	2;	.type	32;	.endef
	.seh_proc	test_bit_read_write
test_bit_read_write:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
 # ./test/pdsp_test.c:1514:     printf("-- void test_bit_read_write(void) --\n");
	leaq	.LC141(%rip), %rax	 #, tmp104
	movq	%rax, %rcx	 # tmp104,
	call	printf	 #
 # ./test/pdsp_test.c:1515:     pdsp_u16_t u16_data = 0;
	movw	$0, -2(%rbp)	 #, u16_data
 # ./test/pdsp_test.c:1516:     pdsp_u32_t u32_data = 0;
	movl	$0, -8(%rbp)	 #, u32_data
 # ./test/pdsp_test.c:1517:     pdsp_bit_write_u16(&u16_data, 4U, PDSP_TRUE);
	leaq	-2(%rbp), %rax	 #, tmp105
	movl	$1, %r8d	 #,
	movl	$4, %edx	 #,
	movq	%rax, %rcx	 # tmp105,
	call	pdsp_bit_write_u16	 #
 # ./test/pdsp_test.c:1518:     pdsp_bit_write_u16(&u16_data, 8U, PDSP_TRUE);
	leaq	-2(%rbp), %rax	 #, tmp106
	movl	$1, %r8d	 #,
	movl	$8, %edx	 #,
	movq	%rax, %rcx	 # tmp106,
	call	pdsp_bit_write_u16	 #
 # ./test/pdsp_test.c:1519:     pdsp_bit_write_u16(&u16_data, 12U, PDSP_TRUE);
	leaq	-2(%rbp), %rax	 #, tmp107
	movl	$1, %r8d	 #,
	movl	$12, %edx	 #,
	movq	%rax, %rcx	 # tmp107,
	call	pdsp_bit_write_u16	 #
 # ./test/pdsp_test.c:1520:     PDSP_ASSERT(u16_data == (16 + 256 + 4096));
	movzwl	-2(%rbp), %eax	 # u16_data, u16_data.64_1
	cmpw	$4368, %ax	 #, u16_data.64_1
	je	.L1488	 #,
 # ./test/pdsp_test.c:1520:     PDSP_ASSERT(u16_data == (16 + 256 + 4096));
	movl	$1520, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp108
	movq	%rax, %rdx	 # tmp108,
	leaq	.LC3(%rip), %rax	 #, tmp109
	movq	%rax, %rcx	 # tmp109,
	call	printf	 #
.L1488:
 # ./test/pdsp_test.c:1521:     PDSP_ASSERT(pdsp_bit_read_u16(&u16_data, 0U) == PDSP_FALSE);
	leaq	-2(%rbp), %rax	 #, tmp110
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp110,
	call	pdsp_bit_read_u16	 #
 # ./test/pdsp_test.c:1521:     PDSP_ASSERT(pdsp_bit_read_u16(&u16_data, 0U) == PDSP_FALSE);
	testb	%al, %al	 # _2
	je	.L1489	 #,
	movl	$1521, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp111
	movq	%rax, %rdx	 # tmp111,
	leaq	.LC3(%rip), %rax	 #, tmp112
	movq	%rax, %rcx	 # tmp112,
	call	printf	 #
.L1489:
 # ./test/pdsp_test.c:1522:     PDSP_ASSERT(pdsp_bit_read_u16(&u16_data, 4U) == PDSP_TRUE);
	leaq	-2(%rbp), %rax	 #, tmp113
	movl	$4, %edx	 #,
	movq	%rax, %rcx	 # tmp113,
	call	pdsp_bit_read_u16	 #
 # ./test/pdsp_test.c:1522:     PDSP_ASSERT(pdsp_bit_read_u16(&u16_data, 4U) == PDSP_TRUE);
	xorl	$1, %eax	 #, _4
	testb	%al, %al	 # _4
	je	.L1490	 #,
	movl	$1522, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp114
	movq	%rax, %rdx	 # tmp114,
	leaq	.LC3(%rip), %rax	 #, tmp115
	movq	%rax, %rcx	 # tmp115,
	call	printf	 #
.L1490:
 # ./test/pdsp_test.c:1523:     PDSP_ASSERT(pdsp_bit_read_u16(&u16_data, 8U) == PDSP_TRUE);
	leaq	-2(%rbp), %rax	 #, tmp116
	movl	$8, %edx	 #,
	movq	%rax, %rcx	 # tmp116,
	call	pdsp_bit_read_u16	 #
 # ./test/pdsp_test.c:1523:     PDSP_ASSERT(pdsp_bit_read_u16(&u16_data, 8U) == PDSP_TRUE);
	xorl	$1, %eax	 #, _6
	testb	%al, %al	 # _6
	je	.L1491	 #,
	movl	$1523, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp117
	movq	%rax, %rdx	 # tmp117,
	leaq	.LC3(%rip), %rax	 #, tmp118
	movq	%rax, %rcx	 # tmp118,
	call	printf	 #
.L1491:
 # ./test/pdsp_test.c:1524:     PDSP_ASSERT(pdsp_bit_read_u16(&u16_data, 12U) == PDSP_TRUE);
	leaq	-2(%rbp), %rax	 #, tmp119
	movl	$12, %edx	 #,
	movq	%rax, %rcx	 # tmp119,
	call	pdsp_bit_read_u16	 #
 # ./test/pdsp_test.c:1524:     PDSP_ASSERT(pdsp_bit_read_u16(&u16_data, 12U) == PDSP_TRUE);
	xorl	$1, %eax	 #, _8
	testb	%al, %al	 # _8
	je	.L1492	 #,
	movl	$1524, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp120
	movq	%rax, %rdx	 # tmp120,
	leaq	.LC3(%rip), %rax	 #, tmp121
	movq	%rax, %rcx	 # tmp121,
	call	printf	 #
.L1492:
 # ./test/pdsp_test.c:1525:     PDSP_ASSERT(pdsp_bit_read_u16(&u16_data, 15U) == PDSP_FALSE);
	leaq	-2(%rbp), %rax	 #, tmp122
	movl	$15, %edx	 #,
	movq	%rax, %rcx	 # tmp122,
	call	pdsp_bit_read_u16	 #
 # ./test/pdsp_test.c:1525:     PDSP_ASSERT(pdsp_bit_read_u16(&u16_data, 15U) == PDSP_FALSE);
	testb	%al, %al	 # _9
	je	.L1493	 #,
	movl	$1525, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp123
	movq	%rax, %rdx	 # tmp123,
	leaq	.LC3(%rip), %rax	 #, tmp124
	movq	%rax, %rcx	 # tmp124,
	call	printf	 #
.L1493:
 # ./test/pdsp_test.c:1526:     pdsp_bit_write_u16(&u16_data, 4U, PDSP_FALSE);
	leaq	-2(%rbp), %rax	 #, tmp125
	movl	$0, %r8d	 #,
	movl	$4, %edx	 #,
	movq	%rax, %rcx	 # tmp125,
	call	pdsp_bit_write_u16	 #
 # ./test/pdsp_test.c:1527:     pdsp_bit_write_u16(&u16_data, 8U, PDSP_FALSE);
	leaq	-2(%rbp), %rax	 #, tmp126
	movl	$0, %r8d	 #,
	movl	$8, %edx	 #,
	movq	%rax, %rcx	 # tmp126,
	call	pdsp_bit_write_u16	 #
 # ./test/pdsp_test.c:1528:     pdsp_bit_write_u16(&u16_data, 12U, PDSP_FALSE);
	leaq	-2(%rbp), %rax	 #, tmp127
	movl	$0, %r8d	 #,
	movl	$12, %edx	 #,
	movq	%rax, %rcx	 # tmp127,
	call	pdsp_bit_write_u16	 #
 # ./test/pdsp_test.c:1529:     PDSP_ASSERT(u16_data == 0);
	movzwl	-2(%rbp), %eax	 # u16_data, u16_data.65_10
	testw	%ax, %ax	 # u16_data.65_10
	je	.L1494	 #,
 # ./test/pdsp_test.c:1529:     PDSP_ASSERT(u16_data == 0);
	movl	$1529, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp128
	movq	%rax, %rdx	 # tmp128,
	leaq	.LC3(%rip), %rax	 #, tmp129
	movq	%rax, %rcx	 # tmp129,
	call	printf	 #
.L1494:
 # ./test/pdsp_test.c:1530:     pdsp_bit_write_u32(&u32_data, 4U, PDSP_TRUE);
	leaq	-8(%rbp), %rax	 #, tmp130
	movl	$1, %r8d	 #,
	movl	$4, %edx	 #,
	movq	%rax, %rcx	 # tmp130,
	call	pdsp_bit_write_u32	 #
 # ./test/pdsp_test.c:1531:     pdsp_bit_write_u32(&u32_data, 8U, PDSP_TRUE);
	leaq	-8(%rbp), %rax	 #, tmp131
	movl	$1, %r8d	 #,
	movl	$8, %edx	 #,
	movq	%rax, %rcx	 # tmp131,
	call	pdsp_bit_write_u32	 #
 # ./test/pdsp_test.c:1532:     pdsp_bit_write_u32(&u32_data, 12U, PDSP_TRUE);
	leaq	-8(%rbp), %rax	 #, tmp132
	movl	$1, %r8d	 #,
	movl	$12, %edx	 #,
	movq	%rax, %rcx	 # tmp132,
	call	pdsp_bit_write_u32	 #
 # ./test/pdsp_test.c:1533:     pdsp_bit_write_u32(&u32_data, 24U, PDSP_TRUE);
	leaq	-8(%rbp), %rax	 #, tmp133
	movl	$1, %r8d	 #,
	movl	$24, %edx	 #,
	movq	%rax, %rcx	 # tmp133,
	call	pdsp_bit_write_u32	 #
 # ./test/pdsp_test.c:1534:     PDSP_ASSERT(u32_data == (16 + 256 + 4096 + 16777216));
	movl	-8(%rbp), %eax	 # u32_data, u32_data.66_11
	cmpl	$16781584, %eax	 #, u32_data.66_11
	je	.L1495	 #,
 # ./test/pdsp_test.c:1534:     PDSP_ASSERT(u32_data == (16 + 256 + 4096 + 16777216));
	movl	$1534, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp134
	movq	%rax, %rdx	 # tmp134,
	leaq	.LC3(%rip), %rax	 #, tmp135
	movq	%rax, %rcx	 # tmp135,
	call	printf	 #
.L1495:
 # ./test/pdsp_test.c:1535:     PDSP_ASSERT(pdsp_bit_read_u32(&u32_data, 0U) == PDSP_FALSE);
	leaq	-8(%rbp), %rax	 #, tmp136
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp136,
	call	pdsp_bit_read_u32	 #
 # ./test/pdsp_test.c:1535:     PDSP_ASSERT(pdsp_bit_read_u32(&u32_data, 0U) == PDSP_FALSE);
	testb	%al, %al	 # _12
	je	.L1496	 #,
	movl	$1535, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp137
	movq	%rax, %rdx	 # tmp137,
	leaq	.LC3(%rip), %rax	 #, tmp138
	movq	%rax, %rcx	 # tmp138,
	call	printf	 #
.L1496:
 # ./test/pdsp_test.c:1536:     PDSP_ASSERT(pdsp_bit_read_u32(&u32_data, 4U) == PDSP_TRUE);
	leaq	-8(%rbp), %rax	 #, tmp139
	movl	$4, %edx	 #,
	movq	%rax, %rcx	 # tmp139,
	call	pdsp_bit_read_u32	 #
 # ./test/pdsp_test.c:1536:     PDSP_ASSERT(pdsp_bit_read_u32(&u32_data, 4U) == PDSP_TRUE);
	xorl	$1, %eax	 #, _14
	testb	%al, %al	 # _14
	je	.L1497	 #,
	movl	$1536, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp140
	movq	%rax, %rdx	 # tmp140,
	leaq	.LC3(%rip), %rax	 #, tmp141
	movq	%rax, %rcx	 # tmp141,
	call	printf	 #
.L1497:
 # ./test/pdsp_test.c:1537:     PDSP_ASSERT(pdsp_bit_read_u32(&u32_data, 8U) == PDSP_TRUE);
	leaq	-8(%rbp), %rax	 #, tmp142
	movl	$8, %edx	 #,
	movq	%rax, %rcx	 # tmp142,
	call	pdsp_bit_read_u32	 #
 # ./test/pdsp_test.c:1537:     PDSP_ASSERT(pdsp_bit_read_u32(&u32_data, 8U) == PDSP_TRUE);
	xorl	$1, %eax	 #, _16
	testb	%al, %al	 # _16
	je	.L1498	 #,
	movl	$1537, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp143
	movq	%rax, %rdx	 # tmp143,
	leaq	.LC3(%rip), %rax	 #, tmp144
	movq	%rax, %rcx	 # tmp144,
	call	printf	 #
.L1498:
 # ./test/pdsp_test.c:1538:     PDSP_ASSERT(pdsp_bit_read_u32(&u32_data, 12U) == PDSP_TRUE);
	leaq	-8(%rbp), %rax	 #, tmp145
	movl	$12, %edx	 #,
	movq	%rax, %rcx	 # tmp145,
	call	pdsp_bit_read_u32	 #
 # ./test/pdsp_test.c:1538:     PDSP_ASSERT(pdsp_bit_read_u32(&u32_data, 12U) == PDSP_TRUE);
	xorl	$1, %eax	 #, _18
	testb	%al, %al	 # _18
	je	.L1499	 #,
	movl	$1538, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp146
	movq	%rax, %rdx	 # tmp146,
	leaq	.LC3(%rip), %rax	 #, tmp147
	movq	%rax, %rcx	 # tmp147,
	call	printf	 #
.L1499:
 # ./test/pdsp_test.c:1539:     PDSP_ASSERT(pdsp_bit_read_u32(&u32_data, 24U) == PDSP_TRUE);
	leaq	-8(%rbp), %rax	 #, tmp148
	movl	$24, %edx	 #,
	movq	%rax, %rcx	 # tmp148,
	call	pdsp_bit_read_u32	 #
 # ./test/pdsp_test.c:1539:     PDSP_ASSERT(pdsp_bit_read_u32(&u32_data, 24U) == PDSP_TRUE);
	xorl	$1, %eax	 #, _20
	testb	%al, %al	 # _20
	je	.L1500	 #,
	movl	$1539, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp149
	movq	%rax, %rdx	 # tmp149,
	leaq	.LC3(%rip), %rax	 #, tmp150
	movq	%rax, %rcx	 # tmp150,
	call	printf	 #
.L1500:
 # ./test/pdsp_test.c:1540:     PDSP_ASSERT(pdsp_bit_read_u32(&u32_data, 31U) == PDSP_FALSE);
	leaq	-8(%rbp), %rax	 #, tmp151
	movl	$31, %edx	 #,
	movq	%rax, %rcx	 # tmp151,
	call	pdsp_bit_read_u32	 #
 # ./test/pdsp_test.c:1540:     PDSP_ASSERT(pdsp_bit_read_u32(&u32_data, 31U) == PDSP_FALSE);
	testb	%al, %al	 # _21
	je	.L1501	 #,
	movl	$1540, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp152
	movq	%rax, %rdx	 # tmp152,
	leaq	.LC3(%rip), %rax	 #, tmp153
	movq	%rax, %rcx	 # tmp153,
	call	printf	 #
.L1501:
 # ./test/pdsp_test.c:1541:     pdsp_bit_write_u32(&u32_data, 4U, PDSP_FALSE);
	leaq	-8(%rbp), %rax	 #, tmp154
	movl	$0, %r8d	 #,
	movl	$4, %edx	 #,
	movq	%rax, %rcx	 # tmp154,
	call	pdsp_bit_write_u32	 #
 # ./test/pdsp_test.c:1542:     pdsp_bit_write_u32(&u32_data, 8U, PDSP_FALSE);
	leaq	-8(%rbp), %rax	 #, tmp155
	movl	$0, %r8d	 #,
	movl	$8, %edx	 #,
	movq	%rax, %rcx	 # tmp155,
	call	pdsp_bit_write_u32	 #
 # ./test/pdsp_test.c:1543:     pdsp_bit_write_u32(&u32_data, 12U, PDSP_FALSE);
	leaq	-8(%rbp), %rax	 #, tmp156
	movl	$0, %r8d	 #,
	movl	$12, %edx	 #,
	movq	%rax, %rcx	 # tmp156,
	call	pdsp_bit_write_u32	 #
 # ./test/pdsp_test.c:1544:     pdsp_bit_write_u32(&u32_data, 24U, PDSP_FALSE);
	leaq	-8(%rbp), %rax	 #, tmp157
	movl	$0, %r8d	 #,
	movl	$24, %edx	 #,
	movq	%rax, %rcx	 # tmp157,
	call	pdsp_bit_write_u32	 #
 # ./test/pdsp_test.c:1545:     PDSP_ASSERT(u32_data == 0);
	movl	-8(%rbp), %eax	 # u32_data, u32_data.67_22
	testl	%eax, %eax	 # u32_data.67_22
	je	.L1503	 #,
 # ./test/pdsp_test.c:1545:     PDSP_ASSERT(u32_data == 0);
	movl	$1545, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp158
	movq	%rax, %rdx	 # tmp158,
	leaq	.LC3(%rip), %rax	 #, tmp159
	movq	%rax, %rcx	 # tmp159,
	call	printf	 #
.L1503:
 # ./test/pdsp_test.c:1546: }
	nop	
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC142:
	.ascii "-- void test_signal_read_write(void) --\12\0"
	.text
	.globl	test_signal_read_write
	.def	test_signal_read_write;	.scl	2;	.type	32;	.endef
	.seh_proc	test_signal_read_write
test_signal_read_write:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$80, %rsp	 #,
	.seh_stackalloc	80
	.seh_endprologue
 # ./test/pdsp_test.c:1550:     printf("-- void test_signal_read_write(void) --\n");
	leaq	.LC142(%rip), %rax	 #, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	printf	 #
 # ./test/pdsp_test.c:1551:     pdsp_u64_t mem = 0;
	movq	$0, -8(%rbp)	 #, mem
 # ./test/pdsp_test.c:1552:     const pdsp_signal_prop_t sig1 = {
	movss	.LC22(%rip), %xmm0	 #, tmp91
	movss	%xmm0, -20(%rbp)	 # tmp91, sig1.f32_gain
	movss	.LC23(%rip), %xmm0	 #, tmp92
	movss	%xmm0, -16(%rbp)	 # tmp92, sig1.f32_offset
	movw	$0, -12(%rbp)	 #, sig1.u16_start
	movw	$8, -10(%rbp)	 #, sig1.u16_length
 # ./test/pdsp_test.c:1554:     const pdsp_signal_prop_t sig2 = {
	movss	.LC22(%rip), %xmm0	 #, tmp93
	movss	%xmm0, -32(%rbp)	 # tmp93, sig2.f32_gain
	movss	.LC23(%rip), %xmm0	 #, tmp94
	movss	%xmm0, -28(%rbp)	 # tmp94, sig2.f32_offset
	movw	$8, -24(%rbp)	 #, sig2.u16_start
	movw	$8, -22(%rbp)	 #, sig2.u16_length
 # ./test/pdsp_test.c:1556:     const pdsp_signal_prop_t sig3 = {
	movss	.LC143(%rip), %xmm0	 #, tmp95
	movss	%xmm0, -44(%rbp)	 # tmp95, sig3.f32_gain
	movss	.LC143(%rip), %xmm0	 #, tmp96
	movss	%xmm0, -40(%rbp)	 # tmp96, sig3.f32_offset
	movw	$63, -36(%rbp)	 #, sig3.u16_start
	movw	$1, -34(%rbp)	 #, sig3.u16_length
 # ./test/pdsp_test.c:1558:     pdsp_signal_write_f32(&sig1, &mem, 11.0);
	leaq	-8(%rbp), %rdx	 #, tmp97
	leaq	-20(%rbp), %rax	 #, tmp98
	movss	.LC117(%rip), %xmm2	 #,
	movq	%rax, %rcx	 # tmp98,
	call	pdsp_signal_write_f32	 #
 # ./test/pdsp_test.c:1559:     PDSP_ASSERT(mem == 23);
	movq	-8(%rbp), %rax	 # mem, mem.68_1
	cmpq	$23, %rax	 #, mem.68_1
	je	.L1505	 #,
 # ./test/pdsp_test.c:1559:     PDSP_ASSERT(mem == 23);
	movl	$1559, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp99
	movq	%rax, %rdx	 # tmp99,
	leaq	.LC3(%rip), %rax	 #, tmp100
	movq	%rax, %rcx	 # tmp100,
	call	printf	 #
.L1505:
 # ./test/pdsp_test.c:1560:     PDSP_ASSERT(pdsp_signal_read_u16(&sig1, &mem) == 23);
	leaq	-8(%rbp), %rdx	 #, tmp101
	leaq	-20(%rbp), %rax	 #, tmp102
	movq	%rax, %rcx	 # tmp102,
	call	pdsp_signal_read_u16	 #
 # ./test/pdsp_test.c:1560:     PDSP_ASSERT(pdsp_signal_read_u16(&sig1, &mem) == 23);
	cmpw	$23, %ax	 #, _2
	je	.L1506	 #,
	movl	$1560, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp103
	movq	%rax, %rdx	 # tmp103,
	leaq	.LC3(%rip), %rax	 #, tmp104
	movq	%rax, %rcx	 # tmp104,
	call	printf	 #
.L1506:
 # ./test/pdsp_test.c:1561:     PDSP_ASSERT(pdsp_signal_read_f32(&sig1, &mem) == 11.0f);
	leaq	-8(%rbp), %rdx	 #, tmp105
	leaq	-20(%rbp), %rax	 #, tmp106
	movq	%rax, %rcx	 # tmp106,
	call	pdsp_signal_read_f32	 #
	movd	%xmm0, %eax	 #, _3
 # ./test/pdsp_test.c:1561:     PDSP_ASSERT(pdsp_signal_read_f32(&sig1, &mem) == 11.0f);
	movd	%eax, %xmm1	 # _3, _3
	ucomiss	.LC117(%rip), %xmm1	 #, _3
	jp	.L1515	 #,
	movd	%eax, %xmm3	 # _3, _3
	ucomiss	.LC117(%rip), %xmm3	 #, _3
	je	.L1507	 #,
.L1515:
	movl	$1561, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp107
	movq	%rax, %rdx	 # tmp107,
	leaq	.LC3(%rip), %rax	 #, tmp108
	movq	%rax, %rcx	 # tmp108,
	call	printf	 #
.L1507:
 # ./test/pdsp_test.c:1562:     pdsp_signal_write_f32(&sig2, &mem, 11.0);
	leaq	-8(%rbp), %rdx	 #, tmp109
	leaq	-32(%rbp), %rax	 #, tmp110
	movss	.LC117(%rip), %xmm2	 #,
	movq	%rax, %rcx	 # tmp110,
	call	pdsp_signal_write_f32	 #
 # ./test/pdsp_test.c:1563:     PDSP_ASSERT(mem == 23 * 256 + 23);
	movq	-8(%rbp), %rax	 # mem, mem.69_4
	cmpq	$5911, %rax	 #, mem.69_4
	je	.L1509	 #,
 # ./test/pdsp_test.c:1563:     PDSP_ASSERT(mem == 23 * 256 + 23);
	movl	$1563, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp111
	movq	%rax, %rdx	 # tmp111,
	leaq	.LC3(%rip), %rax	 #, tmp112
	movq	%rax, %rcx	 # tmp112,
	call	printf	 #
.L1509:
 # ./test/pdsp_test.c:1564:     PDSP_ASSERT(pdsp_signal_read_u16(&sig2, &mem) == 23);
	leaq	-8(%rbp), %rdx	 #, tmp113
	leaq	-32(%rbp), %rax	 #, tmp114
	movq	%rax, %rcx	 # tmp114,
	call	pdsp_signal_read_u16	 #
 # ./test/pdsp_test.c:1564:     PDSP_ASSERT(pdsp_signal_read_u16(&sig2, &mem) == 23);
	cmpw	$23, %ax	 #, _5
	je	.L1510	 #,
	movl	$1564, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp115
	movq	%rax, %rdx	 # tmp115,
	leaq	.LC3(%rip), %rax	 #, tmp116
	movq	%rax, %rcx	 # tmp116,
	call	printf	 #
.L1510:
 # ./test/pdsp_test.c:1565:     PDSP_ASSERT(pdsp_signal_read_f32(&sig2, &mem) == 11.0f);
	leaq	-8(%rbp), %rdx	 #, tmp117
	leaq	-32(%rbp), %rax	 #, tmp118
	movq	%rax, %rcx	 # tmp118,
	call	pdsp_signal_read_f32	 #
	movd	%xmm0, %eax	 #, _6
 # ./test/pdsp_test.c:1565:     PDSP_ASSERT(pdsp_signal_read_f32(&sig2, &mem) == 11.0f);
	movd	%eax, %xmm4	 # _6, _6
	ucomiss	.LC117(%rip), %xmm4	 #, _6
	jp	.L1516	 #,
	movd	%eax, %xmm5	 # _6, _6
	ucomiss	.LC117(%rip), %xmm5	 #, _6
	je	.L1511	 #,
.L1516:
	movl	$1565, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp119
	movq	%rax, %rdx	 # tmp119,
	leaq	.LC3(%rip), %rax	 #, tmp120
	movq	%rax, %rcx	 # tmp120,
	call	printf	 #
.L1511:
 # ./test/pdsp_test.c:1566:     mem = 0;
	movq	$0, -8(%rbp)	 #, mem
 # ./test/pdsp_test.c:1567:     pdsp_signal_write_u16(&sig3, &mem, 1);
	leaq	-8(%rbp), %rdx	 #, tmp121
	leaq	-44(%rbp), %rax	 #, tmp122
	movl	$1, %r8d	 #,
	movq	%rax, %rcx	 # tmp122,
	call	pdsp_signal_write_u16	 #
 # ./test/pdsp_test.c:1568:     PDSP_ASSERT(mem == 0x8000000000000000);
	movq	-8(%rbp), %rdx	 # mem, mem.70_7
	movabsq	$-9223372036854775808, %rax	 #, tmp123
	cmpq	%rax, %rdx	 # tmp123, mem.70_7
	je	.L1513	 #,
 # ./test/pdsp_test.c:1568:     PDSP_ASSERT(mem == 0x8000000000000000);
	movl	$1568, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp124
	movq	%rax, %rdx	 # tmp124,
	leaq	.LC3(%rip), %rax	 #, tmp125
	movq	%rax, %rcx	 # tmp125,
	call	printf	 #
.L1513:
 # ./test/pdsp_test.c:1569:     PDSP_ASSERT(pdsp_signal_read_u16(&sig3, &mem) == 1);
	leaq	-8(%rbp), %rdx	 #, tmp126
	leaq	-44(%rbp), %rax	 #, tmp127
	movq	%rax, %rcx	 # tmp127,
	call	pdsp_signal_read_u16	 #
 # ./test/pdsp_test.c:1569:     PDSP_ASSERT(pdsp_signal_read_u16(&sig3, &mem) == 1);
	cmpw	$1, %ax	 #, _8
	je	.L1517	 #,
	movl	$1569, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp128
	movq	%rax, %rdx	 # tmp128,
	leaq	.LC3(%rip), %rax	 #, tmp129
	movq	%rax, %rcx	 # tmp129,
	call	printf	 #
.L1517:
 # ./test/pdsp_test.c:1570: }
	nop	
	addq	$80, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC144:
	.ascii "-- void test_fault(void) --\12\0"
	.text
	.globl	test_fault
	.def	test_fault;	.scl	2;	.type	32;	.endef
	.seh_proc	test_fault
test_fault:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	addq	$-128, %rsp	 #,
	.seh_stackalloc	128
	.seh_endprologue
 # ./test/pdsp_test.c:1574:     printf("-- void test_fault(void) --\n");
	leaq	.LC144(%rip), %rax	 #, tmp155
	movq	%rax, %rcx	 # tmp155,
	call	printf	 #
 # ./test/pdsp_test.c:1575:     pdsp_u32_t flt_status = 0;
	movl	$0, -4(%rbp)	 #, flt_status
 # ./test/pdsp_test.c:1576:     pdsp_u32_t flt_ena = 0;
	movl	$0, -8(%rbp)	 #, flt_ena
 # ./test/pdsp_test.c:1577:     pdsp_fault_var_t flt_var = {0};
	movq	$0, -20(%rbp)	 #, flt_var
	movl	$0, -12(%rbp)	 #, flt_var
 # ./test/pdsp_test.c:1578:     pdsp_fault_t flt = {.ps_var = &flt_var,
	leaq	-20(%rbp), %rax	 #, tmp156
	movq	%rax, -96(%rbp)	 # tmp156, flt.ps_var
	movss	.LC23(%rip), %xmm0	 #, tmp157
	movss	%xmm0, -88(%rbp)	 # tmp157, flt.f32_time_step
	movss	.LC22(%rip), %xmm0	 #, tmp158
	movss	%xmm0, -84(%rbp)	 # tmp158, flt.f32_time_trip
	movss	.LC22(%rip), %xmm0	 #, tmp159
	movss	%xmm0, -80(%rbp)	 # tmp159, flt.f32_time_rec
	movss	.LC24(%rip), %xmm0	 #, tmp160
	movss	%xmm0, -76(%rbp)	 # tmp160, flt.f32_val_trip
	movss	.LC37(%rip), %xmm0	 #, tmp161
	movss	%xmm0, -72(%rbp)	 # tmp161, flt.f32_val_rec
	movl	$1, -68(%rbp)	 #, flt.u16_rec_limit
	leaq	-4(%rbp), %rax	 #, tmp162
	movq	%rax, -64(%rbp)	 # tmp162, flt.u32_status
	movl	$1, -56(%rbp)	 #, flt.u32_status_mask
	leaq	-8(%rbp), %rax	 #, tmp163
	movq	%rax, -48(%rbp)	 # tmp163, flt.u32_ena
	movl	$1, -40(%rbp)	 #, flt.u32_ena_mask
 # ./test/pdsp_test.c:1589:     flt_ena = 1;
	movl	$1, -8(%rbp)	 #, flt_ena
 # ./test/pdsp_test.c:1590:     pdsp_fault_init(&flt);
	leaq	-96(%rbp), %rax	 #, tmp164
	movq	%rax, %rcx	 # tmp164,
	call	pdsp_fault_init	 #
 # ./test/pdsp_test.c:1591:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp165
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp165,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1591:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	testb	%al, %al	 # _1
	je	.L1519	 #,
	movl	$1591, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp166
	movq	%rax, %rdx	 # tmp166,
	leaq	.LC3(%rip), %rax	 #, tmp167
	movq	%rax, %rcx	 # tmp167,
	call	printf	 #
.L1519:
 # ./test/pdsp_test.c:1592:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp168
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp168,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1592:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	testb	%al, %al	 # _2
	je	.L1520	 #,
	movl	$1592, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp169
	movq	%rax, %rdx	 # tmp169,
	leaq	.LC3(%rip), %rax	 #, tmp170
	movq	%rax, %rcx	 # tmp170,
	call	printf	 #
.L1520:
 # ./test/pdsp_test.c:1593:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp171
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp171,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1593:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	testb	%al, %al	 # _3
	je	.L1521	 #,
	movl	$1593, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp172
	movq	%rax, %rdx	 # tmp172,
	leaq	.LC3(%rip), %rax	 #, tmp173
	movq	%rax, %rcx	 # tmp173,
	call	printf	 #
.L1521:
 # ./test/pdsp_test.c:1594:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp174
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp174,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1594:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	testb	%al, %al	 # _4
	je	.L1522	 #,
	movl	$1594, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp175
	movq	%rax, %rdx	 # tmp175,
	leaq	.LC3(%rip), %rax	 #, tmp176
	movq	%rax, %rcx	 # tmp176,
	call	printf	 #
.L1522:
 # ./test/pdsp_test.c:1595:     PDSP_ASSERT(flt_status == 0);
	movl	-4(%rbp), %eax	 # flt_status, flt_status.71_5
	testl	%eax, %eax	 # flt_status.71_5
	je	.L1523	 #,
 # ./test/pdsp_test.c:1595:     PDSP_ASSERT(flt_status == 0);
	movl	$1595, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp177
	movq	%rax, %rdx	 # tmp177,
	leaq	.LC3(%rip), %rax	 #, tmp178
	movq	%rax, %rcx	 # tmp178,
	call	printf	 #
.L1523:
 # ./test/pdsp_test.c:1596:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp179
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp179,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1596:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	testb	%al, %al	 # _6
	je	.L1524	 #,
	movl	$1596, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp180
	movq	%rax, %rdx	 # tmp180,
	leaq	.LC3(%rip), %rax	 #, tmp181
	movq	%rax, %rcx	 # tmp181,
	call	printf	 #
.L1524:
 # ./test/pdsp_test.c:1597:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp182
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp182,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1597:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	testb	%al, %al	 # _7
	je	.L1525	 #,
	movl	$1597, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp183
	movq	%rax, %rdx	 # tmp183,
	leaq	.LC3(%rip), %rax	 #, tmp184
	movq	%rax, %rcx	 # tmp184,
	call	printf	 #
.L1525:
 # ./test/pdsp_test.c:1598:     PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp185
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp185,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1598:     PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_FALSE);
	testb	%al, %al	 # _8
	je	.L1526	 #,
	movl	$1598, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp186
	movq	%rax, %rdx	 # tmp186,
	leaq	.LC3(%rip), %rax	 #, tmp187
	movq	%rax, %rcx	 # tmp187,
	call	printf	 #
.L1526:
 # ./test/pdsp_test.c:1599:     PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp188
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp188,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1599:     PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_FALSE);
	testb	%al, %al	 # _9
	je	.L1527	 #,
	movl	$1599, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp189
	movq	%rax, %rdx	 # tmp189,
	leaq	.LC3(%rip), %rax	 #, tmp190
	movq	%rax, %rcx	 # tmp190,
	call	printf	 #
.L1527:
 # ./test/pdsp_test.c:1600:     PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp191
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp191,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1600:     PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_FALSE);
	testb	%al, %al	 # _10
	je	.L1528	 #,
	movl	$1600, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp192
	movq	%rax, %rdx	 # tmp192,
	leaq	.LC3(%rip), %rax	 #, tmp193
	movq	%rax, %rcx	 # tmp193,
	call	printf	 #
.L1528:
 # ./test/pdsp_test.c:1601:     PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp194
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp194,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1601:     PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_FALSE);
	testb	%al, %al	 # _11
	je	.L1529	 #,
	movl	$1601, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp195
	movq	%rax, %rdx	 # tmp195,
	leaq	.LC3(%rip), %rax	 #, tmp196
	movq	%rax, %rcx	 # tmp196,
	call	printf	 #
.L1529:
 # ./test/pdsp_test.c:1602:     PDSP_ASSERT(flt_status == 0);
	movl	-4(%rbp), %eax	 # flt_status, flt_status.72_12
	testl	%eax, %eax	 # flt_status.72_12
	je	.L1530	 #,
 # ./test/pdsp_test.c:1602:     PDSP_ASSERT(flt_status == 0);
	movl	$1602, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp197
	movq	%rax, %rdx	 # tmp197,
	leaq	.LC3(%rip), %rax	 #, tmp198
	movq	%rax, %rcx	 # tmp198,
	call	printf	 #
.L1530:
 # ./test/pdsp_test.c:1603:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp199
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp199,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1603:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	testb	%al, %al	 # _13
	je	.L1531	 #,
	movl	$1603, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp200
	movq	%rax, %rdx	 # tmp200,
	leaq	.LC3(%rip), %rax	 #, tmp201
	movq	%rax, %rcx	 # tmp201,
	call	printf	 #
.L1531:
 # ./test/pdsp_test.c:1604:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp202
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp202,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1604:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	testb	%al, %al	 # _14
	je	.L1532	 #,
	movl	$1604, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp203
	movq	%rax, %rdx	 # tmp203,
	leaq	.LC3(%rip), %rax	 #, tmp204
	movq	%rax, %rcx	 # tmp204,
	call	printf	 #
.L1532:
 # ./test/pdsp_test.c:1605:     PDSP_ASSERT(flt_status == 0);
	movl	-4(%rbp), %eax	 # flt_status, flt_status.73_15
	testl	%eax, %eax	 # flt_status.73_15
	je	.L1533	 #,
 # ./test/pdsp_test.c:1605:     PDSP_ASSERT(flt_status == 0);
	movl	$1605, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp205
	movq	%rax, %rdx	 # tmp205,
	leaq	.LC3(%rip), %rax	 #, tmp206
	movq	%rax, %rcx	 # tmp206,
	call	printf	 #
.L1533:
 # ./test/pdsp_test.c:1606:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_TRUE);
	leaq	-96(%rbp), %rax	 #, tmp207
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp207,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1606:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _17
	testb	%al, %al	 # _17
	je	.L1534	 #,
	movl	$1606, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp208
	movq	%rax, %rdx	 # tmp208,
	leaq	.LC3(%rip), %rax	 #, tmp209
	movq	%rax, %rcx	 # tmp209,
	call	printf	 #
.L1534:
 # ./test/pdsp_test.c:1607:     PDSP_ASSERT(flt_status == 1);
	movl	-4(%rbp), %eax	 # flt_status, flt_status.74_18
	cmpl	$1, %eax	 #, flt_status.74_18
	je	.L1535	 #,
 # ./test/pdsp_test.c:1607:     PDSP_ASSERT(flt_status == 1);
	movl	$1607, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp210
	movq	%rax, %rdx	 # tmp210,
	leaq	.LC3(%rip), %rax	 #, tmp211
	movq	%rax, %rcx	 # tmp211,
	call	printf	 #
.L1535:
 # ./test/pdsp_test.c:1608:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_TRUE);
	leaq	-96(%rbp), %rax	 #, tmp212
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp212,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1608:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _20
	testb	%al, %al	 # _20
	je	.L1536	 #,
	movl	$1608, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp213
	movq	%rax, %rdx	 # tmp213,
	leaq	.LC3(%rip), %rax	 #, tmp214
	movq	%rax, %rcx	 # tmp214,
	call	printf	 #
.L1536:
 # ./test/pdsp_test.c:1609:     PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_TRUE);
	leaq	-96(%rbp), %rax	 #, tmp215
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp215,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1609:     PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _22
	testb	%al, %al	 # _22
	je	.L1537	 #,
	movl	$1609, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp216
	movq	%rax, %rdx	 # tmp216,
	leaq	.LC3(%rip), %rax	 #, tmp217
	movq	%rax, %rcx	 # tmp217,
	call	printf	 #
.L1537:
 # ./test/pdsp_test.c:1610:     PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_TRUE);
	leaq	-96(%rbp), %rax	 #, tmp218
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp218,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1610:     PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _24
	testb	%al, %al	 # _24
	je	.L1538	 #,
	movl	$1610, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp219
	movq	%rax, %rdx	 # tmp219,
	leaq	.LC3(%rip), %rax	 #, tmp220
	movq	%rax, %rcx	 # tmp220,
	call	printf	 #
.L1538:
 # ./test/pdsp_test.c:1611:     PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_TRUE);
	leaq	-96(%rbp), %rax	 #, tmp221
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp221,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1611:     PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _26
	testb	%al, %al	 # _26
	je	.L1539	 #,
	movl	$1611, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp222
	movq	%rax, %rdx	 # tmp222,
	leaq	.LC3(%rip), %rax	 #, tmp223
	movq	%rax, %rcx	 # tmp223,
	call	printf	 #
.L1539:
 # ./test/pdsp_test.c:1612:     PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_TRUE);
	leaq	-96(%rbp), %rax	 #, tmp224
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp224,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1612:     PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _28
	testb	%al, %al	 # _28
	je	.L1540	 #,
	movl	$1612, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp225
	movq	%rax, %rdx	 # tmp225,
	leaq	.LC3(%rip), %rax	 #, tmp226
	movq	%rax, %rcx	 # tmp226,
	call	printf	 #
.L1540:
 # ./test/pdsp_test.c:1613:     PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_TRUE);
	leaq	-96(%rbp), %rax	 #, tmp227
	movss	.LC23(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp227,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1613:     PDSP_ASSERT(pdsp_fault_check(&flt, 1.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _30
	testb	%al, %al	 # _30
	je	.L1541	 #,
	movl	$1613, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp228
	movq	%rax, %rdx	 # tmp228,
	leaq	.LC3(%rip), %rax	 #, tmp229
	movq	%rax, %rcx	 # tmp229,
	call	printf	 #
.L1541:
 # ./test/pdsp_test.c:1614:     PDSP_ASSERT(flt_status == 1);
	movl	-4(%rbp), %eax	 # flt_status, flt_status.75_31
	cmpl	$1, %eax	 #, flt_status.75_31
	je	.L1542	 #,
 # ./test/pdsp_test.c:1614:     PDSP_ASSERT(flt_status == 1);
	movl	$1614, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp230
	movq	%rax, %rdx	 # tmp230,
	leaq	.LC3(%rip), %rax	 #, tmp231
	movq	%rax, %rcx	 # tmp231,
	call	printf	 #
.L1542:
 # ./test/pdsp_test.c:1615:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
	leaq	-96(%rbp), %rax	 #, tmp232
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp232,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1615:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _33
	testb	%al, %al	 # _33
	je	.L1543	 #,
	movl	$1615, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp233
	movq	%rax, %rdx	 # tmp233,
	leaq	.LC3(%rip), %rax	 #, tmp234
	movq	%rax, %rcx	 # tmp234,
	call	printf	 #
.L1543:
 # ./test/pdsp_test.c:1616:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
	leaq	-96(%rbp), %rax	 #, tmp235
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp235,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1616:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _35
	testb	%al, %al	 # _35
	je	.L1544	 #,
	movl	$1616, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp236
	movq	%rax, %rdx	 # tmp236,
	leaq	.LC3(%rip), %rax	 #, tmp237
	movq	%rax, %rcx	 # tmp237,
	call	printf	 #
.L1544:
 # ./test/pdsp_test.c:1617:     PDSP_ASSERT(flt_status == 1);
	movl	-4(%rbp), %eax	 # flt_status, flt_status.76_36
	cmpl	$1, %eax	 #, flt_status.76_36
	je	.L1545	 #,
 # ./test/pdsp_test.c:1617:     PDSP_ASSERT(flt_status == 1);
	movl	$1617, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp238
	movq	%rax, %rdx	 # tmp238,
	leaq	.LC3(%rip), %rax	 #, tmp239
	movq	%rax, %rcx	 # tmp239,
	call	printf	 #
.L1545:
 # ./test/pdsp_test.c:1618:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp240
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp240,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1618:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	testb	%al, %al	 # _37
	je	.L1546	 #,
	movl	$1618, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp241
	movq	%rax, %rdx	 # tmp241,
	leaq	.LC3(%rip), %rax	 #, tmp242
	movq	%rax, %rcx	 # tmp242,
	call	printf	 #
.L1546:
 # ./test/pdsp_test.c:1619:     PDSP_ASSERT(flt_status == 0);
	movl	-4(%rbp), %eax	 # flt_status, flt_status.77_38
	testl	%eax, %eax	 # flt_status.77_38
	je	.L1547	 #,
 # ./test/pdsp_test.c:1619:     PDSP_ASSERT(flt_status == 0);
	movl	$1619, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp243
	movq	%rax, %rdx	 # tmp243,
	leaq	.LC3(%rip), %rax	 #, tmp244
	movq	%rax, %rcx	 # tmp244,
	call	printf	 #
.L1547:
 # ./test/pdsp_test.c:1620:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp245
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp245,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1620:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	testb	%al, %al	 # _39
	je	.L1548	 #,
	movl	$1620, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp246
	movq	%rax, %rdx	 # tmp246,
	leaq	.LC3(%rip), %rax	 #, tmp247
	movq	%rax, %rcx	 # tmp247,
	call	printf	 #
.L1548:
 # ./test/pdsp_test.c:1621:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp248
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp248,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1621:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	testb	%al, %al	 # _40
	je	.L1549	 #,
	movl	$1621, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp249
	movq	%rax, %rdx	 # tmp249,
	leaq	.LC3(%rip), %rax	 #, tmp250
	movq	%rax, %rcx	 # tmp250,
	call	printf	 #
.L1549:
 # ./test/pdsp_test.c:1622:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp251
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp251,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1622:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	testb	%al, %al	 # _41
	je	.L1550	 #,
	movl	$1622, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp252
	movq	%rax, %rdx	 # tmp252,
	leaq	.LC3(%rip), %rax	 #, tmp253
	movq	%rax, %rcx	 # tmp253,
	call	printf	 #
.L1550:
 # ./test/pdsp_test.c:1623:     PDSP_ASSERT(flt_status == 0);
	movl	-4(%rbp), %eax	 # flt_status, flt_status.78_42
	testl	%eax, %eax	 # flt_status.78_42
	je	.L1551	 #,
 # ./test/pdsp_test.c:1623:     PDSP_ASSERT(flt_status == 0);
	movl	$1623, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp254
	movq	%rax, %rdx	 # tmp254,
	leaq	.LC3(%rip), %rax	 #, tmp255
	movq	%rax, %rcx	 # tmp255,
	call	printf	 #
.L1551:
 # ./test/pdsp_test.c:1624:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp256
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp256,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1624:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	testb	%al, %al	 # _43
	je	.L1552	 #,
	movl	$1624, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp257
	movq	%rax, %rdx	 # tmp257,
	leaq	.LC3(%rip), %rax	 #, tmp258
	movq	%rax, %rcx	 # tmp258,
	call	printf	 #
.L1552:
 # ./test/pdsp_test.c:1625:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp259
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp259,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1625:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	testb	%al, %al	 # _44
	je	.L1553	 #,
	movl	$1625, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp260
	movq	%rax, %rdx	 # tmp260,
	leaq	.LC3(%rip), %rax	 #, tmp261
	movq	%rax, %rcx	 # tmp261,
	call	printf	 #
.L1553:
 # ./test/pdsp_test.c:1626:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_TRUE);
	leaq	-96(%rbp), %rax	 #, tmp262
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp262,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1626:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _46
	testb	%al, %al	 # _46
	je	.L1554	 #,
	movl	$1626, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp263
	movq	%rax, %rdx	 # tmp263,
	leaq	.LC3(%rip), %rax	 #, tmp264
	movq	%rax, %rcx	 # tmp264,
	call	printf	 #
.L1554:
 # ./test/pdsp_test.c:1627:     PDSP_ASSERT(flt_status == 1);
	movl	-4(%rbp), %eax	 # flt_status, flt_status.79_47
	cmpl	$1, %eax	 #, flt_status.79_47
	je	.L1555	 #,
 # ./test/pdsp_test.c:1627:     PDSP_ASSERT(flt_status == 1);
	movl	$1627, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp265
	movq	%rax, %rdx	 # tmp265,
	leaq	.LC3(%rip), %rax	 #, tmp266
	movq	%rax, %rcx	 # tmp266,
	call	printf	 #
.L1555:
 # ./test/pdsp_test.c:1628:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
	leaq	-96(%rbp), %rax	 #, tmp267
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp267,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1628:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _49
	testb	%al, %al	 # _49
	je	.L1556	 #,
	movl	$1628, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp268
	movq	%rax, %rdx	 # tmp268,
	leaq	.LC3(%rip), %rax	 #, tmp269
	movq	%rax, %rcx	 # tmp269,
	call	printf	 #
.L1556:
 # ./test/pdsp_test.c:1629:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
	leaq	-96(%rbp), %rax	 #, tmp270
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp270,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1629:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _51
	testb	%al, %al	 # _51
	je	.L1557	 #,
	movl	$1629, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp271
	movq	%rax, %rdx	 # tmp271,
	leaq	.LC3(%rip), %rax	 #, tmp272
	movq	%rax, %rcx	 # tmp272,
	call	printf	 #
.L1557:
 # ./test/pdsp_test.c:1630:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
	leaq	-96(%rbp), %rax	 #, tmp273
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp273,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1630:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _53
	testb	%al, %al	 # _53
	je	.L1558	 #,
	movl	$1630, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp274
	movq	%rax, %rdx	 # tmp274,
	leaq	.LC3(%rip), %rax	 #, tmp275
	movq	%rax, %rcx	 # tmp275,
	call	printf	 #
.L1558:
 # ./test/pdsp_test.c:1631:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
	leaq	-96(%rbp), %rax	 #, tmp276
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp276,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1631:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _55
	testb	%al, %al	 # _55
	je	.L1559	 #,
	movl	$1631, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp277
	movq	%rax, %rdx	 # tmp277,
	leaq	.LC3(%rip), %rax	 #, tmp278
	movq	%rax, %rcx	 # tmp278,
	call	printf	 #
.L1559:
 # ./test/pdsp_test.c:1632:     PDSP_ASSERT(flt_status == 1);
	movl	-4(%rbp), %eax	 # flt_status, flt_status.80_56
	cmpl	$1, %eax	 #, flt_status.80_56
	je	.L1560	 #,
 # ./test/pdsp_test.c:1632:     PDSP_ASSERT(flt_status == 1);
	movl	$1632, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp279
	movq	%rax, %rdx	 # tmp279,
	leaq	.LC3(%rip), %rax	 #, tmp280
	movq	%rax, %rcx	 # tmp280,
	call	printf	 #
.L1560:
 # ./test/pdsp_test.c:1634:     pdsp_fault_init(&flt);
	leaq	-96(%rbp), %rax	 #, tmp281
	movq	%rax, %rcx	 # tmp281,
	call	pdsp_fault_init	 #
 # ./test/pdsp_test.c:1635:     flt_ena = 0;
	movl	$0, -8(%rbp)	 #, flt_ena
 # ./test/pdsp_test.c:1636:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp282
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp282,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1636:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	testb	%al, %al	 # _57
	je	.L1561	 #,
	movl	$1636, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp283
	movq	%rax, %rdx	 # tmp283,
	leaq	.LC3(%rip), %rax	 #, tmp284
	movq	%rax, %rcx	 # tmp284,
	call	printf	 #
.L1561:
 # ./test/pdsp_test.c:1637:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp285
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp285,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1637:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	testb	%al, %al	 # _58
	je	.L1562	 #,
	movl	$1637, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp286
	movq	%rax, %rdx	 # tmp286,
	leaq	.LC3(%rip), %rax	 #, tmp287
	movq	%rax, %rcx	 # tmp287,
	call	printf	 #
.L1562:
 # ./test/pdsp_test.c:1638:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp288
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp288,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1638:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	testb	%al, %al	 # _59
	je	.L1563	 #,
	movl	$1638, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp289
	movq	%rax, %rdx	 # tmp289,
	leaq	.LC3(%rip), %rax	 #, tmp290
	movq	%rax, %rcx	 # tmp290,
	call	printf	 #
.L1563:
 # ./test/pdsp_test.c:1639:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp291
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp291,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1639:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	testb	%al, %al	 # _60
	je	.L1564	 #,
	movl	$1639, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp292
	movq	%rax, %rdx	 # tmp292,
	leaq	.LC3(%rip), %rax	 #, tmp293
	movq	%rax, %rcx	 # tmp293,
	call	printf	 #
.L1564:
 # ./test/pdsp_test.c:1640:     flt_ena = 1;
	movl	$1, -8(%rbp)	 #, flt_ena
 # ./test/pdsp_test.c:1641:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp294
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp294,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1641:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	testb	%al, %al	 # _61
	je	.L1565	 #,
	movl	$1641, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp295
	movq	%rax, %rdx	 # tmp295,
	leaq	.LC3(%rip), %rax	 #, tmp296
	movq	%rax, %rcx	 # tmp296,
	call	printf	 #
.L1565:
 # ./test/pdsp_test.c:1642:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp297
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp297,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1642:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_FALSE);
	testb	%al, %al	 # _62
	je	.L1566	 #,
	movl	$1642, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp298
	movq	%rax, %rdx	 # tmp298,
	leaq	.LC3(%rip), %rax	 #, tmp299
	movq	%rax, %rcx	 # tmp299,
	call	printf	 #
.L1566:
 # ./test/pdsp_test.c:1643:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_TRUE);
	leaq	-96(%rbp), %rax	 #, tmp300
	movss	.LC22(%rip), %xmm1	 #,
	movq	%rax, %rcx	 # tmp300,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1643:     PDSP_ASSERT(pdsp_fault_check(&flt, 2.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _64
	testb	%al, %al	 # _64
	je	.L1567	 #,
	movl	$1643, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp301
	movq	%rax, %rdx	 # tmp301,
	leaq	.LC3(%rip), %rax	 #, tmp302
	movq	%rax, %rcx	 # tmp302,
	call	printf	 #
.L1567:
 # ./test/pdsp_test.c:1644:     PDSP_ASSERT(flt_status == 1);
	movl	-4(%rbp), %eax	 # flt_status, flt_status.81_65
	cmpl	$1, %eax	 #, flt_status.81_65
	je	.L1568	 #,
 # ./test/pdsp_test.c:1644:     PDSP_ASSERT(flt_status == 1);
	movl	$1644, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp303
	movq	%rax, %rdx	 # tmp303,
	leaq	.LC3(%rip), %rax	 #, tmp304
	movq	%rax, %rcx	 # tmp304,
	call	printf	 #
.L1568:
 # ./test/pdsp_test.c:1645:     flt_ena = 0;
	movl	$0, -8(%rbp)	 #, flt_ena
 # ./test/pdsp_test.c:1646:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
	leaq	-96(%rbp), %rax	 #, tmp305
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp305,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1646:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _67
	testb	%al, %al	 # _67
	je	.L1569	 #,
	movl	$1646, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp306
	movq	%rax, %rdx	 # tmp306,
	leaq	.LC3(%rip), %rax	 #, tmp307
	movq	%rax, %rcx	 # tmp307,
	call	printf	 #
.L1569:
 # ./test/pdsp_test.c:1647:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
	leaq	-96(%rbp), %rax	 #, tmp308
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp308,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1647:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_TRUE);
	xorl	$1, %eax	 #, _69
	testb	%al, %al	 # _69
	je	.L1570	 #,
	movl	$1647, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp309
	movq	%rax, %rdx	 # tmp309,
	leaq	.LC3(%rip), %rax	 #, tmp310
	movq	%rax, %rcx	 # tmp310,
	call	printf	 #
.L1570:
 # ./test/pdsp_test.c:1648:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp311
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp311,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1648:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	testb	%al, %al	 # _70
	je	.L1571	 #,
	movl	$1648, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp312
	movq	%rax, %rdx	 # tmp312,
	leaq	.LC3(%rip), %rax	 #, tmp313
	movq	%rax, %rcx	 # tmp313,
	call	printf	 #
.L1571:
 # ./test/pdsp_test.c:1649:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp314
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp314,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1649:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	testb	%al, %al	 # _71
	je	.L1572	 #,
	movl	$1649, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp315
	movq	%rax, %rdx	 # tmp315,
	leaq	.LC3(%rip), %rax	 #, tmp316
	movq	%rax, %rcx	 # tmp316,
	call	printf	 #
.L1572:
 # ./test/pdsp_test.c:1650:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	leaq	-96(%rbp), %rax	 #, tmp317
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %rcx	 # tmp317,
	call	pdsp_fault_check	 #
 # ./test/pdsp_test.c:1650:     PDSP_ASSERT(pdsp_fault_check(&flt, 0.0f) == PDSP_FALSE);
	testb	%al, %al	 # _72
	je	.L1573	 #,
	movl	$1650, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp318
	movq	%rax, %rdx	 # tmp318,
	leaq	.LC3(%rip), %rax	 #, tmp319
	movq	%rax, %rcx	 # tmp319,
	call	printf	 #
.L1573:
 # ./test/pdsp_test.c:1651:     PDSP_ASSERT(flt_status == 0);
	movl	-4(%rbp), %eax	 # flt_status, flt_status.82_73
	testl	%eax, %eax	 # flt_status.82_73
	je	.L1575	 #,
 # ./test/pdsp_test.c:1651:     PDSP_ASSERT(flt_status == 0);
	movl	$1651, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp320
	movq	%rax, %rdx	 # tmp320,
	leaq	.LC3(%rip), %rax	 #, tmp321
	movq	%rax, %rcx	 # tmp321,
	call	printf	 #
.L1575:
 # ./test/pdsp_test.c:1652: }
	nop	
	subq	$-128, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC145:
	.ascii "-- void test_fixmath(void) --\12\0"
	.text
	.globl	test_fixmath
	.def	test_fixmath;	.scl	2;	.type	32;	.endef
	.seh_proc	test_fixmath
test_fixmath:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
 # ./test/pdsp_test.c:1656:     printf("-- void test_fixmath(void) --\n");
	leaq	.LC145(%rip), %rax	 #, tmp98
	movq	%rax, %rcx	 # tmp98,
	call	printf	 #
 # ./test/pdsp_test.c:1734:     pdsp_i16_t test0 = iq16_ftoq8(1.5f);
	movw	$384, -2(%rbp)	 #, test0
 # ./test/pdsp_test.c:1735:     pdsp_i16_t test1 = iq16_ftoq8(10.5f);
	movw	$2688, -4(%rbp)	 #, test1
 # ./test/pdsp_test.c:1736:     pdsp_i16_t test2 = 0;
	movw	$0, -6(%rbp)	 #, test2
 # ./test/pdsp_test.c:1737:     test2 = iq16_mulq8(test0, test1);
	movswl	-2(%rbp), %edx	 # test0, _1
	movswl	-4(%rbp), %eax	 # test1, _2
	imull	%edx, %eax	 # _1, _3
	sarl	$8, %eax	 #, _4
 # ./test/pdsp_test.c:1737:     test2 = iq16_mulq8(test0, test1);
	movw	%ax, -6(%rbp)	 # _4, test2
 # ./test/pdsp_test.c:1738:     test2 = iq16_mulq8(test1, test2);
	movswl	-4(%rbp), %edx	 # test1, _5
	movswl	-6(%rbp), %eax	 # test2, _6
	imull	%edx, %eax	 # _5, _7
	sarl	$8, %eax	 #, _8
 # ./test/pdsp_test.c:1738:     test2 = iq16_mulq8(test1, test2);
	movw	%ax, -6(%rbp)	 # _8, test2
 # ./test/pdsp_test.c:1739:     test2 = iq16_mulq8(test0, test1);
	movswl	-2(%rbp), %edx	 # test0, _9
	movswl	-4(%rbp), %eax	 # test1, _10
	imull	%edx, %eax	 # _9, _11
	sarl	$8, %eax	 #, _12
 # ./test/pdsp_test.c:1739:     test2 = iq16_mulq8(test0, test1);
	movw	%ax, -6(%rbp)	 # _12, test2
 # ./test/pdsp_test.c:1740:     test2 = iq16_mulq8(test1, test2);
	movswl	-4(%rbp), %edx	 # test1, _13
	movswl	-6(%rbp), %eax	 # test2, _14
	imull	%edx, %eax	 # _13, _15
	sarl	$8, %eax	 #, _16
 # ./test/pdsp_test.c:1740:     test2 = iq16_mulq8(test1, test2);
	movw	%ax, -6(%rbp)	 # _16, test2
 # ./test/pdsp_test.c:1741: }
	nop	
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC146:
	.ascii "-- void test_log32(void) --\12\0"
	.text
	.globl	test_log32
	.def	test_log32;	.scl	2;	.type	32;	.endef
	.seh_proc	test_log32
test_log32:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	subq	$400, %rsp	 #,
	.seh_stackalloc	400
	leaq	128(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 128
	.seh_endprologue
 # ./test/pdsp_test.c:1745:     printf("-- void test_log32(void) --\n");
	leaq	.LC146(%rip), %rax	 #, tmp850
	movq	%rax, %rcx	 # tmp850,
	call	printf	 #
 # ./test/pdsp_test.c:1746:     pdsp_f32_t src1[8] = {0.1f, 0.2f, 0.3f, 0.4f, 0.5f, 0.6f, 0.7f, 0.8f};
	movss	.LC124(%rip), %xmm0	 #, tmp851
	movss	%xmm0, 240(%rbp)	 # tmp851, src1[0]
	movss	.LC129(%rip), %xmm0	 #, tmp852
	movss	%xmm0, 244(%rbp)	 # tmp852, src1[1]
	movss	.LC147(%rip), %xmm0	 #, tmp853
	movss	%xmm0, 248(%rbp)	 # tmp853, src1[2]
	movss	.LC148(%rip), %xmm0	 #, tmp854
	movss	%xmm0, 252(%rbp)	 # tmp854, src1[3]
	movss	.LC37(%rip), %xmm0	 #, tmp855
	movss	%xmm0, 256(%rbp)	 # tmp855, src1[4]
	movss	.LC149(%rip), %xmm0	 #, tmp856
	movss	%xmm0, 260(%rbp)	 # tmp856, src1[5]
	movss	.LC68(%rip), %xmm0	 #, tmp857
	movss	%xmm0, 264(%rbp)	 # tmp857, src1[6]
	movss	.LC60(%rip), %xmm0	 #, tmp858
	movss	%xmm0, 268(%rbp)	 # tmp858, src1[7]
 # ./test/pdsp_test.c:1747:     pdsp_f32_t src2[8] = {1.1f, 1.2f, 1.3f, 1.4f, 1.5f, 1.6f, 1.7f, 1.8f};
	movss	.LC150(%rip), %xmm0	 #, tmp859
	movss	%xmm0, 208(%rbp)	 # tmp859, src2[0]
	movss	.LC63(%rip), %xmm0	 #, tmp860
	movss	%xmm0, 212(%rbp)	 # tmp860, src2[1]
	movss	.LC66(%rip), %xmm0	 #, tmp861
	movss	%xmm0, 216(%rbp)	 # tmp861, src2[2]
	movss	.LC74(%rip), %xmm0	 #, tmp862
	movss	%xmm0, 220(%rbp)	 # tmp862, src2[3]
	movss	.LC24(%rip), %xmm0	 #, tmp863
	movss	%xmm0, 224(%rbp)	 # tmp863, src2[4]
	movss	.LC151(%rip), %xmm0	 #, tmp864
	movss	%xmm0, 228(%rbp)	 # tmp864, src2[5]
	movss	.LC69(%rip), %xmm0	 #, tmp865
	movss	%xmm0, 232(%rbp)	 # tmp865, src2[6]
	movss	.LC61(%rip), %xmm0	 #, tmp866
	movss	%xmm0, 236(%rbp)	 # tmp866, src2[7]
 # ./test/pdsp_test.c:1748:     pdsp_f32_t src3[8] = {2.1f, 2.2f, 2.3f, 2.4f, 2.5f, 2.6f, 2.7f, 2.8f};
	movss	.LC73(%rip), %xmm0	 #, tmp867
	movss	%xmm0, 176(%rbp)	 # tmp867, src3[0]
	movss	.LC64(%rip), %xmm0	 #, tmp868
	movss	%xmm0, 180(%rbp)	 # tmp868, src3[1]
	movss	.LC67(%rip), %xmm0	 #, tmp869
	movss	%xmm0, 184(%rbp)	 # tmp869, src3[2]
	movss	.LC152(%rip), %xmm0	 #, tmp870
	movss	%xmm0, 188(%rbp)	 # tmp870, src3[3]
	movss	.LC38(%rip), %xmm0	 #, tmp871
	movss	%xmm0, 192(%rbp)	 # tmp871, src3[4]
	movss	.LC153(%rip), %xmm0	 #, tmp872
	movss	%xmm0, 196(%rbp)	 # tmp872, src3[5]
	movss	.LC154(%rip), %xmm0	 #, tmp873
	movss	%xmm0, 200(%rbp)	 # tmp873, src3[6]
	movss	.LC62(%rip), %xmm0	 #, tmp874
	movss	%xmm0, 204(%rbp)	 # tmp874, src3[7]
 # ./test/pdsp_test.c:1749:     pdsp_f32_t src4[8] = {3.1f, 3.2f, 3.3f, 3.4f, 3.5f, 3.6f, 3.7f, 3.8f};
	movss	.LC155(%rip), %xmm0	 #, tmp875
	movss	%xmm0, 144(%rbp)	 # tmp875, src4[0]
	movss	.LC65(%rip), %xmm0	 #, tmp876
	movss	%xmm0, 148(%rbp)	 # tmp876, src4[1]
	movss	.LC156(%rip), %xmm0	 #, tmp877
	movss	%xmm0, 152(%rbp)	 # tmp877, src4[2]
	movss	.LC157(%rip), %xmm0	 #, tmp878
	movss	%xmm0, 156(%rbp)	 # tmp878, src4[3]
	movss	.LC39(%rip), %xmm0	 #, tmp879
	movss	%xmm0, 160(%rbp)	 # tmp879, src4[4]
	movss	.LC158(%rip), %xmm0	 #, tmp880
	movss	%xmm0, 164(%rbp)	 # tmp880, src4[5]
	movss	.LC159(%rip), %xmm0	 #, tmp881
	movss	%xmm0, 168(%rbp)	 # tmp881, src4[6]
	movss	.LC160(%rip), %xmm0	 #, tmp882
	movss	%xmm0, 172(%rbp)	 # tmp882, src4[7]
 # ./test/pdsp_test.c:1754:     pdsp_f32_t *plog[4] = {&log1, &log2, &log3, &log4};
	leaq	140(%rbp), %rax	 #, tmp883
	movq	%rax, 96(%rbp)	 # tmp883, plog[0]
	leaq	136(%rbp), %rax	 #, tmp884
	movq	%rax, 104(%rbp)	 # tmp884, plog[1]
	leaq	132(%rbp), %rax	 #, tmp885
	movq	%rax, 112(%rbp)	 # tmp885, plog[2]
	leaq	128(%rbp), %rax	 #, tmp886
	movq	%rax, 120(%rbp)	 # tmp886, plog[3]
 # ./test/pdsp_test.c:1755:     pdsp_f32_t data[4][4] = {0};
	pxor	%xmm0, %xmm0	 # tmp887
	movups	%xmm0, 32(%rbp)	 # tmp887, data
	movups	%xmm0, 48(%rbp)	 # tmp887, data
	movups	%xmm0, 64(%rbp)	 # tmp887, data
	movups	%xmm0, 80(%rbp)	 # tmp887, data
 # ./test/pdsp_test.c:1756:     pdsp_f32_t data1[4][4] = {0};
	pxor	%xmm0, %xmm0	 # tmp888
	movups	%xmm0, -32(%rbp)	 # tmp888, data1
	movups	%xmm0, -16(%rbp)	 # tmp888, data1
	movups	%xmm0, 0(%rbp)	 # tmp888, data1
	movups	%xmm0, 16(%rbp)	 # tmp888, data1
 # ./test/pdsp_test.c:1757:     pdsp_macro_log32_t log = {0};
	pxor	%xmm0, %xmm0	 # tmp889
	movups	%xmm0, -64(%rbp)	 # tmp889, log
	movups	%xmm0, -48(%rbp)	 # tmp889, log
 # ./test/pdsp_test.c:1758:     pdsp_macro_log32_t loga = {0};
	pxor	%xmm0, %xmm0	 # tmp890
	movups	%xmm0, -96(%rbp)	 # tmp890, loga
	movups	%xmm0, -80(%rbp)	 # tmp890, loga
 # ./test/pdsp_test.c:1759:     pdsp_macro_log32_init(log, 2);
	movw	$2, -64(%rbp)	 #, log.u16_size_half
	movw	$2, -62(%rbp)	 #, log.u16_size_shift
	movw	$3, -60(%rbp)	 #, log.u16_size_mask
	movw	$0, -58(%rbp)	 #, log.u16_index
	movw	$1, -56(%rbp)	 #, log.u16_index_add
	movw	$1, -54(%rbp)	 #, log.u16_index_add_read
	movw	$0, -52(%rbp)	 #, log.u16_count
	movw	$0, -50(%rbp)	 #, log.u16_count_add
 # ./test/pdsp_test.c:1760:     pdsp_macro_log32_setup(log, 0, 1, 2, 3, 0, 10.0f);
	movw	$0, -46(%rbp)	 #, log.u16_ch1_index
	movw	$1, -44(%rbp)	 #, log.u16_ch2_index
	movw	$2, -42(%rbp)	 #, log.u16_ch3_index
	movw	$3, -40(%rbp)	 #, log.u16_ch4_index
	movw	$0, -48(%rbp)	 #, log.u16_trig_index
	movss	.LC28(%rip), %xmm0	 #, tmp891
	movss	%xmm0, -36(%rbp)	 # tmp891, log.f32_trig_level
 # ./test/pdsp_test.c:1762:     log1 = src1[0];
	movss	240(%rbp), %xmm0	 # src1[0], _1
 # ./test/pdsp_test.c:1762:     log1 = src1[0];
	movss	%xmm0, 140(%rbp)	 # _1, log1
 # ./test/pdsp_test.c:1763:     log2 = src2[0];
	movss	208(%rbp), %xmm0	 # src2[0], _2
 # ./test/pdsp_test.c:1763:     log2 = src2[0];
	movss	%xmm0, 136(%rbp)	 # _2, log2
 # ./test/pdsp_test.c:1764:     log3 = src3[0];
	movss	176(%rbp), %xmm0	 # src3[0], _3
 # ./test/pdsp_test.c:1764:     log3 = src3[0];
	movss	%xmm0, 132(%rbp)	 # _3, log3
 # ./test/pdsp_test.c:1765:     log4 = src4[0];
	movss	144(%rbp), %xmm0	 # src4[0], _4
 # ./test/pdsp_test.c:1765:     log4 = src4[0];
	movss	%xmm0, 128(%rbp)	 # _4, log4
 # ./test/pdsp_test.c:1766:     pdsp_macro_log32_run(log, plog, data);
	movzwl	-56(%rbp), %eax	 # log.u16_index_add, _5
	cmpw	$1, %ax	 #, _5
	jne	.L1578	 #,
 # ./test/pdsp_test.c:1766:     pdsp_macro_log32_run(log, plog, data);
	movzwl	-46(%rbp), %eax	 # log.u16_ch1_index, _6
	movzwl	%ax, %eax	 # _6, _7
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_7], _8
	movzwl	-58(%rbp), %edx	 # log.u16_index, _9
	movzwl	%dx, %edx	 # _9, _10
	movss	(%rax), %xmm0	 # *_8, _11
	movslq	%edx, %rax	 # _10, tmp893
	salq	$4, %rax	 #, tmp894
	leaq	272(%rax), %rax	 #, tmp1410
	addq	%rbp, %rax	 #, tmp895
	subq	$240, %rax	 #, tmp896
	movss	%xmm0, (%rax)	 # _11, data[_10][0]
	movzwl	-44(%rbp), %eax	 # log.u16_ch2_index, _12
	movzwl	%ax, %eax	 # _12, _13
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_13], _14
	movzwl	-58(%rbp), %edx	 # log.u16_index, _15
	movzwl	%dx, %edx	 # _15, _16
	movss	(%rax), %xmm0	 # *_14, _17
	movslq	%edx, %rax	 # _16, tmp898
	salq	$4, %rax	 #, tmp899
	leaq	272(%rax), %rax	 #, tmp1411
	addq	%rbp, %rax	 #, tmp900
	subq	$236, %rax	 #, tmp901
	movss	%xmm0, (%rax)	 # _17, data[_16][1]
	movzwl	-42(%rbp), %eax	 # log.u16_ch3_index, _18
	movzwl	%ax, %eax	 # _18, _19
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_19], _20
	movzwl	-58(%rbp), %edx	 # log.u16_index, _21
	movzwl	%dx, %edx	 # _21, _22
	movss	(%rax), %xmm0	 # *_20, _23
	movslq	%edx, %rax	 # _22, tmp903
	salq	$4, %rax	 #, tmp904
	leaq	272(%rax), %rax	 #, tmp1412
	addq	%rbp, %rax	 #, tmp905
	subq	$232, %rax	 #, tmp906
	movss	%xmm0, (%rax)	 # _23, data[_22][2]
	movzwl	-40(%rbp), %eax	 # log.u16_ch4_index, _24
	movzwl	%ax, %eax	 # _24, _25
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_25], _26
	movzwl	-58(%rbp), %edx	 # log.u16_index, _27
	movzwl	%dx, %edx	 # _27, _28
	movss	(%rax), %xmm0	 # *_26, _29
	movslq	%edx, %rax	 # _28, tmp908
	salq	$4, %rax	 #, tmp909
	leaq	272(%rax), %rax	 #, tmp1413
	addq	%rbp, %rax	 #, tmp910
	subq	$228, %rax	 #, tmp911
	movss	%xmm0, (%rax)	 # _29, data[_28][3]
	movzwl	-58(%rbp), %edx	 # log.u16_index, _30
	movzwl	-56(%rbp), %eax	 # log.u16_index_add, _31
	addl	%edx, %eax	 # _30, _32
	movw	%ax, -58(%rbp)	 # _32, log.u16_index
	movzwl	-58(%rbp), %edx	 # log.u16_index, _33
	movzwl	-60(%rbp), %eax	 # log.u16_size_mask, _34
	andl	%edx, %eax	 # _33, _35
	movw	%ax, -58(%rbp)	 # _35, log.u16_index
	movzwl	-52(%rbp), %edx	 # log.u16_count, _36
	movzwl	-50(%rbp), %eax	 # log.u16_count_add, _37
	addl	%edx, %eax	 # _36, _38
	movw	%ax, -52(%rbp)	 # _38, log.u16_count
	movzwl	-52(%rbp), %eax	 # log.u16_count, _39
	movzwl	-64(%rbp), %edx	 # log.u16_size_half, _40
	cmpw	%ax, %dx	 # _39, _40
	jnb	.L1579	 #,
 # ./test/pdsp_test.c:1766:     pdsp_macro_log32_run(log, plog, data);
	movw	$0, -56(%rbp)	 #, log.u16_index_add
	movw	$0, -50(%rbp)	 #, log.u16_count_add
	jmp	.L1578	 #
.L1579:
 # ./test/pdsp_test.c:1766:     pdsp_macro_log32_run(log, plog, data);
	movzwl	-48(%rbp), %eax	 # log.u16_trig_index, _41
	movzwl	%ax, %eax	 # _41, _42
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_42], _43
	movss	(%rax), %xmm0	 # *_43, _44
	movss	-36(%rbp), %xmm1	 # log.f32_trig_level, _45
	comiss	%xmm1, %xmm0	 # _45, _44
	jbe	.L1578	 #,
 # ./test/pdsp_test.c:1766:     pdsp_macro_log32_run(log, plog, data);
	movw	$1, -50(%rbp)	 #, log.u16_count_add
.L1578:
 # ./test/pdsp_test.c:1767:     PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
	movss	32(%rbp), %xmm0	 # data[0][0], _46
	ucomiss	.LC124(%rip), %xmm0	 #, _46
	jp	.L1581	 #,
	ucomiss	.LC124(%rip), %xmm0	 #, _46
	jne	.L1581	 #,
 # ./test/pdsp_test.c:1767:     PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
	movss	36(%rbp), %xmm0	 # data[0][1], _47
	ucomiss	.LC150(%rip), %xmm0	 #, _47
	jp	.L1581	 #,
	ucomiss	.LC150(%rip), %xmm0	 #, _47
	jne	.L1581	 #,
 # ./test/pdsp_test.c:1767:     PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
	movss	40(%rbp), %xmm0	 # data[0][2], _48
	ucomiss	.LC73(%rip), %xmm0	 #, _48
	jp	.L1581	 #,
	ucomiss	.LC73(%rip), %xmm0	 #, _48
	jne	.L1581	 #,
 # ./test/pdsp_test.c:1767:     PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
	movss	44(%rbp), %xmm0	 # data[0][3], _49
	ucomiss	.LC155(%rip), %xmm0	 #, _49
	jp	.L1581	 #,
	ucomiss	.LC155(%rip), %xmm0	 #, _49
	je	.L1585	 #,
.L1581:
 # ./test/pdsp_test.c:1767:     PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
	movl	$1767, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp913
	movq	%rax, %rdx	 # tmp913,
	leaq	.LC3(%rip), %rax	 #, tmp914
	movq	%rax, %rcx	 # tmp914,
	call	printf	 #
.L1585:
 # ./test/pdsp_test.c:1769:     PDSP_ASSERT((data[1][0] == 0.0f) && (data[1][1] == 0.0f) &&
	movss	48(%rbp), %xmm0	 # data[1][0], _50
	pxor	%xmm1, %xmm1	 # tmp915
	ucomiss	%xmm1, %xmm0	 # tmp915, _50
	jp	.L1587	 #,
	pxor	%xmm1, %xmm1	 # tmp916
	ucomiss	%xmm1, %xmm0	 # tmp916, _50
	jne	.L1587	 #,
 # ./test/pdsp_test.c:1769:     PDSP_ASSERT((data[1][0] == 0.0f) && (data[1][1] == 0.0f) &&
	movss	52(%rbp), %xmm0	 # data[1][1], _51
	pxor	%xmm1, %xmm1	 # tmp917
	ucomiss	%xmm1, %xmm0	 # tmp917, _51
	jp	.L1587	 #,
	pxor	%xmm1, %xmm1	 # tmp918
	ucomiss	%xmm1, %xmm0	 # tmp918, _51
	jne	.L1587	 #,
 # ./test/pdsp_test.c:1769:     PDSP_ASSERT((data[1][0] == 0.0f) && (data[1][1] == 0.0f) &&
	movss	56(%rbp), %xmm0	 # data[1][2], _52
	pxor	%xmm1, %xmm1	 # tmp919
	ucomiss	%xmm1, %xmm0	 # tmp919, _52
	jp	.L1587	 #,
	pxor	%xmm1, %xmm1	 # tmp920
	ucomiss	%xmm1, %xmm0	 # tmp920, _52
	jne	.L1587	 #,
 # ./test/pdsp_test.c:1769:     PDSP_ASSERT((data[1][0] == 0.0f) && (data[1][1] == 0.0f) &&
	movss	60(%rbp), %xmm0	 # data[1][3], _53
	pxor	%xmm1, %xmm1	 # tmp921
	ucomiss	%xmm1, %xmm0	 # tmp921, _53
	jp	.L1587	 #,
	pxor	%xmm1, %xmm1	 # tmp922
	ucomiss	%xmm1, %xmm0	 # tmp922, _53
	je	.L1591	 #,
.L1587:
 # ./test/pdsp_test.c:1769:     PDSP_ASSERT((data[1][0] == 0.0f) && (data[1][1] == 0.0f) &&
	movl	$1769, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp923
	movq	%rax, %rdx	 # tmp923,
	leaq	.LC3(%rip), %rax	 #, tmp924
	movq	%rax, %rcx	 # tmp924,
	call	printf	 #
.L1591:
 # ./test/pdsp_test.c:1771:     PDSP_ASSERT((data[2][0] == 0.0f) && (data[2][1] == 0.0f) &&
	movss	64(%rbp), %xmm0	 # data[2][0], _54
	pxor	%xmm1, %xmm1	 # tmp925
	ucomiss	%xmm1, %xmm0	 # tmp925, _54
	jp	.L1593	 #,
	pxor	%xmm1, %xmm1	 # tmp926
	ucomiss	%xmm1, %xmm0	 # tmp926, _54
	jne	.L1593	 #,
 # ./test/pdsp_test.c:1771:     PDSP_ASSERT((data[2][0] == 0.0f) && (data[2][1] == 0.0f) &&
	movss	68(%rbp), %xmm0	 # data[2][1], _55
	pxor	%xmm1, %xmm1	 # tmp927
	ucomiss	%xmm1, %xmm0	 # tmp927, _55
	jp	.L1593	 #,
	pxor	%xmm1, %xmm1	 # tmp928
	ucomiss	%xmm1, %xmm0	 # tmp928, _55
	jne	.L1593	 #,
 # ./test/pdsp_test.c:1771:     PDSP_ASSERT((data[2][0] == 0.0f) && (data[2][1] == 0.0f) &&
	movss	72(%rbp), %xmm0	 # data[2][2], _56
	pxor	%xmm1, %xmm1	 # tmp929
	ucomiss	%xmm1, %xmm0	 # tmp929, _56
	jp	.L1593	 #,
	pxor	%xmm1, %xmm1	 # tmp930
	ucomiss	%xmm1, %xmm0	 # tmp930, _56
	jne	.L1593	 #,
 # ./test/pdsp_test.c:1771:     PDSP_ASSERT((data[2][0] == 0.0f) && (data[2][1] == 0.0f) &&
	movss	76(%rbp), %xmm0	 # data[2][3], _57
	pxor	%xmm1, %xmm1	 # tmp931
	ucomiss	%xmm1, %xmm0	 # tmp931, _57
	jp	.L1593	 #,
	pxor	%xmm1, %xmm1	 # tmp932
	ucomiss	%xmm1, %xmm0	 # tmp932, _57
	je	.L1597	 #,
.L1593:
 # ./test/pdsp_test.c:1771:     PDSP_ASSERT((data[2][0] == 0.0f) && (data[2][1] == 0.0f) &&
	movl	$1771, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp933
	movq	%rax, %rdx	 # tmp933,
	leaq	.LC3(%rip), %rax	 #, tmp934
	movq	%rax, %rcx	 # tmp934,
	call	printf	 #
.L1597:
 # ./test/pdsp_test.c:1773:     PDSP_ASSERT((data[3][0] == 0.0f) && (data[3][1] == 0.0f) &&
	movss	80(%rbp), %xmm0	 # data[3][0], _58
	pxor	%xmm1, %xmm1	 # tmp935
	ucomiss	%xmm1, %xmm0	 # tmp935, _58
	jp	.L1599	 #,
	pxor	%xmm1, %xmm1	 # tmp936
	ucomiss	%xmm1, %xmm0	 # tmp936, _58
	jne	.L1599	 #,
 # ./test/pdsp_test.c:1773:     PDSP_ASSERT((data[3][0] == 0.0f) && (data[3][1] == 0.0f) &&
	movss	84(%rbp), %xmm0	 # data[3][1], _59
	pxor	%xmm1, %xmm1	 # tmp937
	ucomiss	%xmm1, %xmm0	 # tmp937, _59
	jp	.L1599	 #,
	pxor	%xmm1, %xmm1	 # tmp938
	ucomiss	%xmm1, %xmm0	 # tmp938, _59
	jne	.L1599	 #,
 # ./test/pdsp_test.c:1773:     PDSP_ASSERT((data[3][0] == 0.0f) && (data[3][1] == 0.0f) &&
	movss	88(%rbp), %xmm0	 # data[3][2], _60
	pxor	%xmm1, %xmm1	 # tmp939
	ucomiss	%xmm1, %xmm0	 # tmp939, _60
	jp	.L1599	 #,
	pxor	%xmm1, %xmm1	 # tmp940
	ucomiss	%xmm1, %xmm0	 # tmp940, _60
	jne	.L1599	 #,
 # ./test/pdsp_test.c:1773:     PDSP_ASSERT((data[3][0] == 0.0f) && (data[3][1] == 0.0f) &&
	movss	92(%rbp), %xmm0	 # data[3][3], _61
	pxor	%xmm1, %xmm1	 # tmp941
	ucomiss	%xmm1, %xmm0	 # tmp941, _61
	jp	.L1599	 #,
	pxor	%xmm1, %xmm1	 # tmp942
	ucomiss	%xmm1, %xmm0	 # tmp942, _61
	je	.L1603	 #,
.L1599:
 # ./test/pdsp_test.c:1773:     PDSP_ASSERT((data[3][0] == 0.0f) && (data[3][1] == 0.0f) &&
	movl	$1773, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp943
	movq	%rax, %rdx	 # tmp943,
	leaq	.LC3(%rip), %rax	 #, tmp944
	movq	%rax, %rcx	 # tmp944,
	call	printf	 #
.L1603:
 # ./test/pdsp_test.c:1775:     PDSP_ASSERT(log.u16_count == 0U);
	movzwl	-52(%rbp), %eax	 # log.u16_count, _62
	testw	%ax, %ax	 # _62
	je	.L1605	 #,
 # ./test/pdsp_test.c:1775:     PDSP_ASSERT(log.u16_count == 0U);
	movl	$1775, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp945
	movq	%rax, %rdx	 # tmp945,
	leaq	.LC3(%rip), %rax	 #, tmp946
	movq	%rax, %rcx	 # tmp946,
	call	printf	 #
.L1605:
 # ./test/pdsp_test.c:1776:     PDSP_ASSERT(log.u16_index_add == 1U);
	movzwl	-56(%rbp), %eax	 # log.u16_index_add, _63
	cmpw	$1, %ax	 #, _63
	je	.L1606	 #,
 # ./test/pdsp_test.c:1776:     PDSP_ASSERT(log.u16_index_add == 1U);
	movl	$1776, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp947
	movq	%rax, %rdx	 # tmp947,
	leaq	.LC3(%rip), %rax	 #, tmp948
	movq	%rax, %rcx	 # tmp948,
	call	printf	 #
.L1606:
 # ./test/pdsp_test.c:1777:     PDSP_ASSERT(log.u16_count_add == 0U);
	movzwl	-50(%rbp), %eax	 # log.u16_count_add, _64
	testw	%ax, %ax	 # _64
	je	.L1607	 #,
 # ./test/pdsp_test.c:1777:     PDSP_ASSERT(log.u16_count_add == 0U);
	movl	$1777, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp949
	movq	%rax, %rdx	 # tmp949,
	leaq	.LC3(%rip), %rax	 #, tmp950
	movq	%rax, %rcx	 # tmp950,
	call	printf	 #
.L1607:
 # ./test/pdsp_test.c:1779:     log1 = src1[1];
	movss	244(%rbp), %xmm0	 # src1[1], _65
 # ./test/pdsp_test.c:1779:     log1 = src1[1];
	movss	%xmm0, 140(%rbp)	 # _65, log1
 # ./test/pdsp_test.c:1780:     log2 = src2[1];
	movss	212(%rbp), %xmm0	 # src2[1], _66
 # ./test/pdsp_test.c:1780:     log2 = src2[1];
	movss	%xmm0, 136(%rbp)	 # _66, log2
 # ./test/pdsp_test.c:1781:     log3 = src3[1];
	movss	180(%rbp), %xmm0	 # src3[1], _67
 # ./test/pdsp_test.c:1781:     log3 = src3[1];
	movss	%xmm0, 132(%rbp)	 # _67, log3
 # ./test/pdsp_test.c:1782:     log4 = src4[1];
	movss	148(%rbp), %xmm0	 # src4[1], _68
 # ./test/pdsp_test.c:1782:     log4 = src4[1];
	movss	%xmm0, 128(%rbp)	 # _68, log4
 # ./test/pdsp_test.c:1783:     pdsp_macro_log32_run(log, plog, data);
	movzwl	-56(%rbp), %eax	 # log.u16_index_add, _69
	cmpw	$1, %ax	 #, _69
	jne	.L1608	 #,
 # ./test/pdsp_test.c:1783:     pdsp_macro_log32_run(log, plog, data);
	movzwl	-46(%rbp), %eax	 # log.u16_ch1_index, _70
	movzwl	%ax, %eax	 # _70, _71
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_71], _72
	movzwl	-58(%rbp), %edx	 # log.u16_index, _73
	movzwl	%dx, %edx	 # _73, _74
	movss	(%rax), %xmm0	 # *_72, _75
	movslq	%edx, %rax	 # _74, tmp952
	salq	$4, %rax	 #, tmp953
	leaq	272(%rax), %rax	 #, tmp1414
	addq	%rbp, %rax	 #, tmp954
	subq	$240, %rax	 #, tmp955
	movss	%xmm0, (%rax)	 # _75, data[_74][0]
	movzwl	-44(%rbp), %eax	 # log.u16_ch2_index, _76
	movzwl	%ax, %eax	 # _76, _77
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_77], _78
	movzwl	-58(%rbp), %edx	 # log.u16_index, _79
	movzwl	%dx, %edx	 # _79, _80
	movss	(%rax), %xmm0	 # *_78, _81
	movslq	%edx, %rax	 # _80, tmp957
	salq	$4, %rax	 #, tmp958
	leaq	272(%rax), %rax	 #, tmp1415
	addq	%rbp, %rax	 #, tmp959
	subq	$236, %rax	 #, tmp960
	movss	%xmm0, (%rax)	 # _81, data[_80][1]
	movzwl	-42(%rbp), %eax	 # log.u16_ch3_index, _82
	movzwl	%ax, %eax	 # _82, _83
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_83], _84
	movzwl	-58(%rbp), %edx	 # log.u16_index, _85
	movzwl	%dx, %edx	 # _85, _86
	movss	(%rax), %xmm0	 # *_84, _87
	movslq	%edx, %rax	 # _86, tmp962
	salq	$4, %rax	 #, tmp963
	leaq	272(%rax), %rax	 #, tmp1416
	addq	%rbp, %rax	 #, tmp964
	subq	$232, %rax	 #, tmp965
	movss	%xmm0, (%rax)	 # _87, data[_86][2]
	movzwl	-40(%rbp), %eax	 # log.u16_ch4_index, _88
	movzwl	%ax, %eax	 # _88, _89
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_89], _90
	movzwl	-58(%rbp), %edx	 # log.u16_index, _91
	movzwl	%dx, %edx	 # _91, _92
	movss	(%rax), %xmm0	 # *_90, _93
	movslq	%edx, %rax	 # _92, tmp967
	salq	$4, %rax	 #, tmp968
	leaq	272(%rax), %rax	 #, tmp1417
	addq	%rbp, %rax	 #, tmp969
	subq	$228, %rax	 #, tmp970
	movss	%xmm0, (%rax)	 # _93, data[_92][3]
	movzwl	-58(%rbp), %edx	 # log.u16_index, _94
	movzwl	-56(%rbp), %eax	 # log.u16_index_add, _95
	addl	%edx, %eax	 # _94, _96
	movw	%ax, -58(%rbp)	 # _96, log.u16_index
	movzwl	-58(%rbp), %edx	 # log.u16_index, _97
	movzwl	-60(%rbp), %eax	 # log.u16_size_mask, _98
	andl	%edx, %eax	 # _97, _99
	movw	%ax, -58(%rbp)	 # _99, log.u16_index
	movzwl	-52(%rbp), %edx	 # log.u16_count, _100
	movzwl	-50(%rbp), %eax	 # log.u16_count_add, _101
	addl	%edx, %eax	 # _100, _102
	movw	%ax, -52(%rbp)	 # _102, log.u16_count
	movzwl	-52(%rbp), %eax	 # log.u16_count, _103
	movzwl	-64(%rbp), %edx	 # log.u16_size_half, _104
	cmpw	%ax, %dx	 # _103, _104
	jnb	.L1609	 #,
 # ./test/pdsp_test.c:1783:     pdsp_macro_log32_run(log, plog, data);
	movw	$0, -56(%rbp)	 #, log.u16_index_add
	movw	$0, -50(%rbp)	 #, log.u16_count_add
	jmp	.L1608	 #
.L1609:
 # ./test/pdsp_test.c:1783:     pdsp_macro_log32_run(log, plog, data);
	movzwl	-48(%rbp), %eax	 # log.u16_trig_index, _105
	movzwl	%ax, %eax	 # _105, _106
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_106], _107
	movss	(%rax), %xmm0	 # *_107, _108
	movss	-36(%rbp), %xmm1	 # log.f32_trig_level, _109
	comiss	%xmm1, %xmm0	 # _109, _108
	jbe	.L1608	 #,
 # ./test/pdsp_test.c:1783:     pdsp_macro_log32_run(log, plog, data);
	movw	$1, -50(%rbp)	 #, log.u16_count_add
.L1608:
 # ./test/pdsp_test.c:1784:     PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
	movss	32(%rbp), %xmm0	 # data[0][0], _110
	ucomiss	.LC124(%rip), %xmm0	 #, _110
	jp	.L1611	 #,
	ucomiss	.LC124(%rip), %xmm0	 #, _110
	jne	.L1611	 #,
 # ./test/pdsp_test.c:1784:     PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
	movss	36(%rbp), %xmm0	 # data[0][1], _111
	ucomiss	.LC150(%rip), %xmm0	 #, _111
	jp	.L1611	 #,
	ucomiss	.LC150(%rip), %xmm0	 #, _111
	jne	.L1611	 #,
 # ./test/pdsp_test.c:1784:     PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
	movss	40(%rbp), %xmm0	 # data[0][2], _112
	ucomiss	.LC73(%rip), %xmm0	 #, _112
	jp	.L1611	 #,
	ucomiss	.LC73(%rip), %xmm0	 #, _112
	jne	.L1611	 #,
 # ./test/pdsp_test.c:1784:     PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
	movss	44(%rbp), %xmm0	 # data[0][3], _113
	ucomiss	.LC155(%rip), %xmm0	 #, _113
	jp	.L1611	 #,
	ucomiss	.LC155(%rip), %xmm0	 #, _113
	je	.L1615	 #,
.L1611:
 # ./test/pdsp_test.c:1784:     PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
	movl	$1784, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp972
	movq	%rax, %rdx	 # tmp972,
	leaq	.LC3(%rip), %rax	 #, tmp973
	movq	%rax, %rcx	 # tmp973,
	call	printf	 #
.L1615:
 # ./test/pdsp_test.c:1786:     PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
	movss	48(%rbp), %xmm0	 # data[1][0], _114
	ucomiss	.LC129(%rip), %xmm0	 #, _114
	jp	.L1617	 #,
	ucomiss	.LC129(%rip), %xmm0	 #, _114
	jne	.L1617	 #,
 # ./test/pdsp_test.c:1786:     PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
	movss	52(%rbp), %xmm0	 # data[1][1], _115
	ucomiss	.LC63(%rip), %xmm0	 #, _115
	jp	.L1617	 #,
	ucomiss	.LC63(%rip), %xmm0	 #, _115
	jne	.L1617	 #,
 # ./test/pdsp_test.c:1786:     PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
	movss	56(%rbp), %xmm0	 # data[1][2], _116
	ucomiss	.LC64(%rip), %xmm0	 #, _116
	jp	.L1617	 #,
	ucomiss	.LC64(%rip), %xmm0	 #, _116
	jne	.L1617	 #,
 # ./test/pdsp_test.c:1786:     PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
	movss	60(%rbp), %xmm0	 # data[1][3], _117
	ucomiss	.LC65(%rip), %xmm0	 #, _117
	jp	.L1617	 #,
	ucomiss	.LC65(%rip), %xmm0	 #, _117
	je	.L1621	 #,
.L1617:
 # ./test/pdsp_test.c:1786:     PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
	movl	$1786, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp974
	movq	%rax, %rdx	 # tmp974,
	leaq	.LC3(%rip), %rax	 #, tmp975
	movq	%rax, %rcx	 # tmp975,
	call	printf	 #
.L1621:
 # ./test/pdsp_test.c:1788:     PDSP_ASSERT((data[2][0] == 0.0f) && (data[2][1] == 0.0f) &&
	movss	64(%rbp), %xmm0	 # data[2][0], _118
	pxor	%xmm1, %xmm1	 # tmp976
	ucomiss	%xmm1, %xmm0	 # tmp976, _118
	jp	.L1623	 #,
	pxor	%xmm1, %xmm1	 # tmp977
	ucomiss	%xmm1, %xmm0	 # tmp977, _118
	jne	.L1623	 #,
 # ./test/pdsp_test.c:1788:     PDSP_ASSERT((data[2][0] == 0.0f) && (data[2][1] == 0.0f) &&
	movss	68(%rbp), %xmm0	 # data[2][1], _119
	pxor	%xmm1, %xmm1	 # tmp978
	ucomiss	%xmm1, %xmm0	 # tmp978, _119
	jp	.L1623	 #,
	pxor	%xmm1, %xmm1	 # tmp979
	ucomiss	%xmm1, %xmm0	 # tmp979, _119
	jne	.L1623	 #,
 # ./test/pdsp_test.c:1788:     PDSP_ASSERT((data[2][0] == 0.0f) && (data[2][1] == 0.0f) &&
	movss	72(%rbp), %xmm0	 # data[2][2], _120
	pxor	%xmm1, %xmm1	 # tmp980
	ucomiss	%xmm1, %xmm0	 # tmp980, _120
	jp	.L1623	 #,
	pxor	%xmm1, %xmm1	 # tmp981
	ucomiss	%xmm1, %xmm0	 # tmp981, _120
	jne	.L1623	 #,
 # ./test/pdsp_test.c:1788:     PDSP_ASSERT((data[2][0] == 0.0f) && (data[2][1] == 0.0f) &&
	movss	76(%rbp), %xmm0	 # data[2][3], _121
	pxor	%xmm1, %xmm1	 # tmp982
	ucomiss	%xmm1, %xmm0	 # tmp982, _121
	jp	.L1623	 #,
	pxor	%xmm1, %xmm1	 # tmp983
	ucomiss	%xmm1, %xmm0	 # tmp983, _121
	je	.L1627	 #,
.L1623:
 # ./test/pdsp_test.c:1788:     PDSP_ASSERT((data[2][0] == 0.0f) && (data[2][1] == 0.0f) &&
	movl	$1788, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp984
	movq	%rax, %rdx	 # tmp984,
	leaq	.LC3(%rip), %rax	 #, tmp985
	movq	%rax, %rcx	 # tmp985,
	call	printf	 #
.L1627:
 # ./test/pdsp_test.c:1790:     PDSP_ASSERT((data[3][0] == 0.0f) && (data[3][1] == 0.0f) &&
	movss	80(%rbp), %xmm0	 # data[3][0], _122
	pxor	%xmm1, %xmm1	 # tmp986
	ucomiss	%xmm1, %xmm0	 # tmp986, _122
	jp	.L1629	 #,
	pxor	%xmm1, %xmm1	 # tmp987
	ucomiss	%xmm1, %xmm0	 # tmp987, _122
	jne	.L1629	 #,
 # ./test/pdsp_test.c:1790:     PDSP_ASSERT((data[3][0] == 0.0f) && (data[3][1] == 0.0f) &&
	movss	84(%rbp), %xmm0	 # data[3][1], _123
	pxor	%xmm1, %xmm1	 # tmp988
	ucomiss	%xmm1, %xmm0	 # tmp988, _123
	jp	.L1629	 #,
	pxor	%xmm1, %xmm1	 # tmp989
	ucomiss	%xmm1, %xmm0	 # tmp989, _123
	jne	.L1629	 #,
 # ./test/pdsp_test.c:1790:     PDSP_ASSERT((data[3][0] == 0.0f) && (data[3][1] == 0.0f) &&
	movss	88(%rbp), %xmm0	 # data[3][2], _124
	pxor	%xmm1, %xmm1	 # tmp990
	ucomiss	%xmm1, %xmm0	 # tmp990, _124
	jp	.L1629	 #,
	pxor	%xmm1, %xmm1	 # tmp991
	ucomiss	%xmm1, %xmm0	 # tmp991, _124
	jne	.L1629	 #,
 # ./test/pdsp_test.c:1790:     PDSP_ASSERT((data[3][0] == 0.0f) && (data[3][1] == 0.0f) &&
	movss	92(%rbp), %xmm0	 # data[3][3], _125
	pxor	%xmm1, %xmm1	 # tmp992
	ucomiss	%xmm1, %xmm0	 # tmp992, _125
	jp	.L1629	 #,
	pxor	%xmm1, %xmm1	 # tmp993
	ucomiss	%xmm1, %xmm0	 # tmp993, _125
	je	.L1633	 #,
.L1629:
 # ./test/pdsp_test.c:1790:     PDSP_ASSERT((data[3][0] == 0.0f) && (data[3][1] == 0.0f) &&
	movl	$1790, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp994
	movq	%rax, %rdx	 # tmp994,
	leaq	.LC3(%rip), %rax	 #, tmp995
	movq	%rax, %rcx	 # tmp995,
	call	printf	 #
.L1633:
 # ./test/pdsp_test.c:1792:     PDSP_ASSERT(log.u16_count == 0U);
	movzwl	-52(%rbp), %eax	 # log.u16_count, _126
	testw	%ax, %ax	 # _126
	je	.L1635	 #,
 # ./test/pdsp_test.c:1792:     PDSP_ASSERT(log.u16_count == 0U);
	movl	$1792, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp996
	movq	%rax, %rdx	 # tmp996,
	leaq	.LC3(%rip), %rax	 #, tmp997
	movq	%rax, %rcx	 # tmp997,
	call	printf	 #
.L1635:
 # ./test/pdsp_test.c:1793:     PDSP_ASSERT(log.u16_index_add == 1U);
	movzwl	-56(%rbp), %eax	 # log.u16_index_add, _127
	cmpw	$1, %ax	 #, _127
	je	.L1636	 #,
 # ./test/pdsp_test.c:1793:     PDSP_ASSERT(log.u16_index_add == 1U);
	movl	$1793, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp998
	movq	%rax, %rdx	 # tmp998,
	leaq	.LC3(%rip), %rax	 #, tmp999
	movq	%rax, %rcx	 # tmp999,
	call	printf	 #
.L1636:
 # ./test/pdsp_test.c:1794:     PDSP_ASSERT(log.u16_count_add == 0U);
	movzwl	-50(%rbp), %eax	 # log.u16_count_add, _128
	testw	%ax, %ax	 # _128
	je	.L1637	 #,
 # ./test/pdsp_test.c:1794:     PDSP_ASSERT(log.u16_count_add == 0U);
	movl	$1794, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1000
	movq	%rax, %rdx	 # tmp1000,
	leaq	.LC3(%rip), %rax	 #, tmp1001
	movq	%rax, %rcx	 # tmp1001,
	call	printf	 #
.L1637:
 # ./test/pdsp_test.c:1796:     log1 = src1[2];
	movss	248(%rbp), %xmm0	 # src1[2], _129
 # ./test/pdsp_test.c:1796:     log1 = src1[2];
	movss	%xmm0, 140(%rbp)	 # _129, log1
 # ./test/pdsp_test.c:1797:     log2 = src2[2];
	movss	216(%rbp), %xmm0	 # src2[2], _130
 # ./test/pdsp_test.c:1797:     log2 = src2[2];
	movss	%xmm0, 136(%rbp)	 # _130, log2
 # ./test/pdsp_test.c:1798:     log3 = src3[2];
	movss	184(%rbp), %xmm0	 # src3[2], _131
 # ./test/pdsp_test.c:1798:     log3 = src3[2];
	movss	%xmm0, 132(%rbp)	 # _131, log3
 # ./test/pdsp_test.c:1799:     log4 = src4[2];
	movss	152(%rbp), %xmm0	 # src4[2], _132
 # ./test/pdsp_test.c:1799:     log4 = src4[2];
	movss	%xmm0, 128(%rbp)	 # _132, log4
 # ./test/pdsp_test.c:1800:     pdsp_macro_log32_run(log, plog, data);
	movzwl	-56(%rbp), %eax	 # log.u16_index_add, _133
	cmpw	$1, %ax	 #, _133
	jne	.L1638	 #,
 # ./test/pdsp_test.c:1800:     pdsp_macro_log32_run(log, plog, data);
	movzwl	-46(%rbp), %eax	 # log.u16_ch1_index, _134
	movzwl	%ax, %eax	 # _134, _135
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_135], _136
	movzwl	-58(%rbp), %edx	 # log.u16_index, _137
	movzwl	%dx, %edx	 # _137, _138
	movss	(%rax), %xmm0	 # *_136, _139
	movslq	%edx, %rax	 # _138, tmp1003
	salq	$4, %rax	 #, tmp1004
	leaq	272(%rax), %rax	 #, tmp1418
	addq	%rbp, %rax	 #, tmp1005
	subq	$240, %rax	 #, tmp1006
	movss	%xmm0, (%rax)	 # _139, data[_138][0]
	movzwl	-44(%rbp), %eax	 # log.u16_ch2_index, _140
	movzwl	%ax, %eax	 # _140, _141
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_141], _142
	movzwl	-58(%rbp), %edx	 # log.u16_index, _143
	movzwl	%dx, %edx	 # _143, _144
	movss	(%rax), %xmm0	 # *_142, _145
	movslq	%edx, %rax	 # _144, tmp1008
	salq	$4, %rax	 #, tmp1009
	leaq	272(%rax), %rax	 #, tmp1419
	addq	%rbp, %rax	 #, tmp1010
	subq	$236, %rax	 #, tmp1011
	movss	%xmm0, (%rax)	 # _145, data[_144][1]
	movzwl	-42(%rbp), %eax	 # log.u16_ch3_index, _146
	movzwl	%ax, %eax	 # _146, _147
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_147], _148
	movzwl	-58(%rbp), %edx	 # log.u16_index, _149
	movzwl	%dx, %edx	 # _149, _150
	movss	(%rax), %xmm0	 # *_148, _151
	movslq	%edx, %rax	 # _150, tmp1013
	salq	$4, %rax	 #, tmp1014
	leaq	272(%rax), %rax	 #, tmp1420
	addq	%rbp, %rax	 #, tmp1015
	subq	$232, %rax	 #, tmp1016
	movss	%xmm0, (%rax)	 # _151, data[_150][2]
	movzwl	-40(%rbp), %eax	 # log.u16_ch4_index, _152
	movzwl	%ax, %eax	 # _152, _153
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_153], _154
	movzwl	-58(%rbp), %edx	 # log.u16_index, _155
	movzwl	%dx, %edx	 # _155, _156
	movss	(%rax), %xmm0	 # *_154, _157
	movslq	%edx, %rax	 # _156, tmp1018
	salq	$4, %rax	 #, tmp1019
	leaq	272(%rax), %rax	 #, tmp1421
	addq	%rbp, %rax	 #, tmp1020
	subq	$228, %rax	 #, tmp1021
	movss	%xmm0, (%rax)	 # _157, data[_156][3]
	movzwl	-58(%rbp), %edx	 # log.u16_index, _158
	movzwl	-56(%rbp), %eax	 # log.u16_index_add, _159
	addl	%edx, %eax	 # _158, _160
	movw	%ax, -58(%rbp)	 # _160, log.u16_index
	movzwl	-58(%rbp), %edx	 # log.u16_index, _161
	movzwl	-60(%rbp), %eax	 # log.u16_size_mask, _162
	andl	%edx, %eax	 # _161, _163
	movw	%ax, -58(%rbp)	 # _163, log.u16_index
	movzwl	-52(%rbp), %edx	 # log.u16_count, _164
	movzwl	-50(%rbp), %eax	 # log.u16_count_add, _165
	addl	%edx, %eax	 # _164, _166
	movw	%ax, -52(%rbp)	 # _166, log.u16_count
	movzwl	-52(%rbp), %eax	 # log.u16_count, _167
	movzwl	-64(%rbp), %edx	 # log.u16_size_half, _168
	cmpw	%ax, %dx	 # _167, _168
	jnb	.L1639	 #,
 # ./test/pdsp_test.c:1800:     pdsp_macro_log32_run(log, plog, data);
	movw	$0, -56(%rbp)	 #, log.u16_index_add
	movw	$0, -50(%rbp)	 #, log.u16_count_add
	jmp	.L1638	 #
.L1639:
 # ./test/pdsp_test.c:1800:     pdsp_macro_log32_run(log, plog, data);
	movzwl	-48(%rbp), %eax	 # log.u16_trig_index, _169
	movzwl	%ax, %eax	 # _169, _170
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_170], _171
	movss	(%rax), %xmm0	 # *_171, _172
	movss	-36(%rbp), %xmm1	 # log.f32_trig_level, _173
	comiss	%xmm1, %xmm0	 # _173, _172
	jbe	.L1638	 #,
 # ./test/pdsp_test.c:1800:     pdsp_macro_log32_run(log, plog, data);
	movw	$1, -50(%rbp)	 #, log.u16_count_add
.L1638:
 # ./test/pdsp_test.c:1801:     PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
	movss	32(%rbp), %xmm0	 # data[0][0], _174
	ucomiss	.LC124(%rip), %xmm0	 #, _174
	jp	.L1641	 #,
	ucomiss	.LC124(%rip), %xmm0	 #, _174
	jne	.L1641	 #,
 # ./test/pdsp_test.c:1801:     PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
	movss	36(%rbp), %xmm0	 # data[0][1], _175
	ucomiss	.LC150(%rip), %xmm0	 #, _175
	jp	.L1641	 #,
	ucomiss	.LC150(%rip), %xmm0	 #, _175
	jne	.L1641	 #,
 # ./test/pdsp_test.c:1801:     PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
	movss	40(%rbp), %xmm0	 # data[0][2], _176
	ucomiss	.LC73(%rip), %xmm0	 #, _176
	jp	.L1641	 #,
	ucomiss	.LC73(%rip), %xmm0	 #, _176
	jne	.L1641	 #,
 # ./test/pdsp_test.c:1801:     PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
	movss	44(%rbp), %xmm0	 # data[0][3], _177
	ucomiss	.LC155(%rip), %xmm0	 #, _177
	jp	.L1641	 #,
	ucomiss	.LC155(%rip), %xmm0	 #, _177
	je	.L1645	 #,
.L1641:
 # ./test/pdsp_test.c:1801:     PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
	movl	$1801, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1023
	movq	%rax, %rdx	 # tmp1023,
	leaq	.LC3(%rip), %rax	 #, tmp1024
	movq	%rax, %rcx	 # tmp1024,
	call	printf	 #
.L1645:
 # ./test/pdsp_test.c:1803:     PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
	movss	48(%rbp), %xmm0	 # data[1][0], _178
	ucomiss	.LC129(%rip), %xmm0	 #, _178
	jp	.L1647	 #,
	ucomiss	.LC129(%rip), %xmm0	 #, _178
	jne	.L1647	 #,
 # ./test/pdsp_test.c:1803:     PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
	movss	52(%rbp), %xmm0	 # data[1][1], _179
	ucomiss	.LC63(%rip), %xmm0	 #, _179
	jp	.L1647	 #,
	ucomiss	.LC63(%rip), %xmm0	 #, _179
	jne	.L1647	 #,
 # ./test/pdsp_test.c:1803:     PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
	movss	56(%rbp), %xmm0	 # data[1][2], _180
	ucomiss	.LC64(%rip), %xmm0	 #, _180
	jp	.L1647	 #,
	ucomiss	.LC64(%rip), %xmm0	 #, _180
	jne	.L1647	 #,
 # ./test/pdsp_test.c:1803:     PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
	movss	60(%rbp), %xmm0	 # data[1][3], _181
	ucomiss	.LC65(%rip), %xmm0	 #, _181
	jp	.L1647	 #,
	ucomiss	.LC65(%rip), %xmm0	 #, _181
	je	.L1651	 #,
.L1647:
 # ./test/pdsp_test.c:1803:     PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
	movl	$1803, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1025
	movq	%rax, %rdx	 # tmp1025,
	leaq	.LC3(%rip), %rax	 #, tmp1026
	movq	%rax, %rcx	 # tmp1026,
	call	printf	 #
.L1651:
 # ./test/pdsp_test.c:1805:     PDSP_ASSERT((data[2][0] == 0.3f) && (data[2][1] == 1.3f) &&
	movss	64(%rbp), %xmm0	 # data[2][0], _182
	ucomiss	.LC147(%rip), %xmm0	 #, _182
	jp	.L1653	 #,
	ucomiss	.LC147(%rip), %xmm0	 #, _182
	jne	.L1653	 #,
 # ./test/pdsp_test.c:1805:     PDSP_ASSERT((data[2][0] == 0.3f) && (data[2][1] == 1.3f) &&
	movss	68(%rbp), %xmm0	 # data[2][1], _183
	ucomiss	.LC66(%rip), %xmm0	 #, _183
	jp	.L1653	 #,
	ucomiss	.LC66(%rip), %xmm0	 #, _183
	jne	.L1653	 #,
 # ./test/pdsp_test.c:1805:     PDSP_ASSERT((data[2][0] == 0.3f) && (data[2][1] == 1.3f) &&
	movss	72(%rbp), %xmm0	 # data[2][2], _184
	ucomiss	.LC67(%rip), %xmm0	 #, _184
	jp	.L1653	 #,
	ucomiss	.LC67(%rip), %xmm0	 #, _184
	jne	.L1653	 #,
 # ./test/pdsp_test.c:1805:     PDSP_ASSERT((data[2][0] == 0.3f) && (data[2][1] == 1.3f) &&
	movss	76(%rbp), %xmm0	 # data[2][3], _185
	ucomiss	.LC156(%rip), %xmm0	 #, _185
	jp	.L1653	 #,
	ucomiss	.LC156(%rip), %xmm0	 #, _185
	je	.L1657	 #,
.L1653:
 # ./test/pdsp_test.c:1805:     PDSP_ASSERT((data[2][0] == 0.3f) && (data[2][1] == 1.3f) &&
	movl	$1805, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1027
	movq	%rax, %rdx	 # tmp1027,
	leaq	.LC3(%rip), %rax	 #, tmp1028
	movq	%rax, %rcx	 # tmp1028,
	call	printf	 #
.L1657:
 # ./test/pdsp_test.c:1807:     PDSP_ASSERT((data[3][0] == 0.0f) && (data[3][1] == 0.0f) &&
	movss	80(%rbp), %xmm0	 # data[3][0], _186
	pxor	%xmm1, %xmm1	 # tmp1029
	ucomiss	%xmm1, %xmm0	 # tmp1029, _186
	jp	.L1659	 #,
	pxor	%xmm1, %xmm1	 # tmp1030
	ucomiss	%xmm1, %xmm0	 # tmp1030, _186
	jne	.L1659	 #,
 # ./test/pdsp_test.c:1807:     PDSP_ASSERT((data[3][0] == 0.0f) && (data[3][1] == 0.0f) &&
	movss	84(%rbp), %xmm0	 # data[3][1], _187
	pxor	%xmm1, %xmm1	 # tmp1031
	ucomiss	%xmm1, %xmm0	 # tmp1031, _187
	jp	.L1659	 #,
	pxor	%xmm1, %xmm1	 # tmp1032
	ucomiss	%xmm1, %xmm0	 # tmp1032, _187
	jne	.L1659	 #,
 # ./test/pdsp_test.c:1807:     PDSP_ASSERT((data[3][0] == 0.0f) && (data[3][1] == 0.0f) &&
	movss	88(%rbp), %xmm0	 # data[3][2], _188
	pxor	%xmm1, %xmm1	 # tmp1033
	ucomiss	%xmm1, %xmm0	 # tmp1033, _188
	jp	.L1659	 #,
	pxor	%xmm1, %xmm1	 # tmp1034
	ucomiss	%xmm1, %xmm0	 # tmp1034, _188
	jne	.L1659	 #,
 # ./test/pdsp_test.c:1807:     PDSP_ASSERT((data[3][0] == 0.0f) && (data[3][1] == 0.0f) &&
	movss	92(%rbp), %xmm0	 # data[3][3], _189
	pxor	%xmm1, %xmm1	 # tmp1035
	ucomiss	%xmm1, %xmm0	 # tmp1035, _189
	jp	.L1659	 #,
	pxor	%xmm1, %xmm1	 # tmp1036
	ucomiss	%xmm1, %xmm0	 # tmp1036, _189
	je	.L1663	 #,
.L1659:
 # ./test/pdsp_test.c:1807:     PDSP_ASSERT((data[3][0] == 0.0f) && (data[3][1] == 0.0f) &&
	movl	$1807, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1037
	movq	%rax, %rdx	 # tmp1037,
	leaq	.LC3(%rip), %rax	 #, tmp1038
	movq	%rax, %rcx	 # tmp1038,
	call	printf	 #
.L1663:
 # ./test/pdsp_test.c:1809:     PDSP_ASSERT(log.u16_count == 0U);
	movzwl	-52(%rbp), %eax	 # log.u16_count, _190
	testw	%ax, %ax	 # _190
	je	.L1665	 #,
 # ./test/pdsp_test.c:1809:     PDSP_ASSERT(log.u16_count == 0U);
	movl	$1809, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1039
	movq	%rax, %rdx	 # tmp1039,
	leaq	.LC3(%rip), %rax	 #, tmp1040
	movq	%rax, %rcx	 # tmp1040,
	call	printf	 #
.L1665:
 # ./test/pdsp_test.c:1810:     PDSP_ASSERT(log.u16_index_add == 1U);
	movzwl	-56(%rbp), %eax	 # log.u16_index_add, _191
	cmpw	$1, %ax	 #, _191
	je	.L1666	 #,
 # ./test/pdsp_test.c:1810:     PDSP_ASSERT(log.u16_index_add == 1U);
	movl	$1810, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1041
	movq	%rax, %rdx	 # tmp1041,
	leaq	.LC3(%rip), %rax	 #, tmp1042
	movq	%rax, %rcx	 # tmp1042,
	call	printf	 #
.L1666:
 # ./test/pdsp_test.c:1811:     PDSP_ASSERT(log.u16_count_add == 0U);
	movzwl	-50(%rbp), %eax	 # log.u16_count_add, _192
	testw	%ax, %ax	 # _192
	je	.L1667	 #,
 # ./test/pdsp_test.c:1811:     PDSP_ASSERT(log.u16_count_add == 0U);
	movl	$1811, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1043
	movq	%rax, %rdx	 # tmp1043,
	leaq	.LC3(%rip), %rax	 #, tmp1044
	movq	%rax, %rcx	 # tmp1044,
	call	printf	 #
.L1667:
 # ./test/pdsp_test.c:1813:     log1 = src1[3];
	movss	252(%rbp), %xmm0	 # src1[3], _193
 # ./test/pdsp_test.c:1813:     log1 = src1[3];
	movss	%xmm0, 140(%rbp)	 # _193, log1
 # ./test/pdsp_test.c:1814:     log2 = src2[3];
	movss	220(%rbp), %xmm0	 # src2[3], _194
 # ./test/pdsp_test.c:1814:     log2 = src2[3];
	movss	%xmm0, 136(%rbp)	 # _194, log2
 # ./test/pdsp_test.c:1815:     log3 = src3[3];
	movss	188(%rbp), %xmm0	 # src3[3], _195
 # ./test/pdsp_test.c:1815:     log3 = src3[3];
	movss	%xmm0, 132(%rbp)	 # _195, log3
 # ./test/pdsp_test.c:1816:     log4 = src4[3];
	movss	156(%rbp), %xmm0	 # src4[3], _196
 # ./test/pdsp_test.c:1816:     log4 = src4[3];
	movss	%xmm0, 128(%rbp)	 # _196, log4
 # ./test/pdsp_test.c:1817:     pdsp_macro_log32_run(log, plog, data);
	movzwl	-56(%rbp), %eax	 # log.u16_index_add, _197
	cmpw	$1, %ax	 #, _197
	jne	.L1668	 #,
 # ./test/pdsp_test.c:1817:     pdsp_macro_log32_run(log, plog, data);
	movzwl	-46(%rbp), %eax	 # log.u16_ch1_index, _198
	movzwl	%ax, %eax	 # _198, _199
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_199], _200
	movzwl	-58(%rbp), %edx	 # log.u16_index, _201
	movzwl	%dx, %edx	 # _201, _202
	movss	(%rax), %xmm0	 # *_200, _203
	movslq	%edx, %rax	 # _202, tmp1046
	salq	$4, %rax	 #, tmp1047
	leaq	272(%rax), %rax	 #, tmp1422
	addq	%rbp, %rax	 #, tmp1048
	subq	$240, %rax	 #, tmp1049
	movss	%xmm0, (%rax)	 # _203, data[_202][0]
	movzwl	-44(%rbp), %eax	 # log.u16_ch2_index, _204
	movzwl	%ax, %eax	 # _204, _205
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_205], _206
	movzwl	-58(%rbp), %edx	 # log.u16_index, _207
	movzwl	%dx, %edx	 # _207, _208
	movss	(%rax), %xmm0	 # *_206, _209
	movslq	%edx, %rax	 # _208, tmp1051
	salq	$4, %rax	 #, tmp1052
	leaq	272(%rax), %rax	 #, tmp1423
	addq	%rbp, %rax	 #, tmp1053
	subq	$236, %rax	 #, tmp1054
	movss	%xmm0, (%rax)	 # _209, data[_208][1]
	movzwl	-42(%rbp), %eax	 # log.u16_ch3_index, _210
	movzwl	%ax, %eax	 # _210, _211
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_211], _212
	movzwl	-58(%rbp), %edx	 # log.u16_index, _213
	movzwl	%dx, %edx	 # _213, _214
	movss	(%rax), %xmm0	 # *_212, _215
	movslq	%edx, %rax	 # _214, tmp1056
	salq	$4, %rax	 #, tmp1057
	leaq	272(%rax), %rax	 #, tmp1424
	addq	%rbp, %rax	 #, tmp1058
	subq	$232, %rax	 #, tmp1059
	movss	%xmm0, (%rax)	 # _215, data[_214][2]
	movzwl	-40(%rbp), %eax	 # log.u16_ch4_index, _216
	movzwl	%ax, %eax	 # _216, _217
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_217], _218
	movzwl	-58(%rbp), %edx	 # log.u16_index, _219
	movzwl	%dx, %edx	 # _219, _220
	movss	(%rax), %xmm0	 # *_218, _221
	movslq	%edx, %rax	 # _220, tmp1061
	salq	$4, %rax	 #, tmp1062
	leaq	272(%rax), %rax	 #, tmp1425
	addq	%rbp, %rax	 #, tmp1063
	subq	$228, %rax	 #, tmp1064
	movss	%xmm0, (%rax)	 # _221, data[_220][3]
	movzwl	-58(%rbp), %edx	 # log.u16_index, _222
	movzwl	-56(%rbp), %eax	 # log.u16_index_add, _223
	addl	%edx, %eax	 # _222, _224
	movw	%ax, -58(%rbp)	 # _224, log.u16_index
	movzwl	-58(%rbp), %edx	 # log.u16_index, _225
	movzwl	-60(%rbp), %eax	 # log.u16_size_mask, _226
	andl	%edx, %eax	 # _225, _227
	movw	%ax, -58(%rbp)	 # _227, log.u16_index
	movzwl	-52(%rbp), %edx	 # log.u16_count, _228
	movzwl	-50(%rbp), %eax	 # log.u16_count_add, _229
	addl	%edx, %eax	 # _228, _230
	movw	%ax, -52(%rbp)	 # _230, log.u16_count
	movzwl	-52(%rbp), %eax	 # log.u16_count, _231
	movzwl	-64(%rbp), %edx	 # log.u16_size_half, _232
	cmpw	%ax, %dx	 # _231, _232
	jnb	.L1669	 #,
 # ./test/pdsp_test.c:1817:     pdsp_macro_log32_run(log, plog, data);
	movw	$0, -56(%rbp)	 #, log.u16_index_add
	movw	$0, -50(%rbp)	 #, log.u16_count_add
	jmp	.L1668	 #
.L1669:
 # ./test/pdsp_test.c:1817:     pdsp_macro_log32_run(log, plog, data);
	movzwl	-48(%rbp), %eax	 # log.u16_trig_index, _233
	movzwl	%ax, %eax	 # _233, _234
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_234], _235
	movss	(%rax), %xmm0	 # *_235, _236
	movss	-36(%rbp), %xmm1	 # log.f32_trig_level, _237
	comiss	%xmm1, %xmm0	 # _237, _236
	jbe	.L1668	 #,
 # ./test/pdsp_test.c:1817:     pdsp_macro_log32_run(log, plog, data);
	movw	$1, -50(%rbp)	 #, log.u16_count_add
.L1668:
 # ./test/pdsp_test.c:1818:     PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
	movss	32(%rbp), %xmm0	 # data[0][0], _238
	ucomiss	.LC124(%rip), %xmm0	 #, _238
	jp	.L1671	 #,
	ucomiss	.LC124(%rip), %xmm0	 #, _238
	jne	.L1671	 #,
 # ./test/pdsp_test.c:1818:     PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
	movss	36(%rbp), %xmm0	 # data[0][1], _239
	ucomiss	.LC150(%rip), %xmm0	 #, _239
	jp	.L1671	 #,
	ucomiss	.LC150(%rip), %xmm0	 #, _239
	jne	.L1671	 #,
 # ./test/pdsp_test.c:1818:     PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
	movss	40(%rbp), %xmm0	 # data[0][2], _240
	ucomiss	.LC73(%rip), %xmm0	 #, _240
	jp	.L1671	 #,
	ucomiss	.LC73(%rip), %xmm0	 #, _240
	jne	.L1671	 #,
 # ./test/pdsp_test.c:1818:     PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
	movss	44(%rbp), %xmm0	 # data[0][3], _241
	ucomiss	.LC155(%rip), %xmm0	 #, _241
	jp	.L1671	 #,
	ucomiss	.LC155(%rip), %xmm0	 #, _241
	je	.L1675	 #,
.L1671:
 # ./test/pdsp_test.c:1818:     PDSP_ASSERT((data[0][0] == 0.1f) && (data[0][1] == 1.1f) &&
	movl	$1818, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1066
	movq	%rax, %rdx	 # tmp1066,
	leaq	.LC3(%rip), %rax	 #, tmp1067
	movq	%rax, %rcx	 # tmp1067,
	call	printf	 #
.L1675:
 # ./test/pdsp_test.c:1820:     PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
	movss	48(%rbp), %xmm0	 # data[1][0], _242
	ucomiss	.LC129(%rip), %xmm0	 #, _242
	jp	.L1677	 #,
	ucomiss	.LC129(%rip), %xmm0	 #, _242
	jne	.L1677	 #,
 # ./test/pdsp_test.c:1820:     PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
	movss	52(%rbp), %xmm0	 # data[1][1], _243
	ucomiss	.LC63(%rip), %xmm0	 #, _243
	jp	.L1677	 #,
	ucomiss	.LC63(%rip), %xmm0	 #, _243
	jne	.L1677	 #,
 # ./test/pdsp_test.c:1820:     PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
	movss	56(%rbp), %xmm0	 # data[1][2], _244
	ucomiss	.LC64(%rip), %xmm0	 #, _244
	jp	.L1677	 #,
	ucomiss	.LC64(%rip), %xmm0	 #, _244
	jne	.L1677	 #,
 # ./test/pdsp_test.c:1820:     PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
	movss	60(%rbp), %xmm0	 # data[1][3], _245
	ucomiss	.LC65(%rip), %xmm0	 #, _245
	jp	.L1677	 #,
	ucomiss	.LC65(%rip), %xmm0	 #, _245
	je	.L1681	 #,
.L1677:
 # ./test/pdsp_test.c:1820:     PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
	movl	$1820, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1068
	movq	%rax, %rdx	 # tmp1068,
	leaq	.LC3(%rip), %rax	 #, tmp1069
	movq	%rax, %rcx	 # tmp1069,
	call	printf	 #
.L1681:
 # ./test/pdsp_test.c:1822:     PDSP_ASSERT((data[2][0] == 0.3f) && (data[2][1] == 1.3f) &&
	movss	64(%rbp), %xmm0	 # data[2][0], _246
	ucomiss	.LC147(%rip), %xmm0	 #, _246
	jp	.L1683	 #,
	ucomiss	.LC147(%rip), %xmm0	 #, _246
	jne	.L1683	 #,
 # ./test/pdsp_test.c:1822:     PDSP_ASSERT((data[2][0] == 0.3f) && (data[2][1] == 1.3f) &&
	movss	68(%rbp), %xmm0	 # data[2][1], _247
	ucomiss	.LC66(%rip), %xmm0	 #, _247
	jp	.L1683	 #,
	ucomiss	.LC66(%rip), %xmm0	 #, _247
	jne	.L1683	 #,
 # ./test/pdsp_test.c:1822:     PDSP_ASSERT((data[2][0] == 0.3f) && (data[2][1] == 1.3f) &&
	movss	72(%rbp), %xmm0	 # data[2][2], _248
	ucomiss	.LC67(%rip), %xmm0	 #, _248
	jp	.L1683	 #,
	ucomiss	.LC67(%rip), %xmm0	 #, _248
	jne	.L1683	 #,
 # ./test/pdsp_test.c:1822:     PDSP_ASSERT((data[2][0] == 0.3f) && (data[2][1] == 1.3f) &&
	movss	76(%rbp), %xmm0	 # data[2][3], _249
	ucomiss	.LC156(%rip), %xmm0	 #, _249
	jp	.L1683	 #,
	ucomiss	.LC156(%rip), %xmm0	 #, _249
	je	.L1687	 #,
.L1683:
 # ./test/pdsp_test.c:1822:     PDSP_ASSERT((data[2][0] == 0.3f) && (data[2][1] == 1.3f) &&
	movl	$1822, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1070
	movq	%rax, %rdx	 # tmp1070,
	leaq	.LC3(%rip), %rax	 #, tmp1071
	movq	%rax, %rcx	 # tmp1071,
	call	printf	 #
.L1687:
 # ./test/pdsp_test.c:1824:     PDSP_ASSERT((data[3][0] == 0.4f) && (data[3][1] == 1.4f) &&
	movss	80(%rbp), %xmm0	 # data[3][0], _250
	ucomiss	.LC148(%rip), %xmm0	 #, _250
	jp	.L1689	 #,
	ucomiss	.LC148(%rip), %xmm0	 #, _250
	jne	.L1689	 #,
 # ./test/pdsp_test.c:1824:     PDSP_ASSERT((data[3][0] == 0.4f) && (data[3][1] == 1.4f) &&
	movss	84(%rbp), %xmm0	 # data[3][1], _251
	ucomiss	.LC74(%rip), %xmm0	 #, _251
	jp	.L1689	 #,
	ucomiss	.LC74(%rip), %xmm0	 #, _251
	jne	.L1689	 #,
 # ./test/pdsp_test.c:1824:     PDSP_ASSERT((data[3][0] == 0.4f) && (data[3][1] == 1.4f) &&
	movss	88(%rbp), %xmm0	 # data[3][2], _252
	ucomiss	.LC152(%rip), %xmm0	 #, _252
	jp	.L1689	 #,
	ucomiss	.LC152(%rip), %xmm0	 #, _252
	jne	.L1689	 #,
 # ./test/pdsp_test.c:1824:     PDSP_ASSERT((data[3][0] == 0.4f) && (data[3][1] == 1.4f) &&
	movss	92(%rbp), %xmm0	 # data[3][3], _253
	ucomiss	.LC157(%rip), %xmm0	 #, _253
	jp	.L1689	 #,
	ucomiss	.LC157(%rip), %xmm0	 #, _253
	je	.L1693	 #,
.L1689:
 # ./test/pdsp_test.c:1824:     PDSP_ASSERT((data[3][0] == 0.4f) && (data[3][1] == 1.4f) &&
	movl	$1824, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1072
	movq	%rax, %rdx	 # tmp1072,
	leaq	.LC3(%rip), %rax	 #, tmp1073
	movq	%rax, %rcx	 # tmp1073,
	call	printf	 #
.L1693:
 # ./test/pdsp_test.c:1826:     PDSP_ASSERT(log.u16_count == 0U);
	movzwl	-52(%rbp), %eax	 # log.u16_count, _254
	testw	%ax, %ax	 # _254
	je	.L1695	 #,
 # ./test/pdsp_test.c:1826:     PDSP_ASSERT(log.u16_count == 0U);
	movl	$1826, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1074
	movq	%rax, %rdx	 # tmp1074,
	leaq	.LC3(%rip), %rax	 #, tmp1075
	movq	%rax, %rcx	 # tmp1075,
	call	printf	 #
.L1695:
 # ./test/pdsp_test.c:1827:     PDSP_ASSERT(log.u16_index_add == 1U);
	movzwl	-56(%rbp), %eax	 # log.u16_index_add, _255
	cmpw	$1, %ax	 #, _255
	je	.L1696	 #,
 # ./test/pdsp_test.c:1827:     PDSP_ASSERT(log.u16_index_add == 1U);
	movl	$1827, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1076
	movq	%rax, %rdx	 # tmp1076,
	leaq	.LC3(%rip), %rax	 #, tmp1077
	movq	%rax, %rcx	 # tmp1077,
	call	printf	 #
.L1696:
 # ./test/pdsp_test.c:1828:     PDSP_ASSERT(log.u16_count_add == 0U);
	movzwl	-50(%rbp), %eax	 # log.u16_count_add, _256
	testw	%ax, %ax	 # _256
	je	.L1697	 #,
 # ./test/pdsp_test.c:1828:     PDSP_ASSERT(log.u16_count_add == 0U);
	movl	$1828, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1078
	movq	%rax, %rdx	 # tmp1078,
	leaq	.LC3(%rip), %rax	 #, tmp1079
	movq	%rax, %rcx	 # tmp1079,
	call	printf	 #
.L1697:
 # ./test/pdsp_test.c:1830:     log1 = src1[4];
	movss	256(%rbp), %xmm0	 # src1[4], _257
 # ./test/pdsp_test.c:1830:     log1 = src1[4];
	movss	%xmm0, 140(%rbp)	 # _257, log1
 # ./test/pdsp_test.c:1831:     log2 = src2[4];
	movss	224(%rbp), %xmm0	 # src2[4], _258
 # ./test/pdsp_test.c:1831:     log2 = src2[4];
	movss	%xmm0, 136(%rbp)	 # _258, log2
 # ./test/pdsp_test.c:1832:     log3 = src3[4];
	movss	192(%rbp), %xmm0	 # src3[4], _259
 # ./test/pdsp_test.c:1832:     log3 = src3[4];
	movss	%xmm0, 132(%rbp)	 # _259, log3
 # ./test/pdsp_test.c:1833:     log4 = src4[4];
	movss	160(%rbp), %xmm0	 # src4[4], _260
 # ./test/pdsp_test.c:1833:     log4 = src4[4];
	movss	%xmm0, 128(%rbp)	 # _260, log4
 # ./test/pdsp_test.c:1834:     pdsp_macro_log32_run(log, plog, data);
	movzwl	-56(%rbp), %eax	 # log.u16_index_add, _261
	cmpw	$1, %ax	 #, _261
	jne	.L1698	 #,
 # ./test/pdsp_test.c:1834:     pdsp_macro_log32_run(log, plog, data);
	movzwl	-46(%rbp), %eax	 # log.u16_ch1_index, _262
	movzwl	%ax, %eax	 # _262, _263
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_263], _264
	movzwl	-58(%rbp), %edx	 # log.u16_index, _265
	movzwl	%dx, %edx	 # _265, _266
	movss	(%rax), %xmm0	 # *_264, _267
	movslq	%edx, %rax	 # _266, tmp1081
	salq	$4, %rax	 #, tmp1082
	leaq	272(%rax), %rax	 #, tmp1426
	addq	%rbp, %rax	 #, tmp1083
	subq	$240, %rax	 #, tmp1084
	movss	%xmm0, (%rax)	 # _267, data[_266][0]
	movzwl	-44(%rbp), %eax	 # log.u16_ch2_index, _268
	movzwl	%ax, %eax	 # _268, _269
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_269], _270
	movzwl	-58(%rbp), %edx	 # log.u16_index, _271
	movzwl	%dx, %edx	 # _271, _272
	movss	(%rax), %xmm0	 # *_270, _273
	movslq	%edx, %rax	 # _272, tmp1086
	salq	$4, %rax	 #, tmp1087
	leaq	272(%rax), %rax	 #, tmp1427
	addq	%rbp, %rax	 #, tmp1088
	subq	$236, %rax	 #, tmp1089
	movss	%xmm0, (%rax)	 # _273, data[_272][1]
	movzwl	-42(%rbp), %eax	 # log.u16_ch3_index, _274
	movzwl	%ax, %eax	 # _274, _275
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_275], _276
	movzwl	-58(%rbp), %edx	 # log.u16_index, _277
	movzwl	%dx, %edx	 # _277, _278
	movss	(%rax), %xmm0	 # *_276, _279
	movslq	%edx, %rax	 # _278, tmp1091
	salq	$4, %rax	 #, tmp1092
	leaq	272(%rax), %rax	 #, tmp1428
	addq	%rbp, %rax	 #, tmp1093
	subq	$232, %rax	 #, tmp1094
	movss	%xmm0, (%rax)	 # _279, data[_278][2]
	movzwl	-40(%rbp), %eax	 # log.u16_ch4_index, _280
	movzwl	%ax, %eax	 # _280, _281
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_281], _282
	movzwl	-58(%rbp), %edx	 # log.u16_index, _283
	movzwl	%dx, %edx	 # _283, _284
	movss	(%rax), %xmm0	 # *_282, _285
	movslq	%edx, %rax	 # _284, tmp1096
	salq	$4, %rax	 #, tmp1097
	leaq	272(%rax), %rax	 #, tmp1429
	addq	%rbp, %rax	 #, tmp1098
	subq	$228, %rax	 #, tmp1099
	movss	%xmm0, (%rax)	 # _285, data[_284][3]
	movzwl	-58(%rbp), %edx	 # log.u16_index, _286
	movzwl	-56(%rbp), %eax	 # log.u16_index_add, _287
	addl	%edx, %eax	 # _286, _288
	movw	%ax, -58(%rbp)	 # _288, log.u16_index
	movzwl	-58(%rbp), %edx	 # log.u16_index, _289
	movzwl	-60(%rbp), %eax	 # log.u16_size_mask, _290
	andl	%edx, %eax	 # _289, _291
	movw	%ax, -58(%rbp)	 # _291, log.u16_index
	movzwl	-52(%rbp), %edx	 # log.u16_count, _292
	movzwl	-50(%rbp), %eax	 # log.u16_count_add, _293
	addl	%edx, %eax	 # _292, _294
	movw	%ax, -52(%rbp)	 # _294, log.u16_count
	movzwl	-52(%rbp), %eax	 # log.u16_count, _295
	movzwl	-64(%rbp), %edx	 # log.u16_size_half, _296
	cmpw	%ax, %dx	 # _295, _296
	jnb	.L1699	 #,
 # ./test/pdsp_test.c:1834:     pdsp_macro_log32_run(log, plog, data);
	movw	$0, -56(%rbp)	 #, log.u16_index_add
	movw	$0, -50(%rbp)	 #, log.u16_count_add
	jmp	.L1698	 #
.L1699:
 # ./test/pdsp_test.c:1834:     pdsp_macro_log32_run(log, plog, data);
	movzwl	-48(%rbp), %eax	 # log.u16_trig_index, _297
	movzwl	%ax, %eax	 # _297, _298
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_298], _299
	movss	(%rax), %xmm0	 # *_299, _300
	movss	-36(%rbp), %xmm1	 # log.f32_trig_level, _301
	comiss	%xmm1, %xmm0	 # _301, _300
	jbe	.L1698	 #,
 # ./test/pdsp_test.c:1834:     pdsp_macro_log32_run(log, plog, data);
	movw	$1, -50(%rbp)	 #, log.u16_count_add
.L1698:
 # ./test/pdsp_test.c:1835:     PDSP_ASSERT((data[0][0] == 0.5f) && (data[0][1] == 1.5f) &&
	movss	32(%rbp), %xmm0	 # data[0][0], _302
	ucomiss	.LC37(%rip), %xmm0	 #, _302
	jp	.L1701	 #,
	ucomiss	.LC37(%rip), %xmm0	 #, _302
	jne	.L1701	 #,
 # ./test/pdsp_test.c:1835:     PDSP_ASSERT((data[0][0] == 0.5f) && (data[0][1] == 1.5f) &&
	movss	36(%rbp), %xmm0	 # data[0][1], _303
	ucomiss	.LC24(%rip), %xmm0	 #, _303
	jp	.L1701	 #,
	ucomiss	.LC24(%rip), %xmm0	 #, _303
	jne	.L1701	 #,
 # ./test/pdsp_test.c:1835:     PDSP_ASSERT((data[0][0] == 0.5f) && (data[0][1] == 1.5f) &&
	movss	40(%rbp), %xmm0	 # data[0][2], _304
	ucomiss	.LC38(%rip), %xmm0	 #, _304
	jp	.L1701	 #,
	ucomiss	.LC38(%rip), %xmm0	 #, _304
	jne	.L1701	 #,
 # ./test/pdsp_test.c:1835:     PDSP_ASSERT((data[0][0] == 0.5f) && (data[0][1] == 1.5f) &&
	movss	44(%rbp), %xmm0	 # data[0][3], _305
	ucomiss	.LC39(%rip), %xmm0	 #, _305
	jp	.L1701	 #,
	ucomiss	.LC39(%rip), %xmm0	 #, _305
	je	.L1705	 #,
.L1701:
 # ./test/pdsp_test.c:1835:     PDSP_ASSERT((data[0][0] == 0.5f) && (data[0][1] == 1.5f) &&
	movl	$1835, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1101
	movq	%rax, %rdx	 # tmp1101,
	leaq	.LC3(%rip), %rax	 #, tmp1102
	movq	%rax, %rcx	 # tmp1102,
	call	printf	 #
.L1705:
 # ./test/pdsp_test.c:1837:     PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
	movss	48(%rbp), %xmm0	 # data[1][0], _306
	ucomiss	.LC129(%rip), %xmm0	 #, _306
	jp	.L1707	 #,
	ucomiss	.LC129(%rip), %xmm0	 #, _306
	jne	.L1707	 #,
 # ./test/pdsp_test.c:1837:     PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
	movss	52(%rbp), %xmm0	 # data[1][1], _307
	ucomiss	.LC63(%rip), %xmm0	 #, _307
	jp	.L1707	 #,
	ucomiss	.LC63(%rip), %xmm0	 #, _307
	jne	.L1707	 #,
 # ./test/pdsp_test.c:1837:     PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
	movss	56(%rbp), %xmm0	 # data[1][2], _308
	ucomiss	.LC64(%rip), %xmm0	 #, _308
	jp	.L1707	 #,
	ucomiss	.LC64(%rip), %xmm0	 #, _308
	jne	.L1707	 #,
 # ./test/pdsp_test.c:1837:     PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
	movss	60(%rbp), %xmm0	 # data[1][3], _309
	ucomiss	.LC65(%rip), %xmm0	 #, _309
	jp	.L1707	 #,
	ucomiss	.LC65(%rip), %xmm0	 #, _309
	je	.L1711	 #,
.L1707:
 # ./test/pdsp_test.c:1837:     PDSP_ASSERT((data[1][0] == 0.2f) && (data[1][1] == 1.2f) &&
	movl	$1837, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1103
	movq	%rax, %rdx	 # tmp1103,
	leaq	.LC3(%rip), %rax	 #, tmp1104
	movq	%rax, %rcx	 # tmp1104,
	call	printf	 #
.L1711:
 # ./test/pdsp_test.c:1839:     PDSP_ASSERT((data[2][0] == 0.3f) && (data[2][1] == 1.3f) &&
	movss	64(%rbp), %xmm0	 # data[2][0], _310
	ucomiss	.LC147(%rip), %xmm0	 #, _310
	jp	.L1713	 #,
	ucomiss	.LC147(%rip), %xmm0	 #, _310
	jne	.L1713	 #,
 # ./test/pdsp_test.c:1839:     PDSP_ASSERT((data[2][0] == 0.3f) && (data[2][1] == 1.3f) &&
	movss	68(%rbp), %xmm0	 # data[2][1], _311
	ucomiss	.LC66(%rip), %xmm0	 #, _311
	jp	.L1713	 #,
	ucomiss	.LC66(%rip), %xmm0	 #, _311
	jne	.L1713	 #,
 # ./test/pdsp_test.c:1839:     PDSP_ASSERT((data[2][0] == 0.3f) && (data[2][1] == 1.3f) &&
	movss	72(%rbp), %xmm0	 # data[2][2], _312
	ucomiss	.LC67(%rip), %xmm0	 #, _312
	jp	.L1713	 #,
	ucomiss	.LC67(%rip), %xmm0	 #, _312
	jne	.L1713	 #,
 # ./test/pdsp_test.c:1839:     PDSP_ASSERT((data[2][0] == 0.3f) && (data[2][1] == 1.3f) &&
	movss	76(%rbp), %xmm0	 # data[2][3], _313
	ucomiss	.LC156(%rip), %xmm0	 #, _313
	jp	.L1713	 #,
	ucomiss	.LC156(%rip), %xmm0	 #, _313
	je	.L1717	 #,
.L1713:
 # ./test/pdsp_test.c:1839:     PDSP_ASSERT((data[2][0] == 0.3f) && (data[2][1] == 1.3f) &&
	movl	$1839, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1105
	movq	%rax, %rdx	 # tmp1105,
	leaq	.LC3(%rip), %rax	 #, tmp1106
	movq	%rax, %rcx	 # tmp1106,
	call	printf	 #
.L1717:
 # ./test/pdsp_test.c:1841:     PDSP_ASSERT((data[3][0] == 0.4f) && (data[3][1] == 1.4f) &&
	movss	80(%rbp), %xmm0	 # data[3][0], _314
	ucomiss	.LC148(%rip), %xmm0	 #, _314
	jp	.L1719	 #,
	ucomiss	.LC148(%rip), %xmm0	 #, _314
	jne	.L1719	 #,
 # ./test/pdsp_test.c:1841:     PDSP_ASSERT((data[3][0] == 0.4f) && (data[3][1] == 1.4f) &&
	movss	84(%rbp), %xmm0	 # data[3][1], _315
	ucomiss	.LC74(%rip), %xmm0	 #, _315
	jp	.L1719	 #,
	ucomiss	.LC74(%rip), %xmm0	 #, _315
	jne	.L1719	 #,
 # ./test/pdsp_test.c:1841:     PDSP_ASSERT((data[3][0] == 0.4f) && (data[3][1] == 1.4f) &&
	movss	88(%rbp), %xmm0	 # data[3][2], _316
	ucomiss	.LC152(%rip), %xmm0	 #, _316
	jp	.L1719	 #,
	ucomiss	.LC152(%rip), %xmm0	 #, _316
	jne	.L1719	 #,
 # ./test/pdsp_test.c:1841:     PDSP_ASSERT((data[3][0] == 0.4f) && (data[3][1] == 1.4f) &&
	movss	92(%rbp), %xmm0	 # data[3][3], _317
	ucomiss	.LC157(%rip), %xmm0	 #, _317
	jp	.L1719	 #,
	ucomiss	.LC157(%rip), %xmm0	 #, _317
	je	.L1723	 #,
.L1719:
 # ./test/pdsp_test.c:1841:     PDSP_ASSERT((data[3][0] == 0.4f) && (data[3][1] == 1.4f) &&
	movl	$1841, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1107
	movq	%rax, %rdx	 # tmp1107,
	leaq	.LC3(%rip), %rax	 #, tmp1108
	movq	%rax, %rcx	 # tmp1108,
	call	printf	 #
.L1723:
 # ./test/pdsp_test.c:1843:     PDSP_ASSERT(log.u16_count == 0U);
	movzwl	-52(%rbp), %eax	 # log.u16_count, _318
	testw	%ax, %ax	 # _318
	je	.L1725	 #,
 # ./test/pdsp_test.c:1843:     PDSP_ASSERT(log.u16_count == 0U);
	movl	$1843, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1109
	movq	%rax, %rdx	 # tmp1109,
	leaq	.LC3(%rip), %rax	 #, tmp1110
	movq	%rax, %rcx	 # tmp1110,
	call	printf	 #
.L1725:
 # ./test/pdsp_test.c:1844:     PDSP_ASSERT(log.u16_index_add == 1U);
	movzwl	-56(%rbp), %eax	 # log.u16_index_add, _319
	cmpw	$1, %ax	 #, _319
	je	.L1726	 #,
 # ./test/pdsp_test.c:1844:     PDSP_ASSERT(log.u16_index_add == 1U);
	movl	$1844, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1111
	movq	%rax, %rdx	 # tmp1111,
	leaq	.LC3(%rip), %rax	 #, tmp1112
	movq	%rax, %rcx	 # tmp1112,
	call	printf	 #
.L1726:
 # ./test/pdsp_test.c:1845:     PDSP_ASSERT(log.u16_count_add == 0U);
	movzwl	-50(%rbp), %eax	 # log.u16_count_add, _320
	testw	%ax, %ax	 # _320
	je	.L1727	 #,
 # ./test/pdsp_test.c:1845:     PDSP_ASSERT(log.u16_count_add == 0U);
	movl	$1845, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1113
	movq	%rax, %rdx	 # tmp1113,
	leaq	.LC3(%rip), %rax	 #, tmp1114
	movq	%rax, %rcx	 # tmp1114,
	call	printf	 #
.L1727:
 # ./test/pdsp_test.c:1847:     pdsp_macro_log32_init(loga, 2);
	movw	$2, -96(%rbp)	 #, loga.u16_size_half
	movw	$2, -94(%rbp)	 #, loga.u16_size_shift
	movw	$3, -92(%rbp)	 #, loga.u16_size_mask
	movw	$0, -90(%rbp)	 #, loga.u16_index
	movw	$1, -88(%rbp)	 #, loga.u16_index_add
	movw	$1, -86(%rbp)	 #, loga.u16_index_add_read
	movw	$0, -84(%rbp)	 #, loga.u16_count
	movw	$0, -82(%rbp)	 #, loga.u16_count_add
 # ./test/pdsp_test.c:1848:     pdsp_macro_log32_setup(loga, 0, 1, 2, 3, 0, 0.1f);
	movw	$0, -78(%rbp)	 #, loga.u16_ch1_index
	movw	$1, -76(%rbp)	 #, loga.u16_ch2_index
	movw	$2, -74(%rbp)	 #, loga.u16_ch3_index
	movw	$3, -72(%rbp)	 #, loga.u16_ch4_index
	movw	$0, -80(%rbp)	 #, loga.u16_trig_index
	movss	.LC124(%rip), %xmm0	 #, tmp1115
	movss	%xmm0, -68(%rbp)	 # tmp1115, loga.f32_trig_level
 # ./test/pdsp_test.c:1850:     log1 = src1[0];
	movss	240(%rbp), %xmm0	 # src1[0], _321
 # ./test/pdsp_test.c:1850:     log1 = src1[0];
	movss	%xmm0, 140(%rbp)	 # _321, log1
 # ./test/pdsp_test.c:1851:     log2 = src2[0];
	movss	208(%rbp), %xmm0	 # src2[0], _322
 # ./test/pdsp_test.c:1851:     log2 = src2[0];
	movss	%xmm0, 136(%rbp)	 # _322, log2
 # ./test/pdsp_test.c:1852:     log3 = src3[0];
	movss	176(%rbp), %xmm0	 # src3[0], _323
 # ./test/pdsp_test.c:1852:     log3 = src3[0];
	movss	%xmm0, 132(%rbp)	 # _323, log3
 # ./test/pdsp_test.c:1853:     log4 = src4[0];
	movss	144(%rbp), %xmm0	 # src4[0], _324
 # ./test/pdsp_test.c:1853:     log4 = src4[0];
	movss	%xmm0, 128(%rbp)	 # _324, log4
 # ./test/pdsp_test.c:1854:     pdsp_macro_log32_run(loga, plog, data1);
	movzwl	-88(%rbp), %eax	 # loga.u16_index_add, _325
	cmpw	$1, %ax	 #, _325
	jne	.L1728	 #,
 # ./test/pdsp_test.c:1854:     pdsp_macro_log32_run(loga, plog, data1);
	movzwl	-78(%rbp), %eax	 # loga.u16_ch1_index, _326
	movzwl	%ax, %eax	 # _326, _327
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_327], _328
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _329
	movzwl	%dx, %edx	 # _329, _330
	movss	(%rax), %xmm0	 # *_328, _331
	movslq	%edx, %rax	 # _330, tmp1117
	salq	$4, %rax	 #, tmp1118
	leaq	272(%rax), %rax	 #, tmp1430
	addq	%rbp, %rax	 #, tmp1119
	subq	$304, %rax	 #, tmp1120
	movss	%xmm0, (%rax)	 # _331, data1[_330][0]
	movzwl	-76(%rbp), %eax	 # loga.u16_ch2_index, _332
	movzwl	%ax, %eax	 # _332, _333
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_333], _334
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _335
	movzwl	%dx, %edx	 # _335, _336
	movss	(%rax), %xmm0	 # *_334, _337
	movslq	%edx, %rax	 # _336, tmp1122
	salq	$4, %rax	 #, tmp1123
	leaq	272(%rax), %rax	 #, tmp1431
	addq	%rbp, %rax	 #, tmp1124
	subq	$300, %rax	 #, tmp1125
	movss	%xmm0, (%rax)	 # _337, data1[_336][1]
	movzwl	-74(%rbp), %eax	 # loga.u16_ch3_index, _338
	movzwl	%ax, %eax	 # _338, _339
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_339], _340
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _341
	movzwl	%dx, %edx	 # _341, _342
	movss	(%rax), %xmm0	 # *_340, _343
	movslq	%edx, %rax	 # _342, tmp1127
	salq	$4, %rax	 #, tmp1128
	leaq	272(%rax), %rax	 #, tmp1432
	addq	%rbp, %rax	 #, tmp1129
	subq	$296, %rax	 #, tmp1130
	movss	%xmm0, (%rax)	 # _343, data1[_342][2]
	movzwl	-72(%rbp), %eax	 # loga.u16_ch4_index, _344
	movzwl	%ax, %eax	 # _344, _345
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_345], _346
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _347
	movzwl	%dx, %edx	 # _347, _348
	movss	(%rax), %xmm0	 # *_346, _349
	movslq	%edx, %rax	 # _348, tmp1132
	salq	$4, %rax	 #, tmp1133
	leaq	272(%rax), %rax	 #, tmp1433
	addq	%rbp, %rax	 #, tmp1134
	subq	$292, %rax	 #, tmp1135
	movss	%xmm0, (%rax)	 # _349, data1[_348][3]
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _350
	movzwl	-88(%rbp), %eax	 # loga.u16_index_add, _351
	addl	%edx, %eax	 # _350, _352
	movw	%ax, -90(%rbp)	 # _352, loga.u16_index
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _353
	movzwl	-92(%rbp), %eax	 # loga.u16_size_mask, _354
	andl	%edx, %eax	 # _353, _355
	movw	%ax, -90(%rbp)	 # _355, loga.u16_index
	movzwl	-84(%rbp), %edx	 # loga.u16_count, _356
	movzwl	-82(%rbp), %eax	 # loga.u16_count_add, _357
	addl	%edx, %eax	 # _356, _358
	movw	%ax, -84(%rbp)	 # _358, loga.u16_count
	movzwl	-84(%rbp), %eax	 # loga.u16_count, _359
	movzwl	-96(%rbp), %edx	 # loga.u16_size_half, _360
	cmpw	%ax, %dx	 # _359, _360
	jnb	.L1729	 #,
 # ./test/pdsp_test.c:1854:     pdsp_macro_log32_run(loga, plog, data1);
	movw	$0, -88(%rbp)	 #, loga.u16_index_add
	movw	$0, -82(%rbp)	 #, loga.u16_count_add
	jmp	.L1728	 #
.L1729:
 # ./test/pdsp_test.c:1854:     pdsp_macro_log32_run(loga, plog, data1);
	movzwl	-80(%rbp), %eax	 # loga.u16_trig_index, _361
	movzwl	%ax, %eax	 # _361, _362
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_362], _363
	movss	(%rax), %xmm0	 # *_363, _364
	movss	-68(%rbp), %xmm1	 # loga.f32_trig_level, _365
	comiss	%xmm1, %xmm0	 # _365, _364
	jbe	.L1728	 #,
 # ./test/pdsp_test.c:1854:     pdsp_macro_log32_run(loga, plog, data1);
	movw	$1, -82(%rbp)	 #, loga.u16_count_add
.L1728:
 # ./test/pdsp_test.c:1855:     PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
	movss	-32(%rbp), %xmm0	 # data1[0][0], _366
	ucomiss	.LC124(%rip), %xmm0	 #, _366
	jp	.L1731	 #,
	ucomiss	.LC124(%rip), %xmm0	 #, _366
	jne	.L1731	 #,
 # ./test/pdsp_test.c:1855:     PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
	movss	-28(%rbp), %xmm0	 # data1[0][1], _367
	ucomiss	.LC150(%rip), %xmm0	 #, _367
	jp	.L1731	 #,
	ucomiss	.LC150(%rip), %xmm0	 #, _367
	jne	.L1731	 #,
 # ./test/pdsp_test.c:1855:     PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
	movss	-24(%rbp), %xmm0	 # data1[0][2], _368
	ucomiss	.LC73(%rip), %xmm0	 #, _368
	jp	.L1731	 #,
	ucomiss	.LC73(%rip), %xmm0	 #, _368
	jne	.L1731	 #,
 # ./test/pdsp_test.c:1855:     PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
	movss	-20(%rbp), %xmm0	 # data1[0][3], _369
	ucomiss	.LC155(%rip), %xmm0	 #, _369
	jp	.L1731	 #,
	ucomiss	.LC155(%rip), %xmm0	 #, _369
	je	.L1735	 #,
.L1731:
 # ./test/pdsp_test.c:1855:     PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
	movl	$1855, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1137
	movq	%rax, %rdx	 # tmp1137,
	leaq	.LC3(%rip), %rax	 #, tmp1138
	movq	%rax, %rcx	 # tmp1138,
	call	printf	 #
.L1735:
 # ./test/pdsp_test.c:1857:     PDSP_ASSERT((data1[1][0] == 0.0f) && (data1[1][1] == 0.0f) &&
	movss	-16(%rbp), %xmm0	 # data1[1][0], _370
	pxor	%xmm1, %xmm1	 # tmp1139
	ucomiss	%xmm1, %xmm0	 # tmp1139, _370
	jp	.L1737	 #,
	pxor	%xmm1, %xmm1	 # tmp1140
	ucomiss	%xmm1, %xmm0	 # tmp1140, _370
	jne	.L1737	 #,
 # ./test/pdsp_test.c:1857:     PDSP_ASSERT((data1[1][0] == 0.0f) && (data1[1][1] == 0.0f) &&
	movss	-12(%rbp), %xmm0	 # data1[1][1], _371
	pxor	%xmm1, %xmm1	 # tmp1141
	ucomiss	%xmm1, %xmm0	 # tmp1141, _371
	jp	.L1737	 #,
	pxor	%xmm1, %xmm1	 # tmp1142
	ucomiss	%xmm1, %xmm0	 # tmp1142, _371
	jne	.L1737	 #,
 # ./test/pdsp_test.c:1857:     PDSP_ASSERT((data1[1][0] == 0.0f) && (data1[1][1] == 0.0f) &&
	movss	-8(%rbp), %xmm0	 # data1[1][2], _372
	pxor	%xmm1, %xmm1	 # tmp1143
	ucomiss	%xmm1, %xmm0	 # tmp1143, _372
	jp	.L1737	 #,
	pxor	%xmm1, %xmm1	 # tmp1144
	ucomiss	%xmm1, %xmm0	 # tmp1144, _372
	jne	.L1737	 #,
 # ./test/pdsp_test.c:1857:     PDSP_ASSERT((data1[1][0] == 0.0f) && (data1[1][1] == 0.0f) &&
	movss	-4(%rbp), %xmm0	 # data1[1][3], _373
	pxor	%xmm1, %xmm1	 # tmp1145
	ucomiss	%xmm1, %xmm0	 # tmp1145, _373
	jp	.L1737	 #,
	pxor	%xmm1, %xmm1	 # tmp1146
	ucomiss	%xmm1, %xmm0	 # tmp1146, _373
	je	.L1741	 #,
.L1737:
 # ./test/pdsp_test.c:1857:     PDSP_ASSERT((data1[1][0] == 0.0f) && (data1[1][1] == 0.0f) &&
	movl	$1857, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1147
	movq	%rax, %rdx	 # tmp1147,
	leaq	.LC3(%rip), %rax	 #, tmp1148
	movq	%rax, %rcx	 # tmp1148,
	call	printf	 #
.L1741:
 # ./test/pdsp_test.c:1859:     PDSP_ASSERT((data1[2][0] == 0.0f) && (data1[2][1] == 0.0f) &&
	movss	0(%rbp), %xmm0	 # data1[2][0], _374
	pxor	%xmm1, %xmm1	 # tmp1149
	ucomiss	%xmm1, %xmm0	 # tmp1149, _374
	jp	.L1743	 #,
	pxor	%xmm1, %xmm1	 # tmp1150
	ucomiss	%xmm1, %xmm0	 # tmp1150, _374
	jne	.L1743	 #,
 # ./test/pdsp_test.c:1859:     PDSP_ASSERT((data1[2][0] == 0.0f) && (data1[2][1] == 0.0f) &&
	movss	4(%rbp), %xmm0	 # data1[2][1], _375
	pxor	%xmm1, %xmm1	 # tmp1151
	ucomiss	%xmm1, %xmm0	 # tmp1151, _375
	jp	.L1743	 #,
	pxor	%xmm1, %xmm1	 # tmp1152
	ucomiss	%xmm1, %xmm0	 # tmp1152, _375
	jne	.L1743	 #,
 # ./test/pdsp_test.c:1859:     PDSP_ASSERT((data1[2][0] == 0.0f) && (data1[2][1] == 0.0f) &&
	movss	8(%rbp), %xmm0	 # data1[2][2], _376
	pxor	%xmm1, %xmm1	 # tmp1153
	ucomiss	%xmm1, %xmm0	 # tmp1153, _376
	jp	.L1743	 #,
	pxor	%xmm1, %xmm1	 # tmp1154
	ucomiss	%xmm1, %xmm0	 # tmp1154, _376
	jne	.L1743	 #,
 # ./test/pdsp_test.c:1859:     PDSP_ASSERT((data1[2][0] == 0.0f) && (data1[2][1] == 0.0f) &&
	movss	12(%rbp), %xmm0	 # data1[2][3], _377
	pxor	%xmm1, %xmm1	 # tmp1155
	ucomiss	%xmm1, %xmm0	 # tmp1155, _377
	jp	.L1743	 #,
	pxor	%xmm1, %xmm1	 # tmp1156
	ucomiss	%xmm1, %xmm0	 # tmp1156, _377
	je	.L1747	 #,
.L1743:
 # ./test/pdsp_test.c:1859:     PDSP_ASSERT((data1[2][0] == 0.0f) && (data1[2][1] == 0.0f) &&
	movl	$1859, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1157
	movq	%rax, %rdx	 # tmp1157,
	leaq	.LC3(%rip), %rax	 #, tmp1158
	movq	%rax, %rcx	 # tmp1158,
	call	printf	 #
.L1747:
 # ./test/pdsp_test.c:1861:     PDSP_ASSERT((data1[3][0] == 0.0f) && (data1[3][1] == 0.0f) &&
	movss	16(%rbp), %xmm0	 # data1[3][0], _378
	pxor	%xmm1, %xmm1	 # tmp1159
	ucomiss	%xmm1, %xmm0	 # tmp1159, _378
	jp	.L1749	 #,
	pxor	%xmm1, %xmm1	 # tmp1160
	ucomiss	%xmm1, %xmm0	 # tmp1160, _378
	jne	.L1749	 #,
 # ./test/pdsp_test.c:1861:     PDSP_ASSERT((data1[3][0] == 0.0f) && (data1[3][1] == 0.0f) &&
	movss	20(%rbp), %xmm0	 # data1[3][1], _379
	pxor	%xmm1, %xmm1	 # tmp1161
	ucomiss	%xmm1, %xmm0	 # tmp1161, _379
	jp	.L1749	 #,
	pxor	%xmm1, %xmm1	 # tmp1162
	ucomiss	%xmm1, %xmm0	 # tmp1162, _379
	jne	.L1749	 #,
 # ./test/pdsp_test.c:1861:     PDSP_ASSERT((data1[3][0] == 0.0f) && (data1[3][1] == 0.0f) &&
	movss	24(%rbp), %xmm0	 # data1[3][2], _380
	pxor	%xmm1, %xmm1	 # tmp1163
	ucomiss	%xmm1, %xmm0	 # tmp1163, _380
	jp	.L1749	 #,
	pxor	%xmm1, %xmm1	 # tmp1164
	ucomiss	%xmm1, %xmm0	 # tmp1164, _380
	jne	.L1749	 #,
 # ./test/pdsp_test.c:1861:     PDSP_ASSERT((data1[3][0] == 0.0f) && (data1[3][1] == 0.0f) &&
	movss	28(%rbp), %xmm0	 # data1[3][3], _381
	pxor	%xmm1, %xmm1	 # tmp1165
	ucomiss	%xmm1, %xmm0	 # tmp1165, _381
	jp	.L1749	 #,
	pxor	%xmm1, %xmm1	 # tmp1166
	ucomiss	%xmm1, %xmm0	 # tmp1166, _381
	je	.L1753	 #,
.L1749:
 # ./test/pdsp_test.c:1861:     PDSP_ASSERT((data1[3][0] == 0.0f) && (data1[3][1] == 0.0f) &&
	movl	$1861, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1167
	movq	%rax, %rdx	 # tmp1167,
	leaq	.LC3(%rip), %rax	 #, tmp1168
	movq	%rax, %rcx	 # tmp1168,
	call	printf	 #
.L1753:
 # ./test/pdsp_test.c:1863:     PDSP_ASSERT(loga.u16_count == 0U);
	movzwl	-84(%rbp), %eax	 # loga.u16_count, _382
	testw	%ax, %ax	 # _382
	je	.L1755	 #,
 # ./test/pdsp_test.c:1863:     PDSP_ASSERT(loga.u16_count == 0U);
	movl	$1863, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1169
	movq	%rax, %rdx	 # tmp1169,
	leaq	.LC3(%rip), %rax	 #, tmp1170
	movq	%rax, %rcx	 # tmp1170,
	call	printf	 #
.L1755:
 # ./test/pdsp_test.c:1864:     PDSP_ASSERT(loga.u16_index_add == 1U);
	movzwl	-88(%rbp), %eax	 # loga.u16_index_add, _383
	cmpw	$1, %ax	 #, _383
	je	.L1756	 #,
 # ./test/pdsp_test.c:1864:     PDSP_ASSERT(loga.u16_index_add == 1U);
	movl	$1864, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1171
	movq	%rax, %rdx	 # tmp1171,
	leaq	.LC3(%rip), %rax	 #, tmp1172
	movq	%rax, %rcx	 # tmp1172,
	call	printf	 #
.L1756:
 # ./test/pdsp_test.c:1865:     PDSP_ASSERT(loga.u16_count_add == 0U);
	movzwl	-82(%rbp), %eax	 # loga.u16_count_add, _384
	testw	%ax, %ax	 # _384
	je	.L1757	 #,
 # ./test/pdsp_test.c:1865:     PDSP_ASSERT(loga.u16_count_add == 0U);
	movl	$1865, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1173
	movq	%rax, %rdx	 # tmp1173,
	leaq	.LC3(%rip), %rax	 #, tmp1174
	movq	%rax, %rcx	 # tmp1174,
	call	printf	 #
.L1757:
 # ./test/pdsp_test.c:1867:     log1 = src1[1];
	movss	244(%rbp), %xmm0	 # src1[1], _385
 # ./test/pdsp_test.c:1867:     log1 = src1[1];
	movss	%xmm0, 140(%rbp)	 # _385, log1
 # ./test/pdsp_test.c:1868:     log2 = src2[1];
	movss	212(%rbp), %xmm0	 # src2[1], _386
 # ./test/pdsp_test.c:1868:     log2 = src2[1];
	movss	%xmm0, 136(%rbp)	 # _386, log2
 # ./test/pdsp_test.c:1869:     log3 = src3[1];
	movss	180(%rbp), %xmm0	 # src3[1], _387
 # ./test/pdsp_test.c:1869:     log3 = src3[1];
	movss	%xmm0, 132(%rbp)	 # _387, log3
 # ./test/pdsp_test.c:1870:     log4 = src4[1];
	movss	148(%rbp), %xmm0	 # src4[1], _388
 # ./test/pdsp_test.c:1870:     log4 = src4[1];
	movss	%xmm0, 128(%rbp)	 # _388, log4
 # ./test/pdsp_test.c:1871:     pdsp_macro_log32_run(loga, plog, data1);
	movzwl	-88(%rbp), %eax	 # loga.u16_index_add, _389
	cmpw	$1, %ax	 #, _389
	jne	.L1758	 #,
 # ./test/pdsp_test.c:1871:     pdsp_macro_log32_run(loga, plog, data1);
	movzwl	-78(%rbp), %eax	 # loga.u16_ch1_index, _390
	movzwl	%ax, %eax	 # _390, _391
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_391], _392
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _393
	movzwl	%dx, %edx	 # _393, _394
	movss	(%rax), %xmm0	 # *_392, _395
	movslq	%edx, %rax	 # _394, tmp1176
	salq	$4, %rax	 #, tmp1177
	leaq	272(%rax), %rax	 #, tmp1434
	addq	%rbp, %rax	 #, tmp1178
	subq	$304, %rax	 #, tmp1179
	movss	%xmm0, (%rax)	 # _395, data1[_394][0]
	movzwl	-76(%rbp), %eax	 # loga.u16_ch2_index, _396
	movzwl	%ax, %eax	 # _396, _397
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_397], _398
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _399
	movzwl	%dx, %edx	 # _399, _400
	movss	(%rax), %xmm0	 # *_398, _401
	movslq	%edx, %rax	 # _400, tmp1181
	salq	$4, %rax	 #, tmp1182
	leaq	272(%rax), %rax	 #, tmp1435
	addq	%rbp, %rax	 #, tmp1183
	subq	$300, %rax	 #, tmp1184
	movss	%xmm0, (%rax)	 # _401, data1[_400][1]
	movzwl	-74(%rbp), %eax	 # loga.u16_ch3_index, _402
	movzwl	%ax, %eax	 # _402, _403
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_403], _404
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _405
	movzwl	%dx, %edx	 # _405, _406
	movss	(%rax), %xmm0	 # *_404, _407
	movslq	%edx, %rax	 # _406, tmp1186
	salq	$4, %rax	 #, tmp1187
	leaq	272(%rax), %rax	 #, tmp1436
	addq	%rbp, %rax	 #, tmp1188
	subq	$296, %rax	 #, tmp1189
	movss	%xmm0, (%rax)	 # _407, data1[_406][2]
	movzwl	-72(%rbp), %eax	 # loga.u16_ch4_index, _408
	movzwl	%ax, %eax	 # _408, _409
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_409], _410
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _411
	movzwl	%dx, %edx	 # _411, _412
	movss	(%rax), %xmm0	 # *_410, _413
	movslq	%edx, %rax	 # _412, tmp1191
	salq	$4, %rax	 #, tmp1192
	leaq	272(%rax), %rax	 #, tmp1437
	addq	%rbp, %rax	 #, tmp1193
	subq	$292, %rax	 #, tmp1194
	movss	%xmm0, (%rax)	 # _413, data1[_412][3]
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _414
	movzwl	-88(%rbp), %eax	 # loga.u16_index_add, _415
	addl	%edx, %eax	 # _414, _416
	movw	%ax, -90(%rbp)	 # _416, loga.u16_index
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _417
	movzwl	-92(%rbp), %eax	 # loga.u16_size_mask, _418
	andl	%edx, %eax	 # _417, _419
	movw	%ax, -90(%rbp)	 # _419, loga.u16_index
	movzwl	-84(%rbp), %edx	 # loga.u16_count, _420
	movzwl	-82(%rbp), %eax	 # loga.u16_count_add, _421
	addl	%edx, %eax	 # _420, _422
	movw	%ax, -84(%rbp)	 # _422, loga.u16_count
	movzwl	-84(%rbp), %eax	 # loga.u16_count, _423
	movzwl	-96(%rbp), %edx	 # loga.u16_size_half, _424
	cmpw	%ax, %dx	 # _423, _424
	jnb	.L1759	 #,
 # ./test/pdsp_test.c:1871:     pdsp_macro_log32_run(loga, plog, data1);
	movw	$0, -88(%rbp)	 #, loga.u16_index_add
	movw	$0, -82(%rbp)	 #, loga.u16_count_add
	jmp	.L1758	 #
.L1759:
 # ./test/pdsp_test.c:1871:     pdsp_macro_log32_run(loga, plog, data1);
	movzwl	-80(%rbp), %eax	 # loga.u16_trig_index, _425
	movzwl	%ax, %eax	 # _425, _426
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_426], _427
	movss	(%rax), %xmm0	 # *_427, _428
	movss	-68(%rbp), %xmm1	 # loga.f32_trig_level, _429
	comiss	%xmm1, %xmm0	 # _429, _428
	jbe	.L1758	 #,
 # ./test/pdsp_test.c:1871:     pdsp_macro_log32_run(loga, plog, data1);
	movw	$1, -82(%rbp)	 #, loga.u16_count_add
.L1758:
 # ./test/pdsp_test.c:1872:     PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
	movss	-32(%rbp), %xmm0	 # data1[0][0], _430
	ucomiss	.LC124(%rip), %xmm0	 #, _430
	jp	.L1761	 #,
	ucomiss	.LC124(%rip), %xmm0	 #, _430
	jne	.L1761	 #,
 # ./test/pdsp_test.c:1872:     PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
	movss	-28(%rbp), %xmm0	 # data1[0][1], _431
	ucomiss	.LC150(%rip), %xmm0	 #, _431
	jp	.L1761	 #,
	ucomiss	.LC150(%rip), %xmm0	 #, _431
	jne	.L1761	 #,
 # ./test/pdsp_test.c:1872:     PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
	movss	-24(%rbp), %xmm0	 # data1[0][2], _432
	ucomiss	.LC73(%rip), %xmm0	 #, _432
	jp	.L1761	 #,
	ucomiss	.LC73(%rip), %xmm0	 #, _432
	jne	.L1761	 #,
 # ./test/pdsp_test.c:1872:     PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
	movss	-20(%rbp), %xmm0	 # data1[0][3], _433
	ucomiss	.LC155(%rip), %xmm0	 #, _433
	jp	.L1761	 #,
	ucomiss	.LC155(%rip), %xmm0	 #, _433
	je	.L1765	 #,
.L1761:
 # ./test/pdsp_test.c:1872:     PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
	movl	$1872, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1196
	movq	%rax, %rdx	 # tmp1196,
	leaq	.LC3(%rip), %rax	 #, tmp1197
	movq	%rax, %rcx	 # tmp1197,
	call	printf	 #
.L1765:
 # ./test/pdsp_test.c:1874:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-16(%rbp), %xmm0	 # data1[1][0], _434
	ucomiss	.LC129(%rip), %xmm0	 #, _434
	jp	.L1767	 #,
	ucomiss	.LC129(%rip), %xmm0	 #, _434
	jne	.L1767	 #,
 # ./test/pdsp_test.c:1874:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-12(%rbp), %xmm0	 # data1[1][1], _435
	ucomiss	.LC63(%rip), %xmm0	 #, _435
	jp	.L1767	 #,
	ucomiss	.LC63(%rip), %xmm0	 #, _435
	jne	.L1767	 #,
 # ./test/pdsp_test.c:1874:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-8(%rbp), %xmm0	 # data1[1][2], _436
	ucomiss	.LC64(%rip), %xmm0	 #, _436
	jp	.L1767	 #,
	ucomiss	.LC64(%rip), %xmm0	 #, _436
	jne	.L1767	 #,
 # ./test/pdsp_test.c:1874:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-4(%rbp), %xmm0	 # data1[1][3], _437
	ucomiss	.LC65(%rip), %xmm0	 #, _437
	jp	.L1767	 #,
	ucomiss	.LC65(%rip), %xmm0	 #, _437
	je	.L1771	 #,
.L1767:
 # ./test/pdsp_test.c:1874:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movl	$1874, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1198
	movq	%rax, %rdx	 # tmp1198,
	leaq	.LC3(%rip), %rax	 #, tmp1199
	movq	%rax, %rcx	 # tmp1199,
	call	printf	 #
.L1771:
 # ./test/pdsp_test.c:1876:     PDSP_ASSERT((data1[2][0] == 0.0f) && (data1[2][1] == 0.0f) &&
	movss	0(%rbp), %xmm0	 # data1[2][0], _438
	pxor	%xmm1, %xmm1	 # tmp1200
	ucomiss	%xmm1, %xmm0	 # tmp1200, _438
	jp	.L1773	 #,
	pxor	%xmm1, %xmm1	 # tmp1201
	ucomiss	%xmm1, %xmm0	 # tmp1201, _438
	jne	.L1773	 #,
 # ./test/pdsp_test.c:1876:     PDSP_ASSERT((data1[2][0] == 0.0f) && (data1[2][1] == 0.0f) &&
	movss	4(%rbp), %xmm0	 # data1[2][1], _439
	pxor	%xmm1, %xmm1	 # tmp1202
	ucomiss	%xmm1, %xmm0	 # tmp1202, _439
	jp	.L1773	 #,
	pxor	%xmm1, %xmm1	 # tmp1203
	ucomiss	%xmm1, %xmm0	 # tmp1203, _439
	jne	.L1773	 #,
 # ./test/pdsp_test.c:1876:     PDSP_ASSERT((data1[2][0] == 0.0f) && (data1[2][1] == 0.0f) &&
	movss	8(%rbp), %xmm0	 # data1[2][2], _440
	pxor	%xmm1, %xmm1	 # tmp1204
	ucomiss	%xmm1, %xmm0	 # tmp1204, _440
	jp	.L1773	 #,
	pxor	%xmm1, %xmm1	 # tmp1205
	ucomiss	%xmm1, %xmm0	 # tmp1205, _440
	jne	.L1773	 #,
 # ./test/pdsp_test.c:1876:     PDSP_ASSERT((data1[2][0] == 0.0f) && (data1[2][1] == 0.0f) &&
	movss	12(%rbp), %xmm0	 # data1[2][3], _441
	pxor	%xmm1, %xmm1	 # tmp1206
	ucomiss	%xmm1, %xmm0	 # tmp1206, _441
	jp	.L1773	 #,
	pxor	%xmm1, %xmm1	 # tmp1207
	ucomiss	%xmm1, %xmm0	 # tmp1207, _441
	je	.L1777	 #,
.L1773:
 # ./test/pdsp_test.c:1876:     PDSP_ASSERT((data1[2][0] == 0.0f) && (data1[2][1] == 0.0f) &&
	movl	$1876, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1208
	movq	%rax, %rdx	 # tmp1208,
	leaq	.LC3(%rip), %rax	 #, tmp1209
	movq	%rax, %rcx	 # tmp1209,
	call	printf	 #
.L1777:
 # ./test/pdsp_test.c:1878:     PDSP_ASSERT((data1[3][0] == 0.0f) && (data1[3][1] == 0.0f) &&
	movss	16(%rbp), %xmm0	 # data1[3][0], _442
	pxor	%xmm1, %xmm1	 # tmp1210
	ucomiss	%xmm1, %xmm0	 # tmp1210, _442
	jp	.L1779	 #,
	pxor	%xmm1, %xmm1	 # tmp1211
	ucomiss	%xmm1, %xmm0	 # tmp1211, _442
	jne	.L1779	 #,
 # ./test/pdsp_test.c:1878:     PDSP_ASSERT((data1[3][0] == 0.0f) && (data1[3][1] == 0.0f) &&
	movss	20(%rbp), %xmm0	 # data1[3][1], _443
	pxor	%xmm1, %xmm1	 # tmp1212
	ucomiss	%xmm1, %xmm0	 # tmp1212, _443
	jp	.L1779	 #,
	pxor	%xmm1, %xmm1	 # tmp1213
	ucomiss	%xmm1, %xmm0	 # tmp1213, _443
	jne	.L1779	 #,
 # ./test/pdsp_test.c:1878:     PDSP_ASSERT((data1[3][0] == 0.0f) && (data1[3][1] == 0.0f) &&
	movss	24(%rbp), %xmm0	 # data1[3][2], _444
	pxor	%xmm1, %xmm1	 # tmp1214
	ucomiss	%xmm1, %xmm0	 # tmp1214, _444
	jp	.L1779	 #,
	pxor	%xmm1, %xmm1	 # tmp1215
	ucomiss	%xmm1, %xmm0	 # tmp1215, _444
	jne	.L1779	 #,
 # ./test/pdsp_test.c:1878:     PDSP_ASSERT((data1[3][0] == 0.0f) && (data1[3][1] == 0.0f) &&
	movss	28(%rbp), %xmm0	 # data1[3][3], _445
	pxor	%xmm1, %xmm1	 # tmp1216
	ucomiss	%xmm1, %xmm0	 # tmp1216, _445
	jp	.L1779	 #,
	pxor	%xmm1, %xmm1	 # tmp1217
	ucomiss	%xmm1, %xmm0	 # tmp1217, _445
	je	.L1783	 #,
.L1779:
 # ./test/pdsp_test.c:1878:     PDSP_ASSERT((data1[3][0] == 0.0f) && (data1[3][1] == 0.0f) &&
	movl	$1878, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1218
	movq	%rax, %rdx	 # tmp1218,
	leaq	.LC3(%rip), %rax	 #, tmp1219
	movq	%rax, %rcx	 # tmp1219,
	call	printf	 #
.L1783:
 # ./test/pdsp_test.c:1880:     PDSP_ASSERT(loga.u16_count == 0U);
	movzwl	-84(%rbp), %eax	 # loga.u16_count, _446
	testw	%ax, %ax	 # _446
	je	.L1785	 #,
 # ./test/pdsp_test.c:1880:     PDSP_ASSERT(loga.u16_count == 0U);
	movl	$1880, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1220
	movq	%rax, %rdx	 # tmp1220,
	leaq	.LC3(%rip), %rax	 #, tmp1221
	movq	%rax, %rcx	 # tmp1221,
	call	printf	 #
.L1785:
 # ./test/pdsp_test.c:1881:     PDSP_ASSERT(loga.u16_index_add == 1U);
	movzwl	-88(%rbp), %eax	 # loga.u16_index_add, _447
	cmpw	$1, %ax	 #, _447
	je	.L1786	 #,
 # ./test/pdsp_test.c:1881:     PDSP_ASSERT(loga.u16_index_add == 1U);
	movl	$1881, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1222
	movq	%rax, %rdx	 # tmp1222,
	leaq	.LC3(%rip), %rax	 #, tmp1223
	movq	%rax, %rcx	 # tmp1223,
	call	printf	 #
.L1786:
 # ./test/pdsp_test.c:1882:     PDSP_ASSERT(loga.u16_count_add == 1U);
	movzwl	-82(%rbp), %eax	 # loga.u16_count_add, _448
	cmpw	$1, %ax	 #, _448
	je	.L1787	 #,
 # ./test/pdsp_test.c:1882:     PDSP_ASSERT(loga.u16_count_add == 1U);
	movl	$1882, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1224
	movq	%rax, %rdx	 # tmp1224,
	leaq	.LC3(%rip), %rax	 #, tmp1225
	movq	%rax, %rcx	 # tmp1225,
	call	printf	 #
.L1787:
 # ./test/pdsp_test.c:1884:     log1 = src1[2];
	movss	248(%rbp), %xmm0	 # src1[2], _449
 # ./test/pdsp_test.c:1884:     log1 = src1[2];
	movss	%xmm0, 140(%rbp)	 # _449, log1
 # ./test/pdsp_test.c:1885:     log2 = src2[2];
	movss	216(%rbp), %xmm0	 # src2[2], _450
 # ./test/pdsp_test.c:1885:     log2 = src2[2];
	movss	%xmm0, 136(%rbp)	 # _450, log2
 # ./test/pdsp_test.c:1886:     log3 = src3[2];
	movss	184(%rbp), %xmm0	 # src3[2], _451
 # ./test/pdsp_test.c:1886:     log3 = src3[2];
	movss	%xmm0, 132(%rbp)	 # _451, log3
 # ./test/pdsp_test.c:1887:     log4 = src4[2];
	movss	152(%rbp), %xmm0	 # src4[2], _452
 # ./test/pdsp_test.c:1887:     log4 = src4[2];
	movss	%xmm0, 128(%rbp)	 # _452, log4
 # ./test/pdsp_test.c:1888:     pdsp_macro_log32_run(loga, plog, data1);
	movzwl	-88(%rbp), %eax	 # loga.u16_index_add, _453
	cmpw	$1, %ax	 #, _453
	jne	.L1788	 #,
 # ./test/pdsp_test.c:1888:     pdsp_macro_log32_run(loga, plog, data1);
	movzwl	-78(%rbp), %eax	 # loga.u16_ch1_index, _454
	movzwl	%ax, %eax	 # _454, _455
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_455], _456
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _457
	movzwl	%dx, %edx	 # _457, _458
	movss	(%rax), %xmm0	 # *_456, _459
	movslq	%edx, %rax	 # _458, tmp1227
	salq	$4, %rax	 #, tmp1228
	leaq	272(%rax), %rax	 #, tmp1438
	addq	%rbp, %rax	 #, tmp1229
	subq	$304, %rax	 #, tmp1230
	movss	%xmm0, (%rax)	 # _459, data1[_458][0]
	movzwl	-76(%rbp), %eax	 # loga.u16_ch2_index, _460
	movzwl	%ax, %eax	 # _460, _461
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_461], _462
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _463
	movzwl	%dx, %edx	 # _463, _464
	movss	(%rax), %xmm0	 # *_462, _465
	movslq	%edx, %rax	 # _464, tmp1232
	salq	$4, %rax	 #, tmp1233
	leaq	272(%rax), %rax	 #, tmp1439
	addq	%rbp, %rax	 #, tmp1234
	subq	$300, %rax	 #, tmp1235
	movss	%xmm0, (%rax)	 # _465, data1[_464][1]
	movzwl	-74(%rbp), %eax	 # loga.u16_ch3_index, _466
	movzwl	%ax, %eax	 # _466, _467
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_467], _468
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _469
	movzwl	%dx, %edx	 # _469, _470
	movss	(%rax), %xmm0	 # *_468, _471
	movslq	%edx, %rax	 # _470, tmp1237
	salq	$4, %rax	 #, tmp1238
	leaq	272(%rax), %rax	 #, tmp1440
	addq	%rbp, %rax	 #, tmp1239
	subq	$296, %rax	 #, tmp1240
	movss	%xmm0, (%rax)	 # _471, data1[_470][2]
	movzwl	-72(%rbp), %eax	 # loga.u16_ch4_index, _472
	movzwl	%ax, %eax	 # _472, _473
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_473], _474
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _475
	movzwl	%dx, %edx	 # _475, _476
	movss	(%rax), %xmm0	 # *_474, _477
	movslq	%edx, %rax	 # _476, tmp1242
	salq	$4, %rax	 #, tmp1243
	leaq	272(%rax), %rax	 #, tmp1441
	addq	%rbp, %rax	 #, tmp1244
	subq	$292, %rax	 #, tmp1245
	movss	%xmm0, (%rax)	 # _477, data1[_476][3]
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _478
	movzwl	-88(%rbp), %eax	 # loga.u16_index_add, _479
	addl	%edx, %eax	 # _478, _480
	movw	%ax, -90(%rbp)	 # _480, loga.u16_index
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _481
	movzwl	-92(%rbp), %eax	 # loga.u16_size_mask, _482
	andl	%edx, %eax	 # _481, _483
	movw	%ax, -90(%rbp)	 # _483, loga.u16_index
	movzwl	-84(%rbp), %edx	 # loga.u16_count, _484
	movzwl	-82(%rbp), %eax	 # loga.u16_count_add, _485
	addl	%edx, %eax	 # _484, _486
	movw	%ax, -84(%rbp)	 # _486, loga.u16_count
	movzwl	-84(%rbp), %eax	 # loga.u16_count, _487
	movzwl	-96(%rbp), %edx	 # loga.u16_size_half, _488
	cmpw	%ax, %dx	 # _487, _488
	jnb	.L1789	 #,
 # ./test/pdsp_test.c:1888:     pdsp_macro_log32_run(loga, plog, data1);
	movw	$0, -88(%rbp)	 #, loga.u16_index_add
	movw	$0, -82(%rbp)	 #, loga.u16_count_add
	jmp	.L1788	 #
.L1789:
 # ./test/pdsp_test.c:1888:     pdsp_macro_log32_run(loga, plog, data1);
	movzwl	-80(%rbp), %eax	 # loga.u16_trig_index, _489
	movzwl	%ax, %eax	 # _489, _490
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_490], _491
	movss	(%rax), %xmm0	 # *_491, _492
	movss	-68(%rbp), %xmm1	 # loga.f32_trig_level, _493
	comiss	%xmm1, %xmm0	 # _493, _492
	jbe	.L1788	 #,
 # ./test/pdsp_test.c:1888:     pdsp_macro_log32_run(loga, plog, data1);
	movw	$1, -82(%rbp)	 #, loga.u16_count_add
.L1788:
 # ./test/pdsp_test.c:1889:     PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
	movss	-32(%rbp), %xmm0	 # data1[0][0], _494
	ucomiss	.LC124(%rip), %xmm0	 #, _494
	jp	.L1791	 #,
	ucomiss	.LC124(%rip), %xmm0	 #, _494
	jne	.L1791	 #,
 # ./test/pdsp_test.c:1889:     PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
	movss	-28(%rbp), %xmm0	 # data1[0][1], _495
	ucomiss	.LC150(%rip), %xmm0	 #, _495
	jp	.L1791	 #,
	ucomiss	.LC150(%rip), %xmm0	 #, _495
	jne	.L1791	 #,
 # ./test/pdsp_test.c:1889:     PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
	movss	-24(%rbp), %xmm0	 # data1[0][2], _496
	ucomiss	.LC73(%rip), %xmm0	 #, _496
	jp	.L1791	 #,
	ucomiss	.LC73(%rip), %xmm0	 #, _496
	jne	.L1791	 #,
 # ./test/pdsp_test.c:1889:     PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
	movss	-20(%rbp), %xmm0	 # data1[0][3], _497
	ucomiss	.LC155(%rip), %xmm0	 #, _497
	jp	.L1791	 #,
	ucomiss	.LC155(%rip), %xmm0	 #, _497
	je	.L1795	 #,
.L1791:
 # ./test/pdsp_test.c:1889:     PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
	movl	$1889, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1247
	movq	%rax, %rdx	 # tmp1247,
	leaq	.LC3(%rip), %rax	 #, tmp1248
	movq	%rax, %rcx	 # tmp1248,
	call	printf	 #
.L1795:
 # ./test/pdsp_test.c:1891:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-16(%rbp), %xmm0	 # data1[1][0], _498
	ucomiss	.LC129(%rip), %xmm0	 #, _498
	jp	.L1797	 #,
	ucomiss	.LC129(%rip), %xmm0	 #, _498
	jne	.L1797	 #,
 # ./test/pdsp_test.c:1891:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-12(%rbp), %xmm0	 # data1[1][1], _499
	ucomiss	.LC63(%rip), %xmm0	 #, _499
	jp	.L1797	 #,
	ucomiss	.LC63(%rip), %xmm0	 #, _499
	jne	.L1797	 #,
 # ./test/pdsp_test.c:1891:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-8(%rbp), %xmm0	 # data1[1][2], _500
	ucomiss	.LC64(%rip), %xmm0	 #, _500
	jp	.L1797	 #,
	ucomiss	.LC64(%rip), %xmm0	 #, _500
	jne	.L1797	 #,
 # ./test/pdsp_test.c:1891:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-4(%rbp), %xmm0	 # data1[1][3], _501
	ucomiss	.LC65(%rip), %xmm0	 #, _501
	jp	.L1797	 #,
	ucomiss	.LC65(%rip), %xmm0	 #, _501
	je	.L1801	 #,
.L1797:
 # ./test/pdsp_test.c:1891:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movl	$1891, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1249
	movq	%rax, %rdx	 # tmp1249,
	leaq	.LC3(%rip), %rax	 #, tmp1250
	movq	%rax, %rcx	 # tmp1250,
	call	printf	 #
.L1801:
 # ./test/pdsp_test.c:1893:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movss	0(%rbp), %xmm0	 # data1[2][0], _502
	ucomiss	.LC147(%rip), %xmm0	 #, _502
	jp	.L1803	 #,
	ucomiss	.LC147(%rip), %xmm0	 #, _502
	jne	.L1803	 #,
 # ./test/pdsp_test.c:1893:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movss	4(%rbp), %xmm0	 # data1[2][1], _503
	ucomiss	.LC66(%rip), %xmm0	 #, _503
	jp	.L1803	 #,
	ucomiss	.LC66(%rip), %xmm0	 #, _503
	jne	.L1803	 #,
 # ./test/pdsp_test.c:1893:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movss	8(%rbp), %xmm0	 # data1[2][2], _504
	ucomiss	.LC67(%rip), %xmm0	 #, _504
	jp	.L1803	 #,
	ucomiss	.LC67(%rip), %xmm0	 #, _504
	jne	.L1803	 #,
 # ./test/pdsp_test.c:1893:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movss	12(%rbp), %xmm0	 # data1[2][3], _505
	ucomiss	.LC156(%rip), %xmm0	 #, _505
	jp	.L1803	 #,
	ucomiss	.LC156(%rip), %xmm0	 #, _505
	je	.L1807	 #,
.L1803:
 # ./test/pdsp_test.c:1893:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movl	$1893, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1251
	movq	%rax, %rdx	 # tmp1251,
	leaq	.LC3(%rip), %rax	 #, tmp1252
	movq	%rax, %rcx	 # tmp1252,
	call	printf	 #
.L1807:
 # ./test/pdsp_test.c:1895:     PDSP_ASSERT((data1[3][0] == 0.0f) && (data1[3][1] == 0.0f) &&
	movss	16(%rbp), %xmm0	 # data1[3][0], _506
	pxor	%xmm1, %xmm1	 # tmp1253
	ucomiss	%xmm1, %xmm0	 # tmp1253, _506
	jp	.L1809	 #,
	pxor	%xmm1, %xmm1	 # tmp1254
	ucomiss	%xmm1, %xmm0	 # tmp1254, _506
	jne	.L1809	 #,
 # ./test/pdsp_test.c:1895:     PDSP_ASSERT((data1[3][0] == 0.0f) && (data1[3][1] == 0.0f) &&
	movss	20(%rbp), %xmm0	 # data1[3][1], _507
	pxor	%xmm1, %xmm1	 # tmp1255
	ucomiss	%xmm1, %xmm0	 # tmp1255, _507
	jp	.L1809	 #,
	pxor	%xmm1, %xmm1	 # tmp1256
	ucomiss	%xmm1, %xmm0	 # tmp1256, _507
	jne	.L1809	 #,
 # ./test/pdsp_test.c:1895:     PDSP_ASSERT((data1[3][0] == 0.0f) && (data1[3][1] == 0.0f) &&
	movss	24(%rbp), %xmm0	 # data1[3][2], _508
	pxor	%xmm1, %xmm1	 # tmp1257
	ucomiss	%xmm1, %xmm0	 # tmp1257, _508
	jp	.L1809	 #,
	pxor	%xmm1, %xmm1	 # tmp1258
	ucomiss	%xmm1, %xmm0	 # tmp1258, _508
	jne	.L1809	 #,
 # ./test/pdsp_test.c:1895:     PDSP_ASSERT((data1[3][0] == 0.0f) && (data1[3][1] == 0.0f) &&
	movss	28(%rbp), %xmm0	 # data1[3][3], _509
	pxor	%xmm1, %xmm1	 # tmp1259
	ucomiss	%xmm1, %xmm0	 # tmp1259, _509
	jp	.L1809	 #,
	pxor	%xmm1, %xmm1	 # tmp1260
	ucomiss	%xmm1, %xmm0	 # tmp1260, _509
	je	.L1813	 #,
.L1809:
 # ./test/pdsp_test.c:1895:     PDSP_ASSERT((data1[3][0] == 0.0f) && (data1[3][1] == 0.0f) &&
	movl	$1895, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1261
	movq	%rax, %rdx	 # tmp1261,
	leaq	.LC3(%rip), %rax	 #, tmp1262
	movq	%rax, %rcx	 # tmp1262,
	call	printf	 #
.L1813:
 # ./test/pdsp_test.c:1897:     PDSP_ASSERT(loga.u16_count == 1U);
	movzwl	-84(%rbp), %eax	 # loga.u16_count, _510
	cmpw	$1, %ax	 #, _510
	je	.L1815	 #,
 # ./test/pdsp_test.c:1897:     PDSP_ASSERT(loga.u16_count == 1U);
	movl	$1897, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1263
	movq	%rax, %rdx	 # tmp1263,
	leaq	.LC3(%rip), %rax	 #, tmp1264
	movq	%rax, %rcx	 # tmp1264,
	call	printf	 #
.L1815:
 # ./test/pdsp_test.c:1898:     PDSP_ASSERT(loga.u16_index_add == 1U);
	movzwl	-88(%rbp), %eax	 # loga.u16_index_add, _511
	cmpw	$1, %ax	 #, _511
	je	.L1816	 #,
 # ./test/pdsp_test.c:1898:     PDSP_ASSERT(loga.u16_index_add == 1U);
	movl	$1898, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1265
	movq	%rax, %rdx	 # tmp1265,
	leaq	.LC3(%rip), %rax	 #, tmp1266
	movq	%rax, %rcx	 # tmp1266,
	call	printf	 #
.L1816:
 # ./test/pdsp_test.c:1899:     PDSP_ASSERT(loga.u16_count_add == 1U);
	movzwl	-82(%rbp), %eax	 # loga.u16_count_add, _512
	cmpw	$1, %ax	 #, _512
	je	.L1817	 #,
 # ./test/pdsp_test.c:1899:     PDSP_ASSERT(loga.u16_count_add == 1U);
	movl	$1899, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1267
	movq	%rax, %rdx	 # tmp1267,
	leaq	.LC3(%rip), %rax	 #, tmp1268
	movq	%rax, %rcx	 # tmp1268,
	call	printf	 #
.L1817:
 # ./test/pdsp_test.c:1901:     log1 = src1[3];
	movss	252(%rbp), %xmm0	 # src1[3], _513
 # ./test/pdsp_test.c:1901:     log1 = src1[3];
	movss	%xmm0, 140(%rbp)	 # _513, log1
 # ./test/pdsp_test.c:1902:     log2 = src2[3];
	movss	220(%rbp), %xmm0	 # src2[3], _514
 # ./test/pdsp_test.c:1902:     log2 = src2[3];
	movss	%xmm0, 136(%rbp)	 # _514, log2
 # ./test/pdsp_test.c:1903:     log3 = src3[3];
	movss	188(%rbp), %xmm0	 # src3[3], _515
 # ./test/pdsp_test.c:1903:     log3 = src3[3];
	movss	%xmm0, 132(%rbp)	 # _515, log3
 # ./test/pdsp_test.c:1904:     log4 = src4[3];
	movss	156(%rbp), %xmm0	 # src4[3], _516
 # ./test/pdsp_test.c:1904:     log4 = src4[3];
	movss	%xmm0, 128(%rbp)	 # _516, log4
 # ./test/pdsp_test.c:1905:     pdsp_macro_log32_run(loga, plog, data1);
	movzwl	-88(%rbp), %eax	 # loga.u16_index_add, _517
	cmpw	$1, %ax	 #, _517
	jne	.L1818	 #,
 # ./test/pdsp_test.c:1905:     pdsp_macro_log32_run(loga, plog, data1);
	movzwl	-78(%rbp), %eax	 # loga.u16_ch1_index, _518
	movzwl	%ax, %eax	 # _518, _519
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_519], _520
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _521
	movzwl	%dx, %edx	 # _521, _522
	movss	(%rax), %xmm0	 # *_520, _523
	movslq	%edx, %rax	 # _522, tmp1270
	salq	$4, %rax	 #, tmp1271
	leaq	272(%rax), %rax	 #, tmp1442
	addq	%rbp, %rax	 #, tmp1272
	subq	$304, %rax	 #, tmp1273
	movss	%xmm0, (%rax)	 # _523, data1[_522][0]
	movzwl	-76(%rbp), %eax	 # loga.u16_ch2_index, _524
	movzwl	%ax, %eax	 # _524, _525
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_525], _526
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _527
	movzwl	%dx, %edx	 # _527, _528
	movss	(%rax), %xmm0	 # *_526, _529
	movslq	%edx, %rax	 # _528, tmp1275
	salq	$4, %rax	 #, tmp1276
	leaq	272(%rax), %rax	 #, tmp1443
	addq	%rbp, %rax	 #, tmp1277
	subq	$300, %rax	 #, tmp1278
	movss	%xmm0, (%rax)	 # _529, data1[_528][1]
	movzwl	-74(%rbp), %eax	 # loga.u16_ch3_index, _530
	movzwl	%ax, %eax	 # _530, _531
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_531], _532
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _533
	movzwl	%dx, %edx	 # _533, _534
	movss	(%rax), %xmm0	 # *_532, _535
	movslq	%edx, %rax	 # _534, tmp1280
	salq	$4, %rax	 #, tmp1281
	leaq	272(%rax), %rax	 #, tmp1444
	addq	%rbp, %rax	 #, tmp1282
	subq	$296, %rax	 #, tmp1283
	movss	%xmm0, (%rax)	 # _535, data1[_534][2]
	movzwl	-72(%rbp), %eax	 # loga.u16_ch4_index, _536
	movzwl	%ax, %eax	 # _536, _537
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_537], _538
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _539
	movzwl	%dx, %edx	 # _539, _540
	movss	(%rax), %xmm0	 # *_538, _541
	movslq	%edx, %rax	 # _540, tmp1285
	salq	$4, %rax	 #, tmp1286
	leaq	272(%rax), %rax	 #, tmp1445
	addq	%rbp, %rax	 #, tmp1287
	subq	$292, %rax	 #, tmp1288
	movss	%xmm0, (%rax)	 # _541, data1[_540][3]
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _542
	movzwl	-88(%rbp), %eax	 # loga.u16_index_add, _543
	addl	%edx, %eax	 # _542, _544
	movw	%ax, -90(%rbp)	 # _544, loga.u16_index
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _545
	movzwl	-92(%rbp), %eax	 # loga.u16_size_mask, _546
	andl	%edx, %eax	 # _545, _547
	movw	%ax, -90(%rbp)	 # _547, loga.u16_index
	movzwl	-84(%rbp), %edx	 # loga.u16_count, _548
	movzwl	-82(%rbp), %eax	 # loga.u16_count_add, _549
	addl	%edx, %eax	 # _548, _550
	movw	%ax, -84(%rbp)	 # _550, loga.u16_count
	movzwl	-84(%rbp), %eax	 # loga.u16_count, _551
	movzwl	-96(%rbp), %edx	 # loga.u16_size_half, _552
	cmpw	%ax, %dx	 # _551, _552
	jnb	.L1819	 #,
 # ./test/pdsp_test.c:1905:     pdsp_macro_log32_run(loga, plog, data1);
	movw	$0, -88(%rbp)	 #, loga.u16_index_add
	movw	$0, -82(%rbp)	 #, loga.u16_count_add
	jmp	.L1818	 #
.L1819:
 # ./test/pdsp_test.c:1905:     pdsp_macro_log32_run(loga, plog, data1);
	movzwl	-80(%rbp), %eax	 # loga.u16_trig_index, _553
	movzwl	%ax, %eax	 # _553, _554
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_554], _555
	movss	(%rax), %xmm0	 # *_555, _556
	movss	-68(%rbp), %xmm1	 # loga.f32_trig_level, _557
	comiss	%xmm1, %xmm0	 # _557, _556
	jbe	.L1818	 #,
 # ./test/pdsp_test.c:1905:     pdsp_macro_log32_run(loga, plog, data1);
	movw	$1, -82(%rbp)	 #, loga.u16_count_add
.L1818:
 # ./test/pdsp_test.c:1906:     PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
	movss	-32(%rbp), %xmm0	 # data1[0][0], _558
	ucomiss	.LC124(%rip), %xmm0	 #, _558
	jp	.L1821	 #,
	ucomiss	.LC124(%rip), %xmm0	 #, _558
	jne	.L1821	 #,
 # ./test/pdsp_test.c:1906:     PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
	movss	-28(%rbp), %xmm0	 # data1[0][1], _559
	ucomiss	.LC150(%rip), %xmm0	 #, _559
	jp	.L1821	 #,
	ucomiss	.LC150(%rip), %xmm0	 #, _559
	jne	.L1821	 #,
 # ./test/pdsp_test.c:1906:     PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
	movss	-24(%rbp), %xmm0	 # data1[0][2], _560
	ucomiss	.LC73(%rip), %xmm0	 #, _560
	jp	.L1821	 #,
	ucomiss	.LC73(%rip), %xmm0	 #, _560
	jne	.L1821	 #,
 # ./test/pdsp_test.c:1906:     PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
	movss	-20(%rbp), %xmm0	 # data1[0][3], _561
	ucomiss	.LC155(%rip), %xmm0	 #, _561
	jp	.L1821	 #,
	ucomiss	.LC155(%rip), %xmm0	 #, _561
	je	.L1825	 #,
.L1821:
 # ./test/pdsp_test.c:1906:     PDSP_ASSERT((data1[0][0] == 0.1f) && (data1[0][1] == 1.1f) &&
	movl	$1906, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1290
	movq	%rax, %rdx	 # tmp1290,
	leaq	.LC3(%rip), %rax	 #, tmp1291
	movq	%rax, %rcx	 # tmp1291,
	call	printf	 #
.L1825:
 # ./test/pdsp_test.c:1908:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-16(%rbp), %xmm0	 # data1[1][0], _562
	ucomiss	.LC129(%rip), %xmm0	 #, _562
	jp	.L1827	 #,
	ucomiss	.LC129(%rip), %xmm0	 #, _562
	jne	.L1827	 #,
 # ./test/pdsp_test.c:1908:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-12(%rbp), %xmm0	 # data1[1][1], _563
	ucomiss	.LC63(%rip), %xmm0	 #, _563
	jp	.L1827	 #,
	ucomiss	.LC63(%rip), %xmm0	 #, _563
	jne	.L1827	 #,
 # ./test/pdsp_test.c:1908:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-8(%rbp), %xmm0	 # data1[1][2], _564
	ucomiss	.LC64(%rip), %xmm0	 #, _564
	jp	.L1827	 #,
	ucomiss	.LC64(%rip), %xmm0	 #, _564
	jne	.L1827	 #,
 # ./test/pdsp_test.c:1908:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-4(%rbp), %xmm0	 # data1[1][3], _565
	ucomiss	.LC65(%rip), %xmm0	 #, _565
	jp	.L1827	 #,
	ucomiss	.LC65(%rip), %xmm0	 #, _565
	je	.L1831	 #,
.L1827:
 # ./test/pdsp_test.c:1908:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movl	$1908, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1292
	movq	%rax, %rdx	 # tmp1292,
	leaq	.LC3(%rip), %rax	 #, tmp1293
	movq	%rax, %rcx	 # tmp1293,
	call	printf	 #
.L1831:
 # ./test/pdsp_test.c:1910:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movss	0(%rbp), %xmm0	 # data1[2][0], _566
	ucomiss	.LC147(%rip), %xmm0	 #, _566
	jp	.L1833	 #,
	ucomiss	.LC147(%rip), %xmm0	 #, _566
	jne	.L1833	 #,
 # ./test/pdsp_test.c:1910:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movss	4(%rbp), %xmm0	 # data1[2][1], _567
	ucomiss	.LC66(%rip), %xmm0	 #, _567
	jp	.L1833	 #,
	ucomiss	.LC66(%rip), %xmm0	 #, _567
	jne	.L1833	 #,
 # ./test/pdsp_test.c:1910:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movss	8(%rbp), %xmm0	 # data1[2][2], _568
	ucomiss	.LC67(%rip), %xmm0	 #, _568
	jp	.L1833	 #,
	ucomiss	.LC67(%rip), %xmm0	 #, _568
	jne	.L1833	 #,
 # ./test/pdsp_test.c:1910:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movss	12(%rbp), %xmm0	 # data1[2][3], _569
	ucomiss	.LC156(%rip), %xmm0	 #, _569
	jp	.L1833	 #,
	ucomiss	.LC156(%rip), %xmm0	 #, _569
	je	.L1837	 #,
.L1833:
 # ./test/pdsp_test.c:1910:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movl	$1910, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1294
	movq	%rax, %rdx	 # tmp1294,
	leaq	.LC3(%rip), %rax	 #, tmp1295
	movq	%rax, %rcx	 # tmp1295,
	call	printf	 #
.L1837:
 # ./test/pdsp_test.c:1912:     PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
	movss	16(%rbp), %xmm0	 # data1[3][0], _570
	ucomiss	.LC148(%rip), %xmm0	 #, _570
	jp	.L1839	 #,
	ucomiss	.LC148(%rip), %xmm0	 #, _570
	jne	.L1839	 #,
 # ./test/pdsp_test.c:1912:     PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
	movss	20(%rbp), %xmm0	 # data1[3][1], _571
	ucomiss	.LC74(%rip), %xmm0	 #, _571
	jp	.L1839	 #,
	ucomiss	.LC74(%rip), %xmm0	 #, _571
	jne	.L1839	 #,
 # ./test/pdsp_test.c:1912:     PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
	movss	24(%rbp), %xmm0	 # data1[3][2], _572
	ucomiss	.LC152(%rip), %xmm0	 #, _572
	jp	.L1839	 #,
	ucomiss	.LC152(%rip), %xmm0	 #, _572
	jne	.L1839	 #,
 # ./test/pdsp_test.c:1912:     PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
	movss	28(%rbp), %xmm0	 # data1[3][3], _573
	ucomiss	.LC157(%rip), %xmm0	 #, _573
	jp	.L1839	 #,
	ucomiss	.LC157(%rip), %xmm0	 #, _573
	je	.L1843	 #,
.L1839:
 # ./test/pdsp_test.c:1912:     PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
	movl	$1912, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1296
	movq	%rax, %rdx	 # tmp1296,
	leaq	.LC3(%rip), %rax	 #, tmp1297
	movq	%rax, %rcx	 # tmp1297,
	call	printf	 #
.L1843:
 # ./test/pdsp_test.c:1914:     PDSP_ASSERT(loga.u16_count == 2U);
	movzwl	-84(%rbp), %eax	 # loga.u16_count, _574
	cmpw	$2, %ax	 #, _574
	je	.L1845	 #,
 # ./test/pdsp_test.c:1914:     PDSP_ASSERT(loga.u16_count == 2U);
	movl	$1914, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1298
	movq	%rax, %rdx	 # tmp1298,
	leaq	.LC3(%rip), %rax	 #, tmp1299
	movq	%rax, %rcx	 # tmp1299,
	call	printf	 #
.L1845:
 # ./test/pdsp_test.c:1915:     PDSP_ASSERT(loga.u16_index_add == 1U);
	movzwl	-88(%rbp), %eax	 # loga.u16_index_add, _575
	cmpw	$1, %ax	 #, _575
	je	.L1846	 #,
 # ./test/pdsp_test.c:1915:     PDSP_ASSERT(loga.u16_index_add == 1U);
	movl	$1915, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1300
	movq	%rax, %rdx	 # tmp1300,
	leaq	.LC3(%rip), %rax	 #, tmp1301
	movq	%rax, %rcx	 # tmp1301,
	call	printf	 #
.L1846:
 # ./test/pdsp_test.c:1916:     PDSP_ASSERT(loga.u16_count_add == 1U);
	movzwl	-82(%rbp), %eax	 # loga.u16_count_add, _576
	cmpw	$1, %ax	 #, _576
	je	.L1847	 #,
 # ./test/pdsp_test.c:1916:     PDSP_ASSERT(loga.u16_count_add == 1U);
	movl	$1916, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1302
	movq	%rax, %rdx	 # tmp1302,
	leaq	.LC3(%rip), %rax	 #, tmp1303
	movq	%rax, %rcx	 # tmp1303,
	call	printf	 #
.L1847:
 # ./test/pdsp_test.c:1918:     log1 = src1[4];
	movss	256(%rbp), %xmm0	 # src1[4], _577
 # ./test/pdsp_test.c:1918:     log1 = src1[4];
	movss	%xmm0, 140(%rbp)	 # _577, log1
 # ./test/pdsp_test.c:1919:     log2 = src2[4];
	movss	224(%rbp), %xmm0	 # src2[4], _578
 # ./test/pdsp_test.c:1919:     log2 = src2[4];
	movss	%xmm0, 136(%rbp)	 # _578, log2
 # ./test/pdsp_test.c:1920:     log3 = src3[4];
	movss	192(%rbp), %xmm0	 # src3[4], _579
 # ./test/pdsp_test.c:1920:     log3 = src3[4];
	movss	%xmm0, 132(%rbp)	 # _579, log3
 # ./test/pdsp_test.c:1921:     log4 = src4[4];
	movss	160(%rbp), %xmm0	 # src4[4], _580
 # ./test/pdsp_test.c:1921:     log4 = src4[4];
	movss	%xmm0, 128(%rbp)	 # _580, log4
 # ./test/pdsp_test.c:1922:     pdsp_macro_log32_run(loga, plog, data1);
	movzwl	-88(%rbp), %eax	 # loga.u16_index_add, _581
	cmpw	$1, %ax	 #, _581
	jne	.L1848	 #,
 # ./test/pdsp_test.c:1922:     pdsp_macro_log32_run(loga, plog, data1);
	movzwl	-78(%rbp), %eax	 # loga.u16_ch1_index, _582
	movzwl	%ax, %eax	 # _582, _583
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_583], _584
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _585
	movzwl	%dx, %edx	 # _585, _586
	movss	(%rax), %xmm0	 # *_584, _587
	movslq	%edx, %rax	 # _586, tmp1305
	salq	$4, %rax	 #, tmp1306
	leaq	272(%rax), %rax	 #, tmp1446
	addq	%rbp, %rax	 #, tmp1307
	subq	$304, %rax	 #, tmp1308
	movss	%xmm0, (%rax)	 # _587, data1[_586][0]
	movzwl	-76(%rbp), %eax	 # loga.u16_ch2_index, _588
	movzwl	%ax, %eax	 # _588, _589
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_589], _590
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _591
	movzwl	%dx, %edx	 # _591, _592
	movss	(%rax), %xmm0	 # *_590, _593
	movslq	%edx, %rax	 # _592, tmp1310
	salq	$4, %rax	 #, tmp1311
	leaq	272(%rax), %rax	 #, tmp1447
	addq	%rbp, %rax	 #, tmp1312
	subq	$300, %rax	 #, tmp1313
	movss	%xmm0, (%rax)	 # _593, data1[_592][1]
	movzwl	-74(%rbp), %eax	 # loga.u16_ch3_index, _594
	movzwl	%ax, %eax	 # _594, _595
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_595], _596
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _597
	movzwl	%dx, %edx	 # _597, _598
	movss	(%rax), %xmm0	 # *_596, _599
	movslq	%edx, %rax	 # _598, tmp1315
	salq	$4, %rax	 #, tmp1316
	leaq	272(%rax), %rax	 #, tmp1448
	addq	%rbp, %rax	 #, tmp1317
	subq	$296, %rax	 #, tmp1318
	movss	%xmm0, (%rax)	 # _599, data1[_598][2]
	movzwl	-72(%rbp), %eax	 # loga.u16_ch4_index, _600
	movzwl	%ax, %eax	 # _600, _601
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_601], _602
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _603
	movzwl	%dx, %edx	 # _603, _604
	movss	(%rax), %xmm0	 # *_602, _605
	movslq	%edx, %rax	 # _604, tmp1320
	salq	$4, %rax	 #, tmp1321
	leaq	272(%rax), %rax	 #, tmp1449
	addq	%rbp, %rax	 #, tmp1322
	subq	$292, %rax	 #, tmp1323
	movss	%xmm0, (%rax)	 # _605, data1[_604][3]
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _606
	movzwl	-88(%rbp), %eax	 # loga.u16_index_add, _607
	addl	%edx, %eax	 # _606, _608
	movw	%ax, -90(%rbp)	 # _608, loga.u16_index
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _609
	movzwl	-92(%rbp), %eax	 # loga.u16_size_mask, _610
	andl	%edx, %eax	 # _609, _611
	movw	%ax, -90(%rbp)	 # _611, loga.u16_index
	movzwl	-84(%rbp), %edx	 # loga.u16_count, _612
	movzwl	-82(%rbp), %eax	 # loga.u16_count_add, _613
	addl	%edx, %eax	 # _612, _614
	movw	%ax, -84(%rbp)	 # _614, loga.u16_count
	movzwl	-84(%rbp), %eax	 # loga.u16_count, _615
	movzwl	-96(%rbp), %edx	 # loga.u16_size_half, _616
	cmpw	%ax, %dx	 # _615, _616
	jnb	.L1849	 #,
 # ./test/pdsp_test.c:1922:     pdsp_macro_log32_run(loga, plog, data1);
	movw	$0, -88(%rbp)	 #, loga.u16_index_add
	movw	$0, -82(%rbp)	 #, loga.u16_count_add
	jmp	.L1848	 #
.L1849:
 # ./test/pdsp_test.c:1922:     pdsp_macro_log32_run(loga, plog, data1);
	movzwl	-80(%rbp), %eax	 # loga.u16_trig_index, _617
	movzwl	%ax, %eax	 # _617, _618
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_618], _619
	movss	(%rax), %xmm0	 # *_619, _620
	movss	-68(%rbp), %xmm1	 # loga.f32_trig_level, _621
	comiss	%xmm1, %xmm0	 # _621, _620
	jbe	.L1848	 #,
 # ./test/pdsp_test.c:1922:     pdsp_macro_log32_run(loga, plog, data1);
	movw	$1, -82(%rbp)	 #, loga.u16_count_add
.L1848:
 # ./test/pdsp_test.c:1923:     PDSP_ASSERT((data1[0][0] == 0.5f) && (data1[0][1] == 1.5f) &&
	movss	-32(%rbp), %xmm0	 # data1[0][0], _622
	ucomiss	.LC37(%rip), %xmm0	 #, _622
	jp	.L1851	 #,
	ucomiss	.LC37(%rip), %xmm0	 #, _622
	jne	.L1851	 #,
 # ./test/pdsp_test.c:1923:     PDSP_ASSERT((data1[0][0] == 0.5f) && (data1[0][1] == 1.5f) &&
	movss	-28(%rbp), %xmm0	 # data1[0][1], _623
	ucomiss	.LC24(%rip), %xmm0	 #, _623
	jp	.L1851	 #,
	ucomiss	.LC24(%rip), %xmm0	 #, _623
	jne	.L1851	 #,
 # ./test/pdsp_test.c:1923:     PDSP_ASSERT((data1[0][0] == 0.5f) && (data1[0][1] == 1.5f) &&
	movss	-24(%rbp), %xmm0	 # data1[0][2], _624
	ucomiss	.LC38(%rip), %xmm0	 #, _624
	jp	.L1851	 #,
	ucomiss	.LC38(%rip), %xmm0	 #, _624
	jne	.L1851	 #,
 # ./test/pdsp_test.c:1923:     PDSP_ASSERT((data1[0][0] == 0.5f) && (data1[0][1] == 1.5f) &&
	movss	-20(%rbp), %xmm0	 # data1[0][3], _625
	ucomiss	.LC39(%rip), %xmm0	 #, _625
	jp	.L1851	 #,
	ucomiss	.LC39(%rip), %xmm0	 #, _625
	je	.L1855	 #,
.L1851:
 # ./test/pdsp_test.c:1923:     PDSP_ASSERT((data1[0][0] == 0.5f) && (data1[0][1] == 1.5f) &&
	movl	$1923, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1325
	movq	%rax, %rdx	 # tmp1325,
	leaq	.LC3(%rip), %rax	 #, tmp1326
	movq	%rax, %rcx	 # tmp1326,
	call	printf	 #
.L1855:
 # ./test/pdsp_test.c:1925:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-16(%rbp), %xmm0	 # data1[1][0], _626
	ucomiss	.LC129(%rip), %xmm0	 #, _626
	jp	.L1857	 #,
	ucomiss	.LC129(%rip), %xmm0	 #, _626
	jne	.L1857	 #,
 # ./test/pdsp_test.c:1925:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-12(%rbp), %xmm0	 # data1[1][1], _627
	ucomiss	.LC63(%rip), %xmm0	 #, _627
	jp	.L1857	 #,
	ucomiss	.LC63(%rip), %xmm0	 #, _627
	jne	.L1857	 #,
 # ./test/pdsp_test.c:1925:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-8(%rbp), %xmm0	 # data1[1][2], _628
	ucomiss	.LC64(%rip), %xmm0	 #, _628
	jp	.L1857	 #,
	ucomiss	.LC64(%rip), %xmm0	 #, _628
	jne	.L1857	 #,
 # ./test/pdsp_test.c:1925:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-4(%rbp), %xmm0	 # data1[1][3], _629
	ucomiss	.LC65(%rip), %xmm0	 #, _629
	jp	.L1857	 #,
	ucomiss	.LC65(%rip), %xmm0	 #, _629
	je	.L1861	 #,
.L1857:
 # ./test/pdsp_test.c:1925:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movl	$1925, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1327
	movq	%rax, %rdx	 # tmp1327,
	leaq	.LC3(%rip), %rax	 #, tmp1328
	movq	%rax, %rcx	 # tmp1328,
	call	printf	 #
.L1861:
 # ./test/pdsp_test.c:1927:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movss	0(%rbp), %xmm0	 # data1[2][0], _630
	ucomiss	.LC147(%rip), %xmm0	 #, _630
	jp	.L1863	 #,
	ucomiss	.LC147(%rip), %xmm0	 #, _630
	jne	.L1863	 #,
 # ./test/pdsp_test.c:1927:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movss	4(%rbp), %xmm0	 # data1[2][1], _631
	ucomiss	.LC66(%rip), %xmm0	 #, _631
	jp	.L1863	 #,
	ucomiss	.LC66(%rip), %xmm0	 #, _631
	jne	.L1863	 #,
 # ./test/pdsp_test.c:1927:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movss	8(%rbp), %xmm0	 # data1[2][2], _632
	ucomiss	.LC67(%rip), %xmm0	 #, _632
	jp	.L1863	 #,
	ucomiss	.LC67(%rip), %xmm0	 #, _632
	jne	.L1863	 #,
 # ./test/pdsp_test.c:1927:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movss	12(%rbp), %xmm0	 # data1[2][3], _633
	ucomiss	.LC156(%rip), %xmm0	 #, _633
	jp	.L1863	 #,
	ucomiss	.LC156(%rip), %xmm0	 #, _633
	je	.L1867	 #,
.L1863:
 # ./test/pdsp_test.c:1927:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movl	$1927, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1329
	movq	%rax, %rdx	 # tmp1329,
	leaq	.LC3(%rip), %rax	 #, tmp1330
	movq	%rax, %rcx	 # tmp1330,
	call	printf	 #
.L1867:
 # ./test/pdsp_test.c:1929:     PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
	movss	16(%rbp), %xmm0	 # data1[3][0], _634
	ucomiss	.LC148(%rip), %xmm0	 #, _634
	jp	.L1869	 #,
	ucomiss	.LC148(%rip), %xmm0	 #, _634
	jne	.L1869	 #,
 # ./test/pdsp_test.c:1929:     PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
	movss	20(%rbp), %xmm0	 # data1[3][1], _635
	ucomiss	.LC74(%rip), %xmm0	 #, _635
	jp	.L1869	 #,
	ucomiss	.LC74(%rip), %xmm0	 #, _635
	jne	.L1869	 #,
 # ./test/pdsp_test.c:1929:     PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
	movss	24(%rbp), %xmm0	 # data1[3][2], _636
	ucomiss	.LC152(%rip), %xmm0	 #, _636
	jp	.L1869	 #,
	ucomiss	.LC152(%rip), %xmm0	 #, _636
	jne	.L1869	 #,
 # ./test/pdsp_test.c:1929:     PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
	movss	28(%rbp), %xmm0	 # data1[3][3], _637
	ucomiss	.LC157(%rip), %xmm0	 #, _637
	jp	.L1869	 #,
	ucomiss	.LC157(%rip), %xmm0	 #, _637
	je	.L1873	 #,
.L1869:
 # ./test/pdsp_test.c:1929:     PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
	movl	$1929, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1331
	movq	%rax, %rdx	 # tmp1331,
	leaq	.LC3(%rip), %rax	 #, tmp1332
	movq	%rax, %rcx	 # tmp1332,
	call	printf	 #
.L1873:
 # ./test/pdsp_test.c:1931:     PDSP_ASSERT(loga.u16_count == 3U);
	movzwl	-84(%rbp), %eax	 # loga.u16_count, _638
	cmpw	$3, %ax	 #, _638
	je	.L1875	 #,
 # ./test/pdsp_test.c:1931:     PDSP_ASSERT(loga.u16_count == 3U);
	movl	$1931, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1333
	movq	%rax, %rdx	 # tmp1333,
	leaq	.LC3(%rip), %rax	 #, tmp1334
	movq	%rax, %rcx	 # tmp1334,
	call	printf	 #
.L1875:
 # ./test/pdsp_test.c:1932:     PDSP_ASSERT(loga.u16_index_add == 0U);
	movzwl	-88(%rbp), %eax	 # loga.u16_index_add, _639
	testw	%ax, %ax	 # _639
	je	.L1876	 #,
 # ./test/pdsp_test.c:1932:     PDSP_ASSERT(loga.u16_index_add == 0U);
	movl	$1932, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1335
	movq	%rax, %rdx	 # tmp1335,
	leaq	.LC3(%rip), %rax	 #, tmp1336
	movq	%rax, %rcx	 # tmp1336,
	call	printf	 #
.L1876:
 # ./test/pdsp_test.c:1933:     PDSP_ASSERT(loga.u16_count_add == 0U);
	movzwl	-82(%rbp), %eax	 # loga.u16_count_add, _640
	testw	%ax, %ax	 # _640
	je	.L1877	 #,
 # ./test/pdsp_test.c:1933:     PDSP_ASSERT(loga.u16_count_add == 0U);
	movl	$1933, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1337
	movq	%rax, %rdx	 # tmp1337,
	leaq	.LC3(%rip), %rax	 #, tmp1338
	movq	%rax, %rcx	 # tmp1338,
	call	printf	 #
.L1877:
 # ./test/pdsp_test.c:1935:     log1 = src1[5];
	movss	260(%rbp), %xmm0	 # src1[5], _641
 # ./test/pdsp_test.c:1935:     log1 = src1[5];
	movss	%xmm0, 140(%rbp)	 # _641, log1
 # ./test/pdsp_test.c:1936:     log2 = src2[5];
	movss	228(%rbp), %xmm0	 # src2[5], _642
 # ./test/pdsp_test.c:1936:     log2 = src2[5];
	movss	%xmm0, 136(%rbp)	 # _642, log2
 # ./test/pdsp_test.c:1937:     log3 = src3[5];
	movss	196(%rbp), %xmm0	 # src3[5], _643
 # ./test/pdsp_test.c:1937:     log3 = src3[5];
	movss	%xmm0, 132(%rbp)	 # _643, log3
 # ./test/pdsp_test.c:1938:     log4 = src4[5];
	movss	164(%rbp), %xmm0	 # src4[5], _644
 # ./test/pdsp_test.c:1938:     log4 = src4[5];
	movss	%xmm0, 128(%rbp)	 # _644, log4
 # ./test/pdsp_test.c:1939:     pdsp_macro_log32_run(loga, plog, data1);
	movzwl	-88(%rbp), %eax	 # loga.u16_index_add, _645
	cmpw	$1, %ax	 #, _645
	jne	.L1878	 #,
 # ./test/pdsp_test.c:1939:     pdsp_macro_log32_run(loga, plog, data1);
	movzwl	-78(%rbp), %eax	 # loga.u16_ch1_index, _646
	movzwl	%ax, %eax	 # _646, _647
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_647], _648
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _649
	movzwl	%dx, %edx	 # _649, _650
	movss	(%rax), %xmm0	 # *_648, _651
	movslq	%edx, %rax	 # _650, tmp1340
	salq	$4, %rax	 #, tmp1341
	leaq	272(%rax), %rax	 #, tmp1450
	addq	%rbp, %rax	 #, tmp1342
	subq	$304, %rax	 #, tmp1343
	movss	%xmm0, (%rax)	 # _651, data1[_650][0]
	movzwl	-76(%rbp), %eax	 # loga.u16_ch2_index, _652
	movzwl	%ax, %eax	 # _652, _653
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_653], _654
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _655
	movzwl	%dx, %edx	 # _655, _656
	movss	(%rax), %xmm0	 # *_654, _657
	movslq	%edx, %rax	 # _656, tmp1345
	salq	$4, %rax	 #, tmp1346
	leaq	272(%rax), %rax	 #, tmp1451
	addq	%rbp, %rax	 #, tmp1347
	subq	$300, %rax	 #, tmp1348
	movss	%xmm0, (%rax)	 # _657, data1[_656][1]
	movzwl	-74(%rbp), %eax	 # loga.u16_ch3_index, _658
	movzwl	%ax, %eax	 # _658, _659
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_659], _660
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _661
	movzwl	%dx, %edx	 # _661, _662
	movss	(%rax), %xmm0	 # *_660, _663
	movslq	%edx, %rax	 # _662, tmp1350
	salq	$4, %rax	 #, tmp1351
	leaq	272(%rax), %rax	 #, tmp1452
	addq	%rbp, %rax	 #, tmp1352
	subq	$296, %rax	 #, tmp1353
	movss	%xmm0, (%rax)	 # _663, data1[_662][2]
	movzwl	-72(%rbp), %eax	 # loga.u16_ch4_index, _664
	movzwl	%ax, %eax	 # _664, _665
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_665], _666
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _667
	movzwl	%dx, %edx	 # _667, _668
	movss	(%rax), %xmm0	 # *_666, _669
	movslq	%edx, %rax	 # _668, tmp1355
	salq	$4, %rax	 #, tmp1356
	leaq	272(%rax), %rax	 #, tmp1453
	addq	%rbp, %rax	 #, tmp1357
	subq	$292, %rax	 #, tmp1358
	movss	%xmm0, (%rax)	 # _669, data1[_668][3]
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _670
	movzwl	-88(%rbp), %eax	 # loga.u16_index_add, _671
	addl	%edx, %eax	 # _670, _672
	movw	%ax, -90(%rbp)	 # _672, loga.u16_index
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _673
	movzwl	-92(%rbp), %eax	 # loga.u16_size_mask, _674
	andl	%edx, %eax	 # _673, _675
	movw	%ax, -90(%rbp)	 # _675, loga.u16_index
	movzwl	-84(%rbp), %edx	 # loga.u16_count, _676
	movzwl	-82(%rbp), %eax	 # loga.u16_count_add, _677
	addl	%edx, %eax	 # _676, _678
	movw	%ax, -84(%rbp)	 # _678, loga.u16_count
	movzwl	-84(%rbp), %eax	 # loga.u16_count, _679
	movzwl	-96(%rbp), %edx	 # loga.u16_size_half, _680
	cmpw	%ax, %dx	 # _679, _680
	jnb	.L1879	 #,
 # ./test/pdsp_test.c:1939:     pdsp_macro_log32_run(loga, plog, data1);
	movw	$0, -88(%rbp)	 #, loga.u16_index_add
	movw	$0, -82(%rbp)	 #, loga.u16_count_add
	jmp	.L1878	 #
.L1879:
 # ./test/pdsp_test.c:1939:     pdsp_macro_log32_run(loga, plog, data1);
	movzwl	-80(%rbp), %eax	 # loga.u16_trig_index, _681
	movzwl	%ax, %eax	 # _681, _682
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_682], _683
	movss	(%rax), %xmm0	 # *_683, _684
	movss	-68(%rbp), %xmm1	 # loga.f32_trig_level, _685
	comiss	%xmm1, %xmm0	 # _685, _684
	jbe	.L1878	 #,
 # ./test/pdsp_test.c:1939:     pdsp_macro_log32_run(loga, plog, data1);
	movw	$1, -82(%rbp)	 #, loga.u16_count_add
.L1878:
 # ./test/pdsp_test.c:1940:     PDSP_ASSERT((data1[0][0] == 0.5f) && (data1[0][1] == 1.5f) &&
	movss	-32(%rbp), %xmm0	 # data1[0][0], _686
	ucomiss	.LC37(%rip), %xmm0	 #, _686
	jp	.L1881	 #,
	ucomiss	.LC37(%rip), %xmm0	 #, _686
	jne	.L1881	 #,
 # ./test/pdsp_test.c:1940:     PDSP_ASSERT((data1[0][0] == 0.5f) && (data1[0][1] == 1.5f) &&
	movss	-28(%rbp), %xmm0	 # data1[0][1], _687
	ucomiss	.LC24(%rip), %xmm0	 #, _687
	jp	.L1881	 #,
	ucomiss	.LC24(%rip), %xmm0	 #, _687
	jne	.L1881	 #,
 # ./test/pdsp_test.c:1940:     PDSP_ASSERT((data1[0][0] == 0.5f) && (data1[0][1] == 1.5f) &&
	movss	-24(%rbp), %xmm0	 # data1[0][2], _688
	ucomiss	.LC38(%rip), %xmm0	 #, _688
	jp	.L1881	 #,
	ucomiss	.LC38(%rip), %xmm0	 #, _688
	jne	.L1881	 #,
 # ./test/pdsp_test.c:1940:     PDSP_ASSERT((data1[0][0] == 0.5f) && (data1[0][1] == 1.5f) &&
	movss	-20(%rbp), %xmm0	 # data1[0][3], _689
	ucomiss	.LC39(%rip), %xmm0	 #, _689
	jp	.L1881	 #,
	ucomiss	.LC39(%rip), %xmm0	 #, _689
	je	.L1885	 #,
.L1881:
 # ./test/pdsp_test.c:1940:     PDSP_ASSERT((data1[0][0] == 0.5f) && (data1[0][1] == 1.5f) &&
	movl	$1940, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1360
	movq	%rax, %rdx	 # tmp1360,
	leaq	.LC3(%rip), %rax	 #, tmp1361
	movq	%rax, %rcx	 # tmp1361,
	call	printf	 #
.L1885:
 # ./test/pdsp_test.c:1942:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-16(%rbp), %xmm0	 # data1[1][0], _690
	ucomiss	.LC129(%rip), %xmm0	 #, _690
	jp	.L1887	 #,
	ucomiss	.LC129(%rip), %xmm0	 #, _690
	jne	.L1887	 #,
 # ./test/pdsp_test.c:1942:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-12(%rbp), %xmm0	 # data1[1][1], _691
	ucomiss	.LC63(%rip), %xmm0	 #, _691
	jp	.L1887	 #,
	ucomiss	.LC63(%rip), %xmm0	 #, _691
	jne	.L1887	 #,
 # ./test/pdsp_test.c:1942:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-8(%rbp), %xmm0	 # data1[1][2], _692
	ucomiss	.LC64(%rip), %xmm0	 #, _692
	jp	.L1887	 #,
	ucomiss	.LC64(%rip), %xmm0	 #, _692
	jne	.L1887	 #,
 # ./test/pdsp_test.c:1942:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-4(%rbp), %xmm0	 # data1[1][3], _693
	ucomiss	.LC65(%rip), %xmm0	 #, _693
	jp	.L1887	 #,
	ucomiss	.LC65(%rip), %xmm0	 #, _693
	je	.L1891	 #,
.L1887:
 # ./test/pdsp_test.c:1942:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movl	$1942, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1362
	movq	%rax, %rdx	 # tmp1362,
	leaq	.LC3(%rip), %rax	 #, tmp1363
	movq	%rax, %rcx	 # tmp1363,
	call	printf	 #
.L1891:
 # ./test/pdsp_test.c:1944:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movss	0(%rbp), %xmm0	 # data1[2][0], _694
	ucomiss	.LC147(%rip), %xmm0	 #, _694
	jp	.L1893	 #,
	ucomiss	.LC147(%rip), %xmm0	 #, _694
	jne	.L1893	 #,
 # ./test/pdsp_test.c:1944:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movss	4(%rbp), %xmm0	 # data1[2][1], _695
	ucomiss	.LC66(%rip), %xmm0	 #, _695
	jp	.L1893	 #,
	ucomiss	.LC66(%rip), %xmm0	 #, _695
	jne	.L1893	 #,
 # ./test/pdsp_test.c:1944:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movss	8(%rbp), %xmm0	 # data1[2][2], _696
	ucomiss	.LC67(%rip), %xmm0	 #, _696
	jp	.L1893	 #,
	ucomiss	.LC67(%rip), %xmm0	 #, _696
	jne	.L1893	 #,
 # ./test/pdsp_test.c:1944:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movss	12(%rbp), %xmm0	 # data1[2][3], _697
	ucomiss	.LC156(%rip), %xmm0	 #, _697
	jp	.L1893	 #,
	ucomiss	.LC156(%rip), %xmm0	 #, _697
	je	.L1897	 #,
.L1893:
 # ./test/pdsp_test.c:1944:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movl	$1944, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1364
	movq	%rax, %rdx	 # tmp1364,
	leaq	.LC3(%rip), %rax	 #, tmp1365
	movq	%rax, %rcx	 # tmp1365,
	call	printf	 #
.L1897:
 # ./test/pdsp_test.c:1946:     PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
	movss	16(%rbp), %xmm0	 # data1[3][0], _698
	ucomiss	.LC148(%rip), %xmm0	 #, _698
	jp	.L1899	 #,
	ucomiss	.LC148(%rip), %xmm0	 #, _698
	jne	.L1899	 #,
 # ./test/pdsp_test.c:1946:     PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
	movss	20(%rbp), %xmm0	 # data1[3][1], _699
	ucomiss	.LC74(%rip), %xmm0	 #, _699
	jp	.L1899	 #,
	ucomiss	.LC74(%rip), %xmm0	 #, _699
	jne	.L1899	 #,
 # ./test/pdsp_test.c:1946:     PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
	movss	24(%rbp), %xmm0	 # data1[3][2], _700
	ucomiss	.LC152(%rip), %xmm0	 #, _700
	jp	.L1899	 #,
	ucomiss	.LC152(%rip), %xmm0	 #, _700
	jne	.L1899	 #,
 # ./test/pdsp_test.c:1946:     PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
	movss	28(%rbp), %xmm0	 # data1[3][3], _701
	ucomiss	.LC157(%rip), %xmm0	 #, _701
	jp	.L1899	 #,
	ucomiss	.LC157(%rip), %xmm0	 #, _701
	je	.L1903	 #,
.L1899:
 # ./test/pdsp_test.c:1946:     PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
	movl	$1946, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1366
	movq	%rax, %rdx	 # tmp1366,
	leaq	.LC3(%rip), %rax	 #, tmp1367
	movq	%rax, %rcx	 # tmp1367,
	call	printf	 #
.L1903:
 # ./test/pdsp_test.c:1948:     PDSP_ASSERT(loga.u16_count == 3U);
	movzwl	-84(%rbp), %eax	 # loga.u16_count, _702
	cmpw	$3, %ax	 #, _702
	je	.L1905	 #,
 # ./test/pdsp_test.c:1948:     PDSP_ASSERT(loga.u16_count == 3U);
	movl	$1948, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1368
	movq	%rax, %rdx	 # tmp1368,
	leaq	.LC3(%rip), %rax	 #, tmp1369
	movq	%rax, %rcx	 # tmp1369,
	call	printf	 #
.L1905:
 # ./test/pdsp_test.c:1949:     PDSP_ASSERT(loga.u16_index_add == 0U);
	movzwl	-88(%rbp), %eax	 # loga.u16_index_add, _703
	testw	%ax, %ax	 # _703
	je	.L1906	 #,
 # ./test/pdsp_test.c:1949:     PDSP_ASSERT(loga.u16_index_add == 0U);
	movl	$1949, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1370
	movq	%rax, %rdx	 # tmp1370,
	leaq	.LC3(%rip), %rax	 #, tmp1371
	movq	%rax, %rcx	 # tmp1371,
	call	printf	 #
.L1906:
 # ./test/pdsp_test.c:1950:     PDSP_ASSERT(loga.u16_count_add == 0U);
	movzwl	-82(%rbp), %eax	 # loga.u16_count_add, _704
	testw	%ax, %ax	 # _704
	je	.L1907	 #,
 # ./test/pdsp_test.c:1950:     PDSP_ASSERT(loga.u16_count_add == 0U);
	movl	$1950, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1372
	movq	%rax, %rdx	 # tmp1372,
	leaq	.LC3(%rip), %rax	 #, tmp1373
	movq	%rax, %rcx	 # tmp1373,
	call	printf	 #
.L1907:
 # ./test/pdsp_test.c:1952:     log1 = src1[6];
	movss	264(%rbp), %xmm0	 # src1[6], _705
 # ./test/pdsp_test.c:1952:     log1 = src1[6];
	movss	%xmm0, 140(%rbp)	 # _705, log1
 # ./test/pdsp_test.c:1953:     log2 = src2[6];
	movss	232(%rbp), %xmm0	 # src2[6], _706
 # ./test/pdsp_test.c:1953:     log2 = src2[6];
	movss	%xmm0, 136(%rbp)	 # _706, log2
 # ./test/pdsp_test.c:1954:     log3 = src3[6];
	movss	200(%rbp), %xmm0	 # src3[6], _707
 # ./test/pdsp_test.c:1954:     log3 = src3[6];
	movss	%xmm0, 132(%rbp)	 # _707, log3
 # ./test/pdsp_test.c:1955:     log4 = src4[6];
	movss	168(%rbp), %xmm0	 # src4[6], _708
 # ./test/pdsp_test.c:1955:     log4 = src4[6];
	movss	%xmm0, 128(%rbp)	 # _708, log4
 # ./test/pdsp_test.c:1956:     pdsp_macro_log32_run(loga, plog, data1);
	movzwl	-88(%rbp), %eax	 # loga.u16_index_add, _709
	cmpw	$1, %ax	 #, _709
	jne	.L1908	 #,
 # ./test/pdsp_test.c:1956:     pdsp_macro_log32_run(loga, plog, data1);
	movzwl	-78(%rbp), %eax	 # loga.u16_ch1_index, _710
	movzwl	%ax, %eax	 # _710, _711
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_711], _712
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _713
	movzwl	%dx, %edx	 # _713, _714
	movss	(%rax), %xmm0	 # *_712, _715
	movslq	%edx, %rax	 # _714, tmp1375
	salq	$4, %rax	 #, tmp1376
	leaq	272(%rax), %rax	 #, tmp1454
	addq	%rbp, %rax	 #, tmp1377
	subq	$304, %rax	 #, tmp1378
	movss	%xmm0, (%rax)	 # _715, data1[_714][0]
	movzwl	-76(%rbp), %eax	 # loga.u16_ch2_index, _716
	movzwl	%ax, %eax	 # _716, _717
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_717], _718
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _719
	movzwl	%dx, %edx	 # _719, _720
	movss	(%rax), %xmm0	 # *_718, _721
	movslq	%edx, %rax	 # _720, tmp1380
	salq	$4, %rax	 #, tmp1381
	leaq	272(%rax), %rax	 #, tmp1455
	addq	%rbp, %rax	 #, tmp1382
	subq	$300, %rax	 #, tmp1383
	movss	%xmm0, (%rax)	 # _721, data1[_720][1]
	movzwl	-74(%rbp), %eax	 # loga.u16_ch3_index, _722
	movzwl	%ax, %eax	 # _722, _723
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_723], _724
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _725
	movzwl	%dx, %edx	 # _725, _726
	movss	(%rax), %xmm0	 # *_724, _727
	movslq	%edx, %rax	 # _726, tmp1385
	salq	$4, %rax	 #, tmp1386
	leaq	272(%rax), %rax	 #, tmp1456
	addq	%rbp, %rax	 #, tmp1387
	subq	$296, %rax	 #, tmp1388
	movss	%xmm0, (%rax)	 # _727, data1[_726][2]
	movzwl	-72(%rbp), %eax	 # loga.u16_ch4_index, _728
	movzwl	%ax, %eax	 # _728, _729
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_729], _730
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _731
	movzwl	%dx, %edx	 # _731, _732
	movss	(%rax), %xmm0	 # *_730, _733
	movslq	%edx, %rax	 # _732, tmp1390
	salq	$4, %rax	 #, tmp1391
	leaq	272(%rax), %rax	 #, tmp1457
	addq	%rbp, %rax	 #, tmp1392
	subq	$292, %rax	 #, tmp1393
	movss	%xmm0, (%rax)	 # _733, data1[_732][3]
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _734
	movzwl	-88(%rbp), %eax	 # loga.u16_index_add, _735
	addl	%edx, %eax	 # _734, _736
	movw	%ax, -90(%rbp)	 # _736, loga.u16_index
	movzwl	-90(%rbp), %edx	 # loga.u16_index, _737
	movzwl	-92(%rbp), %eax	 # loga.u16_size_mask, _738
	andl	%edx, %eax	 # _737, _739
	movw	%ax, -90(%rbp)	 # _739, loga.u16_index
	movzwl	-84(%rbp), %edx	 # loga.u16_count, _740
	movzwl	-82(%rbp), %eax	 # loga.u16_count_add, _741
	addl	%edx, %eax	 # _740, _742
	movw	%ax, -84(%rbp)	 # _742, loga.u16_count
	movzwl	-84(%rbp), %eax	 # loga.u16_count, _743
	movzwl	-96(%rbp), %edx	 # loga.u16_size_half, _744
	cmpw	%ax, %dx	 # _743, _744
	jnb	.L1909	 #,
 # ./test/pdsp_test.c:1956:     pdsp_macro_log32_run(loga, plog, data1);
	movw	$0, -88(%rbp)	 #, loga.u16_index_add
	movw	$0, -82(%rbp)	 #, loga.u16_count_add
	jmp	.L1908	 #
.L1909:
 # ./test/pdsp_test.c:1956:     pdsp_macro_log32_run(loga, plog, data1);
	movzwl	-80(%rbp), %eax	 # loga.u16_trig_index, _745
	movzwl	%ax, %eax	 # _745, _746
	cltq
	movq	96(%rbp,%rax,8), %rax	 # plog[_746], _747
	movss	(%rax), %xmm0	 # *_747, _748
	movss	-68(%rbp), %xmm1	 # loga.f32_trig_level, _749
	comiss	%xmm1, %xmm0	 # _749, _748
	jbe	.L1908	 #,
 # ./test/pdsp_test.c:1956:     pdsp_macro_log32_run(loga, plog, data1);
	movw	$1, -82(%rbp)	 #, loga.u16_count_add
.L1908:
 # ./test/pdsp_test.c:1957:     PDSP_ASSERT((data1[0][0] == 0.5f) && (data1[0][1] == 1.5f) &&
	movss	-32(%rbp), %xmm0	 # data1[0][0], _750
	ucomiss	.LC37(%rip), %xmm0	 #, _750
	jp	.L1911	 #,
	ucomiss	.LC37(%rip), %xmm0	 #, _750
	jne	.L1911	 #,
 # ./test/pdsp_test.c:1957:     PDSP_ASSERT((data1[0][0] == 0.5f) && (data1[0][1] == 1.5f) &&
	movss	-28(%rbp), %xmm0	 # data1[0][1], _751
	ucomiss	.LC24(%rip), %xmm0	 #, _751
	jp	.L1911	 #,
	ucomiss	.LC24(%rip), %xmm0	 #, _751
	jne	.L1911	 #,
 # ./test/pdsp_test.c:1957:     PDSP_ASSERT((data1[0][0] == 0.5f) && (data1[0][1] == 1.5f) &&
	movss	-24(%rbp), %xmm0	 # data1[0][2], _752
	ucomiss	.LC38(%rip), %xmm0	 #, _752
	jp	.L1911	 #,
	ucomiss	.LC38(%rip), %xmm0	 #, _752
	jne	.L1911	 #,
 # ./test/pdsp_test.c:1957:     PDSP_ASSERT((data1[0][0] == 0.5f) && (data1[0][1] == 1.5f) &&
	movss	-20(%rbp), %xmm0	 # data1[0][3], _753
	ucomiss	.LC39(%rip), %xmm0	 #, _753
	jp	.L1911	 #,
	ucomiss	.LC39(%rip), %xmm0	 #, _753
	je	.L1915	 #,
.L1911:
 # ./test/pdsp_test.c:1957:     PDSP_ASSERT((data1[0][0] == 0.5f) && (data1[0][1] == 1.5f) &&
	movl	$1957, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1395
	movq	%rax, %rdx	 # tmp1395,
	leaq	.LC3(%rip), %rax	 #, tmp1396
	movq	%rax, %rcx	 # tmp1396,
	call	printf	 #
.L1915:
 # ./test/pdsp_test.c:1959:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-16(%rbp), %xmm0	 # data1[1][0], _754
	ucomiss	.LC129(%rip), %xmm0	 #, _754
	jp	.L1917	 #,
	ucomiss	.LC129(%rip), %xmm0	 #, _754
	jne	.L1917	 #,
 # ./test/pdsp_test.c:1959:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-12(%rbp), %xmm0	 # data1[1][1], _755
	ucomiss	.LC63(%rip), %xmm0	 #, _755
	jp	.L1917	 #,
	ucomiss	.LC63(%rip), %xmm0	 #, _755
	jne	.L1917	 #,
 # ./test/pdsp_test.c:1959:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-8(%rbp), %xmm0	 # data1[1][2], _756
	ucomiss	.LC64(%rip), %xmm0	 #, _756
	jp	.L1917	 #,
	ucomiss	.LC64(%rip), %xmm0	 #, _756
	jne	.L1917	 #,
 # ./test/pdsp_test.c:1959:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movss	-4(%rbp), %xmm0	 # data1[1][3], _757
	ucomiss	.LC65(%rip), %xmm0	 #, _757
	jp	.L1917	 #,
	ucomiss	.LC65(%rip), %xmm0	 #, _757
	je	.L1921	 #,
.L1917:
 # ./test/pdsp_test.c:1959:     PDSP_ASSERT((data1[1][0] == 0.2f) && (data1[1][1] == 1.2f) &&
	movl	$1959, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1397
	movq	%rax, %rdx	 # tmp1397,
	leaq	.LC3(%rip), %rax	 #, tmp1398
	movq	%rax, %rcx	 # tmp1398,
	call	printf	 #
.L1921:
 # ./test/pdsp_test.c:1961:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movss	0(%rbp), %xmm0	 # data1[2][0], _758
	ucomiss	.LC147(%rip), %xmm0	 #, _758
	jp	.L1923	 #,
	ucomiss	.LC147(%rip), %xmm0	 #, _758
	jne	.L1923	 #,
 # ./test/pdsp_test.c:1961:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movss	4(%rbp), %xmm0	 # data1[2][1], _759
	ucomiss	.LC66(%rip), %xmm0	 #, _759
	jp	.L1923	 #,
	ucomiss	.LC66(%rip), %xmm0	 #, _759
	jne	.L1923	 #,
 # ./test/pdsp_test.c:1961:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movss	8(%rbp), %xmm0	 # data1[2][2], _760
	ucomiss	.LC67(%rip), %xmm0	 #, _760
	jp	.L1923	 #,
	ucomiss	.LC67(%rip), %xmm0	 #, _760
	jne	.L1923	 #,
 # ./test/pdsp_test.c:1961:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movss	12(%rbp), %xmm0	 # data1[2][3], _761
	ucomiss	.LC156(%rip), %xmm0	 #, _761
	jp	.L1923	 #,
	ucomiss	.LC156(%rip), %xmm0	 #, _761
	je	.L1927	 #,
.L1923:
 # ./test/pdsp_test.c:1961:     PDSP_ASSERT((data1[2][0] == 0.3f) && (data1[2][1] == 1.3f) &&
	movl	$1961, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1399
	movq	%rax, %rdx	 # tmp1399,
	leaq	.LC3(%rip), %rax	 #, tmp1400
	movq	%rax, %rcx	 # tmp1400,
	call	printf	 #
.L1927:
 # ./test/pdsp_test.c:1963:     PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
	movss	16(%rbp), %xmm0	 # data1[3][0], _762
	ucomiss	.LC148(%rip), %xmm0	 #, _762
	jp	.L1929	 #,
	ucomiss	.LC148(%rip), %xmm0	 #, _762
	jne	.L1929	 #,
 # ./test/pdsp_test.c:1963:     PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
	movss	20(%rbp), %xmm0	 # data1[3][1], _763
	ucomiss	.LC74(%rip), %xmm0	 #, _763
	jp	.L1929	 #,
	ucomiss	.LC74(%rip), %xmm0	 #, _763
	jne	.L1929	 #,
 # ./test/pdsp_test.c:1963:     PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
	movss	24(%rbp), %xmm0	 # data1[3][2], _764
	ucomiss	.LC152(%rip), %xmm0	 #, _764
	jp	.L1929	 #,
	ucomiss	.LC152(%rip), %xmm0	 #, _764
	jne	.L1929	 #,
 # ./test/pdsp_test.c:1963:     PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
	movss	28(%rbp), %xmm0	 # data1[3][3], _765
	ucomiss	.LC157(%rip), %xmm0	 #, _765
	jp	.L1929	 #,
	ucomiss	.LC157(%rip), %xmm0	 #, _765
	je	.L1933	 #,
.L1929:
 # ./test/pdsp_test.c:1963:     PDSP_ASSERT((data1[3][0] == 0.4f) && (data1[3][1] == 1.4f) &&
	movl	$1963, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1401
	movq	%rax, %rdx	 # tmp1401,
	leaq	.LC3(%rip), %rax	 #, tmp1402
	movq	%rax, %rcx	 # tmp1402,
	call	printf	 #
.L1933:
 # ./test/pdsp_test.c:1965:     PDSP_ASSERT(loga.u16_count == 3U);
	movzwl	-84(%rbp), %eax	 # loga.u16_count, _766
	cmpw	$3, %ax	 #, _766
	je	.L1935	 #,
 # ./test/pdsp_test.c:1965:     PDSP_ASSERT(loga.u16_count == 3U);
	movl	$1965, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1403
	movq	%rax, %rdx	 # tmp1403,
	leaq	.LC3(%rip), %rax	 #, tmp1404
	movq	%rax, %rcx	 # tmp1404,
	call	printf	 #
.L1935:
 # ./test/pdsp_test.c:1966:     PDSP_ASSERT(loga.u16_index_add == 0U);
	movzwl	-88(%rbp), %eax	 # loga.u16_index_add, _767
	testw	%ax, %ax	 # _767
	je	.L1936	 #,
 # ./test/pdsp_test.c:1966:     PDSP_ASSERT(loga.u16_index_add == 0U);
	movl	$1966, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1405
	movq	%rax, %rdx	 # tmp1405,
	leaq	.LC3(%rip), %rax	 #, tmp1406
	movq	%rax, %rcx	 # tmp1406,
	call	printf	 #
.L1936:
 # ./test/pdsp_test.c:1967:     PDSP_ASSERT(loga.u16_count_add == 0U);
	movzwl	-82(%rbp), %eax	 # loga.u16_count_add, _768
	testw	%ax, %ax	 # _768
	je	.L2094	 #,
 # ./test/pdsp_test.c:1967:     PDSP_ASSERT(loga.u16_count_add == 0U);
	movl	$1967, %r8d	 #,
	leaq	.LC2(%rip), %rax	 #, tmp1407
	movq	%rax, %rdx	 # tmp1407,
	leaq	.LC3(%rip), %rax	 #, tmp1408
	movq	%rax, %rcx	 # tmp1408,
	call	printf	 #
.L2094:
 # ./test/pdsp_test.c:1968: }
	nop	
	addq	$400, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC161:
	.ascii "-- void test_assert_print(void) --\12\0"
	.text
	.globl	test_assert_print
	.def	test_assert_print;	.scl	2;	.type	32;	.endef
	.seh_proc	test_assert_print
test_assert_print:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
 # ./test/pdsp_test.c:1972:     printf("-- void test_assert_print(void) --\n");
	leaq	.LC161(%rip), %rax	 #, tmp82
	movq	%rax, %rcx	 # tmp82,
	call	printf	 #
 # ./test/pdsp_test.c:1976: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
 # ./test/pdsp_test.c:1979: {
	call	__main	 #
 # ./test/pdsp_test.c:1980:     test_assert_true();
	call	test_assert_true	 #
 # ./test/pdsp_test.c:1981:     test_stopwatch();
	call	test_stopwatch	 #
 # ./test/pdsp_test.c:1982:     test_call_i16_func();
	call	test_call_i16_func	 #
 # ./test/pdsp_test.c:1983:     test_i16_to_string();
	call	test_i16_to_string	 #
 # ./test/pdsp_test.c:1984:     test_u16_to_base16();
	call	test_u16_to_base16	 #
 # ./test/pdsp_test.c:1985:     test_u32_to_base16();
	call	test_u32_to_base16	 #
 # ./test/pdsp_test.c:1986:     test_u64_to_base16();
	call	test_u64_to_base16	 #
 # ./test/pdsp_test.c:1987:     test_u16_to_base64();
	call	test_u16_to_base64	 #
 # ./test/pdsp_test.c:1988:     test_u32_to_base64();
	call	test_u32_to_base64	 #
 # ./test/pdsp_test.c:1989:     test_u64_to_base64();
	call	test_u64_to_base64	 #
 # ./test/pdsp_test.c:1990:     test_map();
	call	test_map	 #
 # ./test/pdsp_test.c:1991:     test_map_idx();
	call	test_map_idx	 #
 # ./test/pdsp_test.c:1992:     test_array_set();
	call	test_array_set	 #
 # ./test/pdsp_test.c:1993:     test_array_apply();
	call	test_array_apply	 #
 # ./test/pdsp_test.c:1994:     test_array_linlogspace();
	call	test_array_linlogspace	 #
 # ./test/pdsp_test.c:1995:     test_interpolate_2d();
	call	test_interpolate_2d	 #
 # ./test/pdsp_test.c:1996:     test_hysteresis_value();
	call	test_hysteresis_value	 #
 # ./test/pdsp_test.c:1997:     test_hysteresis_list();
	call	test_hysteresis_list	 #
 # ./test/pdsp_test.c:1998:     test_debounce();
	call	test_debounce	 #
 # ./test/pdsp_test.c:1999:     test_robust();
	call	test_robust	 #
 # ./test/pdsp_test.c:2000:     test_backlash();
	call	test_backlash	 #
 # ./test/pdsp_test.c:2001:     test_edge_delay();
	call	test_edge_delay	 #
 # ./test/pdsp_test.c:2002:     test_monoflop();
	call	test_monoflop	 #
 # ./test/pdsp_test.c:2003:     test_pulse();
	call	test_pulse	 #
 # ./test/pdsp_test.c:2004:     test_status();
	call	test_status	 #
 # ./test/pdsp_test.c:2005:     test_mean();
	call	test_mean	 #
 # ./test/pdsp_test.c:2006:     test_queue();
	call	test_queue	 #
 # ./test/pdsp_test.c:2007:     test_ain();
	call	test_ain	 #
 # ./test/pdsp_test.c:2008:     test_ain_calibrate();
	call	test_ain_calibrate	 #
 # ./test/pdsp_test.c:2009:     test_minmax();
	call	test_minmax	 #
 # ./test/pdsp_test.c:2010:     test_expavg();
	call	test_expavg	 #
 # ./test/pdsp_test.c:2011:     test_df2x();
	call	test_df2x	 #
 # ./test/pdsp_test.c:2012:     test_med3();
	call	test_med3	 #
 # ./test/pdsp_test.c:2013:     test_rollsum();
	call	test_rollsum	 #
 # ./test/pdsp_test.c:2014:     test_rollavg();
	call	test_rollavg	 #
 # ./test/pdsp_test.c:2015:     test_rollrms();
	call	test_rollrms	 #
 # ./test/pdsp_test.c:2016:     test_delay();
	call	test_delay	 #
 # ./test/pdsp_test.c:2017:     test_setp();
	call	test_setp	 #
 # ./test/pdsp_test.c:2018:     test_setp_smooth();
	call	test_setp_smooth	 #
 # ./test/pdsp_test.c:2019:     test_pi();
	call	test_pi	 #
 # ./test/pdsp_test.c:2020:     test_bit_read_write();
	call	test_bit_read_write	 #
 # ./test/pdsp_test.c:2021:     test_signal_read_write();
	call	test_signal_read_write	 #
 # ./test/pdsp_test.c:2022:     test_fault();
	call	test_fault	 #
 # ./test/pdsp_test.c:2023:     test_fixmath();
	call	test_fixmath	 #
 # ./test/pdsp_test.c:2024:     test_log32();
	call	test_log32	 #
 # ./test/pdsp_test.c:2025:     test_assert_print();
	call	test_assert_print	 #
 # ./test/pdsp_test.c:2026:     return 0;
	movl	$0, %eax	 #, _48
 # ./test/pdsp_test.c:2027: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC22:
	.long	1073741824
	.align 4
.LC23:
	.long	1065353216
	.align 4
.LC24:
	.long	1069547520
	.align 4
.LC26:
	.long	-1082130432
	.align 4
.LC28:
	.long	1092616192
	.align 4
.LC29:
	.long	-1077936128
	.align 4
.LC30:
	.long	1077936128
	.align 4
.LC32:
	.long	1082130432
	.align 4
.LC33:
	.long	-1073741824
	.align 4
.LC34:
	.long	-1069547520
	.align 4
.LC35:
	.long	-1065353216
	.align 4
.LC36:
	.long	-1090519040
	.align 4
.LC37:
	.long	1056964608
	.align 4
.LC38:
	.long	1075838976
	.align 4
.LC39:
	.long	1080033280
	.align 4
.LC40:
	.long	1083179008
	.align 4
.LC41:
	.long	-1071644672
	.align 4
.LC42:
	.long	-1067450368
	.align 4
.LC43:
	.long	-1064304640
	.align 4
.LC45:
	.long	1084227584
	.align 4
.LC47:
	.long	1086324736
	.align 4
.LC48:
	.long	1090519040
	.align 4
.LC50:
	.long	1109393408
	.align 4
.LC51:
	.long	1101004800
	.align 4
.LC52:
	.long	1106247680
	.align 4
.LC53:
	.long	1112014848
	.align 4
.LC54:
	.long	1099842346
	.align 4
.LC55:
	.long	1107098482
	.align 4
.LC56:
	.long	1113649088
	.align 4
.LC57:
	.long	1120403456
	.align 4
.LC60:
	.long	1061997773
	.align 4
.LC61:
	.long	1072064102
	.align 4
.LC62:
	.long	1077097267
	.align 4
.LC63:
	.long	1067030938
	.align 4
.LC64:
	.long	1074580685
	.align 4
.LC65:
	.long	1078774989
	.align 4
.LC66:
	.long	1067869798
	.align 4
.LC67:
	.long	1075000115
	.align 4
.LC68:
	.long	1060320051
	.align 4
.LC69:
	.long	1071225242
	.align 4
.LC72:
	.long	-1054867456
	.align 4
.LC73:
	.long	1074161254
	.align 4
.LC74:
	.long	1068708659
	.align 4
.LC76:
	.long	-1027080192
	.align 4
.LC77:
	.long	-1027342336
	.align 4
.LC78:
	.long	-1027211264
	.align 4
.LC79:
	.long	-1027473408
	.align 4
.LC80:
	.long	-1027604480
	.align 4
.LC81:
	.long	-1027735552
	.align 4
.LC82:
	.long	1120141312
	.align 4
.LC83:
	.long	1120272384
	.align 4
.LC84:
	.long	1120010240
	.align 4
.LC85:
	.long	1119879168
	.align 4
.LC86:
	.long	1119748096
	.align 4
.LC94:
	.long	1094713344
	.align 4
.LC95:
	.long	1107558400
	.align 4
.LC99:
	.long	1061158912
	.align 4
.LC100:
	.long	1065336439
	.align 4
.LC103:
	.long	1008981770
	.align 4
.LC107:
	.long	1102577664
	.align 4
.LC108:
	.long	1108869120
	.align 4
.LC109:
	.long	1111490560
	.align 4
.LC110:
	.long	1097859072
	.align 4
.LC111:
	.long	1113325568
	.align 4
.LC112:
	.long	1129119744
	.align 4
.LC113:
	.long	1124532224
	.align 4
.LC114:
	.long	1115815936
	.align 4
.LC117:
	.long	1093664768
	.align 4
.LC118:
	.long	1096810496
	.align 4
.LC120:
	.long	1048576000
	.align 4
.LC124:
	.long	1036831949
	.align 4
.LC125:
	.long	1088421888
	.align 4
.LC126:
	.long	1089470464
	.align 4
.LC127:
	.long	1089994752
	.align 4
.LC128:
	.long	1090256896
	.align 4
.LC129:
	.long	1045220557
	.align 4
.LC130:
	.long	981668463
	.align 4
.LC131:
	.long	1117782016
	.align 16
.LC132:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 16
.LC133:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC135:
	.long	1059061760
	.align 4
.LC136:
	.long	1079508992
	.align 4
.LC138:
	.long	1115947008
	.align 4
.LC139:
	.long	-1063256064
	.align 4
.LC140:
	.long	-1061158912
	.align 4
.LC143:
	.long	2143289344
	.align 4
.LC147:
	.long	1050253722
	.align 4
.LC148:
	.long	1053609165
	.align 4
.LC149:
	.long	1058642330
	.align 4
.LC150:
	.long	1066192077
	.align 4
.LC151:
	.long	1070386381
	.align 4
.LC152:
	.long	1075419546
	.align 4
.LC153:
	.long	1076258406
	.align 4
.LC154:
	.long	1076677837
	.align 4
.LC155:
	.long	1078355558
	.align 4
.LC156:
	.long	1079194419
	.align 4
.LC157:
	.long	1079613850
	.align 4
.LC158:
	.long	1080452710
	.align 4
.LC159:
	.long	1080872141
	.align 4
.LC160:
	.long	1081291571
	.ident	"GCC: (Rev7, Built by MSYS2 project) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	pdsp_stopwatch_start;	.scl	2;	.type	32;	.endef
	.def	pdsp_stopwatch_stop;	.scl	2;	.type	32;	.endef
	.def	pdsp_call_i16_func;	.scl	2;	.type	32;	.endef
	.def	pdsp_i16_to_string;	.scl	2;	.type	32;	.endef
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.def	pdsp_u16_to_base16_alt;	.scl	2;	.type	32;	.endef
	.def	pdsp_u16_to_base16;	.scl	2;	.type	32;	.endef
	.def	pdsp_u32_to_base16;	.scl	2;	.type	32;	.endef
	.def	pdsp_u64_to_base16_alt;	.scl	2;	.type	32;	.endef
	.def	pdsp_u64_to_base16;	.scl	2;	.type	32;	.endef
	.def	pdsp_u8_to_base16;	.scl	2;	.type	32;	.endef
	.def	pdsp_u16_to_base64;	.scl	2;	.type	32;	.endef
	.def	pdsp_u32_to_base64;	.scl	2;	.type	32;	.endef
	.def	pdsp_u64_to_base64;	.scl	2;	.type	32;	.endef
	.def	pdsp_map;	.scl	2;	.type	32;	.endef
	.def	pdsp_map_idx;	.scl	2;	.type	32;	.endef
	.def	pdsp_interpolate_2d;	.scl	2;	.type	32;	.endef
	.def	pdsp_array_set_f32;	.scl	2;	.type	32;	.endef
	.def	pdsp_array_set_i16;	.scl	2;	.type	32;	.endef
	.def	pdsp_array_apply_f32;	.scl	2;	.type	32;	.endef
	.def	pdsp_array_apply_i16;	.scl	2;	.type	32;	.endef
	.def	pdsp_array_linspace_f32;	.scl	2;	.type	32;	.endef
	.def	pdsp_array_logspace_f32;	.scl	2;	.type	32;	.endef
	.def	pdsp_hysteresis_value_clear;	.scl	2;	.type	32;	.endef
	.def	pdsp_hysteresis_value;	.scl	2;	.type	32;	.endef
	.def	pdsp_hysteresis_list_clear;	.scl	2;	.type	32;	.endef
	.def	pdsp_hysteresis_list;	.scl	2;	.type	32;	.endef
	.def	pdsp_debounce_clear;	.scl	2;	.type	32;	.endef
	.def	pdsp_debounce;	.scl	2;	.type	32;	.endef
	.def	pdsp_debounce_cnt_clear;	.scl	2;	.type	32;	.endef
	.def	pdsp_debounce_cnt;	.scl	2;	.type	32;	.endef
	.def	pdsp_robust_clear;	.scl	2;	.type	32;	.endef
	.def	pdsp_robust;	.scl	2;	.type	32;	.endef
	.def	pdsp_backlash;	.scl	2;	.type	32;	.endef
	.def	pdsp_edge_delay_init;	.scl	2;	.type	32;	.endef
	.def	pdsp_edge_delay;	.scl	2;	.type	32;	.endef
	.def	pdsp_monoflop_init;	.scl	2;	.type	32;	.endef
	.def	pdsp_monoflop;	.scl	2;	.type	32;	.endef
	.def	pdsp_monoflop_rtr;	.scl	2;	.type	32;	.endef
	.def	pdsp_monoflop_rtr_det;	.scl	2;	.type	32;	.endef
	.def	pdsp_pulse_init;	.scl	2;	.type	32;	.endef
	.def	pdsp_pulse;	.scl	2;	.type	32;	.endef
	.def	pdsp_mask_set;	.scl	2;	.type	32;	.endef
	.def	pdsp_mask_get;	.scl	2;	.type	32;	.endef
	.def	pdsp_mask_clear;	.scl	2;	.type	32;	.endef
	.def	pdsp_mean2w_f32;	.scl	2;	.type	32;	.endef
	.def	pdsp_mean4_u16;	.scl	2;	.type	32;	.endef
	.def	pdsp_mean8_u16;	.scl	2;	.type	32;	.endef
	.def	pdsp_queue_init;	.scl	2;	.type	32;	.endef
	.def	pdsp_queue_is_not_full;	.scl	2;	.type	32;	.endef
	.def	pdsp_queue_push_ch;	.scl	2;	.type	32;	.endef
	.def	pdsp_queue_pop_ch;	.scl	2;	.type	32;	.endef
	.def	pdsp_queue_is_not_empty;	.scl	2;	.type	32;	.endef
	.def	pdsp_ain;	.scl	2;	.type	32;	.endef
	.def	pdsp_ain_ovr_enable;	.scl	2;	.type	32;	.endef
	.def	pdsp_ain_ovr_disable;	.scl	2;	.type	32;	.endef
	.def	pdsp_ain_ovr_inject;	.scl	2;	.type	32;	.endef
	.def	pdsp_ain_calibrate_gain;	.scl	2;	.type	32;	.endef
	.def	pdsp_minmax_clear;	.scl	2;	.type	32;	.endef
	.def	pdsp_minmax;	.scl	2;	.type	32;	.endef
	.def	pdsp_expavg_clear;	.scl	2;	.type	32;	.endef
	.def	pdsp_expavg;	.scl	2;	.type	32;	.endef
	.def	fopen;	.scl	2;	.type	32;	.endef
	.def	pdsp_expavg_c2d;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
	.def	strerror;	.scl	2;	.type	32;	.endef
	.def	pdsp_df21_clear;	.scl	2;	.type	32;	.endef
	.def	pdsp_df22_clear;	.scl	2;	.type	32;	.endef
	.def	pdsp_df23_clear;	.scl	2;	.type	32;	.endef
	.def	pdsp_df21;	.scl	2;	.type	32;	.endef
	.def	pdsp_df22;	.scl	2;	.type	32;	.endef
	.def	pdsp_df23;	.scl	2;	.type	32;	.endef
	.def	pdsp_med3_clear;	.scl	2;	.type	32;	.endef
	.def	pdsp_med3;	.scl	2;	.type	32;	.endef
	.def	pdsp_rollsum_init;	.scl	2;	.type	32;	.endef
	.def	pdsp_rollsum;	.scl	2;	.type	32;	.endef
	.def	pdsp_rollavg_init;	.scl	2;	.type	32;	.endef
	.def	pdsp_rollavg;	.scl	2;	.type	32;	.endef
	.def	pdsp_rollrms_init;	.scl	2;	.type	32;	.endef
	.def	pdsp_rollrms;	.scl	2;	.type	32;	.endef
	.def	pdsp_delayrf_bool_clear;	.scl	2;	.type	32;	.endef
	.def	pdsp_delayrf_bool;	.scl	2;	.type	32;	.endef
	.def	pdsp_setp_init;	.scl	2;	.type	32;	.endef
	.def	pdsp_setp_reached;	.scl	2;	.type	32;	.endef
	.def	pdsp_setp_set_dest;	.scl	2;	.type	32;	.endef
	.def	pdsp_setp_ramp;	.scl	2;	.type	32;	.endef
	.def	pdsp_setp_step;	.scl	2;	.type	32;	.endef
	.def	pdsp_setp_exp;	.scl	2;	.type	32;	.endef
	.def	pdsp_setp_reset;	.scl	2;	.type	32;	.endef
	.def	fminf;	.scl	2;	.type	32;	.endef
	.def	fmaxf;	.scl	2;	.type	32;	.endef
	.def	pdsp_setp_smooth_init;	.scl	2;	.type	32;	.endef
	.def	pdsp_setp_smooth_reached;	.scl	2;	.type	32;	.endef
	.def	pdsp_setp_smooth_set_time;	.scl	2;	.type	32;	.endef
	.def	pdsp_setp_smooth_set_dest;	.scl	2;	.type	32;	.endef
	.def	pdsp_setp_smooth;	.scl	2;	.type	32;	.endef
	.def	pdsp_pi_clear;	.scl	2;	.type	32;	.endef
	.def	pdsp_pi;	.scl	2;	.type	32;	.endef
	.def	pdsp_pi2;	.scl	2;	.type	32;	.endef
	.def	pdsp_bit_write_u16;	.scl	2;	.type	32;	.endef
	.def	pdsp_bit_read_u16;	.scl	2;	.type	32;	.endef
	.def	pdsp_bit_write_u32;	.scl	2;	.type	32;	.endef
	.def	pdsp_bit_read_u32;	.scl	2;	.type	32;	.endef
	.def	pdsp_signal_write_f32;	.scl	2;	.type	32;	.endef
	.def	pdsp_signal_read_u16;	.scl	2;	.type	32;	.endef
	.def	pdsp_signal_read_f32;	.scl	2;	.type	32;	.endef
	.def	pdsp_signal_write_u16;	.scl	2;	.type	32;	.endef
	.def	pdsp_fault_init;	.scl	2;	.type	32;	.endef
	.def	pdsp_fault_check;	.scl	2;	.type	32;	.endef
