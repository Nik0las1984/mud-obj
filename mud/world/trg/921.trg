#92100
����������� ������� �����~
0 b 100
~
if %random.8% <4
  eval wait %random.15%
  wait %wait%s
  if !(%self.fighting%)
    eval fly 92126+%random.40%
    if %self.realroom% != %fly%
      mecho ������� ���� ����� � ������!
      mteleport %self% %fly%
      mecho ������� ���� ���������� ����!
    end
  end
  
end
~
#92101
������ ���� �������� ����~
0 k 100
~
if %random.2% == 1
  mecho ������� ���� ������ �������!
  eval target %random.pc% 
  dg_cast '���� ����' %target.name%
  unset target
end
~
#92102
������ ���� ������ ���� (1)~
0 k 100
~
dg_cast '��� ���'
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
if %self.hitp% > 5500
  mecho � ������ ���� ������� ������ ������!
  mload mob 92102
  mpurge %self%
end
~
#92103
������ ���� ������������ ������ ������ ���� (2)~
0 k 100
~
dg_cast '���� ���'
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
if %self.hitp% > 8000
  mecho � ������ ���� ������� ������ ������!
  mload mob 92104
  mpurge %self%
end
if %self.hitp% < 2000
  mecho ������ ������ ������ ���� ������� � ������� �������!
  mload mob 92103
  mpurge %self%
end
~
#92104
������ ���� ������ ���� (2)~
0 k 100
~
dg_cast '��� ���'
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
if %self.hitp% > 5500
  mecho � ������ ���� ������� ������ ������!
  mload mob 92102
  mpurge %self%
end
~
#92105
������ ���� ������������ ������ ������ ���� (3)~
0 k 100
~
dg_cast '���� ���'
dg_cast '��� ���'
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
if %self.hitp% > 11000
  mecho � ������ ���� ������� ��������� ������!
  mload mob 92107
  mpurge %self%
end
if %self.hitp% < 4000
  mecho ������ ������ ������ ���� ������� � ������� �������!
  mload mob 92105
  mpurge %self%
end
~
#92106
������ ���� ������������ ������ ������ ���� (3)~
0 k 100
~
dg_cast '���� ���'
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
if %self.hitp% > 8000
  mecho � ������ ���� ������� ������ ������!
  mload mob 92104
  mpurge %self%
end
if %self.hitp% < 2000
  mecho ������ ������ ������ ���� ������� � ������� �������!
  mload mob 92106
  mpurge %self%
end
~
#92107
������ ���� ������ ���� (3)~
0 k 100
~
dg_cast '��� ���'
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
if %self.hitp% > 5500
  mecho � ������ ���� ������� ������ ������!
  mload mob 92105
  mpurge %self%
end
~
#92108
������ ���� ��������������� ������ ������ ���� (4)~
0 k 100
~
dg_cast '���� ���'
dg_cast '���� ���'
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
if %self.hitp% > 15000
  mecho � ������ ���� ������� ����� ������!
  mload mob 92111
  mpurge %self%
end
if %self.hitp% < 6000
  mecho ��������� ������ ������ ���� ������� � ������� �������!
  mload mob 92108
  mpurge %self%
end
~
#92109
������ ���� ������������ ������ ������ ���� (4)~
0 k 100
~
dg_cast '���� ���'
dg_cast '��� ���'
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
if %self.hitp% > 11000
  mecho � ������ ���� ������� ��������� ������!
  mload mob 92107
  mpurge %self%
end
if %self.hitp% < 4000
  mecho ������ ������ ������ ���� ������� � ������� �������!
  mload mob 92109
  mpurge %self%
end
~
#92110
������ ���� ������������ ������ ������ ���� (4)~
0 k 100
~
dg_cast '���� ���'
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
if %self.hitp% > 8000
  mecho � ������ ���� ������� ������ ������!
  mload mob 92108
  mpurge %self%
end
if %self.hitp% < 2000
  mecho ������ ������ ������ ���� ������� � ������� �������!
  mload mob 92110
  mpurge %self%
end
~
#92111
������ ���� ������ ���� (4)~
0 k 100
~
dg_cast '��� ���'
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
if %self.hitp% > 5500
  mecho � ������ ���� ������� ������ ������!
  mload mob 92109
  mpurge %self%
end
~
#92112
������ ���� ����������� ������ ������ ���� (5)~
0 k 100
~
dg_cast '���� ���'
dg_cast '���� ���'
dg_cast '���� ���'
dg_cast '���� ���'
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
if %self.hitp% < 9000
  mecho ����� ������ ������ ���� ������� � ������� �������!
  mload mob 92112
  mpurge %self%
end
~
#92113
������ ���� ��������������� ������ ������ ���� (5)~
0 k 100
~
dg_cast '���� ���' 
dg_cast '���� ���'
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
if %self.hitp% > 15000
  mecho � ������ ���� ������� ����� ������!
  mload mob 92111
  mpurge %self%
end
if %self.hitp% < 6000
  mecho ��������� ������ ������ ���� ������� � ������� �������!
  mload mob 92113
  mpurge %self%
end
~
#92114
������ ���� ������������ ������ ������ ���� (5)~
0 k 100
~
dg_cast '���� ���'
dg_cast '��� ���'
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
if %self.hitp% > 11000
  mecho � ������ ���� ������� ��������� ������!
  mload mob 92112
  mpurge %self%
end
if %self.hitp% < 4000
  mecho ������ ������ ������ ���� ������� � ������� �������!
  mload mob 92114
  mpurge %self%
end
~
#92115
������ ���� ������������ ������ ������ ���� (5)~
0 k 100
~
dg_cast '���� ���'
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
if %self.hitp% > 8000
  mecho � ������ ���� ������� ������ ������!
  mload mob 92113
  mpurge %self%
