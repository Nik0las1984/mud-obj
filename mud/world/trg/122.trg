#12200
������ ������~
2 c 1
������� �������� �������� �������� �������� ���������~
if %actor.vnum% != -1
  halt
end
wait 1
if !%arg.contains(������)%
  if %actor.sex% == 1
    wsend %actor% � ���� � �� ��������, ������ �������?
  else
    wsend %actor% � ���� � �� ��������, ������ ������?
  end
  halt
end 
if (%actor.class% != 3 ) || !%actor.rentable%
  wsend %actor% ��������� �� � ������, �� ������ �� ��������� - ����� ��� � ���� �� �������, �� ���� ���.
  wechoaround %actor% %actor.name% ��������%actor.g%  � ������ - �� ������ ��� � �� ����.
  halt
end
if %actor.quested(12200)% == 1
  wsend %actor% � ���� �� �� ��������? 
  wsend %actor% ��� �� ������ ������ ����� �������, �������� ������������� �������!
  wsend %actor% ���� ������ - ��� ���� ���, � ����� � ����� ����� �� ��������.
  halt
end
set questor122 %actor%
global questor122
calcuid room1 12205 room
remote questor122 %room1.id%
calcuid robbers 12211 mob
remote questor122 %robbers.id%
wsend %actor% ������������ ��, ������������, �������� � ������ � ���-�������.
wechoaround %actor% ���������%actor.u% %actor.name%, ���������%actor.u%, �������%actor.g% � ������ � ���-�������.
wecho ����������� ������ �� ���������, �� ����� �� �� �������� - �� �������, � �� ���������.
wdoor 12202 e purge
wdoor 12202 e room 12203
wdoor 12203 w purge
wdoor 12203 w room 12202
detach 12200 %self.id%
~
#12201
������� ������������ �������� � ������� �������~
2 c 1
�� ��� ����� sl sle slee sleep~
return 0
if %actor.id% != %questor122.id%
  halt
end
wsend %actor% �������� �� �� ���� �����������, � ���� ��� ���, ��� ��� �����, �� ��� ��� ��������...
wait 1
wecho ������� ���� ��� ������ - �����������...
wait 3s
if %actor.position% != 4
  halt
end
wload mob 12200
wait 1
calcuid warrior 12200 mob
remote questor122 %warrior.id%
exec 12202 %warrior.id%
detach 12201 %self.id%
~
#12202
������� ��������~
0 z 0
~
wait 1
mecho _��� ���������� ������� ��� �� ����.
mecho _����������� �� ���� �������� ��� ������ - ������� ��������, ������� ������������.
mecho _�� �������� �� ���� ���� �������, �� ���� �������� �����������.
mecho _����� �� ������ ����������, � ���� ������ �����������, � ���� �� ������ �������.
say ��� ��� ��� �� ������?!
����
��������� %questor122.name%
���� %questor122.name%
say �� ����� ����%actor.u% ��������%actor.w%, � ���� ���� ������������?!
mecho _- �� ����� ������ ���������%actor.g% �� �� ��������� �� ����� ������%actor.g%?
mecho _- ������� �������, ��� � ��� � ����� ��������� - �� ����� ������� �������, ��� � ���� ������ ������?!
����
wait 2s
���
���
say �� ���� ����%actor.u% ������%actor.g% - �������,
mecho _- ��������� ������ ��� ������, ������ ����� ������ �����, �� � ��������.
mecho _- � ����������, �� ��� ��� ���� - ��� � ������, �� �������.
attach 12203 %self.id%
detach 12202 %self.id%
~
#12203
������� �����������/������������~
0 d 0
�������� �������� �� ������� ��� ~
if %actor.id% != %questor122.id%
  halt
end
wait 1
if %speech.contains(�����)% || %speech.contains(�����)% || %speech.contains(�����)% 
  say ��, ������, �������, ��� ������%actor.g%!
  msend %actor% �������-�������� ������� ����� � ������ ��� �� ����� ���.
  mechoaround %actor% �������-�������� ������� ����� � ������ %actor.vname% �� ����� ���.
  eval dmg %actor.hitp%-10
  mdamage %actor% %dmg%
  mteleport %actor% 12100 horse
  mdoor 12202 e purge
  mdoor 12202 e room 12203
  mdoor 12202 e flags abcd
  mdoor 12202 e name ������
  mdoor 12202 e description ������
  mdoor 12203 w purge
  mdoor 12203 w room 12202
  mdoor 12203 w flags abcd
  mdoor 12203 w name ������
  mdoor 12203 w description ������
  detach 12203 %self.id%
  halt
