#62200
���� ������ ��������~
0 m 1
~
mechoaround %actor% _�������� ���-�� ���� ��������� %actor.dname%.
if %amount% < 10
  msend %actor% _�������� ������������ ������ ���: "������ ������ ������!" 
  halt
end
if %random.2% == 1
  ���� %actor.name% ������� ������ ������ ��� ������ ������.
  ���� %actor.name% ����� �� ����� ���� � ���������� ������ - ������� ��� ��� ���� ���������.
  ���� %actor.name% � ��� ������ ����� �� �������! 
  calcuid ranger 62201 mob
  detach 62211 %ranger.id%
  attach 62211 %ranger.id%
else
  ���� %actor.name% ������ - ��������.
  ���� %actor.name% ��� ����� ��� ��� ����� � ��������.
  ���� %actor.name% ���� ����� ������� ������ - ��� � ���, �� ����������� �� ������.
end
~
#62201
� ���������� (�����������)~
0 q 100
~
wait 5
msend %actor% _���������� ����� ��������� �� ���
msend %actor% _���������� �������� ��������. 
wait 2
msend %actor% _"��������� ����, %actor.name%!" - ������ ���������� �����.
wait 1s
msend %actor% _���������� ������:
msend %actor% - ����, ���� � ��� ������, ������ �� ��� ����� ���������...
msend %actor% - ������ ���, � �� �� � ����� �� ���������... 
~
#62202
������� �����~
1 c 4
��������~
if  !%arg.contains(����)%
  osend %actor% _��� �� ������ �������?!
  halt
end
osend %actor% _�� ��������� � ����� � ��������� �� �����������.
oechoaround %actor% _%actor.name% ������%actor.u% � ����� � �����%actor.g% ������� �� �������.
oecho _����� �������� ��������� � ����������. 
osend %actor% _�� �������� ���������� � ������� � ����!
oechoaround %actor%  %actor.name% �������%actor.g% ���������� � �������%actor.g% � ���� ����!
odamage %actor% 70
%actor.position(6)%
%actor.wait(4)%
oteleport %actor% 62269
oechoaround %actor% _���-�� � ����� ������ ������ � ����!
oload obj 62208
opurge %self%
~
#62203
������� ����� � �����~
2 c 1
�������� ������ �������� ������ ~
if !%arg.contains(�����)%
  wsend %actor% _��� �� ������ ����������? 
  return 0
  halt
end
eval weapon %actor.eq(16)%
if !(%weapon.vnum% == 62208)
  wsend %actor% _�� ������ ���� � �����... ���-�� ������ ������ ���!
  wdamage %actor% 50
  wechoaround %actor% _%actor.name% �����%actor.g% ���� ���� � �����, �� ��� �� � ������ ��������%actor.g% �� �������.
  halt
end
wsend %actor% _�� ������ ����� ����� � ����� � ��������� �������� �� �� ��� �������.
wechoaround %actor% _%actor.name% �����%actor.g% ����� ����� � ����� � ������%actor.u% �������� ��. 
wecho _�������� �� ����� ��������� ������� ����� � ������ �������� �������� �� ������.
wload mob 62213
detach 62203 %self.id%
~
#62204
����� ����~
2 f 100
~
switch %random.3%
  case 1
    calcuid ship 62238 room
  break
  case 2
    calcuid ship 62239 room
  break
  case 3
    calcuid ship 62254 room
  done
  wload mob 62253
  wteleport questmob6221 %ship.vnum%
  calcuid duplo 62280 room
  detach 62203 %duplo%
  attach 62203 %duplo%
  calcuid vetka 62207 obj
  detach 62202 %vetka%
  attach 62202 %vetka%
  calcuid ouk 62285 room
  detach 62216 %ouk%
  attach 62216 %ouk%
  calcuid olgin 62204 mob
  detach 62219 %olgin%
  attach 62212 %olgin%
  calcuid viking 62216 mob
  wteleport %viking% 62286
  calcuid skald 62217 mob
  wteleport %skald% 62286
  calcuid viking 62235 mob
  wteleport %viking% 62245
  calcuid viking 62240 mob
  wteleport %viking% 62247
  calcuid viking 62225 mob
  wteleport %viking% 62293
  calcuid viking 62241 mob
  wteleport %viking% 62258
  calcuid viking 62242 mob
  wteleport %viking% 62215
  calcuid viking 62218 mob
  wteleport %viking% 62257
  calcuid viking 62247 mob
  wteleport %viking% 62216
  calcuid viking 62245 mob
  wteleport %viking% 62291
  calcuid imrah 62200 mob
  attach 62201 %imrah%
  attach 62207 %imrah%
  detach 62230 %imrah%
  rdelete questor622 %imrah%
  calcuid hunter 62201 mob
  rdelete questor622 %hunter%
  calcuid konung 62215 mob
  rdelete questor622 %konung%
  calcuid daughter 62253 mob
  rdelete questor622 %daughter% 
  wdoor 62227 e purge
  wdoor 62221 w purge
  wdoor 62248 w purge
  wdoor 62247 e purge
  wdoor 62210 s purge
  wdoor 62215 n purge 
  detach 62237 %world.room(62227)%
  detach 62237 %world.room(62248)%
  detach 62237 %world.room(62210)%
  attach 62237 %world.room(62227)%
  attach 62237 %world.room(62248)%
  attach 62237 %world.room(62210)%
  calcuid alhemist 62204 mob
  rdelete ing1 %alhemist.id%
  rdelete ing2 %alhemist.id%
  rdelete ing3 %alhemist.id%
