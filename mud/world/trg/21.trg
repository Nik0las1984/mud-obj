#2100
������ �������� �����~
1 h 100
~
eval kost2601 %random.6%
eval kost2602 %random.6%
wait 3
oecho �������� ����� ����� �� ����� � ������ %kost2601% � %kost2602%
wait 1
~
#2101
������������� ������ ����� ���������~
1 jl 100
~
wait 1
if (%self.val2% == 0)
  otransform 2199
  detach 2101 %self.id%
end
~
#2102
������ ������� ����������~
0 d 100
������~
wait 1
if !%actor.canbeseen%
  � ��� �����? ���� ��������? �� ����!
  �����
  halt
end
%send% %actor% %self.name% ����������� ��������%self.g% ���.
if (%actor.level% > 14) || (%actor.remort% > 0)
  � � �� ������ ����? ��� ������� ����, � ��� � ������ �������.
  ���� .%actor.name%
  halt
end
eval money %actor.gold%+%actor.bank%
if (%money% > 200)
  � �� �� ���� ������ ���� ���! �� ��� ������!
  ��� .%actor.name%
  halt
end
eval datem (%date.unix%-%actor.getquest(2102)%)/60
if (%datem% < 24)
  � � �� ������� �� �� ����� ������� � ������?!
  ���� .%actor.name%
  � ���� ���� ��� �� ���� �������� �� �����!
  halt
end
���
mjunk all
switch %actor.class%
  case 13
    * ����� - ����
    %load% obj 222
    %load% obj 223
    %load% obj 224
    %load% obj 225
    case 0
      case 8
        * ���� ������ ����� - ������ ������
        %load% obj 2212
        %load% obj 2102
      break
      case 2
        case 4
          case 12
            * ���� ���� ���� - ������(������) ������
            %load% obj 2214
            %load% obj 2102
          break
          case 1
            case 6
              case 7
                * ������ ���� ����� - ���(��������) ������
                %load% obj 2208
                %load% obj 2102
              break
              case 3
                * ����� - ������ ����� ������
                %load% obj 2116
                %load% obj 2120
                %load% obj 2118
              break
              case 5
                * ���� - ����
                %load% obj 2117
                case 9
                  * ���� ���� - ������ ��� ������
                  %load% obj 2116
                  %load% obj 2202
                  %load% obj 2118
                break
                case 10
                  * ���� - ������ ��� ������
                  %load% obj 2100
                  %load% obj 2210
                  %load% obj 2102
                break
                case 11
                  * ���� - ������ ������ ������
                  %load% obj 2116
                  %load% obj 2216
                  %load% obj 2118
                break
                default
                  * ��� �������� � ����� ����
                  � ���� �� ���� ��� ���� ������.
                  ���
                  halt
                break
              done
              *�������� �����
              %load% obj 2189
              *�����
              %load% obj 2182
              *������
              %load% obj 2186
              *�������
              %load% obj 2005
              *��������
              %load% obj 2049
              *����� �������
              switch %self.realroom%
                case 4071
                  %load% obj 4004
                break
                case 5053
                  %load% obj 5017
                break
                case 6052
                  %load% obj 6004
                break
              done
              foreach item %self.objs%
                %item.effect(+����������)%
                %item.effect(+!�������)%
              done
              %echo% %self.name% ������%self.g% ��������� ���� �� ��������, ������������� ����������.
              ����� all �����
              log room [%self.realroom%] char %actor.name%
              %actor.setquest(2102 %date.unix%)%
              give all .%actor.name%
~
$~
