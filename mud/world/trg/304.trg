#30400
� ����� � ������~
0 r 100
~
if ((%actor.clan% !=��) && (%direction% == west))
  wait 1s
  if (%actor.canbeseen%)
    ������� ��������! %actor.name% �������� ���������� � �����!
  else
    ������� ��������! ���-�� ��������� �������� ��������� � �����!
  end
  ��� %actor.name%
end
~
#30401
���� ����~
0 c 0
�������~
wait 1
say ��� ���� � ���� ������ ���, ���������� � ����������.
halt
drop all
if %actor.bank% < 600
  :��������� ������� ����� �� ����
  ����� %actor.name%, � ���� ��������� ����� �� ����������
  halt
end
����� ������, ������ ������� � ������ ��� ��� ���� ����������
wait 1s
eval buffer %actor.bank(-600)%
mload obj 30409
mload obj 30410
mload obj 30411
mload obj 30412
mload obj 30413
mload obj 30414
mload obj 30415
mload obj 30416
mload obj 30417
mload obj 30418
mload obj 30418
mload obj 30418
mload obj 30418
mload obj 30446
mload obj 30446
put all ���
give ��� .%actor.name%
����� ���, �����
�� .%actor.name%
~
#30402
����� � ������ � ������~
0 r 100
~
wait 1s
eval grid  %random.4%
if %grid% == 3
  ����� �� �����%actor.g% �� �� ������? �� ������ ������� ���������� ����������!
elseif %grid% == 2
  if (%actor.realroom% == %self.realroom%)
    msend       %actor% _������ ������� ������� � ��� ������� ���� �����������.
    mechoaround %actor% _������ ������� ������� � %actor.dname% ������� ���� �����������.
    wait 1s
    ����� � �� ������� ���� ��� ������?
  end
elseif %grid% == 1
  ����� ���� ��������� ������ �������� �������, �������, ��� ����� � ��� ��� ������.
  ���
else
  ����� ���� ��� ������������?
end
~
#30403
����� � ������ � �����~
0 r 100
~
if %actor.religion% == 1
  wait 1s
  ����� ������!
else
  msend       %actor% _������� ���� ������ ������ ��� �������!
  mechoaround %actor% _������� ���� ������ ������ %actor.rname% �������! 
  ����� ����� ������!
end
~
#30404
� ��������� ���~
0 ab 10
~
mecho _�������� ��� ������� �� ������ ����� � ��������� �� �� �����.
wait 1s
mecho _������� ������� � ����� ������ ��� �� ������.
wait 1s
����� ������! ���� �� ���� ��� �� ���������, �� � ���� � ������.
wait 1s
mforce ������� ����� ��� � �� ������! � �� ���� �� ����!
mforce ������� ����� ������ � ������, �� ���� ��������� ���� �������!
mforce ������� ���
wait 1s
���
~
#30405
����� � ������ � ������~
0 r 100
~
wait 1s
mecho _����� ����� ��������� ���������� � ����.
wait 1s
����� ���� �� ���� ������ ����� ���� ��������,
����� ����� ���� ����� ���. �� ��� �� � ��� ���������!
���
wait 1s
����� �� � ���� ������� ��� � ���� � ���� ����� �����.
~
#30406
������� ������ "����"~
0 d 0
����~
if %world.curmobs(30410)% >4
  wait 1s
  ����� ��, ������ � �����������, ����� �� ���� ���� ��������� ��� ���������.
  wait 1s
  mecho _����� ������� ������ ������ � �������� ��������� � ����.
else
  wait 1s
  � ������! ������!
  wait 1s
  mecho _����� ����� �� ������ ��������� ���� � ����� ������������ � ��� ����� ������ ����.
  mload mob 30410
  wait 1s
  � ����, ������ �� ������� ������� ��� ������ ���� ����!
  ����� ����
