	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 14, 3	sdk_version 14, 3
	.ptrauth_abi_version 0
	.globl	_randomElement          ; -- Begin function randomElement
	.p2align	2
_randomElement:                         ; @randomElement
; %bb.0:
	pacibsp
	sub	sp, sp, #48             ; =48
	stp	x29, x30, [sp, #32]     ; 16-byte Folded Spill
	add	x29, sp, #32            ; =32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]            ; 8-byte Folded Spill
	bl	_rand
	ldur	w9, [x29, #-12]
	sdiv	w10, w0, w9
	mul	w9, w10, w9
	subs	w9, w0, w9
	ldr	x8, [sp, #8]            ; 8-byte Folded Reload
	add	x8, x8, w9, sxtw #3
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #32]     ; 16-byte Folded Reload
	add	sp, sp, #48             ; =48
	retab
                                        ; -- End function
	.globl	_main                   ; -- Begin function main
	.p2align	2
_main:                                  ; @main
; %bb.0:
	pacibsp
	stp	x28, x27, [sp, #-96]!   ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]     ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]     ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]     ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]     ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]     ; 16-byte Folded Spill
	add	x29, sp, #80            ; =80
	sub	sp, sp, #608            ; =608
	adrp	x8, _n4@PAGE
	add	x8, x8, _n4@PAGEOFF
	adrp	x9, _v@PAGE
	add	x9, x9, _v@PAGEOFF
	adrp	x10, _n3@PAGE
	add	x10, x10, _n3@PAGEOFF
	adrp	x11, _n2@PAGE
	add	x11, x11, _n2@PAGEOFF
	mov	w12, #0
	stur	wzr, [x29, #-92]
	stur	w0, [x29, #-96]
	stur	x1, [x29, #-104]
	mov	x13, #0
	mov	x0, x13
	stur	x8, [x29, #-112]        ; 8-byte Folded Spill
	stur	x9, [x29, #-120]        ; 8-byte Folded Spill
	stur	x10, [x29, #-128]       ; 8-byte Folded Spill
	stur	x11, [x29, #-136]       ; 8-byte Folded Spill
	stur	w12, [x29, #-140]       ; 4-byte Folded Spill
	bl	_time
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_srand
	ldur	x0, [x29, #-112]        ; 8-byte Folded Reload
	mov	w12, #20
	mov	x1, x12
	stur	w12, [x29, #-144]       ; 4-byte Folded Spill
	bl	_randomElement
	ldur	x8, [x29, #-120]        ; 8-byte Folded Reload
	stur	x0, [x29, #-152]        ; 8-byte Folded Spill
	mov	x0, x8
	mov	w12, #54
	mov	x1, x12
	stur	w12, [x29, #-156]       ; 4-byte Folded Spill
	bl	_randomElement
	ldur	x8, [x29, #-112]        ; 8-byte Folded Reload
	stur	x0, [x29, #-168]        ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-144]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-120]        ; 8-byte Folded Reload
	stur	x0, [x29, #-176]        ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-156]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-128]        ; 8-byte Folded Reload
	stur	x0, [x29, #-184]        ; 8-byte Folded Spill
	mov	x0, x8
	mov	w12, #19
	mov	x1, x12
	stur	w12, [x29, #-188]       ; 4-byte Folded Spill
	bl	_randomElement
	ldur	x8, [x29, #-112]        ; 8-byte Folded Reload
	stur	x0, [x29, #-200]        ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-144]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-120]        ; 8-byte Folded Reload
	stur	x0, [x29, #-208]        ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-156]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-136]        ; 8-byte Folded Reload
	stur	x0, [x29, #-216]        ; 8-byte Folded Spill
	mov	x0, x8
	mov	w12, #33
	mov	x1, x12
	stur	w12, [x29, #-220]       ; 4-byte Folded Spill
	bl	_randomElement
	ldur	x8, [x29, #-112]        ; 8-byte Folded Reload
	stur	x0, [x29, #-232]        ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-144]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-128]        ; 8-byte Folded Reload
	stur	x0, [x29, #-240]        ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-188]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-128]        ; 8-byte Folded Reload
	stur	x0, [x29, #-248]        ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-188]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-128]        ; 8-byte Folded Reload
	stur	x0, [x29, #-256]        ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-188]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-112]        ; 8-byte Folded Reload
	str	x0, [sp, #424]          ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-144]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-112]        ; 8-byte Folded Reload
	str	x0, [sp, #416]          ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-144]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-136]        ; 8-byte Folded Reload
	str	x0, [sp, #408]          ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-220]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-112]        ; 8-byte Folded Reload
	str	x0, [sp, #400]          ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-144]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-112]        ; 8-byte Folded Reload
	str	x0, [sp, #392]          ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-144]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-112]        ; 8-byte Folded Reload
	str	x0, [sp, #384]          ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-144]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-136]        ; 8-byte Folded Reload
	str	x0, [sp, #376]          ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-220]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-112]        ; 8-byte Folded Reload
	str	x0, [sp, #368]          ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-144]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-136]        ; 8-byte Folded Reload
	str	x0, [sp, #360]          ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-220]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-136]        ; 8-byte Folded Reload
	str	x0, [sp, #352]          ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-220]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-136]        ; 8-byte Folded Reload
	str	x0, [sp, #344]          ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-220]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-120]        ; 8-byte Folded Reload
	str	x0, [sp, #336]          ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-156]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-112]        ; 8-byte Folded Reload
	str	x0, [sp, #328]          ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-144]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-120]        ; 8-byte Folded Reload
	str	x0, [sp, #320]          ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-156]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-136]        ; 8-byte Folded Reload
	str	x0, [sp, #312]          ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-220]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-120]        ; 8-byte Folded Reload
	str	x0, [sp, #304]          ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-156]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-112]        ; 8-byte Folded Reload
	str	x0, [sp, #296]          ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-144]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-128]        ; 8-byte Folded Reload
	str	x0, [sp, #288]          ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-188]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-128]        ; 8-byte Folded Reload
	str	x0, [sp, #280]          ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-188]        ; 4-byte Folded Reload
	bl	_randomElement
	ldur	x8, [x29, #-128]        ; 8-byte Folded Reload
	str	x0, [sp, #272]          ; 8-byte Folded Spill
	mov	x0, x8
	ldur	w1, [x29, #-188]        ; 4-byte Folded Reload
	bl	_randomElement
	adrp	x8, l_.str.126@PAGE
	add	x8, x8, l_.str.126@PAGEOFF
	str	x0, [sp, #264]          ; 8-byte Folded Spill
	mov	x0, x8
	mov	x8, sp
	ldur	x9, [x29, #-152]        ; 8-byte Folded Reload
	str	x9, [x8]
	ldur	x10, [x29, #-168]       ; 8-byte Folded Reload
	str	x10, [x8, #8]
	ldur	x11, [x29, #-176]       ; 8-byte Folded Reload
	str	x11, [x8, #16]
	ldur	x13, [x29, #-184]       ; 8-byte Folded Reload
	str	x13, [x8, #24]
	ldur	x14, [x29, #-200]       ; 8-byte Folded Reload
	str	x14, [x8, #32]
	ldur	x15, [x29, #-208]       ; 8-byte Folded Reload
	str	x15, [x8, #40]
	ldur	x16, [x29, #-216]       ; 8-byte Folded Reload
	str	x16, [x8, #48]
	ldur	x17, [x29, #-232]       ; 8-byte Folded Reload
	str	x17, [x8, #56]
	ldur	x2, [x29, #-240]        ; 8-byte Folded Reload
	str	x2, [x8, #64]
	ldur	x3, [x29, #-248]        ; 8-byte Folded Reload
	str	x3, [x8, #72]
	ldur	x4, [x29, #-256]        ; 8-byte Folded Reload
	str	x4, [x8, #80]
	ldr	x5, [sp, #424]          ; 8-byte Folded Reload
	str	x5, [x8, #88]
	ldr	x6, [sp, #416]          ; 8-byte Folded Reload
	str	x6, [x8, #96]
	ldr	x7, [sp, #408]          ; 8-byte Folded Reload
	str	x7, [x8, #104]
	ldr	x19, [sp, #400]         ; 8-byte Folded Reload
	str	x19, [x8, #112]
	ldr	x20, [sp, #392]         ; 8-byte Folded Reload
	str	x20, [x8, #120]
	ldr	x21, [sp, #384]         ; 8-byte Folded Reload
	str	x21, [x8, #128]
	ldr	x22, [sp, #376]         ; 8-byte Folded Reload
	str	x22, [x8, #136]
	ldr	x23, [sp, #368]         ; 8-byte Folded Reload
	str	x23, [x8, #144]
	ldr	x24, [sp, #360]         ; 8-byte Folded Reload
	str	x24, [x8, #152]
	ldr	x25, [sp, #352]         ; 8-byte Folded Reload
	str	x25, [x8, #160]
	ldr	x26, [sp, #344]         ; 8-byte Folded Reload
	str	x26, [x8, #168]
	ldr	x27, [sp, #336]         ; 8-byte Folded Reload
	str	x27, [x8, #176]
	ldr	x28, [sp, #328]         ; 8-byte Folded Reload
	str	x28, [x8, #184]
	ldr	x12, [sp, #320]         ; 8-byte Folded Reload
	str	x12, [x8, #192]
	ldr	x1, [sp, #312]          ; 8-byte Folded Reload
	str	x1, [x8, #200]
	ldr	x9, [sp, #304]          ; 8-byte Folded Reload
	str	x9, [x8, #208]
	ldr	x9, [sp, #296]          ; 8-byte Folded Reload
	str	x9, [x8, #216]
	ldr	x9, [sp, #288]          ; 8-byte Folded Reload
	str	x9, [x8, #224]
	ldr	x9, [sp, #280]          ; 8-byte Folded Reload
	str	x9, [x8, #232]
	ldr	x9, [sp, #272]          ; 8-byte Folded Reload
	str	x9, [x8, #240]
	ldr	x9, [sp, #264]          ; 8-byte Folded Reload
	str	x9, [x8, #248]
	bl	_printf
	ldur	w8, [x29, #-140]        ; 4-byte Folded Reload
	mov	x0, x8
	add	sp, sp, #608            ; =608
	ldp	x29, x30, [sp, #80]     ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]     ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]     ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]     ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]     ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96     ; 16-byte Folded Reload
	retab
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"\347\232\256\345\256\236"

l_.str.1:                               ; @.str.1
	.asciz	"\345\244\215\347\233\230"

l_.str.2:                               ; @.str.2
	.asciz	"\350\265\213\350\203\275"

l_.str.3:                               ; @.str.3
	.asciz	"\345\212\240\346\214\201"

l_.str.4:                               ; @.str.4
	.asciz	"\346\262\211\346\267\200"

l_.str.5:                               ; @.str.5
	.asciz	"\345\200\222\351\200\274"

l_.str.6:                               ; @.str.6
	.asciz	"\350\220\275\345\234\260"

l_.str.7:                               ; @.str.7
	.asciz	"\344\270\262\350\201\224"

l_.str.8:                               ; @.str.8
	.asciz	"\345\215\217\345\220\214"

l_.str.9:                               ; @.str.9
	.asciz	"\345\217\215\345\223\272"

l_.str.10:                              ; @.str.10
	.asciz	"\345\205\274\345\256\271"

l_.str.11:                              ; @.str.11
	.asciz	"\345\214\205\350\243\205"

l_.str.12:                              ; @.str.12
	.asciz	"\351\207\215\347\273\204"

l_.str.13:                              ; @.str.13
	.asciz	"\345\261\245\347\272\246"

l_.str.14:                              ; @.str.14
	.asciz	"\345\223\215\345\272\224"

l_.str.15:                              ; @.str.15
	.asciz	"\351\207\217\345\214\226"

l_.str.16:                              ; @.str.16
	.asciz	"\345\217\221\345\212\233"

l_.str.17:                              ; @.str.17
	.asciz	"\345\270\203\345\261\200"

l_.str.18:                              ; @.str.18
	.asciz	"\350\201\224\345\212\250"

l_.str.19:                              ; @.str.19
	.asciz	"\347\273\206\345\210\206"

l_.str.20:                              ; @.str.20
	.asciz	"\346\242\263\347\220\206"

l_.str.21:                              ; @.str.21
	.asciz	"\350\276\223\345\207\272"

l_.str.22:                              ; @.str.22
	.asciz	"\345\212\240\351\200\237"

l_.str.23:                              ; @.str.23
	.asciz	"\345\205\261\345\273\272"

l_.str.24:                              ; @.str.24
	.asciz	"\345\205\261\345\210\233"

l_.str.25:                              ; @.str.25
	.asciz	"\346\224\257\346\222\221"

l_.str.26:                              ; @.str.26
	.asciz	"\350\236\215\345\220\210"

l_.str.27:                              ; @.str.27
	.asciz	"\350\247\243\350\200\246"

l_.str.28:                              ; @.str.28
	.asciz	"\350\201\232\345\220\210"

l_.str.29:                              ; @.str.29
	.asciz	"\351\233\206\346\210\220"

l_.str.30:                              ; @.str.30
	.asciz	"\345\257\271\346\240\207"

l_.str.31:                              ; @.str.31
	.asciz	"\345\257\271\351\275\220"

l_.str.32:                              ; @.str.32
	.asciz	"\350\201\232\347\204\246"

l_.str.33:                              ; @.str.33
	.asciz	"\346\212\223\346\211\213"

l_.str.34:                              ; @.str.34
	.asciz	"\346\213\206\350\247\243"

l_.str.35:                              ; @.str.35
	.asciz	"\346\213\211\351\200\232"

l_.str.36:                              ; @.str.36
	.asciz	"\346\212\275\350\261\241"

l_.str.37:                              ; @.str.37
	.asciz	"\346\221\270\347\264\242"

l_.str.38:                              ; @.str.38
	.asciz	"\346\217\220\347\202\274"

l_.str.39:                              ; @.str.39
	.asciz	"\346\211\223\351\200\232"

l_.str.40:                              ; @.str.40
	.asciz	"\345\220\203\351\200\217"

l_.str.41:                              ; @.str.41
	.asciz	"\350\277\201\347\247\273"

l_.str.42:                              ; @.str.42
	.asciz	"\345\210\206\345\217\221"

l_.str.43:                              ; @.str.43
	.asciz	"\345\210\206\345\261\202"

l_.str.44:                              ; @.str.44
	.asciz	"\345\260\201\350\243\205"

l_.str.45:                              ; @.str.45
	.asciz	"\350\276\220\345\260\204"

l_.str.46:                              ; @.str.46
	.asciz	"\345\233\264\347\273\225"

l_.str.47:                              ; @.str.47
	.asciz	"\345\244\215\347\224\250"

l_.str.48:                              ; @.str.48
	.asciz	"\346\270\227\351\200\217"

l_.str.49:                              ; @.str.49
	.asciz	"\346\211\251\345\261\225"

l_.str.50:                              ; @.str.50
	.asciz	"\345\274\200\346\213\223"

l_.str.51:                              ; @.str.51
	.asciz	"\347\273\231\345\210\260"

l_.str.52:                              ; @.str.52
	.asciz	"\346\255\273\347\243\225"

l_.str.53:                              ; @.str.53
	.asciz	"\347\240\264\345\234\210"

	.section	__DATA,__data
	.globl	_v                      ; @v
	.p2align	3
_v:
	.quad	l_.str
	.quad	l_.str.1
	.quad	l_.str.2
	.quad	l_.str.3
	.quad	l_.str.4
	.quad	l_.str.5
	.quad	l_.str.6
	.quad	l_.str.7
	.quad	l_.str.8
	.quad	l_.str.9
	.quad	l_.str.10
	.quad	l_.str.11
	.quad	l_.str.12
	.quad	l_.str.13
	.quad	l_.str.14
	.quad	l_.str.15
	.quad	l_.str.16
	.quad	l_.str.17
	.quad	l_.str.18
	.quad	l_.str.19
	.quad	l_.str.20
	.quad	l_.str.21
	.quad	l_.str.22
	.quad	l_.str.23
	.quad	l_.str.24
	.quad	l_.str.25
	.quad	l_.str.26
	.quad	l_.str.27
	.quad	l_.str.28
	.quad	l_.str.29
	.quad	l_.str.30
	.quad	l_.str.31
	.quad	l_.str.32
	.quad	l_.str.33
	.quad	l_.str.34
	.quad	l_.str.35
	.quad	l_.str.36
	.quad	l_.str.37
	.quad	l_.str.38
	.quad	l_.str.39
	.quad	l_.str.40
	.quad	l_.str.41
	.quad	l_.str.42
	.quad	l_.str.43
	.quad	l_.str.44
	.quad	l_.str.45
	.quad	l_.str.46
	.quad	l_.str.47
	.quad	l_.str.48
	.quad	l_.str.49
	.quad	l_.str.50
	.quad	l_.str.51
	.quad	l_.str.52
	.quad	l_.str.53

	.section	__TEXT,__cstring,cstring_literals
l_.str.54:                              ; @.str.54
	.asciz	"\346\274\217\346\226\227"

l_.str.55:                              ; @.str.55
	.asciz	"\344\270\255\345\217\260"

l_.str.56:                              ; @.str.56
	.asciz	"\351\227\255\347\216\257"

l_.str.57:                              ; @.str.57
	.asciz	"\346\211\223\346\263\225"

l_.str.58:                              ; @.str.58
	.asciz	"\347\272\275\345\270\246"

l_.str.59:                              ; @.str.59
	.asciz	"\347\237\251\351\230\265"

l_.str.60:                              ; @.str.60
	.asciz	"\345\210\272\346\277\200"

l_.str.61:                              ; @.str.61
	.asciz	"\350\247\204\346\250\241"

l_.str.62:                              ; @.str.62
	.asciz	"\345\234\272\346\231\257"

l_.str.63:                              ; @.str.63
	.asciz	"\347\273\264\345\272\246"

l_.str.64:                              ; @.str.64
	.asciz	"\346\240\274\345\261\200"

l_.str.65:                              ; @.str.65
	.asciz	"\345\275\242\346\200\201"

l_.str.66:                              ; @.str.66
	.asciz	"\347\224\237\346\200\201"

l_.str.67:                              ; @.str.67
	.asciz	"\350\257\235\346\234\257"

l_.str.68:                              ; @.str.68
	.asciz	"\344\275\223\347\263\273"

l_.str.69:                              ; @.str.69
	.asciz	"\350\256\244\347\237\245"

l_.str.70:                              ; @.str.70
	.asciz	"\347\216\251\346\263\225"

l_.str.71:                              ; @.str.71
	.asciz	"\344\275\223\346\204\237"

l_.str.72:                              ; @.str.72
	.asciz	"\346\204\237\347\237\245"

l_.str.73:                              ; @.str.73
	.asciz	"\350\260\203\346\200\247"

l_.str.74:                              ; @.str.74
	.asciz	"\345\277\203\346\231\272"

l_.str.75:                              ; @.str.75
	.asciz	"\346\210\230\345\275\271"

l_.str.76:                              ; @.str.76
	.asciz	"\345\220\210\345\212\233"

l_.str.77:                              ; @.str.77
	.asciz	"\350\265\233\351\201\223"

l_.str.78:                              ; @.str.78
	.asciz	"\345\237\272\345\233\240"

l_.str.79:                              ; @.str.79
	.asciz	"\345\233\240\345\255\220"

l_.str.80:                              ; @.str.80
	.asciz	"\346\250\241\345\236\213"

l_.str.81:                              ; @.str.81
	.asciz	"\350\275\275\344\275\223"

l_.str.82:                              ; @.str.82
	.asciz	"\346\250\252\345\220\221"

l_.str.83:                              ; @.str.83
	.asciz	"\351\200\232\351\201\223"

l_.str.84:                              ; @.str.84
	.asciz	"\350\241\245\344\275\215"

l_.str.85:                              ; @.str.85
	.asciz	"\351\223\276\350\267\257"

l_.str.86:                              ; @.str.86
	.asciz	"\350\257\225\347\202\271"

	.section	__DATA,__data
	.globl	_n2                     ; @n2
	.p2align	3
_n2:
	.quad	l_.str.54
	.quad	l_.str.55
	.quad	l_.str.56
	.quad	l_.str.57
	.quad	l_.str.58
	.quad	l_.str.59
	.quad	l_.str.60
	.quad	l_.str.61
	.quad	l_.str.62
	.quad	l_.str.63
	.quad	l_.str.64
	.quad	l_.str.65
	.quad	l_.str.66
	.quad	l_.str.67
	.quad	l_.str.68
	.quad	l_.str.69
	.quad	l_.str.70
	.quad	l_.str.71
	.quad	l_.str.72
	.quad	l_.str.73
	.quad	l_.str.74
	.quad	l_.str.75
	.quad	l_.str.76
	.quad	l_.str.77
	.quad	l_.str.78
	.quad	l_.str.79
	.quad	l_.str.80
	.quad	l_.str.81
	.quad	l_.str.82
	.quad	l_.str.83
	.quad	l_.str.84
	.quad	l_.str.85
	.quad	l_.str.86

	.section	__TEXT,__cstring,cstring_literals
l_.str.87:                              ; @.str.87
	.asciz	"\346\226\260\347\224\237\346\200\201"

l_.str.88:                              ; @.str.88
	.asciz	"\346\204\237\347\237\245\345\272\246"

l_.str.89:                              ; @.str.89
	.asciz	"\351\242\227\347\262\222\345\272\246"

l_.str.90:                              ; @.str.90
	.asciz	"\346\226\271\346\263\225\350\256\272"

l_.str.91:                              ; @.str.91
	.asciz	"\347\273\204\345\220\210\346\213\263"

l_.str.92:                              ; @.str.92
	.asciz	"\345\274\225\347\210\206\347\202\271"

l_.str.93:                              ; @.str.93
	.asciz	"\347\202\271\347\272\277\351\235\242"

l_.str.94:                              ; @.str.94
	.asciz	"\347\262\276\347\273\206\345\214\226"

l_.str.95:                              ; @.str.95
	.asciz	"\345\267\256\345\274\202\345\214\226"

l_.str.96:                              ; @.str.96
	.asciz	"\345\271\263\345\217\260\345\214\226"

l_.str.97:                              ; @.str.97
	.asciz	"\347\273\223\346\236\204\345\214\226"

l_.str.98:                              ; @.str.98
	.asciz	"\345\275\261\345\223\215\345\212\233"

l_.str.99:                              ; @.str.99
	.asciz	"\350\200\246\345\220\210\346\200\247"

l_.str.100:                             ; @.str.100
	.asciz	"\346\230\223\347\224\250\346\200\247"

l_.str.101:                             ; @.str.101
	.asciz	"\344\276\277\346\215\267\346\200\247"

l_.str.102:                             ; @.str.102
	.asciz	"\344\270\200\350\207\264\346\200\247"

l_.str.103:                             ; @.str.103
	.asciz	"\347\253\257\345\210\260\347\253\257"

l_.str.104:                             ; @.str.104
	.asciz	"\347\237\255\345\271\263\345\277\253"

l_.str.105:                             ; @.str.105
	.asciz	"\346\212\244\345\237\216\346\262\263"

	.section	__DATA,__data
	.globl	_n3                     ; @n3
	.p2align	3
_n3:
	.quad	l_.str.87
	.quad	l_.str.88
	.quad	l_.str.89
	.quad	l_.str.90
	.quad	l_.str.91
	.quad	l_.str.92
	.quad	l_.str.93
	.quad	l_.str.94
	.quad	l_.str.95
	.quad	l_.str.96
	.quad	l_.str.97
	.quad	l_.str.98
	.quad	l_.str.99
	.quad	l_.str.100
	.quad	l_.str.101
	.quad	l_.str.102
	.quad	l_.str.103
	.quad	l_.str.104
	.quad	l_.str.105

	.section	__TEXT,__cstring,cstring_literals
l_.str.106:                             ; @.str.106
	.asciz	"\345\272\225\345\261\202\351\200\273\350\276\221"

l_.str.107:                             ; @.str.107
	.asciz	"\351\241\266\345\261\202\350\256\276\350\256\241"

l_.str.108:                             ; @.str.108
	.asciz	"\344\272\244\344\273\230\344\273\267\345\200\274"

l_.str.109:                             ; @.str.109
	.asciz	"\347\224\237\345\221\275\345\221\250\346\234\237"

l_.str.110:                             ; @.str.110
	.asciz	"\344\273\267\345\200\274\350\275\254\345\214\226"

l_.str.111:                             ; @.str.111
	.asciz	"\345\274\272\345\214\226\350\256\244\347\237\245"

l_.str.112:                             ; @.str.112
	.asciz	"\350\265\204\346\272\220\345\200\276\346\226\234"

l_.str.113:                             ; @.str.113
	.asciz	"\345\256\214\345\226\204\351\200\273\350\276\221"

l_.str.114:                             ; @.str.114
	.asciz	"\346\212\275\347\246\273\351\200\217\344\274\240"

l_.str.115:                             ; @.str.115
	.asciz	"\345\244\215\347\224\250\346\211\223\346\263\225"

l_.str.116:                             ; @.str.116
	.asciz	"\345\225\206\344\270\232\346\250\241\345\274\217"

l_.str.117:                             ; @.str.117
	.asciz	"\345\277\253\351\200\237\345\223\215\345\272\224"

l_.str.118:                             ; @.str.118
	.asciz	"\345\256\232\346\200\247\345\256\232\351\207\217"

l_.str.119:                             ; @.str.119
	.asciz	"\345\205\263\351\224\256\350\267\257\345\276\204"

l_.str.120:                             ; @.str.120
	.asciz	"\345\216\273\344\270\255\345\277\203\345\214\226"

l_.str.121:                             ; @.str.121
	.asciz	"\347\273\223\346\236\234\345\257\274\345\220\221"

l_.str.122:                             ; @.str.122
	.asciz	"\345\236\202\347\233\264\351\242\206\345\237\237"

l_.str.123:                             ; @.str.123
	.asciz	"\345\275\222\345\233\240\345\210\206\346\236\220"

l_.str.124:                             ; @.str.124
	.asciz	"\344\275\223\351\252\214\345\272\246\351\207\217"

l_.str.125:                             ; @.str.125
	.asciz	"\344\277\241\346\201\257\345\261\217\351\232\234"

	.section	__DATA,__data
	.globl	_n4                     ; @n4
	.p2align	3
_n4:
	.quad	l_.str.106
	.quad	l_.str.107
	.quad	l_.str.108
	.quad	l_.str.109
	.quad	l_.str.110
	.quad	l_.str.111
	.quad	l_.str.112
	.quad	l_.str.113
	.quad	l_.str.114
	.quad	l_.str.115
	.quad	l_.str.116
	.quad	l_.str.117
	.quad	l_.str.118
	.quad	l_.str.119
	.quad	l_.str.120
	.quad	l_.str.121
	.quad	l_.str.122
	.quad	l_.str.123
	.quad	l_.str.124
	.quad	l_.str.125

	.section	__TEXT,__cstring,cstring_literals
l_.str.126:                             ; @.str.126
	.asciz	"%s\346\230\257%s%s\357\274\214%s\350\241\214\344\270\232%s\343\200\202%s\346\230\257%s%s%s\357\274\214\351\200\232\350\277\207%s\345\222\214%s\350\276\276\345\210\260%s\343\200\202%s\346\230\257\345\234\250%s\351\207\207\347\224\250%s\346\211\223\346\263\225\350\276\276\346\210\220%s\343\200\202%s%s\344\275\234\344\270\272%s\344\270\272\344\272\247\345\223\201\350\265\213\350\203\275\357\274\214%s\344\275\234\344\270\272%s\347\232\204\350\257\204\345\210\244\346\240\207\345\207\206\343\200\202\344\272\256\347\202\271\346\230\257%s\357\274\214\344\274\230\345\212\277\346\230\257%s\343\200\202%s\346\225\264\344\270\252%s\357\274\214%s%s%s%s\343\200\202%s\346\230\257%s\350\276\276\345\210\260%s\346\240\207\345\207\206\343\200\202\n"

.subsections_via_symbols
