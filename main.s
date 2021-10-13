.section	.text
.cpu cortex-m4
.global main

.thumb
.syntax unified





main:
	mov 	r5,#0x64
	mov		r4,hello
	mov		r3,number
	mov		r12,#100
	ldrb	r5,[r4]
	ldrb	r6,[r3]

	lsr r12, r12, #2
 	B	loop

loop:
	add		r5,r5,#1
	add		r4,r4,#1

	.ALIGN

.data
;text:
number:
	.byte 11,20


       ; .asciz "Hello World!"
hello:
	.asciz	"Hello"


	.end
