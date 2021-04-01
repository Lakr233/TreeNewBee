	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 11, 1
	.globl	_randomElement          ## -- Begin function randomElement
	.p2align	4, 0x90
_randomElement:                         ## @randomElement
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	callq	_rand
	cltd
	idivl	-12(%rbp)
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	(%rdi,%rcx,8), %rcx
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$496, %rsp              ## imm = 0x1F0
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	callq	_time
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, %edi
	callq	_srand
	leaq	_n4(%rip), %rdi
	movl	$20, %esi
	callq	_randomElement
	leaq	_v(%rip), %rdi
	movl	$54, %esi
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	callq	_randomElement
	leaq	_n4(%rip), %rdi
	movl	$20, %esi
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	callq	_randomElement
	leaq	_v(%rip), %rdi
	movl	$54, %esi
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	_randomElement
	leaq	_n3(%rip), %rdi
	movl	$19, %esi
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	_randomElement
	leaq	_n4(%rip), %rdi
	movl	$20, %esi
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	_randomElement
	leaq	_v(%rip), %rdi
	movl	$54, %esi
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	callq	_randomElement
	leaq	_n2(%rip), %rdi
	movl	$33, %esi
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	callq	_randomElement
	leaq	_n4(%rip), %rdi
	movl	$20, %esi
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	callq	_randomElement
	leaq	_n3(%rip), %rdi
	movl	$19, %esi
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	callq	_randomElement
	leaq	_n3(%rip), %rdi
	movl	$19, %esi
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	callq	_randomElement
	leaq	_n3(%rip), %rdi
	movl	$19, %esi
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	callq	_randomElement
	leaq	_n4(%rip), %rdi
	movl	$20, %esi
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	callq	_randomElement
	leaq	_n4(%rip), %rdi
	movl	$20, %esi
	movq	%rax, -120(%rbp)        ## 8-byte Spill
	callq	_randomElement
	leaq	_n2(%rip), %rdi
	movl	$33, %esi
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	callq	_randomElement
	leaq	_n4(%rip), %rdi
	movl	$20, %esi
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	callq	_randomElement
	leaq	_n4(%rip), %rdi
	movl	$20, %esi
	movq	%rax, -144(%rbp)        ## 8-byte Spill
	callq	_randomElement
	leaq	_n4(%rip), %rdi
	movl	$20, %esi
	movq	%rax, -152(%rbp)        ## 8-byte Spill
	callq	_randomElement
	leaq	_n2(%rip), %rdi
	movl	$33, %esi
	movq	%rax, -160(%rbp)        ## 8-byte Spill
	callq	_randomElement
	leaq	_n4(%rip), %rdi
	movl	$20, %esi
	movq	%rax, -168(%rbp)        ## 8-byte Spill
	callq	_randomElement
	leaq	_n2(%rip), %rdi
	movl	$33, %esi
	movq	%rax, -176(%rbp)        ## 8-byte Spill
	callq	_randomElement
	leaq	_n2(%rip), %rdi
	movl	$33, %esi
	movq	%rax, -184(%rbp)        ## 8-byte Spill
	callq	_randomElement
	leaq	_n2(%rip), %rdi
	movl	$33, %esi
	movq	%rax, -192(%rbp)        ## 8-byte Spill
	callq	_randomElement
	leaq	_v(%rip), %rdi
	movl	$54, %esi
	movq	%rax, -200(%rbp)        ## 8-byte Spill
	callq	_randomElement
	leaq	_n4(%rip), %rdi
	movl	$20, %esi
	movq	%rax, -208(%rbp)        ## 8-byte Spill
	callq	_randomElement
	leaq	_v(%rip), %rdi
	movl	$54, %esi
	movq	%rax, -216(%rbp)        ## 8-byte Spill
	callq	_randomElement
	leaq	_n2(%rip), %rdi
	movl	$33, %esi
	movq	%rax, -224(%rbp)        ## 8-byte Spill
	callq	_randomElement
	leaq	_v(%rip), %rdi
	movl	$54, %esi
	movq	%rax, -232(%rbp)        ## 8-byte Spill
	callq	_randomElement
	leaq	_n4(%rip), %rdi
	movl	$20, %esi
	movq	%rax, -240(%rbp)        ## 8-byte Spill
	callq	_randomElement
	leaq	_n3(%rip), %rdi
	movl	$19, %esi
	movq	%rax, -248(%rbp)        ## 8-byte Spill
	callq	_randomElement
	leaq	_n3(%rip), %rdi
	movl	$19, %esi
	movq	%rax, -256(%rbp)        ## 8-byte Spill
	callq	_randomElement
	leaq	_n3(%rip), %rdi
	movl	$19, %esi
	movq	%rax, -264(%rbp)        ## 8-byte Spill
	callq	_randomElement
	leaq	L_.str.126(%rip), %rdi
	movq	-24(%rbp), %rsi         ## 8-byte Reload
	movq	-32(%rbp), %rdx         ## 8-byte Reload
	movq	-40(%rbp), %rcx         ## 8-byte Reload
	movq	-48(%rbp), %r8          ## 8-byte Reload
	movq	-56(%rbp), %r9          ## 8-byte Reload
	movq	-64(%rbp), %r10         ## 8-byte Reload
	movq	%r10, (%rsp)
	movq	-72(%rbp), %r10         ## 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-80(%rbp), %r10         ## 8-byte Reload
	movq	%r10, 16(%rsp)
	movq	-88(%rbp), %r10         ## 8-byte Reload
	movq	%r10, 24(%rsp)
	movq	-96(%rbp), %r10         ## 8-byte Reload
	movq	%r10, 32(%rsp)
	movq	-104(%rbp), %r10        ## 8-byte Reload
	movq	%r10, 40(%rsp)
	movq	-112(%rbp), %r10        ## 8-byte Reload
	movq	%r10, 48(%rsp)
	movq	-120(%rbp), %r10        ## 8-byte Reload
	movq	%r10, 56(%rsp)
	movq	-128(%rbp), %r10        ## 8-byte Reload
	movq	%r10, 64(%rsp)
	movq	-136(%rbp), %r10        ## 8-byte Reload
	movq	%r10, 72(%rsp)
	movq	-144(%rbp), %r10        ## 8-byte Reload
	movq	%r10, 80(%rsp)
	movq	-152(%rbp), %r10        ## 8-byte Reload
	movq	%r10, 88(%rsp)
	movq	-160(%rbp), %r10        ## 8-byte Reload
	movq	%r10, 96(%rsp)
	movq	-168(%rbp), %r10        ## 8-byte Reload
	movq	%r10, 104(%rsp)
	movq	-176(%rbp), %r10        ## 8-byte Reload
	movq	%r10, 112(%rsp)
	movq	-184(%rbp), %r10        ## 8-byte Reload
	movq	%r10, 120(%rsp)
	movq	-192(%rbp), %r10        ## 8-byte Reload
	movq	%r10, 128(%rsp)
	movq	-200(%rbp), %r10        ## 8-byte Reload
	movq	%r10, 136(%rsp)
	movq	-208(%rbp), %r10        ## 8-byte Reload
	movq	%r10, 144(%rsp)
	movq	-216(%rbp), %r10        ## 8-byte Reload
	movq	%r10, 152(%rsp)
	movq	-224(%rbp), %r10        ## 8-byte Reload
	movq	%r10, 160(%rsp)
	movq	-232(%rbp), %r10        ## 8-byte Reload
	movq	%r10, 168(%rsp)
	movq	-240(%rbp), %r10        ## 8-byte Reload
	movq	%r10, 176(%rsp)
	movq	-248(%rbp), %r10        ## 8-byte Reload
	movq	%r10, 184(%rsp)
	movq	-256(%rbp), %r10        ## 8-byte Reload
	movq	%r10, 192(%rsp)
	movq	-264(%rbp), %r10        ## 8-byte Reload
	movq	%r10, 200(%rsp)
	movq	%rax, 208(%rsp)
	movb	$0, %al
	callq	_printf
	xorl	%r11d, %r11d
	movl	%eax, -268(%rbp)        ## 4-byte Spill
	movl	%r11d, %eax
	addq	$496, %rsp              ## imm = 0x1F0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\347\232\256\345\256\236"

