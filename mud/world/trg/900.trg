#90000
Tree <������ ������>~
0 q 100
1~
if (%actor.vnum% != -1)
  halt
end
wait  1
msend %actor% _- ����������� ����, �������%actor.w% !
msend %actor% � ������ �� ������� ����������� !
msend %actor% ������� ����� ����������� ���� ����� ������� ������.
msend %actor% ���� �� �������� ������� �� ������� ��������� ����������
msend %actor% ���������� ���� - ���� ��� ������ � ������� ������� �
msend %actor% ������� ��� �������� � �������� �������������...
msend %actor% _- �����%actor.a% �� �� ����������� � ���� ������� ���� ?
attach 90001 %self.id%
~
#90001
Tree <�������� ��>~
0 d 1
�� yes jar~
if (%actor.vnum% != -1)
  halt
end
wait 1
mecho ____������ ������ �������� �, ������, ������ ������.
mecho �� ���� ��������� ��������� ������� ������, ���������� �������� ��������.
mecho � ��� ���������� ������������ ��������� �����. ����� �� �������� ����
mecho � ������� � ������ ���� ������ �������� �������.
mecho ____����� ��� ������� �������� � �������.
mecho _- Carambella, tarriba, far trakas, - ��������� ������� ����������
mecho ������ ��������� ����������, - Churakka var xolita ! Varrida gur
mecho xo...
mecho    ��� ��� ����� ������� � ���, �� �����������, ���������� � ������
mecho ����������� ����� "xochura", ������������ ����������, �������� 
mecho "xochucha"...
wait  2s
eval num 0
foreach pc %self.pc%
  if %pc.rentable%
    mteleport %pc% 90001 horse
    msend %pc% �� �������� ������� �����-�� ������� ����...
    eval num %num%+1
  end
  if %num% > 2
  break
end
done
attach 90002 %self.id%
detach 90000 %self.id%
detach 90001 %self.id%
~
#90002
Tree <���-�� ���-�� ������>~
0 d 0
*~
if (%actor.vnum% != -1)
  halt
end
wait  1
msend %actor% "� ����� ������ ���� �������" - ������ ������.
~
#90003
Tree <���������� ����� � ������� 90013>~
2 c 1
������� �������� ��������~
if (%actor.vnum% != -1)
  return 0
  halt
end
if !(%arg.contains(����)%)
  return 0
  halt
end
wait  1
wecho _- �����, � ��������, � ���� ��������� �����, - ���������� �������������
wecho �����...
wdoor   90011 east flags ab
wdoor   90011 east room  90013
detach  90003 %self.id%
~
#90004
Tree <����� � ������� � ������� ��������>~
2 e 100
1~
wait   1
wecho _- ��� � ��������� ���� ��������� ����!
wecho �� ���� ����� ������ �������, ������� ������ � ������� ��������.
wload   mob 90003
attach  90006 %self.id%
detach  90004 %self.id%
~
#90005
Tree <������� ������ � ������� ��������>~
0 n 100
1~
wait  5s
if !%self.fighting%
  mecho _- �������� ������� ������ �� ������ ������, � ����� �������� � ��������
  mecho ������ �����������, ��� �������� ������, - ������������ �������� ������.
  wait  5s
end
if !%self.fighting%
  mecho ��� ��� � ������� ������� �����, ���� ����� ���������� ���������, � ����
  mecho ������ ������������, ��� ���������.
  mecho �������� ����������� ������ ����� �� ������� ������.
  set FirstEnter %random.pc%
  mkill %FirstEnter%
  halt
end
~
#90006
Tree <������� ������>~
2 c 1
������� ���������~
if (%actor.vnum% != -1)
  return 0
  halt
end
if !%arg.contains(������)%
  return 0
  halt
end
calcuid target 90002 obj
if !%target%
  return 0
  halt
end
wait    1
wpurge  %target%
wecho   ������ � �������� �����������.
if %exist.mob(90003)% 
  calcuid mob 90003 mob
end
if %mob%
  wecho ������ �����, ���� ������ � ����� � ������ ��������� ����.
  wpurge %mob%
end
wdoor 90013 east flags a
wdoor 90013 east room  90014
set     mob 0
if %exist.mob(90004)%
  calcuid mob 90004 mob
  wpurge %mob%
  wait   1
  wecho  � ��� �� ��� ��� ����������� � ���������, ��������� ������ ������.
  wload  mob 90005
end
detach 90006 %self.id%
~
#90007
Tree <������� ����� �����>~
0 n 100
0~
wait 1
mecho _- �, ������� ����, �� ����� ����� ������� � ������� ��������� �����,
mecho ���������� ��� �������� ���. - ��������� �����, ����� �� ������� ���.
mecho _- ������ ������� ������ ����, � � ������ ������ ����� ������ ������������
mecho �����. ��� ������ �� - � �������� �������, ��� �������, ����� ��� ����
mecho ������. ������� �� � �������� � �����, � �� ����� �������� ���.
~
#90008
Tree <������ � ������� �������� ����>~
0 f 100
0~
if %world.curobjs(90003)% < 10 && %random.100% < 10
  mload obj 90003
end
if %world.curobjs(90004)% < 10 && %random.100% < 10
  mload obj 90004
end
*mdoor 90013 east flags a
*mdoor 90013 east room 90014
~
#90009
Tree <���-�� ���-�� ������ �������>~
0 d 2
*~
if (%actor.vnum% != -1)
  halt
end
wait 1
if !(%self.fighting%)
  mecho _- �����, ����� ! - ��������� ������ ���������, ����������� �������
  mecho ��� ���������������.
  mecho ��� ��� � ������� ������� �����, ���� ����� ���������� ���������, � ����
  mecho ������ ������������, ��� ���������.
  mecho �������� ����������� ������ ����� �� ������� ������.
  mkill %actor%
