#5400
�������2 ~
0 j 100
~
wait 1
switch %object.vnum%
  case 5402
    %purge% %object%
    say - � ��� ����� ��� �����, ���� ������� �� ����������� �� ����,  ���� �� ������� ���������� ����!
    say - �������. ���, ������.
    %self.gold(+100)%
    ���� 100 ��� %actor.name%
    if ((%world.curobjs(229)% < 50) && (%random.100% < 11))
      mload obj 229
      ���� ��� %actor.name%
    end
  break
  default
    say ���� �@^*, ����� ��� ���?
    eval getobject %object.name%
    ����� %getobject.car%.%getobject.cdr%
  break
done
~
#5401
�������1 ~
0 q 100
~
������
msend %actor.name% - ������, ������, ������, ��� ������� ����� ��������!
msend %actor.name% - ������, ���� ������� ... ����, ���� �����, � � ����� �� ��������.
~
$~
