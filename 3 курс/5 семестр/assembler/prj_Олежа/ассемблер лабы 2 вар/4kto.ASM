use16                 ;������������ 16-������ ���
org 100h              ;��������� ���������� � ������ 100h
 
    movsx ax,[a]      ;AX = a
    add ax,[b]        ;AX = a+b
    cwd               ;DX:AX = a+b
    idiv [c]          ;AX = (a+b)/c, � DX �������
    cwd               ;DX:AX = (a+b)/c
    mov word[x],ax    ;\
    mov word[x+2],dx  ;/ x = DX:AX
 
    mov ax,4C00h      ;\
    int 21h           ;/ ���������� ���������
;-------------------------------------------------------
a   db 2h
b   dw -8h
c   dw 2h
x   dd ?