end
detach 90009 %self.id%
~
#90010
Tree <��������� ������>~
2 c 0
��������� ��������� ����������~
if (%actor.vnum% != -1)
  return 0
  halt
end
if !(%arg.contains(�����)%) && !(%arg.contains(���)%)
  return 0
  halt
end
wait 1
calcuid trap 90005 obj
if %trap%
  wpurge %trap%
  wsend %actor% �� ��������� ���� ������... 
  wsend %actor% ��� ��� �� ���������� ��������� �������.
  wechoaround %actor% %actor.name% �������%actor.q% ���� ������...
  wload  mob 90006
end
calcuid room 90014 room
detach  90010 %room.id%
~
#90011
Tree <���������� ���������>~
2 c 0
��������� ����������~
if (%actor.vnum% != -1)
  return 0
  halt
end
if !(%arg.contains(��������)%) && !(%arg.contains(������)%)
  return 0
  halt
end
wait 1
calcuid target 90006 mob
if !%target%
  halt
end
wpurge %target%
wsend %actor% �� ��������� ���� ��������...
wechoaround %actor% %actor.name% ���������%actor.g% �������.
wload obj 90000
wload mob 90007
calcuid target 90007 mob
if %actor.sex% == 1
  wecho _- ������� ����, ��� ��������� ! ������ ���� � ����� ����� � ��
  wecho ����� �������� ����. ������, ���� � ����� ����� � ������, ������� �����
  wecho ������ ���, ���������� ��������� ���������� � ��������-������������.
  wecho � ��� ������ ������...
  wecho �� ����, � �����, ���������� �������, �� ������� ������� ���������.
else
  wecho _- ������� ����, ��� ������������� ! ������ ���� � ����� ����� � ��
  wecho ����� �������� ����. ������, ���� � ����� ����� � ������, ������� �����
  wecho ������ ���, ���������� ��������� ���������� � ��������-������������.
  wecho � ��� ������ ������...
  wecho �� ����, � ����������� ��������, �������������� �������, �� �������
  wecho ������� ���������.
end
wforce %target% follow .%actor.name%
makeuid Keeper %actor.id%
remote Keeper %target.id%
calcuid room 90017 room
attach 90012 %room.id%
detach 90011 %self.id%
~
#90012
Tree <����� �� ������ � ������>~
2 g 100
0~
if %actor.vnum% != 90007
  halt
end
wait 1
wecho ___�������� ����� �����, ��������� �������� ������, � �� �������� �����������
wecho ����������� ������� �����.
wload mob 90008
calcuid Demon 90008 mob
wforce %Demon% attack %actor.name%
calcuid room 90017 room
detach 90012 %self.id%
~
#90013
Tree <PC ������� ��������� ���������>~
0 p 100
0~
if %damager.vnum% == -1
  return 1
  wait   1
  msend  %damager% - �� ��� ���� ! - ���������� ��������� � �������� �������.
  halt
end
return 0
~
#90014
Tree <������ ����>~
0 f 100
0~
if %world.curobjs(90007)% < 10 && %random.100% < 10
  mload obj 90007
end
if %world.curobjs(90008)% < 10 && %random.100% < 10
  mload obj 90008
end
calcuid House 90018 room
attach  90016 %House.id%
~
#90015
Tree <������ �� �����>~
0 c 1
������ ������� ��������� ������� �������� ��������~
if !%arg.contains(�����)% && !%arg.contains(����)%
  return 0
  halt
end
wait    1
mecho   _- ������ �� �� ������,- ��������� ������, � ��������� �� �����.
mecho   ���� ������� ��������� � ����������� � ���� ������.
calcuid House 90018 room
attach  90016 %House.id%
mpurge  %self%
~
#90016
Tree <�������� �����>~
2 c 0
�������� ��������� ������~
if !(%arg.contains(�����)%) && !(%arg.contains(���)%)
  return 0
  halt
end
wsend %actor% �� ��������� ���� �� ����� ������ � ���� ������...
wsend %actor% � �������� ���-�� ������� � ���������!
wechoaround %actor% %actor.name% ��������%actor.g% �� ������ ���� � ���� ������.
wload  obj 90006
wait 1
detach  90016 %self.id%
~
#90017
Tree <��������� ������ � ������� � �������>~
2 g 100
0~
if (%actor.vnum% != 90007) || !(%direction.contains(east)%)
  halt
end
wait  1
wecho ���� �� ������ ������������ � � ������� ������� �������� ������� ����.
wecho �� ����� ������ ������ ��������.
wecho ���� ���������� ������������ ��������, ������� ����������� �� �������, �,
wecho ��������� ���� ���������, �������� � ����. 
if %random.2% == 1
  eval roomis 90041+%random.2%
else
  eval roomis 90044+%random.2%
end
wteleport %actor% %roomis%
wdoor 90022 west flags a
wdoor 90022 west room 90023
wdoor 90023 east flags a
wdoor 90023 east room 90022
detach 90017 %self.id%
~
#90018
Tree <���� ������� ����>~
0 f 100
0~
mload obj 90001
if (%world.curobjs(90012)% < 10) && (%random.100% <= 20)
  mload obj 90012
end
if (%world.curobjs(571)% < 1) && (%random.1000% <= 250)
  mload obj 571
end
~
#90019
Tree <���� ������� ���������>~
0 k 100
0~
if !%exist.mob(90012)%
  detach 90019 %self.id%
  halt
