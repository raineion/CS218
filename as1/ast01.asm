; *****************************************************************
;  Name: Daniel Martinez Julio
;  NSHE ID: 2001941913
;  Section: 1001 - Summer 2025
;  Assignment: 1
;  Description: Assembly language arithmetic operations.
;		Formulas provided on assignment.
;		Focus on learning basic arithmetic operations
;		(add, subtract, multiply, and divide).
;		Ensure understanding of sign and unsigned operations.

; *****************************************************************
;  Data Declarations (provided).

section	.data

; -----
;  Define constants.

NULL		equ	0			; end of string

TRUE		equ	1
FALSE		equ	0

EXIT_SUCCESS	equ	0			; Successful operation

SYS_exit	equ	60			; call code for terminate

; -----
;  Assignment #3 data declarations

; byte data
bNum1		db	34
bNum2		db	21
bNum3		db	19
bNum4		db	15
bNum5		db	-46
bNum6		db	-69
bAns1		db	0
bAns2		db	0
bAns3		db	0
bAns4		db	0
bAns5		db	0
bAns6		db	0
bAns7		db	0
bAns8		db	0
bAns9		db	0
bAns10		db	0
wAns11		dw	0
wAns12		dw	0
wAns13		dw	0
wAns14		dw	0
wAns15		dw	0
bAns16		db	0
bAns17		db	0
bAns18		db	0
bRem18		db	0
bAns19		db	0
bAns20		db	0
bAns21		db	0
bRem21		db	0

; word data
wNum1		dw	2356
wNum2		dw	1953
wNum3		dw	821
wNum4		dw	319
wNum5		dw	-1753
wNum6		dw	-1276
wAns1		dw	0
wAns2		dw	0
wAns3		dw	0
wAns4		dw	0
wAns5		dw	0
wAns6		dw	0
wAns7		dw	0
wAns8		dw	0
wAns9		dw	0
wAns10		dw	0
dAns11		dd	0
dAns12		dd	0
dAns13		dd	0
dAns14		dd	0
dAns15		dd	0
wAns16		dw	0
wAns17		dw	0
wAns18		dw	0
wRem18		dw	0
wAns19		dw	0
wAns20		dw	0
wAns21		dw	0
wRem21		dw	0

; double-word data
dNum1		dd	4365870
dNum2		dd	132451
dNum3		dd	18671
dNum4		dd	8473
dNum5		dd	-217982
dNum6		dd	-215358
dAns1		dd	0
dAns2		dd	0
dAns3		dd	0
dAns4		dd	0
dAns5		dd	0
dAns6		dd	0
dAns7		dd	0
dAns8		dd	0
dAns9		dd	0
dAns10		dd	0
qAns11		dq	0
qAns12		dq	0
qAns13		dq	0
qAns14		dq	0
qAns15		dq	0
dAns16		dd	0
dAns17		dd	0
dAns18		dd	0
dRem18		dd	0
dAns19		dd	0
dAns20		dd	0
dAns21		dd	0
dRem21		dd	0

; quadword data
qNum1		dq	1204623
qNum2		dq	1043819
qNum3		dq	415331
qNum4		dq	251197
qNum5		dq	-921028
qNum6		dq	-281647
qAns1		dq	0
qAns2		dq	0
qAns3		dq	0
qAns4		dq	0
qAns5		dq	0
qAns6		dq	0
qAns7		dq	0
qAns8		dq	0
qAns9		dq	0
qAns10		dq	0
dqAns11		ddq	0
dqAns12		ddq	0
dqAns13		ddq	0
dqAns14		ddq	0
dqAns15		ddq	0
qAns16		dq	0
qAns17		dq	0
qAns18		dq	0
qRem18		dq	0
qAns19		dq	0
qAns20		dq	0
qAns21		dq	0
qRem21		dq	0

; *****************************************************************

section	.text
global _start
_start:

; ----------------------------------------------
;  BYTE Operations

; -----
;   byte additions
;	  bAns4 = bNum6 + bNum4
	mov	al, byte [bNum6]
	add	al, byte [bNum4]
	mov	byte [bAns4], al

;	 bAns5 = bNum6 + bNum3
	mov	al, byte [bNum6]
	add	al, byte [bNum3]
	mov	byte [bAns5], al

; -----
;   byte subtraction
;	  bAns9 = bNum6 - bNum4
	mov	al, byte [bNum6]
	sub	al, byte [bNum4]
	mov	byte [bAns9], al

;	bAns10 = bNum6 - bNum5
	mov	al, byte [bNum6]
	sub	al, byte [bNum5]
	mov	byte [bAns10], al

; -----
;  unsigned byte multiplication
;	 wAns11 = bNum1 * bNum3
	movzx	ax, byte [bNum1]
	movzx	cx, byte [bNum3]
	mul	cx
	mov	word [wAns11], ax