end
if %speech% == ���
  say �� ������� ����, ��� ������ ��, ��� ��� � ����� �� �����������%actor.g%!
  say �������� ��� � ���� ����, �� � ����� �� �����������!
  msend %actor% �������-�������� ������� ����� � ������ ��� �� ����� ���.
  mechoaround %actor% �������-�������� ������� ����� � ������ %actor.vname% �� ����� ���.
  eval dmg %actor.hitp%/3
  mdamage %actor% %dmg%
  mteleport %actor% 12100 horse
  mdoor 12202 e purge
  mdoor 12202 e room 12203
  mdoor 12202 e flags abcd
  mdoor 12202 e name ������
  mdoor 12202 e description ������
  mdoor 12203 w purge
  mdoor 12203 w room 12202
  mdoor 12203 w flags abcd
  mdoor 12203 w name ������
  mdoor 12203 w description ������
  detach 12203 %self.id%
  halt
end
wait 1
say ��� �� ������ ������ ���� - �� �������-�� ��� ����, � �� �����, � �� ����,
mecho _- � �� ��� ����� �����, �� ������ ����� �� ����� ��� - �� ��������������.
mecho _- �� �� ������ �������� - � � ��������� ����: ��������, ��������, �� ������������.
emot �������� ���, ������ ��� ������ � ������� �� �������
mteleport %actor% 12233 horse
set num 0
global num
mload mob 12201
wait 1
calcuid warrior 12201 mob
attach 12204 %warrior.id%
remote num %warrior.id%
remote questor122 %warrior.id%
calcuid beggary 12210 mob
attach 12208 %beggary.id% 
remote questor122 %beggary.id%
wait 1
%purge% %self%
detach 12203 %self.id%
~
#12204
C���� ����� �������~
0 j 100
~
wait 1
if %actor.vnum% != -1
  ������� ���
  halt
end
if %actor.id% != %questor122.id%
  if %actor.sex% == 1
    say � �� ��� ������, ������ �������? �� �������� ����...
  else
    say � �� ��� ������, ������ ������? �� �������� ����...
  end
  ������� ���
  halt
end
if %object.vnum% != 12206
  say � ������ ���� �� � ���, ����!
  mecho _-������%actor.g% ��, ��� ���� �������?
  mecho _-��� �����%actor.u% �� ��� �����, �� ����� �� ����� �����������?
  ����
  ���� ���
  halt
end
wait 1
eval num %num%+1
global num
if %num% < 3
  say ������ �� �� ��������%actor.g% ���.
  mecho _- �� ����� ������ ��� ������ �� ����, � �� �����.
  *mecho _- ������ - ��������%actor.g% ��?
  mjunk all
  halt
end
mjunk all
say ������ �� �� ��������%actor.g% ���!
mecho _- �������%actor.g% �� ��� - ������ ������.
mecho _- ����� � �� ���� �� ������� - ����-������� ����������.
mecho -_ ������� � ��� ����� ����, ����� �����, �� ��������.
mecho -_ ������-�� ���, ����� ��, �� � ��� ����� ������-�������.
emot ������ ���, ������ ��� ������ � ����� ����
mteleport %actor% 12258 horse
attach 12205 %self.id%
detach 12204 %self.id%
~
#12205
����� ����� �������~
0 j 100
~
wait 1
if %actor.vnum% != -1
  ������� ���
  halt
end
if %actor.id% != %questor122.id%
  if %actor.sex% == 1
    say � �� ��� ������, ������ �������? �� �������� ����...
  else
    say � �� ��� ������, ������ ������? �� �������� ����...
  end
  ������� ���
  halt