~
#62205
���� ����� �����~
0 f 100
~
mload obj 62209 
if %random.100% < 30
  mload obj 62243
elseif %random.100% < 20
  mload obj 62241
elseif %random.100% < 8
  mload obj 62242
end 
~
#62206
����� � �������~
0 r 100
~
say Troll taki udr oll!
wait 1
*���� ��� ������ �����! (���������������)
*mecho _"KOMIT UT, TRU WARE!!!" - ������� ������.
exec 62234 %world.room(62279)%
*�� ���, ������ �������!
~
#62207
� ���������� (������ ������)~
0 d 1
�� ������� ������ ��������~
if %questor622%
  halt
end
eval level 22-%actor.remort%/2
if ( (%actor.level% < %level%) || (%actor.vnum% != -1) || !%exist.mob(62215)%)
  msend %actor% _���������� ����������� �������� ��� � ��� �� ������.
  say ���, ����� �� �� ����� ��� ����...
  �����
  halt
end
makeuid questor622 %actor.id%
global questor622
calcuid hunter 62201 mob
attach 62226 %hunter.id%
remote questor622 %hunter.id%
calcuid konung 62215 mob
remote questor622 %konung.id%
calcuid daughter 62253 mob
remote questor622 %daughter.id%                                               
say ������, ������ � ����� �� ��� ������!
wait 1
say ������� ������ �����, �� ������ ��������...
say ��� ���� ������ �������, �������, ����� � ����� ������.
wait 5
say � ��� ��� ����� ���, ������, � ��� ���� � �������.
say �� ����� - ������� ��������� �� ����� ��������.
emot ������ ����������
wait 1s
say ����� ��, %actor.name%...
say � � �� � ����� �� ��������...
say � ������-�������� � �����, ���� � ������ ������ �������� ���� ������� ������.
detach 62201 %self.id%
~
#62208
� ��� � ���������~
0 k 100
~
wait 1
if ((%actor.hitp% < 99) && (%actor.realroom% == %self.realroom%))
  mecho _�������� ������� �������� ������������� ������ ����!
  msend %actor% _������� �������� ����� ��� �������� ����!!!
  mechoaround %actor% _������� �������� ����� %actor.dname% �������� ����!!!
  eval dmg %actor.hitp%+10
  mdamage %actor% %dmg%
  wait 5
end
~
#62209
����� � ������~
0 q 25
~
wait 1       
mecho ������ ���-�� ������ �������� ������ ����.
say �� ��� �� ��� ��������? � ��� ����....
wait 2s
eval trup %random.pc%
if (%trup%)
  say �� ��� �����?! ��, ���%trup.g% ��������%trup.u%... ��, ������-�� ������ ����!!!
  mkill %trup%
end
~
#62210
�� ����� �� �����~
2 c 0
���� ������ ���� �������~
if !%arg.contains(����)% && !%arg.contains(�����)%
  wsend %actor% _���� �������?
  return 0
  halt 
end
wsend %actor% _�� ���������� � ������� � ������ ������� �� ������.
wsend %actor% _�� ����� ������� �� ���� � ���, �������, ����� � �������.
wteleport %actor% 62208
wecho _%actor.name% ��%actor.y% �� ������ �� �����. 
wechoaround %actor% ���-�� �������� �� ���� �� ������.
~
#62211
���� ������ ��������~
0 m 1
~
if (%amount% < 50)
  say �� ��� ����� ��� ���%actor.g% ���� ����.
  halt
end
�����
say �� ��� �... �����.
wait 1
mecho _������� ����� � ���������� � ������. 
mechoaround %actor% _%actor.name% ��%actor.y% ������ �� ���������.
msend %actor% _�� ����� ����� �� ���������.
msend %actor%  _�� ����� ����������� ����� ���� � �����.
wait 1s
msend %actor% _������� ���������� ��� �������� ������.
mteleport %actor% 62273 horse
mteleport %self% 62273
mechoaround %actor% _���-�� ������ ���� ������ � ������ ��������� �������.
say ������ � �� �����. �� ������ ���������� �� ����� ������.
say �� ������, ���� ��������� - ������ ����� ������������ �� ������� �����.
wait 2
mecho  _������ ������� ���� �� �����.
mteleport %self% 62203
mecho _������� ������ ������ � ������.
~
#62212
����������� �������~
0 c 0
�����������~
if (!%arg.contains(������)% && !%arg.contains(������)%)
  msend %actor% ��� � ��� ��������� �������!
  return 0
  halt 