L_.str.1:                               ## @.str.1
	.asciz	"\345\244\215\347\233\230"

L_.str.2:                               ## @.str.2
	.asciz	"\350\265\213\350\203\275"

L_.str.3:                               ## @.str.3
	.asciz	"\345\212\240\346\214\201"

L_.str.4:                               ## @.str.4
	.asciz	"\346\262\211\346\267\200"

L_.str.5:                               ## @.str.5
	.asciz	"\345\200\222\351\200\274"

L_.str.6:                               ## @.str.6
	.asciz	"\350\220\275\345\234\260"

L_.str.7:                               ## @.str.7
	.asciz	"\344\270\262\350\201\224"

L_.str.8:                               ## @.str.8
	.asciz	"\345\215\217\345\220\214"

L_.str.9:                               ## @.str.9
	.asciz	"\345\217\215\345\223\272"

L_.str.10:                              ## @.str.10
	.asciz	"\345\205\274\345\256\271"

L_.str.11:                              ## @.str.11
	.asciz	"\345\214\205\350\243\205"

L_.str.12:                              ## @.str.12
	.asciz	"\351\207\215\347\273\204"

L_.str.13:                              ## @.str.13
	.asciz	"\345\261\245\347\272\246"

L_.str.14:                              ## @.str.14
	.asciz	"\345\223\215\345\272\224"

