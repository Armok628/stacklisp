.type	scc_length, @function
scc_length: # Standard calling convention
	pushq	%rdi
	xorq	%rcx, %rcx
	.scc_length_loop:
	movq	(%rsp), %rdi
	cmpq	NILptr(%rip), %rdi
	je	.scc_length_ret
	call	cdr
	incq	%rcx
	jmp	.scc_length_loop
	.scc_length_ret:
	addq	$8, %rsp
	movq	%rcx, %rax
	ret
