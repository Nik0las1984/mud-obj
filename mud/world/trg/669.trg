#66900
������ ���� � ����� ������� ����~
0 f 100
~
if (%random.3% == 2)
  msend %actor% ������� ������������, �� �������� �� ����� ����.
  mechoaround %actor% %actor.iname% ��������� �������%actor.g% ���� �� �����.
  mload obj 66907
end
if (%random.3% == 2)
  msend %actor% ������� �����������, �� ����� ����� � �����.
  mechoaround %actor% %actor.iname% ������ � �����, ����%actor.g% � ����� �����.           
  switch %self.vnum%
    case 66911
      mload obj 66908
    break
    case 66910
      mload obj 66909
    break
    case 66912
      mload obj 66910
    break
  done
end
~
#66904
���������� ���� �����_1~
0 r 100
~
if (%quest669.name% = nil)
  wait 1s
  ���   
  � ����������� ���� %actor.iname%
  � ������, ��� �� ���%actor.y% ����.
  � ���� � ���� ��� ���� ��������� ���������...
  � ����������� �� �� ���������� � � ����� �� ��������.
  wait 1s
  � ��� �� ��� ��������?
end
~
#66905
���������� ���� �����_2~
0 d 0
��~
if (%quest669.name% = nil)
  wait 1s
  set quest669 %actor%
  worlds quest669
  �����
  wait 1s
  � �� ��� ������.
  � � �������� ��� ��� ���, �������� �� ���� �� ����� 6 ���, ����� ����� �������
  � ������� ��������� ������������! 
  � ��� ������ ����� ���, ��� ������ ���, �� ������ �� ��������.
  �������
  wait 1s
  � �� ������� �� ����� � ������ �����, ��� ��� ������ ����� ���� �� ����
  � ��������, ���������� �� ���� ������ ����������� �������� �� ������ ������.
  ���
  wait 1s
  � ����� ��� �������, ������� ����� ���� � ����, ������ ��� �������.
  � ����� � ���� � ������� ��� ������� ��� ����� ��������.
  ���
  wait 1s
  � ��� ���� ����������, ����� ������ ����� ������ � ���.
  � ����� ��� ������ � �� ���� ���������.
  mload obj 66901
  ���� ���������� %actor.name%
  � ��� ����� � ������.
  ����� %actor.name%
  set Give_tuskes_669 0
  set Give_finger_669 0
  worlds Give_finger_669
  worlds Give_tuskes_669
  detach 66904 %self.id%
  detach 66905 %self.id%
end
~
#66906
���������� ��������� �����~
0 j 100
~
if (%actor.name% != %quest669.name%)
  ������� %object.iname%
  �����
  halt
end
if (%actor.name% == %quest669.name%)
  if (%object.iname% == �������� �� ������ ������)
    wait 1s
    %mpurge% %object%
    � ��� ������� ����!
    � ��� ����� ������ � ������������.
    �����
    wait 1s
    � ���, ����� �������, ��� � � ������!
    set vnum 66921
    set Get_item %random.5%
    eval vnum %vnum% + %Get_Item%
    if (%vnum% > 66926)  || (%world.curobjs(%vnum%)% > 5)
      mload obj 66927
      ���� ������� %actor.name%
      halt
    else 
      wait 1s
      mload obj %vnum%
      ���� ������  %actor.name%
    end
  end
~
#66907
����� � �����_1~
0 r 100
~
� ����! ������ �� �� ������ ������!
������
~
#66908
����� � �����_2~
0 j 100
~
wait 1s
� ���� �� ��� ����� ��� ���������?
� �� ��� ��� ��� �����?!
if (%actor.name% == %quest669.name%) && (%object.vnum% == 66901)
  wait 1s
  � ��, ����, ������ �����.
  mecho ������ ����� � ��������� ������������� ������� �� ����������.
  wait 3s
  � �����, ��� � �������, ���������� ��� ����� �� �������� �����.
  �����
  � ����� �������� ��� ���� ����... ���, �� ��������.
  ���
  wait 1s
  � ��� �����, ���� ��� ���� ������, ��� ��� �� �����������.
  ���
  wait 1s
  � �����, ������ ������, ���� �� �� ������!
  ����
  wait 2s
  mecho ������ ������� � ����� � ����� �� �����-�� ������.
  mecho ������ ��� ���������, � ������ �������� ������������.
  mdoor 66925 east room 66924
  mdoor 66924 west room 66925
  mpurge %object%
  calcuid delete_trig 66908 mob
  detach 66907 %delete_trig.id% 
  detach 66908 %delete_trig.id% 