;	wAns12 = bNum2 * bNum3
	movzx	ax, byte [bNum2]
	movzx	cx, byte [bNum3]
	mul	cx
	mov	word [wAns12], ax

; -----
;  signed byte multiplication
;	 wAns14 = bNum5 * bNum2
	movsx	ax, byte [bNum5]
	movsx	cx, byte [bNum2]
	imul	cx
	mov	word [wAns14], ax

;	wAns15 = bNum6 * bNum3
	movsx	ax, byte [bNum6]
	movsx	cx, byte [bNum3]
	imul	cx
	mov	word [wAns15], ax

; -----
;  unsigned byte division
;	 bAns16 = bNum1 / bNum2
	mov	ax, 0
	mov	al, byte [bNum1]
	mov	r8b, byte [bNum2]
	div	r8b
	mov	byte [bAns16], al

;	 bAns18 = wNum2 / bNum4 
	mov	ax, word [wNum2]
	mov	r8b, byte [bNum4]
	div	r8b
	mov	byte [bAns18], al
	mov	byte [bRem18], ah

; -----
;  signed byte division
;	 bAns19 = bNum5 / bNum3
	mov	al, byte [bNum5]
	mov	r8b, byte [bNum3]
	cbw
	idiv	r8b
	mov	byte [bAns19], al

;	 bAns21 = wNum4 / bNum1
	mov	ax, word [wNum4]
	mov	r8b, byte [bNum1]
	idiv	r8b
	mov	byte [bAns21], al

;	 bRem21 = wNum4 % bNum1
	mov	byte [bRem21], ah

; *****************************************
;  WORD Operations

; -----
;  signed word additions
;	 wAns4 = wNum5 + wNum3
	mov	ax, word [wNum5]
	add	ax, word [wNum3]
	mov	word [wAns4], ax

;	 wAns5 = wNum6 + wNum1
	mov	ax, word [wNum6]
	add	ax, word [wNum1]
	mov	word [wAns5], ax

; -----
;  signed word subtraction
;	 wAns9 = wNum5 - wNum2
	mov	ax, word [wNum5]
	sub	ax, word [wNum2]
	mov	word [wAns9], ax

;	 wAns10 = wNum6 - wNum3
	mov	ax, word [wNum6]
	sub	ax, word [wNum3]
	mov	word [wAns10], ax

; -----
;  unsigned word multiplication
;	 dAns11 = wNum1 * wNum2
	mov	ax, word [wNum1]
	mul	word [wNum2]
	mov	word [dAns11], ax
	mov	word [dAns11+2], dx

;	 dAns12 = wNum2 * wNum3
	mov	ax, word [wNum2]
	mul	word [wNum3]
	mov	word [dAns12], ax
	mov	word [dAns12+2], dx

; -----
;  signed word multiplication
;	 dAns14 = wNum5 * wNum1
	mov	ax, word [wNum5]
	imul	word [wNum1]
	mov	word [dAns14], ax
	mov	word [dAns14+2], dx

;	 dAns15 = wNum6 * wNum2
	mov	ax, word [wNum6]
	imul	word [wNum2]
	mov	word [dAns15], ax
	mov	word [dAns15+2], dx

; -----
;  unsigned word division
;	 wAns16 = wNum1 / wNum2
	mov	dx, 0
	mov	ax, word [wNum1]
	div	word [wNum2]
	mov	word [wAns16], ax

;	 wAns18 = dNum3 / wNum4 
	mov	eax, dword [dNum3]
	mov	dx, 0
	mov	ax, word [dNum3]
	div	word [wNum4]
	mov	word [wAns18], ax

;	 wRem18 = dNum3 % wNum4
	mov	word [wRem18], dx

; -----
;  signed word division
;	 wAns19 = wNum5 / wNum3
	mov	ax, word [wNum5]
	cwd
	idiv	word [wNum3]
	mov	word [wAns19], ax

;	 wAns21 = dNum1 / wNum2
	mov	eax, dword [dNum1]
	cdq
	mov	ebx, 0
	mov	bx, word [wNum2]
	idiv	ebx
	mov	word [wAns21], ax

;	 wRem21 = dNum1 % wNum2
	mov	word [wRem21], dx

; *****************************************
;  DOUBLEWORD Operations

; -----
;  signed double word additions
;	 dAns4 = dNum5 + dNum3
	mov	eax, dword [dNum5]
	add	eax, dword [dNum3]
	mov	dword [dAns4], eax

;	dAns5 = dNum6 + dNum4
	mov	eax, dword [dNum6]
	add	eax, dword [dNum4]
	mov	dword [dAns5], eax

; -----
;  signed double word subtraction
;	 dAns9 = dNum5 - dNum2
	mov	eax, dword [dNum5]
	sub	eax, dword [dNum2]
	mov	dword [dAns9], eax

;	 dAns10 = dNum6 – dNum3 
	mov	eax, dword [dNum6]
	sub	eax, dword [dNum3]
	mov	dword [dAns10], eax

