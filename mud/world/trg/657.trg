#65700
����������� ���������~
0 r 90
~
wait 1
���
say ��������� ����� ���� - 100 ���.
say ��� ������ �����������.
wait 1s
����
~
#65701
���� ����� ���������~
0 mz 1
~
wait 1
if %amount% < 100
����� .%actor.name%
say ����� ����� - � �� ������ ������!
say ��� �� �����, �� � ���� - ��� ���������!
give %amount% ��� .%actor.name%
halt
end
detach 65702 %self.id%
mecho �������� ���������� ������.
���
wait 1
mecho �������� ������ �� �����, � �������� ������ ����� ����� ����.
calcuid parom1 %self.realroom% room
if %parom1.south%
mdoor 65744 s purge
mdoor 65746 n purge
wait 3s
mecho ����� ������������ �� ������ ������ - ��� ��� � ������� �� ������.
wait 3s
mecho ����� ����� ������� � �����, ���������� � �����.
mdoor 65744 w room 65729
mdoor 65729 e room 65744
else
mdoor 65744 w purge
mdoor 65729 e purge
wait 3s
mecho ����� ������������ �� ������ ������ - ��� ��� � ������� �� ������.
wait 3s
mecho ����� ����� ������� � �����, ���������� � �����.
mdoor 65744 s room 65746
mdoor 65746 n room 65744
end
attach 65702 %self.id%
~
#65702
�������� ������� ����~
0 z 0
~
wait 1
� ���������������� ������ ���� ������� ��������� ����.
wait 1s
mecho �������� ����������� � �����.
���
say ��, ��� ��.. ���� �� ������ �������, ���� ���� ������� ������������.
wait 1
mecho �������� �������� ���� � ������.
calcuid parom1 %self.realroom% room
foreach target %self.pc%
if %parom1.south%
mforce %target% south
else
mforce %target% west
end
done
mecho �������� ������ �� �����, � �������� ������ ����� ����� ����.
if %parom1.south%
mdoor 65744 s purge
mdoor 65746 n purge
wait 3s
mecho ����� ������������ �� ������ ������ - ��� ��� � ������� �� ������.
wait 3s
mecho ����� ����� ������� � �����, ���������� � �����.
mdoor 65744 w room 65729
mdoor 65729 e room 65744
else
mdoor 65744 w purge
mdoor 65729 e purge
wait 3s
mecho ����� ������������ �� ������ ������ - ��� ��� � ������� �� ������.
wait 3s
mecho ����� ����� ������� � �����, ���������� � �����.
mdoor 65744 s room 65746
mdoor 65746 n room 65744
end
~
#65703
����� ���������~
2 c 1
��� ���� ����� ������ �������~
return 0
wait 1
if %time.month% < 3 || %time.month% > 11
halt
end
if !%arg.contains(�����)%
return 0
halt
end
calcuid parom1 65744 room
if ((%actor.realroom% == 65746 ) && %parom1.south%)
wait 1
wsend %actor% � ���� ������-�� �����, ���� ����� �����?
halt
end
if ((%actor.realroom% == 65729 ) && %parom1.west%)
wait 1
wsend %actor% � ���� ������-�� �����, ���� ����� �����?
halt
end
wecho � ���������������� ������ ������� ������� ������.
calcuid parom 65701 mob
exec 65702 %parom.id%
~
$~
