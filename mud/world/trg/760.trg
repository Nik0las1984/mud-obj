#76000
�����������������~
0 r 100
~
wait 10
switch %random.5%
  case 1
    mecho �������� ��������� ��������� �� ������ � ������ ���� �����.
  break
  case 2
    say �� ��� �� ��� ����! �� ��� �� ��� �� ����!
  break
  case 3
    mecho ���� �� ���������� ������ ������ � ���-�� ����������.
  break
  case 4
    say � ������ �� ��������, ��� ���� ��� ����. ������, ������� � �����������.
  break
  default
    say �� ����� ��� ������� ��? ��! �� ������! ������ ����� �������!
    mecho ��������� ������ �������.
  break
done
~
#76001
���� ������� ����������~
0 m 1
~
wait 1
������ .%actor.name%
switch %random.3%
  case 1
    mload obj 76016
    give all .%actor.name%
  break
  case 2
    mload obj 76046
    give all .%actor.name%
  break
  case 3
    mload obj 76047
    give all .%actor.name%
  break
done
~
#76002
��������� ������~
0 b 12
~
switch %random.%
  case 1
    ����� ������ ��������, �������! �������-��������!
  break
  case 1
    ����� � ��� ���� ����� ������ � ���� � ����!
  break
  case 1
    ����� ������, ��������, ������� �������! 
  break
  case 1
    ����� �������, ������� - ������ �� ����!
  break
done
~
#76003
������� �������~
0 m 1
~
wait 1
emot ����������%self.g% ������
eval target 0
switch %amount%
  * �����������
  case 2800
    eval target 25007
  break
  * ����� (�������� - ��)
  case 4000
    eval target 60016
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
#76004
������� ��� ��������~
1 j 100
~
eval dex %actor.dex%+%actor.dexadd%
if %dex% < 30
  osend %actor% � ����� ��������� ������ ������� ������! ����� ��� ��� � ������!
  if %self.worn_by%
    oforce %actor% remove SuperPuperBow760
  end
  return 0
  halt
end
~
$~
