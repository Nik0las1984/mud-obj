#23500
������_������_����������~
0 q 100
~
*����� ��������� ��������*
wait 1s 
say ������� � ���, ��������, ������� ���� ���!
say ��������� �� ���� - � ����� �� �� ����� �����...
say �� ��� ��� ��� ���������� ������� ������?!
wait 1s
�� �������� � ����� �����-�� ��������� �������
wait 1s
say ������ ���������� �����. �� �����-����������� �� ��� ���� ��-�� ��� ���������,
say ��� � �������� �� �� ��� ���� �����, �� �� ��� �� ����� ����� � ������ ���������.
�����
wait 1s
say �� ������ �� �� ���� ��������� � ���� ������ �����.
say ����� �� ����� ��� �� ������� � ����� ������, � ��� ����� �� ��� ����� �������.
say �� �� ���, ���� ������ ����������������, ���� ����� �������� �����!
say ��� ������ �� ��� ������ ������� ������? ��� ���� ����������? ��, �����, �����?
mecho ��������� ����� ������ ������� ������...
wait 1s
say ��� ��, ������?!
mecho ������ ���� ��� ������� ��� ������� ��������.
wait 1s
say ��� ��������?! ��� ��� ������ �������?
attach 23501 %self.id%
detach 23500 %self.id%
~
#23501
������_������~
0 d 2
� ������~
wait 1s
����
say ������ �������, �� �������� �����. �� ������� ���������...
�����
wait 1s
say �������, �����.
�� ������ � ������� �������� ����������
wait 1s
say ���������� ��-�� ����� ������ � ������� ���������� ������.
msend %actor% ����� ��������� ������� ��� ������.
wait 1s
say �����-����������� ������ ����������� �� ��� � ������� ������, ��� ��������, ������ �������.
say � ����� ��� ��������� - �������� ��� ������� �������. � ��� � ���� ������ ������?
say �� � ������ �� ���������. �� �� ������ ���, �?
say �� ��������� ��� �� ���.
�����
mload obj 23506
���� ����� .%actor.name%
set questor235 %actor%
global questor235
calcuid target 23507 mob
remote questor235 %target.id%
attach 23502 %self%
detach 23501 %self%
~
#23502
������_������~
0 q 100
~
wait 1
if ((%actor% != %questor235%) || %exist.mob(23506)%)
  halt
end
������ .%actor.name%
say ������� ����...
�� ���� �� �������� � �����
wait 1s
say �� � ����� �� ���������.
�� ����� � ������� ���� ����, ������� � ����������� ������� � �������� ������� ���� �� �����������.
wait 1s
switch %random.12%
  case 1
    case 2
      if ((%actor.religion% == 0) && (%world.curobjs(23508)% < 15)
        mload obj 23508
        ���� ��� .%actor.name%
      elseif ((%actor.religion% == 1) && (%world.curobjs(23509)% < 15)
        mload obj 23509
        ���� ��� .%actor.name%
      else
        eval money %random.500%+500
        %self.gold(+%money%)%
        give %money% ��� .%actor.name%
      end
    break
    case 3
      case 4
        case 5
          if (%world.curobjs(23511)% < 50))
            mload obj 23511
            ���� ��� .%actor.name%
          else
            eval money %random.500%+500
            %self.gold(+%money%)%
            give %money% ��� .%actor.name%
          end
        break
        case 6
          case 7
            if (%world.curobjs(235)% < 50))
              mload obj 235
              ���� ��� .%actor.name%
            else
              eval money %random.500%+500
              %self.gold(+%money%)%
              give %money% ��� .%actor.name%
            end
          break
          case 8
            case 9
              if (%world.curobjs(521)% < 1))
                mload obj 521
                ���� ���� .%actor.name%
              else
                eval money %random.500%+500
                %self.gold(+%money%)%
                give %money% ��� .%actor.name%
              end
            break
            default
              eval money %random.500%+500
              %self.gold(+%money%)%
              give %money% ��� .%actor.name%
            done
            unset questor235
            detach 23502 %self%
~
#23503
������_����_�����~
0 j 100
~
wait 1
if (%object.vnum% != 23506)
  say ��� �� �������� ������ �� �����.
  ���� %object.name% .%actor.name%
else
  wait 1
  mpurge %object%
  msend %actor% ����� ���������� ��������� �� ���.
  mechoaround %actor% ����� ���������� ��������� �� %actor.vname%.
  ���
  say ����, � ��� ���� ������� �� ���, ����.
  say ������ � ��. � ���� ������ �� �������� - ������ ���� � ����� ������.
  wait 1s
  say �����. ���� �������. ��� ���� � ���� �� �������.
  say �����������. ������ ������� ����?
  ���� .%actor.iname%
  wait 1s
  mecho ����� ���������� �������� ����� � ����� ����� ������ �����.
  wait 1
  mpurge %self%
end
~
#23504
����_�������~
1 c 100
���������~
wait 1
if %arg.contains(������)%
  osend %actor% �� ������ ����� �������.
  wait 1s
  oecho ������� ������ ��������� � �������.
  odoor 23544 s room 23553
  wait 1
  opurge %self%
else
  osend %actor% ��� ���� �� ������� ���-������. ��� ������ ��� ���������?
end
~
#23505
ZONERESET~
2 f 100
~
wdoor 23544 s purge
calcuid room1 23561 room
attach 23507 %room1.id%
~
#23506
��������_������������~
0 q 100
~
wait 1
if %actor% != %questor235%
  halt
end
msend %actor% ������� ����������� ���������� �� ���...
mechoaround %actor% ������� ����������� ���������� �� %actor.vname%...
wait 5
if %actor.sex% == 1
  say ����������, ������ �������.
else
  say ����������, ���������.
end
say ���� ����� ������� ����. �� ������ ��� ������ ������� ���.
say �� ��� ����� ������ ���� �� ����� ����-�����...
�����
wait 1s
say ����, �� ���������� ����, �� ��� ����� - �����������.
say �������� ���� �� ���� �����...
�� ������� ������� �� ������
�����
wait 1s
say ������ �������-������ �� ������ ��� ���� ������. �������� ���� ��������.
mecho ������� ���������� ����� � ������ ������� � ������. � ��� ����� ��� ��� ��������� ������� ������� ����.
wait 1
mpurge %self%
~
#23507
�����~
2 c 1
�������� ���������� �����������~
wait 1
if (%arg.contains(�������)% || %arg.contains(�����)%)
  if ( %random.1000% < 250 )
    wload obj 23510
    wsend %actor% ����������� ��������������, �� ���������� �����-�� ������� �������.
  else 
    wsend %actor% ����������� ��������������, �� ���������� ���� �����-�� �������.
  end
  detach 23507 %self%
else
  wsend %actor% ��� �� ������ �����������?
end
~
#23508
���� ���~
0 f 15
~
if ((%world.curobjs(23512)% < 21) && (%random.1000% <= 250))
  mload obj 23512
end
~
#23509
����� ������~
0 f 100
~
if ((%world.curobjs(25307)% < 15) && (%random.1000% <= 220))
  mload obj 23507
end
~
$~
