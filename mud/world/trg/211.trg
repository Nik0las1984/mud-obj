#21100
����� �����������~
0 r 60
~
wait 1
mecho ����� ������� ��� � ������ �� ���.
���
wait 1
say �� �� �������������!!!
���
~
#21101
�������� ����� ��� ����������~
1 ghit 0
~
* ������� ������������ ����������� ������������ ����-�����
* �������������� ������. ��������������� ������ ��������
* ���� ���������� ��������, ����������������� � �� ��������������, ��
* ����� ������������ ���� ������� - ������ �� ����������� ��� � �������� � ������.
* ������ "���" ���� ������� ������������ �������� ����� � ������ ��������
if %actor.vnum% != -1
  halt
end 
wait 1
if %actor.clan% == ��
  halt
endif
osend %actor% %self.name% ������%self.g% � ����� �����.� ���������� ���� �� ������� ����� &R��&n 
oechoaround %actor% � ���������� ����, ����������� %self.name%, �� ���� �������� �������� ���� &R��&n
wait 1
opurge %self%
~
#21102
��� ����!~
-1 b 50
~
wait 1  
switch  %random.10%
  case 10
    say ������������������!
  break
  case 9
    say ������ ������!!!
    ���
  break
  case 8
    say � ���� � �������� ����� ����! � � ��������� ���� ����!
    �����
  break
  case 7
    say �� ��� ��� �� �����!
    mecho ��� ���� ������� ����� � ��� ����.
    wait 1
    mecho &y��� �� ���� ��������� ��� ����&n.
    wait 1
    ���
    wait 1
    mecho ��� ��������� ������������ ������� �����.
    wait 1
    say �� ������! �������� - ����� ������� ������ � ��� ����, ��� ����� � ���������!
  break
  case 6
    say ��! ����� �� ��� � �������, ��� ����� �� �� �� � ��������! � ��� ����-�����!
    ���
  break
  case 5
    say ����� ��� ������� � ������� ������� ����� �� ����� ? ������� ��� ���-�� �������...
    ����
    wait 1
    say ���� ��� ������ - ����� ��� ������� ��!
  break
  case 4
    say ���������! ����� ����! ����� ����! ����� ����! ������� ����! ������!
  break
  case 3
    say ������� ���� � ��! � ������ ������ �� ����!
    wait 1
    ���
    wait 1
    say �� �� ������ - ��� ������! ������ ����� �������!
  break
  case 2
    say ������ �� ������� ������� ���������! ������ ������ �� ���� ��� ������ �����������!
    ���
  break
  case 1
    say ��� ���-����! �� ��� ���-����!
    mecho ������ ������� ��� � ������ �� ���.
    ����
    say �� �� ���� ����-���� ���� ��� ��.
    ���
    
~
#21103
������ ��������� �����~
0 c 0
��������~
wait 1
say ��� ���� � ���� ������ ���, ���������� � ����������.
halt
drop all
if %actor.bank% < 1220
  ���
  say �, �� � ���� ���-�� ���� �� ������� �� ������!
  halt
end
say � ������� ���������� !
�����
eval buffer %actor.bank(-1220)%
mload obj 21121
mload obj 21113
mload obj 21114
mload obj 21115
mload obj 21116
mload obj 21117
mload obj 21118
mload obj 21119
mload obj 21120
mload obj 21121
mload obj 21122
mload obj 21123
mload obj 21122
mload obj 21106
mload obj 21105
mload obj 139
mload obj 144
mload obj 141
mload obj 142
put all ������
give ������ .%actor.name%
��� .%actor.name%
say ������ ������� � ��� � ���!!!
~
#21104
����� ����������~
2 c 0
���������~
wsend %actor%  �� ������ ����������,
wsend %actor%  �� ���� �������� ��������� ���������
wsend %actor%  ��������� ��������� ������ ��� : '������ �������� �� ���� ����������'
wsend %actor%  �� ����������� �� �����������.
if (!%actor.rentable% && !%actor.fighting% && (%actor.clan% == �� ))
  wechoaround %actor% %actor.name% ������� � ����.
  wteleport %actor% 21109
done
wechoaround %actor% %actor.name% �������� �� �������� �����.
halt
elseif (!%actor.fighting% && (%actor.clan% == ��))
wechoaround %actor% %actor.name% ����� � ����.
switch %random.5%
  case 5
    wteleport %actor% 21195
  break
  case 4
    wteleport %actor% 21190
  break
  case 3
    wteleport %actor% 21189
  break
  case 2
    wteleport %actor% 21199
  break
  case 1
    wteleport %actor% 21196
  break
