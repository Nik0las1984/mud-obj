#74900
������ � ����~
0 q 100
*~
wait 2
say ����i����� �����������.
say �i �� �� ���� ���� �� �����y?
say �i ��������� ��� ���� ����i �����?
end
~
#74901
��������~
0 d 100
��������~
wait 3
say �� ����� ����� i ��� ��� ���� -- �����. ��� ��� i ����i��.
say ������i �� � ����� ����� ������, �� ���� ���������.
say ����� � ���� ��� �����������, �� ����������.
say ������� ������� ���� ��������� �� ����� �����i, ����i ���i �� �������i, �� �����
say �����i �� ����.
wait 1
say ������, � ������i��� ��� �������� ��������.
say �����i �����i�i�� �� ��� ������i���, �� ��� �������� ��������� �������:
say "�� ���� ��� ������i, ����i?"
say "�� �������i�� ���� ��i������, �� �� �Ӹ ������ ��������. �� ��� �����, ��� ����� 
say � ������ �����. � � ���� ���� ����i ���� �����." -- ���������� ���.
say "������i ���� ��������! �� ����� � ��� ���� ���� ������, ����� ������. � ���i �� 
say ���i� ������, �� � ��� ������" -- �������� ��������.
wait 2
say ���� ��� �� i �������i ������� �����. ������ ���: 
say "�����, ������i��, �������i��, ��� �i�����, ��� �������" 
say I ���i ������ ���� �����������, ��� i � ����� �� ������: �i���i �� ������i, 
say �������, �� ��������, �i��� �����i�� �� ������ �i��...
say � �� ������:
say "�����, ����i��, �����i��, �i�����, ������ �����i��"
say ����� ���� ������i��� ���i� �� ���.
say I ���� ���� ��� ��� ����� ���� �� ������. 
say ���� ������� ��� ��� ���, �� �������. ���� i ������ ��.
���
wait 4
say �i �� ���������?
attach 74902 %self.id%
attach 74903 %self.id%
detach 74900 %self.id%
detach 74901 %self.id%
end
~
#74902
����������������~
0 q 100
*~
wait 1
�� � �������� ��������
~
#74903
��������~
0 d 100
��������~
wait 2
say �������, �� �����i ��� �� �� ���� ������ ������ �� �������. �� �����i �� �������.
say �� �� ����� ����, ���� �����. ����� ���� �� �������.
attach 74904 %self.id%
calcuid jur 74900 mob
attach 74905 %jur.id%
attach 74906 %jur.id%
attach 74913 %self.id%
detach 74902 %self.id%
detach 74903 %self.id%
end
~
#74904
��������������~
0 q 100
*~
wait 3
say �� ��� ��� � ����� �������?
end
~
#74905
�������������~
0 q 100
*~
wait 3
say ���������� ��������!
say �� ��� ������i ���, �i ���������� i� ��� �����? 
say �i �� ��������� ���� ����?
end
~
#74906
���������~
0 d 100
���������~
wait 3
say ��?! ������ ��� ������ �����?
say �� ������i�.
wait 5
���
wait 10
say ����� �������� ��������, �� ����� � ����. 
say ������ ������� ������i� i ����� ������.
say �� �����i �� �����i�� � �����, ������ �����i ���� ��������,
say � ���� ��� i � � ����� ������.
attach 74907 %self.id%
calcuid trav 74907 mob
attach 74908 %trav.id%
detach 74905 %self.id%
detach 74906 %self.id%
end
~
#74907
����~
0 q 100
*~
wait 3
����
end
~
#74908
���������~
0 q 100
*~
wait 2
say ���� �� ������� �� ���� ���i���.
say ����� ��� � ������� ���������? �� � � i ��� ���� �������, ��� � ������ � ��� �������.
say I ��� ���������� ������ �������i��� ����� ����� ���� ��i.
say �� �� � �� �������? ��i� i� ����� � �������i �����i�i �����. 
wait 5
say � ���� ������i. �������� ������i���, ����� � ������ �����, ��� � �������� �� �����i, 
say �����i �������i ��� �������. ������ i �� ���� ���, �� �� �������i �����i���, 
say i �������� ������� ������.
wait 10
say ������ �� ��. �������� �� �������, �� �������i.
say � ��� � ���������� ����� �������, ������i �����i��, ��� �� ����� � ���� ����.
say �� ��� ������ �����i � ����� ������ �����.
attach 74909 %self.id%
if (%exist.mob(74904)%)
  calcuid lesh 74904 mob
  attach 74910 %lesh.id%