end
if %object.vnum% != 12212
  say � ������ ���� �� � ���, ����!
  mecho _-������%actor.g% ��, ��� ���� �������?
  mecho _-��� �����%actor.u% �� ��� ����� �� ����� �� ����� �����������?
  ����
  ���� ���
  halt
end
mjunk all
say ��� ������� �� ������ ������!
mecho _- �� ������ ��������%actor.g% �� ��� ������-�������, ��� ������.
mecho _- ������� � ������ ��� - � ����� ������� ����
mecho _- � �� ������ ���� ������.
wait 1s
say ������ �, ��� �� ���� �����, ���� �������-������������,
mecho _- ���� �������, ��� ����� - ������ �������� ������ ��������.
mecho _- ��� ���� �� ����������� � ���, �� �� �����, � ������� �����.
emot ������ ���, ������ ��� ������ � ������������ �����
mteleport %actor% 12289 horse
*attach 12206 %self.id%
*detach 12205 %self.id%
~
#12206
������ ������� � ������� (��������� �������)~
0 q 100
~
wait 1
if %actor.id% != %questor122.id%
  halt
end
msend %actor% _���������� �� �������-�������� ��� ������ ����,
msend %actor% _��� ���� ��������, �� ����� ����������.
wait 2s
���
say ��� ��, ����, ��� � ����� ���� - ����%questor122.w% �� ��������!
mecho _- ������ ������ ��������%actor.g% �� ���.
mecho _- �� ��� ��� - ��� ������� ���:
mecho _- ����� �� ������ ���� � ����� �������, �� ������� ����� ���� �� ��������,
mecho _- � ������ ����� �������, �� � ���� ���� ����������� �����!
mskillturn %questor122% ������ set
%actor.setquest(12200)%
if ((%world.curobjs(12218)% < 5 ) && (%random.100% < 45 ))
  mload obj 12218
  give ����� %actor.name%
elseif ((%world.curobjs(12219)% < 5 ) && (%random.100% < 45 ))
  mload obj 12219
  give ������� %actor.name%
elseif ((%world.curobjs(12220)% < 5 ) && (%random.100% < 45 ))
  mload obj 12220
  give ���� %actor.name%
else
  %self.gold(1500)%
  give 1500 ��� %actor.name%
end
switch %random.5%
  case 1
  break
done
������ %questor122.name%
detach 12206 %self.id%
~
#12207
����������� ������� �� ��������� �����~
1 j 100
~
if  ((%actor.level% > 19 ) || (%actor.str% > 25 ) || (%actor.vnum% != -1 ))
  return 0
  osend %actor% ��, �� ������� ��� ��� ������! ������, ������������� ��� �������� ��.
  halt
end
~
#12208
������ ����������� ������~
0 q 100
~
wait 1
if %questor122.sex% == 1
  say ���������, ������ �������!
else
  say ���������, ������ ������!
end
mecho _- ���� ���� �������, �� ����, ��� �� ����?
mforce %questor122% say � ������� ���� - ��������, �������� �� ������������.
wait 1s
���
if %questor122.sex% == 1
  say � �� ����� �� �� ����, ������ �������!
else
  say � �� ������ �� �� ����, ������ ������!
end
mecho _- ��� �����-�� �������, �� ��� �����������.
mecho _- ��� � ���� ������ ���������� �����������,
mecho _- �� ���� �� ������, �� ������ �������,
mecho _- � ���������� - ������� � ����� ��������.
���
mecho ������ ��������� ���� �� ������.
mteleport %self% 12232
attach 12210 %self.id%
detach 12208 %self.id%
~
#12209
������� ����� � ��������.~
0 q 100
~
wait 1
shou � �����-��, ��� ��� � ��� ������������!
if %questor122.sex% == 1
  say � �����-�� ��, ������ �������,
else
  say � �����-�� ��, ������ ������,
end
mecho _- ��� ����� ���� ����������, �� ������ ������ � ������,
mecho _- �� ���� ������������ �� ������.
wait 1
mforce %questor122% say � ������-�� �� �����, �������!
mecho _��� ������ �� ��� ������������, �������� ����� ����������,
mecho _��� ����-�� ��������, �� �� ������ ����� �������.
*set geld %actor.gold%
*eval bufer %actor.gold(0)%
*eval bufer %self.gold(+%geld%)%
mteleport %actor% 12233 horse
calcuid beggary 12210 mob
mteleport %beggary% 12208
attach 12236 %self.id%
detach 12209 %self.id%
~
#12210
������ ��������� ������ � ������ ����� ������~
0 q 100
~
wait 1
*mecho ������ ��������� ������ � ������.
wait 1
if %questor122.sex% == 1
  say ������� �� � ����, ������ �������.