end
wait 2
msend %actor% _�� ����� ����������� ������� ������
mechoaround %actor% _%actor.name% ����� �������%actor.u% ������� ������.
say ���, %actor.iname%, �� ���������� ����%actor.y%?
say � ���� ���� ��������-��... 
say ���� ����� ���� ���� - ������ � ���, �� ������� ��� ������� ���� ��������, ���� ����� ������ � ������ �������.
say ��� ����� � ���������.
wait 4
say �� ���� ������ �� ������ - �� ������� ��� ����, � ������ ������ �������.
mecho _������ ��������� � ��������� �� ������������� ����.
calcuid vetka 62207 obj
attach 62202 %vetka.id%
attach 62219 %self.id%
detach 62212 %self.id%
~
#62213
����� �� ���~
2 c 0
����� ������� ��������� ����������~
if !%arg.contains(���)% 
  wsend %actor% _���� ��� �� ������?!
  return 0
  halt 
end
wsend %actor%  ��������� � �����, �� ������� �� ���.
wechoaround %actor% _%actor.name% �����%actor.q% �� ���.
wteleport %actor% 62280
wsend %actor% _�� ��������� �� ������� ������� �����.
wechoaround %actor% _���-�� ��������� �� ������.
~
#62214
����� �����~
0 f 100
~
eval fang %random.3%
if (%fang% == 1)
  mload obj 62230
  mload obj 62231
elseif (%fang% == 2)
  mload obj 62231
  mload obj 62232
elseif (%fang% == 3)
  mload obj 62232
  mload obj 62230
end
~
#62215
����� �����~
0 f 100
~
eval plume %random.3%
if (%plume% == 1)
  mload obj 62233
  mload obj 62234
elseif (%plume% == 2)
  mload obj 62234
  mload obj 62235
elseif (%plume% == 3)
  mload obj 62235
  mload obj 62233
end
~
#62216
���-�� ��������� ~
2 c 1
�������� �������� ����������~
wsend %actor% _�� ������ ������ � ��� � ���������� �� ��� ����.
wechoaround %actor% %actor.iname% �����%actor.g% ������ � ��� � ������������ ���������%actor.g%.
wecho _�������� ���������� �������� ����� � ����.
wecho _�������� �������� ���� ��������� ����� ����! 
wload mob 62212
calcuid zmey 62212 mob
makeuid questor %actor.id%
global questor
remote questor %zmey.id%      
detach 62216 %self.id%
~
#62217
�������� ����~
0 n 100
~
msend %questor% _���� �������� ��� � ��� �� ������.
mechoaround %questor% ���� �������� %questor.vname% � ��� �� ������.
say �! �� �� ��� ������! 
say � �-�� �����-������... �� � ������������ �� ������ �������...
say ��� �� � ���� ��� ���� ����-������?
wait 5s
say ���, ������ ���?!
say ��� �� ���� ����������, ��������. �� ���...
mkill %questor.iname% 
~
#62218
���� ���� ���� ~
0 j 100
~
wait 1
eval meat %object.name%
if !%meat.contains(����)%
  return 0
  halt
end
say  �! �������!
mecho _�������� ���� ������ �� %meat.vname% �����, ������ ��� ��������.
mecho _�������� ���� � ��������� ������ ���������� %meat.vname%.
say ��, ���� ��� � ����-������...
mecho �������� ���� �������� �������� � �������.
mecho ��������� ������ ��������� � ������ ���� � ������� ������������ �� ����� ����.   
eval scales %random.3%
if (%scales% == 1)
  mload obj 62236
  mload obj 62237
elseif (%scales% == 2)
  mload obj 62237
  mload obj 62238
elseif (%scales% == 3)
  mload obj 62238
  mload obj 62236