end
attach 74911 %self.id%
detach 74908 %self.id%
end
~
#74909
������������������~
0 r 100
*~
say �� ��� ���� ������� �� ������ ����i?
����
~
#74910
���������~
0 q 100
*~
wait 2
say � ���� i ��� �����! ��������� � ����, ����� �� ��� �������, i ��� ���������.
say ������.
say �� �����i ���� ���i��� ���� ��� �ic��. �� ��� ����� �� �����, ���� ���, �i ����i, ���i
say �i�� ���i��. �� i� ������ ��������� ������. �� �� i��i i �i���� �� ���������.
say ������.
calcuid qroom 74929 room
attach 74915 %qroom.id%
detach 74910 %self.id%
end
~
#74911
�����������������~
0 j 100
*~
switch %object.vnum%
  case 74900
    wait 5
    say �� �������! ���� ����̸� �� ������ ����i. � ����i� ���� �������� ��� ������� ������.
    say �� i ����� ����� �����.
    �� ������ ����� ����� � ����� � ������ ������. ���� �� ������, �������� ����������� ������ 
    ���� �� �����, � �������.
    say ������!
    mload obj 74901
    ���� ������ %actor.name%
    say �� ������ �� ������� ���i!
    attach 74914 %self.id%
    detach 74909 %self.id%
    detach 74911 %self.id%
  end
~
#74912
��������������~
0 j 100
*~
if (%object.vnum% == 74901)
  wait 10
  �� ���������� � �����.
  wait 10
  �� ����� ������.
  wait 1s
  ���� �����
  wait 10
  msend %actor% � ��� ������� ������.
  wait 1s
  wecho ����� ������ ������� ��� ����� ��� ��������.
  wecho "���... �������!"-- �������� �������� ��.
  wecho �� ���! ��� ��� ����� ������� � ����� ���-�� � �����.
  wait 10
  say ���� �������� ��� �������� ����.
  mload obj 74902
  ���� ��� %actor.name%
  wait 10
  say �� �� ���� ��������, ��� ��� ���.
  say � ���i ���������: "� ������ ���� ����� �����!", ��� ������i ����i ����� i �� �����.
  say ����� ��� ����� ����� ������.
  ��
  attach 74914 %self.id%
  detach 74907 %self.id%
  detach 74912 %self.id%
end
~
#74913
��������������~
0 j 100
*~
switch %object.vnum%
  case 74903
    wait 5
    �� �������� �� �������.
    say ������ ��������! ����� ��, � ��� ������ ������ �i���� �� �����.
    eval rand %random.100%
    if (%rand% < 10) && (%world.curobjs(74922)% < 4)
      mload obj 74922
      ���� ������ %actor.name%
    elseif (%rand% < 20) && (%world.curobjs(74923)% < 10)
      mload obj 74923
      ���� ������� %actor.name%
    else
      msend %actor% ������ ��� ��������� ����� ���.
      %actor.gold(+2000)%
    end
    attach 74914 %self.id%
    detach 74904 %self.id%
    detach 74913 %self.id%
  end
~
#74914
�����������������~
0 q 100
*~
wait 2
say ����� �����!
end
~
#74915
������� ������� �������~
2 c 100
�������~
if !%arg.contains(����)% 
  return 0
  halt
end
wecho ������ ����, �� �������� ������.
wdoor   74929 west room 74930
wdoor   74930 east room 74929
detach  74915 %self.id%
~
#74916
���������������~
0 r 100
*~
wait 2
say ���� ������� �� ����? ������ ������� ��������, ��� ���� �i����� ������i?
end
~
#74917
�����������~
0 j 100
*~
switch %object.vnum%
  case 74902
    wait 1
    mpurge %object%
    wait 5
    say ��� ����? ���?
    say I ��� ��� ����� � ������ ����?
    attach 74918 %self.id%
  done
~
#74918
�����������~
0 c 100
�����~
if !%arg.contains(�����)%
  return 1
  halt
end
mecho ������ �� ��������, ��������� ���� ���������, � ����� ���� ������� ��������. 
mecho ��� ����������, ��� ��� ������ �� ������� ������������, � ���� ��� ����� �����. 
mecho � ����� ���������� ������� ��� �����.
wait 5
mecho ��� ���� ������: "������!"
wait 5
mecho  ��� �� �� ����� ����������, � � ����� ������ �������� �� ���.
mload  mob 74919
calcuid pan 74918 mob
mpurge %pan%
~
#74919
�������~
0 f 100
*~
if %world.curobjs(74903)% < 1
  mload obj 74903
