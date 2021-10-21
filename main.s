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
	ldrb	r6,[r3]
	mov 	r5,0x10000000

	str		r12,[r5]
	ldrb	r6,[r5]
	;.ALIGN
	add r5,r5,#1

	mov 	r12,#20
	str		r12,[r5]
	ldrb	r6,[r5]

	sub r5,#1

	ldrb	r6,[r5]

	lsr r12, r12, #2
Test:
	cmp r6,#100
	bne	Test
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
