#91800
����������� �����~
0 k 100
~
if %self.position% < 7
  halt
end
eval sniper %random.pc%
if (%sniper.class% == 9)
  eval value %sniper.cha%-5
elseif (%sniper.class% == 3)
  eval value %sniper.cha%-9
elseif (%sniper.class% == 11)
  eval value %sniper.cha%-13
elseif (%sniper.class% == 10)
  eval value %sniper.cha%-17
elseif (%sniper.class% == 5)
  eval value %sniper.cha%-21
else 
  eval value 1+1
end
if (%value% < 2)
  eval value 1+1
end
if (%random.100% < %value%)
  msend %sniper.name% �� ������ ������ ��������� ���� �����.
  mechoaround %sniper.name% %sniper.name% ������ ������ ��������%sniper.g% ����� ����.
  detach 91800 %self.id%
end
unset value
unset sniper
if %random.4% == 1
  eval target %random.pc% 
  dg_cast '�������' %target.name%
  unset target
end
~
#91801
����������� ������(3 ������)~
0 k 100
~
if %self.position% < 7
  halt
end
eval sniper %random.pc%
if (%sniper.class% == 9)
  eval value %sniper.cha%
elseif (%sniper.class% == 3)
  eval value %sniper.cha%-4
elseif (%sniper.class% == 11)
  eval value %sniper.cha%-8
elseif (%sniper.class% == 10)
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
  msend %sniper.name% �� ������ ������ ������ ������ ����� ������!
  mechoaround %sniper.name% %sniper.name% ������ ������ ����%sniper.g% ������ ����� ������!
  attach 91802 %self.id%
  detach 91801 %self.id%
end
unset value
unset sniper
if %random.10% == 1
  dg_cast '�����' ������
  dg_cast '�����' �����
  dg_cast '�����' ������
  mecho ������ ������ ������ ���������� ���������� ����������!
end
if %random.7% == 1
  eval tmp %random.pc%
  dg_cast '���� ����' %tmp.name%
  mecho ����� ������ ������ ���������� ����������� ����������!
end
~
#91802
����������� ������ (2 ������)~
0 k 100
~
if %self.position% < 7
  halt
end
eval sniper %random.pc%
if (%sniper.class% == 9)
  eval value %sniper.cha%-3
elseif (%sniper.class% == 3)
  eval value %sniper.cha%-7
elseif (%sniper.class% == 11)
  eval value %sniper.cha%-11
elseif (%sniper.class% == 10)
  eval value %sniper.cha%-15
elseif (%sniper.class% == 5)
  eval value %sniper.cha%-19
else 
  eval value 1+1
end
if (%value% < 2)
  eval value 1+1
end
if (%random.100% < %value%)
  msend %sniper.name% �� ������ ������ ������ ������ ������ ������!
  mechoaround %sniper.name% %sniper.name% ������ ������ ����%sniper.g% ������ ������ ������!
  detach 91802 %self.id%
end
unset value
unset sniper
if (%random.8% == 1)
  dg_cast '�����' ������
  if (%exist.mob(91802)%)
    dg_cast '�����' �����
  end
  if (%exist.mob(91800)%)
    dg_cast '�����' ������
  end
  mecho ������ ������ ������ ���������� ���������� ����������!
end
~
#91803
����������� ������ (6 �����)~
0 k 100
~
if %self.position% < 7
  halt
end
eval sniper %random.pc%
if (%sniper.class% == 9)
  eval value %sniper.cha%
elseif (%sniper.class% == 3)
  eval value %sniper.cha%-4
elseif (%sniper.class% == 11)
  eval value %sniper.cha%-8
elseif (%sniper.class% == 10)
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
  msend %sniper.name% �� ������ ������ ������ ������ ������ ������!
  mechoaround %sniper.name% %sniper.name% ������ ������ ����%sniper.g% ������ ������ ������!
  attach 91804 %self.id%
  detach 91803 %self.id%
end
unset value
unset sniper
if %random.11% == 1
  mecho ������ ������ ������ ���������� ���������� ����!
  dg_cast '��� ���' 
end
if %random.10% == 1
  mecho ����� ������ ������ ������� �����!
  dg_cast '��� ���' 
end
if %random.9% == 1
  mecho ��������� ������ ������ ������� ����������� �����!
  dg_cast '������ ���' 
end
if %random.8% == 1
  mecho ������ ������ ������ ������������!
  eval target %random.pc% 
  dg_cast '��� ���' %target.name%
  unset target
end
if %random.7% == 1
  mecho ������ ������ ������ ������� �������� �����!
  eval target %random.pc% 
  dg_cast '��� ���' %target.name%
  unset target
end
~
#91804
����������� ������ (5 �����)~
0 k 100
~
if %self.position% < 7
  halt
