* BRusMUD trigger file v1.0
#66400
������ ����������~
0 f0 100
~
mload obj 66400













~
#66401
������ ����������~
0 f0 100
~
mload obj 66401













~
#66402
������ �����~
0 f0 100
~
mload obj 66402













~
#66403
������ �����~
0 f0 100
~
if (%world.curobjs(66411)% < 10) && (%random.10% <= 4)
mload obj 66411
end
calcuid kost 66400 room
attach 66407 %kost.id%













~
#66404
������ ����1~
2 c0 100
������~
if !(%arg.contains(����)%)
   wsend       %actor% ���� ��� �� ������ ������ ?
   return 0
   halt
end
  wsend       %actor% ���������� ���� ��������, �� ������� ��������� ���� � ������.
  wsend       %actor% �����. �� ������ �� ?
  wait 1s
  %actor.move(-30)%
wechoaround %actor% %actor.name%, ������������ �������, ������ ��������� ���� � ������.
wechoaround %actor% "�� �����!",- �������� ��.
wload obj 66406
calcuid kust 66444 room
detach 66404 %kust.id%













~
#66405
������ ����2~
2 c0 100
������~
if !(%arg.contains(����)%)
   wsend       %actor% ���� ��� �� ������ ������ ?
   return 0
   halt
end
  wsend       %actor% ���������� ���� ��������, �� ������� ��������� ���� � ������.
  wsend       %actor% �����. �� ������ �� ?
  wait 1s
  %actor.move(-30)%
wechoaround %actor% %actor.name%, ������������ �������, ������ ��������� ���� � ������.
wechoaround %actor% "�� �����!",- �������� ��.
wload obj 66406
calcuid kust 66425 room
detach 66405 %kust.id%













~
#66406
�����~
2 f0 100
~
calcuid kust 66444 room
attach 66404 %kust.id%
calcuid kust 66425 room
attach 66405 %kust.id%
calcuid kost 66429 room
attach 66408 %kost.id%
calcuid starik664 66400 mob
detach 66411 %starik664.id%
calcuid starik664 66400 mob
detach 66412 %starik664.id%
calcuid starik664 66400 mob
detach 66413 %starik664.id%
calcuid starik664 66400 mob
detach 66424 %starik664.id%
calcuid starik664 66400 mob
detach 66425 %starik664.id%
calcuid starik664 66400 mob
detach 66426 %starik664.id%
calcuid starik664 66400 mob
detach 66427 %starik664.id%
calcuid starik664 66400 mob
detach 66428 %starik664.id%
calcuid starik664 66400 mob
detach 66429 %starik664.id%
calcuid starik664 66400 mob
detach 66430 %starik664.id%
calcuid starik664 66400 mob
attach 66410 %starik664.id%








~
#66407
��������� ������~
2 c0 100
���������~
if !(%arg.contains(������)%)
   wsend       %actor% ���� ��� �� ������ ��������� ?
   return 0
   halt
end
  wsend       %actor% �� �� ���� ��� ������� �� ������� ����� � �� ���� ��������� �������.
  wait 1s
  %actor.move(-50)%
wload obj 66412
 wait 1s
calcuid kost 66400 room
detach 66407 %kost.id%













~
#66408
������� �����~
2 h0 100
~
if %object.vnum% == 66411
  wait 2s
  wsend       %actor% ����� ����� � ������ � ��������� ������� �����.
  wait 1s
wechoaround %actor% %actor.name% ����� ����� � ������ � ��������� ������� �����.
wpurge obj 66411
wload obj 66410
 wait 1s
calcuid kost 66429 room
detach 66408 %kost.id%
end



~
#66409
����������� �������~
0 r0 100
~
wait 1
� ����������!
� ����� �������� ������� ���� �� ��� �� ������ ?
� � ������ ! �� ���� � �������...
���� �������� ���������� � �������� �����...
wait 1s
���
� �������� �� � �������!
mechoaround %actor% ������ ���������� � ������.


