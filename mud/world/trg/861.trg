#86100
������ ����� (���� 24+)~
2 c 1
������ �������� ������ �������� ��������~
if !%arg.contains(�����)%
  return 1
  halt
end
wait 1s
if (%actor.str% => 24)
  wsend %actor% �� ������ ������ ������ �����, ������ ������ �� �����.
  wechoaround %actor% %actor.name% �����%actor.g% �����, ������ ������ �� �����.
  wait 1s
  wdoor 86134 west flags a
  wdoor 86134 west room 86115
  wdoor 86115 east purge
  wdoor 86115 east room 86134
  detach 86100 %self.id%
else
  wsend %actor% �� ���������� �������� �����, �� ������� ��������...
  wechoaround %actor% %actor.name% �������%actor.u% �������� �����, �� ������� ��������.
end
~
#86101
������� �������~
0 n 90
~
*������� �������� - �������� �������� �� ���� �����
wait 3s
if (( %random.25% == 1 ) && ( %world.curobjs(86104)% < 3 ))
  mload obj 86104
elseif (( %random.25% == 1 ) && ( %world.curobjs(86105)% < 3 ))
  mload obj 86105
elseif (( %random.25% == 1 ) && ( %world.curobjs(86106)% < 3 ))
  mload obj 86106
elseif (( %random.25% == 1 ) && ( %world.curobjs(86110)% < 3 ))
  mload obj 86110
elseif (( %random.25% == 1 ) && ( %world.curobjs(86111)% < 3 ))
  mload obj 86111
elseif (( %random.25% == 1 ) && ( %world.curobjs(86107)% < 3 ))
  mload obj 86107
end
if (( %random.35% == 1 ) && ( %world.curobjs(86114)% < 2 ))
  mload obj 86114
end
if (( %random.35% == 1 ) && ( %world.curobjs(86109)% < 2 ))
  mload obj 86109
end
if (( %random.35% == 1 ) && ( %world.curobjs(86108)% < 2 ))
  mload obj 86108
end
if (( %random.35% == 1 ) && ( %world.curobjs(86113)% < 2 ))
  mload obj 86113
end
if (( %random.35% == 1 ) && ( %world.curobjs(86102)% < 2 ))
  mload obj 86102
end
if (( %random.35% == 1 ) && ( %world.curobjs(86103)% < 2 ))
  mload obj 86103
end
if (( %random.35% == 1 ) && ( %world.curobjs(86112)% < 2 ))
  mload obj 86112
end
if (( %random.35% == 1 ) && ( %world.curobjs(86117)% < 2 ))
  mload obj 86117
end
if (( %random.35% == 1 ) && ( %world.curobjs(86100)% < 2 ))
  mload obj 86100
end
if (( %random.35% == 1 ) && ( %world.curobjs(86101)% < 2 ))
  mload obj 86101
end
if (( %random.35% == 1 ) && ( %world.curobjs(86118)% < 2 ))
  mload obj 86118
end
if (( %random.35% == 1 ) && ( %world.curobjs(86119)% < 2 ))
  mload obj 86119
end
wait 1s
���� ������
���� ����
���� �����
���� ���
���� ������
��� ���
wait 1s
detach 86101 %self.id%
~
#86102
�������� ������ ����� �������~
2 c 0
��� ���� ����� ������ ������� �������� un unl unlo unloc unlock~
wait 1
if !%arg.contains(�����)%
  %send% %actor% _��� �� ������ ��������?
  halt