done
wechoaround %actor% %actor.name% �������� �� �������� �����.
return 0
halt
end
else
wsend %actor% ����? 
~
#21105
����� � �����������~
2 c 0
����� ����~
wsend %actor%  �� ������ ������� � ���� ������, � �������� ����.
wsend %actor%  ��� �������� ����� � �����.
wechoaround %actor% %actor.name% ���-�� ����� ������.
wechoaround %actor% %actor.name% �������� � ������ �����.
wteleport %actor% 21198
%actor.position(6)%
done
wechoaround %actor% %actor.name% � �������� ���� �� ������� ����.� ��� ����� �� ������ �����������.
halt
~
#21106
������� 1 � ����� ��������~
2 e 100
~
* %actor.wait(5)%
* wecho  ��� ������ �� ����� � ������� ������ �� ��� ����� �����.
* wecho  �� ���������� ����������...
* wecho  &R�� ����� ������� �� ���!&n
* foreach victim %self.all%
*  wdamage %victim% 200
~
#21107
������� �� �����~
2 e 1
�����~
* calcuid troom 21048 room
* wecho �� ���������� �� �����:
* foreach char %troom.all%
*  if %char%
*    wecho �� ������� %char.vname%
*  else
*  break
~
#21108
������� �� �����~
2 e 1
�����~
* calcuid troom 21048 room
* wecho �� ���������� �� �����:
* foreach char %troom.all%
*  if %char%
*    wecho �� ������� %char.vname%
*  else
*  break
~
#21109
������� �� �����~
2 e 1
��~
* calcuid troom 21048 room
* wecho �� ���������� �� ��:
* foreach char %troom.all%
*  if %char%
*    wecho �� ������� %char.vname%
*  else
*  break
~
#21110
������� �� �����~
2 e 1
�����~
* calcuid troom 21048 room
* wecho �� ���������� �� �����:
* foreach char %troom.all%
*  if %char%
*    wecho �� ������� %char.vname%
*  else
*  break
~
#21111
����� � �������!~
0 q 100
~
if %actor.clan% == ��
  wait 3
  mecho ������� �������� ���� �������� : '����� ���������� �������� ����� ������'
else
  ���� %actor.iname% ����� ����� � ��� � �����!!!
end
~
#21112
����� �������~
2 e 100
~
wechoaround %actor.name% ������������ �������%actor.u% �� ������.
wsend %actor% ��� ������ �� ����� � ������� ������ �� ��� ����� �����.
wsend %actor% �� ���������� ����������...
wsend %actor% &R�� ������ ��������� �������.&n
wsend %actor% ��� ���������� �����.
wsend %actor% � ������ � ��� ��������.
wsend %actor% �� ��������. 
wteleport %actor% 21126
eval dam124 %actor.hitp%/2
wait 1
wdamage %actor% %dam124%
wechoaround %actor.name% � ������� ��������%actor.u% � ������,
~
#21113
������� �� �����~
2 e 1
������~
* calcuid troom 21048 room
* wecho �� ���������� �� ������:
* foreach char %troom.all%
*  if %char%
*    wecho �� ������� %char.vname%
*  else
*  break
~
#21114
�������� �������1~
2 c 0
���������~
wsend %actor% ������������ �� ����������� �� ������.
wteleport %actor% 21187
if !%arg.contains(�����)%
  %actor.wait(5)%
  wecho  ��� ������ �� ����� � ������� ������ �� ��� ����� �����.
  wecho  �� ���������� ����������...
  wecho  &R�� ����� ������� �� ���!&n
  foreach victim %self.all%
    eval dam124 %actor.hitp%/2
    wait 1
    wdamage %actor% %dam124%        
  done                     
  return 0
  halt
end
else
wsend %actor% ��� �������.
~
#21115
����� ����� � ����~
2 e 100
~
wechoaround %actor.name% ������������ �������%actor.u% �� ������.
wsend %actor% ��� ������ �� ����� � ������� ������ �� ��� ����� �����.
wsend %actor% �� ���������� ����������...
wsend %actor% &R�� ������ ��������� �������.&n
wsend %actor% � ������ � ��� ��������.
wsend %actor% �� ��������. 
wteleport %actor% 21186
foreach victim %self.all%   
  wdamage %victim% 250   
  wechoaround %actor.name% � ������� ��������%actor.u% � ������ �� ����, � ����%actor.u% �� �����.
~
#21116
��������� �������2~
2 c 0
���������~
wsend %actor% ������������ �� ����������� �� ������.
wteleport %actor% 21188
%actor.wait(5)%
if !%arg.contains(������)%
  %actor.wait(5)%
  wecho  ��� ������ �� ����� � ������� �� ������� �������� ���� ����� ������� � ���� �������.
  wecho  �� ���������� ����������...
  wecho  &R�� ��������� ����� ���������� � ���!&n
  foreach victim %self.all%   
    wdamage %victim% 250   
  done                     
  return 0
  halt
end
else
wsend %actor% ��� �������. �� ���������� �� ������.
~
#21117
����������� ������~
2 z 100
~
calcuid lov 21186 room
detach 21112 %lov.id%
wait 3s
attach 21112 %lov.id%
~
#21118
����������� �����~
2 z 100
~
calcuid lov 21187 room
detach 21115 %lov.id%
wait 3s
attach 21115 %lov.id%
~
#21119
����� � ��������~
0 r 100
~
if %actor.clan% == ��
  wait 3
  mecho ������� �������� ���� �������� : '����� ���������� �������� ����� ������'
else
  ���� %actor.iname% �������� � ������ ����� !!!
end
~
#21120
����� � ����������~
-1 h 0
~
if %actor.clan% == ��
  wait 3
  mecho ��������� �������� ���� �������� : '����� ���������� �������� ����� ������'
else
  ���� %actor.iname% ����� � �������� ���!!!
end
~
$~
