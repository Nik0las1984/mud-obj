#33800
� ������� � ��������~
0 p 100
~
wait 2s
say _���...���... �������� �������� � � ����� �� ����. 
���
say �� ����� ��� �� 100 ���... ��� ������...
calcuid gorbj 33831 mob
set victim %actor%
remote victim %gorbj.id%
attach 33801 %gorbj.id% 
exec  33801 %gorbj.id%
~
#33801
��� ������� ����� ��� ���~
0 z 100
~
say _����... ����� � �������� ��������, ��������� ����� ������� ������.
wait 1
����
mecho _������ ������� ������ � ������� � ���!
calcuid gorbun 33831 mob
detach 33800 %gorbun.id%
mkill %victim%
calcuid gorbun 33831 mob
detach 33801 %gorbun.id%
~
#33802
����� �������� � �������~
2 f 100
~
calcuid gorbun 33831 mob
attach 33800 %gorbun.id%
calcuid gorbun 33831 mob
detach 33804 %gorbun.id%
calcuid znachar 33808 mob
detach 33807 %znachar.id%
calcuid rorik 33800 mob
attach 33813 %rorik.id%
calcuid znachar 33808 mob
attach 33806 %znachar.id%
calcuid piosik 33827 mob
attach 33805 %piosik.id%
if %exist.mob(33830)%
  calcuid swiach 33830 mob
  detach 33812 %swiach.id%
end
calcuid woewoda 33800 mob
detach 33814 %woewoda.id%
calcuid woewodroomo 33833 room
detach 33815 %woewodroomo.id%
calcuid chanor 33820 mob
attach 33824 %chanor.id%
~
#33803
� ��� � ��������~
0 l 100
~
wait 1
if %self.hitp% < 200
  say _�� ���... ��, ������� � ������ �� ���� - ����� ��������.
  calcuid gorbun 33831 mob
  attach 33804 %gorbun.id%
  wait 1
  say _������ �������� ��, ����� �����...
end
~
#33804
� ������� ����� ���~
0 p 100
~
wait 1
say _����� � �� ������... �������.
mecho ������ �������� ������ � ����.
mpurge %self%
~
#33805
� ��� � ����~
0 r 100
~
wait 3s
���
say _�������� ���� ����, %actor.name%!!!
say _���� �� ���� ��� ������... ���������� ���� ������� �������
say _� ��� � ������� ����� ������� ������ ����....
say _�������� ���� ����� ��������� ��� � ����� ��� ��� �����������...
say _��������� ����.. ������... ������� ����� �����...�� ������...
���
wait 1s
mkill %actor%
if %exist.mob(33808)%
  calcuid znachar 33808 mob
  attach 33807 %znachar.id%
  detach 33806 %znachar.id%
end
detach 33805 %self.id%
~
#33806
����� ������� 1~
0 f 100
~
if ((%world.curobjs(524)% < 1) && (%random.1000% <= 200))
  mload obj 524
end
if %world.curobjs(33821)% < 2
  mload obj 33821
end
~
#33807
����� ������� 2~
0 f 100
~
if %world.curobjs(33821)% < 2
  mload obj 33821
end
if %world.curobjs(33822)% < 2
  mload obj 33822
end
~
#33808
���� ������� ���~
0 j 100
~
wait 1
if %object.vnum% == 33821 then
  mecho _��� ������� ������� ������ � ��������� ���������� ���.
  mecho _��� ������ ������ ����� ���.
  wait 1
  mpurge %object%
  calcuid roompiosi 33893 room
  attach 33809 %roompiosi.id%
  exec 33809 %roompiosi.id%
  mpurge %self%
end
if %object.vnum% == 33822 then
  mecho _��� ������� ������� ������ � ��������� ���������� ���.
  mecho _��� ������ ������ ����� ���.
  wait 1
  mpurge %object%
  calcuid roompiosii 33893 room
  attach 33810 %roompiosii.id%
  exec 33810 %roompiosii.id%
  mpurge %self%
end
if %object.vnum% == 33823 then
  mecho _��� ������� ������� ������ � ��������� ���������� ���.
  mecho _��� ������ ������ ������ ���.
  wait 1
  calcuid varbleiii 33823 obj
  mpurge %object%
  wait 1
  calcuid roompiosuu 33893 room
  attach 33822 %roompiosuu.id%
  exec 33822 %roompiosuu.id%
  mpurge %self%
