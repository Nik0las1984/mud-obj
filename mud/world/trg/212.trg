#21200
������� ��������~
1 gj 100
~
if ((!%actor.name%) || (%actor.clan% == ���) || (%actor.vnum% > 0))
  halt
end
wait 1
osend %actor% %self.name% ��������%self.u% � ����� �����.
opurge %self%
~
#21201
������� ���-�� �� ���������~
2 h 100
~
wait 3
foreach item %self.objects%
  eval name %item.iname%
  if (%item.val3% && (%name.contains(����)% || %name.contains(�������)%))
    %echo% &M%item.iname% ��������%item.g% ����� �������� � ��������� ������%item.g%!&n
    %purge% %item%
  end
done
~
#21202
���� ����~
1 c 2
������~
wait 1
if !%arg.contains(�������)%
  osend %actor% �� ��� ����?
  halt
end
osend %actor% �� ������ � ������������ �������.
osend %actor% �� ������ � ��� �������� ���.
if %actor.clan% != ��� || %world.curmobs(21208)% > 50
  osend %actor% ...�� ������ ������ �� ���������!
  halt
end
oechoaround %actor% %actor.name% �����%actor.g% � ������������ �������.
oechoaround %actor% �� ������ � ��� �������� ���.
oload mob 21208
oecho ���������, ����� ����������� ����� ������, ��������� �� ������� ����.
oforce %actor% �������� �����.����
wait 1
opurge %self%
~
#21203
���������� ����~
0 c 100
����������~
wait 1
if %self.fighting%
  halt
end
if !%arg.contains(����)%
  msend %actor%  ���� �� ������ ����������?
  halt
end
if (%actor.clan% != ���) || (%actor% != %self.leader%)
  msend %actor% �� �� ������ ��� ����������.
  halt
end
msend %actor% �� ���������� � ��������� ���������� ����.
mechoaround %actor% %actor.name% ���������%actor.g% � ��������%actor.g% ���������� ����.
mload obj 21200
give all .%actor.name%
wait 1
mecho ��������� ���� �������� ����� � ����� ����� ������� �� ����.
wait 1
mpurge %self%
~
#21204
������ ��������~
0 m 1
~
* ���� ����� �� ������
wait 1
if %amount% < 50
  wait 2
  say �������� �����!
  give %amount% ��� .%actor.name%
  halt
end
if %world.curobjs(21200)% >= 500
  wait 2
  say ��� ������ ��������, ���������!
  give %amount% ��� .%actor.name%
  halt
end
wait 2
say ���, ��������.
mload obj 21200
give all.������� .%actor.name%
~
#21205
������ ���������~
0 h 100
~
if !%actor.canbeseen%
  halt
end
wait 1
if %actor.clan% != ��� && %direction% == north
  calcuid gateroom 21200 room
  foreach guest %gateroom.pc%
    if (%guest.clan% != ���) && (%guest.canbeseen%)
      eval guests %guests% %guest.name%,
    end
  done
  ���� ���������� ������, ������! %guests% ����� ����������!
end
~
#21206
�� ��������� ������~
0 l 30
~
wait 1
makeuid killer %actor.id%
if ( %actor.vnum% != -1 )
  makeuid killer %actor.leader%
end
if %killer.clan% != ���
  switch %random.5%
    case 1
      ���� �� ��� ����-�-�-���!
    break
    case 2
      ���� �����-�-�-���, ������-�-�-���!
    break
    case 3
      ���� ��������� ������, � ������!
    break
    case 4
      ���� ����! ����! ����! �� ��������� ������, �������� ��� �����!
    break
    case 5
      ���� �� �������� ���������� ����! ������� ����� �� ����!
    break
  done
end
mdamage %self% %self.hitp%
~
#21207
�������� �����~
2 c 4
��������~
if !%arg.contains(����)%
  %send% %actor% ��� �� ������ ��������?
  halt
end
wait 1
if %actor.clan% != ���
  %send% %actor% �� �������� �� �����, �� ������ �� ���������.
  %echoaround% %actor% %actor.name% �������%actor.g% �� �����, �� ������ �� ���������.
  halt
