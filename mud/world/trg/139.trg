#13900
������ �����~
0 d 100
����������~
* ������� ������� �� �������. ��� ������� ����� ��� ��������� � ������� ����
* � ��������/������� ����, �������� ������������ ��� ������������ ���������,
* �������������� ����� ���������.
wait 1
if %actor.vnum% != -1
  halt
end 
say ������-������...
wait 1
if %actor.bank% < 220
  ���
  say �, �� � ���� ���-�� ���� �� ������� �� ������!
  halt
end
eval buffer %actor.bank(-220)%
mload obj 13945
mload obj 13946
mload obj 13948
mload obj 13949
mload obj 13949
mload obj 13949
mload obj 13949
mload obj 13949
mload obj 13949
mload obj 13949
mload obj 13949
mload obj 13949
mload obj 139
mload obj 139
put all ���
say ��� ������� ����.
give all .%actor.name%
drop all
wait 2
say ������ ���������� ���� ��������...
if %actor.bank% < 300
  ���
  say ��... � ��� �� ���� � ���� ����� ���.
  halt
end
eval buffer %actor.bank(-300)%
switch %actor.class%
  *������ ���
  case 1
    *���
    case 2
      *�������
      case 4
        *���-��������
        case 6
          *���-���������
          case 7
            *���-���������
            case 8
              *�������
              case 10
                *�����
                case 12
                  *�����
                  case 13
                    mload obj 13911
                    mload obj 13912
                    mload obj 13914
                    mload obj 13915
                    mload obj 13916
                    mload obj 13917
                    mload obj 13918
                    mload obj 13919
                    mload obj 13920
                    mload obj 13921
                  break
                  *������
                  case 0
                    *��������
                    case 3
                      *���������
                      case 5
                        *������
                        case 9
                          *������
                          case 11
                            mload obj 13900
                            mload obj 13901
                            mload obj 13903
                            mload obj 13904
                            mload obj 13905
                            mload obj 13906
                            mload obj 13907
                            mload obj 13908
                            mload obj 13909
                            mload obj 13910
                          done
                          mload obj 13922
                          mload obj 13923
                          give all .%actor.name% 
                          drop all
                          wait 1
                          say ������ ���%actor.g% ���� � ����� ���� - �� ������%actor.w% ���.
~
#13901
�������� �����~
1 gj 100
~
* ������� ������������ ����������� ������������ ����-�����
* �������������� ������. ��������������� ������ ��������
* ���� ���������� ��������, ����������������� � �� ��������������, ��
* ����� ������������ ���� ������� - ������ �� ����������� ��� � �������� � ������.
* ������ "��" ���� ������� ������������ �������� ����� � ������ ��������
if %actor.clan% == ��
  halt
end
osend %actor% %self.name% ��������%self.u% � ����� �����.
wait 1
opurge %self%
~
#13902
���� ����~
1 c 2
����������~
* ������� �� ���� ��������� ����. ��������� � �������.
* ����������, ���� �� ������� �������� �������� (�������)
* ��� ����, �� � �������� ���������� ������ ���������
wait 1
if !%arg.contains(�������)%
  osend %actor% ��� �� �������?
  halt
end
osend %actor% �� ���������� ������� � ������ �� ��� ���� ���������.
if %actor.clan% != ��
  halt
end
if %world.curmobs(13908)% > 50
  osend %actor% ...� ������ �� ���������!
  halt
end
oechoaround %actor% %actor.name% ���������%actor.g% �������.
oload mob 13908
oecho ��������� ���� ����� � ����� ���� �������� ���������� ����.
oforce %actor% �������� ����
wait 1
opurge %self%
~
#13903
���������� ����~
0 c 100
����������~
* ������� �� ����������� ��������� ����. ��������� � ����-����.
* ����������, ���� �� ������� �������� �������� (�������)
* ��� ����, �� � �������� ���������� ������ ���������
wait 1
if %self.fighting%
  halt
end
if !%arg.contains(����)%
  msend %actor%  ���� �� ������ ����������?
  halt
end
if (%actor.clan% != ��) || (%actor% != %self.leader%)
  msend %actor% ��� �� ��� ������.
  halt
end
msend %actor% �� ���������� ����.
mechoaround %actor% %actor.name% ���������%actor.g% ����.
mload obj 13952
give ������� .%actor.name%
wait 1
mecho ���� ��������� � �������.
wait 1
mpurge %self%
~
#13904
������ �������~
0 m 1
~
* ���� ����� �� ������
wait 1
if %amount% < 50
  wait 2
  say �������� �����!
  give %amount% ��� .%actor.name%
  halt
end
if %world.curobjs(2052)% >= 200
  wait 2
  say ���� �������, ���������!
  give %amount% ��� .%actor.name%
  halt
end
wait 2
say ���, ��������.
mload obj 13952
give ������� .%actor.name%
~
#13905
������ ������~
0 q 100
~
wait 1
if %actor.clan% == ��
  halt
end
shout %actor.name% !!! ������! ������ ��������� ����� �������� �����!
~
$~
