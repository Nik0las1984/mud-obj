#92500
���� ������~
0 p 100
~
mecho %damager.name% �������� %self.name% � ������� %skill% ����� %weapon.val3%
return 10
~
#92501
����� ������������ �����~
0 k 100
~
dg_cast '����� ����'  
dg_cast '����� ����'
~
#92502
���� ����������� �����~
0 k 100
~
dg_cast '���� ����'
~
#92503
����� ����-����� ~
0 k 100
~
dg_cast '������'  
~
#92504
���� ���������� �� ������~
2 e 100
~
eval wait %random.5%+2
wait %wait%s
if (!%exist.mob(92507)%)
  halt
end
calcuid snake 92507 mob
foreach char %self.pc%  
  if ((%snake.realroom% != %self.vnum%) && (%char.fighting%))
    wecho ����-���� ������� �� ���!
    wteleport %snake% %self.vnum%    
    wait 10s
    halt
  end
done
~
#92505
������ ����� ����  ���� ��������~
2 g 100
~
if %world.curmobs(92508)% > 0
  wsend %actor% �� �� ������ ���� ������..
  return 0
else
  return 1
end
~
#92506
������� �����  ������� ����~
1 j 100
~
if %actor.sex%  != 2
  osend %actor% �� ���� �������� ��� ������ ��������� � %self.pname%?
  return 0
else
  return 1
end
~
#92507
����������� ������ ������������~
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
      osend %actor% ������� ����� �� ������ ����� �����������!
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
      osend %actor% ������� ����� �� ������ ������ �����������!
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
      osend %actor% ������� ����� �� ������ ���� ��������� � ����� ����������!
      detach 91815 %self.id%
      otransform 92508
~
#92508
����� ����~
1 j 100
~
wait 1
oechoaround %actor% ��������� ���� ������� %actor.vname%.
osend %actor% ����� ������� ���� ��������.
~
#92509
����� ����~
1 l 100
~
wait 1
osend %actor% ����� ������� ���� ����������.
oechoaround %actor% ������� ���� ���������!
~
#92510
������  ��������~
0 f 100
~
if %random.7% == 1 && %world.curobjs(92512)% < 2
  mload obj 92512
elseif %random.6% == 1 && %world.curobjs(92513)% < 2
  mload obj 92513
end
~
#92511
���� �������������~
0 f 100
~
if %random.7% == 1 && %world.curobjs(92514)% < 2
  mload obj 92514
end
~
#92512
���� ��������~
0 f 100
~
if %random.7% == 1 && %world.curobjs(92509)% < 2
  mload obj 92509
elseif %random.6% == 1 && %world.curobjs(92510)% < 2
  mload obj 92510
elseif %random.5% == 1 && %world.curobjs(92511)% < 2
  mload obj 92511
end
~
#92513
���� ������  ��������~
0 ab 100
~
wait 15s
if %random.5% == 1 && %world.curobjs(92504)% < 1
  mload obj 92504
elseif %random.4% == 1 && %world.curobjs(92505)% < 1
  mload obj 92505
elseif %random.3% == 1 && %world.curobjs(92506)% < 1
  mload obj 92506                                     
elseif %random.2% == 1 && %world.curobjs(92507)% < 1
  mload obj 92507
elseif !%world.curobjs(92508)%
  mload obj 92508
end     
detach 92513 %self.id%
*���� ����� ������ ����������!
~
#92514
������ ����� ��������~
1 j 100
~
if ((%actor.vnum% < 92500 ) || (%actor.vnum% > 92599 ))
  return 0
  osend %actor% ���������� �� ���� �������������� - �� ������ �� ������������ ?
  osend %actor% ����� ��� �� ����������� ��� ����� ?
end
~
$~