~
#66410
��������������~
0 j0 100
~
if %object.vnum% == 66400
wait 1s
� �! �� ��� ����� ���������� ��� !
� ��� �����-�� ���������.
wait 1s
mecho ������ �������� ������ ����� � ������� � ����� ���-�� ������������� � ������������.
mecho ������� �������� � ���������� ��� �������� �� ��� ���� 17 �����, ������ �������������� �����.
� ����� ���!
mload obj 66403
���� ����� %actor.name%
wait 1s
� ��� ����! ���... �������� �� � �������.
� ��� �����.
mecho ��� ��������� � ������.
mpurge �����
else
if %object.vnum% == 66401
wait 1s
� �! �� ��� ����� ���������� !
� ��� �����-�� ���������.
wait 1s
mecho ������ �������� ������ ����� ���������� � ������� � ����� ���-�� ������������� � ������������.
mecho ������� �������� � ���������� ��� �������� �� ��� ���� 17 �����, ������ �������������� �����.
� ����� ��!
mload obj 66404
���� ���� %actor.name%
wait 1s
� ��� ���! ���... �������� �� � �������.
� ��� �����.
mecho ��� ��������� � ������.
mpurge �����
else
if %object.vnum% == 66402
wait 1s
� �! �� ��� ����� �������� ����� !
� ��� �����-�� ���������.
wait 1s
mecho ������ �������� ������ ����� � ������� � ����� ���-�� ������������� � ������������.
mecho ������� �������� � ���������� ��� �������� �� ��� ���� 17 �����, ������ �������������� �������� �������.
� ����� ���!
mload obj 66405
���� ����� %actor.name%
wait 1s
� ��� ����! ���... �������� �� � �������.
� ��� �����.
mecho ��� ��������� � ������.
mpurge �����
else
if %object.vnum% == 66403
switch %random.3%
case 1
wait 1s
mecho ��� ������� �������.
� ���-�� ����������
���
wait 1s
� �������, ��������� ���������� �������.
wait 1s
mpurge �����
calcuid starik664 66400 mob
attach 66411 %starik664.id%
wait 5
calcuid starik664 66400 mob
detach 66410 %starik664.id%
break
case 2
wait 1s
mecho ��� ������� �������.
� � ���� �� ������ ?
���� %actor.name%
wait 1s
mpurge ����
break
case 3
wait 1s
mecho ��� ������� �������.
� � ���� �� ������ ?
���� %actor.name%
wait 1s
mpurge ����
break
default
break
done
else
if %object.vnum% == 66404
switch %random.3%
case 1
wait 1s
mecho ��� ������� �������.
� ���-�� ����������
���
wait 1s
� �������, ��������� ���������� �������.
wait 1s
mpurge �����
calcuid starik664 66400 mob
attach 66412 %starik664.id%
wait 5
calcuid starik664 66400 mob
detach 66410 %starik664.id%
break
case 2
wait 1s
mecho ��� ������� �������.
� � ���� �� ������ ?
���� %actor.name%
wait 1s
mpurge ����
break
case 3
wait 1s
mecho ��� ������� �������.
� � ���� �� ������ ?
���� %actor.name%
wait 1s
mpurge ����
break
default
break
done
else
if %object.vnum% == 66405
switch %random.3%
case 1
wait 1s
mecho ��� ������� �������.
� ���-�� ����������
���
wait 1s
� �������, ��������� ���������� �������.
wait 1s
mpurge �����
calcuid starik664 66400 mob
attach 66413 %starik664.id%
wait 5
calcuid starik664 66400 mob
detach 66410 %starik664.id%
break
case 2
wait 1s
mecho ��� ������� �������.
� � ���� �� ������ ?
���� %actor.name%
wait 1s
mpurge ����
break
case 3
wait 1s
mecho ��� ������� �������.
� � ���� �� ������ ?
���� %actor.name%
wait 1s
mpurge ����
break
default
break
done
else
   if %object.vnum% == 66407
wait 1s
mecho ��� ������� �������.
� � ���� �� ������ ?
���� %actor.name%
wait 1s
mpurge ������
calcuid starik664 66400 mob
attach 66424 %starik664.id%
wait 5
calcuid starik664 66400 mob
detach 66410 %starik664.id%
else
   if %object.vnum% == 66408
wait 1s
mecho ��� ������� �������.
� � ���� �� ����� ?
���� %actor.name%
wait 1s
mpurge ������
calcuid starik664 66400 mob
attach 66425 %starik664.id%
wait 5
calcuid starik664 66400 mob
detach 66410 %starik664.id%
else
   if %object.vnum% == 66409