end
calcuid  blondies 90012 mob
if (%blondies.room% == %self.room%)
  halt
end
exec 90024 %blondies.id%
detach 90019 %self.id%
~
#90020
Tree <START TRIGGER ZONE 900>~
2 f 100
0~
wdoor   90011 east  purge
wdoor   90013 east  purge
wdoor   90023 east  purge
wdoor   90022 west  purge
wdoor   90026 south purge
calcuid wld 90011 room
attach  90003 %wld.id%
calcuid wld 90013 room
attach  90004 %wld.id%
detach  90006 %wld.id%
calcuid wld 90014 room
attach  90010 %wld.id%
attach  90011 %wld.id%
calcuid wld 90018 room
detach  90016 %wld.id%
calcuid wld 90025 room
attach  90017 %wld.id%
calcuid wld 90026 room
attach  90045 %wld.id%
calcuid sorceress 90036 mob
detach  90054     %sorceress.id%
calcuid room   90051 room
attach  90025  %room.id%
calcuid room   90057 room
attach  90034  %room.id%
calcuid room   90058 room
attach  90035  %room.id%
calcuid room   90059 room
attach  90038  %room.id%
calcuid room   90061 room
attach  90039  %room.id%
calcuid room   90048 room
attach  90041  %room.id%
calcuid room   90073 room
detach  90046  %room.id%
calcuid room   90093 room
detach 90065  %room.id%
wdoor   90050 west purge
wdoor   90054 east purge
wdoor   90057 west flags abc
wdoor   90058 east flags abc
wdoor   90076 east  purge
wdoor   90079 west  purge
wdoor   90083 down  flag  abc
wdoor   90058 west  purge
wdoor   90061 west  purge
calcuid volshebnik 90017 mob
detach 90002 %volshebnik.id%
attach 90000 %volshebnik.id%
end
~
#90021
Tree <����� �������>~
0 f 100
0~
if %world.curobjs(90009)% < 15 && %random.100% < 10
  mload obj 90009
end
~
#90022
Tree <����� ���������>~
0 f 100
0~
if %world.curobjs(90010)% < 4 && %random.100% < 10
  mload obj 90010
end
~
#90023
Tree <����� ��������>~
0 f 100
0~
if %world.curobjs(90011)% < 10 && %random.100% < 10
  mload obj 90011
end
~
#90024
Tree <��������� ������ � �������������� �� ������>~
0 z 100
0~
if %self.fighting%
  halt
end
stand
mteleport %self% 90039
~
#90025
Tree <����� � �������>~
2 e 100
0~
if (%exist.mob(90022)%)
  calcuid BadGuy 90022 mob
  attach  90026 %BadGuy.id%
  exec    90026 %BadGuy.id%
end
return  1
calcuid room  90051 room
detach  90025 %self.id%
~
#90026
Tree <��������� ������� �������>~
0 b 100
0~
wait 1
if !%self.fighting%
  switch %random.8%
    case 1
      mecho   - ��, ��, ������ �������, - �������� ���������  � �������� � ������� ������.
      masound - ��, ��, ������ �������, - ����������� �� �������� �������.
    break
    case 2
      mecho   - �� �������� �����, ������ ����� ? - �������� ���������, � �������� � �������
      mecho   ������, ������� ������ ������� ���� � ������. ������ ������ ��������.
      masound - �� �������� �����, ������ ����� ? - ����������� �� �������� �������. �����
      masound �������� ���-�� ����� ����.
    break
    case 3
      mecho   - �� ��, ����� ������, ������-�� ��� ������ ! - ���������� ��������� � ����
      mecho   ������� � ���. ������ �������� � ������ � ����.
      masound - �� ��, ����� ������, ������-�� ��� ������ ! - ����������� �� �������� �������.
    break
  done
end
wait 4s
~
#90027
Tree <��������� ����>~
0 f 100
~
mload obj 90021
if ((%world.curobjs(90017)% < 10) && (%random.1000% <= 200))
  mload obj 90017
end
if ((%world.curobjs(90018)% < 10) && (%random.1000% <= 200))
  mload obj 90018
end
if ((%world.curobjs(90020)% < 10) && (%random.1000% <= 200))
  mload obj 90020
end
calcuid Baron 90020 mob
attach  90028 %Baron.id%
~
#90028
Tree <������ ������� ���� ������>~
0 j 100
0~
if %object.vnum% != 90021
  return 0
  halt
end
return 1
wait   1
if %actor.sex% == 2
  mecho - ������� ����, ���������� ����.
else
  mecho - ������������� ����, ������������ ������.
end
mecho - ��� � �����-�� ����������� �������, � ��� ����� ������������ ����������
mecho ������.
mecho - ����� ��� �������, �������� �������� �� ������ � ��������.
mecho - ��� ��������� � ���������. ������ ���� �������-���-����� � ���������,
mecho �� ������ �����������. ������� ��� ��� ��, ������ ����� ��� ��������, ��
mecho � ��� �� ���� ����� ���������. ��������� �������, � ����, ����������� �����
mecho ����������� ��������� � ������ �������, ���� �� ���� ��� ����� 30 ���.
mecho - ����� �� ������� ������ ���� �� ������������ ����, ���� ������ � ���� ���
mecho � ������ � ������.
mecho - ������ ����� �� ��������� � ���������� �����, ��� �������� � ���� ��������
mecho 2 ��������, ������� ���-����� ������ �� ����� ����������� ����������.
mecho - �������� ��� �����, �� ���� ����� �����������. ������� ����� ������ �
mecho ������������ �������, ���� ������ - ��� � ���������.
mecho - � ������ ���� � �����, � �� �� ��������� �� �������.
mdoor  90050 west flags a
mdoor  90050 west room  90054
mdoor  90054 east flags a
mdoor  90054 east room 90050
follow .%actor.name%
detach 90028 %self.id%
~
#90029
Tree <PC ����� � ���������>~
0 q 100
0~
wait 1
mecho - ������, �������, ���� ������� ? - ���������� �������.
attach 90030 %self.id%
~
#90030
Tree <� �������� �� ���������>~
0 d 0
�������� ������� ����~
if !%speech.contains(�������)%
  return 0
  halt
