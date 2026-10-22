[org 0x7c00]
mov ah, 0x0e

mov al, '1'
int 0x10
mov al, [segredo]
int 0x10
mov al, [outro]
int 0x10

jmp $

segredo: db 'X'

outro: db 'U'

times 510-($-$$) db 0 
dw 0xaa55