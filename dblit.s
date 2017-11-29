	.file	"dblit.c"
	.text
	.globl	_dblit
	.def	_dblit;	.scl	2;	.type	32;	.endef
_dblit:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	#subl	$16, %esp
	movl	$0, -4(%ebp)	# record index as 0
	jmp	L2
L3:
	movl	-4(%ebp), %eax		# put current index in eax
	leal	0(,%eax,4), %edx	# put four more than index into edx
	movl	8(%ebp), %eax		# location of array into eax
	addl	%edx, %eax			# add index to array start to get address of element
	movl	-4(%ebp), %edx		# store index in edx
	leal	0(,%edx,4), %ecx	# put four more than index into ecx to serve as address
	movl	8(%ebp), %edx		# put location of array in edx
	addl	%ecx, %edx			# add ecx -- distance covered in array -- to start location of array
	movl	(%edx), %edx		# get value at address in edx, move to edx
	addl	%edx, %edx			# double value in edx
	movl	%edx, (%eax)		# put doubled value back in position
	addl	$1, -4(%ebp)		# increase index by one -- move to next element
L2:
	movl	-4(%ebp), %eax	# find current index
	cmpl	12(%ebp), %eax	# check if length is less than index
	jl	L3					# if it is less, run the double value code
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.ident	"GCC: (GNU) 4.8.1"
