use16               ;������������ 16-������ ���
org 100h            ;��������� ���������� � ������ 100h

  mov ax, [a]


  ;mov ax, [b]
  ;mov cl, [c]
  ;mul cl
  ;mov bx, ax

  ;mov al, [a]
  ;mov ah, [b]
  ;sub al, ah
  ;mov ah, 0

  ;div bx

  mov [k], ax


  mov ax,4C00h    ;\
  int 21h         ;/ ���������� ���������

; -----------------------------------------------------------

;k=(a-b)/(b*c)
a dw -0xFFFF
;b dw 0x0080
;c dw 0x0020

k dw ?

;a = 65534
;b = 4660
;c = 4369