end
if %self.hitp% < 2000
  mecho ������ ������ ������ ���� ������� � ������� �������!
  mload mob 92115
  mpurge %self%
end
~
#92116
������ ���� ������ ���� (5)~
0 k 100
~
dg_cast '��� ���'
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
if %self.hitp% > 5500
  mecho � ������ ���� ������� ������ ������!
  mload mob 92114
  mpurge %self%
end
~
#92117
����������� ������ ���������~
1 c 100
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
      osend %actor% ������ �� ������ ����� ����������!
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
      osend %actor% ������ �� ������ ���� �������� � ����� ���������!
      detach 91815 %self.id%
      otransform 92101
~
#92118
���� ����������� ����� ���� (������ ����������� ������� ���������� ���� ��������� ����� ������������)~
0 f 100
~
if %world.curobjs(92101)%<1 && %random.5% < 4
  mload obj 92101
end
~
#92119
������ ������� ������~
0 k 100
~
dg_cast '���� ���'
dg_cast '���� ���'
dg_cast '���� ���'
if %random.12% == 1
  dg_cast '�� ���'
end
~
#92120
������ ���� ������� ����������~
0 k 100
~
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
if %self.hitp% > 4000
  mecho ������ ��������� ��������!
  mload mob 92117
  mload mob 92117
  mpurge %self%
end
~
#92121
������� �������� �������~
0 k 100
~
if %random.25% == 1 && !%char.haveobj(92102)%
  mecho ������ ������� ��������� �� ���������� ������� � ������ ��� �� �����!
  mload obj 92102
  ��� ���
  ��� �������
end
~
#92122
��������� �������� � �����������~
2 e 100
~
set numd 0
set numk 0
eval timer %random.15%
if %random.4% == 1
  eval numd %random.3%
end
if %random.4% == 1
  eval numk %random.4%
end
wait %timer%s
if %numd%
  set i 0
  wecho         ������ ������� ������������!
  while %i% !=%numd%
    wload mob 92116
    eval i %i%+1
  done
end
if %numk%
  set i 0
  wecho ________������ ��������� �����������!
  while %i% !=%numk%
    wload mob 92117
    eval i %i%+1
  done
end
wait 2s
halt
~
#92123
������ ���� ������ �����~
0 k 100
~
dg_cast '��� ���' 
eval target %random.pc% 
dg_cast '����' %target.name%
unset target
eval target %random.pc% 
dg_cast '��� ���' %target.name%
unset target
if %world.curmobs(92119)% <5 && %self.hitp% > 3000
  mecho ������ ����� ����������!
  mload mob 92119
  mload mob 92119
  mpurge %self%
end
~
#92125
�������� ������ � ������� ������ �����~
1 c 0
~
*
~
#92126
������ ����� ����-���~
0 k 100
~
if %self.position% < 7
  halt
end
if %random.3% == 1
  eval spell %random.18%
  if %spell% == 1
    dg_cast '��� �����'
  elseif %spell% <4
    eval target %random.pc% 
    dg_cast '���� �����' %target.name%
    unset target
  elseif %spell% <7
    dg_cast '�� ��'
  elseif %self.hitp% < 15000
    mecho ����-��� ����� ������� ����� � ����� ����.
    mecho ����-��� ������� ������� �����.
    dg_cast '���� ���'
    dg_cast '���� ���'
    dg_cast '���� ���'
    dg_cast '���� ���'
    dg_cast '���� ���'
  end
elseif %random.30% == 1 && %self.hitp% < 12000
  dg_cast '���������'
  mecho ����-��� ����� ������� ����� � ����� ����.
  mecho ����-��� ������� ������� �����.
end
*�������� ������� �������
*�� � �� ������� ����� ��� � ��� ���� - ����� ����  ������ �� ���� ����������
~
#92127
������ ������� ������~
0 f 100
~
eval num %world.curobjs(92105)%+8
if %random.%num%% == 1
  mload obj 92105
end
~
#92128
�������� ������ ����-���~
0 ab 100
~
wait 3s
if %random.10% == 1 && %world.curobjs(92122)%<2
  mload obj 92122
elseif %random.9% == 1 && %world.curobjs(92121)%<2
  mload obj 92121
  if %random.8% == 1 && %world.curobjs(92120)%<2
    mload obj 92120
  end
end
if %random.9% == 1 && %world.curobjs(92119)%<2
  mload obj 92119
end
if %random.9% == 1 && %world.curobjs(92118)%<2
  mload obj 92118
end
if %random.9% == 1 && %world.curobjs(92117)%<2
  mload obj 92117
end
if %random.9% == 1 && %world.curobjs(92116)%<2
  mload obj 92116
end
if %random.9% == 1 && %world.curobjs(92115)%<2
  mload obj 92115
end
if %random.9% == 1 && %world.curobjs(92114)%<2
  mload obj 92114
end
if %random.9% == 1 && %world.curobjs(92113)%<2
  mload obj 92113
end
if %random.9% == 1 && %world.curobjs(92112)%<2
  mload obj 92112
end
if %random.9% == 1 && %world.curobjs(92111)%<2
  mload obj 92111
end
if %random.9% == 1 && %world.curobjs(92110)%<2
  mload obj 92110
end
if %random.9% == 1 && %world.curobjs(92109)%<2
  mload obj 92109
end
if %random.9% == 1 && %world.curobjs(92108)%<2
  mload obj 92108
end
if %random.9% == 1 && %world.curobjs(92107)%<2
  mload obj 92107
end
if %random.9% == 1 && %world.curobjs(92106)%<2
  mload obj 92106
end
wait 1s
��� ���
��� ����
��� �����
wait 2s
detach 92128 %self.id%
~
$~