end
wait  1
mecho �� ���������� �������� ���������� ������������ ������ �������.
mecho - ��-��-��, ������ �� �� ����, - �������� �������� ��, - �����
mecho - ����� �� ����! ������� ����� �������� ������ �� �����.
makeuid Hero %actor.id%
global  Hero
calcuid velik 90024 mob 
attach  90031 %velik.id%
detach  90029 %velik.id%
detach  90030 %velik.id%
~
#90031
Tree <� ���� �������>~
0 d 0
���� ������� ����~
if (!%speech.contains(�������)% && !%speech.contains(����)%) || (%actor.id% != %Hero.id%)
  halt
end
calcuid second 90025 mob
if %second%
  calcuid room 90056 room
  attach  90032 %room.id%
  exec    90032 %room.id%
  detach  90032 %room.id%
  if (%second.room% == %self.room%)
    wait 1
    attach  90033 %self.id%
    mecho - ��� !- ����������� ������� ������� � �������� �� �����.
    mecho ������ �� ���������, ���� �� ���� ��������� � ����������
    mecho ��������, ������ ��������� ������.
    mecho - �� ����� ���, - �������� ������, � ��������� �����������
    mecho ������� ������ �� �����.- �� ����� ����������, - ����������
    mecho ���, ������� �������.
  end
end
detach  90031 %self.id%
~
#90032
Tree <������������� ������ ��������>~
2 z 100
100~
calcuid giant 90025 mob
wteleport %giant% 90056
~
#90033
Tree <� ��������>~
0 d 0
�������� �������~
if %actor.id% != %Hero.id%
  halt
end
mkill   �����
detach  90033 %self.id%
~
#90034
Tree <�������� ������>~
2 c 1
�������� �������� ��������~
if !%arg.contains(������)% && !%arg.contains(������)%
  return 0
  halt
end
wecho ������� � �������� ����� �� �����, �������� ������.
wdoor   90057 west purge
wdoor   90057 west room 90058
wdoor   90058 east purge
wdoor   90058 east room 90057
calcuid room 90057 room
detach  90034 %room.id%
~
#90035
Tree <PC ����� �� ����>~
2 e 100
0~
wait  1
wecho  -������, �����, ������ ������ ������ ��� ������ ��������� ������� ! -
wecho  ���������� ����� ���-������.
wload  mob 90026
calcuid Tengis 90026 mob
set     Target %random.pc%
if %Tengis% && %Target%
  wecho  �� ���� ��������� ����������� ���������� ���� ������ � ������, ������������
  wecho  ���������� ������.
  wecho  ������ � ������ "��������" �� ������ ��������� ���������� � ������� ������,
  wecho  �������� ����� �����...
  wait   3s
  if %Tengis.hitp%
    wforce %Tengis% attack %Target.name%
  end
end
detach  90035 %self.id%
~
#90036
Tree <������� ��������>~
0 f 100
~
if %world.curobjs(90022)% < 10 && %random.10% < 2
  mload obj 90022
end
mecho   -������, ���� ��,-��������� ������� ���-�����.
mload   mob 90027
calcuid Narbek 90027 mob
set     Target %random.pc%
return  0
if %Narbek% && %Target%
  mecho  �� ����� ��������� ��������� ����, �� ���� ��� � ������ �����.
  mecho  - � ���� ����... - ������� ��, ������ ������������� ���� �����,
  mecho  � ����� ������ ������� "��������"
  mforce %Narbek% attack %Target.name%
end
~
#90037
Tree <������� ��������>~
0 f 100
~
if %world.curobjs(90023)% < 10 && %random.10% < 2
  mload obj 90023
end
if %world.curobjs(90024)% < 10 && %random.10% < 2
  mload obj 90024
end
mdoor 90058 west flags a
mdoor 90058 west room  90059
~
#90038
Tree <PC ����� � �����>~
2 e 100
0~
if %started%
  halt
end
wait  1
set   started 1
while %IbnNalim%
  set     IbnNalim 0
  calcuid IbnNalim 90028 mob
  if !(%IbnNalim%)
    halt
  end
  if !%IbnNalim.fighting%
    wait   1
    switch %random.4%
      case 1
        wecho   -������, ����� ������ ����, ��, - ���������� ��������� �����, � �����
        wecho   ������������.
        wasound -������, ����� ������ ����, ��, - ���������� ��������� �����, � �����
        wasound ������������.
      break
      case 2
        wecho   -� ����� ���� � ���� �����, ��, ������ ��� ����� ������. - �������� ��������
        wecho   ����.
        wasound -� ����� ���� � ���� �����, ��, ������ ��� ����� ������. - �������� ��������
        wasound ����.
      break
    done
  end
  wait 6s
done
detach  90038 %self.id%
~
#90039
Tree <PC ����� � ������ ������� �����>~
2 e 100
~
wait 1
wecho - ������ ����, �� ���� ��� ����, ����� � ����...
wecho - ����� ������� ! - �������� �������� ���-�����.
wload   mob 90029
wecho �� ������, ����� � ������� ����������� ���-������ ��-�� ��� ��������, �
wecho ��������� "����� �������" ��������� �� �������� ����������� � ����������.
wecho � ���������� � ������� ��� �������� � ���� �������.
wait   3s
set    Target %random.pc%
if ((%exist.mob(90029)%) && (%Target%))
  calcuid monstr 90029 mob
  wforce %monstr% mkill %Target%
