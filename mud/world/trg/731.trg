#73100
���� � ������~
0 q 100
~
wait 2s
emot ����������� �������� �� ��� ��-��� ��������� ������
if (%actor.class% != 13 ) || (%actor.level% < 28 )
  wait 3
  emot ���������� � ������ � �������� ���������� � ������ ������ ��������
  wait 3s
  say ��� �� ���� �����...
  mecho _- ��� ������� ����� - �������� ���� ������� ���... 
  mecho _- ���, ��� �� ������ ��, ����� ��������� �������� ������.
  wait 2s
  say � �� ���� �� ��������� ���� ���, ����� � ������� ������.
  attach 73122 %self.id%
  halt
end
emot ���� ������� ���������
wait 1s
say ��� �����, �� ���� � ����� ���� ����...
mecho _- ����������� ���������� ����� ���� � ����, ����� � �����.
wait 2s
say ������������...
say ������ ��������, ��� � ����� �� ���� �����?
attach 73121 %self.id%
~
#73101
� ��� � �������� ����������~
0 p 40
~
msend %damager% �� �� ������ ��������� ����� ��������� ���������!
mechoaround %damager% %damager.name% �� ����%damager.g% ��������� ����� ��������� ���������!
~
#73102
����� � ���� ����~
2 c 1
������� �����~
if !%arg.contains(�����)% && !%arg.contains(�����)%
  wsend %actor% _���� ��� �� ������� ���������?
  return 0
  halt 
end
wait 1
wsend %actor% _�� ������� � ���� ����!
wechoaround %actor% _%actor.name% ������%actor.q% � ���� ����!
wteleport %actor% 73180
wsend %actor% _�� ������ ������ �����, ��� ������ �����!
wechoaround %actor% _���-�� �������� ����� � ����.
end
~
#73103
� ��� � ���������� ������~
0 k 70
~
*����� ����������
eval target %random.pc%
msend %target% ����� ����� ������� �� ������ ���� �������! 
mechoaround %target% ��������� �����, ���������� ������� ����� ����� � ��� %actor.rname%!
mdamage %target% 50
%target.position(6)%
%target.wait(3)%
~
#73104
����� �����~
2 c 100
������������~
if !%arg.contains(�����)% 
  wsend %actor% _��� ��� �� ������������ ���������!?
  return 0
  halt 
end
if %exist.mob(73101)%
  wsend %actor% �� ���������� �������� ����� �����, �� ������ ����� ����� �������� ��� �����!
  halt
end
wsend %actor% _������������, �� �������� ����� �����.
wechoaround %actor% _%actor.iname% �������%actor.g% ����� �����.
wteleport %actor% 73114
wsend %actor% _����������� �����, �� ��������� �� ������ ������.
wechoaround %actor% _���-�� ������� ����.
~
#73105
����� �����(�������)~
2 c 100
������������~
if !%arg.contains(�����)% 
  wsend %actor% _��� ��� �� ������������ ���������!?
  return 0
  halt 
end
wsend %actor% _������������ �� �������� ����� �����.
wechoaround %actor% _%actor.name% ������%actor.q% ����� �����.
wteleport %actor% 73111
wsend %actor% _�� ������������ ����� � ��������� �� ������ ������.
wechoaround %actor% _���-�� ������� ����. 
end
~
#73106
�� ������� ��� ���������~
2 e 100
~
*���� � ���� �������� ������ 23, ������ � ��
if %actor.dex% > 22
  wait 1
  wsend %actor% _����� ����� ������ �������� ������, ����� ����, ��� �� �� ���������!
else
  wait 1
  wsend %actor% _����� ����� ���� ����������� ������!
  wsend %actor% _���������� ������, �� �������� � ��������� ��������!
  wat 73132 wecho ���-�� �������� ����.
  wteleport all 73132
end
~
#73107
����������� ������~
2 c 100
���������~
*������� ���������� ����, ������ �� ����� ��� ����� ������.
if !%arg.contains(������)% 
  wsend %actor% _��� ��� �� ��������� �����������!?
  return 0
  halt 
end
wsend %actor% _�� ������ ��������� ������, ������ �� �� ����� ��� �������������!
wechoaround %actor% _%actor.name% ������ ��������%actor.q% ������.
wait 1s
calcuid forroom 73128 room
detach 73106 %forroom%
calcuid forroom 73129 room
detach 73106 %forroom%
calcuid forroom 73130 room
detach 73106 %forroom%
detach 73107 %self%
~
#73108
�� ������~
2 c 100
��������~
if !%arg.contains(������)% 
  wsend %actor% _��� ��� �� �������� ���������!?
  return 0
  halt 
end
wsend %actor% _������������ �� �������� � �������������.
wechoaround %actor% _%actor.name% �������%actor.g% �� ������.
wteleport %actor% 73138
wsend %actor% _�� ������������ �� ������.
wechoaround %actor%  _���-�� ������� ����. 
end
~
#73109
������� � ������~
2 c 100
��������~
if !%arg.contains(�����)% 
  wsend %actor% _��� ��� �� �������� ���������!?
  return 0
  halt 
