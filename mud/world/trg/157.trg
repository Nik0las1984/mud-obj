#15700
����� � �������~
2 e 5
~
wait 20
wecho �������� ������ �� �����-�� ������������� �����.
~
#15701
�������~
0 q 20
~
wait 1
if %self.fighting%
  halt
end
switch %random.2%
  case 1
    say ����� �����! �������.
  break
  default
    say ������ ����!! ����������. 
    wait 20
    ��� %actor.name%
  break
done
~
#15702
����������� �������.~
0 r 100
~
wait 5
if %self.fighting%
  halt
end
����
wait 20
if %self.fighting%
  halt
end
say ������ ���� ���������. 
wait 20
if %self.fighting%
  halt
end
say ������ ��� �������� � ���� �����.
wait 20
if %self.fighting%
  halt
end
say ���� ����� � ������������.
wait 20
if %self.fighting%
  halt
end
say ����� ����� �� ��������. ��� �������. ���� ����� ��� �����.
wait 2
if %self.fighting%
  halt
end
mecho �������� ������ �� �����-�� ������������ �����.
wait 18
if %self.fighting%
  halt
end
say ������ ���� �� ������ ����� � ����� ��������.
wait 20
if %self.fighting%
  halt
end
say ��� ���� �  ��� ����. �� ������ ���� ��� �������� �����.
wait 5
mecho �������� ������ �� �����-�� ������������ �����.
wait 15
if %self.fighting%
  halt
end
say �� ��� ����� �����, � ��� ������� - ����� ��� �� ������.
wait 10
mecho �������� ������ �� �����-�� ������������ �����.
wait 10
if %self.fighting%
  halt
end
mecho ��� ������� ������� �� ����� � ���������.
wait 15
if %self.fighting%
  halt
end
say ��� ��� � ������� ����� ������.
~
#15703
���� ����� ����.~
0 m 0
~
wait 10
if %self.fighting%
  halt
end
say ����. ������ ��, ������. ��� ����� ������. 
wait 5
mecho �������� ������ �� �����-�� ������������ �����.
wait 5
if %self.fighting%
  halt
end
say ��� ����� ���� ������ ����� �� �����. 
wait 20
mecho �������� ������ �� �����-�� ������������ �����.
~
#15704
���� ������ ������.~
0 j 100
100~
wait 1
if (%object.vnum% != 15707)
  ���� %object.name%
  halt
end
wait 1
mpurge %object%
if (%self.fighting%)
  halt
end
mecho ����� �������� ������ ������.
wait 10
say �, �������. ����� ���� �������.
say ���, ��������� �� �� ����.
say ��� ���� ������ ����� ��������. ��� ������.
wait 10
mload obj 15715
calcuid flower 15715 obj
%send% %actor% %self.iname% ������� ��� %flower.vname%.
%echoaround% %actor% %self.iname% ������� %actor.dname% %flower.vname%.
eval temp %flower.put(%actor%)%
���� ����
say � ������ ������� �������. 
say ������ ������ � ���, � ��� ��� ������ ��������
wait 5s
calcuid atsegun 15725 room
attach 15711 %atsegun.id%
exec 15711 %atsegun.id%
*������������� ���������� � ��������� room ���� ���� ���� �� ������
*foreach firstchar %self.pc%
*  mteleport %firstchar% 15750 horse
*  msend %firstchar% ��, ������ ������ �����...
*  wait 15
*  msend %firstchar% ...� ����� ���� ��� �� ������ �������...
*done
~
#15705
���� ������ �����.~
0 j 15723
100~
wait 1
if %object.vnum% !=15723
  � �� ����� ��� �����.
  ���� ���
  halt
end
mpurge �����
if %self.fighting%
  halt
end
say � ��� � �����, ��� ���� ���� �� �� ��������� ������ ���� ����� �����.
wait 15
if %self.fighting%
  halt
end
say ��, ������ ������ ������. ���� � ������� ������, ������ �����.
wait 10
if %self.fighting%
  halt
end
mecho ����� ������ �������� ������ �� �������� ������ ��������� �
mecho ������������ ������� � ����� � ���� ����� ���� �������.
wait 10
if %self.fighting%
  halt
