#37700
�� ��������~
2 e 100
~
if %actor.vnum% != -1
  halt
end
wait 5s
wecho _�������� ����� ���� ��������� �� ���, � ���� ��� � ������!
wait 5
wecho _�� �������� � ������ ��������!
wat 37754 wecho ���-�� �������� ����, ����� � ���������� ������.
wteleport all 37754
end
~
#37701
����� � ��������� ��������~
0 r 100
~
if %actor.level% > 31
  wait 5
  say ������ ���� � ������� ��� %actor.name%!
  say � ��� ����� ���� ������ ���������!
  wait 5
  ������ %actor.name%
  wiat 5
  say � �� ���� ������ ���� � �����, � ���� ������ �����, � ���� �� ���������!
else
  wait 5
  set target %random.pc%
  eval rrr %random.100%
  if %rrr% < 4
    eval  exp %target.exp%
    eval  exp %exp%/30
    %target.exp(-%exp%)%
    msend %actor% _����������� ���� ��������� �������� ����� ��� � ������!
    msend %actor% _�� �������� %exp% ����� �����. 
    mkill %actor.name% 
  else
    eval hp %target.hitp%
    eval hp %hp%/2
    %target.hitp(-%hp%)%
    mkill %actor.name%
    msend %actor% _����������� ���� ��������� �������� ����� ��� � �����!
    msend %actor%  _��� ������������� ������!
  end
  detach 37701 %self.id%
  
~
#37702
����� � ��������� ���������~
0 r 100
~
if %actor.level% > 31
  wait 5
  say ������ ���� � ������� ��� %actor.name%!
  say � ��� ����� ���� ������ ���������!
  wait 5
  ������ %actor.name%
  wiat 5
  say � �� ���� ������ ���� � �����, � ���� ������ �����, � ���� �� ���������!
else
  wait 5
  say ��� �� ��� ������� ?
  say ��� �������� ����� ���!
  wait 5
  say ������ ��� �� ��� ����� ��� � ���� �����.
  wait 5
  say ����� ��������� ��� �������, � � ��� �������!
  wait 10
  while 1
    switch %random.3%
      case 1
        say � ��� ���� �����?
        set slovo ���������
        global slovo
      break
      case 2
        say ������� ��� � ����� ����?
        set slovo ������
        global slovo
      break
      case 3
        say ����� � ����� ����?
        set slovo ������
        global slovo
      break
    done
  end
  attach 37703 %self.id%
end
~
#37703
������ ����~
0 d 0
*~
if (%speech%==%slovo%)
  say ��, �� �����!
  say �� ��� ����� ��� �������� ��� �����!
  calcuid komn 37717 room
  attach 37704 %komn.id%
  exec 37704 %komn.id%
  detach 37702 %self.id%
  detach 37703 %self.id%
else
  say ���, �� �� �����, �� ������ �����!
  mkill %actor.name%
end
~
#37704
***~
2 z 100
~
calcuid mob 37705 mob
wpurge %mob%
wload mob 37702
calcuid mob 37702 mob
set rand %random.pc%
wforce %mob.name% ���� %rand.name%
end
~
#37705
����� � ����� ������~
0 r 100
~
wiat 10
mecho _����� ������ �������� ���!
wait 5
mecho _�� ������� ����� ������ ������� ���, � ��� �������� � �����!
wiat 5
set target %random.pc%
mesend %target% _����� ��� ������� ���!
mkill %target.name%
attach 37706 %self.id%
detach 37705 %self.id%
end
~
#37706
� ��� � ����� �������~
0 l 100
~
if %self.hitp% < 600
  wait 2
  mecho _�� ������� ����� ������ ������� ���, �������� ���!
  set target %random.pc%
  dg_cast '�������� �������' %target.name%
  mload mob 37707
  mecho _�� ������ ����� ������ ������ ���������!
  mload mob 37707
  mecho _�� ������ ����� ������ ������ ���������!
  mload mob 37707
  mecho _�� ������ ����� ������ ������ ���������!
  detach 37706 %self.id%
end
~
#37707
� ��� � ������ �������~
0 k 100
~
if %world.curmobs(37706)% < 3
  mecho _�� ������ ������ ������ ������ ���������!
  mload mob 37706
end
~
#37708
������ ����~
1 p 100
~
wait  1
oload  mob 37709
osend  %actor% _�������� ���� ����, � ������� �� ���!
oechoaround  %actor% �������� ���� ����, � ������� �� %actor.vname%!
oforce ����� attack %actor.name%
opurge ����
detach 37708 %self.id%
end
~
#37709
����� �������~
1 g 100
~
wait 1
oecho _�������� �����-�� ���� ���� ���������� �������.
wait 1
oecho _� ��� ������ ��������� � �������!
wait 5
oecho _��� ������� � �������!
wait 5
oecho _��������� ������ �����!
wait 10
oecho _����� ���������, � �� �������........
oload mob 37710
wait 4
oforce ��������� ���� %actor.name%
opurge �������
detach 37709 %self.id%
end
~
#37710
� ��� � �����������~
0 k 100
~
if (%world.curobjs(37701)% > 0) && (%world.curmobs(37709)% < 9)
  wiat 2
  mecho _��������� ������� ����� � ����������� : "�� ������� ��� ���� ����!"
  mecho _�� ������ ���������� ������ ����������� �����!
  mload mob 37709
end
~
#37711
��������� ������~
1 c 100
�������~
if !%arg.contains(������)%
  return 0
  halt
end
wait 5
osend %actor% _�� ��������� ������.
oechoaround %actor% _%actor.name% ��������%actor.q% ������.
wait 5
oecho _�� ������ �� ������� �����-�� ���!
odoor 37702 down flags a
odoor 37702 down room 37755
odoor 37755 up flags a
odoor 37755 up room 37702
detach 37711 %self.id%
end
~
#37712
����� ����~
2 f 100
~
wdoor 37702 down purge
wdoor 37755 up purge
~
#37713
���� ���������~
0 f 100
~
mecho _�� ��� ��������� ��������� �����: "�� ����� ���� �����, � ���� ������������ ������ ���!"
calcuid quest 37756 room
attach 37714 %quest.id%
mdoor 37753 east flags a
mdoor 37753 east room 37756
mdoor 37756 west flags a
mdoor 37756 west room 37753
end
~
#37714
��������� �����~
2 c 100
���������~
if !%arg.contains(������)%
  return 0
  halt
end
if %actor.haveobj(37703)%
  wecho  _��������� ���� ������������ : "� ���! ��� ��� ������, ������� � ������ ��� �����! �� ���� � �������!"
  wecho _������� ����� �������� ���! � ����� �� ����, �� ������� ���-��.....
  wpurge ������
  calcuid quest1 37756 room
  attach 37718 %quest1.id%
  exec 37718 %quest1.id%
end
~
#37715
���� ��������� ����~
0  0
~
if (%world.curobjs(37705)% < 3) && (%random.10% <= 2)
  mload obj 37705
end
~
#37716
���� ���� �����~
0 f 100
~
if (%world.curobjs(37704)% < 3) && (%random.5% == 1)
  mload obj 37704
end
~
#37717
���� ����~
2 hz 100
~
if (%world.curobj(37707)%==0) && (%random.50%==1)
  wload obj 37707
else
  wload obj 37706
end
~
#37718
quest~
2 z 100
~
if (%world.curobj(37707)%==0) && (%random.2%==1)
  wload obj 37707
end
wload obj 37706
end
~
$~
