#14100
���� ������~
0 q 100
~
if (%speaking% == 0)
  eval speaking 1
  wait 2s
  ����
  � �, ����������, ����
  � ����� ��� � ������
  � ���, � ���� �����������
  � ���, ���������, ���� ����
  wait 2s
  � ����, ��� ������ ������
  � ���� ���� � ���� �� ��� -
  � -- ����, ������, ���������
  � � �� ������ �����!.
  wait 2s
  ���
  � �� � ��������� �����
  � ������� ������� �����
  � � ���������� ��� ��������
  � ���� ����� ��������
  wait 2s
  � ���, � �������, ���, �����
  � ��� �������� �������
  � � ������ �� ���������
  � ����� ���������� �����.
  wait 2s
  � ���� �� ����, � ������
  � ���� ��� � ������ � �����
  � ��������� ��-��-�����
  � ���� ���� �����-�����.
  wait 2s
  �����
  � ��� ��� ����� ��������
  � ������� -- �������� ����
  � �� ����� �� ������ �������
  � ��� �� ��� ������ ������.
  wait 2s
  � �, ������, ������ ����� --
  � ���, ����� �� �������
  � � ����� ��� ���� ��������
  � �� ��������-�� ������.
  wait 2s
  � ��� �����������, ���
  � �� ������ �� �� ������
  � �� ������� ���� �� ����
  � � ��� ������, �������.
  wait 2s
  ������
  � ���, ������ ������
  � ������� ���� �����
  � ��� � �������� �����������
  � ��� �� ���� �����.
  ������ 
  attach 14101 %self.id%
  eval speaking 0
end    
~
#14101
������~
0 d 0
������~
��� %actor.iname%
� � �� ����� '������'
� ������ ���� � �����!
� ��� ��� ��� ���� �� ���!
� ����, ���-�� �������! 
wait 2s
calcuid Marusya 14101 mob
mforce %Marusya% ���� .�����
mforce %Marusya% � ��� ��, ����, �������?!
mforce %Marusya% � ��� ����� �����?
mforce %Marusya% � ������ ��� �������� ������
mforce %Marusya% � � ���� ������� ����.
wait 2s
mforce %Marusya% � ���� � ����, ��� ����� ����
mforce %Marusya% � ����� � ����� � �� ���
mforce %Marusya% � ��� ����� ���� ��������..
mforce %Marusya% � �� �������� � ��� �������?
wait 2s
�����
� ����, �� ���� �, ���,
� ����� ����� ���� � ���?!
� ����� � �� ����� �����
� ��� � �� �� �����!
��� %Marusya.iname%    
wait 2s
mforce %Marusya% ����� ������
mforce %Marusya% ���� ������ �����
mforce %Marusya% � ��������� �� �������
mforce %Marusya% � ������ ������ ���
mforce %Marusya% � � ������� �� �� �����
mforce %Marusya% � ������������ �����.
wait 2s
mforce %Marusya% � � ��� ������� �����
mforce %Marusya% � ���� � �� ������ ����
mforce %Marusya% � �� ���� ������� �����
mforce %Marusya% � ������ ���� ����� ������.
mforce %Marusya% ����
wait 2s
� ��� ����� ������
� ���� ������ �� ���
� �������, ������, �� �����
� ���� �� ���, �� ��� ����.
wait 2s
����             
mforce %actor% ����
wait 2s
mload obj 14102
���� ������ %actor.iname%
� ��, �������, ��������
� ����� �� ���� '������'
� � ������ ������ ������
� ��, ������, �� ������!
���� %actor.iname%
���� %Marusya.iname%
makeuid questor141 %actor.id%
global questor141
calcuid Tsar 14102 mob
remote questor141 %Tsar.id%
calcuid Sosny 14135 room
remote questor141 %Sosny.id%
detach 14100 %self.id%
detach 14101 %self.id%
~
#14102
���� ����-���~
0 gq 100
~
calcuid Fedot 14100 mob
������
� ��� ����� ��������...
� ������� ����� �����, �����...
wait 3s 
if (%yaga_gifted% != 1)
  ������
  wait 3s
end
if (%yaga_gifted% != 1)
  ������
  wait 3s