end
mpurge %object%
mpurge %self%
~
#62219
���� ���������� �������~
0 j 100
~
wait 1
switch %object.vnum%
  case 62230
    set ing1 1
    global ing1
  break
  case 62231
    set ing1 2 
    global ing1
  break
  case 62232
    set ing1 3
    global ing1
  break
  case 62233
    set ing2 1
    global ing2
  break
  case 62234
    set ing2 2
    global ing2
  break
  case 62235
    set ing2 3 
    global ing2
  break
  case 62236
    set ing3 1 
    global ing3
  break
  case 62237
    set ing3 4 
    global ing3
  break
  case 62238
    set ing3 5
    global ing3
  break
  default
    emot ���������� ���������� �� %object.vname%
    say ���-�� ��� �����?
    drop %object.iname%
    halt
  done
  wait 1
  mpurge %object%
  say �! ��� ��� ��, ��� �����!
  mecho ������ ������� %object.vname% � ������� ��� ������ ������� � ��������� ���������� ������� ������.
  wait 2s
  if !%ing1% || !%ing2% || !%ing3%
    ���
    say �������, ��� ����-�� �� �������...
    say ������ �� �����?
    halt
  end
  say �� ���, ���-�� ����������...
  wecho ������� ������ ������ ������� ����� � �����-�� �������.
  eval sum %ing1%+%ing2%+%ing3%
  switch %sum%
    case 3
      mload obj 62220
      give ��� .%actor.name%
    break
    case 4
      mload obj 62221
      give ��� .%actor.name%
    break
    case 5
      mload obj 62222
      give ��� .%actor.name%
    break
    case 6
      mload obj 62223
      give ��� .%actor.name%
    break
    case 7
      mload obj 62224
      give ��� .%actor.name%
    break
    case 8
      mload obj 62225
      give ��� .%actor.name%
    break
    case 9
      mload obj 62226
      give ��� .%actor.name%
    break
    case 10
      mload obj 62227
      give ��� .%actor.name%
    break
    case 11
      mload obj 62228
      give ��� .%actor.name%
    break
  done
~
#62220
���� ����~
0 f 100
~
eval scales %random.3%
if (%scales% == 1)
  mload obj 62236
  mload obj 62237
elseif (%scales% == 2)
  mload obj 62237
  mload obj 62238
elseif (%scales% == 3)
  mload obj 62238
  mload obj 62236
end
~
#62221
�������� � ����~
2 c 0
��������~
if !%arg.contains(����)%
  wsend %actor% _���� �������-��?
  return 0
  halt
end
wsend %actor%  � ������ "�� ��������� �����" �� �������� ���� � ����.
wechoaround %actor% _%actor.iname% �������%actor.g%: "�� ��������� �����" � �����%actor.u% ���� � ����.
wdamage %actor% 20
wteleport %actor% 62269
wechoaround %actor% ���-�� � ����������������� ������ �������� � ����.
~
#62222
���������� ��������~
0 c 0
���������� ��������� ��������� ~
if !%arg.contains(�������)%
  msend %actor% ���� �� ��� �������� ������� ����������?
  return 0
  halt
end
msend %actor% ������ ������ �� ������� ����� ����������� ��������.
mechoaround %actor% _%actor.iname% ������� ������ ������%actor.g% ����� ��������.
wait 4
mecho _������� �����, ��������� ��������� �����.
mecho _������� ��������� ���-�� � ������������ � �������� �������.
wait 2
mecho _"������� ����, � %actor.iname%!" - �������� �������.
wait 3
mecho _������� ������: "� �� ����������� ����, �� ��� ���������� ������ ��� ��������� �����!
mecho ����� ���, � � ����� ������� ���� ���� ����."
mload mob 62210
mpurge %self%
~
#62223
������ ����� �������~
0 j 100
~
if !(%object.vnum% == 62209)
  say �� ��, �����, �������� ���� ����?!
  emot ������ ����������
  drop %object.name%
  halt
end
wait 1
say �, ��� �����! ��� ���� ����� ��� ���!
dg_cast '������' %self.name%
dg_cast '�����' %self.name%
say ��� �, � ���������� ���� ��� � ������. 
mechoaround %actor% _������� ��� %actor.dname% ��������� ������ �������.
if (%actor.level% > 20) && (%actor.level% < 26)                         
  msend %actor% ������� ��� ��� ��������� ������ �������, ���������� ��� 40000 ����� �����. 
  %actor.exp(+40000)%
else
  msend %actor% ������� ��� ��� ��������� �������... �� ��� ��� � ���� ���� ��� �������, �� � ������ � ��������.
end
dg_cast '���������' %actor.name%
dg_cast '�����' %actor.name%
dg_cast '���������' %actor.name%
say � ������ ��� ����...
mecho _������� ������� � ������ � �����.
mpurge %object%
mpurge %self%
~
#62224
����� �� �������~
2 c 0
����� ������� ����������� ����������~
if !%arg.contains(�������)%
  wsend %actor% ���� �� ������?
  return 0
  halt
end
if %actor.fighting%
  eval enemy %actor.fighting%
  wsend %actor% _�� ���������� ������� �� �������, �� %enemy.name% �������%enemy.g% ��� �� ���� � ������� ����!
  halt
end
wsend %actor% �� ��������� ����������� �� ���� �������.
wechoaround %actor%  %actor.iname% �����%actor.q% �� �������.
if %self.vnum% == 62221
  wteleport %actor% 62227
elseif %self.vnum% == 62247
  wteleport %actor% 62248
else
  wteleport %actor% 62210