else
  say ������� �� � ����, ������ ������.
end
mecho _- �� �� ����� ���� �� ����������.
mecho _- ��� �� ������� ���� �������,
mecho _- ������� ������� - �����������.
mecho _- ��� ������-�� �� �� ��������� ����,
mecho _- �� ����� ����� ��������� - ������� �����-�������,
mecho _- ���� ���� ���� �����������, �� �� ���� �������� ���.
���
mecho ������ ��������� ���� �� ��.
calcuid mountain 12211 room
attach 12211 %mountain.id%
mteleport %self% 12232
detach 12210 %self.id%
~
#12211
������ � ����~
2 c 1
������ �����������~
if !%arg.contains(�����)%
  if %actor.sex% == 1
    wsend %actor% � ���� � �� ����������, ������ �������?
  else
    wsend %actor% � ���� � �� ����������, ������ ������?
  end
  return 1
  halt
end
wait 1
wsend %actor% ����������� �� �����-�������, ��������� � ��� ������� �����������,
wsend %actor% �� �� ���� �������� ��.
wsend %actor% �������� ��� ����-����� ����, ���� ���� ���, ��� �������,
wsend %actor% ����������� �� ����� � ��� ���� ����������� - ������ ���� ���� ��� �����.
wait 2
eval heal %actor.maxhitp%
eval buf %actor.hitp(%heal%)%
wsend %actor% �� ������������� ���� ��������
eval energy %actor.maxmove%
eval buf %actor.move(%energy%)%
wsend %actor% �� ������������� ���� ������ ���.
calcuid robbers 12211 mob
detach 12209 %robbers.id%
detach 12236 %robbers.id%
attach 12227 %self.id%
detach 12211 %self.id%
~
#12212
�������� � ������� � �����~
0 q 100
~
wait 1
if %actor.sex% == 1
  say ��� ���, ������ �������!
else
  say ��� ���, ������ ������!
end
mecho _- ��� �� ���� ������ �� ������ �� ����?
mecho _- ��� ����� �������-�� ��� �����������.
mecho _- ��� ������� �� ������, �� �������.
wait 2
mforce %actor% say �� ��������%actor.g% � ��������-�� ���.
mforce %actor% say �� ��� �� ��� ���� ����� - ��� � ���� �����, 
mforce %actor% say � ��� ���� ����� - ��� � ���� �����!
wait 2
�������
say ������ ������� � ���� �������, �����������!
say ���� �� ������ �� �� ������ ����?
attach 12213 %self.id%
detach 12212 %self.id%
~
#12213
������� � �������~
0 d 1
���� ����~
wait 1
��� %actor.name%
say ���� �������, ������ ���� �� ����.
emot ������� ����� ���������.
mecho _������� ��� ��� � �����, ������� ��� - �� ����� ���.
������ %actor.name%
mload obj 12206
wait 1
give ��� %actor.name%
wait 1s
if %world.curobjs(12206)% > 2
  mecho ����������� �� � �������� ���� - �� ����� �������-��������.
  mteleport %actor% 12202
end
detach 12213 %self.id%
~
#12214
�������� ������� �����~
1 g 100
~
return 0
wait 1
oecho ����������� ��, ������������� - �� ������ ����� ����� �������.
oecho ����� ���, �� ����������
wait 1
oecho ������ ��������� ������ � ������.
calcuid beggary 12210 mob
oteleport %beggary% %self.room%
exec 12215 %beggary.id%
attach 12232 %self.id%
detach 12214 %self.id%
~
#12215
����� ������ �� ������ ����� ������.~
0 z 100
~
wait 1s
set selfquestor %random.pc%
if %selfquestor.sex% == 1
  say �� ��, %selfquestor.name%, ���������!
