#91700
����� ����~
0 f 100
~
if ((%self.realroom% >= 100000) || (%self.realroom% <= 90000))
  halt
end
mecho ����� ������ ������� � ����������� � �������� ������� �����.
mload mob 91702
mpurge %self.id%
~
#91701
�������� ��������� � ��� 1~
0 k 100
~
if %random.12% == 1
  eval target %random.pc% 
  dg_cast '����� ���' %target.name%
  unset target
else
  if %random.7% == 1
    eval target %random.pc% 
    dg_cast '����� ����' %target.name%
    unset target
  end
end
~
#91702
������ � ��� 1 ~
0 k 100
~
if %random.7% == 1
  mecho ������ ������� ��������� ���������!
  mload mob 91718
  detach 91702 %self.id%
end
~
#91703
������ � ��� 2~
0 k 100
~
if %random.21% == 1
  mecho ������ ������� ��������� ���������!
  mload mob 91718
  detach 91703 %self.id%
end
~
#91704
������ � ��� 3~
0 k 100
~
if %random.63% == 1
  mecho ������ ������� ��������� ���������!
  mload mob 91718
  detach 91704 %self.id%
end
~
#91705
���� ���~
0 f 100
~
if (%world.curobjs(91702)% < 6) && (%random.7% == 1)
  mload obj 91702
elseif (%world.curobjs(91703)% < 6) && (%random.6% == 1)
  mload obj 91703
elseif (%world.curobjs(91704)% < 6) && (%random.5% == 1)
  mload obj 91704
end
~
#91706
���� ����~
0 f 100
~
if (%world.curobjs(91707)% < 6) && (%random.5% == 1)
  mload obj 91707
end
~
#91707
���� ����~
0 f 100
~
if (%world.curobjs(91705)% < 6) && (%random.5% == 1)
  mload obj 91705
end
~
#91708
���� ������~
0 f 100
~
if (%world.curobjs(91706)% < 6) && (%random.5% == 1)
  mload obj 91706
end
~
#91709
���� ��������~
0 f 100
~
if (%world.curobjs(91708)% < 5) && (%random.5% == 1)
  mload obj 91708
end
~
#91710
����� � ������~
0 q 100
~
wait 1s
say ������ ����, %actor.name%!
wait 2s
say ������ �� ���� � �� �����.
say ���, ��� ���� - �������.
wait 2s
say ������� �� ����� ������.
say ������, ����� � �������.
wait 2s
say �� �������� ��� ���������.
say ���������� ��� � ����-�����.
say � �������� ����� ������������.
wait 2s
say � ������ �������� ���� �� �����.
say ��� ����� ����� ���� ���������.
wait 2s
say ���� ����� � ��� �� ����� �� �������.
say ������� ��� ���� ����� ���������.
detach 91710 %self.id%
~
#91711
����������� ������ �����~
1 c 1
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
      osend %actor% ������ �� ������ ������ ����������!
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
      osend %actor% ������ �� ������ ������ ����������!
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
      osend %actor% ������ �� ������ ���� �������� � �����!
      detach 91815 %self.id%
      otransform 91709
~
$~
