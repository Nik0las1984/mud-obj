#12100
������ �������~
0 r 100
~
wait 1
switch %random.5%
  case 1
    say � ������ ��, ������ ���.
  break
  case 2
    say ��� ����, ����!
  break
  case 3
    say �� � ���� .... ����� ������
  break
  case 4
    say ����� ������ ����� �����!
  break
  default
    say ����� ������, ��� ����! � �������, ������ ����!
  break
done
~
#12101
����� �������~
0 q 100
~
wait 1
�� %actor.name% ���� ���� �������, ������! ������ �� ��� ��� ���� �� ����������.
~
#12102
����� ���������~
0 d 0
������~
wait 1
if (%random.1000% <= 100)
  �� %actor.name% ���, ������, �� ����� ����� �������! 
  �� %actor.name% � ��� ��� � ���� � ���� ������ � ����� ����������?
  mload obj 12108
  ��� ����� %actor.name%
else
  �� %actor.name% ���, ������ �� ���� ������ ��������, ��� ������! 
end
detach 12101 %self.id%
detach 12102 %self.id%
~
#12103
���� ���� ������~
0 j 100
~
wait 1
if %object.vnum% == 12108
  wait 8
  say ������� ��� � ����� ��������.
  wait 8
  say �� ���� ��� �� ������!!!!
  wait 8
  say ��� ������� ��� ��� �����, �� ���� �� ����� ���������!!!
  wait 8
  mecho ��� ������ ������ � ������ ���������
  wait 8
  ���
  wait 8
  mecho ����� ��������� �������� ���.
  wait 8
  calcuid var 12108 obj
  mjunk all
  say ������ ��� ����� ����... �� ������!
end
if %object.vnum% == 12100
  wait 1
  mpurge %object%
  wait 8
  say ��� ������� ��������, �������!!!!
  wait 8
  ���
  wait 8
  say � ���� �� 100 ���� �����, � ������ �� �������...
  wait 8
  %self.gold(+100)%
  ���� 100 ��� %actor.name%
  wait 1
  *mpurge %var%
end
if %object.vnum% == 12101
  wait 8
  say ��� ��� �� �����. ����� ����� �����.
  ���� ���� %actor.name%
end
~
#12104
���� ����� ������~
0 j 100
~
wait 1
if %object.vnum% == 12108
  wait 8
  �� %actor.name% �
  wait 8
  say �� ��� �� ��� ���������!!!!!
  wait 8
  ��� %actor.name%
  wait 8
  say �������� �� ����� ����� ��� ���������!
  wait 1
  mpurge %object%
end
if %object.vnum% == 12100
  wait 8
  say �� ����� ���� � ��� ��� ����������. ��� � �������.
  ���� ��� %actor.name%
end
if %object.vnum% == 12101
  wait 8
  say �������, ������ �������! ������� ��������.
  wait 8
  %self.gold(+100)%
  ���� 100 ��� %actor.name%
  wait 1
  mpurge %object%
  wait 8
  msend %actor% ����� ����� �������.
  wait 8
  ���
  say ����� � ��� ������, ������ ����� ����� �� �����.
end
~
#12105
����� �����������~
0 g 25
~
wait 1
if %actor.vnum%==12102
  ������ �������
end
~
#12106
������� �����~
0 f 10
~
mload obj 12110
~
#12107
���~
0 q 25
~
wait 1
�����
~
#12108
���������~
0 f 100
~
if (%world.curobjs(547)%) == 0 && (%random.12%==1)
  mload obj 547
end
~
#12109
������ ���~
0 f 100
~
mload obj 12106
~
$~
