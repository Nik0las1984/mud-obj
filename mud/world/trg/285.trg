#28500
�����������~
0 f 100
~
if (%random.30%==1) && (world.curobjs(28500)<2)
  mload obj 28500
end
~
#28501
���������~
0 f 100
~
if (%random.30%==1) && (world.curobjs(28501)<2)
  mload obj 28501
end
~
#28502
���������������~
0 r 100
~
wait 1
���
say ���� ����������, %actor.name%!
say ������� �������� ������� ����� � ������ �� ���������� ���������.
say ���-�� ����� � ��� ���������� ������, �� � ���������� �� ������ �������.
�������
~
#28503
�����������~
0 f 100
~
if (%random.80%==1) && (world.curobjs(28503)<20)
  mload obj 28503
end
~
#28504
����������~
0 f 100
~
if (%random.90%==1) && (world.curobjs(28504)<20)
  mload obj 28504
end
~
#28505
�������� "��������� ��������"~
0 q 100
~
wait 1
foreach char %self.pc%
  if %char.haveobj(11407)% && !%char.quested(27015)%
    %char.wait(4)%
    %char.setquest(27014)%
    say � ��, ����!
    ���
    say ������� ������� ���� � ������ ������� �� ���� �������! � �� ��� ������� �� �����!
    ��� .%char.name%
    say ��� ��� ��� � ����?!
    msend %char% ��������� �������� ����� � ��� �� ���.
    mechoaround %char% ��������� �������� ����� �� ��� %char.name%.
    calcuid bag 11407 obj
    mpurge %bag%
    say ���%char.y% ��� ����������! ���� ������ � � ���! ���� ���� ����� ��������!
    say ���� ������� � ����� �� ������, ��� ����� ������ �� �������!
    halt
  end
done
~
#28506
����� ������ ���������~
0 j 100
~
wait 1
if %object.vnum% != 28021
  drop %object.name%
  halt
end
wait 1
mpurge %object%
if !%actor.quested(27014)%
  drop ������
  halt
end
����
say ��� �����, �� ����-�� ��� �� ������...
say �����, ��� � ����, ������� ���� ����� � ����������!
����
say �� ��� ��������� - � ������ ����� �������� ���������� ���������!
%actor.unsetquest(27014)%
%actor.setquest(27015)%
mload obj 11407
���� ����� .%actor.name%
������� �����
~
$~