else
  ���� all
end
~
#66909
�������_1~
0 r 100
~
if (%actor.name% == %quest669.name%)
  wait 1s
  ����
  � ���������� %actor.name%.
  � ����� ��� ���� ����������.
  ���
  wait 1s
  � ��� � �������, �� ����� �� ���������� ����...
  � � ���� ����� �������� �� ������ ������.
  wait 1s
  � ��, ������, � ���� ��� ��������, �� ������ ���-��� ������ �� ��� ����...
  wait 1s
  ���
  � �� ������ ����� ������ ������, ���� ��� � ������� ��� ��� �����.
  � ��� ��� ����������� ��� �������� ��������.
  � � �� ������... ��� ���...
  � ��� ���%actor.g% ������, �������� � ���� ���� ���-�� ��������.
  � � ������ �� ���� ������, �� ���������� ��� �� ���� �������� ������
  � �������, ������� ������� �� ������� �� ���������� ������������.
  � ����� ���� ����� ����������� � ���... �� ������... �� ��������!
  ����� %actor.name%
  � � ����� ������, ���� � ���� �� ������������ ��� ����������, � � �������
  � �� ��������! 
  wait 1s
  � ��� ��, �� ���� ���!
  calcuid delete_trig 66909 mob
  detach 66909 %delete_trig.id% 
end
~
#66910
������� ��������� ����~
0 j 100
~
if (%actor.name% == %quest669.name%)
  if (%object.vnum% == 66902)
    wait 1s
    � ��� �������, ������ � ���� ���� ����� ��� �������� ��������.
    ����
    set Give_tuskes_669 1
    worlds Give_tuskes_669
  end
  if (%object.vnum% == 66903)
    wait 1s
    � ��� ���-���� � ��� ����, � ��� ��� �� ���� ��������!
    � �� ������� ����, �������%actor.g% �� ��� �� ����.
    ����
    set Give_finger_669 1
    worlds Give_finger_669
  end
  if (%Give_finger_669% == 1) 
    if (%Give_tuskes_669% == 1)
      wait 2s
      � ���.. ���. � �������� ��������.
      � �����, ����� ���� ����������.
      � �, �� � ������ ������� ���������� ���� �� �������� ��� �� ������ ����.
      calcuid teeth 66902 obj
      calcuid fings 66903 obj
      mpurge %teeth%
      mpurge %fings%
      mload obj 66913
      ���� �������� %actor.name%
      calcuid delete_trig 66909 mob
      detach 66910 %delete_trig.id% 
    end
  end
