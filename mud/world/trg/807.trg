#80700
������� ����� �� �������� ������~
0 f 100
~
if %world.curobjs(80700)% < 20
  mecho �� ����������� ����� ����� � ����� �������� ������.
  mload obj 80700
end
~
#80701
������� ������������~
0 q 100
~
� ����������� ���� %actor.iname%.
� � ������� � ������� ����� � ���� �������, ��� ����� ����������� �������� ��������.
� ���� �� ��� �� ��������� ������� ������ � ������� ��� �������, �� ����� � ���� ����� � ������� �� ���.
� �� ��� � ���� ������� ���� ��������� ������� �����.
calcuid delete_trig 80706 mob
detach 80701 %delete_trig.id% 
~
#80702
������� ������ ����~
0 j 100
~
wait 1
if ( %object.vnum% != 80700 )
  � � ����� ��� ��� �����?
  ��
  ���� %object.iname%
  halt
end
wait 1
mpurge %object%
wait 1s
set vnum 80701
set Get_item %random.15%
eval vnum %vnum% + %Get_item%
if (%vnum% > 80712)  || (%world.curobjs(%vnum%)% > 3)
  � ��� ��������! ������ �� �����. ����� ������ �� ����������.
  � �� �� �� �������������, ������� ���, ����� ���� � ����� �������.
  ���
  halt
else
  wait 1s
  � ��, ����� ��������.
  � ����� � �������!
  � ��� �����, ��� � ��� ���� ���������.
  mload obj %vnum%
  ���� ���� %actor.name%
end
~
#80703
������ ������ �����������~
0 r 100
~
if (%quest807.name% == %nil%)
  wait 1s
  ���   
  � ���������� %actor.iname%.
  � ����� ���� ����� �� ���������.
  � � ��� ��� � ������� ������ �� ����, ��� ��� ����� � ��� �����.
  � ����������� ��� ��������, �� ������ ��������� - ��� �����.
  � ��� �� �� � ���� �� ��������, �� ���� �� ��������.
  � � ��� ������� ������� ���� ������������.
  ���
  wait 1s
  � ������� ��� � ��� ������ �������� ������, ��� ������� ���� �����.
  � � �������� ����� ���� ������.
  � ������ ����� � ����� ����.
  � ����� ��� ����� ������ � �����.
  ��� %actor.iname%
  wait 1s
  � ��. ����� �� ��� ��������.
  � ����, ��� �� ���� ������������ ������ �� �������, ��� ��� ��� ��� ���� ��������.
  � �����-�� ����� ���� �� ����� ������ � ������������ �������, �� ��� ��� ��������.
  ������ %actor.iname%
  wait 1s
  � ��� �� ��� ��������?
elseif (%quest807.name% == %actor.name%)
  wait 1s
  � �� ��� ������������ ����� �������� ������?
  ������ %actor.iname%
else
  wait 1s
  � ��. ��� ����� ����������!
  � �� �� �� ��������, �������� ��� ��� �����...
  wait 1s
  � � �� ��������� �� �� ��������, �� ����� %quest807.name%?
  � ��� ��%actor.y% �� ����� ��������� � ��� ��� �� ����� �� ����.
  � ���� ���� �� ���������.
  ������
end                                    
~
#80704
������ ������ ���� �����~
0 d 0
�� ������ ������ ���~
if (%quest807.name% == %nil%)
  set quest807 %actor%
  worlds quest807
  � ��� ���, ��� ���� ���������� �������.
  wait 1s
  ���
  � ���������� ��� ����� ����� ����������.
  � � �������, � � ��� ������ ������ ����� ������� ������, ���� �������� ������� �� �������.
  � �� ����� ���� ��� �� ���������� � ������ �������� ������.
  ������
  wait 1s
  � ����� ������ ����� ������, ���� ����� ������-����.
  � �� ��������� � ����� �����. �� ������� ����� ��� �� ������-�������.
  � �� ���� ����������, �� �� ����� ������. ��� ������ �������� �������� ��������.
  ����
  wait 1s
  � ��� ���� �������, ������� ��� ��.
  mload obj 80726
  ���� ����� %actor.iname%
  � ������ �����, �� ���������� ���� ���� ������.
  wait 1s
  � ��� ���, ��� ���� ����� �����.
  ���� %actor.iname%
elseif (%quest807.name% == %actor.name%) 
  wait 1s
  � � ���� ���� ����� �� ���� �����? ��� ������� �����?!