end
wechoaround %actor% _%actor.iname% ������%actor.u% ����.
~
#62225
�������� �� �����~
2 c 0
�������� ��������� ���������~
if (!%arg.contains(����)% && !%arg.contains(�����)%) 
  wsend %actor% _���� �� ������ ��������?
  return 0
  halt
end
if %actor.fighting%
  eval enemy %actor.fighting%
  wsend %actor% _�� ���������� ��������� �� �����, �� %enemy.name% �������%enemy.g% ��� �� ������� � ������%enemy.g% �������!
  halt
end
wsend %actor% _�� ��������� � ������� �� �����.
wechoaround %actor% _%actor.iname% ��������%actor.g% �� �����. 
if %self.vnum% == 62227
  wteleport %actor% 62221
elseif %self.vnum% == 62248
  wteleport %actor% 62247
else
  wteleport %actor% 62215
end
wechoaround %actor%  %actor.iname% ��������%actor.g% � ����� �������.
foreach dochka %self.npc%
  if (%dochka.vnum% == 62253)
    wechoaround %dochka%  ������ ��������� �� �����.
    if %self.vnum% == 62227
      wteleport %dochka% 62221
    elseif %self.vnum% == 62248
      wteleport %dochka% 62247
    else
      wteleport %dochka% 62215
    end
    wechoaround %dochka%  ������ ��������� �� �����.
  end
done
~
#62226
������� ����� � ��������~
0 q 100
~
if !(%actor.id% == %questor622.id%)
  halt
end 
wait 1s
say ����� �� ������ ��� ��� ����, %actor.iname%...
say � ������ ���������� ��������� �����.
wait 2
say ������� ���� ������ ���, � �������� ��� ����� �� �������.
wait 1s
say �� � � ������ �� ����� - �� ��� ������ ������������ �� ����� ������.
say ��� ��������� ��� ��������� - ����� � ������ ������.
detach 62211 %self.id%                      
attach 62211 %self.id%                      
detach 62226 %self.id%
~
#62227
������� ����� �� �����~
0 z 0
~
wait 1
if (%questor622.sex% == 1)
  say ������� ����, ������ �������!  
  *elseif (%questor622.sex% == 2) 
else
  say ������� ����, ������ ������!            
end 
say � � ��� ���� �� ��������� � �����...
say ������ � � ���� �� ���� ��������.
calcuid father 62200 mob
*attach 62234 %father.id%
attach 62230 %father.id%
exec 62233 %father.id%
wait 1
mecho _������ ������ ������� �� ������ �� �����.
mpurge %self%
~
#62228
������ ����~
0 f 100
~
if %questor622.realroom% != 62279
  halt
end
mload obj 62205
~
#62229
����� � ����� ����������~
0 q 100
~
if !(%actor.id% == %questor622.id%)
  return 0
  halt
end
wait 1s
emot ��������� ��������� �� ���
emot ������������� � ��� � ��������, �������� ���������
wait 3
if (%actor.sex% == 1)
  say ������� ����, ������ �������!  
  ���  %actor.name%
elseif (%actor.sex% == 2) 
  say ������� ����, ������ ������!            
  ������ %actor.name%
end 
say ����%actor.q% �� ����, ����� �� ������.
wait 1s
say ������ ��� �� � �� ���� ��������?
say ��������-�� ��� ���� � ����, �� ������� ��������, �� � ����� ���� ���������.
say ��� �� ���������%actor.g% �� ����, �� �� ������ ���.
*say ������ � � ���� �� ���� ��������.
*mecho ������ �������� � ������� ������.
*calcuid father 62200 mob
*attach 62234 %father.id%
*attach 62230 %father.id%
*exec 62233 %father.id% 
*mpurge %self%
mload mob 62255
remote questor622 %world.mob(62255)% 
mteleport %self% 62286
exec 62243 %world.room(62241)%
exec 62244 %world.room(62260)%
mpurge %self%
~
#62230
� ���������� (�������)~
0 q 100
~
if (%actor.id% != %questor622.id%)
  halt
end   
eval level 22-%actor.remort%/2
if (%actor.level% < %level%)
  halt
