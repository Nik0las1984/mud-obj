#4300
������~
0 g 30
~
if %actor.id%!=-1
  exit
end
wait 1
say ����������� ���� ��������, ��� ���������� ����� �������, ���� �������� ����.
�����
wait 1
say � ������� ����� ����������� ��������� ��������� �����, ��������� ������, �� �����. �� ��� �� �� ������ ��� � ����? �� ������ ���-�� �� ������ ������.
~
#4301
������ ������~
0 j 100
~
if %object.vnum% != 4300
  wait 1
  say ����� ��� ���???
  drop all
  halt
end
wait 1
mpurge %object%
say �������������, �� ����� �����%actor.q% ���.
wait 2
say ������ �� ��� �������� ����� �� ����.
switch %random.8%
  case 1
    mload obj 202
    ���� ��� %actor.name%
  break
  case 2
    mload obj 225
    ���� ��� %actor.name%
  break
  case 3
    case 4
      mload obj 527
      ���� ����� %actor.name%
    break
    case 5
      mload obj 1703
      ���� ��� .%actor.name%
    break
    default
      %self.gold(+20)%
      ���� 20 ��� %actor.name%
    break
  done
~
$~
