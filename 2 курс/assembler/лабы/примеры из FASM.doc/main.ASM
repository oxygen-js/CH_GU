use16               ;������������ 16-������ ���
org 100h            ;��������� ���������� � ������ 100h
 
    mov ax,255      ;��������� 255 � ������� AX
    inc ax          ;��������� ���������� AX �� 1
    nop             ;��� ������� ������ �� ������
    mov bx,ax       ;��������� � BX ���������� AX
 
    mov ax,4C00h    ;\
    int 21h         ;/ ���������� ���������
