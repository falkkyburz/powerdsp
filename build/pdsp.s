	.file	"pdsp.c"
 # GNU C17 (Rev7, Built by MSYS2 project) version 13.1.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 13.1.0, GMP version 6.2.1, MPFR version 4.2.0-p9, MPC version 1.3.1, isl version isl-0.26-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -mtune=generic -march=nocona -O0
	.text
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
	.align 32
pdsp_mask_i16:
	.word	1
	.word	3
	.word	7
	.word	15
	.word	31
	.word	63
	.word	127
	.word	255
	.word	511
	.word	1023
	.word	2047
	.word	4095
	.word	8191
	.word	16383
	.word	32767
	.word	-1
	.data
	.align 16
pdsp_base16_map:
	.ascii "0123456789ABCDEF"
	.align 32
pdsp_base64_map:
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.section .rdata,"dr"
.LC0:
	.ascii "./pdsp.c\0"
.LC1:
	.ascii "Assert failed: %s:%i\12\0"
	.text
	.globl	pdsp_stopwatch_start
	.def	pdsp_stopwatch_start;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_stopwatch_start
pdsp_stopwatch_start:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movl	%edx, 24(%rbp)	 # u32_hw_now, u32_hw_now
 # ./pdsp.c:85:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L4	 #,
 # ./pdsp.c:85:     PDSP_ASSERT(ps_data != NULL);
	movl	$85, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp83
	movq	%rax, %rdx	 # tmp83,
	leaq	.LC1(%rip), %rax	 #, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	printf	 #
.L4:
 # ./pdsp.c:86:     ps_data->ps_var->u32_time_mem = u32_hw_now;
	movq	16(%rbp), %rax	 # ps_data, tmp85
	movq	(%rax), %rax	 # ps_data_3(D)->ps_var, _1
 # ./pdsp.c:86:     ps_data->ps_var->u32_time_mem = u32_hw_now;
	movl	24(%rbp), %edx	 # u32_hw_now, tmp86
	movl	%edx, (%rax)	 # tmp86, _1->u32_time_mem
 # ./pdsp.c:87: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_stopwatch_stop
	.def	pdsp_stopwatch_stop;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_stopwatch_stop
pdsp_stopwatch_stop:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movl	%edx, 24(%rbp)	 # u32_hw_now, u32_hw_now
 # ./pdsp.c:92:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L6	 #,
 # ./pdsp.c:92:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	16(%rbp), %rax	 # ps_data, tmp93
	movq	(%rax), %rax	 # ps_data_12(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L7	 #,
.L6:
 # ./pdsp.c:92:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$92, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp94
	movq	%rax, %rdx	 # tmp94,
	leaq	.LC1(%rip), %rax	 #, tmp95
	movq	%rax, %rcx	 # tmp95,
	call	printf	 #
.L7:
 # ./pdsp.c:93:     if (ps_data->ps_var->u32_time_mem < u32_hw_now)
	movq	16(%rbp), %rax	 # ps_data, tmp96
	movq	(%rax), %rax	 # ps_data_12(D)->ps_var, _2
 # ./pdsp.c:93:     if (ps_data->ps_var->u32_time_mem < u32_hw_now)
	movl	(%rax), %eax	 # _2->u32_time_mem, _3
 # ./pdsp.c:93:     if (ps_data->ps_var->u32_time_mem < u32_hw_now)
	cmpl	24(%rbp), %eax	 # u32_hw_now, _3
	jnb	.L8	 #,
 # ./pdsp.c:95:         return u32_hw_now - ps_data->ps_var->u32_time_mem;
	movq	16(%rbp), %rax	 # ps_data, tmp97
	movq	(%rax), %rax	 # ps_data_12(D)->ps_var, _4
 # ./pdsp.c:95:         return u32_hw_now - ps_data->ps_var->u32_time_mem;
	movl	(%rax), %edx	 # _4->u32_time_mem, _5
 # ./pdsp.c:95:         return u32_hw_now - ps_data->ps_var->u32_time_mem;
	movl	24(%rbp), %eax	 # u32_hw_now, tmp98
	subl	%edx, %eax	 # _5, _10
	jmp	.L9	 #
.L8:
 # ./pdsp.c:99:         return u32_hw_now - ps_data->ps_var->u32_time_mem + ps_data->u32_hw_max;
	movq	16(%rbp), %rax	 # ps_data, tmp99
	movq	(%rax), %rax	 # ps_data_12(D)->ps_var, _6
 # ./pdsp.c:99:         return u32_hw_now - ps_data->ps_var->u32_time_mem + ps_data->u32_hw_max;
	movl	(%rax), %eax	 # _6->u32_time_mem, _7
 # ./pdsp.c:99:         return u32_hw_now - ps_data->ps_var->u32_time_mem + ps_data->u32_hw_max;
	movl	24(%rbp), %edx	 # u32_hw_now, tmp100
	subl	%eax, %edx	 # _7, _8
 # ./pdsp.c:99:         return u32_hw_now - ps_data->ps_var->u32_time_mem + ps_data->u32_hw_max;
	movq	16(%rbp), %rax	 # ps_data, tmp101
	movl	8(%rax), %eax	 # ps_data_12(D)->u32_hw_max, _9
 # ./pdsp.c:99:         return u32_hw_now - ps_data->ps_var->u32_time_mem + ps_data->u32_hw_max;
	addl	%edx, %eax	 # _8, _10
.L9:
 # ./pdsp.c:101: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_call_i16_func
	.def	pdsp_call_i16_func;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_call_i16_func
pdsp_call_i16_func:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # apf_list, apf_list
	movq	%rdx, 24(%rbp)	 # s_size, s_size
	movl	%r8d, %eax	 # u16_idx, tmp94
	movq	%r9, 40(%rbp)	 # i16_out, i16_out
	movw	%ax, 32(%rbp)	 # tmp95, u16_idx
 # ./pdsp.c:108:     PDSP_ASSERT((apf_list != NULL) && (i16_out != NULL) && s_size);
	cmpq	$0, 16(%rbp)	 #, apf_list
	je	.L11	 #,
 # ./pdsp.c:108:     PDSP_ASSERT((apf_list != NULL) && (i16_out != NULL) && s_size);
	cmpq	$0, 40(%rbp)	 #, i16_out
	je	.L11	 #,
 # ./pdsp.c:108:     PDSP_ASSERT((apf_list != NULL) && (i16_out != NULL) && s_size);
	cmpq	$0, 24(%rbp)	 #, s_size
	jne	.L12	 #,
.L11:
 # ./pdsp.c:108:     PDSP_ASSERT((apf_list != NULL) && (i16_out != NULL) && s_size);
	movl	$108, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp96
	movq	%rax, %rdx	 # tmp96,
	leaq	.LC1(%rip), %rax	 #, tmp97
	movq	%rax, %rcx	 # tmp97,
	call	printf	 #
.L12:
 # ./pdsp.c:109:     if ((apf_list[u16_idx] != PDSP_NULL) && (u16_idx < s_size))
	movzwl	32(%rbp), %eax	 # u16_idx, _1
	leaq	0(,%rax,8), %rdx	 #, _2
	movq	16(%rbp), %rax	 # apf_list, tmp98
	addq	%rdx, %rax	 # _2, _3
	movq	(%rax), %rax	 # *_3, _4
 # ./pdsp.c:109:     if ((apf_list[u16_idx] != PDSP_NULL) && (u16_idx < s_size))
	testq	%rax, %rax	 # _4
	je	.L13	 #,
 # ./pdsp.c:109:     if ((apf_list[u16_idx] != PDSP_NULL) && (u16_idx < s_size))
	movzwl	32(%rbp), %eax	 # u16_idx, _5
 # ./pdsp.c:109:     if ((apf_list[u16_idx] != PDSP_NULL) && (u16_idx < s_size))
	cmpq	24(%rbp), %rax	 # s_size, _5
	jnb	.L13	 #,
 # ./pdsp.c:111:         *i16_out = apf_list[u16_idx]();
	movzwl	32(%rbp), %eax	 # u16_idx, _6
	leaq	0(,%rax,8), %rdx	 #, _7
	movq	16(%rbp), %rax	 # apf_list, tmp99
	addq	%rdx, %rax	 # _7, _8
	movq	(%rax), %rax	 # *_8, _9
 # ./pdsp.c:111:         *i16_out = apf_list[u16_idx]();
	call	*%rax	 # _9
 # ./pdsp.c:111:         *i16_out = apf_list[u16_idx]();
	movq	40(%rbp), %rdx	 # i16_out, tmp100
	movw	%ax, (%rdx)	 # _10, *i16_out_15(D)
 # ./pdsp.c:112:         return PDSP_OK;
	movl	$0, %eax	 #, _11
	jmp	.L14	 #
.L13:
 # ./pdsp.c:114:     return PDSP_ILLEGAL;
	movl	$2, %eax	 #, _11
.L14:
 # ./pdsp.c:115: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_srec_encode
	.def	pdsp_srec_encode;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_srec_encode
pdsp_srec_encode:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ac_start, ac_start
	movq	%rdx, 24(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:121:     PDSP_ASSERT((ac_start != NULL) && (ps_data != NULL));
	cmpq	$0, 16(%rbp)	 #, ac_start
	je	.L16	 #,
 # ./pdsp.c:121:     PDSP_ASSERT((ac_start != NULL) && (ps_data != NULL));
	cmpq	$0, 24(%rbp)	 #, ps_data
	jne	.L17	 #,
.L16:
 # ./pdsp.c:121:     PDSP_ASSERT((ac_start != NULL) && (ps_data != NULL));
	movl	$121, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp84
	movq	%rax, %rdx	 # tmp84,
	leaq	.LC1(%rip), %rax	 #, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	printf	 #
.L17:
 # ./pdsp.c:193:     return ac_start;
	movq	16(%rbp), %rax	 # ac_start, _6
 # ./pdsp.c:194: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_i16_to_string
	.def	pdsp_i16_to_string;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_i16_to_string
pdsp_i16_to_string:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movl	%ecx, %eax	 # i16_in, tmp134
	movq	%rdx, 24(%rbp)	 # a6c_out, a6c_out
	movw	%ax, 16(%rbp)	 # tmp135, i16_in
 # ./pdsp.c:199:     pdsp_i16_t idx = 5;
	movw	$5, -2(%rbp)	 #, idx
 # ./pdsp.c:200:     pdsp_i16_t rem = 0;
	movw	$0, -6(%rbp)	 #, rem
 # ./pdsp.c:201:     pdsp_bool_t neg = PDSP_FALSE;
	movb	$0, -3(%rbp)	 #, neg
 # ./pdsp.c:202:     PDSP_ASSERT(a6c_out != NULL);
	cmpq	$0, 24(%rbp)	 #, a6c_out
	jne	.L20	 #,
 # ./pdsp.c:202:     PDSP_ASSERT(a6c_out != NULL);
	movl	$202, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp136
	movq	%rax, %rdx	 # tmp136,
	leaq	.LC1(%rip), %rax	 #, tmp137
	movq	%rax, %rcx	 # tmp137,
	call	printf	 #
.L20:
 # ./pdsp.c:204:     if (i16_in == -32768)
	cmpw	$-32768, 16(%rbp)	 #, i16_in
	jne	.L21	 #,
 # ./pdsp.c:206:         i16_in = -32767;
	movw	$-32767, 16(%rbp)	 #, i16_in
.L21:
 # ./pdsp.c:209:     if (i16_in < 0)
	cmpw	$0, 16(%rbp)	 #, i16_in
	jns	.L22	 #,
 # ./pdsp.c:211:         i16_in = -i16_in;
	movzwl	16(%rbp), %eax	 # i16_in, i16_in.1_1
	negl	%eax	 # _2
	movw	%ax, 16(%rbp)	 # _2, i16_in
 # ./pdsp.c:212:         neg = PDSP_TRUE;
	movb	$1, -3(%rbp)	 #, neg
.L22:
 # ./pdsp.c:215:     if (i16_in == 0)
	cmpw	$0, 16(%rbp)	 #, i16_in
	jne	.L25	 #,
 # ./pdsp.c:217:         a6c_out[idx--] = '0';
	movzwl	-2(%rbp), %eax	 # idx, idx.2_3
	movl	%eax, %edx	 # idx.2_3, idx.3_4
	subl	$1, %edx	 #, _5
	movw	%dx, -2(%rbp)	 # _5, idx
	movswq	%ax, %rdx	 # idx.2_3, _6
 # ./pdsp.c:217:         a6c_out[idx--] = '0';
	movq	24(%rbp), %rax	 # a6c_out, tmp138
	addq	%rdx, %rax	 # _6, _7
 # ./pdsp.c:217:         a6c_out[idx--] = '0';
	movb	$48, (%rax)	 #, *_7
 # ./pdsp.c:218:         a6c_out[idx--] = ' ';
	movzwl	-2(%rbp), %eax	 # idx, idx.4_8
	movl	%eax, %edx	 # idx.4_8, idx.5_9
	subl	$1, %edx	 #, _10
	movw	%dx, -2(%rbp)	 # _10, idx
	movswq	%ax, %rdx	 # idx.4_8, _11
 # ./pdsp.c:218:         a6c_out[idx--] = ' ';
	movq	24(%rbp), %rax	 # a6c_out, tmp139
	addq	%rdx, %rax	 # _11, _12
 # ./pdsp.c:218:         a6c_out[idx--] = ' ';
	movb	$32, (%rax)	 #, *_12
 # ./pdsp.c:219:         a6c_out[idx--] = ' ';
	movzwl	-2(%rbp), %eax	 # idx, idx.6_13
	movl	%eax, %edx	 # idx.6_13, idx.7_14
	subl	$1, %edx	 #, _15
	movw	%dx, -2(%rbp)	 # _15, idx
	movswq	%ax, %rdx	 # idx.6_13, _16
 # ./pdsp.c:219:         a6c_out[idx--] = ' ';
	movq	24(%rbp), %rax	 # a6c_out, tmp140
	addq	%rdx, %rax	 # _16, _17
 # ./pdsp.c:219:         a6c_out[idx--] = ' ';
	movb	$32, (%rax)	 #, *_17
 # ./pdsp.c:220:         a6c_out[idx--] = ' ';
	movzwl	-2(%rbp), %eax	 # idx, idx.8_18
	movl	%eax, %edx	 # idx.8_18, idx.9_19
	subl	$1, %edx	 #, _20
	movw	%dx, -2(%rbp)	 # _20, idx
	movswq	%ax, %rdx	 # idx.8_18, _21
 # ./pdsp.c:220:         a6c_out[idx--] = ' ';
	movq	24(%rbp), %rax	 # a6c_out, tmp141
	addq	%rdx, %rax	 # _21, _22
 # ./pdsp.c:220:         a6c_out[idx--] = ' ';
	movb	$32, (%rax)	 #, *_22
 # ./pdsp.c:221:         a6c_out[idx--] = ' ';
	movzwl	-2(%rbp), %eax	 # idx, idx.10_23
	movl	%eax, %edx	 # idx.10_23, idx.11_24
	subl	$1, %edx	 #, _25
	movw	%dx, -2(%rbp)	 # _25, idx
	movswq	%ax, %rdx	 # idx.10_23, _26
 # ./pdsp.c:221:         a6c_out[idx--] = ' ';
	movq	24(%rbp), %rax	 # a6c_out, tmp142
	addq	%rdx, %rax	 # _26, _27
 # ./pdsp.c:221:         a6c_out[idx--] = ' ';
	movb	$32, (%rax)	 #, *_27
 # ./pdsp.c:222:         a6c_out[idx--] = ' ';
	movzwl	-2(%rbp), %eax	 # idx, idx.12_28
	movl	%eax, %edx	 # idx.12_28, idx.13_29
	subl	$1, %edx	 #, _30
	movw	%dx, -2(%rbp)	 # _30, idx
	movswq	%ax, %rdx	 # idx.12_28, _31
 # ./pdsp.c:222:         a6c_out[idx--] = ' ';
	movq	24(%rbp), %rax	 # a6c_out, tmp143
	addq	%rdx, %rax	 # _31, _32
 # ./pdsp.c:222:         a6c_out[idx--] = ' ';
	movb	$32, (%rax)	 #, *_32
	jmp	.L24	 #
.L29:
 # ./pdsp.c:229:             if (i16_in != 0)
	cmpw	$0, 16(%rbp)	 #, i16_in
	je	.L26	 #,
 # ./pdsp.c:231:                 rem = i16_in % 10;
	movzwl	16(%rbp), %edx	 # i16_in, tmp145
	movswl	%dx, %eax	 # tmp145, tmp146
	imull	$26215, %eax, %eax	 #, tmp146, tmp147
	shrl	$16, %eax	 #, tmp148
	sarw	$2, %ax	 #, tmp149
	movl	%edx, %r8d	 # tmp145, tmp150
	sarw	$15, %r8w	 #, tmp150
	subl	%r8d, %eax	 # tmp150, tmp149
	movl	%eax, %ecx	 # tmp149, tmp144
	movl	%ecx, %eax	 # tmp144, tmp151
	sall	$2, %eax	 #, tmp151
	addl	%ecx, %eax	 # tmp144, tmp151
	addl	%eax, %eax	 # tmp152
	subl	%eax, %edx	 # tmp151, tmp153
	movw	%dx, -6(%rbp)	 # tmp153, rem
 # ./pdsp.c:232:                 a6c_out[idx--] = rem + '0';
	movzwl	-6(%rbp), %eax	 # rem, tmp154
	leal	48(%rax), %ecx	 #, _34
 # ./pdsp.c:232:                 a6c_out[idx--] = rem + '0';
	movzwl	-2(%rbp), %eax	 # idx, idx.14_35
	movl	%eax, %edx	 # idx.14_35, idx.15_36
	subl	$1, %edx	 #, _37
	movw	%dx, -2(%rbp)	 # _37, idx
	movswq	%ax, %rdx	 # idx.14_35, _38
 # ./pdsp.c:232:                 a6c_out[idx--] = rem + '0';
	movq	24(%rbp), %rax	 # a6c_out, tmp155
	addq	%rdx, %rax	 # _38, _39
 # ./pdsp.c:232:                 a6c_out[idx--] = rem + '0';
	movl	%ecx, %edx	 # _34, _40
 # ./pdsp.c:232:                 a6c_out[idx--] = rem + '0';
	movb	%dl, (%rax)	 # _40, *_39
 # ./pdsp.c:233:                 i16_in = i16_in / 10;
	movzwl	16(%rbp), %eax	 # i16_in, tmp157
	movswl	%ax, %edx	 # tmp157, tmp158
	imull	$26215, %edx, %edx	 #, tmp158, tmp159
	shrl	$16, %edx	 #, tmp160
	sarw	$2, %dx	 #, tmp161
	sarw	$15, %ax	 #, tmp157
	movl	%eax, %ecx	 # tmp157, tmp162
	movl	%edx, %eax	 # tmp161, tmp161
	subl	%ecx, %eax	 # tmp162, tmp161
	movw	%ax, 16(%rbp)	 # tmp156, i16_in
	jmp	.L25	 #
.L26:
 # ./pdsp.c:237:                 if (neg)
	cmpb	$0, -3(%rbp)	 #, neg
	je	.L28	 #,
 # ./pdsp.c:239:                     a6c_out[idx--] = '-';
	movzwl	-2(%rbp), %eax	 # idx, idx.16_41
	movl	%eax, %edx	 # idx.16_41, idx.17_42
	subl	$1, %edx	 #, _43
	movw	%dx, -2(%rbp)	 # _43, idx
	movswq	%ax, %rdx	 # idx.16_41, _44
 # ./pdsp.c:239:                     a6c_out[idx--] = '-';
	movq	24(%rbp), %rax	 # a6c_out, tmp163
	addq	%rdx, %rax	 # _44, _45
 # ./pdsp.c:239:                     a6c_out[idx--] = '-';
	movb	$45, (%rax)	 #, *_45
 # ./pdsp.c:240:                     neg = PDSP_FALSE;
	movb	$0, -3(%rbp)	 #, neg
	jmp	.L25	 #
.L28:
 # ./pdsp.c:244:                     a6c_out[idx--] = ' ';
	movzwl	-2(%rbp), %eax	 # idx, idx.18_46
	movl	%eax, %edx	 # idx.18_46, idx.19_47
	subl	$1, %edx	 #, _48
	movw	%dx, -2(%rbp)	 # _48, idx
	movswq	%ax, %rdx	 # idx.18_46, _49
 # ./pdsp.c:244:                     a6c_out[idx--] = ' ';
	movq	24(%rbp), %rax	 # a6c_out, tmp164
	addq	%rdx, %rax	 # _49, _50
 # ./pdsp.c:244:                     a6c_out[idx--] = ' ';
	movb	$32, (%rax)	 #, *_50
.L25:
 # ./pdsp.c:227:         while (idx >= 0)
	cmpw	$0, -2(%rbp)	 #, idx
	jns	.L29	 #,
.L24:
 # ./pdsp.c:249:     return &a6c_out[6];
	movq	24(%rbp), %rax	 # a6c_out, tmp165
	addq	$6, %rax	 #, _91
 # ./pdsp.c:250: }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_u8_to_base16
	.def	pdsp_u8_to_base16;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_u8_to_base16
pdsp_u8_to_base16:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # dest, dest
	movq	%rdx, 24(%rbp)	 # src, src
	movq	%r8, 32(%rbp)	 # size_src, size_src
 # ./pdsp.c:256:     PDSP_ASSERT((dest != NULL) && (src != NULL));
	cmpq	$0, 16(%rbp)	 #, dest
	je	.L32	 #,
 # ./pdsp.c:256:     PDSP_ASSERT((dest != NULL) && (src != NULL));
	cmpq	$0, 24(%rbp)	 #, src
	jne	.L34	 #,
.L32:
 # ./pdsp.c:256:     PDSP_ASSERT((dest != NULL) && (src != NULL));
	movl	$256, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp96
	movq	%rax, %rdx	 # tmp96,
	leaq	.LC1(%rip), %rax	 #, tmp97
	movq	%rax, %rcx	 # tmp97,
	call	printf	 #
 # ./pdsp.c:257:     for (; size_src > 0; size_src--)
	jmp	.L34	 #
.L35:
 # ./pdsp.c:259:         *dest++ = pdsp_base16_map[(((*src) >> 4) & 0xF)];
	movq	24(%rbp), %rax	 # src, tmp98
	movzbl	(%rax), %eax	 # *src_14, _1
 # ./pdsp.c:259:         *dest++ = pdsp_base16_map[(((*src) >> 4) & 0xF)];
	shrb	$4, %al	 #, _2
	movzbl	%al, %eax	 # _2, _3
	andl	$15, %eax	 #, _3
	movl	%eax, %ecx	 # _3, _4
 # ./pdsp.c:259:         *dest++ = pdsp_base16_map[(((*src) >> 4) & 0xF)];
	movq	16(%rbp), %rax	 # dest, dest.20_5
	leaq	1(%rax), %rdx	 #, tmp99
	movq	%rdx, 16(%rbp)	 # tmp99, dest
 # ./pdsp.c:259:         *dest++ = pdsp_base16_map[(((*src) >> 4) & 0xF)];
	movslq	%ecx, %rdx	 # _4, tmp100
	leaq	pdsp_base16_map(%rip), %rcx	 #, tmp101
	movzbl	(%rdx,%rcx), %edx	 # pdsp_base16_map[_4], _6
 # ./pdsp.c:259:         *dest++ = pdsp_base16_map[(((*src) >> 4) & 0xF)];
	movb	%dl, (%rax)	 # _6, *dest.20_5
 # ./pdsp.c:260:         *dest++ = pdsp_base16_map[((*src++) & 0xF)];
	movq	24(%rbp), %rax	 # src, src.21_7
	leaq	1(%rax), %rdx	 #, tmp102
	movq	%rdx, 24(%rbp)	 # tmp102, src
 # ./pdsp.c:260:         *dest++ = pdsp_base16_map[((*src++) & 0xF)];
	movzbl	(%rax), %eax	 # *src.21_7, _8
 # ./pdsp.c:260:         *dest++ = pdsp_base16_map[((*src++) & 0xF)];
	movzbl	%al, %eax	 # _8, _9
	andl	$15, %eax	 #, _9
	movl	%eax, %ecx	 # _9, _10
 # ./pdsp.c:260:         *dest++ = pdsp_base16_map[((*src++) & 0xF)];
	movq	16(%rbp), %rax	 # dest, dest.22_11
	leaq	1(%rax), %rdx	 #, tmp103
	movq	%rdx, 16(%rbp)	 # tmp103, dest
 # ./pdsp.c:260:         *dest++ = pdsp_base16_map[((*src++) & 0xF)];
	movslq	%ecx, %rdx	 # _10, tmp104
	leaq	pdsp_base16_map(%rip), %rcx	 #, tmp105
	movzbl	(%rdx,%rcx), %edx	 # pdsp_base16_map[_10], _12
 # ./pdsp.c:260:         *dest++ = pdsp_base16_map[((*src++) & 0xF)];
	movb	%dl, (%rax)	 # _12, *dest.22_11
 # ./pdsp.c:257:     for (; size_src > 0; size_src--)
	subq	$1, 32(%rbp)	 #, size_src
.L34:
 # ./pdsp.c:257:     for (; size_src > 0; size_src--)
	cmpq	$0, 32(%rbp)	 #, size_src
	jne	.L35	 #,
 # ./pdsp.c:262:     return dest;
	movq	16(%rbp), %rax	 # dest, _23
 # ./pdsp.c:263: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_u16_to_base16
	.def	pdsp_u16_to_base16;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_u16_to_base16
pdsp_u16_to_base16:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # dest, dest
	movl	%edx, %eax	 # src, tmp103
	movw	%ax, 24(%rbp)	 # tmp104, src
 # ./pdsp.c:267:     PDSP_ASSERT(dest != NULL);
	cmpq	$0, 16(%rbp)	 #, dest
	jne	.L38	 #,
 # ./pdsp.c:267:     PDSP_ASSERT(dest != NULL);
	movl	$267, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp105
	movq	%rax, %rdx	 # tmp105,
	leaq	.LC1(%rip), %rax	 #, tmp106
	movq	%rax, %rcx	 # tmp106,
	call	printf	 #
.L38:
 # ./pdsp.c:268:     *dest++ = pdsp_base16_map[((src >> 12) & 0xF)];
	movzwl	24(%rbp), %eax	 # src, tmp107
	shrw	$12, %ax	 #, _1
	movzwl	%ax, %eax	 # _1, _2
	andl	$15, %eax	 #, _2
	movl	%eax, %ecx	 # _2, _3
 # ./pdsp.c:268:     *dest++ = pdsp_base16_map[((src >> 12) & 0xF)];
	movq	16(%rbp), %rax	 # dest, dest.23_4
	leaq	1(%rax), %rdx	 #, tmp108
	movq	%rdx, 16(%rbp)	 # tmp108, dest
 # ./pdsp.c:268:     *dest++ = pdsp_base16_map[((src >> 12) & 0xF)];
	movslq	%ecx, %rdx	 # _3, tmp109
	leaq	pdsp_base16_map(%rip), %rcx	 #, tmp110
	movzbl	(%rdx,%rcx), %edx	 # pdsp_base16_map[_3], _5
 # ./pdsp.c:268:     *dest++ = pdsp_base16_map[((src >> 12) & 0xF)];
	movb	%dl, (%rax)	 # _5, *dest.23_4
 # ./pdsp.c:269:     *dest++ = pdsp_base16_map[((src >> 8) & 0xF)];
	movzwl	24(%rbp), %eax	 # src, tmp111
	shrw	$8, %ax	 #, _6
	movzwl	%ax, %eax	 # _6, _7
	andl	$15, %eax	 #, _7
	movl	%eax, %ecx	 # _7, _8
 # ./pdsp.c:269:     *dest++ = pdsp_base16_map[((src >> 8) & 0xF)];
	movq	16(%rbp), %rax	 # dest, dest.24_9
	leaq	1(%rax), %rdx	 #, tmp112
	movq	%rdx, 16(%rbp)	 # tmp112, dest
 # ./pdsp.c:269:     *dest++ = pdsp_base16_map[((src >> 8) & 0xF)];
	movslq	%ecx, %rdx	 # _8, tmp113
	leaq	pdsp_base16_map(%rip), %rcx	 #, tmp114
	movzbl	(%rdx,%rcx), %edx	 # pdsp_base16_map[_8], _10
 # ./pdsp.c:269:     *dest++ = pdsp_base16_map[((src >> 8) & 0xF)];
	movb	%dl, (%rax)	 # _10, *dest.24_9
 # ./pdsp.c:270:     *dest++ = pdsp_base16_map[((src >> 4) & 0xF)];
	movzwl	24(%rbp), %eax	 # src, tmp115
	shrw	$4, %ax	 #, _11
	movzwl	%ax, %eax	 # _11, _12
	andl	$15, %eax	 #, _12
	movl	%eax, %ecx	 # _12, _13
 # ./pdsp.c:270:     *dest++ = pdsp_base16_map[((src >> 4) & 0xF)];
	movq	16(%rbp), %rax	 # dest, dest.25_14
	leaq	1(%rax), %rdx	 #, tmp116
	movq	%rdx, 16(%rbp)	 # tmp116, dest
 # ./pdsp.c:270:     *dest++ = pdsp_base16_map[((src >> 4) & 0xF)];
	movslq	%ecx, %rdx	 # _13, tmp117
	leaq	pdsp_base16_map(%rip), %rcx	 #, tmp118
	movzbl	(%rdx,%rcx), %edx	 # pdsp_base16_map[_13], _15
 # ./pdsp.c:270:     *dest++ = pdsp_base16_map[((src >> 4) & 0xF)];
	movb	%dl, (%rax)	 # _15, *dest.25_14
 # ./pdsp.c:271:     *dest++ = pdsp_base16_map[(src & 0xF)];
	movzwl	24(%rbp), %eax	 # src, _16
	andl	$15, %eax	 #, _16
	movl	%eax, %ecx	 # _16, _17
 # ./pdsp.c:271:     *dest++ = pdsp_base16_map[(src & 0xF)];
	movq	16(%rbp), %rax	 # dest, dest.26_18
	leaq	1(%rax), %rdx	 #, tmp119
	movq	%rdx, 16(%rbp)	 # tmp119, dest
 # ./pdsp.c:271:     *dest++ = pdsp_base16_map[(src & 0xF)];
	movslq	%ecx, %rdx	 # _17, tmp120
	leaq	pdsp_base16_map(%rip), %rcx	 #, tmp121
	movzbl	(%rdx,%rcx), %edx	 # pdsp_base16_map[_17], _19
 # ./pdsp.c:271:     *dest++ = pdsp_base16_map[(src & 0xF)];
	movb	%dl, (%rax)	 # _19, *dest.26_18
 # ./pdsp.c:272:     return dest;
	movq	16(%rbp), %rax	 # dest, _33
 # ./pdsp.c:273: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_u32_to_base16
	.def	pdsp_u32_to_base16;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_u32_to_base16
pdsp_u32_to_base16:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # dest, dest
	movl	%edx, 24(%rbp)	 # src, src
 # ./pdsp.c:277:     PDSP_ASSERT(dest != NULL);
	cmpq	$0, 16(%rbp)	 #, dest
	jne	.L41	 #,
 # ./pdsp.c:277:     PDSP_ASSERT(dest != NULL);
	movl	$277, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp114
	movq	%rax, %rdx	 # tmp114,
	leaq	.LC1(%rip), %rax	 #, tmp115
	movq	%rax, %rcx	 # tmp115,
	call	printf	 #
.L41:
 # ./pdsp.c:278:     *dest++ = pdsp_base16_map[((src >> 28) & 0xF)];
	movl	24(%rbp), %eax	 # src, tmp116
	shrl	$28, %eax	 #, tmp116
	movl	%eax, %ecx	 # tmp116, _1
 # ./pdsp.c:278:     *dest++ = pdsp_base16_map[((src >> 28) & 0xF)];
	movq	16(%rbp), %rax	 # dest, dest.27_2
	leaq	1(%rax), %rdx	 #, tmp117
	movq	%rdx, 16(%rbp)	 # tmp117, dest
 # ./pdsp.c:278:     *dest++ = pdsp_base16_map[((src >> 28) & 0xF)];
	movl	%ecx, %ecx	 # _1, tmp118
	leaq	pdsp_base16_map(%rip), %rdx	 #, tmp119
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base16_map[_1], _3
 # ./pdsp.c:278:     *dest++ = pdsp_base16_map[((src >> 28) & 0xF)];
	movb	%dl, (%rax)	 # _3, *dest.27_2
 # ./pdsp.c:279:     *dest++ = pdsp_base16_map[((src >> 24) & 0xF)];
	movl	24(%rbp), %eax	 # src, tmp120
	shrl	$24, %eax	 #, _4
 # ./pdsp.c:279:     *dest++ = pdsp_base16_map[((src >> 24) & 0xF)];
	andl	$15, %eax	 #, _4
	movl	%eax, %ecx	 # _4, _5
 # ./pdsp.c:279:     *dest++ = pdsp_base16_map[((src >> 24) & 0xF)];
	movq	16(%rbp), %rax	 # dest, dest.28_6
	leaq	1(%rax), %rdx	 #, tmp121
	movq	%rdx, 16(%rbp)	 # tmp121, dest
 # ./pdsp.c:279:     *dest++ = pdsp_base16_map[((src >> 24) & 0xF)];
	movl	%ecx, %ecx	 # _5, tmp122
	leaq	pdsp_base16_map(%rip), %rdx	 #, tmp123
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base16_map[_5], _7
 # ./pdsp.c:279:     *dest++ = pdsp_base16_map[((src >> 24) & 0xF)];
	movb	%dl, (%rax)	 # _7, *dest.28_6
 # ./pdsp.c:280:     *dest++ = pdsp_base16_map[((src >> 20) & 0xF)];
	movl	24(%rbp), %eax	 # src, tmp124
	shrl	$20, %eax	 #, _8
 # ./pdsp.c:280:     *dest++ = pdsp_base16_map[((src >> 20) & 0xF)];
	andl	$15, %eax	 #, _8
	movl	%eax, %ecx	 # _8, _9
 # ./pdsp.c:280:     *dest++ = pdsp_base16_map[((src >> 20) & 0xF)];
	movq	16(%rbp), %rax	 # dest, dest.29_10
	leaq	1(%rax), %rdx	 #, tmp125
	movq	%rdx, 16(%rbp)	 # tmp125, dest
 # ./pdsp.c:280:     *dest++ = pdsp_base16_map[((src >> 20) & 0xF)];
	movl	%ecx, %ecx	 # _9, tmp126
	leaq	pdsp_base16_map(%rip), %rdx	 #, tmp127
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base16_map[_9], _11
 # ./pdsp.c:280:     *dest++ = pdsp_base16_map[((src >> 20) & 0xF)];
	movb	%dl, (%rax)	 # _11, *dest.29_10
 # ./pdsp.c:281:     *dest++ = pdsp_base16_map[((src >> 16) & 0xF)];
	movl	24(%rbp), %eax	 # src, tmp128
	shrl	$16, %eax	 #, _12
 # ./pdsp.c:281:     *dest++ = pdsp_base16_map[((src >> 16) & 0xF)];
	andl	$15, %eax	 #, _12
	movl	%eax, %ecx	 # _12, _13
 # ./pdsp.c:281:     *dest++ = pdsp_base16_map[((src >> 16) & 0xF)];
	movq	16(%rbp), %rax	 # dest, dest.30_14
	leaq	1(%rax), %rdx	 #, tmp129
	movq	%rdx, 16(%rbp)	 # tmp129, dest
 # ./pdsp.c:281:     *dest++ = pdsp_base16_map[((src >> 16) & 0xF)];
	movl	%ecx, %ecx	 # _13, tmp130
	leaq	pdsp_base16_map(%rip), %rdx	 #, tmp131
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base16_map[_13], _15
 # ./pdsp.c:281:     *dest++ = pdsp_base16_map[((src >> 16) & 0xF)];
	movb	%dl, (%rax)	 # _15, *dest.30_14
 # ./pdsp.c:282:     *dest++ = pdsp_base16_map[((src >> 12) & 0xF)];
	movl	24(%rbp), %eax	 # src, tmp132
	shrl	$12, %eax	 #, _16
 # ./pdsp.c:282:     *dest++ = pdsp_base16_map[((src >> 12) & 0xF)];
	andl	$15, %eax	 #, _16
	movl	%eax, %ecx	 # _16, _17
 # ./pdsp.c:282:     *dest++ = pdsp_base16_map[((src >> 12) & 0xF)];
	movq	16(%rbp), %rax	 # dest, dest.31_18
	leaq	1(%rax), %rdx	 #, tmp133
	movq	%rdx, 16(%rbp)	 # tmp133, dest
 # ./pdsp.c:282:     *dest++ = pdsp_base16_map[((src >> 12) & 0xF)];
	movl	%ecx, %ecx	 # _17, tmp134
	leaq	pdsp_base16_map(%rip), %rdx	 #, tmp135
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base16_map[_17], _19
 # ./pdsp.c:282:     *dest++ = pdsp_base16_map[((src >> 12) & 0xF)];
	movb	%dl, (%rax)	 # _19, *dest.31_18
 # ./pdsp.c:283:     *dest++ = pdsp_base16_map[((src >> 8) & 0xF)];
	movl	24(%rbp), %eax	 # src, tmp136
	shrl	$8, %eax	 #, _20
 # ./pdsp.c:283:     *dest++ = pdsp_base16_map[((src >> 8) & 0xF)];
	andl	$15, %eax	 #, _20
	movl	%eax, %ecx	 # _20, _21
 # ./pdsp.c:283:     *dest++ = pdsp_base16_map[((src >> 8) & 0xF)];
	movq	16(%rbp), %rax	 # dest, dest.32_22
	leaq	1(%rax), %rdx	 #, tmp137
	movq	%rdx, 16(%rbp)	 # tmp137, dest
 # ./pdsp.c:283:     *dest++ = pdsp_base16_map[((src >> 8) & 0xF)];
	movl	%ecx, %ecx	 # _21, tmp138
	leaq	pdsp_base16_map(%rip), %rdx	 #, tmp139
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base16_map[_21], _23
 # ./pdsp.c:283:     *dest++ = pdsp_base16_map[((src >> 8) & 0xF)];
	movb	%dl, (%rax)	 # _23, *dest.32_22
 # ./pdsp.c:284:     *dest++ = pdsp_base16_map[((src >> 4) & 0xF)];
	movl	24(%rbp), %eax	 # src, tmp140
	shrl	$4, %eax	 #, _24
 # ./pdsp.c:284:     *dest++ = pdsp_base16_map[((src >> 4) & 0xF)];
	andl	$15, %eax	 #, _24
	movl	%eax, %ecx	 # _24, _25
 # ./pdsp.c:284:     *dest++ = pdsp_base16_map[((src >> 4) & 0xF)];
	movq	16(%rbp), %rax	 # dest, dest.33_26
	leaq	1(%rax), %rdx	 #, tmp141
	movq	%rdx, 16(%rbp)	 # tmp141, dest
 # ./pdsp.c:284:     *dest++ = pdsp_base16_map[((src >> 4) & 0xF)];
	movl	%ecx, %ecx	 # _25, tmp142
	leaq	pdsp_base16_map(%rip), %rdx	 #, tmp143
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base16_map[_25], _27
 # ./pdsp.c:284:     *dest++ = pdsp_base16_map[((src >> 4) & 0xF)];
	movb	%dl, (%rax)	 # _27, *dest.33_26
 # ./pdsp.c:285:     *dest++ = pdsp_base16_map[(src & 0xF)];
	movl	24(%rbp), %eax	 # src, tmp144
	andl	$15, %eax	 #, tmp144
	movl	%eax, %ecx	 # tmp144, _28
 # ./pdsp.c:285:     *dest++ = pdsp_base16_map[(src & 0xF)];
	movq	16(%rbp), %rax	 # dest, dest.34_29
	leaq	1(%rax), %rdx	 #, tmp145
	movq	%rdx, 16(%rbp)	 # tmp145, dest
 # ./pdsp.c:285:     *dest++ = pdsp_base16_map[(src & 0xF)];
	movl	%ecx, %ecx	 # _28, tmp146
	leaq	pdsp_base16_map(%rip), %rdx	 #, tmp147
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base16_map[_28], _30
 # ./pdsp.c:285:     *dest++ = pdsp_base16_map[(src & 0xF)];
	movb	%dl, (%rax)	 # _30, *dest.34_29
 # ./pdsp.c:286:     return dest;
	movq	16(%rbp), %rax	 # dest, _52
 # ./pdsp.c:287: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_u64_to_base16
	.def	pdsp_u64_to_base16;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_u64_to_base16
pdsp_u64_to_base16:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # dest, dest
	movq	%rdx, 24(%rbp)	 # src, src
 # ./pdsp.c:291:     PDSP_ASSERT(dest != NULL);
	cmpq	$0, 16(%rbp)	 #, dest
	jne	.L44	 #,
 # ./pdsp.c:291:     PDSP_ASSERT(dest != NULL);
	movl	$291, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp87
	movq	%rax, %rdx	 # tmp87,
	leaq	.LC1(%rip), %rax	 #, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	printf	 #
.L44:
 # ./pdsp.c:292:     dest = pdsp_u32_to_base16(dest, (src >> 32) & 0xFFFFFFFF);
	movq	24(%rbp), %rax	 # src, tmp89
	shrq	$32, %rax	 #, _1
 # ./pdsp.c:292:     dest = pdsp_u32_to_base16(dest, (src >> 32) & 0xFFFFFFFF);
	movl	%eax, %edx	 # _1, _2
	movq	16(%rbp), %rax	 # dest, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	pdsp_u32_to_base16	 #
	movq	%rax, 16(%rbp)	 # tmp91, dest
 # ./pdsp.c:293:     dest = pdsp_u32_to_base16(dest, src & 0xFFFFFFFF);
	movq	24(%rbp), %rax	 # src, tmp92
	movl	%eax, %edx	 # tmp92, _3
	movq	16(%rbp), %rax	 # dest, tmp93
	movq	%rax, %rcx	 # tmp93,
	call	pdsp_u32_to_base16	 #
	movq	%rax, 16(%rbp)	 # tmp94, dest
 # ./pdsp.c:294:     return dest;
	movq	16(%rbp), %rax	 # dest, _13
 # ./pdsp.c:295: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_u16_to_base64
	.def	pdsp_u16_to_base64;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_u16_to_base64
pdsp_u16_to_base64:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # dest, dest
	movl	%edx, %eax	 # src, tmp99
	movw	%ax, 24(%rbp)	 # tmp100, src
 # ./pdsp.c:299:     PDSP_ASSERT(dest != NULL);
	cmpq	$0, 16(%rbp)	 #, dest
	jne	.L47	 #,
 # ./pdsp.c:299:     PDSP_ASSERT(dest != NULL);
	movl	$299, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp101
	movq	%rax, %rdx	 # tmp101,
	leaq	.LC1(%rip), %rax	 #, tmp102
	movq	%rax, %rcx	 # tmp102,
	call	printf	 #
.L47:
 # ./pdsp.c:300:     *dest++ = pdsp_base64_map[((src >> 10) & 0x3F)];
	movzwl	24(%rbp), %eax	 # src, tmp103
	shrw	$10, %ax	 #, _1
	movzwl	%ax, %eax	 # _1, _2
	andl	$63, %eax	 #, _2
	movl	%eax, %ecx	 # _2, _3
 # ./pdsp.c:300:     *dest++ = pdsp_base64_map[((src >> 10) & 0x3F)];
	movq	16(%rbp), %rax	 # dest, dest.35_4
	leaq	1(%rax), %rdx	 #, tmp104
	movq	%rdx, 16(%rbp)	 # tmp104, dest
 # ./pdsp.c:300:     *dest++ = pdsp_base64_map[((src >> 10) & 0x3F)];
	movslq	%ecx, %rdx	 # _3, tmp105
	leaq	pdsp_base64_map(%rip), %rcx	 #, tmp106
	movzbl	(%rdx,%rcx), %edx	 # pdsp_base64_map[_3], _5
 # ./pdsp.c:300:     *dest++ = pdsp_base64_map[((src >> 10) & 0x3F)];
	movb	%dl, (%rax)	 # _5, *dest.35_4
 # ./pdsp.c:301:     *dest++ = pdsp_base64_map[((src >> 4) & 0x3F)];
	movzwl	24(%rbp), %eax	 # src, tmp107
	shrw	$4, %ax	 #, _6
	movzwl	%ax, %eax	 # _6, _7
	andl	$63, %eax	 #, _7
	movl	%eax, %ecx	 # _7, _8
 # ./pdsp.c:301:     *dest++ = pdsp_base64_map[((src >> 4) & 0x3F)];
	movq	16(%rbp), %rax	 # dest, dest.36_9
	leaq	1(%rax), %rdx	 #, tmp108
	movq	%rdx, 16(%rbp)	 # tmp108, dest
 # ./pdsp.c:301:     *dest++ = pdsp_base64_map[((src >> 4) & 0x3F)];
	movslq	%ecx, %rdx	 # _8, tmp109
	leaq	pdsp_base64_map(%rip), %rcx	 #, tmp110
	movzbl	(%rdx,%rcx), %edx	 # pdsp_base64_map[_8], _10
 # ./pdsp.c:301:     *dest++ = pdsp_base64_map[((src >> 4) & 0x3F)];
	movb	%dl, (%rax)	 # _10, *dest.36_9
 # ./pdsp.c:302:     *dest++ = pdsp_base64_map[((src << 2) & 0x3F)];
	movzwl	24(%rbp), %eax	 # src, _11
	sall	$2, %eax	 #, _12
 # ./pdsp.c:302:     *dest++ = pdsp_base64_map[((src << 2) & 0x3F)];
	andl	$63, %eax	 #, _12
	movl	%eax, %ecx	 # _12, _13
 # ./pdsp.c:302:     *dest++ = pdsp_base64_map[((src << 2) & 0x3F)];
	movq	16(%rbp), %rax	 # dest, dest.37_14
	leaq	1(%rax), %rdx	 #, tmp111
	movq	%rdx, 16(%rbp)	 # tmp111, dest
 # ./pdsp.c:302:     *dest++ = pdsp_base64_map[((src << 2) & 0x3F)];
	movslq	%ecx, %rdx	 # _13, tmp112
	leaq	pdsp_base64_map(%rip), %rcx	 #, tmp113
	movzbl	(%rdx,%rcx), %edx	 # pdsp_base64_map[_13], _15
 # ./pdsp.c:302:     *dest++ = pdsp_base64_map[((src << 2) & 0x3F)];
	movb	%dl, (%rax)	 # _15, *dest.37_14
 # ./pdsp.c:303:     return dest;
	movq	16(%rbp), %rax	 # dest, _27
 # ./pdsp.c:304: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_u32_to_base64
	.def	pdsp_u32_to_base64;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_u32_to_base64
pdsp_u32_to_base64:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # dest, dest
	movl	%edx, 24(%rbp)	 # src, src
 # ./pdsp.c:308:     PDSP_ASSERT(dest != NULL);
	cmpq	$0, 16(%rbp)	 #, dest
	jne	.L50	 #,
 # ./pdsp.c:308:     PDSP_ASSERT(dest != NULL);
	movl	$308, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp107
	movq	%rax, %rdx	 # tmp107,
	leaq	.LC1(%rip), %rax	 #, tmp108
	movq	%rax, %rcx	 # tmp108,
	call	printf	 #
.L50:
 # ./pdsp.c:309:     *dest++ = pdsp_base64_map[((src >> 26) & 0x3F)];
	movl	24(%rbp), %eax	 # src, tmp109
	shrl	$26, %eax	 #, tmp109
	movl	%eax, %ecx	 # tmp109, _1
 # ./pdsp.c:309:     *dest++ = pdsp_base64_map[((src >> 26) & 0x3F)];
	movq	16(%rbp), %rax	 # dest, dest.38_2
	leaq	1(%rax), %rdx	 #, tmp110
	movq	%rdx, 16(%rbp)	 # tmp110, dest
 # ./pdsp.c:309:     *dest++ = pdsp_base64_map[((src >> 26) & 0x3F)];
	movl	%ecx, %ecx	 # _1, tmp111
	leaq	pdsp_base64_map(%rip), %rdx	 #, tmp112
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base64_map[_1], _3
 # ./pdsp.c:309:     *dest++ = pdsp_base64_map[((src >> 26) & 0x3F)];
	movb	%dl, (%rax)	 # _3, *dest.38_2
 # ./pdsp.c:310:     *dest++ = pdsp_base64_map[((src >> 20) & 0x3F)];
	movl	24(%rbp), %eax	 # src, tmp113
	shrl	$20, %eax	 #, _4
 # ./pdsp.c:310:     *dest++ = pdsp_base64_map[((src >> 20) & 0x3F)];
	andl	$63, %eax	 #, _4
	movl	%eax, %ecx	 # _4, _5
 # ./pdsp.c:310:     *dest++ = pdsp_base64_map[((src >> 20) & 0x3F)];
	movq	16(%rbp), %rax	 # dest, dest.39_6
	leaq	1(%rax), %rdx	 #, tmp114
	movq	%rdx, 16(%rbp)	 # tmp114, dest
 # ./pdsp.c:310:     *dest++ = pdsp_base64_map[((src >> 20) & 0x3F)];
	movl	%ecx, %ecx	 # _5, tmp115
	leaq	pdsp_base64_map(%rip), %rdx	 #, tmp116
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base64_map[_5], _7
 # ./pdsp.c:310:     *dest++ = pdsp_base64_map[((src >> 20) & 0x3F)];
	movb	%dl, (%rax)	 # _7, *dest.39_6
 # ./pdsp.c:311:     *dest++ = pdsp_base64_map[((src >> 14) & 0x3F)];
	movl	24(%rbp), %eax	 # src, tmp117
	shrl	$14, %eax	 #, _8
 # ./pdsp.c:311:     *dest++ = pdsp_base64_map[((src >> 14) & 0x3F)];
	andl	$63, %eax	 #, _8
	movl	%eax, %ecx	 # _8, _9
 # ./pdsp.c:311:     *dest++ = pdsp_base64_map[((src >> 14) & 0x3F)];
	movq	16(%rbp), %rax	 # dest, dest.40_10
	leaq	1(%rax), %rdx	 #, tmp118
	movq	%rdx, 16(%rbp)	 # tmp118, dest
 # ./pdsp.c:311:     *dest++ = pdsp_base64_map[((src >> 14) & 0x3F)];
	movl	%ecx, %ecx	 # _9, tmp119
	leaq	pdsp_base64_map(%rip), %rdx	 #, tmp120
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base64_map[_9], _11
 # ./pdsp.c:311:     *dest++ = pdsp_base64_map[((src >> 14) & 0x3F)];
	movb	%dl, (%rax)	 # _11, *dest.40_10
 # ./pdsp.c:312:     *dest++ = pdsp_base64_map[((src >> 8) & 0x3F)];
	movl	24(%rbp), %eax	 # src, tmp121
	shrl	$8, %eax	 #, _12
 # ./pdsp.c:312:     *dest++ = pdsp_base64_map[((src >> 8) & 0x3F)];
	andl	$63, %eax	 #, _12
	movl	%eax, %ecx	 # _12, _13
 # ./pdsp.c:312:     *dest++ = pdsp_base64_map[((src >> 8) & 0x3F)];
	movq	16(%rbp), %rax	 # dest, dest.41_14
	leaq	1(%rax), %rdx	 #, tmp122
	movq	%rdx, 16(%rbp)	 # tmp122, dest
 # ./pdsp.c:312:     *dest++ = pdsp_base64_map[((src >> 8) & 0x3F)];
	movl	%ecx, %ecx	 # _13, tmp123
	leaq	pdsp_base64_map(%rip), %rdx	 #, tmp124
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base64_map[_13], _15
 # ./pdsp.c:312:     *dest++ = pdsp_base64_map[((src >> 8) & 0x3F)];
	movb	%dl, (%rax)	 # _15, *dest.41_14
 # ./pdsp.c:313:     *dest++ = pdsp_base64_map[((src >> 2) & 0x3F)];
	movl	24(%rbp), %eax	 # src, tmp125
	shrl	$2, %eax	 #, _16
 # ./pdsp.c:313:     *dest++ = pdsp_base64_map[((src >> 2) & 0x3F)];
	andl	$63, %eax	 #, _16
	movl	%eax, %ecx	 # _16, _17
 # ./pdsp.c:313:     *dest++ = pdsp_base64_map[((src >> 2) & 0x3F)];
	movq	16(%rbp), %rax	 # dest, dest.42_18
	leaq	1(%rax), %rdx	 #, tmp126
	movq	%rdx, 16(%rbp)	 # tmp126, dest
 # ./pdsp.c:313:     *dest++ = pdsp_base64_map[((src >> 2) & 0x3F)];
	movl	%ecx, %ecx	 # _17, tmp127
	leaq	pdsp_base64_map(%rip), %rdx	 #, tmp128
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base64_map[_17], _19
 # ./pdsp.c:313:     *dest++ = pdsp_base64_map[((src >> 2) & 0x3F)];
	movb	%dl, (%rax)	 # _19, *dest.42_18
 # ./pdsp.c:314:     *dest++ = pdsp_base64_map[((src << 4) & 0x3F)];
	movl	24(%rbp), %eax	 # src, tmp129
	sall	$4, %eax	 #, _20
 # ./pdsp.c:314:     *dest++ = pdsp_base64_map[((src << 4) & 0x3F)];
	andl	$63, %eax	 #, _20
	movl	%eax, %ecx	 # _20, _21
 # ./pdsp.c:314:     *dest++ = pdsp_base64_map[((src << 4) & 0x3F)];
	movq	16(%rbp), %rax	 # dest, dest.43_22
	leaq	1(%rax), %rdx	 #, tmp130
	movq	%rdx, 16(%rbp)	 # tmp130, dest
 # ./pdsp.c:314:     *dest++ = pdsp_base64_map[((src << 4) & 0x3F)];
	movl	%ecx, %ecx	 # _21, tmp131
	leaq	pdsp_base64_map(%rip), %rdx	 #, tmp132
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base64_map[_21], _23
 # ./pdsp.c:314:     *dest++ = pdsp_base64_map[((src << 4) & 0x3F)];
	movb	%dl, (%rax)	 # _23, *dest.43_22
 # ./pdsp.c:315:     return dest;
	movq	16(%rbp), %rax	 # dest, _41
 # ./pdsp.c:316: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_u64_to_base64
	.def	pdsp_u64_to_base64;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_u64_to_base64
pdsp_u64_to_base64:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # dest, dest
	movq	%rdx, 24(%rbp)	 # src, src
 # ./pdsp.c:320:     PDSP_ASSERT(dest != NULL);
	cmpq	$0, 16(%rbp)	 #, dest
	jne	.L53	 #,
 # ./pdsp.c:320:     PDSP_ASSERT(dest != NULL);
	movl	$320, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp127
	movq	%rax, %rdx	 # tmp127,
	leaq	.LC1(%rip), %rax	 #, tmp128
	movq	%rax, %rcx	 # tmp128,
	call	printf	 #
.L53:
 # ./pdsp.c:321:     *dest++ = pdsp_base64_map[((src >> 58) & 0x3F)];
	movq	24(%rbp), %rax	 # src, tmp129
	shrq	$58, %rax	 #, tmp129
	movq	%rax, %rcx	 # tmp129, _1
 # ./pdsp.c:321:     *dest++ = pdsp_base64_map[((src >> 58) & 0x3F)];
	movq	16(%rbp), %rax	 # dest, dest.44_2
	leaq	1(%rax), %rdx	 #, tmp130
	movq	%rdx, 16(%rbp)	 # tmp130, dest
 # ./pdsp.c:321:     *dest++ = pdsp_base64_map[((src >> 58) & 0x3F)];
	leaq	pdsp_base64_map(%rip), %rdx	 #, tmp131
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base64_map[_1], _3
 # ./pdsp.c:321:     *dest++ = pdsp_base64_map[((src >> 58) & 0x3F)];
	movb	%dl, (%rax)	 # _3, *dest.44_2
 # ./pdsp.c:322:     *dest++ = pdsp_base64_map[((src >> 52) & 0x3F)];
	movq	24(%rbp), %rax	 # src, tmp132
	shrq	$52, %rax	 #, _4
 # ./pdsp.c:322:     *dest++ = pdsp_base64_map[((src >> 52) & 0x3F)];
	andl	$63, %eax	 #, _4
	movq	%rax, %rcx	 # _4, _5
 # ./pdsp.c:322:     *dest++ = pdsp_base64_map[((src >> 52) & 0x3F)];
	movq	16(%rbp), %rax	 # dest, dest.45_6
	leaq	1(%rax), %rdx	 #, tmp133
	movq	%rdx, 16(%rbp)	 # tmp133, dest
 # ./pdsp.c:322:     *dest++ = pdsp_base64_map[((src >> 52) & 0x3F)];
	leaq	pdsp_base64_map(%rip), %rdx	 #, tmp134
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base64_map[_5], _7
 # ./pdsp.c:322:     *dest++ = pdsp_base64_map[((src >> 52) & 0x3F)];
	movb	%dl, (%rax)	 # _7, *dest.45_6
 # ./pdsp.c:323:     *dest++ = pdsp_base64_map[((src >> 46) & 0x3F)];
	movq	24(%rbp), %rax	 # src, tmp135
	shrq	$46, %rax	 #, _8
 # ./pdsp.c:323:     *dest++ = pdsp_base64_map[((src >> 46) & 0x3F)];
	andl	$63, %eax	 #, _8
	movq	%rax, %rcx	 # _8, _9
 # ./pdsp.c:323:     *dest++ = pdsp_base64_map[((src >> 46) & 0x3F)];
	movq	16(%rbp), %rax	 # dest, dest.46_10
	leaq	1(%rax), %rdx	 #, tmp136
	movq	%rdx, 16(%rbp)	 # tmp136, dest
 # ./pdsp.c:323:     *dest++ = pdsp_base64_map[((src >> 46) & 0x3F)];
	leaq	pdsp_base64_map(%rip), %rdx	 #, tmp137
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base64_map[_9], _11
 # ./pdsp.c:323:     *dest++ = pdsp_base64_map[((src >> 46) & 0x3F)];
	movb	%dl, (%rax)	 # _11, *dest.46_10
 # ./pdsp.c:324:     *dest++ = pdsp_base64_map[((src >> 40) & 0x3F)];
	movq	24(%rbp), %rax	 # src, tmp138
	shrq	$40, %rax	 #, _12
 # ./pdsp.c:324:     *dest++ = pdsp_base64_map[((src >> 40) & 0x3F)];
	andl	$63, %eax	 #, _12
	movq	%rax, %rcx	 # _12, _13
 # ./pdsp.c:324:     *dest++ = pdsp_base64_map[((src >> 40) & 0x3F)];
	movq	16(%rbp), %rax	 # dest, dest.47_14
	leaq	1(%rax), %rdx	 #, tmp139
	movq	%rdx, 16(%rbp)	 # tmp139, dest
 # ./pdsp.c:324:     *dest++ = pdsp_base64_map[((src >> 40) & 0x3F)];
	leaq	pdsp_base64_map(%rip), %rdx	 #, tmp140
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base64_map[_13], _15
 # ./pdsp.c:324:     *dest++ = pdsp_base64_map[((src >> 40) & 0x3F)];
	movb	%dl, (%rax)	 # _15, *dest.47_14
 # ./pdsp.c:325:     *dest++ = pdsp_base64_map[((src >> 34) & 0x3F)];
	movq	24(%rbp), %rax	 # src, tmp141
	shrq	$34, %rax	 #, _16
 # ./pdsp.c:325:     *dest++ = pdsp_base64_map[((src >> 34) & 0x3F)];
	andl	$63, %eax	 #, _16
	movq	%rax, %rcx	 # _16, _17
 # ./pdsp.c:325:     *dest++ = pdsp_base64_map[((src >> 34) & 0x3F)];
	movq	16(%rbp), %rax	 # dest, dest.48_18
	leaq	1(%rax), %rdx	 #, tmp142
	movq	%rdx, 16(%rbp)	 # tmp142, dest
 # ./pdsp.c:325:     *dest++ = pdsp_base64_map[((src >> 34) & 0x3F)];
	leaq	pdsp_base64_map(%rip), %rdx	 #, tmp143
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base64_map[_17], _19
 # ./pdsp.c:325:     *dest++ = pdsp_base64_map[((src >> 34) & 0x3F)];
	movb	%dl, (%rax)	 # _19, *dest.48_18
 # ./pdsp.c:326:     *dest++ = pdsp_base64_map[((src >> 28) & 0x3F)];
	movq	24(%rbp), %rax	 # src, tmp144
	shrq	$28, %rax	 #, _20
 # ./pdsp.c:326:     *dest++ = pdsp_base64_map[((src >> 28) & 0x3F)];
	andl	$63, %eax	 #, _20
	movq	%rax, %rcx	 # _20, _21
 # ./pdsp.c:326:     *dest++ = pdsp_base64_map[((src >> 28) & 0x3F)];
	movq	16(%rbp), %rax	 # dest, dest.49_22
	leaq	1(%rax), %rdx	 #, tmp145
	movq	%rdx, 16(%rbp)	 # tmp145, dest
 # ./pdsp.c:326:     *dest++ = pdsp_base64_map[((src >> 28) & 0x3F)];
	leaq	pdsp_base64_map(%rip), %rdx	 #, tmp146
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base64_map[_21], _23
 # ./pdsp.c:326:     *dest++ = pdsp_base64_map[((src >> 28) & 0x3F)];
	movb	%dl, (%rax)	 # _23, *dest.49_22
 # ./pdsp.c:327:     *dest++ = pdsp_base64_map[((src >> 22) & 0x3F)];
	movq	24(%rbp), %rax	 # src, tmp147
	shrq	$22, %rax	 #, _24
 # ./pdsp.c:327:     *dest++ = pdsp_base64_map[((src >> 22) & 0x3F)];
	andl	$63, %eax	 #, _24
	movq	%rax, %rcx	 # _24, _25
 # ./pdsp.c:327:     *dest++ = pdsp_base64_map[((src >> 22) & 0x3F)];
	movq	16(%rbp), %rax	 # dest, dest.50_26
	leaq	1(%rax), %rdx	 #, tmp148
	movq	%rdx, 16(%rbp)	 # tmp148, dest
 # ./pdsp.c:327:     *dest++ = pdsp_base64_map[((src >> 22) & 0x3F)];
	leaq	pdsp_base64_map(%rip), %rdx	 #, tmp149
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base64_map[_25], _27
 # ./pdsp.c:327:     *dest++ = pdsp_base64_map[((src >> 22) & 0x3F)];
	movb	%dl, (%rax)	 # _27, *dest.50_26
 # ./pdsp.c:328:     *dest++ = pdsp_base64_map[((src >> 16) & 0x3F)];
	movq	24(%rbp), %rax	 # src, tmp150
	shrq	$16, %rax	 #, _28
 # ./pdsp.c:328:     *dest++ = pdsp_base64_map[((src >> 16) & 0x3F)];
	andl	$63, %eax	 #, _28
	movq	%rax, %rcx	 # _28, _29
 # ./pdsp.c:328:     *dest++ = pdsp_base64_map[((src >> 16) & 0x3F)];
	movq	16(%rbp), %rax	 # dest, dest.51_30
	leaq	1(%rax), %rdx	 #, tmp151
	movq	%rdx, 16(%rbp)	 # tmp151, dest
 # ./pdsp.c:328:     *dest++ = pdsp_base64_map[((src >> 16) & 0x3F)];
	leaq	pdsp_base64_map(%rip), %rdx	 #, tmp152
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base64_map[_29], _31
 # ./pdsp.c:328:     *dest++ = pdsp_base64_map[((src >> 16) & 0x3F)];
	movb	%dl, (%rax)	 # _31, *dest.51_30
 # ./pdsp.c:329:     *dest++ = pdsp_base64_map[((src >> 10) & 0x3F)];
	movq	24(%rbp), %rax	 # src, tmp153
	shrq	$10, %rax	 #, _32
 # ./pdsp.c:329:     *dest++ = pdsp_base64_map[((src >> 10) & 0x3F)];
	andl	$63, %eax	 #, _32
	movq	%rax, %rcx	 # _32, _33
 # ./pdsp.c:329:     *dest++ = pdsp_base64_map[((src >> 10) & 0x3F)];
	movq	16(%rbp), %rax	 # dest, dest.52_34
	leaq	1(%rax), %rdx	 #, tmp154
	movq	%rdx, 16(%rbp)	 # tmp154, dest
 # ./pdsp.c:329:     *dest++ = pdsp_base64_map[((src >> 10) & 0x3F)];
	leaq	pdsp_base64_map(%rip), %rdx	 #, tmp155
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base64_map[_33], _35
 # ./pdsp.c:329:     *dest++ = pdsp_base64_map[((src >> 10) & 0x3F)];
	movb	%dl, (%rax)	 # _35, *dest.52_34
 # ./pdsp.c:330:     *dest++ = pdsp_base64_map[((src >> 4) & 0x3F)];
	movq	24(%rbp), %rax	 # src, tmp156
	shrq	$4, %rax	 #, _36
 # ./pdsp.c:330:     *dest++ = pdsp_base64_map[((src >> 4) & 0x3F)];
	andl	$63, %eax	 #, _36
	movq	%rax, %rcx	 # _36, _37
 # ./pdsp.c:330:     *dest++ = pdsp_base64_map[((src >> 4) & 0x3F)];
	movq	16(%rbp), %rax	 # dest, dest.53_38
	leaq	1(%rax), %rdx	 #, tmp157
	movq	%rdx, 16(%rbp)	 # tmp157, dest
 # ./pdsp.c:330:     *dest++ = pdsp_base64_map[((src >> 4) & 0x3F)];
	leaq	pdsp_base64_map(%rip), %rdx	 #, tmp158
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base64_map[_37], _39
 # ./pdsp.c:330:     *dest++ = pdsp_base64_map[((src >> 4) & 0x3F)];
	movb	%dl, (%rax)	 # _39, *dest.53_38
 # ./pdsp.c:331:     *dest++ = pdsp_base64_map[((src << 2) & 0x3F)];
	movq	24(%rbp), %rax	 # src, tmp159
	salq	$2, %rax	 #, _40
 # ./pdsp.c:331:     *dest++ = pdsp_base64_map[((src << 2) & 0x3F)];
	andl	$63, %eax	 #, _40
	movq	%rax, %rcx	 # _40, _41
 # ./pdsp.c:331:     *dest++ = pdsp_base64_map[((src << 2) & 0x3F)];
	movq	16(%rbp), %rax	 # dest, dest.54_42
	leaq	1(%rax), %rdx	 #, tmp160
	movq	%rdx, 16(%rbp)	 # tmp160, dest
 # ./pdsp.c:331:     *dest++ = pdsp_base64_map[((src << 2) & 0x3F)];
	leaq	pdsp_base64_map(%rip), %rdx	 #, tmp161
	movzbl	(%rcx,%rdx), %edx	 # pdsp_base64_map[_41], _43
 # ./pdsp.c:331:     *dest++ = pdsp_base64_map[((src << 2) & 0x3F)];
	movb	%dl, (%rax)	 # _43, *dest.54_42
 # ./pdsp.c:332:     return dest;
	movq	16(%rbp), %rax	 # dest, _71
 # ./pdsp.c:333: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_u16_to_base16_alt
	.def	pdsp_u16_to_base16_alt;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_u16_to_base16_alt
pdsp_u16_to_base16_alt:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, %eax	 # u16_in, tmp184
	movq	%rdx, 24(%rbp)	 # ach_out, ach_out
	movl	%r8d, %edx	 # b_len4, tmp186
	movw	%ax, 16(%rbp)	 # tmp185, u16_in
	movl	%edx, %eax	 # tmp186, tmp187
	movb	%al, 32(%rbp)	 # tmp187, b_len4
 # ./pdsp.c:340:     PDSP_ASSERT(ach_out != NULL);
	cmpq	$0, 24(%rbp)	 #, ach_out
	jne	.L56	 #,
 # ./pdsp.c:340:     PDSP_ASSERT(ach_out != NULL);
	movl	$340, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp188
	movq	%rax, %rdx	 # tmp188,
	leaq	.LC1(%rip), %rax	 #, tmp189
	movq	%rax, %rcx	 # tmp189,
	call	printf	 #
.L56:
 # ./pdsp.c:341:     if (b_len4 | (u16_in > 0xFFF))
	movzbl	32(%rbp), %edx	 # b_len4, _1
 # ./pdsp.c:341:     if (b_len4 | (u16_in > 0xFFF))
	cmpw	$4095, 16(%rbp)	 #, u16_in
	seta	%al	 #, _2
	movzbl	%al, %eax	 # _2, _3
 # ./pdsp.c:341:     if (b_len4 | (u16_in > 0xFFF))
	orl	%edx, %eax	 # _1, _4
 # ./pdsp.c:341:     if (b_len4 | (u16_in > 0xFFF))
	testl	%eax, %eax	 # _4
	je	.L57	 #,
 # ./pdsp.c:344:         ch_nibble = (pdsp_char_t)((u16_in >> 12) & 0xf);
	movzwl	16(%rbp), %eax	 # u16_in, tmp190
	shrw	$12, %ax	 #, _5
	andl	$15, %eax	 #, _7
 # ./pdsp.c:344:         ch_nibble = (pdsp_char_t)((u16_in >> 12) & 0xf);
	movb	%al, ch_nibble.22(%rip)	 # _7, ch_nibble
 # ./pdsp.c:345:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movzbl	ch_nibble.22(%rip), %eax	 # ch_nibble, ch_nibble.56_8
 # ./pdsp.c:345:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	cmpb	$9, %al	 #, ch_nibble.56_8
	jle	.L58	 #,
 # ./pdsp.c:345:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	$55, %edx	 #, iftmp.55_91
	jmp	.L59	 #
.L58:
 # ./pdsp.c:345:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	$48, %edx	 #, iftmp.55_91
.L59:
 # ./pdsp.c:345:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movzbl	ch_nibble.22(%rip), %eax	 # ch_nibble, ch_nibble.57_9
	leal	(%rdx,%rax), %ecx	 #, _11
 # ./pdsp.c:345:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movq	24(%rbp), %rax	 # ach_out, ach_out.59_12
	leaq	1(%rax), %rdx	 #, tmp191
	movq	%rdx, 24(%rbp)	 # tmp191, ach_out
 # ./pdsp.c:345:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	%ecx, %edx	 # _11, _13
 # ./pdsp.c:345:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movb	%dl, (%rax)	 # _13, *ach_out.59_12
 # ./pdsp.c:347:         ch_nibble = (pdsp_char_t)((u16_in >> 8) & 0xf);
	movzwl	16(%rbp), %eax	 # u16_in, tmp192
	shrw	$8, %ax	 #, _14
	andl	$15, %eax	 #, _16
 # ./pdsp.c:347:         ch_nibble = (pdsp_char_t)((u16_in >> 8) & 0xf);
	movb	%al, ch_nibble.22(%rip)	 # _16, ch_nibble
 # ./pdsp.c:348:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movzbl	ch_nibble.22(%rip), %eax	 # ch_nibble, ch_nibble.61_17
 # ./pdsp.c:348:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	cmpb	$9, %al	 #, ch_nibble.61_17
	jle	.L60	 #,
 # ./pdsp.c:348:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	$55, %edx	 #, iftmp.60_92
	jmp	.L61	 #
.L60:
 # ./pdsp.c:348:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	$48, %edx	 #, iftmp.60_92
.L61:
 # ./pdsp.c:348:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movzbl	ch_nibble.22(%rip), %eax	 # ch_nibble, ch_nibble.62_18
	leal	(%rdx,%rax), %ecx	 #, _20
 # ./pdsp.c:348:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movq	24(%rbp), %rax	 # ach_out, ach_out.64_21
	leaq	1(%rax), %rdx	 #, tmp193
	movq	%rdx, 24(%rbp)	 # tmp193, ach_out
 # ./pdsp.c:348:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	%ecx, %edx	 # _20, _22
 # ./pdsp.c:348:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movb	%dl, (%rax)	 # _22, *ach_out.64_21
 # ./pdsp.c:350:         ch_nibble = (pdsp_char_t)((u16_in >> 4) & 0xf);
	movzwl	16(%rbp), %eax	 # u16_in, tmp194
	shrw	$4, %ax	 #, _23
	andl	$15, %eax	 #, _25
 # ./pdsp.c:350:         ch_nibble = (pdsp_char_t)((u16_in >> 4) & 0xf);
	movb	%al, ch_nibble.22(%rip)	 # _25, ch_nibble
 # ./pdsp.c:351:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movzbl	ch_nibble.22(%rip), %eax	 # ch_nibble, ch_nibble.66_26
 # ./pdsp.c:351:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	cmpb	$9, %al	 #, ch_nibble.66_26
	jle	.L62	 #,
 # ./pdsp.c:351:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	$55, %edx	 #, iftmp.65_93
	jmp	.L63	 #
.L62:
 # ./pdsp.c:351:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	$48, %edx	 #, iftmp.65_93
.L63:
 # ./pdsp.c:351:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movzbl	ch_nibble.22(%rip), %eax	 # ch_nibble, ch_nibble.67_27
	leal	(%rdx,%rax), %ecx	 #, _29
 # ./pdsp.c:351:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movq	24(%rbp), %rax	 # ach_out, ach_out.69_30
	leaq	1(%rax), %rdx	 #, tmp195
	movq	%rdx, 24(%rbp)	 # tmp195, ach_out
 # ./pdsp.c:351:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	%ecx, %edx	 # _29, _31
 # ./pdsp.c:351:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movb	%dl, (%rax)	 # _31, *ach_out.69_30
 # ./pdsp.c:353:         ch_nibble = (pdsp_char_t)((u16_in >> 0) & 0xf);
	movzwl	16(%rbp), %eax	 # u16_in, tmp196
	andl	$15, %eax	 #, _33
 # ./pdsp.c:353:         ch_nibble = (pdsp_char_t)((u16_in >> 0) & 0xf);
	movb	%al, ch_nibble.22(%rip)	 # _33, ch_nibble
 # ./pdsp.c:354:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movzbl	ch_nibble.22(%rip), %eax	 # ch_nibble, ch_nibble.71_34
 # ./pdsp.c:354:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	cmpb	$9, %al	 #, ch_nibble.71_34
	jle	.L64	 #,
 # ./pdsp.c:354:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	$55, %edx	 #, iftmp.70_94
	jmp	.L65	 #
.L64:
 # ./pdsp.c:354:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	$48, %edx	 #, iftmp.70_94
.L65:
 # ./pdsp.c:354:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movzbl	ch_nibble.22(%rip), %eax	 # ch_nibble, ch_nibble.72_35
	leal	(%rdx,%rax), %ecx	 #, _37
 # ./pdsp.c:354:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movq	24(%rbp), %rax	 # ach_out, ach_out.74_38
	leaq	1(%rax), %rdx	 #, tmp197
	movq	%rdx, 24(%rbp)	 # tmp197, ach_out
 # ./pdsp.c:354:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	%ecx, %edx	 # _37, _39
 # ./pdsp.c:354:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movb	%dl, (%rax)	 # _39, *ach_out.74_38
 # ./pdsp.c:355:         return ach_out;
	movq	24(%rbp), %rax	 # ach_out, _95
	jmp	.L66	 #
.L57:
 # ./pdsp.c:357:     if (u16_in > 0xFF)
	cmpw	$255, 16(%rbp)	 #, u16_in
	jbe	.L67	 #,
 # ./pdsp.c:360:         ch_nibble = (pdsp_char_t)((u16_in >> 8) & 0xf);
	movzwl	16(%rbp), %eax	 # u16_in, tmp198
	shrw	$8, %ax	 #, _40
	andl	$15, %eax	 #, _42
 # ./pdsp.c:360:         ch_nibble = (pdsp_char_t)((u16_in >> 8) & 0xf);
	movb	%al, ch_nibble.22(%rip)	 # _42, ch_nibble
 # ./pdsp.c:361:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movzbl	ch_nibble.22(%rip), %eax	 # ch_nibble, ch_nibble.76_43
 # ./pdsp.c:361:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	cmpb	$9, %al	 #, ch_nibble.76_43
	jle	.L68	 #,
 # ./pdsp.c:361:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	$55, %edx	 #, iftmp.75_96
	jmp	.L69	 #
.L68:
 # ./pdsp.c:361:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	$48, %edx	 #, iftmp.75_96
.L69:
 # ./pdsp.c:361:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movzbl	ch_nibble.22(%rip), %eax	 # ch_nibble, ch_nibble.77_44
	leal	(%rdx,%rax), %ecx	 #, _46
 # ./pdsp.c:361:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movq	24(%rbp), %rax	 # ach_out, ach_out.79_47
	leaq	1(%rax), %rdx	 #, tmp199
	movq	%rdx, 24(%rbp)	 # tmp199, ach_out
 # ./pdsp.c:361:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	%ecx, %edx	 # _46, _48
 # ./pdsp.c:361:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movb	%dl, (%rax)	 # _48, *ach_out.79_47
 # ./pdsp.c:363:         ch_nibble = (pdsp_char_t)((u16_in >> 4) & 0xf);
	movzwl	16(%rbp), %eax	 # u16_in, tmp200
	shrw	$4, %ax	 #, _49
	andl	$15, %eax	 #, _51
 # ./pdsp.c:363:         ch_nibble = (pdsp_char_t)((u16_in >> 4) & 0xf);
	movb	%al, ch_nibble.22(%rip)	 # _51, ch_nibble
 # ./pdsp.c:364:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movzbl	ch_nibble.22(%rip), %eax	 # ch_nibble, ch_nibble.81_52
 # ./pdsp.c:364:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	cmpb	$9, %al	 #, ch_nibble.81_52
	jle	.L70	 #,
 # ./pdsp.c:364:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	$55, %edx	 #, iftmp.80_97
	jmp	.L71	 #
.L70:
 # ./pdsp.c:364:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	$48, %edx	 #, iftmp.80_97
.L71:
 # ./pdsp.c:364:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movzbl	ch_nibble.22(%rip), %eax	 # ch_nibble, ch_nibble.82_53
	leal	(%rdx,%rax), %ecx	 #, _55
 # ./pdsp.c:364:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movq	24(%rbp), %rax	 # ach_out, ach_out.84_56
	leaq	1(%rax), %rdx	 #, tmp201
	movq	%rdx, 24(%rbp)	 # tmp201, ach_out
 # ./pdsp.c:364:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	%ecx, %edx	 # _55, _57
 # ./pdsp.c:364:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movb	%dl, (%rax)	 # _57, *ach_out.84_56
 # ./pdsp.c:366:         ch_nibble = (pdsp_char_t)((u16_in >> 0) & 0xf);
	movzwl	16(%rbp), %eax	 # u16_in, tmp202
	andl	$15, %eax	 #, _59
 # ./pdsp.c:366:         ch_nibble = (pdsp_char_t)((u16_in >> 0) & 0xf);
	movb	%al, ch_nibble.22(%rip)	 # _59, ch_nibble
 # ./pdsp.c:367:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movzbl	ch_nibble.22(%rip), %eax	 # ch_nibble, ch_nibble.86_60
 # ./pdsp.c:367:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	cmpb	$9, %al	 #, ch_nibble.86_60
	jle	.L72	 #,
 # ./pdsp.c:367:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	$55, %edx	 #, iftmp.85_98
	jmp	.L73	 #
.L72:
 # ./pdsp.c:367:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	$48, %edx	 #, iftmp.85_98
.L73:
 # ./pdsp.c:367:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movzbl	ch_nibble.22(%rip), %eax	 # ch_nibble, ch_nibble.87_61
	leal	(%rdx,%rax), %ecx	 #, _63
 # ./pdsp.c:367:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movq	24(%rbp), %rax	 # ach_out, ach_out.89_64
	leaq	1(%rax), %rdx	 #, tmp203
	movq	%rdx, 24(%rbp)	 # tmp203, ach_out
 # ./pdsp.c:367:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	%ecx, %edx	 # _63, _65
 # ./pdsp.c:367:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movb	%dl, (%rax)	 # _65, *ach_out.89_64
 # ./pdsp.c:368:         return ach_out;
	movq	24(%rbp), %rax	 # ach_out, _95
	jmp	.L66	 #
.L67:
 # ./pdsp.c:370:     if (u16_in > 0xF)
	cmpw	$15, 16(%rbp)	 #, u16_in
	jbe	.L74	 #,
 # ./pdsp.c:373:         ch_nibble = (pdsp_char_t)((u16_in >> 4) & 0xf);
	movzwl	16(%rbp), %eax	 # u16_in, tmp204
	shrw	$4, %ax	 #, _66
	andl	$15, %eax	 #, _68
 # ./pdsp.c:373:         ch_nibble = (pdsp_char_t)((u16_in >> 4) & 0xf);
	movb	%al, ch_nibble.22(%rip)	 # _68, ch_nibble
 # ./pdsp.c:374:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movzbl	ch_nibble.22(%rip), %eax	 # ch_nibble, ch_nibble.91_69
 # ./pdsp.c:374:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	cmpb	$9, %al	 #, ch_nibble.91_69
	jle	.L75	 #,
 # ./pdsp.c:374:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	$55, %edx	 #, iftmp.90_99
	jmp	.L76	 #
.L75:
 # ./pdsp.c:374:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	$48, %edx	 #, iftmp.90_99
.L76:
 # ./pdsp.c:374:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movzbl	ch_nibble.22(%rip), %eax	 # ch_nibble, ch_nibble.92_70
	leal	(%rdx,%rax), %ecx	 #, _72
 # ./pdsp.c:374:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movq	24(%rbp), %rax	 # ach_out, ach_out.94_73
	leaq	1(%rax), %rdx	 #, tmp205
	movq	%rdx, 24(%rbp)	 # tmp205, ach_out
 # ./pdsp.c:374:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	%ecx, %edx	 # _72, _74
 # ./pdsp.c:374:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movb	%dl, (%rax)	 # _74, *ach_out.94_73
 # ./pdsp.c:376:         ch_nibble = (pdsp_char_t)((u16_in >> 0) & 0xf);
	movzwl	16(%rbp), %eax	 # u16_in, tmp206
	andl	$15, %eax	 #, _76
 # ./pdsp.c:376:         ch_nibble = (pdsp_char_t)((u16_in >> 0) & 0xf);
	movb	%al, ch_nibble.22(%rip)	 # _76, ch_nibble
 # ./pdsp.c:377:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movzbl	ch_nibble.22(%rip), %eax	 # ch_nibble, ch_nibble.96_77
 # ./pdsp.c:377:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	cmpb	$9, %al	 #, ch_nibble.96_77
	jle	.L77	 #,
 # ./pdsp.c:377:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	$55, %edx	 #, iftmp.95_100
	jmp	.L78	 #
.L77:
 # ./pdsp.c:377:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	$48, %edx	 #, iftmp.95_100
.L78:
 # ./pdsp.c:377:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movzbl	ch_nibble.22(%rip), %eax	 # ch_nibble, ch_nibble.97_78
	leal	(%rdx,%rax), %ecx	 #, _80
 # ./pdsp.c:377:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movq	24(%rbp), %rax	 # ach_out, ach_out.99_81
	leaq	1(%rax), %rdx	 #, tmp207
	movq	%rdx, 24(%rbp)	 # tmp207, ach_out
 # ./pdsp.c:377:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	%ecx, %edx	 # _80, _82
 # ./pdsp.c:377:         *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movb	%dl, (%rax)	 # _82, *ach_out.99_81
 # ./pdsp.c:378:         return ach_out;
	movq	24(%rbp), %rax	 # ach_out, _95
	jmp	.L66	 #
.L74:
 # ./pdsp.c:381:     ch_nibble = (pdsp_char_t)((u16_in >> 0) & 0xf);
	movzwl	16(%rbp), %eax	 # u16_in, tmp208
	andl	$15, %eax	 #, _84
 # ./pdsp.c:381:     ch_nibble = (pdsp_char_t)((u16_in >> 0) & 0xf);
	movb	%al, ch_nibble.22(%rip)	 # _84, ch_nibble
 # ./pdsp.c:382:     *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movzbl	ch_nibble.22(%rip), %eax	 # ch_nibble, ch_nibble.101_85
 # ./pdsp.c:382:     *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	cmpb	$9, %al	 #, ch_nibble.101_85
	jle	.L79	 #,
 # ./pdsp.c:382:     *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	$55, %edx	 #, iftmp.100_101
	jmp	.L80	 #
.L79:
 # ./pdsp.c:382:     *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	$48, %edx	 #, iftmp.100_101
.L80:
 # ./pdsp.c:382:     *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movzbl	ch_nibble.22(%rip), %eax	 # ch_nibble, ch_nibble.102_86
	leal	(%rdx,%rax), %ecx	 #, _88
 # ./pdsp.c:382:     *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movq	24(%rbp), %rax	 # ach_out, ach_out.104_89
	leaq	1(%rax), %rdx	 #, tmp209
	movq	%rdx, 24(%rbp)	 # tmp209, ach_out
 # ./pdsp.c:382:     *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movl	%ecx, %edx	 # _88, _90
 # ./pdsp.c:382:     *(ach_out++) = ch_nibble + ((ch_nibble > 9) ? '7' : '0');
	movb	%dl, (%rax)	 # _90, *ach_out.104_89
 # ./pdsp.c:383:     return ach_out;
	movq	24(%rbp), %rax	 # ach_out, _95
.L66:
 # ./pdsp.c:384: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_u64_to_base16_alt
	.def	pdsp_u64_to_base16_alt;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_u64_to_base16_alt
pdsp_u64_to_base16_alt:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # u64_in, u64_in
	movq	%rdx, 24(%rbp)	 # ach_out, ach_out
 # ./pdsp.c:389:     PDSP_ASSERT(ach_out != NULL);
	cmpq	$0, 24(%rbp)	 #, ach_out
	jne	.L82	 #,
 # ./pdsp.c:389:     PDSP_ASSERT(ach_out != NULL);
	movl	$389, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp95
	movq	%rax, %rdx	 # tmp95,
	leaq	.LC1(%rip), %rax	 #, tmp96
	movq	%rax, %rcx	 # tmp96,
	call	printf	 #
.L82:
 # ./pdsp.c:390:     ach_out = pdsp_u16_to_base16_alt((pdsp_u16_t)((u64_in >> 48) & 0xFFFF),
	movq	16(%rbp), %rax	 # u64_in, tmp97
	shrq	$48, %rax	 #, _1
 # ./pdsp.c:390:     ach_out = pdsp_u16_to_base16_alt((pdsp_u16_t)((u64_in >> 48) & 0xFFFF),
	movzwl	%ax, %eax	 # _2, _3
	movq	24(%rbp), %rdx	 # ach_out, tmp98
	movl	$1, %r8d	 #,
	movl	%eax, %ecx	 # _3,
	call	pdsp_u16_to_base16_alt	 #
	movq	%rax, 24(%rbp)	 # tmp99, ach_out
 # ./pdsp.c:392:     ach_out = pdsp_u16_to_base16_alt((pdsp_u16_t)((u64_in >> 32) & 0xFFFF),
	movq	16(%rbp), %rax	 # u64_in, tmp100
	shrq	$32, %rax	 #, _4
 # ./pdsp.c:392:     ach_out = pdsp_u16_to_base16_alt((pdsp_u16_t)((u64_in >> 32) & 0xFFFF),
	movzwl	%ax, %eax	 # _5, _6
	movq	24(%rbp), %rdx	 # ach_out, tmp101
	movl	$1, %r8d	 #,
	movl	%eax, %ecx	 # _6,
	call	pdsp_u16_to_base16_alt	 #
	movq	%rax, 24(%rbp)	 # tmp102, ach_out
 # ./pdsp.c:394:     ach_out = pdsp_u16_to_base16_alt((pdsp_u16_t)((u64_in >> 16) & 0xFFFF),
	movq	16(%rbp), %rax	 # u64_in, tmp103
	shrq	$16, %rax	 #, _7
 # ./pdsp.c:394:     ach_out = pdsp_u16_to_base16_alt((pdsp_u16_t)((u64_in >> 16) & 0xFFFF),
	movzwl	%ax, %eax	 # _8, _9
	movq	24(%rbp), %rdx	 # ach_out, tmp104
	movl	$1, %r8d	 #,
	movl	%eax, %ecx	 # _9,
	call	pdsp_u16_to_base16_alt	 #
	movq	%rax, 24(%rbp)	 # tmp105, ach_out
 # ./pdsp.c:396:     ach_out = pdsp_u16_to_base16_alt((pdsp_u16_t)((u64_in >> 0) & 0xFFFF),
	movq	16(%rbp), %rax	 # u64_in, tmp106
 # ./pdsp.c:396:     ach_out = pdsp_u16_to_base16_alt((pdsp_u16_t)((u64_in >> 0) & 0xFFFF),
	movzwl	%ax, %eax	 # _10, _11
	movq	24(%rbp), %rdx	 # ach_out, tmp107
	movl	$1, %r8d	 #,
	movl	%eax, %ecx	 # _11,
	call	pdsp_u16_to_base16_alt	 #
	movq	%rax, 24(%rbp)	 # tmp108, ach_out
 # ./pdsp.c:398:     return ach_out;
	movq	24(%rbp), %rax	 # ach_out, _25
 # ./pdsp.c:399: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_map
	.def	pdsp_map;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_map
pdsp_map:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movss	%xmm0, 16(%rbp)	 # f32_in, f32_in
	movss	%xmm1, 24(%rbp)	 # f32_in_lo, f32_in_lo
	movss	%xmm2, 32(%rbp)	 # f32_in_hi, f32_in_hi
	movss	%xmm3, 40(%rbp)	 # f32_out_lo, f32_out_lo
 # ./pdsp.c:405:     if ((f32_in_hi - f32_in_lo) == 0.0f)
	movss	32(%rbp), %xmm0	 # f32_in_hi, tmp91
	subss	24(%rbp), %xmm0	 # f32_in_lo, _1
 # ./pdsp.c:405:     if ((f32_in_hi - f32_in_lo) == 0.0f)
	pxor	%xmm1, %xmm1	 # tmp92
	ucomiss	%xmm1, %xmm0	 # tmp92, _1
	jp	.L85	 #,
	pxor	%xmm1, %xmm1	 # tmp93
	ucomiss	%xmm1, %xmm0	 # tmp93, _1
	jne	.L85	 #,
 # ./pdsp.c:407:         return (f32_out_hi + f32_out_lo) * 0.5f;
	movss	48(%rbp), %xmm0	 # f32_out_hi, tmp94
	movaps	%xmm0, %xmm1	 # tmp94, tmp94
	addss	40(%rbp), %xmm1	 # f32_out_lo, tmp94
 # ./pdsp.c:407:         return (f32_out_hi + f32_out_lo) * 0.5f;
	movss	.LC3(%rip), %xmm0	 #, tmp95
	mulss	%xmm1, %xmm0	 # _2, _8
	jmp	.L87	 #
.L85:
 # ./pdsp.c:411:         return (pdsp_divf((f32_out_hi - f32_out_lo), (f32_in_hi - f32_in_lo)) *
	movss	48(%rbp), %xmm0	 # f32_out_hi, tmp96
	subss	40(%rbp), %xmm0	 # f32_out_lo, _3
	movss	32(%rbp), %xmm1	 # f32_in_hi, tmp97
	movaps	%xmm1, %xmm2	 # tmp97, tmp97
	subss	24(%rbp), %xmm2	 # f32_in_lo, tmp97
	movaps	%xmm0, %xmm1	 # _3, _3
	divss	%xmm2, %xmm1	 # _4, _3
 # ./pdsp.c:412:                     (f32_in - f32_in_lo) +
	movss	16(%rbp), %xmm0	 # f32_in, tmp98
	subss	24(%rbp), %xmm0	 # f32_in_lo, _6
 # ./pdsp.c:411:         return (pdsp_divf((f32_out_hi - f32_out_lo), (f32_in_hi - f32_in_lo)) *
	mulss	%xmm1, %xmm0	 # _5, _7
 # ./pdsp.c:412:                     (f32_in - f32_in_lo) +
	addss	40(%rbp), %xmm0	 # f32_out_lo, _8
.L87:
 # ./pdsp.c:415: }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_map_idx
	.def	pdsp_map_idx;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_map_idx
pdsp_map_idx:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movss	%xmm0, 16(%rbp)	 # f32_in, f32_in
	movss	%xmm1, 24(%rbp)	 # f32_in_lo, f32_in_lo
	movss	%xmm2, 32(%rbp)	 # f32_in_hi, f32_in_hi
	movss	%xmm3, 40(%rbp)	 # f32_idx_hi, f32_idx_hi
 # ./pdsp.c:421:     f32_in = pdsp_minf(pdsp_maxf(f32_in, f32_in_lo), f32_in_hi);
	movss	24(%rbp), %xmm0	 # f32_in_lo, tmp89
	movl	16(%rbp), %eax	 # f32_in, tmp90
	movaps	%xmm0, %xmm1	 # tmp89,
	movd	%eax, %xmm0	 # tmp90,
	call	fmaxf	 #
	movd	%xmm0, %edx	 #, _1
 # ./pdsp.c:421:     f32_in = pdsp_minf(pdsp_maxf(f32_in, f32_in_lo), f32_in_hi);
	movl	32(%rbp), %eax	 # f32_in_hi, tmp91
	movd	%edx, %xmm1	 # _1,
	movd	%eax, %xmm0	 # tmp91,
	call	fminf	 #
	movd	%xmm0, %eax	 #, tmp92
	movl	%eax, 16(%rbp)	 # tmp92, f32_in
 # ./pdsp.c:422:     if ((f32_in_hi - f32_in_lo) == 0.0f)
	movss	32(%rbp), %xmm0	 # f32_in_hi, tmp93
	subss	24(%rbp), %xmm0	 # f32_in_lo, _2
 # ./pdsp.c:422:     if ((f32_in_hi - f32_in_lo) == 0.0f)
	pxor	%xmm1, %xmm1	 # tmp94
	ucomiss	%xmm1, %xmm0	 # tmp94, _2
	jp	.L90	 #,
	pxor	%xmm1, %xmm1	 # tmp95
	ucomiss	%xmm1, %xmm0	 # tmp95, _2
	jne	.L90	 #,
 # ./pdsp.c:424:         f32_index = f32_idx_hi * 0.5f;
	movss	40(%rbp), %xmm1	 # f32_idx_hi, tmp97
	movss	.LC3(%rip), %xmm0	 #, tmp98
	mulss	%xmm1, %xmm0	 # tmp97, tmp96
	movss	%xmm0, -4(%rbp)	 # tmp96, f32_index
	jmp	.L92	 #
.L90:
 # ./pdsp.c:429:             pdsp_divf(f32_idx_hi, f32_in_hi - f32_in_lo) * (f32_in - f32_in_lo);
	movss	32(%rbp), %xmm0	 # f32_in_hi, tmp99
	movaps	%xmm0, %xmm2	 # tmp99, tmp99
	subss	24(%rbp), %xmm2	 # f32_in_lo, tmp99
	movss	40(%rbp), %xmm0	 # f32_idx_hi, tmp100
	movaps	%xmm0, %xmm1	 # tmp100, tmp100
	divss	%xmm2, %xmm1	 # _3, tmp100
 # ./pdsp.c:429:             pdsp_divf(f32_idx_hi, f32_in_hi - f32_in_lo) * (f32_in - f32_in_lo);
	movss	16(%rbp), %xmm0	 # f32_in, tmp101
	subss	24(%rbp), %xmm0	 # f32_in_lo, _5
 # ./pdsp.c:428:         f32_index =
	mulss	%xmm1, %xmm0	 # _4, tmp102
	movss	%xmm0, -4(%rbp)	 # tmp102, f32_index
.L92:
 # ./pdsp.c:435:     return (pdsp_u16_t)(f32_index);
	cvttss2sil	-4(%rbp), %eax	 # f32_index, tmp103
 # ./pdsp.c:437: }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_interpolate_2d
	.def	pdsp_interpolate_2d;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_interpolate_2d
pdsp_interpolate_2d:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$64, %rsp	 #,
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # af32_x, af32_x
	movq	%rdx, 24(%rbp)	 # af32_y, af32_y
	movl	%r8d, 32(%rbp)	 # u32_size, u32_size
	movss	%xmm3, 40(%rbp)	 # f32_x_in, f32_x_in
 # ./pdsp.c:445:     pdsp_u32_t u32_idx_hi = 1U;
	movl	$1, -4(%rbp)	 #, u32_idx_hi
 # ./pdsp.c:447:     PDSP_ASSERT((af32_x != NULL) && (af32_y != NULL) && u32_size);
	cmpq	$0, 16(%rbp)	 #, af32_x
	je	.L96	 #,
 # ./pdsp.c:447:     PDSP_ASSERT((af32_x != NULL) && (af32_y != NULL) && u32_size);
	cmpq	$0, 24(%rbp)	 #, af32_y
	je	.L96	 #,
 # ./pdsp.c:447:     PDSP_ASSERT((af32_x != NULL) && (af32_y != NULL) && u32_size);
	cmpl	$0, 32(%rbp)	 #, u32_size
	jne	.L98	 #,
.L96:
 # ./pdsp.c:447:     PDSP_ASSERT((af32_x != NULL) && (af32_y != NULL) && u32_size);
	movl	$447, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp107
	movq	%rax, %rdx	 # tmp107,
	leaq	.LC1(%rip), %rax	 #, tmp108
	movq	%rax, %rcx	 # tmp108,
	call	printf	 #
 # ./pdsp.c:449:     while ((af32_x[u32_idx_hi] < f32_x_in) && (u32_idx_hi < (u32_size - 1U)))
	jmp	.L98	 #
.L101:
 # ./pdsp.c:451:         u32_idx_hi++;
	addl	$1, -4(%rbp)	 #, u32_idx_hi
.L98:
 # ./pdsp.c:449:     while ((af32_x[u32_idx_hi] < f32_x_in) && (u32_idx_hi < (u32_size - 1U)))
	movl	-4(%rbp), %eax	 # u32_idx_hi, _1
	leaq	0(,%rax,4), %rdx	 #, _2
	movq	16(%rbp), %rax	 # af32_x, tmp109
	addq	%rdx, %rax	 # _2, _3
	movss	(%rax), %xmm1	 # *_3, _4
 # ./pdsp.c:449:     while ((af32_x[u32_idx_hi] < f32_x_in) && (u32_idx_hi < (u32_size - 1U)))
	movss	40(%rbp), %xmm0	 # f32_x_in, tmp110
	comiss	%xmm1, %xmm0	 # _4, tmp110
	jbe	.L99	 #,
 # ./pdsp.c:449:     while ((af32_x[u32_idx_hi] < f32_x_in) && (u32_idx_hi < (u32_size - 1U)))
	movl	32(%rbp), %eax	 # u32_size, tmp111
	subl	$1, %eax	 #, _5
 # ./pdsp.c:449:     while ((af32_x[u32_idx_hi] < f32_x_in) && (u32_idx_hi < (u32_size - 1U)))
	cmpl	%eax, -4(%rbp)	 # _5, u32_idx_hi
	jb	.L101	 #,
.L99:
 # ./pdsp.c:455:                     af32_y[u32_idx_hi - 1U], af32_y[u32_idx_hi]);
	movl	-4(%rbp), %eax	 # u32_idx_hi, _6
	leaq	0(,%rax,4), %rdx	 #, _7
	movq	24(%rbp), %rax	 # af32_y, tmp112
	addq	%rdx, %rax	 # _7, _8
 # ./pdsp.c:454:     return pdsp_map(f32_x_in, af32_x[u32_idx_hi - 1U], af32_x[u32_idx_hi],
	movss	(%rax), %xmm0	 # *_8, _9
 # ./pdsp.c:455:                     af32_y[u32_idx_hi - 1U], af32_y[u32_idx_hi]);
	movl	-4(%rbp), %eax	 # u32_idx_hi, tmp113
	subl	$1, %eax	 #, _10
	movl	%eax, %eax	 # _10, _11
 # ./pdsp.c:455:                     af32_y[u32_idx_hi - 1U], af32_y[u32_idx_hi]);
	leaq	0(,%rax,4), %rdx	 #, _12
	movq	24(%rbp), %rax	 # af32_y, tmp114
	addq	%rdx, %rax	 # _12, _13
 # ./pdsp.c:454:     return pdsp_map(f32_x_in, af32_x[u32_idx_hi - 1U], af32_x[u32_idx_hi],
	movss	(%rax), %xmm3	 # *_13, _14
 # ./pdsp.c:454:     return pdsp_map(f32_x_in, af32_x[u32_idx_hi - 1U], af32_x[u32_idx_hi],
	movl	-4(%rbp), %eax	 # u32_idx_hi, _15
	leaq	0(,%rax,4), %rdx	 #, _16
	movq	16(%rbp), %rax	 # af32_x, tmp115
	addq	%rdx, %rax	 # _16, _17
 # ./pdsp.c:454:     return pdsp_map(f32_x_in, af32_x[u32_idx_hi - 1U], af32_x[u32_idx_hi],
	movss	(%rax), %xmm2	 # *_17, _18
 # ./pdsp.c:454:     return pdsp_map(f32_x_in, af32_x[u32_idx_hi - 1U], af32_x[u32_idx_hi],
	movl	-4(%rbp), %eax	 # u32_idx_hi, tmp116
	subl	$1, %eax	 #, _19
	movl	%eax, %eax	 # _19, _20
 # ./pdsp.c:454:     return pdsp_map(f32_x_in, af32_x[u32_idx_hi - 1U], af32_x[u32_idx_hi],
	leaq	0(,%rax,4), %rdx	 #, _21
	movq	16(%rbp), %rax	 # af32_x, tmp117
	addq	%rdx, %rax	 # _21, _22
 # ./pdsp.c:454:     return pdsp_map(f32_x_in, af32_x[u32_idx_hi - 1U], af32_x[u32_idx_hi],
	movss	(%rax), %xmm1	 # *_22, _23
	movl	40(%rbp), %eax	 # f32_x_in, tmp118
	movss	%xmm0, 32(%rsp)	 # _9,
	movd	%eax, %xmm0	 # tmp118,
	call	pdsp_map	 #
 # ./pdsp.c:456: }
	addq	$64, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_lookup
	.def	pdsp_lookup;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_lookup
pdsp_lookup:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # af32_y, af32_y
	movss	%xmm1, 24(%rbp)	 # f32_size, f32_size
	movss	%xmm2, 32(%rbp)	 # f32_x_gain, f32_x_gain
	movss	%xmm3, 40(%rbp)	 # f32_x_offset, f32_x_offset
 # ./pdsp.c:464:     PDSP_ASSERT((af32_y != NULL) && f32_size);
	cmpq	$0, 16(%rbp)	 #, af32_y
	je	.L105	 #,
 # ./pdsp.c:464:     PDSP_ASSERT((af32_y != NULL) && f32_size);
	pxor	%xmm0, %xmm0	 # tmp92
	ucomiss	24(%rbp), %xmm0	 # f32_size, tmp92
	jp	.L106	 #,
	pxor	%xmm0, %xmm0	 # tmp93
	ucomiss	24(%rbp), %xmm0	 # f32_size, tmp93
	jne	.L106	 #,
.L105:
 # ./pdsp.c:464:     PDSP_ASSERT((af32_y != NULL) && f32_size);
	movl	$464, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp94
	movq	%rax, %rdx	 # tmp94,
	leaq	.LC1(%rip), %rax	 #, tmp95
	movq	%rax, %rcx	 # tmp95,
	call	printf	 #
.L106:
 # ./pdsp.c:465:     return af32_y[(pdsp_i16_t)pdsp_maxf(pdsp_minf(f32_x * f32_x_gain + f32_x_offset, f32_size), 0)];
	movss	48(%rbp), %xmm0	 # f32_x, tmp96
	mulss	32(%rbp), %xmm0	 # f32_x_gain, _1
	addss	40(%rbp), %xmm0	 # f32_x_offset, _2
	movl	24(%rbp), %eax	 # f32_size, tmp97
	movaps	%xmm0, %xmm1	 # _2,
	movd	%eax, %xmm0	 # tmp97,
	call	fminf	 #
	movd	%xmm0, %eax	 #, _3
 # ./pdsp.c:465:     return af32_y[(pdsp_i16_t)pdsp_maxf(pdsp_minf(f32_x * f32_x_gain + f32_x_offset, f32_size), 0)];
	pxor	%xmm1, %xmm1	 #
	movd	%eax, %xmm0	 # _3,
	call	fmaxf	 #
 # ./pdsp.c:465:     return af32_y[(pdsp_i16_t)pdsp_maxf(pdsp_minf(f32_x * f32_x_gain + f32_x_offset, f32_size), 0)];
	cvttss2sil	%xmm0, %eax	 # _4, tmp98
	movswq	%ax, %rax	 # _5, _6
 # ./pdsp.c:465:     return af32_y[(pdsp_i16_t)pdsp_maxf(pdsp_minf(f32_x * f32_x_gain + f32_x_offset, f32_size), 0)];
	leaq	0(,%rax,4), %rdx	 #, _7
	movq	16(%rbp), %rax	 # af32_y, tmp99
	addq	%rdx, %rax	 # _7, _8
	movss	(%rax), %xmm0	 # *_8, _17
 # ./pdsp.c:466: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_array_set_f32
	.def	pdsp_array_set_f32;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_array_set_f32
pdsp_array_set_f32:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # af32_array, af32_array
	movq	%rdx, 24(%rbp)	 # s_size, s_size
	movss	%xmm2, 32(%rbp)	 # f32_value, f32_value
 # ./pdsp.c:471:     pdsp_u32_t u32_idx = 0;
	movl	$0, -4(%rbp)	 #, u32_idx
 # ./pdsp.c:472:     PDSP_ASSERT((af32_array != NULL) && s_size);
	cmpq	$0, 16(%rbp)	 #, af32_array
	je	.L110	 #,
 # ./pdsp.c:472:     PDSP_ASSERT((af32_array != NULL) && s_size);
	cmpq	$0, 24(%rbp)	 #, s_size
	jne	.L111	 #,
.L110:
 # ./pdsp.c:472:     PDSP_ASSERT((af32_array != NULL) && s_size);
	movl	$472, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp86
	movq	%rax, %rdx	 # tmp86,
	leaq	.LC1(%rip), %rax	 #, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	printf	 #
.L111:
 # ./pdsp.c:473:     for (u32_idx = 0; u32_idx < s_size; u32_idx++)
	movl	$0, -4(%rbp)	 #, u32_idx
 # ./pdsp.c:473:     for (u32_idx = 0; u32_idx < s_size; u32_idx++)
	jmp	.L112	 #
.L113:
 # ./pdsp.c:475:         af32_array[u32_idx] = f32_value;
	movl	-4(%rbp), %eax	 # u32_idx, _1
	leaq	0(,%rax,4), %rdx	 #, _2
	movq	16(%rbp), %rax	 # af32_array, tmp88
	addq	%rdx, %rax	 # _2, _3
 # ./pdsp.c:475:         af32_array[u32_idx] = f32_value;
	movss	32(%rbp), %xmm0	 # f32_value, tmp89
	movss	%xmm0, (%rax)	 # tmp89, *_3
 # ./pdsp.c:473:     for (u32_idx = 0; u32_idx < s_size; u32_idx++)
	addl	$1, -4(%rbp)	 #, u32_idx
.L112:
 # ./pdsp.c:473:     for (u32_idx = 0; u32_idx < s_size; u32_idx++)
	movl	-4(%rbp), %eax	 # u32_idx, _4
	cmpq	24(%rbp), %rax	 # s_size, _4
	jb	.L113	 #,
 # ./pdsp.c:477: }
	nop	
	nop	
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_array_set_i16
	.def	pdsp_array_set_i16;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_array_set_i16
pdsp_array_set_i16:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ai16_array, ai16_array
	movq	%rdx, 24(%rbp)	 # s_size, s_size
	movl	%r8d, %eax	 # i16_value, tmp86
	movw	%ax, 32(%rbp)	 # tmp87, i16_value
 # ./pdsp.c:482:     pdsp_u32_t u32_idx = 0;
	movl	$0, -4(%rbp)	 #, u32_idx
 # ./pdsp.c:483:     PDSP_ASSERT((ai16_array != NULL) && s_size);
	cmpq	$0, 16(%rbp)	 #, ai16_array
	je	.L115	 #,
 # ./pdsp.c:483:     PDSP_ASSERT((ai16_array != NULL) && s_size);
	cmpq	$0, 24(%rbp)	 #, s_size
	jne	.L116	 #,
.L115:
 # ./pdsp.c:483:     PDSP_ASSERT((ai16_array != NULL) && s_size);
	movl	$483, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp88
	movq	%rax, %rdx	 # tmp88,
	leaq	.LC1(%rip), %rax	 #, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	printf	 #
.L116:
 # ./pdsp.c:484:     for (u32_idx = 0; u32_idx < s_size; u32_idx++)
	movl	$0, -4(%rbp)	 #, u32_idx
 # ./pdsp.c:484:     for (u32_idx = 0; u32_idx < s_size; u32_idx++)
	jmp	.L117	 #
.L118:
 # ./pdsp.c:486:         ai16_array[u32_idx] = i16_value;
	movl	-4(%rbp), %eax	 # u32_idx, _1
	leaq	(%rax,%rax), %rdx	 #, _2
	movq	16(%rbp), %rax	 # ai16_array, tmp90
	addq	%rax, %rdx	 # tmp90, _3
 # ./pdsp.c:486:         ai16_array[u32_idx] = i16_value;
	movzwl	32(%rbp), %eax	 # i16_value, tmp91
	movw	%ax, (%rdx)	 # tmp91, *_3
 # ./pdsp.c:484:     for (u32_idx = 0; u32_idx < s_size; u32_idx++)
	addl	$1, -4(%rbp)	 #, u32_idx
.L117:
 # ./pdsp.c:484:     for (u32_idx = 0; u32_idx < s_size; u32_idx++)
	movl	-4(%rbp), %eax	 # u32_idx, _4
	cmpq	24(%rbp), %rax	 # s_size, _4
	jb	.L118	 #,
 # ./pdsp.c:488: }
	nop	
	nop	
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_array_apply_f32
	.def	pdsp_array_apply_f32;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_array_apply_f32
pdsp_array_apply_f32:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$56, %rsp	 #,
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # af32_in, af32_in
	movq	%rdx, 40(%rbp)	 # af32_out, af32_out
	movl	%r8d, 48(%rbp)	 # u32_size, u32_size
	movq	%r9, 56(%rbp)	 # p_func, p_func
 # ./pdsp.c:495:     pdsp_u32_t u32_idx = 0;
	movl	$0, -4(%rbp)	 #, u32_idx
 # ./pdsp.c:496:     PDSP_ASSERT((af32_in != NULL) && (af32_out != NULL) && u32_size &&
	cmpq	$0, 32(%rbp)	 #, af32_in
	je	.L120	 #,
 # ./pdsp.c:496:     PDSP_ASSERT((af32_in != NULL) && (af32_out != NULL) && u32_size &&
	cmpq	$0, 40(%rbp)	 #, af32_out
	je	.L120	 #,
 # ./pdsp.c:496:     PDSP_ASSERT((af32_in != NULL) && (af32_out != NULL) && u32_size &&
	cmpl	$0, 48(%rbp)	 #, u32_size
	je	.L120	 #,
 # ./pdsp.c:496:     PDSP_ASSERT((af32_in != NULL) && (af32_out != NULL) && u32_size &&
	cmpq	$0, 56(%rbp)	 #, p_func
	jne	.L121	 #,
.L120:
 # ./pdsp.c:496:     PDSP_ASSERT((af32_in != NULL) && (af32_out != NULL) && u32_size &&
	movl	$496, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp90
	movq	%rax, %rdx	 # tmp90,
	leaq	.LC1(%rip), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	printf	 #
.L121:
 # ./pdsp.c:498:     for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
	movl	$0, -4(%rbp)	 #, u32_idx
 # ./pdsp.c:498:     for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
	jmp	.L122	 #
.L123:
 # ./pdsp.c:500:         af32_out[u32_idx] = p_func(af32_in[u32_idx]);
	movl	-4(%rbp), %eax	 # u32_idx, _1
	leaq	0(,%rax,4), %rdx	 #, _2
	movq	32(%rbp), %rax	 # af32_in, tmp92
	addq	%rdx, %rax	 # _2, _3
 # ./pdsp.c:500:         af32_out[u32_idx] = p_func(af32_in[u32_idx]);
	movl	(%rax), %eax	 # *_3, _4
 # ./pdsp.c:500:         af32_out[u32_idx] = p_func(af32_in[u32_idx]);
	movl	-4(%rbp), %edx	 # u32_idx, _5
	leaq	0(,%rdx,4), %rcx	 #, _6
	movq	40(%rbp), %rdx	 # af32_out, tmp93
	leaq	(%rcx,%rdx), %rbx	 #, _7
 # ./pdsp.c:500:         af32_out[u32_idx] = p_func(af32_in[u32_idx]);
	movq	56(%rbp), %rdx	 # p_func, tmp94
	movd	%eax, %xmm0	 # _4,
	call	*%rdx	 # tmp94
	movd	%xmm0, %eax	 #, _8
 # ./pdsp.c:500:         af32_out[u32_idx] = p_func(af32_in[u32_idx]);
	movl	%eax, (%rbx)	 # _8, *_7
 # ./pdsp.c:498:     for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
	addl	$1, -4(%rbp)	 #, u32_idx
.L122:
 # ./pdsp.c:498:     for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
	movl	-4(%rbp), %eax	 # u32_idx, tmp95
	cmpl	48(%rbp), %eax	 # u32_size, tmp95
	jb	.L123	 #,
 # ./pdsp.c:502: }
	nop	
	nop	
	addq	$56, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_array_apply_i16
	.def	pdsp_array_apply_i16;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_array_apply_i16
pdsp_array_apply_i16:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$56, %rsp	 #,
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # ai16_in, ai16_in
	movq	%rdx, 40(%rbp)	 # ai16_out, ai16_out
	movl	%r8d, 48(%rbp)	 # u32_size, u32_size
	movq	%r9, 56(%rbp)	 # p_func, p_func
 # ./pdsp.c:509:     pdsp_u32_t u32_idx = 0;
	movl	$0, -4(%rbp)	 #, u32_idx
 # ./pdsp.c:510:     PDSP_ASSERT((ai16_in != NULL) && (ai16_out != NULL) && u32_size &&
	cmpq	$0, 32(%rbp)	 #, ai16_in
	je	.L125	 #,
 # ./pdsp.c:510:     PDSP_ASSERT((ai16_in != NULL) && (ai16_out != NULL) && u32_size &&
	cmpq	$0, 40(%rbp)	 #, ai16_out
	je	.L125	 #,
 # ./pdsp.c:510:     PDSP_ASSERT((ai16_in != NULL) && (ai16_out != NULL) && u32_size &&
	cmpl	$0, 48(%rbp)	 #, u32_size
	je	.L125	 #,
 # ./pdsp.c:510:     PDSP_ASSERT((ai16_in != NULL) && (ai16_out != NULL) && u32_size &&
	cmpq	$0, 56(%rbp)	 #, p_func
	jne	.L126	 #,
.L125:
 # ./pdsp.c:510:     PDSP_ASSERT((ai16_in != NULL) && (ai16_out != NULL) && u32_size &&
	movl	$510, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp91
	movq	%rax, %rdx	 # tmp91,
	leaq	.LC1(%rip), %rax	 #, tmp92
	movq	%rax, %rcx	 # tmp92,
	call	printf	 #
.L126:
 # ./pdsp.c:512:     for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
	movl	$0, -4(%rbp)	 #, u32_idx
 # ./pdsp.c:512:     for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
	jmp	.L127	 #
.L128:
 # ./pdsp.c:514:         ai16_out[u32_idx] = p_func(ai16_in[u32_idx]);
	movl	-4(%rbp), %eax	 # u32_idx, _1
	leaq	(%rax,%rax), %rdx	 #, _2
	movq	32(%rbp), %rax	 # ai16_in, tmp93
	addq	%rdx, %rax	 # _2, _3
	movzwl	(%rax), %eax	 # *_3, _4
 # ./pdsp.c:514:         ai16_out[u32_idx] = p_func(ai16_in[u32_idx]);
	cwtl
 # ./pdsp.c:514:         ai16_out[u32_idx] = p_func(ai16_in[u32_idx]);
	movl	-4(%rbp), %edx	 # u32_idx, _6
	leaq	(%rdx,%rdx), %rcx	 #, _7
	movq	40(%rbp), %rdx	 # ai16_out, tmp94
	leaq	(%rcx,%rdx), %rbx	 #, _8
 # ./pdsp.c:514:         ai16_out[u32_idx] = p_func(ai16_in[u32_idx]);
	movq	56(%rbp), %rdx	 # p_func, tmp95
	movl	%eax, %ecx	 # _5,
	call	*%rdx	 # tmp95
 # ./pdsp.c:514:         ai16_out[u32_idx] = p_func(ai16_in[u32_idx]);
	movw	%ax, (%rbx)	 # _9, *_8
 # ./pdsp.c:512:     for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
	addl	$1, -4(%rbp)	 #, u32_idx
.L127:
 # ./pdsp.c:512:     for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
	movl	-4(%rbp), %eax	 # u32_idx, tmp96
	cmpl	48(%rbp), %eax	 # u32_size, tmp96
	jb	.L128	 #,
 # ./pdsp.c:516: }
	nop	
	nop	
	addq	$56, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_array_linspace_f32
	.def	pdsp_array_linspace_f32;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_array_linspace_f32
pdsp_array_linspace_f32:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$72, %rsp	 #,
	.seh_stackalloc	72
	leaq	64(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 64
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # af32_out, af32_out
	movl	%edx, 40(%rbp)	 # u32_size, u32_size
	movss	%xmm2, 48(%rbp)	 # f32_start, f32_start
	movss	%xmm3, 56(%rbp)	 # f32_end, f32_end
 # ./pdsp.c:523:     pdsp_u32_t u32_idx = 0;
	movl	$0, -4(%rbp)	 #, u32_idx
 # ./pdsp.c:524:     PDSP_ASSERT((af32_out != NULL) && u32_size);
	cmpq	$0, 32(%rbp)	 #, af32_out
	je	.L130	 #,
 # ./pdsp.c:524:     PDSP_ASSERT((af32_out != NULL) && u32_size);
	cmpl	$0, 40(%rbp)	 #, u32_size
	jne	.L131	 #,
.L130:
 # ./pdsp.c:524:     PDSP_ASSERT((af32_out != NULL) && u32_size);
	movl	$524, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp89
	movq	%rax, %rdx	 # tmp89,
	leaq	.LC1(%rip), %rax	 #, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	printf	 #
.L131:
 # ./pdsp.c:525:     for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
	movl	$0, -4(%rbp)	 #, u32_idx
 # ./pdsp.c:525:     for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
	jmp	.L132	 #
.L137:
 # ./pdsp.c:528:             pdsp_map((pdsp_f32_t)u32_idx, 0.0f, (pdsp_f32_t)u32_size - 1.0f,
	movl	40(%rbp), %eax	 # u32_size, tmp91
	testq	%rax, %rax	 # tmp91
	js	.L133	 #,
	pxor	%xmm0, %xmm0	 # _1
	cvtsi2ssq	%rax, %xmm0	 # tmp91, _1
	jmp	.L134	 #
.L133:
	movq	%rax, %rdx	 # tmp91, tmp93
	shrq	%rdx	 # tmp93
	andl	$1, %eax	 #, tmp94
	orq	%rax, %rdx	 # tmp94, tmp93
	pxor	%xmm0, %xmm0	 # tmp92
	cvtsi2ssq	%rdx, %xmm0	 # tmp93, tmp92
	addss	%xmm0, %xmm0	 # tmp92, _1
.L134:
 # ./pdsp.c:528:             pdsp_map((pdsp_f32_t)u32_idx, 0.0f, (pdsp_f32_t)u32_size - 1.0f,
	movss	.LC4(%rip), %xmm1	 #, tmp95
	movaps	%xmm0, %xmm2	 # _1, _1
	subss	%xmm1, %xmm2	 # tmp95, _1
	movl	-4(%rbp), %eax	 # u32_idx, tmp96
	testq	%rax, %rax	 # tmp96
	js	.L135	 #,
	pxor	%xmm4, %xmm4	 # _3
	cvtsi2ssq	%rax, %xmm4	 # tmp96, _3
	movd	%xmm4, %eax	 # _3, _3
	jmp	.L136	 #
.L135:
	movq	%rax, %rdx	 # tmp96, tmp98
	shrq	%rdx	 # tmp98
	andl	$1, %eax	 #, tmp99
	orq	%rax, %rdx	 # tmp99, tmp98
	pxor	%xmm0, %xmm0	 # tmp97
	cvtsi2ssq	%rdx, %xmm0	 # tmp98, tmp97
	addss	%xmm0, %xmm0	 # tmp97, tmp97
	movd	%xmm0, %eax	 # tmp97, _3
.L136:
 # ./pdsp.c:527:         af32_out[u32_idx] =
	movl	-4(%rbp), %edx	 # u32_idx, _4
	leaq	0(,%rdx,4), %rcx	 #, _5
	movq	32(%rbp), %rdx	 # af32_out, tmp100
	leaq	(%rcx,%rdx), %rbx	 #, _6
 # ./pdsp.c:528:             pdsp_map((pdsp_f32_t)u32_idx, 0.0f, (pdsp_f32_t)u32_size - 1.0f,
	movss	48(%rbp), %xmm1	 # f32_start, tmp101
	movss	56(%rbp), %xmm0	 # f32_end, tmp102
	movss	%xmm0, 32(%rsp)	 # tmp102,
	movaps	%xmm1, %xmm3	 # tmp101,
	pxor	%xmm1, %xmm1	 #
	movd	%eax, %xmm0	 # _3,
	call	pdsp_map	 #
	movd	%xmm0, %eax	 #, _7
 # ./pdsp.c:527:         af32_out[u32_idx] =
	movl	%eax, (%rbx)	 # _7, *_6
 # ./pdsp.c:525:     for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
	addl	$1, -4(%rbp)	 #, u32_idx
.L132:
 # ./pdsp.c:525:     for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
	movl	-4(%rbp), %eax	 # u32_idx, tmp103
	cmpl	40(%rbp), %eax	 # u32_size, tmp103
	jb	.L137	 #,
 # ./pdsp.c:531: }
	nop	
	nop	
	addq	$72, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_array_logspace_f32
	.def	pdsp_array_logspace_f32;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_array_logspace_f32
pdsp_array_logspace_f32:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$72, %rsp	 #,
	.seh_stackalloc	72
	leaq	64(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 64
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # af32_out, af32_out
	movl	%edx, 40(%rbp)	 # u32_size, u32_size
	movss	%xmm2, 48(%rbp)	 # f32_start, f32_start
	movss	%xmm3, 56(%rbp)	 # f32_end, f32_end
 # ./pdsp.c:538:     pdsp_u32_t u32_idx = 0;
	movl	$0, -4(%rbp)	 #, u32_idx
 # ./pdsp.c:539:     PDSP_ASSERT((af32_out != NULL) && u32_size);
	cmpq	$0, 32(%rbp)	 #, af32_out
	je	.L139	 #,
 # ./pdsp.c:539:     PDSP_ASSERT((af32_out != NULL) && u32_size);
	cmpl	$0, 40(%rbp)	 #, u32_size
	jne	.L140	 #,
.L139:
 # ./pdsp.c:539:     PDSP_ASSERT((af32_out != NULL) && u32_size);
	movl	$539, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp90
	movq	%rax, %rdx	 # tmp90,
	leaq	.LC1(%rip), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	printf	 #
.L140:
 # ./pdsp.c:540:     for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
	movl	$0, -4(%rbp)	 #, u32_idx
 # ./pdsp.c:540:     for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
	jmp	.L141	 #
.L146:
 # ./pdsp.c:543:                                                  (pdsp_f32_t)u32_size - 1.0f,
	movl	40(%rbp), %eax	 # u32_size, tmp92
	testq	%rax, %rax	 # tmp92
	js	.L142	 #,
	pxor	%xmm0, %xmm0	 # _1
	cvtsi2ssq	%rax, %xmm0	 # tmp92, _1
	jmp	.L143	 #
.L142:
	movq	%rax, %rdx	 # tmp92, tmp94
	shrq	%rdx	 # tmp94
	andl	$1, %eax	 #, tmp95
	orq	%rax, %rdx	 # tmp95, tmp94
	pxor	%xmm0, %xmm0	 # tmp93
	cvtsi2ssq	%rdx, %xmm0	 # tmp94, tmp93
	addss	%xmm0, %xmm0	 # tmp93, _1
.L143:
 # ./pdsp.c:542:         af32_out[u32_idx] = powf(10.0f, pdsp_map((pdsp_f32_t)u32_idx, 0.0f,
	movss	.LC4(%rip), %xmm1	 #, tmp96
	movaps	%xmm0, %xmm2	 # _1, _1
	subss	%xmm1, %xmm2	 # tmp96, _1
	movl	-4(%rbp), %eax	 # u32_idx, tmp97
	testq	%rax, %rax	 # tmp97
	js	.L144	 #,
	pxor	%xmm4, %xmm4	 # _3
	cvtsi2ssq	%rax, %xmm4	 # tmp97, _3
	movd	%xmm4, %eax	 # _3, _3
	jmp	.L145	 #
.L144:
	movq	%rax, %rdx	 # tmp97, tmp99
	shrq	%rdx	 # tmp99
	andl	$1, %eax	 #, tmp100
	orq	%rax, %rdx	 # tmp100, tmp99
	pxor	%xmm0, %xmm0	 # tmp98
	cvtsi2ssq	%rdx, %xmm0	 # tmp99, tmp98
	addss	%xmm0, %xmm0	 # tmp98, tmp98
	movd	%xmm0, %eax	 # tmp98, _3
.L145:
	movss	48(%rbp), %xmm1	 # f32_start, tmp101
	movss	56(%rbp), %xmm0	 # f32_end, tmp102
	movss	%xmm0, 32(%rsp)	 # tmp102,
	movaps	%xmm1, %xmm3	 # tmp101,
	pxor	%xmm1, %xmm1	 #
	movd	%eax, %xmm0	 # _3,
	call	pdsp_map	 #
	movd	%xmm0, %eax	 #, _4
 # ./pdsp.c:542:         af32_out[u32_idx] = powf(10.0f, pdsp_map((pdsp_f32_t)u32_idx, 0.0f,
	movl	-4(%rbp), %edx	 # u32_idx, _5
	leaq	0(,%rdx,4), %rcx	 #, _6
	movq	32(%rbp), %rdx	 # af32_out, tmp103
	leaq	(%rcx,%rdx), %rbx	 #, _7
 # ./pdsp.c:542:         af32_out[u32_idx] = powf(10.0f, pdsp_map((pdsp_f32_t)u32_idx, 0.0f,
	movd	%eax, %xmm1	 # _4,
	movl	.LC5(%rip), %eax	 #, tmp104
	movd	%eax, %xmm0	 # tmp104,
	call	powf	 #
	movd	%xmm0, %eax	 #, _8
 # ./pdsp.c:542:         af32_out[u32_idx] = powf(10.0f, pdsp_map((pdsp_f32_t)u32_idx, 0.0f,
	movl	%eax, (%rbx)	 # _8, *_7
 # ./pdsp.c:540:     for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
	addl	$1, -4(%rbp)	 #, u32_idx
.L141:
 # ./pdsp.c:540:     for (u32_idx = 0; u32_idx < u32_size; u32_idx++)
	movl	-4(%rbp), %eax	 # u32_idx, tmp105
	cmpl	40(%rbp), %eax	 # u32_size, tmp105
	jb	.L146	 #,
 # ./pdsp.c:546: }
	nop	
	nop	
	addq	$72, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_hysteresis_value_clear
	.def	pdsp_hysteresis_value_clear;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_hysteresis_value_clear
pdsp_hysteresis_value_clear:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:550:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L148	 #,
 # ./pdsp.c:550:     PDSP_ASSERT(ps_data != NULL);
	movl	$550, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp82
	movq	%rax, %rdx	 # tmp82,
	leaq	.LC1(%rip), %rax	 #, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	printf	 #
.L148:
 # ./pdsp.c:551:     ps_data->b_state = PDSP_FALSE;
	movq	16(%rbp), %rax	 # ps_data, tmp84
	movb	$0, (%rax)	 #, ps_data_2(D)->b_state
 # ./pdsp.c:552: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_hysteresis_value_init
	.def	pdsp_hysteresis_value_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_hysteresis_value_init
pdsp_hysteresis_value_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_low, f32_low
	movss	%xmm2, 32(%rbp)	 # f32_high, f32_high
 # ./pdsp.c:558:     ps_data->b_state = PDSP_FALSE;
	movq	16(%rbp), %rax	 # ps_data, tmp82
	movb	$0, (%rax)	 #, ps_data_2(D)->b_state
 # ./pdsp.c:559:     ps_data->f32_low = f32_low;
	movq	16(%rbp), %rax	 # ps_data, tmp83
	movss	24(%rbp), %xmm0	 # f32_low, tmp84
	movss	%xmm0, 4(%rax)	 # tmp84, ps_data_2(D)->f32_low
 # ./pdsp.c:560:     ps_data->f32_high = f32_high;
	movq	16(%rbp), %rax	 # ps_data, tmp85
	movss	32(%rbp), %xmm0	 # f32_high, tmp86
	movss	%xmm0, 8(%rax)	 # tmp86, ps_data_2(D)->f32_high
 # ./pdsp.c:561: }
	nop	
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_hysteresis_value
	.def	pdsp_hysteresis_value;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_hysteresis_value
pdsp_hysteresis_value:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:566:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L151	 #,
 # ./pdsp.c:566:     PDSP_ASSERT(ps_data != NULL);
	movl	$566, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp86
	movq	%rax, %rdx	 # tmp86,
	leaq	.LC1(%rip), %rax	 #, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	printf	 #
.L151:
 # ./pdsp.c:568:     if (f32_in > ps_data->f32_high)
	movq	16(%rbp), %rax	 # ps_data, tmp88
	movss	8(%rax), %xmm1	 # ps_data_5(D)->f32_high, _1
 # ./pdsp.c:568:     if (f32_in > ps_data->f32_high)
	movss	24(%rbp), %xmm0	 # f32_in, tmp89
	comiss	%xmm1, %xmm0	 # _1, tmp89
	jbe	.L159	 #,
 # ./pdsp.c:570:         ps_data->b_state = PDSP_TRUE;
	movq	16(%rbp), %rax	 # ps_data, tmp90
	movb	$1, (%rax)	 #, ps_data_5(D)->b_state
	jmp	.L154	 #
.L159:
 # ./pdsp.c:573:     else if (f32_in < ps_data->f32_low)
	movq	16(%rbp), %rax	 # ps_data, tmp91
	movss	4(%rax), %xmm0	 # ps_data_5(D)->f32_low, _2
 # ./pdsp.c:573:     else if (f32_in < ps_data->f32_low)
	comiss	24(%rbp), %xmm0	 # f32_in, _2
	jbe	.L154	 #,
 # ./pdsp.c:575:         ps_data->b_state = PDSP_FALSE;
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movb	$0, (%rax)	 #, ps_data_5(D)->b_state
.L154:
 # ./pdsp.c:578:     return ps_data->b_state;
	movq	16(%rbp), %rax	 # ps_data, tmp93
	movzbl	(%rax), %eax	 # ps_data_5(D)->b_state, _11
 # ./pdsp.c:579: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_hysteresis_list_clear
	.def	pdsp_hysteresis_list_clear;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_hysteresis_list_clear
pdsp_hysteresis_list_clear:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:583:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L161	 #,
 # ./pdsp.c:583:     PDSP_ASSERT(ps_data != NULL);
	movl	$583, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp82
	movq	%rax, %rdx	 # tmp82,
	leaq	.LC1(%rip), %rax	 #, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	printf	 #
.L161:
 # ./pdsp.c:584:     ps_data->u16_state = 0U;
	movq	16(%rbp), %rax	 # ps_data, tmp84
	movw	$0, (%rax)	 #, ps_data_2(D)->u16_state
 # ./pdsp.c:585: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_hysteresis_list_init
	.def	pdsp_hysteresis_list_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_hysteresis_list_init
pdsp_hysteresis_list_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movq	%rdx, 24(%rbp)	 # af32_thres_up, af32_thres_up
	movq	%r8, 32(%rbp)	 # af32_thres_dn, af32_thres_dn
	movl	%r9d, %eax	 # u16_size, tmp82
	movw	%ax, 40(%rbp)	 # tmp83, u16_size
 # ./pdsp.c:592:     ps_data->u16_state = 0U;
	movq	16(%rbp), %rax	 # ps_data, tmp84
	movw	$0, (%rax)	 #, ps_data_2(D)->u16_state
 # ./pdsp.c:593:     ps_data->af32_thres_up = af32_thres_up;
	movq	16(%rbp), %rax	 # ps_data, tmp85
	movq	24(%rbp), %rdx	 # af32_thres_up, tmp86
	movq	%rdx, 8(%rax)	 # tmp86, ps_data_2(D)->af32_thres_up
 # ./pdsp.c:594:     ps_data->af32_thres_dn = af32_thres_dn;
	movq	16(%rbp), %rax	 # ps_data, tmp87
	movq	32(%rbp), %rdx	 # af32_thres_dn, tmp88
	movq	%rdx, 16(%rax)	 # tmp88, ps_data_2(D)->af32_thres_dn
 # ./pdsp.c:595:     ps_data->u16_size = u16_size;
	movq	16(%rbp), %rax	 # ps_data, tmp89
	movzwl	40(%rbp), %edx	 # u16_size, tmp90
	movw	%dx, 24(%rax)	 # tmp90, ps_data_2(D)->u16_size
 # ./pdsp.c:596: }
	nop	
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_hysteresis_list
	.def	pdsp_hysteresis_list;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_hysteresis_list
pdsp_hysteresis_list:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:601:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L164	 #,
 # ./pdsp.c:601:     PDSP_ASSERT(ps_data != NULL);
	movl	$601, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp106
	movq	%rax, %rdx	 # tmp106,
	leaq	.LC1(%rip), %rax	 #, tmp107
	movq	%rax, %rcx	 # tmp107,
	call	printf	 #
.L164:
 # ./pdsp.c:603:     if (f32_in > ps_data->af32_thres_up[ps_data->u16_state])
	movq	16(%rbp), %rax	 # ps_data, tmp108
	movq	8(%rax), %rdx	 # ps_data_27(D)->af32_thres_up, _1
 # ./pdsp.c:603:     if (f32_in > ps_data->af32_thres_up[ps_data->u16_state])
	movq	16(%rbp), %rax	 # ps_data, tmp109
	movzwl	(%rax), %eax	 # ps_data_27(D)->u16_state, _2
	movzwl	%ax, %eax	 # _2, _3
 # ./pdsp.c:603:     if (f32_in > ps_data->af32_thres_up[ps_data->u16_state])
	salq	$2, %rax	 #, _4
	addq	%rdx, %rax	 # _1, _5
	movss	(%rax), %xmm1	 # *_5, _6
 # ./pdsp.c:603:     if (f32_in > ps_data->af32_thres_up[ps_data->u16_state])
	movss	24(%rbp), %xmm0	 # f32_in, tmp110
	comiss	%xmm1, %xmm0	 # _6, tmp110
	jbe	.L172	 #,
 # ./pdsp.c:605:         if (ps_data->u16_state < ps_data->u16_size - 2)
	movq	16(%rbp), %rax	 # ps_data, tmp111
	movzwl	(%rax), %eax	 # ps_data_27(D)->u16_state, _7
	movzwl	%ax, %edx	 # _7, _8
 # ./pdsp.c:605:         if (ps_data->u16_state < ps_data->u16_size - 2)
	movq	16(%rbp), %rax	 # ps_data, tmp112
	movzwl	24(%rax), %eax	 # ps_data_27(D)->u16_size, _9
	movzwl	%ax, %eax	 # _9, _10
 # ./pdsp.c:605:         if (ps_data->u16_state < ps_data->u16_size - 2)
	subl	$2, %eax	 #, _11
 # ./pdsp.c:605:         if (ps_data->u16_state < ps_data->u16_size - 2)
	cmpl	%eax, %edx	 # _11, _8
	jge	.L167	 #,
 # ./pdsp.c:607:             ps_data->u16_state++;
	movq	16(%rbp), %rax	 # ps_data, tmp113
	movzwl	(%rax), %eax	 # ps_data_27(D)->u16_state, _12
 # ./pdsp.c:607:             ps_data->u16_state++;
	leal	1(%rax), %edx	 #, _14
	movq	16(%rbp), %rax	 # ps_data, tmp114
	movw	%dx, (%rax)	 # _14, ps_data_27(D)->u16_state
	jmp	.L167	 #
.L172:
 # ./pdsp.c:611:     else if (f32_in < ps_data->af32_thres_dn[ps_data->u16_state])
	movq	16(%rbp), %rax	 # ps_data, tmp115
	movq	16(%rax), %rdx	 # ps_data_27(D)->af32_thres_dn, _15
 # ./pdsp.c:611:     else if (f32_in < ps_data->af32_thres_dn[ps_data->u16_state])
	movq	16(%rbp), %rax	 # ps_data, tmp116
	movzwl	(%rax), %eax	 # ps_data_27(D)->u16_state, _16
	movzwl	%ax, %eax	 # _16, _17
 # ./pdsp.c:611:     else if (f32_in < ps_data->af32_thres_dn[ps_data->u16_state])
	salq	$2, %rax	 #, _18
	addq	%rdx, %rax	 # _15, _19
	movss	(%rax), %xmm0	 # *_19, _20
 # ./pdsp.c:611:     else if (f32_in < ps_data->af32_thres_dn[ps_data->u16_state])
	comiss	24(%rbp), %xmm0	 # f32_in, _20
	jbe	.L167	 #,
 # ./pdsp.c:613:         if (ps_data->u16_state > 0U)
	movq	16(%rbp), %rax	 # ps_data, tmp117
	movzwl	(%rax), %eax	 # ps_data_27(D)->u16_state, _21
 # ./pdsp.c:613:         if (ps_data->u16_state > 0U)
	testw	%ax, %ax	 # _21
	je	.L167	 #,
 # ./pdsp.c:615:             ps_data->u16_state--;
	movq	16(%rbp), %rax	 # ps_data, tmp118
	movzwl	(%rax), %eax	 # ps_data_27(D)->u16_state, _22
 # ./pdsp.c:615:             ps_data->u16_state--;
	leal	-1(%rax), %edx	 #, _24
	movq	16(%rbp), %rax	 # ps_data, tmp119
	movw	%dx, (%rax)	 # _24, ps_data_27(D)->u16_state
.L167:
 # ./pdsp.c:619:     return ps_data->u16_state;
	movq	16(%rbp), %rax	 # ps_data, tmp120
	movzwl	(%rax), %eax	 # ps_data_27(D)->u16_state, _33
 # ./pdsp.c:620: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_debounce_clear
	.def	pdsp_debounce_clear;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_debounce_clear
pdsp_debounce_clear:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:624:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L174	 #,
 # ./pdsp.c:624:     PDSP_ASSERT(ps_data != NULL);
	movl	$624, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp82
	movq	%rax, %rdx	 # tmp82,
	leaq	.LC1(%rip), %rax	 #, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	printf	 #
.L174:
 # ./pdsp.c:625:     ps_data->b_state = PDSP_FALSE;
	movq	16(%rbp), %rax	 # ps_data, tmp84
	movb	$0, (%rax)	 #, ps_data_2(D)->b_state
 # ./pdsp.c:626:     ps_data->f32_time = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp85
	pxor	%xmm0, %xmm0	 # tmp86
	movss	%xmm0, 4(%rax)	 # tmp86, ps_data_2(D)->f32_time
 # ./pdsp.c:627: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_debounce
	.def	pdsp_debounce;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_debounce
pdsp_debounce:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movl	%edx, %eax	 # b_in, tmp98
	movb	%al, 24(%rbp)	 # tmp99, b_in
 # ./pdsp.c:632:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L176	 #,
 # ./pdsp.c:632:     PDSP_ASSERT(ps_data != NULL);
	movl	$632, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp100
	movq	%rax, %rdx	 # tmp100,
	leaq	.LC1(%rip), %rax	 #, tmp101
	movq	%rax, %rcx	 # tmp101,
	call	printf	 #
.L176:
 # ./pdsp.c:634:     if (!(ps_data->b_state) && b_in)
	movq	16(%rbp), %rax	 # ps_data, tmp102
	movzbl	(%rax), %eax	 # ps_data_19(D)->b_state, _1
 # ./pdsp.c:634:     if (!(ps_data->b_state) && b_in)
	xorl	$1, %eax	 #, _2
 # ./pdsp.c:634:     if (!(ps_data->b_state) && b_in)
	testb	%al, %al	 # _2
	je	.L177	 #,
 # ./pdsp.c:634:     if (!(ps_data->b_state) && b_in)
	cmpb	$0, 24(%rbp)	 #, b_in
	je	.L177	 #,
 # ./pdsp.c:636:         ps_data->f32_time += ps_data->f32_t_step;
	movq	16(%rbp), %rax	 # ps_data, tmp103
	movss	4(%rax), %xmm1	 # ps_data_19(D)->f32_time, _3
 # ./pdsp.c:636:         ps_data->f32_time += ps_data->f32_t_step;
	movq	16(%rbp), %rax	 # ps_data, tmp104
	movss	8(%rax), %xmm0	 # ps_data_19(D)->f32_t_step, _4
 # ./pdsp.c:636:         ps_data->f32_time += ps_data->f32_t_step;
	addss	%xmm1, %xmm0	 # _3, _5
	movq	16(%rbp), %rax	 # ps_data, tmp105
	movss	%xmm0, 4(%rax)	 # _5, ps_data_19(D)->f32_time
 # ./pdsp.c:637:         if (ps_data->f32_time > ps_data->f32_t_high)
	movq	16(%rbp), %rax	 # ps_data, tmp106
	movss	4(%rax), %xmm0	 # ps_data_19(D)->f32_time, _6
 # ./pdsp.c:637:         if (ps_data->f32_time > ps_data->f32_t_high)
	movq	16(%rbp), %rax	 # ps_data, tmp107
	movss	12(%rax), %xmm1	 # ps_data_19(D)->f32_t_high, _7
 # ./pdsp.c:637:         if (ps_data->f32_time > ps_data->f32_t_high)
	comiss	%xmm1, %xmm0	 # _7, _6
	jbe	.L180	 #,
 # ./pdsp.c:639:             ps_data->b_state = PDSP_TRUE;
	movq	16(%rbp), %rax	 # ps_data, tmp108
	movb	$1, (%rax)	 #, ps_data_19(D)->b_state
 # ./pdsp.c:640:             ps_data->f32_time = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp109
	pxor	%xmm0, %xmm0	 # tmp110
	movss	%xmm0, 4(%rax)	 # tmp110, ps_data_19(D)->f32_time
 # ./pdsp.c:637:         if (ps_data->f32_time > ps_data->f32_t_high)
	jmp	.L180	 #
.L177:
 # ./pdsp.c:644:     else if ((ps_data->b_state) && !b_in)
	movq	16(%rbp), %rax	 # ps_data, tmp111
	movzbl	(%rax), %eax	 # ps_data_19(D)->b_state, _8
 # ./pdsp.c:644:     else if ((ps_data->b_state) && !b_in)
	testb	%al, %al	 # _8
	je	.L181	 #,
 # ./pdsp.c:644:     else if ((ps_data->b_state) && !b_in)
	movzbl	24(%rbp), %eax	 # b_in, tmp112
	xorl	$1, %eax	 #, _9
 # ./pdsp.c:644:     else if ((ps_data->b_state) && !b_in)
	testb	%al, %al	 # _9
	je	.L181	 #,
 # ./pdsp.c:646:         ps_data->f32_time += ps_data->f32_t_step;
	movq	16(%rbp), %rax	 # ps_data, tmp113
	movss	4(%rax), %xmm1	 # ps_data_19(D)->f32_time, _10
 # ./pdsp.c:646:         ps_data->f32_time += ps_data->f32_t_step;
	movq	16(%rbp), %rax	 # ps_data, tmp114
	movss	8(%rax), %xmm0	 # ps_data_19(D)->f32_t_step, _11
 # ./pdsp.c:646:         ps_data->f32_time += ps_data->f32_t_step;
	addss	%xmm1, %xmm0	 # _10, _12
	movq	16(%rbp), %rax	 # ps_data, tmp115
	movss	%xmm0, 4(%rax)	 # _12, ps_data_19(D)->f32_time
 # ./pdsp.c:647:         if (ps_data->f32_time > ps_data->f32_t_low)
	movq	16(%rbp), %rax	 # ps_data, tmp116
	movss	4(%rax), %xmm0	 # ps_data_19(D)->f32_time, _13
 # ./pdsp.c:647:         if (ps_data->f32_time > ps_data->f32_t_low)
	movq	16(%rbp), %rax	 # ps_data, tmp117
	movss	16(%rax), %xmm1	 # ps_data_19(D)->f32_t_low, _14
 # ./pdsp.c:647:         if (ps_data->f32_time > ps_data->f32_t_low)
	comiss	%xmm1, %xmm0	 # _14, _13
	jbe	.L180	 #,
 # ./pdsp.c:649:             ps_data->b_state = PDSP_FALSE;
	movq	16(%rbp), %rax	 # ps_data, tmp118
	movb	$0, (%rax)	 #, ps_data_19(D)->b_state
 # ./pdsp.c:650:             ps_data->f32_time = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp119
	pxor	%xmm0, %xmm0	 # tmp120
	movss	%xmm0, 4(%rax)	 # tmp120, ps_data_19(D)->f32_time
 # ./pdsp.c:647:         if (ps_data->f32_time > ps_data->f32_t_low)
	jmp	.L180	 #
.L181:
 # ./pdsp.c:656:         ps_data->f32_time = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp121
	pxor	%xmm0, %xmm0	 # tmp122
	movss	%xmm0, 4(%rax)	 # tmp122, ps_data_19(D)->f32_time
.L180:
 # ./pdsp.c:658:     return ps_data->b_state;
	movq	16(%rbp), %rax	 # ps_data, tmp123
	movzbl	(%rax), %eax	 # ps_data_19(D)->b_state, _30
 # ./pdsp.c:659: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_debounce_cnt_clear
	.def	pdsp_debounce_cnt_clear;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_debounce_cnt_clear
pdsp_debounce_cnt_clear:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:663:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L188	 #,
 # ./pdsp.c:663:     PDSP_ASSERT(ps_data != NULL);
	movl	$663, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp82
	movq	%rax, %rdx	 # tmp82,
	leaq	.LC1(%rip), %rax	 #, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	printf	 #
.L188:
 # ./pdsp.c:664:     ps_data->b_state = PDSP_FALSE;
	movq	16(%rbp), %rax	 # ps_data, tmp84
	movb	$0, (%rax)	 #, ps_data_2(D)->b_state
 # ./pdsp.c:665:     ps_data->u16_count = 0U;
	movq	16(%rbp), %rax	 # ps_data, tmp85
	movw	$0, 2(%rax)	 #, ps_data_2(D)->u16_count
 # ./pdsp.c:666: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_debounce_cnt
	.def	pdsp_debounce_cnt;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_debounce_cnt
pdsp_debounce_cnt:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movl	%edx, %eax	 # b_in, tmp96
	movb	%al, 24(%rbp)	 # tmp97, b_in
 # ./pdsp.c:671:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L190	 #,
 # ./pdsp.c:671:     PDSP_ASSERT(ps_data != NULL);
	movl	$671, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp98
	movq	%rax, %rdx	 # tmp98,
	leaq	.LC1(%rip), %rax	 #, tmp99
	movq	%rax, %rcx	 # tmp99,
	call	printf	 #
.L190:
 # ./pdsp.c:673:     if (!(ps_data->b_state) && b_in)
	movq	16(%rbp), %rax	 # ps_data, tmp100
	movzbl	(%rax), %eax	 # ps_data_19(D)->b_state, _1
 # ./pdsp.c:673:     if (!(ps_data->b_state) && b_in)
	xorl	$1, %eax	 #, _2
 # ./pdsp.c:673:     if (!(ps_data->b_state) && b_in)
	testb	%al, %al	 # _2
	je	.L191	 #,
 # ./pdsp.c:673:     if (!(ps_data->b_state) && b_in)
	cmpb	$0, 24(%rbp)	 #, b_in
	je	.L191	 #,
 # ./pdsp.c:675:         ps_data->u16_count++;
	movq	16(%rbp), %rax	 # ps_data, tmp101
	movzwl	2(%rax), %eax	 # ps_data_19(D)->u16_count, _3
 # ./pdsp.c:675:         ps_data->u16_count++;
	leal	1(%rax), %edx	 #, _5
	movq	16(%rbp), %rax	 # ps_data, tmp102
	movw	%dx, 2(%rax)	 # _5, ps_data_19(D)->u16_count
 # ./pdsp.c:676:         if (ps_data->u16_count > ps_data->u16_cnt_high)
	movq	16(%rbp), %rax	 # ps_data, tmp103
	movzwl	2(%rax), %edx	 # ps_data_19(D)->u16_count, _6
 # ./pdsp.c:676:         if (ps_data->u16_count > ps_data->u16_cnt_high)
	movq	16(%rbp), %rax	 # ps_data, tmp104
	movzwl	4(%rax), %eax	 # ps_data_19(D)->u16_cnt_high, _7
 # ./pdsp.c:676:         if (ps_data->u16_count > ps_data->u16_cnt_high)
	cmpw	%dx, %ax	 # _6, _7
	jnb	.L193	 #,
 # ./pdsp.c:678:             ps_data->b_state = PDSP_TRUE;
	movq	16(%rbp), %rax	 # ps_data, tmp105
	movb	$1, (%rax)	 #, ps_data_19(D)->b_state
 # ./pdsp.c:679:             ps_data->u16_count = 0U;
	movq	16(%rbp), %rax	 # ps_data, tmp106
	movw	$0, 2(%rax)	 #, ps_data_19(D)->u16_count
 # ./pdsp.c:676:         if (ps_data->u16_count > ps_data->u16_cnt_high)
	jmp	.L193	 #
.L191:
 # ./pdsp.c:683:     else if ((ps_data->b_state) && !b_in)
	movq	16(%rbp), %rax	 # ps_data, tmp107
	movzbl	(%rax), %eax	 # ps_data_19(D)->b_state, _8
 # ./pdsp.c:683:     else if ((ps_data->b_state) && !b_in)
	testb	%al, %al	 # _8
	je	.L194	 #,
 # ./pdsp.c:683:     else if ((ps_data->b_state) && !b_in)
	movzbl	24(%rbp), %eax	 # b_in, tmp108
	xorl	$1, %eax	 #, _9
 # ./pdsp.c:683:     else if ((ps_data->b_state) && !b_in)
	testb	%al, %al	 # _9
	je	.L194	 #,
 # ./pdsp.c:685:         ps_data->u16_count++;
	movq	16(%rbp), %rax	 # ps_data, tmp109
	movzwl	2(%rax), %eax	 # ps_data_19(D)->u16_count, _10
 # ./pdsp.c:685:         ps_data->u16_count++;
	leal	1(%rax), %edx	 #, _12
	movq	16(%rbp), %rax	 # ps_data, tmp110
	movw	%dx, 2(%rax)	 # _12, ps_data_19(D)->u16_count
 # ./pdsp.c:686:         if (ps_data->u16_count > ps_data->u16_cnt_low)
	movq	16(%rbp), %rax	 # ps_data, tmp111
	movzwl	2(%rax), %edx	 # ps_data_19(D)->u16_count, _13
 # ./pdsp.c:686:         if (ps_data->u16_count > ps_data->u16_cnt_low)
	movq	16(%rbp), %rax	 # ps_data, tmp112
	movzwl	6(%rax), %eax	 # ps_data_19(D)->u16_cnt_low, _14
 # ./pdsp.c:686:         if (ps_data->u16_count > ps_data->u16_cnt_low)
	cmpw	%dx, %ax	 # _13, _14
	jnb	.L193	 #,
 # ./pdsp.c:688:             ps_data->b_state = PDSP_FALSE;
	movq	16(%rbp), %rax	 # ps_data, tmp113
	movb	$0, (%rax)	 #, ps_data_19(D)->b_state
 # ./pdsp.c:689:             ps_data->u16_count = 0U;
	movq	16(%rbp), %rax	 # ps_data, tmp114
	movw	$0, 2(%rax)	 #, ps_data_19(D)->u16_count
 # ./pdsp.c:686:         if (ps_data->u16_count > ps_data->u16_cnt_low)
	jmp	.L193	 #
.L194:
 # ./pdsp.c:695:         ps_data->u16_count = 0U;
	movq	16(%rbp), %rax	 # ps_data, tmp115
	movw	$0, 2(%rax)	 #, ps_data_19(D)->u16_count
.L193:
 # ./pdsp.c:697:     return ps_data->b_state;
	movq	16(%rbp), %rax	 # ps_data, tmp116
	movzbl	(%rax), %eax	 # ps_data_19(D)->b_state, _30
 # ./pdsp.c:698: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_robust_clear
	.def	pdsp_robust_clear;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_robust_clear
pdsp_robust_clear:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:702:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L198	 #,
 # ./pdsp.c:702:     PDSP_ASSERT(ps_data != NULL);
	movl	$702, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp82
	movq	%rax, %rdx	 # tmp82,
	leaq	.LC1(%rip), %rax	 #, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	printf	 #
.L198:
 # ./pdsp.c:703:     ps_data->u16_state = 0U;
	movq	16(%rbp), %rax	 # ps_data, tmp84
	movw	$0, (%rax)	 #, ps_data_2(D)->u16_state
 # ./pdsp.c:704:     ps_data->f32_time = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp85
	pxor	%xmm0, %xmm0	 # tmp86
	movss	%xmm0, 4(%rax)	 # tmp86, ps_data_2(D)->f32_time
 # ./pdsp.c:705: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_robust
	.def	pdsp_robust;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_robust
pdsp_robust:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:709:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L200	 #,
 # ./pdsp.c:709:     PDSP_ASSERT(ps_data != NULL);
	movl	$709, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp132
	movq	%rax, %rdx	 # tmp132,
	leaq	.LC1(%rip), %rax	 #, tmp133
	movq	%rax, %rcx	 # tmp133,
	call	printf	 #
.L200:
 # ./pdsp.c:711:     if (f32_in > ps_data->af32_thres_up[ps_data->u16_state])
	movq	16(%rbp), %rax	 # ps_data, tmp134
	movq	16(%rax), %rdx	 # ps_data_57(D)->af32_thres_up, _1
 # ./pdsp.c:711:     if (f32_in > ps_data->af32_thres_up[ps_data->u16_state])
	movq	16(%rbp), %rax	 # ps_data, tmp135
	movzwl	(%rax), %eax	 # ps_data_57(D)->u16_state, _2
	movzwl	%ax, %eax	 # _2, _3
 # ./pdsp.c:711:     if (f32_in > ps_data->af32_thres_up[ps_data->u16_state])
	salq	$2, %rax	 #, _4
	addq	%rdx, %rax	 # _1, _5
	movss	(%rax), %xmm1	 # *_5, _6
 # ./pdsp.c:711:     if (f32_in > ps_data->af32_thres_up[ps_data->u16_state])
	movss	24(%rbp), %xmm0	 # f32_in, tmp136
	comiss	%xmm1, %xmm0	 # _6, tmp136
	jbe	.L217	 #,
 # ./pdsp.c:714:         if (ps_data->u16_state < ps_data->u16_size - 1)
	movq	16(%rbp), %rax	 # ps_data, tmp137
	movzwl	(%rax), %eax	 # ps_data_57(D)->u16_state, _7
	movzwl	%ax, %edx	 # _7, _8
 # ./pdsp.c:714:         if (ps_data->u16_state < ps_data->u16_size - 1)
	movq	16(%rbp), %rax	 # ps_data, tmp138
	movzwl	48(%rax), %eax	 # ps_data_57(D)->u16_size, _9
	movzwl	%ax, %eax	 # _9, _10
 # ./pdsp.c:714:         if (ps_data->u16_state < ps_data->u16_size - 1)
	subl	$1, %eax	 #, _11
 # ./pdsp.c:714:         if (ps_data->u16_state < ps_data->u16_size - 1)
	cmpl	%eax, %edx	 # _11, _8
	jge	.L203	 #,
 # ./pdsp.c:716:             ps_data->f32_time += ps_data->f32_t_step;
	movq	16(%rbp), %rax	 # ps_data, tmp139
	movss	4(%rax), %xmm1	 # ps_data_57(D)->f32_time, _12
 # ./pdsp.c:716:             ps_data->f32_time += ps_data->f32_t_step;
	movq	16(%rbp), %rax	 # ps_data, tmp140
	movss	8(%rax), %xmm0	 # ps_data_57(D)->f32_t_step, _13
 # ./pdsp.c:716:             ps_data->f32_time += ps_data->f32_t_step;
	addss	%xmm1, %xmm0	 # _12, _14
	movq	16(%rbp), %rax	 # ps_data, tmp141
	movss	%xmm0, 4(%rax)	 # _14, ps_data_57(D)->f32_time
.L203:
 # ./pdsp.c:719:         if (ps_data->f32_time > ps_data->af32_time_up[ps_data->u16_state])
	movq	16(%rbp), %rax	 # ps_data, tmp142
	movss	4(%rax), %xmm0	 # ps_data_57(D)->f32_time, _15
 # ./pdsp.c:719:         if (ps_data->f32_time > ps_data->af32_time_up[ps_data->u16_state])
	movq	16(%rbp), %rax	 # ps_data, tmp143
	movq	32(%rax), %rdx	 # ps_data_57(D)->af32_time_up, _16
 # ./pdsp.c:719:         if (ps_data->f32_time > ps_data->af32_time_up[ps_data->u16_state])
	movq	16(%rbp), %rax	 # ps_data, tmp144
	movzwl	(%rax), %eax	 # ps_data_57(D)->u16_state, _17
	movzwl	%ax, %eax	 # _17, _18
 # ./pdsp.c:719:         if (ps_data->f32_time > ps_data->af32_time_up[ps_data->u16_state])
	salq	$2, %rax	 #, _19
	addq	%rdx, %rax	 # _16, _20
	movss	(%rax), %xmm1	 # *_20, _21
 # ./pdsp.c:719:         if (ps_data->f32_time > ps_data->af32_time_up[ps_data->u16_state])
	comiss	%xmm1, %xmm0	 # _21, _15
	jbe	.L204	 #,
 # ./pdsp.c:721:             if (ps_data->u16_state < ps_data->u16_size - 1)
	movq	16(%rbp), %rax	 # ps_data, tmp145
	movzwl	(%rax), %eax	 # ps_data_57(D)->u16_state, _22
	movzwl	%ax, %edx	 # _22, _23
 # ./pdsp.c:721:             if (ps_data->u16_state < ps_data->u16_size - 1)
	movq	16(%rbp), %rax	 # ps_data, tmp146
	movzwl	48(%rax), %eax	 # ps_data_57(D)->u16_size, _24
	movzwl	%ax, %eax	 # _24, _25
 # ./pdsp.c:721:             if (ps_data->u16_state < ps_data->u16_size - 1)
	subl	$1, %eax	 #, _26
 # ./pdsp.c:721:             if (ps_data->u16_state < ps_data->u16_size - 1)
	cmpl	%eax, %edx	 # _26, _23
	jge	.L206	 #,
 # ./pdsp.c:723:                 ps_data->u16_state++;
	movq	16(%rbp), %rax	 # ps_data, tmp147
	movzwl	(%rax), %eax	 # ps_data_57(D)->u16_state, _27
 # ./pdsp.c:723:                 ps_data->u16_state++;
	leal	1(%rax), %edx	 #, _29
	movq	16(%rbp), %rax	 # ps_data, tmp148
	movw	%dx, (%rax)	 # _29, ps_data_57(D)->u16_state
.L206:
 # ./pdsp.c:725:             ps_data->f32_time = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp149
	pxor	%xmm0, %xmm0	 # tmp150
	movss	%xmm0, 4(%rax)	 # tmp150, ps_data_57(D)->f32_time
	jmp	.L204	 #
.L217:
 # ./pdsp.c:729:     else if (f32_in < ps_data->af32_thres_dn[ps_data->u16_state])
	movq	16(%rbp), %rax	 # ps_data, tmp151
	movq	24(%rax), %rdx	 # ps_data_57(D)->af32_thres_dn, _30
 # ./pdsp.c:729:     else if (f32_in < ps_data->af32_thres_dn[ps_data->u16_state])
	movq	16(%rbp), %rax	 # ps_data, tmp152
	movzwl	(%rax), %eax	 # ps_data_57(D)->u16_state, _31
	movzwl	%ax, %eax	 # _31, _32
 # ./pdsp.c:729:     else if (f32_in < ps_data->af32_thres_dn[ps_data->u16_state])
	salq	$2, %rax	 #, _33
	addq	%rdx, %rax	 # _30, _34
	movss	(%rax), %xmm0	 # *_34, _35
 # ./pdsp.c:729:     else if (f32_in < ps_data->af32_thres_dn[ps_data->u16_state])
	comiss	24(%rbp), %xmm0	 # f32_in, _35
	jbe	.L218	 #,
 # ./pdsp.c:732:         if (ps_data->u16_state > 0U)
	movq	16(%rbp), %rax	 # ps_data, tmp153
	movzwl	(%rax), %eax	 # ps_data_57(D)->u16_state, _36
 # ./pdsp.c:732:         if (ps_data->u16_state > 0U)
	testw	%ax, %ax	 # _36
	je	.L209	 #,
 # ./pdsp.c:734:             ps_data->f32_time += ps_data->f32_t_step;
	movq	16(%rbp), %rax	 # ps_data, tmp154
	movss	4(%rax), %xmm1	 # ps_data_57(D)->f32_time, _37
 # ./pdsp.c:734:             ps_data->f32_time += ps_data->f32_t_step;
	movq	16(%rbp), %rax	 # ps_data, tmp155
	movss	8(%rax), %xmm0	 # ps_data_57(D)->f32_t_step, _38
 # ./pdsp.c:734:             ps_data->f32_time += ps_data->f32_t_step;
	addss	%xmm1, %xmm0	 # _37, _39
	movq	16(%rbp), %rax	 # ps_data, tmp156
	movss	%xmm0, 4(%rax)	 # _39, ps_data_57(D)->f32_time
.L209:
 # ./pdsp.c:737:         if (ps_data->f32_time > ps_data->af32_time_dn[ps_data->u16_state])
	movq	16(%rbp), %rax	 # ps_data, tmp157
	movss	4(%rax), %xmm0	 # ps_data_57(D)->f32_time, _40
 # ./pdsp.c:737:         if (ps_data->f32_time > ps_data->af32_time_dn[ps_data->u16_state])
	movq	16(%rbp), %rax	 # ps_data, tmp158
	movq	40(%rax), %rdx	 # ps_data_57(D)->af32_time_dn, _41
 # ./pdsp.c:737:         if (ps_data->f32_time > ps_data->af32_time_dn[ps_data->u16_state])
	movq	16(%rbp), %rax	 # ps_data, tmp159
	movzwl	(%rax), %eax	 # ps_data_57(D)->u16_state, _42
	movzwl	%ax, %eax	 # _42, _43
 # ./pdsp.c:737:         if (ps_data->f32_time > ps_data->af32_time_dn[ps_data->u16_state])
	salq	$2, %rax	 #, _44
	addq	%rdx, %rax	 # _41, _45
	movss	(%rax), %xmm1	 # *_45, _46
 # ./pdsp.c:737:         if (ps_data->f32_time > ps_data->af32_time_dn[ps_data->u16_state])
	comiss	%xmm1, %xmm0	 # _46, _40
	jbe	.L204	 #,
 # ./pdsp.c:739:             if (ps_data->u16_state > 0U)
	movq	16(%rbp), %rax	 # ps_data, tmp160
	movzwl	(%rax), %eax	 # ps_data_57(D)->u16_state, _47
 # ./pdsp.c:739:             if (ps_data->u16_state > 0U)
	testw	%ax, %ax	 # _47
	je	.L211	 #,
 # ./pdsp.c:741:                 ps_data->u16_state--;
	movq	16(%rbp), %rax	 # ps_data, tmp161
	movzwl	(%rax), %eax	 # ps_data_57(D)->u16_state, _48
 # ./pdsp.c:741:                 ps_data->u16_state--;
	leal	-1(%rax), %edx	 #, _50
	movq	16(%rbp), %rax	 # ps_data, tmp162
	movw	%dx, (%rax)	 # _50, ps_data_57(D)->u16_state
.L211:
 # ./pdsp.c:743:             ps_data->f32_time = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp163
	pxor	%xmm0, %xmm0	 # tmp164
	movss	%xmm0, 4(%rax)	 # tmp164, ps_data_57(D)->f32_time
	jmp	.L204	 #
.L218:
 # ./pdsp.c:749:         ps_data->f32_time = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp165
	pxor	%xmm0, %xmm0	 # tmp166
	movss	%xmm0, 4(%rax)	 # tmp166, ps_data_57(D)->f32_time
.L204:
 # ./pdsp.c:752:     return ps_data->u16_state;
	movq	16(%rbp), %rax	 # ps_data, tmp167
	movzwl	(%rax), %eax	 # ps_data_57(D)->u16_state, _68
 # ./pdsp.c:753: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_backlash_init
	.def	pdsp_backlash_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_backlash_init
pdsp_backlash_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_backlash_half, f32_backlash_half
	movss	%xmm2, 32(%rbp)	 # f32_state, f32_state
 # ./pdsp.c:759:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L220	 #,
 # ./pdsp.c:759:     PDSP_ASSERT(ps_data != NULL);
	movl	$759, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp82
	movq	%rax, %rdx	 # tmp82,
	leaq	.LC1(%rip), %rax	 #, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	printf	 #
.L220:
 # ./pdsp.c:760:     ps_data->f32_backlash_half = f32_backlash_half;
	movq	16(%rbp), %rax	 # ps_data, tmp84
	movss	24(%rbp), %xmm0	 # f32_backlash_half, tmp85
	movss	%xmm0, (%rax)	 # tmp85, ps_data_2(D)->f32_backlash_half
 # ./pdsp.c:761:     ps_data->f32_state = f32_state;
	movq	16(%rbp), %rax	 # ps_data, tmp86
	movss	32(%rbp), %xmm0	 # f32_state, tmp87
	movss	%xmm0, 4(%rax)	 # tmp87, ps_data_2(D)->f32_state
 # ./pdsp.c:762: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_backlash
	.def	pdsp_backlash;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_backlash
pdsp_backlash:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:766:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L222	 #,
 # ./pdsp.c:766:     PDSP_ASSERT(ps_data != NULL);
	movl	$766, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp92
	movq	%rax, %rdx	 # tmp92,
	leaq	.LC1(%rip), %rax	 #, tmp93
	movq	%rax, %rcx	 # tmp93,
	call	printf	 #
.L222:
 # ./pdsp.c:767:     ps_data->f32_state = pdsp_maxf(ps_data->f32_state, f32_in - ps_data->f32_backlash_half);
	movq	16(%rbp), %rax	 # ps_data, tmp94
	movss	(%rax), %xmm1	 # ps_data_10(D)->f32_backlash_half, _1
	movss	24(%rbp), %xmm0	 # f32_in, tmp95
	subss	%xmm1, %xmm0	 # _1, tmp95
	movd	%xmm0, %eax	 # tmp95, _2
	movq	16(%rbp), %rdx	 # ps_data, tmp96
	movss	4(%rdx), %xmm0	 # ps_data_10(D)->f32_state, _3
	movaps	%xmm0, %xmm1	 # _3,
	movd	%eax, %xmm0	 # _2,
	call	fmaxf	 #
	movd	%xmm0, %eax	 #, _4
 # ./pdsp.c:767:     ps_data->f32_state = pdsp_maxf(ps_data->f32_state, f32_in - ps_data->f32_backlash_half);
	movq	16(%rbp), %rdx	 # ps_data, tmp97
	movl	%eax, 4(%rdx)	 # _4, ps_data_10(D)->f32_state
 # ./pdsp.c:768:     ps_data->f32_state = pdsp_minf(ps_data->f32_state, f32_in + ps_data->f32_backlash_half);
	movq	16(%rbp), %rax	 # ps_data, tmp98
	movss	(%rax), %xmm0	 # ps_data_10(D)->f32_backlash_half, _5
	addss	24(%rbp), %xmm0	 # f32_in, _5
	movd	%xmm0, %eax	 # _5, _6
	movq	16(%rbp), %rdx	 # ps_data, tmp99
	movss	4(%rdx), %xmm0	 # ps_data_10(D)->f32_state, _7
	movaps	%xmm0, %xmm1	 # _7,
	movd	%eax, %xmm0	 # _6,
	call	fminf	 #
	movd	%xmm0, %eax	 #, _8
 # ./pdsp.c:768:     ps_data->f32_state = pdsp_minf(ps_data->f32_state, f32_in + ps_data->f32_backlash_half);
	movq	16(%rbp), %rdx	 # ps_data, tmp100
	movl	%eax, 4(%rdx)	 # _8, ps_data_10(D)->f32_state
 # ./pdsp.c:769:     return ps_data->f32_state;
	movq	16(%rbp), %rax	 # ps_data, tmp101
	movss	4(%rax), %xmm0	 # ps_data_10(D)->f32_state, _16
 # ./pdsp.c:770: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_edge_delay_init
	.def	pdsp_edge_delay_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_edge_delay_init
pdsp_edge_delay_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movl	%edx, %eax	 # u16_state, tmp82
	movl	%r8d, %ecx	 # u16_red_count, tmp84
	movl	%r9d, %edx	 # u16_fed_count, tmp86
	movw	%ax, 24(%rbp)	 # tmp83, u16_state
	movl	%ecx, %eax	 # tmp84, tmp85
	movw	%ax, 32(%rbp)	 # tmp85, u16_red_count
	movl	%edx, %eax	 # tmp86, tmp87
	movw	%ax, 40(%rbp)	 # tmp87, u16_fed_count
 # ./pdsp.c:777:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L225	 #,
 # ./pdsp.c:777:     PDSP_ASSERT(ps_data != NULL);
	movl	$777, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp88
	movq	%rax, %rdx	 # tmp88,
	leaq	.LC1(%rip), %rax	 #, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	printf	 #
.L225:
 # ./pdsp.c:778:     ps_data->u16_state = u16_state;
	movq	16(%rbp), %rax	 # ps_data, tmp90
	movzwl	24(%rbp), %edx	 # u16_state, tmp91
	movw	%dx, (%rax)	 # tmp91, ps_data_2(D)->u16_state
 # ./pdsp.c:779:     ps_data->u16_count = 0;
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movw	$0, 2(%rax)	 #, ps_data_2(D)->u16_count
 # ./pdsp.c:780:     ps_data->u16_red_count = u16_red_count;
	movq	16(%rbp), %rax	 # ps_data, tmp93
	movzwl	32(%rbp), %edx	 # u16_red_count, tmp94
	movw	%dx, 4(%rax)	 # tmp94, ps_data_2(D)->u16_red_count
 # ./pdsp.c:781:     ps_data->u16_fed_count = u16_fed_count;
	movq	16(%rbp), %rax	 # ps_data, tmp95
	movzwl	40(%rbp), %edx	 # u16_fed_count, tmp96
	movw	%dx, 6(%rax)	 # tmp96, ps_data_2(D)->u16_fed_count
 # ./pdsp.c:782: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_edge_delay
	.def	pdsp_edge_delay;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_edge_delay
pdsp_edge_delay:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movl	%edx, %eax	 # u16_in, tmp94
	movw	%ax, 24(%rbp)	 # tmp95, u16_in
 # ./pdsp.c:787:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L227	 #,
 # ./pdsp.c:787:     PDSP_ASSERT(ps_data != NULL);
	movl	$787, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp96
	movq	%rax, %rdx	 # tmp96,
	leaq	.LC1(%rip), %rax	 #, tmp97
	movq	%rax, %rcx	 # tmp97,
	call	printf	 #
.L227:
 # ./pdsp.c:789:     if (u16_in > ps_data->u16_state)
	movq	16(%rbp), %rax	 # ps_data, tmp98
	movzwl	(%rax), %eax	 # ps_data_15(D)->u16_state, _1
 # ./pdsp.c:789:     if (u16_in > ps_data->u16_state)
	cmpw	24(%rbp), %ax	 # u16_in, _1
	jnb	.L228	 #,
 # ./pdsp.c:792:         if (ps_data->u16_count < ps_data->u16_red_count)
	movq	16(%rbp), %rax	 # ps_data, tmp99
	movzwl	2(%rax), %edx	 # ps_data_15(D)->u16_count, _2
 # ./pdsp.c:792:         if (ps_data->u16_count < ps_data->u16_red_count)
	movq	16(%rbp), %rax	 # ps_data, tmp100
	movzwl	4(%rax), %eax	 # ps_data_15(D)->u16_red_count, _3
 # ./pdsp.c:792:         if (ps_data->u16_count < ps_data->u16_red_count)
	cmpw	%ax, %dx	 # _3, _2
	jnb	.L229	 #,
 # ./pdsp.c:794:             ps_data->u16_count++;
	movq	16(%rbp), %rax	 # ps_data, tmp101
	movzwl	2(%rax), %eax	 # ps_data_15(D)->u16_count, _4
 # ./pdsp.c:794:             ps_data->u16_count++;
	leal	1(%rax), %edx	 #, _6
	movq	16(%rbp), %rax	 # ps_data, tmp102
	movw	%dx, 2(%rax)	 # _6, ps_data_15(D)->u16_count
	jmp	.L230	 #
.L229:
 # ./pdsp.c:798:             ps_data->u16_count = 0;
	movq	16(%rbp), %rax	 # ps_data, tmp103
	movw	$0, 2(%rax)	 #, ps_data_15(D)->u16_count
 # ./pdsp.c:799:             ps_data->u16_state = u16_in;
	movq	16(%rbp), %rax	 # ps_data, tmp104
	movzwl	24(%rbp), %edx	 # u16_in, tmp105
	movw	%dx, (%rax)	 # tmp105, ps_data_15(D)->u16_state
	jmp	.L230	 #
.L228:
 # ./pdsp.c:803:     else if (u16_in < ps_data->u16_state)
	movq	16(%rbp), %rax	 # ps_data, tmp106
	movzwl	(%rax), %eax	 # ps_data_15(D)->u16_state, _7
 # ./pdsp.c:803:     else if (u16_in < ps_data->u16_state)
	cmpw	%ax, 24(%rbp)	 # _7, u16_in
	jnb	.L231	 #,
 # ./pdsp.c:805:         if (ps_data->u16_count < ps_data->u16_fed_count)
	movq	16(%rbp), %rax	 # ps_data, tmp107
	movzwl	2(%rax), %edx	 # ps_data_15(D)->u16_count, _8
 # ./pdsp.c:805:         if (ps_data->u16_count < ps_data->u16_fed_count)
	movq	16(%rbp), %rax	 # ps_data, tmp108
	movzwl	6(%rax), %eax	 # ps_data_15(D)->u16_fed_count, _9
 # ./pdsp.c:805:         if (ps_data->u16_count < ps_data->u16_fed_count)
	cmpw	%ax, %dx	 # _9, _8
	jnb	.L232	 #,
 # ./pdsp.c:807:             ps_data->u16_count++;
	movq	16(%rbp), %rax	 # ps_data, tmp109
	movzwl	2(%rax), %eax	 # ps_data_15(D)->u16_count, _10
 # ./pdsp.c:807:             ps_data->u16_count++;
	leal	1(%rax), %edx	 #, _12
	movq	16(%rbp), %rax	 # ps_data, tmp110
	movw	%dx, 2(%rax)	 # _12, ps_data_15(D)->u16_count
	jmp	.L230	 #
.L232:
 # ./pdsp.c:811:             ps_data->u16_count = 0;
	movq	16(%rbp), %rax	 # ps_data, tmp111
	movw	$0, 2(%rax)	 #, ps_data_15(D)->u16_count
 # ./pdsp.c:812:             ps_data->u16_state = u16_in;
	movq	16(%rbp), %rax	 # ps_data, tmp112
	movzwl	24(%rbp), %edx	 # u16_in, tmp113
	movw	%dx, (%rax)	 # tmp113, ps_data_15(D)->u16_state
	jmp	.L230	 #
.L231:
 # ./pdsp.c:817:         ps_data->u16_count = 0;
	movq	16(%rbp), %rax	 # ps_data, tmp114
	movw	$0, 2(%rax)	 #, ps_data_15(D)->u16_count
.L230:
 # ./pdsp.c:819:     return ps_data->u16_state;
	movq	16(%rbp), %rax	 # ps_data, tmp115
	movzwl	(%rax), %eax	 # ps_data_15(D)->u16_state, _26
 # ./pdsp.c:820: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_monoflop_init
	.def	pdsp_monoflop_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_monoflop_init
pdsp_monoflop_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movl	%edx, %eax	 # u16_duration, tmp82
	movl	%r8d, %ecx	 # u16_state_off, tmp84
	movl	%r9d, %edx	 # u16_state_on, tmp86
	movw	%ax, 24(%rbp)	 # tmp83, u16_duration
	movl	%ecx, %eax	 # tmp84, tmp85
	movw	%ax, 32(%rbp)	 # tmp85, u16_state_off
	movl	%edx, %eax	 # tmp86, tmp87
	movw	%ax, 40(%rbp)	 # tmp87, u16_state_on
 # ./pdsp.c:827:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L235	 #,
 # ./pdsp.c:827:     PDSP_ASSERT(ps_data != NULL);
	movl	$827, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp88
	movq	%rax, %rdx	 # tmp88,
	leaq	.LC1(%rip), %rax	 #, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	printf	 #
.L235:
 # ./pdsp.c:828:     ps_data->b_trig_mem = PDSP_FALSE;
	movq	16(%rbp), %rax	 # ps_data, tmp90
	movb	$0, (%rax)	 #, ps_data_2(D)->b_trig_mem
 # ./pdsp.c:829:     ps_data->u16_count = 0;
	movq	16(%rbp), %rax	 # ps_data, tmp91
	movw	$0, 2(%rax)	 #, ps_data_2(D)->u16_count
 # ./pdsp.c:830:     ps_data->u16_duration = u16_duration;
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movzwl	24(%rbp), %edx	 # u16_duration, tmp93
	movw	%dx, 4(%rax)	 # tmp93, ps_data_2(D)->u16_duration
 # ./pdsp.c:831:     ps_data->u16_state_off = u16_state_off;
	movq	16(%rbp), %rax	 # ps_data, tmp94
	movzwl	32(%rbp), %edx	 # u16_state_off, tmp95
	movw	%dx, 6(%rax)	 # tmp95, ps_data_2(D)->u16_state_off
 # ./pdsp.c:832:     ps_data->u16_state_on = u16_state_on;
	movq	16(%rbp), %rax	 # ps_data, tmp96
	movzwl	40(%rbp), %edx	 # u16_state_on, tmp97
	movw	%dx, 8(%rax)	 # tmp97, ps_data_2(D)->u16_state_on
 # ./pdsp.c:833: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_monoflop
	.def	pdsp_monoflop;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_monoflop
pdsp_monoflop:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movl	%edx, %eax	 # b_trig, tmp92
	movb	%al, 24(%rbp)	 # tmp93, b_trig
 # ./pdsp.c:838:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L237	 #,
 # ./pdsp.c:838:     PDSP_ASSERT(ps_data != NULL);
	movl	$838, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp94
	movq	%rax, %rdx	 # tmp94,
	leaq	.LC1(%rip), %rax	 #, tmp95
	movq	%rax, %rcx	 # tmp95,
	call	printf	 #
.L237:
 # ./pdsp.c:839:     if ((b_trig == PDSP_TRUE) && (ps_data->b_trig_mem == PDSP_FALSE) &&
	cmpb	$0, 24(%rbp)	 #, b_trig
	je	.L238	 #,
 # ./pdsp.c:839:     if ((b_trig == PDSP_TRUE) && (ps_data->b_trig_mem == PDSP_FALSE) &&
	movq	16(%rbp), %rax	 # ps_data, tmp96
	movzbl	(%rax), %eax	 # ps_data_14(D)->b_trig_mem, _1
 # ./pdsp.c:839:     if ((b_trig == PDSP_TRUE) && (ps_data->b_trig_mem == PDSP_FALSE) &&
	xorl	$1, %eax	 #, _2
 # ./pdsp.c:839:     if ((b_trig == PDSP_TRUE) && (ps_data->b_trig_mem == PDSP_FALSE) &&
	testb	%al, %al	 # _2
	je	.L238	 #,
 # ./pdsp.c:840:         (ps_data->u16_count == 0U))
	movq	16(%rbp), %rax	 # ps_data, tmp97
	movzwl	2(%rax), %eax	 # ps_data_14(D)->u16_count, _3
 # ./pdsp.c:839:     if ((b_trig == PDSP_TRUE) && (ps_data->b_trig_mem == PDSP_FALSE) &&
	testw	%ax, %ax	 # _3
	jne	.L238	 #,
 # ./pdsp.c:842:         ps_data->u16_count = ps_data->u16_duration;
	movq	16(%rbp), %rax	 # ps_data, tmp98
	movzwl	4(%rax), %edx	 # ps_data_14(D)->u16_duration, _4
 # ./pdsp.c:842:         ps_data->u16_count = ps_data->u16_duration;
	movq	16(%rbp), %rax	 # ps_data, tmp99
	movw	%dx, 2(%rax)	 # _4, ps_data_14(D)->u16_count
 # ./pdsp.c:843:         ps_data->b_trig_mem = b_trig;
	movq	16(%rbp), %rax	 # ps_data, tmp100
	movzbl	24(%rbp), %edx	 # b_trig, tmp101
	movb	%dl, (%rax)	 # tmp101, ps_data_14(D)->b_trig_mem
 # ./pdsp.c:844:         return ps_data->u16_state_on;
	movq	16(%rbp), %rax	 # ps_data, tmp102
	movzwl	8(%rax), %eax	 # ps_data_14(D)->u16_state_on, _10
	jmp	.L239	 #
.L238:
 # ./pdsp.c:846:     if (ps_data->u16_count > 0U)
	movq	16(%rbp), %rax	 # ps_data, tmp103
	movzwl	2(%rax), %eax	 # ps_data_14(D)->u16_count, _5
 # ./pdsp.c:846:     if (ps_data->u16_count > 0U)
	testw	%ax, %ax	 # _5
	je	.L240	 #,
 # ./pdsp.c:848:         ps_data->u16_count--;
	movq	16(%rbp), %rax	 # ps_data, tmp104
	movzwl	2(%rax), %eax	 # ps_data_14(D)->u16_count, _6
 # ./pdsp.c:848:         ps_data->u16_count--;
	leal	-1(%rax), %edx	 #, _8
	movq	16(%rbp), %rax	 # ps_data, tmp105
	movw	%dx, 2(%rax)	 # _8, ps_data_14(D)->u16_count
.L240:
 # ./pdsp.c:850:     if (ps_data->u16_count > 0U)
	movq	16(%rbp), %rax	 # ps_data, tmp106
	movzwl	2(%rax), %eax	 # ps_data_14(D)->u16_count, _9
 # ./pdsp.c:850:     if (ps_data->u16_count > 0U)
	testw	%ax, %ax	 # _9
	je	.L241	 #,
 # ./pdsp.c:852:         ps_data->b_trig_mem = b_trig;
	movq	16(%rbp), %rax	 # ps_data, tmp107
	movzbl	24(%rbp), %edx	 # b_trig, tmp108
	movb	%dl, (%rax)	 # tmp108, ps_data_14(D)->b_trig_mem
 # ./pdsp.c:853:         return ps_data->u16_state_on;
	movq	16(%rbp), %rax	 # ps_data, tmp109
	movzwl	8(%rax), %eax	 # ps_data_14(D)->u16_state_on, _10
	jmp	.L239	 #
.L241:
 # ./pdsp.c:857:         ps_data->b_trig_mem = b_trig;
	movq	16(%rbp), %rax	 # ps_data, tmp110
	movzbl	24(%rbp), %edx	 # b_trig, tmp111
	movb	%dl, (%rax)	 # tmp111, ps_data_14(D)->b_trig_mem
 # ./pdsp.c:858:         return ps_data->u16_state_off;
	movq	16(%rbp), %rax	 # ps_data, tmp112
	movzwl	6(%rax), %eax	 # ps_data_14(D)->u16_state_off, _10
.L239:
 # ./pdsp.c:860: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_monoflop_rtr
	.def	pdsp_monoflop_rtr;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_monoflop_rtr
pdsp_monoflop_rtr:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movl	%edx, %eax	 # b_trig, tmp91
	movb	%al, 24(%rbp)	 # tmp92, b_trig
 # ./pdsp.c:865:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L243	 #,
 # ./pdsp.c:865:     PDSP_ASSERT(ps_data != NULL);
	movl	$865, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp93
	movq	%rax, %rdx	 # tmp93,
	leaq	.LC1(%rip), %rax	 #, tmp94
	movq	%rax, %rcx	 # tmp94,
	call	printf	 #
.L243:
 # ./pdsp.c:866:     if ((b_trig == PDSP_TRUE) && (ps_data->b_trig_mem == PDSP_FALSE))
	cmpb	$0, 24(%rbp)	 #, b_trig
	je	.L244	 #,
 # ./pdsp.c:866:     if ((b_trig == PDSP_TRUE) && (ps_data->b_trig_mem == PDSP_FALSE))
	movq	16(%rbp), %rax	 # ps_data, tmp95
	movzbl	(%rax), %eax	 # ps_data_13(D)->b_trig_mem, _1
 # ./pdsp.c:866:     if ((b_trig == PDSP_TRUE) && (ps_data->b_trig_mem == PDSP_FALSE))
	xorl	$1, %eax	 #, _2
 # ./pdsp.c:866:     if ((b_trig == PDSP_TRUE) && (ps_data->b_trig_mem == PDSP_FALSE))
	testb	%al, %al	 # _2
	je	.L244	 #,
 # ./pdsp.c:868:         ps_data->u16_count = ps_data->u16_duration;
	movq	16(%rbp), %rax	 # ps_data, tmp96
	movzwl	4(%rax), %edx	 # ps_data_13(D)->u16_duration, _3
 # ./pdsp.c:868:         ps_data->u16_count = ps_data->u16_duration;
	movq	16(%rbp), %rax	 # ps_data, tmp97
	movw	%dx, 2(%rax)	 # _3, ps_data_13(D)->u16_count
 # ./pdsp.c:869:         ps_data->b_trig_mem = b_trig;
	movq	16(%rbp), %rax	 # ps_data, tmp98
	movzbl	24(%rbp), %edx	 # b_trig, tmp99
	movb	%dl, (%rax)	 # tmp99, ps_data_13(D)->b_trig_mem
 # ./pdsp.c:870:         return ps_data->u16_state_on;
	movq	16(%rbp), %rax	 # ps_data, tmp100
	movzwl	8(%rax), %eax	 # ps_data_13(D)->u16_state_on, _9
	jmp	.L245	 #
.L244:
 # ./pdsp.c:872:     if (ps_data->u16_count > 0U)
	movq	16(%rbp), %rax	 # ps_data, tmp101
	movzwl	2(%rax), %eax	 # ps_data_13(D)->u16_count, _4
 # ./pdsp.c:872:     if (ps_data->u16_count > 0U)
	testw	%ax, %ax	 # _4
	je	.L246	 #,
 # ./pdsp.c:874:         ps_data->u16_count--;
	movq	16(%rbp), %rax	 # ps_data, tmp102
	movzwl	2(%rax), %eax	 # ps_data_13(D)->u16_count, _5
 # ./pdsp.c:874:         ps_data->u16_count--;
	leal	-1(%rax), %edx	 #, _7
	movq	16(%rbp), %rax	 # ps_data, tmp103
	movw	%dx, 2(%rax)	 # _7, ps_data_13(D)->u16_count
.L246:
 # ./pdsp.c:876:     if (ps_data->u16_count > 0U)
	movq	16(%rbp), %rax	 # ps_data, tmp104
	movzwl	2(%rax), %eax	 # ps_data_13(D)->u16_count, _8
 # ./pdsp.c:876:     if (ps_data->u16_count > 0U)
	testw	%ax, %ax	 # _8
	je	.L247	 #,
 # ./pdsp.c:878:         ps_data->b_trig_mem = b_trig;
	movq	16(%rbp), %rax	 # ps_data, tmp105
	movzbl	24(%rbp), %edx	 # b_trig, tmp106
	movb	%dl, (%rax)	 # tmp106, ps_data_13(D)->b_trig_mem
 # ./pdsp.c:879:         return ps_data->u16_state_on;
	movq	16(%rbp), %rax	 # ps_data, tmp107
	movzwl	8(%rax), %eax	 # ps_data_13(D)->u16_state_on, _9
	jmp	.L245	 #
.L247:
 # ./pdsp.c:883:         ps_data->b_trig_mem = b_trig;
	movq	16(%rbp), %rax	 # ps_data, tmp108
	movzbl	24(%rbp), %edx	 # b_trig, tmp109
	movb	%dl, (%rax)	 # tmp109, ps_data_13(D)->b_trig_mem
 # ./pdsp.c:884:         return ps_data->u16_state_off;
	movq	16(%rbp), %rax	 # ps_data, tmp110
	movzwl	6(%rax), %eax	 # ps_data_13(D)->u16_state_off, _9
.L245:
 # ./pdsp.c:886: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_monoflop_rtr_det
	.def	pdsp_monoflop_rtr_det;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_monoflop_rtr_det
pdsp_monoflop_rtr_det:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movl	%edx, %eax	 # b_trig, tmp89
	movb	%al, 24(%rbp)	 # tmp90, b_trig
 # ./pdsp.c:891:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L249	 #,
 # ./pdsp.c:891:     PDSP_ASSERT(ps_data != NULL);
	movl	$891, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp91
	movq	%rax, %rdx	 # tmp91,
	leaq	.LC1(%rip), %rax	 #, tmp92
	movq	%rax, %rcx	 # tmp92,
	call	printf	 #
.L249:
 # ./pdsp.c:892:     if (b_trig != ps_data->b_trig_mem)
	movq	16(%rbp), %rax	 # ps_data, tmp93
	movzbl	(%rax), %eax	 # ps_data_10(D)->b_trig_mem, _1
 # ./pdsp.c:892:     if (b_trig != ps_data->b_trig_mem)
	cmpb	%al, 24(%rbp)	 # _1, b_trig
	je	.L250	 #,
 # ./pdsp.c:894:         ps_data->u16_count = ps_data->u16_duration;
	movq	16(%rbp), %rax	 # ps_data, tmp94
	movzwl	4(%rax), %edx	 # ps_data_10(D)->u16_duration, _2
 # ./pdsp.c:894:         ps_data->u16_count = ps_data->u16_duration;
	movq	16(%rbp), %rax	 # ps_data, tmp95
	movw	%dx, 2(%rax)	 # _2, ps_data_10(D)->u16_count
 # ./pdsp.c:895:         ps_data->b_trig_mem = b_trig;
	movq	16(%rbp), %rax	 # ps_data, tmp96
	movzbl	24(%rbp), %edx	 # b_trig, tmp97
	movb	%dl, (%rax)	 # tmp97, ps_data_10(D)->b_trig_mem
 # ./pdsp.c:896:         return ps_data->u16_state_on;
	movq	16(%rbp), %rax	 # ps_data, tmp98
	movzwl	8(%rax), %eax	 # ps_data_10(D)->u16_state_on, _7
	jmp	.L251	 #
.L250:
 # ./pdsp.c:898:     if (ps_data->u16_count > 0U)
	movq	16(%rbp), %rax	 # ps_data, tmp99
	movzwl	2(%rax), %eax	 # ps_data_10(D)->u16_count, _3
 # ./pdsp.c:898:     if (ps_data->u16_count > 0U)
	testw	%ax, %ax	 # _3
	je	.L252	 #,
 # ./pdsp.c:900:         ps_data->u16_count--;
	movq	16(%rbp), %rax	 # ps_data, tmp100
	movzwl	2(%rax), %eax	 # ps_data_10(D)->u16_count, _4
 # ./pdsp.c:900:         ps_data->u16_count--;
	leal	-1(%rax), %edx	 #, _6
	movq	16(%rbp), %rax	 # ps_data, tmp101
	movw	%dx, 2(%rax)	 # _6, ps_data_10(D)->u16_count
 # ./pdsp.c:901:         ps_data->b_trig_mem = b_trig;
	movq	16(%rbp), %rax	 # ps_data, tmp102
	movzbl	24(%rbp), %edx	 # b_trig, tmp103
	movb	%dl, (%rax)	 # tmp103, ps_data_10(D)->b_trig_mem
 # ./pdsp.c:902:         return ps_data->u16_state_on;
	movq	16(%rbp), %rax	 # ps_data, tmp104
	movzwl	8(%rax), %eax	 # ps_data_10(D)->u16_state_on, _7
	jmp	.L251	 #
.L252:
 # ./pdsp.c:906:         ps_data->b_trig_mem = b_trig;
	movq	16(%rbp), %rax	 # ps_data, tmp105
	movzbl	24(%rbp), %edx	 # b_trig, tmp106
	movb	%dl, (%rax)	 # tmp106, ps_data_10(D)->b_trig_mem
 # ./pdsp.c:907:         return ps_data->u16_state_off;
	movq	16(%rbp), %rax	 # ps_data, tmp107
	movzwl	6(%rax), %eax	 # ps_data_10(D)->u16_state_off, _7
.L251:
 # ./pdsp.c:909: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_pulse_init
	.def	pdsp_pulse_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_pulse_init
pdsp_pulse_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movl	%edx, %eax	 # u16_count_on, tmp82
	movl	%r9d, %ecx	 # u16_state_on, tmp86
	movl	48(%rbp), %edx	 # u16_state_off, tmp88
	movw	%ax, 24(%rbp)	 # tmp83, u16_count_on
	movl	%r8d, %eax	 # tmp84, tmp85
	movw	%ax, 32(%rbp)	 # tmp85, u16_count_per
	movl	%ecx, %eax	 # tmp86, tmp87
	movw	%ax, 40(%rbp)	 # tmp87, u16_state_on
	movl	%edx, %eax	 # tmp88, tmp89
	movw	%ax, -4(%rbp)	 # tmp89, u16_state_off
 # ./pdsp.c:916:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L254	 #,
 # ./pdsp.c:916:     PDSP_ASSERT(ps_data != NULL);
	movl	$916, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp90
	movq	%rax, %rdx	 # tmp90,
	leaq	.LC1(%rip), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	printf	 #
.L254:
 # ./pdsp.c:917:     ps_data->u16_count = 0;
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movw	$0, (%rax)	 #, ps_data_2(D)->u16_count
 # ./pdsp.c:918:     ps_data->u16_count_on = u16_count_on;
	movq	16(%rbp), %rax	 # ps_data, tmp93
	movzwl	24(%rbp), %edx	 # u16_count_on, tmp94
	movw	%dx, 2(%rax)	 # tmp94, ps_data_2(D)->u16_count_on
 # ./pdsp.c:919:     ps_data->u16_count_per = u16_count_per;
	movq	16(%rbp), %rax	 # ps_data, tmp95
	movzwl	32(%rbp), %edx	 # u16_count_per, tmp96
	movw	%dx, 4(%rax)	 # tmp96, ps_data_2(D)->u16_count_per
 # ./pdsp.c:920:     ps_data->u16_state_on = u16_state_on;
	movq	16(%rbp), %rax	 # ps_data, tmp97
	movzwl	40(%rbp), %edx	 # u16_state_on, tmp98
	movw	%dx, 6(%rax)	 # tmp98, ps_data_2(D)->u16_state_on
 # ./pdsp.c:921:     ps_data->u16_state_off = u16_state_off;
	movq	16(%rbp), %rax	 # ps_data, tmp99
	movzwl	-4(%rbp), %edx	 # u16_state_off, tmp100
	movw	%dx, 8(%rax)	 # tmp100, ps_data_2(D)->u16_state_off
 # ./pdsp.c:922: }
	nop	
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_pulse
	.def	pdsp_pulse;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_pulse
pdsp_pulse:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:926:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L256	 #,
 # ./pdsp.c:926:     PDSP_ASSERT(ps_data != NULL);
	movl	$926, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp92
	movq	%rax, %rdx	 # tmp92,
	leaq	.LC1(%rip), %rax	 #, tmp93
	movq	%rax, %rcx	 # tmp93,
	call	printf	 #
.L256:
 # ./pdsp.c:927:     if (ps_data->u16_count < ps_data->u16_count_on)
	movq	16(%rbp), %rax	 # ps_data, tmp94
	movzwl	(%rax), %edx	 # ps_data_15(D)->u16_count, _1
 # ./pdsp.c:927:     if (ps_data->u16_count < ps_data->u16_count_on)
	movq	16(%rbp), %rax	 # ps_data, tmp95
	movzwl	2(%rax), %eax	 # ps_data_15(D)->u16_count_on, _2
 # ./pdsp.c:927:     if (ps_data->u16_count < ps_data->u16_count_on)
	cmpw	%ax, %dx	 # _2, _1
	jnb	.L257	 #,
 # ./pdsp.c:929:         ps_data->u16_count++;
	movq	16(%rbp), %rax	 # ps_data, tmp96
	movzwl	(%rax), %eax	 # ps_data_15(D)->u16_count, _3
 # ./pdsp.c:929:         ps_data->u16_count++;
	leal	1(%rax), %edx	 #, _5
	movq	16(%rbp), %rax	 # ps_data, tmp97
	movw	%dx, (%rax)	 # _5, ps_data_15(D)->u16_count
 # ./pdsp.c:930:         return ps_data->u16_state_on;
	movq	16(%rbp), %rax	 # ps_data, tmp98
	movzwl	6(%rax), %eax	 # ps_data_15(D)->u16_state_on, _11
	jmp	.L258	 #
.L257:
 # ./pdsp.c:934:         ps_data->u16_count++;
	movq	16(%rbp), %rax	 # ps_data, tmp99
	movzwl	(%rax), %eax	 # ps_data_15(D)->u16_count, _6
 # ./pdsp.c:934:         ps_data->u16_count++;
	leal	1(%rax), %edx	 #, _8
	movq	16(%rbp), %rax	 # ps_data, tmp100
	movw	%dx, (%rax)	 # _8, ps_data_15(D)->u16_count
 # ./pdsp.c:935:         if (ps_data->u16_count >= ps_data->u16_count_per)
	movq	16(%rbp), %rax	 # ps_data, tmp101
	movzwl	(%rax), %edx	 # ps_data_15(D)->u16_count, _9
 # ./pdsp.c:935:         if (ps_data->u16_count >= ps_data->u16_count_per)
	movq	16(%rbp), %rax	 # ps_data, tmp102
	movzwl	4(%rax), %eax	 # ps_data_15(D)->u16_count_per, _10
 # ./pdsp.c:935:         if (ps_data->u16_count >= ps_data->u16_count_per)
	cmpw	%ax, %dx	 # _10, _9
	jb	.L259	 #,
 # ./pdsp.c:937:             ps_data->u16_count = 0;
	movq	16(%rbp), %rax	 # ps_data, tmp103
	movw	$0, (%rax)	 #, ps_data_15(D)->u16_count
.L259:
 # ./pdsp.c:939:         return ps_data->u16_state_off;
	movq	16(%rbp), %rax	 # ps_data, tmp104
	movzwl	8(%rax), %eax	 # ps_data_15(D)->u16_state_off, _11
.L258:
 # ./pdsp.c:941: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_bit_write_u16
	.def	pdsp_bit_write_u16;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_bit_write_u16
pdsp_bit_write_u16:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # pu16_mem, pu16_mem
	movl	%edx, %eax	 # u16_bit, tmp97
	movl	%r8d, %edx	 # b_value, tmp99
	movw	%ax, 24(%rbp)	 # tmp98, u16_bit
	movl	%edx, %eax	 # tmp99, tmp100
	movb	%al, 32(%rbp)	 # tmp100, b_value
 # ./pdsp.c:946:     PDSP_ASSERT((pu16_mem != NULL) && (u16_bit < 16));
	cmpq	$0, 16(%rbp)	 #, pu16_mem
	je	.L261	 #,
 # ./pdsp.c:946:     PDSP_ASSERT((pu16_mem != NULL) && (u16_bit < 16));
	cmpw	$15, 24(%rbp)	 #, u16_bit
	jbe	.L262	 #,
.L261:
 # ./pdsp.c:946:     PDSP_ASSERT((pu16_mem != NULL) && (u16_bit < 16));
	movl	$946, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp101
	movq	%rax, %rdx	 # tmp101,
	leaq	.LC1(%rip), %rax	 #, tmp102
	movq	%rax, %rcx	 # tmp102,
	call	printf	 #
.L262:
 # ./pdsp.c:947:     if (b_value)
	cmpb	$0, 32(%rbp)	 #, b_value
	je	.L263	 #,
 # ./pdsp.c:949:         *pu16_mem |= (1 << u16_bit);
	movq	16(%rbp), %rax	 # pu16_mem, tmp103
	movzwl	(%rax), %eax	 # *pu16_mem_18(D), _1
	movl	%eax, %r8d	 # _1, _2
 # ./pdsp.c:949:         *pu16_mem |= (1 << u16_bit);
	movzwl	24(%rbp), %eax	 # u16_bit, _3
	movl	$1, %edx	 #, tmp104
	movl	%eax, %ecx	 # _3, tmp111
	sall	%cl, %edx	 # tmp111, tmp104
	movl	%edx, %eax	 # tmp104, _4
 # ./pdsp.c:949:         *pu16_mem |= (1 << u16_bit);
	orl	%r8d, %eax	 # _2, _6
	movl	%eax, %edx	 # _6, _7
	movq	16(%rbp), %rax	 # pu16_mem, tmp105
	movw	%dx, (%rax)	 # _7, *pu16_mem_18(D)
 # ./pdsp.c:955: }
	jmp	.L265	 #
.L263:
 # ./pdsp.c:953:         *pu16_mem &= ~(1 << u16_bit);
	movq	16(%rbp), %rax	 # pu16_mem, tmp106
	movzwl	(%rax), %eax	 # *pu16_mem_18(D), _8
	movl	%eax, %r8d	 # _8, _9
 # ./pdsp.c:953:         *pu16_mem &= ~(1 << u16_bit);
	movzwl	24(%rbp), %eax	 # u16_bit, _10
	movl	$1, %edx	 #, tmp107
	movl	%eax, %ecx	 # _10, tmp113
	sall	%cl, %edx	 # tmp113, tmp107
	movl	%edx, %eax	 # tmp107, _11
 # ./pdsp.c:953:         *pu16_mem &= ~(1 << u16_bit);
	notl	%eax	 # _13
	andl	%r8d, %eax	 # _9, _14
	movl	%eax, %edx	 # _14, _15
	movq	16(%rbp), %rax	 # pu16_mem, tmp108
	movw	%dx, (%rax)	 # _15, *pu16_mem_18(D)
.L265:
 # ./pdsp.c:955: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_bit_write_u32
	.def	pdsp_bit_write_u32;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_bit_write_u32
pdsp_bit_write_u32:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # pu32_mem, pu32_mem
	movl	%edx, %eax	 # u16_bit, tmp93
	movl	%r8d, %edx	 # b_value, tmp95
	movw	%ax, 24(%rbp)	 # tmp94, u16_bit
	movl	%edx, %eax	 # tmp95, tmp96
	movb	%al, 32(%rbp)	 # tmp96, b_value
 # ./pdsp.c:960:     PDSP_ASSERT((pu32_mem != NULL) && (u16_bit < 32));
	cmpq	$0, 16(%rbp)	 #, pu32_mem
	je	.L267	 #,
 # ./pdsp.c:960:     PDSP_ASSERT((pu32_mem != NULL) && (u16_bit < 32));
	cmpw	$31, 24(%rbp)	 #, u16_bit
	jbe	.L268	 #,
.L267:
 # ./pdsp.c:960:     PDSP_ASSERT((pu32_mem != NULL) && (u16_bit < 32));
	movl	$960, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp97
	movq	%rax, %rdx	 # tmp97,
	leaq	.LC1(%rip), %rax	 #, tmp98
	movq	%rax, %rcx	 # tmp98,
	call	printf	 #
.L268:
 # ./pdsp.c:961:     if (b_value)
	cmpb	$0, 32(%rbp)	 #, b_value
	je	.L269	 #,
 # ./pdsp.c:963:         *pu32_mem |= (1 << u16_bit);
	movq	16(%rbp), %rax	 # pu32_mem, tmp99
	movl	(%rax), %edx	 # *pu32_mem_14(D), _1
 # ./pdsp.c:963:         *pu32_mem |= (1 << u16_bit);
	movzwl	24(%rbp), %eax	 # u16_bit, _2
	movl	$1, %r8d	 #, tmp100
	movl	%eax, %ecx	 # _2, tmp107
	sall	%cl, %r8d	 # tmp107, tmp100
	movl	%r8d, %eax	 # tmp100, _3
 # ./pdsp.c:963:         *pu32_mem |= (1 << u16_bit);
	orl	%eax, %edx	 # _4, _5
	movq	16(%rbp), %rax	 # pu32_mem, tmp101
	movl	%edx, (%rax)	 # _5, *pu32_mem_14(D)
 # ./pdsp.c:969: }
	jmp	.L271	 #
.L269:
 # ./pdsp.c:967:         *pu32_mem &= ~(1 << u16_bit);
	movq	16(%rbp), %rax	 # pu32_mem, tmp102
	movl	(%rax), %edx	 # *pu32_mem_14(D), _6
 # ./pdsp.c:967:         *pu32_mem &= ~(1 << u16_bit);
	movzwl	24(%rbp), %eax	 # u16_bit, _7
	movl	$1, %r8d	 #, tmp103
	movl	%eax, %ecx	 # _7, tmp109
	sall	%cl, %r8d	 # tmp109, tmp103
	movl	%r8d, %eax	 # tmp103, _8
 # ./pdsp.c:967:         *pu32_mem &= ~(1 << u16_bit);
	notl	%eax	 # _9
 # ./pdsp.c:967:         *pu32_mem &= ~(1 << u16_bit);
	andl	%eax, %edx	 # _10, _11
	movq	16(%rbp), %rax	 # pu32_mem, tmp104
	movl	%edx, (%rax)	 # _11, *pu32_mem_14(D)
.L271:
 # ./pdsp.c:969: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_bit_read_u16
	.def	pdsp_bit_read_u16;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_bit_read_u16
pdsp_bit_read_u16:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # pu16_mem, pu16_mem
	movl	%edx, %eax	 # u16_bit, tmp90
	movw	%ax, 24(%rbp)	 # tmp91, u16_bit
 # ./pdsp.c:974:     PDSP_ASSERT((pu16_mem != NULL) && (u16_bit < 16));
	cmpq	$0, 16(%rbp)	 #, pu16_mem
	je	.L273	 #,
 # ./pdsp.c:974:     PDSP_ASSERT((pu16_mem != NULL) && (u16_bit < 16));
	cmpw	$15, 24(%rbp)	 #, u16_bit
	jbe	.L274	 #,
.L273:
 # ./pdsp.c:974:     PDSP_ASSERT((pu16_mem != NULL) && (u16_bit < 16));
	movl	$974, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp92
	movq	%rax, %rdx	 # tmp92,
	leaq	.LC1(%rip), %rax	 #, tmp93
	movq	%rax, %rcx	 # tmp93,
	call	printf	 #
.L274:
 # ./pdsp.c:975:     return (pdsp_bool_t)((*pu16_mem >> u16_bit) & 1U);
	movq	16(%rbp), %rax	 # pu16_mem, tmp94
	movzwl	(%rax), %eax	 # *pu16_mem_8(D), _1
	movzwl	%ax, %edx	 # _1, _2
 # ./pdsp.c:975:     return (pdsp_bool_t)((*pu16_mem >> u16_bit) & 1U);
	movzwl	24(%rbp), %eax	 # u16_bit, _3
	movl	%eax, %ecx	 # _3, tmp98
	sarl	%cl, %edx	 # tmp98, _2
	movl	%edx, %eax	 # _2, _4
 # ./pdsp.c:975:     return (pdsp_bool_t)((*pu16_mem >> u16_bit) & 1U);
	andl	$1, %eax	 #, _6
 # ./pdsp.c:975:     return (pdsp_bool_t)((*pu16_mem >> u16_bit) & 1U);
	testl	%eax, %eax	 # _6
	setne	%al	 #, _12
 # ./pdsp.c:976: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_bit_read_u32
	.def	pdsp_bit_read_u32;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_bit_read_u32
pdsp_bit_read_u32:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # pu32_mem, pu32_mem
	movl	%edx, %eax	 # u16_bit, tmp88
	movw	%ax, 24(%rbp)	 # tmp89, u16_bit
 # ./pdsp.c:981:     PDSP_ASSERT((pu32_mem != NULL) && (u16_bit < 32));
	cmpq	$0, 16(%rbp)	 #, pu32_mem
	je	.L277	 #,
 # ./pdsp.c:981:     PDSP_ASSERT((pu32_mem != NULL) && (u16_bit < 32));
	cmpw	$31, 24(%rbp)	 #, u16_bit
	jbe	.L278	 #,
.L277:
 # ./pdsp.c:981:     PDSP_ASSERT((pu32_mem != NULL) && (u16_bit < 32));
	movl	$981, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp90
	movq	%rax, %rdx	 # tmp90,
	leaq	.LC1(%rip), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	printf	 #
.L278:
 # ./pdsp.c:982:     return (pdsp_bool_t)((*pu32_mem >> u16_bit) & 1U);
	movq	16(%rbp), %rax	 # pu32_mem, tmp92
	movl	(%rax), %edx	 # *pu32_mem_6(D), _1
 # ./pdsp.c:982:     return (pdsp_bool_t)((*pu32_mem >> u16_bit) & 1U);
	movzwl	24(%rbp), %eax	 # u16_bit, _2
	movl	%eax, %ecx	 # _2, tmp96
	shrl	%cl, %edx	 # tmp96, _1
	movl	%edx, %eax	 # _1, _3
 # ./pdsp.c:982:     return (pdsp_bool_t)((*pu32_mem >> u16_bit) & 1U);
	andl	$1, %eax	 #, _4
 # ./pdsp.c:982:     return (pdsp_bool_t)((*pu32_mem >> u16_bit) & 1U);
	testl	%eax, %eax	 # _4
	setne	%al	 #, _10
 # ./pdsp.c:983: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_mask_set
	.def	pdsp_mask_set;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_mask_set
pdsp_mask_set:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # pu32_mem, pu32_mem
	movl	%edx, 24(%rbp)	 # u32_mask, u32_mask
 # ./pdsp.c:987:     PDSP_ASSERT(pu32_mem != NULL);
	cmpq	$0, 16(%rbp)	 #, pu32_mem
	jne	.L281	 #,
 # ./pdsp.c:987:     PDSP_ASSERT(pu32_mem != NULL);
	movl	$987, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp84
	movq	%rax, %rdx	 # tmp84,
	leaq	.LC1(%rip), %rax	 #, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	printf	 #
.L281:
 # ./pdsp.c:988:     (*pu32_mem) |= u32_mask;
	movq	16(%rbp), %rax	 # pu32_mem, tmp86
	movl	(%rax), %eax	 # *pu32_mem_4(D), _1
 # ./pdsp.c:988:     (*pu32_mem) |= u32_mask;
	orl	24(%rbp), %eax	 # u32_mask, _1
	movl	%eax, %edx	 # _1, _2
	movq	16(%rbp), %rax	 # pu32_mem, tmp87
	movl	%edx, (%rax)	 # _2, *pu32_mem_4(D)
 # ./pdsp.c:989: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_mask_clear
	.def	pdsp_mask_clear;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_mask_clear
pdsp_mask_clear:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # pu32_mem, pu32_mem
	movl	%edx, 24(%rbp)	 # u32_mask, u32_mask
 # ./pdsp.c:993:     PDSP_ASSERT(pu32_mem != NULL);
	cmpq	$0, 16(%rbp)	 #, pu32_mem
	jne	.L283	 #,
 # ./pdsp.c:993:     PDSP_ASSERT(pu32_mem != NULL);
	movl	$993, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp85
	movq	%rax, %rdx	 # tmp85,
	leaq	.LC1(%rip), %rax	 #, tmp86
	movq	%rax, %rcx	 # tmp86,
	call	printf	 #
.L283:
 # ./pdsp.c:994:     (*pu32_mem) &= ~u32_mask;
	movq	16(%rbp), %rax	 # pu32_mem, tmp87
	movl	(%rax), %eax	 # *pu32_mem_5(D), _1
 # ./pdsp.c:994:     (*pu32_mem) &= ~u32_mask;
	movl	24(%rbp), %edx	 # u32_mask, tmp88
	notl	%edx	 # _2
 # ./pdsp.c:994:     (*pu32_mem) &= ~u32_mask;
	andl	%eax, %edx	 # _1, _3
	movq	16(%rbp), %rax	 # pu32_mem, tmp89
	movl	%edx, (%rax)	 # _3, *pu32_mem_5(D)
 # ./pdsp.c:995: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_mask_get
	.def	pdsp_mask_get;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_mask_get
pdsp_mask_get:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # pu32_mem, pu32_mem
	movl	%edx, 24(%rbp)	 # u32_mask_true, u32_mask_true
	movl	%r8d, 32(%rbp)	 # u32_mask_false, u32_mask_false
 # ./pdsp.c:1001:     PDSP_ASSERT(pu32_mem != NULL);
	cmpq	$0, 16(%rbp)	 #, pu32_mem
	jne	.L285	 #,
 # ./pdsp.c:1001:     PDSP_ASSERT(pu32_mem != NULL);
	movl	$1001, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp90
	movq	%rax, %rdx	 # tmp90,
	leaq	.LC1(%rip), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	printf	 #
.L285:
 # ./pdsp.c:1002:     return ((*pu32_mem) & u32_mask_true) | ((~(*pu32_mem)) & u32_mask_false);
	movq	16(%rbp), %rax	 # pu32_mem, tmp92
	movl	(%rax), %eax	 # *pu32_mem_8(D), _1
 # ./pdsp.c:1002:     return ((*pu32_mem) & u32_mask_true) | ((~(*pu32_mem)) & u32_mask_false);
	andl	24(%rbp), %eax	 # u32_mask_true, _1
	movl	%eax, %edx	 # _1, _2
 # ./pdsp.c:1002:     return ((*pu32_mem) & u32_mask_true) | ((~(*pu32_mem)) & u32_mask_false);
	movq	16(%rbp), %rax	 # pu32_mem, tmp93
	movl	(%rax), %eax	 # *pu32_mem_8(D), _3
 # ./pdsp.c:1002:     return ((*pu32_mem) & u32_mask_true) | ((~(*pu32_mem)) & u32_mask_false);
	notl	%eax	 # _4
 # ./pdsp.c:1002:     return ((*pu32_mem) & u32_mask_true) | ((~(*pu32_mem)) & u32_mask_false);
	andl	32(%rbp), %eax	 # u32_mask_false, _5
 # ./pdsp.c:1002:     return ((*pu32_mem) & u32_mask_true) | ((~(*pu32_mem)) & u32_mask_false);
	orl	%edx, %eax	 # _2, _6
	testl	%eax, %eax	 # _6
	setne	%al	 #, _13
 # ./pdsp.c:1003: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_signal_write_f32
	.def	pdsp_signal_write_f32;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_signal_write_f32
pdsp_signal_write_f32:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_prop, ps_prop
	movq	%rdx, 24(%rbp)	 # pu64_mem, pu64_mem
	movss	%xmm2, 32(%rbp)	 # f32_data, f32_data
 # ./pdsp.c:1009:     PDSP_ASSERT(ps_prop != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_prop
	jne	.L288	 #,
 # ./pdsp.c:1009:     PDSP_ASSERT(ps_prop != NULL);
	movl	$1009, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp88
	movq	%rax, %rdx	 # tmp88,
	leaq	.LC1(%rip), %rax	 #, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	printf	 #
.L288:
 # ./pdsp.c:1012:         (pdsp_u16_t)((f32_data * ps_prop->f32_gain) + ps_prop->f32_offset));
	movq	16(%rbp), %rax	 # ps_prop, tmp90
	movss	(%rax), %xmm0	 # ps_prop_8(D)->f32_gain, _1
 # ./pdsp.c:1012:         (pdsp_u16_t)((f32_data * ps_prop->f32_gain) + ps_prop->f32_offset));
	movaps	%xmm0, %xmm1	 # _1, _1
	mulss	32(%rbp), %xmm1	 # f32_data, _1
 # ./pdsp.c:1012:         (pdsp_u16_t)((f32_data * ps_prop->f32_gain) + ps_prop->f32_offset));
	movq	16(%rbp), %rax	 # ps_prop, tmp91
	movss	4(%rax), %xmm0	 # ps_prop_8(D)->f32_offset, _3
 # ./pdsp.c:1012:         (pdsp_u16_t)((f32_data * ps_prop->f32_gain) + ps_prop->f32_offset));
	addss	%xmm1, %xmm0	 # _2, _4
 # ./pdsp.c:1012:         (pdsp_u16_t)((f32_data * ps_prop->f32_gain) + ps_prop->f32_offset));
	cvttss2sil	%xmm0, %eax	 # _4, tmp92
 # ./pdsp.c:1010:     pdsp_signal_write_u16(
	movzwl	%ax, %ecx	 # _5, _6
	movq	24(%rbp), %rdx	 # pu64_mem, tmp93
	movq	16(%rbp), %rax	 # ps_prop, tmp94
	movl	%ecx, %r8d	 # _6,
	movq	%rax, %rcx	 # tmp94,
	call	pdsp_signal_write_u16	 #
 # ./pdsp.c:1013: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_signal_read_f32
	.def	pdsp_signal_read_f32;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_signal_read_f32
pdsp_signal_read_f32:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_prop, ps_prop
	movq	%rdx, 24(%rbp)	 # pu64_mem, pu64_mem
 # ./pdsp.c:1018:     return pdsp_divf(((pdsp_f32_t)pdsp_signal_read_u16(ps_prop, pu64_mem) -
	movq	24(%rbp), %rdx	 # pu64_mem, tmp89
	movq	16(%rbp), %rax	 # ps_prop, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	pdsp_signal_read_u16	 #
 # ./pdsp.c:1018:     return pdsp_divf(((pdsp_f32_t)pdsp_signal_read_u16(ps_prop, pu64_mem) -
	movzwl	%ax, %eax	 # _1, tmp91
	pxor	%xmm0, %xmm0	 # _2
	cvtsi2ssl	%eax, %xmm0	 # tmp91, _2
	movq	16(%rbp), %rax	 # ps_prop, tmp92
	movss	4(%rax), %xmm1	 # ps_prop_7(D)->f32_offset, _3
	subss	%xmm1, %xmm0	 # _3, _4
	movq	16(%rbp), %rax	 # ps_prop, tmp93
	movss	(%rax), %xmm1	 # ps_prop_7(D)->f32_gain, _5
	divss	%xmm1, %xmm0	 # _5, _10
 # ./pdsp.c:1021: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_signal_write_u16
	.def	pdsp_signal_write_u16;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_signal_write_u16
pdsp_signal_write_u16:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_prop, ps_prop
	movq	%rdx, 24(%rbp)	 # pu64_mem, pu64_mem
	movl	%r8d, %eax	 # u16_data, tmp93
	movw	%ax, 32(%rbp)	 # tmp94, u16_data
 # ./pdsp.c:1027:     PDSP_ASSERT((ps_prop != NULL) && (ps_prop->u16_start < 64));
	cmpq	$0, 16(%rbp)	 #, ps_prop
	je	.L292	 #,
 # ./pdsp.c:1027:     PDSP_ASSERT((ps_prop != NULL) && (ps_prop->u16_start < 64));
	movq	16(%rbp), %rax	 # ps_prop, tmp95
	movzwl	8(%rax), %eax	 # ps_prop_13(D)->u16_start, _1
	cmpw	$63, %ax	 #, _1
	jbe	.L293	 #,
.L292:
 # ./pdsp.c:1027:     PDSP_ASSERT((ps_prop != NULL) && (ps_prop->u16_start < 64));
	movl	$1027, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp96
	movq	%rax, %rdx	 # tmp96,
	leaq	.LC1(%rip), %rax	 #, tmp97
	movq	%rax, %rcx	 # tmp97,
	call	printf	 #
.L293:
 # ./pdsp.c:1028:     *pu64_mem |= ((pdsp_u64_t)(u16_data & pdsp_mask_i16[ps_prop->u16_length])
	movq	24(%rbp), %rax	 # pu64_mem, tmp98
	movq	(%rax), %rdx	 # *pu64_mem_16(D), _2
 # ./pdsp.c:1028:     *pu64_mem |= ((pdsp_u64_t)(u16_data & pdsp_mask_i16[ps_prop->u16_length])
	movq	16(%rbp), %rax	 # ps_prop, tmp99
	movzwl	10(%rax), %eax	 # ps_prop_13(D)->u16_length, _3
	movzwl	%ax, %eax	 # _3, _4
 # ./pdsp.c:1028:     *pu64_mem |= ((pdsp_u64_t)(u16_data & pdsp_mask_i16[ps_prop->u16_length])
	cltq
	leaq	(%rax,%rax), %rcx	 #, tmp101
	leaq	pdsp_mask_i16(%rip), %rax	 #, tmp102
	movzwl	(%rcx,%rax), %eax	 # pdsp_mask_i16[_4], _5
 # ./pdsp.c:1028:     *pu64_mem |= ((pdsp_u64_t)(u16_data & pdsp_mask_i16[ps_prop->u16_length])
	andw	32(%rbp), %ax	 # u16_data, _6
	movzwl	%ax, %r8d	 # _6, _7
 # ./pdsp.c:1029:                   << ps_prop->u16_start);
	movq	16(%rbp), %rax	 # ps_prop, tmp103
	movzwl	8(%rax), %eax	 # ps_prop_13(D)->u16_start, _8
	movzwl	%ax, %eax	 # _8, _9
 # ./pdsp.c:1029:                   << ps_prop->u16_start);
	movl	%eax, %ecx	 # _9, tmp107
	salq	%cl, %r8	 # tmp107, _7
	movq	%r8, %rax	 # _7, _10
 # ./pdsp.c:1028:     *pu64_mem |= ((pdsp_u64_t)(u16_data & pdsp_mask_i16[ps_prop->u16_length])
	orq	%rax, %rdx	 # _10, _11
	movq	24(%rbp), %rax	 # pu64_mem, tmp104
	movq	%rdx, (%rax)	 # _11, *pu64_mem_16(D)
 # ./pdsp.c:1030: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_signal_read_u16
	.def	pdsp_signal_read_u16;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_signal_read_u16
pdsp_signal_read_u16:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_prop, ps_prop
	movq	%rdx, 24(%rbp)	 # pu64_mem, pu64_mem
 # ./pdsp.c:1035:     PDSP_ASSERT((ps_prop != NULL) && (ps_prop->u16_start < 64));
	cmpq	$0, 16(%rbp)	 #, ps_prop
	je	.L295	 #,
 # ./pdsp.c:1035:     PDSP_ASSERT((ps_prop != NULL) && (ps_prop->u16_start < 64));
	movq	16(%rbp), %rax	 # ps_prop, tmp93
	movzwl	8(%rax), %eax	 # ps_prop_11(D)->u16_start, _1
	cmpw	$63, %ax	 #, _1
	jbe	.L296	 #,
.L295:
 # ./pdsp.c:1035:     PDSP_ASSERT((ps_prop != NULL) && (ps_prop->u16_start < 64));
	movl	$1035, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp94
	movq	%rax, %rdx	 # tmp94,
	leaq	.LC1(%rip), %rax	 #, tmp95
	movq	%rax, %rcx	 # tmp95,
	call	printf	 #
.L296:
 # ./pdsp.c:1036:     return (pdsp_u16_t)((*pu64_mem >> ps_prop->u16_start) &
	movq	24(%rbp), %rax	 # pu64_mem, tmp96
	movq	(%rax), %rdx	 # *pu64_mem_14(D), _2
 # ./pdsp.c:1036:     return (pdsp_u16_t)((*pu64_mem >> ps_prop->u16_start) &
	movq	16(%rbp), %rax	 # ps_prop, tmp97
	movzwl	8(%rax), %eax	 # ps_prop_11(D)->u16_start, _3
	movzwl	%ax, %eax	 # _3, _4
 # ./pdsp.c:1036:     return (pdsp_u16_t)((*pu64_mem >> ps_prop->u16_start) &
	movl	%eax, %ecx	 # _4, tmp105
	shrq	%cl, %rdx	 # tmp105, _2
	movq	%rdx, %rax	 # _2, _5
 # ./pdsp.c:1036:     return (pdsp_u16_t)((*pu64_mem >> ps_prop->u16_start) &
	movl	%eax, %ecx	 # _5, _6
 # ./pdsp.c:1037:                         (pdsp_u64_t)pdsp_mask_i16[ps_prop->u16_length]);
	movq	16(%rbp), %rax	 # ps_prop, tmp98
	movzwl	10(%rax), %eax	 # ps_prop_11(D)->u16_length, _7
	movzwl	%ax, %eax	 # _7, _8
 # ./pdsp.c:1037:                         (pdsp_u64_t)pdsp_mask_i16[ps_prop->u16_length]);
	cltq
	leaq	(%rax,%rax), %rdx	 #, tmp100
	leaq	pdsp_mask_i16(%rip), %rax	 #, tmp101
	movzwl	(%rdx,%rax), %eax	 # pdsp_mask_i16[_8], _9
 # ./pdsp.c:1036:     return (pdsp_u16_t)((*pu64_mem >> ps_prop->u16_start) &
	andl	%ecx, %eax	 # _6, _15
 # ./pdsp.c:1038: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_mean2w_f32
	.def	pdsp_mean2w_f32;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_mean2w_f32
pdsp_mean2w_f32:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movss	%xmm0, 16(%rbp)	 # f32_in0, f32_in0
	movss	%xmm1, 24(%rbp)	 # f32_in1, f32_in1
	movss	%xmm2, 32(%rbp)	 # f32_weight0, f32_weight0
 # ./pdsp.c:1043:     return (f32_in0 * f32_weight0) + (f32_in1 * (1.0f - f32_weight0));
	movss	16(%rbp), %xmm0	 # f32_in0, tmp87
	movaps	%xmm0, %xmm1	 # tmp87, tmp87
	mulss	32(%rbp), %xmm1	 # f32_weight0, tmp87
 # ./pdsp.c:1043:     return (f32_in0 * f32_weight0) + (f32_in1 * (1.0f - f32_weight0));
	movss	.LC4(%rip), %xmm0	 #, tmp88
	subss	32(%rbp), %xmm0	 # f32_weight0, _2
 # ./pdsp.c:1043:     return (f32_in0 * f32_weight0) + (f32_in1 * (1.0f - f32_weight0));
	mulss	24(%rbp), %xmm0	 # f32_in1, _3
 # ./pdsp.c:1043:     return (f32_in0 * f32_weight0) + (f32_in1 * (1.0f - f32_weight0));
	addss	%xmm1, %xmm0	 # _1, _7
 # ./pdsp.c:1044: }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_mean4_u16
	.def	pdsp_mean4_u16;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_mean4_u16
pdsp_mean4_u16:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # a4u16_in, a4u16_in
 # ./pdsp.c:1048:     PDSP_ASSERT(a4u16_in != NULL);
	cmpq	$0, 16(%rbp)	 #, a4u16_in
	jne	.L301	 #,
 # ./pdsp.c:1048:     PDSP_ASSERT(a4u16_in != NULL);
	movl	$1048, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp99
	movq	%rax, %rdx	 # tmp99,
	leaq	.LC1(%rip), %rax	 #, tmp100
	movq	%rax, %rcx	 # tmp100,
	call	printf	 #
.L301:
 # ./pdsp.c:1050:            (pdsp_f32_t)((pdsp_u32_t)a4u16_in[0] + (pdsp_u32_t)a4u16_in[1] +
	movq	16(%rbp), %rax	 # a4u16_in, tmp101
	movzwl	(%rax), %eax	 # *a4u16_in_17(D), _1
 # ./pdsp.c:1050:            (pdsp_f32_t)((pdsp_u32_t)a4u16_in[0] + (pdsp_u32_t)a4u16_in[1] +
	movzwl	%ax, %edx	 # _1, _2
 # ./pdsp.c:1050:            (pdsp_f32_t)((pdsp_u32_t)a4u16_in[0] + (pdsp_u32_t)a4u16_in[1] +
	movq	16(%rbp), %rax	 # a4u16_in, tmp102
	addq	$2, %rax	 #, _3
	movzwl	(%rax), %eax	 # *_3, _4
 # ./pdsp.c:1050:            (pdsp_f32_t)((pdsp_u32_t)a4u16_in[0] + (pdsp_u32_t)a4u16_in[1] +
	movzwl	%ax, %eax	 # _4, _5
 # ./pdsp.c:1050:            (pdsp_f32_t)((pdsp_u32_t)a4u16_in[0] + (pdsp_u32_t)a4u16_in[1] +
	addl	%eax, %edx	 # _5, _6
 # ./pdsp.c:1051:                         (pdsp_u32_t)a4u16_in[2] + (pdsp_u32_t)a4u16_in[3]);
	movq	16(%rbp), %rax	 # a4u16_in, tmp103
	addq	$4, %rax	 #, _7
	movzwl	(%rax), %eax	 # *_7, _8
 # ./pdsp.c:1051:                         (pdsp_u32_t)a4u16_in[2] + (pdsp_u32_t)a4u16_in[3]);
	movzwl	%ax, %eax	 # _8, _9
 # ./pdsp.c:1050:            (pdsp_f32_t)((pdsp_u32_t)a4u16_in[0] + (pdsp_u32_t)a4u16_in[1] +
	addl	%eax, %edx	 # _9, _10
 # ./pdsp.c:1051:                         (pdsp_u32_t)a4u16_in[2] + (pdsp_u32_t)a4u16_in[3]);
	movq	16(%rbp), %rax	 # a4u16_in, tmp104
	addq	$6, %rax	 #, _11
	movzwl	(%rax), %eax	 # *_11, _12
 # ./pdsp.c:1051:                         (pdsp_u32_t)a4u16_in[2] + (pdsp_u32_t)a4u16_in[3]);
	movzwl	%ax, %eax	 # _12, _13
 # ./pdsp.c:1051:                         (pdsp_u32_t)a4u16_in[2] + (pdsp_u32_t)a4u16_in[3]);
	addl	%edx, %eax	 # _10, _14
 # ./pdsp.c:1050:            (pdsp_f32_t)((pdsp_u32_t)a4u16_in[0] + (pdsp_u32_t)a4u16_in[1] +
	movl	%eax, %eax	 # _14, tmp105
	testq	%rax, %rax	 # tmp105
	js	.L302	 #,
	pxor	%xmm0, %xmm0	 # _15
	cvtsi2ssq	%rax, %xmm0	 # tmp105, _15
	jmp	.L303	 #
.L302:
	movq	%rax, %rdx	 # tmp105, tmp107
	shrq	%rdx	 # tmp107
	andl	$1, %eax	 #, tmp108
	orq	%rax, %rdx	 # tmp108, tmp107
	pxor	%xmm0, %xmm0	 # tmp106
	cvtsi2ssq	%rdx, %xmm0	 # tmp107, tmp106
	addss	%xmm0, %xmm0	 # tmp106, _15
.L303:
 # ./pdsp.c:1049:     return 0.25f *
	movss	.LC6(%rip), %xmm1	 #, tmp109
	mulss	%xmm1, %xmm0	 # tmp109, _20
 # ./pdsp.c:1052: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_mean8_u16
	.def	pdsp_mean8_u16;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_mean8_u16
pdsp_mean8_u16:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # a8u16_in, a8u16_in
 # ./pdsp.c:1056:     PDSP_ASSERT(a8u16_in != NULL);
	cmpq	$0, 16(%rbp)	 #, a8u16_in
	jne	.L306	 #,
 # ./pdsp.c:1056:     PDSP_ASSERT(a8u16_in != NULL);
	movl	$1056, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp115
	movq	%rax, %rdx	 # tmp115,
	leaq	.LC1(%rip), %rax	 #, tmp116
	movq	%rax, %rcx	 # tmp116,
	call	printf	 #
.L306:
 # ./pdsp.c:1058:            (pdsp_f32_t)((pdsp_u32_t)a8u16_in[0] + (pdsp_u32_t)a8u16_in[1] +
	movq	16(%rbp), %rax	 # a8u16_in, tmp117
	movzwl	(%rax), %eax	 # *a8u16_in_33(D), _1
 # ./pdsp.c:1058:            (pdsp_f32_t)((pdsp_u32_t)a8u16_in[0] + (pdsp_u32_t)a8u16_in[1] +
	movzwl	%ax, %edx	 # _1, _2
 # ./pdsp.c:1058:            (pdsp_f32_t)((pdsp_u32_t)a8u16_in[0] + (pdsp_u32_t)a8u16_in[1] +
	movq	16(%rbp), %rax	 # a8u16_in, tmp118
	addq	$2, %rax	 #, _3
	movzwl	(%rax), %eax	 # *_3, _4
 # ./pdsp.c:1058:            (pdsp_f32_t)((pdsp_u32_t)a8u16_in[0] + (pdsp_u32_t)a8u16_in[1] +
	movzwl	%ax, %eax	 # _4, _5
 # ./pdsp.c:1058:            (pdsp_f32_t)((pdsp_u32_t)a8u16_in[0] + (pdsp_u32_t)a8u16_in[1] +
	addl	%eax, %edx	 # _5, _6
 # ./pdsp.c:1059:                         (pdsp_u32_t)a8u16_in[2] + (pdsp_u32_t)a8u16_in[3] +
	movq	16(%rbp), %rax	 # a8u16_in, tmp119
	addq	$4, %rax	 #, _7
	movzwl	(%rax), %eax	 # *_7, _8
 # ./pdsp.c:1059:                         (pdsp_u32_t)a8u16_in[2] + (pdsp_u32_t)a8u16_in[3] +
	movzwl	%ax, %eax	 # _8, _9
 # ./pdsp.c:1058:            (pdsp_f32_t)((pdsp_u32_t)a8u16_in[0] + (pdsp_u32_t)a8u16_in[1] +
	addl	%eax, %edx	 # _9, _10
 # ./pdsp.c:1059:                         (pdsp_u32_t)a8u16_in[2] + (pdsp_u32_t)a8u16_in[3] +
	movq	16(%rbp), %rax	 # a8u16_in, tmp120
	addq	$6, %rax	 #, _11
	movzwl	(%rax), %eax	 # *_11, _12
 # ./pdsp.c:1059:                         (pdsp_u32_t)a8u16_in[2] + (pdsp_u32_t)a8u16_in[3] +
	movzwl	%ax, %eax	 # _12, _13
 # ./pdsp.c:1059:                         (pdsp_u32_t)a8u16_in[2] + (pdsp_u32_t)a8u16_in[3] +
	addl	%eax, %edx	 # _13, _14
 # ./pdsp.c:1060:                         (pdsp_u32_t)a8u16_in[4] + (pdsp_u32_t)a8u16_in[5] +
	movq	16(%rbp), %rax	 # a8u16_in, tmp121
	addq	$8, %rax	 #, _15
	movzwl	(%rax), %eax	 # *_15, _16
 # ./pdsp.c:1060:                         (pdsp_u32_t)a8u16_in[4] + (pdsp_u32_t)a8u16_in[5] +
	movzwl	%ax, %eax	 # _16, _17
 # ./pdsp.c:1059:                         (pdsp_u32_t)a8u16_in[2] + (pdsp_u32_t)a8u16_in[3] +
	addl	%eax, %edx	 # _17, _18
 # ./pdsp.c:1060:                         (pdsp_u32_t)a8u16_in[4] + (pdsp_u32_t)a8u16_in[5] +
	movq	16(%rbp), %rax	 # a8u16_in, tmp122
	addq	$10, %rax	 #, _19
	movzwl	(%rax), %eax	 # *_19, _20
 # ./pdsp.c:1060:                         (pdsp_u32_t)a8u16_in[4] + (pdsp_u32_t)a8u16_in[5] +
	movzwl	%ax, %eax	 # _20, _21
 # ./pdsp.c:1060:                         (pdsp_u32_t)a8u16_in[4] + (pdsp_u32_t)a8u16_in[5] +
	addl	%eax, %edx	 # _21, _22
 # ./pdsp.c:1061:                         (pdsp_u32_t)a8u16_in[6] + (pdsp_u32_t)a8u16_in[7]);
	movq	16(%rbp), %rax	 # a8u16_in, tmp123
	addq	$12, %rax	 #, _23
	movzwl	(%rax), %eax	 # *_23, _24
 # ./pdsp.c:1061:                         (pdsp_u32_t)a8u16_in[6] + (pdsp_u32_t)a8u16_in[7]);
	movzwl	%ax, %eax	 # _24, _25
 # ./pdsp.c:1060:                         (pdsp_u32_t)a8u16_in[4] + (pdsp_u32_t)a8u16_in[5] +
	addl	%eax, %edx	 # _25, _26
 # ./pdsp.c:1061:                         (pdsp_u32_t)a8u16_in[6] + (pdsp_u32_t)a8u16_in[7]);
	movq	16(%rbp), %rax	 # a8u16_in, tmp124
	addq	$14, %rax	 #, _27
	movzwl	(%rax), %eax	 # *_27, _28
 # ./pdsp.c:1061:                         (pdsp_u32_t)a8u16_in[6] + (pdsp_u32_t)a8u16_in[7]);
	movzwl	%ax, %eax	 # _28, _29
 # ./pdsp.c:1061:                         (pdsp_u32_t)a8u16_in[6] + (pdsp_u32_t)a8u16_in[7]);
	addl	%edx, %eax	 # _26, _30
 # ./pdsp.c:1058:            (pdsp_f32_t)((pdsp_u32_t)a8u16_in[0] + (pdsp_u32_t)a8u16_in[1] +
	movl	%eax, %eax	 # _30, tmp125
	testq	%rax, %rax	 # tmp125
	js	.L307	 #,
	pxor	%xmm0, %xmm0	 # _31
	cvtsi2ssq	%rax, %xmm0	 # tmp125, _31
	jmp	.L308	 #
.L307:
	movq	%rax, %rdx	 # tmp125, tmp127
	shrq	%rdx	 # tmp127
	andl	$1, %eax	 #, tmp128
	orq	%rax, %rdx	 # tmp128, tmp127
	pxor	%xmm0, %xmm0	 # tmp126
	cvtsi2ssq	%rdx, %xmm0	 # tmp127, tmp126
	addss	%xmm0, %xmm0	 # tmp126, _31
.L308:
 # ./pdsp.c:1057:     return 0.125f *
	movss	.LC7(%rip), %xmm1	 #, tmp129
	mulss	%xmm1, %xmm0	 # tmp129, _36
 # ./pdsp.c:1062: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_queue_init
	.def	pdsp_queue_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_queue_init
pdsp_queue_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1066:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L311	 #,
 # ./pdsp.c:1066:     PDSP_ASSERT(ps_data != NULL);
	movl	$1066, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp89
	movq	%rax, %rdx	 # tmp89,
	leaq	.LC1(%rip), %rax	 #, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	printf	 #
.L311:
 # ./pdsp.c:1067:     ps_data->ps_var->i16_count = 0;
	movq	16(%rbp), %rax	 # ps_data, tmp91
	movq	(%rax), %rax	 # ps_data_9(D)->ps_var, _1
 # ./pdsp.c:1067:     ps_data->ps_var->i16_count = 0;
	movw	$0, 4(%rax)	 #, _1->i16_count
 # ./pdsp.c:1068:     ps_data->ps_var->i16_head = ps_data->i16_size - 1;
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movzwl	16(%rax), %eax	 # ps_data_9(D)->i16_size, _2
 # ./pdsp.c:1068:     ps_data->ps_var->i16_head = ps_data->i16_size - 1;
	leal	-1(%rax), %edx	 #, _4
 # ./pdsp.c:1068:     ps_data->ps_var->i16_head = ps_data->i16_size - 1;
	movq	16(%rbp), %rax	 # ps_data, tmp93
	movq	(%rax), %rax	 # ps_data_9(D)->ps_var, _5
 # ./pdsp.c:1068:     ps_data->ps_var->i16_head = ps_data->i16_size - 1;
	movw	%dx, (%rax)	 # _6, _5->i16_head
 # ./pdsp.c:1069:     ps_data->ps_var->i16_tail = 0;
	movq	16(%rbp), %rax	 # ps_data, tmp94
	movq	(%rax), %rax	 # ps_data_9(D)->ps_var, _7
 # ./pdsp.c:1069:     ps_data->ps_var->i16_tail = 0;
	movw	$0, 2(%rax)	 #, _7->i16_tail
 # ./pdsp.c:1070: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_queue_is_not_empty
	.def	pdsp_queue_is_not_empty;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_queue_is_not_empty
pdsp_queue_is_not_empty:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1074:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L313	 #,
 # ./pdsp.c:1074:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	16(%rbp), %rax	 # ps_data, tmp87
	movq	(%rax), %rax	 # ps_data_5(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L314	 #,
.L313:
 # ./pdsp.c:1074:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$1074, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp88
	movq	%rax, %rdx	 # tmp88,
	leaq	.LC1(%rip), %rax	 #, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	printf	 #
.L314:
 # ./pdsp.c:1075:     return ps_data->ps_var->i16_count > 0;
	movq	16(%rbp), %rax	 # ps_data, tmp90
	movq	(%rax), %rax	 # ps_data_5(D)->ps_var, _2
 # ./pdsp.c:1075:     return ps_data->ps_var->i16_count > 0;
	movzwl	4(%rax), %eax	 # _2->i16_count, _3
 # ./pdsp.c:1075:     return ps_data->ps_var->i16_count > 0;
	testw	%ax, %ax	 # _3
	setg	%al	 #, _8
 # ./pdsp.c:1076: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_queue_is_not_full
	.def	pdsp_queue_is_not_full;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_queue_is_not_full
pdsp_queue_is_not_full:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1080:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L317	 #,
 # ./pdsp.c:1080:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	16(%rbp), %rax	 # ps_data, tmp88
	movq	(%rax), %rax	 # ps_data_6(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L318	 #,
.L317:
 # ./pdsp.c:1080:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$1080, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp89
	movq	%rax, %rdx	 # tmp89,
	leaq	.LC1(%rip), %rax	 #, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	printf	 #
.L318:
 # ./pdsp.c:1081:     return ps_data->ps_var->i16_count < ps_data->i16_size;
	movq	16(%rbp), %rax	 # ps_data, tmp91
	movq	(%rax), %rax	 # ps_data_6(D)->ps_var, _2
 # ./pdsp.c:1081:     return ps_data->ps_var->i16_count < ps_data->i16_size;
	movzwl	4(%rax), %edx	 # _2->i16_count, _3
 # ./pdsp.c:1081:     return ps_data->ps_var->i16_count < ps_data->i16_size;
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movzwl	16(%rax), %eax	 # ps_data_6(D)->i16_size, _4
 # ./pdsp.c:1081:     return ps_data->ps_var->i16_count < ps_data->i16_size;
	cmpw	%ax, %dx	 # _4, _3
	setl	%al	 #, _9
 # ./pdsp.c:1082: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_queue_advance_head
	.def	pdsp_queue_advance_head;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_queue_advance_head
pdsp_queue_advance_head:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1086:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L321	 #,
 # ./pdsp.c:1086:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	16(%rbp), %rax	 # ps_data, tmp97
	movq	(%rax), %rax	 # ps_data_20(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L322	 #,
.L321:
 # ./pdsp.c:1086:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$1086, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp98
	movq	%rax, %rdx	 # tmp98,
	leaq	.LC1(%rip), %rax	 #, tmp99
	movq	%rax, %rcx	 # tmp99,
	call	printf	 #
.L322:
 # ./pdsp.c:1087:     ps_data->ps_var->i16_head++;
	movq	16(%rbp), %rax	 # ps_data, tmp100
	movq	(%rax), %rax	 # ps_data_20(D)->ps_var, _2
 # ./pdsp.c:1087:     ps_data->ps_var->i16_head++;
	movzwl	(%rax), %edx	 # _2->i16_head, _3
 # ./pdsp.c:1087:     ps_data->ps_var->i16_head++;
	addl	$1, %edx	 #, _6
	movw	%dx, (%rax)	 # _7, _2->i16_head
 # ./pdsp.c:1088:     if (ps_data->ps_var->i16_head >= ps_data->i16_size)
	movq	16(%rbp), %rax	 # ps_data, tmp101
	movq	(%rax), %rax	 # ps_data_20(D)->ps_var, _8
 # ./pdsp.c:1088:     if (ps_data->ps_var->i16_head >= ps_data->i16_size)
	movzwl	(%rax), %edx	 # _8->i16_head, _9
 # ./pdsp.c:1088:     if (ps_data->ps_var->i16_head >= ps_data->i16_size)
	movq	16(%rbp), %rax	 # ps_data, tmp102
	movzwl	16(%rax), %eax	 # ps_data_20(D)->i16_size, _10
 # ./pdsp.c:1088:     if (ps_data->ps_var->i16_head >= ps_data->i16_size)
	cmpw	%ax, %dx	 # _10, _9
	jl	.L323	 #,
 # ./pdsp.c:1090:         ps_data->ps_var->i16_head = 0;
	movq	16(%rbp), %rax	 # ps_data, tmp103
	movq	(%rax), %rax	 # ps_data_20(D)->ps_var, _11
 # ./pdsp.c:1090:         ps_data->ps_var->i16_head = 0;
	movw	$0, (%rax)	 #, _11->i16_head
.L323:
 # ./pdsp.c:1092:     ps_data->ps_var->i16_count++;
	movq	16(%rbp), %rax	 # ps_data, tmp104
	movq	(%rax), %rax	 # ps_data_20(D)->ps_var, _12
 # ./pdsp.c:1092:     ps_data->ps_var->i16_count++;
	movzwl	4(%rax), %edx	 # _12->i16_count, _13
 # ./pdsp.c:1092:     ps_data->ps_var->i16_count++;
	addl	$1, %edx	 #, _16
	movw	%dx, 4(%rax)	 # _17, _12->i16_count
 # ./pdsp.c:1093: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_queue_advance_tail
	.def	pdsp_queue_advance_tail;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_queue_advance_tail
pdsp_queue_advance_tail:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1097:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L325	 #,
 # ./pdsp.c:1097:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	16(%rbp), %rax	 # ps_data, tmp97
	movq	(%rax), %rax	 # ps_data_20(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L326	 #,
.L325:
 # ./pdsp.c:1097:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$1097, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp98
	movq	%rax, %rdx	 # tmp98,
	leaq	.LC1(%rip), %rax	 #, tmp99
	movq	%rax, %rcx	 # tmp99,
	call	printf	 #
.L326:
 # ./pdsp.c:1098:     ps_data->ps_var->i16_tail++;
	movq	16(%rbp), %rax	 # ps_data, tmp100
	movq	(%rax), %rax	 # ps_data_20(D)->ps_var, _2
 # ./pdsp.c:1098:     ps_data->ps_var->i16_tail++;
	movzwl	2(%rax), %edx	 # _2->i16_tail, _3
 # ./pdsp.c:1098:     ps_data->ps_var->i16_tail++;
	addl	$1, %edx	 #, _6
	movw	%dx, 2(%rax)	 # _7, _2->i16_tail
 # ./pdsp.c:1099:     if (ps_data->ps_var->i16_tail >= ps_data->i16_size)
	movq	16(%rbp), %rax	 # ps_data, tmp101
	movq	(%rax), %rax	 # ps_data_20(D)->ps_var, _8
 # ./pdsp.c:1099:     if (ps_data->ps_var->i16_tail >= ps_data->i16_size)
	movzwl	2(%rax), %edx	 # _8->i16_tail, _9
 # ./pdsp.c:1099:     if (ps_data->ps_var->i16_tail >= ps_data->i16_size)
	movq	16(%rbp), %rax	 # ps_data, tmp102
	movzwl	16(%rax), %eax	 # ps_data_20(D)->i16_size, _10
 # ./pdsp.c:1099:     if (ps_data->ps_var->i16_tail >= ps_data->i16_size)
	cmpw	%ax, %dx	 # _10, _9
	jl	.L327	 #,
 # ./pdsp.c:1101:         ps_data->ps_var->i16_tail = 0;
	movq	16(%rbp), %rax	 # ps_data, tmp103
	movq	(%rax), %rax	 # ps_data_20(D)->ps_var, _11
 # ./pdsp.c:1101:         ps_data->ps_var->i16_tail = 0;
	movw	$0, 2(%rax)	 #, _11->i16_tail
.L327:
 # ./pdsp.c:1103:     ps_data->ps_var->i16_count--;
	movq	16(%rbp), %rax	 # ps_data, tmp104
	movq	(%rax), %rax	 # ps_data_20(D)->ps_var, _12
 # ./pdsp.c:1103:     ps_data->ps_var->i16_count--;
	movzwl	4(%rax), %edx	 # _12->i16_count, _13
 # ./pdsp.c:1103:     ps_data->ps_var->i16_count--;
	subl	$1, %edx	 #, _16
	movw	%dx, 4(%rax)	 # _17, _12->i16_count
 # ./pdsp.c:1104: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_queue_push_ch
	.def	pdsp_queue_push_ch;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_queue_push_ch
pdsp_queue_push_ch:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movl	%edx, %eax	 # ch_in, tmp87
	movb	%al, 24(%rbp)	 # tmp88, ch_in
 # ./pdsp.c:1109:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L329	 #,
 # ./pdsp.c:1109:     PDSP_ASSERT(ps_data != NULL);
	movl	$1109, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp89
	movq	%rax, %rdx	 # tmp89,
	leaq	.LC1(%rip), %rax	 #, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	printf	 #
.L329:
 # ./pdsp.c:1110:     pdsp_queue_advance_head(ps_data);
	movq	16(%rbp), %rax	 # ps_data, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	pdsp_queue_advance_head	 #
 # ./pdsp.c:1111:     ((pdsp_char_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = ch_in;
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movq	8(%rax), %rdx	 # ps_data_7(D)->pav_data, _1
 # ./pdsp.c:1111:     ((pdsp_char_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = ch_in;
	movq	16(%rbp), %rax	 # ps_data, tmp93
	movq	(%rax), %rax	 # ps_data_7(D)->ps_var, _2
 # ./pdsp.c:1111:     ((pdsp_char_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = ch_in;
	movzwl	(%rax), %eax	 # _2->i16_head, _3
	movswq	%ax, %rax	 # _3, _4
 # ./pdsp.c:1111:     ((pdsp_char_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = ch_in;
	addq	%rax, %rdx	 # _4, _5
 # ./pdsp.c:1111:     ((pdsp_char_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = ch_in;
	movzbl	24(%rbp), %eax	 # ch_in, tmp94
	movb	%al, (%rdx)	 # tmp94, *_5
 # ./pdsp.c:1112: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_queue_push_i16
	.def	pdsp_queue_push_i16;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_queue_push_i16
pdsp_queue_push_i16:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movl	%edx, %eax	 # i16_in, tmp88
	movw	%ax, 24(%rbp)	 # tmp89, i16_in
 # ./pdsp.c:1117:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L331	 #,
 # ./pdsp.c:1117:     PDSP_ASSERT(ps_data != NULL);
	movl	$1117, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp90
	movq	%rax, %rdx	 # tmp90,
	leaq	.LC1(%rip), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	printf	 #
.L331:
 # ./pdsp.c:1118:     pdsp_queue_advance_head(ps_data);
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movq	%rax, %rcx	 # tmp92,
	call	pdsp_queue_advance_head	 #
 # ./pdsp.c:1119:     ((pdsp_i16_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = i16_in;
	movq	16(%rbp), %rax	 # ps_data, tmp93
	movq	8(%rax), %rdx	 # ps_data_8(D)->pav_data, _1
 # ./pdsp.c:1119:     ((pdsp_i16_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = i16_in;
	movq	16(%rbp), %rax	 # ps_data, tmp94
	movq	(%rax), %rax	 # ps_data_8(D)->ps_var, _2
 # ./pdsp.c:1119:     ((pdsp_i16_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = i16_in;
	movzwl	(%rax), %eax	 # _2->i16_head, _3
	movswq	%ax, %rax	 # _3, _4
 # ./pdsp.c:1119:     ((pdsp_i16_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = i16_in;
	addq	%rax, %rax	 # _5
	addq	%rax, %rdx	 # _5, _6
 # ./pdsp.c:1119:     ((pdsp_i16_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = i16_in;
	movzwl	24(%rbp), %eax	 # i16_in, tmp95
	movw	%ax, (%rdx)	 # tmp95, *_6
 # ./pdsp.c:1120: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_queue_push_i32
	.def	pdsp_queue_push_i32;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_queue_push_i32
pdsp_queue_push_i32:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movl	%edx, 24(%rbp)	 # i32_in, i32_in
 # ./pdsp.c:1125:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L333	 #,
 # ./pdsp.c:1125:     PDSP_ASSERT(ps_data != NULL);
	movl	$1125, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp88
	movq	%rax, %rdx	 # tmp88,
	leaq	.LC1(%rip), %rax	 #, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	printf	 #
.L333:
 # ./pdsp.c:1126:     pdsp_queue_advance_head(ps_data);
	movq	16(%rbp), %rax	 # ps_data, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	pdsp_queue_advance_head	 #
 # ./pdsp.c:1127:     ((pdsp_i32_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = i32_in;
	movq	16(%rbp), %rax	 # ps_data, tmp91
	movq	8(%rax), %rdx	 # ps_data_8(D)->pav_data, _1
 # ./pdsp.c:1127:     ((pdsp_i32_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = i32_in;
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movq	(%rax), %rax	 # ps_data_8(D)->ps_var, _2
 # ./pdsp.c:1127:     ((pdsp_i32_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = i32_in;
	movzwl	(%rax), %eax	 # _2->i16_head, _3
	movswq	%ax, %rax	 # _3, _4
 # ./pdsp.c:1127:     ((pdsp_i32_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = i32_in;
	salq	$2, %rax	 #, _5
	addq	%rax, %rdx	 # _5, _6
 # ./pdsp.c:1127:     ((pdsp_i32_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = i32_in;
	movl	24(%rbp), %eax	 # i32_in, tmp93
	movl	%eax, (%rdx)	 # tmp93, *_6
 # ./pdsp.c:1128: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_queue_push_f32
	.def	pdsp_queue_push_f32;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_queue_push_f32
pdsp_queue_push_f32:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:1133:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L335	 #,
 # ./pdsp.c:1133:     PDSP_ASSERT(ps_data != NULL);
	movl	$1133, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp88
	movq	%rax, %rdx	 # tmp88,
	leaq	.LC1(%rip), %rax	 #, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	printf	 #
.L335:
 # ./pdsp.c:1134:     pdsp_queue_advance_head(ps_data);
	movq	16(%rbp), %rax	 # ps_data, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	pdsp_queue_advance_head	 #
 # ./pdsp.c:1135:     ((pdsp_f32_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = f32_in;
	movq	16(%rbp), %rax	 # ps_data, tmp91
	movq	8(%rax), %rdx	 # ps_data_8(D)->pav_data, _1
 # ./pdsp.c:1135:     ((pdsp_f32_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = f32_in;
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movq	(%rax), %rax	 # ps_data_8(D)->ps_var, _2
 # ./pdsp.c:1135:     ((pdsp_f32_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = f32_in;
	movzwl	(%rax), %eax	 # _2->i16_head, _3
	movswq	%ax, %rax	 # _3, _4
 # ./pdsp.c:1135:     ((pdsp_f32_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = f32_in;
	salq	$2, %rax	 #, _5
	addq	%rdx, %rax	 # _1, _6
 # ./pdsp.c:1135:     ((pdsp_f32_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = f32_in;
	movss	24(%rbp), %xmm0	 # f32_in, tmp93
	movss	%xmm0, (%rax)	 # tmp93, *_6
 # ./pdsp.c:1136: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_queue_push_u64
	.def	pdsp_queue_push_u64;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_queue_push_u64
pdsp_queue_push_u64:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movq	%rdx, 24(%rbp)	 # u64_in, u64_in
 # ./pdsp.c:1141:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L337	 #,
 # ./pdsp.c:1141:     PDSP_ASSERT(ps_data != NULL);
	movl	$1141, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp88
	movq	%rax, %rdx	 # tmp88,
	leaq	.LC1(%rip), %rax	 #, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	printf	 #
.L337:
 # ./pdsp.c:1142:     pdsp_queue_advance_head(ps_data);
	movq	16(%rbp), %rax	 # ps_data, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	pdsp_queue_advance_head	 #
 # ./pdsp.c:1143:     ((pdsp_u64_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = u64_in;
	movq	16(%rbp), %rax	 # ps_data, tmp91
	movq	8(%rax), %rdx	 # ps_data_8(D)->pav_data, _1
 # ./pdsp.c:1143:     ((pdsp_u64_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = u64_in;
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movq	(%rax), %rax	 # ps_data_8(D)->ps_var, _2
 # ./pdsp.c:1143:     ((pdsp_u64_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = u64_in;
	movzwl	(%rax), %eax	 # _2->i16_head, _3
	movswq	%ax, %rax	 # _3, _4
 # ./pdsp.c:1143:     ((pdsp_u64_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = u64_in;
	salq	$3, %rax	 #, _5
	addq	%rax, %rdx	 # _5, _6
 # ./pdsp.c:1143:     ((pdsp_u64_t *)ps_data->pav_data)[ps_data->ps_var->i16_head] = u64_in;
	movq	24(%rbp), %rax	 # u64_in, tmp93
	movq	%rax, (%rdx)	 # tmp93, *_6
 # ./pdsp.c:1144: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_queue_pop_ch
	.def	pdsp_queue_pop_ch;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_queue_pop_ch
pdsp_queue_pop_ch:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1149:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L339	 #,
 # ./pdsp.c:1149:     PDSP_ASSERT(ps_data != NULL);
	movl	$1149, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp89
	movq	%rax, %rdx	 # tmp89,
	leaq	.LC1(%rip), %rax	 #, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	printf	 #
.L339:
 # ./pdsp.c:1150:     ch_out = ((pdsp_char_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	movq	16(%rbp), %rax	 # ps_data, tmp91
	movq	8(%rax), %rdx	 # ps_data_7(D)->pav_data, _1
 # ./pdsp.c:1150:     ch_out = ((pdsp_char_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movq	(%rax), %rax	 # ps_data_7(D)->ps_var, _2
 # ./pdsp.c:1150:     ch_out = ((pdsp_char_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	movzwl	2(%rax), %eax	 # _2->i16_tail, _3
	movswq	%ax, %rax	 # _3, _4
 # ./pdsp.c:1150:     ch_out = ((pdsp_char_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	addq	%rdx, %rax	 # _1, _5
 # ./pdsp.c:1150:     ch_out = ((pdsp_char_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	movzbl	(%rax), %eax	 # *_5, tmp93
	movb	%al, -1(%rbp)	 # tmp93, ch_out
 # ./pdsp.c:1151:     pdsp_queue_advance_tail(ps_data);
	movq	16(%rbp), %rax	 # ps_data, tmp94
	movq	%rax, %rcx	 # tmp94,
	call	pdsp_queue_advance_tail	 #
 # ./pdsp.c:1152:     return ch_out;
	movzbl	-1(%rbp), %eax	 # ch_out, _12
 # ./pdsp.c:1153: }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_queue_pop_i16
	.def	pdsp_queue_pop_i16;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_queue_pop_i16
pdsp_queue_pop_i16:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1158:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L342	 #,
 # ./pdsp.c:1158:     PDSP_ASSERT(ps_data != NULL);
	movl	$1158, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp90
	movq	%rax, %rdx	 # tmp90,
	leaq	.LC1(%rip), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	printf	 #
.L342:
 # ./pdsp.c:1159:     i16_out = ((pdsp_i16_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movq	8(%rax), %rdx	 # ps_data_8(D)->pav_data, _1
 # ./pdsp.c:1159:     i16_out = ((pdsp_i16_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	movq	16(%rbp), %rax	 # ps_data, tmp93
	movq	(%rax), %rax	 # ps_data_8(D)->ps_var, _2
 # ./pdsp.c:1159:     i16_out = ((pdsp_i16_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	movzwl	2(%rax), %eax	 # _2->i16_tail, _3
	movswq	%ax, %rax	 # _3, _4
 # ./pdsp.c:1159:     i16_out = ((pdsp_i16_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	addq	%rax, %rax	 # _5
	addq	%rdx, %rax	 # _1, _6
 # ./pdsp.c:1159:     i16_out = ((pdsp_i16_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	movzwl	(%rax), %eax	 # *_6, tmp94
	movw	%ax, -2(%rbp)	 # tmp94, i16_out
 # ./pdsp.c:1160:     pdsp_queue_advance_tail(ps_data);
	movq	16(%rbp), %rax	 # ps_data, tmp95
	movq	%rax, %rcx	 # tmp95,
	call	pdsp_queue_advance_tail	 #
 # ./pdsp.c:1161:     return i16_out;
	movzwl	-2(%rbp), %eax	 # i16_out, _13
 # ./pdsp.c:1162: }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_queue_pop_i32
	.def	pdsp_queue_pop_i32;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_queue_pop_i32
pdsp_queue_pop_i32:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1167:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L345	 #,
 # ./pdsp.c:1167:     PDSP_ASSERT(ps_data != NULL);
	movl	$1167, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp90
	movq	%rax, %rdx	 # tmp90,
	leaq	.LC1(%rip), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	printf	 #
.L345:
 # ./pdsp.c:1168:     i32_out = ((pdsp_i32_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movq	8(%rax), %rdx	 # ps_data_8(D)->pav_data, _1
 # ./pdsp.c:1168:     i32_out = ((pdsp_i32_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	movq	16(%rbp), %rax	 # ps_data, tmp93
	movq	(%rax), %rax	 # ps_data_8(D)->ps_var, _2
 # ./pdsp.c:1168:     i32_out = ((pdsp_i32_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	movzwl	2(%rax), %eax	 # _2->i16_tail, _3
	movswq	%ax, %rax	 # _3, _4
 # ./pdsp.c:1168:     i32_out = ((pdsp_i32_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	salq	$2, %rax	 #, _5
	addq	%rdx, %rax	 # _1, _6
 # ./pdsp.c:1168:     i32_out = ((pdsp_i32_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	movl	(%rax), %eax	 # *_6, tmp94
	movl	%eax, -4(%rbp)	 # tmp94, i32_out
 # ./pdsp.c:1169:     pdsp_queue_advance_tail(ps_data);
	movq	16(%rbp), %rax	 # ps_data, tmp95
	movq	%rax, %rcx	 # tmp95,
	call	pdsp_queue_advance_tail	 #
 # ./pdsp.c:1170:     return i32_out;
	movl	-4(%rbp), %eax	 # i32_out, _13
 # ./pdsp.c:1171: }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_queue_pop_f32
	.def	pdsp_queue_pop_f32;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_queue_pop_f32
pdsp_queue_pop_f32:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1176:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L348	 #,
 # ./pdsp.c:1176:     PDSP_ASSERT(ps_data != NULL);
	movl	$1176, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp90
	movq	%rax, %rdx	 # tmp90,
	leaq	.LC1(%rip), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	printf	 #
.L348:
 # ./pdsp.c:1177:     f32_out = ((pdsp_f32_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movq	8(%rax), %rdx	 # ps_data_8(D)->pav_data, _1
 # ./pdsp.c:1177:     f32_out = ((pdsp_f32_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	movq	16(%rbp), %rax	 # ps_data, tmp93
	movq	(%rax), %rax	 # ps_data_8(D)->ps_var, _2
 # ./pdsp.c:1177:     f32_out = ((pdsp_f32_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	movzwl	2(%rax), %eax	 # _2->i16_tail, _3
	movswq	%ax, %rax	 # _3, _4
 # ./pdsp.c:1177:     f32_out = ((pdsp_f32_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	salq	$2, %rax	 #, _5
	addq	%rdx, %rax	 # _1, _6
 # ./pdsp.c:1177:     f32_out = ((pdsp_f32_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	movss	(%rax), %xmm0	 # *_6, tmp94
	movss	%xmm0, -4(%rbp)	 # tmp94, f32_out
 # ./pdsp.c:1178:     pdsp_queue_advance_tail(ps_data);
	movq	16(%rbp), %rax	 # ps_data, tmp95
	movq	%rax, %rcx	 # tmp95,
	call	pdsp_queue_advance_tail	 #
 # ./pdsp.c:1179:     return f32_out;
	movss	-4(%rbp), %xmm0	 # f32_out, _13
 # ./pdsp.c:1180: }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_queue_pop_u64
	.def	pdsp_queue_pop_u64;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_queue_pop_u64
pdsp_queue_pop_u64:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1185:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L351	 #,
 # ./pdsp.c:1185:     PDSP_ASSERT(ps_data != NULL);
	movl	$1185, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp90
	movq	%rax, %rdx	 # tmp90,
	leaq	.LC1(%rip), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	printf	 #
.L351:
 # ./pdsp.c:1186:     u64_out = ((pdsp_u64_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movq	8(%rax), %rdx	 # ps_data_8(D)->pav_data, _1
 # ./pdsp.c:1186:     u64_out = ((pdsp_u64_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	movq	16(%rbp), %rax	 # ps_data, tmp93
	movq	(%rax), %rax	 # ps_data_8(D)->ps_var, _2
 # ./pdsp.c:1186:     u64_out = ((pdsp_u64_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	movzwl	2(%rax), %eax	 # _2->i16_tail, _3
	movswq	%ax, %rax	 # _3, _4
 # ./pdsp.c:1186:     u64_out = ((pdsp_u64_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	salq	$3, %rax	 #, _5
	addq	%rdx, %rax	 # _1, _6
 # ./pdsp.c:1186:     u64_out = ((pdsp_u64_t *)ps_data->pav_data)[ps_data->ps_var->i16_tail];
	movq	(%rax), %rax	 # *_6, tmp94
	movq	%rax, -8(%rbp)	 # tmp94, u64_out
 # ./pdsp.c:1187:     pdsp_queue_advance_tail(ps_data);
	movq	16(%rbp), %rax	 # ps_data, tmp95
	movq	%rax, %rcx	 # tmp95,
	call	pdsp_queue_advance_tail	 #
 # ./pdsp.c:1188:     return u64_out;
	movq	-8(%rbp), %rax	 # u64_out, _13
 # ./pdsp.c:1189: }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_llc_init
	.def	pdsp_llc_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_llc_init
pdsp_llc_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movl	%edx, 24(%rbp)	 # e_std, e_std
	movss	%xmm2, 32(%rbp)	 # f32_pp_filter_tau, f32_pp_filter_tau
	movss	%xmm3, 40(%rbp)	 # f32_cp_filter_tau, f32_cp_filter_tau
 # ./pdsp.c:1203:     ps_data->e_std = e_std;
	movq	16(%rbp), %rax	 # ps_data, tmp88
	movl	24(%rbp), %edx	 # e_std, tmp89
	movl	%edx, (%rax)	 # tmp89, ps_data_8(D)->e_std
 # ./pdsp.c:1204:     pdsp_expavg_init(&ps_data->pp_resistance, f32_pp_filter_tau);
	movq	16(%rbp), %rax	 # ps_data, tmp90
	addq	$4, %rax	 #, _1
	movss	32(%rbp), %xmm0	 # f32_pp_filter_tau, tmp91
	movaps	%xmm0, %xmm1	 # tmp91,
	movq	%rax, %rcx	 # _1,
	call	pdsp_expavg_init	 #
 # ./pdsp.c:1205:     pdsp_hysteresis_list_init(&ps_data->pp_resistance_state, af32_pp_thres_up,
	movq	16(%rbp), %rax	 # ps_data, tmp92
	leaq	16(%rax), %rcx	 #, _2
	movq	48(%rbp), %rdx	 # af32_pp_thres_dn, tmp93
	movq	56(%rbp), %rax	 # af32_pp_thres_up, tmp94
	movl	$13, %r9d	 #,
	movq	%rdx, %r8	 # tmp93,
	movq	%rax, %rdx	 # tmp94,
	call	pdsp_hysteresis_list_init	 #
 # ./pdsp.c:1207:     pdsp_expavg_init(&ps_data->cp_duty, f32_cp_filter_tau);
	movq	16(%rbp), %rax	 # ps_data, tmp95
	addq	$52, %rax	 #, _3
	movss	40(%rbp), %xmm0	 # f32_cp_filter_tau, tmp96
	movaps	%xmm0, %xmm1	 # tmp96,
	movq	%rax, %rcx	 # _3,
	call	pdsp_expavg_init	 #
 # ./pdsp.c:1208:     pdsp_expavg_init(&ps_data->cp_voltage_max, f32_cp_filter_tau);
	movq	16(%rbp), %rax	 # ps_data, tmp97
	addq	$64, %rax	 #, _4
	movss	40(%rbp), %xmm0	 # f32_cp_filter_tau, tmp98
	movaps	%xmm0, %xmm1	 # tmp98,
	movq	%rax, %rcx	 # _4,
	call	pdsp_expavg_init	 #
 # ./pdsp.c:1209:     pdsp_expavg_init(&ps_data->cp_voltage_min, f32_cp_filter_tau);
	movq	16(%rbp), %rax	 # ps_data, tmp99
	addq	$72, %rax	 #, _5
	movss	40(%rbp), %xmm0	 # f32_cp_filter_tau, tmp100
	movaps	%xmm0, %xmm1	 # tmp100,
	movq	%rax, %rcx	 # _5,
	call	pdsp_expavg_init	 #
 # ./pdsp.c:1210:     ps_data->f32_cp_current_limit = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp101
	pxor	%xmm0, %xmm0	 # tmp102
	movss	%xmm0, 80(%rax)	 # tmp102, ps_data_8(D)->f32_cp_current_limit
 # ./pdsp.c:1211:     ps_data->f32_pp_current_limit = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp103
	pxor	%xmm0, %xmm0	 # tmp104
	movss	%xmm0, 48(%rax)	 # tmp104, ps_data_8(D)->f32_pp_current_limit
 # ./pdsp.c:1212:     ps_data->u16_cp_state = PDSP_LLC_CP_STATE_A;
	movq	16(%rbp), %rax	 # ps_data, tmp105
	movw	$0, 84(%rax)	 #, ps_data_8(D)->u16_cp_state
 # ./pdsp.c:1213:     pdsp_hysteresis_list_init(&ps_data->cp_duty_state, af32_cp_duty_thres_up,
	movq	16(%rbp), %rax	 # ps_data, tmp106
	leaq	88(%rax), %rcx	 #, _6
	movq	64(%rbp), %rdx	 # af32_cp_duty_thres_dn, tmp107
	movq	72(%rbp), %rax	 # af32_cp_duty_thres_up, tmp108
	movl	$5, %r9d	 #,
	movq	%rdx, %r8	 # tmp107,
	movq	%rax, %rdx	 # tmp108,
	call	pdsp_hysteresis_list_init	 #
 # ./pdsp.c:1215:     ps_data->b_plug_detected = PDSP_FALSE;
	movq	16(%rbp), %rax	 # ps_data, tmp109
	movb	$0, 120(%rax)	 #, ps_data_8(D)->b_plug_detected
 # ./pdsp.c:1216:     ps_data->e_ev_ready = PDSP_LLC_EV_NOT_READY;
	movq	16(%rbp), %rax	 # ps_data, tmp110
	movl	$0, 124(%rax)	 #, ps_data_8(D)->e_ev_ready
 # ./pdsp.c:1217:     ps_data->e_se_ready = PDSP_LLC_SE_NOT_READY;
	movq	16(%rbp), %rax	 # ps_data, tmp111
	movl	$0, 128(%rax)	 #, ps_data_8(D)->e_se_ready
 # ./pdsp.c:1218:     ps_data->b_s2_normal = PDSP_FALSE;
	movq	16(%rbp), %rax	 # ps_data, tmp112
	movb	$0, 132(%rax)	 #, ps_data_8(D)->b_s2_normal
 # ./pdsp.c:1219:     ps_data->b_s2_ventilation = PDSP_FALSE;
	movq	16(%rbp), %rax	 # ps_data, tmp113
	movb	$0, 133(%rax)	 #, ps_data_8(D)->b_s2_ventilation
 # ./pdsp.c:1220: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_llc_run
	.def	pdsp_llc_run;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_llc_run
pdsp_llc_run:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1224:     ps_data->f32_cp_current_limit = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp82
	pxor	%xmm0, %xmm0	 # tmp83
	movss	%xmm0, 80(%rax)	 # tmp83, ps_data_2(D)->f32_cp_current_limit
 # ./pdsp.c:1225:     ps_data->f32_pp_current_limit = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp84
	pxor	%xmm0, %xmm0	 # tmp85
	movss	%xmm0, 48(%rax)	 # tmp85, ps_data_2(D)->f32_pp_current_limit
 # ./pdsp.c:1226:     ps_data->b_plug_detected = PDSP_FALSE;
	movq	16(%rbp), %rax	 # ps_data, tmp86
	movb	$0, 120(%rax)	 #, ps_data_2(D)->b_plug_detected
 # ./pdsp.c:1227:     ps_data->e_ev_ready = PDSP_LLC_EV_NOT_READY;
	movq	16(%rbp), %rax	 # ps_data, tmp87
	movl	$0, 124(%rax)	 #, ps_data_2(D)->e_ev_ready
 # ./pdsp.c:1228:     ps_data->e_se_ready = PDSP_LLC_SE_NOT_READY;
	movq	16(%rbp), %rax	 # ps_data, tmp88
	movl	$0, 128(%rax)	 #, ps_data_2(D)->e_se_ready
 # ./pdsp.c:1229: }
	nop	
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_llc_set_values
	.def	pdsp_llc_set_values;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_llc_set_values
pdsp_llc_set_values:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_pp_resistance, f32_pp_resistance
	movss	%xmm2, 32(%rbp)	 # f32_cp_duty, f32_cp_duty
	movss	%xmm3, 40(%rbp)	 # f32_cp_voltage_max, f32_cp_voltage_max
 # ./pdsp.c:1237:     pdsp_expavg(&ps_data->pp_resistance, f32_pp_resistance);
	movq	16(%rbp), %rax	 # ps_data, tmp86
	addq	$4, %rax	 #, _1
	movss	24(%rbp), %xmm0	 # f32_pp_resistance, tmp87
	movaps	%xmm0, %xmm1	 # tmp87,
	movq	%rax, %rcx	 # _1,
	call	pdsp_expavg	 #
 # ./pdsp.c:1238:     pdsp_expavg(&ps_data->cp_duty, f32_cp_duty);
	movq	16(%rbp), %rax	 # ps_data, tmp88
	addq	$52, %rax	 #, _2
	movss	32(%rbp), %xmm0	 # f32_cp_duty, tmp89
	movaps	%xmm0, %xmm1	 # tmp89,
	movq	%rax, %rcx	 # _2,
	call	pdsp_expavg	 #
 # ./pdsp.c:1239:     pdsp_expavg(&ps_data->cp_voltage_max, f32_cp_voltage_max);
	movq	16(%rbp), %rax	 # ps_data, tmp90
	addq	$64, %rax	 #, _3
	movss	40(%rbp), %xmm0	 # f32_cp_voltage_max, tmp91
	movaps	%xmm0, %xmm1	 # tmp91,
	movq	%rax, %rcx	 # _3,
	call	pdsp_expavg	 #
 # ./pdsp.c:1240:     pdsp_expavg(&ps_data->cp_voltage_min, f32_cp_voltage_min);
	movq	16(%rbp), %rax	 # ps_data, tmp92
	addq	$72, %rax	 #, _4
	movss	48(%rbp), %xmm0	 # f32_cp_voltage_min, tmp93
	movaps	%xmm0, %xmm1	 # tmp93,
	movq	%rax, %rcx	 # _4,
	call	pdsp_expavg	 #
 # ./pdsp.c:1241: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_llc_set_ev_ready
	.def	pdsp_llc_set_ev_ready;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_llc_set_ev_ready
pdsp_llc_set_ev_ready:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movl	%edx, 24(%rbp)	 # e_ev_ready, e_ev_ready
 # ./pdsp.c:1246:     ps_data->e_ev_ready = e_ev_ready;
	movq	16(%rbp), %rax	 # ps_data, tmp82
	movl	24(%rbp), %edx	 # e_ev_ready, tmp83
	movl	%edx, 124(%rax)	 # tmp83, ps_data_2(D)->e_ev_ready
 # ./pdsp.c:1247: }
	nop	
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_llc_get_se_ready
	.def	pdsp_llc_get_se_ready;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_llc_get_se_ready
pdsp_llc_get_se_ready:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1251:     return ps_data->e_se_ready;
	movq	16(%rbp), %rax	 # ps_data, tmp84
	movl	128(%rax), %eax	 # ps_data_2(D)->e_se_ready, _3
 # ./pdsp.c:1252: }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_llc_get_plug_detected
	.def	pdsp_llc_get_plug_detected;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_llc_get_plug_detected
pdsp_llc_get_plug_detected:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1256:     return ps_data->b_plug_detected;
	movq	16(%rbp), %rax	 # ps_data, tmp84
	movzbl	120(%rax), %eax	 # ps_data_2(D)->b_plug_detected, _3
 # ./pdsp.c:1257: }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_llc_get_cp_duty_state
	.def	pdsp_llc_get_cp_duty_state;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_llc_get_cp_duty_state
pdsp_llc_get_cp_duty_state:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1261:     return ps_data->cp_duty_state.u16_state;
	movq	16(%rbp), %rax	 # ps_data, tmp84
	movzwl	88(%rax), %eax	 # ps_data_2(D)->cp_duty_state.u16_state, _3
 # ./pdsp.c:1262: }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_llc_get_s2_normal_status
	.def	pdsp_llc_get_s2_normal_status;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_llc_get_s2_normal_status
pdsp_llc_get_s2_normal_status:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1266:     return ps_data->b_s2_normal;
	movq	16(%rbp), %rax	 # ps_data, tmp84
	movzbl	132(%rax), %eax	 # ps_data_2(D)->b_s2_normal, _3
 # ./pdsp.c:1267: }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_llc_get_s2_ventilation_status
	.def	pdsp_llc_get_s2_ventilation_status;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_llc_get_s2_ventilation_status
pdsp_llc_get_s2_ventilation_status:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1271:     return ps_data->b_s2_ventilation;
	movq	16(%rbp), %rax	 # ps_data, tmp84
	movzbl	133(%rax), %eax	 # ps_data_2(D)->b_s2_ventilation, _3
 # ./pdsp.c:1272: }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_ain
	.def	pdsp_ain;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_ain
pdsp_ain:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_raw, f32_raw
 # ./pdsp.c:1276:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L368	 #,
 # ./pdsp.c:1276:     PDSP_ASSERT(ps_data != NULL);
	movl	$1276, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp95
	movq	%rax, %rdx	 # tmp95,
	leaq	.LC1(%rip), %rax	 #, tmp96
	movq	%rax, %rcx	 # tmp96,
	call	printf	 #
.L368:
 # ./pdsp.c:1277:     if (ps_data->e_ovr_mode == PDSP_OVERRIDE_OFF)
	movq	16(%rbp), %rax	 # ps_data, tmp97
	movl	(%rax), %eax	 # ps_data_14(D)->e_ovr_mode, _1
 # ./pdsp.c:1277:     if (ps_data->e_ovr_mode == PDSP_OVERRIDE_OFF)
	testl	%eax, %eax	 # _1
	jne	.L369	 #,
 # ./pdsp.c:1279:         return ((f32_raw * ps_data->f32_gain) + ps_data->f32_offset);
	movq	16(%rbp), %rax	 # ps_data, tmp98
	movss	8(%rax), %xmm0	 # ps_data_14(D)->f32_gain, _2
 # ./pdsp.c:1279:         return ((f32_raw * ps_data->f32_gain) + ps_data->f32_offset);
	movaps	%xmm0, %xmm1	 # _2, _2
	mulss	24(%rbp), %xmm1	 # f32_raw, _2
 # ./pdsp.c:1279:         return ((f32_raw * ps_data->f32_gain) + ps_data->f32_offset);
	movq	16(%rbp), %rax	 # ps_data, tmp99
	movss	12(%rax), %xmm0	 # ps_data_14(D)->f32_offset, _4
 # ./pdsp.c:1279:         return ((f32_raw * ps_data->f32_gain) + ps_data->f32_offset);
	addss	%xmm1, %xmm0	 # _3, _12
	jmp	.L370	 #
.L369:
 # ./pdsp.c:1281:     else if (ps_data->e_ovr_mode == PDSP_OVERRIDE_ON)
	movq	16(%rbp), %rax	 # ps_data, tmp100
	movl	(%rax), %eax	 # ps_data_14(D)->e_ovr_mode, _5
 # ./pdsp.c:1281:     else if (ps_data->e_ovr_mode == PDSP_OVERRIDE_ON)
	cmpl	$1, %eax	 #, _5
	jne	.L371	 #,
 # ./pdsp.c:1283:         return ps_data->f32_ovr_value;
	movq	16(%rbp), %rax	 # ps_data, tmp101
	movss	4(%rax), %xmm0	 # ps_data_14(D)->f32_ovr_value, _12
	jmp	.L370	 #
.L371:
 # ./pdsp.c:1285:     else if (ps_data->e_ovr_mode == PDSP_OVERRIDE_INJECT)
	movq	16(%rbp), %rax	 # ps_data, tmp102
	movl	(%rax), %eax	 # ps_data_14(D)->e_ovr_mode, _6
 # ./pdsp.c:1285:     else if (ps_data->e_ovr_mode == PDSP_OVERRIDE_INJECT)
	cmpl	$2, %eax	 #, _6
	jne	.L372	 #,
 # ./pdsp.c:1287:         return ((f32_raw * ps_data->f32_gain) + ps_data->f32_offset) +
	movq	16(%rbp), %rax	 # ps_data, tmp103
	movss	8(%rax), %xmm0	 # ps_data_14(D)->f32_gain, _7
 # ./pdsp.c:1287:         return ((f32_raw * ps_data->f32_gain) + ps_data->f32_offset) +
	movaps	%xmm0, %xmm1	 # _7, _7
	mulss	24(%rbp), %xmm1	 # f32_raw, _7
 # ./pdsp.c:1287:         return ((f32_raw * ps_data->f32_gain) + ps_data->f32_offset) +
	movq	16(%rbp), %rax	 # ps_data, tmp104
	movss	12(%rax), %xmm0	 # ps_data_14(D)->f32_offset, _9
 # ./pdsp.c:1287:         return ((f32_raw * ps_data->f32_gain) + ps_data->f32_offset) +
	addss	%xmm0, %xmm1	 # _9, _10
 # ./pdsp.c:1288:                ps_data->f32_ovr_value;
	movq	16(%rbp), %rax	 # ps_data, tmp105
	movss	4(%rax), %xmm0	 # ps_data_14(D)->f32_ovr_value, _11
 # ./pdsp.c:1287:         return ((f32_raw * ps_data->f32_gain) + ps_data->f32_offset) +
	addss	%xmm1, %xmm0	 # _10, _12
	jmp	.L370	 #
.L372:
 # ./pdsp.c:1292:         return f32_raw;
	movss	24(%rbp), %xmm0	 # f32_raw, _12
.L370:
 # ./pdsp.c:1294: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_ain_ovr
	.def	pdsp_ain_ovr;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_ain_ovr
pdsp_ain_ovr:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_raw, f32_raw
 # ./pdsp.c:1298:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L374	 #,
 # ./pdsp.c:1298:     PDSP_ASSERT(ps_data != NULL);
	movl	$1298, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp89
	movq	%rax, %rdx	 # tmp89,
	leaq	.LC1(%rip), %rax	 #, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	printf	 #
.L374:
 # ./pdsp.c:1299:     return ((f32_raw * ps_data->f32_gain) + ps_data->f32_offset) +
	movq	16(%rbp), %rax	 # ps_data, tmp91
	movss	8(%rax), %xmm0	 # ps_data_7(D)->f32_gain, _1
 # ./pdsp.c:1299:     return ((f32_raw * ps_data->f32_gain) + ps_data->f32_offset) +
	movaps	%xmm0, %xmm1	 # _1, _1
	mulss	24(%rbp), %xmm1	 # f32_raw, _1
 # ./pdsp.c:1299:     return ((f32_raw * ps_data->f32_gain) + ps_data->f32_offset) +
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movss	12(%rax), %xmm0	 # ps_data_7(D)->f32_offset, _3
 # ./pdsp.c:1299:     return ((f32_raw * ps_data->f32_gain) + ps_data->f32_offset) +
	addss	%xmm0, %xmm1	 # _3, _4
 # ./pdsp.c:1300:            ps_data->f32_ovr_value;
	movq	16(%rbp), %rax	 # ps_data, tmp93
	movss	4(%rax), %xmm0	 # ps_data_7(D)->f32_ovr_value, _5
 # ./pdsp.c:1299:     return ((f32_raw * ps_data->f32_gain) + ps_data->f32_offset) +
	addss	%xmm1, %xmm0	 # _4, _11
 # ./pdsp.c:1301: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_ain_ovr_enable
	.def	pdsp_ain_ovr_enable;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_ain_ovr_enable
pdsp_ain_ovr_enable:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_value, f32_value
 # ./pdsp.c:1306:     PDSP_ASSERT((ps_data != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L377	 #,
 # ./pdsp.c:1306:     PDSP_ASSERT((ps_data != NULL));
	movl	$1306, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp82
	movq	%rax, %rdx	 # tmp82,
	leaq	.LC1(%rip), %rax	 #, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	printf	 #
.L377:
 # ./pdsp.c:1307:     ps_data->e_ovr_mode = PDSP_OVERRIDE_ON;
	movq	16(%rbp), %rax	 # ps_data, tmp84
	movl	$1, (%rax)	 #, ps_data_2(D)->e_ovr_mode
 # ./pdsp.c:1308:     ps_data->f32_ovr_value = f32_value;
	movq	16(%rbp), %rax	 # ps_data, tmp85
	movss	24(%rbp), %xmm0	 # f32_value, tmp86
	movss	%xmm0, 4(%rax)	 # tmp86, ps_data_2(D)->f32_ovr_value
 # ./pdsp.c:1309: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_ain_ovr_disable
	.def	pdsp_ain_ovr_disable;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_ain_ovr_disable
pdsp_ain_ovr_disable:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1313:     PDSP_ASSERT((ps_data != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L379	 #,
 # ./pdsp.c:1313:     PDSP_ASSERT((ps_data != NULL));
	movl	$1313, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp82
	movq	%rax, %rdx	 # tmp82,
	leaq	.LC1(%rip), %rax	 #, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	printf	 #
.L379:
 # ./pdsp.c:1314:     ps_data->e_ovr_mode = PDSP_OVERRIDE_OFF;
	movq	16(%rbp), %rax	 # ps_data, tmp84
	movl	$0, (%rax)	 #, ps_data_2(D)->e_ovr_mode
 # ./pdsp.c:1315: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_ain_ovr_inject
	.def	pdsp_ain_ovr_inject;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_ain_ovr_inject
pdsp_ain_ovr_inject:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_value, f32_value
 # ./pdsp.c:1320:     PDSP_ASSERT((ps_data != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L381	 #,
 # ./pdsp.c:1320:     PDSP_ASSERT((ps_data != NULL));
	movl	$1320, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp82
	movq	%rax, %rdx	 # tmp82,
	leaq	.LC1(%rip), %rax	 #, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	printf	 #
.L381:
 # ./pdsp.c:1321:     ps_data->e_ovr_mode = PDSP_OVERRIDE_INJECT;
	movq	16(%rbp), %rax	 # ps_data, tmp84
	movl	$2, (%rax)	 #, ps_data_2(D)->e_ovr_mode
 # ./pdsp.c:1322:     ps_data->f32_ovr_value = f32_value;
	movq	16(%rbp), %rax	 # ps_data, tmp85
	movss	24(%rbp), %xmm0	 # f32_value, tmp86
	movss	%xmm0, 4(%rax)	 # tmp86, ps_data_2(D)->f32_ovr_value
 # ./pdsp.c:1323: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_ain_calibrate_gain
	.def	pdsp_ain_calibrate_gain;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_ain_calibrate_gain
pdsp_ain_calibrate_gain:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movss	%xmm0, 16(%rbp)	 # f32_gain_old, f32_gain_old
	movss	%xmm1, 24(%rbp)	 # f32_ref, f32_ref
	movss	%xmm2, 32(%rbp)	 # f32_raw, f32_raw
 # ./pdsp.c:1329:     if (f32_raw == 0.0f)
	pxor	%xmm0, %xmm0	 # tmp85
	ucomiss	32(%rbp), %xmm0	 # f32_raw, tmp85
	jp	.L383	 #,
	pxor	%xmm0, %xmm0	 # tmp86
	ucomiss	32(%rbp), %xmm0	 # f32_raw, tmp86
	jne	.L383	 #,
 # ./pdsp.c:1331:         f32_raw = f32_ref;
	movss	24(%rbp), %xmm0	 # f32_ref, tmp87
	movss	%xmm0, 32(%rbp)	 # tmp87, f32_raw
.L383:
 # ./pdsp.c:1333:     return pdsp_divf(f32_gain_old * f32_ref, f32_raw);
	movss	16(%rbp), %xmm0	 # f32_gain_old, tmp88
	mulss	24(%rbp), %xmm0	 # f32_ref, _1
	divss	32(%rbp), %xmm0	 # f32_raw, _7
 # ./pdsp.c:1334: }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_ain_calibrate_offset
	.def	pdsp_ain_calibrate_offset;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_ain_calibrate_offset
pdsp_ain_calibrate_offset:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movss	%xmm0, 16(%rbp)	 # f32_offset_old, f32_offset_old
	movss	%xmm1, 24(%rbp)	 # f32_ref, f32_ref
	movss	%xmm2, 32(%rbp)	 # f32_raw, f32_raw
 # ./pdsp.c:1340:     return f32_offset_old + (f32_ref - f32_raw);
	movss	24(%rbp), %xmm0	 # f32_ref, tmp85
	subss	32(%rbp), %xmm0	 # f32_raw, _1
 # ./pdsp.c:1340:     return f32_offset_old + (f32_ref - f32_raw);
	addss	16(%rbp), %xmm0	 # f32_offset_old, _5
 # ./pdsp.c:1341: }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_minmax_clear
	.def	pdsp_minmax_clear;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_minmax_clear
pdsp_minmax_clear:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_var, ps_var
 # ./pdsp.c:1345:     PDSP_ASSERT(ps_var != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_var
	jne	.L390	 #,
 # ./pdsp.c:1345:     PDSP_ASSERT(ps_var != NULL);
	movl	$1345, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp82
	movq	%rax, %rdx	 # tmp82,
	leaq	.LC1(%rip), %rax	 #, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	printf	 #
.L390:
 # ./pdsp.c:1346:     ps_var->f32_min = PDSP_POS_INF;
	movq	16(%rbp), %rax	 # ps_var, tmp84
	movss	.LC8(%rip), %xmm0	 #, tmp85
	movss	%xmm0, (%rax)	 # tmp85, ps_var_2(D)->f32_min
 # ./pdsp.c:1347:     ps_var->f32_max = PDSP_NEG_INF;
	movq	16(%rbp), %rax	 # ps_var, tmp86
	movss	.LC9(%rip), %xmm0	 #, tmp87
	movss	%xmm0, 4(%rax)	 # tmp87, ps_var_2(D)->f32_max
 # ./pdsp.c:1348:     ps_var->f32_delta = 0.0f;
	movq	16(%rbp), %rax	 # ps_var, tmp88
	pxor	%xmm0, %xmm0	 # tmp89
	movss	%xmm0, 8(%rax)	 # tmp89, ps_var_2(D)->f32_delta
 # ./pdsp.c:1349: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_minmax
	.def	pdsp_minmax;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_minmax
pdsp_minmax:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_var, ps_var
	movss	%xmm1, 24(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:1353:     PDSP_ASSERT(ps_var != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_var
	jne	.L392	 #,
 # ./pdsp.c:1353:     PDSP_ASSERT(ps_var != NULL);
	movl	$1353, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp89
	movq	%rax, %rdx	 # tmp89,
	leaq	.LC1(%rip), %rax	 #, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	printf	 #
.L392:
 # ./pdsp.c:1354:     ps_var->f32_min = pdsp_minf(ps_var->f32_min, f32_in);
	movq	16(%rbp), %rax	 # ps_var, tmp91
	movss	(%rax), %xmm0	 # ps_var_9(D)->f32_min, _1
	movl	24(%rbp), %eax	 # f32_in, tmp92
	movaps	%xmm0, %xmm1	 # _1,
	movd	%eax, %xmm0	 # tmp92,
	call	fminf	 #
	movd	%xmm0, %eax	 #, _2
 # ./pdsp.c:1354:     ps_var->f32_min = pdsp_minf(ps_var->f32_min, f32_in);
	movq	16(%rbp), %rdx	 # ps_var, tmp93
	movl	%eax, (%rdx)	 # _2, ps_var_9(D)->f32_min
 # ./pdsp.c:1355:     ps_var->f32_max = pdsp_maxf(ps_var->f32_max, f32_in);
	movq	16(%rbp), %rax	 # ps_var, tmp94
	movss	4(%rax), %xmm0	 # ps_var_9(D)->f32_max, _3
	movl	24(%rbp), %eax	 # f32_in, tmp95
	movaps	%xmm0, %xmm1	 # _3,
	movd	%eax, %xmm0	 # tmp95,
	call	fmaxf	 #
	movd	%xmm0, %eax	 #, _4
 # ./pdsp.c:1355:     ps_var->f32_max = pdsp_maxf(ps_var->f32_max, f32_in);
	movq	16(%rbp), %rdx	 # ps_var, tmp96
	movl	%eax, 4(%rdx)	 # _4, ps_var_9(D)->f32_max
 # ./pdsp.c:1356:     ps_var->f32_delta = ps_var->f32_max - ps_var->f32_min;
	movq	16(%rbp), %rax	 # ps_var, tmp97
	movss	4(%rax), %xmm0	 # ps_var_9(D)->f32_max, _5
 # ./pdsp.c:1356:     ps_var->f32_delta = ps_var->f32_max - ps_var->f32_min;
	movq	16(%rbp), %rax	 # ps_var, tmp98
	movss	(%rax), %xmm1	 # ps_var_9(D)->f32_min, _6
 # ./pdsp.c:1356:     ps_var->f32_delta = ps_var->f32_max - ps_var->f32_min;
	subss	%xmm1, %xmm0	 # _6, _7
 # ./pdsp.c:1356:     ps_var->f32_delta = ps_var->f32_max - ps_var->f32_min;
	movq	16(%rbp), %rax	 # ps_var, tmp99
	movss	%xmm0, 8(%rax)	 # _7, ps_var_9(D)->f32_delta
 # ./pdsp.c:1357: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_expavg_c2d
	.def	pdsp_expavg_c2d;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_expavg_c2d
pdsp_expavg_c2d:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_ts, f32_ts
	movss	%xmm2, 32(%rbp)	 # f32_fc, f32_fc
 # ./pdsp.c:1362:     ps_data->f32_tau = f32_ts * 2.0f * PDSP_PI_F * f32_fc;
	movss	24(%rbp), %xmm0	 # f32_ts, tmp85
	movaps	%xmm0, %xmm1	 # tmp85, tmp85
	addss	%xmm0, %xmm1	 # tmp85, tmp85
 # ./pdsp.c:1362:     ps_data->f32_tau = f32_ts * 2.0f * PDSP_PI_F * f32_fc;
	movss	.LC10(%rip), %xmm0	 #, tmp86
	mulss	%xmm1, %xmm0	 # _1, _2
 # ./pdsp.c:1362:     ps_data->f32_tau = f32_ts * 2.0f * PDSP_PI_F * f32_fc;
	mulss	32(%rbp), %xmm0	 # f32_fc, _3
 # ./pdsp.c:1362:     ps_data->f32_tau = f32_ts * 2.0f * PDSP_PI_F * f32_fc;
	movq	16(%rbp), %rax	 # ps_data, tmp87
	movss	%xmm0, 4(%rax)	 # _3, ps_data_7(D)->f32_tau
 # ./pdsp.c:1363: }
	nop	
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_expavg_init
	.def	pdsp_expavg_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_expavg_init
pdsp_expavg_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_tau, f32_tau
 # ./pdsp.c:1367:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L395	 #,
 # ./pdsp.c:1367:     PDSP_ASSERT(ps_data != NULL);
	movl	$1367, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp82
	movq	%rax, %rdx	 # tmp82,
	leaq	.LC1(%rip), %rax	 #, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	printf	 #
.L395:
 # ./pdsp.c:1368:     ps_data->f32_out = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp84
	pxor	%xmm0, %xmm0	 # tmp85
	movss	%xmm0, (%rax)	 # tmp85, ps_data_2(D)->f32_out
 # ./pdsp.c:1369:     ps_data->f32_tau = f32_tau;
	movq	16(%rbp), %rax	 # ps_data, tmp86
	movss	24(%rbp), %xmm0	 # f32_tau, tmp87
	movss	%xmm0, 4(%rax)	 # tmp87, ps_data_2(D)->f32_tau
 # ./pdsp.c:1370: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_expavg_clear
	.def	pdsp_expavg_clear;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_expavg_clear
pdsp_expavg_clear:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1374:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L397	 #,
 # ./pdsp.c:1374:     PDSP_ASSERT(ps_data != NULL);
	movl	$1374, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp82
	movq	%rax, %rdx	 # tmp82,
	leaq	.LC1(%rip), %rax	 #, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	printf	 #
.L397:
 # ./pdsp.c:1375:     ps_data->f32_out = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp84
	pxor	%xmm0, %xmm0	 # tmp85
	movss	%xmm0, (%rax)	 # tmp85, ps_data_2(D)->f32_out
 # ./pdsp.c:1376: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_expavg
	.def	pdsp_expavg;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_expavg
pdsp_expavg:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:1380:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L399	 #,
 # ./pdsp.c:1380:     PDSP_ASSERT(ps_data != NULL);
	movl	$1380, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp90
	movq	%rax, %rdx	 # tmp90,
	leaq	.LC1(%rip), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	printf	 #
.L399:
 # ./pdsp.c:1381:     ps_data->f32_out += ps_data->f32_tau * (f32_in - ps_data->f32_out);
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movss	(%rax), %xmm1	 # ps_data_8(D)->f32_out, _1
 # ./pdsp.c:1381:     ps_data->f32_out += ps_data->f32_tau * (f32_in - ps_data->f32_out);
	movq	16(%rbp), %rax	 # ps_data, tmp93
	movss	4(%rax), %xmm2	 # ps_data_8(D)->f32_tau, _2
 # ./pdsp.c:1381:     ps_data->f32_out += ps_data->f32_tau * (f32_in - ps_data->f32_out);
	movq	16(%rbp), %rax	 # ps_data, tmp94
	movss	(%rax), %xmm3	 # ps_data_8(D)->f32_out, _3
 # ./pdsp.c:1381:     ps_data->f32_out += ps_data->f32_tau * (f32_in - ps_data->f32_out);
	movss	24(%rbp), %xmm0	 # f32_in, tmp95
	subss	%xmm3, %xmm0	 # _3, _4
 # ./pdsp.c:1381:     ps_data->f32_out += ps_data->f32_tau * (f32_in - ps_data->f32_out);
	mulss	%xmm2, %xmm0	 # _2, _5
 # ./pdsp.c:1381:     ps_data->f32_out += ps_data->f32_tau * (f32_in - ps_data->f32_out);
	addss	%xmm1, %xmm0	 # _1, _6
	movq	16(%rbp), %rax	 # ps_data, tmp96
	movss	%xmm0, (%rax)	 # _6, ps_data_8(D)->f32_out
 # ./pdsp.c:1382:     return ps_data->f32_out;
	movq	16(%rbp), %rax	 # ps_data, tmp97
	movss	(%rax), %xmm0	 # ps_data_8(D)->f32_out, _13
 # ./pdsp.c:1383: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_smoothstep
	.def	pdsp_smoothstep;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_smoothstep
pdsp_smoothstep:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movss	%xmm0, 16(%rbp)	 # f32_x0, f32_x0
	movss	%xmm1, 24(%rbp)	 # f32_x1, f32_x1
	movss	%xmm2, 32(%rbp)	 # f32_x, f32_x
 # ./pdsp.c:1388:     if (f32_x < f32_x0)
	movss	16(%rbp), %xmm0	 # f32_x0, tmp89
	comiss	32(%rbp), %xmm0	 # f32_x, tmp89
	jbe	.L409	 #,
 # ./pdsp.c:1389:         return 0;
	pxor	%xmm0, %xmm0	 # _6
	jmp	.L404	 #
.L409:
 # ./pdsp.c:1391:     if (f32_x >= f32_x1)
	movss	32(%rbp), %xmm0	 # f32_x, tmp90
	comiss	24(%rbp), %xmm0	 # f32_x1, tmp90
	jb	.L410	 #,
 # ./pdsp.c:1392:         return 1;
	movss	.LC4(%rip), %xmm0	 #, _6
	jmp	.L404	 #
.L410:
 # ./pdsp.c:1395:     f32_x = (f32_x - f32_x0) / (f32_x1 - f32_x0);
	movss	32(%rbp), %xmm0	 # f32_x, tmp91
	subss	16(%rbp), %xmm0	 # f32_x0, _1
 # ./pdsp.c:1395:     f32_x = (f32_x - f32_x0) / (f32_x1 - f32_x0);
	movss	24(%rbp), %xmm1	 # f32_x1, tmp92
	subss	16(%rbp), %xmm1	 # f32_x0, _2
 # ./pdsp.c:1395:     f32_x = (f32_x - f32_x0) / (f32_x1 - f32_x0);
	divss	%xmm1, %xmm0	 # _2, tmp93
	movss	%xmm0, 32(%rbp)	 # tmp93, f32_x
 # ./pdsp.c:1397:     return f32_x * f32_x * (3 - 2 * f32_x);
	movss	32(%rbp), %xmm0	 # f32_x, tmp94
	movaps	%xmm0, %xmm1	 # tmp94, tmp94
	mulss	%xmm0, %xmm1	 # tmp94, tmp94
 # ./pdsp.c:1397:     return f32_x * f32_x * (3 - 2 * f32_x);
	movss	32(%rbp), %xmm0	 # f32_x, tmp95
	movaps	%xmm0, %xmm2	 # tmp95, tmp95
	addss	%xmm0, %xmm2	 # tmp95, tmp95
 # ./pdsp.c:1397:     return f32_x * f32_x * (3 - 2 * f32_x);
	movss	.LC11(%rip), %xmm0	 #, tmp96
	subss	%xmm2, %xmm0	 # _4, _5
 # ./pdsp.c:1397:     return f32_x * f32_x * (3 - 2 * f32_x);
	mulss	%xmm1, %xmm0	 # _3, _6
.L404:
 # ./pdsp.c:1398: }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_1p1z_c2d
	.def	pdsp_1p1z_c2d;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_1p1z_c2d
pdsp_1p1z_c2d:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$16, %rsp	 #,
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_coeff_in, ps_coeff_in
	movq	%rdx, 24(%rbp)	 # ps_coeff_out, ps_coeff_out
	movss	%xmm2, 32(%rbp)	 # f32_ts, f32_ts
 # ./pdsp.c:1403:     pdsp_f32_t f32_K = pdsp_divf(2.0f, f32_ts);
	movss	.LC12(%rip), %xmm0	 #, tmp102
	divss	32(%rbp), %xmm0	 # f32_ts, tmp101
	movss	%xmm0, -4(%rbp)	 # tmp101, f32_K
 # ./pdsp.c:1405:         pdsp_divf(1.0f, ps_coeff_in->f32_a1 * f32_K + ps_coeff_in->f32_a0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp103
	movss	12(%rax), %xmm0	 # ps_coeff_in_23(D)->f32_a1, _1
	movaps	%xmm0, %xmm1	 # _1, _1
	mulss	-4(%rbp), %xmm1	 # f32_K, _1
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp104
	movss	8(%rax), %xmm0	 # ps_coeff_in_23(D)->f32_a0, _3
	addss	%xmm0, %xmm1	 # _3, _4
 # ./pdsp.c:1404:     pdsp_f32_t f32_a0_inv =
	movss	.LC4(%rip), %xmm0	 #, tmp106
	divss	%xmm1, %xmm0	 # _4, tmp105
	movss	%xmm0, -8(%rbp)	 # tmp105, f32_a0_inv
 # ./pdsp.c:1407:         f32_a0_inv * (ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp107
	movss	4(%rax), %xmm0	 # ps_coeff_in_23(D)->f32_b1, _5
 # ./pdsp.c:1407:         f32_a0_inv * (ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
	movaps	%xmm0, %xmm1	 # _5, _5
	mulss	-4(%rbp), %xmm1	 # f32_K, _5
 # ./pdsp.c:1407:         f32_a0_inv * (ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp108
	movss	(%rax), %xmm0	 # ps_coeff_in_23(D)->f32_b0, _7
 # ./pdsp.c:1407:         f32_a0_inv * (ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
	addss	%xmm1, %xmm0	 # _6, _8
 # ./pdsp.c:1407:         f32_a0_inv * (ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
	mulss	-8(%rbp), %xmm0	 # f32_a0_inv, _9
 # ./pdsp.c:1406:     ps_coeff_out->f32_b0 =
	movq	24(%rbp), %rax	 # ps_coeff_out, tmp109
	movss	%xmm0, (%rax)	 # _9, ps_coeff_out_25(D)->f32_b0
 # ./pdsp.c:1409:         f32_a0_inv * (ps_coeff_in->f32_b0 - ps_coeff_in->f32_b1 * f32_K);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp110
	movss	(%rax), %xmm0	 # ps_coeff_in_23(D)->f32_b0, _10
 # ./pdsp.c:1409:         f32_a0_inv * (ps_coeff_in->f32_b0 - ps_coeff_in->f32_b1 * f32_K);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp111
	movss	4(%rax), %xmm1	 # ps_coeff_in_23(D)->f32_b1, _11
 # ./pdsp.c:1409:         f32_a0_inv * (ps_coeff_in->f32_b0 - ps_coeff_in->f32_b1 * f32_K);
	mulss	-4(%rbp), %xmm1	 # f32_K, _12
 # ./pdsp.c:1409:         f32_a0_inv * (ps_coeff_in->f32_b0 - ps_coeff_in->f32_b1 * f32_K);
	subss	%xmm1, %xmm0	 # _12, _13
 # ./pdsp.c:1409:         f32_a0_inv * (ps_coeff_in->f32_b0 - ps_coeff_in->f32_b1 * f32_K);
	mulss	-8(%rbp), %xmm0	 # f32_a0_inv, _14
 # ./pdsp.c:1408:     ps_coeff_out->f32_b1 =
	movq	24(%rbp), %rax	 # ps_coeff_out, tmp112
	movss	%xmm0, 4(%rax)	 # _14, ps_coeff_out_25(D)->f32_b1
 # ./pdsp.c:1411:         f32_a0_inv * (ps_coeff_in->f32_a0 - ps_coeff_in->f32_a1 * f32_K);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp113
	movss	8(%rax), %xmm0	 # ps_coeff_in_23(D)->f32_a0, _15
 # ./pdsp.c:1411:         f32_a0_inv * (ps_coeff_in->f32_a0 - ps_coeff_in->f32_a1 * f32_K);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp114
	movss	12(%rax), %xmm1	 # ps_coeff_in_23(D)->f32_a1, _16
 # ./pdsp.c:1411:         f32_a0_inv * (ps_coeff_in->f32_a0 - ps_coeff_in->f32_a1 * f32_K);
	mulss	-4(%rbp), %xmm1	 # f32_K, _17
 # ./pdsp.c:1411:         f32_a0_inv * (ps_coeff_in->f32_a0 - ps_coeff_in->f32_a1 * f32_K);
	subss	%xmm1, %xmm0	 # _17, _18
 # ./pdsp.c:1411:         f32_a0_inv * (ps_coeff_in->f32_a0 - ps_coeff_in->f32_a1 * f32_K);
	mulss	-8(%rbp), %xmm0	 # f32_a0_inv, _19
 # ./pdsp.c:1410:     ps_coeff_out->f32_a1 =
	movq	24(%rbp), %rax	 # ps_coeff_out, tmp115
	movss	%xmm0, 8(%rax)	 # _19, ps_coeff_out_25(D)->f32_a1
 # ./pdsp.c:1412: }
	nop	
	addq	$16, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_2p2z_c2d
	.def	pdsp_2p2z_c2d;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_2p2z_c2d
pdsp_2p2z_c2d:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$16, %rsp	 #,
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_coeff_in, ps_coeff_in
	movq	%rdx, 24(%rbp)	 # ps_coeff_out, ps_coeff_out
	movss	%xmm2, 32(%rbp)	 # f32_ts, f32_ts
 # ./pdsp.c:1417:     pdsp_f32_t f32_K = pdsp_divf(2.0f, f32_ts);
	movss	.LC12(%rip), %xmm0	 #, tmp134
	divss	32(%rbp), %xmm0	 # f32_ts, tmp133
	movss	%xmm0, -4(%rbp)	 # tmp133, f32_K
 # ./pdsp.c:1418:     pdsp_f32_t f32_K2 = f32_K * f32_K;
	movss	-4(%rbp), %xmm0	 # f32_K, tmp136
	mulss	%xmm0, %xmm0	 # tmp136, tmp135
	movss	%xmm0, -8(%rbp)	 # tmp135, f32_K2
 # ./pdsp.c:1420:         pdsp_divf(1.0f, ps_coeff_in->f32_a2 * f32_K2 +
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp137
	movss	20(%rax), %xmm0	 # ps_coeff_in_56(D)->f32_a2, _1
	movaps	%xmm0, %xmm1	 # _1, _1
	mulss	-8(%rbp), %xmm1	 # f32_K2, _1
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp138
	movss	16(%rax), %xmm0	 # ps_coeff_in_56(D)->f32_a1, _3
	mulss	-4(%rbp), %xmm0	 # f32_K, _4
	addss	%xmm0, %xmm1	 # _4, _5
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp139
	movss	12(%rax), %xmm0	 # ps_coeff_in_56(D)->f32_a0, _6
	addss	%xmm0, %xmm1	 # _6, _7
 # ./pdsp.c:1419:     pdsp_f32_t f32_a0_inv =
	movss	.LC4(%rip), %xmm0	 #, tmp141
	divss	%xmm1, %xmm0	 # _7, tmp140
	movss	%xmm0, -12(%rbp)	 # tmp140, f32_a0_inv
 # ./pdsp.c:1424:         f32_a0_inv * (ps_coeff_in->f32_b2 * f32_K2 +
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp142
	movss	8(%rax), %xmm0	 # ps_coeff_in_56(D)->f32_b2, _8
 # ./pdsp.c:1424:         f32_a0_inv * (ps_coeff_in->f32_b2 * f32_K2 +
	movaps	%xmm0, %xmm1	 # _8, _8
	mulss	-8(%rbp), %xmm1	 # f32_K2, _8
 # ./pdsp.c:1425:                       ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp143
	movss	4(%rax), %xmm0	 # ps_coeff_in_56(D)->f32_b1, _10
 # ./pdsp.c:1425:                       ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
	mulss	-4(%rbp), %xmm0	 # f32_K, _11
 # ./pdsp.c:1424:         f32_a0_inv * (ps_coeff_in->f32_b2 * f32_K2 +
	addss	%xmm0, %xmm1	 # _11, _12
 # ./pdsp.c:1425:                       ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp144
	movss	(%rax), %xmm0	 # ps_coeff_in_56(D)->f32_b0, _13
 # ./pdsp.c:1425:                       ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
	addss	%xmm1, %xmm0	 # _12, _14
 # ./pdsp.c:1424:         f32_a0_inv * (ps_coeff_in->f32_b2 * f32_K2 +
	mulss	-12(%rbp), %xmm0	 # f32_a0_inv, _15
 # ./pdsp.c:1423:     ps_coeff_out->f32_b0 =
	movq	24(%rbp), %rax	 # ps_coeff_out, tmp145
	movss	%xmm0, (%rax)	 # _15, ps_coeff_out_58(D)->f32_b0
 # ./pdsp.c:1428:         f32_a0_inv * (2.0f * ps_coeff_in->f32_b0 - ps_coeff_in->f32_b1 * f32_K -
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp146
	movss	(%rax), %xmm0	 # ps_coeff_in_56(D)->f32_b0, _16
 # ./pdsp.c:1428:         f32_a0_inv * (2.0f * ps_coeff_in->f32_b0 - ps_coeff_in->f32_b1 * f32_K -
	addss	%xmm0, %xmm0	 # _16, _17
 # ./pdsp.c:1428:         f32_a0_inv * (2.0f * ps_coeff_in->f32_b0 - ps_coeff_in->f32_b1 * f32_K -
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp147
	movss	4(%rax), %xmm1	 # ps_coeff_in_56(D)->f32_b1, _18
 # ./pdsp.c:1428:         f32_a0_inv * (2.0f * ps_coeff_in->f32_b0 - ps_coeff_in->f32_b1 * f32_K -
	movaps	%xmm1, %xmm2	 # _18, _18
	mulss	-4(%rbp), %xmm2	 # f32_K, _18
 # ./pdsp.c:1428:         f32_a0_inv * (2.0f * ps_coeff_in->f32_b0 - ps_coeff_in->f32_b1 * f32_K -
	movaps	%xmm0, %xmm1	 # _17, _17
	subss	%xmm2, %xmm1	 # _19, _17
 # ./pdsp.c:1429:                       2.0f * ps_coeff_in->f32_b2 * f32_K2);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp148
	movss	8(%rax), %xmm0	 # ps_coeff_in_56(D)->f32_b2, _21
 # ./pdsp.c:1429:                       2.0f * ps_coeff_in->f32_b2 * f32_K2);
	addss	%xmm0, %xmm0	 # _21, _22
 # ./pdsp.c:1429:                       2.0f * ps_coeff_in->f32_b2 * f32_K2);
	movaps	%xmm0, %xmm2	 # _22, _22
	mulss	-8(%rbp), %xmm2	 # f32_K2, _22
 # ./pdsp.c:1428:         f32_a0_inv * (2.0f * ps_coeff_in->f32_b0 - ps_coeff_in->f32_b1 * f32_K -
	subss	%xmm2, %xmm1	 # _23, _20
	movaps	%xmm1, %xmm0	 # _20, _24
 # ./pdsp.c:1428:         f32_a0_inv * (2.0f * ps_coeff_in->f32_b0 - ps_coeff_in->f32_b1 * f32_K -
	mulss	-12(%rbp), %xmm0	 # f32_a0_inv, _25
 # ./pdsp.c:1427:     ps_coeff_out->f32_b1 =
	movq	24(%rbp), %rax	 # ps_coeff_out, tmp149
	movss	%xmm0, 4(%rax)	 # _25, ps_coeff_out_58(D)->f32_b1
 # ./pdsp.c:1432:         f32_a0_inv * (ps_coeff_in->f32_b2 * f32_K2 -
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp150
	movss	8(%rax), %xmm0	 # ps_coeff_in_56(D)->f32_b2, _26
 # ./pdsp.c:1432:         f32_a0_inv * (ps_coeff_in->f32_b2 * f32_K2 -
	mulss	-8(%rbp), %xmm0	 # f32_K2, _27
 # ./pdsp.c:1433:                       ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp151
	movss	4(%rax), %xmm1	 # ps_coeff_in_56(D)->f32_b1, _28
 # ./pdsp.c:1433:                       ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
	movaps	%xmm1, %xmm2	 # _28, _28
	mulss	-4(%rbp), %xmm2	 # f32_K, _28
 # ./pdsp.c:1432:         f32_a0_inv * (ps_coeff_in->f32_b2 * f32_K2 -
	movaps	%xmm0, %xmm1	 # _27, _27
	subss	%xmm2, %xmm1	 # _29, _27
 # ./pdsp.c:1433:                       ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp152
	movss	(%rax), %xmm0	 # ps_coeff_in_56(D)->f32_b0, _31
 # ./pdsp.c:1433:                       ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
	addss	%xmm1, %xmm0	 # _30, _32
 # ./pdsp.c:1432:         f32_a0_inv * (ps_coeff_in->f32_b2 * f32_K2 -
	mulss	-12(%rbp), %xmm0	 # f32_a0_inv, _33
 # ./pdsp.c:1431:     ps_coeff_out->f32_b2 =
	movq	24(%rbp), %rax	 # ps_coeff_out, tmp153
	movss	%xmm0, 8(%rax)	 # _33, ps_coeff_out_58(D)->f32_b2
 # ./pdsp.c:1436:         f32_a0_inv * (2.0f * ps_coeff_in->f32_a0 - ps_coeff_in->f32_a1 * f32_K -
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp154
	movss	12(%rax), %xmm0	 # ps_coeff_in_56(D)->f32_a0, _34
 # ./pdsp.c:1436:         f32_a0_inv * (2.0f * ps_coeff_in->f32_a0 - ps_coeff_in->f32_a1 * f32_K -
	addss	%xmm0, %xmm0	 # _34, _35
 # ./pdsp.c:1436:         f32_a0_inv * (2.0f * ps_coeff_in->f32_a0 - ps_coeff_in->f32_a1 * f32_K -
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp155
	movss	16(%rax), %xmm1	 # ps_coeff_in_56(D)->f32_a1, _36
 # ./pdsp.c:1436:         f32_a0_inv * (2.0f * ps_coeff_in->f32_a0 - ps_coeff_in->f32_a1 * f32_K -
	movaps	%xmm1, %xmm2	 # _36, _36
	mulss	-4(%rbp), %xmm2	 # f32_K, _36
 # ./pdsp.c:1436:         f32_a0_inv * (2.0f * ps_coeff_in->f32_a0 - ps_coeff_in->f32_a1 * f32_K -
	movaps	%xmm0, %xmm1	 # _35, _35
	subss	%xmm2, %xmm1	 # _37, _35
 # ./pdsp.c:1437:                       2.0f * ps_coeff_in->f32_a2 * f32_K2);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp156
	movss	20(%rax), %xmm0	 # ps_coeff_in_56(D)->f32_a2, _39
 # ./pdsp.c:1437:                       2.0f * ps_coeff_in->f32_a2 * f32_K2);
	addss	%xmm0, %xmm0	 # _39, _40
 # ./pdsp.c:1437:                       2.0f * ps_coeff_in->f32_a2 * f32_K2);
	movaps	%xmm0, %xmm2	 # _40, _40
	mulss	-8(%rbp), %xmm2	 # f32_K2, _40
 # ./pdsp.c:1436:         f32_a0_inv * (2.0f * ps_coeff_in->f32_a0 - ps_coeff_in->f32_a1 * f32_K -
	subss	%xmm2, %xmm1	 # _41, _38
	movaps	%xmm1, %xmm0	 # _38, _42
 # ./pdsp.c:1436:         f32_a0_inv * (2.0f * ps_coeff_in->f32_a0 - ps_coeff_in->f32_a1 * f32_K -
	mulss	-12(%rbp), %xmm0	 # f32_a0_inv, _43
 # ./pdsp.c:1435:     ps_coeff_out->f32_a1 =
	movq	24(%rbp), %rax	 # ps_coeff_out, tmp157
	movss	%xmm0, 12(%rax)	 # _43, ps_coeff_out_58(D)->f32_a1
 # ./pdsp.c:1440:         f32_a0_inv * (ps_coeff_in->f32_a2 * f32_K2 +
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp158
	movss	20(%rax), %xmm0	 # ps_coeff_in_56(D)->f32_a2, _44
 # ./pdsp.c:1440:         f32_a0_inv * (ps_coeff_in->f32_a2 * f32_K2 +
	movaps	%xmm0, %xmm1	 # _44, _44
	mulss	-8(%rbp), %xmm1	 # f32_K2, _44
 # ./pdsp.c:1441:                       ps_coeff_in->f32_a1 * f32_K + ps_coeff_in->f32_a0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp159
	movss	16(%rax), %xmm0	 # ps_coeff_in_56(D)->f32_a1, _46
 # ./pdsp.c:1441:                       ps_coeff_in->f32_a1 * f32_K + ps_coeff_in->f32_a0);
	mulss	-4(%rbp), %xmm0	 # f32_K, _47
 # ./pdsp.c:1440:         f32_a0_inv * (ps_coeff_in->f32_a2 * f32_K2 +
	addss	%xmm0, %xmm1	 # _47, _48
 # ./pdsp.c:1441:                       ps_coeff_in->f32_a1 * f32_K + ps_coeff_in->f32_a0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp160
	movss	12(%rax), %xmm0	 # ps_coeff_in_56(D)->f32_a0, _49
 # ./pdsp.c:1441:                       ps_coeff_in->f32_a1 * f32_K + ps_coeff_in->f32_a0);
	addss	%xmm1, %xmm0	 # _48, _50
 # ./pdsp.c:1440:         f32_a0_inv * (ps_coeff_in->f32_a2 * f32_K2 +
	mulss	-12(%rbp), %xmm0	 # f32_a0_inv, _51
 # ./pdsp.c:1439:     ps_coeff_out->f32_a2 =
	movq	24(%rbp), %rax	 # ps_coeff_out, tmp161
	movss	%xmm0, 16(%rax)	 # _51, ps_coeff_out_58(D)->f32_a2
 # ./pdsp.c:1442: }
	nop	
	addq	$16, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_3p3z_c2d
	.def	pdsp_3p3z_c2d;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_3p3z_c2d
pdsp_3p3z_c2d:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$16, %rsp	 #,
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_coeff_in, ps_coeff_in
	movq	%rdx, 24(%rbp)	 # ps_coeff_out, ps_coeff_out
	movss	%xmm2, 32(%rbp)	 # f32_ts, f32_ts
 # ./pdsp.c:1447:     pdsp_f32_t f32_K = pdsp_divf(2.0f, f32_ts);
	movss	.LC12(%rip), %xmm0	 #, tmp179
	divss	32(%rbp), %xmm0	 # f32_ts, tmp178
	movss	%xmm0, -4(%rbp)	 # tmp178, f32_K
 # ./pdsp.c:1448:     pdsp_f32_t f32_K2 = f32_K * f32_K;
	movss	-4(%rbp), %xmm0	 # f32_K, tmp181
	mulss	%xmm0, %xmm0	 # tmp181, tmp180
	movss	%xmm0, -8(%rbp)	 # tmp180, f32_K2
 # ./pdsp.c:1449:     pdsp_f32_t f32_K3 = f32_K * f32_K * f32_K;
	movss	-4(%rbp), %xmm0	 # f32_K, tmp182
	mulss	%xmm0, %xmm0	 # tmp182, _1
 # ./pdsp.c:1449:     pdsp_f32_t f32_K3 = f32_K * f32_K * f32_K;
	movss	-4(%rbp), %xmm1	 # f32_K, tmp184
	mulss	%xmm1, %xmm0	 # tmp184, tmp183
	movss	%xmm0, -12(%rbp)	 # tmp183, f32_K3
 # ./pdsp.c:1450:     pdsp_f32_t f32_a0_inv = pdsp_divf(
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp185
	movss	28(%rax), %xmm0	 # ps_coeff_in_102(D)->f32_a3, _2
	movaps	%xmm0, %xmm1	 # _2, _2
	mulss	-12(%rbp), %xmm1	 # f32_K3, _2
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp186
	movss	24(%rax), %xmm0	 # ps_coeff_in_102(D)->f32_a2, _4
	mulss	-8(%rbp), %xmm0	 # f32_K2, _5
	addss	%xmm0, %xmm1	 # _5, _6
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp187
	movss	20(%rax), %xmm0	 # ps_coeff_in_102(D)->f32_a1, _7
	mulss	-4(%rbp), %xmm0	 # f32_K, _8
	addss	%xmm0, %xmm1	 # _8, _9
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp188
	movss	16(%rax), %xmm0	 # ps_coeff_in_102(D)->f32_a0, _10
	addss	%xmm0, %xmm1	 # _10, _11
 # ./pdsp.c:1450:     pdsp_f32_t f32_a0_inv = pdsp_divf(
	movss	.LC4(%rip), %xmm0	 #, tmp190
	divss	%xmm1, %xmm0	 # _11, tmp189
	movss	%xmm0, -16(%rbp)	 # tmp189, f32_a0_inv
 # ./pdsp.c:1456:         (ps_coeff_in->f32_b3 * f32_K3 + ps_coeff_in->f32_b2 * f32_K2 +
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp191
	movss	12(%rax), %xmm0	 # ps_coeff_in_102(D)->f32_b3, _12
 # ./pdsp.c:1456:         (ps_coeff_in->f32_b3 * f32_K3 + ps_coeff_in->f32_b2 * f32_K2 +
	movaps	%xmm0, %xmm1	 # _12, _12
	mulss	-12(%rbp), %xmm1	 # f32_K3, _12
 # ./pdsp.c:1456:         (ps_coeff_in->f32_b3 * f32_K3 + ps_coeff_in->f32_b2 * f32_K2 +
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp192
	movss	8(%rax), %xmm0	 # ps_coeff_in_102(D)->f32_b2, _14
 # ./pdsp.c:1456:         (ps_coeff_in->f32_b3 * f32_K3 + ps_coeff_in->f32_b2 * f32_K2 +
	mulss	-8(%rbp), %xmm0	 # f32_K2, _15
 # ./pdsp.c:1456:         (ps_coeff_in->f32_b3 * f32_K3 + ps_coeff_in->f32_b2 * f32_K2 +
	addss	%xmm0, %xmm1	 # _15, _16
 # ./pdsp.c:1457:          ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp193
	movss	4(%rax), %xmm0	 # ps_coeff_in_102(D)->f32_b1, _17
 # ./pdsp.c:1457:          ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
	mulss	-4(%rbp), %xmm0	 # f32_K, _18
 # ./pdsp.c:1456:         (ps_coeff_in->f32_b3 * f32_K3 + ps_coeff_in->f32_b2 * f32_K2 +
	addss	%xmm0, %xmm1	 # _18, _19
 # ./pdsp.c:1457:          ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp194
	movss	(%rax), %xmm0	 # ps_coeff_in_102(D)->f32_b0, _20
 # ./pdsp.c:1457:          ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
	addss	%xmm1, %xmm0	 # _19, _21
 # ./pdsp.c:1455:         f32_a0_inv *
	mulss	-16(%rbp), %xmm0	 # f32_a0_inv, _22
 # ./pdsp.c:1454:     ps_coeff_out->f32_b0 =
	movq	24(%rbp), %rax	 # ps_coeff_out, tmp195
	movss	%xmm0, (%rax)	 # _22, ps_coeff_out_104(D)->f32_b0
 # ./pdsp.c:1461:         (-3.0f * ps_coeff_in->f32_b3 * f32_K3 - ps_coeff_in->f32_b2 * f32_K2 +
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp196
	movss	12(%rax), %xmm1	 # ps_coeff_in_102(D)->f32_b3, _23
 # ./pdsp.c:1461:         (-3.0f * ps_coeff_in->f32_b3 * f32_K3 - ps_coeff_in->f32_b2 * f32_K2 +
	movss	.LC13(%rip), %xmm0	 #, tmp197
	mulss	%xmm1, %xmm0	 # _23, _24
 # ./pdsp.c:1461:         (-3.0f * ps_coeff_in->f32_b3 * f32_K3 - ps_coeff_in->f32_b2 * f32_K2 +
	mulss	-12(%rbp), %xmm0	 # f32_K3, _25
 # ./pdsp.c:1461:         (-3.0f * ps_coeff_in->f32_b3 * f32_K3 - ps_coeff_in->f32_b2 * f32_K2 +
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp198
	movss	8(%rax), %xmm1	 # ps_coeff_in_102(D)->f32_b2, _26
 # ./pdsp.c:1461:         (-3.0f * ps_coeff_in->f32_b3 * f32_K3 - ps_coeff_in->f32_b2 * f32_K2 +
	movaps	%xmm1, %xmm2	 # _26, _26
	mulss	-8(%rbp), %xmm2	 # f32_K2, _26
 # ./pdsp.c:1461:         (-3.0f * ps_coeff_in->f32_b3 * f32_K3 - ps_coeff_in->f32_b2 * f32_K2 +
	movaps	%xmm0, %xmm1	 # _25, _25
	subss	%xmm2, %xmm1	 # _27, _25
 # ./pdsp.c:1462:          ps_coeff_in->f32_b1 * f32_K + 3.0f * ps_coeff_in->f32_b0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp199
	movss	4(%rax), %xmm0	 # ps_coeff_in_102(D)->f32_b1, _29
 # ./pdsp.c:1462:          ps_coeff_in->f32_b1 * f32_K + 3.0f * ps_coeff_in->f32_b0);
	mulss	-4(%rbp), %xmm0	 # f32_K, _30
 # ./pdsp.c:1461:         (-3.0f * ps_coeff_in->f32_b3 * f32_K3 - ps_coeff_in->f32_b2 * f32_K2 +
	addss	%xmm0, %xmm1	 # _30, _31
 # ./pdsp.c:1462:          ps_coeff_in->f32_b1 * f32_K + 3.0f * ps_coeff_in->f32_b0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp200
	movss	(%rax), %xmm2	 # ps_coeff_in_102(D)->f32_b0, _32
 # ./pdsp.c:1462:          ps_coeff_in->f32_b1 * f32_K + 3.0f * ps_coeff_in->f32_b0);
	movss	.LC11(%rip), %xmm0	 #, tmp201
	mulss	%xmm2, %xmm0	 # _32, _33
 # ./pdsp.c:1462:          ps_coeff_in->f32_b1 * f32_K + 3.0f * ps_coeff_in->f32_b0);
	addss	%xmm1, %xmm0	 # _31, _34
 # ./pdsp.c:1460:         f32_a0_inv *
	mulss	-16(%rbp), %xmm0	 # f32_a0_inv, _35
 # ./pdsp.c:1459:     ps_coeff_out->f32_b1 =
	movq	24(%rbp), %rax	 # ps_coeff_out, tmp202
	movss	%xmm0, 4(%rax)	 # _35, ps_coeff_out_104(D)->f32_b1
 # ./pdsp.c:1466:         (3.0f * ps_coeff_in->f32_b3 * f32_K3 - ps_coeff_in->f32_b2 * f32_K2 -
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp203
	movss	12(%rax), %xmm1	 # ps_coeff_in_102(D)->f32_b3, _36
 # ./pdsp.c:1466:         (3.0f * ps_coeff_in->f32_b3 * f32_K3 - ps_coeff_in->f32_b2 * f32_K2 -
	movss	.LC11(%rip), %xmm0	 #, tmp204
	mulss	%xmm1, %xmm0	 # _36, _37
 # ./pdsp.c:1466:         (3.0f * ps_coeff_in->f32_b3 * f32_K3 - ps_coeff_in->f32_b2 * f32_K2 -
	mulss	-12(%rbp), %xmm0	 # f32_K3, _38
 # ./pdsp.c:1466:         (3.0f * ps_coeff_in->f32_b3 * f32_K3 - ps_coeff_in->f32_b2 * f32_K2 -
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp205
	movss	8(%rax), %xmm1	 # ps_coeff_in_102(D)->f32_b2, _39
 # ./pdsp.c:1466:         (3.0f * ps_coeff_in->f32_b3 * f32_K3 - ps_coeff_in->f32_b2 * f32_K2 -
	mulss	-8(%rbp), %xmm1	 # f32_K2, _40
 # ./pdsp.c:1466:         (3.0f * ps_coeff_in->f32_b3 * f32_K3 - ps_coeff_in->f32_b2 * f32_K2 -
	subss	%xmm1, %xmm0	 # _40, _41
 # ./pdsp.c:1467:          ps_coeff_in->f32_b1 * f32_K + 3.0f * ps_coeff_in->f32_b0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp206
	movss	4(%rax), %xmm1	 # ps_coeff_in_102(D)->f32_b1, _42
 # ./pdsp.c:1467:          ps_coeff_in->f32_b1 * f32_K + 3.0f * ps_coeff_in->f32_b0);
	movaps	%xmm1, %xmm2	 # _42, _42
	mulss	-4(%rbp), %xmm2	 # f32_K, _42
 # ./pdsp.c:1466:         (3.0f * ps_coeff_in->f32_b3 * f32_K3 - ps_coeff_in->f32_b2 * f32_K2 -
	movaps	%xmm0, %xmm1	 # _41, _41
	subss	%xmm2, %xmm1	 # _43, _41
 # ./pdsp.c:1467:          ps_coeff_in->f32_b1 * f32_K + 3.0f * ps_coeff_in->f32_b0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp207
	movss	(%rax), %xmm2	 # ps_coeff_in_102(D)->f32_b0, _45
 # ./pdsp.c:1467:          ps_coeff_in->f32_b1 * f32_K + 3.0f * ps_coeff_in->f32_b0);
	movss	.LC11(%rip), %xmm0	 #, tmp208
	mulss	%xmm2, %xmm0	 # _45, _46
 # ./pdsp.c:1467:          ps_coeff_in->f32_b1 * f32_K + 3.0f * ps_coeff_in->f32_b0);
	addss	%xmm1, %xmm0	 # _44, _47
 # ./pdsp.c:1465:         f32_a0_inv *
	mulss	-16(%rbp), %xmm0	 # f32_a0_inv, _48
 # ./pdsp.c:1464:     ps_coeff_out->f32_b2 =
	movq	24(%rbp), %rax	 # ps_coeff_out, tmp209
	movss	%xmm0, 8(%rax)	 # _48, ps_coeff_out_104(D)->f32_b2
 # ./pdsp.c:1471:         (ps_coeff_in->f32_b3 * f32_K3 + ps_coeff_in->f32_b2 * f32_K2 -
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp210
	movss	12(%rax), %xmm0	 # ps_coeff_in_102(D)->f32_b3, _49
 # ./pdsp.c:1471:         (ps_coeff_in->f32_b3 * f32_K3 + ps_coeff_in->f32_b2 * f32_K2 -
	movaps	%xmm0, %xmm1	 # _49, _49
	mulss	-12(%rbp), %xmm1	 # f32_K3, _49
 # ./pdsp.c:1471:         (ps_coeff_in->f32_b3 * f32_K3 + ps_coeff_in->f32_b2 * f32_K2 -
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp211
	movss	8(%rax), %xmm0	 # ps_coeff_in_102(D)->f32_b2, _51
 # ./pdsp.c:1471:         (ps_coeff_in->f32_b3 * f32_K3 + ps_coeff_in->f32_b2 * f32_K2 -
	mulss	-8(%rbp), %xmm0	 # f32_K2, _52
 # ./pdsp.c:1471:         (ps_coeff_in->f32_b3 * f32_K3 + ps_coeff_in->f32_b2 * f32_K2 -
	addss	%xmm1, %xmm0	 # _50, _53
 # ./pdsp.c:1472:          ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp212
	movss	4(%rax), %xmm1	 # ps_coeff_in_102(D)->f32_b1, _54
 # ./pdsp.c:1472:          ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
	movaps	%xmm1, %xmm2	 # _54, _54
	mulss	-4(%rbp), %xmm2	 # f32_K, _54
 # ./pdsp.c:1471:         (ps_coeff_in->f32_b3 * f32_K3 + ps_coeff_in->f32_b2 * f32_K2 -
	movaps	%xmm0, %xmm1	 # _53, _53
	subss	%xmm2, %xmm1	 # _55, _53
 # ./pdsp.c:1472:          ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp213
	movss	(%rax), %xmm0	 # ps_coeff_in_102(D)->f32_b0, _57
 # ./pdsp.c:1472:          ps_coeff_in->f32_b1 * f32_K + ps_coeff_in->f32_b0);
	addss	%xmm1, %xmm0	 # _56, _58
 # ./pdsp.c:1470:         f32_a0_inv *
	mulss	-16(%rbp), %xmm0	 # f32_a0_inv, _59
 # ./pdsp.c:1469:     ps_coeff_out->f32_b3 =
	movq	24(%rbp), %rax	 # ps_coeff_out, tmp214
	movss	%xmm0, 12(%rax)	 # _59, ps_coeff_out_104(D)->f32_b3
 # ./pdsp.c:1476:         (-3.0f * ps_coeff_in->f32_a3 * f32_K3 - ps_coeff_in->f32_a2 * f32_K2 +
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp215
	movss	28(%rax), %xmm1	 # ps_coeff_in_102(D)->f32_a3, _60
 # ./pdsp.c:1476:         (-3.0f * ps_coeff_in->f32_a3 * f32_K3 - ps_coeff_in->f32_a2 * f32_K2 +
	movss	.LC13(%rip), %xmm0	 #, tmp216
	mulss	%xmm1, %xmm0	 # _60, _61
 # ./pdsp.c:1476:         (-3.0f * ps_coeff_in->f32_a3 * f32_K3 - ps_coeff_in->f32_a2 * f32_K2 +
	mulss	-12(%rbp), %xmm0	 # f32_K3, _62
 # ./pdsp.c:1476:         (-3.0f * ps_coeff_in->f32_a3 * f32_K3 - ps_coeff_in->f32_a2 * f32_K2 +
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp217
	movss	24(%rax), %xmm1	 # ps_coeff_in_102(D)->f32_a2, _63
 # ./pdsp.c:1476:         (-3.0f * ps_coeff_in->f32_a3 * f32_K3 - ps_coeff_in->f32_a2 * f32_K2 +
	movaps	%xmm1, %xmm2	 # _63, _63
	mulss	-8(%rbp), %xmm2	 # f32_K2, _63
 # ./pdsp.c:1476:         (-3.0f * ps_coeff_in->f32_a3 * f32_K3 - ps_coeff_in->f32_a2 * f32_K2 +
	movaps	%xmm0, %xmm1	 # _62, _62
	subss	%xmm2, %xmm1	 # _64, _62
 # ./pdsp.c:1477:          ps_coeff_in->f32_a1 * f32_K + 3.0f * ps_coeff_in->f32_a0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp218
	movss	20(%rax), %xmm0	 # ps_coeff_in_102(D)->f32_a1, _66
 # ./pdsp.c:1477:          ps_coeff_in->f32_a1 * f32_K + 3.0f * ps_coeff_in->f32_a0);
	mulss	-4(%rbp), %xmm0	 # f32_K, _67
 # ./pdsp.c:1476:         (-3.0f * ps_coeff_in->f32_a3 * f32_K3 - ps_coeff_in->f32_a2 * f32_K2 +
	addss	%xmm0, %xmm1	 # _67, _68
 # ./pdsp.c:1477:          ps_coeff_in->f32_a1 * f32_K + 3.0f * ps_coeff_in->f32_a0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp219
	movss	16(%rax), %xmm2	 # ps_coeff_in_102(D)->f32_a0, _69
 # ./pdsp.c:1477:          ps_coeff_in->f32_a1 * f32_K + 3.0f * ps_coeff_in->f32_a0);
	movss	.LC11(%rip), %xmm0	 #, tmp220
	mulss	%xmm2, %xmm0	 # _69, _70
 # ./pdsp.c:1477:          ps_coeff_in->f32_a1 * f32_K + 3.0f * ps_coeff_in->f32_a0);
	addss	%xmm1, %xmm0	 # _68, _71
 # ./pdsp.c:1475:         f32_a0_inv *
	mulss	-16(%rbp), %xmm0	 # f32_a0_inv, _72
 # ./pdsp.c:1474:     ps_coeff_out->f32_a1 =
	movq	24(%rbp), %rax	 # ps_coeff_out, tmp221
	movss	%xmm0, 16(%rax)	 # _72, ps_coeff_out_104(D)->f32_a1
 # ./pdsp.c:1481:         (3.0f * ps_coeff_in->f32_a3 * f32_K3 - ps_coeff_in->f32_a2 * f32_K2 -
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp222
	movss	28(%rax), %xmm1	 # ps_coeff_in_102(D)->f32_a3, _73
 # ./pdsp.c:1481:         (3.0f * ps_coeff_in->f32_a3 * f32_K3 - ps_coeff_in->f32_a2 * f32_K2 -
	movss	.LC11(%rip), %xmm0	 #, tmp223
	mulss	%xmm1, %xmm0	 # _73, _74
 # ./pdsp.c:1481:         (3.0f * ps_coeff_in->f32_a3 * f32_K3 - ps_coeff_in->f32_a2 * f32_K2 -
	mulss	-12(%rbp), %xmm0	 # f32_K3, _75
 # ./pdsp.c:1481:         (3.0f * ps_coeff_in->f32_a3 * f32_K3 - ps_coeff_in->f32_a2 * f32_K2 -
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp224
	movss	24(%rax), %xmm1	 # ps_coeff_in_102(D)->f32_a2, _76
 # ./pdsp.c:1481:         (3.0f * ps_coeff_in->f32_a3 * f32_K3 - ps_coeff_in->f32_a2 * f32_K2 -
	mulss	-8(%rbp), %xmm1	 # f32_K2, _77
 # ./pdsp.c:1481:         (3.0f * ps_coeff_in->f32_a3 * f32_K3 - ps_coeff_in->f32_a2 * f32_K2 -
	subss	%xmm1, %xmm0	 # _77, _78
 # ./pdsp.c:1482:          ps_coeff_in->f32_a1 * f32_K + 3.0f * ps_coeff_in->f32_a0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp225
	movss	20(%rax), %xmm1	 # ps_coeff_in_102(D)->f32_a1, _79
 # ./pdsp.c:1482:          ps_coeff_in->f32_a1 * f32_K + 3.0f * ps_coeff_in->f32_a0);
	movaps	%xmm1, %xmm2	 # _79, _79
	mulss	-4(%rbp), %xmm2	 # f32_K, _79
 # ./pdsp.c:1481:         (3.0f * ps_coeff_in->f32_a3 * f32_K3 - ps_coeff_in->f32_a2 * f32_K2 -
	movaps	%xmm0, %xmm1	 # _78, _78
	subss	%xmm2, %xmm1	 # _80, _78
 # ./pdsp.c:1482:          ps_coeff_in->f32_a1 * f32_K + 3.0f * ps_coeff_in->f32_a0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp226
	movss	16(%rax), %xmm2	 # ps_coeff_in_102(D)->f32_a0, _82
 # ./pdsp.c:1482:          ps_coeff_in->f32_a1 * f32_K + 3.0f * ps_coeff_in->f32_a0);
	movss	.LC11(%rip), %xmm0	 #, tmp227
	mulss	%xmm2, %xmm0	 # _82, _83
 # ./pdsp.c:1482:          ps_coeff_in->f32_a1 * f32_K + 3.0f * ps_coeff_in->f32_a0);
	addss	%xmm1, %xmm0	 # _81, _84
 # ./pdsp.c:1480:         f32_a0_inv *
	mulss	-16(%rbp), %xmm0	 # f32_a0_inv, _85
 # ./pdsp.c:1479:     ps_coeff_out->f32_a2 =
	movq	24(%rbp), %rax	 # ps_coeff_out, tmp228
	movss	%xmm0, 20(%rax)	 # _85, ps_coeff_out_104(D)->f32_a2
 # ./pdsp.c:1486:         (ps_coeff_in->f32_a3 * f32_K3 + ps_coeff_in->f32_a2 * f32_K2 -
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp229
	movss	28(%rax), %xmm0	 # ps_coeff_in_102(D)->f32_a3, _86
 # ./pdsp.c:1486:         (ps_coeff_in->f32_a3 * f32_K3 + ps_coeff_in->f32_a2 * f32_K2 -
	movaps	%xmm0, %xmm1	 # _86, _86
	mulss	-12(%rbp), %xmm1	 # f32_K3, _86
 # ./pdsp.c:1486:         (ps_coeff_in->f32_a3 * f32_K3 + ps_coeff_in->f32_a2 * f32_K2 -
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp230
	movss	24(%rax), %xmm0	 # ps_coeff_in_102(D)->f32_a2, _88
 # ./pdsp.c:1486:         (ps_coeff_in->f32_a3 * f32_K3 + ps_coeff_in->f32_a2 * f32_K2 -
	mulss	-8(%rbp), %xmm0	 # f32_K2, _89
 # ./pdsp.c:1486:         (ps_coeff_in->f32_a3 * f32_K3 + ps_coeff_in->f32_a2 * f32_K2 -
	addss	%xmm1, %xmm0	 # _87, _90
 # ./pdsp.c:1487:          ps_coeff_in->f32_a1 * f32_K + ps_coeff_in->f32_a0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp231
	movss	20(%rax), %xmm1	 # ps_coeff_in_102(D)->f32_a1, _91
 # ./pdsp.c:1487:          ps_coeff_in->f32_a1 * f32_K + ps_coeff_in->f32_a0);
	movaps	%xmm1, %xmm2	 # _91, _91
	mulss	-4(%rbp), %xmm2	 # f32_K, _91
 # ./pdsp.c:1486:         (ps_coeff_in->f32_a3 * f32_K3 + ps_coeff_in->f32_a2 * f32_K2 -
	movaps	%xmm0, %xmm1	 # _90, _90
	subss	%xmm2, %xmm1	 # _92, _90
 # ./pdsp.c:1487:          ps_coeff_in->f32_a1 * f32_K + ps_coeff_in->f32_a0);
	movq	16(%rbp), %rax	 # ps_coeff_in, tmp232
	movss	16(%rax), %xmm0	 # ps_coeff_in_102(D)->f32_a0, _94
 # ./pdsp.c:1487:          ps_coeff_in->f32_a1 * f32_K + ps_coeff_in->f32_a0);
	addss	%xmm1, %xmm0	 # _93, _95
 # ./pdsp.c:1485:         f32_a0_inv *
	mulss	-16(%rbp), %xmm0	 # f32_a0_inv, _96
 # ./pdsp.c:1484:     ps_coeff_out->f32_a3 =
	movq	24(%rbp), %rax	 # ps_coeff_out, tmp233
	movss	%xmm0, 24(%rax)	 # _96, ps_coeff_out_104(D)->f32_a3
 # ./pdsp.c:1488: }
	nop	
	addq	$16, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_df21_clear
	.def	pdsp_df21_clear;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_df21_clear
pdsp_df21_clear:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_var, ps_var
 # ./pdsp.c:1492:     PDSP_ASSERT(ps_var != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_var
	jne	.L415	 #,
 # ./pdsp.c:1492:     PDSP_ASSERT(ps_var != NULL);
	movl	$1492, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp82
	movq	%rax, %rdx	 # tmp82,
	leaq	.LC1(%rip), %rax	 #, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	printf	 #
.L415:
 # ./pdsp.c:1493:     ps_var->f32_x1 = 0.0f;
	movq	16(%rbp), %rax	 # ps_var, tmp84
	pxor	%xmm0, %xmm0	 # tmp85
	movss	%xmm0, (%rax)	 # tmp85, ps_var_2(D)->f32_x1
 # ./pdsp.c:1494: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_df21
	.def	pdsp_df21;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_df21
pdsp_df21:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movq	%rdx, 24(%rbp)	 # ps_var, ps_var
	movss	%xmm2, 32(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:1499:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L417	 #,
 # ./pdsp.c:1499:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	cmpq	$0, 24(%rbp)	 #, ps_var
	jne	.L418	 #,
.L417:
 # ./pdsp.c:1499:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	movl	$1499, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp94
	movq	%rax, %rdx	 # tmp94,
	leaq	.LC1(%rip), %rax	 #, tmp95
	movq	%rax, %rcx	 # tmp95,
	call	printf	 #
.L418:
 # ./pdsp.c:1500:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movq	16(%rbp), %rax	 # ps_data, tmp96
	movss	(%rax), %xmm0	 # ps_data_12(D)->f32_b0, _1
 # ./pdsp.c:1500:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movaps	%xmm0, %xmm1	 # _1, _1
	mulss	32(%rbp), %xmm1	 # f32_in, _1
 # ./pdsp.c:1500:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movq	24(%rbp), %rax	 # ps_var, tmp97
	movss	(%rax), %xmm0	 # ps_var_13(D)->f32_x1, _3
 # ./pdsp.c:1500:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	addss	%xmm1, %xmm0	 # _2, _4
 # ./pdsp.c:1500:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movq	24(%rbp), %rax	 # ps_var, tmp98
	movss	%xmm0, 4(%rax)	 # _4, ps_var_13(D)->f32_out
 # ./pdsp.c:1502:         (f32_in * ps_data->f32_b1) + (ps_var->f32_out * ps_data->f32_a1);
	movq	16(%rbp), %rax	 # ps_data, tmp99
	movss	4(%rax), %xmm0	 # ps_data_12(D)->f32_b1, _5
 # ./pdsp.c:1502:         (f32_in * ps_data->f32_b1) + (ps_var->f32_out * ps_data->f32_a1);
	movaps	%xmm0, %xmm1	 # _5, _5
	mulss	32(%rbp), %xmm1	 # f32_in, _5
 # ./pdsp.c:1502:         (f32_in * ps_data->f32_b1) + (ps_var->f32_out * ps_data->f32_a1);
	movq	24(%rbp), %rax	 # ps_var, tmp100
	movss	4(%rax), %xmm2	 # ps_var_13(D)->f32_out, _7
 # ./pdsp.c:1502:         (f32_in * ps_data->f32_b1) + (ps_var->f32_out * ps_data->f32_a1);
	movq	16(%rbp), %rax	 # ps_data, tmp101
	movss	8(%rax), %xmm0	 # ps_data_12(D)->f32_a1, _8
 # ./pdsp.c:1502:         (f32_in * ps_data->f32_b1) + (ps_var->f32_out * ps_data->f32_a1);
	mulss	%xmm2, %xmm0	 # _7, _9
 # ./pdsp.c:1502:         (f32_in * ps_data->f32_b1) + (ps_var->f32_out * ps_data->f32_a1);
	addss	%xmm1, %xmm0	 # _6, _10
 # ./pdsp.c:1501:     ps_var->f32_x1 =
	movq	24(%rbp), %rax	 # ps_var, tmp102
	movss	%xmm0, (%rax)	 # _10, ps_var_13(D)->f32_x1
 # ./pdsp.c:1503:     return ps_var->f32_out;
	movq	24(%rbp), %rax	 # ps_var, tmp103
	movss	4(%rax), %xmm0	 # ps_var_13(D)->f32_out, _19
 # ./pdsp.c:1504: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_df21_pre
	.def	pdsp_df21_pre;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_df21_pre
pdsp_df21_pre:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movq	%rdx, 24(%rbp)	 # ps_var, ps_var
	movss	%xmm2, 32(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:1509:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L421	 #,
 # ./pdsp.c:1509:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	cmpq	$0, 24(%rbp)	 #, ps_var
	jne	.L422	 #,
.L421:
 # ./pdsp.c:1509:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	movl	$1509, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp88
	movq	%rax, %rdx	 # tmp88,
	leaq	.LC1(%rip), %rax	 #, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	printf	 #
.L422:
 # ./pdsp.c:1510:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movq	16(%rbp), %rax	 # ps_data, tmp90
	movss	(%rax), %xmm0	 # ps_data_6(D)->f32_b0, _1
 # ./pdsp.c:1510:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movaps	%xmm0, %xmm1	 # _1, _1
	mulss	32(%rbp), %xmm1	 # f32_in, _1
 # ./pdsp.c:1510:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movq	24(%rbp), %rax	 # ps_var, tmp91
	movss	(%rax), %xmm0	 # ps_var_7(D)->f32_x1, _3
 # ./pdsp.c:1510:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	addss	%xmm1, %xmm0	 # _2, _4
 # ./pdsp.c:1510:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movq	24(%rbp), %rax	 # ps_var, tmp92
	movss	%xmm0, 4(%rax)	 # _4, ps_var_7(D)->f32_out
 # ./pdsp.c:1511:     return ps_var->f32_out;
	movq	24(%rbp), %rax	 # ps_var, tmp93
	movss	4(%rax), %xmm0	 # ps_var_7(D)->f32_out, _12
 # ./pdsp.c:1512: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_df21_post
	.def	pdsp_df21_post;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_df21_post
pdsp_df21_post:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movq	%rdx, 24(%rbp)	 # ps_var, ps_var
	movss	%xmm2, 32(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:1517:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L425	 #,
 # ./pdsp.c:1517:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	cmpq	$0, 24(%rbp)	 #, ps_var
	jne	.L426	 #,
.L425:
 # ./pdsp.c:1517:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	movl	$1517, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp88
	movq	%rax, %rdx	 # tmp88,
	leaq	.LC1(%rip), %rax	 #, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	printf	 #
.L426:
 # ./pdsp.c:1519:         (f32_in * ps_data->f32_b1) + (ps_var->f32_out * ps_data->f32_a1);
	movq	16(%rbp), %rax	 # ps_data, tmp90
	movss	4(%rax), %xmm0	 # ps_data_8(D)->f32_b1, _1
 # ./pdsp.c:1519:         (f32_in * ps_data->f32_b1) + (ps_var->f32_out * ps_data->f32_a1);
	movaps	%xmm0, %xmm1	 # _1, _1
	mulss	32(%rbp), %xmm1	 # f32_in, _1
 # ./pdsp.c:1519:         (f32_in * ps_data->f32_b1) + (ps_var->f32_out * ps_data->f32_a1);
	movq	24(%rbp), %rax	 # ps_var, tmp91
	movss	4(%rax), %xmm2	 # ps_var_9(D)->f32_out, _3
 # ./pdsp.c:1519:         (f32_in * ps_data->f32_b1) + (ps_var->f32_out * ps_data->f32_a1);
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movss	8(%rax), %xmm0	 # ps_data_8(D)->f32_a1, _4
 # ./pdsp.c:1519:         (f32_in * ps_data->f32_b1) + (ps_var->f32_out * ps_data->f32_a1);
	mulss	%xmm2, %xmm0	 # _3, _5
 # ./pdsp.c:1519:         (f32_in * ps_data->f32_b1) + (ps_var->f32_out * ps_data->f32_a1);
	addss	%xmm1, %xmm0	 # _2, _6
 # ./pdsp.c:1518:     ps_var->f32_x1 =
	movq	24(%rbp), %rax	 # ps_var, tmp93
	movss	%xmm0, (%rax)	 # _6, ps_var_9(D)->f32_x1
 # ./pdsp.c:1520: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_df22_clear
	.def	pdsp_df22_clear;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_df22_clear
pdsp_df22_clear:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_var, ps_var
 # ./pdsp.c:1524:     PDSP_ASSERT(ps_var != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_var
	jne	.L428	 #,
 # ./pdsp.c:1524:     PDSP_ASSERT(ps_var != NULL);
	movl	$1524, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp82
	movq	%rax, %rdx	 # tmp82,
	leaq	.LC1(%rip), %rax	 #, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	printf	 #
.L428:
 # ./pdsp.c:1525:     ps_var->f32_x1 = 0.0f;
	movq	16(%rbp), %rax	 # ps_var, tmp84
	pxor	%xmm0, %xmm0	 # tmp85
	movss	%xmm0, (%rax)	 # tmp85, ps_var_2(D)->f32_x1
 # ./pdsp.c:1526:     ps_var->f32_x2 = 0.0f;
	movq	16(%rbp), %rax	 # ps_var, tmp86
	pxor	%xmm0, %xmm0	 # tmp87
	movss	%xmm0, 4(%rax)	 # tmp87, ps_var_2(D)->f32_x2
 # ./pdsp.c:1527: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_df22
	.def	pdsp_df22;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_df22
pdsp_df22:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movq	%rdx, 24(%rbp)	 # ps_var, ps_var
	movss	%xmm2, 32(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:1532:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L430	 #,
 # ./pdsp.c:1532:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	cmpq	$0, 24(%rbp)	 #, ps_var
	jne	.L431	 #,
.L430:
 # ./pdsp.c:1532:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	movl	$1532, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp102
	movq	%rax, %rdx	 # tmp102,
	leaq	.LC1(%rip), %rax	 #, tmp103
	movq	%rax, %rcx	 # tmp103,
	call	printf	 #
.L431:
 # ./pdsp.c:1533:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movq	16(%rbp), %rax	 # ps_data, tmp104
	movss	(%rax), %xmm0	 # ps_data_20(D)->f32_b0, _1
 # ./pdsp.c:1533:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movaps	%xmm0, %xmm1	 # _1, _1
	mulss	32(%rbp), %xmm1	 # f32_in, _1
 # ./pdsp.c:1533:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movq	24(%rbp), %rax	 # ps_var, tmp105
	movss	(%rax), %xmm0	 # ps_var_21(D)->f32_x1, _3
 # ./pdsp.c:1533:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	addss	%xmm1, %xmm0	 # _2, _4
 # ./pdsp.c:1533:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movq	24(%rbp), %rax	 # ps_var, tmp106
	movss	%xmm0, 8(%rax)	 # _4, ps_var_21(D)->f32_out
 # ./pdsp.c:1534:     ps_var->f32_x1 = (f32_in * ps_data->f32_b1) +
	movq	16(%rbp), %rax	 # ps_data, tmp107
	movss	4(%rax), %xmm0	 # ps_data_20(D)->f32_b1, _5
 # ./pdsp.c:1534:     ps_var->f32_x1 = (f32_in * ps_data->f32_b1) +
	movaps	%xmm0, %xmm1	 # _5, _5
	mulss	32(%rbp), %xmm1	 # f32_in, _5
 # ./pdsp.c:1535:                      (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
	movq	24(%rbp), %rax	 # ps_var, tmp108
	movss	8(%rax), %xmm2	 # ps_var_21(D)->f32_out, _7
 # ./pdsp.c:1535:                      (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
	movq	16(%rbp), %rax	 # ps_data, tmp109
	movss	12(%rax), %xmm0	 # ps_data_20(D)->f32_a1, _8
 # ./pdsp.c:1535:                      (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
	mulss	%xmm2, %xmm0	 # _7, _9
 # ./pdsp.c:1534:     ps_var->f32_x1 = (f32_in * ps_data->f32_b1) +
	addss	%xmm0, %xmm1	 # _9, _10
 # ./pdsp.c:1535:                      (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
	movq	24(%rbp), %rax	 # ps_var, tmp110
	movss	4(%rax), %xmm0	 # ps_var_21(D)->f32_x2, _11
 # ./pdsp.c:1535:                      (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
	addss	%xmm1, %xmm0	 # _10, _12
 # ./pdsp.c:1534:     ps_var->f32_x1 = (f32_in * ps_data->f32_b1) +
	movq	24(%rbp), %rax	 # ps_var, tmp111
	movss	%xmm0, (%rax)	 # _12, ps_var_21(D)->f32_x1
 # ./pdsp.c:1537:         (f32_in * ps_data->f32_b2) + (ps_var->f32_out * ps_data->f32_a2);
	movq	16(%rbp), %rax	 # ps_data, tmp112
	movss	8(%rax), %xmm0	 # ps_data_20(D)->f32_b2, _13
 # ./pdsp.c:1537:         (f32_in * ps_data->f32_b2) + (ps_var->f32_out * ps_data->f32_a2);
	movaps	%xmm0, %xmm1	 # _13, _13
	mulss	32(%rbp), %xmm1	 # f32_in, _13
 # ./pdsp.c:1537:         (f32_in * ps_data->f32_b2) + (ps_var->f32_out * ps_data->f32_a2);
	movq	24(%rbp), %rax	 # ps_var, tmp113
	movss	8(%rax), %xmm2	 # ps_var_21(D)->f32_out, _15
 # ./pdsp.c:1537:         (f32_in * ps_data->f32_b2) + (ps_var->f32_out * ps_data->f32_a2);
	movq	16(%rbp), %rax	 # ps_data, tmp114
	movss	16(%rax), %xmm0	 # ps_data_20(D)->f32_a2, _16
 # ./pdsp.c:1537:         (f32_in * ps_data->f32_b2) + (ps_var->f32_out * ps_data->f32_a2);
	mulss	%xmm2, %xmm0	 # _15, _17
 # ./pdsp.c:1537:         (f32_in * ps_data->f32_b2) + (ps_var->f32_out * ps_data->f32_a2);
	addss	%xmm1, %xmm0	 # _14, _18
 # ./pdsp.c:1536:     ps_var->f32_x2 =
	movq	24(%rbp), %rax	 # ps_var, tmp115
	movss	%xmm0, 4(%rax)	 # _18, ps_var_21(D)->f32_x2
 # ./pdsp.c:1538:     return ps_var->f32_out;
	movq	24(%rbp), %rax	 # ps_var, tmp116
	movss	8(%rax), %xmm0	 # ps_var_21(D)->f32_out, _28
 # ./pdsp.c:1539: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_df22_pre
	.def	pdsp_df22_pre;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_df22_pre
pdsp_df22_pre:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movq	%rdx, 24(%rbp)	 # ps_var, ps_var
	movss	%xmm2, 32(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:1544:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L434	 #,
 # ./pdsp.c:1544:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	cmpq	$0, 24(%rbp)	 #, ps_var
	jne	.L435	 #,
.L434:
 # ./pdsp.c:1544:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	movl	$1544, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp88
	movq	%rax, %rdx	 # tmp88,
	leaq	.LC1(%rip), %rax	 #, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	printf	 #
.L435:
 # ./pdsp.c:1545:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movq	16(%rbp), %rax	 # ps_data, tmp90
	movss	(%rax), %xmm0	 # ps_data_6(D)->f32_b0, _1
 # ./pdsp.c:1545:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movaps	%xmm0, %xmm1	 # _1, _1
	mulss	32(%rbp), %xmm1	 # f32_in, _1
 # ./pdsp.c:1545:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movq	24(%rbp), %rax	 # ps_var, tmp91
	movss	(%rax), %xmm0	 # ps_var_7(D)->f32_x1, _3
 # ./pdsp.c:1545:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	addss	%xmm1, %xmm0	 # _2, _4
 # ./pdsp.c:1545:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movq	24(%rbp), %rax	 # ps_var, tmp92
	movss	%xmm0, 8(%rax)	 # _4, ps_var_7(D)->f32_out
 # ./pdsp.c:1546:     return ps_var->f32_out;
	movq	24(%rbp), %rax	 # ps_var, tmp93
	movss	8(%rax), %xmm0	 # ps_var_7(D)->f32_out, _12
 # ./pdsp.c:1547: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_df22_post
	.def	pdsp_df22_post;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_df22_post
pdsp_df22_post:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movq	%rdx, 24(%rbp)	 # ps_var, ps_var
	movss	%xmm2, 32(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:1552:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L438	 #,
 # ./pdsp.c:1552:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	cmpq	$0, 24(%rbp)	 #, ps_var
	jne	.L439	 #,
.L438:
 # ./pdsp.c:1552:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	movl	$1552, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp96
	movq	%rax, %rdx	 # tmp96,
	leaq	.LC1(%rip), %rax	 #, tmp97
	movq	%rax, %rcx	 # tmp97,
	call	printf	 #
.L439:
 # ./pdsp.c:1553:     ps_var->f32_x1 = (f32_in * ps_data->f32_b1) +
	movq	16(%rbp), %rax	 # ps_data, tmp98
	movss	4(%rax), %xmm0	 # ps_data_16(D)->f32_b1, _1
 # ./pdsp.c:1553:     ps_var->f32_x1 = (f32_in * ps_data->f32_b1) +
	movaps	%xmm0, %xmm1	 # _1, _1
	mulss	32(%rbp), %xmm1	 # f32_in, _1
 # ./pdsp.c:1554:                      (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
	movq	24(%rbp), %rax	 # ps_var, tmp99
	movss	8(%rax), %xmm2	 # ps_var_17(D)->f32_out, _3
 # ./pdsp.c:1554:                      (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
	movq	16(%rbp), %rax	 # ps_data, tmp100
	movss	12(%rax), %xmm0	 # ps_data_16(D)->f32_a1, _4
 # ./pdsp.c:1554:                      (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
	mulss	%xmm2, %xmm0	 # _3, _5
 # ./pdsp.c:1553:     ps_var->f32_x1 = (f32_in * ps_data->f32_b1) +
	addss	%xmm0, %xmm1	 # _5, _6
 # ./pdsp.c:1554:                      (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
	movq	24(%rbp), %rax	 # ps_var, tmp101
	movss	4(%rax), %xmm0	 # ps_var_17(D)->f32_x2, _7
 # ./pdsp.c:1554:                      (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
	addss	%xmm1, %xmm0	 # _6, _8
 # ./pdsp.c:1553:     ps_var->f32_x1 = (f32_in * ps_data->f32_b1) +
	movq	24(%rbp), %rax	 # ps_var, tmp102
	movss	%xmm0, (%rax)	 # _8, ps_var_17(D)->f32_x1
 # ./pdsp.c:1556:         (f32_in * ps_data->f32_b2) + (ps_var->f32_out * ps_data->f32_a2);
	movq	16(%rbp), %rax	 # ps_data, tmp103
	movss	8(%rax), %xmm0	 # ps_data_16(D)->f32_b2, _9
 # ./pdsp.c:1556:         (f32_in * ps_data->f32_b2) + (ps_var->f32_out * ps_data->f32_a2);
	movaps	%xmm0, %xmm1	 # _9, _9
	mulss	32(%rbp), %xmm1	 # f32_in, _9
 # ./pdsp.c:1556:         (f32_in * ps_data->f32_b2) + (ps_var->f32_out * ps_data->f32_a2);
	movq	24(%rbp), %rax	 # ps_var, tmp104
	movss	8(%rax), %xmm2	 # ps_var_17(D)->f32_out, _11
 # ./pdsp.c:1556:         (f32_in * ps_data->f32_b2) + (ps_var->f32_out * ps_data->f32_a2);
	movq	16(%rbp), %rax	 # ps_data, tmp105
	movss	16(%rax), %xmm0	 # ps_data_16(D)->f32_a2, _12
 # ./pdsp.c:1556:         (f32_in * ps_data->f32_b2) + (ps_var->f32_out * ps_data->f32_a2);
	mulss	%xmm2, %xmm0	 # _11, _13
 # ./pdsp.c:1556:         (f32_in * ps_data->f32_b2) + (ps_var->f32_out * ps_data->f32_a2);
	addss	%xmm1, %xmm0	 # _10, _14
 # ./pdsp.c:1555:     ps_var->f32_x2 =
	movq	24(%rbp), %rax	 # ps_var, tmp106
	movss	%xmm0, 4(%rax)	 # _14, ps_var_17(D)->f32_x2
 # ./pdsp.c:1557: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_df23_clear
	.def	pdsp_df23_clear;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_df23_clear
pdsp_df23_clear:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_var, ps_var
 # ./pdsp.c:1561:     PDSP_ASSERT(ps_var != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_var
	jne	.L441	 #,
 # ./pdsp.c:1561:     PDSP_ASSERT(ps_var != NULL);
	movl	$1561, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp82
	movq	%rax, %rdx	 # tmp82,
	leaq	.LC1(%rip), %rax	 #, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	printf	 #
.L441:
 # ./pdsp.c:1562:     ps_var->f32_x1 = 0.0f;
	movq	16(%rbp), %rax	 # ps_var, tmp84
	pxor	%xmm0, %xmm0	 # tmp85
	movss	%xmm0, (%rax)	 # tmp85, ps_var_2(D)->f32_x1
 # ./pdsp.c:1563:     ps_var->f32_x2 = 0.0f;
	movq	16(%rbp), %rax	 # ps_var, tmp86
	pxor	%xmm0, %xmm0	 # tmp87
	movss	%xmm0, 4(%rax)	 # tmp87, ps_var_2(D)->f32_x2
 # ./pdsp.c:1564:     ps_var->f32_x3 = 0.0f;
	movq	16(%rbp), %rax	 # ps_var, tmp88
	pxor	%xmm0, %xmm0	 # tmp89
	movss	%xmm0, 8(%rax)	 # tmp89, ps_var_2(D)->f32_x3
 # ./pdsp.c:1565: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_df23
	.def	pdsp_df23;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_df23
pdsp_df23:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movq	%rdx, 24(%rbp)	 # ps_var, ps_var
	movss	%xmm2, 32(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:1570:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L443	 #,
 # ./pdsp.c:1570:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	cmpq	$0, 24(%rbp)	 #, ps_var
	jne	.L444	 #,
.L443:
 # ./pdsp.c:1570:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	movl	$1570, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp110
	movq	%rax, %rdx	 # tmp110,
	leaq	.LC1(%rip), %rax	 #, tmp111
	movq	%rax, %rcx	 # tmp111,
	call	printf	 #
.L444:
 # ./pdsp.c:1571:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movq	16(%rbp), %rax	 # ps_data, tmp112
	movss	(%rax), %xmm0	 # ps_data_28(D)->f32_b0, _1
 # ./pdsp.c:1571:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movaps	%xmm0, %xmm1	 # _1, _1
	mulss	32(%rbp), %xmm1	 # f32_in, _1
 # ./pdsp.c:1571:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movq	24(%rbp), %rax	 # ps_var, tmp113
	movss	(%rax), %xmm0	 # ps_var_29(D)->f32_x1, _3
 # ./pdsp.c:1571:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	addss	%xmm1, %xmm0	 # _2, _4
 # ./pdsp.c:1571:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movq	24(%rbp), %rax	 # ps_var, tmp114
	movss	%xmm0, 12(%rax)	 # _4, ps_var_29(D)->f32_out
 # ./pdsp.c:1572:     ps_var->f32_x1 = (f32_in * ps_data->f32_b1) +
	movq	16(%rbp), %rax	 # ps_data, tmp115
	movss	4(%rax), %xmm0	 # ps_data_28(D)->f32_b1, _5
 # ./pdsp.c:1572:     ps_var->f32_x1 = (f32_in * ps_data->f32_b1) +
	movaps	%xmm0, %xmm1	 # _5, _5
	mulss	32(%rbp), %xmm1	 # f32_in, _5
 # ./pdsp.c:1573:                      (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
	movq	24(%rbp), %rax	 # ps_var, tmp116
	movss	12(%rax), %xmm2	 # ps_var_29(D)->f32_out, _7
 # ./pdsp.c:1573:                      (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
	movq	16(%rbp), %rax	 # ps_data, tmp117
	movss	16(%rax), %xmm0	 # ps_data_28(D)->f32_a1, _8
 # ./pdsp.c:1573:                      (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
	mulss	%xmm2, %xmm0	 # _7, _9
 # ./pdsp.c:1572:     ps_var->f32_x1 = (f32_in * ps_data->f32_b1) +
	addss	%xmm0, %xmm1	 # _9, _10
 # ./pdsp.c:1573:                      (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
	movq	24(%rbp), %rax	 # ps_var, tmp118
	movss	4(%rax), %xmm0	 # ps_var_29(D)->f32_x2, _11
 # ./pdsp.c:1573:                      (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
	addss	%xmm1, %xmm0	 # _10, _12
 # ./pdsp.c:1572:     ps_var->f32_x1 = (f32_in * ps_data->f32_b1) +
	movq	24(%rbp), %rax	 # ps_var, tmp119
	movss	%xmm0, (%rax)	 # _12, ps_var_29(D)->f32_x1
 # ./pdsp.c:1574:     ps_var->f32_x2 = (f32_in * ps_data->f32_b2) +
	movq	16(%rbp), %rax	 # ps_data, tmp120
	movss	8(%rax), %xmm0	 # ps_data_28(D)->f32_b2, _13
 # ./pdsp.c:1574:     ps_var->f32_x2 = (f32_in * ps_data->f32_b2) +
	movaps	%xmm0, %xmm1	 # _13, _13
	mulss	32(%rbp), %xmm1	 # f32_in, _13
 # ./pdsp.c:1575:                      (ps_var->f32_out * ps_data->f32_a2) + ps_var->f32_x3;
	movq	24(%rbp), %rax	 # ps_var, tmp121
	movss	12(%rax), %xmm2	 # ps_var_29(D)->f32_out, _15
 # ./pdsp.c:1575:                      (ps_var->f32_out * ps_data->f32_a2) + ps_var->f32_x3;
	movq	16(%rbp), %rax	 # ps_data, tmp122
	movss	20(%rax), %xmm0	 # ps_data_28(D)->f32_a2, _16
 # ./pdsp.c:1575:                      (ps_var->f32_out * ps_data->f32_a2) + ps_var->f32_x3;
	mulss	%xmm2, %xmm0	 # _15, _17
 # ./pdsp.c:1574:     ps_var->f32_x2 = (f32_in * ps_data->f32_b2) +
	addss	%xmm0, %xmm1	 # _17, _18
 # ./pdsp.c:1575:                      (ps_var->f32_out * ps_data->f32_a2) + ps_var->f32_x3;
	movq	24(%rbp), %rax	 # ps_var, tmp123
	movss	8(%rax), %xmm0	 # ps_var_29(D)->f32_x3, _19
 # ./pdsp.c:1575:                      (ps_var->f32_out * ps_data->f32_a2) + ps_var->f32_x3;
	addss	%xmm1, %xmm0	 # _18, _20
 # ./pdsp.c:1574:     ps_var->f32_x2 = (f32_in * ps_data->f32_b2) +
	movq	24(%rbp), %rax	 # ps_var, tmp124
	movss	%xmm0, 4(%rax)	 # _20, ps_var_29(D)->f32_x2
 # ./pdsp.c:1577:         (f32_in * ps_data->f32_b3) + (ps_var->f32_out * ps_data->f32_a3);
	movq	16(%rbp), %rax	 # ps_data, tmp125
	movss	12(%rax), %xmm0	 # ps_data_28(D)->f32_b3, _21
 # ./pdsp.c:1577:         (f32_in * ps_data->f32_b3) + (ps_var->f32_out * ps_data->f32_a3);
	movaps	%xmm0, %xmm1	 # _21, _21
	mulss	32(%rbp), %xmm1	 # f32_in, _21
 # ./pdsp.c:1577:         (f32_in * ps_data->f32_b3) + (ps_var->f32_out * ps_data->f32_a3);
	movq	24(%rbp), %rax	 # ps_var, tmp126
	movss	12(%rax), %xmm2	 # ps_var_29(D)->f32_out, _23
 # ./pdsp.c:1577:         (f32_in * ps_data->f32_b3) + (ps_var->f32_out * ps_data->f32_a3);
	movq	16(%rbp), %rax	 # ps_data, tmp127
	movss	24(%rax), %xmm0	 # ps_data_28(D)->f32_a3, _24
 # ./pdsp.c:1577:         (f32_in * ps_data->f32_b3) + (ps_var->f32_out * ps_data->f32_a3);
	mulss	%xmm2, %xmm0	 # _23, _25
 # ./pdsp.c:1577:         (f32_in * ps_data->f32_b3) + (ps_var->f32_out * ps_data->f32_a3);
	addss	%xmm1, %xmm0	 # _22, _26
 # ./pdsp.c:1576:     ps_var->f32_x3 =
	movq	24(%rbp), %rax	 # ps_var, tmp128
	movss	%xmm0, 8(%rax)	 # _26, ps_var_29(D)->f32_x3
 # ./pdsp.c:1578:     return ps_var->f32_out;
	movq	24(%rbp), %rax	 # ps_var, tmp129
	movss	12(%rax), %xmm0	 # ps_var_29(D)->f32_out, _37
 # ./pdsp.c:1579: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_df23_pre
	.def	pdsp_df23_pre;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_df23_pre
pdsp_df23_pre:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movq	%rdx, 24(%rbp)	 # ps_var, ps_var
	movss	%xmm2, 32(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:1584:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L447	 #,
 # ./pdsp.c:1584:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	cmpq	$0, 24(%rbp)	 #, ps_var
	jne	.L448	 #,
.L447:
 # ./pdsp.c:1584:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	movl	$1584, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp88
	movq	%rax, %rdx	 # tmp88,
	leaq	.LC1(%rip), %rax	 #, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	printf	 #
.L448:
 # ./pdsp.c:1585:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movq	16(%rbp), %rax	 # ps_data, tmp90
	movss	(%rax), %xmm0	 # ps_data_6(D)->f32_b0, _1
 # ./pdsp.c:1585:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movaps	%xmm0, %xmm1	 # _1, _1
	mulss	32(%rbp), %xmm1	 # f32_in, _1
 # ./pdsp.c:1585:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movq	24(%rbp), %rax	 # ps_var, tmp91
	movss	(%rax), %xmm0	 # ps_var_7(D)->f32_x1, _3
 # ./pdsp.c:1585:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	addss	%xmm1, %xmm0	 # _2, _4
 # ./pdsp.c:1585:     ps_var->f32_out = (f32_in * ps_data->f32_b0) + ps_var->f32_x1;
	movq	24(%rbp), %rax	 # ps_var, tmp92
	movss	%xmm0, 12(%rax)	 # _4, ps_var_7(D)->f32_out
 # ./pdsp.c:1586:     return ps_var->f32_out;
	movq	24(%rbp), %rax	 # ps_var, tmp93
	movss	12(%rax), %xmm0	 # ps_var_7(D)->f32_out, _12
 # ./pdsp.c:1587: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_df23_post
	.def	pdsp_df23_post;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_df23_post
pdsp_df23_post:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movq	%rdx, 24(%rbp)	 # ps_var, ps_var
	movss	%xmm2, 32(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:1592:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L451	 #,
 # ./pdsp.c:1592:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	cmpq	$0, 24(%rbp)	 #, ps_var
	jne	.L452	 #,
.L451:
 # ./pdsp.c:1592:     PDSP_ASSERT((ps_data != NULL) && (ps_var != NULL));
	movl	$1592, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp104
	movq	%rax, %rdx	 # tmp104,
	leaq	.LC1(%rip), %rax	 #, tmp105
	movq	%rax, %rcx	 # tmp105,
	call	printf	 #
.L452:
 # ./pdsp.c:1593:     ps_var->f32_x1 = (f32_in * ps_data->f32_b1) +
	movq	16(%rbp), %rax	 # ps_data, tmp106
	movss	4(%rax), %xmm0	 # ps_data_24(D)->f32_b1, _1
 # ./pdsp.c:1593:     ps_var->f32_x1 = (f32_in * ps_data->f32_b1) +
	movaps	%xmm0, %xmm1	 # _1, _1
	mulss	32(%rbp), %xmm1	 # f32_in, _1
 # ./pdsp.c:1594:                      (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
	movq	24(%rbp), %rax	 # ps_var, tmp107
	movss	12(%rax), %xmm2	 # ps_var_25(D)->f32_out, _3
 # ./pdsp.c:1594:                      (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
	movq	16(%rbp), %rax	 # ps_data, tmp108
	movss	16(%rax), %xmm0	 # ps_data_24(D)->f32_a1, _4
 # ./pdsp.c:1594:                      (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
	mulss	%xmm2, %xmm0	 # _3, _5
 # ./pdsp.c:1593:     ps_var->f32_x1 = (f32_in * ps_data->f32_b1) +
	addss	%xmm0, %xmm1	 # _5, _6
 # ./pdsp.c:1594:                      (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
	movq	24(%rbp), %rax	 # ps_var, tmp109
	movss	4(%rax), %xmm0	 # ps_var_25(D)->f32_x2, _7
 # ./pdsp.c:1594:                      (ps_var->f32_out * ps_data->f32_a1) + ps_var->f32_x2;
	addss	%xmm1, %xmm0	 # _6, _8
 # ./pdsp.c:1593:     ps_var->f32_x1 = (f32_in * ps_data->f32_b1) +
	movq	24(%rbp), %rax	 # ps_var, tmp110
	movss	%xmm0, (%rax)	 # _8, ps_var_25(D)->f32_x1
 # ./pdsp.c:1595:     ps_var->f32_x2 = (f32_in * ps_data->f32_b2) +
	movq	16(%rbp), %rax	 # ps_data, tmp111
	movss	8(%rax), %xmm0	 # ps_data_24(D)->f32_b2, _9
 # ./pdsp.c:1595:     ps_var->f32_x2 = (f32_in * ps_data->f32_b2) +
	movaps	%xmm0, %xmm1	 # _9, _9
	mulss	32(%rbp), %xmm1	 # f32_in, _9
 # ./pdsp.c:1596:                      (ps_var->f32_out * ps_data->f32_a2) + ps_var->f32_x3;
	movq	24(%rbp), %rax	 # ps_var, tmp112
	movss	12(%rax), %xmm2	 # ps_var_25(D)->f32_out, _11
 # ./pdsp.c:1596:                      (ps_var->f32_out * ps_data->f32_a2) + ps_var->f32_x3;
	movq	16(%rbp), %rax	 # ps_data, tmp113
	movss	20(%rax), %xmm0	 # ps_data_24(D)->f32_a2, _12
 # ./pdsp.c:1596:                      (ps_var->f32_out * ps_data->f32_a2) + ps_var->f32_x3;
	mulss	%xmm2, %xmm0	 # _11, _13
 # ./pdsp.c:1595:     ps_var->f32_x2 = (f32_in * ps_data->f32_b2) +
	addss	%xmm0, %xmm1	 # _13, _14
 # ./pdsp.c:1596:                      (ps_var->f32_out * ps_data->f32_a2) + ps_var->f32_x3;
	movq	24(%rbp), %rax	 # ps_var, tmp114
	movss	8(%rax), %xmm0	 # ps_var_25(D)->f32_x3, _15
 # ./pdsp.c:1596:                      (ps_var->f32_out * ps_data->f32_a2) + ps_var->f32_x3;
	addss	%xmm1, %xmm0	 # _14, _16
 # ./pdsp.c:1595:     ps_var->f32_x2 = (f32_in * ps_data->f32_b2) +
	movq	24(%rbp), %rax	 # ps_var, tmp115
	movss	%xmm0, 4(%rax)	 # _16, ps_var_25(D)->f32_x2
 # ./pdsp.c:1598:         (f32_in * ps_data->f32_b3) + (ps_var->f32_out * ps_data->f32_a3);
	movq	16(%rbp), %rax	 # ps_data, tmp116
	movss	12(%rax), %xmm0	 # ps_data_24(D)->f32_b3, _17
 # ./pdsp.c:1598:         (f32_in * ps_data->f32_b3) + (ps_var->f32_out * ps_data->f32_a3);
	movaps	%xmm0, %xmm1	 # _17, _17
	mulss	32(%rbp), %xmm1	 # f32_in, _17
 # ./pdsp.c:1598:         (f32_in * ps_data->f32_b3) + (ps_var->f32_out * ps_data->f32_a3);
	movq	24(%rbp), %rax	 # ps_var, tmp117
	movss	12(%rax), %xmm2	 # ps_var_25(D)->f32_out, _19
 # ./pdsp.c:1598:         (f32_in * ps_data->f32_b3) + (ps_var->f32_out * ps_data->f32_a3);
	movq	16(%rbp), %rax	 # ps_data, tmp118
	movss	24(%rax), %xmm0	 # ps_data_24(D)->f32_a3, _20
 # ./pdsp.c:1598:         (f32_in * ps_data->f32_b3) + (ps_var->f32_out * ps_data->f32_a3);
	mulss	%xmm2, %xmm0	 # _19, _21
 # ./pdsp.c:1598:         (f32_in * ps_data->f32_b3) + (ps_var->f32_out * ps_data->f32_a3);
	addss	%xmm1, %xmm0	 # _18, _22
 # ./pdsp.c:1597:     ps_var->f32_x3 =
	movq	24(%rbp), %rax	 # ps_var, tmp119
	movss	%xmm0, 8(%rax)	 # _22, ps_var_25(D)->f32_x3
 # ./pdsp.c:1599: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_med3_clear
	.def	pdsp_med3_clear;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_med3_clear
pdsp_med3_clear:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_var, ps_var
 # ./pdsp.c:1603:     PDSP_ASSERT(ps_var != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_var
	jne	.L454	 #,
 # ./pdsp.c:1603:     PDSP_ASSERT(ps_var != NULL);
	movl	$1603, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp82
	movq	%rax, %rdx	 # tmp82,
	leaq	.LC1(%rip), %rax	 #, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	printf	 #
.L454:
 # ./pdsp.c:1604:     ps_var->f32_x1 = 0.0f;
	movq	16(%rbp), %rax	 # ps_var, tmp84
	pxor	%xmm0, %xmm0	 # tmp85
	movss	%xmm0, (%rax)	 # tmp85, ps_var_2(D)->f32_x1
 # ./pdsp.c:1605:     ps_var->f32_x2 = 0.0f;
	movq	16(%rbp), %rax	 # ps_var, tmp86
	pxor	%xmm0, %xmm0	 # tmp87
	movss	%xmm0, 4(%rax)	 # tmp87, ps_var_2(D)->f32_x2
 # ./pdsp.c:1606: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_med3
	.def	pdsp_med3;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_med3
pdsp_med3:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$40, %rsp	 #,
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # ps_var, ps_var
	movss	%xmm1, 40(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:1611:     PDSP_ASSERT(ps_var != NULL);
	cmpq	$0, 32(%rbp)	 #, ps_var
	jne	.L456	 #,
 # ./pdsp.c:1611:     PDSP_ASSERT(ps_var != NULL);
	movl	$1611, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp93
	movq	%rax, %rdx	 # tmp93,
	leaq	.LC1(%rip), %rax	 #, tmp94
	movq	%rax, %rcx	 # tmp94,
	call	printf	 #
.L456:
 # ./pdsp.c:1616: 	out = pdsp_maxf(pdsp_minf(ps_var->f32_x2, ps_var->f32_x1), 
	movq	32(%rbp), %rax	 # ps_var, tmp95
	movl	(%rax), %eax	 # ps_var_11(D)->f32_x1, _1
	movq	32(%rbp), %rdx	 # ps_var, tmp96
	movss	4(%rdx), %xmm0	 # ps_var_11(D)->f32_x2, _2
	movaps	%xmm0, %xmm1	 # _2,
	movd	%eax, %xmm0	 # _1,
	call	fmaxf	 #
	movd	%xmm0, %edx	 #, _3
 # ./pdsp.c:1616: 	out = pdsp_maxf(pdsp_minf(ps_var->f32_x2, ps_var->f32_x1), 
	movl	40(%rbp), %eax	 # f32_in, tmp97
	movd	%edx, %xmm1	 # _3,
	movd	%eax, %xmm0	 # tmp97,
	call	fminf	 #
	movd	%xmm0, %ebx	 #, _4
 # ./pdsp.c:1616: 	out = pdsp_maxf(pdsp_minf(ps_var->f32_x2, ps_var->f32_x1), 
	movq	32(%rbp), %rax	 # ps_var, tmp98
	movl	(%rax), %eax	 # ps_var_11(D)->f32_x1, _5
	movq	32(%rbp), %rdx	 # ps_var, tmp99
	movss	4(%rdx), %xmm0	 # ps_var_11(D)->f32_x2, _6
	movaps	%xmm0, %xmm1	 # _6,
	movd	%eax, %xmm0	 # _5,
	call	fminf	 #
	movd	%xmm0, %eax	 #, _7
 # ./pdsp.c:1616: 	out = pdsp_maxf(pdsp_minf(ps_var->f32_x2, ps_var->f32_x1), 
	movd	%eax, %xmm1	 # _7,
	movd	%ebx, %xmm0	 # _4,
	call	fmaxf	 #
	movd	%xmm0, %eax	 #, _8
 # ./pdsp.c:1616: 	out = pdsp_maxf(pdsp_minf(ps_var->f32_x2, ps_var->f32_x1), 
	movl	%eax, out.21(%rip)	 # _8, out
 # ./pdsp.c:1619:     ps_var->f32_x2 = ps_var->f32_x1;
	movq	32(%rbp), %rax	 # ps_var, tmp100
	movss	(%rax), %xmm0	 # ps_var_11(D)->f32_x1, _9
 # ./pdsp.c:1619:     ps_var->f32_x2 = ps_var->f32_x1;
	movq	32(%rbp), %rax	 # ps_var, tmp101
	movss	%xmm0, 4(%rax)	 # _9, ps_var_11(D)->f32_x2
 # ./pdsp.c:1621:     ps_var->f32_x1 = f32_in;
	movq	32(%rbp), %rax	 # ps_var, tmp102
	movss	40(%rbp), %xmm0	 # f32_in, tmp103
	movss	%xmm0, (%rax)	 # tmp103, ps_var_11(D)->f32_x1
 # ./pdsp.c:1623:     return out;
	movss	out.21(%rip), %xmm0	 # out, _18
 # ./pdsp.c:1624: }
	addq	$40, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_rollsum_init
	.def	pdsp_rollsum_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_rollsum_init
pdsp_rollsum_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movl	%edx, %eax	 # i16_win_size, tmp119
	movw	%ax, 24(%rbp)	 # tmp120, i16_win_size
 # ./pdsp.c:1632:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L459	 #,
 # ./pdsp.c:1632:     PDSP_ASSERT(ps_data != NULL);
	movl	$1632, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp121
	movq	%rax, %rdx	 # tmp121,
	leaq	.LC1(%rip), %rax	 #, tmp122
	movq	%rax, %rcx	 # tmp122,
	call	printf	 #
.L459:
 # ./pdsp.c:1633:     ps_queue = ps_data->ps_queue;
	movq	16(%rbp), %rax	 # ps_data, tmp123
	movq	8(%rax), %rax	 # ps_data_40(D)->ps_queue, _1
 # ./pdsp.c:1633:     ps_queue = ps_data->ps_queue;
	movq	%rax, ps_queue.20(%rip)	 # _1, ps_queue
 # ./pdsp.c:1634:     ps_queue_var = ps_queue->ps_var;
	movq	ps_queue.20(%rip), %rax	 # ps_queue, ps_queue.105_2
	movq	(%rax), %rax	 # ps_queue.105_2->ps_var, _3
 # ./pdsp.c:1634:     ps_queue_var = ps_queue->ps_var;
	movq	%rax, ps_queue_var.19(%rip)	 # _3, ps_queue_var
 # ./pdsp.c:1635:     ps_roll_var = ps_data->ps_var;
	movq	16(%rbp), %rax	 # ps_data, tmp124
	movq	(%rax), %rax	 # ps_data_40(D)->ps_var, _4
 # ./pdsp.c:1635:     ps_roll_var = ps_data->ps_var;
	movq	%rax, ps_roll_var.18(%rip)	 # _4, ps_roll_var
 # ./pdsp.c:1637:     ps_roll_var->f32_sum = 0.0f;
	movq	ps_roll_var.18(%rip), %rax	 # ps_roll_var, ps_roll_var.106_5
 # ./pdsp.c:1637:     ps_roll_var->f32_sum = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp125
	movss	%xmm0, (%rax)	 # tmp125, ps_roll_var.106_5->f32_sum
 # ./pdsp.c:1638:     ps_queue_var->i16_count = ps_queue->i16_size;
	movq	ps_queue.20(%rip), %rdx	 # ps_queue, ps_queue.107_6
 # ./pdsp.c:1638:     ps_queue_var->i16_count = ps_queue->i16_size;
	movq	ps_queue_var.19(%rip), %rax	 # ps_queue_var, ps_queue_var.108_7
 # ./pdsp.c:1638:     ps_queue_var->i16_count = ps_queue->i16_size;
	movzwl	16(%rdx), %edx	 # ps_queue.107_6->i16_size, _8
 # ./pdsp.c:1638:     ps_queue_var->i16_count = ps_queue->i16_size;
	movw	%dx, 4(%rax)	 # _8, ps_queue_var.108_7->i16_count
 # ./pdsp.c:1639:     ps_queue_var->i16_head = ps_queue->i16_size - 1;
	movq	ps_queue.20(%rip), %rax	 # ps_queue, ps_queue.109_9
	movzwl	16(%rax), %eax	 # ps_queue.109_9->i16_size, _10
 # ./pdsp.c:1639:     ps_queue_var->i16_head = ps_queue->i16_size - 1;
	leal	-1(%rax), %edx	 #, _12
 # ./pdsp.c:1639:     ps_queue_var->i16_head = ps_queue->i16_size - 1;
	movq	ps_queue_var.19(%rip), %rax	 # ps_queue_var, ps_queue_var.110_13
 # ./pdsp.c:1639:     ps_queue_var->i16_head = ps_queue->i16_size - 1;
	movw	%dx, (%rax)	 # _14, ps_queue_var.110_13->i16_head
 # ./pdsp.c:1640:     if (i16_win_size <= ps_queue->i16_size)
	movq	ps_queue.20(%rip), %rax	 # ps_queue, ps_queue.111_15
	movzwl	16(%rax), %eax	 # ps_queue.111_15->i16_size, _16
 # ./pdsp.c:1640:     if (i16_win_size <= ps_queue->i16_size)
	cmpw	%ax, 24(%rbp)	 # _16, i16_win_size
	jg	.L460	 #,
 # ./pdsp.c:1642:         ps_queue_var->i16_tail = ps_queue->i16_size - i16_win_size;
	movq	ps_queue.20(%rip), %rax	 # ps_queue, ps_queue.112_17
	movzwl	16(%rax), %eax	 # ps_queue.112_17->i16_size, _18
	movl	%eax, %edx	 # _18, _19
 # ./pdsp.c:1642:         ps_queue_var->i16_tail = ps_queue->i16_size - i16_win_size;
	movzwl	24(%rbp), %eax	 # i16_win_size, i16_win_size.113_20
	subl	%eax, %edx	 # i16_win_size.113_20, _21
 # ./pdsp.c:1642:         ps_queue_var->i16_tail = ps_queue->i16_size - i16_win_size;
	movq	ps_queue_var.19(%rip), %rax	 # ps_queue_var, ps_queue_var.114_22
 # ./pdsp.c:1642:         ps_queue_var->i16_tail = ps_queue->i16_size - i16_win_size;
	movw	%dx, 2(%rax)	 # _23, ps_queue_var.114_22->i16_tail
 # ./pdsp.c:1644:             pdsp_divf(1.0f, (pdsp_f32_t)i16_win_size);
	movswl	24(%rbp), %eax	 # i16_win_size, tmp126
	pxor	%xmm1, %xmm1	 # _24
	cvtsi2ssl	%eax, %xmm1	 # tmp126, _24
 # ./pdsp.c:1643:         ps_roll_var->f32_win_size_inv =
	movq	ps_roll_var.18(%rip), %rax	 # ps_roll_var, ps_roll_var.115_25
 # ./pdsp.c:1644:             pdsp_divf(1.0f, (pdsp_f32_t)i16_win_size);
	movss	.LC4(%rip), %xmm0	 #, tmp127
	divss	%xmm1, %xmm0	 # _24, _26
 # ./pdsp.c:1643:         ps_roll_var->f32_win_size_inv =
	movss	%xmm0, 4(%rax)	 # _26, ps_roll_var.115_25->f32_win_size_inv
	jmp	.L461	 #
.L460:
 # ./pdsp.c:1648:         ps_queue_var->i16_tail = 0;
	movq	ps_queue_var.19(%rip), %rax	 # ps_queue_var, ps_queue_var.116_27
 # ./pdsp.c:1648:         ps_queue_var->i16_tail = 0;
	movw	$0, 2(%rax)	 #, ps_queue_var.116_27->i16_tail
 # ./pdsp.c:1650:             pdsp_divf(1.0f, (pdsp_f32_t)ps_queue->i16_size);
	movq	ps_queue.20(%rip), %rax	 # ps_queue, ps_queue.117_28
	movzwl	16(%rax), %eax	 # ps_queue.117_28->i16_size, _29
	cwtl
	pxor	%xmm1, %xmm1	 # _30
	cvtsi2ssl	%eax, %xmm1	 # tmp128, _30
 # ./pdsp.c:1649:         ps_roll_var->f32_win_size_inv =
	movq	ps_roll_var.18(%rip), %rax	 # ps_roll_var, ps_roll_var.118_31
 # ./pdsp.c:1650:             pdsp_divf(1.0f, (pdsp_f32_t)ps_queue->i16_size);
	movss	.LC4(%rip), %xmm0	 #, tmp129
	divss	%xmm1, %xmm0	 # _30, _32
 # ./pdsp.c:1649:         ps_roll_var->f32_win_size_inv =
	movss	%xmm0, 4(%rax)	 # _32, ps_roll_var.118_31->f32_win_size_inv
.L461:
 # ./pdsp.c:1652:     pdsp_array_set_f32(ps_queue->pav_data, ps_queue->i16_size, 0.0f);
	movq	ps_queue.20(%rip), %rax	 # ps_queue, ps_queue.119_33
	movzwl	16(%rax), %eax	 # ps_queue.119_33->i16_size, _34
 # ./pdsp.c:1652:     pdsp_array_set_f32(ps_queue->pav_data, ps_queue->i16_size, 0.0f);
	movswq	%ax, %rdx	 # _34, _35
 # ./pdsp.c:1652:     pdsp_array_set_f32(ps_queue->pav_data, ps_queue->i16_size, 0.0f);
	movq	ps_queue.20(%rip), %rax	 # ps_queue, ps_queue.120_36
	movq	8(%rax), %rax	 # ps_queue.120_36->pav_data, _37
 # ./pdsp.c:1652:     pdsp_array_set_f32(ps_queue->pav_data, ps_queue->i16_size, 0.0f);
	pxor	%xmm2, %xmm2	 #
	movq	%rax, %rcx	 # _37,
	call	pdsp_array_set_f32	 #
 # ./pdsp.c:1653: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_rollsum
	.def	pdsp_rollsum;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_rollsum
pdsp_rollsum:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:1658:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L463	 #,
 # ./pdsp.c:1658:     PDSP_ASSERT(ps_data != NULL);
	movl	$1658, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp96
	movq	%rax, %rdx	 # tmp96,
	leaq	.LC1(%rip), %rax	 #, tmp97
	movq	%rax, %rcx	 # tmp97,
	call	printf	 #
.L463:
 # ./pdsp.c:1660:     ps_data->ps_var->f32_sum -= pdsp_queue_pop_f32(ps_data->ps_queue);
	movq	16(%rbp), %rax	 # ps_data, tmp98
	movq	8(%rax), %rax	 # ps_data_13(D)->ps_queue, _1
 # ./pdsp.c:1660:     ps_data->ps_var->f32_sum -= pdsp_queue_pop_f32(ps_data->ps_queue);
	movq	%rax, %rcx	 # _1,
	call	pdsp_queue_pop_f32	 #
	movaps	%xmm0, %xmm1	 #, _17
 # ./pdsp.c:1660:     ps_data->ps_var->f32_sum -= pdsp_queue_pop_f32(ps_data->ps_queue);
	movq	16(%rbp), %rax	 # ps_data, tmp99
	movq	(%rax), %rax	 # ps_data_13(D)->ps_var, _2
 # ./pdsp.c:1660:     ps_data->ps_var->f32_sum -= pdsp_queue_pop_f32(ps_data->ps_queue);
	movss	(%rax), %xmm0	 # _2->f32_sum, _3
 # ./pdsp.c:1660:     ps_data->ps_var->f32_sum -= pdsp_queue_pop_f32(ps_data->ps_queue);
	movq	16(%rbp), %rax	 # ps_data, tmp100
	movq	(%rax), %rax	 # ps_data_13(D)->ps_var, _4
 # ./pdsp.c:1660:     ps_data->ps_var->f32_sum -= pdsp_queue_pop_f32(ps_data->ps_queue);
	subss	%xmm1, %xmm0	 # _17, _5
	movss	%xmm0, (%rax)	 # _5, _4->f32_sum
 # ./pdsp.c:1662:     ps_data->ps_var->f32_sum += f32_in;
	movq	16(%rbp), %rax	 # ps_data, tmp101
	movq	(%rax), %rax	 # ps_data_13(D)->ps_var, _6
 # ./pdsp.c:1662:     ps_data->ps_var->f32_sum += f32_in;
	movss	(%rax), %xmm0	 # _6->f32_sum, _7
 # ./pdsp.c:1662:     ps_data->ps_var->f32_sum += f32_in;
	movq	16(%rbp), %rax	 # ps_data, tmp102
	movq	(%rax), %rax	 # ps_data_13(D)->ps_var, _8
 # ./pdsp.c:1662:     ps_data->ps_var->f32_sum += f32_in;
	addss	24(%rbp), %xmm0	 # f32_in, _9
	movss	%xmm0, (%rax)	 # _9, _8->f32_sum
 # ./pdsp.c:1664:     pdsp_queue_push_f32(ps_data->ps_queue, f32_in);
	movq	16(%rbp), %rax	 # ps_data, tmp103
	movq	8(%rax), %rax	 # ps_data_13(D)->ps_queue, _10
 # ./pdsp.c:1664:     pdsp_queue_push_f32(ps_data->ps_queue, f32_in);
	movss	24(%rbp), %xmm0	 # f32_in, tmp104
	movaps	%xmm0, %xmm1	 # tmp104,
	movq	%rax, %rcx	 # _10,
	call	pdsp_queue_push_f32	 #
 # ./pdsp.c:1665:     return ps_data->ps_var->f32_sum;
	movq	16(%rbp), %rax	 # ps_data, tmp105
	movq	(%rax), %rax	 # ps_data_13(D)->ps_var, _11
 # ./pdsp.c:1665:     return ps_data->ps_var->f32_sum;
	movss	(%rax), %xmm0	 # _11->f32_sum, _22
 # ./pdsp.c:1666: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_rollavg_init
	.def	pdsp_rollavg_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_rollavg_init
pdsp_rollavg_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movl	%edx, %eax	 # i16_win_size, tmp83
	movw	%ax, 24(%rbp)	 # tmp84, i16_win_size
 # ./pdsp.c:1671:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L466	 #,
 # ./pdsp.c:1671:     PDSP_ASSERT(ps_data != NULL);
	movl	$1671, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp85
	movq	%rax, %rdx	 # tmp85,
	leaq	.LC1(%rip), %rax	 #, tmp86
	movq	%rax, %rcx	 # tmp86,
	call	printf	 #
.L466:
 # ./pdsp.c:1672:     pdsp_rollsum_init(ps_data, i16_win_size);
	movswl	24(%rbp), %edx	 # i16_win_size, _1
	movq	16(%rbp), %rax	 # ps_data, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	pdsp_rollsum_init	 #
 # ./pdsp.c:1673: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_rollavg
	.def	pdsp_rollavg;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_rollavg
pdsp_rollavg:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:1678:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L468	 #,
 # ./pdsp.c:1678:     PDSP_ASSERT(ps_data != NULL);
	movl	$1678, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp87
	movq	%rax, %rdx	 # tmp87,
	leaq	.LC1(%rip), %rax	 #, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	printf	 #
.L468:
 # ./pdsp.c:1679:     return pdsp_rollsum(ps_data, f32_in * ps_data->ps_var->f32_win_size_inv);
	movq	16(%rbp), %rax	 # ps_data, tmp89
	movq	(%rax), %rax	 # ps_data_5(D)->ps_var, _1
 # ./pdsp.c:1679:     return pdsp_rollsum(ps_data, f32_in * ps_data->ps_var->f32_win_size_inv);
	movss	4(%rax), %xmm0	 # _1->f32_win_size_inv, _2
 # ./pdsp.c:1679:     return pdsp_rollsum(ps_data, f32_in * ps_data->ps_var->f32_win_size_inv);
	mulss	24(%rbp), %xmm0	 # f32_in, _3
	movq	16(%rbp), %rax	 # ps_data, tmp90
	movaps	%xmm0, %xmm1	 # _3,
	movq	%rax, %rcx	 # tmp90,
	call	pdsp_rollsum	 #
 # ./pdsp.c:1680: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_rollrms_init
	.def	pdsp_rollrms_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_rollrms_init
pdsp_rollrms_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movl	%edx, %eax	 # i16_win_size, tmp83
	movw	%ax, 24(%rbp)	 # tmp84, i16_win_size
 # ./pdsp.c:1685:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L471	 #,
 # ./pdsp.c:1685:     PDSP_ASSERT(ps_data != NULL);
	movl	$1685, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp85
	movq	%rax, %rdx	 # tmp85,
	leaq	.LC1(%rip), %rax	 #, tmp86
	movq	%rax, %rcx	 # tmp86,
	call	printf	 #
.L471:
 # ./pdsp.c:1686:     pdsp_rollsum_init(ps_data, i16_win_size);
	movswl	24(%rbp), %edx	 # i16_win_size, _1
	movq	16(%rbp), %rax	 # ps_data, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	pdsp_rollsum_init	 #
 # ./pdsp.c:1687: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_rollrms
	.def	pdsp_rollrms;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_rollrms
pdsp_rollrms:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:1692:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L473	 #,
 # ./pdsp.c:1692:     PDSP_ASSERT(ps_data != NULL);
	movl	$1692, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp89
	movq	%rax, %rdx	 # tmp89,
	leaq	.LC1(%rip), %rax	 #, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	printf	 #
.L473:
 # ./pdsp.c:1693:     return pdsp_sqrtf(pdsp_rollsum(
	movss	24(%rbp), %xmm0	 # f32_in, tmp91
	movaps	%xmm0, %xmm1	 # tmp91, tmp91
	mulss	%xmm0, %xmm1	 # tmp91, tmp91
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movq	(%rax), %rax	 # ps_data_7(D)->ps_var, _2
	movss	4(%rax), %xmm0	 # _2->f32_win_size_inv, _3
	mulss	%xmm1, %xmm0	 # _1, _4
	movq	16(%rbp), %rax	 # ps_data, tmp93
	movaps	%xmm0, %xmm1	 # _4,
	movq	%rax, %rcx	 # tmp93,
	call	pdsp_rollsum	 #
	movd	%xmm0, %eax	 #, _5
 # ./pdsp.c:1693:     return pdsp_sqrtf(pdsp_rollsum(
	movd	%eax, %xmm0	 # _5,
	call	sqrtf	 #
 # ./pdsp.c:1695: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_delayrf_bool_clear
	.def	pdsp_delayrf_bool_clear;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_delayrf_bool_clear
pdsp_delayrf_bool_clear:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1699:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L476	 #,
 # ./pdsp.c:1699:     PDSP_ASSERT(ps_data != NULL);
	movl	$1699, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp84
	movq	%rax, %rdx	 # tmp84,
	leaq	.LC1(%rip), %rax	 #, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	printf	 #
.L476:
 # ./pdsp.c:1700:     ps_data->ps_var->b_state = PDSP_FALSE;
	movq	16(%rbp), %rax	 # ps_data, tmp86
	movq	(%rax), %rax	 # ps_data_4(D)->ps_var, _1
 # ./pdsp.c:1700:     ps_data->ps_var->b_state = PDSP_FALSE;
	movb	$0, (%rax)	 #, _1->b_state
 # ./pdsp.c:1701:     ps_data->ps_var->u16_count = 0U;
	movq	16(%rbp), %rax	 # ps_data, tmp87
	movq	(%rax), %rax	 # ps_data_4(D)->ps_var, _2
 # ./pdsp.c:1701:     ps_data->ps_var->u16_count = 0U;
	movw	$0, 2(%rax)	 #, _2->u16_count
 # ./pdsp.c:1702: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_delayrf_bool
	.def	pdsp_delayrf_bool;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_delayrf_bool
pdsp_delayrf_bool:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movl	%edx, %eax	 # b_in, tmp110
	movb	%al, 24(%rbp)	 # tmp111, b_in
 # ./pdsp.c:1708:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L478	 #,
 # ./pdsp.c:1708:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	16(%rbp), %rax	 # ps_data, tmp112
	movq	(%rax), %rax	 # ps_data_33(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L479	 #,
.L478:
 # ./pdsp.c:1708:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$1708, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp113
	movq	%rax, %rdx	 # tmp113,
	leaq	.LC1(%rip), %rax	 #, tmp114
	movq	%rax, %rcx	 # tmp114,
	call	printf	 #
.L479:
 # ./pdsp.c:1709:     ps_var = ps_data->ps_var;
	movq	16(%rbp), %rax	 # ps_data, tmp115
	movq	(%rax), %rax	 # ps_data_33(D)->ps_var, _2
 # ./pdsp.c:1709:     ps_var = ps_data->ps_var;
	movq	%rax, ps_var.17(%rip)	 # _2, ps_var
 # ./pdsp.c:1711:     if (!(ps_var->b_state) && b_in)
	movq	ps_var.17(%rip), %rax	 # ps_var, ps_var.121_3
	movzbl	(%rax), %eax	 # ps_var.121_3->b_state, _4
 # ./pdsp.c:1711:     if (!(ps_var->b_state) && b_in)
	xorl	$1, %eax	 #, _5
 # ./pdsp.c:1711:     if (!(ps_var->b_state) && b_in)
	testb	%al, %al	 # _5
	je	.L480	 #,
 # ./pdsp.c:1711:     if (!(ps_var->b_state) && b_in)
	cmpb	$0, 24(%rbp)	 #, b_in
	je	.L480	 #,
 # ./pdsp.c:1713:         ps_var->u16_count++;
	movq	ps_var.17(%rip), %rax	 # ps_var, ps_var.122_6
	movzwl	2(%rax), %edx	 # ps_var.122_6->u16_count, _7
 # ./pdsp.c:1713:         ps_var->u16_count++;
	addl	$1, %edx	 #, _9
	movw	%dx, 2(%rax)	 # _9, ps_var.122_6->u16_count
 # ./pdsp.c:1714:         if (ps_var->u16_count > ps_data->u16_rising_delay_count)
	movq	ps_var.17(%rip), %rax	 # ps_var, ps_var.123_10
	movzwl	2(%rax), %edx	 # ps_var.123_10->u16_count, _11
 # ./pdsp.c:1714:         if (ps_var->u16_count > ps_data->u16_rising_delay_count)
	movq	16(%rbp), %rax	 # ps_data, tmp116
	movzwl	8(%rax), %eax	 # ps_data_33(D)->u16_rising_delay_count, _12
 # ./pdsp.c:1714:         if (ps_var->u16_count > ps_data->u16_rising_delay_count)
	cmpw	%dx, %ax	 # _11, _12
	jnb	.L482	 #,
 # ./pdsp.c:1716:             ps_var->b_state = PDSP_TRUE;
	movq	ps_var.17(%rip), %rax	 # ps_var, ps_var.124_13
 # ./pdsp.c:1716:             ps_var->b_state = PDSP_TRUE;
	movb	$1, (%rax)	 #, ps_var.124_13->b_state
 # ./pdsp.c:1717:             ps_var->u16_count = 0U;
	movq	ps_var.17(%rip), %rax	 # ps_var, ps_var.125_14
 # ./pdsp.c:1717:             ps_var->u16_count = 0U;
	movw	$0, 2(%rax)	 #, ps_var.125_14->u16_count
 # ./pdsp.c:1714:         if (ps_var->u16_count > ps_data->u16_rising_delay_count)
	jmp	.L482	 #
.L480:
 # ./pdsp.c:1721:     else if ((ps_var->b_state) && !b_in)
	movq	ps_var.17(%rip), %rax	 # ps_var, ps_var.126_15
	movzbl	(%rax), %eax	 # ps_var.126_15->b_state, _16
 # ./pdsp.c:1721:     else if ((ps_var->b_state) && !b_in)
	testb	%al, %al	 # _16
	je	.L483	 #,
 # ./pdsp.c:1721:     else if ((ps_var->b_state) && !b_in)
	movzbl	24(%rbp), %eax	 # b_in, tmp117
	xorl	$1, %eax	 #, _17
 # ./pdsp.c:1721:     else if ((ps_var->b_state) && !b_in)
	testb	%al, %al	 # _17
	je	.L483	 #,
 # ./pdsp.c:1723:         ps_var->u16_count++;
	movq	ps_var.17(%rip), %rax	 # ps_var, ps_var.127_18
	movzwl	2(%rax), %edx	 # ps_var.127_18->u16_count, _19
 # ./pdsp.c:1723:         ps_var->u16_count++;
	addl	$1, %edx	 #, _21
	movw	%dx, 2(%rax)	 # _21, ps_var.127_18->u16_count
 # ./pdsp.c:1724:         if (ps_var->u16_count > ps_data->u16_falling_delay_count)
	movq	ps_var.17(%rip), %rax	 # ps_var, ps_var.128_22
	movzwl	2(%rax), %edx	 # ps_var.128_22->u16_count, _23
 # ./pdsp.c:1724:         if (ps_var->u16_count > ps_data->u16_falling_delay_count)
	movq	16(%rbp), %rax	 # ps_data, tmp118
	movzwl	10(%rax), %eax	 # ps_data_33(D)->u16_falling_delay_count, _24
 # ./pdsp.c:1724:         if (ps_var->u16_count > ps_data->u16_falling_delay_count)
	cmpw	%dx, %ax	 # _23, _24
	jnb	.L482	 #,
 # ./pdsp.c:1726:             ps_var->b_state = PDSP_FALSE;
	movq	ps_var.17(%rip), %rax	 # ps_var, ps_var.129_25
 # ./pdsp.c:1726:             ps_var->b_state = PDSP_FALSE;
	movb	$0, (%rax)	 #, ps_var.129_25->b_state
 # ./pdsp.c:1727:             ps_var->u16_count = 0U;
	movq	ps_var.17(%rip), %rax	 # ps_var, ps_var.130_26
 # ./pdsp.c:1727:             ps_var->u16_count = 0U;
	movw	$0, 2(%rax)	 #, ps_var.130_26->u16_count
 # ./pdsp.c:1724:         if (ps_var->u16_count > ps_data->u16_falling_delay_count)
	jmp	.L482	 #
.L483:
 # ./pdsp.c:1733:         ps_var->u16_count = 0U;
	movq	ps_var.17(%rip), %rax	 # ps_var, ps_var.131_27
 # ./pdsp.c:1733:         ps_var->u16_count = 0U;
	movw	$0, 2(%rax)	 #, ps_var.131_27->u16_count
.L482:
 # ./pdsp.c:1735:     return ps_var->b_state;
	movq	ps_var.17(%rip), %rax	 # ps_var, ps_var.132_28
	movzbl	(%rax), %eax	 # ps_var.132_28->b_state, _45
 # ./pdsp.c:1736: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_abc_dq_clear
	.def	pdsp_abc_dq_clear;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_abc_dq_clear
pdsp_abc_dq_clear:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_var, ps_var
 # ./pdsp.c:1744:     PDSP_ASSERT(ps_var != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_var
	jne	.L487	 #,
 # ./pdsp.c:1744:     PDSP_ASSERT(ps_var != NULL);
	movl	$1744, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp82
	movq	%rax, %rdx	 # tmp82,
	leaq	.LC1(%rip), %rax	 #, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	printf	 #
.L487:
 # ./pdsp.c:1745:     ps_var->f32_alpha = 0.0f;
	movq	16(%rbp), %rax	 # ps_var, tmp84
	pxor	%xmm0, %xmm0	 # tmp85
	movss	%xmm0, (%rax)	 # tmp85, ps_var_2(D)->f32_alpha
 # ./pdsp.c:1746:     ps_var->f32_beta = 0.0f;
	movq	16(%rbp), %rax	 # ps_var, tmp86
	pxor	%xmm0, %xmm0	 # tmp87
	movss	%xmm0, 4(%rax)	 # tmp87, ps_var_2(D)->f32_beta
 # ./pdsp.c:1747:     ps_var->f32_d = 0.0f;
	movq	16(%rbp), %rax	 # ps_var, tmp88
	pxor	%xmm0, %xmm0	 # tmp89
	movss	%xmm0, 8(%rax)	 # tmp89, ps_var_2(D)->f32_d
 # ./pdsp.c:1748:     ps_var->f32_q = 0.0f;
	movq	16(%rbp), %rax	 # ps_var, tmp90
	pxor	%xmm0, %xmm0	 # tmp91
	movss	%xmm0, 12(%rax)	 # tmp91, ps_var_2(D)->f32_q
 # ./pdsp.c:1749:     ps_var->f32_zero = 0.0f;
	movq	16(%rbp), %rax	 # ps_var, tmp92
	pxor	%xmm0, %xmm0	 # tmp93
	movss	%xmm0, 16(%rax)	 # tmp93, ps_var_2(D)->f32_zero
 # ./pdsp.c:1750: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_abc_dq_pos
	.def	pdsp_abc_dq_pos;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_abc_dq_pos
pdsp_abc_dq_pos:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_var, ps_var
	movss	%xmm1, 24(%rbp)	 # f32_a, f32_a
	movss	%xmm2, 32(%rbp)	 # f32_b, f32_b
	movss	%xmm3, 40(%rbp)	 # f32_c, f32_c
 # ./pdsp.c:1756:     PDSP_ASSERT(ps_var != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_var
	jne	.L489	 #,
 # ./pdsp.c:1756:     PDSP_ASSERT(ps_var != NULL);
	movl	$1756, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp102
	movq	%rax, %rdx	 # tmp102,
	leaq	.LC1(%rip), %rax	 #, tmp103
	movq	%rax, %rcx	 # tmp103,
	call	printf	 #
.L489:
 # ./pdsp.c:1757:     ps_var->f32_alpha = 0.66666666677f * (f32_a - 0.5f * (f32_b + f32_c));
	movss	32(%rbp), %xmm0	 # f32_b, tmp104
	movaps	%xmm0, %xmm1	 # tmp104, tmp104
	addss	40(%rbp), %xmm1	 # f32_c, tmp104
 # ./pdsp.c:1757:     ps_var->f32_alpha = 0.66666666677f * (f32_a - 0.5f * (f32_b + f32_c));
	movss	.LC3(%rip), %xmm0	 #, tmp105
	movaps	%xmm1, %xmm2	 # _1, _1
	mulss	%xmm0, %xmm2	 # tmp105, _1
 # ./pdsp.c:1757:     ps_var->f32_alpha = 0.66666666677f * (f32_a - 0.5f * (f32_b + f32_c));
	movss	24(%rbp), %xmm0	 # f32_a, tmp106
	movaps	%xmm0, %xmm1	 # tmp106, tmp106
	subss	%xmm2, %xmm1	 # _2, tmp106
 # ./pdsp.c:1757:     ps_var->f32_alpha = 0.66666666677f * (f32_a - 0.5f * (f32_b + f32_c));
	movss	.LC14(%rip), %xmm0	 #, tmp107
	mulss	%xmm1, %xmm0	 # _3, _4
 # ./pdsp.c:1757:     ps_var->f32_alpha = 0.66666666677f * (f32_a - 0.5f * (f32_b + f32_c));
	movq	16(%rbp), %rax	 # ps_var, tmp108
	movss	%xmm0, (%rax)	 # _4, ps_var_22(D)->f32_alpha
 # ./pdsp.c:1758:     ps_var->f32_beta = 0.57735026913f * (f32_b - f32_c);
	movss	32(%rbp), %xmm0	 # f32_b, tmp109
	movaps	%xmm0, %xmm1	 # tmp109, tmp109
	subss	40(%rbp), %xmm1	 # f32_c, tmp109
 # ./pdsp.c:1758:     ps_var->f32_beta = 0.57735026913f * (f32_b - f32_c);
	movss	.LC15(%rip), %xmm0	 #, tmp110
	mulss	%xmm1, %xmm0	 # _5, _6
 # ./pdsp.c:1758:     ps_var->f32_beta = 0.57735026913f * (f32_b - f32_c);
	movq	16(%rbp), %rax	 # ps_var, tmp111
	movss	%xmm0, 4(%rax)	 # _6, ps_var_22(D)->f32_beta
 # ./pdsp.c:1759:     ps_var->f32_zero = 0.57735026913f * (f32_a + f32_b + f32_c);
	movss	24(%rbp), %xmm0	 # f32_a, tmp112
	addss	32(%rbp), %xmm0	 # f32_b, _7
 # ./pdsp.c:1759:     ps_var->f32_zero = 0.57735026913f * (f32_a + f32_b + f32_c);
	movaps	%xmm0, %xmm1	 # _7, _7
	addss	40(%rbp), %xmm1	 # f32_c, _7
 # ./pdsp.c:1759:     ps_var->f32_zero = 0.57735026913f * (f32_a + f32_b + f32_c);
	movss	.LC15(%rip), %xmm0	 #, tmp113
	mulss	%xmm1, %xmm0	 # _8, _9
 # ./pdsp.c:1759:     ps_var->f32_zero = 0.57735026913f * (f32_a + f32_b + f32_c);
	movq	16(%rbp), %rax	 # ps_var, tmp114
	movss	%xmm0, 16(%rax)	 # _9, ps_var_22(D)->f32_zero
 # ./pdsp.c:1761:         ps_var->f32_alpha * f32_cos_val + ps_var->f32_beta * f32_sin_val;
	movq	16(%rbp), %rax	 # ps_var, tmp115
	movss	(%rax), %xmm0	 # ps_var_22(D)->f32_alpha, _10
 # ./pdsp.c:1761:         ps_var->f32_alpha * f32_cos_val + ps_var->f32_beta * f32_sin_val;
	movaps	%xmm0, %xmm1	 # _10, _10
	mulss	56(%rbp), %xmm1	 # f32_cos_val, _10
 # ./pdsp.c:1761:         ps_var->f32_alpha * f32_cos_val + ps_var->f32_beta * f32_sin_val;
	movq	16(%rbp), %rax	 # ps_var, tmp116
	movss	4(%rax), %xmm0	 # ps_var_22(D)->f32_beta, _12
 # ./pdsp.c:1761:         ps_var->f32_alpha * f32_cos_val + ps_var->f32_beta * f32_sin_val;
	mulss	48(%rbp), %xmm0	 # f32_sin_val, _13
 # ./pdsp.c:1761:         ps_var->f32_alpha * f32_cos_val + ps_var->f32_beta * f32_sin_val;
	addss	%xmm1, %xmm0	 # _11, _14
 # ./pdsp.c:1760:     ps_var->f32_d =
	movq	16(%rbp), %rax	 # ps_var, tmp117
	movss	%xmm0, 8(%rax)	 # _14, ps_var_22(D)->f32_d
 # ./pdsp.c:1763:         -ps_var->f32_alpha * f32_sin_val + ps_var->f32_beta * f32_cos_val;
	movq	16(%rbp), %rax	 # ps_var, tmp118
	movss	(%rax), %xmm0	 # ps_var_22(D)->f32_alpha, _15
 # ./pdsp.c:1763:         -ps_var->f32_alpha * f32_sin_val + ps_var->f32_beta * f32_cos_val;
	movss	.LC16(%rip), %xmm1	 #, tmp119
	xorps	%xmm1, %xmm0	 # tmp119, _16
 # ./pdsp.c:1763:         -ps_var->f32_alpha * f32_sin_val + ps_var->f32_beta * f32_cos_val;
	movaps	%xmm0, %xmm1	 # _16, _16
	mulss	48(%rbp), %xmm1	 # f32_sin_val, _16
 # ./pdsp.c:1763:         -ps_var->f32_alpha * f32_sin_val + ps_var->f32_beta * f32_cos_val;
	movq	16(%rbp), %rax	 # ps_var, tmp120
	movss	4(%rax), %xmm0	 # ps_var_22(D)->f32_beta, _18
 # ./pdsp.c:1763:         -ps_var->f32_alpha * f32_sin_val + ps_var->f32_beta * f32_cos_val;
	mulss	56(%rbp), %xmm0	 # f32_cos_val, _19
 # ./pdsp.c:1763:         -ps_var->f32_alpha * f32_sin_val + ps_var->f32_beta * f32_cos_val;
	addss	%xmm1, %xmm0	 # _17, _20
 # ./pdsp.c:1762:     ps_var->f32_q =
	movq	16(%rbp), %rax	 # ps_var, tmp121
	movss	%xmm0, 12(%rax)	 # _20, ps_var_22(D)->f32_q
 # ./pdsp.c:1764: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_abc_dq_neg
	.def	pdsp_abc_dq_neg;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_abc_dq_neg
pdsp_abc_dq_neg:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_var, ps_var
	movss	%xmm1, 24(%rbp)	 # f32_a, f32_a
	movss	%xmm2, 32(%rbp)	 # f32_b, f32_b
	movss	%xmm3, 40(%rbp)	 # f32_c, f32_c
 # ./pdsp.c:1770:     PDSP_ASSERT(ps_var != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_var
	jne	.L491	 #,
 # ./pdsp.c:1770:     PDSP_ASSERT(ps_var != NULL);
	movl	$1770, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp101
	movq	%rax, %rdx	 # tmp101,
	leaq	.LC1(%rip), %rax	 #, tmp102
	movq	%rax, %rcx	 # tmp102,
	call	printf	 #
.L491:
 # ./pdsp.c:1771:     ps_var->f32_alpha = 0.66666666677f * (f32_a - 0.5f * (f32_b + f32_c));
	movss	32(%rbp), %xmm0	 # f32_b, tmp103
	movaps	%xmm0, %xmm1	 # tmp103, tmp103
	addss	40(%rbp), %xmm1	 # f32_c, tmp103
 # ./pdsp.c:1771:     ps_var->f32_alpha = 0.66666666677f * (f32_a - 0.5f * (f32_b + f32_c));
	movss	.LC3(%rip), %xmm0	 #, tmp104
	movaps	%xmm1, %xmm2	 # _1, _1
	mulss	%xmm0, %xmm2	 # tmp104, _1
 # ./pdsp.c:1771:     ps_var->f32_alpha = 0.66666666677f * (f32_a - 0.5f * (f32_b + f32_c));
	movss	24(%rbp), %xmm0	 # f32_a, tmp105
	movaps	%xmm0, %xmm1	 # tmp105, tmp105
	subss	%xmm2, %xmm1	 # _2, tmp105
 # ./pdsp.c:1771:     ps_var->f32_alpha = 0.66666666677f * (f32_a - 0.5f * (f32_b + f32_c));
	movss	.LC14(%rip), %xmm0	 #, tmp106
	mulss	%xmm1, %xmm0	 # _3, _4
 # ./pdsp.c:1771:     ps_var->f32_alpha = 0.66666666677f * (f32_a - 0.5f * (f32_b + f32_c));
	movq	16(%rbp), %rax	 # ps_var, tmp107
	movss	%xmm0, (%rax)	 # _4, ps_var_21(D)->f32_alpha
 # ./pdsp.c:1772:     ps_var->f32_beta = 0.57735026913f * (f32_b - f32_c);
	movss	32(%rbp), %xmm0	 # f32_b, tmp108
	movaps	%xmm0, %xmm1	 # tmp108, tmp108
	subss	40(%rbp), %xmm1	 # f32_c, tmp108
 # ./pdsp.c:1772:     ps_var->f32_beta = 0.57735026913f * (f32_b - f32_c);
	movss	.LC15(%rip), %xmm0	 #, tmp109
	mulss	%xmm1, %xmm0	 # _5, _6
 # ./pdsp.c:1772:     ps_var->f32_beta = 0.57735026913f * (f32_b - f32_c);
	movq	16(%rbp), %rax	 # ps_var, tmp110
	movss	%xmm0, 4(%rax)	 # _6, ps_var_21(D)->f32_beta
 # ./pdsp.c:1773:     ps_var->f32_zero = 0.57735026913f * (f32_a + f32_b + f32_c);
	movss	24(%rbp), %xmm0	 # f32_a, tmp111
	addss	32(%rbp), %xmm0	 # f32_b, _7
 # ./pdsp.c:1773:     ps_var->f32_zero = 0.57735026913f * (f32_a + f32_b + f32_c);
	movaps	%xmm0, %xmm1	 # _7, _7
	addss	40(%rbp), %xmm1	 # f32_c, _7
 # ./pdsp.c:1773:     ps_var->f32_zero = 0.57735026913f * (f32_a + f32_b + f32_c);
	movss	.LC15(%rip), %xmm0	 #, tmp112
	mulss	%xmm1, %xmm0	 # _8, _9
 # ./pdsp.c:1773:     ps_var->f32_zero = 0.57735026913f * (f32_a + f32_b + f32_c);
	movq	16(%rbp), %rax	 # ps_var, tmp113
	movss	%xmm0, 16(%rax)	 # _9, ps_var_21(D)->f32_zero
 # ./pdsp.c:1775:         ps_var->f32_alpha * f32_cos_val - ps_var->f32_beta * f32_sin_val;
	movq	16(%rbp), %rax	 # ps_var, tmp114
	movss	(%rax), %xmm0	 # ps_var_21(D)->f32_alpha, _10
 # ./pdsp.c:1775:         ps_var->f32_alpha * f32_cos_val - ps_var->f32_beta * f32_sin_val;
	mulss	56(%rbp), %xmm0	 # f32_cos_val, _11
 # ./pdsp.c:1775:         ps_var->f32_alpha * f32_cos_val - ps_var->f32_beta * f32_sin_val;
	movq	16(%rbp), %rax	 # ps_var, tmp115
	movss	4(%rax), %xmm1	 # ps_var_21(D)->f32_beta, _12
 # ./pdsp.c:1775:         ps_var->f32_alpha * f32_cos_val - ps_var->f32_beta * f32_sin_val;
	mulss	48(%rbp), %xmm1	 # f32_sin_val, _13
 # ./pdsp.c:1775:         ps_var->f32_alpha * f32_cos_val - ps_var->f32_beta * f32_sin_val;
	subss	%xmm1, %xmm0	 # _13, _14
 # ./pdsp.c:1774:     ps_var->f32_d =
	movq	16(%rbp), %rax	 # ps_var, tmp116
	movss	%xmm0, 8(%rax)	 # _14, ps_var_21(D)->f32_d
 # ./pdsp.c:1777:         ps_var->f32_alpha * f32_sin_val + ps_var->f32_beta * f32_cos_val;
	movq	16(%rbp), %rax	 # ps_var, tmp117
	movss	(%rax), %xmm0	 # ps_var_21(D)->f32_alpha, _15
 # ./pdsp.c:1777:         ps_var->f32_alpha * f32_sin_val + ps_var->f32_beta * f32_cos_val;
	movaps	%xmm0, %xmm1	 # _15, _15
	mulss	48(%rbp), %xmm1	 # f32_sin_val, _15
 # ./pdsp.c:1777:         ps_var->f32_alpha * f32_sin_val + ps_var->f32_beta * f32_cos_val;
	movq	16(%rbp), %rax	 # ps_var, tmp118
	movss	4(%rax), %xmm0	 # ps_var_21(D)->f32_beta, _17
 # ./pdsp.c:1777:         ps_var->f32_alpha * f32_sin_val + ps_var->f32_beta * f32_cos_val;
	mulss	56(%rbp), %xmm0	 # f32_cos_val, _18
 # ./pdsp.c:1777:         ps_var->f32_alpha * f32_sin_val + ps_var->f32_beta * f32_cos_val;
	addss	%xmm1, %xmm0	 # _16, _19
 # ./pdsp.c:1776:     ps_var->f32_q =
	movq	16(%rbp), %rax	 # ps_var, tmp119
	movss	%xmm0, 12(%rax)	 # _19, ps_var_21(D)->f32_q
 # ./pdsp.c:1778: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_dq0_abc_init
	.def	pdsp_dq0_abc_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_dq0_abc_init
pdsp_dq0_abc_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_var, ps_var
 # ./pdsp.c:1782:     PDSP_ASSERT(ps_var != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_var
	jne	.L493	 #,
 # ./pdsp.c:1782:     PDSP_ASSERT(ps_var != NULL);
	movl	$1782, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp82
	movq	%rax, %rdx	 # tmp82,
	leaq	.LC1(%rip), %rax	 #, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	printf	 #
.L493:
 # ./pdsp.c:1783:     ps_var->f32_alpha = 0.0f;
	movq	16(%rbp), %rax	 # ps_var, tmp84
	pxor	%xmm0, %xmm0	 # tmp85
	movss	%xmm0, (%rax)	 # tmp85, ps_var_2(D)->f32_alpha
 # ./pdsp.c:1784:     ps_var->f32_beta = 0.0f;
	movq	16(%rbp), %rax	 # ps_var, tmp86
	pxor	%xmm0, %xmm0	 # tmp87
	movss	%xmm0, 4(%rax)	 # tmp87, ps_var_2(D)->f32_beta
 # ./pdsp.c:1785:     ps_var->f32_a = 0.0f;
	movq	16(%rbp), %rax	 # ps_var, tmp88
	pxor	%xmm0, %xmm0	 # tmp89
	movss	%xmm0, 8(%rax)	 # tmp89, ps_var_2(D)->f32_a
 # ./pdsp.c:1786:     ps_var->f32_b = 0.0f;
	movq	16(%rbp), %rax	 # ps_var, tmp90
	pxor	%xmm0, %xmm0	 # tmp91
	movss	%xmm0, 12(%rax)	 # tmp91, ps_var_2(D)->f32_b
 # ./pdsp.c:1787:     ps_var->f32_c = 0.0f;
	movq	16(%rbp), %rax	 # ps_var, tmp92
	pxor	%xmm0, %xmm0	 # tmp93
	movss	%xmm0, 16(%rax)	 # tmp93, ps_var_2(D)->f32_c
 # ./pdsp.c:1788: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_dq0_abc
	.def	pdsp_dq0_abc;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_dq0_abc
pdsp_dq0_abc:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_var, ps_var
	movss	%xmm1, 24(%rbp)	 # f32_d, f32_d
	movss	%xmm2, 32(%rbp)	 # f32_q, f32_q
	movss	%xmm3, 40(%rbp)	 # f32_z, f32_z
 # ./pdsp.c:1794:     PDSP_ASSERT(ps_var != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_var
	jne	.L495	 #,
 # ./pdsp.c:1794:     PDSP_ASSERT(ps_var != NULL);
	movl	$1794, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp105
	movq	%rax, %rdx	 # tmp105,
	leaq	.LC1(%rip), %rax	 #, tmp106
	movq	%rax, %rcx	 # tmp106,
	call	printf	 #
.L495:
 # ./pdsp.c:1795:     ps_var->f32_alpha = f32_d * f32_cos_val - f32_q * f32_sin_val;
	movss	24(%rbp), %xmm0	 # f32_d, tmp107
	mulss	56(%rbp), %xmm0	 # f32_cos_val, _1
 # ./pdsp.c:1795:     ps_var->f32_alpha = f32_d * f32_cos_val - f32_q * f32_sin_val;
	movss	32(%rbp), %xmm1	 # f32_q, tmp108
	mulss	48(%rbp), %xmm1	 # f32_sin_val, _2
 # ./pdsp.c:1795:     ps_var->f32_alpha = f32_d * f32_cos_val - f32_q * f32_sin_val;
	subss	%xmm1, %xmm0	 # _2, _3
 # ./pdsp.c:1795:     ps_var->f32_alpha = f32_d * f32_cos_val - f32_q * f32_sin_val;
	movq	16(%rbp), %rax	 # ps_var, tmp109
	movss	%xmm0, (%rax)	 # _3, ps_var_25(D)->f32_alpha
 # ./pdsp.c:1796:     ps_var->f32_beta = f32_d * f32_sin_val + f32_q * f32_cos_val;
	movss	24(%rbp), %xmm0	 # f32_d, tmp110
	movaps	%xmm0, %xmm1	 # tmp110, tmp110
	mulss	48(%rbp), %xmm1	 # f32_sin_val, tmp110
 # ./pdsp.c:1796:     ps_var->f32_beta = f32_d * f32_sin_val + f32_q * f32_cos_val;
	movss	32(%rbp), %xmm0	 # f32_q, tmp111
	mulss	56(%rbp), %xmm0	 # f32_cos_val, _5
 # ./pdsp.c:1796:     ps_var->f32_beta = f32_d * f32_sin_val + f32_q * f32_cos_val;
	addss	%xmm1, %xmm0	 # _4, _6
 # ./pdsp.c:1796:     ps_var->f32_beta = f32_d * f32_sin_val + f32_q * f32_cos_val;
	movq	16(%rbp), %rax	 # ps_var, tmp112
	movss	%xmm0, 4(%rax)	 # _6, ps_var_25(D)->f32_beta
 # ./pdsp.c:1797:     ps_var->f32_a = ps_var->f32_alpha + 0.5f * f32_z;
	movq	16(%rbp), %rax	 # ps_var, tmp113
	movss	(%rax), %xmm1	 # ps_var_25(D)->f32_alpha, _7
 # ./pdsp.c:1797:     ps_var->f32_a = ps_var->f32_alpha + 0.5f * f32_z;
	movss	40(%rbp), %xmm2	 # f32_z, tmp114
	movss	.LC3(%rip), %xmm0	 #, tmp115
	mulss	%xmm2, %xmm0	 # tmp114, _8
 # ./pdsp.c:1797:     ps_var->f32_a = ps_var->f32_alpha + 0.5f * f32_z;
	addss	%xmm1, %xmm0	 # _7, _9
 # ./pdsp.c:1797:     ps_var->f32_a = ps_var->f32_alpha + 0.5f * f32_z;
	movq	16(%rbp), %rax	 # ps_var, tmp116
	movss	%xmm0, 8(%rax)	 # _9, ps_var_25(D)->f32_a
 # ./pdsp.c:1798:     ps_var->f32_b = -0.5f * ps_var->f32_alpha + 0.8660254f * ps_var->f32_beta +
	movq	16(%rbp), %rax	 # ps_var, tmp117
	movss	(%rax), %xmm1	 # ps_var_25(D)->f32_alpha, _10
 # ./pdsp.c:1798:     ps_var->f32_b = -0.5f * ps_var->f32_alpha + 0.8660254f * ps_var->f32_beta +
	movss	.LC17(%rip), %xmm0	 #, tmp118
	mulss	%xmm0, %xmm1	 # tmp118, _11
 # ./pdsp.c:1798:     ps_var->f32_b = -0.5f * ps_var->f32_alpha + 0.8660254f * ps_var->f32_beta +
	movq	16(%rbp), %rax	 # ps_var, tmp119
	movss	4(%rax), %xmm2	 # ps_var_25(D)->f32_beta, _12
 # ./pdsp.c:1798:     ps_var->f32_b = -0.5f * ps_var->f32_alpha + 0.8660254f * ps_var->f32_beta +
	movss	.LC18(%rip), %xmm0	 #, tmp120
	mulss	%xmm2, %xmm0	 # _12, _13
 # ./pdsp.c:1798:     ps_var->f32_b = -0.5f * ps_var->f32_alpha + 0.8660254f * ps_var->f32_beta +
	addss	%xmm0, %xmm1	 # _13, _14
 # ./pdsp.c:1799:                     0.5f * f32_z;
	movss	40(%rbp), %xmm2	 # f32_z, tmp121
	movss	.LC3(%rip), %xmm0	 #, tmp122
	mulss	%xmm2, %xmm0	 # tmp121, _15
 # ./pdsp.c:1798:     ps_var->f32_b = -0.5f * ps_var->f32_alpha + 0.8660254f * ps_var->f32_beta +
	addss	%xmm1, %xmm0	 # _14, _16
 # ./pdsp.c:1798:     ps_var->f32_b = -0.5f * ps_var->f32_alpha + 0.8660254f * ps_var->f32_beta +
	movq	16(%rbp), %rax	 # ps_var, tmp123
	movss	%xmm0, 12(%rax)	 # _16, ps_var_25(D)->f32_b
 # ./pdsp.c:1800:     ps_var->f32_c = -0.5f * ps_var->f32_alpha - 0.8660254f * ps_var->f32_beta +
	movq	16(%rbp), %rax	 # ps_var, tmp124
	movss	(%rax), %xmm1	 # ps_var_25(D)->f32_alpha, _17
 # ./pdsp.c:1800:     ps_var->f32_c = -0.5f * ps_var->f32_alpha - 0.8660254f * ps_var->f32_beta +
	movss	.LC17(%rip), %xmm0	 #, tmp125
	mulss	%xmm1, %xmm0	 # _17, _18
 # ./pdsp.c:1800:     ps_var->f32_c = -0.5f * ps_var->f32_alpha - 0.8660254f * ps_var->f32_beta +
	movq	16(%rbp), %rax	 # ps_var, tmp126
	movss	4(%rax), %xmm2	 # ps_var_25(D)->f32_beta, _19
 # ./pdsp.c:1800:     ps_var->f32_c = -0.5f * ps_var->f32_alpha - 0.8660254f * ps_var->f32_beta +
	movss	.LC18(%rip), %xmm1	 #, tmp127
	mulss	%xmm1, %xmm2	 # tmp127, _20
 # ./pdsp.c:1800:     ps_var->f32_c = -0.5f * ps_var->f32_alpha - 0.8660254f * ps_var->f32_beta +
	movaps	%xmm0, %xmm1	 # _18, _18
	subss	%xmm2, %xmm1	 # _20, _18
 # ./pdsp.c:1801:                     0.5f * f32_z;
	movss	40(%rbp), %xmm2	 # f32_z, tmp128
	movss	.LC3(%rip), %xmm0	 #, tmp129
	mulss	%xmm2, %xmm0	 # tmp128, _22
 # ./pdsp.c:1800:     ps_var->f32_c = -0.5f * ps_var->f32_alpha - 0.8660254f * ps_var->f32_beta +
	addss	%xmm1, %xmm0	 # _21, _23
 # ./pdsp.c:1800:     ps_var->f32_c = -0.5f * ps_var->f32_alpha - 0.8660254f * ps_var->f32_beta +
	movq	16(%rbp), %rax	 # ps_var, tmp130
	movss	%xmm0, 16(%rax)	 # _23, ps_var_25(D)->f32_c
 # ./pdsp.c:1802: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_1p1z_pi_c2d
	.def	pdsp_1p1z_pi_c2d;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_1p1z_pi_c2d
pdsp_1p1z_pi_c2d:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movss	%xmm0, 16(%rbp)	 # f32_kp, f32_kp
	movss	%xmm1, 24(%rbp)	 # f32_wc, f32_wc
	movq	%r8, 32(%rbp)	 # ps_coeff_out, ps_coeff_out
	movss	%xmm3, 40(%rbp)	 # f32_ts, f32_ts
 # ./pdsp.c:1808:     PDSP_ASSERT(ps_coeff_out != NULL);
	cmpq	$0, 32(%rbp)	 #, ps_coeff_out
	jne	.L497	 #,
 # ./pdsp.c:1808:     PDSP_ASSERT(ps_coeff_out != NULL);
	movl	$1808, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp83
	movq	%rax, %rdx	 # tmp83,
	leaq	.LC1(%rip), %rax	 #, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	printf	 #
.L497:
 # ./pdsp.c:1810:         .f32_b0 = f32_kp * f32_wc, .f32_b1 = f32_kp, .f32_a0 = 0.0f, .f32_a1 = 1.0f};
	movss	16(%rbp), %xmm0	 # f32_kp, tmp85
	mulss	24(%rbp), %xmm0	 # f32_wc, _1
 # ./pdsp.c:1809:     pdsp_1p1z_t s_in = {
	movss	%xmm0, -16(%rbp)	 # _1, s_in.f32_b0
	movss	16(%rbp), %xmm0	 # f32_kp, tmp86
	movss	%xmm0, -12(%rbp)	 # tmp86, s_in.f32_b1
	pxor	%xmm0, %xmm0	 # tmp87
	movss	%xmm0, -8(%rbp)	 # tmp87, s_in.f32_a0
	movss	.LC4(%rip), %xmm0	 #, tmp88
	movss	%xmm0, -4(%rbp)	 # tmp88, s_in.f32_a1
 # ./pdsp.c:1811:     pdsp_1p1z_c2d(&s_in, ps_coeff_out, f32_ts);
	movss	40(%rbp), %xmm0	 # f32_ts, tmp89
	movq	32(%rbp), %rdx	 # ps_coeff_out, tmp90
	leaq	-16(%rbp), %rax	 #, tmp91
	movaps	%xmm0, %xmm2	 # tmp89,
	movq	%rax, %rcx	 # tmp91,
	call	pdsp_1p1z_c2d	 #
 # ./pdsp.c:1812: }
	nop	
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_pi_b2d
	.def	pdsp_pi_b2d;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_pi_b2d
pdsp_pi_b2d:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movss	%xmm0, 16(%rbp)	 # f32_kp, f32_kp
	movss	%xmm1, 24(%rbp)	 # f32_wc, f32_wc
	movss	%xmm2, 32(%rbp)	 # f32_kp_to_ks, f32_kp_to_ks
	movss	%xmm3, 40(%rbp)	 # f32_kp_to_ka, f32_kp_to_ka
 # ./pdsp.c:1819:     PDSP_ASSERT(ps_param_in_out != NULL);
	cmpq	$0, 48(%rbp)	 #, ps_param_in_out
	jne	.L499	 #,
 # ./pdsp.c:1819:     PDSP_ASSERT(ps_param_in_out != NULL);
	movl	$1819, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp86
	movq	%rax, %rdx	 # tmp86,
	leaq	.LC1(%rip), %rax	 #, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	printf	 #
.L499:
 # ./pdsp.c:1820:     ps_param_in_out->f32_kp = f32_kp;
	movq	48(%rbp), %rax	 # ps_param_in_out, tmp88
	movss	16(%rbp), %xmm0	 # f32_kp, tmp89
	movss	%xmm0, (%rax)	 # tmp89, ps_param_in_out_6(D)->f32_kp
 # ./pdsp.c:1821:     ps_param_in_out->f32_ki = f32_wc * f32_kp * f32_ts;
	movss	24(%rbp), %xmm0	 # f32_wc, tmp90
	mulss	16(%rbp), %xmm0	 # f32_kp, _1
 # ./pdsp.c:1821:     ps_param_in_out->f32_ki = f32_wc * f32_kp * f32_ts;
	mulss	56(%rbp), %xmm0	 # f32_ts, _2
 # ./pdsp.c:1821:     ps_param_in_out->f32_ki = f32_wc * f32_kp * f32_ts;
	movq	48(%rbp), %rax	 # ps_param_in_out, tmp91
	movss	%xmm0, 4(%rax)	 # _2, ps_param_in_out_6(D)->f32_ki
 # ./pdsp.c:1822:     ps_param_in_out->f32_ks = f32_kp * f32_kp_to_ks;
	movss	16(%rbp), %xmm0	 # f32_kp, tmp92
	mulss	32(%rbp), %xmm0	 # f32_kp_to_ks, _3
 # ./pdsp.c:1822:     ps_param_in_out->f32_ks = f32_kp * f32_kp_to_ks;
	movq	48(%rbp), %rax	 # ps_param_in_out, tmp93
	movss	%xmm0, 8(%rax)	 # _3, ps_param_in_out_6(D)->f32_ks
 # ./pdsp.c:1823:     ps_param_in_out->f32_ka = f32_kp * f32_kp_to_ka;
	movss	16(%rbp), %xmm0	 # f32_kp, tmp94
	mulss	40(%rbp), %xmm0	 # f32_kp_to_ka, _4
 # ./pdsp.c:1823:     ps_param_in_out->f32_ka = f32_kp * f32_kp_to_ka;
	movq	48(%rbp), %rax	 # ps_param_in_out, tmp95
	movss	%xmm0, 12(%rax)	 # _4, ps_param_in_out_6(D)->f32_ka
 # ./pdsp.c:1824: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_pi_clear
	.def	pdsp_pi_clear;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_pi_clear
pdsp_pi_clear:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1829:     PDSP_ASSERT(ps_data != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_data
	jne	.L501	 #,
 # ./pdsp.c:1829:     PDSP_ASSERT(ps_data != NULL);
	movl	$1829, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp87
	movq	%rax, %rdx	 # tmp87,
	leaq	.LC1(%rip), %rax	 #, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	printf	 #
.L501:
 # ./pdsp.c:1830:     ps_var = ps_data->ps_var;
	movq	16(%rbp), %rax	 # ps_data, tmp89
	movq	16(%rax), %rax	 # ps_data_7(D)->ps_var, _1
 # ./pdsp.c:1830:     ps_var = ps_data->ps_var;
	movq	%rax, ps_var.16(%rip)	 # _1, ps_var
 # ./pdsp.c:1831:     ps_var->i16_active = 0U;
	movq	ps_var.16(%rip), %rax	 # ps_var, ps_var.133_2
 # ./pdsp.c:1831:     ps_var->i16_active = 0U;
	movw	$0, (%rax)	 #, ps_var.133_2->i16_active
 # ./pdsp.c:1832:     ps_var->i16_param_idx = 0U;
	movq	ps_var.16(%rip), %rax	 # ps_var, ps_var.134_3
 # ./pdsp.c:1832:     ps_var->i16_param_idx = 0U;
	movw	$0, 2(%rax)	 #, ps_var.134_3->i16_param_idx
 # ./pdsp.c:1833:     ps_var->f32_x0 = 0.0f;
	movq	ps_var.16(%rip), %rax	 # ps_var, ps_var.135_4
 # ./pdsp.c:1833:     ps_var->f32_x0 = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp90
	movss	%xmm0, 4(%rax)	 # tmp90, ps_var.135_4->f32_x0
 # ./pdsp.c:1834:     ps_var->f32_x1 = 0.0f;
	movq	ps_var.16(%rip), %rax	 # ps_var, ps_var.136_5
 # ./pdsp.c:1834:     ps_var->f32_x1 = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp91
	movss	%xmm0, 8(%rax)	 # tmp91, ps_var.136_5->f32_x1
 # ./pdsp.c:1835: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_pi
	.def	pdsp_pi;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_pi
pdsp_pi:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_error, f32_error
 # ./pdsp.c:1843:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L503	 #,
 # ./pdsp.c:1843:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	movq	16(%rbp), %rax	 # ps_data, tmp121
	movq	16(%rax), %rax	 # ps_data_39(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	je	.L503	 #,
 # ./pdsp.c:1843:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	movq	16(%rbp), %rax	 # ps_data, tmp122
	movq	(%rax), %rax	 # ps_data_39(D)->pas_param, _2
	testq	%rax, %rax	 # _2
	jne	.L504	 #,
.L503:
 # ./pdsp.c:1843:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	movl	$1843, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp123
	movq	%rax, %rdx	 # tmp123,
	leaq	.LC1(%rip), %rax	 #, tmp124
	movq	%rax, %rcx	 # tmp124,
	call	printf	 #
.L504:
 # ./pdsp.c:1845:     ps_var = ps_data->ps_var;
	movq	16(%rbp), %rax	 # ps_data, tmp125
	movq	16(%rax), %rax	 # ps_data_39(D)->ps_var, _3
 # ./pdsp.c:1845:     ps_var = ps_data->ps_var;
	movq	%rax, ps_var.15(%rip)	 # _3, ps_var
 # ./pdsp.c:1846:     ps_param = &ps_data->pas_param[ps_var->i16_param_idx];
	movq	16(%rbp), %rax	 # ps_data, tmp126
	movq	(%rax), %rdx	 # ps_data_39(D)->pas_param, _4
 # ./pdsp.c:1846:     ps_param = &ps_data->pas_param[ps_var->i16_param_idx];
	movq	ps_var.15(%rip), %rax	 # ps_var, ps_var.137_5
	movzwl	2(%rax), %eax	 # ps_var.137_5->i16_param_idx, _6
	movswq	%ax, %rax	 # _6, _7
 # ./pdsp.c:1846:     ps_param = &ps_data->pas_param[ps_var->i16_param_idx];
	salq	$4, %rax	 #, _8
 # ./pdsp.c:1846:     ps_param = &ps_data->pas_param[ps_var->i16_param_idx];
	addq	%rdx, %rax	 # _4, _9
 # ./pdsp.c:1846:     ps_param = &ps_data->pas_param[ps_var->i16_param_idx];
	movq	%rax, ps_param.14(%rip)	 # _9, ps_param
 # ./pdsp.c:1848:     ps_var->f32_x0 +=
	movq	ps_var.15(%rip), %rax	 # ps_var, ps_var.138_10
	movss	4(%rax), %xmm1	 # ps_var.138_10->f32_x0, _11
 # ./pdsp.c:1849:         (f32_error * ps_param->f32_ki + ps_var->f32_x1 * ps_param->f32_ks);
	movq	ps_param.14(%rip), %rax	 # ps_param, ps_param.139_12
	movss	4(%rax), %xmm0	 # ps_param.139_12->f32_ki, _13
 # ./pdsp.c:1849:         (f32_error * ps_param->f32_ki + ps_var->f32_x1 * ps_param->f32_ks);
	movaps	%xmm0, %xmm2	 # _13, _13
	mulss	24(%rbp), %xmm2	 # f32_error, _13
 # ./pdsp.c:1849:         (f32_error * ps_param->f32_ki + ps_var->f32_x1 * ps_param->f32_ks);
	movq	ps_var.15(%rip), %rax	 # ps_var, ps_var.140_15
	movss	8(%rax), %xmm3	 # ps_var.140_15->f32_x1, _16
 # ./pdsp.c:1849:         (f32_error * ps_param->f32_ki + ps_var->f32_x1 * ps_param->f32_ks);
	movq	ps_param.14(%rip), %rax	 # ps_param, ps_param.141_17
	movss	8(%rax), %xmm0	 # ps_param.141_17->f32_ks, _18
 # ./pdsp.c:1849:         (f32_error * ps_param->f32_ki + ps_var->f32_x1 * ps_param->f32_ks);
	mulss	%xmm3, %xmm0	 # _16, _19
 # ./pdsp.c:1849:         (f32_error * ps_param->f32_ki + ps_var->f32_x1 * ps_param->f32_ks);
	addss	%xmm2, %xmm0	 # _14, _20
 # ./pdsp.c:1848:     ps_var->f32_x0 +=
	movq	ps_var.15(%rip), %rax	 # ps_var, ps_var.142_21
 # ./pdsp.c:1848:     ps_var->f32_x0 +=
	addss	%xmm1, %xmm0	 # _11, _22
	movss	%xmm0, 4(%rax)	 # _22, ps_var.142_21->f32_x0
 # ./pdsp.c:1851:     f32_sum = f32_error * ps_param->f32_kp + ps_var->f32_x0;
	movq	ps_param.14(%rip), %rax	 # ps_param, ps_param.143_23
	movss	(%rax), %xmm0	 # ps_param.143_23->f32_kp, _24
 # ./pdsp.c:1851:     f32_sum = f32_error * ps_param->f32_kp + ps_var->f32_x0;
	movaps	%xmm0, %xmm1	 # _24, _24
	mulss	24(%rbp), %xmm1	 # f32_error, _24
 # ./pdsp.c:1851:     f32_sum = f32_error * ps_param->f32_kp + ps_var->f32_x0;
	movq	ps_var.15(%rip), %rax	 # ps_var, ps_var.144_26
	movss	4(%rax), %xmm0	 # ps_var.144_26->f32_x0, _27
 # ./pdsp.c:1851:     f32_sum = f32_error * ps_param->f32_kp + ps_var->f32_x0;
	addss	%xmm1, %xmm0	 # _25, _28
 # ./pdsp.c:1851:     f32_sum = f32_error * ps_param->f32_kp + ps_var->f32_x0;
	movss	%xmm0, f32_sum.13(%rip)	 # _28, f32_sum
 # ./pdsp.c:1853:     f32_out = pdsp_maxf(ps_data->f32_min, pdsp_minf(ps_data->f32_max, f32_sum));
	movl	f32_sum.13(%rip), %eax	 # f32_sum, f32_sum.145_29
	movq	16(%rbp), %rdx	 # ps_data, tmp127
	movss	24(%rdx), %xmm0	 # ps_data_39(D)->f32_max, _30
	movaps	%xmm0, %xmm1	 # _30,
	movd	%eax, %xmm0	 # f32_sum.145_29,
	call	fminf	 #
	movd	%xmm0, %eax	 #, _31
 # ./pdsp.c:1853:     f32_out = pdsp_maxf(ps_data->f32_min, pdsp_minf(ps_data->f32_max, f32_sum));
	movq	16(%rbp), %rdx	 # ps_data, tmp128
	movss	28(%rdx), %xmm0	 # ps_data_39(D)->f32_min, _32
	movaps	%xmm0, %xmm1	 # _32,
	movd	%eax, %xmm0	 # _31,
	call	fmaxf	 #
	movd	%xmm0, %eax	 #, _33
 # ./pdsp.c:1853:     f32_out = pdsp_maxf(ps_data->f32_min, pdsp_minf(ps_data->f32_max, f32_sum));
	movl	%eax, f32_out.12(%rip)	 # _33, f32_out
 # ./pdsp.c:1855:     ps_var->f32_x1 = f32_out - f32_sum;
	movss	f32_out.12(%rip), %xmm0	 # f32_out, f32_out.146_34
	movss	f32_sum.13(%rip), %xmm1	 # f32_sum, f32_sum.147_35
 # ./pdsp.c:1855:     ps_var->f32_x1 = f32_out - f32_sum;
	movq	ps_var.15(%rip), %rax	 # ps_var, ps_var.148_36
 # ./pdsp.c:1855:     ps_var->f32_x1 = f32_out - f32_sum;
	subss	%xmm1, %xmm0	 # f32_sum.147_35, _37
 # ./pdsp.c:1855:     ps_var->f32_x1 = f32_out - f32_sum;
	movss	%xmm0, 8(%rax)	 # _37, ps_var.148_36->f32_x1
 # ./pdsp.c:1856:     return f32_out;
	movss	f32_out.12(%rip), %xmm0	 # f32_out, _49
 # ./pdsp.c:1857: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_pi2
	.def	pdsp_pi2;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_pi2
pdsp_pi2:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movq	%rdx, 24(%rbp)	 # f32_error, f32_error
 # ./pdsp.c:1865:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L507	 #,
 # ./pdsp.c:1865:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	movq	16(%rbp), %rax	 # ps_data, tmp167
	movq	16(%rax), %rax	 # ps_data_85(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	je	.L507	 #,
 # ./pdsp.c:1865:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	movq	16(%rbp), %rax	 # ps_data, tmp168
	movq	(%rax), %rax	 # ps_data_85(D)->pas_param, _2
	testq	%rax, %rax	 # _2
	jne	.L508	 #,
.L507:
 # ./pdsp.c:1865:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	movl	$1865, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp169
	movq	%rax, %rdx	 # tmp169,
	leaq	.LC1(%rip), %rax	 #, tmp170
	movq	%rax, %rcx	 # tmp170,
	call	printf	 #
.L508:
 # ./pdsp.c:1867:     ps_var = ps_data->ps_var;
	movq	16(%rbp), %rax	 # ps_data, tmp171
	movq	16(%rax), %rax	 # ps_data_85(D)->ps_var, _3
 # ./pdsp.c:1867:     ps_var = ps_data->ps_var;
	movq	%rax, ps_var.11(%rip)	 # _3, ps_var
 # ./pdsp.c:1868:     ps_param = &ps_data->pas_param[ps_var->i16_param_idx];
	movq	16(%rbp), %rax	 # ps_data, tmp172
	movq	(%rax), %rdx	 # ps_data_85(D)->pas_param, _4
 # ./pdsp.c:1868:     ps_param = &ps_data->pas_param[ps_var->i16_param_idx];
	movq	ps_var.11(%rip), %rax	 # ps_var, ps_var.149_5
	movzwl	2(%rax), %eax	 # ps_var.149_5->i16_param_idx, _6
	movswq	%ax, %rax	 # _6, _7
 # ./pdsp.c:1868:     ps_param = &ps_data->pas_param[ps_var->i16_param_idx];
	salq	$4, %rax	 #, _8
 # ./pdsp.c:1868:     ps_param = &ps_data->pas_param[ps_var->i16_param_idx];
	addq	%rdx, %rax	 # _4, _9
 # ./pdsp.c:1868:     ps_param = &ps_data->pas_param[ps_var->i16_param_idx];
	movq	%rax, ps_param.10(%rip)	 # _9, ps_param
 # ./pdsp.c:1870:     ps_var->i16_active = 0;
	movq	ps_var.11(%rip), %rax	 # ps_var, ps_var.150_10
 # ./pdsp.c:1870:     ps_var->i16_active = 0;
	movw	$0, (%rax)	 #, ps_var.150_10->i16_active
 # ./pdsp.c:1871:     ps_var->i16_active += (f32_error[0] * ps_param[0].f32_ka) >
	movq	ps_var.11(%rip), %rax	 # ps_var, ps_var.151_11
	movzwl	(%rax), %eax	 # ps_var.151_11->i16_active, _12
	movl	%eax, %edx	 # _12, _13
 # ./pdsp.c:1871:     ps_var->i16_active += (f32_error[0] * ps_param[0].f32_ka) >
	movq	24(%rbp), %rax	 # f32_error, tmp173
	movss	(%rax), %xmm1	 # *f32_error_91(D), _14
 # ./pdsp.c:1871:     ps_var->i16_active += (f32_error[0] * ps_param[0].f32_ka) >
	movq	ps_param.10(%rip), %rax	 # ps_param, ps_param.152_15
 # ./pdsp.c:1871:     ps_var->i16_active += (f32_error[0] * ps_param[0].f32_ka) >
	movss	12(%rax), %xmm0	 # ps_param.152_15->f32_ka, _16
 # ./pdsp.c:1871:     ps_var->i16_active += (f32_error[0] * ps_param[0].f32_ka) >
	mulss	%xmm1, %xmm0	 # _14, _17
 # ./pdsp.c:1872:                           (f32_error[1] * ps_param[1].f32_ka);
	movq	24(%rbp), %rax	 # f32_error, tmp174
	addq	$4, %rax	 #, _18
	movss	(%rax), %xmm2	 # *_18, _19
 # ./pdsp.c:1872:                           (f32_error[1] * ps_param[1].f32_ka);
	movq	ps_param.10(%rip), %rax	 # ps_param, ps_param.153_20
	addq	$16, %rax	 #, _21
 # ./pdsp.c:1872:                           (f32_error[1] * ps_param[1].f32_ka);
	movss	12(%rax), %xmm1	 # _21->f32_ka, _22
 # ./pdsp.c:1872:                           (f32_error[1] * ps_param[1].f32_ka);
	mulss	%xmm2, %xmm1	 # _19, _23
 # ./pdsp.c:1871:     ps_var->i16_active += (f32_error[0] * ps_param[0].f32_ka) >
	comiss	%xmm1, %xmm0	 # _23, _17
	seta	%al	 #, _24
	movzbl	%al, %eax	 # _24, _25
 # ./pdsp.c:1871:     ps_var->i16_active += (f32_error[0] * ps_param[0].f32_ka) >
	addl	%eax, %edx	 # _25, _26
 # ./pdsp.c:1871:     ps_var->i16_active += (f32_error[0] * ps_param[0].f32_ka) >
	movq	ps_var.11(%rip), %rax	 # ps_var, ps_var.154_27
 # ./pdsp.c:1871:     ps_var->i16_active += (f32_error[0] * ps_param[0].f32_ka) >
	movw	%dx, (%rax)	 # _28, ps_var.154_27->i16_active
 # ./pdsp.c:1874:     ps_var->f32_x0 +=
	movq	ps_var.11(%rip), %rax	 # ps_var, ps_var.155_29
	movss	4(%rax), %xmm1	 # ps_var.155_29->f32_x0, _30
 # ./pdsp.c:1875:         (f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_ki +
	movq	ps_var.11(%rip), %rax	 # ps_var, ps_var.156_31
	movzwl	(%rax), %eax	 # ps_var.156_31->i16_active, _32
	movswq	%ax, %rax	 # _32, _33
 # ./pdsp.c:1875:         (f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_ki +
	leaq	0(,%rax,4), %rdx	 #, _34
	movq	24(%rbp), %rax	 # f32_error, tmp175
	addq	%rdx, %rax	 # _34, _35
	movss	(%rax), %xmm2	 # *_35, _36
 # ./pdsp.c:1875:         (f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_ki +
	movq	ps_param.10(%rip), %rdx	 # ps_param, ps_param.157_37
 # ./pdsp.c:1875:         (f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_ki +
	movq	ps_var.11(%rip), %rax	 # ps_var, ps_var.158_38
	movzwl	(%rax), %eax	 # ps_var.158_38->i16_active, _39
	movswq	%ax, %rax	 # _39, _40
 # ./pdsp.c:1875:         (f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_ki +
	salq	$4, %rax	 #, _41
	addq	%rdx, %rax	 # ps_param.157_37, _42
 # ./pdsp.c:1875:         (f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_ki +
	movss	4(%rax), %xmm0	 # _42->f32_ki, _43
 # ./pdsp.c:1875:         (f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_ki +
	mulss	%xmm0, %xmm2	 # _43, _44
 # ./pdsp.c:1876:          ps_var->f32_x1 * ps_param[ps_var->i16_active].f32_ks);
	movq	ps_var.11(%rip), %rax	 # ps_var, ps_var.159_45
	movss	8(%rax), %xmm3	 # ps_var.159_45->f32_x1, _46
 # ./pdsp.c:1876:          ps_var->f32_x1 * ps_param[ps_var->i16_active].f32_ks);
	movq	ps_param.10(%rip), %rdx	 # ps_param, ps_param.160_47
 # ./pdsp.c:1876:          ps_var->f32_x1 * ps_param[ps_var->i16_active].f32_ks);
	movq	ps_var.11(%rip), %rax	 # ps_var, ps_var.161_48
	movzwl	(%rax), %eax	 # ps_var.161_48->i16_active, _49
	movswq	%ax, %rax	 # _49, _50
 # ./pdsp.c:1876:          ps_var->f32_x1 * ps_param[ps_var->i16_active].f32_ks);
	salq	$4, %rax	 #, _51
	addq	%rdx, %rax	 # ps_param.160_47, _52
 # ./pdsp.c:1876:          ps_var->f32_x1 * ps_param[ps_var->i16_active].f32_ks);
	movss	8(%rax), %xmm0	 # _52->f32_ks, _53
 # ./pdsp.c:1876:          ps_var->f32_x1 * ps_param[ps_var->i16_active].f32_ks);
	mulss	%xmm3, %xmm0	 # _46, _54
 # ./pdsp.c:1875:         (f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_ki +
	addss	%xmm2, %xmm0	 # _44, _55
 # ./pdsp.c:1874:     ps_var->f32_x0 +=
	movq	ps_var.11(%rip), %rax	 # ps_var, ps_var.162_56
 # ./pdsp.c:1874:     ps_var->f32_x0 +=
	addss	%xmm1, %xmm0	 # _30, _57
	movss	%xmm0, 4(%rax)	 # _57, ps_var.162_56->f32_x0
 # ./pdsp.c:1879:         f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_kp +
	movq	ps_var.11(%rip), %rax	 # ps_var, ps_var.163_58
	movzwl	(%rax), %eax	 # ps_var.163_58->i16_active, _59
	movswq	%ax, %rax	 # _59, _60
 # ./pdsp.c:1879:         f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_kp +
	leaq	0(,%rax,4), %rdx	 #, _61
	movq	24(%rbp), %rax	 # f32_error, tmp176
	addq	%rdx, %rax	 # _61, _62
	movss	(%rax), %xmm1	 # *_62, _63
 # ./pdsp.c:1879:         f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_kp +
	movq	ps_param.10(%rip), %rdx	 # ps_param, ps_param.164_64
 # ./pdsp.c:1879:         f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_kp +
	movq	ps_var.11(%rip), %rax	 # ps_var, ps_var.165_65
	movzwl	(%rax), %eax	 # ps_var.165_65->i16_active, _66
	movswq	%ax, %rax	 # _66, _67
 # ./pdsp.c:1879:         f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_kp +
	salq	$4, %rax	 #, _68
	addq	%rdx, %rax	 # ps_param.164_64, _69
 # ./pdsp.c:1879:         f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_kp +
	movss	(%rax), %xmm0	 # _69->f32_kp, _70
 # ./pdsp.c:1879:         f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_kp +
	mulss	%xmm0, %xmm1	 # _70, _71
 # ./pdsp.c:1880:         ps_var->f32_x0;
	movq	ps_var.11(%rip), %rax	 # ps_var, ps_var.166_72
	movss	4(%rax), %xmm0	 # ps_var.166_72->f32_x0, _73
 # ./pdsp.c:1879:         f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_kp +
	addss	%xmm1, %xmm0	 # _71, _74
 # ./pdsp.c:1878:     f32_sum =
	movss	%xmm0, f32_sum.9(%rip)	 # _74, f32_sum
 # ./pdsp.c:1882:     f32_out = pdsp_maxf(ps_data->f32_min, pdsp_minf(ps_data->f32_max, f32_sum));
	movl	f32_sum.9(%rip), %eax	 # f32_sum, f32_sum.167_75
	movq	16(%rbp), %rdx	 # ps_data, tmp177
	movss	24(%rdx), %xmm0	 # ps_data_85(D)->f32_max, _76
	movaps	%xmm0, %xmm1	 # _76,
	movd	%eax, %xmm0	 # f32_sum.167_75,
	call	fminf	 #
	movd	%xmm0, %eax	 #, _77
 # ./pdsp.c:1882:     f32_out = pdsp_maxf(ps_data->f32_min, pdsp_minf(ps_data->f32_max, f32_sum));
	movq	16(%rbp), %rdx	 # ps_data, tmp178
	movss	28(%rdx), %xmm0	 # ps_data_85(D)->f32_min, _78
	movaps	%xmm0, %xmm1	 # _78,
	movd	%eax, %xmm0	 # _77,
	call	fmaxf	 #
	movd	%xmm0, %eax	 #, _79
 # ./pdsp.c:1882:     f32_out = pdsp_maxf(ps_data->f32_min, pdsp_minf(ps_data->f32_max, f32_sum));
	movl	%eax, f32_out.8(%rip)	 # _79, f32_out
 # ./pdsp.c:1884:     ps_var->f32_x1 = f32_out - f32_sum;
	movss	f32_out.8(%rip), %xmm0	 # f32_out, f32_out.168_80
	movss	f32_sum.9(%rip), %xmm1	 # f32_sum, f32_sum.169_81
 # ./pdsp.c:1884:     ps_var->f32_x1 = f32_out - f32_sum;
	movq	ps_var.11(%rip), %rax	 # ps_var, ps_var.170_82
 # ./pdsp.c:1884:     ps_var->f32_x1 = f32_out - f32_sum;
	subss	%xmm1, %xmm0	 # f32_sum.169_81, _83
 # ./pdsp.c:1884:     ps_var->f32_x1 = f32_out - f32_sum;
	movss	%xmm0, 8(%rax)	 # _83, ps_var.170_82->f32_x1
 # ./pdsp.c:1885:     return f32_out;
	movss	f32_out.8(%rip), %xmm0	 # f32_out, _97
 # ./pdsp.c:1886: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_pi4
	.def	pdsp_pi4;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_pi4
pdsp_pi4:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movq	%rdx, 24(%rbp)	 # f32_error, f32_error
 # ./pdsp.c:1894:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L511	 #,
 # ./pdsp.c:1894:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	movq	16(%rbp), %rax	 # ps_data, tmp207
	movq	16(%rax), %rax	 # ps_data_125(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	je	.L511	 #,
 # ./pdsp.c:1894:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	movq	16(%rbp), %rax	 # ps_data, tmp208
	movq	(%rax), %rax	 # ps_data_125(D)->pas_param, _2
	testq	%rax, %rax	 # _2
	jne	.L512	 #,
.L511:
 # ./pdsp.c:1894:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	movl	$1894, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp209
	movq	%rax, %rdx	 # tmp209,
	leaq	.LC1(%rip), %rax	 #, tmp210
	movq	%rax, %rcx	 # tmp210,
	call	printf	 #
.L512:
 # ./pdsp.c:1896:     ps_var = ps_data->ps_var;
	movq	16(%rbp), %rax	 # ps_data, tmp211
	movq	16(%rax), %rax	 # ps_data_125(D)->ps_var, _3
 # ./pdsp.c:1896:     ps_var = ps_data->ps_var;
	movq	%rax, ps_var.7(%rip)	 # _3, ps_var
 # ./pdsp.c:1897:     ps_param = &ps_data->pas_param[ps_var->i16_param_idx];
	movq	16(%rbp), %rax	 # ps_data, tmp212
	movq	(%rax), %rdx	 # ps_data_125(D)->pas_param, _4
 # ./pdsp.c:1897:     ps_param = &ps_data->pas_param[ps_var->i16_param_idx];
	movq	ps_var.7(%rip), %rax	 # ps_var, ps_var.171_5
	movzwl	2(%rax), %eax	 # ps_var.171_5->i16_param_idx, _6
	movswq	%ax, %rax	 # _6, _7
 # ./pdsp.c:1897:     ps_param = &ps_data->pas_param[ps_var->i16_param_idx];
	salq	$4, %rax	 #, _8
 # ./pdsp.c:1897:     ps_param = &ps_data->pas_param[ps_var->i16_param_idx];
	addq	%rdx, %rax	 # _4, _9
 # ./pdsp.c:1897:     ps_param = &ps_data->pas_param[ps_var->i16_param_idx];
	movq	%rax, ps_param.6(%rip)	 # _9, ps_param
 # ./pdsp.c:1899:     ps_var->i16_active = 0;
	movq	ps_var.7(%rip), %rax	 # ps_var, ps_var.172_10
 # ./pdsp.c:1899:     ps_var->i16_active = 0;
	movw	$0, (%rax)	 #, ps_var.172_10->i16_active
 # ./pdsp.c:1900:     ps_var->i16_active += (f32_error[0] * ps_param[0].f32_ka) >
	movq	ps_var.7(%rip), %rax	 # ps_var, ps_var.173_11
	movzwl	(%rax), %eax	 # ps_var.173_11->i16_active, _12
	movl	%eax, %edx	 # _12, _13
 # ./pdsp.c:1900:     ps_var->i16_active += (f32_error[0] * ps_param[0].f32_ka) >
	movq	24(%rbp), %rax	 # f32_error, tmp213
	movss	(%rax), %xmm1	 # *f32_error_131(D), _14
 # ./pdsp.c:1900:     ps_var->i16_active += (f32_error[0] * ps_param[0].f32_ka) >
	movq	ps_param.6(%rip), %rax	 # ps_param, ps_param.174_15
 # ./pdsp.c:1900:     ps_var->i16_active += (f32_error[0] * ps_param[0].f32_ka) >
	movss	12(%rax), %xmm0	 # ps_param.174_15->f32_ka, _16
 # ./pdsp.c:1900:     ps_var->i16_active += (f32_error[0] * ps_param[0].f32_ka) >
	mulss	%xmm1, %xmm0	 # _14, _17
 # ./pdsp.c:1901:                           (f32_error[1] * ps_param[1].f32_ka);
	movq	24(%rbp), %rax	 # f32_error, tmp214
	addq	$4, %rax	 #, _18
	movss	(%rax), %xmm2	 # *_18, _19
 # ./pdsp.c:1901:                           (f32_error[1] * ps_param[1].f32_ka);
	movq	ps_param.6(%rip), %rax	 # ps_param, ps_param.175_20
	addq	$16, %rax	 #, _21
 # ./pdsp.c:1901:                           (f32_error[1] * ps_param[1].f32_ka);
	movss	12(%rax), %xmm1	 # _21->f32_ka, _22
 # ./pdsp.c:1901:                           (f32_error[1] * ps_param[1].f32_ka);
	mulss	%xmm2, %xmm1	 # _19, _23
 # ./pdsp.c:1900:     ps_var->i16_active += (f32_error[0] * ps_param[0].f32_ka) >
	comiss	%xmm1, %xmm0	 # _23, _17
	seta	%al	 #, _24
	movzbl	%al, %eax	 # _24, _25
 # ./pdsp.c:1900:     ps_var->i16_active += (f32_error[0] * ps_param[0].f32_ka) >
	addl	%eax, %edx	 # _25, _26
 # ./pdsp.c:1900:     ps_var->i16_active += (f32_error[0] * ps_param[0].f32_ka) >
	movq	ps_var.7(%rip), %rax	 # ps_var, ps_var.176_27
 # ./pdsp.c:1900:     ps_var->i16_active += (f32_error[0] * ps_param[0].f32_ka) >
	movw	%dx, (%rax)	 # _28, ps_var.176_27->i16_active
 # ./pdsp.c:1902:     ps_var->i16_active += (f32_error[1] * ps_param[1].f32_ka) >
	movq	ps_var.7(%rip), %rax	 # ps_var, ps_var.177_29
	movzwl	(%rax), %eax	 # ps_var.177_29->i16_active, _30
	movl	%eax, %edx	 # _30, _31
 # ./pdsp.c:1902:     ps_var->i16_active += (f32_error[1] * ps_param[1].f32_ka) >
	movq	24(%rbp), %rax	 # f32_error, tmp215
	addq	$4, %rax	 #, _32
	movss	(%rax), %xmm1	 # *_32, _33
 # ./pdsp.c:1902:     ps_var->i16_active += (f32_error[1] * ps_param[1].f32_ka) >
	movq	ps_param.6(%rip), %rax	 # ps_param, ps_param.178_34
	addq	$16, %rax	 #, _35
 # ./pdsp.c:1902:     ps_var->i16_active += (f32_error[1] * ps_param[1].f32_ka) >
	movss	12(%rax), %xmm0	 # _35->f32_ka, _36
 # ./pdsp.c:1902:     ps_var->i16_active += (f32_error[1] * ps_param[1].f32_ka) >
	mulss	%xmm1, %xmm0	 # _33, _37
 # ./pdsp.c:1903:                           (f32_error[2] * ps_param[2].f32_ka);
	movq	24(%rbp), %rax	 # f32_error, tmp216
	addq	$8, %rax	 #, _38
	movss	(%rax), %xmm2	 # *_38, _39
 # ./pdsp.c:1903:                           (f32_error[2] * ps_param[2].f32_ka);
	movq	ps_param.6(%rip), %rax	 # ps_param, ps_param.179_40
	addq	$32, %rax	 #, _41
 # ./pdsp.c:1903:                           (f32_error[2] * ps_param[2].f32_ka);
	movss	12(%rax), %xmm1	 # _41->f32_ka, _42
 # ./pdsp.c:1903:                           (f32_error[2] * ps_param[2].f32_ka);
	mulss	%xmm2, %xmm1	 # _39, _43
 # ./pdsp.c:1902:     ps_var->i16_active += (f32_error[1] * ps_param[1].f32_ka) >
	comiss	%xmm1, %xmm0	 # _43, _37
	seta	%al	 #, _44
	movzbl	%al, %eax	 # _44, _45
 # ./pdsp.c:1902:     ps_var->i16_active += (f32_error[1] * ps_param[1].f32_ka) >
	addl	%eax, %edx	 # _45, _46
 # ./pdsp.c:1902:     ps_var->i16_active += (f32_error[1] * ps_param[1].f32_ka) >
	movq	ps_var.7(%rip), %rax	 # ps_var, ps_var.180_47
 # ./pdsp.c:1902:     ps_var->i16_active += (f32_error[1] * ps_param[1].f32_ka) >
	movw	%dx, (%rax)	 # _48, ps_var.180_47->i16_active
 # ./pdsp.c:1904:     ps_var->i16_active += (f32_error[2] * ps_param[2].f32_ka) >
	movq	ps_var.7(%rip), %rax	 # ps_var, ps_var.181_49
	movzwl	(%rax), %eax	 # ps_var.181_49->i16_active, _50
	movl	%eax, %edx	 # _50, _51
 # ./pdsp.c:1904:     ps_var->i16_active += (f32_error[2] * ps_param[2].f32_ka) >
	movq	24(%rbp), %rax	 # f32_error, tmp217
	addq	$8, %rax	 #, _52
	movss	(%rax), %xmm1	 # *_52, _53
 # ./pdsp.c:1904:     ps_var->i16_active += (f32_error[2] * ps_param[2].f32_ka) >
	movq	ps_param.6(%rip), %rax	 # ps_param, ps_param.182_54
	addq	$32, %rax	 #, _55
 # ./pdsp.c:1904:     ps_var->i16_active += (f32_error[2] * ps_param[2].f32_ka) >
	movss	12(%rax), %xmm0	 # _55->f32_ka, _56
 # ./pdsp.c:1904:     ps_var->i16_active += (f32_error[2] * ps_param[2].f32_ka) >
	mulss	%xmm1, %xmm0	 # _53, _57
 # ./pdsp.c:1905:                           (f32_error[3] * ps_param[3].f32_ka);
	movq	24(%rbp), %rax	 # f32_error, tmp218
	addq	$12, %rax	 #, _58
	movss	(%rax), %xmm2	 # *_58, _59
 # ./pdsp.c:1905:                           (f32_error[3] * ps_param[3].f32_ka);
	movq	ps_param.6(%rip), %rax	 # ps_param, ps_param.183_60
	addq	$48, %rax	 #, _61
 # ./pdsp.c:1905:                           (f32_error[3] * ps_param[3].f32_ka);
	movss	12(%rax), %xmm1	 # _61->f32_ka, _62
 # ./pdsp.c:1905:                           (f32_error[3] * ps_param[3].f32_ka);
	mulss	%xmm2, %xmm1	 # _59, _63
 # ./pdsp.c:1904:     ps_var->i16_active += (f32_error[2] * ps_param[2].f32_ka) >
	comiss	%xmm1, %xmm0	 # _63, _57
	seta	%al	 #, _64
	movzbl	%al, %eax	 # _64, _65
 # ./pdsp.c:1904:     ps_var->i16_active += (f32_error[2] * ps_param[2].f32_ka) >
	addl	%eax, %edx	 # _65, _66
 # ./pdsp.c:1904:     ps_var->i16_active += (f32_error[2] * ps_param[2].f32_ka) >
	movq	ps_var.7(%rip), %rax	 # ps_var, ps_var.184_67
 # ./pdsp.c:1904:     ps_var->i16_active += (f32_error[2] * ps_param[2].f32_ka) >
	movw	%dx, (%rax)	 # _68, ps_var.184_67->i16_active
 # ./pdsp.c:1907:     ps_var->f32_x0 +=
	movq	ps_var.7(%rip), %rax	 # ps_var, ps_var.185_69
	movss	4(%rax), %xmm1	 # ps_var.185_69->f32_x0, _70
 # ./pdsp.c:1908:         (f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_ki +
	movq	ps_var.7(%rip), %rax	 # ps_var, ps_var.186_71
	movzwl	(%rax), %eax	 # ps_var.186_71->i16_active, _72
	movswq	%ax, %rax	 # _72, _73
 # ./pdsp.c:1908:         (f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_ki +
	leaq	0(,%rax,4), %rdx	 #, _74
	movq	24(%rbp), %rax	 # f32_error, tmp219
	addq	%rdx, %rax	 # _74, _75
	movss	(%rax), %xmm2	 # *_75, _76
 # ./pdsp.c:1908:         (f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_ki +
	movq	ps_param.6(%rip), %rdx	 # ps_param, ps_param.187_77
 # ./pdsp.c:1908:         (f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_ki +
	movq	ps_var.7(%rip), %rax	 # ps_var, ps_var.188_78
	movzwl	(%rax), %eax	 # ps_var.188_78->i16_active, _79
	movswq	%ax, %rax	 # _79, _80
 # ./pdsp.c:1908:         (f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_ki +
	salq	$4, %rax	 #, _81
	addq	%rdx, %rax	 # ps_param.187_77, _82
 # ./pdsp.c:1908:         (f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_ki +
	movss	4(%rax), %xmm0	 # _82->f32_ki, _83
 # ./pdsp.c:1908:         (f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_ki +
	mulss	%xmm0, %xmm2	 # _83, _84
 # ./pdsp.c:1909:          ps_var->f32_x1 * ps_param[ps_var->i16_active].f32_ks);
	movq	ps_var.7(%rip), %rax	 # ps_var, ps_var.189_85
	movss	8(%rax), %xmm3	 # ps_var.189_85->f32_x1, _86
 # ./pdsp.c:1909:          ps_var->f32_x1 * ps_param[ps_var->i16_active].f32_ks);
	movq	ps_param.6(%rip), %rdx	 # ps_param, ps_param.190_87
 # ./pdsp.c:1909:          ps_var->f32_x1 * ps_param[ps_var->i16_active].f32_ks);
	movq	ps_var.7(%rip), %rax	 # ps_var, ps_var.191_88
	movzwl	(%rax), %eax	 # ps_var.191_88->i16_active, _89
	movswq	%ax, %rax	 # _89, _90
 # ./pdsp.c:1909:          ps_var->f32_x1 * ps_param[ps_var->i16_active].f32_ks);
	salq	$4, %rax	 #, _91
	addq	%rdx, %rax	 # ps_param.190_87, _92
 # ./pdsp.c:1909:          ps_var->f32_x1 * ps_param[ps_var->i16_active].f32_ks);
	movss	8(%rax), %xmm0	 # _92->f32_ks, _93
 # ./pdsp.c:1909:          ps_var->f32_x1 * ps_param[ps_var->i16_active].f32_ks);
	mulss	%xmm3, %xmm0	 # _86, _94
 # ./pdsp.c:1908:         (f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_ki +
	addss	%xmm2, %xmm0	 # _84, _95
 # ./pdsp.c:1907:     ps_var->f32_x0 +=
	movq	ps_var.7(%rip), %rax	 # ps_var, ps_var.192_96
 # ./pdsp.c:1907:     ps_var->f32_x0 +=
	addss	%xmm1, %xmm0	 # _70, _97
	movss	%xmm0, 4(%rax)	 # _97, ps_var.192_96->f32_x0
 # ./pdsp.c:1912:         f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_kp +
	movq	ps_var.7(%rip), %rax	 # ps_var, ps_var.193_98
	movzwl	(%rax), %eax	 # ps_var.193_98->i16_active, _99
	movswq	%ax, %rax	 # _99, _100
 # ./pdsp.c:1912:         f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_kp +
	leaq	0(,%rax,4), %rdx	 #, _101
	movq	24(%rbp), %rax	 # f32_error, tmp220
	addq	%rdx, %rax	 # _101, _102
	movss	(%rax), %xmm1	 # *_102, _103
 # ./pdsp.c:1912:         f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_kp +
	movq	ps_param.6(%rip), %rdx	 # ps_param, ps_param.194_104
 # ./pdsp.c:1912:         f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_kp +
	movq	ps_var.7(%rip), %rax	 # ps_var, ps_var.195_105
	movzwl	(%rax), %eax	 # ps_var.195_105->i16_active, _106
	movswq	%ax, %rax	 # _106, _107
 # ./pdsp.c:1912:         f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_kp +
	salq	$4, %rax	 #, _108
	addq	%rdx, %rax	 # ps_param.194_104, _109
 # ./pdsp.c:1912:         f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_kp +
	movss	(%rax), %xmm0	 # _109->f32_kp, _110
 # ./pdsp.c:1912:         f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_kp +
	mulss	%xmm0, %xmm1	 # _110, _111
 # ./pdsp.c:1913:         ps_var->f32_x0;
	movq	ps_var.7(%rip), %rax	 # ps_var, ps_var.196_112
	movss	4(%rax), %xmm0	 # ps_var.196_112->f32_x0, _113
 # ./pdsp.c:1912:         f32_error[ps_var->i16_active] * ps_param[ps_var->i16_active].f32_kp +
	addss	%xmm1, %xmm0	 # _111, _114
 # ./pdsp.c:1911:     f32_sum =
	movss	%xmm0, f32_sum.5(%rip)	 # _114, f32_sum
 # ./pdsp.c:1915:     f32_out = pdsp_maxf(ps_data->f32_min, pdsp_minf(ps_data->f32_max, f32_sum));
	movl	f32_sum.5(%rip), %eax	 # f32_sum, f32_sum.197_115
	movq	16(%rbp), %rdx	 # ps_data, tmp221
	movss	24(%rdx), %xmm0	 # ps_data_125(D)->f32_max, _116
	movaps	%xmm0, %xmm1	 # _116,
	movd	%eax, %xmm0	 # f32_sum.197_115,
	call	fminf	 #
	movd	%xmm0, %eax	 #, _117
 # ./pdsp.c:1915:     f32_out = pdsp_maxf(ps_data->f32_min, pdsp_minf(ps_data->f32_max, f32_sum));
	movq	16(%rbp), %rdx	 # ps_data, tmp222
	movss	28(%rdx), %xmm0	 # ps_data_125(D)->f32_min, _118
	movaps	%xmm0, %xmm1	 # _118,
	movd	%eax, %xmm0	 # _117,
	call	fmaxf	 #
	movd	%xmm0, %eax	 #, _119
 # ./pdsp.c:1915:     f32_out = pdsp_maxf(ps_data->f32_min, pdsp_minf(ps_data->f32_max, f32_sum));
	movl	%eax, f32_out.4(%rip)	 # _119, f32_out
 # ./pdsp.c:1917:     ps_var->f32_x1 = f32_out - f32_sum;
	movss	f32_out.4(%rip), %xmm0	 # f32_out, f32_out.198_120
	movss	f32_sum.5(%rip), %xmm1	 # f32_sum, f32_sum.199_121
 # ./pdsp.c:1917:     ps_var->f32_x1 = f32_out - f32_sum;
	movq	ps_var.7(%rip), %rax	 # ps_var, ps_var.200_122
 # ./pdsp.c:1917:     ps_var->f32_x1 = f32_out - f32_sum;
	subss	%xmm1, %xmm0	 # f32_sum.199_121, _123
 # ./pdsp.c:1917:     ps_var->f32_x1 = f32_out - f32_sum;
	movss	%xmm0, 8(%rax)	 # _123, ps_var.200_122->f32_x1
 # ./pdsp.c:1918:     return f32_out;
	movss	f32_out.4(%rip), %xmm0	 # f32_out, _139
 # ./pdsp.c:1919: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_pi_set
	.def	pdsp_pi_set;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_pi_set
pdsp_pi_set:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$40, %rsp	 #,
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 40(%rbp)	 # f32_out, f32_out
 # ./pdsp.c:1923:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 32(%rbp)	 #, ps_data
	je	.L515	 #,
 # ./pdsp.c:1923:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	32(%rbp), %rax	 # ps_data, tmp89
	movq	16(%rax), %rax	 # ps_data_9(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L516	 #,
.L515:
 # ./pdsp.c:1923:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$1923, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp90
	movq	%rax, %rdx	 # tmp90,
	leaq	.LC1(%rip), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	printf	 #
.L516:
 # ./pdsp.c:1926:         pdsp_maxf(ps_data->f32_min, pdsp_minf(ps_data->f32_max, f32_out));
	movq	32(%rbp), %rax	 # ps_data, tmp92
	movss	24(%rax), %xmm0	 # ps_data_9(D)->f32_max, _2
	movl	40(%rbp), %eax	 # f32_out, tmp93
	movaps	%xmm0, %xmm1	 # _2,
	movd	%eax, %xmm0	 # tmp93,
	call	fminf	 #
	movd	%xmm0, %eax	 #, _3
 # ./pdsp.c:1926:         pdsp_maxf(ps_data->f32_min, pdsp_minf(ps_data->f32_max, f32_out));
	movq	32(%rbp), %rdx	 # ps_data, tmp94
	movss	28(%rdx), %xmm0	 # ps_data_9(D)->f32_min, _4
 # ./pdsp.c:1925:     ps_data->ps_var->f32_x0 =
	movq	32(%rbp), %rdx	 # ps_data, tmp95
	movq	16(%rdx), %rbx	 # ps_data_9(D)->ps_var, _5
 # ./pdsp.c:1926:         pdsp_maxf(ps_data->f32_min, pdsp_minf(ps_data->f32_max, f32_out));
	movaps	%xmm0, %xmm1	 # _4,
	movd	%eax, %xmm0	 # _3,
	call	fmaxf	 #
	movd	%xmm0, %eax	 #, _6
 # ./pdsp.c:1925:     ps_data->ps_var->f32_x0 =
	movl	%eax, 4(%rbx)	 # _6, _5->f32_x0
 # ./pdsp.c:1928:     ps_data->ps_var->f32_x1 = 0.0f;
	movq	32(%rbp), %rax	 # ps_data, tmp96
	movq	16(%rax), %rax	 # ps_data_9(D)->ps_var, _7
 # ./pdsp.c:1928:     ps_data->ps_var->f32_x1 = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp97
	movss	%xmm0, 8(%rax)	 # tmp97, _7->f32_x1
 # ./pdsp.c:1929: }
	nop	
	addq	$40, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_setp_init
	.def	pdsp_setp_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_setp_init
pdsp_setp_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1933:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L518	 #,
 # ./pdsp.c:1933:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	16(%rbp), %rax	 # ps_data, tmp85
	movq	(%rax), %rax	 # ps_data_5(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L519	 #,
.L518:
 # ./pdsp.c:1933:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$1933, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp86
	movq	%rax, %rdx	 # tmp86,
	leaq	.LC1(%rip), %rax	 #, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	printf	 #
.L519:
 # ./pdsp.c:1934:     ps_data->ps_var->f32_x1 = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp88
	movq	(%rax), %rax	 # ps_data_5(D)->ps_var, _2
 # ./pdsp.c:1934:     ps_data->ps_var->f32_x1 = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp89
	movss	%xmm0, (%rax)	 # tmp89, _2->f32_x1
 # ./pdsp.c:1935:     ps_data->ps_var->f32_dest = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp90
	movq	(%rax), %rax	 # ps_data_5(D)->ps_var, _3
 # ./pdsp.c:1935:     ps_data->ps_var->f32_dest = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp91
	movss	%xmm0, 4(%rax)	 # tmp91, _3->f32_dest
 # ./pdsp.c:1936: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_setp_ramp
	.def	pdsp_setp_ramp;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_setp_ramp
pdsp_setp_ramp:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$56, %rsp	 #,
	.seh_stackalloc	56
	leaq	32(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 32
	movups	%xmm6, 0(%rbp)	 #,
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movq	%rcx, 48(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1941:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 48(%rbp)	 #, ps_data
	je	.L521	 #,
 # ./pdsp.c:1941:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	48(%rbp), %rax	 # ps_data, tmp101
	movq	(%rax), %rax	 # ps_data_19(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L522	 #,
.L521:
 # ./pdsp.c:1941:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$1941, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp102
	movq	%rax, %rdx	 # tmp102,
	leaq	.LC1(%rip), %rax	 #, tmp103
	movq	%rax, %rcx	 # tmp103,
	call	printf	 #
.L522:
 # ./pdsp.c:1942:     ps_var = ps_data->ps_var;
	movq	48(%rbp), %rax	 # ps_data, tmp104
	movq	(%rax), %rax	 # ps_data_19(D)->ps_var, _2
 # ./pdsp.c:1942:     ps_var = ps_data->ps_var;
	movq	%rax, ps_var.3(%rip)	 # _2, ps_var
 # ./pdsp.c:1944:         ps_var->f32_x1 + pdsp_maxf(pdsp_minf(ps_var->f32_dest - ps_var->f32_x1,
	movq	ps_var.3(%rip), %rax	 # ps_var, ps_var.201_3
	movss	(%rax), %xmm6	 # ps_var.201_3->f32_x1, _4
 # ./pdsp.c:1944:         ps_var->f32_x1 + pdsp_maxf(pdsp_minf(ps_var->f32_dest - ps_var->f32_x1,
	movq	48(%rbp), %rax	 # ps_data, tmp105
	movss	16(%rax), %xmm0	 # ps_data_19(D)->f32_step, _5
	movss	.LC16(%rip), %xmm1	 #, tmp106
	xorps	%xmm1, %xmm0	 # tmp106, _5
	movd	%xmm0, %ebx	 # _5, _6
	movq	48(%rbp), %rax	 # ps_data, tmp107
	movl	16(%rax), %eax	 # ps_data_19(D)->f32_step, _7
	movq	ps_var.3(%rip), %rdx	 # ps_var, ps_var.202_8
	movss	4(%rdx), %xmm0	 # ps_var.202_8->f32_dest, _9
	movq	ps_var.3(%rip), %rdx	 # ps_var, ps_var.203_10
	movss	(%rdx), %xmm1	 # ps_var.203_10->f32_x1, _11
	subss	%xmm1, %xmm0	 # _11, _12
	movaps	%xmm0, %xmm1	 # _12,
	movd	%eax, %xmm0	 # _7,
	call	fminf	 #
	movd	%xmm0, %eax	 #, _13
 # ./pdsp.c:1944:         ps_var->f32_x1 + pdsp_maxf(pdsp_minf(ps_var->f32_dest - ps_var->f32_x1,
	movd	%eax, %xmm1	 # _13,
	movd	%ebx, %xmm0	 # _6,
	call	fmaxf	 #
 # ./pdsp.c:1943:     ps_var->f32_x1 =
	movq	ps_var.3(%rip), %rax	 # ps_var, ps_var.204_15
 # ./pdsp.c:1944:         ps_var->f32_x1 + pdsp_maxf(pdsp_minf(ps_var->f32_dest - ps_var->f32_x1,
	addss	%xmm6, %xmm0	 # _4, _16
 # ./pdsp.c:1943:     ps_var->f32_x1 =
	movss	%xmm0, (%rax)	 # _16, ps_var.204_15->f32_x1
 # ./pdsp.c:1947:     return ps_var->f32_x1;
	movq	ps_var.3(%rip), %rax	 # ps_var, ps_var.205_17
	movss	(%rax), %xmm0	 # ps_var.205_17->f32_x1, _24
 # ./pdsp.c:1948: }
	movups	0(%rbp), %xmm6	 #,
	addq	$56, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_setp_exp
	.def	pdsp_setp_exp;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_setp_exp
pdsp_setp_exp:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1953:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L525	 #,
 # ./pdsp.c:1953:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	16(%rbp), %rax	 # ps_data, tmp98
	movq	(%rax), %rax	 # ps_data_16(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L526	 #,
.L525:
 # ./pdsp.c:1953:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$1953, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp99
	movq	%rax, %rdx	 # tmp99,
	leaq	.LC1(%rip), %rax	 #, tmp100
	movq	%rax, %rcx	 # tmp100,
	call	printf	 #
.L526:
 # ./pdsp.c:1954:     ps_var = ps_data->ps_var;
	movq	16(%rbp), %rax	 # ps_data, tmp101
	movq	(%rax), %rax	 # ps_data_16(D)->ps_var, _2
 # ./pdsp.c:1954:     ps_var = ps_data->ps_var;
	movq	%rax, ps_var.2(%rip)	 # _2, ps_var
 # ./pdsp.c:1955:     ps_var->f32_x1 = ps_var->f32_x1 +
	movq	ps_var.2(%rip), %rax	 # ps_var, ps_var.206_3
	movss	(%rax), %xmm1	 # ps_var.206_3->f32_x1, _4
 # ./pdsp.c:1956:                      ps_data->f32_step * (ps_var->f32_dest - ps_var->f32_x1);
	movq	16(%rbp), %rax	 # ps_data, tmp102
	movss	16(%rax), %xmm2	 # ps_data_16(D)->f32_step, _5
 # ./pdsp.c:1956:                      ps_data->f32_step * (ps_var->f32_dest - ps_var->f32_x1);
	movq	ps_var.2(%rip), %rax	 # ps_var, ps_var.207_6
	movss	4(%rax), %xmm0	 # ps_var.207_6->f32_dest, _7
 # ./pdsp.c:1956:                      ps_data->f32_step * (ps_var->f32_dest - ps_var->f32_x1);
	movq	ps_var.2(%rip), %rax	 # ps_var, ps_var.208_8
	movss	(%rax), %xmm3	 # ps_var.208_8->f32_x1, _9
 # ./pdsp.c:1956:                      ps_data->f32_step * (ps_var->f32_dest - ps_var->f32_x1);
	subss	%xmm3, %xmm0	 # _9, _10
 # ./pdsp.c:1956:                      ps_data->f32_step * (ps_var->f32_dest - ps_var->f32_x1);
	mulss	%xmm2, %xmm0	 # _5, _11
 # ./pdsp.c:1955:     ps_var->f32_x1 = ps_var->f32_x1 +
	movq	ps_var.2(%rip), %rax	 # ps_var, ps_var.209_12
 # ./pdsp.c:1955:     ps_var->f32_x1 = ps_var->f32_x1 +
	addss	%xmm1, %xmm0	 # _4, _13
 # ./pdsp.c:1955:     ps_var->f32_x1 = ps_var->f32_x1 +
	movss	%xmm0, (%rax)	 # _13, ps_var.209_12->f32_x1
 # ./pdsp.c:1957:     return ps_var->f32_x1;
	movq	ps_var.2(%rip), %rax	 # ps_var, ps_var.210_14
	movss	(%rax), %xmm0	 # ps_var.210_14->f32_x1, _21
 # ./pdsp.c:1958: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_setp_set_dest
	.def	pdsp_setp_set_dest;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_setp_set_dest
pdsp_setp_set_dest:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rsi	 #
	.seh_pushreg	%rsi
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	leaq	32(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 40(%rbp)	 # f32_dest, f32_dest
 # ./pdsp.c:1963:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 32(%rbp)	 #, ps_data
	je	.L529	 #,
 # ./pdsp.c:1963:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	32(%rbp), %rax	 # ps_data, tmp90
	movq	(%rax), %rax	 # ps_data_8(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L530	 #,
.L529:
 # ./pdsp.c:1963:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$1963, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp91
	movq	%rax, %rdx	 # tmp91,
	leaq	.LC1(%rip), %rax	 #, tmp92
	movq	%rax, %rcx	 # tmp92,
	call	printf	 #
.L530:
 # ./pdsp.c:1965:         pdsp_maxf(pdsp_minf(f32_dest, ps_data->f32_max), ps_data->f32_min);
	movq	32(%rbp), %rax	 # ps_data, tmp93
	movl	8(%rax), %ebx	 # ps_data_8(D)->f32_min, _2
	movq	32(%rbp), %rax	 # ps_data, tmp94
	movss	12(%rax), %xmm0	 # ps_data_8(D)->f32_max, _3
	movl	40(%rbp), %eax	 # f32_dest, tmp95
	movaps	%xmm0, %xmm1	 # _3,
	movd	%eax, %xmm0	 # tmp95,
	call	fminf	 #
	movd	%xmm0, %edx	 #, _4
 # ./pdsp.c:1964:     ps_data->ps_var->f32_dest =
	movq	32(%rbp), %rax	 # ps_data, tmp96
	movq	(%rax), %rsi	 # ps_data_8(D)->ps_var, _5
 # ./pdsp.c:1965:         pdsp_maxf(pdsp_minf(f32_dest, ps_data->f32_max), ps_data->f32_min);
	movd	%edx, %xmm1	 # _4,
	movd	%ebx, %xmm0	 # _2,
	call	fmaxf	 #
	movd	%xmm0, %eax	 #, _6
 # ./pdsp.c:1964:     ps_data->ps_var->f32_dest =
	movl	%eax, 4(%rsi)	 # _6, _5->f32_dest
 # ./pdsp.c:1966:     return PDSP_OK;
	movl	$0, %eax	 #, _13
 # ./pdsp.c:1967: }
	addq	$32, %rsp	 #,
	popq	%rbx	 #
	popq	%rsi	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_setp_step
	.def	pdsp_setp_step;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_setp_step
pdsp_setp_step:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1971:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L533	 #,
 # ./pdsp.c:1971:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	16(%rbp), %rax	 # ps_data, tmp89
	movq	(%rax), %rax	 # ps_data_7(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L534	 #,
.L533:
 # ./pdsp.c:1971:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$1971, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp90
	movq	%rax, %rdx	 # tmp90,
	leaq	.LC1(%rip), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	printf	 #
.L534:
 # ./pdsp.c:1972:     ps_data->ps_var->f32_x1 = ps_data->ps_var->f32_dest;
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movq	(%rax), %rdx	 # ps_data_7(D)->ps_var, _2
 # ./pdsp.c:1972:     ps_data->ps_var->f32_x1 = ps_data->ps_var->f32_dest;
	movq	16(%rbp), %rax	 # ps_data, tmp93
	movq	(%rax), %rax	 # ps_data_7(D)->ps_var, _3
 # ./pdsp.c:1972:     ps_data->ps_var->f32_x1 = ps_data->ps_var->f32_dest;
	movss	4(%rdx), %xmm0	 # _2->f32_dest, _4
 # ./pdsp.c:1972:     ps_data->ps_var->f32_x1 = ps_data->ps_var->f32_dest;
	movss	%xmm0, (%rax)	 # _4, _3->f32_x1
 # ./pdsp.c:1973:     return ps_data->ps_var->f32_x1;
	movq	16(%rbp), %rax	 # ps_data, tmp94
	movq	(%rax), %rax	 # ps_data_7(D)->ps_var, _5
 # ./pdsp.c:1973:     return ps_data->ps_var->f32_x1;
	movss	(%rax), %xmm0	 # _5->f32_x1, _11
 # ./pdsp.c:1974: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_setp_reset
	.def	pdsp_setp_reset;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_setp_reset
pdsp_setp_reset:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rsi	 #
	.seh_pushreg	%rsi
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	leaq	32(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 40(%rbp)	 # f32_value, f32_value
 # ./pdsp.c:1979:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 32(%rbp)	 #, ps_data
	je	.L537	 #,
 # ./pdsp.c:1979:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	32(%rbp), %rax	 # ps_data, tmp91
	movq	(%rax), %rax	 # ps_data_9(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L538	 #,
.L537:
 # ./pdsp.c:1979:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$1979, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp92
	movq	%rax, %rdx	 # tmp92,
	leaq	.LC1(%rip), %rax	 #, tmp93
	movq	%rax, %rcx	 # tmp93,
	call	printf	 #
.L538:
 # ./pdsp.c:1981:         pdsp_maxf(pdsp_minf(f32_value, ps_data->f32_max), ps_data->f32_min);
	movq	32(%rbp), %rax	 # ps_data, tmp94
	movl	8(%rax), %ebx	 # ps_data_9(D)->f32_min, _2
	movq	32(%rbp), %rax	 # ps_data, tmp95
	movss	12(%rax), %xmm0	 # ps_data_9(D)->f32_max, _3
	movl	40(%rbp), %eax	 # f32_value, tmp96
	movaps	%xmm0, %xmm1	 # _3,
	movd	%eax, %xmm0	 # tmp96,
	call	fminf	 #
	movd	%xmm0, %edx	 #, _4
 # ./pdsp.c:1980:     ps_data->ps_var->f32_x1 =
	movq	32(%rbp), %rax	 # ps_data, tmp97
	movq	(%rax), %rsi	 # ps_data_9(D)->ps_var, _5
 # ./pdsp.c:1981:         pdsp_maxf(pdsp_minf(f32_value, ps_data->f32_max), ps_data->f32_min);
	movd	%edx, %xmm1	 # _4,
	movd	%ebx, %xmm0	 # _2,
	call	fmaxf	 #
	movd	%xmm0, %eax	 #, _6
 # ./pdsp.c:1980:     ps_data->ps_var->f32_x1 =
	movl	%eax, (%rsi)	 # _6, _5->f32_x1
 # ./pdsp.c:1982:     return ps_data->ps_var->f32_x1;
	movq	32(%rbp), %rax	 # ps_data, tmp98
	movq	(%rax), %rax	 # ps_data_9(D)->ps_var, _7
 # ./pdsp.c:1982:     return ps_data->ps_var->f32_x1;
	movss	(%rax), %xmm0	 # _7->f32_x1, _14
 # ./pdsp.c:1983: }
	addq	$32, %rsp	 #,
	popq	%rbx	 #
	popq	%rsi	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_setp_reached
	.def	pdsp_setp_reached;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_setp_reached
pdsp_setp_reached:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_tol, f32_tol
 # ./pdsp.c:1988:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L541	 #,
 # ./pdsp.c:1988:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	16(%rbp), %rax	 # ps_data, tmp91
	movq	(%rax), %rax	 # ps_data_9(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L542	 #,
.L541:
 # ./pdsp.c:1988:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$1988, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp92
	movq	%rax, %rdx	 # tmp92,
	leaq	.LC1(%rip), %rax	 #, tmp93
	movq	%rax, %rcx	 # tmp93,
	call	printf	 #
.L542:
 # ./pdsp.c:1989:     return (pdsp_bool_t)(pdsp_absf(ps_data->ps_var->f32_x1 -
	movq	16(%rbp), %rax	 # ps_data, tmp94
	movq	(%rax), %rax	 # ps_data_9(D)->ps_var, _2
	movss	(%rax), %xmm0	 # _2->f32_x1, _3
	movq	16(%rbp), %rax	 # ps_data, tmp95
	movq	(%rax), %rax	 # ps_data_9(D)->ps_var, _4
	movss	4(%rax), %xmm1	 # _4->f32_dest, _5
	subss	%xmm1, %xmm0	 # _5, _6
	movss	.LC19(%rip), %xmm1	 #, tmp96
	andps	%xmm0, %xmm1	 # _6, _7
 # ./pdsp.c:1989:     return (pdsp_bool_t)(pdsp_absf(ps_data->ps_var->f32_x1 -
	movss	24(%rbp), %xmm0	 # f32_tol, tmp97
	comiss	%xmm1, %xmm0	 # _7, tmp97
	seta	%al	 #, _13
 # ./pdsp.c:1991: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_setp_smooth_init
	.def	pdsp_setp_smooth_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_setp_smooth_init
pdsp_setp_smooth_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:1995:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L545	 #,
 # ./pdsp.c:1995:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	16(%rbp), %rax	 # ps_data, tmp89
	movq	(%rax), %rax	 # ps_data_9(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L546	 #,
.L545:
 # ./pdsp.c:1995:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$1995, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp90
	movq	%rax, %rdx	 # tmp90,
	leaq	.LC1(%rip), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	printf	 #
.L546:
 # ./pdsp.c:1996:     ps_data->ps_var->f32_x1 = 1.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movq	(%rax), %rax	 # ps_data_9(D)->ps_var, _2
 # ./pdsp.c:1996:     ps_data->ps_var->f32_x1 = 1.0f;
	movss	.LC4(%rip), %xmm0	 #, tmp93
	movss	%xmm0, (%rax)	 # tmp93, _2->f32_x1
 # ./pdsp.c:1997:     ps_data->ps_var->f32_dx1 = 0.1f;
	movq	16(%rbp), %rax	 # ps_data, tmp94
	movq	(%rax), %rax	 # ps_data_9(D)->ps_var, _3
 # ./pdsp.c:1997:     ps_data->ps_var->f32_dx1 = 0.1f;
	movss	.LC20(%rip), %xmm0	 #, tmp95
	movss	%xmm0, 4(%rax)	 # tmp95, _3->f32_dx1
 # ./pdsp.c:1998:     ps_data->ps_var->f32_x2 = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp96
	movq	(%rax), %rax	 # ps_data_9(D)->ps_var, _4
 # ./pdsp.c:1998:     ps_data->ps_var->f32_x2 = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp97
	movss	%xmm0, 8(%rax)	 # tmp97, _4->f32_x2
 # ./pdsp.c:1999:     ps_data->ps_var->f32_start = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp98
	movq	(%rax), %rax	 # ps_data_9(D)->ps_var, _5
 # ./pdsp.c:1999:     ps_data->ps_var->f32_start = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp99
	movss	%xmm0, 12(%rax)	 # tmp99, _5->f32_start
 # ./pdsp.c:2000:     ps_data->ps_var->f32_dest = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp100
	movq	(%rax), %rax	 # ps_data_9(D)->ps_var, _6
 # ./pdsp.c:2000:     ps_data->ps_var->f32_dest = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp101
	movss	%xmm0, 16(%rax)	 # tmp101, _6->f32_dest
 # ./pdsp.c:2001:     ps_data->ps_var->f32_dest_pend = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp102
	movq	(%rax), %rax	 # ps_data_9(D)->ps_var, _7
 # ./pdsp.c:2001:     ps_data->ps_var->f32_dest_pend = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp103
	movss	%xmm0, 20(%rax)	 # tmp103, _7->f32_dest_pend
 # ./pdsp.c:2002: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_setp_smooth
	.def	pdsp_setp_smooth;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_setp_smooth
pdsp_setp_smooth:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:2007:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L548	 #,
 # ./pdsp.c:2007:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	16(%rbp), %rax	 # ps_data, tmp133
	movq	(%rax), %rax	 # ps_data_52(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L549	 #,
.L548:
 # ./pdsp.c:2007:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$2007, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp134
	movq	%rax, %rdx	 # tmp134,
	leaq	.LC1(%rip), %rax	 #, tmp135
	movq	%rax, %rcx	 # tmp135,
	call	printf	 #
.L549:
 # ./pdsp.c:2008:     ps_var = ps_data->ps_var;
	movq	16(%rbp), %rax	 # ps_data, tmp136
	movq	(%rax), %rax	 # ps_data_52(D)->ps_var, _2
 # ./pdsp.c:2008:     ps_var = ps_data->ps_var;
	movq	%rax, ps_var.1(%rip)	 # _2, ps_var
 # ./pdsp.c:2009:     if ((ps_var->f32_x1 == 1.0f) && (ps_var->f32_dest != ps_var->f32_dest_pend))
	movq	ps_var.1(%rip), %rax	 # ps_var, ps_var.211_3
	movss	(%rax), %xmm0	 # ps_var.211_3->f32_x1, _4
 # ./pdsp.c:2009:     if ((ps_var->f32_x1 == 1.0f) && (ps_var->f32_dest != ps_var->f32_dest_pend))
	movss	.LC4(%rip), %xmm1	 #, tmp137
	ucomiss	%xmm1, %xmm0	 # tmp137, _4
	jp	.L550	 #,
	movss	.LC4(%rip), %xmm1	 #, tmp138
	ucomiss	%xmm1, %xmm0	 # tmp138, _4
	jne	.L550	 #,
 # ./pdsp.c:2009:     if ((ps_var->f32_x1 == 1.0f) && (ps_var->f32_dest != ps_var->f32_dest_pend))
	movq	ps_var.1(%rip), %rax	 # ps_var, ps_var.212_5
	movss	16(%rax), %xmm0	 # ps_var.212_5->f32_dest, _6
 # ./pdsp.c:2009:     if ((ps_var->f32_x1 == 1.0f) && (ps_var->f32_dest != ps_var->f32_dest_pend))
	movq	ps_var.1(%rip), %rax	 # ps_var, ps_var.213_7
	movss	20(%rax), %xmm1	 # ps_var.213_7->f32_dest_pend, _8
 # ./pdsp.c:2009:     if ((ps_var->f32_x1 == 1.0f) && (ps_var->f32_dest != ps_var->f32_dest_pend))
	ucomiss	%xmm1, %xmm0	 # _8, _6
	jp	.L555	 #,
	ucomiss	%xmm1, %xmm0	 # _8, _6
	je	.L550	 #,
.L555:
 # ./pdsp.c:2011:         ps_var->f32_x1 = 0.0f;
	movq	ps_var.1(%rip), %rax	 # ps_var, ps_var.214_9
 # ./pdsp.c:2011:         ps_var->f32_x1 = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp139
	movss	%xmm0, (%rax)	 # tmp139, ps_var.214_9->f32_x1
 # ./pdsp.c:2012:         ps_var->f32_start = ps_var->f32_dest;
	movq	ps_var.1(%rip), %rdx	 # ps_var, ps_var.215_10
 # ./pdsp.c:2012:         ps_var->f32_start = ps_var->f32_dest;
	movq	ps_var.1(%rip), %rax	 # ps_var, ps_var.216_11
 # ./pdsp.c:2012:         ps_var->f32_start = ps_var->f32_dest;
	movss	16(%rdx), %xmm0	 # ps_var.215_10->f32_dest, _12
 # ./pdsp.c:2012:         ps_var->f32_start = ps_var->f32_dest;
	movss	%xmm0, 12(%rax)	 # _12, ps_var.216_11->f32_start
 # ./pdsp.c:2013:         ps_var->f32_dest = ps_var->f32_dest_pend;
	movq	ps_var.1(%rip), %rdx	 # ps_var, ps_var.217_13
 # ./pdsp.c:2013:         ps_var->f32_dest = ps_var->f32_dest_pend;
	movq	ps_var.1(%rip), %rax	 # ps_var, ps_var.218_14
 # ./pdsp.c:2013:         ps_var->f32_dest = ps_var->f32_dest_pend;
	movss	20(%rdx), %xmm0	 # ps_var.217_13->f32_dest_pend, _15
 # ./pdsp.c:2013:         ps_var->f32_dest = ps_var->f32_dest_pend;
	movss	%xmm0, 16(%rax)	 # _15, ps_var.218_14->f32_dest
.L550:
 # ./pdsp.c:2017:         ps_var->f32_x1 * ps_var->f32_x1 * (3.0f - 2.0f * ps_var->f32_x1);
	movq	ps_var.1(%rip), %rax	 # ps_var, ps_var.219_16
	movss	(%rax), %xmm1	 # ps_var.219_16->f32_x1, _17
 # ./pdsp.c:2017:         ps_var->f32_x1 * ps_var->f32_x1 * (3.0f - 2.0f * ps_var->f32_x1);
	movq	ps_var.1(%rip), %rax	 # ps_var, ps_var.220_18
	movss	(%rax), %xmm0	 # ps_var.220_18->f32_x1, _19
 # ./pdsp.c:2017:         ps_var->f32_x1 * ps_var->f32_x1 * (3.0f - 2.0f * ps_var->f32_x1);
	mulss	%xmm0, %xmm1	 # _19, _20
 # ./pdsp.c:2017:         ps_var->f32_x1 * ps_var->f32_x1 * (3.0f - 2.0f * ps_var->f32_x1);
	movq	ps_var.1(%rip), %rax	 # ps_var, ps_var.221_21
	movss	(%rax), %xmm0	 # ps_var.221_21->f32_x1, _22
 # ./pdsp.c:2017:         ps_var->f32_x1 * ps_var->f32_x1 * (3.0f - 2.0f * ps_var->f32_x1);
	movaps	%xmm0, %xmm2	 # _22, _22
	addss	%xmm0, %xmm2	 # _22, _22
 # ./pdsp.c:2017:         ps_var->f32_x1 * ps_var->f32_x1 * (3.0f - 2.0f * ps_var->f32_x1);
	movss	.LC11(%rip), %xmm0	 #, tmp140
	subss	%xmm2, %xmm0	 # _23, _24
 # ./pdsp.c:2016:     ps_var->f32_x2 =
	movq	ps_var.1(%rip), %rax	 # ps_var, ps_var.222_25
 # ./pdsp.c:2017:         ps_var->f32_x1 * ps_var->f32_x1 * (3.0f - 2.0f * ps_var->f32_x1);
	mulss	%xmm1, %xmm0	 # _20, _26
 # ./pdsp.c:2016:     ps_var->f32_x2 =
	movss	%xmm0, 8(%rax)	 # _26, ps_var.222_25->f32_x2
 # ./pdsp.c:2018:     ps_var->f32_x1 = fmin(fmax(ps_var->f32_x1 + ps_var->f32_dx1, 0.0f), 1.0f);
	movq	ps_var.1(%rip), %rax	 # ps_var, ps_var.223_27
	movss	(%rax), %xmm1	 # ps_var.223_27->f32_x1, _28
 # ./pdsp.c:2018:     ps_var->f32_x1 = fmin(fmax(ps_var->f32_x1 + ps_var->f32_dx1, 0.0f), 1.0f);
	movq	ps_var.1(%rip), %rax	 # ps_var, ps_var.224_29
	movss	4(%rax), %xmm0	 # ps_var.224_29->f32_dx1, _30
 # ./pdsp.c:2018:     ps_var->f32_x1 = fmin(fmax(ps_var->f32_x1 + ps_var->f32_dx1, 0.0f), 1.0f);
	addss	%xmm1, %xmm0	 # _28, _31
 # ./pdsp.c:2018:     ps_var->f32_x1 = fmin(fmax(ps_var->f32_x1 + ps_var->f32_dx1, 0.0f), 1.0f);
	pxor	%xmm3, %xmm3	 # _32
	cvtss2sd	%xmm0, %xmm3	 # _31, _32
	movq	%xmm3, %rax	 # _32, _32
	pxor	%xmm1, %xmm1	 #
	movq	%rax, %xmm0	 # _32,
	call	fmax	 #
	movq	%xmm0, %rax	 #, _33
 # ./pdsp.c:2018:     ps_var->f32_x1 = fmin(fmax(ps_var->f32_x1 + ps_var->f32_dx1, 0.0f), 1.0f);
	movsd	.LC22(%rip), %xmm0	 #, tmp141
	movapd	%xmm0, %xmm1	 # tmp141,
	movq	%rax, %xmm0	 # _33,
	call	fmin	 #
 # ./pdsp.c:2018:     ps_var->f32_x1 = fmin(fmax(ps_var->f32_x1 + ps_var->f32_dx1, 0.0f), 1.0f);
	movq	ps_var.1(%rip), %rax	 # ps_var, ps_var.225_35
 # ./pdsp.c:2018:     ps_var->f32_x1 = fmin(fmax(ps_var->f32_x1 + ps_var->f32_dx1, 0.0f), 1.0f);
	cvtsd2ss	%xmm0, %xmm0	 # _34, _36
 # ./pdsp.c:2018:     ps_var->f32_x1 = fmin(fmax(ps_var->f32_x1 + ps_var->f32_dx1, 0.0f), 1.0f);
	movss	%xmm0, (%rax)	 # _36, ps_var.225_35->f32_x1
 # ./pdsp.c:2019:     return ps_var->f32_start + (ps_var->f32_x2 * ps_var->f32_dest) -
	movq	ps_var.1(%rip), %rax	 # ps_var, ps_var.226_37
	movss	12(%rax), %xmm1	 # ps_var.226_37->f32_start, _38
 # ./pdsp.c:2019:     return ps_var->f32_start + (ps_var->f32_x2 * ps_var->f32_dest) -
	movq	ps_var.1(%rip), %rax	 # ps_var, ps_var.227_39
	movss	8(%rax), %xmm2	 # ps_var.227_39->f32_x2, _40
 # ./pdsp.c:2019:     return ps_var->f32_start + (ps_var->f32_x2 * ps_var->f32_dest) -
	movq	ps_var.1(%rip), %rax	 # ps_var, ps_var.228_41
	movss	16(%rax), %xmm0	 # ps_var.228_41->f32_dest, _42
 # ./pdsp.c:2019:     return ps_var->f32_start + (ps_var->f32_x2 * ps_var->f32_dest) -
	mulss	%xmm2, %xmm0	 # _40, _43
 # ./pdsp.c:2019:     return ps_var->f32_start + (ps_var->f32_x2 * ps_var->f32_dest) -
	addss	%xmm1, %xmm0	 # _38, _44
 # ./pdsp.c:2020:            (ps_var->f32_x2 * ps_var->f32_start);
	movq	ps_var.1(%rip), %rax	 # ps_var, ps_var.229_45
	movss	8(%rax), %xmm2	 # ps_var.229_45->f32_x2, _46
 # ./pdsp.c:2020:            (ps_var->f32_x2 * ps_var->f32_start);
	movq	ps_var.1(%rip), %rax	 # ps_var, ps_var.230_47
	movss	12(%rax), %xmm1	 # ps_var.230_47->f32_start, _48
 # ./pdsp.c:2020:            (ps_var->f32_x2 * ps_var->f32_start);
	mulss	%xmm2, %xmm1	 # _46, _49
 # ./pdsp.c:2019:     return ps_var->f32_start + (ps_var->f32_x2 * ps_var->f32_dest) -
	subss	%xmm1, %xmm0	 # _49, _61
 # ./pdsp.c:2021: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_setp_smooth_set_dest
	.def	pdsp_setp_smooth_set_dest;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_setp_smooth_set_dest
pdsp_setp_smooth_set_dest:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rsi	 #
	.seh_pushreg	%rsi
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	leaq	32(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 40(%rbp)	 # f32_dest, f32_dest
 # ./pdsp.c:2026:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 32(%rbp)	 #, ps_data
	je	.L557	 #,
 # ./pdsp.c:2026:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	32(%rbp), %rax	 # ps_data, tmp90
	movq	(%rax), %rax	 # ps_data_8(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L558	 #,
.L557:
 # ./pdsp.c:2026:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$2026, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp91
	movq	%rax, %rdx	 # tmp91,
	leaq	.LC1(%rip), %rax	 #, tmp92
	movq	%rax, %rcx	 # tmp92,
	call	printf	 #
.L558:
 # ./pdsp.c:2028:         pdsp_maxf(pdsp_minf(f32_dest, ps_data->f32_max), ps_data->f32_min);
	movq	32(%rbp), %rax	 # ps_data, tmp93
	movl	8(%rax), %ebx	 # ps_data_8(D)->f32_min, _2
	movq	32(%rbp), %rax	 # ps_data, tmp94
	movss	12(%rax), %xmm0	 # ps_data_8(D)->f32_max, _3
	movl	40(%rbp), %eax	 # f32_dest, tmp95
	movaps	%xmm0, %xmm1	 # _3,
	movd	%eax, %xmm0	 # tmp95,
	call	fminf	 #
	movd	%xmm0, %edx	 #, _4
 # ./pdsp.c:2027:     ps_data->ps_var->f32_dest_pend =
	movq	32(%rbp), %rax	 # ps_data, tmp96
	movq	(%rax), %rsi	 # ps_data_8(D)->ps_var, _5
 # ./pdsp.c:2028:         pdsp_maxf(pdsp_minf(f32_dest, ps_data->f32_max), ps_data->f32_min);
	movd	%edx, %xmm1	 # _4,
	movd	%ebx, %xmm0	 # _2,
	call	fmaxf	 #
	movd	%xmm0, %eax	 #, _6
 # ./pdsp.c:2027:     ps_data->ps_var->f32_dest_pend =
	movl	%eax, 20(%rsi)	 # _6, _5->f32_dest_pend
 # ./pdsp.c:2029:     return PDSP_OK;
	movl	$0, %eax	 #, _13
 # ./pdsp.c:2030: }
	addq	$32, %rsp	 #,
	popq	%rbx	 #
	popq	%rsi	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_setp_smooth_set_time
	.def	pdsp_setp_smooth_set_time;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_setp_smooth_set_time
pdsp_setp_smooth_set_time:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	leaq	32(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 32
	movups	%xmm6, 0(%rbp)	 #,
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 40(%rbp)	 # f32_time, f32_time
 # ./pdsp.c:2035:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 32(%rbp)	 #, ps_data
	je	.L561	 #,
 # ./pdsp.c:2035:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	32(%rbp), %rax	 # ps_data, tmp94
	movq	(%rax), %rax	 # ps_data_12(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L562	 #,
.L561:
 # ./pdsp.c:2035:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$2035, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp95
	movq	%rax, %rdx	 # tmp95,
	leaq	.LC1(%rip), %rax	 #, tmp96
	movq	%rax, %rcx	 # tmp96,
	call	printf	 #
.L562:
 # ./pdsp.c:2037:         ps_data->f32_ts / fmax(f32_time, ps_data->f32_ts);
	movq	32(%rbp), %rax	 # ps_data, tmp97
	movss	16(%rax), %xmm0	 # ps_data_12(D)->f32_ts, _2
	pxor	%xmm6, %xmm6	 # _3
	cvtss2sd	%xmm0, %xmm6	 # _2, _3
 # ./pdsp.c:2037:         ps_data->f32_ts / fmax(f32_time, ps_data->f32_ts);
	movq	32(%rbp), %rax	 # ps_data, tmp98
	movss	16(%rax), %xmm0	 # ps_data_12(D)->f32_ts, _4
 # ./pdsp.c:2037:         ps_data->f32_ts / fmax(f32_time, ps_data->f32_ts);
	pxor	%xmm2, %xmm2	 # _5
	cvtss2sd	%xmm0, %xmm2	 # _4, _5
	movq	%xmm2, %rax	 # _5, _5
	pxor	%xmm0, %xmm0	 # _6
	cvtss2sd	40(%rbp), %xmm0	 # f32_time, _6
	movapd	%xmm0, %xmm1	 # _6,
	movq	%rax, %xmm0	 # _5,
	call	fmax	 #
 # ./pdsp.c:2037:         ps_data->f32_ts / fmax(f32_time, ps_data->f32_ts);
	divsd	%xmm0, %xmm6	 # _7, _3
	movapd	%xmm6, %xmm1	 # _3, _8
 # ./pdsp.c:2036:     ps_data->ps_var->f32_dx1 =
	movq	32(%rbp), %rax	 # ps_data, tmp99
	movq	(%rax), %rax	 # ps_data_12(D)->ps_var, _9
 # ./pdsp.c:2037:         ps_data->f32_ts / fmax(f32_time, ps_data->f32_ts);
	pxor	%xmm0, %xmm0	 # _10
	cvtsd2ss	%xmm1, %xmm0	 # _8, _10
 # ./pdsp.c:2036:     ps_data->ps_var->f32_dx1 =
	movss	%xmm0, 4(%rax)	 # _10, _9->f32_dx1
 # ./pdsp.c:2038:     return PDSP_OK;
	movl	$0, %eax	 #, _17
 # ./pdsp.c:2039: }
	movups	0(%rbp), %xmm6	 #,
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_setp_smooth_reached
	.def	pdsp_setp_smooth_reached;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_setp_smooth_reached
pdsp_setp_smooth_reached:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_tol, f32_tol
 # ./pdsp.c:2044:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L565	 #,
 # ./pdsp.c:2044:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	16(%rbp), %rax	 # ps_data, tmp89
	movq	(%rax), %rax	 # ps_data_7(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L566	 #,
.L565:
 # ./pdsp.c:2044:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$2044, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp90
	movq	%rax, %rdx	 # tmp90,
	leaq	.LC1(%rip), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	printf	 #
.L566:
 # ./pdsp.c:2045:     return (pdsp_bool_t)(pdsp_absf(ps_data->ps_var->f32_x1 - 1.0f) < f32_tol);
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movq	(%rax), %rax	 # ps_data_7(D)->ps_var, _2
	movss	(%rax), %xmm0	 # _2->f32_x1, _3
	movss	.LC4(%rip), %xmm1	 #, tmp93
	subss	%xmm1, %xmm0	 # tmp93, _4
	movss	.LC19(%rip), %xmm1	 #, tmp94
	andps	%xmm0, %xmm1	 # _4, _5
 # ./pdsp.c:2045:     return (pdsp_bool_t)(pdsp_absf(ps_data->ps_var->f32_x1 - 1.0f) < f32_tol);
	movss	24(%rbp), %xmm0	 # f32_tol, tmp95
	comiss	%xmm1, %xmm0	 # _5, tmp95
	seta	%al	 #, _11
 # ./pdsp.c:2046: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_saw_init
	.def	pdsp_saw_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_saw_init
pdsp_saw_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_state, ps_state
 # ./pdsp.c:2050:     PDSP_ASSERT(ps_state != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_state
	jne	.L569	 #,
 # ./pdsp.c:2050:     PDSP_ASSERT(ps_state != NULL);
	movl	$2050, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp84
	movq	%rax, %rdx	 # tmp84,
	leaq	.LC1(%rip), %rax	 #, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	printf	 #
.L569:
 # ./pdsp.c:2051:     ps_state->f32_x0 = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp86
	pxor	%xmm0, %xmm0	 # tmp87
	movss	%xmm0, (%rax)	 # tmp87, ps_state_2(D)->f32_x0
 # ./pdsp.c:2052:     return PDSP_OK;
	movl	$0, %eax	 #, _6
 # ./pdsp.c:2053: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_saw
	.def	pdsp_saw;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_saw
pdsp_saw:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_state, ps_state
	movq	%rdx, 24(%rbp)	 # ps_param, ps_param
 # ./pdsp.c:2058:     PDSP_ASSERT((ps_state != NULL) && (ps_param != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_state
	je	.L572	 #,
 # ./pdsp.c:2058:     PDSP_ASSERT((ps_state != NULL) && (ps_param != NULL));
	cmpq	$0, 24(%rbp)	 #, ps_param
	jne	.L573	 #,
.L572:
 # ./pdsp.c:2058:     PDSP_ASSERT((ps_state != NULL) && (ps_param != NULL));
	movl	$2058, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp89
	movq	%rax, %rdx	 # tmp89,
	leaq	.LC1(%rip), %rax	 #, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	printf	 #
.L573:
 # ./pdsp.c:2059:     ps_state->f32_x0 += ps_param->f32_step;
	movq	16(%rbp), %rax	 # ps_state, tmp91
	movss	(%rax), %xmm1	 # ps_state_9(D)->f32_x0, _1
 # ./pdsp.c:2059:     ps_state->f32_x0 += ps_param->f32_step;
	movq	24(%rbp), %rax	 # ps_param, tmp92
	movss	(%rax), %xmm0	 # ps_param_10(D)->f32_step, _2
 # ./pdsp.c:2059:     ps_state->f32_x0 += ps_param->f32_step;
	addss	%xmm1, %xmm0	 # _1, _3
	movq	16(%rbp), %rax	 # ps_state, tmp93
	movss	%xmm0, (%rax)	 # _3, ps_state_9(D)->f32_x0
 # ./pdsp.c:2060:     if (ps_state->f32_x0 > ps_param->f32_out_high)
	movq	16(%rbp), %rax	 # ps_state, tmp94
	movss	(%rax), %xmm0	 # ps_state_9(D)->f32_x0, _4
 # ./pdsp.c:2060:     if (ps_state->f32_x0 > ps_param->f32_out_high)
	movq	24(%rbp), %rax	 # ps_param, tmp95
	movss	8(%rax), %xmm1	 # ps_param_10(D)->f32_out_high, _5
 # ./pdsp.c:2060:     if (ps_state->f32_x0 > ps_param->f32_out_high)
	comiss	%xmm1, %xmm0	 # _5, _4
	jbe	.L578	 #,
 # ./pdsp.c:2062:         ps_state->f32_x0 = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp96
	pxor	%xmm0, %xmm0	 # tmp97
	movss	%xmm0, (%rax)	 # tmp97, ps_state_9(D)->f32_x0
 # ./pdsp.c:2063:         return 0.0f;
	pxor	%xmm0, %xmm0	 # _6
	jmp	.L576	 #
.L578:
 # ./pdsp.c:2067:         return ps_state->f32_x0;
	movq	16(%rbp), %rax	 # ps_state, tmp98
	movss	(%rax), %xmm0	 # ps_state_9(D)->f32_x0, _6
.L576:
 # ./pdsp.c:2069: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_saw_shift
	.def	pdsp_saw_shift;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_saw_shift
pdsp_saw_shift:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movss	%xmm0, 16(%rbp)	 # f32_in, f32_in
	movq	%rdx, 24(%rbp)	 # ps_param, ps_param
	movss	%xmm2, 32(%rbp)	 # f32_phase, f32_phase
 # ./pdsp.c:2075:     PDSP_ASSERT(ps_param != NULL);
	cmpq	$0, 24(%rbp)	 #, ps_param
	jne	.L580	 #,
 # ./pdsp.c:2075:     PDSP_ASSERT(ps_param != NULL);
	movl	$2075, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp86
	movq	%rax, %rdx	 # tmp86,
	leaq	.LC1(%rip), %rax	 #, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	printf	 #
.L580:
 # ./pdsp.c:2076:     f32_in += f32_phase;
	movss	16(%rbp), %xmm0	 # f32_in, tmp89
	addss	32(%rbp), %xmm0	 # f32_phase, tmp88
	movss	%xmm0, 16(%rbp)	 # tmp88, f32_in
 # ./pdsp.c:2077:     if (f32_in > ps_param->f32_out_high)
	movq	24(%rbp), %rax	 # ps_param, tmp90
	movss	8(%rax), %xmm1	 # ps_param_5(D)->f32_out_high, _1
 # ./pdsp.c:2077:     if (f32_in > ps_param->f32_out_high)
	movss	16(%rbp), %xmm0	 # f32_in, tmp91
	comiss	%xmm1, %xmm0	 # _1, tmp91
	jbe	.L585	 #,
 # ./pdsp.c:2079:         f32_in -= ps_param->f32_out_high;
	movq	24(%rbp), %rax	 # ps_param, tmp92
	movss	8(%rax), %xmm1	 # ps_param_5(D)->f32_out_high, _2
 # ./pdsp.c:2079:         f32_in -= ps_param->f32_out_high;
	movss	16(%rbp), %xmm0	 # f32_in, tmp94
	subss	%xmm1, %xmm0	 # _2, tmp93
	movss	%xmm0, 16(%rbp)	 # tmp93, f32_in
 # ./pdsp.c:2080:         return f32_in;
	movss	16(%rbp), %xmm0	 # f32_in, _3
	jmp	.L583	 #
.L585:
 # ./pdsp.c:2084:         return f32_in;
	movss	16(%rbp), %xmm0	 # f32_in, _3
.L583:
 # ./pdsp.c:2086: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_dpll_1ph_notch_init
	.def	pdsp_dpll_1ph_notch_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_dpll_1ph_notch_init
pdsp_dpll_1ph_notch_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_state, ps_state
 # ./pdsp.c:2091:     PDSP_ASSERT(ps_state != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_state
	jne	.L587	 #,
 # ./pdsp.c:2091:     PDSP_ASSERT(ps_state != NULL);
	movl	$2091, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp84
	movq	%rax, %rdx	 # tmp84,
	leaq	.LC1(%rip), %rax	 #, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	printf	 #
.L587:
 # ./pdsp.c:2092:     ps_state->upd[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp86
	pxor	%xmm0, %xmm0	 # tmp87
	movss	%xmm0, (%rax)	 # tmp87, ps_state_2(D)->upd[0]
 # ./pdsp.c:2093:     ps_state->upd[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp88
	pxor	%xmm0, %xmm0	 # tmp89
	movss	%xmm0, 4(%rax)	 # tmp89, ps_state_2(D)->upd[1]
 # ./pdsp.c:2094:     ps_state->upd[2] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp90
	pxor	%xmm0, %xmm0	 # tmp91
	movss	%xmm0, 8(%rax)	 # tmp91, ps_state_2(D)->upd[2]
 # ./pdsp.c:2095:     ps_state->y_notch1[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp92
	pxor	%xmm0, %xmm0	 # tmp93
	movss	%xmm0, 12(%rax)	 # tmp93, ps_state_2(D)->y_notch1[0]
 # ./pdsp.c:2096:     ps_state->y_notch1[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp94
	pxor	%xmm0, %xmm0	 # tmp95
	movss	%xmm0, 16(%rax)	 # tmp95, ps_state_2(D)->y_notch1[1]
 # ./pdsp.c:2097:     ps_state->y_notch1[2] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp96
	pxor	%xmm0, %xmm0	 # tmp97
	movss	%xmm0, 20(%rax)	 # tmp97, ps_state_2(D)->y_notch1[2]
 # ./pdsp.c:2098:     ps_state->y_notch2[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp98
	pxor	%xmm0, %xmm0	 # tmp99
	movss	%xmm0, 24(%rax)	 # tmp99, ps_state_2(D)->y_notch2[0]
 # ./pdsp.c:2099:     ps_state->y_notch2[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp100
	pxor	%xmm0, %xmm0	 # tmp101
	movss	%xmm0, 28(%rax)	 # tmp101, ps_state_2(D)->y_notch2[1]
 # ./pdsp.c:2100:     ps_state->y_notch2[2] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp102
	pxor	%xmm0, %xmm0	 # tmp103
	movss	%xmm0, 32(%rax)	 # tmp103, ps_state_2(D)->y_notch2[2]
 # ./pdsp.c:2101:     ps_state->ylf[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp104
	pxor	%xmm0, %xmm0	 # tmp105
	movss	%xmm0, 36(%rax)	 # tmp105, ps_state_2(D)->ylf[0]
 # ./pdsp.c:2102:     ps_state->ylf[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp106
	pxor	%xmm0, %xmm0	 # tmp107
	movss	%xmm0, 40(%rax)	 # tmp107, ps_state_2(D)->ylf[1]
 # ./pdsp.c:2103:     ps_state->fo = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp108
	pxor	%xmm0, %xmm0	 # tmp109
	movss	%xmm0, 44(%rax)	 # tmp109, ps_state_2(D)->fo
 # ./pdsp.c:2104:     ps_state->fn = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp110
	pxor	%xmm0, %xmm0	 # tmp111
	movss	%xmm0, 48(%rax)	 # tmp111, ps_state_2(D)->fn
 # ./pdsp.c:2105:     ps_state->theta = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp112
	pxor	%xmm0, %xmm0	 # tmp113
	movss	%xmm0, 52(%rax)	 # tmp113, ps_state_2(D)->theta
 # ./pdsp.c:2106:     ps_state->cosine = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp114
	pxor	%xmm0, %xmm0	 # tmp115
	movss	%xmm0, 56(%rax)	 # tmp115, ps_state_2(D)->cosine
 # ./pdsp.c:2107:     ps_state->sine = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp116
	pxor	%xmm0, %xmm0	 # tmp117
	movss	%xmm0, 60(%rax)	 # tmp117, ps_state_2(D)->sine
 # ./pdsp.c:2108:     ps_state->delta_t = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp118
	pxor	%xmm0, %xmm0	 # tmp119
	movss	%xmm0, 64(%rax)	 # tmp119, ps_state_2(D)->delta_t
 # ./pdsp.c:2110:     return PDSP_OK;
	movl	$0, %eax	 #, _22
 # ./pdsp.c:2111: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_dpll_1ph_notch
	.def	pdsp_dpll_1ph_notch;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_dpll_1ph_notch
pdsp_dpll_1ph_notch:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_state, ps_state
	movss	%xmm1, 24(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:2116:     PDSP_ASSERT(ps_state != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_state
	jne	.L590	 #,
 # ./pdsp.c:2116:     PDSP_ASSERT(ps_state != NULL);
	movl	$2116, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp158
	movq	%rax, %rdx	 # tmp158,
	leaq	.LC1(%rip), %rax	 #, tmp159
	movq	%rax, %rcx	 # tmp159,
	call	printf	 #
.L590:
 # ./pdsp.c:2118:     ps_state->upd[0] = f32_in * ps_state->cosine;
	movq	16(%rbp), %rax	 # ps_state, tmp160
	movss	56(%rax), %xmm0	 # ps_state_77(D)->cosine, _1
 # ./pdsp.c:2118:     ps_state->upd[0] = f32_in * ps_state->cosine;
	mulss	24(%rbp), %xmm0	 # f32_in, _2
 # ./pdsp.c:2118:     ps_state->upd[0] = f32_in * ps_state->cosine;
	movq	16(%rbp), %rax	 # ps_state, tmp161
	movss	%xmm0, (%rax)	 # _2, ps_state_77(D)->upd[0]
 # ./pdsp.c:2121:         (-ps_state->y_notch1[1] * ps_state->notch_coeff.f32_a1 -
	movq	16(%rbp), %rax	 # ps_state, tmp162
	movss	16(%rax), %xmm0	 # ps_state_77(D)->y_notch1[1], _3
 # ./pdsp.c:2121:         (-ps_state->y_notch1[1] * ps_state->notch_coeff.f32_a1 -
	movss	.LC16(%rip), %xmm1	 #, tmp163
	xorps	%xmm0, %xmm1	 # _3, _4
 # ./pdsp.c:2121:         (-ps_state->y_notch1[1] * ps_state->notch_coeff.f32_a1 -
	movq	16(%rbp), %rax	 # ps_state, tmp164
	movss	80(%rax), %xmm0	 # ps_state_77(D)->notch_coeff.f32_a1, _5
 # ./pdsp.c:2121:         (-ps_state->y_notch1[1] * ps_state->notch_coeff.f32_a1 -
	mulss	%xmm1, %xmm0	 # _4, _6
 # ./pdsp.c:2122:          ps_state->y_notch1[2] * ps_state->notch_coeff.f32_a2 +
	movq	16(%rbp), %rax	 # ps_state, tmp165
	movss	20(%rax), %xmm2	 # ps_state_77(D)->y_notch1[2], _7
 # ./pdsp.c:2122:          ps_state->y_notch1[2] * ps_state->notch_coeff.f32_a2 +
	movq	16(%rbp), %rax	 # ps_state, tmp166
	movss	84(%rax), %xmm1	 # ps_state_77(D)->notch_coeff.f32_a2, _8
 # ./pdsp.c:2122:          ps_state->y_notch1[2] * ps_state->notch_coeff.f32_a2 +
	mulss	%xmm1, %xmm2	 # _8, _9
 # ./pdsp.c:2121:         (-ps_state->y_notch1[1] * ps_state->notch_coeff.f32_a1 -
	movaps	%xmm0, %xmm1	 # _6, _6
	subss	%xmm2, %xmm1	 # _9, _6
 # ./pdsp.c:2123:          ps_state->upd[0] * ps_state->notch_coeff.f32_b0 +
	movq	16(%rbp), %rax	 # ps_state, tmp167
	movss	(%rax), %xmm2	 # ps_state_77(D)->upd[0], _11
 # ./pdsp.c:2123:          ps_state->upd[0] * ps_state->notch_coeff.f32_b0 +
	movq	16(%rbp), %rax	 # ps_state, tmp168
	movss	68(%rax), %xmm0	 # ps_state_77(D)->notch_coeff.f32_b0, _12
 # ./pdsp.c:2123:          ps_state->upd[0] * ps_state->notch_coeff.f32_b0 +
	mulss	%xmm2, %xmm0	 # _11, _13
 # ./pdsp.c:2122:          ps_state->y_notch1[2] * ps_state->notch_coeff.f32_a2 +
	addss	%xmm0, %xmm1	 # _13, _14
 # ./pdsp.c:2124:          ps_state->upd[1] * ps_state->notch_coeff.f32_b1 +
	movq	16(%rbp), %rax	 # ps_state, tmp169
	movss	4(%rax), %xmm2	 # ps_state_77(D)->upd[1], _15
 # ./pdsp.c:2124:          ps_state->upd[1] * ps_state->notch_coeff.f32_b1 +
	movq	16(%rbp), %rax	 # ps_state, tmp170
	movss	72(%rax), %xmm0	 # ps_state_77(D)->notch_coeff.f32_b1, _16
 # ./pdsp.c:2124:          ps_state->upd[1] * ps_state->notch_coeff.f32_b1 +
	mulss	%xmm2, %xmm0	 # _15, _17
 # ./pdsp.c:2123:          ps_state->upd[0] * ps_state->notch_coeff.f32_b0 +
	addss	%xmm0, %xmm1	 # _17, _18
 # ./pdsp.c:2125:          ps_state->upd[2] * ps_state->notch_coeff.f32_b2);
	movq	16(%rbp), %rax	 # ps_state, tmp171
	movss	8(%rax), %xmm2	 # ps_state_77(D)->upd[2], _19
 # ./pdsp.c:2125:          ps_state->upd[2] * ps_state->notch_coeff.f32_b2);
	movq	16(%rbp), %rax	 # ps_state, tmp172
	movss	76(%rax), %xmm0	 # ps_state_77(D)->notch_coeff.f32_b2, _20
 # ./pdsp.c:2125:          ps_state->upd[2] * ps_state->notch_coeff.f32_b2);
	mulss	%xmm2, %xmm0	 # _19, _21
 # ./pdsp.c:2124:          ps_state->upd[1] * ps_state->notch_coeff.f32_b1 +
	addss	%xmm1, %xmm0	 # _18, _22
 # ./pdsp.c:2120:     ps_state->y_notch1[0] =
	movq	16(%rbp), %rax	 # ps_state, tmp173
	movss	%xmm0, 12(%rax)	 # _22, ps_state_77(D)->y_notch1[0]
 # ./pdsp.c:2127:         (-ps_state->y_notch2[1] * ps_state->notch_coeff.f32_a1 -
	movq	16(%rbp), %rax	 # ps_state, tmp174
	movss	28(%rax), %xmm0	 # ps_state_77(D)->y_notch2[1], _23
 # ./pdsp.c:2127:         (-ps_state->y_notch2[1] * ps_state->notch_coeff.f32_a1 -
	movss	.LC16(%rip), %xmm1	 #, tmp175
	xorps	%xmm0, %xmm1	 # _23, _24
 # ./pdsp.c:2127:         (-ps_state->y_notch2[1] * ps_state->notch_coeff.f32_a1 -
	movq	16(%rbp), %rax	 # ps_state, tmp176
	movss	80(%rax), %xmm0	 # ps_state_77(D)->notch_coeff.f32_a1, _25
 # ./pdsp.c:2127:         (-ps_state->y_notch2[1] * ps_state->notch_coeff.f32_a1 -
	mulss	%xmm1, %xmm0	 # _24, _26
 # ./pdsp.c:2128:          ps_state->y_notch2[2] * ps_state->notch_coeff.f32_a2 +
	movq	16(%rbp), %rax	 # ps_state, tmp177
	movss	32(%rax), %xmm2	 # ps_state_77(D)->y_notch2[2], _27
 # ./pdsp.c:2128:          ps_state->y_notch2[2] * ps_state->notch_coeff.f32_a2 +
	movq	16(%rbp), %rax	 # ps_state, tmp178
	movss	84(%rax), %xmm1	 # ps_state_77(D)->notch_coeff.f32_a2, _28
 # ./pdsp.c:2128:          ps_state->y_notch2[2] * ps_state->notch_coeff.f32_a2 +
	mulss	%xmm1, %xmm2	 # _28, _29
 # ./pdsp.c:2127:         (-ps_state->y_notch2[1] * ps_state->notch_coeff.f32_a1 -
	movaps	%xmm0, %xmm1	 # _26, _26
	subss	%xmm2, %xmm1	 # _29, _26
 # ./pdsp.c:2129:          ps_state->y_notch1[0] * ps_state->notch_coeff.f32_b0 +
	movq	16(%rbp), %rax	 # ps_state, tmp179
	movss	12(%rax), %xmm2	 # ps_state_77(D)->y_notch1[0], _31
 # ./pdsp.c:2129:          ps_state->y_notch1[0] * ps_state->notch_coeff.f32_b0 +
	movq	16(%rbp), %rax	 # ps_state, tmp180
	movss	68(%rax), %xmm0	 # ps_state_77(D)->notch_coeff.f32_b0, _32
 # ./pdsp.c:2129:          ps_state->y_notch1[0] * ps_state->notch_coeff.f32_b0 +
	mulss	%xmm2, %xmm0	 # _31, _33
 # ./pdsp.c:2128:          ps_state->y_notch2[2] * ps_state->notch_coeff.f32_a2 +
	addss	%xmm0, %xmm1	 # _33, _34
 # ./pdsp.c:2130:          ps_state->y_notch1[1] * ps_state->notch_coeff.f32_b1 +
	movq	16(%rbp), %rax	 # ps_state, tmp181
	movss	16(%rax), %xmm2	 # ps_state_77(D)->y_notch1[1], _35
 # ./pdsp.c:2130:          ps_state->y_notch1[1] * ps_state->notch_coeff.f32_b1 +
	movq	16(%rbp), %rax	 # ps_state, tmp182
	movss	72(%rax), %xmm0	 # ps_state_77(D)->notch_coeff.f32_b1, _36
 # ./pdsp.c:2130:          ps_state->y_notch1[1] * ps_state->notch_coeff.f32_b1 +
	mulss	%xmm2, %xmm0	 # _35, _37
 # ./pdsp.c:2129:          ps_state->y_notch1[0] * ps_state->notch_coeff.f32_b0 +
	addss	%xmm0, %xmm1	 # _37, _38
 # ./pdsp.c:2131:          ps_state->y_notch1[2] * ps_state->notch_coeff.f32_b2);
	movq	16(%rbp), %rax	 # ps_state, tmp183
	movss	20(%rax), %xmm2	 # ps_state_77(D)->y_notch1[2], _39
 # ./pdsp.c:2131:          ps_state->y_notch1[2] * ps_state->notch_coeff.f32_b2);
	movq	16(%rbp), %rax	 # ps_state, tmp184
	movss	76(%rax), %xmm0	 # ps_state_77(D)->notch_coeff.f32_b2, _40
 # ./pdsp.c:2131:          ps_state->y_notch1[2] * ps_state->notch_coeff.f32_b2);
	mulss	%xmm2, %xmm0	 # _39, _41
 # ./pdsp.c:2130:          ps_state->y_notch1[1] * ps_state->notch_coeff.f32_b1 +
	addss	%xmm1, %xmm0	 # _38, _42
 # ./pdsp.c:2126:     ps_state->y_notch2[0] =
	movq	16(%rbp), %rax	 # ps_state, tmp185
	movss	%xmm0, 24(%rax)	 # _42, ps_state_77(D)->y_notch2[0]
 # ./pdsp.c:2133:     ps_state->ylf[0] = ps_state->ylf[1] +
	movq	16(%rbp), %rax	 # ps_state, tmp186
	movss	40(%rax), %xmm1	 # ps_state_77(D)->ylf[1], _43
 # ./pdsp.c:2134:                        (ps_state->lpf_coeff.f32_b0 * ps_state->y_notch2[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp187
	movss	88(%rax), %xmm2	 # ps_state_77(D)->lpf_coeff.f32_b0, _44
 # ./pdsp.c:2134:                        (ps_state->lpf_coeff.f32_b0 * ps_state->y_notch2[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp188
	movss	24(%rax), %xmm0	 # ps_state_77(D)->y_notch2[0], _45
 # ./pdsp.c:2134:                        (ps_state->lpf_coeff.f32_b0 * ps_state->y_notch2[0]) +
	mulss	%xmm2, %xmm0	 # _44, _46
 # ./pdsp.c:2133:     ps_state->ylf[0] = ps_state->ylf[1] +
	addss	%xmm0, %xmm1	 # _46, _47
 # ./pdsp.c:2135:                        (ps_state->lpf_coeff.f32_b1 * ps_state->y_notch2[1]);
	movq	16(%rbp), %rax	 # ps_state, tmp189
	movss	92(%rax), %xmm2	 # ps_state_77(D)->lpf_coeff.f32_b1, _48
 # ./pdsp.c:2135:                        (ps_state->lpf_coeff.f32_b1 * ps_state->y_notch2[1]);
	movq	16(%rbp), %rax	 # ps_state, tmp190
	movss	28(%rax), %xmm0	 # ps_state_77(D)->y_notch2[1], _49
 # ./pdsp.c:2135:                        (ps_state->lpf_coeff.f32_b1 * ps_state->y_notch2[1]);
	mulss	%xmm2, %xmm0	 # _48, _50
 # ./pdsp.c:2134:                        (ps_state->lpf_coeff.f32_b0 * ps_state->y_notch2[0]) +
	addss	%xmm1, %xmm0	 # _47, _51
 # ./pdsp.c:2133:     ps_state->ylf[0] = ps_state->ylf[1] +
	movq	16(%rbp), %rax	 # ps_state, tmp191
	movss	%xmm0, 36(%rax)	 # _51, ps_state_77(D)->ylf[0]
 # ./pdsp.c:2140:     ps_state->upd[2] = ps_state->upd[1];
	movq	16(%rbp), %rax	 # ps_state, tmp192
	movss	4(%rax), %xmm0	 # ps_state_77(D)->upd[1], _52
 # ./pdsp.c:2140:     ps_state->upd[2] = ps_state->upd[1];
	movq	16(%rbp), %rax	 # ps_state, tmp193
	movss	%xmm0, 8(%rax)	 # _52, ps_state_77(D)->upd[2]
 # ./pdsp.c:2141:     ps_state->upd[1] = ps_state->upd[0];
	movq	16(%rbp), %rax	 # ps_state, tmp194
	movss	(%rax), %xmm0	 # ps_state_77(D)->upd[0], _53
 # ./pdsp.c:2141:     ps_state->upd[1] = ps_state->upd[0];
	movq	16(%rbp), %rax	 # ps_state, tmp195
	movss	%xmm0, 4(%rax)	 # _53, ps_state_77(D)->upd[1]
 # ./pdsp.c:2142:     ps_state->y_notch1[2] = ps_state->y_notch1[1];
	movq	16(%rbp), %rax	 # ps_state, tmp196
	movss	16(%rax), %xmm0	 # ps_state_77(D)->y_notch1[1], _54
 # ./pdsp.c:2142:     ps_state->y_notch1[2] = ps_state->y_notch1[1];
	movq	16(%rbp), %rax	 # ps_state, tmp197
	movss	%xmm0, 20(%rax)	 # _54, ps_state_77(D)->y_notch1[2]
 # ./pdsp.c:2143:     ps_state->y_notch1[1] = ps_state->y_notch1[0];
	movq	16(%rbp), %rax	 # ps_state, tmp198
	movss	12(%rax), %xmm0	 # ps_state_77(D)->y_notch1[0], _55
 # ./pdsp.c:2143:     ps_state->y_notch1[1] = ps_state->y_notch1[0];
	movq	16(%rbp), %rax	 # ps_state, tmp199
	movss	%xmm0, 16(%rax)	 # _55, ps_state_77(D)->y_notch1[1]
 # ./pdsp.c:2144:     ps_state->y_notch2[2] = ps_state->y_notch2[1];
	movq	16(%rbp), %rax	 # ps_state, tmp200
	movss	28(%rax), %xmm0	 # ps_state_77(D)->y_notch2[1], _56
 # ./pdsp.c:2144:     ps_state->y_notch2[2] = ps_state->y_notch2[1];
	movq	16(%rbp), %rax	 # ps_state, tmp201
	movss	%xmm0, 32(%rax)	 # _56, ps_state_77(D)->y_notch2[2]
 # ./pdsp.c:2145:     ps_state->y_notch2[1] = ps_state->y_notch2[0];
	movq	16(%rbp), %rax	 # ps_state, tmp202
	movss	24(%rax), %xmm0	 # ps_state_77(D)->y_notch2[0], _57
 # ./pdsp.c:2145:     ps_state->y_notch2[1] = ps_state->y_notch2[0];
	movq	16(%rbp), %rax	 # ps_state, tmp203
	movss	%xmm0, 28(%rax)	 # _57, ps_state_77(D)->y_notch2[1]
 # ./pdsp.c:2146:     ps_state->ylf[1] = ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp204
	movss	36(%rax), %xmm0	 # ps_state_77(D)->ylf[0], _58
 # ./pdsp.c:2146:     ps_state->ylf[1] = ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp205
	movss	%xmm0, 40(%rax)	 # _58, ps_state_77(D)->ylf[1]
 # ./pdsp.c:2148:     ps_state->fo = ps_state->fn + ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp206
	movss	48(%rax), %xmm1	 # ps_state_77(D)->fn, _59
 # ./pdsp.c:2148:     ps_state->fo = ps_state->fn + ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp207
	movss	36(%rax), %xmm0	 # ps_state_77(D)->ylf[0], _60
 # ./pdsp.c:2148:     ps_state->fo = ps_state->fn + ps_state->ylf[0];
	addss	%xmm1, %xmm0	 # _59, _61
 # ./pdsp.c:2148:     ps_state->fo = ps_state->fn + ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp208
	movss	%xmm0, 44(%rax)	 # _61, ps_state_77(D)->fo
 # ./pdsp.c:2150:         ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI_F;
	movq	16(%rbp), %rax	 # ps_state, tmp209
	movss	52(%rax), %xmm1	 # ps_state_77(D)->theta, _62
 # ./pdsp.c:2150:         ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI_F;
	movq	16(%rbp), %rax	 # ps_state, tmp210
	movss	44(%rax), %xmm2	 # ps_state_77(D)->fo, _63
 # ./pdsp.c:2150:         ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI_F;
	movq	16(%rbp), %rax	 # ps_state, tmp211
	movss	64(%rax), %xmm0	 # ps_state_77(D)->delta_t, _64
 # ./pdsp.c:2150:         ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI_F;
	mulss	%xmm0, %xmm2	 # _64, _65
 # ./pdsp.c:2150:         ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI_F;
	movss	.LC23(%rip), %xmm0	 #, tmp212
	mulss	%xmm2, %xmm0	 # _65, _66
 # ./pdsp.c:2150:         ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI_F;
	addss	%xmm1, %xmm0	 # _62, _67
 # ./pdsp.c:2149:     ps_state->theta =
	movq	16(%rbp), %rax	 # ps_state, tmp213
	movss	%xmm0, 52(%rax)	 # _67, ps_state_77(D)->theta
 # ./pdsp.c:2151:     if (ps_state->theta > PDSP_2_PI_F)
	movq	16(%rbp), %rax	 # ps_state, tmp214
	movss	52(%rax), %xmm0	 # ps_state_77(D)->theta, _68
 # ./pdsp.c:2151:     if (ps_state->theta > PDSP_2_PI_F)
	comiss	.LC23(%rip), %xmm0	 #, _68
	jbe	.L591	 #,
 # ./pdsp.c:2153:         ps_state->theta = ps_state->theta - PDSP_2_PI_F;
	movq	16(%rbp), %rax	 # ps_state, tmp215
	movss	52(%rax), %xmm0	 # ps_state_77(D)->theta, _69
 # ./pdsp.c:2153:         ps_state->theta = ps_state->theta - PDSP_2_PI_F;
	movss	.LC23(%rip), %xmm1	 #, tmp216
	subss	%xmm1, %xmm0	 # tmp216, _70
 # ./pdsp.c:2153:         ps_state->theta = ps_state->theta - PDSP_2_PI_F;
	movq	16(%rbp), %rax	 # ps_state, tmp217
	movss	%xmm0, 52(%rax)	 # _70, ps_state_77(D)->theta
.L591:
 # ./pdsp.c:2155:     ps_state->sine = (pdsp_f32_t)pdsp_sinf(ps_state->theta);
	movq	16(%rbp), %rax	 # ps_state, tmp218
	movl	52(%rax), %eax	 # ps_state_77(D)->theta, _71
	movd	%eax, %xmm0	 # _71,
	call	sinf	 #
	movd	%xmm0, %eax	 #, _72
 # ./pdsp.c:2155:     ps_state->sine = (pdsp_f32_t)pdsp_sinf(ps_state->theta);
	movq	16(%rbp), %rdx	 # ps_state, tmp219
	movl	%eax, 60(%rdx)	 # _72, ps_state_77(D)->sine
 # ./pdsp.c:2156:     ps_state->cosine = (pdsp_f32_t)pdsp_cosf(ps_state->theta);
	movq	16(%rbp), %rax	 # ps_state, tmp220
	movl	52(%rax), %eax	 # ps_state_77(D)->theta, _73
	movd	%eax, %xmm0	 # _73,
	call	cosf	 #
	movd	%xmm0, %eax	 #, _74
 # ./pdsp.c:2156:     ps_state->cosine = (pdsp_f32_t)pdsp_cosf(ps_state->theta);
	movq	16(%rbp), %rdx	 # ps_state, tmp221
	movl	%eax, 56(%rdx)	 # _74, ps_state_77(D)->cosine
 # ./pdsp.c:2157:     return PDSP_OK;
	movl	$0, %eax	 #, _97
 # ./pdsp.c:2158: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_dpll_1ph_sogi_init
	.def	pdsp_dpll_1ph_sogi_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_dpll_1ph_sogi_init
pdsp_dpll_1ph_sogi_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_state, ps_state
 # ./pdsp.c:2163:     PDSP_ASSERT(ps_state != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_state
	jne	.L596	 #,
 # ./pdsp.c:2163:     PDSP_ASSERT(ps_state != NULL);
	movl	$2163, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp84
	movq	%rax, %rdx	 # tmp84,
	leaq	.LC1(%rip), %rax	 #, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	printf	 #
.L596:
 # ./pdsp.c:2164:     ps_state->u[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp86
	pxor	%xmm0, %xmm0	 # tmp87
	movss	%xmm0, (%rax)	 # tmp87, ps_state_2(D)->u[0]
 # ./pdsp.c:2165:     ps_state->u[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp88
	pxor	%xmm0, %xmm0	 # tmp89
	movss	%xmm0, 4(%rax)	 # tmp89, ps_state_2(D)->u[1]
 # ./pdsp.c:2166:     ps_state->u[2] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp90
	pxor	%xmm0, %xmm0	 # tmp91
	movss	%xmm0, 8(%rax)	 # tmp91, ps_state_2(D)->u[2]
 # ./pdsp.c:2167:     ps_state->osg_u[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp92
	pxor	%xmm0, %xmm0	 # tmp93
	movss	%xmm0, 12(%rax)	 # tmp93, ps_state_2(D)->osg_u[0]
 # ./pdsp.c:2168:     ps_state->osg_u[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp94
	pxor	%xmm0, %xmm0	 # tmp95
	movss	%xmm0, 16(%rax)	 # tmp95, ps_state_2(D)->osg_u[1]
 # ./pdsp.c:2169:     ps_state->osg_u[2] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp96
	pxor	%xmm0, %xmm0	 # tmp97
	movss	%xmm0, 20(%rax)	 # tmp97, ps_state_2(D)->osg_u[2]
 # ./pdsp.c:2170:     ps_state->osg_qu[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp98
	pxor	%xmm0, %xmm0	 # tmp99
	movss	%xmm0, 24(%rax)	 # tmp99, ps_state_2(D)->osg_qu[0]
 # ./pdsp.c:2171:     ps_state->osg_qu[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp100
	pxor	%xmm0, %xmm0	 # tmp101
	movss	%xmm0, 28(%rax)	 # tmp101, ps_state_2(D)->osg_qu[1]
 # ./pdsp.c:2172:     ps_state->osg_qu[2] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp102
	pxor	%xmm0, %xmm0	 # tmp103
	movss	%xmm0, 32(%rax)	 # tmp103, ps_state_2(D)->osg_qu[2]
 # ./pdsp.c:2173:     ps_state->u_Q[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp104
	pxor	%xmm0, %xmm0	 # tmp105
	movss	%xmm0, 36(%rax)	 # tmp105, ps_state_2(D)->u_Q[0]
 # ./pdsp.c:2174:     ps_state->u_Q[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp106
	pxor	%xmm0, %xmm0	 # tmp107
	movss	%xmm0, 40(%rax)	 # tmp107, ps_state_2(D)->u_Q[1]
 # ./pdsp.c:2175:     ps_state->u_D[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp108
	pxor	%xmm0, %xmm0	 # tmp109
	movss	%xmm0, 44(%rax)	 # tmp109, ps_state_2(D)->u_D[0]
 # ./pdsp.c:2176:     ps_state->u_D[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp110
	pxor	%xmm0, %xmm0	 # tmp111
	movss	%xmm0, 48(%rax)	 # tmp111, ps_state_2(D)->u_D[1]
 # ./pdsp.c:2177:     ps_state->ylf[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp112
	pxor	%xmm0, %xmm0	 # tmp113
	movss	%xmm0, 52(%rax)	 # tmp113, ps_state_2(D)->ylf[0]
 # ./pdsp.c:2178:     ps_state->ylf[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp114
	pxor	%xmm0, %xmm0	 # tmp115
	movss	%xmm0, 56(%rax)	 # tmp115, ps_state_2(D)->ylf[1]
 # ./pdsp.c:2179:     ps_state->fo = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp116
	pxor	%xmm0, %xmm0	 # tmp117
	movss	%xmm0, 60(%rax)	 # tmp117, ps_state_2(D)->fo
 # ./pdsp.c:2180:     ps_state->fn = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp118
	pxor	%xmm0, %xmm0	 # tmp119
	movss	%xmm0, 64(%rax)	 # tmp119, ps_state_2(D)->fn
 # ./pdsp.c:2181:     ps_state->theta = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp120
	pxor	%xmm0, %xmm0	 # tmp121
	movss	%xmm0, 68(%rax)	 # tmp121, ps_state_2(D)->theta
 # ./pdsp.c:2182:     ps_state->cosine = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp122
	pxor	%xmm0, %xmm0	 # tmp123
	movss	%xmm0, 72(%rax)	 # tmp123, ps_state_2(D)->cosine
 # ./pdsp.c:2183:     ps_state->sine = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp124
	pxor	%xmm0, %xmm0	 # tmp125
	movss	%xmm0, 76(%rax)	 # tmp125, ps_state_2(D)->sine
 # ./pdsp.c:2184:     ps_state->delta_t = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp126
	pxor	%xmm0, %xmm0	 # tmp127
	movss	%xmm0, 80(%rax)	 # tmp127, ps_state_2(D)->delta_t
 # ./pdsp.c:2186:     return PDSP_OK;
	movl	$0, %eax	 #, _26
 # ./pdsp.c:2187: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_dpll_1ph_sogi
	.def	pdsp_dpll_1ph_sogi;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_dpll_1ph_sogi
pdsp_dpll_1ph_sogi:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_state, ps_state
	movss	%xmm1, 24(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:2192:     PDSP_ASSERT(ps_state != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_state
	jne	.L599	 #,
 # ./pdsp.c:2192:     PDSP_ASSERT(ps_state != NULL);
	movl	$2192, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp163
	movq	%rax, %rdx	 # tmp163,
	leaq	.LC1(%rip), %rax	 #, tmp164
	movq	%rax, %rcx	 # tmp164,
	call	printf	 #
.L599:
 # ./pdsp.c:2194:     ps_state->u[0] = f32_in;
	movq	16(%rbp), %rax	 # ps_state, tmp165
	movss	24(%rbp), %xmm0	 # f32_in, tmp166
	movss	%xmm0, (%rax)	 # tmp166, ps_state_82(D)->u[0]
 # ./pdsp.c:2197:         (ps_state->osg_coeff.osg_b0 * (ps_state->u[0] - ps_state->u[2])) +
	movq	16(%rbp), %rax	 # ps_state, tmp167
	movss	96(%rax), %xmm1	 # ps_state_82(D)->osg_coeff.osg_b0, _1
 # ./pdsp.c:2197:         (ps_state->osg_coeff.osg_b0 * (ps_state->u[0] - ps_state->u[2])) +
	movq	16(%rbp), %rax	 # ps_state, tmp168
	movss	(%rax), %xmm0	 # ps_state_82(D)->u[0], _2
 # ./pdsp.c:2197:         (ps_state->osg_coeff.osg_b0 * (ps_state->u[0] - ps_state->u[2])) +
	movq	16(%rbp), %rax	 # ps_state, tmp169
	movss	8(%rax), %xmm2	 # ps_state_82(D)->u[2], _3
 # ./pdsp.c:2197:         (ps_state->osg_coeff.osg_b0 * (ps_state->u[0] - ps_state->u[2])) +
	subss	%xmm2, %xmm0	 # _3, _4
 # ./pdsp.c:2197:         (ps_state->osg_coeff.osg_b0 * (ps_state->u[0] - ps_state->u[2])) +
	mulss	%xmm0, %xmm1	 # _4, _5
 # ./pdsp.c:2198:         (ps_state->osg_coeff.osg_a1 * ps_state->osg_u[1]) +
	movq	16(%rbp), %rax	 # ps_state, tmp170
	movss	104(%rax), %xmm2	 # ps_state_82(D)->osg_coeff.osg_a1, _6
 # ./pdsp.c:2198:         (ps_state->osg_coeff.osg_a1 * ps_state->osg_u[1]) +
	movq	16(%rbp), %rax	 # ps_state, tmp171
	movss	16(%rax), %xmm0	 # ps_state_82(D)->osg_u[1], _7
 # ./pdsp.c:2198:         (ps_state->osg_coeff.osg_a1 * ps_state->osg_u[1]) +
	mulss	%xmm2, %xmm0	 # _6, _8
 # ./pdsp.c:2197:         (ps_state->osg_coeff.osg_b0 * (ps_state->u[0] - ps_state->u[2])) +
	addss	%xmm0, %xmm1	 # _8, _9
 # ./pdsp.c:2199:         (ps_state->osg_coeff.osg_a2 * ps_state->osg_u[2]);
	movq	16(%rbp), %rax	 # ps_state, tmp172
	movss	108(%rax), %xmm2	 # ps_state_82(D)->osg_coeff.osg_a2, _10
 # ./pdsp.c:2199:         (ps_state->osg_coeff.osg_a2 * ps_state->osg_u[2]);
	movq	16(%rbp), %rax	 # ps_state, tmp173
	movss	20(%rax), %xmm0	 # ps_state_82(D)->osg_u[2], _11
 # ./pdsp.c:2199:         (ps_state->osg_coeff.osg_a2 * ps_state->osg_u[2]);
	mulss	%xmm2, %xmm0	 # _10, _12
 # ./pdsp.c:2198:         (ps_state->osg_coeff.osg_a1 * ps_state->osg_u[1]) +
	addss	%xmm1, %xmm0	 # _9, _13
 # ./pdsp.c:2196:     ps_state->osg_u[0] =
	movq	16(%rbp), %rax	 # ps_state, tmp174
	movss	%xmm0, 12(%rax)	 # _13, ps_state_82(D)->osg_u[0]
 # ./pdsp.c:2200:     ps_state->osg_u[2] = ps_state->osg_u[1];
	movq	16(%rbp), %rax	 # ps_state, tmp175
	movss	16(%rax), %xmm0	 # ps_state_82(D)->osg_u[1], _14
 # ./pdsp.c:2200:     ps_state->osg_u[2] = ps_state->osg_u[1];
	movq	16(%rbp), %rax	 # ps_state, tmp176
	movss	%xmm0, 20(%rax)	 # _14, ps_state_82(D)->osg_u[2]
 # ./pdsp.c:2201:     ps_state->osg_u[1] = ps_state->osg_u[0];
	movq	16(%rbp), %rax	 # ps_state, tmp177
	movss	12(%rax), %xmm0	 # ps_state_82(D)->osg_u[0], _15
 # ./pdsp.c:2201:     ps_state->osg_u[1] = ps_state->osg_u[0];
	movq	16(%rbp), %rax	 # ps_state, tmp178
	movss	%xmm0, 16(%rax)	 # _15, ps_state_82(D)->osg_u[1]
 # ./pdsp.c:2202:     ps_state->osg_qu[0] = (ps_state->osg_coeff.osg_qb0 * ps_state->u[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp179
	movss	112(%rax), %xmm1	 # ps_state_82(D)->osg_coeff.osg_qb0, _16
 # ./pdsp.c:2202:     ps_state->osg_qu[0] = (ps_state->osg_coeff.osg_qb0 * ps_state->u[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp180
	movss	(%rax), %xmm0	 # ps_state_82(D)->u[0], _17
 # ./pdsp.c:2202:     ps_state->osg_qu[0] = (ps_state->osg_coeff.osg_qb0 * ps_state->u[0]) +
	mulss	%xmm0, %xmm1	 # _17, _18
 # ./pdsp.c:2203:                           (ps_state->osg_coeff.osg_qb1 * ps_state->u[1]) +
	movq	16(%rbp), %rax	 # ps_state, tmp181
	movss	116(%rax), %xmm2	 # ps_state_82(D)->osg_coeff.osg_qb1, _19
 # ./pdsp.c:2203:                           (ps_state->osg_coeff.osg_qb1 * ps_state->u[1]) +
	movq	16(%rbp), %rax	 # ps_state, tmp182
	movss	4(%rax), %xmm0	 # ps_state_82(D)->u[1], _20
 # ./pdsp.c:2203:                           (ps_state->osg_coeff.osg_qb1 * ps_state->u[1]) +
	mulss	%xmm2, %xmm0	 # _19, _21
 # ./pdsp.c:2202:     ps_state->osg_qu[0] = (ps_state->osg_coeff.osg_qb0 * ps_state->u[0]) +
	addss	%xmm0, %xmm1	 # _21, _22
 # ./pdsp.c:2204:                           (ps_state->osg_coeff.osg_qb2 * ps_state->u[2]) +
	movq	16(%rbp), %rax	 # ps_state, tmp183
	movss	120(%rax), %xmm2	 # ps_state_82(D)->osg_coeff.osg_qb2, _23
 # ./pdsp.c:2204:                           (ps_state->osg_coeff.osg_qb2 * ps_state->u[2]) +
	movq	16(%rbp), %rax	 # ps_state, tmp184
	movss	8(%rax), %xmm0	 # ps_state_82(D)->u[2], _24
 # ./pdsp.c:2204:                           (ps_state->osg_coeff.osg_qb2 * ps_state->u[2]) +
	mulss	%xmm2, %xmm0	 # _23, _25
 # ./pdsp.c:2203:                           (ps_state->osg_coeff.osg_qb1 * ps_state->u[1]) +
	addss	%xmm0, %xmm1	 # _25, _26
 # ./pdsp.c:2205:                           (ps_state->osg_coeff.osg_a1 * ps_state->osg_qu[1]) +
	movq	16(%rbp), %rax	 # ps_state, tmp185
	movss	104(%rax), %xmm2	 # ps_state_82(D)->osg_coeff.osg_a1, _27
 # ./pdsp.c:2205:                           (ps_state->osg_coeff.osg_a1 * ps_state->osg_qu[1]) +
	movq	16(%rbp), %rax	 # ps_state, tmp186
	movss	28(%rax), %xmm0	 # ps_state_82(D)->osg_qu[1], _28
 # ./pdsp.c:2205:                           (ps_state->osg_coeff.osg_a1 * ps_state->osg_qu[1]) +
	mulss	%xmm2, %xmm0	 # _27, _29
 # ./pdsp.c:2204:                           (ps_state->osg_coeff.osg_qb2 * ps_state->u[2]) +
	addss	%xmm0, %xmm1	 # _29, _30
 # ./pdsp.c:2206:                           (ps_state->osg_coeff.osg_a2 * ps_state->osg_qu[2]);
	movq	16(%rbp), %rax	 # ps_state, tmp187
	movss	108(%rax), %xmm2	 # ps_state_82(D)->osg_coeff.osg_a2, _31
 # ./pdsp.c:2206:                           (ps_state->osg_coeff.osg_a2 * ps_state->osg_qu[2]);
	movq	16(%rbp), %rax	 # ps_state, tmp188
	movss	32(%rax), %xmm0	 # ps_state_82(D)->osg_qu[2], _32
 # ./pdsp.c:2206:                           (ps_state->osg_coeff.osg_a2 * ps_state->osg_qu[2]);
	mulss	%xmm2, %xmm0	 # _31, _33
 # ./pdsp.c:2205:                           (ps_state->osg_coeff.osg_a1 * ps_state->osg_qu[1]) +
	addss	%xmm1, %xmm0	 # _30, _34
 # ./pdsp.c:2202:     ps_state->osg_qu[0] = (ps_state->osg_coeff.osg_qb0 * ps_state->u[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp189
	movss	%xmm0, 24(%rax)	 # _34, ps_state_82(D)->osg_qu[0]
 # ./pdsp.c:2207:     ps_state->osg_qu[2] = ps_state->osg_qu[1];
	movq	16(%rbp), %rax	 # ps_state, tmp190
	movss	28(%rax), %xmm0	 # ps_state_82(D)->osg_qu[1], _35
 # ./pdsp.c:2207:     ps_state->osg_qu[2] = ps_state->osg_qu[1];
	movq	16(%rbp), %rax	 # ps_state, tmp191
	movss	%xmm0, 32(%rax)	 # _35, ps_state_82(D)->osg_qu[2]
 # ./pdsp.c:2208:     ps_state->osg_qu[1] = ps_state->osg_qu[0];
	movq	16(%rbp), %rax	 # ps_state, tmp192
	movss	24(%rax), %xmm0	 # ps_state_82(D)->osg_qu[0], _36
 # ./pdsp.c:2208:     ps_state->osg_qu[1] = ps_state->osg_qu[0];
	movq	16(%rbp), %rax	 # ps_state, tmp193
	movss	%xmm0, 28(%rax)	 # _36, ps_state_82(D)->osg_qu[1]
 # ./pdsp.c:2209:     ps_state->u[2] = ps_state->u[1];
	movq	16(%rbp), %rax	 # ps_state, tmp194
	movss	4(%rax), %xmm0	 # ps_state_82(D)->u[1], _37
 # ./pdsp.c:2209:     ps_state->u[2] = ps_state->u[1];
	movq	16(%rbp), %rax	 # ps_state, tmp195
	movss	%xmm0, 8(%rax)	 # _37, ps_state_82(D)->u[2]
 # ./pdsp.c:2210:     ps_state->u[1] = ps_state->u[0];
	movq	16(%rbp), %rax	 # ps_state, tmp196
	movss	(%rax), %xmm0	 # ps_state_82(D)->u[0], _38
 # ./pdsp.c:2210:     ps_state->u[1] = ps_state->u[0];
	movq	16(%rbp), %rax	 # ps_state, tmp197
	movss	%xmm0, 4(%rax)	 # _38, ps_state_82(D)->u[1]
 # ./pdsp.c:2212:     ps_state->u_Q[0] = (ps_state->cosine * ps_state->osg_u[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp198
	movss	72(%rax), %xmm1	 # ps_state_82(D)->cosine, _39
 # ./pdsp.c:2212:     ps_state->u_Q[0] = (ps_state->cosine * ps_state->osg_u[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp199
	movss	12(%rax), %xmm0	 # ps_state_82(D)->osg_u[0], _40
 # ./pdsp.c:2212:     ps_state->u_Q[0] = (ps_state->cosine * ps_state->osg_u[0]) +
	mulss	%xmm0, %xmm1	 # _40, _41
 # ./pdsp.c:2213:                        (ps_state->sine * ps_state->osg_qu[0]);
	movq	16(%rbp), %rax	 # ps_state, tmp200
	movss	76(%rax), %xmm2	 # ps_state_82(D)->sine, _42
 # ./pdsp.c:2213:                        (ps_state->sine * ps_state->osg_qu[0]);
	movq	16(%rbp), %rax	 # ps_state, tmp201
	movss	24(%rax), %xmm0	 # ps_state_82(D)->osg_qu[0], _43
 # ./pdsp.c:2213:                        (ps_state->sine * ps_state->osg_qu[0]);
	mulss	%xmm2, %xmm0	 # _42, _44
 # ./pdsp.c:2212:     ps_state->u_Q[0] = (ps_state->cosine * ps_state->osg_u[0]) +
	addss	%xmm1, %xmm0	 # _41, _45
 # ./pdsp.c:2212:     ps_state->u_Q[0] = (ps_state->cosine * ps_state->osg_u[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp202
	movss	%xmm0, 36(%rax)	 # _45, ps_state_82(D)->u_Q[0]
 # ./pdsp.c:2214:     ps_state->u_D[0] = (ps_state->cosine * ps_state->osg_qu[0]) -
	movq	16(%rbp), %rax	 # ps_state, tmp203
	movss	72(%rax), %xmm1	 # ps_state_82(D)->cosine, _46
 # ./pdsp.c:2214:     ps_state->u_D[0] = (ps_state->cosine * ps_state->osg_qu[0]) -
	movq	16(%rbp), %rax	 # ps_state, tmp204
	movss	24(%rax), %xmm0	 # ps_state_82(D)->osg_qu[0], _47
 # ./pdsp.c:2214:     ps_state->u_D[0] = (ps_state->cosine * ps_state->osg_qu[0]) -
	mulss	%xmm1, %xmm0	 # _46, _48
 # ./pdsp.c:2215:                        (ps_state->sine * ps_state->osg_u[0]);
	movq	16(%rbp), %rax	 # ps_state, tmp205
	movss	76(%rax), %xmm2	 # ps_state_82(D)->sine, _49
 # ./pdsp.c:2215:                        (ps_state->sine * ps_state->osg_u[0]);
	movq	16(%rbp), %rax	 # ps_state, tmp206
	movss	12(%rax), %xmm1	 # ps_state_82(D)->osg_u[0], _50
 # ./pdsp.c:2215:                        (ps_state->sine * ps_state->osg_u[0]);
	mulss	%xmm2, %xmm1	 # _49, _51
 # ./pdsp.c:2214:     ps_state->u_D[0] = (ps_state->cosine * ps_state->osg_qu[0]) -
	subss	%xmm1, %xmm0	 # _51, _52
 # ./pdsp.c:2214:     ps_state->u_D[0] = (ps_state->cosine * ps_state->osg_qu[0]) -
	movq	16(%rbp), %rax	 # ps_state, tmp207
	movss	%xmm0, 44(%rax)	 # _52, ps_state_82(D)->u_D[0]
 # ./pdsp.c:2217:     ps_state->ylf[0] = ps_state->ylf[1] +
	movq	16(%rbp), %rax	 # ps_state, tmp208
	movss	56(%rax), %xmm1	 # ps_state_82(D)->ylf[1], _53
 # ./pdsp.c:2218:                        (ps_state->lpf_coeff.f32_b0 * ps_state->u_Q[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp209
	movss	124(%rax), %xmm2	 # ps_state_82(D)->lpf_coeff.f32_b0, _54
 # ./pdsp.c:2218:                        (ps_state->lpf_coeff.f32_b0 * ps_state->u_Q[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp210
	movss	36(%rax), %xmm0	 # ps_state_82(D)->u_Q[0], _55
 # ./pdsp.c:2218:                        (ps_state->lpf_coeff.f32_b0 * ps_state->u_Q[0]) +
	mulss	%xmm2, %xmm0	 # _54, _56
 # ./pdsp.c:2217:     ps_state->ylf[0] = ps_state->ylf[1] +
	addss	%xmm0, %xmm1	 # _56, _57
 # ./pdsp.c:2219:                        (ps_state->lpf_coeff.f32_b1 * ps_state->u_Q[1]);
	movq	16(%rbp), %rax	 # ps_state, tmp211
	movss	128(%rax), %xmm2	 # ps_state_82(D)->lpf_coeff.f32_b1, _58
 # ./pdsp.c:2219:                        (ps_state->lpf_coeff.f32_b1 * ps_state->u_Q[1]);
	movq	16(%rbp), %rax	 # ps_state, tmp212
	movss	40(%rax), %xmm0	 # ps_state_82(D)->u_Q[1], _59
 # ./pdsp.c:2219:                        (ps_state->lpf_coeff.f32_b1 * ps_state->u_Q[1]);
	mulss	%xmm2, %xmm0	 # _58, _60
 # ./pdsp.c:2218:                        (ps_state->lpf_coeff.f32_b0 * ps_state->u_Q[0]) +
	addss	%xmm1, %xmm0	 # _57, _61
 # ./pdsp.c:2217:     ps_state->ylf[0] = ps_state->ylf[1] +
	movq	16(%rbp), %rax	 # ps_state, tmp213
	movss	%xmm0, 52(%rax)	 # _61, ps_state_82(D)->ylf[0]
 # ./pdsp.c:2220:     ps_state->ylf[1] = ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp214
	movss	52(%rax), %xmm0	 # ps_state_82(D)->ylf[0], _62
 # ./pdsp.c:2220:     ps_state->ylf[1] = ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp215
	movss	%xmm0, 56(%rax)	 # _62, ps_state_82(D)->ylf[1]
 # ./pdsp.c:2221:     ps_state->u_Q[1] = ps_state->u_Q[0];
	movq	16(%rbp), %rax	 # ps_state, tmp216
	movss	36(%rax), %xmm0	 # ps_state_82(D)->u_Q[0], _63
 # ./pdsp.c:2221:     ps_state->u_Q[1] = ps_state->u_Q[0];
	movq	16(%rbp), %rax	 # ps_state, tmp217
	movss	%xmm0, 40(%rax)	 # _63, ps_state_82(D)->u_Q[1]
 # ./pdsp.c:2223:     ps_state->fo = ps_state->fn + ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp218
	movss	64(%rax), %xmm1	 # ps_state_82(D)->fn, _64
 # ./pdsp.c:2223:     ps_state->fo = ps_state->fn + ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp219
	movss	52(%rax), %xmm0	 # ps_state_82(D)->ylf[0], _65
 # ./pdsp.c:2223:     ps_state->fo = ps_state->fn + ps_state->ylf[0];
	addss	%xmm1, %xmm0	 # _64, _66
 # ./pdsp.c:2223:     ps_state->fo = ps_state->fn + ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp220
	movss	%xmm0, 60(%rax)	 # _66, ps_state_82(D)->fo
 # ./pdsp.c:2225:         ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI_F;
	movq	16(%rbp), %rax	 # ps_state, tmp221
	movss	68(%rax), %xmm1	 # ps_state_82(D)->theta, _67
 # ./pdsp.c:2225:         ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI_F;
	movq	16(%rbp), %rax	 # ps_state, tmp222
	movss	60(%rax), %xmm2	 # ps_state_82(D)->fo, _68
 # ./pdsp.c:2225:         ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI_F;
	movq	16(%rbp), %rax	 # ps_state, tmp223
	movss	80(%rax), %xmm0	 # ps_state_82(D)->delta_t, _69
 # ./pdsp.c:2225:         ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI_F;
	mulss	%xmm0, %xmm2	 # _69, _70
 # ./pdsp.c:2225:         ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI_F;
	movss	.LC23(%rip), %xmm0	 #, tmp224
	mulss	%xmm2, %xmm0	 # _70, _71
 # ./pdsp.c:2225:         ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI_F;
	addss	%xmm1, %xmm0	 # _67, _72
 # ./pdsp.c:2224:     ps_state->theta =
	movq	16(%rbp), %rax	 # ps_state, tmp225
	movss	%xmm0, 68(%rax)	 # _72, ps_state_82(D)->theta
 # ./pdsp.c:2226:     if (ps_state->theta > PDSP_2_PI_F)
	movq	16(%rbp), %rax	 # ps_state, tmp226
	movss	68(%rax), %xmm0	 # ps_state_82(D)->theta, _73
 # ./pdsp.c:2226:     if (ps_state->theta > PDSP_2_PI_F)
	comiss	.LC23(%rip), %xmm0	 #, _73
	jbe	.L600	 #,
 # ./pdsp.c:2228:         ps_state->theta = ps_state->theta - PDSP_2_PI_F;
	movq	16(%rbp), %rax	 # ps_state, tmp227
	movss	68(%rax), %xmm0	 # ps_state_82(D)->theta, _74
 # ./pdsp.c:2228:         ps_state->theta = ps_state->theta - PDSP_2_PI_F;
	movss	.LC23(%rip), %xmm1	 #, tmp228
	subss	%xmm1, %xmm0	 # tmp228, _75
 # ./pdsp.c:2228:         ps_state->theta = ps_state->theta - PDSP_2_PI_F;
	movq	16(%rbp), %rax	 # ps_state, tmp229
	movss	%xmm0, 68(%rax)	 # _75, ps_state_82(D)->theta
.L600:
 # ./pdsp.c:2231:     ps_state->sine = (pdsp_f32_t)pdsp_sinf(ps_state->theta);
	movq	16(%rbp), %rax	 # ps_state, tmp230
	movl	68(%rax), %eax	 # ps_state_82(D)->theta, _76
	movd	%eax, %xmm0	 # _76,
	call	sinf	 #
	movd	%xmm0, %eax	 #, _77
 # ./pdsp.c:2231:     ps_state->sine = (pdsp_f32_t)pdsp_sinf(ps_state->theta);
	movq	16(%rbp), %rdx	 # ps_state, tmp231
	movl	%eax, 76(%rdx)	 # _77, ps_state_82(D)->sine
 # ./pdsp.c:2232:     ps_state->cosine = (pdsp_f32_t)pdsp_cosf(ps_state->theta);
	movq	16(%rbp), %rax	 # ps_state, tmp232
	movl	68(%rax), %eax	 # ps_state_82(D)->theta, _78
	movd	%eax, %xmm0	 # _78,
	call	cosf	 #
	movd	%xmm0, %eax	 #, _79
 # ./pdsp.c:2232:     ps_state->cosine = (pdsp_f32_t)pdsp_cosf(ps_state->theta);
	movq	16(%rbp), %rdx	 # ps_state, tmp233
	movl	%eax, 72(%rdx)	 # _79, ps_state_82(D)->cosine
 # ./pdsp.c:2233:     return PDSP_OK;
	movl	$0, %eax	 #, _105
 # ./pdsp.c:2234: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_dpll_1ph_sogi_fll_init
	.def	pdsp_dpll_1ph_sogi_fll_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_dpll_1ph_sogi_fll_init
pdsp_dpll_1ph_sogi_fll_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_state, ps_state
 # ./pdsp.c:2239:     PDSP_ASSERT(ps_state != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_state
	jne	.L605	 #,
 # ./pdsp.c:2239:     PDSP_ASSERT(ps_state != NULL);
	movl	$2239, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp84
	movq	%rax, %rdx	 # tmp84,
	leaq	.LC1(%rip), %rax	 #, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	printf	 #
.L605:
 # ./pdsp.c:2240:     ps_state->u[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp86
	pxor	%xmm0, %xmm0	 # tmp87
	movss	%xmm0, (%rax)	 # tmp87, ps_state_2(D)->u[0]
 # ./pdsp.c:2241:     ps_state->u[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp88
	pxor	%xmm0, %xmm0	 # tmp89
	movss	%xmm0, 4(%rax)	 # tmp89, ps_state_2(D)->u[1]
 # ./pdsp.c:2242:     ps_state->u[2] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp90
	pxor	%xmm0, %xmm0	 # tmp91
	movss	%xmm0, 8(%rax)	 # tmp91, ps_state_2(D)->u[2]
 # ./pdsp.c:2243:     ps_state->osg_u[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp92
	pxor	%xmm0, %xmm0	 # tmp93
	movss	%xmm0, 12(%rax)	 # tmp93, ps_state_2(D)->osg_u[0]
 # ./pdsp.c:2244:     ps_state->osg_u[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp94
	pxor	%xmm0, %xmm0	 # tmp95
	movss	%xmm0, 16(%rax)	 # tmp95, ps_state_2(D)->osg_u[1]
 # ./pdsp.c:2245:     ps_state->osg_u[2] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp96
	pxor	%xmm0, %xmm0	 # tmp97
	movss	%xmm0, 20(%rax)	 # tmp97, ps_state_2(D)->osg_u[2]
 # ./pdsp.c:2246:     ps_state->osg_qu[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp98
	pxor	%xmm0, %xmm0	 # tmp99
	movss	%xmm0, 24(%rax)	 # tmp99, ps_state_2(D)->osg_qu[0]
 # ./pdsp.c:2247:     ps_state->osg_qu[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp100
	pxor	%xmm0, %xmm0	 # tmp101
	movss	%xmm0, 28(%rax)	 # tmp101, ps_state_2(D)->osg_qu[1]
 # ./pdsp.c:2248:     ps_state->osg_qu[2] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp102
	pxor	%xmm0, %xmm0	 # tmp103
	movss	%xmm0, 32(%rax)	 # tmp103, ps_state_2(D)->osg_qu[2]
 # ./pdsp.c:2249:     ps_state->u_Q[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp104
	pxor	%xmm0, %xmm0	 # tmp105
	movss	%xmm0, 36(%rax)	 # tmp105, ps_state_2(D)->u_Q[0]
 # ./pdsp.c:2250:     ps_state->u_Q[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp106
	pxor	%xmm0, %xmm0	 # tmp107
	movss	%xmm0, 40(%rax)	 # tmp107, ps_state_2(D)->u_Q[1]
 # ./pdsp.c:2251:     ps_state->u_D[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp108
	pxor	%xmm0, %xmm0	 # tmp109
	movss	%xmm0, 44(%rax)	 # tmp109, ps_state_2(D)->u_D[0]
 # ./pdsp.c:2252:     ps_state->u_D[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp110
	pxor	%xmm0, %xmm0	 # tmp111
	movss	%xmm0, 48(%rax)	 # tmp111, ps_state_2(D)->u_D[1]
 # ./pdsp.c:2253:     ps_state->ylf[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp112
	pxor	%xmm0, %xmm0	 # tmp113
	movss	%xmm0, 52(%rax)	 # tmp113, ps_state_2(D)->ylf[0]
 # ./pdsp.c:2254:     ps_state->ylf[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp114
	pxor	%xmm0, %xmm0	 # tmp115
	movss	%xmm0, 56(%rax)	 # tmp115, ps_state_2(D)->ylf[1]
 # ./pdsp.c:2255:     ps_state->fo = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp116
	pxor	%xmm0, %xmm0	 # tmp117
	movss	%xmm0, 60(%rax)	 # tmp117, ps_state_2(D)->fo
 # ./pdsp.c:2256:     ps_state->fn = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp118
	pxor	%xmm0, %xmm0	 # tmp119
	movss	%xmm0, 64(%rax)	 # tmp119, ps_state_2(D)->fn
 # ./pdsp.c:2257:     ps_state->wc = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp120
	pxor	%xmm0, %xmm0	 # tmp121
	movss	%xmm0, 68(%rax)	 # tmp121, ps_state_2(D)->wc
 # ./pdsp.c:2258:     ps_state->theta = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp122
	pxor	%xmm0, %xmm0	 # tmp123
	movss	%xmm0, 72(%rax)	 # tmp123, ps_state_2(D)->theta
 # ./pdsp.c:2259:     ps_state->cosine = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp124
	pxor	%xmm0, %xmm0	 # tmp125
	movss	%xmm0, 76(%rax)	 # tmp125, ps_state_2(D)->cosine
 # ./pdsp.c:2260:     ps_state->sine = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp126
	pxor	%xmm0, %xmm0	 # tmp127
	movss	%xmm0, 80(%rax)	 # tmp127, ps_state_2(D)->sine
 # ./pdsp.c:2261:     ps_state->delta_t = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp128
	pxor	%xmm0, %xmm0	 # tmp129
	movss	%xmm0, 84(%rax)	 # tmp129, ps_state_2(D)->delta_t
 # ./pdsp.c:2262:     ps_state->ef2 = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp130
	pxor	%xmm0, %xmm0	 # tmp131
	movss	%xmm0, 88(%rax)	 # tmp131, ps_state_2(D)->ef2
 # ./pdsp.c:2263:     ps_state->x3[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp132
	pxor	%xmm0, %xmm0	 # tmp133
	movss	%xmm0, 92(%rax)	 # tmp133, ps_state_2(D)->x3[0]
 # ./pdsp.c:2264:     ps_state->x3[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp134
	pxor	%xmm0, %xmm0	 # tmp135
	movss	%xmm0, 96(%rax)	 # tmp135, ps_state_2(D)->x3[1]
 # ./pdsp.c:2265:     ps_state->w_dash = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp136
	pxor	%xmm0, %xmm0	 # tmp137
	movss	%xmm0, 100(%rax)	 # tmp137, ps_state_2(D)->w_dash
 # ./pdsp.c:2266:     ps_state->gamma = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp138
	pxor	%xmm0, %xmm0	 # tmp139
	movss	%xmm0, 104(%rax)	 # tmp139, ps_state_2(D)->gamma
 # ./pdsp.c:2267:     ps_state->k = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp140
	pxor	%xmm0, %xmm0	 # tmp141
	movss	%xmm0, 108(%rax)	 # tmp141, ps_state_2(D)->k
 # ./pdsp.c:2269:     return PDSP_OK;
	movl	$0, %eax	 #, _33
 # ./pdsp.c:2270: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_dpll_1ph_sogi_fll
	.def	pdsp_dpll_1ph_sogi_fll;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_dpll_1ph_sogi_fll
pdsp_dpll_1ph_sogi_fll:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_state, ps_state
	movss	%xmm1, 24(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:2276:     PDSP_ASSERT(ps_state != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_state
	jne	.L608	 #,
 # ./pdsp.c:2276:     PDSP_ASSERT(ps_state != NULL);
	movl	$2276, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp210
	movq	%rax, %rdx	 # tmp210,
	leaq	.LC1(%rip), %rax	 #, tmp211
	movq	%rax, %rcx	 # tmp211,
	call	printf	 #
.L608:
 # ./pdsp.c:2279:     ps_state->u[0] = f32_in;
	movq	16(%rbp), %rax	 # ps_state, tmp212
	movss	24(%rbp), %xmm0	 # f32_in, tmp213
	movss	%xmm0, (%rax)	 # tmp213, ps_state_129(D)->u[0]
 # ./pdsp.c:2282:         (ps_state->osg_coeff.osg_b0 * (ps_state->u[0] - ps_state->u[2])) +
	movq	16(%rbp), %rax	 # ps_state, tmp214
	movss	124(%rax), %xmm1	 # ps_state_129(D)->osg_coeff.osg_b0, _1
 # ./pdsp.c:2282:         (ps_state->osg_coeff.osg_b0 * (ps_state->u[0] - ps_state->u[2])) +
	movq	16(%rbp), %rax	 # ps_state, tmp215
	movss	(%rax), %xmm0	 # ps_state_129(D)->u[0], _2
 # ./pdsp.c:2282:         (ps_state->osg_coeff.osg_b0 * (ps_state->u[0] - ps_state->u[2])) +
	movq	16(%rbp), %rax	 # ps_state, tmp216
	movss	8(%rax), %xmm2	 # ps_state_129(D)->u[2], _3
 # ./pdsp.c:2282:         (ps_state->osg_coeff.osg_b0 * (ps_state->u[0] - ps_state->u[2])) +
	subss	%xmm2, %xmm0	 # _3, _4
 # ./pdsp.c:2282:         (ps_state->osg_coeff.osg_b0 * (ps_state->u[0] - ps_state->u[2])) +
	mulss	%xmm0, %xmm1	 # _4, _5
 # ./pdsp.c:2283:         (ps_state->osg_coeff.osg_a1 * ps_state->osg_u[1]) +
	movq	16(%rbp), %rax	 # ps_state, tmp217
	movss	132(%rax), %xmm2	 # ps_state_129(D)->osg_coeff.osg_a1, _6
 # ./pdsp.c:2283:         (ps_state->osg_coeff.osg_a1 * ps_state->osg_u[1]) +
	movq	16(%rbp), %rax	 # ps_state, tmp218
	movss	16(%rax), %xmm0	 # ps_state_129(D)->osg_u[1], _7
 # ./pdsp.c:2283:         (ps_state->osg_coeff.osg_a1 * ps_state->osg_u[1]) +
	mulss	%xmm2, %xmm0	 # _6, _8
 # ./pdsp.c:2282:         (ps_state->osg_coeff.osg_b0 * (ps_state->u[0] - ps_state->u[2])) +
	addss	%xmm0, %xmm1	 # _8, _9
 # ./pdsp.c:2284:         (ps_state->osg_coeff.osg_a2 * ps_state->osg_u[2]);
	movq	16(%rbp), %rax	 # ps_state, tmp219
	movss	136(%rax), %xmm2	 # ps_state_129(D)->osg_coeff.osg_a2, _10
 # ./pdsp.c:2284:         (ps_state->osg_coeff.osg_a2 * ps_state->osg_u[2]);
	movq	16(%rbp), %rax	 # ps_state, tmp220
	movss	20(%rax), %xmm0	 # ps_state_129(D)->osg_u[2], _11
 # ./pdsp.c:2284:         (ps_state->osg_coeff.osg_a2 * ps_state->osg_u[2]);
	mulss	%xmm2, %xmm0	 # _10, _12
 # ./pdsp.c:2283:         (ps_state->osg_coeff.osg_a1 * ps_state->osg_u[1]) +
	addss	%xmm1, %xmm0	 # _9, _13
 # ./pdsp.c:2281:     ps_state->osg_u[0] =
	movq	16(%rbp), %rax	 # ps_state, tmp221
	movss	%xmm0, 12(%rax)	 # _13, ps_state_129(D)->osg_u[0]
 # ./pdsp.c:2285:     ps_state->osg_u[2] = ps_state->osg_u[1];
	movq	16(%rbp), %rax	 # ps_state, tmp222
	movss	16(%rax), %xmm0	 # ps_state_129(D)->osg_u[1], _14
 # ./pdsp.c:2285:     ps_state->osg_u[2] = ps_state->osg_u[1];
	movq	16(%rbp), %rax	 # ps_state, tmp223
	movss	%xmm0, 20(%rax)	 # _14, ps_state_129(D)->osg_u[2]
 # ./pdsp.c:2286:     ps_state->osg_u[1] = ps_state->osg_u[0];
	movq	16(%rbp), %rax	 # ps_state, tmp224
	movss	12(%rax), %xmm0	 # ps_state_129(D)->osg_u[0], _15
 # ./pdsp.c:2286:     ps_state->osg_u[1] = ps_state->osg_u[0];
	movq	16(%rbp), %rax	 # ps_state, tmp225
	movss	%xmm0, 16(%rax)	 # _15, ps_state_129(D)->osg_u[1]
 # ./pdsp.c:2287:     ps_state->osg_qu[0] = (ps_state->osg_coeff.osg_qb0 * ps_state->u[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp226
	movss	140(%rax), %xmm1	 # ps_state_129(D)->osg_coeff.osg_qb0, _16
 # ./pdsp.c:2287:     ps_state->osg_qu[0] = (ps_state->osg_coeff.osg_qb0 * ps_state->u[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp227
	movss	(%rax), %xmm0	 # ps_state_129(D)->u[0], _17
 # ./pdsp.c:2287:     ps_state->osg_qu[0] = (ps_state->osg_coeff.osg_qb0 * ps_state->u[0]) +
	mulss	%xmm0, %xmm1	 # _17, _18
 # ./pdsp.c:2288:                           (ps_state->osg_coeff.osg_qb1 * ps_state->u[1]) +
	movq	16(%rbp), %rax	 # ps_state, tmp228
	movss	144(%rax), %xmm2	 # ps_state_129(D)->osg_coeff.osg_qb1, _19
 # ./pdsp.c:2288:                           (ps_state->osg_coeff.osg_qb1 * ps_state->u[1]) +
	movq	16(%rbp), %rax	 # ps_state, tmp229
	movss	4(%rax), %xmm0	 # ps_state_129(D)->u[1], _20
 # ./pdsp.c:2288:                           (ps_state->osg_coeff.osg_qb1 * ps_state->u[1]) +
	mulss	%xmm2, %xmm0	 # _19, _21
 # ./pdsp.c:2287:     ps_state->osg_qu[0] = (ps_state->osg_coeff.osg_qb0 * ps_state->u[0]) +
	addss	%xmm0, %xmm1	 # _21, _22
 # ./pdsp.c:2289:                           (ps_state->osg_coeff.osg_qb2 * ps_state->u[2]) +
	movq	16(%rbp), %rax	 # ps_state, tmp230
	movss	148(%rax), %xmm2	 # ps_state_129(D)->osg_coeff.osg_qb2, _23
 # ./pdsp.c:2289:                           (ps_state->osg_coeff.osg_qb2 * ps_state->u[2]) +
	movq	16(%rbp), %rax	 # ps_state, tmp231
	movss	8(%rax), %xmm0	 # ps_state_129(D)->u[2], _24
 # ./pdsp.c:2289:                           (ps_state->osg_coeff.osg_qb2 * ps_state->u[2]) +
	mulss	%xmm2, %xmm0	 # _23, _25
 # ./pdsp.c:2288:                           (ps_state->osg_coeff.osg_qb1 * ps_state->u[1]) +
	addss	%xmm0, %xmm1	 # _25, _26
 # ./pdsp.c:2290:                           (ps_state->osg_coeff.osg_a1 * ps_state->osg_qu[1]) +
	movq	16(%rbp), %rax	 # ps_state, tmp232
	movss	132(%rax), %xmm2	 # ps_state_129(D)->osg_coeff.osg_a1, _27
 # ./pdsp.c:2290:                           (ps_state->osg_coeff.osg_a1 * ps_state->osg_qu[1]) +
	movq	16(%rbp), %rax	 # ps_state, tmp233
	movss	28(%rax), %xmm0	 # ps_state_129(D)->osg_qu[1], _28
 # ./pdsp.c:2290:                           (ps_state->osg_coeff.osg_a1 * ps_state->osg_qu[1]) +
	mulss	%xmm2, %xmm0	 # _27, _29
 # ./pdsp.c:2289:                           (ps_state->osg_coeff.osg_qb2 * ps_state->u[2]) +
	addss	%xmm0, %xmm1	 # _29, _30
 # ./pdsp.c:2291:                           (ps_state->osg_coeff.osg_a2 * ps_state->osg_qu[2]);
	movq	16(%rbp), %rax	 # ps_state, tmp234
	movss	136(%rax), %xmm2	 # ps_state_129(D)->osg_coeff.osg_a2, _31
 # ./pdsp.c:2291:                           (ps_state->osg_coeff.osg_a2 * ps_state->osg_qu[2]);
	movq	16(%rbp), %rax	 # ps_state, tmp235
	movss	32(%rax), %xmm0	 # ps_state_129(D)->osg_qu[2], _32
 # ./pdsp.c:2291:                           (ps_state->osg_coeff.osg_a2 * ps_state->osg_qu[2]);
	mulss	%xmm2, %xmm0	 # _31, _33
 # ./pdsp.c:2290:                           (ps_state->osg_coeff.osg_a1 * ps_state->osg_qu[1]) +
	addss	%xmm1, %xmm0	 # _30, _34
 # ./pdsp.c:2287:     ps_state->osg_qu[0] = (ps_state->osg_coeff.osg_qb0 * ps_state->u[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp236
	movss	%xmm0, 24(%rax)	 # _34, ps_state_129(D)->osg_qu[0]
 # ./pdsp.c:2292:     ps_state->osg_qu[2] = ps_state->osg_qu[1];
	movq	16(%rbp), %rax	 # ps_state, tmp237
	movss	28(%rax), %xmm0	 # ps_state_129(D)->osg_qu[1], _35
 # ./pdsp.c:2292:     ps_state->osg_qu[2] = ps_state->osg_qu[1];
	movq	16(%rbp), %rax	 # ps_state, tmp238
	movss	%xmm0, 32(%rax)	 # _35, ps_state_129(D)->osg_qu[2]
 # ./pdsp.c:2293:     ps_state->osg_qu[1] = ps_state->osg_qu[0];
	movq	16(%rbp), %rax	 # ps_state, tmp239
	movss	24(%rax), %xmm0	 # ps_state_129(D)->osg_qu[0], _36
 # ./pdsp.c:2293:     ps_state->osg_qu[1] = ps_state->osg_qu[0];
	movq	16(%rbp), %rax	 # ps_state, tmp240
	movss	%xmm0, 28(%rax)	 # _36, ps_state_129(D)->osg_qu[1]
 # ./pdsp.c:2294:     ps_state->u[2] = ps_state->u[1];
	movq	16(%rbp), %rax	 # ps_state, tmp241
	movss	4(%rax), %xmm0	 # ps_state_129(D)->u[1], _37
 # ./pdsp.c:2294:     ps_state->u[2] = ps_state->u[1];
	movq	16(%rbp), %rax	 # ps_state, tmp242
	movss	%xmm0, 8(%rax)	 # _37, ps_state_129(D)->u[2]
 # ./pdsp.c:2295:     ps_state->u[1] = ps_state->u[0];
	movq	16(%rbp), %rax	 # ps_state, tmp243
	movss	(%rax), %xmm0	 # ps_state_129(D)->u[0], _38
 # ./pdsp.c:2295:     ps_state->u[1] = ps_state->u[0];
	movq	16(%rbp), %rax	 # ps_state, tmp244
	movss	%xmm0, 4(%rax)	 # _38, ps_state_129(D)->u[1]
 # ./pdsp.c:2297:     ps_state->u_Q[0] = (ps_state->cosine * ps_state->osg_u[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp245
	movss	76(%rax), %xmm1	 # ps_state_129(D)->cosine, _39
 # ./pdsp.c:2297:     ps_state->u_Q[0] = (ps_state->cosine * ps_state->osg_u[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp246
	movss	12(%rax), %xmm0	 # ps_state_129(D)->osg_u[0], _40
 # ./pdsp.c:2297:     ps_state->u_Q[0] = (ps_state->cosine * ps_state->osg_u[0]) +
	mulss	%xmm0, %xmm1	 # _40, _41
 # ./pdsp.c:2298:                        (ps_state->sine * ps_state->osg_qu[0]);
	movq	16(%rbp), %rax	 # ps_state, tmp247
	movss	80(%rax), %xmm2	 # ps_state_129(D)->sine, _42
 # ./pdsp.c:2298:                        (ps_state->sine * ps_state->osg_qu[0]);
	movq	16(%rbp), %rax	 # ps_state, tmp248
	movss	24(%rax), %xmm0	 # ps_state_129(D)->osg_qu[0], _43
 # ./pdsp.c:2298:                        (ps_state->sine * ps_state->osg_qu[0]);
	mulss	%xmm2, %xmm0	 # _42, _44
 # ./pdsp.c:2297:     ps_state->u_Q[0] = (ps_state->cosine * ps_state->osg_u[0]) +
	addss	%xmm1, %xmm0	 # _41, _45
 # ./pdsp.c:2297:     ps_state->u_Q[0] = (ps_state->cosine * ps_state->osg_u[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp249
	movss	%xmm0, 36(%rax)	 # _45, ps_state_129(D)->u_Q[0]
 # ./pdsp.c:2299:     ps_state->u_D[0] = (ps_state->cosine * ps_state->osg_qu[0]) -
	movq	16(%rbp), %rax	 # ps_state, tmp250
	movss	76(%rax), %xmm1	 # ps_state_129(D)->cosine, _46
 # ./pdsp.c:2299:     ps_state->u_D[0] = (ps_state->cosine * ps_state->osg_qu[0]) -
	movq	16(%rbp), %rax	 # ps_state, tmp251
	movss	24(%rax), %xmm0	 # ps_state_129(D)->osg_qu[0], _47
 # ./pdsp.c:2299:     ps_state->u_D[0] = (ps_state->cosine * ps_state->osg_qu[0]) -
	mulss	%xmm1, %xmm0	 # _46, _48
 # ./pdsp.c:2300:                        (ps_state->sine * ps_state->osg_u[0]);
	movq	16(%rbp), %rax	 # ps_state, tmp252
	movss	80(%rax), %xmm2	 # ps_state_129(D)->sine, _49
 # ./pdsp.c:2300:                        (ps_state->sine * ps_state->osg_u[0]);
	movq	16(%rbp), %rax	 # ps_state, tmp253
	movss	12(%rax), %xmm1	 # ps_state_129(D)->osg_u[0], _50
 # ./pdsp.c:2300:                        (ps_state->sine * ps_state->osg_u[0]);
	mulss	%xmm2, %xmm1	 # _49, _51
 # ./pdsp.c:2299:     ps_state->u_D[0] = (ps_state->cosine * ps_state->osg_qu[0]) -
	subss	%xmm1, %xmm0	 # _51, _52
 # ./pdsp.c:2299:     ps_state->u_D[0] = (ps_state->cosine * ps_state->osg_qu[0]) -
	movq	16(%rbp), %rax	 # ps_state, tmp254
	movss	%xmm0, 44(%rax)	 # _52, ps_state_129(D)->u_D[0]
 # ./pdsp.c:2302:     ps_state->ylf[0] = ps_state->ylf[1] +
	movq	16(%rbp), %rax	 # ps_state, tmp255
	movss	56(%rax), %xmm1	 # ps_state_129(D)->ylf[1], _53
 # ./pdsp.c:2303:                        (ps_state->lpf_coeff.f32_b0 * ps_state->u_Q[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp256
	movss	152(%rax), %xmm2	 # ps_state_129(D)->lpf_coeff.f32_b0, _54
 # ./pdsp.c:2303:                        (ps_state->lpf_coeff.f32_b0 * ps_state->u_Q[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp257
	movss	36(%rax), %xmm0	 # ps_state_129(D)->u_Q[0], _55
 # ./pdsp.c:2303:                        (ps_state->lpf_coeff.f32_b0 * ps_state->u_Q[0]) +
	mulss	%xmm2, %xmm0	 # _54, _56
 # ./pdsp.c:2302:     ps_state->ylf[0] = ps_state->ylf[1] +
	addss	%xmm0, %xmm1	 # _56, _57
 # ./pdsp.c:2304:                        (ps_state->lpf_coeff.f32_b1 * ps_state->u_Q[1]);
	movq	16(%rbp), %rax	 # ps_state, tmp258
	movss	156(%rax), %xmm2	 # ps_state_129(D)->lpf_coeff.f32_b1, _58
 # ./pdsp.c:2304:                        (ps_state->lpf_coeff.f32_b1 * ps_state->u_Q[1]);
	movq	16(%rbp), %rax	 # ps_state, tmp259
	movss	40(%rax), %xmm0	 # ps_state_129(D)->u_Q[1], _59
 # ./pdsp.c:2304:                        (ps_state->lpf_coeff.f32_b1 * ps_state->u_Q[1]);
	mulss	%xmm2, %xmm0	 # _58, _60
 # ./pdsp.c:2303:                        (ps_state->lpf_coeff.f32_b0 * ps_state->u_Q[0]) +
	addss	%xmm1, %xmm0	 # _57, _61
 # ./pdsp.c:2302:     ps_state->ylf[0] = ps_state->ylf[1] +
	movq	16(%rbp), %rax	 # ps_state, tmp260
	movss	%xmm0, 52(%rax)	 # _61, ps_state_129(D)->ylf[0]
 # ./pdsp.c:2305:     ps_state->ylf[1] = ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp261
	movss	52(%rax), %xmm0	 # ps_state_129(D)->ylf[0], _62
 # ./pdsp.c:2305:     ps_state->ylf[1] = ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp262
	movss	%xmm0, 56(%rax)	 # _62, ps_state_129(D)->ylf[1]
 # ./pdsp.c:2308:     ps_state->u_Q[1] = ps_state->u_Q[0];
	movq	16(%rbp), %rax	 # ps_state, tmp263
	movss	36(%rax), %xmm0	 # ps_state_129(D)->u_Q[0], _63
 # ./pdsp.c:2308:     ps_state->u_Q[1] = ps_state->u_Q[0];
	movq	16(%rbp), %rax	 # ps_state, tmp264
	movss	%xmm0, 40(%rax)	 # _63, ps_state_129(D)->u_Q[1]
 # ./pdsp.c:2310:     ps_state->fo = ps_state->fn + ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp265
	movss	64(%rax), %xmm1	 # ps_state_129(D)->fn, _64
 # ./pdsp.c:2310:     ps_state->fo = ps_state->fn + ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp266
	movss	52(%rax), %xmm0	 # ps_state_129(D)->ylf[0], _65
 # ./pdsp.c:2310:     ps_state->fo = ps_state->fn + ps_state->ylf[0];
	addss	%xmm1, %xmm0	 # _64, _66
 # ./pdsp.c:2310:     ps_state->fo = ps_state->fn + ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp267
	movss	%xmm0, 60(%rax)	 # _66, ps_state_129(D)->fo
 # ./pdsp.c:2312:         ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI_F;
	movq	16(%rbp), %rax	 # ps_state, tmp268
	movss	72(%rax), %xmm1	 # ps_state_129(D)->theta, _67
 # ./pdsp.c:2312:         ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI_F;
	movq	16(%rbp), %rax	 # ps_state, tmp269
	movss	60(%rax), %xmm2	 # ps_state_129(D)->fo, _68
 # ./pdsp.c:2312:         ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI_F;
	movq	16(%rbp), %rax	 # ps_state, tmp270
	movss	84(%rax), %xmm0	 # ps_state_129(D)->delta_t, _69
 # ./pdsp.c:2312:         ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI_F;
	mulss	%xmm0, %xmm2	 # _69, _70
 # ./pdsp.c:2312:         ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI_F;
	movss	.LC23(%rip), %xmm0	 #, tmp271
	mulss	%xmm2, %xmm0	 # _70, _71
 # ./pdsp.c:2312:         ps_state->theta + (ps_state->fo * ps_state->delta_t) * PDSP_2_PI_F;
	addss	%xmm1, %xmm0	 # _67, _72
 # ./pdsp.c:2311:     ps_state->theta =
	movq	16(%rbp), %rax	 # ps_state, tmp272
	movss	%xmm0, 72(%rax)	 # _72, ps_state_129(D)->theta
 # ./pdsp.c:2313:     if (ps_state->theta > PDSP_2_PI_F)
	movq	16(%rbp), %rax	 # ps_state, tmp273
	movss	72(%rax), %xmm0	 # ps_state_129(D)->theta, _73
 # ./pdsp.c:2313:     if (ps_state->theta > PDSP_2_PI_F)
	comiss	.LC23(%rip), %xmm0	 #, _73
	jbe	.L609	 #,
 # ./pdsp.c:2315:         ps_state->theta = ps_state->theta - PDSP_2_PI_F;
	movq	16(%rbp), %rax	 # ps_state, tmp274
	movss	72(%rax), %xmm0	 # ps_state_129(D)->theta, _74
 # ./pdsp.c:2315:         ps_state->theta = ps_state->theta - PDSP_2_PI_F;
	movss	.LC23(%rip), %xmm1	 #, tmp275
	subss	%xmm1, %xmm0	 # tmp275, _75
 # ./pdsp.c:2315:         ps_state->theta = ps_state->theta - PDSP_2_PI_F;
	movq	16(%rbp), %rax	 # ps_state, tmp276
	movss	%xmm0, 72(%rax)	 # _75, ps_state_129(D)->theta
.L609:
 # ./pdsp.c:2317:     ps_state->sine = pdsp_sinf(ps_state->theta);
	movq	16(%rbp), %rax	 # ps_state, tmp277
	movl	72(%rax), %eax	 # ps_state_129(D)->theta, _76
	movd	%eax, %xmm0	 # _76,
	call	sinf	 #
	movd	%xmm0, %eax	 #, _77
 # ./pdsp.c:2317:     ps_state->sine = pdsp_sinf(ps_state->theta);
	movq	16(%rbp), %rdx	 # ps_state, tmp278
	movl	%eax, 80(%rdx)	 # _77, ps_state_129(D)->sine
 # ./pdsp.c:2318:     ps_state->cosine = pdsp_cosf(ps_state->theta);
	movq	16(%rbp), %rax	 # ps_state, tmp279
	movl	72(%rax), %eax	 # ps_state_129(D)->theta, _78
	movd	%eax, %xmm0	 # _78,
	call	cosf	 #
	movd	%xmm0, %eax	 #, _79
 # ./pdsp.c:2318:     ps_state->cosine = pdsp_cosf(ps_state->theta);
	movq	16(%rbp), %rdx	 # ps_state, tmp280
	movl	%eax, 76(%rdx)	 # _79, ps_state_129(D)->cosine
 # ./pdsp.c:2321:         ((ps_state->u[0] - ps_state->osg_u[0]) * ps_state->osg_qu[0]) *
	movq	16(%rbp), %rax	 # ps_state, tmp281
	movss	(%rax), %xmm0	 # ps_state_129(D)->u[0], _80
 # ./pdsp.c:2321:         ((ps_state->u[0] - ps_state->osg_u[0]) * ps_state->osg_qu[0]) *
	movq	16(%rbp), %rax	 # ps_state, tmp282
	movss	12(%rax), %xmm2	 # ps_state_129(D)->osg_u[0], _81
 # ./pdsp.c:2321:         ((ps_state->u[0] - ps_state->osg_u[0]) * ps_state->osg_qu[0]) *
	movaps	%xmm0, %xmm1	 # _80, _80
	subss	%xmm2, %xmm1	 # _81, _80
 # ./pdsp.c:2321:         ((ps_state->u[0] - ps_state->osg_u[0]) * ps_state->osg_qu[0]) *
	movq	16(%rbp), %rax	 # ps_state, tmp283
	movss	24(%rax), %xmm0	 # ps_state_129(D)->osg_qu[0], _83
 # ./pdsp.c:2321:         ((ps_state->u[0] - ps_state->osg_u[0]) * ps_state->osg_qu[0]) *
	mulss	%xmm0, %xmm1	 # _83, _84
 # ./pdsp.c:2322:         ps_state->gamma * ps_state->delta_t * -1.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp284
	movss	104(%rax), %xmm0	 # ps_state_129(D)->gamma, _85
 # ./pdsp.c:2321:         ((ps_state->u[0] - ps_state->osg_u[0]) * ps_state->osg_qu[0]) *
	mulss	%xmm0, %xmm1	 # _85, _86
 # ./pdsp.c:2322:         ps_state->gamma * ps_state->delta_t * -1.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp285
	movss	84(%rax), %xmm0	 # ps_state_129(D)->delta_t, _87
 # ./pdsp.c:2322:         ps_state->gamma * ps_state->delta_t * -1.0f;
	mulss	%xmm1, %xmm0	 # _86, _88
 # ./pdsp.c:2322:         ps_state->gamma * ps_state->delta_t * -1.0f;
	movss	.LC16(%rip), %xmm1	 #, tmp286
	xorps	%xmm1, %xmm0	 # tmp286, _89
 # ./pdsp.c:2320:     ps_state->ef2 =
	movq	16(%rbp), %rax	 # ps_state, tmp287
	movss	%xmm0, 88(%rax)	 # _89, ps_state_129(D)->ef2
 # ./pdsp.c:2323:     ps_state->x3[0] = ps_state->x3[1] + ps_state->ef2;
	movq	16(%rbp), %rax	 # ps_state, tmp288
	movss	96(%rax), %xmm1	 # ps_state_129(D)->x3[1], _90
 # ./pdsp.c:2323:     ps_state->x3[0] = ps_state->x3[1] + ps_state->ef2;
	movq	16(%rbp), %rax	 # ps_state, tmp289
	movss	88(%rax), %xmm0	 # ps_state_129(D)->ef2, _91
 # ./pdsp.c:2323:     ps_state->x3[0] = ps_state->x3[1] + ps_state->ef2;
	addss	%xmm1, %xmm0	 # _90, _92
 # ./pdsp.c:2323:     ps_state->x3[0] = ps_state->x3[1] + ps_state->ef2;
	movq	16(%rbp), %rax	 # ps_state, tmp290
	movss	%xmm0, 92(%rax)	 # _92, ps_state_129(D)->x3[0]
 # ./pdsp.c:2326:     ps_state->x3[1] = ps_state->x3[0];
	movq	16(%rbp), %rax	 # ps_state, tmp291
	movss	92(%rax), %xmm0	 # ps_state_129(D)->x3[0], _93
 # ./pdsp.c:2326:     ps_state->x3[1] = ps_state->x3[0];
	movq	16(%rbp), %rax	 # ps_state, tmp292
	movss	%xmm0, 96(%rax)	 # _93, ps_state_129(D)->x3[1]
 # ./pdsp.c:2327:     ps_state->w_dash = ps_state->wc + ps_state->x3[0];
	movq	16(%rbp), %rax	 # ps_state, tmp293
	movss	68(%rax), %xmm1	 # ps_state_129(D)->wc, _94
 # ./pdsp.c:2327:     ps_state->w_dash = ps_state->wc + ps_state->x3[0];
	movq	16(%rbp), %rax	 # ps_state, tmp294
	movss	92(%rax), %xmm0	 # ps_state_129(D)->x3[0], _95
 # ./pdsp.c:2327:     ps_state->w_dash = ps_state->wc + ps_state->x3[0];
	addss	%xmm1, %xmm0	 # _94, _96
 # ./pdsp.c:2327:     ps_state->w_dash = ps_state->wc + ps_state->x3[0];
	movq	16(%rbp), %rax	 # ps_state, tmp295
	movss	%xmm0, 100(%rax)	 # _96, ps_state_129(D)->w_dash
 # ./pdsp.c:2328:     ps_state->fn = ps_state->w_dash * PDSP_2_PI_INV_F;
	movq	16(%rbp), %rax	 # ps_state, tmp296
	movss	100(%rax), %xmm1	 # ps_state_129(D)->w_dash, _97
 # ./pdsp.c:2328:     ps_state->fn = ps_state->w_dash * PDSP_2_PI_INV_F;
	movss	.LC24(%rip), %xmm0	 #, tmp297
	mulss	%xmm1, %xmm0	 # _97, _98
 # ./pdsp.c:2328:     ps_state->fn = ps_state->w_dash * PDSP_2_PI_INV_F;
	movq	16(%rbp), %rax	 # ps_state, tmp298
	movss	%xmm0, 64(%rax)	 # _98, ps_state_129(D)->fn
 # ./pdsp.c:2329:     osgx = (2.0f * ps_state->k * ps_state->w_dash * ps_state->delta_t);
	movq	16(%rbp), %rax	 # ps_state, tmp299
	movss	108(%rax), %xmm0	 # ps_state_129(D)->k, _99
 # ./pdsp.c:2329:     osgx = (2.0f * ps_state->k * ps_state->w_dash * ps_state->delta_t);
	movaps	%xmm0, %xmm1	 # _99, _99
	addss	%xmm0, %xmm1	 # _99, _99
 # ./pdsp.c:2329:     osgx = (2.0f * ps_state->k * ps_state->w_dash * ps_state->delta_t);
	movq	16(%rbp), %rax	 # ps_state, tmp300
	movss	100(%rax), %xmm0	 # ps_state_129(D)->w_dash, _101
 # ./pdsp.c:2329:     osgx = (2.0f * ps_state->k * ps_state->w_dash * ps_state->delta_t);
	mulss	%xmm0, %xmm1	 # _101, _102
 # ./pdsp.c:2329:     osgx = (2.0f * ps_state->k * ps_state->w_dash * ps_state->delta_t);
	movq	16(%rbp), %rax	 # ps_state, tmp301
	movss	84(%rax), %xmm0	 # ps_state_129(D)->delta_t, _103
 # ./pdsp.c:2329:     osgx = (2.0f * ps_state->k * ps_state->w_dash * ps_state->delta_t);
	mulss	%xmm1, %xmm0	 # _102, tmp302
	movss	%xmm0, -4(%rbp)	 # tmp302, osgx
 # ./pdsp.c:2330:     osgy = (ps_state->w_dash * ps_state->delta_t * ps_state->w_dash *
	movq	16(%rbp), %rax	 # ps_state, tmp303
	movss	100(%rax), %xmm1	 # ps_state_129(D)->w_dash, _104
 # ./pdsp.c:2330:     osgy = (ps_state->w_dash * ps_state->delta_t * ps_state->w_dash *
	movq	16(%rbp), %rax	 # ps_state, tmp304
	movss	84(%rax), %xmm0	 # ps_state_129(D)->delta_t, _105
 # ./pdsp.c:2330:     osgy = (ps_state->w_dash * ps_state->delta_t * ps_state->w_dash *
	mulss	%xmm0, %xmm1	 # _105, _106
 # ./pdsp.c:2330:     osgy = (ps_state->w_dash * ps_state->delta_t * ps_state->w_dash *
	movq	16(%rbp), %rax	 # ps_state, tmp305
	movss	100(%rax), %xmm0	 # ps_state_129(D)->w_dash, _107
 # ./pdsp.c:2330:     osgy = (ps_state->w_dash * ps_state->delta_t * ps_state->w_dash *
	mulss	%xmm0, %xmm1	 # _107, _108
 # ./pdsp.c:2331:             ps_state->delta_t);
	movq	16(%rbp), %rax	 # ps_state, tmp306
	movss	84(%rax), %xmm0	 # ps_state_129(D)->delta_t, _109
 # ./pdsp.c:2330:     osgy = (ps_state->w_dash * ps_state->delta_t * ps_state->w_dash *
	mulss	%xmm1, %xmm0	 # _108, tmp307
	movss	%xmm0, -8(%rbp)	 # tmp307, osgy
 # ./pdsp.c:2332:     temp = pdsp_divf(1.0f, (osgx + osgy + 4.0f));
	movss	-4(%rbp), %xmm0	 # osgx, tmp308
	movaps	%xmm0, %xmm1	 # tmp308, tmp308
	addss	-8(%rbp), %xmm1	 # osgy, tmp308
	movss	.LC25(%rip), %xmm0	 #, tmp309
	addss	%xmm0, %xmm1	 # tmp309, _111
 # ./pdsp.c:2332:     temp = pdsp_divf(1.0f, (osgx + osgy + 4.0f));
	movss	.LC4(%rip), %xmm0	 #, tmp311
	divss	%xmm1, %xmm0	 # _111, tmp310
	movss	%xmm0, -12(%rbp)	 # tmp310, temp
 # ./pdsp.c:2333:     ps_state->osg_coeff.osg_b0 = osgx * temp;
	movss	-4(%rbp), %xmm0	 # osgx, tmp312
	mulss	-12(%rbp), %xmm0	 # temp, _112
 # ./pdsp.c:2333:     ps_state->osg_coeff.osg_b0 = osgx * temp;
	movq	16(%rbp), %rax	 # ps_state, tmp313
	movss	%xmm0, 124(%rax)	 # _112, ps_state_129(D)->osg_coeff.osg_b0
 # ./pdsp.c:2334:     ps_state->osg_coeff.osg_b2 = -1.0f * ps_state->osg_coeff.osg_b0;
	movq	16(%rbp), %rax	 # ps_state, tmp314
	movss	124(%rax), %xmm0	 # ps_state_129(D)->osg_coeff.osg_b0, _113
 # ./pdsp.c:2334:     ps_state->osg_coeff.osg_b2 = -1.0f * ps_state->osg_coeff.osg_b0;
	movss	.LC16(%rip), %xmm1	 #, tmp315
	xorps	%xmm1, %xmm0	 # tmp315, _114
 # ./pdsp.c:2334:     ps_state->osg_coeff.osg_b2 = -1.0f * ps_state->osg_coeff.osg_b0;
	movq	16(%rbp), %rax	 # ps_state, tmp316
	movss	%xmm0, 128(%rax)	 # _114, ps_state_129(D)->osg_coeff.osg_b2
 # ./pdsp.c:2335:     ps_state->osg_coeff.osg_a1 = ((2.0f * (4.0f - osgy)) * temp);
	movss	.LC25(%rip), %xmm0	 #, tmp317
	subss	-8(%rbp), %xmm0	 # osgy, _115
 # ./pdsp.c:2335:     ps_state->osg_coeff.osg_a1 = ((2.0f * (4.0f - osgy)) * temp);
	addss	%xmm0, %xmm0	 # _115, _116
 # ./pdsp.c:2335:     ps_state->osg_coeff.osg_a1 = ((2.0f * (4.0f - osgy)) * temp);
	mulss	-12(%rbp), %xmm0	 # temp, _117
 # ./pdsp.c:2335:     ps_state->osg_coeff.osg_a1 = ((2.0f * (4.0f - osgy)) * temp);
	movq	16(%rbp), %rax	 # ps_state, tmp318
	movss	%xmm0, 132(%rax)	 # _117, ps_state_129(D)->osg_coeff.osg_a1
 # ./pdsp.c:2336:     ps_state->osg_coeff.osg_a2 = ((osgx - osgy - 4.0f) * temp);
	movss	-4(%rbp), %xmm0	 # osgx, tmp319
	subss	-8(%rbp), %xmm0	 # osgy, _118
 # ./pdsp.c:2336:     ps_state->osg_coeff.osg_a2 = ((osgx - osgy - 4.0f) * temp);
	movss	.LC25(%rip), %xmm1	 #, tmp320
	subss	%xmm1, %xmm0	 # tmp320, _119
 # ./pdsp.c:2336:     ps_state->osg_coeff.osg_a2 = ((osgx - osgy - 4.0f) * temp);
	mulss	-12(%rbp), %xmm0	 # temp, _120
 # ./pdsp.c:2336:     ps_state->osg_coeff.osg_a2 = ((osgx - osgy - 4.0f) * temp);
	movq	16(%rbp), %rax	 # ps_state, tmp321
	movss	%xmm0, 136(%rax)	 # _120, ps_state_129(D)->osg_coeff.osg_a2
 # ./pdsp.c:2337:     ps_state->osg_coeff.osg_qb0 = (ps_state->k * osgy * temp);
	movq	16(%rbp), %rax	 # ps_state, tmp322
	movss	108(%rax), %xmm0	 # ps_state_129(D)->k, _121
 # ./pdsp.c:2337:     ps_state->osg_coeff.osg_qb0 = (ps_state->k * osgy * temp);
	mulss	-8(%rbp), %xmm0	 # osgy, _122
 # ./pdsp.c:2337:     ps_state->osg_coeff.osg_qb0 = (ps_state->k * osgy * temp);
	mulss	-12(%rbp), %xmm0	 # temp, _123
 # ./pdsp.c:2337:     ps_state->osg_coeff.osg_qb0 = (ps_state->k * osgy * temp);
	movq	16(%rbp), %rax	 # ps_state, tmp323
	movss	%xmm0, 140(%rax)	 # _123, ps_state_129(D)->osg_coeff.osg_qb0
 # ./pdsp.c:2338:     ps_state->osg_coeff.osg_qb1 = (ps_state->osg_coeff.osg_qb0 * 2.0f);
	movq	16(%rbp), %rax	 # ps_state, tmp324
	movss	140(%rax), %xmm0	 # ps_state_129(D)->osg_coeff.osg_qb0, _124
 # ./pdsp.c:2338:     ps_state->osg_coeff.osg_qb1 = (ps_state->osg_coeff.osg_qb0 * 2.0f);
	addss	%xmm0, %xmm0	 # _124, _125
 # ./pdsp.c:2338:     ps_state->osg_coeff.osg_qb1 = (ps_state->osg_coeff.osg_qb0 * 2.0f);
	movq	16(%rbp), %rax	 # ps_state, tmp325
	movss	%xmm0, 144(%rax)	 # _125, ps_state_129(D)->osg_coeff.osg_qb1
 # ./pdsp.c:2339:     ps_state->osg_coeff.osg_qb2 = ps_state->osg_coeff.osg_qb0;
	movq	16(%rbp), %rax	 # ps_state, tmp326
	movss	140(%rax), %xmm0	 # ps_state_129(D)->osg_coeff.osg_qb0, _126
 # ./pdsp.c:2339:     ps_state->osg_coeff.osg_qb2 = ps_state->osg_coeff.osg_qb0;
	movq	16(%rbp), %rax	 # ps_state, tmp327
	movss	%xmm0, 148(%rax)	 # _126, ps_state_129(D)->osg_coeff.osg_qb2
 # ./pdsp.c:2340:     return PDSP_OK;
	movl	$0, %eax	 #, _167
 # ./pdsp.c:2341: }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_dpll_3ph_ddsrf_init
	.def	pdsp_dpll_3ph_ddsrf_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_dpll_3ph_ddsrf_init
pdsp_dpll_3ph_ddsrf_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_state, ps_state
 # ./pdsp.c:2346:     PDSP_ASSERT(ps_state != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_state
	jne	.L614	 #,
 # ./pdsp.c:2346:     PDSP_ASSERT(ps_state != NULL);
	movl	$2346, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp84
	movq	%rax, %rdx	 # tmp84,
	leaq	.LC1(%rip), %rax	 #, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	printf	 #
.L614:
 # ./pdsp.c:2347:     ps_state->d_p_decoupl = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp86
	pxor	%xmm0, %xmm0	 # tmp87
	movss	%xmm0, (%rax)	 # tmp87, ps_state_2(D)->d_p_decoupl
 # ./pdsp.c:2348:     ps_state->d_n_decoupl = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp88
	pxor	%xmm0, %xmm0	 # tmp89
	movss	%xmm0, 4(%rax)	 # tmp89, ps_state_2(D)->d_n_decoupl
 # ./pdsp.c:2349:     ps_state->q_p_decoupl = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp90
	pxor	%xmm0, %xmm0	 # tmp91
	movss	%xmm0, 8(%rax)	 # tmp91, ps_state_2(D)->q_p_decoupl
 # ./pdsp.c:2350:     ps_state->q_n_decoupl = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp92
	pxor	%xmm0, %xmm0	 # tmp93
	movss	%xmm0, 12(%rax)	 # tmp93, ps_state_2(D)->q_n_decoupl
 # ./pdsp.c:2351:     ps_state->cos_2theta = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp94
	pxor	%xmm0, %xmm0	 # tmp95
	movss	%xmm0, 16(%rax)	 # tmp95, ps_state_2(D)->cos_2theta
 # ./pdsp.c:2352:     ps_state->sin_2theta = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp96
	pxor	%xmm0, %xmm0	 # tmp97
	movss	%xmm0, 20(%rax)	 # tmp97, ps_state_2(D)->sin_2theta
 # ./pdsp.c:2353:     ps_state->y[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp98
	pxor	%xmm0, %xmm0	 # tmp99
	movss	%xmm0, 24(%rax)	 # tmp99, ps_state_2(D)->y[0]
 # ./pdsp.c:2354:     ps_state->y[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp100
	pxor	%xmm0, %xmm0	 # tmp101
	movss	%xmm0, 28(%rax)	 # tmp101, ps_state_2(D)->y[1]
 # ./pdsp.c:2355:     ps_state->x[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp102
	pxor	%xmm0, %xmm0	 # tmp103
	movss	%xmm0, 32(%rax)	 # tmp103, ps_state_2(D)->x[0]
 # ./pdsp.c:2356:     ps_state->x[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp104
	pxor	%xmm0, %xmm0	 # tmp105
	movss	%xmm0, 36(%rax)	 # tmp105, ps_state_2(D)->x[1]
 # ./pdsp.c:2357:     ps_state->w[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp106
	pxor	%xmm0, %xmm0	 # tmp107
	movss	%xmm0, 40(%rax)	 # tmp107, ps_state_2(D)->w[0]
 # ./pdsp.c:2358:     ps_state->w[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp108
	pxor	%xmm0, %xmm0	 # tmp109
	movss	%xmm0, 44(%rax)	 # tmp109, ps_state_2(D)->w[1]
 # ./pdsp.c:2359:     ps_state->z[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp110
	pxor	%xmm0, %xmm0	 # tmp111
	movss	%xmm0, 48(%rax)	 # tmp111, ps_state_2(D)->z[0]
 # ./pdsp.c:2360:     ps_state->z[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp112
	pxor	%xmm0, %xmm0	 # tmp113
	movss	%xmm0, 52(%rax)	 # tmp113, ps_state_2(D)->z[1]
 # ./pdsp.c:2361:     ps_state->k1 = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp114
	pxor	%xmm0, %xmm0	 # tmp115
	movss	%xmm0, 56(%rax)	 # tmp115, ps_state_2(D)->k1
 # ./pdsp.c:2362:     ps_state->k2 = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp116
	pxor	%xmm0, %xmm0	 # tmp117
	movss	%xmm0, 60(%rax)	 # tmp117, ps_state_2(D)->k2
 # ./pdsp.c:2363:     ps_state->d_p_decoupl_lpf = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp118
	pxor	%xmm0, %xmm0	 # tmp119
	movss	%xmm0, 64(%rax)	 # tmp119, ps_state_2(D)->d_p_decoupl_lpf
 # ./pdsp.c:2364:     ps_state->d_n_decoupl_lpf = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp120
	pxor	%xmm0, %xmm0	 # tmp121
	movss	%xmm0, 68(%rax)	 # tmp121, ps_state_2(D)->d_n_decoupl_lpf
 # ./pdsp.c:2365:     ps_state->q_p_decoupl_lpf = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp122
	pxor	%xmm0, %xmm0	 # tmp123
	movss	%xmm0, 72(%rax)	 # tmp123, ps_state_2(D)->q_p_decoupl_lpf
 # ./pdsp.c:2366:     ps_state->q_n_decoupl_lpf = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp124
	pxor	%xmm0, %xmm0	 # tmp125
	movss	%xmm0, 76(%rax)	 # tmp125, ps_state_2(D)->q_n_decoupl_lpf
 # ./pdsp.c:2367:     ps_state->v_q[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp126
	pxor	%xmm0, %xmm0	 # tmp127
	movss	%xmm0, 80(%rax)	 # tmp127, ps_state_2(D)->v_q[0]
 # ./pdsp.c:2368:     ps_state->v_q[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp128
	pxor	%xmm0, %xmm0	 # tmp129
	movss	%xmm0, 84(%rax)	 # tmp129, ps_state_2(D)->v_q[1]
 # ./pdsp.c:2369:     ps_state->theta[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp130
	pxor	%xmm0, %xmm0	 # tmp131
	movss	%xmm0, 88(%rax)	 # tmp131, ps_state_2(D)->theta[0]
 # ./pdsp.c:2370:     ps_state->theta[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp132
	pxor	%xmm0, %xmm0	 # tmp133
	movss	%xmm0, 92(%rax)	 # tmp133, ps_state_2(D)->theta[1]
 # ./pdsp.c:2371:     ps_state->ylf[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp134
	pxor	%xmm0, %xmm0	 # tmp135
	movss	%xmm0, 96(%rax)	 # tmp135, ps_state_2(D)->ylf[0]
 # ./pdsp.c:2372:     ps_state->ylf[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp136
	pxor	%xmm0, %xmm0	 # tmp137
	movss	%xmm0, 100(%rax)	 # tmp137, ps_state_2(D)->ylf[1]
 # ./pdsp.c:2373:     ps_state->fo = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp138
	pxor	%xmm0, %xmm0	 # tmp139
	movss	%xmm0, 104(%rax)	 # tmp139, ps_state_2(D)->fo
 # ./pdsp.c:2374:     ps_state->fn = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp140
	pxor	%xmm0, %xmm0	 # tmp141
	movss	%xmm0, 108(%rax)	 # tmp141, ps_state_2(D)->fn
 # ./pdsp.c:2375:     ps_state->delta_t = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp142
	pxor	%xmm0, %xmm0	 # tmp143
	movss	%xmm0, 112(%rax)	 # tmp143, ps_state_2(D)->delta_t
 # ./pdsp.c:2377:     return PDSP_OK;
	movl	$0, %eax	 #, _34
 # ./pdsp.c:2378: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_dpll_3ph_ddsrf
	.def	pdsp_dpll_3ph_ddsrf;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_dpll_3ph_ddsrf
pdsp_dpll_3ph_ddsrf:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_state, ps_state
	movss	%xmm1, 24(%rbp)	 # d_p, d_p
	movss	%xmm2, 32(%rbp)	 # d_n, d_n
	movss	%xmm3, 40(%rbp)	 # q_p, q_p
 # ./pdsp.c:2384:     PDSP_ASSERT(ps_state != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_state
	jne	.L617	 #,
 # ./pdsp.c:2384:     PDSP_ASSERT(ps_state != NULL);
	movl	$2384, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp191
	movq	%rax, %rdx	 # tmp191,
	leaq	.LC1(%rip), %rax	 #, tmp192
	movq	%rax, %rcx	 # tmp192,
	call	printf	 #
.L617:
 # ./pdsp.c:2392:                             (ps_state->d_n_decoupl_lpf * ps_state->cos_2theta) -
	movq	16(%rbp), %rax	 # ps_state, tmp193
	movss	68(%rax), %xmm1	 # ps_state_110(D)->d_n_decoupl_lpf, _1
 # ./pdsp.c:2392:                             (ps_state->d_n_decoupl_lpf * ps_state->cos_2theta) -
	movq	16(%rbp), %rax	 # ps_state, tmp194
	movss	16(%rax), %xmm0	 # ps_state_110(D)->cos_2theta, _2
 # ./pdsp.c:2392:                             (ps_state->d_n_decoupl_lpf * ps_state->cos_2theta) -
	mulss	%xmm0, %xmm1	 # _2, _3
 # ./pdsp.c:2391:     ps_state->d_p_decoupl = d_p -
	movss	24(%rbp), %xmm0	 # d_p, tmp195
	subss	%xmm1, %xmm0	 # _3, _4
 # ./pdsp.c:2393:                             (ps_state->q_n_decoupl * ps_state->sin_2theta);
	movq	16(%rbp), %rax	 # ps_state, tmp196
	movss	12(%rax), %xmm2	 # ps_state_110(D)->q_n_decoupl, _5
 # ./pdsp.c:2393:                             (ps_state->q_n_decoupl * ps_state->sin_2theta);
	movq	16(%rbp), %rax	 # ps_state, tmp197
	movss	20(%rax), %xmm1	 # ps_state_110(D)->sin_2theta, _6
 # ./pdsp.c:2393:                             (ps_state->q_n_decoupl * ps_state->sin_2theta);
	mulss	%xmm2, %xmm1	 # _5, _7
 # ./pdsp.c:2392:                             (ps_state->d_n_decoupl_lpf * ps_state->cos_2theta) -
	subss	%xmm1, %xmm0	 # _7, _8
 # ./pdsp.c:2391:     ps_state->d_p_decoupl = d_p -
	movq	16(%rbp), %rax	 # ps_state, tmp198
	movss	%xmm0, (%rax)	 # _8, ps_state_110(D)->d_p_decoupl
 # ./pdsp.c:2395:                             (ps_state->d_n_decoupl_lpf * ps_state->sin_2theta) -
	movq	16(%rbp), %rax	 # ps_state, tmp199
	movss	68(%rax), %xmm1	 # ps_state_110(D)->d_n_decoupl_lpf, _9
 # ./pdsp.c:2395:                             (ps_state->d_n_decoupl_lpf * ps_state->sin_2theta) -
	movq	16(%rbp), %rax	 # ps_state, tmp200
	movss	20(%rax), %xmm0	 # ps_state_110(D)->sin_2theta, _10
 # ./pdsp.c:2395:                             (ps_state->d_n_decoupl_lpf * ps_state->sin_2theta) -
	mulss	%xmm1, %xmm0	 # _9, _11
 # ./pdsp.c:2394:     ps_state->q_p_decoupl = q_p +
	addss	40(%rbp), %xmm0	 # q_p, _12
 # ./pdsp.c:2396:                             (ps_state->q_n_decoupl * ps_state->cos_2theta);
	movq	16(%rbp), %rax	 # ps_state, tmp201
	movss	12(%rax), %xmm2	 # ps_state_110(D)->q_n_decoupl, _13
 # ./pdsp.c:2396:                             (ps_state->q_n_decoupl * ps_state->cos_2theta);
	movq	16(%rbp), %rax	 # ps_state, tmp202
	movss	16(%rax), %xmm1	 # ps_state_110(D)->cos_2theta, _14
 # ./pdsp.c:2396:                             (ps_state->q_n_decoupl * ps_state->cos_2theta);
	mulss	%xmm2, %xmm1	 # _13, _15
 # ./pdsp.c:2395:                             (ps_state->d_n_decoupl_lpf * ps_state->sin_2theta) -
	subss	%xmm1, %xmm0	 # _15, _16
 # ./pdsp.c:2394:     ps_state->q_p_decoupl = q_p +
	movq	16(%rbp), %rax	 # ps_state, tmp203
	movss	%xmm0, 8(%rax)	 # _16, ps_state_110(D)->q_p_decoupl
 # ./pdsp.c:2399:                             (ps_state->d_p_decoupl_lpf * ps_state->cos_2theta) +
	movq	16(%rbp), %rax	 # ps_state, tmp204
	movss	64(%rax), %xmm1	 # ps_state_110(D)->d_p_decoupl_lpf, _17
 # ./pdsp.c:2399:                             (ps_state->d_p_decoupl_lpf * ps_state->cos_2theta) +
	movq	16(%rbp), %rax	 # ps_state, tmp205
	movss	16(%rax), %xmm0	 # ps_state_110(D)->cos_2theta, _18
 # ./pdsp.c:2399:                             (ps_state->d_p_decoupl_lpf * ps_state->cos_2theta) +
	movaps	%xmm1, %xmm2	 # _17, _17
	mulss	%xmm0, %xmm2	 # _18, _17
 # ./pdsp.c:2398:     ps_state->d_n_decoupl = d_n -
	movss	32(%rbp), %xmm0	 # d_n, tmp206
	movaps	%xmm0, %xmm1	 # tmp206, tmp206
	subss	%xmm2, %xmm1	 # _19, tmp206
 # ./pdsp.c:2400:                             (ps_state->q_p_decoupl * ps_state->sin_2theta);
	movq	16(%rbp), %rax	 # ps_state, tmp207
	movss	8(%rax), %xmm2	 # ps_state_110(D)->q_p_decoupl, _21
 # ./pdsp.c:2400:                             (ps_state->q_p_decoupl * ps_state->sin_2theta);
	movq	16(%rbp), %rax	 # ps_state, tmp208
	movss	20(%rax), %xmm0	 # ps_state_110(D)->sin_2theta, _22
 # ./pdsp.c:2400:                             (ps_state->q_p_decoupl * ps_state->sin_2theta);
	mulss	%xmm2, %xmm0	 # _21, _23
 # ./pdsp.c:2399:                             (ps_state->d_p_decoupl_lpf * ps_state->cos_2theta) +
	addss	%xmm1, %xmm0	 # _20, _24
 # ./pdsp.c:2398:     ps_state->d_n_decoupl = d_n -
	movq	16(%rbp), %rax	 # ps_state, tmp209
	movss	%xmm0, 4(%rax)	 # _24, ps_state_110(D)->d_n_decoupl
 # ./pdsp.c:2402:                             (ps_state->d_p_decoupl_lpf * ps_state->sin_2theta) -
	movq	16(%rbp), %rax	 # ps_state, tmp210
	movss	64(%rax), %xmm1	 # ps_state_110(D)->d_p_decoupl_lpf, _25
 # ./pdsp.c:2402:                             (ps_state->d_p_decoupl_lpf * ps_state->sin_2theta) -
	movq	16(%rbp), %rax	 # ps_state, tmp211
	movss	20(%rax), %xmm0	 # ps_state_110(D)->sin_2theta, _26
 # ./pdsp.c:2402:                             (ps_state->d_p_decoupl_lpf * ps_state->sin_2theta) -
	mulss	%xmm0, %xmm1	 # _26, _27
 # ./pdsp.c:2401:     ps_state->q_n_decoupl = q_n -
	movss	48(%rbp), %xmm0	 # q_n, tmp212
	subss	%xmm1, %xmm0	 # _27, _28
 # ./pdsp.c:2403:                             (ps_state->q_p_decoupl * ps_state->cos_2theta);
	movq	16(%rbp), %rax	 # ps_state, tmp213
	movss	8(%rax), %xmm2	 # ps_state_110(D)->q_p_decoupl, _29
 # ./pdsp.c:2403:                             (ps_state->q_p_decoupl * ps_state->cos_2theta);
	movq	16(%rbp), %rax	 # ps_state, tmp214
	movss	16(%rax), %xmm1	 # ps_state_110(D)->cos_2theta, _30
 # ./pdsp.c:2403:                             (ps_state->q_p_decoupl * ps_state->cos_2theta);
	mulss	%xmm2, %xmm1	 # _29, _31
 # ./pdsp.c:2402:                             (ps_state->d_p_decoupl_lpf * ps_state->sin_2theta) -
	subss	%xmm1, %xmm0	 # _31, _32
 # ./pdsp.c:2401:     ps_state->q_n_decoupl = q_n -
	movq	16(%rbp), %rax	 # ps_state, tmp215
	movss	%xmm0, 12(%rax)	 # _32, ps_state_110(D)->q_n_decoupl
 # ./pdsp.c:2405:     ps_state->y[1] = (ps_state->d_p_decoupl * ps_state->k1) -
	movq	16(%rbp), %rax	 # ps_state, tmp216
	movss	(%rax), %xmm1	 # ps_state_110(D)->d_p_decoupl, _33
 # ./pdsp.c:2405:     ps_state->y[1] = (ps_state->d_p_decoupl * ps_state->k1) -
	movq	16(%rbp), %rax	 # ps_state, tmp217
	movss	56(%rax), %xmm0	 # ps_state_110(D)->k1, _34
 # ./pdsp.c:2405:     ps_state->y[1] = (ps_state->d_p_decoupl * ps_state->k1) -
	mulss	%xmm1, %xmm0	 # _33, _35
 # ./pdsp.c:2406:                      (ps_state->y[0] * ps_state->k2);
	movq	16(%rbp), %rax	 # ps_state, tmp218
	movss	24(%rax), %xmm2	 # ps_state_110(D)->y[0], _36
 # ./pdsp.c:2406:                      (ps_state->y[0] * ps_state->k2);
	movq	16(%rbp), %rax	 # ps_state, tmp219
	movss	60(%rax), %xmm1	 # ps_state_110(D)->k2, _37
 # ./pdsp.c:2406:                      (ps_state->y[0] * ps_state->k2);
	mulss	%xmm2, %xmm1	 # _36, _38
 # ./pdsp.c:2405:     ps_state->y[1] = (ps_state->d_p_decoupl * ps_state->k1) -
	subss	%xmm1, %xmm0	 # _38, _39
 # ./pdsp.c:2405:     ps_state->y[1] = (ps_state->d_p_decoupl * ps_state->k1) -
	movq	16(%rbp), %rax	 # ps_state, tmp220
	movss	%xmm0, 28(%rax)	 # _39, ps_state_110(D)->y[1]
 # ./pdsp.c:2407:     ps_state->d_p_decoupl_lpf = ps_state->y[1] + ps_state->y[0];
	movq	16(%rbp), %rax	 # ps_state, tmp221
	movss	28(%rax), %xmm1	 # ps_state_110(D)->y[1], _40
 # ./pdsp.c:2407:     ps_state->d_p_decoupl_lpf = ps_state->y[1] + ps_state->y[0];
	movq	16(%rbp), %rax	 # ps_state, tmp222
	movss	24(%rax), %xmm0	 # ps_state_110(D)->y[0], _41
 # ./pdsp.c:2407:     ps_state->d_p_decoupl_lpf = ps_state->y[1] + ps_state->y[0];
	addss	%xmm1, %xmm0	 # _40, _42
 # ./pdsp.c:2407:     ps_state->d_p_decoupl_lpf = ps_state->y[1] + ps_state->y[0];
	movq	16(%rbp), %rax	 # ps_state, tmp223
	movss	%xmm0, 64(%rax)	 # _42, ps_state_110(D)->d_p_decoupl_lpf
 # ./pdsp.c:2408:     ps_state->y[0] = ps_state->y[1];
	movq	16(%rbp), %rax	 # ps_state, tmp224
	movss	28(%rax), %xmm0	 # ps_state_110(D)->y[1], _43
 # ./pdsp.c:2408:     ps_state->y[0] = ps_state->y[1];
	movq	16(%rbp), %rax	 # ps_state, tmp225
	movss	%xmm0, 24(%rax)	 # _43, ps_state_110(D)->y[0]
 # ./pdsp.c:2409:     ps_state->x[1] = (ps_state->q_p_decoupl * ps_state->k1) -
	movq	16(%rbp), %rax	 # ps_state, tmp226
	movss	8(%rax), %xmm1	 # ps_state_110(D)->q_p_decoupl, _44
 # ./pdsp.c:2409:     ps_state->x[1] = (ps_state->q_p_decoupl * ps_state->k1) -
	movq	16(%rbp), %rax	 # ps_state, tmp227
	movss	56(%rax), %xmm0	 # ps_state_110(D)->k1, _45
 # ./pdsp.c:2409:     ps_state->x[1] = (ps_state->q_p_decoupl * ps_state->k1) -
	mulss	%xmm1, %xmm0	 # _44, _46
 # ./pdsp.c:2410:                      (ps_state->x[0] * ps_state->k2);
	movq	16(%rbp), %rax	 # ps_state, tmp228
	movss	32(%rax), %xmm2	 # ps_state_110(D)->x[0], _47
 # ./pdsp.c:2410:                      (ps_state->x[0] * ps_state->k2);
	movq	16(%rbp), %rax	 # ps_state, tmp229
	movss	60(%rax), %xmm1	 # ps_state_110(D)->k2, _48
 # ./pdsp.c:2410:                      (ps_state->x[0] * ps_state->k2);
	mulss	%xmm2, %xmm1	 # _47, _49
 # ./pdsp.c:2409:     ps_state->x[1] = (ps_state->q_p_decoupl * ps_state->k1) -
	subss	%xmm1, %xmm0	 # _49, _50
 # ./pdsp.c:2409:     ps_state->x[1] = (ps_state->q_p_decoupl * ps_state->k1) -
	movq	16(%rbp), %rax	 # ps_state, tmp230
	movss	%xmm0, 36(%rax)	 # _50, ps_state_110(D)->x[1]
 # ./pdsp.c:2411:     ps_state->q_p_decoupl_lpf = ps_state->x[1] + ps_state->x[0];
	movq	16(%rbp), %rax	 # ps_state, tmp231
	movss	36(%rax), %xmm1	 # ps_state_110(D)->x[1], _51
 # ./pdsp.c:2411:     ps_state->q_p_decoupl_lpf = ps_state->x[1] + ps_state->x[0];
	movq	16(%rbp), %rax	 # ps_state, tmp232
	movss	32(%rax), %xmm0	 # ps_state_110(D)->x[0], _52
 # ./pdsp.c:2411:     ps_state->q_p_decoupl_lpf = ps_state->x[1] + ps_state->x[0];
	addss	%xmm1, %xmm0	 # _51, _53
 # ./pdsp.c:2411:     ps_state->q_p_decoupl_lpf = ps_state->x[1] + ps_state->x[0];
	movq	16(%rbp), %rax	 # ps_state, tmp233
	movss	%xmm0, 72(%rax)	 # _53, ps_state_110(D)->q_p_decoupl_lpf
 # ./pdsp.c:2412:     ps_state->x[0] = ps_state->x[1];
	movq	16(%rbp), %rax	 # ps_state, tmp234
	movss	36(%rax), %xmm0	 # ps_state_110(D)->x[1], _54
 # ./pdsp.c:2412:     ps_state->x[0] = ps_state->x[1];
	movq	16(%rbp), %rax	 # ps_state, tmp235
	movss	%xmm0, 32(%rax)	 # _54, ps_state_110(D)->x[0]
 # ./pdsp.c:2413:     ps_state->w[1] = (ps_state->d_n_decoupl * ps_state->k1) -
	movq	16(%rbp), %rax	 # ps_state, tmp236
	movss	4(%rax), %xmm1	 # ps_state_110(D)->d_n_decoupl, _55
 # ./pdsp.c:2413:     ps_state->w[1] = (ps_state->d_n_decoupl * ps_state->k1) -
	movq	16(%rbp), %rax	 # ps_state, tmp237
	movss	56(%rax), %xmm0	 # ps_state_110(D)->k1, _56
 # ./pdsp.c:2413:     ps_state->w[1] = (ps_state->d_n_decoupl * ps_state->k1) -
	mulss	%xmm1, %xmm0	 # _55, _57
 # ./pdsp.c:2414:                      (ps_state->w[0] * ps_state->k2);
	movq	16(%rbp), %rax	 # ps_state, tmp238
	movss	40(%rax), %xmm2	 # ps_state_110(D)->w[0], _58
 # ./pdsp.c:2414:                      (ps_state->w[0] * ps_state->k2);
	movq	16(%rbp), %rax	 # ps_state, tmp239
	movss	60(%rax), %xmm1	 # ps_state_110(D)->k2, _59
 # ./pdsp.c:2414:                      (ps_state->w[0] * ps_state->k2);
	mulss	%xmm2, %xmm1	 # _58, _60
 # ./pdsp.c:2413:     ps_state->w[1] = (ps_state->d_n_decoupl * ps_state->k1) -
	subss	%xmm1, %xmm0	 # _60, _61
 # ./pdsp.c:2413:     ps_state->w[1] = (ps_state->d_n_decoupl * ps_state->k1) -
	movq	16(%rbp), %rax	 # ps_state, tmp240
	movss	%xmm0, 44(%rax)	 # _61, ps_state_110(D)->w[1]
 # ./pdsp.c:2415:     ps_state->d_n_decoupl_lpf = ps_state->w[1] + ps_state->w[0];
	movq	16(%rbp), %rax	 # ps_state, tmp241
	movss	44(%rax), %xmm1	 # ps_state_110(D)->w[1], _62
 # ./pdsp.c:2415:     ps_state->d_n_decoupl_lpf = ps_state->w[1] + ps_state->w[0];
	movq	16(%rbp), %rax	 # ps_state, tmp242
	movss	40(%rax), %xmm0	 # ps_state_110(D)->w[0], _63
 # ./pdsp.c:2415:     ps_state->d_n_decoupl_lpf = ps_state->w[1] + ps_state->w[0];
	addss	%xmm1, %xmm0	 # _62, _64
 # ./pdsp.c:2415:     ps_state->d_n_decoupl_lpf = ps_state->w[1] + ps_state->w[0];
	movq	16(%rbp), %rax	 # ps_state, tmp243
	movss	%xmm0, 68(%rax)	 # _64, ps_state_110(D)->d_n_decoupl_lpf
 # ./pdsp.c:2416:     ps_state->w[0] = ps_state->w[1];
	movq	16(%rbp), %rax	 # ps_state, tmp244
	movss	44(%rax), %xmm0	 # ps_state_110(D)->w[1], _65
 # ./pdsp.c:2416:     ps_state->w[0] = ps_state->w[1];
	movq	16(%rbp), %rax	 # ps_state, tmp245
	movss	%xmm0, 40(%rax)	 # _65, ps_state_110(D)->w[0]
 # ./pdsp.c:2417:     ps_state->z[1] = (ps_state->q_n_decoupl * ps_state->k1) -
	movq	16(%rbp), %rax	 # ps_state, tmp246
	movss	12(%rax), %xmm1	 # ps_state_110(D)->q_n_decoupl, _66
 # ./pdsp.c:2417:     ps_state->z[1] = (ps_state->q_n_decoupl * ps_state->k1) -
	movq	16(%rbp), %rax	 # ps_state, tmp247
	movss	56(%rax), %xmm0	 # ps_state_110(D)->k1, _67
 # ./pdsp.c:2417:     ps_state->z[1] = (ps_state->q_n_decoupl * ps_state->k1) -
	mulss	%xmm1, %xmm0	 # _66, _68
 # ./pdsp.c:2418:                      (ps_state->z[0] * ps_state->k2);
	movq	16(%rbp), %rax	 # ps_state, tmp248
	movss	48(%rax), %xmm2	 # ps_state_110(D)->z[0], _69
 # ./pdsp.c:2418:                      (ps_state->z[0] * ps_state->k2);
	movq	16(%rbp), %rax	 # ps_state, tmp249
	movss	60(%rax), %xmm1	 # ps_state_110(D)->k2, _70
 # ./pdsp.c:2418:                      (ps_state->z[0] * ps_state->k2);
	mulss	%xmm2, %xmm1	 # _69, _71
 # ./pdsp.c:2417:     ps_state->z[1] = (ps_state->q_n_decoupl * ps_state->k1) -
	subss	%xmm1, %xmm0	 # _71, _72
 # ./pdsp.c:2417:     ps_state->z[1] = (ps_state->q_n_decoupl * ps_state->k1) -
	movq	16(%rbp), %rax	 # ps_state, tmp250
	movss	%xmm0, 52(%rax)	 # _72, ps_state_110(D)->z[1]
 # ./pdsp.c:2419:     ps_state->q_n_decoupl_lpf = ps_state->z[1] + ps_state->z[0];
	movq	16(%rbp), %rax	 # ps_state, tmp251
	movss	52(%rax), %xmm1	 # ps_state_110(D)->z[1], _73
 # ./pdsp.c:2419:     ps_state->q_n_decoupl_lpf = ps_state->z[1] + ps_state->z[0];
	movq	16(%rbp), %rax	 # ps_state, tmp252
	movss	48(%rax), %xmm0	 # ps_state_110(D)->z[0], _74
 # ./pdsp.c:2419:     ps_state->q_n_decoupl_lpf = ps_state->z[1] + ps_state->z[0];
	addss	%xmm1, %xmm0	 # _73, _75
 # ./pdsp.c:2419:     ps_state->q_n_decoupl_lpf = ps_state->z[1] + ps_state->z[0];
	movq	16(%rbp), %rax	 # ps_state, tmp253
	movss	%xmm0, 76(%rax)	 # _75, ps_state_110(D)->q_n_decoupl_lpf
 # ./pdsp.c:2420:     ps_state->z[0] = ps_state->z[1];
	movq	16(%rbp), %rax	 # ps_state, tmp254
	movss	52(%rax), %xmm0	 # ps_state_110(D)->z[1], _76
 # ./pdsp.c:2420:     ps_state->z[0] = ps_state->z[1];
	movq	16(%rbp), %rax	 # ps_state, tmp255
	movss	%xmm0, 48(%rax)	 # _76, ps_state_110(D)->z[0]
 # ./pdsp.c:2421:     ps_state->v_q[0] = ps_state->q_p_decoupl;
	movq	16(%rbp), %rax	 # ps_state, tmp256
	movss	8(%rax), %xmm0	 # ps_state_110(D)->q_p_decoupl, _77
 # ./pdsp.c:2421:     ps_state->v_q[0] = ps_state->q_p_decoupl;
	movq	16(%rbp), %rax	 # ps_state, tmp257
	movss	%xmm0, 80(%rax)	 # _77, ps_state_110(D)->v_q[0]
 # ./pdsp.c:2423:     ps_state->ylf[0] = ps_state->ylf[1] +
	movq	16(%rbp), %rax	 # ps_state, tmp258
	movss	100(%rax), %xmm1	 # ps_state_110(D)->ylf[1], _78
 # ./pdsp.c:2424:                        (ps_state->lpf_coeff.f32_b0 * ps_state->v_q[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp259
	movss	116(%rax), %xmm2	 # ps_state_110(D)->lpf_coeff.f32_b0, _79
 # ./pdsp.c:2424:                        (ps_state->lpf_coeff.f32_b0 * ps_state->v_q[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp260
	movss	80(%rax), %xmm0	 # ps_state_110(D)->v_q[0], _80
 # ./pdsp.c:2424:                        (ps_state->lpf_coeff.f32_b0 * ps_state->v_q[0]) +
	mulss	%xmm2, %xmm0	 # _79, _81
 # ./pdsp.c:2423:     ps_state->ylf[0] = ps_state->ylf[1] +
	addss	%xmm0, %xmm1	 # _81, _82
 # ./pdsp.c:2425:                        (ps_state->lpf_coeff.f32_b1 * ps_state->v_q[1]);
	movq	16(%rbp), %rax	 # ps_state, tmp261
	movss	120(%rax), %xmm2	 # ps_state_110(D)->lpf_coeff.f32_b1, _83
 # ./pdsp.c:2425:                        (ps_state->lpf_coeff.f32_b1 * ps_state->v_q[1]);
	movq	16(%rbp), %rax	 # ps_state, tmp262
	movss	84(%rax), %xmm0	 # ps_state_110(D)->v_q[1], _84
 # ./pdsp.c:2425:                        (ps_state->lpf_coeff.f32_b1 * ps_state->v_q[1]);
	mulss	%xmm2, %xmm0	 # _83, _85
 # ./pdsp.c:2424:                        (ps_state->lpf_coeff.f32_b0 * ps_state->v_q[0]) +
	addss	%xmm1, %xmm0	 # _82, _86
 # ./pdsp.c:2423:     ps_state->ylf[0] = ps_state->ylf[1] +
	movq	16(%rbp), %rax	 # ps_state, tmp263
	movss	%xmm0, 96(%rax)	 # _86, ps_state_110(D)->ylf[0]
 # ./pdsp.c:2426:     ps_state->ylf[1] = ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp264
	movss	96(%rax), %xmm0	 # ps_state_110(D)->ylf[0], _87
 # ./pdsp.c:2426:     ps_state->ylf[1] = ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp265
	movss	%xmm0, 100(%rax)	 # _87, ps_state_110(D)->ylf[1]
 # ./pdsp.c:2427:     ps_state->v_q[1] = ps_state->v_q[0];
	movq	16(%rbp), %rax	 # ps_state, tmp266
	movss	80(%rax), %xmm0	 # ps_state_110(D)->v_q[0], _88
 # ./pdsp.c:2427:     ps_state->v_q[1] = ps_state->v_q[0];
	movq	16(%rbp), %rax	 # ps_state, tmp267
	movss	%xmm0, 84(%rax)	 # _88, ps_state_110(D)->v_q[1]
 # ./pdsp.c:2429:     ps_state->fo = ps_state->fn + ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp268
	movss	108(%rax), %xmm1	 # ps_state_110(D)->fn, _89
 # ./pdsp.c:2429:     ps_state->fo = ps_state->fn + ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp269
	movss	96(%rax), %xmm0	 # ps_state_110(D)->ylf[0], _90
 # ./pdsp.c:2429:     ps_state->fo = ps_state->fn + ps_state->ylf[0];
	addss	%xmm1, %xmm0	 # _89, _91
 # ./pdsp.c:2429:     ps_state->fo = ps_state->fn + ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp270
	movss	%xmm0, 104(%rax)	 # _91, ps_state_110(D)->fo
 # ./pdsp.c:2431:         ps_state->theta[1] +
	movq	16(%rbp), %rax	 # ps_state, tmp271
	movss	92(%rax), %xmm1	 # ps_state_110(D)->theta[1], _92
 # ./pdsp.c:2432:         ((ps_state->fo * ps_state->delta_t) * (pdsp_f32_t)(2.0f * 3.1415926f));
	movq	16(%rbp), %rax	 # ps_state, tmp272
	movss	104(%rax), %xmm2	 # ps_state_110(D)->fo, _93
 # ./pdsp.c:2432:         ((ps_state->fo * ps_state->delta_t) * (pdsp_f32_t)(2.0f * 3.1415926f));
	movq	16(%rbp), %rax	 # ps_state, tmp273
	movss	112(%rax), %xmm0	 # ps_state_110(D)->delta_t, _94
 # ./pdsp.c:2432:         ((ps_state->fo * ps_state->delta_t) * (pdsp_f32_t)(2.0f * 3.1415926f));
	mulss	%xmm0, %xmm2	 # _94, _95
 # ./pdsp.c:2432:         ((ps_state->fo * ps_state->delta_t) * (pdsp_f32_t)(2.0f * 3.1415926f));
	movss	.LC26(%rip), %xmm0	 #, tmp274
	mulss	%xmm2, %xmm0	 # _95, _96
 # ./pdsp.c:2431:         ps_state->theta[1] +
	addss	%xmm1, %xmm0	 # _92, _97
 # ./pdsp.c:2430:     ps_state->theta[0] =
	movq	16(%rbp), %rax	 # ps_state, tmp275
	movss	%xmm0, 88(%rax)	 # _97, ps_state_110(D)->theta[0]
 # ./pdsp.c:2433:     if (ps_state->theta[0] > (pdsp_f32_t)(2.0f * 3.1415926f))
	movq	16(%rbp), %rax	 # ps_state, tmp276
	movss	88(%rax), %xmm0	 # ps_state_110(D)->theta[0], _98
 # ./pdsp.c:2433:     if (ps_state->theta[0] > (pdsp_f32_t)(2.0f * 3.1415926f))
	comiss	.LC26(%rip), %xmm0	 #, _98
	jbe	.L618	 #,
 # ./pdsp.c:2436:             ps_state->theta[0] - (pdsp_f32_t)(2.0f * 3.1415926f);
	movq	16(%rbp), %rax	 # ps_state, tmp277
	movss	88(%rax), %xmm0	 # ps_state_110(D)->theta[0], _99
 # ./pdsp.c:2436:             ps_state->theta[0] - (pdsp_f32_t)(2.0f * 3.1415926f);
	movss	.LC26(%rip), %xmm1	 #, tmp278
	subss	%xmm1, %xmm0	 # tmp278, _100
 # ./pdsp.c:2435:         ps_state->theta[0] =
	movq	16(%rbp), %rax	 # ps_state, tmp279
	movss	%xmm0, 88(%rax)	 # _100, ps_state_110(D)->theta[0]
.L618:
 # ./pdsp.c:2438:     ps_state->theta[1] = ps_state->theta[0];
	movq	16(%rbp), %rax	 # ps_state, tmp280
	movss	88(%rax), %xmm0	 # ps_state_110(D)->theta[0], _101
 # ./pdsp.c:2438:     ps_state->theta[1] = ps_state->theta[0];
	movq	16(%rbp), %rax	 # ps_state, tmp281
	movss	%xmm0, 92(%rax)	 # _101, ps_state_110(D)->theta[1]
 # ./pdsp.c:2439:     ps_state->cos_2theta = pdsp_cosf(ps_state->theta[1] * 2.0f);
	movq	16(%rbp), %rax	 # ps_state, tmp282
	movss	92(%rax), %xmm0	 # ps_state_110(D)->theta[1], _102
	addss	%xmm0, %xmm0	 # _102, _102
	movd	%xmm0, %eax	 # _102, _103
	movd	%eax, %xmm0	 # _103,
	call	cosf	 #
	movd	%xmm0, %eax	 #, _104
 # ./pdsp.c:2439:     ps_state->cos_2theta = pdsp_cosf(ps_state->theta[1] * 2.0f);
	movq	16(%rbp), %rdx	 # ps_state, tmp283
	movl	%eax, 16(%rdx)	 # _104, ps_state_110(D)->cos_2theta
 # ./pdsp.c:2440:     ps_state->sin_2theta = pdsp_sinf(ps_state->theta[1] * 2.0f);
	movq	16(%rbp), %rax	 # ps_state, tmp284
	movss	92(%rax), %xmm0	 # ps_state_110(D)->theta[1], _105
	addss	%xmm0, %xmm0	 # _105, _105
	movd	%xmm0, %eax	 # _105, _106
	movd	%eax, %xmm0	 # _106,
	call	sinf	 #
	movd	%xmm0, %eax	 #, _107
 # ./pdsp.c:2440:     ps_state->sin_2theta = pdsp_sinf(ps_state->theta[1] * 2.0f);
	movq	16(%rbp), %rdx	 # ps_state, tmp285
	movl	%eax, 20(%rdx)	 # _107, ps_state_110(D)->sin_2theta
 # ./pdsp.c:2441:     return PDSP_OK;
	movl	$0, %eax	 #, _143
 # ./pdsp.c:2442: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_dpll_3ph_srf_init
	.def	pdsp_dpll_3ph_srf_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_dpll_3ph_srf_init
pdsp_dpll_3ph_srf_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_state, ps_state
 # ./pdsp.c:2446:     PDSP_ASSERT(ps_state != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_state
	jne	.L623	 #,
 # ./pdsp.c:2446:     PDSP_ASSERT(ps_state != NULL);
	movl	$2446, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp84
	movq	%rax, %rdx	 # tmp84,
	leaq	.LC1(%rip), %rax	 #, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	printf	 #
.L623:
 # ./pdsp.c:2447:     ps_state->v_q[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp86
	pxor	%xmm0, %xmm0	 # tmp87
	movss	%xmm0, (%rax)	 # tmp87, ps_state_2(D)->v_q[0]
 # ./pdsp.c:2448:     ps_state->v_q[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp88
	pxor	%xmm0, %xmm0	 # tmp89
	movss	%xmm0, 4(%rax)	 # tmp89, ps_state_2(D)->v_q[1]
 # ./pdsp.c:2449:     ps_state->ylf[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp90
	pxor	%xmm0, %xmm0	 # tmp91
	movss	%xmm0, 8(%rax)	 # tmp91, ps_state_2(D)->ylf[0]
 # ./pdsp.c:2450:     ps_state->ylf[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp92
	pxor	%xmm0, %xmm0	 # tmp93
	movss	%xmm0, 12(%rax)	 # tmp93, ps_state_2(D)->ylf[1]
 # ./pdsp.c:2451:     ps_state->fo = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp94
	pxor	%xmm0, %xmm0	 # tmp95
	movss	%xmm0, 16(%rax)	 # tmp95, ps_state_2(D)->fo
 # ./pdsp.c:2452:     ps_state->fn = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp96
	pxor	%xmm0, %xmm0	 # tmp97
	movss	%xmm0, 20(%rax)	 # tmp97, ps_state_2(D)->fn
 # ./pdsp.c:2453:     ps_state->theta[0] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp98
	pxor	%xmm0, %xmm0	 # tmp99
	movss	%xmm0, 24(%rax)	 # tmp99, ps_state_2(D)->theta[0]
 # ./pdsp.c:2454:     ps_state->theta[1] = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp100
	pxor	%xmm0, %xmm0	 # tmp101
	movss	%xmm0, 28(%rax)	 # tmp101, ps_state_2(D)->theta[1]
 # ./pdsp.c:2455:     ps_state->delta_t = 0.0f;
	movq	16(%rbp), %rax	 # ps_state, tmp102
	pxor	%xmm0, %xmm0	 # tmp103
	movss	%xmm0, 32(%rax)	 # tmp103, ps_state_2(D)->delta_t
 # ./pdsp.c:2457:     return PDSP_OK;
	movl	$0, %eax	 #, _14
 # ./pdsp.c:2458: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_dpll_3ph_srf
	.def	pdsp_dpll_3ph_srf;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_dpll_3ph_srf
pdsp_dpll_3ph_srf:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_state, ps_state
	movss	%xmm1, 24(%rbp)	 # f32_vq, f32_vq
 # ./pdsp.c:2463:     PDSP_ASSERT(ps_state != NULL);
	cmpq	$0, 16(%rbp)	 #, ps_state
	jne	.L626	 #,
 # ./pdsp.c:2463:     PDSP_ASSERT(ps_state != NULL);
	movl	$2463, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp110
	movq	%rax, %rdx	 # tmp110,
	leaq	.LC1(%rip), %rax	 #, tmp111
	movq	%rax, %rcx	 # tmp111,
	call	printf	 #
.L626:
 # ./pdsp.c:2465:     ps_state->v_q[0] = f32_vq;
	movq	16(%rbp), %rax	 # ps_state, tmp112
	movss	24(%rbp), %xmm0	 # f32_vq, tmp113
	movss	%xmm0, (%rax)	 # tmp113, ps_state_29(D)->v_q[0]
 # ./pdsp.c:2467:     ps_state->ylf[0] = ps_state->ylf[1] +
	movq	16(%rbp), %rax	 # ps_state, tmp114
	movss	12(%rax), %xmm1	 # ps_state_29(D)->ylf[1], _1
 # ./pdsp.c:2468:                        (ps_state->lpf_coeff.f32_b0 * ps_state->v_q[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp115
	movss	36(%rax), %xmm2	 # ps_state_29(D)->lpf_coeff.f32_b0, _2
 # ./pdsp.c:2468:                        (ps_state->lpf_coeff.f32_b0 * ps_state->v_q[0]) +
	movq	16(%rbp), %rax	 # ps_state, tmp116
	movss	(%rax), %xmm0	 # ps_state_29(D)->v_q[0], _3
 # ./pdsp.c:2468:                        (ps_state->lpf_coeff.f32_b0 * ps_state->v_q[0]) +
	mulss	%xmm2, %xmm0	 # _2, _4
 # ./pdsp.c:2467:     ps_state->ylf[0] = ps_state->ylf[1] +
	addss	%xmm0, %xmm1	 # _4, _5
 # ./pdsp.c:2469:                        (ps_state->lpf_coeff.f32_b1 * ps_state->v_q[1]);
	movq	16(%rbp), %rax	 # ps_state, tmp117
	movss	40(%rax), %xmm2	 # ps_state_29(D)->lpf_coeff.f32_b1, _6
 # ./pdsp.c:2469:                        (ps_state->lpf_coeff.f32_b1 * ps_state->v_q[1]);
	movq	16(%rbp), %rax	 # ps_state, tmp118
	movss	4(%rax), %xmm0	 # ps_state_29(D)->v_q[1], _7
 # ./pdsp.c:2469:                        (ps_state->lpf_coeff.f32_b1 * ps_state->v_q[1]);
	mulss	%xmm2, %xmm0	 # _6, _8
 # ./pdsp.c:2468:                        (ps_state->lpf_coeff.f32_b0 * ps_state->v_q[0]) +
	addss	%xmm1, %xmm0	 # _5, _9
 # ./pdsp.c:2467:     ps_state->ylf[0] = ps_state->ylf[1] +
	movq	16(%rbp), %rax	 # ps_state, tmp119
	movss	%xmm0, 8(%rax)	 # _9, ps_state_29(D)->ylf[0]
 # ./pdsp.c:2470:     ps_state->ylf[1] = ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp120
	movss	8(%rax), %xmm0	 # ps_state_29(D)->ylf[0], _10
 # ./pdsp.c:2470:     ps_state->ylf[1] = ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp121
	movss	%xmm0, 12(%rax)	 # _10, ps_state_29(D)->ylf[1]
 # ./pdsp.c:2471:     ps_state->v_q[1] = ps_state->v_q[0];
	movq	16(%rbp), %rax	 # ps_state, tmp122
	movss	(%rax), %xmm0	 # ps_state_29(D)->v_q[0], _11
 # ./pdsp.c:2471:     ps_state->v_q[1] = ps_state->v_q[0];
	movq	16(%rbp), %rax	 # ps_state, tmp123
	movss	%xmm0, 4(%rax)	 # _11, ps_state_29(D)->v_q[1]
 # ./pdsp.c:2472:     ps_state->ylf[0] = (ps_state->ylf[0] > (pdsp_f32_t)(200.0))
	movq	16(%rbp), %rax	 # ps_state, tmp124
	movss	8(%rax), %xmm0	 # ps_state_29(D)->ylf[0], _12
 # ./pdsp.c:2474:                            : ps_state->ylf[0];
	comiss	.LC27(%rip), %xmm0	 #, _12
	jbe	.L635	 #,
 # ./pdsp.c:2474:                            : ps_state->ylf[0];
	movss	.LC27(%rip), %xmm0	 #, iftmp.231_26
	jmp	.L629	 #
.L635:
 # ./pdsp.c:2474:                            : ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp125
	movss	8(%rax), %xmm0	 # ps_state_29(D)->ylf[0], iftmp.231_26
.L629:
 # ./pdsp.c:2472:     ps_state->ylf[0] = (ps_state->ylf[0] > (pdsp_f32_t)(200.0))
	movq	16(%rbp), %rax	 # ps_state, tmp126
	movss	%xmm0, 8(%rax)	 # iftmp.231_26, ps_state_29(D)->ylf[0]
 # ./pdsp.c:2476:     ps_state->fo = ps_state->fn + ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp127
	movss	20(%rax), %xmm1	 # ps_state_29(D)->fn, _13
 # ./pdsp.c:2476:     ps_state->fo = ps_state->fn + ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp128
	movss	8(%rax), %xmm0	 # ps_state_29(D)->ylf[0], _14
 # ./pdsp.c:2476:     ps_state->fo = ps_state->fn + ps_state->ylf[0];
	addss	%xmm1, %xmm0	 # _13, _15
 # ./pdsp.c:2476:     ps_state->fo = ps_state->fn + ps_state->ylf[0];
	movq	16(%rbp), %rax	 # ps_state, tmp129
	movss	%xmm0, 16(%rax)	 # _15, ps_state_29(D)->fo
 # ./pdsp.c:2478:         ps_state->theta[1] +
	movq	16(%rbp), %rax	 # ps_state, tmp130
	movss	28(%rax), %xmm1	 # ps_state_29(D)->theta[1], _16
 # ./pdsp.c:2479:         ((ps_state->fo * ps_state->delta_t) * (pdsp_f32_t)(2.0 * 3.1415926));
	movq	16(%rbp), %rax	 # ps_state, tmp131
	movss	16(%rax), %xmm2	 # ps_state_29(D)->fo, _17
 # ./pdsp.c:2479:         ((ps_state->fo * ps_state->delta_t) * (pdsp_f32_t)(2.0 * 3.1415926));
	movq	16(%rbp), %rax	 # ps_state, tmp132
	movss	32(%rax), %xmm0	 # ps_state_29(D)->delta_t, _18
 # ./pdsp.c:2479:         ((ps_state->fo * ps_state->delta_t) * (pdsp_f32_t)(2.0 * 3.1415926));
	mulss	%xmm0, %xmm2	 # _18, _19
 # ./pdsp.c:2479:         ((ps_state->fo * ps_state->delta_t) * (pdsp_f32_t)(2.0 * 3.1415926));
	movss	.LC26(%rip), %xmm0	 #, tmp133
	mulss	%xmm2, %xmm0	 # _19, _20
 # ./pdsp.c:2478:         ps_state->theta[1] +
	addss	%xmm1, %xmm0	 # _16, _21
 # ./pdsp.c:2477:     ps_state->theta[0] =
	movq	16(%rbp), %rax	 # ps_state, tmp134
	movss	%xmm0, 24(%rax)	 # _21, ps_state_29(D)->theta[0]
 # ./pdsp.c:2480:     if (ps_state->theta[0] > (pdsp_f32_t)(2.0 * 3.1415926))
	movq	16(%rbp), %rax	 # ps_state, tmp135
	movss	24(%rax), %xmm0	 # ps_state_29(D)->theta[0], _22
 # ./pdsp.c:2480:     if (ps_state->theta[0] > (pdsp_f32_t)(2.0 * 3.1415926))
	comiss	.LC26(%rip), %xmm0	 #, _22
	jbe	.L630	 #,
 # ./pdsp.c:2482:         ps_state->theta[0] = ps_state->theta[0] - (pdsp_f32_t)(2.0 * 3.1415926);
	movq	16(%rbp), %rax	 # ps_state, tmp136
	movss	24(%rax), %xmm0	 # ps_state_29(D)->theta[0], _23
 # ./pdsp.c:2482:         ps_state->theta[0] = ps_state->theta[0] - (pdsp_f32_t)(2.0 * 3.1415926);
	movss	.LC26(%rip), %xmm1	 #, tmp137
	subss	%xmm1, %xmm0	 # tmp137, _24
 # ./pdsp.c:2482:         ps_state->theta[0] = ps_state->theta[0] - (pdsp_f32_t)(2.0 * 3.1415926);
	movq	16(%rbp), %rax	 # ps_state, tmp138
	movss	%xmm0, 24(%rax)	 # _24, ps_state_29(D)->theta[0]
.L630:
 # ./pdsp.c:2484:     ps_state->theta[1] = ps_state->theta[0];
	movq	16(%rbp), %rax	 # ps_state, tmp139
	movss	24(%rax), %xmm0	 # ps_state_29(D)->theta[0], _25
 # ./pdsp.c:2484:     ps_state->theta[1] = ps_state->theta[0];
	movq	16(%rbp), %rax	 # ps_state, tmp140
	movss	%xmm0, 28(%rax)	 # _25, ps_state_29(D)->theta[1]
 # ./pdsp.c:2485:     return PDSP_OK;
	movl	$0, %eax	 #, _44
 # ./pdsp.c:2486: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_sfra_clear
	.def	pdsp_sfra_clear;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_sfra_clear
pdsp_sfra_clear:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:2490:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L637	 #,
 # ./pdsp.c:2490:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	16(%rbp), %rax	 # ps_data, tmp95
	movq	(%rax), %rax	 # ps_data_15(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L638	 #,
.L637:
 # ./pdsp.c:2490:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$2490, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp96
	movq	%rax, %rdx	 # tmp96,
	leaq	.LC1(%rip), %rax	 #, tmp97
	movq	%rax, %rcx	 # tmp97,
	call	printf	 #
.L638:
 # ./pdsp.c:2491:     ps_data->ps_var->b_running = PDSP_FALSE;
	movq	16(%rbp), %rax	 # ps_data, tmp98
	movq	(%rax), %rax	 # ps_data_15(D)->ps_var, _2
 # ./pdsp.c:2491:     ps_data->ps_var->b_running = PDSP_FALSE;
	movb	$0, (%rax)	 #, _2->b_running
 # ./pdsp.c:2492:     ps_data->ps_var->f32_sin_val = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp99
	movq	(%rax), %rax	 # ps_data_15(D)->ps_var, _3
 # ./pdsp.c:2492:     ps_data->ps_var->f32_sin_val = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp100
	movss	%xmm0, 8(%rax)	 # tmp100, _3->f32_sin_val
 # ./pdsp.c:2493:     ps_data->ps_var->f32_cos_val = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp101
	movq	(%rax), %rax	 # ps_data_15(D)->ps_var, _4
 # ./pdsp.c:2493:     ps_data->ps_var->f32_cos_val = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp102
	movss	%xmm0, 12(%rax)	 # tmp102, _4->f32_cos_val
 # ./pdsp.c:2494:     ps_data->ps_var->f32_phase = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp103
	movq	(%rax), %rax	 # ps_data_15(D)->ps_var, _5
 # ./pdsp.c:2494:     ps_data->ps_var->f32_phase = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp104
	movss	%xmm0, 16(%rax)	 # tmp104, _5->f32_phase
 # ./pdsp.c:2495:     ps_data->ps_var->f32_phase_step = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp105
	movq	(%rax), %rax	 # ps_data_15(D)->ps_var, _6
 # ./pdsp.c:2495:     ps_data->ps_var->f32_phase_step = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp106
	movss	%xmm0, 20(%rax)	 # tmp106, _6->f32_phase_step
 # ./pdsp.c:2496:     ps_data->ps_var->u16_cycle_cnt = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp107
	movq	(%rax), %rax	 # ps_data_15(D)->ps_var, _7
 # ./pdsp.c:2496:     ps_data->ps_var->u16_cycle_cnt = 0.0f;
	movw	$0, 24(%rax)	 #, _7->u16_cycle_cnt
 # ./pdsp.c:2497:     ps_data->ps_var->u16_bode_cnt = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp108
	movq	(%rax), %rax	 # ps_data_15(D)->ps_var, _8
 # ./pdsp.c:2497:     ps_data->ps_var->u16_bode_cnt = 0.0f;
	movw	$0, 26(%rax)	 #, _8->u16_bode_cnt
 # ./pdsp.c:2498:     ps_data->ps_var->f32_avg_tau = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp109
	movq	(%rax), %rax	 # ps_data_15(D)->ps_var, _9
 # ./pdsp.c:2498:     ps_data->ps_var->f32_avg_tau = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp110
	movss	%xmm0, 28(%rax)	 # tmp110, _9->f32_avg_tau
 # ./pdsp.c:2499:     ps_data->ps_var->f32_avg_in_sin = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp111
	movq	(%rax), %rax	 # ps_data_15(D)->ps_var, _10
 # ./pdsp.c:2499:     ps_data->ps_var->f32_avg_in_sin = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp112
	movss	%xmm0, 32(%rax)	 # tmp112, _10->f32_avg_in_sin
 # ./pdsp.c:2500:     ps_data->ps_var->f32_avg_in_cos = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp113
	movq	(%rax), %rax	 # ps_data_15(D)->ps_var, _11
 # ./pdsp.c:2500:     ps_data->ps_var->f32_avg_in_cos = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp114
	movss	%xmm0, 36(%rax)	 # tmp114, _11->f32_avg_in_cos
 # ./pdsp.c:2501:     ps_data->ps_var->f32_avg_out_sin = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp115
	movq	(%rax), %rax	 # ps_data_15(D)->ps_var, _12
 # ./pdsp.c:2501:     ps_data->ps_var->f32_avg_out_sin = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp116
	movss	%xmm0, 40(%rax)	 # tmp116, _12->f32_avg_out_sin
 # ./pdsp.c:2502:     ps_data->ps_var->f32_avg_out_cos = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp117
	movq	(%rax), %rax	 # ps_data_15(D)->ps_var, _13
 # ./pdsp.c:2502:     ps_data->ps_var->f32_avg_out_cos = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp118
	movss	%xmm0, 44(%rax)	 # tmp118, _13->f32_avg_out_cos
 # ./pdsp.c:2503: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_sfra_start
	.def	pdsp_sfra_start;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_sfra_start
pdsp_sfra_start:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:2507:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L640	 #,
 # ./pdsp.c:2507:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	16(%rbp), %rax	 # ps_data, tmp84
	movq	(%rax), %rax	 # ps_data_4(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L641	 #,
.L640:
 # ./pdsp.c:2507:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$2507, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp85
	movq	%rax, %rdx	 # tmp85,
	leaq	.LC1(%rip), %rax	 #, tmp86
	movq	%rax, %rcx	 # tmp86,
	call	printf	 #
.L641:
 # ./pdsp.c:2508:     pdsp_sfra_clear(ps_data);
	movq	16(%rbp), %rax	 # ps_data, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	pdsp_sfra_clear	 #
 # ./pdsp.c:2509:     ps_data->ps_var->b_running = PDSP_TRUE;
	movq	16(%rbp), %rax	 # ps_data, tmp88
	movq	(%rax), %rax	 # ps_data_4(D)->ps_var, _2
 # ./pdsp.c:2509:     ps_data->ps_var->b_running = PDSP_TRUE;
	movb	$1, (%rax)	 #, _2->b_running
 # ./pdsp.c:2510: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_sfra_running
	.def	pdsp_sfra_running;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_sfra_running
pdsp_sfra_running:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:2514:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L643	 #,
 # ./pdsp.c:2514:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	16(%rbp), %rax	 # ps_data, tmp86
	movq	(%rax), %rax	 # ps_data_4(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L644	 #,
.L643:
 # ./pdsp.c:2514:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$2514, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp87
	movq	%rax, %rdx	 # tmp87,
	leaq	.LC1(%rip), %rax	 #, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	printf	 #
.L644:
 # ./pdsp.c:2515:     return ps_data->ps_var->b_running;
	movq	16(%rbp), %rax	 # ps_data, tmp89
	movq	(%rax), %rax	 # ps_data_4(D)->ps_var, _2
 # ./pdsp.c:2515:     return ps_data->ps_var->b_running;
	movzbl	(%rax), %eax	 # _2->b_running, _7
 # ./pdsp.c:2516: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_sfra_inject
	.def	pdsp_sfra_inject;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_sfra_inject
pdsp_sfra_inject:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:2520:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L647	 #,
 # ./pdsp.c:2520:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	16(%rbp), %rax	 # ps_data, tmp92
	movq	(%rax), %rax	 # ps_data_12(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L648	 #,
.L647:
 # ./pdsp.c:2520:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$2520, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp93
	movq	%rax, %rdx	 # tmp93,
	leaq	.LC1(%rip), %rax	 #, tmp94
	movq	%rax, %rcx	 # tmp94,
	call	printf	 #
.L648:
 # ./pdsp.c:2521:     *ps_data->f32_inject +=
	movq	16(%rbp), %rax	 # ps_data, tmp95
	movq	16(%rax), %rax	 # ps_data_12(D)->f32_inject, _2
 # ./pdsp.c:2521:     *ps_data->f32_inject +=
	movss	(%rax), %xmm1	 # *_2, _3
 # ./pdsp.c:2522:         ps_data->ps_var->f32_sin_val * ps_data->ps_var->f32_inj_gain;
	movq	16(%rbp), %rax	 # ps_data, tmp96
	movq	(%rax), %rax	 # ps_data_12(D)->ps_var, _4
 # ./pdsp.c:2522:         ps_data->ps_var->f32_sin_val * ps_data->ps_var->f32_inj_gain;
	movss	8(%rax), %xmm2	 # _4->f32_sin_val, _5
 # ./pdsp.c:2522:         ps_data->ps_var->f32_sin_val * ps_data->ps_var->f32_inj_gain;
	movq	16(%rbp), %rax	 # ps_data, tmp97
	movq	(%rax), %rax	 # ps_data_12(D)->ps_var, _6
 # ./pdsp.c:2522:         ps_data->ps_var->f32_sin_val * ps_data->ps_var->f32_inj_gain;
	movss	4(%rax), %xmm0	 # _6->f32_inj_gain, _7
 # ./pdsp.c:2522:         ps_data->ps_var->f32_sin_val * ps_data->ps_var->f32_inj_gain;
	mulss	%xmm2, %xmm0	 # _5, _8
 # ./pdsp.c:2521:     *ps_data->f32_inject +=
	movq	16(%rbp), %rax	 # ps_data, tmp98
	movq	16(%rax), %rax	 # ps_data_12(D)->f32_inject, _9
 # ./pdsp.c:2521:     *ps_data->f32_inject +=
	addss	%xmm1, %xmm0	 # _3, _10
	movss	%xmm0, (%rax)	 # _10, *_9
 # ./pdsp.c:2523: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_sfra_process
	.def	pdsp_sfra_process;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_sfra_process
pdsp_sfra_process:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:2528:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L650	 #,
 # ./pdsp.c:2528:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movq	16(%rbp), %rax	 # ps_data, tmp143
	movq	(%rax), %rax	 # ps_data_67(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	jne	.L651	 #,
.L650:
 # ./pdsp.c:2528:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL));
	movl	$2528, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp144
	movq	%rax, %rdx	 # tmp144,
	leaq	.LC1(%rip), %rax	 #, tmp145
	movq	%rax, %rcx	 # tmp145,
	call	printf	 #
.L651:
 # ./pdsp.c:2529:     ps_var = ps_data->ps_var;
	movq	16(%rbp), %rax	 # ps_data, tmp146
	movq	(%rax), %rax	 # ps_data_67(D)->ps_var, tmp147
	movq	%rax, -8(%rbp)	 # tmp147, ps_var
 # ./pdsp.c:2532:     ps_var->f32_avg_in_sin +=
	movq	-8(%rbp), %rax	 # ps_var, tmp148
	movss	32(%rax), %xmm1	 # ps_var_70->f32_avg_in_sin, _2
 # ./pdsp.c:2533:         ps_var->f32_avg_tau *
	movq	-8(%rbp), %rax	 # ps_var, tmp149
	movss	28(%rax), %xmm2	 # ps_var_70->f32_avg_tau, _3
 # ./pdsp.c:2534:         ((*ps_data->f32_input * ps_var->f32_sin_val) - ps_var->f32_avg_in_sin);
	movq	16(%rbp), %rax	 # ps_data, tmp150
	movq	24(%rax), %rax	 # ps_data_67(D)->f32_input, _4
 # ./pdsp.c:2534:         ((*ps_data->f32_input * ps_var->f32_sin_val) - ps_var->f32_avg_in_sin);
	movss	(%rax), %xmm3	 # *_4, _5
 # ./pdsp.c:2534:         ((*ps_data->f32_input * ps_var->f32_sin_val) - ps_var->f32_avg_in_sin);
	movq	-8(%rbp), %rax	 # ps_var, tmp151
	movss	8(%rax), %xmm0	 # ps_var_70->f32_sin_val, _6
 # ./pdsp.c:2534:         ((*ps_data->f32_input * ps_var->f32_sin_val) - ps_var->f32_avg_in_sin);
	mulss	%xmm3, %xmm0	 # _5, _7
 # ./pdsp.c:2534:         ((*ps_data->f32_input * ps_var->f32_sin_val) - ps_var->f32_avg_in_sin);
	movq	-8(%rbp), %rax	 # ps_var, tmp152
	movss	32(%rax), %xmm3	 # ps_var_70->f32_avg_in_sin, _8
 # ./pdsp.c:2534:         ((*ps_data->f32_input * ps_var->f32_sin_val) - ps_var->f32_avg_in_sin);
	subss	%xmm3, %xmm0	 # _8, _9
 # ./pdsp.c:2533:         ps_var->f32_avg_tau *
	mulss	%xmm2, %xmm0	 # _3, _10
 # ./pdsp.c:2532:     ps_var->f32_avg_in_sin +=
	addss	%xmm1, %xmm0	 # _2, _11
	movq	-8(%rbp), %rax	 # ps_var, tmp153
	movss	%xmm0, 32(%rax)	 # _11, ps_var_70->f32_avg_in_sin
 # ./pdsp.c:2535:     ps_var->f32_avg_in_cos +=
	movq	-8(%rbp), %rax	 # ps_var, tmp154
	movss	36(%rax), %xmm1	 # ps_var_70->f32_avg_in_cos, _12
 # ./pdsp.c:2536:         ps_var->f32_avg_tau *
	movq	-8(%rbp), %rax	 # ps_var, tmp155
	movss	28(%rax), %xmm2	 # ps_var_70->f32_avg_tau, _13
 # ./pdsp.c:2537:         ((*ps_data->f32_input * ps_var->f32_cos_val) - ps_var->f32_avg_in_cos);
	movq	16(%rbp), %rax	 # ps_data, tmp156
	movq	24(%rax), %rax	 # ps_data_67(D)->f32_input, _14
 # ./pdsp.c:2537:         ((*ps_data->f32_input * ps_var->f32_cos_val) - ps_var->f32_avg_in_cos);
	movss	(%rax), %xmm3	 # *_14, _15
 # ./pdsp.c:2537:         ((*ps_data->f32_input * ps_var->f32_cos_val) - ps_var->f32_avg_in_cos);
	movq	-8(%rbp), %rax	 # ps_var, tmp157
	movss	12(%rax), %xmm0	 # ps_var_70->f32_cos_val, _16
 # ./pdsp.c:2537:         ((*ps_data->f32_input * ps_var->f32_cos_val) - ps_var->f32_avg_in_cos);
	mulss	%xmm3, %xmm0	 # _15, _17
 # ./pdsp.c:2537:         ((*ps_data->f32_input * ps_var->f32_cos_val) - ps_var->f32_avg_in_cos);
	movq	-8(%rbp), %rax	 # ps_var, tmp158
	movss	36(%rax), %xmm3	 # ps_var_70->f32_avg_in_cos, _18
 # ./pdsp.c:2537:         ((*ps_data->f32_input * ps_var->f32_cos_val) - ps_var->f32_avg_in_cos);
	subss	%xmm3, %xmm0	 # _18, _19
 # ./pdsp.c:2536:         ps_var->f32_avg_tau *
	mulss	%xmm2, %xmm0	 # _13, _20
 # ./pdsp.c:2535:     ps_var->f32_avg_in_cos +=
	addss	%xmm1, %xmm0	 # _12, _21
	movq	-8(%rbp), %rax	 # ps_var, tmp159
	movss	%xmm0, 36(%rax)	 # _21, ps_var_70->f32_avg_in_cos
 # ./pdsp.c:2539:     ps_var->f32_avg_out_sin +=
	movq	-8(%rbp), %rax	 # ps_var, tmp160
	movss	40(%rax), %xmm1	 # ps_var_70->f32_avg_out_sin, _22
 # ./pdsp.c:2540:         ps_var->f32_avg_tau *
	movq	-8(%rbp), %rax	 # ps_var, tmp161
	movss	28(%rax), %xmm2	 # ps_var_70->f32_avg_tau, _23
 # ./pdsp.c:2541:         ((*ps_data->f32_output * ps_var->f32_sin_val) - ps_var->f32_avg_in_sin);
	movq	16(%rbp), %rax	 # ps_data, tmp162
	movq	32(%rax), %rax	 # ps_data_67(D)->f32_output, _24
 # ./pdsp.c:2541:         ((*ps_data->f32_output * ps_var->f32_sin_val) - ps_var->f32_avg_in_sin);
	movss	(%rax), %xmm3	 # *_24, _25
 # ./pdsp.c:2541:         ((*ps_data->f32_output * ps_var->f32_sin_val) - ps_var->f32_avg_in_sin);
	movq	-8(%rbp), %rax	 # ps_var, tmp163
	movss	8(%rax), %xmm0	 # ps_var_70->f32_sin_val, _26
 # ./pdsp.c:2541:         ((*ps_data->f32_output * ps_var->f32_sin_val) - ps_var->f32_avg_in_sin);
	mulss	%xmm3, %xmm0	 # _25, _27
 # ./pdsp.c:2541:         ((*ps_data->f32_output * ps_var->f32_sin_val) - ps_var->f32_avg_in_sin);
	movq	-8(%rbp), %rax	 # ps_var, tmp164
	movss	32(%rax), %xmm3	 # ps_var_70->f32_avg_in_sin, _28
 # ./pdsp.c:2541:         ((*ps_data->f32_output * ps_var->f32_sin_val) - ps_var->f32_avg_in_sin);
	subss	%xmm3, %xmm0	 # _28, _29
 # ./pdsp.c:2540:         ps_var->f32_avg_tau *
	mulss	%xmm2, %xmm0	 # _23, _30
 # ./pdsp.c:2539:     ps_var->f32_avg_out_sin +=
	addss	%xmm1, %xmm0	 # _22, _31
	movq	-8(%rbp), %rax	 # ps_var, tmp165
	movss	%xmm0, 40(%rax)	 # _31, ps_var_70->f32_avg_out_sin
 # ./pdsp.c:2542:     ps_var->f32_avg_out_cos +=
	movq	-8(%rbp), %rax	 # ps_var, tmp166
	movss	44(%rax), %xmm1	 # ps_var_70->f32_avg_out_cos, _32
 # ./pdsp.c:2543:         ps_var->f32_avg_tau *
	movq	-8(%rbp), %rax	 # ps_var, tmp167
	movss	28(%rax), %xmm2	 # ps_var_70->f32_avg_tau, _33
 # ./pdsp.c:2544:         ((*ps_data->f32_output * ps_var->f32_cos_val) - ps_var->f32_avg_in_cos);
	movq	16(%rbp), %rax	 # ps_data, tmp168
	movq	32(%rax), %rax	 # ps_data_67(D)->f32_output, _34
 # ./pdsp.c:2544:         ((*ps_data->f32_output * ps_var->f32_cos_val) - ps_var->f32_avg_in_cos);
	movss	(%rax), %xmm3	 # *_34, _35
 # ./pdsp.c:2544:         ((*ps_data->f32_output * ps_var->f32_cos_val) - ps_var->f32_avg_in_cos);
	movq	-8(%rbp), %rax	 # ps_var, tmp169
	movss	12(%rax), %xmm0	 # ps_var_70->f32_cos_val, _36
 # ./pdsp.c:2544:         ((*ps_data->f32_output * ps_var->f32_cos_val) - ps_var->f32_avg_in_cos);
	mulss	%xmm3, %xmm0	 # _35, _37
 # ./pdsp.c:2544:         ((*ps_data->f32_output * ps_var->f32_cos_val) - ps_var->f32_avg_in_cos);
	movq	-8(%rbp), %rax	 # ps_var, tmp170
	movss	36(%rax), %xmm3	 # ps_var_70->f32_avg_in_cos, _38
 # ./pdsp.c:2544:         ((*ps_data->f32_output * ps_var->f32_cos_val) - ps_var->f32_avg_in_cos);
	subss	%xmm3, %xmm0	 # _38, _39
 # ./pdsp.c:2543:         ps_var->f32_avg_tau *
	mulss	%xmm2, %xmm0	 # _33, _40
 # ./pdsp.c:2542:     ps_var->f32_avg_out_cos +=
	addss	%xmm1, %xmm0	 # _32, _41
	movq	-8(%rbp), %rax	 # ps_var, tmp171
	movss	%xmm0, 44(%rax)	 # _41, ps_var_70->f32_avg_out_cos
 # ./pdsp.c:2547:     ps_var->f32_sin_val = pdsp_sinf(ps_var->f32_phase);
	movq	-8(%rbp), %rax	 # ps_var, tmp172
	movl	16(%rax), %eax	 # ps_var_70->f32_phase, _42
	movd	%eax, %xmm0	 # _42,
	call	sinf	 #
	movd	%xmm0, %eax	 #, _43
 # ./pdsp.c:2547:     ps_var->f32_sin_val = pdsp_sinf(ps_var->f32_phase);
	movq	-8(%rbp), %rdx	 # ps_var, tmp173
	movl	%eax, 8(%rdx)	 # _43, ps_var_70->f32_sin_val
 # ./pdsp.c:2548:     ps_var->f32_cos_val = pdsp_cosf(ps_var->f32_phase);
	movq	-8(%rbp), %rax	 # ps_var, tmp174
	movl	16(%rax), %eax	 # ps_var_70->f32_phase, _44
	movd	%eax, %xmm0	 # _44,
	call	cosf	 #
	movd	%xmm0, %eax	 #, _45
 # ./pdsp.c:2548:     ps_var->f32_cos_val = pdsp_cosf(ps_var->f32_phase);
	movq	-8(%rbp), %rdx	 # ps_var, tmp175
	movl	%eax, 12(%rdx)	 # _45, ps_var_70->f32_cos_val
 # ./pdsp.c:2550:     ps_var->f32_phase += ps_var->f32_phase_step;
	movq	-8(%rbp), %rax	 # ps_var, tmp176
	movss	16(%rax), %xmm1	 # ps_var_70->f32_phase, _46
 # ./pdsp.c:2550:     ps_var->f32_phase += ps_var->f32_phase_step;
	movq	-8(%rbp), %rax	 # ps_var, tmp177
	movss	20(%rax), %xmm0	 # ps_var_70->f32_phase_step, _47
 # ./pdsp.c:2550:     ps_var->f32_phase += ps_var->f32_phase_step;
	addss	%xmm1, %xmm0	 # _46, _48
	movq	-8(%rbp), %rax	 # ps_var, tmp178
	movss	%xmm0, 16(%rax)	 # _48, ps_var_70->f32_phase
 # ./pdsp.c:2551:     if (ps_var->f32_phase > PDSP_2_PI_F)
	movq	-8(%rbp), %rax	 # ps_var, tmp179
	movss	16(%rax), %xmm0	 # ps_var_70->f32_phase, _49
 # ./pdsp.c:2551:     if (ps_var->f32_phase > PDSP_2_PI_F)
	comiss	.LC23(%rip), %xmm0	 #, _49
	ja	.L656	 #,
 # ./pdsp.c:2566: }
	jmp	.L658	 #
.L656:
 # ./pdsp.c:2553:         ps_var->f32_phase = 0.0f;
	movq	-8(%rbp), %rax	 # ps_var, tmp180
	pxor	%xmm0, %xmm0	 # tmp181
	movss	%xmm0, 16(%rax)	 # tmp181, ps_var_70->f32_phase
 # ./pdsp.c:2554:         ps_var->u16_cycle_cnt++;
	movq	-8(%rbp), %rax	 # ps_var, tmp182
	movzwl	24(%rax), %eax	 # ps_var_70->u16_cycle_cnt, _50
 # ./pdsp.c:2554:         ps_var->u16_cycle_cnt++;
	leal	1(%rax), %edx	 #, _52
	movq	-8(%rbp), %rax	 # ps_var, tmp183
	movw	%dx, 24(%rax)	 # _52, ps_var_70->u16_cycle_cnt
 # ./pdsp.c:2556:         if (ps_var->u16_cycle_cnt > ps_data->f32_avg_cyc)
	movq	-8(%rbp), %rax	 # ps_var, tmp184
	movzwl	24(%rax), %eax	 # ps_var_70->u16_cycle_cnt, _53
	movzwl	%ax, %eax	 # _53, _54
 # ./pdsp.c:2556:         if (ps_var->u16_cycle_cnt > ps_data->f32_avg_cyc)
	pxor	%xmm0, %xmm0	 # _55
	cvtsi2ssl	%eax, %xmm0	 # _54, _55
 # ./pdsp.c:2556:         if (ps_var->u16_cycle_cnt > ps_data->f32_avg_cyc)
	movq	16(%rbp), %rax	 # ps_data, tmp185
	movss	40(%rax), %xmm1	 # ps_data_67(D)->f32_avg_cyc, _56
 # ./pdsp.c:2556:         if (ps_var->u16_cycle_cnt > ps_data->f32_avg_cyc)
	comiss	%xmm1, %xmm0	 # _56, _55
	jbe	.L654	 #,
 # ./pdsp.c:2558:             ps_var->u16_bode_cnt++;
	movq	-8(%rbp), %rax	 # ps_var, tmp186
	movzwl	26(%rax), %eax	 # ps_var_70->u16_bode_cnt, _57
 # ./pdsp.c:2558:             ps_var->u16_bode_cnt++;
	leal	1(%rax), %edx	 #, _59
	movq	-8(%rbp), %rax	 # ps_var, tmp187
	movw	%dx, 26(%rax)	 # _59, ps_var_70->u16_bode_cnt
.L654:
 # ./pdsp.c:2561:         if (ps_var->u16_bode_cnt >= ps_data->ps_bode->u16_bode_size)
	movq	-8(%rbp), %rax	 # ps_var, tmp188
	movzwl	26(%rax), %edx	 # ps_var_70->u16_bode_cnt, _60
 # ./pdsp.c:2561:         if (ps_var->u16_bode_cnt >= ps_data->ps_bode->u16_bode_size)
	movq	16(%rbp), %rax	 # ps_data, tmp189
	movq	8(%rax), %rax	 # ps_data_67(D)->ps_bode, _61
 # ./pdsp.c:2561:         if (ps_var->u16_bode_cnt >= ps_data->ps_bode->u16_bode_size)
	movzwl	24(%rax), %eax	 # _61->u16_bode_size, _62
 # ./pdsp.c:2561:         if (ps_var->u16_bode_cnt >= ps_data->ps_bode->u16_bode_size)
	cmpw	%ax, %dx	 # _62, _60
	jb	.L658	 #,
 # ./pdsp.c:2563:             ps_data->ps_var->b_running = PDSP_FALSE;
	movq	16(%rbp), %rax	 # ps_data, tmp190
	movq	(%rax), %rax	 # ps_data_67(D)->ps_var, _63
 # ./pdsp.c:2563:             ps_data->ps_var->b_running = PDSP_FALSE;
	movb	$0, (%rax)	 #, _63->b_running
.L658:
 # ./pdsp.c:2566: }
	nop	
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_fault_init
	.def	pdsp_fault_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_fault_init
pdsp_fault_init:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:2574:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L660	 #,
 # ./pdsp.c:2574:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	movq	16(%rbp), %rax	 # ps_data, tmp88
	movq	(%rax), %rax	 # ps_data_8(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	je	.L660	 #,
 # ./pdsp.c:2574:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	movq	16(%rbp), %rax	 # ps_data, tmp89
	movq	32(%rax), %rax	 # ps_data_8(D)->u32_status, _2
	testq	%rax, %rax	 # _2
	je	.L660	 #,
 # ./pdsp.c:2574:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	movq	16(%rbp), %rax	 # ps_data, tmp90
	movq	48(%rax), %rax	 # ps_data_8(D)->u32_ena, _3
	testq	%rax, %rax	 # _3
	jne	.L661	 #,
.L660:
 # ./pdsp.c:2574:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	movl	$2574, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp91
	movq	%rax, %rdx	 # tmp91,
	leaq	.LC1(%rip), %rax	 #, tmp92
	movq	%rax, %rcx	 # tmp92,
	call	printf	 #
.L661:
 # ./pdsp.c:2576:     ps_data->ps_var->b_state = PDSP_FALSE;
	movq	16(%rbp), %rax	 # ps_data, tmp93
	movq	(%rax), %rax	 # ps_data_8(D)->ps_var, _4
 # ./pdsp.c:2576:     ps_data->ps_var->b_state = PDSP_FALSE;
	movb	$0, (%rax)	 #, _4->b_state
 # ./pdsp.c:2577:     ps_data->ps_var->f32_time = 0.0f;
	movq	16(%rbp), %rax	 # ps_data, tmp94
	movq	(%rax), %rax	 # ps_data_8(D)->ps_var, _5
 # ./pdsp.c:2577:     ps_data->ps_var->f32_time = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp95
	movss	%xmm0, 4(%rax)	 # tmp95, _5->f32_time
 # ./pdsp.c:2578:     ps_data->ps_var->u16_count = 0U;
	movq	16(%rbp), %rax	 # ps_data, tmp96
	movq	(%rax), %rax	 # ps_data_8(D)->ps_var, _6
 # ./pdsp.c:2578:     ps_data->ps_var->u16_count = 0U;
	movl	$0, 8(%rax)	 #, _6->u16_count
 # ./pdsp.c:2579: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_fault_check
	.def	pdsp_fault_check;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_fault_check
pdsp_fault_check:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
	movss	%xmm1, 24(%rbp)	 # f32_in, f32_in
 # ./pdsp.c:2585:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L663	 #,
 # ./pdsp.c:2585:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	movq	16(%rbp), %rax	 # ps_data, tmp139
	movq	(%rax), %rax	 # ps_data_60(D)->ps_var, _1
	testq	%rax, %rax	 # _1
	je	.L663	 #,
 # ./pdsp.c:2585:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	movq	16(%rbp), %rax	 # ps_data, tmp140
	movq	32(%rax), %rax	 # ps_data_60(D)->u32_status, _2
	testq	%rax, %rax	 # _2
	je	.L663	 #,
 # ./pdsp.c:2585:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	movq	16(%rbp), %rax	 # ps_data, tmp141
	movq	48(%rax), %rax	 # ps_data_60(D)->u32_ena, _3
	testq	%rax, %rax	 # _3
	jne	.L664	 #,
.L663:
 # ./pdsp.c:2585:     PDSP_ASSERT((ps_data != NULL) && (ps_data->ps_var != NULL) &&
	movl	$2585, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp142
	movq	%rax, %rdx	 # tmp142,
	leaq	.LC1(%rip), %rax	 #, tmp143
	movq	%rax, %rcx	 # tmp143,
	call	printf	 #
.L664:
 # ./pdsp.c:2587:     ps_var = ps_data->ps_var;
	movq	16(%rbp), %rax	 # ps_data, tmp144
	movq	(%rax), %rax	 # ps_data_60(D)->ps_var, _4
 # ./pdsp.c:2587:     ps_var = ps_data->ps_var;
	movq	%rax, ps_var.0(%rip)	 # _4, ps_var
 # ./pdsp.c:2589:     if ((f32_in > ps_data->f32_val_trip) && (ps_var->b_state == PDSP_FALSE) &&
	movq	16(%rbp), %rax	 # ps_data, tmp145
	movss	20(%rax), %xmm1	 # ps_data_60(D)->f32_val_trip, _5
 # ./pdsp.c:2589:     if ((f32_in > ps_data->f32_val_trip) && (ps_var->b_state == PDSP_FALSE) &&
	movss	24(%rbp), %xmm0	 # f32_in, tmp146
	comiss	%xmm1, %xmm0	 # _5, tmp146
	jbe	.L665	 #,
 # ./pdsp.c:2589:     if ((f32_in > ps_data->f32_val_trip) && (ps_var->b_state == PDSP_FALSE) &&
	movq	ps_var.0(%rip), %rax	 # ps_var, ps_var.232_6
	movzbl	(%rax), %eax	 # ps_var.232_6->b_state, _7
 # ./pdsp.c:2589:     if ((f32_in > ps_data->f32_val_trip) && (ps_var->b_state == PDSP_FALSE) &&
	xorl	$1, %eax	 #, _8
 # ./pdsp.c:2589:     if ((f32_in > ps_data->f32_val_trip) && (ps_var->b_state == PDSP_FALSE) &&
	testb	%al, %al	 # _8
	je	.L665	 #,
 # ./pdsp.c:2590:         (*ps_data->u32_ena & ps_data->u32_ena_mask))
	movq	16(%rbp), %rax	 # ps_data, tmp147
	movq	48(%rax), %rax	 # ps_data_60(D)->u32_ena, _9
 # ./pdsp.c:2590:         (*ps_data->u32_ena & ps_data->u32_ena_mask))
	movl	(%rax), %edx	 # *_9, _10
 # ./pdsp.c:2590:         (*ps_data->u32_ena & ps_data->u32_ena_mask))
	movq	16(%rbp), %rax	 # ps_data, tmp148
	movl	56(%rax), %eax	 # ps_data_60(D)->u32_ena_mask, _11
 # ./pdsp.c:2590:         (*ps_data->u32_ena & ps_data->u32_ena_mask))
	andl	%edx, %eax	 # _10, _12
 # ./pdsp.c:2589:     if ((f32_in > ps_data->f32_val_trip) && (ps_var->b_state == PDSP_FALSE) &&
	testl	%eax, %eax	 # _12
	je	.L665	 #,
 # ./pdsp.c:2592:         ps_var->f32_time += ps_data->f32_time_step;
	movq	ps_var.0(%rip), %rax	 # ps_var, ps_var.233_13
	movss	4(%rax), %xmm1	 # ps_var.233_13->f32_time, _14
 # ./pdsp.c:2592:         ps_var->f32_time += ps_data->f32_time_step;
	movq	16(%rbp), %rax	 # ps_data, tmp149
	movss	8(%rax), %xmm0	 # ps_data_60(D)->f32_time_step, _15
 # ./pdsp.c:2592:         ps_var->f32_time += ps_data->f32_time_step;
	movq	ps_var.0(%rip), %rax	 # ps_var, ps_var.234_16
 # ./pdsp.c:2592:         ps_var->f32_time += ps_data->f32_time_step;
	addss	%xmm1, %xmm0	 # _14, _17
	movss	%xmm0, 4(%rax)	 # _17, ps_var.234_16->f32_time
 # ./pdsp.c:2594:         if (ps_var->f32_time > ps_data->f32_time_trip)
	movq	ps_var.0(%rip), %rax	 # ps_var, ps_var.235_18
	movss	4(%rax), %xmm0	 # ps_var.235_18->f32_time, _19
 # ./pdsp.c:2594:         if (ps_var->f32_time > ps_data->f32_time_trip)
	movq	16(%rbp), %rax	 # ps_data, tmp150
	movss	12(%rax), %xmm1	 # ps_data_60(D)->f32_time_trip, _20
 # ./pdsp.c:2594:         if (ps_var->f32_time > ps_data->f32_time_trip)
	comiss	%xmm1, %xmm0	 # _20, _19
	jbe	.L669	 #,
 # ./pdsp.c:2596:             ps_var->b_state = PDSP_TRUE;
	movq	ps_var.0(%rip), %rax	 # ps_var, ps_var.236_21
 # ./pdsp.c:2596:             ps_var->b_state = PDSP_TRUE;
	movb	$1, (%rax)	 #, ps_var.236_21->b_state
 # ./pdsp.c:2597:             *ps_data->u32_status |= ps_data->u32_status_mask;
	movq	16(%rbp), %rax	 # ps_data, tmp151
	movq	32(%rax), %rax	 # ps_data_60(D)->u32_status, _22
 # ./pdsp.c:2597:             *ps_data->u32_status |= ps_data->u32_status_mask;
	movl	(%rax), %ecx	 # *_22, _23
 # ./pdsp.c:2597:             *ps_data->u32_status |= ps_data->u32_status_mask;
	movq	16(%rbp), %rax	 # ps_data, tmp152
	movl	40(%rax), %edx	 # ps_data_60(D)->u32_status_mask, _24
 # ./pdsp.c:2597:             *ps_data->u32_status |= ps_data->u32_status_mask;
	movq	16(%rbp), %rax	 # ps_data, tmp153
	movq	32(%rax), %rax	 # ps_data_60(D)->u32_status, _25
 # ./pdsp.c:2597:             *ps_data->u32_status |= ps_data->u32_status_mask;
	orl	%ecx, %edx	 # _23, _26
	movl	%edx, (%rax)	 # _26, *_25
 # ./pdsp.c:2598:             ps_var->f32_time = 0.0f;
	movq	ps_var.0(%rip), %rax	 # ps_var, ps_var.237_27
 # ./pdsp.c:2598:             ps_var->f32_time = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp154
	movss	%xmm0, 4(%rax)	 # tmp154, ps_var.237_27->f32_time
 # ./pdsp.c:2594:         if (ps_var->f32_time > ps_data->f32_time_trip)
	jmp	.L669	 #
.L665:
 # ./pdsp.c:2602:     else if ((f32_in < ps_data->f32_val_rec) &&
	movq	16(%rbp), %rax	 # ps_data, tmp155
	movss	24(%rax), %xmm0	 # ps_data_60(D)->f32_val_rec, _28
 # ./pdsp.c:2602:     else if ((f32_in < ps_data->f32_val_rec) &&
	comiss	24(%rbp), %xmm0	 # f32_in, _28
	jbe	.L670	 #,
 # ./pdsp.c:2603:              (ps_var->b_state == PDSP_TRUE) &&
	movq	ps_var.0(%rip), %rax	 # ps_var, ps_var.238_29
	movzbl	(%rax), %eax	 # ps_var.238_29->b_state, _30
 # ./pdsp.c:2602:     else if ((f32_in < ps_data->f32_val_rec) &&
	testb	%al, %al	 # _30
	je	.L670	 #,
 # ./pdsp.c:2604:              (ps_var->u16_count < ps_data->u16_rec_limit))
	movq	ps_var.0(%rip), %rax	 # ps_var, ps_var.239_31
	movl	8(%rax), %edx	 # ps_var.239_31->u16_count, _32
 # ./pdsp.c:2604:              (ps_var->u16_count < ps_data->u16_rec_limit))
	movq	16(%rbp), %rax	 # ps_data, tmp156
	movl	28(%rax), %eax	 # ps_data_60(D)->u16_rec_limit, _33
 # ./pdsp.c:2603:              (ps_var->b_state == PDSP_TRUE) &&
	cmpl	%eax, %edx	 # _33, _32
	jnb	.L670	 #,
 # ./pdsp.c:2606:         ps_var->f32_time += ps_data->f32_time_step;
	movq	ps_var.0(%rip), %rax	 # ps_var, ps_var.240_34
	movss	4(%rax), %xmm1	 # ps_var.240_34->f32_time, _35
 # ./pdsp.c:2606:         ps_var->f32_time += ps_data->f32_time_step;
	movq	16(%rbp), %rax	 # ps_data, tmp157
	movss	8(%rax), %xmm0	 # ps_data_60(D)->f32_time_step, _36
 # ./pdsp.c:2606:         ps_var->f32_time += ps_data->f32_time_step;
	movq	ps_var.0(%rip), %rax	 # ps_var, ps_var.241_37
 # ./pdsp.c:2606:         ps_var->f32_time += ps_data->f32_time_step;
	addss	%xmm1, %xmm0	 # _35, _38
	movss	%xmm0, 4(%rax)	 # _38, ps_var.241_37->f32_time
 # ./pdsp.c:2608:         if (ps_var->f32_time > ps_data->f32_time_rec)
	movq	ps_var.0(%rip), %rax	 # ps_var, ps_var.242_39
	movss	4(%rax), %xmm0	 # ps_var.242_39->f32_time, _40
 # ./pdsp.c:2608:         if (ps_var->f32_time > ps_data->f32_time_rec)
	movq	16(%rbp), %rax	 # ps_data, tmp158
	movss	16(%rax), %xmm1	 # ps_data_60(D)->f32_time_rec, _41
 # ./pdsp.c:2608:         if (ps_var->f32_time > ps_data->f32_time_rec)
	comiss	%xmm1, %xmm0	 # _41, _40
	jbe	.L669	 #,
 # ./pdsp.c:2610:             ps_var->b_state = PDSP_FALSE;
	movq	ps_var.0(%rip), %rax	 # ps_var, ps_var.243_42
 # ./pdsp.c:2610:             ps_var->b_state = PDSP_FALSE;
	movb	$0, (%rax)	 #, ps_var.243_42->b_state
 # ./pdsp.c:2611:             ps_var->u16_count += 1;
	movq	ps_var.0(%rip), %rax	 # ps_var, ps_var.244_43
	movl	8(%rax), %edx	 # ps_var.244_43->u16_count, _44
	movq	ps_var.0(%rip), %rax	 # ps_var, ps_var.245_45
 # ./pdsp.c:2611:             ps_var->u16_count += 1;
	addl	$1, %edx	 #, _46
	movl	%edx, 8(%rax)	 # _46, ps_var.245_45->u16_count
 # ./pdsp.c:2612:             *ps_data->u32_status &= ~ps_data->u32_status_mask;
	movq	16(%rbp), %rax	 # ps_data, tmp159
	movq	32(%rax), %rax	 # ps_data_60(D)->u32_status, _47
 # ./pdsp.c:2612:             *ps_data->u32_status &= ~ps_data->u32_status_mask;
	movl	(%rax), %edx	 # *_47, _48
 # ./pdsp.c:2612:             *ps_data->u32_status &= ~ps_data->u32_status_mask;
	movq	16(%rbp), %rax	 # ps_data, tmp160
	movl	40(%rax), %eax	 # ps_data_60(D)->u32_status_mask, _49
 # ./pdsp.c:2612:             *ps_data->u32_status &= ~ps_data->u32_status_mask;
	notl	%eax	 # _49
	movl	%eax, %ecx	 # _49, _50
 # ./pdsp.c:2612:             *ps_data->u32_status &= ~ps_data->u32_status_mask;
	movq	16(%rbp), %rax	 # ps_data, tmp161
	movq	32(%rax), %rax	 # ps_data_60(D)->u32_status, _51
 # ./pdsp.c:2612:             *ps_data->u32_status &= ~ps_data->u32_status_mask;
	andl	%ecx, %edx	 # _50, _52
	movl	%edx, (%rax)	 # _52, *_51
 # ./pdsp.c:2613:             ps_var->f32_time = 0.0f;
	movq	ps_var.0(%rip), %rax	 # ps_var, ps_var.246_53
 # ./pdsp.c:2613:             ps_var->f32_time = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp162
	movss	%xmm0, 4(%rax)	 # tmp162, ps_var.246_53->f32_time
 # ./pdsp.c:2608:         if (ps_var->f32_time > ps_data->f32_time_rec)
	jmp	.L669	 #
.L670:
 # ./pdsp.c:2619:         ps_var->f32_time = 0.0f;
	movq	ps_var.0(%rip), %rax	 # ps_var, ps_var.247_54
 # ./pdsp.c:2619:         ps_var->f32_time = 0.0f;
	pxor	%xmm0, %xmm0	 # tmp163
	movss	%xmm0, 4(%rax)	 # tmp163, ps_var.247_54->f32_time
.L669:
 # ./pdsp.c:2621:     return ps_var->b_state;
	movq	ps_var.0(%rip), %rax	 # ps_var, ps_var.248_55
	movzbl	(%rax), %eax	 # ps_var.248_55->b_state, _75
 # ./pdsp.c:2622: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	pdsp_aout
	.def	pdsp_aout;	.scl	2;	.type	32;	.endef
	.seh_proc	pdsp_aout
pdsp_aout:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # ps_data, ps_data
 # ./pdsp.c:2691:     PDSP_ASSERT((ps_data != NULL) && (ps_data->pv_data != NULL));
	cmpq	$0, 16(%rbp)	 #, ps_data
	je	.L680	 #,
 # ./pdsp.c:2691:     PDSP_ASSERT((ps_data != NULL) && (ps_data->pv_data != NULL));
	movq	16(%rbp), %rax	 # ps_data, tmp108
	movq	(%rax), %rax	 # ps_data_27(D)->pv_data, _1
	testq	%rax, %rax	 # _1
	jne	.L681	 #,
.L680:
 # ./pdsp.c:2691:     PDSP_ASSERT((ps_data != NULL) && (ps_data->pv_data != NULL));
	movl	$2691, %r8d	 #,
	leaq	.LC0(%rip), %rax	 #, tmp109
	movq	%rax, %rdx	 # tmp109,
	leaq	.LC1(%rip), %rax	 #, tmp110
	movq	%rax, %rcx	 # tmp110,
	call	printf	 #
.L681:
 # ./pdsp.c:2692:     if (ps_data->e_type == PDSP_AOUT_F32)
	movq	16(%rbp), %rax	 # ps_data, tmp111
	movl	8(%rax), %eax	 # ps_data_27(D)->e_type, _2
 # ./pdsp.c:2692:     if (ps_data->e_type == PDSP_AOUT_F32)
	testl	%eax, %eax	 # _2
	jne	.L682	 #,
 # ./pdsp.c:2694:         return (pdsp_u16_t)(*(pdsp_f32_t *)ps_data->pv_data *
	movq	16(%rbp), %rax	 # ps_data, tmp112
	movq	(%rax), %rax	 # ps_data_27(D)->pv_data, _3
 # ./pdsp.c:2694:         return (pdsp_u16_t)(*(pdsp_f32_t *)ps_data->pv_data *
	movss	(%rax), %xmm1	 # MEM[(pdsp_f32_t *)_3], _4
 # ./pdsp.c:2695:                                 ps_data->f32_gain +
	movq	16(%rbp), %rax	 # ps_data, tmp113
	movss	12(%rax), %xmm0	 # ps_data_27(D)->f32_gain, _5
 # ./pdsp.c:2694:         return (pdsp_u16_t)(*(pdsp_f32_t *)ps_data->pv_data *
	mulss	%xmm0, %xmm1	 # _5, _6
 # ./pdsp.c:2696:                             ps_data->f32_offset);
	movq	16(%rbp), %rax	 # ps_data, tmp114
	movss	16(%rax), %xmm0	 # ps_data_27(D)->f32_offset, _7
 # ./pdsp.c:2695:                                 ps_data->f32_gain +
	addss	%xmm1, %xmm0	 # _6, _8
 # ./pdsp.c:2694:         return (pdsp_u16_t)(*(pdsp_f32_t *)ps_data->pv_data *
	cvttss2sil	%xmm0, %eax	 # _8, tmp115
	jmp	.L683	 #
.L682:
 # ./pdsp.c:2698:     if (ps_data->e_type == PDSP_AOUT_I16)
	movq	16(%rbp), %rax	 # ps_data, tmp116
	movl	8(%rax), %eax	 # ps_data_27(D)->e_type, _9
 # ./pdsp.c:2698:     if (ps_data->e_type == PDSP_AOUT_I16)
	cmpl	$1, %eax	 #, _9
	jne	.L684	 #,
 # ./pdsp.c:2700:         return (pdsp_u16_t)((pdsp_f32_t)(*(pdsp_i16_t *)ps_data->pv_data) *
	movq	16(%rbp), %rax	 # ps_data, tmp117
	movq	(%rax), %rax	 # ps_data_27(D)->pv_data, _10
 # ./pdsp.c:2700:         return (pdsp_u16_t)((pdsp_f32_t)(*(pdsp_i16_t *)ps_data->pv_data) *
	movzwl	(%rax), %eax	 # MEM[(pdsp_i16_t *)_10], _11
 # ./pdsp.c:2700:         return (pdsp_u16_t)((pdsp_f32_t)(*(pdsp_i16_t *)ps_data->pv_data) *
	cwtl
	pxor	%xmm1, %xmm1	 # _12
	cvtsi2ssl	%eax, %xmm1	 # tmp118, _12
 # ./pdsp.c:2701:                                 ps_data->f32_gain +
	movq	16(%rbp), %rax	 # ps_data, tmp119
	movss	12(%rax), %xmm0	 # ps_data_27(D)->f32_gain, _13
 # ./pdsp.c:2700:         return (pdsp_u16_t)((pdsp_f32_t)(*(pdsp_i16_t *)ps_data->pv_data) *
	mulss	%xmm0, %xmm1	 # _13, _14
 # ./pdsp.c:2702:                             ps_data->f32_offset);
	movq	16(%rbp), %rax	 # ps_data, tmp120
	movss	16(%rax), %xmm0	 # ps_data_27(D)->f32_offset, _15
 # ./pdsp.c:2701:                                 ps_data->f32_gain +
	addss	%xmm1, %xmm0	 # _14, _16
 # ./pdsp.c:2700:         return (pdsp_u16_t)((pdsp_f32_t)(*(pdsp_i16_t *)ps_data->pv_data) *
	cvttss2sil	%xmm0, %eax	 # _16, tmp121
	jmp	.L683	 #
.L684:
 # ./pdsp.c:2704:     if (ps_data->e_type == PDSP_AOUT_U16)
	movq	16(%rbp), %rax	 # ps_data, tmp122
	movl	8(%rax), %eax	 # ps_data_27(D)->e_type, _17
 # ./pdsp.c:2704:     if (ps_data->e_type == PDSP_AOUT_U16)
	cmpl	$2, %eax	 #, _17
	jne	.L685	 #,
 # ./pdsp.c:2706:         return (pdsp_u16_t)((pdsp_f32_t)(*(pdsp_u16_t *)ps_data->pv_data) *
	movq	16(%rbp), %rax	 # ps_data, tmp123
	movq	(%rax), %rax	 # ps_data_27(D)->pv_data, _18
 # ./pdsp.c:2706:         return (pdsp_u16_t)((pdsp_f32_t)(*(pdsp_u16_t *)ps_data->pv_data) *
	movzwl	(%rax), %eax	 # MEM[(pdsp_u16_t *)_18], _19
 # ./pdsp.c:2706:         return (pdsp_u16_t)((pdsp_f32_t)(*(pdsp_u16_t *)ps_data->pv_data) *
	movzwl	%ax, %eax	 # _19, tmp124
	pxor	%xmm1, %xmm1	 # _20
	cvtsi2ssl	%eax, %xmm1	 # tmp124, _20
 # ./pdsp.c:2707:                                 ps_data->f32_gain +
	movq	16(%rbp), %rax	 # ps_data, tmp125
	movss	12(%rax), %xmm0	 # ps_data_27(D)->f32_gain, _21
 # ./pdsp.c:2706:         return (pdsp_u16_t)((pdsp_f32_t)(*(pdsp_u16_t *)ps_data->pv_data) *
	mulss	%xmm0, %xmm1	 # _21, _22
 # ./pdsp.c:2708:                             ps_data->f32_offset);
	movq	16(%rbp), %rax	 # ps_data, tmp126
	movss	16(%rax), %xmm0	 # ps_data_27(D)->f32_offset, _23
 # ./pdsp.c:2707:                                 ps_data->f32_gain +
	addss	%xmm1, %xmm0	 # _22, _24
 # ./pdsp.c:2706:         return (pdsp_u16_t)((pdsp_f32_t)(*(pdsp_u16_t *)ps_data->pv_data) *
	cvttss2sil	%xmm0, %eax	 # _24, tmp127
	jmp	.L683	 #
.L685:
 # ./pdsp.c:2710:     return 0;
	movl	$0, %eax	 #, _25
.L683:
 # ./pdsp.c:2711: }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
.lcomm ch_nibble.22,1,1
.lcomm out.21,4,4
.lcomm ps_queue.20,8,8
.lcomm ps_queue_var.19,8,8
.lcomm ps_roll_var.18,8,8
.lcomm ps_var.17,8,8
.lcomm ps_var.16,8,8
.lcomm ps_var.15,8,8
.lcomm ps_param.14,8,8
.lcomm f32_sum.13,4,4
.lcomm f32_out.12,4,4
.lcomm ps_var.11,8,8
.lcomm ps_param.10,8,8
.lcomm f32_sum.9,4,4
.lcomm f32_out.8,4,4
.lcomm ps_var.7,8,8
.lcomm ps_param.6,8,8
.lcomm f32_sum.5,4,4
.lcomm f32_out.4,4,4
.lcomm ps_var.3,8,8
.lcomm ps_var.2,8,8
.lcomm ps_var.1,8,8
.lcomm ps_var.0,8,8
	.section .rdata,"dr"
	.align 4
.LC3:
	.long	1056964608
	.align 4
.LC4:
	.long	1065353216
	.align 4
.LC5:
	.long	1092616192
	.align 4
.LC6:
	.long	1048576000
	.align 4
.LC7:
	.long	1040187392
	.align 4
.LC8:
	.long	2139095040
	.align 4
.LC9:
	.long	-8388608
	.align 4
.LC10:
	.long	1078530011
	.align 4
.LC11:
	.long	1077936128
	.align 4
.LC12:
	.long	1073741824
	.align 4
.LC13:
	.long	-1069547520
	.align 4
.LC14:
	.long	1059760811
	.align 4
.LC15:
	.long	1058262330
	.align 16
.LC16:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC17:
	.long	-1090519040
	.align 4
.LC18:
	.long	1063105495
	.align 16
.LC19:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC20:
	.long	1036831949
	.align 8
.LC22:
	.long	0
	.long	1072693248
	.align 4
.LC23:
	.long	1086918619
	.align 4
.LC24:
	.long	1042479491
	.align 4
.LC25:
	.long	1082130432
	.align 4
.LC26:
	.long	1086918618
	.align 4
.LC27:
	.long	1128792064
	.ident	"GCC: (Rev7, Built by MSYS2 project) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	fmaxf;	.scl	2;	.type	32;	.endef
	.def	fminf;	.scl	2;	.type	32;	.endef
	.def	powf;	.scl	2;	.type	32;	.endef
	.def	sqrtf;	.scl	2;	.type	32;	.endef
	.def	fmax;	.scl	2;	.type	32;	.endef
	.def	fmin;	.scl	2;	.type	32;	.endef
	.def	sinf;	.scl	2;	.type	32;	.endef
	.def	cosf;	.scl	2;	.type	32;	.endef
