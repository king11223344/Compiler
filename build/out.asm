section .data
msg0 db 'aaa', 0
section .text
global _start
_start:
    ;; let
    mov rax, 1
    push rax
    ;; /let
    ;; let
    mov rax, 4
    push rax
    ;; /let
    ;; for
loop_start0:
    push QWORD [rsp + 0]
    pop rax
    test rax, rax
    jz label0
    ;; if
    push QWORD [rsp + 8]
    pop rax
    test rax, rax
    jz label1
    mov rax, 1
    mov rdi, 1
    mov rsi, msg0
    mov rdx, 3
    syscall
    mov rax, 1
    push rax
    push QWORD [rsp + 16]
    pop rax
    pop rbx
    sub rax, rbx
    push rax
    pop rax
    mov [rsp + 8], rax
label1:
    ;; /if
    mov rax, 2
    push rax
    push QWORD [rsp + 8]
    pop rax
    pop rbx
    sub rax, rbx
    push rax
    pop rax
    mov [rsp + 0], rax
jmp loop_start0
label0:
    ;; /for
    mov rax, 60
    mov rdi, 0
    syscall
