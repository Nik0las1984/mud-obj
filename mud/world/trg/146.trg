#14600
������������~
1 c 100
�������~
wait 1
if !%arg.contains(���������)%
  osend  %actor% ��� �� ������ ���������?
  halt
end
osend %actor% �� ��������� ���������.
if %actor.clan% != ���
  halt
end
if %world.curmobs(14600)% > 50
  osend %actor% ...� ������ �� ���������!
  halt
end
oechoaround %actor% %actor.name% ��������%actor.g% ���������.
wait 1s
oload mob 14600
oecho ��������� ���� ����� � ����� ���� �������� ������� �������.
oforce %actor% �������� �����
wait 1
opurge %self%
~
#14601
���������������������������~
0 c 100
�������~
if  (%actor% != %self.leader%)
  msend %actor% ��� �� ��� ������.
  halt
end
mechoaround %actor% %actor.name% ������ ������%actor.g%.
msend %actor% �� ������ ������� ����� � ����.
mload obj 14601
���� ����� .%actor.name%
wait 1s
mecho ������� ������� ��������� �� ����� ������.
wait 1
mpurge %self%
elseif (%actor.clan% != ���)
mechoaround %actor% %actor.name% �������%actor.u% �������, �� ���� ��� � ������� � �������.
msend %actor% �� ���������� �������, �� ���� ���� ��� � ������� � �������.
end
~
#14602
������������~
2 c 100
����������~
if !(%arg.contains(������)%)
  wsend       %actor% ���� ��� �� ������ ����������???
  halt
end
wsend %actor% �� ���������� �� �������� � ������.
wechoaround %actor% %actor.name% �������%actor.u% � ������.
wteleport %actor% 14646
wechoaround %actor% ���-�� ��������� � ������.
end
~
#14603
�������������~
1 gj 100
~
if (%actor.clan% == ���)
  halt
end
osend %actor% %self.name% ��������%self.u% � ����� �����.
oechoaround %actor% %self.name% ��������%self.u% � ����� %actor.rname%.
wait 1
opurge %self%
~
#14604
�����������������~
2 c 100
���������~
if !%arg.contains(�����)%
  wsend %actor%  ���� ��� �� ������ ���������???
  halt
end
wsend %actor%  �� ��������� �� ��������.
wechoaround %actor%  %actor.name% ������%actor.u% �� ��������.
wait 1s
wsend %actor.name%   �� ��������� ������ ����� ���������!
wteleport %actor.name% 14645
wechoaround %actor%  ���-�� �������� �� �������� � �����.
end
~
#14605
������������������~
2 c 100
�����������~
if (!%arg.contains(����)% || !%arg.contains(�������)%)
  wsend  %actor% ����?
  halt
elseif %actor.clan% == ��� && %actor.realroom% != 14663 && %actor.realroom% != 14666 && %actor.realroom% != 14602 && %actor.realroom% != 14681
  wsend %actor%  �� ����� ����������� ���� �������.
  wechoaround %actor%  %actor.name% �������� �����%actor.u% �� ����.
  eval room %random.4%
  switch %room%
    case 1
      wteleport %actor% 14663
    break
    case 2
      wteleport %actor% 14666
    break
    case 3
      wteleport %actor% 14602
    break
    case 4
      wteleport %actor% 14681
    break
  done
  wechoaround %actor%  ���-�� ������%actor.u% �� ��������.
elseif %actor.realroom% != 14663 && %actor.realroom% != 14666 && %actor.realroom% != 14602 && %actor.realroom% != 14681
  wsend %actor%  �� ����� ����������� ���� �������.
  wechoaround %actor%  %actor.name% �������� �����%actor.u% �� ����.
  eval room %random.4%
  switch %room%
    case 1
      wteleport %actor% 14663
    break
    case 2
      wteleport %actor% 14666
    break
    case 3
      wteleport %actor% 14602
    break
    case 4
      wteleport %actor% 14681
    break
  done
  wechoaround %actor%  ���-�� ������%actor.u% �� ��������.
  calcuid dozor 14610 mob
  exec 14611 %dozor.id%
end
~
#14606
���������������~
0 c 100
�����~
wait 1
%echo% ��� ���� ���...
~
#14607
&Y�������&n �������~
1 t 100
~
wait 1s
if %random.2% == 1
  oecho _������� &K���� &n������������ � &y�����&n - &W������ �������&n - ������ &R������&n.
else
  oecho _&K����&n ����������, �� &g�������������&n ��� &K���-��&n ������������ �� ����� ������, ������� &Y���������� &g�����&n ����������� � ����.
end
~
#14608
���� � ������~
2 e 100
~
wait 2
%send% %actor% ���������� ��������, �� ������� ������� � ����� � ������.
~
#14609
������ �������~
0 j 100
~
wait 3
%echo% %self.iname% �������� %object.vname% �� �������.
mjunk all
~
#14610
�������������~
2 c 100
�����������~
if !%arg.contains(����)% || !%arg.contains(�������)%
  wsend  %actor% ����?
  halt
