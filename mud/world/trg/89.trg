#8900
����������� ��������~
0 q 100
~
wait 1s
say ����������!
say ���� ������ ������� ����� ����������, �� ������� ��� ����� �� ������ ������.
say � �����������. � �� ������� ���� ��������� ��������, ������ �����, ��� ����� ����������.
���
~
#8901
������ ������� �������������~
0 jz 100
~
wait 1s
if !(%object.vnum% == 8900 || %object.vnum% == 8901 || %object.vnum% == 8902 || %object.vnum% == 8903 || %object.vnum% == 8904 || %object.vnum% == 8905 || %object.vnum% == 8907 || %object.vnum% == 8915)
  say ��� ��� �� �����.
  ���� ���
  halt
end
wait 1
if %object.vnum% == 8900
  wait 8
  say �� ����. � ��������� ����������.
  wait 8
  say ����� ���� �������.
  wait 8
  %self.gold(+100)%
  ���� 100 ��� %actor.name%
  calcuid shkura 8900 obj
  mpurge %shkura%
end
wait 1
if %object.vnum% == 8901
  wait 8
  say �� ����. � ��������� ����������.
  wait 8
  say ����� ���� �������.
  wait 8
  %self.gold(+140)%
  ���� 140 ��� %actor.name%
  calcuid shkura 8901 obj
  mpurge %shkura%
end
wait 1
if %object.vnum% == 8902
  wait 8
  say �� ����. � ��������� ����������.
  wait 8
  say ����� ���� �������.
  wait 8
  %self.gold(+200)%
  ���� 200 ��� %actor.name%
  calcuid shkura 8902 obj
  mpurge %shkura%
end
wait 1
if %object.vnum% == 8903
  wait 8
  say �� ����. � ��������� ����������.
  wait 8
  say ����� ���� �������.
  wait 8
  %self.gold(+260)%
  ���� 260 ��� %actor.name%
  calcuid shkura 8903 obj
  mpurge %shkura%
end
wait 1
if %object.vnum% == 8904
  wait 8
  say �� ����. � ��������� ����������.
  wait 8
  say ����� ���� �������.
  wait 8
  %self.gold(+500)%
  ���� 500 ��� %actor.name%
  calcuid shkura 8904 obj
  mpurge %shkura%
end
wait 1
if %object.vnum% == 8907
  wait 8
  say �� ����. � ��������� ����������.
  wait 8
  say ����� ���� �������.
  wait 8
  %self.gold(+500)%
  ���� 500 ��� %actor.name%
  calcuid shkura 8907 obj
  mpurge %shkura%
end
wait 1
if %object.vnum% == 8915
  wait 8
  say �� ������ ������ �������� ������� ������.
  wait 8
  say ��������� �� ����������.
  wait 8  
  if (%world.curobjs(8916)% < 30)
    mecho ������ ������� ����� ��������� ������� ������ � ������ �� ��� ���������� ��������.
    wait 8
    mload obj 8916
    ���� �������.�������� %actor.name%
    calcuid shkura 8915 obj
    mpurge %shkura%
  else
    mecho ������ ������� �������� ������� ������. ��� �������!
    calcuid shkura 8915 obj
    mpurge %shkura%
  end
end
wait 1
if %object.vnum% == 8905
  wait 8
  say ��! ����� �������� ������ ����.
  wait 8
  say ������ ��������� �������� ����.
  wait 8
  say ������� ���� �� ������ ����!
  wait 8
  if (%actor.level%>20) &&  (%random.100% <= 50) 
    mecho ������ ������� ������� ���� � �������� � �������� � ������� ������.
    wait 8
    mload obj 8906
    ���� ������ %actor.name%
    calcuid shkura 8905 obj
    mpurge %shkura%
  else
    mecho ������ ������� ���� ������ ���� � ������ ��. ��� �������!
    calcuid shkura 8905 obj
    mpurge %shkura%
  end
end
~
#8902
����� �����~
0 f 100
~
if (%world.curobjs(8900)% < 30) && (%random.10% <= 5)
  mload obj 8900
end
~
#8903
����� �����~
0 f 100
~
if (%world.curobjs(8901)% < 30) && (%random.10% <= 5)
  mload obj 8901
end
~
#8904
����� �������~
0 f 100
~
if (%world.curobjs(8902)% < 30) && (%random.10% <= 5)
  mload obj 8902
end
~
#8905
����� �����~
0 f 100
~
if (%world.curobjs(8903)% < 30) && (%random.10% <= 5)
  mload obj 8903
