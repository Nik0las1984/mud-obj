#18200
��������� ��������� ����� �����������~
0 q 50
~
wait 1
if %actor.clan% != null
  halt
end
set item1 %actor.eq(16)%
set item2 %actor.eq(17)%
set item3 %actor.eq(18)%
set weapon 0
if (%item1.type% == 4 ) || (%item1.type% == 5 )
  set weapon 1
elseif (%item2.type% == 4 ) || (%item2.type% == 5 )
  set weapon 1
elseif (%item3.type% == 4 ) || (%item3.type% == 5 )
  set weapon 1
end
if %weapon% == 0
  halt
end
���� .%actor.name%
say � ����� ������ ������ �������� ���������� �� ������ ������� �������,
say � ��� ���� �������� ������ ��������!
say ������� ������ �� �����!
mkill %actor%
~
#18201
��������� ���� ����������� � �����~
2 e 100
~
if %actor.clan% != null
  halt
end
if %direction% != south
  halt
end
set item1 %actor.eq(16)%
set item2 %actor.eq(17)%
set item3 %actor.eq(18)%
set weapon 0
if (%item1.type% == 4 ) || (%item1.type% == 5 )
  eval weapon 1
end
if (%item2.type% == 4 ) || (%item2.type% == 5 )
  eval weapon 1
end
if (%item3.type% == 4 ) || (%item3.type% == 5 )
  eval weapon 1
end
if ( %weapon% == 1 )
  calcuid guardroom 18226 room
  set victim %actor%
  remote victim %guardroom%
  exec 18205 %guardroom%
  return 0
  halt
end
~
#18202
��������� � ������� �� �������~
0 q 100
~
wait 2
if %actor.clan% == ��
  emot ���������� � ���������� �������� "�� ������"
  mload obj 18232
  �������� ������
  ������� ������
  wait 5s
  ������� ������
  �������� ������
  mjunk all
  halt
end
set item1 %actor.eq(16)%
set item2 %actor.eq(17)%
set item3 %actor.eq(18)%
set weapon 0
if (%item1.type% == 4 ) || (%item1.type% == 5 )
  set weapon 1
elseif (%item2.type% == 4 ) || (%item2.type% == 5 )
  set weapon 1
elseif (%item3.type% == 4 ) || (%item3.type% == 5 )
  set weapon 1
end
if (%weapon% == 1 ) &&  (%actor.clan% == null )
  msend %actor% �������� �������� ��������� ��� ������ ����������.
  mechoaround %actor% �������� �������� ��������� %actor.dname% ������ ����������.
  say � ��� ����� ��������� ������� ������� � �� ������ �����������!
  say �����-�� �� �������, ���� �� �������%actor.u%.
  say ��������� ������� ���������� - � ��� �������� � ����� �������� ������.
  wait 2
  say ����� ����, �� ������� ��������� ���� ������ ���� �� ���� � �����
  say �������� ��� ��������.
else
  emot ���������� � ���������� ��������� ��������
  say �� ������� ��������� ���� ������ ���� �� ���� � �����
  say ������ ��� ��������.
  ���
end
~
#18203
��������� ���� ������~
0 m 1
~
wait 1
emot ���������� ������
if %amount% < 50
  say ������� �� ���� � ����� ���� �������� ���. �� ������, �� ����� �� ������!
  ����
  give %amount% ��� %actor.name% 
else
  mload obj 18232
  �������� ������
  ������� ������
  wait 5s
  ������� ������
  �������� ������
  mjunk all
end
~
#18204
������ ������ ������ ��������� ������� ������~
0 d 0
"������ ������"~
wait 1
if %self.fighting%
  ������� .%actor.name%
  halt
end
emot �������� ��� � ��� �� ������
���
wait 2
mload obj 18232
�������� ������
������� ������
wait 5s
������� ������
�������� ������
mjunk all
~
#18205
��������� �������~
2 z 0
~
wait 1
wsend %victim% �������� �������� ��������� ��� ������ ����������.
wechoaround %victim% �������� �������� ��������� %victim.dname% ������ ����������.
wecho �������� �������� ������ : '� ��� ����� ��������� ������� ������� � �� ������ �����������!'
wecho �������� �������� ������ : '�����-�� �� �������, ���� �� �������%victim.u%.'
wecho �������� �������� ������ : '��������� ������� ���������� - � ��� �������� � ����� �������� ������.'
~
#18206
��������� ���� ����������� � �����~
2 e 100
~
if %actor.clan% != null
  halt
end
if %direction% != north
  halt
end
set item1 %actor.eq(16)%
set item2 %actor.eq(17)%
set item3 %actor.eq(18)%
set weapon 0
if (%item1.type% == 4 ) || (%item1.type% == 5 )
  eval weapon 1
end
if (%item2.type% == 4 ) || (%item2.type% == 5 )
  eval weapon 1
end
if (%item3.type% == 4 ) || (%item3.type% == 5 )
  eval weapon 1
end
if ( %weapon% == 1 )
  calcuid guardroom 18216 room
  set victim %actor%
  remote victim %guardroom%
  exec 18205 %guardroom%
  return 0
  halt
end
~
#18207
��������� ���� ����������� � �����~
2 e 100
~
if %actor.clan% != null
  halt
end
if %direction% != west
  halt
end
set item1 %actor.eq(16)%
set item2 %actor.eq(17)%
set item3 %actor.eq(18)%
set weapon 0
if (%item1.type% == 4 ) || (%item1.type% == 5 )
  eval weapon 1
end
if (%item2.type% == 4 ) || (%item2.type% == 5 )
  eval weapon 1
end
if (%item3.type% == 4 ) || (%item3.type% == 5 )
  eval weapon 1
end
if ( %weapon% == 1 )
  calcuid guardroom 18242 room
  set victim %actor%
  remote victim %guardroom%
  exec 18205 %guardroom%
  return 0
  halt
end
~
#18208
������� �������~
0 m 1
~
wait 1
emot ����������%self.g% ������
eval target 0
switch %amount%
  * ����
  case 3200
    eval target 49947
  break
  * ������
  case 5200
    eval target 30224
  break
  default
    ���
    say � ���� �� �� �� ��� ������ ������?
    give %amount% ��� .%actor.name%
    halt
  done
  ���
  emot ������%self.g% ��������� �������� ������
  mechoaround %actor% %actor.name% �����%actor.q% � ������ ����.
  msend %actor% � ��� ����������� ������, � �� ��� �� �������� ��������...
  msend %actor% 
  mteleport %actor% %target% horse
  mechoaround %actor% %actor.name% ������%actor.u% ����� � ������ ����.
~
$~