end
%send% %actor% �� �������� �� ����� � ������ �� ��-�� ����� ���������� ������.
%echoaround% %actor% %actor.name% �������%actor.g% �� ����� � ������ �� ��-�� ����� ���������� ������.
wat 21254 %echo% ���������� �����-�� ������.
wait 1s
%echo% �������� ���� ���� ��������� �����, ������ � �� ���� �� ��� �����.
%echo% ��������� ������ ����� �������� ����� � � �������, �������� ��� �� ��.
wat 21254 %echo% �������� �������� ����� ������������ � ���.
wat 21254 %echo% ����� ����� �������� � �������, �������� ��� �� �����.
%door% 21214 south room 21254
%door% 21254 north room 21214
wait 5s
%echo% ������ �����, � ����� � �� ���, ��������� �� ���� �����, ������ ������.
wat 21254 %echo% ������ �����, ��������� ��� �� �����, ��������� �� �����.
wat 21254 %echo% ����� ������ �� ���� ������� �����.
%door% 21214 south purge
%door% 21254 north purge
~
#21208
�������� ����������~
2 c 100
��������~
if !%arg.contains(����������)%
  %send% %actor% ��� �� ������ ��������?
  halt
end
wait 1
%send% %actor% � ������ ��������� �� �����, �� �������� ���������� ����.
%echoaround% %actor% %actor.name%, � ������ ��������� �� �����, �������%actor.g% ���������� ����.
if %actor.clan% != ���
  %echo% �������, �� ������ �� ���������.
  halt
end
%echo% ������-�� ������ �������� ������.
wat 21214 %echo% ���������� �����-�� ������.
wait 1s
wat 21214 %echo% �������� ���� ���� ��������� �����, ������ � �� ���� �� ��� �����.
wat 21214 %echo% ��������� ������ ����� �������� ����� � � �������, �������� ��� �� ��.
%echo% �������� �������� ����� ������������ � ���.
%echo% ����� ����� �������� � �������, �������� ��� �� �����.
%door% 21214 south room 21254
%door% 21254 north room 21214
wait 5s
wat 21214 %echo% ������ �����, � ����� � �� ���, ��������� �� ���� �����, ������ ������.
%echo% ������ �����, ��������� ��� �� �����, ��������� �� �����.
%echo% ����� ������ �� ���� ������� �����.
%door% 21214 south purge
%door% 21254 north purge
~
#21209
������ ����� �� �������~
0 d 100
����~
wait 1
if %world.curobjs(21213)% > 4 || %actor.clan% != ���
  ��� .%actor.name%
  halt
end
%load% obj 21213
%echo% %self.iname% ������ �� ������� ����.
���� all.���� .%actor.name%
~
#21210
������ � ����� ������~
0 bh 100
~
foreach victim %self.pc%
  if %victim.affect(����������)%
    wait 1
    � ��� ��� ��, %victim.name%, ������%victim.g%?
    � ��� ���� ���� ����� ������! ��, ��� ����� �� ���� ������! ����� ����!
    wait 5s
    if ((%victim.realroom% != %self.realroom%) || (!%victim.affect(����������)%))
      halt
    end
    � ��, � ���� ������������!
    %force% %victim% wake
    %force% %victim% stand
    %send% %victim% %self.name% ��� ��� �������� �����, �� �� ����-�� ��������.
    %echoaround% %victim% %self.name% ��� %victim.dname% �������� �����, ��%victim.g% �� ����-�� �������%victim.g%.
    wait 1
    %force% %victim% n
    %force% %victim% n
    %force% %victim% sit
  end
done
~
#21211
����� �����~
2 c 1
�����������~
if (%actor.clan% == ���)
  %send% %actor% �� ����������� ���������� �� �������� � ��� ��� �������...
  %echoaround% %actor% %actor.name% ����������� �������%actor.u% �� ��������.
  eval roomnum 21200
  while (%roomnum% < 21258)
    calcuid curroom %roomnum% room
    foreach player %curroom.all%
      if ((%player.vnum% < 21200) || (%player.vnum% > 21299)) && (%player.canbeseen%)
        %send% %actor% &C%curroom.name%&n: &R%player.name%&n
      end
    done
    eval roomnum %roomnum%+1
  done
else
  return 0
end
~
#21212
����� ������~
0 j 100
~
wait 1s
%echo% %self.iname% ����� ����� ��������� ��������.
wait 1s
foreach item %self.objs%
  wait 1s
  %echo% %self.iname% �������� ������ %item.vname%.
  wait 1
  %purge% %item%
done
wait 1s
%echo% %self.iname% �� ����� ���� ������� ��� ��� �� ������.
����� all
foreach item %self.objs%
  wait 1s
  %echo% %self.iname% �������� ������ %item.vname%.
  wait 1
  %purge% %item%