end
wdoor   90061 west flags a
wdoor   90061 west room  90060
calcuid wizard 90028 mob
detach  90038  %wizard.id%
detach  90039  %self.id%
~
#90040
Tree <��������� ��������>~
0 f 100
~
set vnum 90025
while (%vnum% <= 90028)
  if ((%world.curobjs(%vnum%)% < 10) && (%random.10% == 1))
    mload obj %vnum%
  end
  eval vnum %vnum%+1
done
if !%actor%
  halt
end
calcuid qroom %self.realroom% room
if (%actor.vnum% != -1)
  set Hero %actor.leader%
else
  set Hero %actor%
end
global Hero
remote Hero %qroom.id%
if %exist.mob(90030)%
  calcuid Girl 90030 mob
  if %Girl%
    if %Hero.sex% == 2
      mecho - ������� ����, �������, ��� ��� ���� �������� � ������ �� �������.
    else
      mecho - ��, �������, ��� ������� ����.
    end
    %Hero.exp(+50000)%
    mecho ������������ �������� ������ ����������� ���� ��� � �������� �� �����...
    mpurge %Girl%
  end
end
if %exist.mob(90020)%
  calcuid Older 90020 mob
  if (%Older.realroom% == %Hero.realroom%)
    mpurge %Older%
    mecho ������ �����������.
    mecho �� ��� ����� �������� �������� ������� ������� � ������� ������.
  end
  exec 90067 %qroom.id%
end
return 0
~
#90041
Tree <��������� ����� � ���� 901>~
2 g 100
0~
if %actor.vnum% != 90007
  halt
end
wait    1
calcuid room   90073 room   
attach  90046  %room.id%
calcuid room   90093 room
attach  90065  %room.id%
attach  90042 %actor.id%
exec    90042 %actor.id%
detach  90042 %actor.id%
attach  90043 %actor.id%
detach  90016 %self.id%
~
#90042
Tree <������������� ���������>~
0 z 100
0~
mtransform 90037
return     0
~
#90043
Tree <� ���>~
0 d 1
���� ��� ������� ����~
if %actor.id% != %Keeper.id%
  halt
end
wait 1
if %actor.sex% == 2
  mecho - �, ��� �������������, � ������� ����, - ������� ���������.
else
  mecho - �, �������� ������, ��� ���������, � ������ ����� ���� ����� ��������, -
  mecho ��������� ��������� ���������.
end
mtransform 90038
�����
attach     90044 %self.id%
detach     90043 %self.id%
~
#90044
Tree <� �����>~
0 d 1
������ ����� ������ ������~
if %actor.id% != %Keeper.id%
  halt
end
wait 1
if %actor.sex% == 2
  mecho - � ������, - ������� ���������� ���������.
else
  mecho - ������, � ���������� ������,- �� ����� � ��� �����������
  mecho ������� ������� ���������.
end
mtransform 90037
������
attach     90043  %self.id%
detach     90044  %self.id%
~
#90045
Tree <��������� ����� � ��������� ������� ����>~
2 g 100
0~
if (%actor.vnum% != 90007)
  halt
end
wait 1
wecho ����� �������� ������������, ������ ���� �� ��.
wdoor  90026  south room 90048
detach 90045 %self.id%
~
#90046
Tree <��������� ����� � ���>~
2 g 100
0~
if (%actor.vnum% != 90037)
  halt
end
wait   1
attach 90047 %actor.id%
exec   90047 %actor.id%
detach 90047 %actor.id%
wteleport ��������� 90069
wecho �������� ��-�� ������ �������� ������ ����������. ���� �� ��� ���������� ����������
wecho ��������� � ��������� � ���, � ��������� ����������� �� ���.
wload  mob 90032
wload  mob 90032
wload  mob 90032
detach 90046 %self.id%
~
#90047
Tree <������������� � ������������ ���������>~
0 z 0
100~
mtransform 90038
return     0
detach     90043 %self.id%
attach     90044 %self.id%
~
#90048
Tree <������� ���������>~
0 n 100
0~
attach 90051  %self.id%
set    target %random.pc%
attack %target.name%
~
#90049
Tree <������ �����>~
0 f 100
0~
if ((%world.curobjs(90031)%) < 3 && (%random.1000% < 80))
  mload obj 90031
end
if %world.curobjs(90032)% < 10 && %random.10% < 2
  mload obj 90032
end
mload  mob 90034
return 0
~
#90050
Tree <������� �����>~
0 n 100
0~
mecho �������� �� ������ ��������� �������� ���� ��������.
wait 1
foreach next %self.npc%
  if %next.vnum% == 90032
    mecho ��� ���� �������� ��������� �������� "��, �������!" � ������� � ������.
    set oborvanec %next%
    wait 1
    mpurge %oborvanec%
  end
done
if %exist.mob(90037)%
  calcuid princess 90037 mob
end
if !%princess%
  if %exist.mob(90038)%
    calcuid princess 90038 mob
    attach 90042 %princess.id%
    exec 90042 %princess.id%
    attach 90043 %princess.id%
    detach 90044 %princess.id%
    detach 90042 %princess.id%
  end
end
if %princess%
  mecho -���� ! - �������� ��������� �������� � ��������� � ���������.
  follow ���������
else
  set princess %random.pc%
  follow %princess.name%
