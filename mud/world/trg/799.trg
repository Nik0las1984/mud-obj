#79900
reset~
2 f 100
~
eval zabros 0
calcuid river 79925 room
remote zabros %river.id%
calcuid hovalaroom 79996 room
detach 79939 %hovalaroom.id%
attach 79953 %hovalaroom.id%
~
#79901
���� ��������~
0 f 100
~
return 0
mecho �������� ���� ����� ������������ ��� � ����.
mecho ������� �������� ��� � ���������� ����!
mload mob 79910
mload mob 79910
~
#79902
���� �����~
0 f 100
~
mecho ��� ������ ������ ����� ������ ��� ���.
mload mob 79909
if ((%world.curobjs(79924)% < %world.maxobj(79924)%) 88 (20 >= %random.100%))
  %load% obj 79924
end
~
#79903
������ �����~
0 f 100
~
mecho ������ ��� �� ���� �����, ������ ����������� �� ���.
mload mob 79913
mload mob 79913
if ((%world.curobjs(79936)% < %world.maxobj(79936)%) && (20 >= %random.100%))
  %load% obj 79936
end
~
#79904
���� ���������~
0 r 100
~
wait 1
say ���� ������%actor.u%?
wait 1s
say �� ������-���� ��������� �����������!
wait 1s
if (%actor.sex% == 2)
  say ����������� ����, ������ ������!
else
  say ����������� ����, ������ ������!
end
~
#79905
���� ��� ����~
0 f 100
~
mecho ����� ������� ��� ������ ��������� �������������.
calcuid troom %self.realroom% room
attach 79958 %troom.id%
exec 79958 %troom.id%
~
#79906
����� ����������� ������~
0 k 100
~
mecho ���������� ��������� ��������: 'argentum Lamina ad auxilium'.
wait 1s
mecho &C���������� ������ ������ �� ��� ������ ���������!&n
mload mob 79919
detach 79906 %self.id%
~
#79907
���������� ����� �����������~
0 f 100
~
mdoor 79964 west purge 
mdoor 79964 west room 79962
mdoor 79974 east purge
mdoor 79974 east room 79975
mecho �� �������� ������� ����� ������������� ������.
~
#79908
������������ ����� (�������)~
2 e 100
~
wait 1
wecho ������ �� ����� � ���������� ������, ����� ������ ��� ������������.
detach 79908 %self.id%
~
#79909
������������ ����� (������)~
2 e 100
~
wait 1
wecho ������ �� ����� � ������� ������, ����� ������ ��� ������������.
detach 79909 %self.id%
~
#79910
����� �������� ����������~
0 k 100
~
mecho ������� ����� ��������: '�urea Ferrum ad auxilium'.
wait 1s
mecho &Y������� ��������� ������ �� ��� ������ ���������.&n
mload mob 79922
detach 79910 %self.id%
~
#79911
������� ����� �����������~
0 f 100
~
mdoor 79977 west purge 
mdoor 79977 west room 79976
mdoor 79983 east purge
mdoor 79983 east room 79987
mecho �� �������� ������� ����� ������������� ������.
~
#79912
����������� ����� ����~
0 f 100
~
return 0
mecho ����� ���������� �� ��������� ����������� ��������.
mload mob 79925
mload mob 79925
mload mob 79925
mload mob 79925
if ((%world.curobjs(79933)% < %world.maxobj(79933)%) && (20 >= %random.100%))
  %load% obj 79933
end
~
#79913
����� �������� ����~
0 l 50
~
set target %random.pc%
if (!%target%)
  halt
end
mechoaround %target% ����� �������� %target.vname% ������ ��������� ������� � ������ �����.
msend %target% ����� �������� ��� ������ ��������� ������� � ������ �����.
%actor.wait(2)%
wait 2s
mechoaround %target% ����� ������� ����� � %target.iname% �������%target.g% �� ����� � �������� ������.
msend %target% ����� ������� ����� � �� �������� �� ����� � �������� ������.
%target.wait(1)%
%target.position(6)%
%echo% ����!
mdamage %target% 250
detach 79913 %self.id%
~
#79914
���� �������������~
0 l 50
~
set target %random.pc%
if (!%target%)
  halt
