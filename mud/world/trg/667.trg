* BRusMUD trigger file v1.0
#66700
����������� ��������~
0 r0 100
~
if (%quest683.name% == %nil%)
wait 1
� ����������� %actor.iname%.
� ����� � ���� ����� ������
� � ������ ��� ������� ����� ����
����
wait 1s
� � ���� ������� ��������� ��������
� ������� ��� �� ����� � �������� � ����� ���-������ �� ��� ����������
end


~
#66701
������ ����~
0 f0 100
0~
if (%world.curobjs(66700)% < 8) && (%random.20% <= 7)
   mload obj 66700
end







~
#66702
������ ������~
0 f0 100
~
if (%world.curobjs(66701)% < 10) && (%random.20% <= 6)
   mload obj 66701
end







~
#66703
������ ����~
0 f0 100
~
if (%world.curobjs(66702)% < 3) && (%random.20% <= 7)
   mload obj 66702
end







~
#66704
������ �������� �������~
0 f0 100
~
 mload obj 66703
end







~
#66705
����������� � ������� ���������~
0 r0 100
~
if (%quest683.name% == %nil%)
wait 1
���� %actor.iname%.
� ���������� %actor.iname%.
� ���� ���� ����� �������� �����
wait 2s
���
wait 1s
� ���� ��������� �� ���� 
� ����� ��� ������ ������� �������
� ���� ������� �� � ������� � �����������, �� � ���� �����������
���� %actor.iname%
end


~
#66706
������ � ������� ���������~
0 j0 100
~
switch %object.vnum%
case 66703
wait 10
mpurge  %object%
if %random.100% < 16 && %world.curobjs(232)% < 50 
mload obj 232
���� ���.��� .%actor.name%
elseif %random.100% < 31 && %world.curobjs(512)% < 3
mload obj 512
���� ���.��� .%actor.name%
else
   msend %actor% �������� ��� ��� ������� �����.
   %actor.gold(+1500)%
end
say �� ����������� ���� ��������� ����� ������
mecho ��������, ��������� �� �����, ��������� ���� �����������, ������� �� � ������
wait 1
mpurge %self%
end





~
#66707
������� ��������~
0 j0 100
~
switch %object.vnum%
case 66700
wait 1s
say �������, ��������� ���-������ ����������
wait 2s
if %random.100% < 23 && %world.curobjs(66706)% < 10 
mload obj 66706
���� ���.��� .%actor.name%
say ���� �� ��������
mpurge  %object%
break
case 66701
wait 1s
say �������, ��������� ���-������ ����������
wait 2s
if %random.100% < 20 && %world.curobjs(66705)% < 9 
mload obj 66705
���� ���.��� .%actor.name%
say ���� �� ��������
mpurge  %object%
break
case 66702
wait 1s
say �������, ��������� ���-������ ����������
wait 2s
if %random.100% < 17 && %world.curobjs(66704)% < 8
say ���� �� ��������
mload obj 66704
���� ���.���� .%actor.name%
mpurge  %object% 
break
done




~
$
$