end
attach 90052 %self.id%
attach 90053 %self.id%
if %exist.mob(90036)%
  calcuid sorceress 90036 mob
  attach 90054 %sorceress.id%
end
exec 90053 %self.id%
mdoor 90076 east flags a
mdoor 90076 east room  90079
mdoor 90079 west flags a
mdoor 90079 west room  90076
return 0
~
#90051
Tree <��������� �����>~
0 f 100
0~
if %world.curobjs(90029)% < 10 && %random.10% == 1
  mload obj 90029
end
if %world.curobjs(90030)% < 10 && %random.10% == 1
  mload obj 90030
end
~
#90052
Tree <���������� ������>~
0 p 100
0~
if %damager.vnum% == -1
  if %damager.sex% == 2
    mecho - �� ����, �������, � ���� �������. - ��������%self.u% %self.name%.
  else
    mecho - ���� �� ��� ��� ���� �������, � ��������� ����, � �� ��������
    mecho ���� �������. - �������%self.g% %self.name%.
  end
  return 1
  halt
end
return 0
~
#90053
Tree <Prince goes>~
0 b 100
0~
wait 1s
switch %random.8%
  case 1
    mecho - ������ ����-�-�, - ��������%self.g% %self.name%.
  break
  case 2
    set  pc %random.pc%
    if %pc.sex% == 2
      mecho - ��������, ��� ��������-�-� ! - �������%self.g% %self.name%.
    else
      mecho - ��������, ���� ��������-�-� ! - �������%self.g% %self.name%.
    end
  break
  case 3
    mecho - �-�-�, ���������� ����-�-� ! - ��������%self.g% %self.name%.
  break
  case 4
    mecho - ������ �� �����-�-� ! - �������%self.g% %self.name%.
  break
  case 5
    mecho - � ����� ����-�-� ! - ��������%self.g% %self.name%.
  break
done
~
#90054
Tree <����� ����� � ���>~
0 h 100
0~
if %actor.vnum% != 90034
  halt
end
wait 1
mecho - ������ ������� ! - ���������� %self.name% � ������ �����
mecho _�� ���� ��������� ������.
mecho - �, ���� ���-������ �� ���������� ����� ����� �������� ��������,
mecho ���� ��� ���� �� �������, � �� ������ �� �������� ��� ����� �����.
set   menno 0
foreach tpc %self.pc%
  if %tpc.sex% == 1
    if !%menno%
      mecho ��� ���������������� ��������� �� ������� � ���� (�������� ���� �������
      mecho ������������), ����� ������ �������������� ������ ��
      set menno 1
    end
    mecho %tpc.vname%
    msend %tpc.name% (� ������, ������, -�������� ��, ������ ������� ��� ���������� ���������)
  end
done
attach 90055 %self.id%
~
#90055
Tree <� ��������>~
0 d 1
����� �������� ���~
if %actor.vnum% != -1
  halt
end
wait  1
mecho - ��� � ������� ! - ��������� � ������ ���.
mecho - ������ ���� ������ ! ���� �� ��� ������� - �� ����� ������ ���� �� ������.
mload obj 90033
give ������ .%actor.name%
wait  2s
foreach tpc %self.pc%
  mteleport %tpc% 90081
  msend %tpc% �� ��������� �� ������, ������� � ������ ������.
done
detach 90054 %self.id%
detach 90055 %self.id%
~
#90056
Tree <������ ���� ����������� ���������>~
0 h 100
0~
if %actor.vnum% != -1 || %answer% || %self.fighting%
  halt
end
wait 1
attach 90057 %self.id%
if !%self.fighting%
  switch %random.3%
    case 1
      mecho - �������, ��������� ����������, ���� ����, ������ "�", ������ "�", -
      mecho �������� ���������� ���� � ������� ���������.
      set    answer �������
      global answer
    break
    case 2
      mecho - ������� �������� ������ � ����������, ���� ����, ������ "�", ������� "�", -
      mecho ����������� ������ � ������.
      set    answer �������
      global answer
    break
    case 3
      mecho - ������� �������, ����� ����, ������ "�", ����� "�", -
      mecho ������������ �������� � ����� ������� ������� � �������.
      set    answer ������
      global answer
    break
  done
end
wait  20s
~
#90057
Tree <������� ���-�� ���������>~
0 d 0
*~
if %actor.vnum% != -1
  halt
end
wait 1
if (%speech%==%answer%)
  set okquest 1
else
  set okquest 0
end
mecho   ������ ���� ��������� ������ �����.
calcuid amuletObj 90033 obj
foreach target %self.pc%
  set amulet 0
  if %target.eq(4)%==%amuletObj%
    set amulet 1
  end
  if %target.eq(3)%==%amuletObj%
    set amulet 1
  end
  if %amulet%
  break
end
done
if !%amulet%
  mecho -��� ������� ! - �������� �� ��������� �������.
  stand
  set target %random.pc%
  attack %target.name%
  detach 90056  %self.id%
  detach 90057  %self.id%
  halt
end
if !%okquest%
  mecho - ��, �������� ����� �����, ������ �� ����� ! - ���������� �����������
  mecho ��, � ����� �������� � ���������.
  halt
end
if %actor.sex% == 2
  mecho - ����� ��������� ����������, - ������ ��������, ������� %actor.vname% ����������
  mecho ��������, - � �������, � ����-��.
else
  mecho - ���������, - ��������� ����������� ��, - ����� ����� ������� ����.
end
wait 1s
mecho - ������� ��, - ��������� ������ ���� � ������ ��������.
mdoor 90083 d purge
mdoor 90083 d room 90084
*mdoor 90083 flags a - ��� ������
detach 90056 %self.id%
detach 90057 %self.id%
~
#90058
Tree <���� �� ����� ������� �� PC>~
0 q 100
0~
if %actor.vnum% != -1
  halt
