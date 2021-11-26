GLOBAL _start
_start:
	;zeroing
    xor eax, eax
    xor ebx, ebx
    xor ecx, ecx
    xor edx, edx
    xor esi, esi
    xor edi, edi
    xor r8d, r8d
    xor r9d, r9d
    xor r10d, r10d
    xor r11d, r11d
    xor r12d, r12d
    xor r13d, r13d
    xor r14d, r14d
    xor r15d, r15d

    ;mov edi, 1
    mov ecx, 100000000
    mov eax,number
    cmp eax, 7      
    jge .test7

    cmp eax, 6
    jge .test6

    cmp eax, 5
    jge .test5

    cmp eax, 4
    jge .test4

    cmp eax, 3
    jge .test3

    cmp eax, 2
    jge .test2

    cmp eax, 1
    jge .test1

    cmp eax, 0
    jge .test0

    cmp eax, -1
    jge .test00

.out:
    xor edi, edi
    mov eax, 231    ;  exit(0)
    syscall

Align 32
.test7:
	times 32 nop
	mov eax,-1
	mov ebx,-1
	;mov ecx,-1
	mov edx,-1
	mov edi,-1
	mov esi,-1
	mov r8d,-1
	mov r9d,-1
	mov r10d,-1
	mov r11d,-1
	mov r12d,-1
	mov r13d,-1
	mov r14d,-1
	mov r15d,-1

	dec ecx
	jge .test7
	jmp .out

Align 32
.test6:
	times 32 nop
	xor eax, eax
	dec eax	
	xor ebx, ebx
	dec ebx
	xor edx, edx
	dec edx
	xor edi, edi
	dec edi
	xor esi, esi
	dec esi
	xor r8d, r8d
	dec r8d
	xor r9d, r9d
	dec r9d
	xor r10d, r10d
	dec r10d
	xor r11d, r11d
	dec r11d
	xor r12d, r12d
	dec r12d
	xor r13d, r13d
	dec r13d
	xor r14d, r14d
	dec r14d
	xor r15d, r15d
	dec r15d
	dec ecx
	jge .test6
	jmp .out

Align 32
.test5:
	times 32 nop
	or eax,-1
	or ebx,-1
	;mov ecx,-1
	or edx,-1
	or edi,-1
	or esi,-1
	or r8d,-1
	or r9d,-1
	or r10d,-1
	or r11d,-1
	or r12d,-1
	or r13d,-1
	or r14d,-1
	or r15d,-1

	dec ecx
	jge .test5
	jmp .out

Align 32
.test4:
	times 32 nop
	push -1
	pop rax
	push -1
	pop rbx
	push -1
	pop rdx
	push -1
	pop rdi
	push -1
	pop rsi
	push -1
	pop r8
	push -1
	pop r9
	push -1
	pop r10
	push -1
	pop r11
	push -1
	pop r12
	push -1
	pop r13
	push -1
	pop r14
	push -1
	pop r15

	dec ecx
	jge .test4
	jmp .out


Align 32
.test3:
	times 32 nop
	mov rax,-1
	mov rbx,-1
	;mov ecx,-1
	mov rdx,-1
	mov rdi,-1
	mov rsi,-1
	mov r8,-1
	mov r9,-1
	mov r10,-1
	mov r11,-1
	mov r12,-1
	mov r13,-1
	mov r14,-1
	mov r15,-1

	dec ecx
	jge .test3
	jmp .out


Align 32
.test2:
	times 32 nop
	xor eax, eax
	dec rax	
	xor ebx, ebx
	dec rbx
	xor edx, edx
	dec rdx
	xor edi, edi
	dec rdi
	xor esi, esi
	dec rsi
	xor r8d, r8d
	dec r8
	xor r9d, r9d
	dec r9
	xor r10d, r10d
	dec r10
	xor r11d, r11d
	dec r11
	xor r12d, r12d
	dec r12
	xor r13d, r13d
	dec r13
	xor r14d, r14d
	dec r14
	xor r15d, r15d
	dec r15
	dec ecx
	jge .test2
	jmp .out

Align 32
.test1:
	times 32 nop
	or rax,-1
	or rbx,-1
	;mov ecx,-1
	or rdx,-1
	or rdi,-1
	or rsi,-1
	or r8,-1
	or r9,-1
	or r10,-1
	or r11,-1
	or r12,-1
	or r13,-1
	or r14,-1
	or r15,-1

	dec ecx
	jge .test1
	jmp .out

Align 32
.test0:
	times 32 nop
	xor ebx,ebx
	lea eax,[rbx-1]
	xor ebx,ebx
	lea edx,[rbx-1]
	xor ebx,ebx
	lea edi,[rbx-1]
	xor ebx,ebx
	lea esi,[rbx-1]
	xor ebx,ebx
	lea eax,[rbx-1]
	xor ebx,ebx
	lea r8d,[rbx-1]
	xor ebx,ebx
	lea r9d,[rbx-1]
	xor ebx,ebx
	lea r10d,[rbx-1]
	xor ebx,ebx
	lea r11d,[rbx-1]
	xor ebx,ebx
	lea r12d,[rbx-1]
	xor ebx,ebx
	lea r13d,[rbx-1]
	xor ebx,ebx
	lea r14d,[rbx-1]
	xor ebx,ebx
	lea r15d,[rbx-1]

	dec ecx
	jge .test0
	jmp .out

Align 32
.test00:
	times 32 nop
	xor ebx,ebx
	lea rax,[rbx-1]
	xor ebx,ebx
	lea rdx,[rbx-1]
	xor ebx,ebx
	lea rdi,[rbx-1]
	xor ebx,ebx
	lea rsi,[rbx-1]
	xor ebx,ebx
	lea rax,[rbx-1]
	xor ebx,ebx
	lea r8,[rbx-1]
	xor ebx,ebx
	lea r9,[rbx-1]
	xor ebx,ebx
	lea r10,[rbx-1]
	xor ebx,ebx
	lea r11,[rbx-1]
	xor ebx,ebx
	lea r12,[rbx-1]
	xor ebx,ebx
	lea r13,[rbx-1]
	xor ebx,ebx
	lea r14,[rbx-1]
	xor ebx,ebx
	lea r15,[rbx-1]

	dec ecx
	jge .test00
	jmp .out