end
~
#30407
������ ���� �����~
0 m 1
~
if %amount% < 500 
  wait 1s
  ���
  ����� �������� ������� ������%actor.g%, ��� ������� ��������!
else
  wait 1s
  ����� ��� ���� ��������� ���������!
  mload obj 30402
  ��� ������� %actor.name%
  ����� ��� ��� � ��� ���� � ������� ��� �� ������ ����� ������� ����.
  wait 1s
  ����� ����� ���� ��� ������ ���� �����������,
  ����� ������ ������� ������� ������ �����.
  wait 1s
  msend       %actor% _����� ������� � ��� ������ ������� � �������� ���������� � ����.
  mechoaround %actor% _����� ������� � %actor.dname% ������ ������� � �������� ���������� � ����.
~
#30408
���� �������~
1 c 3
�������~
if !(%arg.contains(�������)%) 
  osend       %actor% � ��� ��� �� ������ ���������?
  return 0
  halt
end
if (%actor.clan%==��)
  osend       %actor% _�� ����� ������� ������� ������ �����.
  oechoaround %actor% _%actor.name% ����%actor.g% ������� ������� ������ �����.
  wait 1s
  oecho _������� ���������� � ������ �� ����� ��������� �������� �������� ����.
  oload mob 30413
  calcuid bras 30402 obj
  opurge %bras%
else
  osend       %actor% _�� ����� ������� ������� ������ �����, �� ������ �� ���������.
  oechoaround %actor% _%actor.name% ����%actor.g% ������� ������� ������ �����, �� ������ �� ���������.
end
~
#30409
������ ����~
0 c 0
�������~
if !(%arg.contains(����)%) 
  msend       %actor% � ���� ��� �� ������ ��� ������ ���������?
  return 0
  halt
end
if (%actor.clan%==��)
  msend       %actor% _�� ��������� ��������� ����.
  mechoaround %actor% _%actor.name% ��������%actor.g% ��������� ����.
  wait 1s
  ����� � ���! ����� ������������ � ��� ���������!
  ����
  wait 1s
  mecho _���� ���� �����������, ���� �� ����������� � ��������� �������.
  mload obj 30402
  wait 1
  mpurge %self%
else
  msend       %actor% _�� ��������� ��������� ����, ��� ��� ���� �����������.
  mechoaround %actor% _%actor.name% ��������%actor.g% ��������� ���� � ��� �������� ����������.
end
~
#30410
������ � ������� �������~
2 c 0
��������~
if %actor.clanrank%>2
  wsend %actor% � ��� ��� ���� �������� ����.
  halt
end
wsend %actor% �� ��������� ��� �� ��� �� ���������� � ����� ��������.
wechoaround %actor% %actor.name% �������� ��� �� ��� �� ���������� � ���� ��������.
wteleport %actor.name% 30447
~
#30411
���� ���� �����~
1 gj 100
~
wait 1
if (%actor.clan% == ��)
  halt
end
osend %actor.name% �������� ����� ������ %self.iname% �����%self.q%...
wait 1
%purge% %self% 
~
#30412
����� ������ ������������~
2 ab 10
~
eval palach  %random.4%
if %palach% == 3
  wait 1s
  wecho _���� ������� ������ ������� ���������� ��������.
  wload mob 30418
  wload mob 30418
  wload mob 30415
  wait 1s
  wecho _���� �� ������ ��������: 
  wecho _"������� � ���������, �������� �������� ������ ����".
  wait 1s
  wecho _����� ��������� ���� ���� � ���. 
  wait 1s
  wecho _����� ����� ��� ����� �����. 
  wait 1s
  wforce ���� ����� �����, � ����� �����������?
  wait 1s
  wforce ����� ����� �������! ���� ��� �� ������ ��� ��� �����?
  wecho _������� ����� ������ ����������. 
  wait 1s
  wecho _����� ����� ������� �����. 
  wait 1s
  wecho _����� 
  wait 1s
  wload obj 30404
  wecho _����������� ���� �������� � �������. 
  wforce ����� ����� �������!
  wait 1s
  wecho _����� �������� �������� ���� � �������� �����. 
  calcuid target 30418 mob 
  wpurge %target%
  calcuid target 30418 mob 
  wpurge %target%
  calcuid target 30415 mob 
  wpurge %target%
