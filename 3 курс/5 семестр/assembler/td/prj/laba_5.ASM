use16                 ;������������ 16-������ ���
org 100h              ;��������� ���������� � ������ 100h
    ; k = k^n
    mov cx,[n]
    mov bx,[k]
    mov ax,1
metka:
   mul bx
   loop metka
   mov [k],ax


    mov ax,4C00h      ;\
    int 21h           ;/ ���������� ���������
;-------------------------------------------------------
n dw 6
k dw 5