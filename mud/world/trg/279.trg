#27900
����20�������~
0 m 1
~
if %actor.vnum% != -1
 halt
end
eval needgold %actor.level%*(%actor.remort%+1)
if %amount% < %needgold%
���� %amount% ��� .%actor.name%
tell %actor.name% �������� �����!
else
mecho ������ �������: '������, ���� ����, ������ ��� �������� � �����.'
wait 5
mecho ������-�� ����� �������� ����� � ������� ������� ������,
mecho � ������� ������ ������ �� ����.
tell %actor.name% �� ����������, ������� � ������� � �����������!
tell %actor.name% ������ ������� ���� ���������, ���, �� ������.
tell %actor.name% �������� ��. ��� ���� ���� ������� � �����.
wait 2
msend %actor% ����� ������ �����, �������� ��������� �� ���, � ������� � ������.
mechoaround %actor% ����� ������ %actor.dname% �����, �������� ��������� �� ���, � ������� � ������.
mechoaround %actor% %actor.name% ��%actor.y% �� ������� � ������ ����.
mteleport %actor% 27901 horse
*mat 27901 mechoaround %actor% ����� ����� %actor.vname% �� ����.
wait 2
*mat 27901 mechoaround %actor% ����� ������ ������� ����� � ����.
wait 3
msend %actor% ����� ����� ��� �� �����-�� ������.
msend %actor% ����� ������: '���, � ���� ���� ������, �����!'
end
~
#27901
����20�������~
0 m 1
~
if %actor.vnum% != -1
 halt
end
eval needgold %actor.level%*(%actor.remort%+1)
if %amount% < %needgold%
���� %amount% ��� %actor.name%
tell %actor.name% �������� �����!
else
mecho ������� ����� ��������: '������, ���� ����, ������ ��� �������� � �������.'
wait 5
mecho ������-�� ����� ��������� ������ � ������� ������� ������,
mecho � ������� ������ ������ �� ����.
tell %actor.name% �� ����������, ������� � ������� � �����������!
tell %actor.name% ������ ������� ���� ���������, ���, �� ������.
tell %actor.name% �������� ��. ��� ����� ���� ������� � �������.
wait 2
msend %actor% ������ ������� �����, �������� ��������� �� ���, � �������� � ������.
mechoaround %actor% ������ ������� %actor.dname% �����, �������� ��������� �� ���, � �������� � ������.
mechoaround %actor% %actor.name% ��%actor.y% �� ������� � ������ ����.
mteleport %actor% 27900 horse
mat 27900 mechoaround %actor% ������ ������ %actor.vname% �� ����.
wait 2
mat 27900 mechoaround %actor% ������ ������ �������� ����� � ����.
wait 3
mat 27900 msend %actor.name% ������ ������ ��� �� �����-�� ������.
mat 27900 msend %actor% ������ �������: '���, � ���� ���� �������, �����!'
end
~
#27902
�������������~
0 r 100
~
tell %actor.name% ������, ���� �������!
tell %actor.name% �� ��������%actor.g%? � �� ���� ��������� ���� � �������� ������ �����.
tell %actor.name% ������� �� �, � ��� ������, �� �� ������ ����� �������� ������.
eval needgold %actor.level%*(%actor.remort%+1)
tell %actor.name% �� �� ����� �������, ��� %needgold% ��� �� ���������� � �� ���!
tell %actor.name% ���%actor.g% �� �������, ������ ���� ������ ������.
~
#27903
��������������~
0 r 100
~
tell %actor.name% ������, ���� �������!
tell %actor.name% �� ��������%actor.g%? � �� ���� ��������� ���� � �������� �������.
tell %actor.name% ������� �� �, � ��� ������, �� ��� ������ ����� �������� ������.
eval needgold %actor.level%*(%actor.remort%+1)
tell %actor.name% �� �� ����� �������, ��� %needgold% ��� �� ���������� � �� ���!
tell %actor.name% ���%actor.g% �� �������, ������ ���� ������ ������.
~
$~
