#91900
������� 1-� ����� �����~
2 z 100
~
wecho ����� �������� �������� ����.
wteleport all 91904
wteleport ���_91914 91904
~
#91901
������� 1-� ����� ��������~
2 z 100
~
wecho ����� �������� �������� ����.
wteleport all 91905
~
#91902
������� 1-� ����� ���~
2 z 100
~
wecho ����� �������� �������� ����.
wteleport all 91906
~
#91903
������� 2-� ����� �����~
2 z 100
~
wecho ����� ����� �� ������ ����.
wteleport all 91908
wteleport ���_91914 91908
~
#91904
������� 2-� ����� ��������~
2 z 100
~
wecho ����� ����� �� ������ ����.
wteleport all 91909
~
#91905
������� 2-� ����� ���~
2 z 100
~
wecho ����� ����� �� ������ ����.
wteleport all 91910
~
#91906
������� 3-� ����� �����~
2 z 100
~
wecho �� �������� �����.
wteleport all 91928
wteleport ���_91914 91928
eval timer 40+%random.100%
wait %timer%s
exec 91918 %self.id%
~
#91907
������� 3-� ����� ��������~
2 z 100
~
wecho �� �������� �����.
wteleport all 91929
~
#91908
������� 3-� ����� ���~
2 z 100
~
wecho �� �������� �����.
wteleport all 91930
~
#91909
������� 4-� ����� �����~
2 z 100
~
wecho ����� ��������� � ������.
wteleport all 91943
wteleport ���_91914 91943
~
#91910
������� 4-� ����� ��������~
2 z 100
~
wecho ����� ��������� � ������.
wteleport all 91944
~
#91911
������� 4-� ����� ���~
2 z 100
~
wecho ����� ��������� � ������.
wteleport all 91945
~
#91912
�������� ����� �� ���� �����~
2 z 100
~
wecho �� �������� ����� �� ����.
wteleport all 91923
~
#91913
�������� ����� �� ���� ������~
2 z 100
~
wecho �� �������� ����� �� ����.
wteleport all 91924
~
#91914
�������� ����� �� ���� ��~
2 z 100
~
wecho �� �������� ����� �� ����.
wteleport all 91925
~
#91915
�������� ����� �� ���� �����~
2 z 100
~
wecho �� �������� ����� �� ����.
wteleport all 91926
~
#91916
�� ������� - ������ �������� � ��������~
0 d 1
����� �� �������~
wait 2s
say �� ���? 
say ��� ����������?
say ����� �������.
wait1s
mecho ����� ���������� � ����� � �������� ������� ������ �����.
say ����� �� ������ ������, �������� �� ����������.
say �������� �� ������� ��� ��� ���������.
eval timer 800+%random.200%
wait %timer%s
calcuid korma 91900 room
calcuid centr 91901 room
calcuid nos 91902 room
exec 91900 %korma.id%
exec 91901 %centr.id%
exec 91902 %nos.id%
say �������� �� ��������������, ��� ������ �� ����� ����!
eval timer 150+%random.200%
wait %timer%s
calcuid korma 91904 room
calcuid centr 91905 room
calcuid nos 91906 room
exec 91903 %korma.id%
exec 91904 %centr.id%
exec 91905 %nos.id%
say ��� ��� �����������, ���� ������ �������.
say ������ ���� ������ �����, ���� ������� �� ���� �� �������.
say � ��� ������ ������� � ��� �������.
wait 2s
say ������, �������� ������!
say ���� ������� �� ������, � ��� ���...
say ����� ��� ������ ������� ���� �� ���������.
���
wait 3s
say � ��������, �� ����� ������ �� ���������!
say ���� � ��� ������, ��� �� ��������������.
say ���� ����������� - ������ �� ����.
say �� � ���, ���� ��� ����� - ��� ����� ���������, ���������� ������.
wait 3s
calcuid room8 91908 room
calcuid room9 91909 room
calcuid room10 91910 room
attach 91918 %room8.id%
attach 91918 %room9.id%
attach 91918 %room10.id%
eval timer 450+%random.200%
wait %timer%s
detach 91918 %room8.id%
detach 91918 %room9.id%
detach 91918 %room10.id%
exec 91906 %room8.id%
exec 91907 %room9.id%
exec 91908 %room10.id%
calcuid room11 91911 room
calcuid room12 91912 room
calcuid room13 91913 room
calcuid room14 91914 room
calcuid room15 91915 room
calcuid room16 91916 room
calcuid room17 91917 room
calcuid room18 91918 room
calcuid room19 91919 room
calcuid room20 91920 room
calcuid room21 91921 room
calcuid room22 91922 room
exec 91913 %room11.id%
exec 91913 %room12.id%
exec 91912 %room13.id%
exec 91912 %room14.id%
exec 91912 %room15.id%
exec 91915 %room16.id%
exec 91915 %room17.id%
exec 91915 %room18.id%
exec 91914 %room19.id%
exec 91914 %room20.id%
exec 91914 %room21.id%
exec 91913 %room22.id%
say �� ������� ���������!
say ���, ���� ������� ���� �� ����� ������!
say �� �����, �������, ����� � ��� �� ������!
calcuid room8 91928 room
calcuid room9 91929 room
calcuid room10 91930 room
attach 91919 %room8.id%
attach 91919 %room9.id%
attach 91919 %room10.id%
eval timer 450+%random.200%
wait %timer%s
detach 91919 %room8.id%
detach 91919 %room9.id%
detach 91919 %room10.id%
exec 91909 %room8.id%
exec 91910 %room9.id%
exec 91911 %room10.id%
calcuid room11 91931 room
calcuid room12 91932 room
calcuid room13 91933 room
calcuid room14 91934 room
calcuid room15 91935 room
calcuid room16 91936 room
calcuid room17 91937 room
calcuid room18 91938 room
calcuid room19 91939 room
calcuid room20 91940 room
calcuid room21 91941 room
calcuid room22 91942 room 
exec 91913 %room11.id%
exec 91913 %room12.id%
exec 91912 %room13.id%
exec 91912 %room14.id%
exec 91912 %room15.id%
exec 91915 %room16.id%
exec 91915 %room17.id%
exec 91915 %room18.id%
exec 91914 %room19.id%
exec 91914 %room20.id%
exec 91914 %room21.id%
exec 91913 %room22.id%
say �� ���, � ���� ���� ������, ��������!
detach 91916 %self.id%
~
#91917
������ ����� �������� ����~
0 k 100
~
eval sniper %random.pc%
if %sniper.fighting%   
  if (%sniper.class% == 6)
    eval value %sniper.cha%
  elseif (%sniper.class% == 3)
    eval value %sniper.cha%-4
  elseif (%sniper.class% == 8)
    eval value %sniper.cha%-8
  elseif (%sniper.class% == 7)
    eval value %sniper.cha%-12
  elseif (%sniper.class% == 5)
    eval value %sniper.cha%-16
  else 
    eval value 1+1
  end
  if (%value% < 2)
    eval value 1+1
  end
  if (%random.100% < %value%)
    msend %sniper.name% �� ������� �������� ���� ������� ����!
    mechoaround %sniper.name% ������ � ����� %sniper.name% �������%sniper.g% �� ����� �������� ���� ������� ����!
    eval kritdam 500+%random.200%+%random.200%
    if %self.hitp% > %kritdam% 
      %self.hitp(-%kritdam%)%
    else
      %self.hitp(1)%
    end
  end