end
attach 79923 %self.id%
mechoaround %target% ���� ���������� �� %target.vname%, ������� �� ����� � �������� ����� %target.s% � ������.
msend %target% ���� ���������� �� ���, ������� �� ����� � �������� ����� ��� �������.
eval temp %actor.wait(5s)%
eval temp %target.position(6)%
wait 10
mechoaround %actor% ���� �������� �� %actor.pname% ����� ������.
msend %actor% ���� �������� �� ��� ����� ������.
mdamage %actor% 100
wait 1s
set i 0
while ((%i% < 4) && %target%)
  mechoaround %actor% ���� ������� �� %actor.vname% ����� �����.
  msend %actor% ���� ������� �� ��� �������� �����.
  mdamage %actor% 100
  wait 1s
  eval i %i%+1
done
eval temp %actor.wait(1s)%
mechoaround %actor% ���� �������� �� ������������� ���� %actor.vname%.
msend %actor% ���� �������� �� ������ ������������� ����.
detach 79914 %self.id%
~
#79915
����������� ������~
0 qz 100
~
wait 5
� ����������� ����, %actor.iname%!
wait 5
� ���� � ��� ���, ������ �� ������ ������� ��� ������?
� ������� �������, ��� � ���� ���� �� �������.
wait 10
� ������, ���� ��� �������� � ���, ��� ����� ���������� � ��� ����� ������...
wait 5
� ����� ��� ������ �������, ����������!
wait 5
� � � ���� �����������!
����
detach 79915 %self.id%
~
#79916
����������� ������~
0 qz 100
~
wait 5
� ������ ����, %actor.iname%!
wait 5
if (%actor.sex% == 2)
  � ���� � ��� ���, ������ �� ������ ������ ���?
else
  � ���� � ��� ���, ������ �� ������ ������ ���?
end
� ������� �������, ��� ����-������ �������.
wait 10
� ��������, �� ��� ��������� � ����, ������� � ���� ������������.
wait 5
� ����� ��� ���� ����������, ����������!
wait 5
� �� ���� �� ���������!
����
detach 79916 %self.id%
~
#79917
����������� ���������~
0 qz 100
~
wait 5
� ����������, %actor.iname%!
wait 5
� ���� � ��� ���, ������ �� ������ ������� ��� ������?
� ������� �������, ��� ������ ���� ��� ������ �����������.
wait 10
� ���� �� �� �����, ������ �� ������ � ���� �� ����� ������...
wait 5
� ����� ��� ��������-���������� ������, ����������!
wait 5
� ��� ���������� ����!
����
detach 79917 %self.id%
~
#79918
����������� ��������~
0 qz 100
~
wait 5
� ������ ������ ����, %actor.iname%!
wait 5
� ���� � ��� ���, ������ �� ������ ������?
� ������� �������, ��� ������ ��� ��� ��� �� �������.
wait 10
� �������� ���� ������ ���� ���-�� �������, ��� �� ������������ ����.
wait 5
� ����� ���� �����-�������-������, ����������!
wait 5
� ����������� ���� ��� �����!
����
detach 79918 %self.id%
~
#79919
����������� ��������~
0 q 100
~
wait 5
� ����������� ����, %actor.iname%!
wait 5
� ����� ���������� � ����� ������.
� ���� � ��� ������������!
wait 10
� � ������ �������� �� �����, �������� ������ ������� � �����...
attach 79920 %self.id%
detach 79919 %self.id%
~
#79920
������ � ���������~
0 d 100
��� ���������?~
wait 5
� �� ����� �����, ��� � �����������, �� ������� ������ ������
� �� ������ ������� - ���������� ���������. 
� ������ ���, ��� ����� �����.
wait 5
� ���� ���������� � ������ ��� ��������.
� ������ �������, ��� � ������� ������ ������.
� ��������-���������� ������, ��� � ����� ������ �������.
� �����-�������-������ �����, ������� � ���� �� �������. 
wait 5
� �������� ��� ���������!
������
wait 5
mforce %actor% say � ����� ��, ���� ������?
wait 1s
� �� ������ ����������� � ������.
� �� ������ ������, ������ ��� ���������� ���� ��������: ����� �� ��� �� ��������.
wait 1s
mforce %actor% say ��� � ������-�� ���� ����������� �� ����� ���� �� ����������?
wait 1s
� ���� ��������.
� ������ �� ���� ����� ������ ��� ������� - ����� ��� ��� ������ �������� ������, 
� �������� ������ ����� ���������.
� ��� ������ �� ������, ���.
wait 5
mforce %actor% say ��� �� ���, �������, ���� ������ ���������?
wait 1s
� � �� ��������. ������ ��� �� ������� �����, �� ������-����. 
� ���� �� ������, �� ��������. 
wait 1s
� ���� ����� � ��������� ������� ����������� ������������� ������� �� ������,
� ����� ����� �����, ������ ���� �������� ����.
� ���� ������, ������� �� ����.
� �������� ������-���� ��������.
wait 10
� ������ �� ������ ���� ����...
wait 1s
� ����������?
attach 79921 %self.id%
detach 79920 %self.id%
~
#79921
����� ��������~
0 d 1
�� �������� ������~
wait 1
� ��� � ������������!
wait 2
� �����-�� �� � ��������� �����,
� ��� ���� ������ ��� ������ � ��� ����� ������.
wait 2
� ����� �����!
calcuid rubak 79900 mob
attach 79916 %rubak.id%
calcuid konuh 79901 mob
attach 79915 %konuh.id%
calcuid xlevnik 79902 mob
attach 79918 %xlevnik.id%
calcuid ambarnik 79904 mob
attach 79917 %ambarnik.id%
~
#79922
����������� ������~
0 r 10
~
wait 2
� ����������� ����, ������.
~
#79923
����� �����~
0 c 1
��������� �������~
if !%arg.contains(�������)%
  msend %actor% ��� �� ������ ��������� ?
  halt       