end
~
#33809
������ �����~
2 z 100
~
wait 1
wecho _�������� ������ ��� ����������� � ������ �������.
wload mob 33828
wait 3s
wecho _"�� �� � �����... �� ��� ������%actor.q%." - ���������� �������.
calcuid roompios 33893 room
detach 33809 %roompios.id%
~
#33810
������ ����~
2 z 100
~
wait 1
wecho  _�������� ������ ��� ����������� � ����������� ����... ������.
wload mob 33829
wait 3s
wecho  _"�-�. �-�. ����������. ��� �� ������ ����� �������..." - �������� ����.
calcuid roompios 33893 room
detach 33810 %roompios.id%
~
#33811
���������� ����� � ����� �������~
2 c 1
���������� ������ �������� ���������~
if !(%arg.contains(�������)%) 
  wsend       %actor% ��� �� �� ������ ����������???
  return 0
  halt
end
if !%actor.haveobj(33821)% || !%actor.haveobj(33822)%
  wsend       %actor% ������ ������� ���-��, ���� ����� � ��� ���.
  return 0
  halt
end
wsend       %actor% �� �������� � ���� ������� ������ � ������� ������ ��������.
wechoaround %actor% %actor.name% �����%actor.g% ���������� ����� � ����� �������.
calcuid vai 33822 obj
wpurge %vai%
calcuid var 33821 obj
wpurge %var%
wait 1s
calcuid piosik 33827 mob
wload obj 33823
wecho  �������� ������ ���, � ����� �� ���������, �� ������� ������ �������.
~
#33812
��������� ���������� � ������� � ������~
0 z 100
~
wait 3s
say _�� �������. ����� ���� ������ ������� ������� �����.
say _�� ����� �� �������� ����. �� � ��� ��� �����.
say _� ����� � �������, ��� ��� ��������. ������ �� ����� ���� ��������.
mecho  ��������� ������ ���� ����-��.
calcuid rorik 33800 mob
attach 33814 %rorik.id%
calcuid woewodro 33833 room
attach 33815 %woewodro.id%
wait 1
mpurge %self%
~
#33813
������ � �������~
0 q 100
~
wait 2s
msend       %actor% ������� ����������� �������� �� ��� � ��������� ���� ����.
mechoaround %actor% ������� ����������� �������� %actor.vname%.
calcuid rorikk 33800 mob
detach 33813 %rorikk.id%
~
#33814
������� ���� �������~
0 q 100
~
wait 6s
msend %actor%  ������� ����������� �������� �� ���.
mechoaround %actor% ������� ������ %actor.vname% ��������.
if (%world.curobjs(33800)% < 1) && (%random.100% < 25)
  say ��������� ����� ������� ��� ��� ����.
  say � ���� ���� � ���� ���������.
  say ���������� ������ ��������� ������ ������� � �����.
  say � ���� �� ��� � �� ������ ������� ���� ���� - ������ �����.
  say ��  � ����� �� ���������...
  wait 1s
  mload obj 33800
  ���� ����� %actor.name%
  detach 33814 %self.id%
elseif ( %random.100%  < 4 )
  mload obj 103
  say ��������� ����� ������� ��� ��� ����.
  say �, � �����, �� ������� �������.
  wait 1s
  ���� ����� %actor.name%
  detach 33814 %self.id%
end
detach 33814 %self.id%
~
#33815
���� ���������� � �������~
2 g 100
~
wait 1
if %world.curmobs(33800)% == 1
  wait 2s
  wload mob 33832
  wecho _��������� ��������� �������� ���� � ����� ��� �� ������� �������.
  calcuid woewodroomo 33833 room
  detach 33815 %woewodroomo.id%
end
~
#33816
����� � ��� � ��������~
2 c 0
����� �������� ������� ��������~
if (!%arg.contains(����)% && !%arg.contains(�����)%) 
  wsend %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
if %arg.contains(������)%
  wsend %actor% ������ ������� �� �������� � ���.
  wechoaround %actor% %actor.name% �������%actor.g% � ���.
  wait 1s
  wsend %actor% .- �� ������������� ����� �����.
  wteleport %actor.name% 33884
  wechoaround %actor% ���-�� �������� ���� ������.