end
if ((%actor.haveobj(86122)%) && (%actor.haveobj(86123)% && (%actor.haveobj(86124)%))
  wait 1s
  wsend %actor.name% �� ��������� �������� ��� ��� ����� � �������� � ���������.
  wait 1
  wecho ����� �� ������� ����������.
  wdoor  86147 east flags a
  wdoor  86147 east room  86148
  detach 86102 %self.id%
else 
  wsend %actor.name% ����� �������� ��� ����� - ���������� ��� �����.
end
~
#86103
���� �������� (����)~
0 f 100
~
mload obj 86122
~
#86104
������ ���������� �����~
0 q 100
~
wait 1s
wecho ���������� ������ ����������� ������� ���.
wecho ���������� ���-�� ��� ������, � �� �������� �������
wait 1s
say � ����� ��� �� ����, ����� �������� ������.
wait 1s
say � ���������� ��� �������, �� ������ ����� ������� ������ �� �������
wait 1s
wecho - ��������, � ������������, � ������ �������� ��������� ��.
wait 1s
wecho ���������� ������ ������ �������, � ���� ������ ������������ �� ������.
~
#86105
����� ���� �������� (��� ����)~
0 k 80
~
mecho ���� ����� � ���������� ������ ������� �� ��� �� ����������� ������. 
wait 1s
foreach target %self.pc%   
  if (%random.100% < 51)
    msend %target% ���-�� ������ ������� �������, � �� �������������, ��� ����� ������� �� ����.
    eval dmg %random.70%+30
    mdamage %target.name% 60
  else 
    msend %target%  _�� ����� ��������� �������������� �� �����, �� ����� ��� ��� �� ���������! 
  end
done
~
#86106
����� ���� 861 ���������� ����� -1 ~
2 f 100
~
*����� � �������� �����
wdoor   86134 west purge
wdoor   86115 east purge
calcuid droom 86134 room
detach 86100 %droom.id%
attach 86100 %droom.id%
*����� �������� �� ������������
wdoor   86147 east purge
calcuid sroom 86147 room
detach 86102 %sroom.id%
attach 86102 %sroom.id%
*����� ����� � ������
calcuid killer 86114 mob
detach 86113 %killer.id%
attach 86113 %killer.id% 
*����� �������-�������
calcuid knight1 86109 mob 
detach 86118 %knight1.id%
detach 86115 %knight1.id%
detach 86120 %knight1.id%
detach 86116 %knight1.id%
attach 86118 %knight1.id%
attach 86115 %knight1.id%
attach 86120 %knight1.id%
attach 86116 %knight1.id%
calcuid knight2 86112 mob
detach 86118 %knight1.id%
detach 86115 %knight1.id%
detach 86117 %knight1.id%
detach 86115 %knight1.id%
attach 86118 %knight1.id%
attach 86115 %knight1.id%
attach 86117 %knight1.id%
attach 86115 %knight1.id%
* 
~
#86107
������� ��������~
2 c 1
��������� ��������~
wait 1
if ( %cmd% == �������� )
  %send% %actor% �������� ��� ��������.
  halt
end
if !%arg.contains(�����)%
  %send% %actor% ��� �� ������ ���������?
  halt
end
%echoaround% %actor% %actor.name% ��������%actor.g% ����� � �������� ������ �������� � ������!
%send% %actor% �� ������� ����� �������� � �������� ������ ����������� � ������!
switch %random.10% 
  case 1
    exec 86109 %world.room(86126)%
  break
  case 2
    exec 86109 %world.room(86127)%
  break
  case 3
    exec 86109 %world.room(86128)%
  break
  case 4
    exec 86109 %world.room(86129)%
  break
  case 5
    exec 86109 %world.room(86130)%
  break
  case 6
    exec 86109 %world.room(86160)%
  break
  case 7
    exec 86109 %world.room(86165)%
  break
  case 8
    exec 86109 %world.room(86166)%
  break
  case 9
    exec 86109 %world.room(86158)%
  break
  case 10
    exec 86109 %world.room(86146)%
  done
  attach 86108 %self.id%
  detach 86107 %self.id%
~
#86108
������� ��������~
2 c 1
��������� ��������~
wait 1
if ( %cmd% == ��������� )
  %send% %actor% ��� ����� ���-�� ������� �� ����������� ��������?
  halt
end
if !%arg.contains(��������)%
  %send% %actor% ��� �� ������ ��������?
  halt
end
if ( %actor.str% < 23 )
  %send% %actor%  �� ���������� ��������� �������� �����, �� �� ������ ���� �������� ��� � �����.
  %echoaround% %actor% %actor.name% �������%actor.u% ��������� �������� ����� ��������, �� ������� �� �������.
  halt
end
if ( %actor.move% < 60 ) 
  %send% %actor% �� ���������� �������� ��������.
  %echoaround% %actor% %actor.name% �������%actor.u% ��������� �������� ����� ��������.
  %send% %actor% �� ������� ������ - ����� �������� �� ����� ��� � ������ ������ ���!
  %echoaround% %actor% %actor.name% ������� �����%actor.g% - ����� �������� �� ��� ��� � �������� %actor.vname% ������ ������!
  %actor.move(-50)%
  %damage% %actor% 80
  halt
end
eval buffer %actor.move(-50)%
if ( %random.100% > 20 )
  wait 5s
  %echoaround% %actor% %actor.name% �������%actor.g% ������ �������� - ������ ������ � ���.
  %send% %actor% �� �������� ������ �������� - ������ ������ � ���!
  attach 86107 %self.id%
else
  %echo% �� ����������, ��� ������ �����������.
end
detach 86108 %self.id%
~
#86109
���������~
2 z 0
~
%echo% �������� ���������� ������ �����, � �� ����� ������������� ���������� ����� �� ��� ���������� ��������� ������!
foreach victim %self.char%
  if ( %random.100% < 75 )
    eval dmg 150+%random.500%
    mdamage %vicitm% %dmg%
  end
done
~
#86110
������� �����~
1 h 100
~
wait 1
eval val1 %random.6%
eval val2 %random.6%
oecho ����� ����� � ����������.
oecho ������ %val1% � %val2%.
~
#86111
������� ������� � ���������� ����~
0 n 100
~
halt
wait 1
if ( (%self.realroom% > 86100) && (%self.realroom% < 86199) )
  *���� ���������� � 861 ����
  mload obj 86134
  mload obj 86135
  mload obj 86136
  mload obj 86137
  mload obj 86138
  mload obj 86139
  ����� ���
  mload obj 86140
  mload obj 86141
  mload obj 86143
  mload obj 86144
  mload obj 86145
  ����� ���
  *���� ������
  if (( %self.vnum% == 86105 ) || ( %self.vnum% == 86108 ))
    mload obj 86149
    ���� �������
    wait 2
    mjunk all
    halt
  end 
  switch %random.3%
    case 1
      mload obj 86150
      ���� ������
      wait 2
      mjunk all
      halt
    break
    case 2
      mload obj 86146
      wield ���
    break
    case 3
      mload obj 86148
      wield �����
    done
    *���� ����
    if ( %random.100% < 20 )
      mload obj 86142
      ��� ���
    else
      mload obj 86147
      ����� ������
    end
  else
    *���� ���������� � 862 ����
    mload obj 86208
    mload obj 86209
    mload obj 86210
    mload obj 86211
    mload obj 86212
    mload obj 86212
    ����� ���
    mload obj 86214
    mload obj 86215
    mload obj 86217
    mload obj 86218
    mload obj 86219
    ����� ���
    *���� ������
    if (( %self.vnum% == 86105 ) || ( %self.vnum% == 86108 ))
      mload obj 86223
      ���� �������
      wait 2
      mjunk all
      halt
    end  
    switch %random.3%
      case 1
        mload obj 86224
        ���� ������
        wait 2
        mjunk all
        halt
      break
      case 2
        mload obj 86220
        wield ���
      break
      case 3
        mload obj 86222
        ���� �����
      done
      *���� ����
      if ( %random.100% < 20 )
        mload obj 86216
        ��� ���
      else
        mload obj 86221
        ����� ������
      end
    end
    *������� ��� ������ ��������
    mjunk all
~
#86112
������������ ������������� ����������� �����~
1 j 100
~
if ( %actor.vnum% == -1 )
  osend %actor% _%self.name% ���� �� ��������%self.g% ��� ���!
  halt
end
eval lid %actor.leader%
if ( %lid.vnum% == -1 )
  %echoaround% %actor% _%actor.iname% ��������� ������������ %self.vname%, �� � ���� ������ �� �����.
  return 0
  halt
end
~
#86113
����� � ������~
0 q 100
~
wait 1
emot ������� ��� � ��������� �� ������!
detach 86113 %self.id%
~
#86114
������� ��������� �����~
1 h 100
~
wait 1
oecho ����� ����� � ����������.
oecho ������ 6 � 6.
~
#86115
������� ����������~
0 f 100
~
emot ��������, ������������ ������, � ��������� �� ���� ������
if ( %self.vnum% == 86109 )
  calcuid alter 86112 mob
else
  calcuid alter 86109 mob
end
detach 86115 %alter.id%
mecho ��� ������, %self.name% ����������, � ����� ���������� ����������� ����.
eval dmg %alter.hitp%+10
mdamage %alter% %dmg%
~
#86116
������ ������ � ����� 1~
0 b 100
~
mforce gamer861n2 drop �����
wait 1s
��� �����
wait 2s
if ( !%self.haveobj(86152)% && !%self.haveobj(86131)% )
  halt
end
if %self.haveobj(86152)%
  emot ����������� �������� ����� � ����� ������ ����������
  say Donnerwetter! Du ist Swindler!!!
  ������
  stand
  calcuid gamer 86112 mob
  detach 86117 %gamer.id%
  attac gamer861n2
  detach 86116 %self.id%
  halt
end
���� �����
wait 2
switch %random.5%
  case 1
    ���
    ���� 10 ��� gamer861n2
  break
  case 2
    say Himmeldonnerwetter!
    ���� 20 ��� gamer861n2
  break
  case 3
    say So! Herrlich!
    mforce gamer861n2 ���� 20 ��� gamer861n1
  break
  case 4
    �����
    say La-la! Gluck!
    mforce gamer861n2 ���� 60 ��� gamer861n1
  break
  case 5
    ���
    ���� 50 ��� gamer861n2
  break
done
exec 86117 %world.mob(86112)%
~
#86117
������ ������ � ����� 2~
0 z 0
~
wait 2s
��� �����
if ( !%self.haveobj(86152)% && !%self.haveobj(86131)% )
  halt
end
if %self.haveobj(86152)%
  emot ����������� �������� ����� � ����� ������ ����������
  say Donnerwetter! Du ist Swindler!!!
  ������
  stand
  calcuid gamer 86109 mob
  detach 86116 %gamer.id%
  attac gamer861n1
  detach 86117 %self.id%
  halt
end
wait 2s
���� �����
wait 2
switch %random.5%
  case 1
    emot ��������� ����-�� �� ������� �����
    ���
    ���� 10 ��� gamer861n1
  break
  case 2
    say Teufel!
    ���� 20 ��� gamer861n1
  break
  case 3
    say Hhaa!!!
    mforce gamer861n1 ���� 20 ��� gamer861n2
  break
  case 4
    �����
    say La-la! Gluck!
    mforce gamer861n1 ���� 60 ��� gamer861n2
  break
  case 5
    say Ya?! Eiiiii...
    ���� 50 ��� gamer861n1
  break
done
mforce gamer861n1 ��� �����
~
#86118
������ �� ����������~
0 k 100
~
eval enemy %self.fighting%
if ( (%enemy.vnum% < 86109) || (%enemy.vnum%  > 86112) ) 
  mecho ___\&Y%self.iname% ���� ������, �������� �������!!!\&n
  masound ___\&Y%self.iname% ���� ������, �������� �������!!!\&n
  mecho �������� ������ ��������� ������������� ������!
  exec 86119 %world.room(86122)%
  calcuid alter 86112 mob
  calcuid alter2 86109 mob
  detach 86116 %alter.id%
  detach 86116 %alter2.id%
  detach 86117 %alter.id%
  detach 86117 %alter2.id%
  detach 86115 %self.id%
  detach 86118 %self.id%
end
~
#86119
�������� ���������~
2 z 0
~
wteleport helper861 86175
wteleport helper861 86175
wteleport helper861 86175
wteleport helper861 86175
wteleport helper861 86175
wteleport helper861 86175
wteleport helper861 86175
wteleport helper861 86175
wteleport helper861 86175
wteleport helper861 86175
~
#86120
������� �������� ������~
0 n 100
~
mload obj 86134
mload obj 86135
mload obj 86136
mload obj 86137
mload obj 86138
mload obj 86139
����� ���
mload obj 86140
mload obj 86141
mload obj 86143
mload obj 86144
mload obj 86145
����� ���
*���� ������
mload obj 86150
���� ������
*������� ��� ������ ��������
mjunk all
mload obj 86131
~
#86121
�������� ��������� � ���������~
2 f 100
~
wteleport helper861 86122
wteleport helper861 86122
wteleport helper861 86122
wteleport helper861 86122
wteleport helper861 86122
wteleport helper861 86122
wteleport helper861 86122
wteleport helper861 86122
wteleport helper861 86122
wteleport helper861 86122
~
#86122
������������ ���� ������ �������~
1 g 100
~
*��� ����� �������� ��� ������������ ���� ���� ������ ����� ��� ������ ������� -
*� ���������� � ��� ���������� � ��������� �������� ���� ������, ��� � �.�.
if ( %actor.vnum% != -1 )
  wait 1
  %purge% %self%
  wait 1
  halt
end
~
#86123
����� �����~
0 f 100
~
if !%exist.mob(86115)%
  if (%world.curobjs(86154)% < 1)
    mload obj 86154
  end
  if %exist.mob(86116)%
    calcuid plennik 86116 mob
    exec 86126 %plennik.id%
  end
end
~
#86124
����� ������~
0 f 100
~
if !%exist.mob(86114)%
  if %exist.mob(86116)%
    calcuid plennik 86116 mob
    exec 86126 %plennik.id%
  end
  mload obj 86154
  if ( %random.100% > 69 )
    mload obj 86153
  end
end
~
#86125
������ �����~
1 c 2
�������~
if !%arg.contains(�������)%
  %send% %actor% ��� ������?
  return 0
  halt
end
wait 1
osend %actor% �� ������ ������������� �������� ��������, ������� ����� ���-������ ��������.
oechoaround %actor% %actor.iname% �����%actor.g% ������������� �������.
switch %actor.class%
  *����
  case 2
    if !%actor.skill(����������� ������)%
      oskillturn %actor% �����������.������ set
    elseif (%actor.skill(����������� ������)% < 120)
      eval val %random.5%
      oskilladd %actor% �����������.������ %val%
    end
  break
  *��������  
  case 3
    if !%actor.skill(�������� ���)%
      oskillturn %actor% ��������.��� set
    elseif (%actor.skill(�������� ���)% < 120)
      eval val %random.5%
      oskilladd %actor% ��������.��� %val%
    end
  break 
  *�������
  case 4
    if !%actor.skill(�������� ������)%
      oskillturn %actor% ��������.������ set
    elseif (%actor.skill(�������� ������)% < 120)
      eval val %random.5%
      oskilladd %actor% ��������.������ %val%
    end
  break
  *���������
  case 5
    *������
    case 9
      if !%actor.skill(������� ������)%
        oskillturn %actor% �������.������ set
      elseif (%actor.skill(������� ������)% < 120)
        eval val %random.5%
        mskilladd %actor% �������.������ %val%
      end
    break
  break
  *�������
  case 10
    if !%actor.skill(����)%
      oskillturn %actor% ���� set
    elseif (%actor.skill(����)% < 120)
      eval val %random.5%
      oskilladd %actor% ���� %val%
    end
  break 
  *������
  case 11
    if !%actor.skill(������)%
      oskillturn %actor% ������ set
    elseif (%actor.skill(������)% < 120)
      eval val %random.5%
      oskilladd %actor% ������ %val%
    end
  break
  *�����
  case 12
    if !%actor.skill(����� � ����)%
      oskillturn %actor% �����.�.���� set
    elseif (%actor.skill(����� � ����)% < 120)
      eval val %random.5%
      oskilladd %actor% �����.�.���� %val%
    end
  break  
  *�����
  case 13
    if !%actor.skill(������ � ������)%
      oskillturn %actor% ������.�.������ set
    elseif (%actor.skill(������ � ������)% < 120)
      eval val %random.5%
      oskilladd %actor% ������.�.������ %val%
    end
  break
  default
    %send% %actor% �� ��� � �� ������ ���-���� �������� - ����� ��� ��������.
  break
done
osend %actor% �� � ���������� �������, ��� ����� ����� ��������� � �������.
wait 1
%purge% %self%
~
#86126
���� �� ��������~
0 z 0
~
wait 3s
emot �������� � ��������� �����
%echo% ������ ������� ������� �������� �� �������, ������ �� �� ����� �����, ��� �����.
wait 1s
emot ��������� � ��������� �� ���
say �� ����� ����.. ���� ���������?
������
wait 4 
say ��� �� �� �� ����.. ��������� ���.. �� ��� ������� ������
emot ����� �������� � �� ��� ���������� ������� �����
wait 2 
say ������� ���� �� ���, ���� �������� ������ �� ����. ��� ���-�� �����, � �����������...
say ����� � ���� ��������� ����� - ��� ����� ����� ������� ������... ������ ���...
������
wait 2
calcuid serg 86118 mob 
attach 86127 %serg.id%
mload obj 86155
emot ����� ������� �������� � ����������
eval room1 %self.realroom%
exec 86135 %room1.id%
*eval dmg %self.hitp%+11
*mdamage %self% %dmg%
~
#86127
���� ������� ����������~
0 j 100
~
wait 1
if ( %object.vnum% != 86155 )
  emot ������ ���������� ��������� �� ���, ����� ������ ������� �� ����� � ��� �����
  wait 1
  calcuid krest 86155 obj
  %purge% %krest%
  %purge% %self%
end
emot ������ �� ������� �������� ������ � ���������� � ���
say ��� ��������� ����� ���������� ������
say ��� �� � ���, ������ ��� ���, �����, ��� � �����
say ���������� - ��� � ��� ���������?
wait 5s
emot �������� ��� �������, ����� �������� � ����� �������� ������. 
%echo% ��� ����������, ��� �� ������ �������.
wait 2s
say ���������� �� ����� �������, ��� �� �������� � ��� � ����
say ��� ���� �����, ����� ����� ������� ����, ���������� ������ �����
%echo% - ��� ���������. ������ ������ �������� ������, ������� 
%echo% - � �������. �� ������, ������� ���� ��, ��� ������� ������ � ����� �
%echo% - �������� ����� ������ �������, ���� �� ��������� ���������.
wait 2
say �� ����� ������ ������ � ������������ ����� �� ������ �� ������, � ������ 
%echo% - ��� � �������. ���� ������ ������ ��������� ���� �� �������� - � �����������
%echo% - ������� �������... ��������� �� ������ - ����� �������� ����, ���������� � ����-��
%echo% - �� ������� � ������� ����.
wait 5
say ������ ��� ��������� �� �� �������� � �������� ������.
say ����� ����, ��� ��� �� ���������� - � ����� � ����� ��������� ���� �� ������.
wait 1
%purge% %object%
follow %actor.name%
mtransform 86120
detach 86127 %self.id%
~
#86128
����� �����-���������~
0 f 100
~
mload obj 86152
~
#86129
����� ������ � �����~
0 ab 18
~
wait 1
emot ���� ��������� �����
wait 2
emot ������ ��������� �����
%echo% ����� ����� � ����������.
wait 1
switch %random.6%
  case 1
    %echo% ������ 6 � 6.
    ���
  break
  case 2
    %echo% ������ 6 � 6
    ���
  break
  case 3
    %echo% ������ 6 � 2
    ����
    emot ���� ����� � �������� �����-�� �������� �� ������
  break
  case 4
    %echo% ������ 6 � 6
    �����
  break
  case 5
    %echo% ������ 6 � 4
    ���
    emot ������� ����� � � ����� ������ �� � ����
    case 6
      %echo% ������ 6 � 6
      �����
    done
~
#86130
���-�� ������� ����� � �����~
0 q 100
~
wait 1
emot ������� ��� � ����������� ������
������
emot ����������� � ��������� �������!
emot ������ �����
%purge% %self%
~
#86131
������� � ��������� � ������~
0 q 30
~
emot ��������
say �, ���� ����, ������ ��������!
say ������ ����� ����������� ������ ���� ������� �� ������!
emot ����� �������� � �������� ���������
~
#86132
���������� ������� � ��������� ��� ������ �� ����~
0 t 100
~
wait 1
if (( %self.realroom% < 86100 ) || (%self.realroom% > 86299))
  say ����-�� �� �� ���� ����... �����-�� � ��� ������.
  emot ���� �� ������
  wait 1
  %purge% %self%
end
if ( %self.realroom% ==  86120)
  emot ����������� ��������� �� ��������
  ���� �
  ���
  say ��� �����...
  emot ��� ��� ���������, ������ � ������� � �������� ���������� ���� ������ �����
  wait 2s
  emot ������������, ������� ��������� �� �������� ���� ��������� �����
  %echo% ...�� ��������, ��� ������� ������ ����������, � ��� ������ ��������� �� ������...
  emot ���������� ����� �������� ����� � ��� ��� ��������� �������
  wait 1s
  emot ������ ��������� ��������� �� �������
  emot ������� ������ �� ���� ����� � ���� ������������ �� � ����� ������� ���������� �������
  eval char %random.pc%
  if (%random.1000% <= 45)
    mload obj 103
    ���� ����� %char.name%
  end
  if (( %random.1000% <= 100 ) && ( %world.curobjs(578)% < 1 ))
    *����� ��� ���� ���� !��������� ���������! ����� ��������������
    *if (( %random.100% < 11 ) && ( %world.curobjs(545)% < 1 )) 
    *mload obj 545
    mload obj 580
    ���� ���� %char.name%
  else
    eval buf %self.gold(+10000)%
    ���� 10000 ��� .%char.name%
  end
  wait 2
  ������
  say ��������� �� �������� ����� ����, � ����� ���� �� �������� �������
  say ������ ��� ������ ������� - �� ������ ������... ��������!
  emot ������ ��������
  %purge% %self%
end
~
#86133
�� ���� ������ ���� ����������~
2 e 100
~
if ( %direction% != west )
  return 1
  halt
end
if ( %exist.mob(86109)% && %exist.mob(86109)% )
  return 0
  %send% %actor% ���������� ��������� ��� ������.
end
~
#86134
������ �� �����~
0 l 100
~
detach 86129 %self.id%
detach 86134 %self.id%
~
#86135
������ ��������~
2 z 0
~
calcuid target 86116 mob
eval val %target.hitp%+11
wdamage %target% %val%
~
$~
