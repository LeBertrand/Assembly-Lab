	.file	"between.c"
	.text
	.globl	_between
	.def	_between;	.scl	2;	.type	32;	.endef
_between:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jle	L2
	movl	8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jge	L2
	movl	$1, %eax
	jmp	L3
L2:
	movl	$0, %eax
L3:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.ident	"GCC: (GNU) 4.8.1"
