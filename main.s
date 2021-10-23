.section	.text
.cpu cortex-m4
.global main

.thumb
.syntax unified





main:
	mov		r4,#number

	mov r1,#4
Test:
	ldrb	r5,[r4]
	sub r1,#1
	add r4,#1
	cmp r1,#0
	bne	Test
 	B	loop

loop:
	B loop


.data
;text:
number:
	.byte 11,20

	.align

hello:
	.asciz	"Hello"


	.end
