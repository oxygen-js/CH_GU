use16                 ;������������ 16-������ ���
org 100h              ;��������� ���������� � ������ 100h

    movzx bx, [x]
    movsx cx, [y]

    mov ax,4C00h      ;\
    int 21h           ;/ ���������� ���������
;-------------------------------------------------------
x db 251
y db -5