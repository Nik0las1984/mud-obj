* BRusMUD trigger file v1.0
#200
�����������~
1 c0 100
�������~
osend %actor.name% �� ��������� ������� � � �������� ����� ������� ������ ������.
wait 2s
if %actor.sex%==1
oechoaround %actor% %actor.name% �������� ������� � � �������� ���� ������� ������ ������.
else
oechoaround %actor% %actor.name% ��������� ������� � � �������� ����� ������� ������ ������.
end
eval mhitp %actor.maxhitp%-10
if %actor.hitp% < %mhitp%
%actor.hitp(+10)%
osend %actor.name% ����� � ���� ����� �� ��� ������ � ���������.
osend %actor.name% �� �������������� ���� �����.
end

~
$
$