L_.str.15:                              ## @.str.15
	.asciz	"\351\207\217\345\214\226"

L_.str.16:                              ## @.str.16
	.asciz	"\345\217\221\345\212\233"

L_.str.17:                              ## @.str.17
	.asciz	"\345\270\203\345\261\200"

L_.str.18:                              ## @.str.18
	.asciz	"\350\201\224\345\212\250"

L_.str.19:                              ## @.str.19
	.asciz	"\347\273\206\345\210\206"

L_.str.20:                              ## @.str.20
	.asciz	"\346\242\263\347\220\206"

L_.str.21:                              ## @.str.21
	.asciz	"\350\276\223\345\207\272"

L_.str.22:                              ## @.str.22
	.asciz	"\345\212\240\351\200\237"

L_.str.23:                              ## @.str.23
	.asciz	"\345\205\261\345\273\272"

L_.str.24:                              ## @.str.24
	.asciz	"\345\205\261\345\210\233"

L_.str.25:                              ## @.str.25
	.asciz	"\346\224\257\346\222\221"

L_.str.26:                              ## @.str.26
	.asciz	"\350\236\215\345\220\210"

L_.str.27:                              ## @.str.27
	.asciz	"\350\247\243\350\200\246"

L_.str.28:                              ## @.str.28
	.asciz	"\350\201\232\345\220\210"

L_.str.29:                              ## @.str.29
	.asciz	"\351\233\206\346\210\220"

L_.str.30:                              ## @.str.30
	.asciz	"\345\257\271\346\240\207"

L_.str.31:                              ## @.str.31
	.asciz	"\345\257\271\351\275\220"

L_.str.32:                              ## @.str.32
	.asciz	"\350\201\232\347\204\246"

L_.str.33:                              ## @.str.33
	.asciz	"\346\212\223\346\211\213"

L_.str.34:                              ## @.str.34
	.asciz	"\346\213\206\350\247\243"

L_.str.35:                              ## @.str.35
	.asciz	"\346\213\211\351\200\232"

L_.str.36:                              ## @.str.36
	.asciz	"\346\212\275\350\261\241"

L_.str.37:                              ## @.str.37
	.asciz	"\346\221\270\347\264\242"

L_.str.38:                              ## @.str.38
	.asciz	"\346\217\220\347\202\274"

L_.str.39:                              ## @.str.39
	.asciz	"\346\211\223\351\200\232"

L_.str.40:                              ## @.str.40
	.asciz	"\345\220\203\351\200\217"

L_.str.41:                              ## @.str.41
	.asciz	"\350\277\201\347\247\273"

L_.str.42:                              ## @.str.42
	.asciz	"\345\210\206\345\217\221"

L_.str.43:                              ## @.str.43
	.asciz	"\345\210\206\345\261\202"

L_.str.44:                              ## @.str.44
	.asciz	"\345\260\201\350\243\205"

L_.str.45:                              ## @.str.45
	.asciz	"\350\276\220\345\260\204"

L_.str.46:                              ## @.str.46
	.asciz	"\345\233\264\347\273\225"

L_.str.47:                              ## @.str.47
	.asciz	"\345\244\215\347\224\250"

L_.str.48:                              ## @.str.48
	.asciz	"\346\270\227\351\200\217"

L_.str.49:                              ## @.str.49
	.asciz	"\346\211\251\345\261\225"

L_.str.50:                              ## @.str.50
	.asciz	"\345\274\200\346\213\223"

L_.str.51:                              ## @.str.51
	.asciz	"\347\273\231\345\210\260"

L_.str.52:                              ## @.str.52
	.asciz	"\346\255\273\347\243\225"

