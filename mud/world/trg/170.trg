#17000
����������� ��������~
0 q 100
~
wait 2s
� ����������� %actor.iname%.
� ����� � ���� ����� ������
� � ������ ��� ������� ����� ����
����
wait 1s
� � ���� ������� ��������� ��������
� ������� ��� �� ����� � �������� � ����� ���-������ �� ��� ����������.
~
#17001
������ ����~
0 f 100
0~
if (%world.curobjs(17000)% < 8) && (%random.20% <= 7)
  mload obj 17000
end
~
#17002
������ ������~
0 f 100
~
if (%world.curobjs(17001)% < 10) && (%random.20% <= 6)
  mload obj 17001
end
~
#17003
������ ����~
0 f 100
~
if (%world.curobjs(17002)% < 3) && (%random.20% <= 7)
  mload obj 17002
end
~
#17004
������ �������� �������~
0 f 100
~
mload obj 17003
~
#17005
����������� � ������� ���������~
0 q 100
~
wait 2s
���� %actor.iname%.
� ���������� %actor.iname%.
� ���� ���� ����� �������� �����
wait 2s
���
wait 1s
� ���� ��������� �� ���� 
� ����� ��� ������ ������� �������
� ���� ������� �� � ������� � �����������, �� � ���� �����������
���� .%actor.iname%
~
#17006
������ � ������� ���������~
0 j 100
~
if %object.vnum% == 17003
  wait 1s
  mpurge  %object%
  eval chance %random.100%
  if %chance% < 16 && %world.curobjs(214)% < 50 
    mload obj 214
    ���� ���.��� .%actor.name%
  elseif %chance% < 31 && %world.curobjs(512)% < 3
    mload obj 535
    ���� ���� .%actor.name%
  else
    msend %actor% �������� ��� ��� ������� �����.
    %actor.gold(+1000)%
  end
  say �� ����������� ���� ��������� ����� ������!
  mecho ��������, ������� ��� ����� �� ��������, ��������� ���� �����������.
  wait 1s
  mpurge %self%
else
  say �� ���� ��� ���...
  drop %object%
end
~
#17007
������� ��������~
0 j 100
~
switch %object.vnum%
  case 17000
    wait 1s
    say �������, ��������� ���-������ ����������
    wait 2s
    if %random.100% < 23 && %world.curobjs(17006)% < 10 
      mload obj 17006
      ���� ���.��� .%actor.name%
      say ���� �� ��������
      mpurge  %object%
    else
      say ��... �� ������, ������
      ���
    end
  break
  case 17001
    wait 1s
    say �������, ��������� ���-������ ����������
    wait 2s
    if %random.100% < 20 && %world.curobjs(17005)% < 9 
      mload obj 17005
      ���� ���.��� .%actor.name%
      say ���� �� ��������
      mpurge  %object%
    else
      say ��... �� ������, ������
      ���
    end
  break
  case 17002
    wait 1s
    say �������, ��������� ���-������ ����������
    wait 2s
    if %random.100% < 17 && %world.curobjs(17004)% < 8
      say ���� �� ��������
      mload obj 17004
      ���� ���.���� .%actor.name%
      mpurge  %object% 
    else
      say ��... �� ������, ������
      ���
    end
  break
  default
    say �������, ����� ���������� � ���������.
  break
done
~
$~