else
  say �� ��, %selfquestor.name%, ������!
end
mecho _- ��� �� ����� �������, � ����� �������� �� ������?
��
say � �� �����-�� �� �������,
mecho _- ����� ������ ������ - �����������.
mecho _- ���� �� �����-�� � ����� ����� �������-�� ���� �����������.
mecho _- ������ ����� ����������, �� ����������.
������
wait 2
say ������-�� �� � ����� ����, ���������-�� ��� �� ���� �� �������.
mecho _- ����� ��� �� ����� ��� ������� ������ ���-�����,
mecho _- ��-��� ����� ���� �����-�������
mecho _- ������ ��� ������ ������, �� ������� ��� �� ���������....
wait 1
mload obj 12213
give ������ %selfquestor.name%
���
emot ����� ����� �������, ������� ���������� ���������
calcuid hill 12250 room
attach 12217 %hill.id%
wait 1
%purge% %self%
~
#12216
������ ���� �� �������~
1 c 2
��~
if ( %cmd.mudcommand% != ���� )
  return 0
  halt
end
set rodnik ������
set kovshik ������
if (!%kovshik.contains(%arg%)% && !%rodnik.contains(%arg%)%)
  return 0
  halt
end
if %cmd% != ���� 
  return 1
  halt
end
oecho _������� �� ������ ���������, ������� ���������� ����� �������.
oecho _������ ����� �������� ���� � ��� ���� �����������.
oecho _����� ������, ��� ������.
wait 1
eval %actor.hitp% %actor.maxhitp%
osend %actor% �� ������������� ���� ��������
eval %actor.move% %actor.maxmove%
osend %actor% �� ������������� ���� ������ ���.
calcuid stone 12219 mob
attach 12218 %stone.id%
calcuid helmet 12211 obj
exec 12219 %helmet.id%
wait 1
%purge% %self%
~
#12217
������� ���� � ������ �� �������~
2 c 1
� �� ��� ���� ����� ������ ������� �������� ���������~
eval container %arg.car%
eval source %arg.cdr%
set kovshik ������
set rodnik ������
if !%kovshik.contains(%container%)% || !%rodnik.contains(%source%)%
  wsend %actor% �� �� ���� ���� ���?
  return 1
  halt
end
return 0
calcuid ladles 12213 obj
*attach 12216 %ladles.id%
wecho �� ���������� �������� ���� �� �������.
wait 1 
%purge% %ladles%
wload obj 12214
*set target %random.pc%
wforce %actor% get ������
detach 12217 %self.id%
~
#12218
������ ���� �� �������~
0 c 1
�� ��� ���� dr dri drin drink~
set rodnik ������
if !%rodnik.contains(%arg%)%
  return 0
  halt
end
dg_cast '���������' %actor.name%
dg_cast '��������������' %actor.name%
dg_cast '���������' %actor.name%
~
#12219
������ ����������� �����~
1 z 100
~
wait 1
oload obj 12212
wait 1
%purge% %self%
~
#12220
��������� ����������� �����~
1 g 100
~
return 0
wait 3
oecho _��� ������-�� ���� ��� ����� ��������
oecho _����� �����������, ����� ������ ������ ��������
oecho _�� ����� ����� �������.
*calcuid room1 %self.room%
*attach 12234 %room1.id%
*set target %actor%
*global target
*remote target %room1.id%
*rdelete target %self.id%
*exec 12234 %room1.id%
oforce %actor% get �����
%send% %actor% _����������� �� � ���� ��������, ���������.
%send% %actor% _�� ����� �������� �������-��������.
%teleport% %actor% 12202 horse
detach 12220 %self.id%
~
#12221
������ ��� ������� � ���������-����������~
0 q 100
~
wait 1
say ��, ��, �����������-�����������!
mecho _- �� ���� ��� ��� ������ �������-�������������!
mecho _- � ����������-�� �� ����� �������, ���� �� ������� ���������� �������.
mecho _- ������ ���� �������� ���������� � �������.
wait 1
mecho _����������� ��� �� ��� ��������-������� � �����������, ������ ����-�������� �� ��� �����
mecho _���� �������-�� � ��� � �����������, �� ���� �� �������� �������� �����.
mecho _�������� ��� ��� ������ � ����� ����.
mteleport %actor% 12283 horse
wait 1
mload mob 12202
mteleport dwarf12200 12270
wait 1
*calcuid dwarf 12202 mob
*exec 12223 %dwarf.id%
attach 12222 %self.id%
detach 12221 %self.id%
~
#12222
������ ��� ������� � ���������-����������~
0 q 100
~
wait 1
set item1 %actor.eq(5)%
set item2 %actor.eq(6)%
set item3 %actor.eq(8)%
set item4 %actor.eq(9)%
if ((%item1.vnum% == 12203 ) && (%item2.vnum% == 12201 ) && (%item3.vnum% == 12202 ) && (%item4.vnum% == 12200 ))
  calcuid guard2 12204 mob
  ���� %actor.name%
  exec 12225 %guard2.id%
  detach 12222 %self.id%
  halt
