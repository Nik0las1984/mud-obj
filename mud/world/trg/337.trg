* BRusMUD trigger file v1.0
#33700
�������� ������~
2 c0 0
�������� ��������� ������~
if !(%arg.contains(������)%) 
    wsend       %actor% _��� ��� �� ������ ��������???
   return 0
   halt
end
wsend       %actor% _�� ������� ����� �������� � ������ ������� �� ����!
wechoaround %actor% %actor.name% ������ ������%actor.g% �� ������ �������� ����� �����!
wait 1s
wecho �� ����� �� ���� ��������� ������ � ������� ������.
wload obj 33700
calcuid kamen 33720 room
detach 33700 %kamen.id%






~
#33701
�������� � ����� ����~
2 c0 0
����� �������� ������~
if !(%arg.contains(����)%) 
   wsend       %actor% _���� ��� �� ������ ��������???
   return 0
   halt
end
  wsend       %actor% _�� � ��� ��� ���� �������� � ����..
  wechoaround %actor% %actor.name% �����%actor.q% � ����.
  wait 1s
  wsend %actor% _�������, �� �� �� �������� � ���� � ������������ ��������� ��� ��.
  wteleport %actor.name% 33771
  calcuid norkau 33771 room
  attach 33702 %norkau.id%
  calcuid norkad 33719 room
  detach 33701 %norkad.id%
  









~
#33702
�������� � ����� �����~
2 c0 0
��������� ����� �������� ������~
if !(%arg.contains(����)%) 
   wsend       %actor% _���� ��� �� ������ ��������???
   return 0
   halt
end
  wsend       %actor% _�� � ��� ��� ���� �������� � ����..
  wechoaround %actor% %actor.name% �����%actor.q% � ����.
  wait 1s
  wsend %actor% _�������, �� �� �� �������� � ���� � ������������ ��������� �� ������ �����.
  wteleport %actor.name% 33719
  wat 33719 wechoaround %actor% _��� �� ������ ���� �����.









~
#33703
����� ��������~
2 f0 100
~
calcuid norkad 33719 room
attach 33701 %norkad.id%
calcuid kamen 33720 room
attach 33700 %kamen.id%
unset qwestik337
calcuid norkam 33717 room
attach 33706 %norkam.id%
attach 33707 %norkam.id%
calcuid medwed 33700 mob
attach 33709 %medwed.id%
calcuid medwedi 33700 mob
detach 33710 %medwedi.id%

~
#33704
����� �� ������~
2 g0 20
~
wait 1
if  %random.10% == 1
wsend       %actor% _�� ������������ � ������ � � ������ �������� ����!
wait 1
wsend %actor% _��������� �� �� ��� ����� ������� ������.
wteleport %actor.name% 33740
wat 33740 wechoaround %actor% _��� �� �������� ���� � ������.
end



~
#33705
������� �� ������~
2 c0 0
������� ����� ~
if !(%arg.contains(�����)%) 
   wsend       %actor% _���� ��� �� ������ �������???
   return 0
   halt
end
  wsend       %actor% _����������� �� ����� ������, �� ������� �����.
  wechoaround %actor% %actor.name% �����%actor.q% ����� �� ������ ������.
  wait 1s
  wsend %actor% _�� ����� ��������� �� ������ �� ������� ��������.
  wteleport %actor.name% 33743
  wat 33743 wechoaround %actor% _��� �� ������ ���� �����.









~
#33706
������� � ����������~
2 c0 0
������� ����� ��������~
if !(%arg.contains(����������)%) 
   wsend       %actor% _���� ��� �� ������ �������???
   return 0
   halt
end
context 337 
if !(%qwestik337% == %actor.name%)
wsend       %actor% _����� �������� � ���������� ���� ������� ������������ � �������! 
return 0
halt
end
context 337 
wsend       %actor% _������ ����� ���������, �� �������� � ����������.
wechoaround %actor% %actor.name% �����%actor.q% � ��������� ��������� �����������.
  wait 1s
  wsend %actor% _�� � ������ � ������ �����.
  wteleport %actor.name% 33774
  wat 33774 wechoaround %actor% _��� �� ������ ���� ������.
unset %qwestik337% 
calcuid norkam 33717 room
detach 33706 %norkam.id%







~
#33707
������������ � �������~
2 c0 0
������������~
if !(%arg.contains(�������)%) 
   wsend       %actor% _� ���� �� ������ ������������???
   return 0
   halt
