#38000
����� �� ���~
2 c 0
����� �������~
if !(%arg.contains(���)%) 
  wsend       %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
wsend       %actor% �������� �� ������� �����, �� ������� �����.
wechoaround %actor% %actor.name% �����%actor.q% �����, �������� �� �����.
wait 1s
wsend %actor% .- �� �� �������� ������.
wteleport %actor% 38097
%actor.wait(1)%
wat 38097  wechoaround %actor% ���-�� ������ ���� �����.
~
#38001
�������� � ���~
2 c 0
�������� ���������~
if !(%arg.contains(����)%) 
  wsend       %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
switch %random.3%
  case 1
    wsend       %actor% ����������� ������, �� ��������� ����... ����������!
    wechoaround %actor% %actor.name% ��������%actor.g% ����, ������ �����.
    wait 1s
    wsend %actor% .- �� ���������� �� ������� ����� �������.
    wteleport %actor.name% 38021
    wat 38021 wechoaround %actor% ���-�� �������� � ���. �� ����!
  break
  case 2
    wsend       %actor% ����������� ������, �� ��������� ����... ����������!
    wechoaround %actor% %actor.name% ��������%actor.g% ����, ������ �����.
    wait 1s
    wsend %actor% .- �� ���������� �� ������� ����� �������.
    wteleport %actor.name% 38005
    wat 38005 wechoaround %actor% ���-�� �������� � ���. �� ����!
  break
  case 3
    wsend       %actor% ����������� ������, �� ��������� ����... ����������!
    wechoaround %actor% %actor.name% ��������%actor.g% ����, ������ �����.
    wait 1s
    wsend %actor% .- �� ���������� �� ������� ����� �������.
    wteleport %actor.name% 38009
    wsend %actor% _�� �������� ������������ � �������� ����.
    wdamage %actor% 9
    wat 38009 wechoaround %actor% ���-�� �������� � ���. �� ����!
  break
  default
  break
done
end
~
#38002
����� ������ ��������~
0 m 1
~
wait 1
if %amount% < 10 then
  ���
  say �� ����� ������� ����� ��� ��������...
  halt
end
wait 1
��
say ���������, ����� �������!
mecho �������� ������� ������.
mdoor 38080 e purge
mdoor 38080 e room 38083
mdoor 38080 e flags a
mdoor 38080 e name ������
mdoor 38080 e description ������
mdoor 38080 e key 38000
mdoor 38080 e lock 22
mdoor 38083 w purge
mdoor 38083 w room 38080
mdoor 38083 w flags a
mdoor 38083 w name ������
mdoor 38083 w description ������
mdoor 38083 w key 38000
mdoor 38083 w lock 22
wait 5s
mdoor 38080 e purge
mdoor 38080 e room 38083
mdoor 38080 e flags abc
mdoor 38080 e name ������
mdoor 38080 e description ������
mdoor 38080 e key 38000
mdoor 38080 e lock 22
mdoor 38083 w purge
mdoor 38083 w room 38080
mdoor 38083 w flags ab
mdoor 38083 w name ������
mdoor 38083 w description ������
mdoor 38083 w key 38000
mdoor 38083 w lock 22
mecho �������� �������� ������.
~
#38003
������ ��������~
0 g 100
~
if %actor.vnum% == 38017
  wait 1
  mecho �������� ���������� �� ������.
  wait 1
  mecho �������� �� �������� ��� ��� � ������ ��� ������� � ������� �������� �����.
end
~
#38004
������� ����������~
0 f 100
~
*if (%world.curobjs(615)% < 40) && (%random.3% == 1)
*   mload obj 615
*end
~
#38005
������� ���������~
0 f 100
~
*if (%world.curobjs(602)% < 40) && (%random.3% == 1)
*   mload obj 602
*end
~
#38006
������� ����������~
0 f 100
~
*if (%world.curobjs(600)% < 40) && (%random.3% == 1)
*   mload obj 600
*end
~
#38007
����� ��������~
0 f 100
~
if %world.curobjs(38000)% < 1
  mload obj 38000
end
~
#38008
������� ���� �������~
0 f 100
~
if ((%world.curobjs(535)% < 1 ) && (%random.1000% <= 140 ))
  mload obj 535
end
~
$~