end
wait 1s
����
say ������� ����, %actor.iname%, ����%actor.q% �� � ������� ����, � ������� ���...
emot ������� �������� �� ������
msend %actor% ���������� ������ ����� ��� ����.
mechoaround %actor% ���������� ����� ������ ����� ���� %actor.dname%.
wait 2s
if (%questor622.quested(62200)% == 0)
  switch %actor.class%
    case 0
      say �������� ��� ���� - ����� ������. �� ���� ���� �����������... 
      say ����� � ������� ��� ���!
      mload obj 552
      ��� ������ .%actor.name%
    break
    case 1
      say �� � �������, ��� ������� - ��� ������ ����, ��
      say ������ ��� �� �������, ��� ��� ������-�� ��� ���
      mload obj 578 
      ���� ���� .%actor.name%
    break
    case 2
      say ���������� �� �����������.
      emot �������� ����������  
      say ��� �, ����� � ���� �������� �����, ��� ���� ������������.
      msend %actor% ���������� ����� �������� ������ ��� ������� ���������� ����� �� �����.
      mechoaround %actor% ���������� ���-�� ����� � ��������� ������������� %actor.iname%.
      if !%actor.skill(��������)%
        msend %actor% �� ������ ������, ��� ���� ������������ ������� "��������".
        mskillturn %actor% �������� set
      else
        msend %actor% �� ����� ����������� ������� � ������ "��������".
        mskilladd %actor% �������� 10
      end
      %questor622.setquest(62200)%
    break
    case 3
      say ����� � ����, ��� ������� ���� � ������ � ���� �������.
      msend %actor% ���������� �������� ��������� ��� ��������� ����������� ������������ �����.
      mechoaround %actor% ���������� �������� ���-�� ���������� %actor.dname% ��� �����    �������������� ���������� ��������.
      if !%actor.skill(����������� �����)%
        msend %actor% ������ �� �������� ������� "����������� �����"!
        mskillturn %actor% �����������.����� set
      else
        msend %actor% ������ �� ������� ����� ������ �������� ����������� �����!
        mskilladd %actor% �����������.����� 10
      end
      %questor622.setquest(62200)%
    break 
    case 4
      say ���� ���, ��� ������� �� �� �����, �� � �� ����.
      msend %actor% ���������� ���� ���������� ��� ��������� ����������� � ������.
      mechoaround %actor% ���������� �������� ���-�� ���������� %actor.dname% , ��������� �������������.
      if !%actor.skill(���������� �����)%
        msend %actor% ������ �� �������� ������� "���������� �����"!
        mskillturn %actor% ����������.����� set
      else
        msend %actor% ������ �� ������� ����� ������ ��������� �������������� � ������!
        mskilladd %actor% ����������.����� 10
      end
      %questor622.setquest(62200)%
    break
    case 5
      say � ������� ������� ���������� � ���� ������.
      say � � �����-�� ����� ����� ��������, ���� �������...
      emot ������������
      mecho ���������� ������� �� ������� ��� � �������� ������� ��� ������ ����, �� ���, ��� � �� ��������� � ����.
      if !%actor.skill(������� ������)%
        msend %actor% ������ �� �������� ������� "������� ������"!
        mskillturn %actor% �������.������ set
      else
        msend %actor% ������ �� ������� ����� ������ �������� �����!
        mskilladd %actor% �������.������ 10
      end
      %questor622.setquest(62200)%
    break
    case 6
      say ��� ��������� ���� � ���� ������ ���
      say ��� ������ - � ���� �� ������ ����� � ����� ��������
      mload obj 558
      ���� ���� .%actor.name%
    break 
    case 7
      say ���� � ���������� ��� ������ - ������, ��, ��� ������ �� �����
      say � �� ���� ���� ������ - ����� � ���� ����� ����.
      mecho ���������� ����� ���������� � ������� � ���������������� ������.
      if !%actor.skill(�����)%
        msend %actor% ������ �� �������� ������� "�����"!
        mskillturn %actor% ����� set
      else
        msend %actor% ������ �� ������� ����� ������ ��������� �����!
        mskilladd %actor% ����� 10
      end
      %questor622.setquest(62200)%
    break 
    case 8
      say � ��� ������... ������ �� ����� ���, ��� �� ����� ����� �������?
      say �� ������������, ����� ���� ���� ����������� ��� ��� ����...
      mload obj 568
      ���� ���� .%actor.name%
    break
    case 9
      say �����-�� � � ����� ����� ��������... ������ � ����, ��� ������� ����� ��������, ���� �� �������� �����-�� ������...
      mecho ���������� ������� �� ������� ��� � �������� ������� ��� ������ ����, ������  ��������� ����� � ������.
      if !%actor.skill(������ �����)%
        msend %actor% ������ �� �������� ������� "������ �����"!
        mskillturn %actor% ������.����� set
      else
        msend %actor% ������ �� ������� ����� ������ ��� �������� ����� ������������ �����������!
        mskilladd %actor% ������.����� 10
      end
      %questor622.setquest(62200)%
    break
    case 10
      say ������� ��, ��� � �������.
      say ������ � ����, ��� ������� �� ���� ��������, ���� ����� �� ����� ����� ���� �� ����.
      msend %actor% ���������� ���� �� ����� ������ � ���� ��������������� ��� ��������� �������, ����� ����� ���������� � ���� ����� ��������� �����, ������������� � ��������.
      mechoaround %actor% ���������� ���� �� ����� ��� �� �������� � ���� ���-�� ���������   %actor.name% ������ ������ �� ���, �� ����.                                               
      if !%actor.skill(�������������� �������)%
        msend %actor% ������ �� �������� ������� "�������������� �������"!
        mskillturn %actor% ��������������.������� set
      else 
        msend %actor% ������ �� ������� ����� ������ ��� �������� ������ � �����!
        mskilladd %actor% ��������������.������� 10
      end
      %questor622.setquest(62200)%
    break 
    case 11
      say ���� �, ������ �� ��������.
      say ����� � ����, ��� � ��� ������������ � ��� ������� �������, ���� � ������ ������ �� ���...
      mecho ���������� ���� �� ����� ���������� � ������ ��� � ����� ��� �� ����.
      msend %actor% ���������� ���� ���������� ��� ��� ����� �������� ����� �����.
      msend %actor% _����� ������ ���������� ���� ��� � ���!
      mechoaround %actor% _����� ������ ���������� ������� %actor.vname% �� �����!
      %actor.position(6)%
      %actor.wait(3)%
      if !%actor.skill(�����)%
        msend %actor% ������ �� �������� ������� "�����"!
        mskillturn %actor% ����� set
      else
        msend %actor% ������ �� ������� ����� ������ ��� ���� ������� �����������!
        mskilladd %actor% ����� 10
      end
      %questor622.setquest(62200)%
    break
    case 12
      say ����, ��� ��� ����� ������ �������, ������ �����
      say �� ������� ����� �����, ��� � ������ ����������� 
      say �� � ���� ������, � � ��� ����� ���������
      mecho ���������� ���� �� ����� ������������ ����������� ��� � ���������� ��.
      msend %actor% ���������� ���� ���������� ��� ��� ����� ����� ������ ������.
      msend %actor% _���������� ��������� ���� ���������� ����� ������ ���!
      mechoaround %actor% _���������� ��������� ���� ���������� ����� ������ ���!
      if !%actor.skill(�������)%
        msend %actor% ������ �� �������� ������� "�������"!
        mskillturn %actor% ������� set
      else
        msend %actor% ������ �� ������� ����� ������ ��� ���� ������ ����!
        mskilladd %actor% ������� 10   
      end
      %questor622.setquest(62200)%
    break  
    case 13
      say ����, ��� ��� ��, ������, ���� �� ���
      say ������ ��� ���� �� ������� ��� �� ����� � ����������. 
      say �� ��� ���� ����� ������, ��� �������� �������� ��� ���������� ���������
      mecho ���������� ����� ��������� � �� ������� ���������
      msend %actor% ���������� ��������� ��� ����� ��������, ��� ��� �� �����������.
      mechoaround %actor% _���������� ���� ���-�� �����������.
      if !%actor.skill(��������)%
        msend %actor% ������ �� �������� ������� "��������"!
        mskillturn %actor% �������� set
      else
        msend %actor% ������ �� ������� ����� ������ ��� �������� ��������!
        mskilladd %actor% �������� 10 
      end
      %questor622.setquest(62200)%
    break
  done  
