#25100
�����������~
2 c 100
�������~
if %cmd%==������� && %arg.contains(����)% 
  calcuid nuzroom 25167 wld
  if %nuzroom.people%>0
    wecho � �������� ������� ����������� ��������� � ������� "������!".
  else
    wechoaround %actor% %actor.name% ������ � ��������.
    wsend %actor.name% �� ��������� � �������.
    wechoaround %actor% %actor.name% ����� � ��������.
    wteleport %actor.name% 25167
    wpurge %nuzroom%
  end
else
  oecho ���� ?
  halt
end
~
#25101
�������������������~
0 r 100
~
wait 1s
if !%hero251%
  mecho - ����, � �������� ��� ��� ������ ������ ����������� ��, ��� ��� ������ ���
  mecho �������� �� �� ������, �� ����� �� � ��� ����. 
  wait 1s
  mecho - �������� ������, ��� �� ����, ������ ��������, �� �������, ��� � ��� ���
  mecho �������� �� ����� ����. ������ ����� ��� � ��������, ��� �������� ������
  mecho �� ���� �����, ������ ��� ��� � ��� ����, �� � ������ ������������. ��
  mecho ������ ��������� ���, �������� ��� ������� � ���� ����.
  wait 1s
  mecho - �������� ������ �� ����� ��������� ������ ������, �� ������ � ��� ��
  mecho ������� � �����, ���������� � �����. ����� ������� ����� ���, � ����
  mecho ��������� ����� � ������� ���������� ����� �������, ������� �����
  mecho �����, � ������� ��������.
  wait 1s
  ���
  mecho  - ��� ������ ���� ������������� ����� �����, � ������ ����� ������� 
  mecho ����, �� �������� ����� ������ � ��������� � ������. �� �� ����������
  mecho ��� ��� �������� ���������, �� �����, ������, ��� �� �������� ������ 
  mecho �� ����� �������� �������.
  wait 1s
  ���
  mecho - ������, ������ �� �� �����, ������� �� ������� ����, ��� ��� ���� ���.
  mecho ���� ������� ������� ��������, �������� ��� ������� � ����������� ��
  mecho ��������� �� �����, ����� ��� ��������.
  wait 1s
  mecho - ��, ������, ���� ������������ ����, ����� ���� � ������������ ���-��
  mecho ������ � ������ ����� ���� ���������, ��� ������ � ����� ����� ��������
  mecho �������. ������ �� �����. �� � ��� �� ����� �������� ���������, ���� ��
  mecho � ���� ������� �����, ��� �� �� ��������. ���� ���������.
  wait 1s
  attach 25102 %self.id%
else
  if (%actor% == %hero251%)
    �����
    wait 2s
    say �� ��� �� ����� �������?
  else
    mecho - ���, ���, ������ ����� ����.
    mecho ������%hero251.g% %hero251.name% ������ ��� � ����� ���� �� ���-�� ������%hero251.g%.
    wait 2s
    ���
    mecho ���� � �� ���� ��� ������, ����� ����� ����� ���� ��������, ����������
    mecho ������� � ���� ����� - ����� �������� ���� ��������.
    wait 2s
    ������
  end
end
~
#25102
��������������~
0 d 1
�� ������~
wait 1 
say �������, � ���� ����� ���� �����.
if %world.curmobs(25107)% > 0
  set hero251 %actor%
  global hero251
  calcuid z251 25107 mob
  attach 25108 %z251.id%
  attach 25106 %z251.id%
  remote hero251 %z251.id%
  detach 25103 %z251.id%
  detach 25102 %self.id%