end
mechoaround %actor% %actor.iname% ����%actor.g% � ���� ����� � ��������%actor.g% �� ����� ������.
msend %actor% �� ����� � ���� ����� � ��������� �� ����� ������.
wait 5
mecho ��� ���� ����, ���� � ������ �������� �� ����� ������.
calcuid wolf 79908 mob
detach 79914 %wolf.id%
detach 79923 %self.id%     
~
#79924
����� ����~
0 lz 100
~
exec 79953 %self.room%
~
#79925
������ ������~
0 fz 100
~
if (%exist.mob(79927)%)
  calcuid eyes 79927 mob
  mecho ����� ��������� ����� ����� � �������.
  mpurge %eyes%
end
if ((%world.curobjs(79927)% < %world.maxobj(79927)%) && (20 >= %random.100%))
  %load% obj 79927
end
~
#79926
����� � ������~
0 r 100
~
foreach target %self.pc%
  %target.wait(15)%
done
wait 5
if (%actor.sex% == 2)
  � ����� �������������, ������ ����������?
else
  � ����� ������������, ����� ����������?
end
wait 2s
mforce %actor% say ����� �����, ��� � ������������� ���� ��������
mforce %actor% say ��-�������� �����. �� �� ������ �������, ����� �������
wait 2s
mecho ���������� ������, ��������, ����������� ���������� ���� ������ ��� ������.
mecho � ��������� � ����� ������ ���� ����� ����.
wait 5s
mecho ������ ��������� �����, �� ������ � ����.
wait 2s
mecho ������ �������� � ����������.
wait 10
if (%actor.sex% == 2)
  � ��������� ����� ��, ������ ����������.
else
  � ��������� ���� ��, ����� ����������.