wait 1s
mecho ��� ������� �������.
� � ���� �� ������ ?
���� %actor.name%
wait 1s
mpurge ������
calcuid starik664 66400 mob
attach 66426 %starik664.id%
wait 5
calcuid starik664 66400 mob
detach 66410 %starik664.id%
end
end
end
end
end
end
end
end
end







~
#66411
������ ����� �������~
0 j0 100
~
if %object.vnum% == 66406
wait 1s
mpurge  ������
� ��! ��� �� ���... �����.
mecho ��� ������ ����� ����� � ������� � ����� ����� �������� �������� �� ��� ������.
wait 1s
mecho �������, ���� ��� ���������� � ��������.
wait 1s
mecho ������� �������� � ���������� ��� ����� ���������� �� �������.
mload obj 66407
���� ������ %actor.name%
wait 1s
� ��� ��������� ������� ���... ��..
���
� ����� �����!
mecho ��� ���������� � ������.
calcuid starik664 66400 mob
attach 66410 %starik664.id%
wait 5
calcuid starik664 66400 mob
detach 66411 %starik664.id%
end








~
#66412
������ ������ �������~
0 j0 100
~
if %object.vnum% == 66406
wait 1s
mpurge  ������
� ��! ��� �� ���... �����.
mecho ��� ������ ������ ����� � ������� � ����� ����� �������� �������� �� ��� ������.
wait 1s
mecho �������, ���� ��� ���������� � ��������.
wait 1s
mecho ������� �������� � ���������� ��� ����� ���������� �� �������.
mload obj 66408
���� ������ %actor.name%
wait 1s
� ��� ��������� ������� ���... ��..
���
� ����� �����!
mecho ��� ���������� � ������.
calcuid starik664 66400 mob
attach 66410 %starik664.id%
wait 5
calcuid starik664 66400 mob
detach 66412 %starik664.id%
end








~
#66413
������ ������� �������~
0 j0 100
~
if %object.vnum% == 66406
wait 1s
mpurge  ������
� ��! ��� �� ���... �����.
mecho ��� ������ ������� ������ � ������� � ����� ����� �������� �������� �� ��� ������.
wait 1s
mecho �������, ���� ��� ���������� � ��������.
wait 1s
mecho ������� �������� � ���������� ��� ����� ���������� �� �������.
mload obj 66409
���� ������ %actor.name%
wait 1s
� ��� ��������� ������� ���... ��..
���
� ����� �����!
mecho ��� ���������� � ������.
calcuid starik664 66400 mob
attach 66410 %starik664.id%
wait 5
calcuid starik664 66400 mob
detach 66413 %starik664.id%
end





~
#66424
������ ������ 2-1~
0 j0 100
~
   if %object.vnum% == 66408
wait 1s
mecho ��� ������� �������.
� � ���� �� ������ ?
���� %actor.name%
wait 1s
mpurge ������
calcuid starik664 66400 mob
attach 66427 %starik664.id%
wait 5
calcuid starik664 66400 mob
detach 66424 %starik664.id%
else
   if %object.vnum% == 66409
wait 1s
mecho ��� ������� �������.
� � ���� �� ������ ?
���� %actor.name%
wait 1s
mpurge ������
calcuid starik664 66400 mob
attach 66428 %starik664.id%
wait 5
calcuid starik664 66400 mob
detach 66424 %starik664.id%
end
end






~
#66425
������ ������ 2-2~
0 j0 100
~
   if %object.vnum% == 66407
wait 1s
mecho ��� ������� �������.
� � ���� �� ������ ?
���� %actor.name%
wait 1s
mpurge ������
calcuid starik664 66400 mob
attach 66427 %starik664.id%
wait 5
calcuid starik664 66400 mob
detach 66425 %starik664.id%
else
   if %object.vnum% == 66409
wait 1s
mecho ��� ������� �������.
� � ���� �� ������ ?
���� %actor.name%
wait 1s
mpurge ������
calcuid starik664 66400 mob
attach 66429 %starik664.id%
wait 5
calcuid starik664 66400 mob
detach 66425 %starik664.id%
end
end






