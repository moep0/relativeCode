bits 64

global bandwidth_test256
%define UNROLLB 10

align 32

section .text

    ;rdi : dest array
    ;rsi : pointer to array1
    ;rdx : pointer to array2

struc region
    .size  : resq 1
    .start : resq 1
endstruc


;%macro define_bench 1
;%define current_bench %1
;ALIGN 64
;abi_checked_function %1
;%endmacro

;define_bench bandwidth_test256
;make_load_bench<bandwidth_test256>        
;(bw_maker, kib, "bandwidth-normal", "linear bandwidth", kib * 1024 / 64);
ALIGN 64
bandwidth_test256:
    mov r14,region.size
    mov r15,region.start
    mov     rdx, [rsi + region.size]
    mov     rsi, [rsi + region.start]
    .top:
        mov     rax, rdx
        mov     rcx, rsi

        vpxor ymm0, ymm0, ymm0
        vpxor ymm1, ymm1, ymm1

    .inner:

        %assign offset 0
        %rep UNROLLB
        vpaddb ymm0, ymm0, [rcx + offset]
        vpaddb ymm1, ymm1, [rcx + offset + 32]
        %assign offset (offset + 64)
        %endrep

        add     rcx, UNROLLB * 64
        sub     rax, UNROLLB * 64
        jge      .inner

        dec rdi
        jnz .top
        ret


