use16               ;������������ 16-������ ���
org 100h            ;��������� ���������� � ������ 100h
    ; e=a-(b+c-1)+(-d).
    ; k=r+m-(n-r-1)
    mov ax,[n]
    mov cx,[r]
    sub ax,cx
    dec ax ; (n-r-1) = 0 - OK
    mov bx,[m]
    mov dx,[r]
    add bx,dx
    sub bx,ax
    mov [k],bx
 
    mov ax,4C00h    ;\
    int 21h         ;/ ���������� ���������
;-------------------------------------------------------
n dw 7
r dw 6
m dw 3
k dw ?

; (7-6-1) = 0
; (6+3) - 0 = 9