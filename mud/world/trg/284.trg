#28400
������������~
0 q 100
~
wait 1
msend %actor% ������ ����, %actor.name%!
wait 1
������
wait 1
msend %actor% ������� ����� ��������� ������ ������� �� ���� �����.
msend %actor% ��� � ������� � ����� �� ����� �������, �� ���� ��� � ������.
msend %actor% ��� � ������� ����.
wait 1
msend %actor% �� �� �����, �� ���� ���� ����������, ������� �����
msend %actor% �������� ������� ���������, ������� ������.
~
#28401
��������������~
0 q 100
~
wait 1
msend %actor.name% ������ ����, %actor.name%!
msend %actor.name% ��� ������ �� �������, ��� � ���� ���� ���� ������� ����� ���.
msend %actor.name% ���� �� ���� ������, �� ���������� ����� ��� ������� �� ����.
wait 1
��
~
#28402
���������~
2 f 100
~
context 284
unset hero284
~
#28403
�������~
1 g 100
~
wait 1
context 284
set hero284 %actor.name%
WORLDS hero284
calcuid hmob 28402 mob
attach 28401 %hmob.id%
attach 28404 %hmob.id%
detach 28403 %self.id%
~
#28404
��������������~
0 j 100
~
context 284
wait 1
if (%object.vnum%!=28402)
���� %object.name% %actor.name%
tell %actor.name% ����� ��� ���?
end
if (%object.vnum%==28402) && (%actor.name%==%hero284%)
msend %actor.name% �, ����� �����, � ��� ��� ������ ���� �� ����� �� ����������
msend %actor.name% � �� ��������. ���, �� ������ ��� ��� ���� ��������.
msend %actor.name% ������� ���� ���, ����� �� ������� ����� �����
msend %actor.name% � ����� ������� ��������, ��� ��� ������ ������.
msend %actor.name% ������ ����� � ���� � ������� �� ������ ��� �������.
wait 1
mpurge �����
if %world.curobjs(28403)%<3
msend %actor.name% � ���� ��� �� ���� �����, ������� � ��� ����� ���
msend %actor.name% �������� � ������������ �����, ����� ������� ��������.
mload obj 28403
���� ������� %actor.name%
else
msend %actor.name% ������� ����, %actor.name%.
%self.gold(+150)%
���� 150 ��� %actor.name%
end
���� %actor.name%
detach 28401 %self.id%
detach 28404 %self.id%
end
~
$~
