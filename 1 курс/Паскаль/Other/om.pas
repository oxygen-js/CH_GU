﻿{8.Имеется массив, элементами которого являются целые числа.
Составить программу линейной сложности для удаления из массива дубликатов.}
const A= 2000000;//КОл-во чиСЕЛ
const N= 40000000;//МАКС ВОЗМОЖНОЕ ЧИСЛО
var massiv: array[1..A] of integer;
var massivB: array[1..N] of byte;
begin
  //ГЕНЕРАЦИЯ
  for var j:=1 to A do begin
    massiv[j]:=random(N);
  end;
  var t:=milliseconds;
  //СТАРТ ЗАДАЧИ
  for var j:=1 to A do begin
    massivB[massiv[j]]:=1;
    massiv[j]:=0;
  end;
  var cnt:=1;
  for var j:=1 to N do begin
    if (massivB[j]=1) then begin
    massiv[cnt]:=j;
    cnt:=cnt+1;
    end;
  end;
  t:=milliseconds-t;
  writeln(t);
  //writeln(massiv);
  
  
end.