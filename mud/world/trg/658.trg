#65800
���������� ��������~
0 r 100
~
wait 1
if %random.10% == 3
  mecho _���������� ��������� �������� � �������� � ������ ���������.
  mpurge %self%
end
~
#65801
������ � �������~
0 q 100
~
wait 2s
if %actor.sex% == 1
  � �� �������, ������ �������, ������, ������ ������.
  wait 2s
  � �� ��������� ����� � 100 ��� ���� ���������� �� ������ ������ ������ ���� �� ����������!
end
if %actor.sex% == 2
  � ������, ��������� �������, ����� ��� �����.
  wait 1s
  mecho _������ ������ �������� ���� ���������, ������� ������ � ������ �������� ������.
  dg_cast '�����' %actor.name%
  wait 2s
  � �� ��������� ����� � 100 ��� ���� ���������� �� ������ ������ ������ ���� �� ����������!
end
~
#65802
���� ���� �������~
0 m 100
~
if %amount% >= 100
  � ��, ��� �, ����� ������, ��������� ���� ��� ��������, ����� � ����� ����� ������ �����!
  calcuid lesnik 65812 mob
  attach 65803 %lesnik.id%
  detach 65802 %lesnik.id%
end
~
#65803
���� ����� �������~
0 j 100
~
wait 1s
if (%object.vnum% != 65801) && (%object.vnum% != 65802) && (%object.vnum% != 65803) && (%object.vnum% != 65804) && (%object.vnum% != 65805) && (%object.vnum% != 65806)
  ���� %actor.iname%  
  ���� ���
  halt
end
if %object.vnum% == 65801
  � ��� �� �������!
  ����
  wait 1s
  � �� �����, �������� � �� ����� ���������� ���� ��������...
  mecho _������� �������� �������� � ���������� �����.
  mpurge %object%
  wait 1s
  if (%random.100% <= 20) && (%world.curobjs(65809)% < 5)
    � �� ���, ����� ��� ������, ��� ������� ���� �� ������� �����.
    mload obj 65809
    ���� ��� %actor.iname%
  else
    �����
    � ������ ��, ������ �� �����...
  end
  calcuid lesnik 65812 mob
  attach 65802 %lesnik.id%
  detach 65803 %lesnik.id%
end
if %object.vnum% == 65802
  � ������� ������!
  ����
  wait 1s
  � �� �����, �������� � �� ����� ���������� ���� ��������...
  mecho _������� �������� �������� � ���������� �����.
  mpurge %object%
  wait 1s
  if (%random.100% <= 20) && (%world.curobjs(65810)% < 5)
    � ���, ����� ���� ��������, ������� ���� � ����� ��������.
    mload obj 65810
    ���� ��� %actor.iname%
  else
    �����
    � ������ ��, ������ �� �����...
  end
  calcuid lesnik 65812 mob
  attach 65802 %lesnik.id%
  detach 65803 %lesnik.id%
end
if %object.vnum% == 65803
  � ��������� � ����� �� ������� � ������� �����.
  ���
  wait 1s
  � �� �����, �������� � �� ����� ���������� ���� ��������...
  mecho _������� �������� �������� � ���������� �����.
  mpurge %object%
  wait 1s
  if (%random.100% <= 20) && (%world.curobjs(65811)% < 5)
    � �� ���, ����� ��� ���������, ���������� ������-������ ������ �������.
    mload obj 65811
    ���� ��� %actor.iname%
  else
    �����
    � ������ ��, ������ �� �����...
  end
  calcuid lesnik 65812 mob
  attach 65802 %lesnik.id%
  detach 65803 %lesnik.id%
end
if %object.vnum% == 65804
  � ������� �����!
  ����
  wait 1s
  � �� �����, �������� � �� ����� ���������� ���� ��������...
  mecho _������� �������� �������� � ���������� �����.
  mpurge %object%
  wait 1s
  if (%random.100% <= 20) && (%world.curobjs(65812)% < 5)
    � ���, ����� ��� ��������, � ���� ���� ����� ������ �������� �� ������ ����� ����!
    mload obj 65812
    ���� ��� %actor.iname%
  else
    �����
    � ������ ��, ������ �� �����...
  end
  calcuid lesnik 65812 mob
  attach 65802 %lesnik.id%
  detach 65803 %lesnik.id%
end
if %object.vnum% == 65805
  � �� ��, �������� �� ����� ������ �������.
  ���
  wait 1s
  � �� �����, �������� � �� ����� ���������� ���� ��������...
  mecho _������� �������� �������� � ���������� �����.
  mpurge %object%
  wait 1s
  if (%random.100% <= 20) && (%world.curobjs(65813)% < 5)
    � �� ���, ����� ��� �������, � ��� �� ������� �������� ���������!
    mload obj 65813
    ���� ��� %actor.iname%
  else
    �����
    � ������ ��, ������ �� �����...
  end
  calcuid lesnik 65812 mob
  attach 65802 %lesnik.id%
  detach 65803 %lesnik.id%
end
if %object.vnum% == 65806
  � �� ���� ������ ������ ������� �����? ������ �� ������ ����� �������� ������ � ���� ����!
  wait 1s
  � �� �����, �������� � �� ����� ������� ���� ��������...
  mecho _������� �������� �������� � ���������� �����.
  mpurge %object%
  wait 1s
  if (%random.100% <= 20) && (%world.curobjs(65814)% < 5)
    �  ����� ��� ������, ������ ����� ��������� ����� ����� �����!
    mload obj 65814
    ���� ��� %actor.iname%
  else
    �����
    � ������ ��, ������ �� �����...
  end
  calcuid lesnik 65812 mob
  attach 65802 %lesnik.id%
  detach 65803 %lesnik.id%
