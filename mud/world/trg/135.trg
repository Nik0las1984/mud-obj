#13500
� ���� � ������� ����� �� [Great-ALL PC]~
0 r 100
~
* � ���� � ������ ����� PC *
if !%actor.name% || %actor.vnum% != -1
  halt
end
wait 1
switch %self.vnum%
  case 13511 * [������� �������]
    switch %actor.clan%
      case ���
        say �������� �������� ��������...
      break
      case ���
        ����
        say ��������� ��� ���������...
      break
      case ��
        ����
        say ������, �� ���� � ����� ������
      break
    done
  break
  case 13513 * [������� ������]
    if %acor.clanrank% < 4
      emote �������������� ��������� �� ���
    else
      �������
    end
  break
  case 13516 * [������]
    msend %actor% ������ ������ : '������, � - ������ ��������.'
    msend %actor% ������ ������ : '���� ������, ���� �� ������,'
    msend %actor% ������ ������ : '� ���� ������� ��� ���������, ��� ��� �������!'
    msend %actor% ������ ������ : '��� ���� ����, ������ ��� �� ������?'
    msend %actor% &K������ �������� �� ���, ������ ��� ������ �����-�� ������.&n
    * ����� ����� �� ��� "���������� 2"
  break
done
~
#13501
���� ������������ ����~
1 c 1
�������~
wait 1
if %arg.contains(���)%
  if %world.curobjs(13560)% >= 500
    osend %actor% �� �������� ����� � �����, �� ���� ���������!
    halt
  end
  oload obj 13560
  osend %actor% �� ������� ����������� ��� �� ����� � ������������ ������.
  oechoaround %actor.iname% ������%actor.g% ����������� ��� �� �����.
  oforce %actor% ����� �����������.���
else
  osend %actor% ��� �� ������ �������?
end
~
#13502
������� ������, ������� 13568~
0 m 1
~
wait 1
emot ����������%self.g% ������
eval target 0
switch %amount%
  * �����
  case 2100
    eval target 75063
  break
  * ������
  case 5100
    eval target 62025
  break
  default
    ���
    say � ���� �� �� �� ��� ������ ������?
    give %amount% ��� .%actor.name%
    halt
  done
  ���
  emot ������%self.g% ��������� �������� ������
  mechoaround %actor% %actor.name% �����%actor.q% � ������ ����.
  msend %actor% � ��� ����������� ������, � �� ��� �� �������� ��������...
  msend %actor% 
  mteleport %actor% %target% horse
  mechoaround %actor% %actor.name% ������%actor.u% ����� � ������ ����.
~
$~
