#29300
����� � ������~
2 c 0
����� �������~
if !(%arg.contains(������)%) 
  wsend       %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
wsend       %actor% �������� �� ����� ����, �� ������� � ������ ������.
wechoaround %actor% _%actor.name% �����%actor.q% � ������ ������, �������� �� ����� ����.
wait 1s
wsend %actor% - �� ��������� �� ��� �������� ������.
wteleport %actor.name% 29352
wechoaround %actor% ���-�� ����� � ������.
calcuid ptenec 29309 mob
attach 29305 %ptenec.id%
exec  29305 %ptenec.id% 
~
#29301
����� �� ������~
2 c 0
����� �������~
if !(%arg.contains(�����)%) 
  wsend       %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
wsend       %actor% ��������� �������� �� ����� ����, �� ������� �����.
wechoaround %actor% %actor.name% �����%actor.q% �����, ��������� �������� �� ����� ����.
wait 1s
wsend %actor% - �� ��������� �� �������� ������� �����.
wteleport %actor.name% 29330
wechoaround %actor% ���-�� ����� �� �������� ������.
~
#29302
����� � �����~
2 c 0
����� �������~
if !(%arg.contains(�����)%) 
  wsend       %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
wsend       %actor% ���������� � ��� ��������, �� ������� � �����.
wechoaround %actor% %actor.name% �����%actor.q% � �����, ���������� � ��� ��������.
wait 1s
wsend %actor% - �� ��������� � ������ ���������� ������ ����.
wteleport %actor.name% 29353
wat 29353 wechoaround %actor% ���-�� ������ � �����.
calcuid starichok 29310 mob
attach 29308 %starichok.id%
exec  29308 %starichok.id% 
~
#29303
����� �� �����~
2 c 0
����� �������~
if !(%arg.contains(�����)%) 
  wsend       %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
wsend       %actor% ���������� � ��� ��������, �� ������� �� �����.
wechoaround %actor% %actor.name% �����%actor.q% �� �����, ���������� � ��� ��������.
wait 1s
wsend %actor% - �� ��������� �� �������� ������� �����.
wteleport %actor.name% 29332
wat 29332 wechoaround %actor% ���-�� ����� ���� �� ����� ����.
~
#29304
���� ��������~
0 r 100
~
if %self.fighting%
  halt
end
wait 1s
mecho   ���� �������� � ������� ������, �� ������� �� ��� ��������.
~
#29305
������ �����~
0 z 100
~
wait 3s
switch %random.4%
  case 1
    mecho ������ ��������: "�� ������� ��� ���� �������? ��-��-��!"
  break
  case 2
    mecho ������ ��������: "����� � �������, � ����� �����!"
  break
  case 3
    mecho ������ ��������: "���� ����! ������� �� ��� ������-������ ��������!"
  break
  case 4
    mecho ������ ��������: "��� ������� ��� �������� � ��� � ������� ������!"
  break
  default
  break
done
calcuid ptenec 29309 mob
detach 29305 %ptenec.id%  
end
~
#29306
������ ���� ����~
0 j 100
~
wait 1
if %object.vnum% == 29301
  wait 1
  mpurge %object%
  wait 1s
  mecho ������ � ������ ���������� �� ������� ����.
  wait 3s
  msend %actor% - ����������! � ��� ����??? ���� ���� ���-������ �������������.
  wait 2s
  mecho ������ ����� ������ � ����� ������, ���-�� ���������.
  wait 4s
  if %world.curobjs(29308)% > 10
    ���
    wait 1s
    ��� �������� �������.
    msend %actor% - ������. �� ����� ������. ����� � ���� ����� ����?
    wait 2s
    mecho ������ ����� ����.
    wait 1s
    mecho ��� ����� �����.
    mdamage %actor% 20
    wait 2s
    msend %actor% - �����������? �������� ��� ��������� - �������.
    halt
  end
  ���
  msend %actor% - ������, ������! ��� ���-������, �� �����!
  wait 2s
  mecho ������ ��������� ���������� �� ����� ������ � � ������� �������.
  mload obj 29305
  wait 4s
  ���
  msend %actor% - �� ���, �����!
  wait 2s
  ��� ����� %actor.name%
end
~
#29307
����� ���� ��� ��� ������~
0 j 100
~
wait 1
if %object.vnum% != 29309
  ���
  say ����-���� ���� ����?
  drop %object.name%
  halt
