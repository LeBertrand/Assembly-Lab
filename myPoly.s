
    .text
	.globl	myPoly
	.type	myPoly, @function
myPoly:
    .cfi_startproc
    pushq	%rbp # push base pointer onto stack
    movq	%rsp, %rbp
    
    movl	%edi, -4(%rbp) # put arguments into registers
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	
	movl    $0x0000, %eax
	popq    %rbp
	ret
	.cfi_endproc