else
  say ����� ��� ��������� ����...
  say ��� � ���� �������� - ��� ������ ������� ���.
  eval temp %actor.gold(+5000)%
  mecoaround %actor% ���������� ������� �� ��� � ���� %actor.dname% ������� ������� ����.
  msend %actor% ���������� ����� ��� � ���� ������� ������� ����.
end
detach 62230 %self.id%
~
#62231
������ ����� �������(2)~
0 j 100
~
if !(%object.vnum% == 62209)
  say �� ��, �����, �������� ���� ����?!
  emot ������ ����������
  drop %object.name%
  halt
end
wait 1
say �, ��� �����! ��� ���� ����� ��� ���!
dg_cast '������' %self.name%
dg_cast '�����' %self.name%
say ��� �, � ���������� ���� ��� � ������. 
dg_cast '���������' %actor.name%
dg_cast '�����' %actor.name%
dg_cast '���������' %actor.name%
say � ������ ��� ����...
say � ����������� ����� - �� ������������� ������ ��������.
say ������, ������� �������� ��� ������ ����.
say �� �� ���� ����... ������ �� �� ����������� �� ����?
mpurge %object%
attach 62232 %self.id%
detach 62231 %self.id%
~
#62232
������ "��" �������~
0 d 0
�� ������� ���� ���~
if (%speech% == ���)
  say ��� �, ������.
  mecho ������� ������� � ������ � �����.
  mpurge %self%          
  halt