end
if %exist.obj(90033)%
  calcuid amuletObj 90033 obj
  foreach target %self.pc%
    set amulet 0
    if %target.eq(4)%==%amuletObj%
      set amulet 1
    end
    if %target.eq(3)%==%amuletObj%
      set amulet 1
    end
    if %amulet%
    break
  end
done
end
if !%amulet%
  wait 1
  mecho - ��� ������� ! - �������%self.g% %self.name%.
  stand
  set target %random.pc%
  attack %target.name%
  halt
end
~
#90059
Tree <�������� �����>~
0 f 100
0~
if (!%exist.mob(90034)%)
  halt
end
calcuid prince 90034 mob
attach  90060 %prince.id%
exec    90060 %prince.id%
calcuid sorceress 90036 mob
attach  90061 %sorceress.id%
if (%actor.vnum% != -1)
  eval Killer %actor.leader%
else
  eval Killer %actor.id%
end
remote Killer %sorceress.id%
~
#90060
Tree <������������� ������ �������>~
0 z 0
*~
mtransform 90035
follow     me
return     0
detach 90060 %self.id%
~
#90061
Tree <��������� � ���������>~
0 q 100
*~
eval skl %actor.remort%*5+79
if %actor% != %Killer%
  halt
end
wait   1
mecho  - � ����� ���������� ����, %actor.name% ! - ���������� ��������� ���.
if %actor.sex% == 1
  msend %actor% ��� ��������� � ��� �� ��� � ���� ���� �����������. �� ������ ��...
  msend %actor% (��� ���� ������ - �� ������ ��������� ����. � ����� ���, ��������,
  msend %actor% ����� ��������� �������, ���, ����� �������, ������)
end
wait 2
mecho ��� ������ ����������, ��������� �� %actor.vname% � ������� � ������ ���������� �������� ����������.
wait 1
switch %actor.class%
  *������
  case 1
    if %actor.skill(���������)% <= %skl%
      mskilladd %actor.name% ��������� %random.3%
    else 
      ��� %actor.name%
      mecho ��� ����� �� %actor.rname% �������: "H��������, ��� ���������� ������, ��� ���� ����� ����� �� ������������ ������!"
      �����
    end
  break
  *���
  case 2
    if %actor.skill(��������)% <= %skl%
      mskilladd %actor.name% �������� %random.3%
    else 
      ��� %actor.name%
      mecho ��� �������: � ����� ����, %actor.name%, ����� ������� ���������� ������ ������.
      �����
    end
  break
  *��������
  case 3
    if %actor.skill(����������� �����)% <= %skl%
      mskilladd %actor.name% �����������.����� %random.3%
    else 
      ��� %actor.name%
      mecho ��� ����� �� %actor.rname% �������: "H��������, ��� ���������� ������, ��� ���� ����� ����� �� ������������ ������!"
      �����
    end
  break
  *�������
  case 4
    if %actor.skill(��������)% <= %skl%
      mskilladd %actor.name% �������� %random.3%
    else 
      ��� %actor.name%
      mecho ��� �������: � ����� ����, %actor.name%, ����� ������� ���������� ������ ������.
      �����
    end
  break
  *����
  case 5
    if %actor.skill(���������� �����)% <= %skl%
      mskilladd %actor.name% ����������.����� %random.3%
    else 
      ��� %actor.name%
      mecho ��� ����� �� %actor.rname% �������: "H��������, ��� ���������� ������, ��� ���� ����� ����� �� ������������ ������!"
      �����
    end
  break
  *������
  case 9
    if %actor.skill(������ �����)% <= %skl%
      mskilladd %actor.name% ������.����� %random.3%
    else 
      ��� %actor.name%
      mecho ��� ����� �� %actor.rname% �������: "H��������, ��� ���������� ������, ��� ���� ����� ����� �� ������������ ������!"
      �����
    end
  break
  *�������
  case 10
    if %actor.skill(����)% <= %skl%
      mskilladd %actor.name% ���� %random.3%
    else 
      ��� %actor.name%
      mecho ��� ����� �� %actor.rname% �������: "H��������, ��� ���������� ������, ��� ���� ����� ����� �� ������������ ������!"
      �����
    end
  break
  *������
  case 11
    if %actor.skill(������)% <= %skl%
      mskilladd %actor.name% ������ %random.3%
    else 
      ��� %actor.name%
      mecho ��� ����� �� %actor.rname% �������: "H��������, ��� ���������� ������, ��� ���� ����� ����� �� ������������ ������!"
      �����
    end
  break
  *�����
  case 12
    if %actor.skill(�������)% <= %skl%
      mskilladd %actor.name% ������� %random.3%
    else 
      ��� %actor.name%
      mecho ��� ����� �� %actor.rname% �������: "H��������, ��� ���������� ������, ��� ���� ����� ����� �� ������������ ������!"
      �����
    end
  break
  default
    ���
    wait 3
    say ���-�� ��� ��������� �, ��� ���� ������, �� ���������� ������....
    �����
  break
done   
detach 90061 %self.id%
case 13
~
#90062
Tree <���� ���� � ��������>~
0 f 100
0~
if (%world.curobjs(90035)% < 10) && (%random.10% < 2)
  mload obj 90035
end
~
#90063
Tree <���� ���� � �������>~
0 f 100
0~
if (%world.curobjs(90034)% < 10) && (%random.10% < 2)
  mload obj 90034