done
wait 1s
if ((%actor.canbeseen%) && (%actor.realroom% == %self.realroom%))
  %send% %actor% %self.iname% �������� ������� � ��������� �� ���, ������ �������.
  %echoaround% %actor% %self.iname% �������� ������� � ��������� �� %actor.vname%, ������ �������.
else
  %echo% %self.iname% �������� �������.
end
���� all
~
#21213
���� ����~
2 b 1
~
if %exist.mob(21215)%
  calcuid layun 21215 mob
  eval rnd %random.4%
  switch %rnd%
    case 1
      %force% %layun% say ������ ������ ����. �� �� ��� �������, �������� ���� ���������
      %force% %layun% �����
    break
    case 2
      %force% %layun% ���� ����! ���� ��� �����!? ���� �� ������� ��!?
    break
    case 3
      wzoneecho %self.vnum% _��������������� ��� ���������� �� ��������� ������� ���������.
    break
    case 4
      wzoneecho %self.vnum% _������ ����� ��������� �� ������� - ������, ���-�� ��� ����� �����.
    break
  done
end
~
#21216
������ ������~
0 h 100
~
wait 1
%load% mob %self.vnum%
%purge% %self%
~
#21217
������ ������������ ��� �����~
0 n 100
~
*������ ������������ ��� ����� | Mobiles | Load | 100
� ���� ������ ���������������, ���� ���������� ���������
� ����� ������, ���� �� ������ �� ���� ����� ��������
� ���� ����� �������� ����� - ����� ��������
~
#21218
������� �����~
2 z 100
~
* ������� ����� | Rooms | Auto | 100
%echo% ��������� ����� ���������� �����...
foreach victim %self.npc%
  if ((%victim.vnum% > 21200) && (%victim.vnum% < 21299))
    %echo% _ ������� %victim.vname%, ������ �����
    %purge% %victim%
  end
done
~
#21219
���� ����� �� �����~
2 z 100
~
* ���� ����� �� ����� | Rooms | Auto | 100
if ((!%mobtoload%) || (!%roomtoload%))
  halt
end
wat %roomtoload% wload mob %mobtoload%
calcuid victim %mobtoload% mob
wat %roomtoload% wecho %victim.iname% ������%victim.u% ���� ������-�� ������.
~
#21220
������� �� �������~
0 d 100
*~
* ������� �� ������� | Mobiles | Speech | 100 | *
if (%actor.vnum% != -1)
  halt
end
switch %speech%
  case ������
    wait 3
    � ������ � ��������� ������ - ����� �������.
    � ������ � ����������� ���� ������ - ����� ����.
    � ���� ������� ����� ���� � ���������� - ����� ������.
    � ���� ������ ����� - ����� �����.
    � ���� � ������������� ��������� ����� ������ - ����� ��������.
    � ��� ������� � ������ ������� ����� - ����� �����.
    � ����� � ������ � ��� ����������� ��������� - ����� ����.
    � � �������� � ������ ���� ������� - ����� ����.
    � �������� ������������ ��������� ���� ������� �����.
    � ���� ����� �������� ����� - ����� ��������.
    halt
  break
  case ��������
    set i 21240
    while (%i% < 21249)
      calcuid troom %i% room
      exec 21218 %troom.id%
      eval i %i%+1
    done
    calcuid troom 21298 room
    exec 21218 %troom.id%
  break
  case �������
    set mobtoload 21225
  break
  case ����
    set mobtoload 21224
  break
  case ������
    set mobtoload 21221
  break
  case �����
    set mobtoload 21222
  break
  case ��������
    set mobtoload 21223
  break
  case �����
    set mobtoload 21226
  break
  case ����
    set mobtoload 21227
    set roomtoload 21244
    calcuid troom 21216 room
    remote roomtoload %troom.id%
    remote mobtoload %troom.id%
    exec 21219 %troom.id%
    set mobtoload 21228
    remote mobtoload %troom.id%
    exec 21219 %troom.id%
    set mobtoload 21229
    set roomtoload 21298
    remote roomtoload %troom.id%
    remote mobtoload %troom.id%
    exec 21219 %troom.id%
    exec 21219 %troom.id%
    wait 3
    � �������!
    halt
  break
  case ����
    set mobtoload 21230
  break
  case �����
    set mobtoload 21231
  break
done
wait 3
� �������!
if (!%mobtoload%)
  halt
end
eval roomtoload 21239+%random.9%
calcuid troom 21216 room
remote roomtoload %troom.id%
remote mobtoload %troom.id%
exec 21219 %troom.id%
~
$~
