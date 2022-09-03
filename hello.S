        .global _start

        .text
_start:
	leal	x, %eax
	movl	$5, (%eax)
	movl	$10, %eax
	addl	$15, %eax
	movl	$10, %eax

        movq	$60, %rax
        xorq	%rdi, %rdi
        syscall

	.data
x:	.quad 7
