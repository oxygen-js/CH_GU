use16               ;������������ 16-������ ���
org 100h            ;��������� ���������� � ������ 100h
 
    mov ax,[n]      ;��������� �������� a � AL
    mov bx,[m]      ;��������� �������� b � AH
    inc bx          ;BX = BX + 1 = b+1
    sub bx,ax       ;BX = BX -AX =( b+1-n)

    mov cx,[r]      ;cx=r
    dec cx          ;CX=CX-1

    add cx,[m]      ; cx= CX + m

    add cx,bx       ;cx=cx+bx
    mov [k],cx      ;k=cx
 
    mov ax,4C00h    ;\
    int 21h         ;/ ���������� ���������
;-------------------------------------------------------
n dw 2
m dw 3
r dw 5
k dw ?