end
unset value
unset sniper
unset kritdam
unset sniper
if (%random.5% == 1) && (%self.hitp%<1000)
  mecho ������ ������ �������� ���� ���������� ���������� ����������!
  dg_cast '��������'
end
if %random.5% == 1
  mecho ������ ������ �������� ���� ������� �������!
  eval target %random.pc% 
  dg_cast '���� ����' %target.name%
  unset target
end
if %random.15% == 1
  mecho ��������� ������ �������� ���� ������� ������� �����!
  dg_cast '��� �����' 
end
if %random.10% == 1
  mecho ������ ������ �������� ���� ������������!
  eval target %random.pc% 
  dg_cast '��� ���' %target.name%
  unset target
end
~
#91918
����� ���� �����... �������� ��������� ����~
2 ab 100
~
if %random.15% == 1
  eval number %random.6%
  if %number% < 4
    wload mob 91900
    wload mob 91900
    wload mob 91900
    wecho ��������� ��������� �������� ���������� � �����!
  elseif %number% < 6
    wload mob 91900
    wload mob 91900
    wload mob 91900
    wload mob 91900
    wload mob 91900
    wecho ������ ��������� �������� ���������� � �����!
  else
    wload mob 91900
    wload mob 91900
    wload mob 91900
    wload mob 91900
    wload mob 91900
    wload mob 91900
    wload mob 91900
    wecho ���� ��������� �������� ���������� � �����!
  end