else
  wsend %actor% ��������� ����� �� �������� � ���.
  wechoaround %actor% %actor.name% �������%actor.g% � ���.
  wait 1s
  wsend %actor% .- �� ������������� ����� �����.
  wteleport %actor.name% 33897
  wechoaround %actor% ���-�� �������� ���� ������.
end
~
#33817
�������� �� ��� � ��������~
2 c 0
����� �������� ������� ��������~
if !(%arg.contains(�����)%) 
  wsend       %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
wsend       %actor% ������ ������� �� �������� �� ���.
wechoaround %actor% %actor.name% �����%actor.q% ����� �� ���.
wait 1s
wsend %actor% .- �� ������� �� ���.
wteleport %actor.name% 33893
wechoaround %actor% ���-�� ������ ���� �� ���.
~
#33818
�������� �� ��� �� ������~
2 c 0
����� �������� ������� ��������~
if !(%arg.contains(�����)%) 
  wsend       %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
wsend       %actor% ������ ������� �� �������� �� ���.
wechoaround %actor% %actor.name% �����%actor.q% ����� �� ���.
wait 1s
wsend %actor% .- �� ������� �� ���.
wteleport %actor.name% 33893
wechoaround %actor% ���-�� ������ ���� �� ���.
~
#33819
� ��� � ��������~
0 l 100
~
if %actor.hitp% < 99
  msend       %actor% _�� ���������� � �� �������� ��� ���������� ������ �������� ���!
  mechoaround %actor% _���������� ������ �������� %actor.vname% � ������� ������� ����.
  msend       %actor% _��� ������� ���, �������� � ��������� ���� ��.
  msend       %actor% _�� �������� �������� � �� �������� ��� ��������� ������� ���.
  mteleport %actor% 33897
end
~
#33820
� ��� � �����~
0 l 100
~
if %actor.hitp% < 59
  msend       %actor% �� �������� �������� �� ���� � �� �������� ��� ���������� ������ �������� ���!
  msend       %actor% ��� ������� ���, �������� � ��������� ���� ��.
  mechoaround %actor% _���������� ��������� ������ �������� %actor.vname% � ������� ������� ����.
  msend       %actor% ��������� ��� �� ������� - ��� �������������� � ��� �������� ������������� ���.
  msend       %actor% ��� �������� �� ���!
  msend       %actor% ���� �������� ��� ���� ���� � �� ������� � �������� �����.
  %actor.wait(2)%
  mteleport %actor.name% 33893
  wait 1s
  eval dam %actor.hitp%+15
  mdamage %actor% %dam%
end
~
#33821
����� ���~
0 f 100
~
if (%world.curobjs(33820)% < 2)
  mload obj 33820
end
if (%world.curobjs(33812)% < 2) && (%random.5% == 1)
  mload obj 33812
end
if (%world.curobjs(212)% < 20) && (%random.4% == 1)
  mload obj 212
end
~
#33822
������ ����������~
2 z 100
~
wait 1
wecho  _�������� ��������� ����...������ ��� ����� �������� ������ ���������.
wload mob 33830
wait 3s
wecho  _"���������. � ���� ��� �� ����������" - ������ ���������..
calcuid swiachi 33830 mob
attach 33812 %swiachi.id%
exec 33812 %swiachi.id%
calcuid roompios 33893 room
detach 33822 %roompios.id%
~
#33823
� ��� � ��������~
0 l 100
~
if %actor.hitp% < 59
  say _�����, ������ ��� �������.
  say _�������� �� ���. ������ � ���, ������.
  say _�� �������, %actor.name%!
  mecho _������ � ������� ����� ��� � ����.
  mpurge %self%
end
~
#33824
��� ����~
0 l 100
~
wait 1
if %self.hitp% <80
  mshou  _�! ���� ������� � �����! �� ��� ������ ��������!
  calcuid chanor 33820 mob
  detach 33824 %chanor.id%
end
~
#33830
���� ������� - ���� ���������~
0 f 100
~
halt
if %world.curobjs(3366)% < 1  
  if  %random.100% < 3
    mload obj 3306
  end
end
~
$~