end
~
#8906
����� �������~
0 f 100
~
if (%world.curobjs(8904)% < 30) && (%random.10% <= 5)
  mload obj 8904
end
~
#8907
����� ��������~
0 f 100
~
if (%world.curobjs(8906)% < 10) && (%random.10% <= 5)
  mload obj 8905
end
~
#8908
����� � ����~
2 c 100
�����~
if !(%arg.contains(����)%)
  wsend       %actor% ���� ��� �� ������ �������� ?
  return 0
  halt
end
if ((%actor.move%>100) && (%actor.level%>10))
  wsend       %actor% �� ������� � ����� ����. �� � ������ �� ��� ������.
  wait 2s
  eval buf %actor.move(-75)%
  wsend %actor% �� ���� ������� � ��������� �������.
  wteleport %actor.name% 8947
else
  wsend %actor% � ��� �� ������ ��� ��� �����.
  return 0
end
~
#8909
����� �� ����~
2 c 100
�����~
if !(%arg.contains(����)%)
  wsend       %actor% ���� ��� �� ������ �������� ?
  return 0
  halt
end
if ((%actor.move%>80) && (%actor.level%>10))
  wsend       %actor% �� ������� � ����� ����. �� � ������ �� ��� ������.
  wait 2s
  eval buf %actor.move(-80)%
  wsend %actor% �� ���� ������� ������.
  wteleport %actor.name% 8946
else
  wsend %actor% � ��� �� ������ ��� ��� �����.
  return 0
end
~
#8910
���������� �����~
2 c 100
����������~
if !%arg.contains(�����)%
  return 1
  halt
end
wait 1
wsend       %actor% �� ������ ���������� �����, ����������� ������.
wechoaround %actor% %actor.name% �������%actor.u% ���������� �����.
wait 2s
wecho       ������� ����� ��������� � ��� ������������� ������������� ������ �����, ������ ������...
wdoor  8945 down flags a
wdoor  8945 down room  8951
wdoor  8951 up   flags a
wdoor  8951 up   room  8945
detach 8910 %self.id%
~
#8911
���������~
2 f 100
0~
wdoor   8945 down purge
wdoor   8951 up   purge
calcuid qroom 8945 room
attach   8910 %qroom.id%
wdoor   8955 west purge
wdoor   8958 east purge
calcuid qroom2 8955 room
attach   8915 %qroom2.id%
calcuid qroom2 8970 room
attach   8916 %qroom2.id%
~
#8912
��������� ������~
0 q 100
~
wait 1s
���� %actor.name%
wait 1s
say ����������� ��� ������...
���
wait 1s
say ��� �� �� �����, ��������� �������, ��� ����� ��������.
say � �� ����, ��� ������� ���������, ���� ������ ������.
detach 8912 %self.id%
~
#8913
��������� �������������~
0 j 100
~
wait 1s
if !(%object.vnum% == 8907) 
  say � ��� � � ���� ���� ������? ������ ��������.
  ���� ���
  halt
end
wait 1
if %object.vnum% == 8907
  wait 8
  say ��, ������. ���� ������ ������ � �����.
  wait 8
  say ����� ���� �������.
  wait 8
  %self.gold(+500)%
  ���� 500 ��� %actor.name%
  calcuid shkura 8907 obj
  mpurge %shkura%
  wait 1s
  if (%random.100% <= 40) &&  (world.curobjs(8909) < world.maxobj(8908))
    mecho ��������� ����������, � ����� � ������� ���-�� �������.
    wait 8
    mload obj 8908
    say �������� �� ��� ���������, ��� ����� �����, �� �������� �� ���� ������ ����������.
    say � �� ����� ��� ��� �����?! ��, ������, ����� ���� ����������.
    ���� �����.����.�������� %actor.name%
  end
end
~
#8914
����� �������� �������~
0 f 100
~
if (%world.curobjs(8907)% < 5)
  mload obj 8907
end
~
#8915
������ �� �����~
2 c 100
������~
if !%arg.contains(����)%
  return 1
  wsend       %actor% �� ��� �� ������ ������?
  halt
end
wait 1
wsend %actor% �� ������ �� ������ �����.
wechoaround %actor% %actor.name% �������%actor.u% ������ �� ������ �����.
if %random.1000% <= 70
  wsend %actor% _�� �������� ������� �����-�� ������ �� ���, ����� �������� �� ������.
  wechoaround %actor% �����-�� ������, ����� �������� �� ������, ����� �� ���.
  %load% obj 1738
