#12500
���� ��������� ~
0 r 100
~
if (%actor.clan% == ��)
  wait 1s
  msend %actor% _������� ������ ������� ���...
  mechoaround %actor% _������� ������, ������ ������� ������� � ������ %actor.rname% � ���� ����������� �������...
else
  switch %random.3%
    case 3
      ��� %actor.name%  
    break
    case 2
      ��� %actor.name%  
    break
    default
      msend %actor% _������� ������ ������� ������� �� ���.
      mechoaround %actor% _������� ������ ������� �� %actor.vname%. ������ ����-�� ��������� ������� �����.
    done
  end
~
#12501
����� ���������~
1 j 100
~
if %actor.clan% == ��
  halt
end
osend %actor% �������� �������� ������� ����� � ���� ���� ������� %self.vname% �� ����� ���.
wait 1
opurge %self%
~
#12502
������ ����-�����~
0 d 3
������� ��~
wait 1
if %actor.vnum% != -1
  halt
end 
say ��, ��������, ����� ��� �� ��� ��� ��? ������-�����...
wait 1
if %actor.bank% < 580
  ���
  say � �����-�� � ���� � ���... ��� ������ � �� ����������� ���� �� �����������.
  halt
end
eval buffer %actor.bank(-580)%
mload obj 12500
mload obj 12501
mload obj 12502
mload obj 12503
mload obj 12504
mload obj 12505
mload obj 12506
mload obj 12507
mload obj 12508
mload obj 12509
mload obj 12510
put all ���
say ������ � ������ ������������ ���� 
give all .%actor.name%
drop all
wait 1
say ������ ���%actor.g% ���� ������ - �� ������%actor.w% ���.
~
#12503
������� ����~
0 c 1
��������� ������� �������~
if !(%arg.contains(����)%) 
  msend       %actor% ��� �� ������� �������?
  return 0
  halt
end
if (%actor.clan% != ��)
  msend %actor% ������ ��� ��������� ����, ��� ������� ������ ������ ���.
  halt
end
switch %random.4%
  case 4
    msend %actor% _������ ��������, ������� �������� �������� � ������ � �������� �������.
    mechoaround %actor% _��� ���� %actor.name% ��������� ����� �������� ��� ������� � ������� � �������� �������.
    wait 1s 
    ��
    wait 1s
    �����
    wait 1s
    �����
    wait 1s
    ������
    halt
  break
  case 3
    msend %actor% _������ ��������, ������� �������� �������� � ������ ������ �����
    mechoaround %actor% _��� ���� %actor.name% ��������� ����� �������� ��� ������� � ������� �� ���� ���.
    wait 1s 
    ������� ��������, �������� ������ ������!
    ���
    halt
  break
  case 2
    msend %actor% _��� ���� ��� ������� ������� ������ � ������� ����� �������.
    mechoaround %actor% _������ %actor.name% ��������� ����� ��������� �������. ������ ���������� ���������.
    wait 1s 
    ����� ��������� ���� - ������ ��� �������. ��� � ��� �����, � � ���� ������� ��������.
    ������� %actor.name% 
    halt
  break
done
msend %actor% _�� ��������� ������� ���� �� ������ �������.
mechoaround %actor% _%actor.name% ��������%actor.g% ���� �� ������ �������.
wait 1s
������� ��, �� ������!
���
wait 1s
if (%world.curobjs(12523)% < 100)
  mecho _� ��� � ����� ��������� ������������ ����.
  mload obj 12523
  ���� ����
  mecho _������� �������� �������� �������� � ������� ��� �������.
end
~
#12504
�������� ����~
1 c 2
�������~
wait 1
if !%arg.contains(�������)%
  osend %actor% ��� ��� �� ��� ����� ���������?
  halt
end
osend %actor% �� ������� ����� �������� ��������� ������.
if %actor.clan% != ��
  halt
end
if %world.curmobs(12508)% > 50
  osend %actor% ...� ������ �� ���������!
  halt