end
~
#65804
����� � �����~
0 q 100
~
wait 1
if %random.6% == 1
  mecho _������� ����� �������� �� ������ � �������.
  mpurge %self%
end
~
#65805
������ ���~
0 f 100
~
if (%world.curobjs(65801)% < 6) && (%random.100% <= 70)
  mload obj 65801
  msend %actor% _�� ���-��� ������� ������ � ����� ������.
  mechoaround %actor% _%actor.iname% ���-��� ������%actor.g% ������ � ����� ������. 
end
~
#65806
����� ���~
0 f 100
~
if (%world.curobjs(65802)% < 6) && (%random.100% <= 60)
  mload obj 65802
  msend %actor% _�� ���-��� ������� ������ � ����� �������.
  mechoaround %actor% _%actor.iname% ���-��� ������%actor.g% ������ � ����� �������. 
end
~
#65807
������ ���~
0 f 100
~
if (%world.curobjs(65803)% < 6) && (%random.100% <= 70)
  mload obj 65803
  msend %actor% _�� ���-��� ������� ������ � ����� ������.
  mechoaround %actor% _%actor.iname% ���-��� ������%actor.g% ������ � ����� ������. 
end
~
#65808
���� ���~
0 f 100
~
if (%world.curobjs(65804)% < 6) && (%random.100% <= 55)
  mload obj 65804
  msend %actor% _�� ���-��� ������� ����� � ����� ����.
  mechoaround %actor% _%actor.iname% ���-��� ������%actor.g% ����� � ����� ����. 
end
~
#65809
��������� ���~
0 f 100
~
if (%world.curobjs(65805)% < 6) && (%random.100% <= 70)
  mload obj 65805
  msend %actor% _�� ���-��� ������� ����� � ����� ���������.
  mechoaround %actor% _%actor.iname% ���-��� ������%actor.g% ����� � ����� ���������. 
end
~
#65810
������� ���� ���~
0 f 100
~
if (%world.curobjs(65806)% < 6) && (%random.100% <= 75)
  mload obj 65806
  msend %actor% _�� ���-��� ������� ����� � ����� �������� �����.
  mechoaround %actor% _%actor.iname% ���-��� ������%actor.g% ����� � ����� �������� �����. 
end
~
#65811
����� ��������~
0 g 70
~
wait 1
if ( %actor.vnum% == 65803 )
  kill %actor.name%
end
~
#65812
������� � �����~
2 c 0
������� ��������~
wait 1
if (%arg.contains(����)%)||(%arg.contains(����)%)
  wsend %actor% _������� �������, �� ������� � ���������� ����.
  wechoaround %actor% _������� �������, %actor.name% ������%actor.g% � �������� ����.
  wteleport %actor% 65874
  wechoaround %actor% ���-�� �������� ���� � ������.
else
  wsend %actor% _�� � ����� ��� ��� ??
end
~
#65813
��������� �� �����~
2 c 0
��������� �������~
wait 1
if (%arg.contains(�����)%)
  wsend %actor% _�� ��������� �� �����.
  wechoaround %actor% _%actor.name% ������%actor.u% �� �����.
  wteleport %actor% 65868
  wechoaround %actor% ���-�� �������� �� ����.
else
  wsend %actor% _�� � ����� ��� ��� ??
end
~
#65814
������� � �����2~
2 c 0
������� ��������~
wait 1
if (%arg.contains(����)%)||(%arg.contains(����)%)
  wsend %actor% _������� �������, �� ������� � ���������� ����.
  wechoaround %actor% _������� �������, %actor.name% ������%actor.g% � �������� ����.
  wteleport %actor% 65875
  wechoaround %actor% ���-�� �������� ���� � ������.
else
  wsend %actor% _�� � ����� ��� ��� ??
end
~
#65815
��������� �� �����2~
2 c 0
��������� �������~
wait 1
if (%arg.contains(�����)%)
  wsend %actor% _�� ��������� �� �����.
  wechoaround %actor% _%actor.name% ������%actor.u% �� �����.
  wteleport %actor% 65876
  wechoaround %actor% ���-�� �������� �� ����.
else
  wsend %actor% _�� � ����� ��� ��� ??
end
~
#65816
���� ��������~
0 g 70
~
wait 1
if ( %actor.vnum% == 65819 )
  kill %actor.name%
end
~
#65817
����� ������ � �������~
2 e 30
~
wait 1
wecho _���������� ���������� ������� � ������� ����� ������ � ������ �������
wecho _� �� ������� � �������� ������ ����.
wdamage %actor% 85
~
#65818
����� �� ���~
2 c 100
�����~
if !%arg.contains(���)%
  wsend %actor%  ���� ��� �� ����� ���������?
  return 0
  halt
end
if %actor.rentable%
  wteleport %actor% 65878 horse
  wsend %actor% �� ������� � ��������� ����� �� ������.
  wechoaround %actor% ���-�� ����� �������� ����� � ����.
end
~
#65819
������ ����~
2 c 100
������~
if !%arg.contains(����)%
  wsend %actor%  ���� ��� �� ������ ���������?
  return 0
  halt
end
wsend %actor% �� ��������� ���� � ������.
wteleport %actor% 65873
wechoaround %actor% ���-�� ����� �������� ����� � ����.
~
#65820
�����~
1 b 100
~
switch %random.60%
  case 1
    oecho � ������ ������ ������ &y�����&n.
  break
  case 2
    oecho �� ������ �������� &R��&Y���&R��&n � &W�������&n � �������.
  break
  case 3
    oecho &Y����� &R�������&n ���������� � �������� &r�����&n.
  break
  case 4
    oecho ��� ������� &W����� &R����&n.
  break
done
~
$~
