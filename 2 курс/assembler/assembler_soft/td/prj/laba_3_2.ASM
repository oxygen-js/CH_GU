use16                 ;������������ 16-������ ���
org 100h              ;��������� ���������� � ������ 100h
    ;k=(a+b)/(a*c)
    ;k=(a-b)/(a*c)
    mov dx,[a] ;dx = 10
    mov bx,[b] ;bx = 50
    mov cx,[c] ;cx = 2

    add bx,dx  ;bx = 60

    imul cx,dx ;cx = 20
    mov ax,bx  ;bx -> ax
    div cx     ;ax = ax / cx
    mov [k],ax


    mov ax,4C00h
    int 21h           ;/ ���������� ���������   -dw / w
;-------------------------------------------------------
a dd 12345678h
b dd 87654321h
c dw
k dw ?

