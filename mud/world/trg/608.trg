#60800
������ �� ����.~
2 e 100
~
wait 1
wecho _����������� ����� � � ���� ����������� ���� �����.
wecho  ���� ����� ��������� �� ��� �������� �������� ����.
foreach fchar %self.pc%
  wdamage %fchar% %random.100%
done
~
#60801
������ �� ������~
2 g 100
~
wait 1s
wecho ������� ����� ��� ������, �������� ��.
wait 1s
wecho - ����� !!!! ������ !!! �������� �� ����� ����� ������� !!!,-��������� ������ �� ������.
wait 1
wecho ������ �� � ����� ��� �� ��������� ��������� ������� ������� ����������� �� ���!
wload mob 60800 
wload mob 60800 
wload mob 60800 
wload mob 60801
calcuid zas 60838 room
detach 60801 %zas.id%
~
#60802
������ �� ������ 2~
2 g 100
~
wait 5s
wecho ������� ����� ��� ������, �������� ��.
wait 1s
wecho - ����� !!!! ������ !!! �������� �� ����� ����� ������� !!!,-��������� ������ �� ������.
wait 1
wecho ������ �� ������ ��� �� ��������� ��������� ������� ������� ����������� �� ���!
wload mob 60800 
wload mob 60800 
wload mob 60800 
wload mob 60801
calcuid zasd 60852 room
detach 60802 %zasd.id%
~
#60803
��������~
0 r 100
~
wait 1
switch %direction%
  case north
    if (%self.realroom% == 60852)
      set dontletgo �� ������
    else
      set dontletgo �� ��
    end
  break
  case south
    set dontletgo �� �����
  break
  case east
    set dontletgo �� �����
  break
  default
    set dontletgo ����-����
  break
done
msend       %actor% %self.iname% �������� ��� �� ����, �� �������� ������ %dontletgo%.
mechoaround %actor% %self.iname% �������� %actor.vname% �� ����, �� �������� ������ %dontletgo%.
say ��� �������... ��� �������...
say �� ��� �������!!!
wait 1s
say �� ����� ��� ����!!!
~
$~
