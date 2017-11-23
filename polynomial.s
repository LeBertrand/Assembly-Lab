	.text
	.globl	polynomial
	.type	polynomial, @function
polynomial:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	#	empty registers to work with
	movl	%edi, %eax		# put a in eax
	movl	%esi, -8(%rbp)	# take b from register
	movl	%edx, -12(%rbp)	# take b from register
	movl	%ecx, -16(%rbp)	# take x from register
	
	# a*x^2
	imull	-16(%rbp), %eax	# multiply x by eax
	imull	-16(%rbp), %eax	# multiply again by x
	movl	%eax, %edx		# store ax^2 in edx
	# b*x
	movl	-16(%rbp), %eax	# put b in register to multiply
	imull	-8(%rbp), %eax	# replace b with bx in eax
	# a*x^2 + b*x
	addl	%edx, %eax		# combine bx with ax^2 in eax
	# c
	addl	-12(%rbp), %eax	# add c into accumulating register
	
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	polynomial, .-polynomial
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