end
oechoaround %actor% %actor.name% ��������� �����%actor.g% �� ���������� �������.
oload mob 12508
oecho ����� ��� ������ ����� ����������, � �����-�� ��������� �������� ������� �� ������ ����.
oforce %actor% �������� ������
wait 1
opurge %self%
~
#12505
������� ����~
0 c 1
��������~
wait 1
if %self.fighting%
  halt
end
if !%arg.contains(������)%
  msend %actor%  � ��� �� ������ �� ������ ����������?
  halt
end
if (%actor.clan% != ��) || (%actor% != %self.leader%)
  msend %actor% ��� �� ��� ������!
  halt
end
mecho ������ ������������� ����������, �������� ������� � ����.
mload obj 12510
give ������� .%actor.name%
wait 1
mpurge %self%
~
#12506
������ �������� � �����~
0 m 100
~
wait 1
if %amount% < 400
  wait 2
  say ��, �� ����� ������ ������� ������ ����!
  give %amount% ��� .%actor.name%
  halt
end
if %world.curobjs(12520)% >= 200
  wait 2
  say ��� ������ - ��� ���������.
  give %amount% ��� .%actor.name%
  halt
end
wait 2
say ���, ������
mload obj 12520
give ������ .%actor.name%
~
#12507
������ �������� � ������~
0 m 100
~
wait 1
if %amount% < 400
  wait 2
  say ��� �� ����� ������.
  give %amount% ��� .%actor.name%
  halt
end
if %world.curobjs(12521)% >= 200
  wait 2
  say � ���� ������ - ��� �������
  give %amount% ��� .%actor.name%
  halt
end
wait 2
say ������, ����� ���� �� ����� �����.
mload obj 12521
give ������ .%actor.name%
~
#12508
������ �������� � ���������~
0 m 100
~
wait 1
if %amount% < 400
  wait 2
  say �������� �����!
  give %amount% ��� .%actor.name%
  halt
end
if %world.curobjs(12522)% >= 200
  wait 2
  say ���� ��������, ���������!
  give %amount% ��� .%actor.name%
  halt
end
wait 2
say ���, �� �������� ���� � ���
mload obj 12522
give ������ .%actor.name%
~
#12509
������� ������~
0 c 100
~
eval popugaj %random.4%
if %popugaj% == 3
  msend _������ ��������, ������� �������� �������� � ������ � �������� �������.
  mechoaround _��� ���� %actor.name% ��������� ����� �������� ��� ������� � ������� � �������� �������.
  wait 1s 
  ��
  wait 1s
  �����
  wait 1s
  �����
  wait 1s
  ������
elseif %popugaj% == 2
  msend _������ ��������, ������� �������� �������� � ������ ������ �����
  mechoaround _��� ���� %actor.name% ��������� ����� �������� ��� ������� � ������� �� ���� ���.
  wait 1s 
  ������� ��������, �������� ������ ������!
  ���
elseif %popugaj% == 1
  msend _��� ���� ��� ������� ������� ������ � ������� ����� �������.
  mechoaround _������ %actor.name% ��������� ����� ��������� �������. ������ ���������� ���������.
  wait 1s 
  ����� ��������� ���� - ������ ��� �������.  ��� � ��� �����, � � ���� ������� ��������.
  ������� %actor.name% 
else �����
end
~
#12510
����� �� �������~
2 c 1
����� ���������� �����������~
if !%arg.contains(�������)%
  wsend %actor% ���� �����?
  halt
end
wechoaround %actor% %actor.name% ������ �����������%actor.g% �� �������.
wteleport %actor% 12522
wechoaround %actor% %actor.name% �������%actor.y% �� ������� ������.
wsend %actor% �� ������ ���������� ����
~
#12511
����� �����~
2 c 1
����� �����������~
if (!%arg.contains(�����)% && !%arg.contains(�������)%)
  wsend %actor% ���� �����?
  halt
end
wechoaround %actor% %actor.name% ��������� ������ �����%actor.y% �� ������.
wteleport %actor% 12511 
wechoaround %actor% %actor.name% ����� ������%actor.y% �� ��������.
wsend %actor% �� ������ ����������� �� ������� �����
~
$~
