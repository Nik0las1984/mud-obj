#33600
� ������~
0 b 50
~
wait 1
foreach fchar %self.pc%
  if !%fchar%
    halt
  end
  switch %random.15%
    case 1
      mecho ������ ������ ������� � � ������� ����������� ������� ������.
      mecho ���� �� ����� �������� �� %fchar.rname% � �������.
      mdamage %fchar% 5
    break
    case 2
      mecho ������ ������ ������ ������� � � ������� ����������� ������� ������.
      mecho ���� �� ����� �������� �� %fchar.rname% � �������.
      mdamage %fchar% 15
    break
    case 3
      say ��������. ����������� ��.
    break
    case 4
      mecho ������ ����� ������ ������ ������� � � ������� ����������� ������� ������.
      mecho ���� �� ����� �������� �� %fchar.rname% � �������.
      mdamage %fchar% 25
    break
    case 5
      mecho ������ ��� ���� ��� ������ ������� � � ������� ����������� ������� ������.
      mecho ���� �� ����� �������� �� %fchar.rname% � �������.
      mdamage %fchar% 55
    break
  done
done
~
#33601
� ������~
0 q 100
~
wait 3s
mecho _���-�������� ����������� ������ �����.
~
#33602
� �����~
0 q 100
~
wait 1
if      %actor.sex% == 1
  msend       %actor% ������ ���������� ��� ��������� �����.
  mechoaround %actor% ������� ������� %actor.dname% ������ ���������� �����������.
else
  msend       %actor% ������ ��������� �� ��� � ������, ��� ����� �� � ���, ��� � ����� ������.
  mechoaround %actor% ������� ������ ���� %actor.rname%, ���� �� �������� �� ���...
end
~
#33603
� ��������~
2 b 100
~
wait 1
foreach fchar %self.pc%
  if %fchar.vnum% == -1
    switch %random.8%
      case 1
        wecho ������� ����� �������� � � ���� ������ ����������� ��� � ����� ������.
        wdamage %fchar.name% 5
      break
      case 2
        wechoaround %fchar% �� ���������� ������ ������� ������� � ����� %fchar.dname% � �����.
        wsend %fchar% �� ���������� ������ ������� ������� � ����� ��� � �����.
        wdamage %fchar.name% 15
      break
      case 3
        wechoaround %fchar% �� ���������� ������ ������� ������� � ����� %fchar.dname% � ����.
        wsend %fchar% �� ���������� ������ ������� ������� � ����� ��� � ����.
        wdamage %fchar.name% 35
      break
      case 4
        wechoaround %fchar% ������� ������������ � ������ ������� %fchar.vname%.
        wsend %fchar% ������� ������������ � ������ ������� ���.
        wdamage %fchar.name% 55
      break
      default
      break
    done
  end
done
~
#33604
����� ������~
0 f 100
~
*if (%world.curobjs(608)% < 40) && (%random.3% == 1)
*   mload obj 608
*end
~
#33605
�������� � ������~
0 h 100
~
wait 1
if %actor.vnum% == 33833
  mshou �����! ������ � �����! � ������!
end
wait 1
if %actor.vnum% == 33834
  mshou  ��������! ��������� ���� ��������� �� ����-����! �� ������!
end
~
#33698
����20�������~
0 m 1
~
if %actor.vnum% != -1
  halt
end
eval needgold %actor.level%*(%actor.remort%+1)
if %amount% < %needgold%
  ���� %amount% ��� %actor.name%
  tell %actor.name% �������� �����!
else
  mecho ������� ����� ��������: '������, ���� ����, ������ ��� �������� � �������.'
  wait 5
  mecho ������-�� ����� ��������� ������ � ������� ������� ������,
  mecho � ������� ������ ������ �� ����.
  tell %actor.name% �� ����������, ������� � ������� � �����������!
  tell %actor.name% ������ ������� ���� ���������, ���, �� ������.
  tell %actor.name% �������� ��. ��� ����� ���� ������� � �������.
  wait 2
  msend %actor% ������ ������� �����, �������� ��������� �� ���, � �������� � ������.
  mechoaround %actor% ������ ������� %actor.dname% �����, �������� ��������� �� ���, � �������� � ������.
  mechoaround %actor% %actor.name% ��%actor.y% �� ������� � ������ ����.
  mteleport %actor% 27498 horse
  mat 27498 mechoaround %actor% ������ ������ %actor.vname% �� ����.
  wait 2
  mat 27498 mechoaround %actor% ������ ������ �������� ����� � ����.
  wait 3
  mat 27498 msend %actor.name% ������ ������ ��� �� �����-�� ������.
  mat 27498 msend %actor% ������ �������: '���, � ���� ���� �������, �����!'
end
~
#33699
��������������~
0 r 100
~
tell %actor.name% ������, ���� �������!
tell %actor.name% �� ��������%actor.g%? � �� ���� ��������� ���� � �������� �������.
tell %actor.name% ������� �� �, � ��� ������, �� ��� ������ ����� �������� ������.
eval needgold %actor.level%*(%actor.remort%+1)
tell %actor.name% �� �� ����� �������, ��� %needgold% ��� �� ���������� � �� ���!
tell %actor.name% ���%actor.g% �� �������, ������ ���� ������ ������.
~
$~
