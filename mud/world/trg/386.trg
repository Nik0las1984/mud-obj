* BRusMUD trigger file v1.0
#38600
�������� � ����� ���� ~
0 q0 100
~
if !(%actor.class% == 8)
������
kill %actor%
else
wait 1s
   ���� %actor.name%.
end










~
#38601
�������� � ���������~
0 q0 100
~
if !(%actor.class% == 8)
������
kill %actor%
else
wait 2s
   mecho �������� ������ ��������� ����������� �� ���� ������� ������ � �����...
end










~
#38602
�������� � �������~
0 q0 100
~
if !(%actor.class% == 8)
������
mecho _�������� ������ ����������� ������ ������!
kill %actor%
else
wait 1s
   mecho _�������� ������ ������� ������� ��� �������.
end






~
#38603
���� ��������� ����~
0 q0 100
~
if %actor.vnum% == 38601
wait 1s
mecho _������ ������ ����������� ��� ������� ��� ���� ����� ���!
calcuid gniloi 38601 mob
mpurge %gniloi.vnum%
wait 1s
mecho _�� ��������� �������� ��� � ���� � �������� ������ ������.
mload mob 38604
mpurge %self%
end






~
#38604
���� ��������� ����~
0 q0 100
~
if %actor.vnum% == 38602
wait 1s
mecho _������ ������ ����������� ��� ������� ��� ���� ����� ���!
calcuid gniloi 38602 mob
mpurge %gniloi.vnum%
wait 1s
mecho _�� ��������� �������� ��� � ���� � �������� ������ ������.
mload mob 38604
mpurge %self%
end






~
#38605
���� ��������� ����~
0 q0 100
~
if %actor.vnum% == 38602
wait 1s
mecho _������ ������ ���������� ��� ���� ���.
say �� ���!
����
end






~
#38606
�������� � ������� 2~
0 q0 100
~
if !(%actor.class% == 8)
������
kill %actor%
else
wait 2s
   mecho _������ ������ ��������� ����� ���� � �������� ���������.
end






~
#38607
���� ����~
0 z0 100
~
mpurge %self%








~
#38608
����� �������~
0 f0 100
~
if (%world.curobjs(38600)% < 15) && (%random.3% == 1)
mload obj 38600
end

~
#38609
����� ������~
0 f0 100
~
if (%world.curobjs(38601)% < 15) && (%random.2% == 1)
mload obj 38601
end

~
$
$
