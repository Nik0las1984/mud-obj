#60400
����������� �������~
0 r 100
~
���� ��������� ��������� �� ����� � ���� ���������� ������
����
say ������ ����, %actor.name%
wait 2
~
#60401
������ �� ������~
2 e 80
~
wait 1
eval dmg 100+%random.100%
set target %random.pc% 
wechoaround %target% ������������� ������ ��������� � ����� %target.rname%.
wsend %target% ������������� ������ ��������� � ���� �����.
wdamage %target% %dmg%
wait 30s
halt
~
$~