; -----
;  unsigned double word multiplication
;	 qAns11 = dNum1 * dNum2
	mov	rax, 0
	mov	eax, dword [dNum1]
	mov	rcx, 0
	mov	ecx, dword [dNum2]
	mul	rcx
	mov	qword [qAns11], rax

;	qAns12 = dNum2 * dNum3
	mov	rax, 0
	mov	eax, dword [dNum2]
	mov	rcx, 0
	mov	ecx, dword [dNum3]
	mul	rcx
	mov	qword [qAns12], rax

; -----
;  signed double word multiplication
;	 qAns14 = dNum5 * dNum1
	movsxd	rax, dword [dNum5]
	movsxd	rcx, dword [dNum1]
	imul	rcx
	mov	qword [qAns14], rax

;	qAns15 = dNum6 * dNum2
	movsxd	rax, dword [dNum6]
	movsxd	rcx, dword [dNum2]
	imul	rcx
	mov	qword [qAns15], rax
; -----
;  unsigned double word division
;	 dAns16 = dNum2 / dNum3
	mov	edx, 0
	mov	eax, dword [dNum2]
	div	dword [dNum3]
	mov	dword [dAns16], eax

;	 dAns18 = qAns12 / dNum4
	mov	rdx, 0
	mov	rax, qword [qAns12]
	div	dword [dNum4]
	mov	dword [dAns18], eax

;	 dRem18 = qAns12 % dNum4
	mov	dword [dRem18], edx

; -----
;  signed double word division
;	 dAns19 = dNum5 / dNum2
	mov	eax, dword [dNum5]
	cdq
	idiv	dword [dNum2]
	mov	dword [dAns19], eax

;	 dAns21 = qAns12 / dNum4
	mov	rax, qword [qAns12]
	cqo
	idiv	dword [dNum4]
	mov	dword [dAns21], eax

;	 dRem21 = qAns12 % dNum4
	mov	dword [dRem21], edx
; *****************************************
;  QUADWORD Operations

; -----
;  signed quadword additions
;	 qAns4  = qNum5 + qNum1
	mov	rax, qword [qNum5]
	add	rax, qword [qNum1]
	mov	qword [qAns4], rax

;	 qAns5  = qNum6 + qNum2
	mov	rax, qword [qNum6]
	add	rax, qword [qNum2]
	mov	qword [qAns5], rax

; -----
;  signed quadword subtraction
;	 qAns9  = qNum5 - qNum3
	mov	rax, qword [qNum5]
	sub	rax, qword [qNum3]
	mov	qword [qAns9], rax

;	 qAns10 = qNum6 - qNum4
	mov	rax, qword [qNum6]
	sub	rax, qword [qNum4]
	mov	qword [qAns10], rax

; -----
;  unsigned quadword multiplication
;	 dqAns11  = qNum1 * qNum2
	mov	rax, qword [qNum1]
	mul	qword [qNum2]
	mov	qword [dqAns11], rax
	mov	qword [dqAns11+8], rdx

;	 dqAns12  = qNum2 * qNum3
	mov	rax, qword [qNum2]
	mul	qword [qNum3]
	mov	qword [dqAns12], rax
	mov	qword [dqAns12+8], rdx

; -----
;  signed quadword multiplication
;	 dqAns14  = qNum5 * qNum3
	mov	rax, qword [qNum5]
	imul	qword [qNum3]
	mov	qword [dqAns14], rax
	mov	qword [dqAns14+8], rdx

;	 dqAns15  = qNum6 * qNum4
	mov	rax, qword [qNum6]
	imul	qword [qNum4]
	mov	qword [dqAns15], rax
	mov	qword [dqAns15+8], rdx

; -----
;  unsigned quadword division
;	 qAns16 = qNum1 / qNum2
	mov	rdx, 0
	mov	rax, qword [qNum1]
	div	qword [qNum2]
	mov	qword [qAns16], rax

;	 qAns18 = dqAns12 / qNum4
	mov	rax, qword [dqAns12]
	mov	rdx, qword [dqAns12+8]
	div	qword [qNum4]
	mov	qword [qAns18], rax

;	 qRem18 = dqAns12 % qNum4
	mov	qword [qRem18], rdx

; -----
;  signed quadword division
;	 qAns19 = qNum5 / qNum3
	mov	rax, qword [qNum5]
	cqo
	idiv	qword [qNum3]
	mov	qword [qAns19], rax

;	 qAns21 = dqAns12 / qNum4
	mov	rax, qword [dqAns12]
	mov	rdx, qword [dqAns12+8]
	idiv	qword [qNum4]
	mov	qword [qAns21], rax

;	 qRem21 = dqAns12 % qNum4
	mov	qword [qRem21], rdx

; *****************************************************************
;  Done, terminate program.

last:
	mov	rax, SYS_exit		; call code for exit (SYS_exit)
	mov	rdi, EXIT_SUCCESS
	syscall

