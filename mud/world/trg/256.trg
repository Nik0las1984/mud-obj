#25600
���� �������~
0 r 100
~
detach 25520 %self.id%
switch %random.4%
case 1
s
w
s
break
case 2
n
e
n
break
case 3
e
n
e
break
default
w
s
s
done
attach 25520 %self.id%
~
#25601
���� ������ ��������~
0 j 100
~
wait 1
if ( %object.vnum% != 25511 )
wait 2
������ %actor.name%
set objname %object.name%
drop %objname.car%
halt
end
wait 1
%purge% %object%
say ��-��, ��� �� ��� ������%actor.q%...
emot �������� ������ � ���������� ������ ������
wait 10s
switch %random.3%
case 1
if (( %random.10% < 6 ) && ( %world.curobjs(25600)% < 3 ))
wait 1
mload obj 25600
say �� ��� - �������� ���� ����������
��
give ����� %actor.name%
else
say �� ���������� ������, ������� ����� ��� � ����� �����...
�����
end
detach 25601 %self.id%
halt
break
case 2
if ( %random.10% < 6 ) && ( %world.curobjs(25601)% < 3 )
mload obj 25601
say �� ��� - �������� ���� ����������
��
give ����� %actor.name%
else
say �� ���������� ������, ������� ����� ��� � ����� �����...
�����
end
detach 25601 %self.id%
halt
done
say �� ���������� ������, ������� ����� ��� � ����� �����...
�����
detach 25601 %self.id%
~
#25602
����� � ��������~
0 q 100
~
wait 2
���
say �, ������ ����, %actor.name%!
say ������������, ������� � ������.
wait 2
say �������, ���������, �� � ���� �����%actor.g% �� ����, ����� ��� �����, ��� ������ - ��� ����.
say ����� � ������ ���� - �����-�� �� 100 ���.
~
#25603
�������� ���� ������~
0 m 1
~
wait 1
if %amount% < 100
say ��� ��, 100 ��� - �� ������� �� ��������.
give  %amount% ��� %actor.name%
halt
end
wait 2
say ��� � ������ - ��������� ������!
attach 25601 %self.id%
~
$~
