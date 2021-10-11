.section	.text
.cpu cortex-m4
.global main

.thumb
.syntax unified





main:
	mov 	r5,#0x64
	mov		r4,hello
	mov		r3,#50
	mov		r12,#100
	ldrb	r5,[r4]
	ldrb 	r9,		[r12, r3, LSL #2]
 	B		loop

loop:
	add		r5,r5,#1
	add		r4,r4,#1

	.ALIGN

.data
;text:
		;.byte	"Hello World!"
       ; .asciz "Hello World!"
hello:
	.asciz	"Hello"


	.end