end
~
#74920
�������������~
0 f 100
*~
if %world.curobjs(74903)% < 1
  mload obj 74900
end
if (%world.curobjs(74909)% < 5) && (%random.1000% <= 150)
  mload obj 74909
end
~
#74921
����� ������� �������~
0 f 100
*~
if (%world.curobjs(74904)% < 5) && (%random.1000% <= 150)
  mload obj 74904
end
if (%world.curobjs(74906)% < 5) && (%random.1000% <= 100)
  mload obj 74906
end
if (%world.curobjs(74908)% < 5) && (%random.1000% <= 100)
  mload obj 74908
end
~
#74922
�����~
0 ab 50
*~
if %random.15%==1 then
  �� ����� ���������.
end
~
#74923
�������!~
0 ab 50
*~
if %random.5%==1 then
  say ����� �����!
end
~
#74924
���������~
2 f 100
*~
wdoor   74930 east  purge
wdoor   74929 west  purge
calcuid qroom 74929 room
calcuid ded 74905 mob
calcuid jur 74900 mob
calcuid trav 74907 mob
calcuid les 74904 mob
calcuid pan 74918 mob
calcuid ved 74902 mob
global qroom
global ded
global jur
global trav
global les
global pan
global ved
attach 74900 %ded.id%
attach 74901 %ded.id%
attach 74920 %ved.id%
detach 74915 %qroom.id%
detach 74902 %ded.id%
detach 74903 %ded.id%
detach 74904 %ded.id%
detach 74905 %jur.id%
detach 74906 %jur.id%
detach 74907 %jur.id%
detach 74908 %trav.id%
detach 74909 %trav.id%.
detach 74910 %les.id%
detach 74914 %ded.id%
detach 74914 %jur.id%
detach 74914 %trav.id%
detach 74918 %pan.id%
~
#74925
����� �������� �������~
0 f 100
*~
if (%world.curobjs(74917)% < 5) && (%random.1000% <= 150)
  mload obj 74917
end
if (%world.curobjs(74924)% < 5) && (%random.1000% <= 100)
  mload obj 74924
end
~
#74926
����� ��������~
0 f 100
*~
if (%world.curobjs(74905)% < 5) && (%random.1000% <= 150)
  mload obj 74905
end
if (%world.curobjs(74907)% < 5) && (%random.1000% <= 100)
  mload obj 74907
end
~
#74927
����� ��� ��������~
0 f 100
*~
if (%world.curobjs(74910)% < 5) && (%random.1000% <= 150)
  mload obj 74910
end
~
#74928
����� �������~
0 f 100
*~
if (%world.curobjs(74915)% < 5) && (%random.1000% <= 150)
  mload obj 74915
end
if (%world.curobjs(74916)% < 5) && (%random.1000% <= 150)
  mload obj 74916
end
~
#74929
����� ��������~
0 f 100
*~
if (%world.curobjs(74913)% < 5) && (%random.1000% <= 150)
  mload obj 74913
end
if (%world.curobjs(74914)% < 5) && (%random.1000% <= 150)
  mload obj 74914
end
~
#74930
����� �������~
0 f 100
*~
if (%world.curobjs(74909)% < 5) && (%random.1000% <= 150)
  mload obj 74909
end
~
#74931
����� �������~
0 f 100
*~
if (%world.curobjs(74911)% < 3) && (%random.1000% <= 100)
  mload obj 74911
end
~
#74932
����� �������� ��������~
0 f 100
*~
if (%world.curobjs(74917)% < 5) && (%random.1000% <= 150)
  mload obj 74917
end
if (%world.curobjs(74924)% < 5) && (%random.1000% <= 100)
  mload obj 74924
end
~
#74933
����� ��������~
0 f 100
~
if (%world.curobjs(74925)% < 3) && (%random.1000% <= 100)
  mload obj 74925
end
~
#74934
����� ����~
0 f 100
*~
if (%world.curobjs(74920)% < 5) && (%random.1000% <= 150)
  mload obj 74920
end
if (%world.curobjs(74921)% < 3) && (%random.1000% <= 70)
  mload obj 74921
end
~
#74935
����� ��������~
0 f 100
~
if (%world.curobjs(74912)% < 3) && (%random.1000% <= 100)
  mload obj 74912
end
~
#74936
����� ����� �����~
0 f 100
*~
if (%world.curobjs(74918)% < 5) && (%random.1000% <= 150)
  mload obj 74918
end
if (%world.curobjs(74919)% < 5) && (%random.1000% <= 150)
  mload obj 74919
end
~
$~