else               
  wait 1s
  ������ %actor.iname%
  � ��� �� ��� ���� �������!
  ������ %actor.iname%
  � �� ������! � ����� !!!
end
~
#80705
������ ������ ��������� �����~
0 j 100
~
wait 1
if ( %object.vnum% != 80727 :)
  wait 1s 
  � � �� ����� ��� ��� �����?
  � ���� �� ��� ��� �����?!
  ������� %object.iname%
  halt
end
wait 1
mpurge %object%
if ( %quest807.id% != %actor.id% :)
  ����� %actor.name%
  wait 1s
  say ��, �������! �-������!
  �������
  *halt
end
detach 80703 %self.id% 
detach 80704 %self.id%
� �� �������!
� ��� ��� ��������!
� �������-�� ���� ���� ����������, � ��� ������ ��� ������.
������ %actor.name%
eval Get_item %random.6%
set vnum1 80720   
eval vnum %vnum1%+%Get_item%
if (%vnum% > 80724)  || (%world.curobjs(%vnum%)% > 2)
  � ������ �� ������ �������� ����� � ���.
  � �� ������ ����� ���� ���� � ��� � ������.
else
  mload obj %vnum%
  ���� ��� .%actor.name%
end
wait 10s
if ((%world.curobjs(3307)% < 2) && (%random.1000% <= 40))
  mload obj 3307
  � &W���.... ������� ��� ��������... � ���� ��� �������� ���� ����������. ���� �� ���� - ����� ����������!&n
  ���� ��� .%actor.name%
end
~
#80706
������ ����� �����������~
0 r 100
~
wait 1s
���� %actor.iname%
� ���. � ���� ��� ����� ��������.?!
� ������ ����� ���� �� ���� �����, �����������?
� ��� � � ��� ���� �� ��� ������?!
� ������ ������, �������!    
calcuid delete_trig 80703 mob
detach 80706 %delete_trig.id% 
~
#80707
������ ����� ��������� ������� � ���� ������~
0 j 100
~
if (%quest807.name% == %actor.iname%) && (%object.vnum% == 80726)
  wait 1s
  mecho ������ ������ ���� ������� � ������ � ��� � ������� ���� ������.
  wait 2s
  � ��.
  � ��� �� ������ � ��� ���������...
  � ������� ���� �����?
  � ��� �� � ����, ��� � ���� ���.
  wait 1s
  � �� �����, ��� � ����� ������!
  � ������ �� ������ ������������ ��� �����������, � ���� ������ ��� ����� ������������.
  wait 1s
  � ���, ����� � �����.
  mpurge %object%
  mload obj 80725
  ���� ���� %actor.iname%                                     
elseif (%quest807.name% == %actor.iname%) && (%object.vnum% != 80726)
  wait 1s                                     
  � ��, � ���� �� ��� ��� ������� �����?!
  ������� %object.name%
else
  wait 1s
  � ����� �� ����, �����������!
  ���� %object.name%
  ��� %actor.iname%
end
~
#80708
�������� ����� ��������~
0 r 100
~
� ������ ��������, ����� � �� ���� �� �������.
� ������ ��������, ����� � ������� ������, ��� ������ ������.
� � ����������� ������!
����� .%actor.iname%
~
#80709
������� ������-����~
1 h 100
~
if %actor.realroom% == 80725
  wait 1s
  oecho ��� ������ ������ �������� �����, ������ ��� ���������� � �����������.
  oecho �� ����� ���������� ������� ������� � ... 
  oecho ������� �������, ���������� ������� ��� ������, �� ��������� �������� ���!
  wait 1s
  oecho ����� ������ ��������� � ���, �� � ���������� ��������, ��� �������� �����
  oecho ������ ������������ ���� �� ��, ������ ������������ � �������!
  odoor 80725 south room 80754
  odoor 80754 north room 80725
end
wait 1
opurge %self%
end
~
#80710
������� ����� ������������~
0 f 0
~
� ��� �� ���!
� ����� �� ������ ���� ���������!
���� %actor.iname%
� �������..
mload obj 80727 
~
#80711
�����~
2 f 100
~
set quest807 %nil% 
worlds quest807
calcuid delete_trig 80702 mob
attach 80703 %delete_trig.id% 
attach 80704 %delete_trig.id%
calcuid delete_trig 80703 mob
attach 80706 %delete_trig.id%
wdoor 80725 south purge room 80754
wdoor 80754 north purge room 80725 
~
$~