L_.str.53:                              ## @.str.53
	.asciz	"\347\240\264\345\234\210"

	.section	__DATA,__data
	.globl	_v                      ## @v
	.p2align	4
_v:
	.quad	L_.str
	.quad	L_.str.1
	.quad	L_.str.2
	.quad	L_.str.3
	.quad	L_.str.4
	.quad	L_.str.5
	.quad	L_.str.6
	.quad	L_.str.7
	.quad	L_.str.8
	.quad	L_.str.9
	.quad	L_.str.10
	.quad	L_.str.11
	.quad	L_.str.12
	.quad	L_.str.13
	.quad	L_.str.14
	.quad	L_.str.15
	.quad	L_.str.16
	.quad	L_.str.17
	.quad	L_.str.18
	.quad	L_.str.19
	.quad	L_.str.20
	.quad	L_.str.21
	.quad	L_.str.22
	.quad	L_.str.23
	.quad	L_.str.24
	.quad	L_.str.25
	.quad	L_.str.26
	.quad	L_.str.27
	.quad	L_.str.28
	.quad	L_.str.29
	.quad	L_.str.30
	.quad	L_.str.31
	.quad	L_.str.32
	.quad	L_.str.33
	.quad	L_.str.34
	.quad	L_.str.35
	.quad	L_.str.36
	.quad	L_.str.37
	.quad	L_.str.38
	.quad	L_.str.39
	.quad	L_.str.40
	.quad	L_.str.41
	.quad	L_.str.42
	.quad	L_.str.43
	.quad	L_.str.44
	.quad	L_.str.45
	.quad	L_.str.46
	.quad	L_.str.47
	.quad	L_.str.48
	.quad	L_.str.49
	.quad	L_.str.50
	.quad	L_.str.51
	.quad	L_.str.52
	.quad	L_.str.53

	.section	__TEXT,__cstring,cstring_literals
L_.str.54:                              ## @.str.54
	.asciz	"\346\274\217\346\226\227"

L_.str.55:                              ## @.str.55
	.asciz	"\344\270\255\345\217\260"

L_.str.56:                              ## @.str.56
	.asciz	"\351\227\255\347\216\257"

L_.str.57:                              ## @.str.57
	.asciz	"\346\211\223\346\263\225"

L_.str.58:                              ## @.str.58
	.asciz	"\347\272\275\345\270\246"

L_.str.59:                              ## @.str.59
	.asciz	"\347\237\251\351\230\265"

L_.str.60:                              ## @.str.60
	.asciz	"\345\210\272\346\277\200"

L_.str.61:                              ## @.str.61
	.asciz	"\350\247\204\346\250\241"

L_.str.62:                              ## @.str.62
	.asciz	"\345\234\272\346\231\257"

L_.str.63:                              ## @.str.63
	.asciz	"\347\273\264\345\272\246"

L_.str.64:                              ## @.str.64
	.asciz	"\346\240\274\345\261\200"

L_.str.65:                              ## @.str.65
	.asciz	"\345\275\242\346\200\201"

L_.str.66:                              ## @.str.66
	.asciz	"\347\224\237\346\200\201"

L_.str.67:                              ## @.str.67
	.asciz	"\350\257\235\346\234\257"

L_.str.68:                              ## @.str.68
	.asciz	"\344\275\223\347\263\273"

L_.str.69:                              ## @.str.69
	.asciz	"\350\256\244\347\237\245"

L_.str.70:                              ## @.str.70
	.asciz	"\347\216\251\346\263\225"

L_.str.71:                              ## @.str.71
	.asciz	"\344\275\223\346\204\237"

L_.str.72:                              ## @.str.72
	.asciz	"\346\204\237\347\237\245"

L_.str.73:                              ## @.str.73
	.asciz	"\350\260\203\346\200\247"

L_.str.74:                              ## @.str.74
	.asciz	"\345\277\203\346\231\272"

L_.str.75:                              ## @.str.75
	.asciz	"\346\210\230\345\275\271"

L_.str.76:                              ## @.str.76
	.asciz	"\345\220\210\345\212\233"

L_.str.77:                              ## @.str.77
	.asciz	"\350\265\233\351\201\223"

L_.str.78:                              ## @.str.78
	.asciz	"\345\237\272\345\233\240"

L_.str.79:                              ## @.str.79
	.asciz	"\345\233\240\345\255\220"

L_.str.80:                              ## @.str.80
	.asciz	"\346\250\241\345\236\213"

L_.str.81:                              ## @.str.81
	.asciz	"\350\275\275\344\275\223"