end
� ������ �����%actor.g% ������ ������� ����, ������� ����� �� ���������?
wait 2s
mforce %actor% say ������ ����, ������, �� ����������
mforce %actor% say ��� ���������: ��, �������� - ���� �����
mforce %actor% say ������ �� ������� ����������� ����������� ����� ��� �����!
wait 2s
� ���� �� �������, ������ ����� ���������� ������?
� ��������� �� �������������, ���������������� �� ���������������.
� � ��������-�� ������� ��� ��� ����������, ��� ��� ������.
� � ����� ������� - ��� ������.
� ��� � �� � �����, �����.
wait 5 
� ��� ������������� ��������.
wait 10
mechoaround %actor% %actor.iname% �����%actor.q% �� �����, �� ����, ��� ������� � �����.
msend %actor% �� ������� �� �����, �� ����, ��� ������� � �����.
wait 1s
� �����, �������� ������ ��� �� �����.
� ����� ������� �����������, ���� ���� �� �������� ����� ������ �� ��������� �����������.
� ��� � ����!
wait 10
msend %actor% ������ ������ �������� ����� � ������ �� ���� ��� ��� ����� � �������, ������ � ����� � ��� ���.
mechoaround %actor% ������ ������ �������� ����� � ������ �� ���� ��� ��� ����� � �������, ������ � ����� � ��� %actor.dname%.
mload obj 79900
wait 1
���� ��� .%actor.name%
� ����� ���������! ������ ��� �������� - �� ���������� ��� � ����.
wait 10
� �� ���, ������!
mdoor 79997 west purge 
mdoor 79997 west room 79995
mdoor 79995 east purge
mdoor 79995 east room 79997
detach 79926 %self.id%
~
#79927
�������������� �������~
0 r 100
~
wait 5
if (%actor.sex% == 1)
  � ����, �����!
else
  � ������, ���������!
end
wait 10
� �� ���� �� � ���� ������.
� ����� ��� ����� �� ��������,
� � ��� ����� ���� �������� ���.
wait 1s
mforce %actor% say � ��� � ������! ����� ���� �������!
wait 5
� �, �� ��� ����� ����.
� � ��� ���� ���� �����.
� ���, ����� �����!
wait 10
mload obj 79905
wait 1
���� ��� .%actor.name%
wait 1s
� ���� ����� �� ������ �������� ����������.
� ������� ���� �������, ��� ������ ���� ���������� �� ����-������.
� ��� ����� ����� ������, ����� ����������� � ������ �������.
wait 1s
� � ����� ���������� �� ��������, ��� �� ��� ����������!
wait 10
� �����!
mecho ������ �������� � ���� �� ������.
calcuid starik 79928 mob
mteleport %starik% 79926
detach 79927 %self.id%
~
#79928
������� �������~
0 j 100
~
if %object.vnum% != 79905
  msend %actor% %self.dname% ��� �� �����.
  return 0
  halt
end
wait 1
mpurge %object%
mecho ������ ����������� ��� ���� ���.
wait 1
� ������� ���� ��������!
� ����� �������!
wait 1
mload obj 79909
���� ��� %actor.name%
mecho ������ ��������� � ����.
wait 1
mpurge %self%
~
#79929
������� ������~
0 j 100
~
if %object.vnum% != 79901
  msend %actor% %self.dname% ��� �� �����.
  return 0
  halt
end
mecho ����� ����������� ��� ���� ������ �������.
wait 1
mpurge %object%
� �� ������%actor.g% ��� ������!
� ������� ���� � ��� �� ���� ��������!
� ���� ����� ��������, ������� ���, ��� � ��� �������.
wait 1
mload obj 79907
mecho ����� ��������� � ����.
wait 1
mpurge %self%
~
#79930
������� ���������~
0 j 100
~
if %object.vnum% != 79903
  msend %actor% %self.dname% ��� �� �����.
  return 0
  halt
end
mecho ������ ����������� ��� ���� ��������-���������� ������.
wait 1
mpurge %object%
� � ��� ����� ������� �� ����� ���� ��������!
� �������������� ���� ��������!
� ���� ����� ��������, ������� ���, ��� � ��� �������.
wait 1
mload obj 79907
mecho ������ ��������� � ����.
wait 1
mpurge %self%
~
#79931
������� ������~
0 j 100
~
if %object.vnum% != 79902
  msend %actor% %self.dname% ��� �� �����.
  return 0
  halt