~
#66426
������ ������ 2-3~
0 j0 100
~
 if %object.vnum% == 66407
wait 1s
mecho ��� ������� �������.
� � ���� �� ������ ?
���� %actor.name%
wait 1s
mpurge ������
calcuid starik664 66400 mob
attach 66428 %starik664.id%
wait 5
calcuid starik664 66400 mob
detach 66426 %starik664.id%
else
   if %object.vnum% == 66408
wait 1s
mecho ��� ������� �������.
� � ���� �� ������ ?
���� %actor.name%
wait 1s
mpurge ������
calcuid starik664 66400 mob
attach 66429 %starik664.id%
wait 5
calcuid starik664 66400 mob
detach 66426 %starik664.id%
end
end






~
#66427
������ ������ 3-1~
0 j0 100
~
if %object.vnum% == 66409
wait 1s
mecho ��� ������� �������.
� ���-�� ����������
���
wait 1s
� �������, ����-�� ���������.
wait 1s
mpurge ������
calcuid starik664 66400 mob
attach 66430 %starik664.id%
wait 5
calcuid starik664 66400 mob
detach 66427 %starik664.id%
end













~
#66428
������ ������ 3-2~
0 j0 100
~
if %object.vnum% == 66408
wait 1s
mecho ��� ������� �������.
� ���-�� ����������
���
wait 1s
� �������, ����-�� ���������.
wait 1s
mpurge ������
calcuid starik664 66400 mob
attach 66430 %starik664.id%
wait 5
calcuid starik664 66400 mob
detach 66428 %starik664.id%
end













~
#66429
������ ������ 3-3~
0 j0 100
~
if %object.vnum% == 66407
wait 1s
mecho ��� ������� �������.
� ���-�� ����������
���
wait 1s
� �������, ����-�� ���������.
wait 1s
mpurge ������
calcuid starik664 66400 mob
attach 66430 %starik664.id%
wait 5
calcuid starik664 66400 mob
detach 66429 %starik664.id%
end













~
#66430
������ ������ 4~
0 j0 100
~
if %object.vnum% == 66412
wait 1s
mpurge �������
� �! ��� ����� ������!
� ��������� ����� �� ��������.
wait 1s
mecho ���������� ��� ������� ������� � ������� � ����� ������ ������, ���������� ����������.
wait 1s
mecho ����� ������ ���� ����� � ������� �� ���������� �������.
wait 1s
mecho ����� �������� � ����� ��������� ������� ������.
wait 1s
� ��! ��! � ����� �������� ������ � �� ��������� ����� �������.
wait 1s
mecho ��� ����� ������� �� �������.
wait 1s
� ���� ����������!
mload obj 66413
���� ����� %actor.name%
calcuid starik664 66400 mob
attach 66410 %starik664.id%
wait 5
calcuid starik664 66400 mob
detach 66430 %starik664.id%
end






~
#66431
����� � ������~
2 c0 100
�����~
if !(%arg.contains(����)%) 
   wsend       %actor% ���� ��� �� ������ ��������???
   return 0
   halt
end
if (%actor.move%<200)
    wsend %actor% _� ��� �� ������ ��� ��� �����.
   return 0
else
  wsend       %actor% �� ������� � ����� ����. �� � ������ �� ��� ������!
  wechoaround %actor% %actor.name% �����%actor.g% � ����� ����. 
  wait 5s
  %actor.move(-200)%
  wsend %actor% �� �������� � ��������� ������.
  wteleport %actor.name% 66448
  wat 66448 wechoaround %actor% ���-�� ������ ����.\
end












~
#66432
����� �� ������~
2 c0 100
�����~
if !(%arg.contains(����)%) 
   wsend       %actor% ���� ��� �� ������ ��������???
   return 0
   halt
end
if (%actor.move%<200)
    wsend %actor% _� ��� �� ������ ��� ��� �����.
   return 0
else
  wsend       %actor% �� ������� � ����� ����. �� � ������ �� ��� ������!
  wechoaround %actor% %actor.name% �����%actor.g% � ����� ����. 
  wait 5s
  %actor.move(-200)%
  wsend %actor% �� ������� �� ��������� ������.
  wteleport %actor.name% 66447
  wat 66447 wechoaround %actor% ���-�� ������ ����.\
end











~
$
$
