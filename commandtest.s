.include "inclusions.s"

.globl	main
.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp

	leaq	NIL(%rip), %rax
	pushq	%rax
	movq	$200, %rdi
	call	read_bytes
	pushq	%rax
	call	eval
	call	disp
	call	drop
	call	terpri

	leave
	ret