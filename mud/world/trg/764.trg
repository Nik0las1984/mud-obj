#76400
�����~
2 g 100
~
wait 1
wecho ����� ������ �������� ���.
eval dmg %random.50%
foreach fchar %self.pc%
  wdamage %fchar% %dmg%
done
~
#76401
������~
0 c 100
��������~
wait 1
wecho ������ �� ��������� ���������� ������� ������ � �����.
dg_cast '�����' %actor.name%
~
#76402
������ ������~
0 r 100
~
wait 1
say �� ��� ��� �� ����?!
����
wait 1
say � ������� ���� ����� �������� ��� ������?
���
wait 1
say ��� �� ��� �����..
����
wait 1
say �������! ��� �� ��� ������ ������?!
����
attach  76403 %self.id%
detach  76402 %self.id%
~
#76403
����� �������~
0 d 100
�����~
say �����!
�����
attach  76402 %self.id%
detach  76403 %self.id%
~
#76404
����������~
1 c 4
�����������~
wait 1
%send% %actor% �� � ������� �������� ����� � ����� �����������...
%echoaround% %actor% %actor.name% � ������� ������%actor.q% ����� �� ����������!
oload mob 76407
oload mob 76407
oload mob 76407
oload mob 76407
oload mob 76407
wait 1
opurge %self%
~
#76405
load set on witch~
0 f 100
~
if ((%world.curobjs(3326)% < 1) && (%random.100% < 4))
  mload obj 3326
end
~
$~