end
eval sniper %random.pc%
if (%sniper.class% == 9)
  eval value %sniper.cha%-1
elseif (%sniper.class% == 3)
  eval value %sniper.cha%-5
elseif (%sniper.class% == 11)
  eval value %sniper.cha%-9
elseif (%sniper.class% == 10)
  eval value %sniper.cha%-13
elseif (%sniper.class% == 5)
  eval value %sniper.cha%-17
else 
  eval value 1+1
end
if (%value% < 2)
  eval value 1+1
end
if (%random.100% < %value%)
  msend %sniper.name% �� ������ ������ ������ ������ ����� ������!
  mechoaround %sniper.name% %sniper.name% ������ ������ ����%sniper.g% ������ ����� ������!
  attach 91805 %self.id%
  detach 91804 %self.id%
end
unset value
unset sniper
if %random.9% == 1
  mecho ����� ������ ������ ������� �����!
  dg_cast '��� ���' 
end
if %random.8% == 1
  mecho ��������� ������ ������ ������� ����������� �����!
  dg_cast '������ ���' 
end
if %random.7% == 1
  mecho ������ ������ ������ ������������!
  eval target %random.pc% 
  dg_cast '��� ���' %target.name%
  unset target
end
if %random.6% == 1
  mecho ������ ������ ������ ������� �������� �����!
  eval target %random.pc% 
  dg_cast '��� ���' %target.name%
  unset target
end
~
#91805
����������� ������ (4 ������)~
0 k 100
~
if %self.position% < 7
  halt
end
eval sniper %random.pc%
if (%sniper.class% == 9)
  eval value %sniper.cha%-2
elseif (%sniper.class% == 3)
  eval value %sniper.cha%-6
elseif (%sniper.class% == 11)
  eval value %sniper.cha%-10
elseif (%sniper.class% == 10)
  eval value %sniper.cha%-14
elseif (%sniper.class% == 5)
  eval value %sniper.cha%-18
else 
  eval value 1+1
end
if (%value% < 2)
  eval value 1+1
end
if (%random.100% < %value%)
  msend %sniper.name% �� ������ ������ ������ ������ ��������� ������!
  mechoaround %sniper.name% %sniper.name% ������ ������ ����%sniper.g% ������ ��������� ������!
  attach 91806 %self.id%
  detach 91805 %self.id%
end
unset value
unset sniper
if %random.7% == 1
  mecho ��������� ������ ������ ������� ����������� �����!
  dg_cast '������ ���' 
end
if %random.6% == 1
  mecho ������ ������ ������ ������������!
  eval target %random.pc% 
  dg_cast '��� ���' %target.name%
  unset target
end
if %random.5% == 1
  mecho ������ ������ ������ ������� �������� �����!
  eval target %random.pc% 
  dg_cast '��� ���' %target.name%
  unset target
end
~
#91806
����������� ������ (3 ������)~
0 k 100
~
if %self.position% < 7
  halt
end
eval sniper %random.pc%
if (%sniper.class% == 9)
  eval value %sniper.cha%-3
elseif (%sniper.class% == 3)
  eval value %sniper.cha%-7
elseif (%sniper.class% == 11)
  eval value %sniper.cha%-11
elseif (%sniper.class% == 10)
  eval value %sniper.cha%-15
elseif (%sniper.class% == 5)
  eval value %sniper.cha%-19
else 
  eval value 1+1
end
if (%value% < 2)
  eval value 1+1
end
if (%random.100% < %value%)
  msend %sniper.name% �� ������ ������ ������ ������ ������ ������!
  mechoaround %sniper.name% %sniper.name% ������ ������ ����%sniper.g% ������ ������ ������!
  attach 91807 %self.id%
  detach 91806 %self.id%
end
unset value
unset sniper
if %random.5% == 1
  mecho ������ ������ ������ ������������!
  eval target %random.pc% 
  dg_cast '��� ���' %target.name%
  unset target
end
if %random.4% == 1
  mecho ������ ������ ������ ������� �������� �����!
  eval target %random.pc% 
  dg_cast '��� ���' %target.name%
  unset target
end
~
#91807
����������� ������ (2 ������)~
0 k 100
~
if %self.position% < 7
  halt
end
eval sniper %random.pc%
if (%sniper.class% == 9)
  eval value %sniper.cha%-4
elseif (%sniper.class% == 3)
  eval value %sniper.cha%-8
elseif (%sniper.class% == 11)
  eval value %sniper.cha%-12
elseif (%sniper.class% == 10)
  eval value %sniper.cha%-16
elseif (%sniper.class% == 5)
  eval value %sniper.cha%-20
else 
  eval value 1+1
end
if (%value% < 2)
  eval value 1+1
