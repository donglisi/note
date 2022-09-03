	.global _start

	.text
_start:
	/* Initialize Page tables to 0 */
	leal	pgtable, %edi
	xorl	%eax, %eax
	movl	$((6*4096)/4), %ecx
	rep	stosl

	/* Build Level 4 */
	leal	pgtable + 0, %edi
	leal	0x1007 (%edi), %eax
	movl	%eax, 0(%edi)

	/* Build Level 3 */
	leal	pgtable + 0x1000, %edi
	leal	0x1007(%edi), %eax
	movl	$4, %ecx
1:	movl	%eax, 0x00(%edi)
	addl	$0x00001000, %eax
	addl	$8, %edi
	decl	%ecx
	jnz	1b

	/* Build Level 2 */
	leal	pgtable + 0x2000, %edi
	movl	$0x00000183, %eax
	movl	$2048, %ecx
1:	movl	%eax, 0(%edi)
	addl	$0x00200000, %eax
	addl	$8, %edi
	decl	%ecx
	jnz	1b

	movq	$60, %rax
	xorq	%rdi, %rdi
	syscall

	.data
	.section ".pgtable","aw",@nobits
pgtable:
	.fill	(6*4096), 1, 0