end
say ���������!
emot �������� ����� ��������� ������� � ������� ����� ���������� ���!
mecho �� �������� ������ � ������, ������ ����� ���������� ������ � ����, ���� � ����...
mecho �������� �� ��������� ��� ������� ��������.
mecho �� ������ ��������� � ������������ ����� �� ������� ������� �������� ������.
mteleport all 48700
wat 48900 mecho ������� ����� ������: "��� �� � �������!"
wat 48900 mecho ������� ����� ������: "�� ��� ���� - � ����� ������������ � ���� ���� ����."
wat 48900 mecho ������� ����� ������: "����������� ��������� �������, �� ����, �� ��� ����� ���� ������ �������."
wat 48900 mecho ������� ��������� �������� �� ����������� � �������� ��������� �����.
mpurge %self%
~
#62233
���� ����� ����������~
0 z 0
~
mload mob 62254
detach 62253 %self.id%
~
#62234
���� ������~
2 z 0
~
wzoneecho 62279 &Y "KOMIT UT, TRU WARE!!!" - ������� ����-������.&n
~
#62235
����� ������� �� ���������~
0 d 0
������ ������ �����~
if %actor.id% == %questor622.id% 
  say ������� ����...
  wait 2
  follow %actor.name%
end
~
#62236
������ �������� 62227~
2 g 100
~
if (%actor.vnum% == 62255)   
  exec 62227 %world.mob(62255)%
end
~
#62237
�������� ������~
2 c 0
�������� ���������� ��������~
if !%arg.contains(�����)%
  wsend %actor% _��� �� ������ ��������?
  halt
end                                            
wsend %actor% �� ����� ������ � �������� �� ����� ������ �� �����.
wechoaround %actor% _%actor.name% ���%actor.q% ������ � ������� �� ����� ������ �� �����.
wecho _������ ����� �������� ������.
wpurge ������
wload obj 62239 
if %self.vnum% == 62227
  wdoor 62227 e room 62221
  wdoor 62221 w room 62227
  exec 62238 %world.room(62221)%
elseif %self.vnum% == 62248
  wdoor 62248 w room 62247
  wdoor 62247 e room 62248
  exec 62238 %world.room(62247)%
else
  wdoor 62210 s room 62215
  wdoor 62215 n room 62210
  exec 62238 %world.room(62215)%
end 
detach 62237 %self.id%
~
#62238
������ �2~
2 z 0
~
wecho _���-�� ������� � ����� ������� ������� ������.
wecho _������ ����� �������� ������ �� ����.
wload obj 62239 
~
#62239
�������� ������ �1~
0 n 0
~
wait 2
follow ������
~
#62240
��� �� ����� ����������~
0 g 100
~
if %actor.vnum% == 62255
  ���������
  kill %actor.name%
end
~
#62241
����~
2 g 100
~
*if %direction% != south 
*halt
*end
eval actorvnum %actor.vnum%-62200
if (%actorvnum% == 55)
  return 1
  halt
end
if ((%actorvnum% >= 0) && (%actorvnum% < 99))
  return 0
  halt
end
~
#62242
�������� ������ �2~
0 n 0
~
wait 2
follow ����
~
#62243
�������� ����� ������ �1~
2 gz 0
~
wecho _��������� ��������� ���� ������� ����!
wload mob 62257
wload mob 62258
wload mob 62256
~
#62244
�������� ����� ������ �2~
2 gz 0
~
wecho _��������� ��������� ���� ������� ����!
wload mob 62260
wload mob 62259
wload mob 62261
~
#62245
��� �� ����� ���������� #2~
0 s 100
~
foreach target %self.npc%
  if %target.vnum% == 62255
    ���������
    kill %target.name%
  end
done
~
#62246
���������� �������~
0 k 30
~
switch %self.realroom%
  case 62263
    flee n
    flee n
  break
  case 62261
    flee n
    flee n
    wait 2
    if (%self.realroom% == 62260)
      exec 62247 %world.room(62288)%
      mecho _��������� ��������� ���� ������� �� ��� �����������.
      mload mob 62262
      mload mob 62267
      mload mob 62264
    end
  break
  case 62264
    flee n
    flee n
    wait 2
    if (%self.realroom% == 62241)
      exec 62247 %world.room(62288)%
      mecho _��������� ��������� ���� ������� �� ��� �����������.
      mload mob 62263
      mload mob 62265
      mload mob 62266
    end
  break
  case 62265
    flee n
    flee n
  break
done
~
#62247
���� ����������~
2 z 0
~
wzoneecho 62288 &R ���������� ������� ������� ��� ���� ����, ������� �������! &n
~
#62248
�� ���� � �������� �����~
0 q 100
~
wait 1
mecho ���� ���������, �������� �������� �� ���.
wait 2
mecho ...�� �������� ����������� � �������� �������� �� ����� ����� �������� ��� � ��� �� ������.
say ��� �� �� ���� �� ����?
emot ������ ����� � ������� ������
say ��� ��, ��������� �� ��������.
say ���� �� ����, ���� ���� � ������������� ������� ���� �������.
attach 62249 %self.id%
detach 62248 %self.id%
~
#62249
���� ������~
0 q 100
~
wait 1
emot ��������� �� ��� � ���-�� ���������� ��������� � ���
mecho ���� ��������, ���������� � ������ �� ����� � �����.
wait 1
mpurge %self%
~
$~