end
if (%yaga_gifted% == 1)
  if (%Fedot% && %Fedot.room%==%self.room%)
    � ��, ������� ����
    � � � ��� ��� ������� ���
    � ������� ��������,
    � ���������� �����.
    wait 2s
    � �� ������� ���� �����
    � � ������ �����, �����
    � ��� ����� � ��� ��������
    � �� �������� �� ����
    wait 2s
    mechoaround %Fedot% ����� �� ������ �����, ���� ���� ��������.
    wait 2s
    � ��� � ���� ��, ������
    � ��� ����� �� �����
    � ���-�� ���-��� ������
    � � �����-�� �������...
    ���� %Fedot.iname% ������-������-������
    exec 14109 %Fedot.id%
    wait 2s
    ������ %Fedot.iname%
    � ����-�� �� �� ���, �����
    � ��� ������� �� �����?
    � ��� ������� � ����������? -- 
    � ���, ������ ��� ������ �����..
    wait 2s
    mforce %Fedot% � �������� ������ ����
    mforce %Fedot% � �� ��������� � � �����
    mforce %Fedot% � � �� ������ ��������
    mforce %Fedot% � ����� ���� ���� ���.
    mforce %Fedot% ����
    wait 2s        
    ����
    � ���� ��, ������, ��� �����!
    � ������ ��� ���� �������!
    � ����� ��, ���� �����
    � �������� ���� ����.
    wait 2s            
    mechoaround %self% ����-��� ����� ������, ����� ���� � �� ������� �� ��������� ���.
    mechoaround %self% �� ��� �����, ��� ������ ��������!
    mechoaround %self% �� ����� ���������� ����.
    wait 2s
    � �� �� ������� ����,
    � � �������� ���
    � �� � ������������ �� �����
    � ������� ���� � ����?
    wait 2s
    � ���� ������, ���� �����
    � ������� ������� �����!
    � ����� ���! ������ ��� ���!
    � ��, �����, ������ ������.
    wait 2s
    mechoaround %Fedot% ����� ���������, �� ���-���� ����������.
    attach 14103 %self.id%
    detach 14102 %self.id%  
  end
else
  �� %actor.iname%
  detach 14102 %self.id%
end
~
#14103
����-��� ������~
0 d 1
*~
if (%random.10% == 1)
  � ��, ���� ��� ����?
  � ���, ������� �������!
end
~
#14104
�����~
0 q 100
~
if !%exist.mob(14127)%
  halt
end
calcuid Fedot 14127 mob
wait 1
if (!%Fedot% || (%Fedot.realroom%!=%self.realroom%))
  halt
end
wait 3s
� ����, �� �����, ��� �� �����?!
� � ��� ������� ����.
� �������� ����������!
� ��� ������ � ������� �����.
mforce %Fedot% ���� �
wait 2s
mechoaround %self% ��, ������, ������ ��������.
wait 2s
mechoaround %self% ����� �� ���� ��� �������� � �������.
mechoaround %self% � ������ � ����� - ������� ������.
wait 2s
mechoaround %self% �������� ����� ������ � ��� �����.
mechoaround %self% � ������-������� ������ �����, �������.
wait 2s
mechoaround %self% �����, � ����� ����� ����� �����!
mechoaround %self% � ������ �������� �������� �������.
wait 2s
mforce %questor141% ���� ����� �����! ������ ������!
wait 2s
��� ����
� ���, �������, ������ ����?!
� ��-���� ���� �������!
� ������ ������ ������ �������
� � ���� ��� � �� ������
wait 2s
���� .%Fedot.name%
� ����, ���� �� ��� ����
� ��� ���������� ��������
� � ���� �� ����� ������
� ��� ������� ������
wait 2s
mechoaround %self% �������-���� ����� � ���������.
wait 2s
if ((%random.2% == 1) && (%world.curobjs(14100)% < 3))
  � ���� ������� ������!
  � �������� �����!
  mload obj 14100
  ���� ������ %Fedot.iname%
else
  � ����, ����, ������
  � ������ ��� �������...
  ����
end
if (%questor141.class% == 10 && %questor141.can_get_skill(����������)%)
  wait 2s
  mforce %Fedot% ���� %questor141.iname%
  mforce %Fedot% � � ���� �� ������ ������
  mforce %Fedot% � ���������� ����� --
  mforce %Fedot% � ��������� � ����� ����������...
  mforce %Fedot% � ���, �����, ��� � �������.
  mskillturn %questor141% ���������� set
end
wait 2s
mforce %Fedot% ���� ������ %questor141.iname%
mforce %Fedot% � ��� �������� � ������
mforce %Fedot% � ������ ����, ��� � �����
mforce %Fedot% � � �����, ������ �����
mforce %Fedot% � �� ������� ����...
mforce %Fedot% ����
mteleport %Fedot% 14100
detach 14104 %self.id%
~
#14105
������~
0 g 100
~
calcuid Fedot 14100 mob
if (%Fedot% && %Fedot.room%==%self.room%)
  mechoaround %self% ����-�� ��������� � ������ - ���� ������ ���� ����.
  wait 2s
  mechoaround %Fedot% �� ������ �� ������ ������� ������. 
  wait 2s
  ������
  � ���������� � �������!
  � ��� ������� - ������!  
  foreach ch %self.npc%
    if (%ch.vnum%==14123)
      mforce %ch% �� %Fedot.iname%
    end
  done
  �� %Fedot.iname% 
  attach 14107 %Fedot.id% 
  detach 14105 %Fedot.id%                       