end
~
#25103
���������������1~
0 q 100
~
mecho - ������ ����, ������.
mecho - ���� ���� �������? ���� � �����, �� ���� ���������, ���-�� ��� ��������.
mecho �� ����� ��� ���� ���� ����� ������� � ��� ��������� ������� ������� ���
mecho �������. ������ �� �����, ������� ������� � ��� �����������.
wait 1s
mecho - � ������� ������������ ����� ����������� ������ - ������ ��������
mecho �������� ������� �� ������ �� ����� ������ � ��������� �� �����.
mecho - ��� �, �� ����� ��� ��� ��� ������� ��������� � �������, ����������
mecho �������, � ����� �������� �� ����������� �����, �������, ����� � �����.
wait 1s
mecho - ���, �� �����. ������ � ����� ��������� �� ���� ������, �� �����
mecho ��������� ������������.
wait 2s
if %world.curmobs(25110)% > 0
  mecho - �� ���� ����� ���� ��������� �� ������ ������������ ����� ���������
  mecho �������. ���� ������� ��� �������, ��� ��������.
end
wait 3s
if %world.curmobs(25114)% > 0
  mecho - ���� ��� ��� ���� ����, �������� �� ���������� ����� ������ ������
  mecho ���������, ���� ������������ ����� �����, ����� ����� ������� ��
  mecho �����������. ���������� ��� ���-�� �����, ���� ����������. � ����
  mecho ������ �� � ������� �� ������, ������� �������������� ��� ������,
  mecho � ������� ���� �� ���.
end
~
#25104
������������~
0 q 100
~
wait 1
if %world.curmobs(25103)% > 0
  msend %actor% �������� ����� ������� ���� ����������� � ������ ������.
  tell %actor.name% ������ ����!
  wait 1s
  �������� %actor.name%
  wait 1s
  tell %actor.name% ���� � ���� ����, ����� ������� ��� �������. � ��� �������� � ��� �� ����������.
  tell %actor.name% ������ �������� ����, ��� �� ������ ���� ����������, �� ������� ������� ����.
  tell %actor.name% ���� ��������, ��� �����.
  msend %actor% ����� ������ ���� ����, ��� ����� �������� �������� ������.
  wait 1s
  tell %actor.name% � �������, ������ �� ������� 10 ������.
  tell %actor.name% �������� �����, �� �������.
  ����
  wait 1s
  tell %actor.name% � �������. ���� ���� ������ ��������, ������� ���������� �� ������ ������.
  tell %actor.name% � �����, ���� ����, ������� ����� ����.
  wait 1s
  msend %actor% �������� ����� ��������� ���������� ������ ������.
end
~
#25105
��������������~
0 j 100
~
wait 1
eval objname %object.iname%
eval objname2 %objname.cdr%
eval objname3 %objname.car%
if %objname3%.%objname2.car%.%objname2.cdr% == ����.���������.����
  wait 1
  mpurge %object%
  tell %actor.name% ����� �������� ��, �������� �� ���������� ����� ��������.
  tell %actor.name% �������� ������ ���� ��� ��������, ����� ��� ���� ������ ������.
  wait 1s
  ���
  wait 1s
  mecho ������� ����� �������� ����.
  wait 1s
  say ����, ��������� ���� ����� �������� �������, ��� ��� �������.
  say �����, ��� 400 ����� �������� �� ����� ������� ����������, ��� ��� ��� ���� ����.
  %self.gold(+200)%
  ���� 200 ��� %actor.name%
  wait 2
  if %world.curobjs(25104)% < 10
    mload obj 25104
    mecho ������� ����� ������� ����� ����, ���-�� ��� �����������, ���-�� �������.
    ���� ������ %actor.name%
    tell %actor.name% ����� ������ ������� ���� ����� ����� ���������� ������������.
  end
  tell %actor.name% �����, ����� ����������.
  tell %actor.name% �������, �� ������� �����.
  wait 1
  mpurge %self%
else
  say  ����� ��� ���?
  eval getobject %object.name%
  if  %getobject.car% == ����
    mpurge %object%
  else
    ����� %getobject.car%.%getobject.cdr%
  end