end
mecho ����� ����������� ��� ���� ���� ����������.
wait 1
mpurge %object%
� ������� ����! ���� �� ��� ������%actor.g%! ��� �� � ��� ��� �����!
� ���������� ���� ���, ��� � ���� ����!
� ���� ����� ��������, ������� ���, ��� � ��� �������.
wait 1
mload obj 79907
mecho ����� ��������� � ����.
wait 1
mpurge %self%
~
#79932
������� ��������~
0 j 100
~
if %object.vnum% != 79904
  msend %actor% %self.dname% ��� �� �����.
  return 0
  halt
end
mecho ������� ����������� ��� ���� �����-�������-������.
wait 1
mpurge %object%
� ��� �������! ������%actor.g% �� ��� ��������!
� �� ����� ����������� �������� � ���� ����� �������!
� ���� ����� ��������, ������� ���, ��� � ��� �������.
wait 1
mload obj 79907
mecho ������� ��������� � ����.
wait 1
mpurge %self%
~
#79933
������� ��������~
0 j 100
~
if %object.vnum% != 79900
  msend %actor% %self.dname% ��� �� �����.
  return 0
  halt
end
wait 1
mpurge %object%
wait 1s
if (%actor.sex% == 2)
  � �� �� � �� ����� ������� ���� �����.
else
  � �� �� � �� ����� ������� ���� �����.
end
� �� �������!
wait 5
� ���! ���� �� ���� �������.
wait 1
mload obj 79908
���� ��� %actor.name%
wait 1s
mecho ������� �������� ����� � ������ �� ���� ���, ��� �������� ������.
mload obj 79901
mload obj 79902
mload obj 79903
mload obj 79904
wait 1
� ���, �����! ������ ��� ���� �����.
give all .%actor.name%
mecho ������� ��������� � ����.
mpurge %self%
~
#79934
������~
2 e 100
~
wait 10
wecho ����� ���� �������� ������, ������� � �������.
wportal 79919 2
~
#79935
������ ����� ������~
0 n 100
~
eval target %random.pc%
if (!%target%)
  halt
end
mkill %target%
~
#79936
���� ������~
0 n 100
~
if (%world.curobjs(79906)% < 1) && (%random.100% <= 10)
  mload obj 79906
end
~
#79937
������� �� ����~
1 p 100
~
switch %random.10%
  case 1
    set itemvnum 79913
  break
  case 2
    set itemvnum 79914
  break
  case 3
    set itemvnum 79915
  break
  case 4
    set itemvnum 79916
  break
  case 5
    set itemvnum 199
    eval itemvnum %itemvnum%+%random.45%
    if (%itemvnum% == 244)
      set itemvnum 245
    end
  break
  default
    set itemvnum 79919
  break
done
if (%world.curobjs(%itemvnum%)% >= %world.maxobj(%itemvnum%)%)
  set itemvnum 79919
end
oload obj %itemvnum%
calcuid item %itemvnum% obj
eval temp %item.put(%self%)%
~
#79938
���� ������~
1 cfg 0
~
if (%zabros% == 5)
  osend %actor% ������ � ������� ��������� � ����� �����.
  wait 1
  opurge %self%
end
~
#79939
������ ������ ����~
2 b 100
~
if !%exist.mob(79926)%
  detach 79939 %self.id%
  halt
end
exec 79952 %fireeyes.id%
~
#79940
������� (������)~
2 cz 100
���������~
*������� (������) : Rooms : Command,Auto : 100 : ���������
global actor
eval zabros %zabros%+1
global zabros
wechoaround %actor% %actor.iname% ��������%actor.g% ������� �� ������ � ��������%actor.g% ������. �������� ����� ��������.
wsend       %actor% �� ��������� ������� �� ������ � ������� ������, �������� ������ ��������� �������.
attach 79942 %self.id%
if (%zabros% >= 5)
  wsend %actor% � ��� ����������� �������, ���� ����������� �������.
  wait 1s
  if (%world.curobjs(79911)% < %world.maxobj(79911)%)
    wsend %actor% �� �������� � ����� ��� ��������� ������, �������� �����.
    wload obj 79911
  end
