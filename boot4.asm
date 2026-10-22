mov ah, 0x0e

mov bp, 0x8000 ; colocamos no registrador BP (Base pointer) o endereco na memoria onde a pilha comeca

mov sp, bp     ; copiamos para o registrador SP (Stack pointer) o mesmo valor armazenado em BP (0x8000)
               ; indicando que a pilha esta inicialmente vazia(ou seja, o topo coincide com a base)

push 'A'
push 'B'
push 'C'
; empilhamos tres valores. o SP e atualizado automaticamente pela CPU

mov al, [0x7ffe]
int 0x10
mov al, [0x7ffc]
int 0x10
mov al, [0x7ffa]
int 0x10


; comecamos a desempilhar
pop bx ; colocamos o valor desempilhado no registrador BX
mov al, bl ; copiamos os primeiros 8 bits do bx (BL, que contem o valor desempilhado - a letra 'C') para o AL
int 0x10

pop cx
mov al, cl
int 0x10

jmp $

times 510-($-$$) db 0 
dw 0xaa55