end
~
#25106
���������������2~
0 r 100
~
wait 1
if %world.curmobs(25114)% > 0
  mecho - ���� ��� ��� ���� ����, �������� �� ���������� ����� ������ ������
  mecho ���������, ���� ������������ ����� �����, ����� ����� ������� ��
  mecho �����������. ���������� ��� ���-�� �����, ���� ����������. � ����
  mecho ������ �� � ������� �� ������, ������� �������������� ��� ������,
  mecho � ������� ���� �� ���.
end
if ( %actor.id% == %hero251.id% )
  wait 1s
  ����
  wait 1s
  mecho - ���, ������� �� ��� � ���������, � �� ������ ������������, ����������� � ���
  mecho � ��� ��. ��������� ����, �� �� ��� �����, ����� ��������� ���� ��������
  mecho �������� ���� � �����, �� ���� � ��.
  wait 1s
  mecho  - ������ ������������, �������� �������.
  wait 1s
  mecho - ��� � ��� ��� ���, ������� ��� ������� ������ �� ����� �����.
end
~
#25107
���������~
0 n 100
~
eval hero251 blank
remote hero251 %self.id%
attach 25101 %self.id%
attach 25102 %self.id%
attach 25111 %self.id%
~
#25108
��������������~
0 f 100
~
if %actor.vnum% != -1
  set killer %actor.leader%
else
  set killer %actor%
end
if ((%killer.id% != %hero251.id%) || (%world.curmobs(25110)% == 0))
  halt
end
mecho �������� ����� ������� ����������� �� �����.
mecho �������� ������: �� ������� ���� ���!
mecho �������� ������: �� ������ ��� � �� ��������� ��������� �� ������ ������� ����.
mecho �������� ������: �������� ����� �� ��� �� �����, ������ ����� � �� ����� ���������.
mecho �������� ������: � ������� �� ���� ����� �������� ��������� ������� � ������� ������.
mecho �������� ������: ������ ����� ����� ����� �����, �� ��� ������� ���� ���� ������ �� ����� � ����������.
mecho �������� � ������ ��������, ������� ������.
mecho �������� ������: �������� � �������� ��� ������, ������� �� �� ������ ��������� ����������.
mload obj 25103
calcuid p251 25110 mob
attach 25109 %p251.id%
~
#25109
����������������~
0 j 100
~
wait 1
if (( %object.vnum% == 25103 ) && ( %actor.id% == %hero251.id% ))
  wait 1
  mpurge %object%
  say �������, ��� � ���, �� ��� ����%actor.q%!
  mecho ����� ���������� �� �������.
  say � ������� ������, ��� � ���� ������ ����.
  *say � ������� �� ������ ����� ����� ������ � ���� ���� � ���� �������,
  *say ���������� � ����� � ������� � �������� ���� ����� ����� � ����� ����������� ����.
  send %actor% %self.iname% �������� ��� ����� � ��������.
  eval temp %actor.gold(+4000)%
  wait 2s
  if ((%world.curobjs(25107)% < 2) && (%random.1000% <= 200))
    mload obj 25107
    mecho ����� ������ �� ����� ������.
    ���� all .%actor.name%
  end
  say �����, %actor.iname%, ������� ������, �������� � �������� ���������.
  mpurge %self%
else
  wait 1s
  say ������ � ���� ���?
  ���
  wait 1s
  ������� ������, ����� ����� �����!
  mkill %actor%
