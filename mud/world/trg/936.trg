#93600
� ���� �������� �����~
0 q 100
~
say ������ %actor.name%!
wait 1
switch %actor.class%
  case 0
    say �� �������� �� ������?
  break
  case 1
    say �� �������� �� ������?
  break
  case 2
    say �� �������� �� ����?
  break
  case 3
    say �� �������� �� ��������?
  break
  case 4
    say �� �������� �� �������?
  break
  case 5
    say �� �������� �� ���������?
  break
  case 6
    say �� �������� �� ��������?
  break
  case 7
    say �� �������� �� ���������?
  break
  case 8
    say �� �������� �� ������������?
  break
  case 9
    say �� �������� �� ������?
  break
  case 10
    say �� �������� �� �������?
  break
  case 11
    say �� �������� �� ������?
  break
  case 12
    say �� �������� �� �����?
  break
  case 13
    say �� �������� �� �����?
  break
  default
    ���
  break
done
attach 93601 %self.id%
attach 93602 %self.id%
detach 93600 %self.id%
~
#93601
������� ���~
0 d 1
���~
say � ����... 
���
detach 93601 %self.id%
~
#93602
������� �� ������ ���~
0 d 1
�� ����� ������� ��� ���~
switch %actor.class%
  case 0
    say �� � � ��� ����, ��� �� �������.
  break
  case 1
    say �� � � ��� ����, ��� �� �����.
  break
  case 2
    say �� � � ��� ����, ��� �� ��������.
  break
  case 3
    say �� � � ��� ����, ��� �� �������.
  break
  case 4
    say �� � � ��� ����, ��� �� �����.
  break
  case 5
    say �� � � ��� ����, ��� �� �������.
  break
  default
    say �� � � ��� ����, ��� �� ����� ������.
  break
done
say ��� ��� ����� �������� � ����, ���� ������� ���� �������. 
say �� ��������?
attach 93603 %self.id% 
detach 93602 %self.id%
~
#93603
������ �����~
0 d 1
�� ������~
say ��� ��� ���� ��� �����. ���� ������ ������, ���� ����.
say ����� ������� � ������������ ����� ���� ����.
say ��� ��� ������� - ����� �� ��������...
wait 1
mload obj 93601
mload obj 93602
���� ���.���� .%actor.name%
say ����� �� �����������.
attach 93604 %self.id%
detach 93603 %self.id%
~
#93604
���� ���� �������~
0 j 100
~
if %object.vnum% != 93601
  say ����� ��� ��� �����?
  return 0
  halt
end
set water %object.val1%
wait 1
mpurge %object%
if %water% != 1
  say ��� � � �����, ��� ������ �� ���������...
else 
  say �� ����!
  say �������, ������������� ������ ����� ��� ����!
  ���
  say ����... ��� ���� � ���� ������ ����...������� �� ����...��� ���...
  wait 3
  �� ����� ������ �� �������� ������
  say ��� ���! 
  ���
  �� ������ ������-�� �� ������ ���-��
  wait 1 
  say ���� �������� ��� ���... ��� ���.. �����... ���� �� �� �����
  ������
  say ��, �� �� � ��� ������, ������ ����!
  say ��� ��� �� ���������� � ����� ���� ��������!
  mload obj 93603
  ���� ���� .%actor.name%
end
~
#93605
���� ��������~
0 f 100
~
if (%world.curobjs(93604)% < 4) && (%random.15% <= 2)
  mload obj 93604
end
~
#93606
�������� � ���~
0 k 15
~
wait 1
� ������ �� �� ��������? ��� ��� �������� ���������?
~
$~