end
say ��, ��, �����������-�����������!
mecho _- �� ���� ��� ��� ������ �������-�������������!
mecho _- � ����������-�� �� ����� �������, ���� �� ������� ���������� �������.
mecho _- ������ ���� �������� ���������� � �������.
wait 1
mecho _����������� ��� �� ��� ��������-������� � �����������, ������ ����-�������� �� ��� �����
mecho _���� �������-�� � ��� � �����������, �� ���� �� �������� �������� �����.
mecho _�������� ��� ��� ������ � ����� ����.
mteleport %actor% 12283 horse
~
#12223
�������-�-������ ���� �����~
0 q 100
~
wait 1
emot �������� ��� � ��� �� ������
���
if %actor.sex% == 1
  say �� ��, %actor.name%, ���������!
else
  say �� ��, %actor.name%, ������!
end
mecho _- ���� ���%actor.y% � ������� ���������, ��������%actor.u% �� �� ����� �������
mecho _- � ���������� � ��� ���������, ���� ������� ���� ������
mecho _- ���������, ��� ������ ������ �������, �� ���� ����� � ����� ������,
mecho _- ���� �� ������ �� ���� ����������, ���������
wait 1s
say � ����� ��� ���� � ������� �������������
mecho _- �������� ���������� �������
mecho _- ����� � ������� �����-���������.
wait 2
emot ������ ���, ������ ��� �� ������ � ������� �������������, �� ������ � ������ ���
mdoor 12270 n room 12277
wait 1
%purge% %self%
~
#12224
����� � ����~
0 r 100
~
wait 1
say ���.. ���� �� - ������ �������� ���� ������ �� ��������, � ��� �� ��� �� �� ��� � �����!
mecho _- �� ���� ���� �����%actor.u%?
mecho _- �� � �� ���� �� ���� ������ ������, �� ������ � ���������!
�����
wait 1 
mkill %actor%
~
#12225
������� � ��������� � ������� �������~
0 z 0
~
wait 1
emot �������� ��� � ��� �� ������
����
wait 1s
say ��, ������, ��� ���� ������� ����� ����������!
mecho _- �������-���� ���� �����������, ������ �� ����� �������!
emot ������ ��������� �� ��������-��������
wait 1
say ��-��, ��, �������, ���� ������ ����������!
mecho _- ��������, ���� � ���� ������ �������� �� ����!
��������� guard1223
mforce guard1222 ��������� guard1223
calcuid princess 12207 mob
attach 12226 %princess.id%
~
#12226
������� � ����������~
0 q 100
~
wait 1
����
mtransform 12209
if %actor.sex% == 1
  say ������ ����, ������ �������!
else
  say ������ ����, ������ ������!
end
mecho _- ���� �, ����� ������������%actor.g%!
mecho _- �� ����� ������ - ������ �������� �������-���� ��������,
mecho _- ��� �� ���� ��� ������ ���� ������ ��� ����� ��������.
wait 2
say ����� �� ��� ��� - ����� ������ ���� ���� ����, �� ���������.
mecho _- � � ���� ������ ����� ��� ������� ���������.
mecho  - �� ������ �� ���� - ����� ��������� ���� ������ �� ������ ����.
wait 2s
����� %actor.name%
mecho _����������� ��, �� ����������� � ���� ��������,
mecho _���� ��������� - �� ������� ����� ��������.
mteleport %actor% 12202
calcuid warrior 12201 mob
attach 12206 %warrior.id%
detach 12205 %self.id%
detach 12226 %self.id%
~
#12227
������ � ����2~
2 c 1
������ �����������~
if !%arg.contains(�����)%
  return 0
  halt