end
detach 79940 %self.id%
~
#79941
������� (�������)~
2 c 100
�������~
*������� (�������) : Rooms : Command : 100 : �������
wait 1
detach 79954 %self.id%
detach 79942 %self.id%
wait 10
switch %random.5%
  case 1
    wechoaround %actor% %actor.iname% ������%actor.g% ������� ������� ����, �� ���� ��������� ������� �������, � �������� %actor.s% �� ����� � ����.
    wsend %actor% ���� ������ �������� ��� � ���� �� ����� �� ��� �������. ��������, ��� �� �� �� ����� �������.
    wteleport %actor% 79951
  break
  case 2
    wechoaround %actor% %actor.iname% ������%actor.g% ���-�� �� ������ � �������%actor.g% �� ����� ��� ������ ����������.
    wsend %actor% �� ������� ���-�� �� ������ � �������� �� ����� ��� ������ ����������.
    wload obj 79911
  break
  case 3
    wechoaround %actor% %actor.iname% ��������%actor.g% ���-�� ������� � ����%actor.g% ���������� �� ����� � �������� �������.
    wsend %actor% �� ��������� ���-�� ������� � ����� ���������� �� ����� � �������� �������.
    wload mob 79929
  break
  case 4
    wechoaround %actor% %actor.iname% ��������%actor.g% ���-�� ������� � ����%actor.g% ���������� �� ����� � �������� �������.
    wsend %actor% �� ��������� ���-�� ������� � ����� ���������� �� �����.
    wload obj 79912
  break
  case 5
    wechoaround %actor% %actor.iname% ������%actor.g% ������� ��������� ���-��, �� ���, ����������.
    wsend %actor% �� ������� ������� ��������� ���-��, �� ���, ����������.
  break
done
if (%zabros% < 5)
  attach 79940 %self.id%
end
detach 79941 %self.id%
~
#79942
������� (����)~
2 bz 100
~
*������� (����) : Rooms : Random,Auto : 100
wait 1s
wecho �������� ����� ������� ������������...
wsend %actor% ����� ����� ���������!
attach 79954 %self.id%
attach 79941 %self.id%
exec 79954 %self.id%
~
#79943
���� ������~
1 n 100
~
if (%world.curobjs(79912)% > %world.maxobj(79912)%)
  oecho ���-�� ��������� � ����.
  wait 1
  opurge %self%
end
~
#79944
���� ������~
1 n 100
~
if (%world.curobjs(79911)% > %world.maxobj(79911)%)
  oecho ���-�� ��������� � ����.
  wait 1
  opurge %self%
end
~
#79945
����� �������~
1 j 100
~
*����� ������� : Objects : Wear : 100
wait 1
calcuid zabros 79925 room
attach 79940 %zabros.id%
detach 79945 %self.id%
~
#79946
��� �������� ������~
0 j 100
~
if %object.vnum% != 79917
  msend %actor% %self.dname% ��� �� �����.
  return 0
  halt
end
wait 1
%purge% %object%
%echo% %self.iname% ������� ������ �����������.
wait 1s
say � ����� ���.
wait 1s
say �����-�� ��� ����� ��������.
say �� ��� ����� �������.
say � �� �� ������, ���� �� ���������.
wait 1s
mecho ��� ������� ������, � �� ������� � ������� ����.
mecho ��� ������ ������ � ����, � �������� ������ �����������.
wait 2s
say �������, ������ ��� ���� ������� �����.
wait 1s
say ������� ���.
wait 3
if (%random.500% < 100)
  mload obj 79918
  ���� ��� .%actor.name%
end
detach 79946 %self.id%
~
#79947
���� �����~
1 n 100
~
if (%world.curobjs(79917)% > %world.maxobj(79917)%)
  oecho ���-�� ��������� � ����.
  wait 1
  opurge %self%
end
~
#79948
���� ������~
1 n 100
~
if (%world.curobjs(79918)% > %world.maxobj(79918)%)
  wait 1
  opurge %self%
end
~
#79949
���� ������~
0 f 100
~
mload obj 79917
if ((%world.curobjs(79930)% < %world.maxobj(79930)%) && (25 >= %random.100%))
  %load% obj 79930
