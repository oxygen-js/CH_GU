use16                 ;������������ 16-������ ���
org 100h              ;��������� ���������� � ������ 100h
    ; k=(a*b)/(a-c) = 39
    movsx ax, [a]
    imul [b]
    movsx bx, [a]
    sub bx, [c]
    cwd
    idiv bx
    cwd
    mov word[k], ax
    mov word[k+2], dx

    mov ax,4C00h      ;\
    int 21h           ;/ ���������� ���������
;-------------------------------------------------------
k dd ?
a db -10
b dw -2000
c dw -500