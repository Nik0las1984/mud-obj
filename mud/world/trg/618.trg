#61800
������ ������������~
0 r 100
~
wait 1s
����   
� �������, %actor.iname%.
����� %actor.iname%
wait 1s
� ��, � ������ �� ���� � �����, ���� ����� ������� � ����, ��� ������ ����.
� ��, �� �������� �� �������, ����� �� ������ ��� �� �������.
� �� ���� ������ �� ����, ������, � ������� �� ����������.
wait 2s
�����
� �� ��� ���������, ��� ����� �� ����� ������, �������� ��� ��� ?
attach 61801 %self.id%
~
#61801
������ ���� �����~
0 d 100
������~
set quest618 %actor%
global quest618
wait 1s
���
� ��� � �������, � �� ����� ������� � ������ ��� ������.
� ��� ���� ���������� ������. 
� � ��� ������� �� ������� �������...��� � ���� �� ���������, ��� ���� ������� ���� ?
wait 1s
� ��� �������� ����.
���� %actor.iname%
wait 1s
� �� ������...
� ���� ��� ������.
� � ���������� ��� ������� ���������� ����� ������ ��� ����� � ������� ����.
� ������ ��� ������ ����, �� �� ������ ��, � ��� ��������-���������.
� ���� ���, � ������ ��� �������  ���, � � �� ����� ��� �� ������� ��������.
���
wait 1s 
mload obj 61800
���� ������ %actor.iname%
wait 1s
� �� ��� ����������, �� ������ ��� �����, � �� ���� � ���� ��������.
detach 61800 %self.id%
detach 61801 %self.id%
~
#61802
���� � ������~
2 h 100
~
if ( %object.vnum% == 61800 )
  wait 1s
  wecho ����� �������� ��� ����� �������, �� ��� ������ ���������� ����� ������������ � ���.
  wecho � �� ���� ����� ������, �� �������, ��� ���� ���������� ������.
  wdoor 61808 east room 61809
  wdoor 61809 west room 61808 
  wait 2s
  wecho ��� �� ��� ���� � ����, ������ � ������ ������ �����.
end
~
#61803
���� �������~
0 f 100
~
msend %actor.name% ��� � ������� ������ ������� ����� ������.
mechoaround %actor.name% %actor.iname% � ������� ����� ������� ������ ��� ������.
if ((%world.curobjs(412)% < 1) && (%random.1000% <= 120))
  mload obj 412
end
mload obj 61802
~
#61804
������� �����~
0 j 100
~
wait 1
if %object.vnum% != 61802
  eval objectname %object.name%
  drop %objectname.car%.%objectname.cdr%
  halt
end
wait 1
mpurge %object%
if (%actor.id% != %quest618.id%)
  say ��, �� ������� �������... �� ���-�� � ���� �� ��������.
  ���
  say �� ��� �����%actor.g%?!
  ���
  wait 2s
  say ������, �� �����!
  stand
  mkill %actor%
  halt
end
wait 1s
� �, �� � ������ �� ������ � ����!
� �� ��� ���� ���� ���!
���
wait 1s
� �� �����, ������ ������ ���� �������, � � ��� ������ �� ������ �� ���� ������!
eval vnum 61813+%random.30%
if (%vnum% > 61817 )  || (%world.curobjs(%vnum%)% > 1)
  mload obj 61818
  ���� ����� %actor.name%
else
  wait 1s
  mload obj %vnum%
  ���� ���  .%actor.name%
end
end
~
#61805
���� ���� �������~
0 f 100
~
msend %actor.name% ��������� ������� ��������� ������������ � �������.
mechoaround %actor.name% %actor.iname% ��� ������ ��������� ��������� ��� ��������.
mload obj 61822
~
#61806
���� �������� ����~
0 f 100
~
msend %actor.name% �������� ������� ��������� ������������ � �������.
mechoaround %actor.name% %actor.iname% ��� ������ ��������� ��������� ��� ��������.
mload obj 61824
~
#61807
���� ���� �� �����~
0 f 100
~
msend %actor.name% �� �������� ����� ���� ���������� � ��� �����.
mechoaround %actor.name% %actor.iname% � ������� � ������ ����� ����� �� ����� � �����.
mload obj 61826
~
#61808
������� ������ �� ������ �������~
2 h 100
~
if ( %object.vnum% == 61822 )
  wait 1s
  wecho ���, ������, �������...�������...
  wecho ����� ��� �������� �� ���� �����.
  wdoor 61836 west room 61827
  wdoor 61827 east room 61836         
  wait 2s
  wecho ��, � ����! �������� ������.
end
~
#61809
������� ������ �� ������ ����~
2 h 100
~
if ( %object.vnum% == 61824 )
  wait 1s
  wecho   ����� ������� ����� �� ��� �������� ���.
  wdoor 61848 south room 61849
  wdoor 61849 north room 61848                    
  wait 1s
  wecho �� ��� ������ ����� ������������ � ���, � �� ������ �� ��������� ��� ������, ���
  wecho ����� ��� � �� ����� ������.
end
~
#61810
������� ������ �� ������ �����~
2 h 100
~
if ( %object.vnum% == 61826 )
  wait 1s
  wecho �������� �������� ��� �� ���� �������.
  wdoor 61820 east room 61822
  wdoor 61822 west room 61820                  
  wait 2s
  wecho � ��� ��� �� ���������� �� � ������.
end
~
#61811
���� ����~
0 f 100
~
if (%world.curobjs(61801)% < 5 ) && (%random.100% <= 8 )
  mload obj 61801
end
~
#61812
�����~
2 f 100
~
calcuid delete_trig 61800 mob
attach 61800 %delete_trig.id% 
attach 61801 %delete_trig.id%
attach 61804 %delete_trig.id%
wait 1
calcuid delete_trig 61802 mob
attach 61803 %delete_trig.id% 
calcuid delete_trig 61807 mob
attach 61805 %delete_trig.id%
wait 1
calcuid delete_trig 61808 mob
attach 61806 %delete_trig.id% 
calcuid delete_trig 61809 mob
attach 61807 %delete_trig.id%
wait 1
calcuid delete_trig 61801 mob
attach 61811 %delete_trig.id%
wdoor 61808 east purge 
wdoor 61809 west purge 
wdoor 61836 west purge 
wdoor 61827 east purge 
wait 1
wdoor 61848 south purge 
wdoor 61849 north purge 
wdoor 61820 east purge 
wdoor 61822 west purge 
~
$~
