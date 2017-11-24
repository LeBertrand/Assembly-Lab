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
	movl	%esp, %ebp		# set base pointer
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax	# put first argument in eax
	cmpl	12(%ebp), %eax	# check second argument less than first
	jle	L2					# if last line set 'less than' flag, set return value false
	# first argument is already in eax
	cmpl	16(%ebp), %eax	# check if third argument is less than first
	jge	L2					# if last line set 'greater than' or 'equal', set return false
	movl	$1, %eax		# when code gets this far, return true
	jmp	L3					# go to return
L2:
	movl	$0, %eax		# set return value to false
L3:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.ident	"GCC: (GNU) 4.8.1"