end
mload obj 15724
���� ��� %actor.name%
~
#15706
���� ������� ����� ����.~
0 j 15724
100~
wait 1
if %self.fighting%
  halt
end
if %object.vnum% !=15724
  ���� ���
  halt
end
mecho ������ ����������� �������� ����� �� ����� ��� ����� ����� ��.
mpurge ���
wait 10
if %self.fighting%
  halt
end
����
wait 10
if %self.fighting%
  halt
end
say �����, ������� �������, ��� ������, ��� ������!
wait 5
if %self.fighting%
  halt
end
mload mob 15716
mpurge �������
~
#15707
����������� ������.~
0 r 100
~
wait 1
if %self.fighting%
  halt
end
say ����������� ���!
say ����� ������.
say ������ ����� � � ���� � ���� ��� ��� ��������, �� �� �� ����.
~
#15708
����������� �������.~
0 r 100
~
wait 1
if %self.fighting%
  halt
end
������ %actor.name%
wait 5
if %self.fighting%
  halt
end
say ������ ���, ��� ������� ����, ������� ������ � ������.
~
#15709
������� �����~
0 f 10
~
if (%world.curobjs(15706)% < 5) && (%random.100% < 50)
  mload obj 15706
end
~
#15710
����� ������~
0 f 100
~
if ((%random.1000% < 25) && (%world.curobjs(241)% < 50)) || %random.1000% < 10%
  mload obj 241
end
~
#15711
�������� �� ������~
2 z 100
~
foreach firstchar %self.pc%
  %send% %firstchar% ��, ������ ������ �����...
  wait 15
  %send% %firstchar% ...� ����� ���� ��� �� ������ �������...
  %teleport% %firstchar% 15750 horse
done
~
#15750
������� �������~
0 c 0
���� ������ ���������~
���
wait 10
say ��, ��� ���� ��������, �� ��� ���������.
wait 10
say �! ���� ����� ������ ����. ������ ������.... ���� �������� ���� ���������.
wait 10
say �� ������� ��� �����.
wait 10
��� %actor.name% ����� ����� � ����� ��������.
wait 10
�� %actor.name%
wait 10
say ��������� ������ - ���� ��� ����� ����.
wait 10
say ���, ������ ��������� ���������� ������, ����� ��� ����� ������.
say ������ ��� ���� �� �� ��� �� ����������, � �� ���������!
wait 10
mload obj 15707
���� ������ %actor.name%
wait 10
say ������ �� ����, �� ��������-�� ... ���-�� �� ... � ����������� ������.
wait 10
foreach firstchar %self.pc%
  if (%firstchar.vnum% == -1) && (%firstchar.rentable%)
    mteleport %firstchar% 15700 horse
    wait 1
    if %firstchar.realroom% == 15700
      msend %firstchar% �������� ����� �����������, �� ������ �������� ����...
      wait 15
      msend %firstchar% ...� ����� ���� ��� �� ��������� ���� ���� ��� �������...
    end
  end
done
detach 15750 %self.id%
~
#15751
��������� � ��������~
0 j 15715
100~
wait 1
if %object.vnum% !=15715
  wait 10
  ���� %actor.name%
  ���� ���
  halt
end
wait 1
mpurge %object%
mecho �������-��! �� ��������� ���� �������!
wait 1
���
wait 1
say ��� ���??? 
wait 1
say � ����� �����! �������!
wait 1
say ��� ��������� ��� ����� ����� �������� �����.
wait 1
�����
wait 1
say ����� ��������!
wait 1
���
wait 1
mecho ������� ������ �������� �������� �� ������ ����������
mecho � ���-�� ��������� ��� ���. 
wait 1
mecho ����� ��� ������� ��������� ��������
wait 1
if ( %random.8% == 3 )
  ����
  wait 7
  ���
  wait 7
  say �� ��� ������. ������ � �������!
  wait 7
  mload obj 532
  ���� ���� .%actor.name%
  ���� ���
  halt
end
���
wait 1
say �� � ������ ����� �� ��� ��� ������? 
wait 1
���
~
$~