end
~
#90065
Tree <��������� ������ � ��������� ������� ����>~
2 g 100
0~
if %actor.vnum% != 90037
  halt
end
wait    1
wforce  %actor% follow me
wpurge  %actor%
switch %random.10%
  case 1
    if %world.curobjs(544)%==0
      wecho ����� �� ������ ��� �����.
      wload obj 544
    end
  break
  * �������� ������
  case 2
    if %world.curobjs(545)%==0
      wecho ����� �� ������ ��� �����.
      wload obj 545
    end
  break
  * ����
  case 3
    if %world.curobjs(546)%==0
      wecho ����� �� ������ ��� �����.
      wload obj 546
    end
  break
  default
    wecho �� ����� ����� ��� ������ ������ ����� ���������� �������: �������.
    wecho ���� �� ������, �� �� �����, ���� �� ������ ����, �������� ��.
    wait 1s
    wecho ������ �� �� ���� �������� �������� ������ ���-�� �����.
    wload obj 101
    wload obj 102
    wload obj 103
  end
break
done
~
#90066
tree <����� ������ �������>~
0 z 100
~
wait 1
switch %Hero.class%
  case 2
    if %Hero.skill(����������� ������)% < 100
      mskilladd %Hero.name% ���������.���� %random.3%
      ��� %Hero.name%
      mecho ����� ������: � ����� ����, %Hero.name%, ����� ������� ���������� ������ ������.
      �����
    end
  break
  case 4
    if %Hero.skill(��������)% < 100
      mskilladd %Hero.name% �������� %random.3%
      ��� %Hero.name%
      mecho ����� ������: � ����� ����, %Hero.name%, �����, ����� ������� �������� ����.
      �����
    end
  break
  default
    say ����� �� ������ ������� �����
    %Hero.gold(+1500)%
  break
done
~
#90067
�������� ������~
2 z 100
~
wload mob 90031
wait 2
calcuid Baron 90031 mob
remote Hero %baron.id%
exec 90066  %baron.id%
rdelete Hero %self.id%
~
#90068
���������� ������ ������ � ������~
1 c 1
*~
if %actor.class% == 8
  return 0
  halt
end
set str �����
set str2 quit
if %str.contains(%cmd%)% || %str2.contains(%cmd%)%
  return 1
  osend %actor% ����� &K����� &R�������&n �������� ��������� � ���� ������ ����� � �� ������ ���������!
  halt
end
return 0
~
#90069
������ ����� ���� �������~
1 l 100
~
if %actor.class% != 8
  return 0
  osend %actor% _����� &K����� &R�������&n �������� ������� � ���� ���!
  oechoaround %actor%  %actor.name% �������%actor.u% ����� &K���� &R�������&n, �� ���� �����%actor.g% �� ����.
end
~
#90070
���� ���������� ��������~
1 bg 100
~
wait 1
set target %self.worn_by%
if (!%target% || (%target.class% == 8))
  set target %self.carried_by%
  if (%target% && (%target.class% != 8))
    if %target.vnum% != -1
      oecho &K���� &R�������&n ������������ ������� � �������� �� ��� %target.rname%.
      oforce %target% drop ����.����
      halt
    end
    osend %target% &K���� &R�������&n ����� ��������� � ��������� ���������� � ��� �� �����.
    set trash %target.eq(12)%
    if %trash%
      set trashname %trash.name%
      oforce %target% ����� %trashname.car%.%trashname.cdr%
    end
    oforce %target% ����� ����.�������
  end
  halt
end
eval dmg %target.maxhitp%/12
if ((%target.hitp% < %dmg%) && (%target.vnum% == -1))
  osend %target%  &K���� &R�������&n � ��������� ��� � ������� �������������� ���������� � ����� ���.
  eval dmg %target.hitp%+2
  set empty 1
end
osend %target% �� ���������� �������� ������ ���!
eval erg %target.move%-15
if %erg% > 0
  eval buf %target.move(-%erg%)%
end
if ((%target.maxhitp% < 100) || (%target.vnum% != -1) || (%empty% == 1))
  osend %target% &K���� &R�������&n ���������� ���������� � ������ � ����� ����.
  osend %target% ��������� ����� ����� �������� �� ������� ���.
  oechoaround %target% &K���� &R�������&n ���������� ���������� � ����� � ���� %target.rname%.
  detach 90069 %self.id%
  oforce %target% ����� ����.�������
  oforce %target% drop ����.�������
  wait 1
  if (%target.vnum% == -1)
    odamage %target% %dmg%
  end
  attach 90069 %self.id%
  halt
end
odamage %target% %dmg%
switch %random.4%
  case 1
    osend %target% &K���� &R�������&n ������ � ���� ��� � ���������� �� ��� ��������!
    oechoaround %target% %target.name% ��������%target.g%, ������� ������� � ��� ������������ ����� ����!
  break
  case 2
    osend %target% &K���� &R�������&n � ������ �������� ������� ���� ��� �������!
    oechoaround %target% &K���� &R�������&n � �������� �������� ����� ����� �� %target.rname%!
  break
  case 3
    osend %target% &K���� &R�������&n � ������� �������� ���������� � ����� ��� � ����� �����!
    oechoaround %target% &K���� &R�������&n ������ �����, ��������� ����� �� %target.rname%!
  break
  case 4
    osend %target% � ���� ��� ������� ����� &K����� &R�������&n!!! ������!!!
    oechoaround %target% &K���� &R�������&n � �������� �������� ����� � ������ %target.rname%!
  break
done
~
#90071
���������� �������� �����~
1 i 100
~
if %victim%
  osend %actor% ���� ������� �������� ������� � ���� ����!
  return 0
  halt
end
~
$~