end
~
#79950
�������~
2 c 100
�������~
wait 1
wecho ���������� � ������, �� ���������� ������� �� �����������!
wait 1
wteleport %actor% 79925 horse
wait 1
wsend %actor% � ��� ��� �������!
~
#79951
���� �����~
0 v 100
~
wait 2s
set target %random.pc%
if (!%target%)
  halt
end
mechoaround %target% %self.iname% ���� %actor.vname% � ����� ���������.
msend %target% %self.iname% ���� ��� � ����� ���������.
%target.wait(1)%
wait 1s
mechoaround %target% %target.iname% ��������%target.g% �� ����������� ���� � ������%target.g% �� �����.
msend %target% �� ��������� �� ����������� ���� � ������� �� �����.
%target.wait(1)%
%target.position(6)%
mdamage %target% 250
wait 6s
~
#79952
������� ����~
0 z 100
~
set target %random.pc%
if !%target%
  halt
end
mechoaround %target% ����� ����������� � ���������� �� %target.vname%!
msend %target% �������� ����� �������� �� �������� � ���������� �� ���.
wait 2
mecho ����� ������ ����������� � ��������� �����.
mechoaround %target% ����� �������� ����� ������ � %target.vname%!
msend %target% ��� ������ ����� �������� ����� �� ���� ������.
set i 0
while (%i% < 12)
  dg_cast '��� �����' %target%
  eval i %i%+1
done
~
#79953
�������� ���� � ������ ������.~
2 z 100
~
wecho ������ ���� ������������ � ������ ������� ��� ������� ������.
wload mob 79927
calcuid fireeyes 79927 mob
global fireeyes
attach 79939 %self.id%
detach 79953 %self.id%
~
#79954
������� (���������)~
2 z 100
~
*������� (���������) : Rooms : Auto : 100
detach 79942 %self.id%
eval rnd %random.3%+1
wait %rnd%s
wsend %actor% �� ��������� ���� ����.
detach 79941 %self.id%
if (%zabros% < 5)
  attach 79940 %self.id%
end
detach 79954 %self.id%
~
#79955
���� ����� � �����~
0 f 100
~
set chance 20
switch %self.vnum%
  case 79900
    set vnum 79925
  break
  case 79901
    set vnum 79928
  break
  case 79905
    set vnum 79931
  break
  case 79906
    set vnum 79926
  break
  case 79910
    set vnum 79935
  break
  case 79911
    set vnum 79934
  break
  case 79913
    set vnum 79922
  break
  case 79915
    set vnum 79929
  break
  case 79917
    set vnum 79923
  break
  case 79921
    set vnum 79921
  break
  case 79925
    set vnum 79920
    set chance 5
  break
  case 79928
    set vnum 79932
  break
done
if ((%world.curobjs(%vnum%)% < %world.maxobj(%vnum%)%) && (%chance% >= %random.100%))
  %load% obj %vnum%
end
~
#79956
������� ������~
1 b 5
~
wait 1
set owner %self.worn_by%
if (!%owner.name%)
  halt
end
if (((%owner.class% != 5) && (%owner.class% != 9)) || !%owner.fighting%)
  *�� ���� � �� ������ ��� ���� �� ���, �� �� ���������
  halt
end
set wieldweapon %owner.eq(17)%
if (%wieldweapon.vnum% != 79914)
  *� ������ �� ����� ������
  halt
end
oechoaround %owner% &C������ � ����� %owner.rname% ���� ���������, ��������� ��� ��������.&n
osend %owner% &C������ � ����� ����� ���� ���������, ��������� ��� ��������.&n
dg_cast '������ �����' %owner%
~
#79957
����� ������~
1 l 100
~
wait 1
if (!%actor.name%)
  halt
end
dg_affect %actor% ������_����� ������_����� 0 0
~
#79958
��������� ���� ����~
2 z 100
~
*��������� ���� ���� : Rooms : Auto : 100
wecho ��������� ������ ���������� � ���� �� ���� ������.
foreach target %self.char%
  wdamage %target% 150
done
detach 79958 %self.id%
~
$~