elseif %actor.clan% == ���
  wsend %actor%  �� ����� ����������� ���� �������.
  wechoaround %actor%  %actor.name% �������� �����%actor.u% �� ����.
  wteleport %actor% 14601
  wechoaround %actor%  ���-�� ������%actor.u% �� ��������.
else
  wsend %actor%  �� ����� ����������� ���� �������.
  wechoaround %actor%  %actor.name% �������� �����%actor.u% �� ����.
  wteleport %actor% 14601
  wechoaround %actor%  ���-�� ������%actor.u% �� ��������.
end
~
#14611
�������������~
0 z 100
~
wait 1
if %actor.clan% == ���
  ��� ����� �����
else
  set list ����� ������� �������� ������� ������� �������� ������� ������ ������ ������ ������ ����� ��������� ������� ������ ������ ����� �����
  foreach mem %list%
    tell %mem% &R%actor.iname%&n � �����!
  done
  set list �������� �������� ������ ������ ����� ������ ���� ����� ������ ����� ������� ����� ������ ������ ������ ������� �������
  foreach mem %list%
    tell %mem% &R%actor.iname%&n � �����!
  done
end
~
#14612
���������������~
0 d 100
����������~
wait 1
say ��� ���� � ���� ������ ���, ���������� � ����������.
halt
wait 1
if %actor.vnum% != -1
  halt
elseif %actor.clan% == ���
  say ������-������...
  wait 1
  if %actor.bank% < 665
    ���
    say �, �� � ���� ����� �� ������ ����!
    halt
  end
  eval buffer %actor.bank(-665)%
  mload obj 14603
  mload obj 14604
  mload obj 14605
  mload obj 14606
  mload obj 14607
  mload obj 14608
  mload obj 14609
  mload obj 14609
  mload obj 14610
  mload obj 14610
  mload obj 14611
  mload obj 14612
  mload obj 14612
  mload obj 14613
  mload obj 14614
  mload obj 14615
  mload obj 144
  mload obj 139
  ����� ��� ���
  say ��� ���� �����.
  give all .%actor.name%
  drop all
  wait 1
  say ������ ���%actor.g% ���� � ����� ���� - �� ������%actor.w% ���.
else
  say ������� �� �������� ������ � ������� �����!
  say � ���� �� �� ��� ������? � �� ���� ��������!
  msend %actor%  %self.name% ������ ��������� ���������� ������, � �� �������� ���������� � ������������.
  mteleport .%actor.name% 14603
  mecho %self.name% ������ ��������� ���������� ������, � %actor.name% �����%actor.g% �� ����.
end
~
#14613
����� � �������~
2 c 100
�����~
if !%arg.contains(�������)%
  wsend  %actor% ���� ��� �� ������ ��������?
  halt
end
if ((%actor.clan% == ���) && %actor.rentable%)
  wsend %actor%  �� � ������ �������� � �������.
  wechoaround %actor%  %actor.name% � ������ ������%actor.g% � �������.
  wteleport %actor% 14679
  wechoaround %actor%  ���-�� ������ � ������� ����� �� ����.
else
  wechoaround %actor%  ��� �� ������%actor.u% %actor.name% �������� � �������, �� ��� ������ � �� ����������.
  wsend %actor%  ��� �� �� ���������, �� ��� � �� ������ ������������ � �������.
end
~
#14641
���� ������ �� ������~
0 m 0
~
wait 1
if %amount% < 30
  wait 2
  say ������ ������? ������ ���� ������, � ��� 30 ��� �����!
  give %amount% ��� .%actor.name%
  halt
end
if %world.curobjs(14642)% >= 50
  wait 2
  say ����������� ������, �� ��������� ���� ������ :-)
  give %amount% ��� .%actor.name%
  halt
end
wait 2
say ����� ������, ���� �� ��������!
mload obj 14642
give ������ .%actor.name%
~
#14642
��������� ���� ������~
1 j 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.clan% == ���
  wait 2
  oechoaround %actor% _&r������������� &K������&n ��������� � �������� %actor.rname% � ����� �������� ������ ����� ������ ���. &W������ �������&n - ������ &R������&n.
  osend %actor% _&r������������� &K������&n ��������� ������� � ������ �������� � ������� &R������&n � ����� ��������� ������ &W���������&n �������.
  halt
end
osend %actor% %self.name% ��������%self.u% � ����� �����.
oechoaround %actor% %self.name% ��������%self.u% � ����� %actor.rname%.
wait 1
opurge %self%
~
#14643
����������~
1 t 100
~
wait 1
wait 1s
oecho   &r�������� &R����� &R����� &r���������� �� &M����&n, &r� �� ������� ������� : &R"&Y������� &C��������&n - &W����� ��� ������&n&R"&n
~
#14644
�����(�������)~
2 f 100
~
wait 1
if (%world.obj(23700).room% != %self.vnum%)
  %load% obj 14641
end
~
$~