elseif %palach% == 2
  wait 1s
  wecho _���� ������� ������ ������� ���������� ��������.
  wload mob 30418
  wload mob 30418
  wload mob 30416
  wait 1s
  wecho _���� �� ������ ��������: 
  wecho _"������� � ������������, �������� �������� ������ ����".
  wait 1s
  wecho _����� ��������� ���� ��������� � ���. 
  wait 1s
  wecho _����� ����� ��� ����� �����. 
  wait 1s
  wforce �������� ����� �� ���� ����!
  wait 1s
  wforce ����� ����� �� ���� �� ���! ����� ����������!
  wecho _������� ����� ������ ����������. 
  wait 1s
  wecho _����� ����� ������� �����. 
  wait 1s
  wecho _����� 
  wait 1s
  wload obj 30405
  wecho _����������� ���� �������� � �������. 
  wforce ����� ����� �������!
  wait 1s
  wecho _����� �������� �������� ��������� � �������� �����. 
  calcuid target 30418 mob 
  wpurge %target%
  calcuid target 30418 mob 
  wpurge %target%
  calcuid target 30416 mob 
  wpurge %target%
elseif %palach% == 1
  wait 1s
  wecho _���� ������� ������ ������� ���������� ��������.
  wload mob 30418
  wload mob 30418
  wload mob 30417
  wait 1s
  wecho _���� �� ������ ��������: 
  wecho _"������ ��� ������� ����� ������� ����, �������� �������� ������".
  wait 1s
  wecho _����� ��������� ������ �������� � ���. 
  wait 1s
  wecho _����� ����� ��� ������� �����. 
  wait 1s
  wforce ������� ����� �������� �� ��� �����, �������!
  wforce ������� ���� �����
  wait 1s
  wforce ����� ����� ��� ��� �����!
  wforce ����� ���
  wecho _������� ����� ������ ����������. 
  wait 1s
  wecho _����� ����� ������� �����. 
  wait 1s
  wecho _����� 
  wait 1s
  wload obj 30403
  wecho _����������� ������ �������� � �������. 
  wforce ����� ����� �������!
  wait 1s
  wecho _����� �������� �������������� ���� � �������� �����. 
  calcuid target 30418 mob 
  wpurge %target%
  calcuid target 30418 mob 
  wpurge %target%
  calcuid target 30417 mob 
  wpurge %target%
else
  wait 1s
  wecho _����� ������� �� ������� ��������� ������ � ������ �� �� ������ ������.
  wait 1s
  wforce ����� ���
end
~
#30413
����� � ������ � ������~
1 t 100
~
if (%direction% == south)
  wait 1s
  %send% %actor%       ������� ����, �� ����� ��������� ��������� �������� ������ ��������.
  %send% %actor%       �� ������ ���� ���� �������� �������: "��� �������".
end
~
#30414
����� ������ ���� ����~
0 b 100
~
dg_cast '����' %self.iname%
~
#30415
���� � ������� �����~
0 q 100
~
wait 1
mecho ���� ������� ������ ���, ����������, � ������ ������ ���� ��������!!!
wait 1
������
mkill %actor%
~
#30416
������ ������~
0 k 100
~
if ( %world.curmobs(30422)% <= 4 )
  say � ���� ����! � ����� � �����! �� ���!
  wait 1
  mecho ���� � ������� ����������, ���������. ����� ������ �� ������!!!
  mload mob 30422 
  mload mob 30422 
  mload mob 30422 
  detach 30416 %self.id%
end
~
$~
