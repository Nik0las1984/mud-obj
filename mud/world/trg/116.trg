#11600
�������� ��������~
0 q 100
~
wait 1
stand
switch %random.2%
  case 1
    say ��, �� ����� ������! � ��������� ���� ������������ �������%actor.g%!?!
    say �� ��� ������ �� �����!
    ��� .%actor.name%
  break
  default
    ___say ���, ������������! �� ��� � ������ ���� �����!
    ��� .%actor.name%
  break
done
~
#11601
����� ������~
0 f 20
~
if %world.curobjs(11600)% < 50
  mload obj 11600
end
~
$~