end
if (%random.100% < %value%)
  msend %sniper.name% �� ������ ������ ������ ������ ������ ������!
  mechoaround %sniper.name% %sniper.name% ������ ������ ����%sniper.g% ������ ������ ������!
  detach 91807 %self.id%
end
unset value
unset sniper
if %random.3% == 1
  mecho ������ ������ ������ ������� �������� �����!
  eval target %random.pc% 
  dg_cast '��� ���' %target.name%
  unset target
end
~
#91808
����������� ������~
0 k 100
~
if %self.position% < 7
  halt
end
dg_cast '���� �����' �
if %random.7% == 1
  eval target %random.pc% 
  dg_cast '��� ����' %target.name%
  unset target
end
if %random.17% == 1
  eval target %random.pc% 
  eval affect %random.10%
  if (%affect% == 1)
    msend %target.name% ���� ������ ����� �� ��� ��������.
    mechoaround %target.name% �� ����� ������ %target.name% ������� %target.g% ��������.
    ���� %target.name%
    %target.position(3)%
    %target.wait(3)%
  elseif (%affect% < 4)
    dg_cast '���� ���' %target.name%
  elseif (%affect% < 7)
    dg_cast '������' %target.name%
  else
    dg_cast '��� ����' %target.name%
  end
  
  unset target
  unset affect
end
if (%world.curmobs(91804)% < 4) && %random.5%==1
  mload mob 91804
  mecho ������ ����� ������ �������� � ������!
end
~
#91809
����������� ������ ������~
0 k 100
~
dg_cast '��� ���' �
~
#91810
����������� �������������~
0 k 100
~
dg_cast '���� ���' �
if %random.3% == 1
  eval target %random.pc% 
  dg_cast '���� ���' %target.name%
  unset target
end
if %random.12% == 1
  mload mob 91806
  mecho ��� ������������� ������ �������� ������!
elseif %random.24% == 1
  mload mob 91807
  mecho ��� ������������� ������ ��������� �������!
elseif %random.36% == 1
  mload mob 91808
  mecho ��� ������������� ������ ��������� ������!
elseif %random.50% == 1
  mload mob 91809
  mecho ��� ������������� ������ �����!
end
~
#91811
����������� �����~
0 k 100
~
eval target %random.pc% 
dg_cast '���� ���' %target.name%
unset target
~
#91812
����� � �������~
0 q 100
~
mecho ������ ��������� �� ���.
wait 3s
say ��� �������� ����-��.
say ��� �����, � ��� � ������� ������� ����.
���
wait 3s
say ������������ ����� ���� ������?
say � �����-�� ������ ���� �� ��� ����� ��������, �� � �� �� ������.
wait 4s
say ���� ������!
say ���� � ��������� ���������, ���� �� ������� ����� ��� ��������.
say ��� ��� ��� ����� �����, ��� ������ ��������.
say � ���� ������ ����� ���, ������� �� ��������� �������������.
~
#91813
���� ����� �������~
0 j 100
~
if %object.vnum% == 91900
  wait 1s
  detach 91812 %self.id%
  say ������ ����!
  say �� ����, ��� �� ����.
  wait 2s
  mecho ������ ����� ��� � �����. 
  say ��� ������ ����� - ������.
  mat 91900 ���-�� �ݣ ������ � �����.
  mteleport all 91900
  detach 91813 %self.id%
else
  wait 1s
  say ��� ������ ������ ����!
  ��� all
end
~
#91814
�����������  ������ ������~
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
      osend %actor% ������� �� ������ ������ ����������!
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
      osend %actor% ������� �� ������ ������ ����������!
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
      osend %actor% ������� �� ������ ���� �������� � �����!
      detach 91815 %self.id%
      otransform 91802
~
#91815
������� ������ ����� �� ����� �����������~
1 hi 100
~
oecho ����� ��������� � ����� � ����� �������!
eval dam %actor.hitp%+9
odamage %actor% %dam%
otransform 91803
detach 91616 %self%
detach 91711 %self%
detach 91814 %self%
detach 91816 %self%
detach 91817 %self%
detach 91818 %self%
detach 91920 %self%
detach 92000 %self%
detach 92008 %self%
detach 92117 %self%
detach 92507 %self%
detach 91815 %self%
~
#91816
�����������  ������ ��������������~
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
      otransform 91804
~
#91817
�����������  ������ �������~
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
      otransform 91805
~
#91818
����������� ������ ������~
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
      otransform 91806
~
#91819
���� ������~
0 f 100
~
if (%world.curobjs(91808)% < 2) && (%random.4% == 1)
  mload obj 91808
elseif (%world.curobjs(91818)% < 2) && (%random.4% == 1)
  mload obj 91818
end
if (%world.curobjs(91807)% < 2) && (%random.7% == 1)
  mload obj 91807
elseif (%world.curobjs(91809)% < 2) && (%random.7% == 1)
  mload obj 91809
