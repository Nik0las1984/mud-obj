#26600
������� ������ ��������~
0 r 100
~
say ������ ����, ���.
say � - ������ ������� - ���� ����� ��� ����� ���, ���������� ���� ����, �����, �����.
say �� ��� ������� ����� � ����� ����� �����, � ������� �������������� ���
say ������� ����� ����� �����������. �� ��� ���� ����� ����, �������� � ������� � �����,
say � ������ ��� ���� ���� ����� ������. ���� �����, �� ��������� ��� ��� ?
~
#26601
��������~
0 d 0
�� ��������~
say �������, � ��� � ����, ��� �� ��� ��������.
detach 26600 %self.id% 
attach 26602 %self.id%
~
#26602
���� ����� ����~
0 j 100
~
if %object.vnum% != 26600
  ���
  wait 1s 
  say �� ��� ��� ��� ?
  ��� ���
  halt
end 
wait 1
mpurge %object%
say � ��� � ���� ��� �� ��� ��������
say ����� ��� � ������� �� ����
%self.gold(+2000)%
���� 2000 ��� %actor.name%
eval skl %actor.remort%*5+80
set buf %actor.skill(�����)%+10
if (%buf% <= %skl%)
  eval addskl 10
else
  eval addskl %skl%-%actor.skill(�����)%
end
if (%actor.class%==10) && (%actor.skill(�����)% < %skl%)
  say %actor.name%, ���� �, �� ���� �������.
  say  �������� � � ����� ����� ��������, ��� ������ � ��� � ������ ������� ������� ����.
  say  ����� - �� ����� ����� ��������� �� ���������� ����� �� ���.
  say  ��� ��� - ������.
  mskilladd %actor% ��������������.������� %addskl%
end
detach 26602 %self.id%
~
#26603
���� ����~
2 c 0
������� ����� ~
if !%arg.contains(����)% 
  wsend %actor.name% ��� ����-�� ?
  halt
else if 
  wsend  %actor% �� ������� ������� ��������.
  wechoaround %actor% %actor.name% ������ ������� ����.
  wload obj 26600
  detach 26603 %self.id%
end
~
#26604
���� �����~
2 c 0
������� ���� ������~
if !%arg.contains(����)%
  wsend %actor.name% ���� ����-�� ?
  halt
end
wsend %Actor% ����������� �� �����, �� ������ ��.
wechoaround %actor% %actor.name% ����� ����� ������ ������ �����.
wdoor 26659 south flags a
wdoor 26659 south room 26661
wdoor 26661 north flags a
wdoor 26661 north room 26659
detach 26604 %self.id%
~
#26605
reset~
2 f 100
~
wdoor 26659 south  purge
wdoor 26661 north  purge
calcuid room 26659 room
attach 26604 %room%
calcuid room 26663 room
attach 26603 %room%
calcuid mob 26602 mob
attach 26601 %mob.id%
attach 26600 %mob.id%
detach 26602 %mob.id%
~
#26606
������ � ���~
0 k 100
~
dg cast !��� �!
~
#26607
������� �������~
0 c 0
�������� �����~
if !%arg.contains(������)%
  halt
end
����� %actor.name%
~
#26608
����� ��������� ������ �����~
0 f 100
~
if (%world.curobjs(26602)% < 5) && (%random.20% <= 2)
  mload obj 26602
end
~
#26609
����� ��������� ��������~
0 f 100
~
if (%world.curobjs(26601)% < 5) && (%random.20% <= 2)
  mload obj 26601
end
~
#26610
����� ������� ������ ����~
0 f 100
~
if (%world.curobjs(26603)% < 5) && (%random.20% <= 2)
  mload obj 26603
end
~
#26611
����� ������� �����~
0 f 100
~
if (%world.curobjs(26604)% < 5) && (%random.20% <= 2)
  mload obj 26604
end
~
#26612
����� �������~
0 f 100
~
if (%world.curobjs(26605)% < 5) && (%random.20% <= 2)
  mload obj 26605
end
~
$~