end
detach 25109 %self.id%
~
#25110
������������~
0 j 100
~
wait 1
switch %object.vnum%
  * ������
  case 25108
    say �������, ������ ������ ������ ��� �����.
    mecho �������� �������� � ����� ������, ��������� ��� �� ���� ������.
    say �� ����� ������� ��� ���� �������.
    %self.gold(+1000)%
    ���� 1000 ��� %actor.name%
    wait 1
    mpurge %object%
    wait 2
    if %world.curobjs(25109)% < 2
      mload obj 25109
      say �������� �����, ����� � ���� �� - ����� ����������.
      ���� ������ %actor.name%
    end
  break
  * ������
  case 25110
    wait 1
    mpurge %object% 
    say ��� ������� ������ ������ �������� �����.
    say ������, ��������� ������������, ��� ������ �� ��������� �������� �� ����.
    say �� �� ���� � �����, ������� ������ ������� �� ����� �����.
    wait 1s
    mecho �������� ������ ������ ����� �� ������ � ������ � ������� ����.
    wait 1s
    mforce %actor% ����
    mforce %actor% say �������� ��� ��������� � ��������, ����� ���� ���������� ����������.
    wait 1s
    mecho �������� ������� ����� %actor.rname% � ����� �����������.
    wait 1s
    say � ���� ����� ����, �� ���� ����� ������?
    mecho � ����� ������� �������� ������ �� ����� ����� � ��������.
    mload obj 25111
    ������� �����
    say ��� ���� � ����������. � ������ �� ����� �� � ���� ����.
    say � �� ��������� ������ ��� ���������� ������.
    say ������ ����, ������ �����.
    ���
    say ��������� ������ � ������� ���� ����� �������, ������ ���� �����.
  break
  default
    say  ����� ��� ���?
    eval getobject %object.name%
    if  %getobject.car% == ����
      *mpurge %object%
    else
      ����� %getobject.car%.%getobject.cdr%
    end
  break
done
~
#25111
�����������~
0 f 100
~
if %actor.vnum% != -1
  set killer %actor.leader%
else
  set killer %actor%
end
if ( %killer.id% == %hero251.id% )
  mecho ����� ����� ��������� ��������� ���� ����� �������.
  mecho ����� ������: ��������� ����� � ����� ������ ����� ����� ��� �� ��������!
  mecho ����� ������: �� ��������� ���� ���� �����, �� ������� ���� � ���� ������.
end
mload obj 25110
eval hero251 blank
if (%exist.mob(25107)%)
  calcuid z251 25107 mob
  remote hero251 %z251.id%
  detach 25106 %z251.id%
end
~
#25112
���������������~
0 r 100
~
wait 1
msend %actor% ��������� ������ ����:
msend %actor% - ������ ����, %actor.name%, �������� ����!
msend %actor% - � ���� ��������� ���� ����� ���� �� ��������������� ����� �� 10 ���.
~
#25113
������������������~
0 m 1
~
wait 1
if %amount% == 10
  msend %actor.name% ��������� ������ ������� � �����, ����� ��� ������� � ���.
  wait 1s
  msend %actor% �� ������� �� ����� ����� ���� � ��������� ������.
  mechoaround %actor% %actor.name% �����%actor.q% � ����� � ����������.
  mechoaround %actor% %actor.name% �����%actor.g% �� ����� � ����������.
  wait 1s
  mteleport %actor% 25065
  msend %actor% �� �������� �� ��������������� ����� � ������� �� �����.
  msend %actor% ��������� ������ ��������� � ����� � ������ �����.
  mechoaround %actor% %actor.name% �������%actor.g% � ������ ������ � ����� �� �����.
  mechoaround %actor% ��������� ������ ��������� � ����� � ������ �����.
  wait 1s
  mecho ���������-�������� ������� �����.
else
  msend %actor% ���-�� �� ��.
  msend %actor% � ������� ���������� �����, ������� ��� ���. 
  ���� %amount% ��� %actor.name%
end
~
#25114
������������~
0 f 100
~
if (%random.100% <= 25)
  mload obj 519
end
~
#25115
����� ���� ����������� �����������~
2 f 100
~
if %exist.mob(25107)%
  calcuid z251 25107 mob
  rdelete hero251 %z251.id%
end
if %exist.mob(25110)%
  calcuid knez 25110 mob
  rdelete hero251 %knez.id%
  detach 25101 %knez.id%
  detach 25102 %knez.id%
  detach 25111 %knez.id%
  attach 25111 %knez.id%
  attach 25101 %knez.id%
end
~
$~