end
~
#91919
����� ���� �����... �������� ��������� �����~
2 ab 100
~
if %random.11% == 1
  eval number %random.6%
  if %number% <4
    wload mob 91900
    wload mob 91900
    wload mob 91900
    wecho ��������� ��������� �������� ���������� � �����!
  elseif %number% < 6
    wload mob 91900
    wload mob 91900
    wload mob 91900
    wload mob 91900
    wload mob 91900
    wecho ������ ��������� �������� ���������� � �����!
  else
    wload mob 91900
    wload mob 91900
    wload mob 91900
    wload mob 91900
    wload mob 91900
    wload mob 91900
    wload mob 91900
    wecho ���� ��������� �������� ���������� � �����!
  end
end
~
#91920
����������� ������ ����~
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
      osend %actor% ����� ���� �� ������ ������ ����������!
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
      osend %actor% ����� ���� �� ������ ������ ����������!
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
      osend %actor% ����� ���� �� ������ ���� �������� � �����!
      detach 91815 %self.id%
      otransform 91902
~
#91921
���� �������  ����~
0 f 100
~
if (%world.curobjs(91905)% < 2) && (%random.10% == 1)
  mload obj 91905
elseif (%world.curobjs(91903)% < 3) && (%random.8% == 1)
  mload obj 91903
elseif (%world.curobjs(91907)% < 3) && (%random.6% == 1)
  mload obj 91907
elseif (%world.curobjs(91904)% < 3) && (%random.5% == 1)
  mload obj 91904
elseif (%world.curobjs(91906)% < 3) && (%random.5% == 1)
  mload obj 91906
end
if (%world.curobjs(91902)% < 1) && (%random.3% == 1)
  mload obj 91902
end
~
#91922
������� ����������� �������� ������� 91912~
0 ab 100
~
if (%random.2% == 1) && (%self.realroom% == 91908)
  �����
end
if (%random.2% == 1) && (%self.realroom% == 91908)
  �����
end
if (%random.2% == 1) && (%self.realroom% == 91908)
  ��
end
if (%random.2% == 1) && (%self.realroom% == 91909)
  ��
end
if (%random.2% == 1) && (%self.realroom% == 91909)
  �����
end
if (%random.2% == 1) && (%self.realroom% == 91910)
  ������
end
if (%random.2% == 1) && (%self.realroom% == 91910)
  �����
end
if (%random.2% == 1) && (%self.realroom% == 91910)
  ��
end
~
#91923
������� ����������� �������� ������� 91903~
0 ab 100
~
if (%random.2% == 1) && (%self.realroom% == 91928)
  �����
end
if (%random.2% == 1) && (%self.realroom% == 91928)
  �����
end
if (%random.2% == 1) && (%self.realroom% == 91928)
  ��
end
if (%random.2% == 1) && (%self.realroom% == 91929)
  ��
end
if (%random.2% == 1) && (%self.realroom% == 91929)
  �����
end
if (%random.2% == 1) && (%self.realroom% == 91930)
  ������
end
if (%random.2% == 1) && (%self.realroom% == 91930)
  �����
end
if (%random.2% == 1) && (%self.realroom% == 91930)
  ��
end
~
$~