end
wait 1
mpurge %object%
wait 2s
msend %actor% - � ��� � ������ � ��� �������?
wait 1s
mecho ���� ��������� � ����� ������� ���.
wait 1s
msend %actor% - � �������, �������! �� ������ ������ ��� ����!
msend %actor% - ������, ������ ������, ������ �� ��� ����!
wait 1s
mecho ���� ����� ����� ���� ���� �������.
wait 1s
mecho ���� �������� ��������� ���� � ������ ����.
wait 1s
mload obj 29308
��� ��� %actor.name%
���
wait 1s
msend %actor% - ������-�� �� ����� �� ����� ����?
~
#29308
����������� ��������~
0 z 100
~
wait 2s
msend %actor% �������� ��������� �������� ��  ���.
mechoaround %actor% �������� ��������� �������� �� %actor.vname%
wait 1s
msend %actor% - ����������� ���� � ���� ����!
msend %actor% - �� ������ �� ��������� ������ ������ ���?
msend %actor% - ���� � ���� � �� � ��������� ������� ������ �� ����� ����.
msend %actor% - ������� �������� ���� ������, ��� ����� �� ���� �������.
msend %actor% - ����� �����, ��� � ��� ��� � �� ������ �� ���� ��������� ���� �����.
wait 1s
���
~
#29309
������� �������� ����~
0 d 0
����~
wait 1s
mecho �������� ������� � ������� �� �������.
wait 1s
msend %actor% - ������ ��������, ��� � �������� �� ������� ���������.
wait 2s
mecho ��������, ����� ���, �������� ����������� �������� ��������� �� ������� �������.
wait 2s
mecho �������� �������� ������, ������� ������ � �������� � �������� ���.
msend %actor% - �� ��� �����, �� ������ �� �������!
mload obj 29307
��� �������� %actor.name%
wait 3s
mecho �������� �������� ����� �� ����� � ����-�� ����.
mpurge %self%
calcuid starichok 29310 mob
detach 29308 %starichok.id%  
~
#29310
����������� ��������~
0 r 100
~
wait 1s
msend %actor% ������� ���������� ��������� ��  ���.
mechoaround %actor% ������� ���������� ��������� �� %actor.vname%
wait 1s
msend %actor% - ������ ����! � ��� ������ ������� ���������� ��������� ����?
msend %actor% - �� ������� ������� ������? �� ������� ����� �� �������,
msend %actor% - ����� � ���� � ���� ������.
wait 1s
���
wait 3s
msend %actor% - ����, ����....� �� �������, ��?
msend %actor% - � ������, ���� ������� ���������� �����, 
msend %actor% - � �� ����� ���� ������� ��� �� ���� ��� � ����.
~
#29311
�������� ���� �����~
0 j 100
~
wait 1
if %object.vnum% == 29305
  wait 1
  mpurge %object%
  wait 2s
  msend %actor% - �, ����� ������� �����, �� ��� ������ �������� ���.
  wait 2s
  mecho ������� �������� �������� �����.
  mload obj 29309
  wait 1s
  ���
  wait 1s
  msend %actor% - �� ���, �����! �������� ��� ���������!
  wait 2s
  ��� ��� %actor.name%
  wait 2s
  msend %actor% - ������ ������ ��� ���� ���� �������� ��������,
  msend %actor% - � ���� ��� ������ �����������.
  wait 1s
  mecho ������� ��������� ������ ������.
end
~
#29312
����������� �����~
0 r 100
~
wait 1s
msend %actor% ���� ��������� ��������� �� ���.
mechoaround %actor% ���� ��������� ��������� �� %actor.vname%
wait 1s
msend %actor% - �� ���� ������ ������ ����?
msend %actor% - �� ����� ����� ����������, � ���������! � �� ���� ����� ������!
���
wait 1s
msend %actor% - �� ��� ����, � � ���� ���� ����� �����-������ ��� ���������.
~
#29313
����������� ����������� �����~
1 j 100
~
osend  %actor% ������ �� ���� ������ ������������ � ������������ �����.
~
#29314
���-�� ������~
2 e 100
~
wait 1
switch %random.4%
  case 1
    wsend %actor% ��������� ������ ���� � �������� ���� � ������ ������ ���!
    wechoaround %actor% ��������� ������ ���� � �������� ���� � ������ ������ %actor.vname%!
    wdamage %actor% 5
  break
  case 2
    wsend %actor% ������ ��� ���� � �������� ���� � ������ ������ ���!
    wechoaround %actor% ������ ��� ���� � �������� ���� � ������ ������ %actor.vname%!
    wdamage %actor% 10
  break
  case 3
    wsend %actor% ������� ����� ����� � �������� ���� � ������ ������� ���!
    wechoaround %actor% ������� ����� ����� � �������� ���� � ������ ������� %actor.vname%!
    wdamage %actor% 15
  break
  default
  break
done
end
~
#29315
������ ����� ��� � ������~
0 k 33
~
switch %random.20%
  case 1
    msend %actor% ������� ����� ������ ��� ������ ����� � �������!
    mechoaround %actor% ������� ����� ������ ������ %actor.vname% ����� � �������!
    mdamage %actor% 20
  break
  case 2
    msend %actor% ������� ����� ������ ��� ������ ����� � ����!
    mechoaround %actor% ������� ����� ������ ������ %actor.vname% ����� � ����!
    mdamage %actor% 15
  break
  case 3
    msend %actor% ������� ����� ������ ��� ������ ����� � �����!
    mechoaround %actor% ������� ����� ������ ������ %actor.vname% ����� � �����!
    mdamage %actor% 10
  break
  case 4
    msend %actor% ������� ����� ������ ��� ������ ����� � ����!
    mechoaround %actor% ������� ����� ������ ������ %actor.vname% ����� � ����!
    mdamage %actor% 5
  break
  default
  break
done
end
~
#29316
������� ����~
0 f 100
~
if (%world.curobjs(29303)% < 10) &&  (%random.2% == 1)
  mload obj 29303
end
~
$~