end
wsend %actor% _������������ �� �������� � �������������.
wechoaround %actor% _%actor.name% �������%actor.q% � ������.
wteleport %actor% 73137
wsend %actor% _�� ������������ �� ������ �������.
wechoaround %actor% _���-�� ������� ����. 
end
~
#73110
����� ������~
0 k 100
~
if %self.hitp% < 500
  mecho _�������� ������ ���� ������ �������� � ����� ����.
  mecho _�������� ������ ������� ������ ��������.
  mecho _�������� ������ �����.
  mteleport %self% 73147
  detach 73110 %self.id%
  dg_cast '�������' %self.name%
end
~
#73111
����� ������~
0 k 100
~
if %self.hitp% < 750
  mecho _�������� ������� ���� ������ �������� � ����� ����.
  mecho _�������� ������� ������� ������ ��������.
  mecho _�������� ������� �����.
  mteleport %self% 73147
  detach 73111 %self.id%
  dg_cast '�������' %self.name%
end
~
#73112
���� �������~
0 f 100
~
if (%random.100% < 21)
  mload obj 813
  mload obj 813
  mload obj 813
end
~
#73113
����� �����~
0 k 100
~
if %self.hitp% < 350
  mecho _�������� ���� ���� ������ �������� � ����� ����.
  mecho _�������� ���� ������� ������ ��������.
  mecho _�������� ���� �����.
  mteleport %self% 73147
  detach 73113 %self.id%
end
~
#73114
����� ������~
0 k 100
~
if %self.hitp% < 550
  mecho _������� �������� ���� ���� ������ �������� � ����� ����.
  mecho _������� �������� ���� ������� ������ ��������.
  mecho _������� �������� ���� �����.
  mteleport %self% 73147
  detach 73114 %self.id%
  dg_cast '�������' %self.name%
end
~
#73115
����� �����~
0 k 100
~
if %self.hitp% < 780
  mecho _����������� ����� ���� ������ �������� � ����� ����.
  mecho _����������� ����� ������� ������ ��������.
  mecho _����������� ����� �����.
  mteleport %self% 73147
  detach 73115 %self.id%
  dg_cast '�������' %self.name%
end
~
#73116
������� � ������~
2 c 100
��������~
if !%arg.contains(����)% 
  wsend %actor% _���� ��� �� �������� ���������!?
  return 0
  halt 
end
wsend %actor% _��������������� � ����������� ����� �����, �� �������� � �������������.
wechoaround %actor% _%actor.name% ��������%actor.q% � ������ � �������������.
wteleport %actor% 73153
wsend %actor% _�������� �������� ���������, �� ����� ������ ���������� � �����!
wechoaround %actor% _���-�� �������� ����� � ����!
if (%actor.hitp% > 10)
  eval %actor.hitp(10)%
end
~
#73117
���� ��� ������� �����~
0 k 40
~
mecho _�������� ������� ������� �� ������ ���� �������!
mecho _������ ��������� � �������!
foreach ch %self.char%
  if %random.2% == 1
    msend %ch% _� ��� ������ ������!
    mechoaround %ch% _������ ������� %ch.rname%
    mdamage %ch% %random.150%
  end
done 
~
#73118
� ��� � ����������� ������~
0 k 50
~
set char %random.pc%
msend %char% _����������� ���� � ����� ������ �� �����!
%char.position(6)%
%char.wait(4)%
mechoaround %char% _&W����������� ���� ������ �� ����� � ����� ���������� ��� ������ %actor.rname%!&n
~
#73119
���� ������� ������~
0 f 100
~
if (%random.4% == 2) && (%world.curobjs(73192)% < 1)
  mload obj 73192
end
~
#73120
�����~
2 f 100
~
calcuid deletetrig 73109 mob
detach 73110 %deletetrig.id% 
attach 73110 %deletetrig.id% 
calcuid deletetrig 73110 mob
detach 73111 %deletetrig.id%
attach 73111 %deletetrig.id%
wait 1
calcuid deletetrig 73111 mob
detach 73113 %deletetrig.id%
attach 73113 %deletetrig.id%
calcuid deletetrig 73112 mob
detach 73114 %deletetrig.id%
attach 73114 %deletetrig.id%
wait 1
calcuid deletetrig 73113 mob
detach 73115 %deletetrig.id%
attach 73115 %deletetrig.id%
calcuid deletetrig 73115 mob
detach 73117 %deletetrig.id%
attach 73117 %deletetrig.id%
wait 1
calcuid deletetrig 73116 mob
detach 73118 %deletetrig.id%
attach 73118 %deletetrig.id%
calcuid deletetrig 73125 mob
detach 73119 %deletetrig.id%
attach 73119 %deletetrig.id%
wait 1
calcuid fromid 73131 room
detach 73107 %fromid.id%
attach 73107 %fromid.id%
calcuid fromid 73128 room
detach 73106 %fromid.id%
attach 73106 %fromid.id%
wait 1
calcuid fromid 73129 room
detach 73106 %fromid.id%
attach 73106 %fromid.id%
calcuid fromid 73130 room
attach 73106 %fromid.id%
detach 73106 %fromid.id%
wait 1
calcuid druid 73129 mob
detach 73121 %druid.id%
detach 73122 %druid.id%
rdelete qoestor731 %druid.id%
~
#73121
����� ������ "��"~
0 d 1
�� ���� �������� �������~
wait 1
if ( %actor.class% != 13 || %actor.level% < 28 ) && (%actor.id% != %questor731.id%)
  emot ������ �������� �� ��� � ����� ��������� � �����
  halt