L_.str.82:                              ## @.str.82
	.asciz	"\346\250\252\345\220\221"

L_.str.83:                              ## @.str.83
	.asciz	"\351\200\232\351\201\223"

L_.str.84:                              ## @.str.84
	.asciz	"\350\241\245\344\275\215"

L_.str.85:                              ## @.str.85
	.asciz	"\351\223\276\350\267\257"

L_.str.86:                              ## @.str.86
	.asciz	"\350\257\225\347\202\271"

	.section	__DATA,__data
	.globl	_n2                     ## @n2
	.p2align	4
_n2:
	.quad	L_.str.54
	.quad	L_.str.55
	.quad	L_.str.56
	.quad	L_.str.57
	.quad	L_.str.58
	.quad	L_.str.59
	.quad	L_.str.60
	.quad	L_.str.61
	.quad	L_.str.62
	.quad	L_.str.63
	.quad	L_.str.64
	.quad	L_.str.65
	.quad	L_.str.66
	.quad	L_.str.67
	.quad	L_.str.68
	.quad	L_.str.69
	.quad	L_.str.70
	.quad	L_.str.71
	.quad	L_.str.72
	.quad	L_.str.73
	.quad	L_.str.74
	.quad	L_.str.75
	.quad	L_.str.76
	.quad	L_.str.77
	.quad	L_.str.78
	.quad	L_.str.79
	.quad	L_.str.80
	.quad	L_.str.81
	.quad	L_.str.82
	.quad	L_.str.83
	.quad	L_.str.84
	.quad	L_.str.85
	.quad	L_.str.86

	.section	__TEXT,__cstring,cstring_literals
L_.str.87:                              ## @.str.87
	.asciz	"\346\226\260\347\224\237\346\200\201"

L_.str.88:                              ## @.str.88
	.asciz	"\346\204\237\347\237\245\345\272\246"

L_.str.89:                              ## @.str.89
	.asciz	"\351\242\227\347\262\222\345\272\246"

L_.str.90:                              ## @.str.90
	.asciz	"\346\226\271\346\263\225\350\256\272"

L_.str.91:                              ## @.str.91
	.asciz	"\347\273\204\345\220\210\346\213\263"

L_.str.92:                              ## @.str.92
	.asciz	"\345\274\225\347\210\206\347\202\271"

L_.str.93:                              ## @.str.93
	.asciz	"\347\202\271\347\272\277\351\235\242"

L_.str.94:                              ## @.str.94
	.asciz	"\347\262\276\347\273\206\345\214\226"

L_.str.95:                              ## @.str.95
	.asciz	"\345\267\256\345\274\202\345\214\226"

L_.str.96:                              ## @.str.96
	.asciz	"\345\271\263\345\217\260\345\214\226"

L_.str.97:                              ## @.str.97
	.asciz	"\347\273\223\346\236\204\345\214\226"

L_.str.98:                              ## @.str.98
	.asciz	"\345\275\261\345\223\215\345\212\233"

L_.str.99:                              ## @.str.99
	.asciz	"\350\200\246\345\220\210\346\200\247"

L_.str.100:                             ## @.str.100
	.asciz	"\346\230\223\347\224\250\346\200\247"

L_.str.101:                             ## @.str.101
	.asciz	"\344\276\277\346\215\267\346\200\247"

L_.str.102:                             ## @.str.102
	.asciz	"\344\270\200\350\207\264\346\200\247"

L_.str.103:                             ## @.str.103
	.asciz	"\347\253\257\345\210\260\347\253\257"

L_.str.104:                             ## @.str.104
	.asciz	"\347\237\255\345\271\263\345\277\253"

L_.str.105:                             ## @.str.105
	.asciz	"\346\212\244\345\237\216\346\262\263"

	.section	__DATA,__data
	.globl	_n3                     ## @n3
	.p2align	4
_n3:
	.quad	L_.str.87
	.quad	L_.str.88
	.quad	L_.str.89
	.quad	L_.str.90
	.quad	L_.str.91
	.quad	L_.str.92
	.quad	L_.str.93
	.quad	L_.str.94
	.quad	L_.str.95
	.quad	L_.str.96
	.quad	L_.str.97
	.quad	L_.str.98
	.quad	L_.str.99
	.quad	L_.str.100
	.quad	L_.str.101
	.quad	L_.str.102
	.quad	L_.str.103
	.quad	L_.str.104
	.quad	L_.str.105

	.section	__TEXT,__cstring,cstring_literals
