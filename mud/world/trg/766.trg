* BRusMUD trigger file v1.0
#76600
�������� � ��������� �����������~
0 q0 100
~
wait 1
if %direction% == north
���
wait 2
say ������� �� ������ 200 ���.
say ���� ������� �� ������� - ������������� ���� �������.
halt
end
wait 3s
������� ������






~
#76601
��������� ����������� ���� ������~
0 m0 1
~
wait 1
emot ���������� ������
if %amount% < 200
say ������ ���� ������?
����
say 200 ��� ��������� ����� � �������!
give %amount% ��� .%actor.name% 
halt
end
if %amount% > 200
say ��� ������ �� �������
eval gold %amount%-200
give %gold% ��� .%actor.name% 
end
mtransform 76610
wait 10s
mtransform 76600
������� ������






~
#76602
�������� � ������ �����������~
0 q0 100
~
wait 3s
������� ������






~
#76603
���� �����~
0 0 100
~
wait 3
switch %random.6%
case 1
s
w
break
case 2
w
n
break
case 3
e
s
break
case 4
n
e
done




~
$
$