end
~
#14106
�����~
2 f 100
~
eval speaking 0
global speaking
*eval yaga gifted 0
*global yaga gifted
if %exist.mob(14124)%
  calcuid yaga 14124 mob
  detach 14103 %yaga.id%
end
if %exist.mob(14127)%
  calcuid Fedot_da_ne_tot 14127 mob
  wpurge %Fedot_da_ne_tot%
end
if %exist.mob(14102)%
  calcuid zar 14102 mob
  attach 14104 %zar%
end
wait 1
calcuid r1 14135 room
%door% %r1% north purge
attach 14110 %r1%
~
#14107
������ ������~
0 p 100
~
mechoaround %self% ������ � ����� ���������, ������ �����-�� � �����.
���� ������  
detach 14107 %self.id%
~
#14108
���� ��� ������~
0 j 100
~
if (%object.vnum%==14101)
  wait 1s
  %purge% %object%
  ���
  *����� ������
  eval yaga_gifted 1
  global yaga_gifted
end
~
#14109
����� ��������������~
0 z 100
~
mtransform 14127
~
#14110
� ���� ������~
2 eg 10
~
if (%questor141% && %questor141.realroom%==14135)
  wdoor 14135 n room 14144
  detach 14110 %world.room(14135)%
end
~
#14111
����� ����~
0 f 100
~
if (%random.1000% < 100) && (%world.curobjs(14103)% < 6)
  mload obj 14103
end
~
#14112
����� ��������~
0 f 100
~
if (%random.1000% < 100) && (%world.curobjs(14107)% < 6)
  mload obj 14107
end
~
#14113
����� ���������~
0 f 100
~
if (%random.1000% < 100) && (%world.curobjs(14108)% < 6)
  mload obj 14108
end
~
#14114
����� ��������� ����~
0 f 100
~
if (%random.1000% < 100) && (%world.curobjs(14109)% < 6)
  mload obj 14109
end
~
#14115
����� ��������~
0 f 100
~
if (%random.1000% < 100) && (%world.curobjs(14110)% < 6)
  mload obj 14110
end
~
#14116
����� ��������~
0 f 100
~
if (%random.1000% < 100) && (%world.curobjs(14111)% < 6)
  mload obj 14111
end
~
#14117
����� �������~
0 f 100
~
if (%random.1000% < 100) && (%world.curobjs(14112)% < 6)
  mload obj 14112
end
~
#14118
����� ��������~
0 f 100
~
if (%random.1000% < 100) && (%world.curobjs(14113)% < 6)
  mload obj 14113
end
~
#14119
����� �����~
0 f 100
~
if (%random.1000% < 100) && (%world.curobjs(14114)% < 6)
  mload obj 14114
end
~
#14120
����� �����~
0 f 100
*~
if (%random.1000% < 100) && (%world.curobjs(14115)% < 6)
  mload obj 14115
end
if (%random.1000% < 100) && (%world.curobjs(14104)% < 6)
  mload obj 14104
end
~
#14121
����� �������~
0 f 100
~
if (%random.1000% < 100) && (%world.curobjs(14116)% < 6)
  mload obj 14116
end
~
#14122
����� ����������� �����~
0 f 100
~
if (%random.1000% < 100) && (%world.curobjs(14117)% < 6)
  mload obj 14117
end
~
#14123
����� ������~
0 f 100
~
if (%random.1000% < 100) && (%world.curobjs(14118)% < 6)
  mload obj 14118
end
~
#14124
����� ����-���~
0 f 100
~
if (%random.1000% < 100) && (%world.curobjs(14119)% < 6)
  mload obj 14119
end
~
#14125
����� ��������~
0 f 100
~
if (%random.1000% < 100) && (%world.curobjs(14120)% < 6)
  mload obj 14120
end
~
#14126
����� �����~
0 f 100
~
if (%random.1000% < 3) && (%world.curobjs(14121)% < 2)
  mload obj 14121
end
~
#14127
����� �����~
0 f 100
~
if (%random.1000% < 15) && (%world.curobjs(14122)% < 3)
  mload obj 14122
end
~
#14128
����� ������~
0 f 100
~
if (%random.1000% < 15) && (%world.curobjs(14123)% < 5)
  mload obj 14123
end
~
#14129
����� �����~
0 f 100
~
if (%random.1000% < 15) && (%world.curobjs(14124)% < 5)
  mload obj 14124
end
~
#14130
����� ������~
0 f 100
~
if (%random.1000% < 15) && (%world.curobjs(14125)% < 5)
  mload obj 14125
end
~
$~
