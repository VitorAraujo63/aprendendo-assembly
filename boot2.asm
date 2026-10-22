mov ah, 0x0e ; valor hexa do servico da bios
mov al, 'U' ; codigo ASCII da letra U colocado no registradl AL
int 0x10 ; interrupcao 10 hexa chama os servicos de video da bios
mov al, 'n'
int 0x10
mov al, 'i'
int 0x10
mov al, 'm'
int 0x10
mov al, 'a'
int 0x10
mov al, 'r'
int 0x10
mov al, 'i'
int 0x10
mov al, 'x'
int 0x10

mov al, ' '
int 0x10
mov al, 'v'
int 0x10
mov al, '0'
int 0x10
mov al, '.'
int 0x10
mov al, '1'
int 0x10

jmp $ ; outra forma de criar um loop infinito em assembly
times 510-($-$$) db 0 ; preenchimento com zero para totalizar 512bytes
dw 0xaa55 ; armazena o numero aa55 no fim do arquivo indicando que e um boot selector