end
wait 2s
wecho       ����� �����, ������ � ��������� ���������, ���� � �������, ������ ������ �� �����.
wdoor  8955 west flags a
wdoor  8955 west room  8958
wdoor  8958 east flags a
wdoor  8958 east room  8955
detach 8915 %self.id%
~
#8916
������� �� ������~
2 c 100
��������~
set Key 0
wait 1
wsend %actor% �� ������� ������� �� ������ ������� �����.
wechoaround %actor% %actor.name% �������%actor.a% ������� �� ������ ������� �����.
wait 2s
wecho ����� ����� �������� � ������ ���, ������� ��� �� �������� � ������ ��������� ����� ������.
wload obj 8910
foreach mob %self.npc%
  if (%mob.vnum% == 8926)
    set Key 1
    
  end
done
if ((%world.curmobs(8926)% < 3) && (%Key% != 1))
  wait 3s
  wecho ������� �� �������� ������ � ������.     
  wait 8
  wload mob 8926
  wecho ������� �� �������� ���������� ���.
  wait 8
  wecho ������� �� �������� ������ : '������������ �������. ���� ����� �������� ��������.'     
  wecho - ��� ������ ����� �� �������.
  wecho - ������ � ���� ���� �����, � �� ������ � ���� ������.
  wait 8
  wecho ������� �� �������� ���� ������� � ������. 
end
detach 8916 %self.id%
~
#8917
����� ����~
0 f 100
~
if (%world.curobjs(8912)% < 20) && (%random.10% <= 5)
  mload obj 8912
end
~
#8918
����� �����~
0 f 100
~
if (%world.curobjs(8913)% < 10) && (%random.10% <= 9)
  mload obj 8913
end
~
#8919
����� �����~
0 f 100
~
if (%world.curobjs(8915)% < 10) && (%random.10% <= 5)
  mload obj 8915
end
~
#8920
������� ������~
2 cz 100
�������~
if !(%arg.contains(������)%)
  wsend       %actor% ��� �� ������ �������?
  return 0
  halt
end
if (%exist.mob(8909)%)
  wsend       %actor% �� ��������� ����, ������� ������� ������, �� ��� �� ������.
  wsend       %actor% �������� ����� ���� � ������ ������, ���� ������� ��� ���� ������� ������.
  wait 8
  calcuid prizrak89 8909 mob
  attach   8925 %prizrak89.id%  
else 
  wsend       %actor% ���� ������� �� ������ �����, ���� �� ��� ����� �������.
end
~
#8921
���� ����������� ������������~
0 q 100
~
wait 1s
if %exist.mob(8915)%
  say �� ��� � ���� ��� ������!
  say ���������� ������� ��� ���� ������� �� ����, �� ������� ����.
  say ����������. �� ������� �� �� ������� ������ �� ����?
  wait 1
  mecho ���� ����������� ��������� ��� ������ � ����.  
  attach 8922 %self.id%
  halt
end
~
#8922
���� ����������� ���� ������~
0 d 1
������ ������ ��~
if !(%exist.mob(8915)%)
  halt
end
wait 1s
say �� ���� �������%actor.g%. ������ ���� ������ ����� ����.
say �� �������� � �������� �� ����, ��� �� ������.
wait 1
mload obj 8917
���� ������.���� %actor.name%
wait 1s
mecho ������������ ����� ���������� �������� � �����.
detach 8921 %self.id%
detach 8922 %self.id%
~
#8923
����������� ���� ������~
0 j 100
~
wait 1
if !(%object.vnum% == 8917)
  say ����� ������� ��� �� ��� ��������� � ���������.
  ���� ���
  halt
end
wait 1s
say ����� ����� ��� ��� �������. ���� ������� �� ������.
wait 1s
mload obj 8928
wait 8
�������� �������.������
wait 8
������� �������.������
wait 8
mecho ���������� ������� ������ � ������� ������.
calcuid yzelok 8917 obj
mpurge %yzelok%
calcuid yzelok 8928 obj
mpurge %yzelok%
if (%world.curobjs(8920)% < 5)
  wait 1s
  mecho ���������� ���� ���� �� ������������ ���� ��������.
  wait 8
  mload obj 8920
  wait 8
  ��� ���
  ��� ������������.����
end
wait 1
say ���� ��������, ���� ���� ������ �� ���� ��������
~
#8924
����� �����~
0 f 100
~
if (%world.curobjs(8924)% < 8) && (%random.10% <= 5)
  mload obj 8924
end
~
#8925
������� ������ ��~
0 k 100
~
mecho &R������� ������� ��� ��������, ����� � ���� ����� ��� �����!&n
calcuid prizrak89 8909 mob
%prizrak89.hitp(-150)%
~
$~