end
wait 1
wsend %actor% ����������� �� �����-�������, ��������� � ��� ������� �����������,
wait 2
eval heal %actor.maxhitp%
eval buf %actor.hitp(%heal%)%
wsend %actor% �� ������������� ���� ��������
eval energy %actor.maxmove%
eval buf %actor.move(%energy%)%
wsend %actor% �� ������������� ���� ������ ���.
~
#12228
����� �������� 1~
0 f 100
~
return 0
calcuid guard 12214 mob
attach 12212 %guard.id%
~
#12229
����� �������� 2~
0 f 100
~
return 0
calcuid guard 12215 mob
attach 12212 %guard.id%
~
#12230
����� �������� 3~
0 f 100
~
return 0
calcuid guard 12216 mob
attach 12212 %guard.id%
~
#12231
������������ ���� "������ ��� ��������"~
2 f 100
~
*�������� ������
calcuid gate 12202 room
detach 12200 %gate.id%
attach 12200 %gate.id%
wdoor 12202 e purge
wdoor 12202 e room 12203
wdoor 12202 e flags abcd
wdoor 12202 e name ������
wdoor 12202 e description ������
wdoor 12203 w purge
wdoor 12203 w room 12202
wdoor 12203 w flags abcd
wdoor 12203 w name ������
wdoor 12203 w description ������
*���������� ���������� ����������
calcuid bedroom 12205 room
rdelete questor122 %bedroom.id%
detach 12201 %bedroom.id%
attach 12201 %bedroom.id%
*������ ����� ������
calcuid mountain 12211 room
detach 12211 %mountain.id%
detach 12227 %mountain.id%
calcuid robbers 12211 mob
detach 12209 %robbers.id%
attach 12209 %robbers.id%
rdelete questor122 %robbers.id%
*������ ����� ������
calcuid hill 12250 room
detach 12217 %hill.id% 
calcuid stone 12219 mob
detach 12218 %stone.id%
*�������� ����������� �����
eval num1 %random.11%
eval loadroom 12243+%num1%
wat %loadroom% wload obj 12211
*������ ����� ������
calcuid warrior1 12204 mob 
calcuid warrior2 12206 mob 
detach 12221 %warrior2.id%
detach 12222 %warrior2.id%
attach 12221 %warrior2.id%
wdoor 12270 n purge
context 4000
set fighterstory 0
worlds fighterstory
~
#12232
��������� ���������� �����~
1 g 100
~
return 0
wait 1
oecho ����������� ��, ������������� - �� ������ ����� ����� �������.
oecho ����� ���, �� ���������
~
#12233
���� �����~
0 f 100
~
mload obj 12200
mload obj 12201
mload obj 12202
mload obj 12203
~
#12234
�������� � ���� � �������~
2 z 100
~
wait 1s
%send% %target% _����������� �� � ���� ��������, ���������.
%send% %target% _�� ����� �������� �������-��������.
%teleport% %target% 12202 horse
rdelete target %self.id%
detach 12234 %self.id%
~
#12235
��������-������� ���������� ������~
0 j 100
~
wait 1
set string %object.name%
set objectname %string.car%
������� %objectname%
~
#12236
������� ������ ��� ����� � ��������~
0 q 100
~
wait 1
shou � �����-��, ��� ��� � ��� ������������!
if %questor122.sex% == 1
  say � �����-�� ��, ������ �������,
else
  say � �����-�� ��, ������ ������,
end
mecho - ��� ����� ���� ����������, �� ������ ������ � ������,
mecho - �� ���� ������������ �� ������.
wait 1
mforce %questor122% say � ������-�� �� �����, �������!
mecho ��� ������ �� ��� ������������, �������� ����� ����������,
mecho ��� ����-�� ��������, �� �� ������ ����� �������.
mteleport %actor% 12233 horse
~
$~
