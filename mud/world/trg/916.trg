#91600
���� ����������� ��������~
0 f 100
~
if (%world.curobjs(91608)% < 3) && (%random.5% == 1)
  mload obj 91608
end
~
#91601
���� ������ ����������� ��������~
0 f 100
~
if (%world.curobjs(91607)% < 3) && (%random.5% == 1)
  mload obj 91607
end
~
#91602
���� ������� ������~
0 f 100
~
if (%world.curobjs(91610)% < 3) && (%random.5% == 1)
  mload obj 91610
end
~
#91603
���� ���������� ������ ~
0 f 100
~
if (%world.curobjs(91609)% < 3) && (%random.5% == 1)
  mload obj 91609
end
~
#91604
������ ��������~
0 f 100
~
if (%world.curobjs(91600)% < 3) && (%random.7% == 1)
  mload obj 91600
elseif (%world.curobjs(91601)% < 3) && (%random.6% == 1)
  mload obj 91601
elseif (%world.curobjs(91602)% < 3) && (%random.5% == 1)
  mload obj 91602
elseif (%world.curobjs(91603)% < 3) && (%random.4% == 1)
  mload obj 91603
end
~
#91605
������ �������~
0 f 100
~
if (%world.curobjs(91604)% < 3) && (%random.7% == 1)
  mload obj 91604
elseif (%world.curobjs(91605)% < 3) && (%random.6% == 1)
  mload obj 91605
elseif (%world.curobjs(91606)% < 3) && (%random.5% == 1)
  mload obj 91606
end
~
#91606
� ������ ���� 54~
2 ab 100
~
wait 1s
wecho ���� ������ ��� �� �������.
wteleport all 91655
~
#91607
� ������ ���� 55~
2 ab 100
~
wait 1s
wecho ���� ������ ��� �� �������.
wteleport all 91656
~
#91608
� ������ ���� 56~
2 ab 100
~
wait 1s
wecho ���� ������ ��� �� �������.
wteleport all 91657
~
#91609
� ������ ���� 57~
2 ab 100
~
wait 1s
wecho ���� ������ ��� �� �������.
wteleport all 91658
~
#91610
� ������ ���� 58~
2 ab 100
~
wait 1s
wecho ���� ������ ��� �� �������.
wteleport all 91659
~
#91611
� ������ ���� 59~
2 ab 100
~
wait 1s
wecho ���� ������ ��� �� �������.
wteleport all 91660
~
#91612
� ������ ���� 60~
2 ab 100
~
wait 1s
wecho ���� ������ ��� �� �������.
wteleport all 91661
~
#91613
� ������ ���� 61~
2 b 100
~
if %random.4% == 1
  wait 1s
  wecho ���� ������ ��� �� �������.
  wteleport all 91665
end
~
#91614
������ ������ � ���~
0 k 100
~
if %random.4% == 1
  eval target %random.pc%
  dg_cast '�������' %target.name%
  unset %target%
end
~
#91615
����� � ����~
0 q 100
~
wait 1s
mecho ���� ������� ������ � ���������� �� ���.
wait 1s
���� 
wait 3s
say ��, ���� ��� �������!
say C������� � ���� ��� � ���� ����� �����.
wait 2s
say �� ��� � ������-����� ������� ���� �����.
����
wait 4s
say ��� �� ������ �������?
wait 1s
������
wait 3s
mecho ���� ����������� � �������� ���������.
wait 50s
halt
~
#91616
����������� ������  �����~
1 c 3
��������~
attach 91815 %self.id%
eval damag %random.90% + %random.90% + %random.90% + %random.90% +150
switch (%actor.class%)
  case 0
    case 1
      case 10
        eval rdam %damag%+10
      break
      case 3
        case 5
          eval rdam %damag%*2
        break
        default
          eval rdam %damag%*2/3
        break
      done
      osend %actor% ����� ����� ������� � ���� ���� ��������� ����!
      if %actor.level%<28
        eval rdam %actor.hitp%+11
        osend %actor% �� �� ������ ��������� � ������� ������!
        oechoaround %actor% ����� ����� ��� ��������� ���� %actor.rname%!
        odamage %actor% %rdam%
      end
      if %actor.hitp%>%rdam%
        odamage %actor% %rdam%
      else
        odamage %actor% %actor.hitp%
      end
      eval  waitt 150+%random.100%
      wait %waitt%s
      osend %actor% ����� �� ������ ������ ����������!
      eval damag %rdam%-%random.90%
      if %actor.hitp%>%damag%
        osend %actor% ����� ������ � ���� ����� ����� �������� ����!
        odamage %actor% %damag%
      else
        osend %actor% ����� ������� �� ��� ����� ��� ��������� ����!
        odamage %actor% %actor.hitp%
      end
      eval  waitt 150+%random.100%
      wait %waitt%s
      osend %actor% ����� �� ������ ������ ����������!
      eval rdam %damag%-%random.90%
      if %actor.hitp%>%rdam%
        osend %actor% ����� ������ � ���� ����� ����� �������� ����!
        odamage %actor% %rdam%
      else
        osend %actor% ����� ������� �� ��� ����� ��� ��������� ����!
        odamage %actor% %actor.hitp%
      end
      eval  waitt 150+%random.100%
      wait %waitt%s
      osend %actor% ����� �� ������ ���� �������� � �����!
      detach 91815 %self.id%
      otransform 91616
~
$~