elseif (%world.curobjs(91810)% < 2) && (%random.7% == 1)
  mload obj 91810
end
if (%world.curobjs(91815)% < 2) && (%random.5% == 1)
  mload obj 91815
elseif (%world.curobjs(91816)% < 2) && (%random.5% == 1)
  mload obj 91816
elseif (%world.curobjs(91817)% < 2) && (%random.5% == 1)
  mload obj 91817
end
if (%world.curobjs(91811)% < 2) && (%random.6% == 1)
  mload obj 91811
elseif (%world.curobjs(91812)% < 2) && (%random.6% == 1)
  mload obj 91812
elseif (%world.curobjs(91813)% < 2) && (%random.6% == 1)
  mload obj 91813
elseif (%world.curobjs(91814)% < 2) && (%random.6% == 1)
  mload obj 91814
end
~
#91820
���� ������~
0 f 100
~
if (%world.curobjs(91819)% < 2) && (%random.1000% < 250)
  mload obj 91819
elseif (%world.curobjs(91820)% < 2) && (%random.1000% < 250)
  mload obj 91820
end
if (%world.curobjs(91821)% < 2) && (%random.1000% < 143)
  mload obj 91821
elseif (%world.curobjs(91822)% < 2) && (%random.1000% < 143)
  mload obj 91822
elseif (%world.curobjs(91823)% < 2) && (%random.1000% < 143)
  mload obj 91823
end
if (%world.curobjs(91828)% < 2) && (%random.1000% < 200)
  mload obj 91828
elseif (%world.curobjs(91829)% < 2) && (%random.1000% < 200)
  mload obj 91829
elseif (%world.curobjs(91830)% < 2) && (%random.1000% < 200)
  mload obj 91830
end
if (%world.curobjs(91824)% < 2) && (%random.1000% < 180)
  mload obj 91824
elseif (%world.curobjs(91825)% < 2) && (%random.1000% < 180)
  mload obj 91825
elseif (%world.curobjs(91826)% < 2) && (%random.1000% < 180)
  mload obj 91826
elseif (%world.curobjs(91827)% < 2) && (%random.1000% < 180)
  mload obj 91827
end
~
#91821
���� ������~
0 f 100
~
if (%world.curobjs(91830)% < 2) && (%random.1000% < 250)
  mload obj 91830
elseif (%world.curobjs(91831)% < 2) && (%random.1000% < 250)
  mload obj 91831
end
if (%world.curobjs(91832)% < 2) && (%random.1000% < 143)
  mload obj 91832
elseif (%world.curobjs(91833)% < 2) && (%random.1000% < 143)
  mload obj 91833
elseif (%world.curobjs(91834)% < 2) && (%random.1000% < 143)
  mload obj 91834
end
if (%world.curobjs(91839)% < 2) && (%random.1000% < 200)
  mload obj 91839
elseif (%world.curobjs(91840)% < 2) && (%random.1000% < 200)
  mload obj 91840
elseif (%world.curobjs(91841)% < 2) && (%random.1000% < 200)
  mload obj 91841
end
if (%world.curobjs(91835)% < 2) && (%random.1000% < 180)
  mload obj 91835
elseif (%world.curobjs(91836)% < 2) && (%random.1000% < 180)
  mload obj 91836
elseif (%world.curobjs(91837)% < 2) && (%random.1000% < 180)
  mload obj 91837
elseif (%world.curobjs(91838)% < 2) && (%random.1000% < 180)
  mload obj 91838
end
~
#91822
���� �����~
0 f 100
~
if (%world.curobjs(91843)% < 2) && (%random.1000% < 250)
  mload obj 91843
elseif (%world.curobjs(91842)% < 2) && (%random.1000% < 250)
  mload obj 91842
end
if (%world.curobjs(91846)% < 2) && (%random.1000% < 143)
  mload obj 91846
elseif (%world.curobjs(91844)% < 2) && (%random.1000% < 143)
  mload obj 91844
elseif (%world.curobjs(91845)% < 2) && (%random.1000% < 143)
  mload obj 91845
end
if (%world.curobjs(91851)% < 2) && (%random.1000% < 200)
  mload obj 91851
elseif (%world.curobjs(91852)% < 2) && (%random.1000% < 200)
  mload obj 91852
elseif (%world.curobjs(91853)% < 2) && (%random.1000% < 200)
  mload obj 91853
end
if (%world.curobjs(91847)% < 2) && (%random.1000% < 180)
  mload obj 91847
elseif (%world.curobjs(91848)% < 2) && (%random.1000% < 180)
  mload obj 91848
elseif (%world.curobjs(91849)% < 2) && (%random.1000% < 180)
  mload obj 91849
elseif (%world.curobjs(91850)% < 2) && (%random.1000% < 180)
  mload obj 91850
end
~
$~
