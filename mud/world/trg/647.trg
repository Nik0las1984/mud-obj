* BRusMUD trigger file v1.0
#64700
������ �������~
0 j0 100
~
wait 1
if %object.vnum% == 72721
  wait 3
  say ������� �� �����-�������?
���
  wait 4
  say � �� � �� �����, ��� ��� ��
  say ������� �� ��� ���� ��� ������!
  say ��� �������� - ��� ��������! ������� ����� ��������!
  wait 5
  ��� %actor.name%
�� ���� ������ ������ �������, ������ ������.
  wait 1
  calcuid dar 72721 obj
  mpurge %dar%
wait 1
say �� ����� �� ����� - ����������� ����!
wait 4
say �� ��� �, �������, ����� � ���� ����� ������, ��� ������ � ���� ���� � �����!
   if (%random.1000% < 80) && (%world.curobjs(64700)% < 4)
    mload obj 64700
   else
    mload obj 64701
   end
���� ��� %actor.name%
end

~
#64701
���� ������~
0 f0 100
~
if (%random.1000% < 80) && (%world.curobjs(64702)% < 4)
    mload obj 64702
end

~
#64702
���� ������~
0 n0 100
~
if (%random.1000% < 80) && (%world.curobjs(64703)% < 4)
    mload obj 64703
end
��� �����

~
#64703
���� ����~
0 f0 100
~
if (%random.1000% < 80) && (%world.curobjs(64704)% < 4)
    mload obj 64704
end

~
#64704
���� ������~
0 f0 100
~
if (%random.1000% < 80) && (%world.curobjs(64705)% < 4)
    mload obj 64705
end

~
$
$