end
 context 337 
 set    qwestik337 %actor.name%
 WORLDS qwestik337
wsend       %actor% _�� ����� ������ �������-���������. ����� ��� ���!?
wechoaround %actor% %actor.name% ������%actor.q% ���������� ����� � ����%actor.q% �������� � �������.
calcuid norkam 33717 room
detach 33707 %norkam.id%









~
#33708
� ������� � ���~
0 k0 100
~
if  (%random.25% == 1)
msend       %actor% _������� ������� ���� � �������� �� ����� ��� � ������!
mechoaround %actor% %actor.name% �������%actor.q% ���� ����� �� ���. 
mdamage %actor% 15
end



~
#33709
������� ���� �����~
0 q0 100
~
wait 2s
��� 
wait 5s
say ��� ��� ������....
���
wait 2s
say ��� ��� �����.... ���� ����� ��������..
calcuid medwed 33700 mob
attach 33710 %medwed.id%
detach 33709 %medwed.id%

~
#33710
���� ������� ������~
0 d0 0
������~
wait 2s
mecho _"�� ��������..." - ������� ������� �������.
mecho _"���� � ���, ��� ����� ���� ��������, �� ���� ����� ������������..." - ������ �������
���
wait 2s
mecho _"� ��� ��-�� ����, ��� � ������ ����� �����, ��� �� ����� ����" - ��������� �������.
mecho _"��� ��� ��� �? �� �������..." - ������ �������.
mecho _"������, � � ���� ����� �������!" - �������� �������.
wait 2s
mecho _"�� ����, ��� ����� ������ ��� �� �������, �� �� ���� ��������� � ����� � ����"
mecho _"��� ���� ��������" - ��������� �������.

~
#33711
���������� ����~
2 c0 0
���������� ������ ����� ��������� ��������~
if !(%arg.contains(����)%) 
   wsend       %actor% _��� �� ������ ����������???
   return 0
   halt
end
wsend %actor% _�� �������� ����� � ������ ����� ���������� ������! �����, ��� � ��� �� �������.
wechoaround %actor% %actor.name% �����%actor.g% ���������� ������. ��� ��� ������?
wait 1s 
wecho _�������� �� ���� ������� ��� ���� �� ������ ������ ����!
wload mob 33732
wload mob 33732
wload mob 33732
wload mob 33732
calcuid uleizimnii 33760 room
detach 33711 %uleizimnii.id%









~
#33712
������� �������� �������~
1 n0 100
~
calcuid uleizimnii 33760 room
attach 33711 %uleizimnii.id%
calcuid uleizimnii 33760 room
attach 33713 %uleizimnii.id%

~
#33713
���� ���������� �����~
2 c0 0
�������� ��������~
if !(%arg.contains(�����)%) 
   wsend       %actor% _���� �� ������ ��������???
   return 0
   halt
end
wsend %actor% _�� ������� "���. ���."
wechoaround %actor% %actor.name% ������%actor.g% : "���. ���."
wait 1s 
wecho _�� ���� �������� ������ �������� �����, �������, ��� ������ ����� �������
wload mob 33730
calcuid shmell 33730 mob
attach 33714 %shmell.id%
wait 3s
wecho _����� ���������� ��������, ������� ��� ��� �� �� ���.
calcuid uleizimnii 33760 room
detach 33713 %uleizimnii.id%







~
#33714
���� ���� �����~
0 j0 100
~
if %object.vnum% == 33707 then
  wait 2s
mecho _"��������." - ���������� �������� �����.
  wait 2s
mecho _"������� ��� ���? ����. � ��� �� ������� ���� ����� ������!"
mpurge ����
wait 5s
mecho _"����. �� ������� �������."- ��������� �����.
mecho _����� ����� �� ����, � ��� ���������� ������ ������.
wait 3s
mload obj 33713
��� ���� %actor.name%
mecho _"������� � �� ������."- ��������� �����.
end





~
#33715
������� �� �����������~
2 c0 0
������� ����� ��������~
if !(%arg.contains(����������)%) 
   wsend       %actor% _���� ��� �� ������ �������???
   return 0
   halt
end
wsend       %actor% _������ ����� ���������, �� ������� �� �����������.
  wait 1s
  wsend %actor% _�� ������.
  wteleport %actor.name% 33717
  wat 33774 wechoaround %actor% _��� �� ������ ���� �����.







~
#33716
������� �����~
0 f0 100
~
mload obj 33707

~
$
$