end
%actor.wait(10)%
wait 1s
emot ��������� � ������
wait 3s
say ��� ������� ������...
mecho _- ���� ������� ���, ��� �������. ��� ������ ���� �����, ������ ���������� �������.
mecho _- ������ ���� ������ ��� �� ���, ��� ����� ��� - � �����...
mecho _- �� ��������� ��� ���� ������.
emot ���������� � ������ � ������ ������� �����
wait 2s
say ����� ����� ��� ������ ������ �� �� ����� ��� ��...
wait 2s
emot ��� �� ���� ��������� � ����� ������� ������ ���������� �������� � ����� �����
say �� ��� �����, ����� �� ��� �� �� ���� ����, ��������� ���� ���
wait 4
emot ������ �����-�� �������� ���� � ����� ����� �������� ����� ���������
say ���� ��� ����� �������� ��� ��...
mecho __________________��� �� ��������, ��� ��� ����������
mecho ________________ ���� � ������� ����, � ��� ������ �����
mecho ________������ ������������ �� ���� ��������� ������ ������� ������.
wait 1s
mecho __���������� ������ �����, ������ �� ���� �������� ������ ����
say ����� � �����, ����� � ���� - ��, �� ���� �������� ���� ���...
mecho _- ����� ������� ����� � ���� ���� ����������.. 
wait 2
say ����� ������� � ���� ��� ����
mecho ___________ \&C==== \&W����� ������� �������� ��� � ��� ������ ������� \&C====\&n
foreach ch %self.pc%
  if %ch.rentable%
    mteleport %ch% 73105 horse
  end
done
detach 73100 %self.id%
detach 73121 %self.id%
detach 73122 %self.id%
~
#73122
������ ���� ����~
0 j 100
~
wait 1
if %object.vnum% < 200
  ���
  drop all
  halt
elseif (%object.vnum% > 221 ) && (%object.vnum% < 226 )
  emot ��������� �� %object.vname%
  wait 3
  ����
  ���� ��� .%actor.name%
  say �������� �������...
  ���
  emot ��������� � ������ ���� �����
  halt
elseif (%object.vnum% > 200 ) && (%object.vnum% < 245 )
  wait 1
  emot ��������� �� %object.vname% � ������ ���������
  wait 1
  mpurge %object%
  wait 2s
  say ��� �����, � �� ���-�� ��������� � ����� ���...
  wait 2s
  mecho _- ������ �������� ��� ������� �� ���� �����?
  emot ������ ������� ���� �� �������� ������ �������
  set questor731 %actor%
  global questor731
  attach 73121 %self.id%
  detach 73122 %self.id%
~
#73123
r�������� �����~
0 k 15
~
set target %random.pc%
dg_cast '��� �����' target
~
#73124
��� � �������� ������~
0 k 10
~
mecho ������� ������ ������ ���� � �������� ����������!
switch %random.3%
  case 1
    mload mob 73126
  break
  case 2
    mload mob 73127
  break
  case 3
    mload mob 73128
  break
done
~
#73125
������ ���������~
0 f 0
~
mecho &W�������� ��������� ����������� ��������� �����, � �� ���� ������������ ����� �����!&n
mload mob 73130
mload mob 73130
mload mob 73130
~
#73126
� ��� � ����������� ������.~
0 k 25
~
set target %random.pc%
mechoaround %actor% ���������� ������ �������� ����� � ������� ����� ���� %target.vname% � �������!
msend %actor% ���������� ������ �������� ����� � ������� ����� ��������� �� ���!
mteleport %target% 73125
%target.wait(2)%
~
#73127
��������� ������� ������~
0 k 20
~
set target %random.pc%
dg_cast '��� ���' %target.name%
dg_cast '��� ���' %target.name%
~
#73128
�������� ������� �����~
0 k 30
~
set target %random.pc%
dg_cast '��� ����' .%target.name%
dg_cast '��� ����' .%target.name%
dg_cast '��� ����' .%target.name%
~
$~