end
���� ���
~
#66911
������ �������~
0 f 100
~
msend %actor.name% ������ ��������� �� ������� ������������ ����� � ������ �������� � ��������� ���� �������.
mechoaround %actor.name%  %actor.name% ������ ��������� ����� ���� ������� ������������ �����.
mload obj 66903
~
#66912
������ ������~
0 f 100
~
msend %actor.name% ������ ������ �� ������ ����� � ���������� ������.
mechoaround %actor% %actor.name% ������ ������ �����%actor.g% � ���������� ������ �����.
mload obj 66902
~
#66913
�����~
2 f 100
~
calcuid set_trig 66902 mob
attach 66904 %set_trig.id% 
attach 66905 %set_trig.id%
calcuid set_trig 66908 mob
attach 66907 %set_trig.id% 
attach 66908 %set_trig.id% 
calcuid set_trig 66905 mob
attach 66914 %set_trig.id% 
attach 66915 %set_trig.id%
calcuid set_trig 66909 mob
attach 66909 %set_trig.id% 
attach 66910 %set_trig.id% 
*������ ������ � ���
wdoor 66925 east purge
wdoor 66924 west purge
~
#66914
����� ����������_1~
0 r 100
~
wait 1s
����
� ���������� ��������.
� �� ����� �� �� �������? ������� ���...
� ���������� �� �����.
� �� ��� ���� ����� �������� ������� ������� � �� ������.
wait 1s
�����
� �������, ����� �� ����� ����� ���.
~
#66915
����� ����������_2~
0 j 100
~
wait 1s
if (%object.vnum% == 66904)
  ������
  � ����� �, ��� �������� �� ����!
  ����
  � �� ������ ������ �� ���������, �� ����� ������ ��� �����, ������ � ����������� ����.
  ���
  wait 1s
  � �� ��� ���� ������ �� ������� � ������ ������ ������.
  � �� ��� ���� ������ ������, ����� ���� � ����������� ����.
  � �� ��� ���� �����, ����� ������ �� �����!
  mload obj 66900
  ���� ���� %actor.name%
  mpurge %object%
  calcuid delete_trig 66905 mob
  detach 66914 %delete_trig.id% 
  detach 66915 %delete_trig.id% 
end
~
#66916
������~
0 j 100
~
if (%object.iname% == ���� ������� ����)
  wait 1
  mpurge %object%
  � ��, ��� ���������� ����������. � �������� ���-������ �� ���� �������...
  � ������� �������.
  mecho ������ ������ � ������ ������� � ����� ���-�� ������...
  wait 2s
  if (%world.curobjs(66905)% > 49)
    � ��! ������ �� ����������! ������� ��� �� � ������.
    ���
    halt
  end
  � ���! ��������� �������� �����! �� ����� ����� �������� ����.
  mload obj 66905
  ���� ����� %actor.name%
end
~
#66917
�������~
0 j 100
~
if (%object.iname% != ����� ������ ������� ����) && (%object.iname% != ����� �������� ������� ����) && (%object.iname% != ����� �������� ������� ����)
  wait 1s
  ���� %object.iname%
  � �� ��� ��� ���?
  ���
  halt
end
if (%object.iname% == ����� ������ ������� ����)
  wait 1s
  set vnum 66913
  set Get_item %random.10%
  eval vnum %vnum% + %Get_Item%
  mpurge %object%
  if (%vnum% > 66921)  || (%world.curobjs(%vnum%)% > 4)
    � ��, ������ �� �����. �� ������ �� ��� ����� �������%actor.g%!
    � ����� � ��������� ��� ���� � ���������...
    ���
    halt
  else 
    wait 1s
    � ���, �����.
    � ��� ���, ��� � ���� �������.
    mload obj %vnum%
    ���� ��� %actor.name%
  end
end
if (%object.iname% == ����� �������� ������� ����)
  wait 1s
  set vnum 66927
  set Get_item %random.10%
  eval vnum %vnum% + %Get_Item%
  mpurge %object%
  if (%vnum% > 66934)  || (%world.curobjs(%vnum%)% > 4)
    � ��, ������ �� �����. �� ������ �� ��� ����� �������%actor.g%!
    � ����� � ��������� ��� ���� � ���������...
    ���
    halt
  else 
    wait 1s
    � ���, �����.
    � ��� ���, ��� � ���� �������.
    mload obj %vnum%
    ���� ����� %actor.name%
  end
end
if (%object.iname% == ����� �������� ������� ����)
  wait 1s
  set vnum 66934
  set Get_item %random.5%
  eval vnum %vnum% + %Get_Item%
  mpurge %object%
  if (%vnum% > 66937)  || (%world.curobjs(%vnum%)% > 4)
    � ��, ������ �� �����. �� ������ �� ��� ����� �������%actor.g%!
    � ����� � ��������� ��� ���� � ���������...
    ���
    halt
  else 
    wait 1s
    � ���, �����.
    � ��� ���, ��� � ���� �������.
    mload obj %vnum%
    ���� ����� %actor.name%
  end
end
~
$~
