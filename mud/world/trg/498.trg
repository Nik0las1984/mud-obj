#49800
����������� ����������~
0 r 0
~
wait 1
if (%actor.clan% ==���)
  if (%actor.clanrank% >= 8)
    msend %actor% ��� ���� ���, �������� ��������� � �������.
    mechoaround %actor% ��� ���� %actor.name%, �������� ��������� � �������.
  else
    switch %ramdom.4%
      case 1
        ���� %actor.name% "������ ��� ����, %actor.name%"
      case 2
        ������ %actor.name%
    done
  endif
else
  msend %acto.namer% �������� ����� ��������� �� ���.
  mechoaround %actor.name% �������� ����� ��������� �� %actor.name%.
endif
~
#49801
������ ���������~
0 d 100
������~
wait 1
say ����� �������� �������. �����, ������ � ����. ������ ������ �� �����!
mteleport %actor% 49818
~
#49802
��������~
2 c 100
������~
halt
wait 1
if (%actor.vnum% != -1)
   halt
end
if %arg.contains(�������)%
  eval roomtel 4000+%random.61%
  wait 1
  wsend %actor% ��� ��������� ��������� ����� � ����� ��� � ��������� �����������.
  wechoaround %actor% %actor.name% ����� � ��������� �����.
  wteleport %actor.name% %roomtel%
  wforce %actor.name% ��������
  wsend %actor% ������ ���������, ����� ��������� ���������� ������������.
  wechoaround %actor% ���������� ������ ������� %actor.rname% � ������.
  eval hit %actor.hitp% + 15
  wdamage %actor% %hit%
  halt
end
if %arg.contains(�������)%
  eval roomtel 27000+%random.69%
  wait 1
  wsend %actor% ��� ��������� ��������� ����� � ����� ��� � ��������� �����������.
  wechoaround %actor% %actor.name% ����� � ��������� �����.
  wteleport %actor.name% %roomtel%
  wforce %actor.name% ��������
  wsend %actor% ������ ���������, ����� ��������� ���������� ������������.
  wechoaround %actor% ���������� ������ ������� %actor.rname% � ������.
  eval hit %actor.hitp% + 15
  wdamage %actor% %hit%
  halt
end
if %arg.contains(��������)%
  eval roomtel 33060+%random.6%
  wait 1
  wsend %actor% ��� ��������� ��������� ����� � ����� ��� � ��������� �����������.
  wechoaround %actor% %actor.name% ����� � ��������� �����.
  wteleport %actor.name% %roomtel%
  wforce %actor.name% ��������
  wsend %actor% ������ ���������, ����� ��������� ���������� ������������.
  wechoaround %actor% ���������� ������ ������� %actor.rname% � ������.
  eval hit %actor.hitp% + 15
  wdamage %actor% %hit%
  halt
end
wsend %actor% ��������� ����� ���� �� ������� ��� � �����!
wsend %actor% ���������� ���� ����! ��� � ������� �������.
wechoaround %actor% ��������� ����� ���� �� ������� %actor.name% � �����.
~
#49803
������� �������~
0 m 1
~
wait 1
��� %actor.name%
halt
if %amount% < 20
  msend %actor.name% �� ����� ������ � ���� ������� �� ��������!
  halt
endif
switch %amount%
  case 20
    mecho ������� ������� ������.
    dg_cast '��������� ���������' %actor.name%
    break
  case 50
    mecho ������� ������� ������.
    dg_cast '������' %actor.name%
    break
  case 60
    mecho ������� ������� ������.
    dg_cast '�������������' %actor.name%
    break
  case 70
    mecho ������� ������� ������.
    dg_cast ����' %actor.name%
    break
  case 80
    mecho ������� ������� ������.
    dg_cast '�����' %actor.name%
    break
  default
    msend %actor% ��������, �� � �� ���� ��� �� ������ �� ���� �� ��� ������.
    msend %actor% ��� ��� � ���� ������� ��� ���:
    msend %actor% 20 ��� - ��������� ���������.
    msend %actor% 50 ��� - ������.
    msend %actor% 60 ��� - �������������.
    msend %actor% 70 ��� - ����.
    msend %actor% 80 ��� - �����.
done
~
#49804
����� �����~
1 g 100
~
wait 1
if %actor.clan% == ���
  halt
endif
osend %actor% ��������� ����� � ����� ����� �������� � ��� �� ���������� ���������.
~
#49805
����� �������~
1 g 100
~
wait 1
if %actor.clan% == ���
  halt
endif
osend %actor% ������� ��������� �� ����� ���.
opurge �������
~
#49806
����� ����~
1 g 100
~
wait 1
if %actor.clan% == ���
  halt
endif
%purge% %self%
~
#49807
� ������~
2 e 0
~
if %actor.clan% == ���
  halt
endif
if %actor.level% < 31
  halt
endif
wsend %actor% ��� ��� ���� ����������.
wait 1s
wsend %actor% � �� ��������� � ������.
wait 1s
wsend %actor% ��� ��� ���. �� ����� ������ ���� �� �������!.
~
#49808
���� ����~
1 c 2
����������~
wait 1
if !%arg.contains(������)%
osend %actor% ��� ������� ������?
halt
end
if %actor.clan% != ���
halt
end
if %world.curmobs(49870)% > 50
osend %actor% ...� ������ �� ���������!
halt
end
oload mob 49870
osend %actor% �� ���������� ���� ����� ������.
oechoaround %actor% %actor.name% ���������%actor.g% � ������ ������ ������.
oecho _���� ����� ������ ����� � ����� �������.
oecho _�������� ��� ��������� � �����, ������ ���� �� ���!
oforce %actor% �������� ���
wait 1
opurge %self%
~
#49809
��������� ����~
0 c 100
���������~
wait 1
if %self.fighting%
halt
end
if !%arg.contains(����)%
msend %actor% _���� �� ������ ���������?
halt
end
if %actor.clan% != ���
msend %actor% _�� ���������� ��������� ����! � ��� �� ����� ��� ��?
msend %actor% _��� ���� �� ������� ��� ��� ����!
mechoaround %actor% %actor.name% �������%actor.u% ��������� ����! ����� - ������� �� �������...
mechoaround %actor% _��� ���� �� �������  %actor.dname% ����!
eval dmg %actor.hitp%/5
mdamage %actor% %dmg%
halt
end
msend %actor% �� ��������� ���� �� ������ �����.
mload obj 49851
give ���� .%actor.name%
wait 1
mecho _��� �������� �������� � ������.
wait 1
mpurge %self%
~
$~