L_.str.106:                             ## @.str.106
	.asciz	"\345\272\225\345\261\202\351\200\273\350\276\221"

L_.str.107:                             ## @.str.107
	.asciz	"\351\241\266\345\261\202\350\256\276\350\256\241"

L_.str.108:                             ## @.str.108
	.asciz	"\344\272\244\344\273\230\344\273\267\345\200\274"

L_.str.109:                             ## @.str.109
	.asciz	"\347\224\237\345\221\275\345\221\250\346\234\237"

L_.str.110:                             ## @.str.110
	.asciz	"\344\273\267\345\200\274\350\275\254\345\214\226"

L_.str.111:                             ## @.str.111
	.asciz	"\345\274\272\345\214\226\350\256\244\347\237\245"

L_.str.112:                             ## @.str.112
	.asciz	"\350\265\204\346\272\220\345\200\276\346\226\234"

L_.str.113:                             ## @.str.113
	.asciz	"\345\256\214\345\226\204\351\200\273\350\276\221"

L_.str.114:                             ## @.str.114
	.asciz	"\346\212\275\347\246\273\351\200\217\344\274\240"

L_.str.115:                             ## @.str.115
	.asciz	"\345\244\215\347\224\250\346\211\223\346\263\225"

L_.str.116:                             ## @.str.116
	.asciz	"\345\225\206\344\270\232\346\250\241\345\274\217"

L_.str.117:                             ## @.str.117
	.asciz	"\345\277\253\351\200\237\345\223\215\345\272\224"

L_.str.118:                             ## @.str.118
	.asciz	"\345\256\232\346\200\247\345\256\232\351\207\217"

L_.str.119:                             ## @.str.119
	.asciz	"\345\205\263\351\224\256\350\267\257\345\276\204"

L_.str.120:                             ## @.str.120
	.asciz	"\345\216\273\344\270\255\345\277\203\345\214\226"

L_.str.121:                             ## @.str.121
	.asciz	"\347\273\223\346\236\234\345\257\274\345\220\221"

L_.str.122:                             ## @.str.122
	.asciz	"\345\236\202\347\233\264\351\242\206\345\237\237"

L_.str.123:                             ## @.str.123
	.asciz	"\345\275\222\345\233\240\345\210\206\346\236\220"

L_.str.124:                             ## @.str.124
	.asciz	"\344\275\223\351\252\214\345\272\246\351\207\217"

L_.str.125:                             ## @.str.125
	.asciz	"\344\277\241\346\201\257\345\261\217\351\232\234"

	.section	__DATA,__data
	.globl	_n4                     ## @n4
	.p2align	4
_n4:
	.quad	L_.str.106
	.quad	L_.str.107
	.quad	L_.str.108
	.quad	L_.str.109
	.quad	L_.str.110
	.quad	L_.str.111
	.quad	L_.str.112
	.quad	L_.str.113
	.quad	L_.str.114
	.quad	L_.str.115
	.quad	L_.str.116
	.quad	L_.str.117
	.quad	L_.str.118
	.quad	L_.str.119
	.quad	L_.str.120
	.quad	L_.str.121
	.quad	L_.str.122
	.quad	L_.str.123
	.quad	L_.str.124
	.quad	L_.str.125

	.section	__TEXT,__cstring,cstring_literals
L_.str.126:                             ## @.str.126
	.asciz	"%s\346\230\257%s%s\357\274\214%s\350\241\214\344\270\232%s\343\200\202%s\346\230\257%s%s%s\357\274\214\351\200\232\350\277\207%s\345\222\214%s\350\276\276\345\210\260%s\343\200\202%s\346\230\257\345\234\250%s\351\207\207\347\224\250%s\346\211\223\346\263\225\350\276\276\346\210\220%s\343\200\202%s%s\344\275\234\344\270\272%s\344\270\272\344\272\247\345\223\201\350\265\213\350\203\275\357\274\214%s\344\275\234\344\270\272%s\347\232\204\350\257\204\345\210\244\346\240\207\345\207\206\343\200\202\344\272\256\347\202\271\346\230\257%s\357\274\214\344\274\230\345\212\277\346\230\257%s\343\200\202%s\346\225\264\344\270\252%s\357\274\214%s%s%s%s\343\200\202%s\346\230\257%s\350\276\276\345\210\260%s\346\240\207\345\207\206\343\200\202\n"

.subsections_via_symbols
