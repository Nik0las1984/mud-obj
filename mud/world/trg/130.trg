#13000
���� � �������� ������� ����������~
2 c 100
*~
*���� � �������� ������� ���������� | Rooms | Command | 100 | *
if ((%cmd.mudcommand% != east) && (%cmd.mudcommand% != ������))
  return 0
  halt
end
calcuid rasp 13000 mob
if (%rasp.global(free4all)% == 1)
  set LetHimIn 1
else
  set LetHimIn 0
  set i 1
  while (%i% < 13)
    set temp wfighter%i%
    eval smth %rasp.global(%temp%)%
    if ((%actor.iname% == %smth%) || (%actor% == %smth%))
      set LetHimIn 1
    end
    eval i %i%+1
  done
end
if (%rasp.global(battle)% == 1)
  set LetHimIn 0
end
set i 0
while (%i% <= 20)
  eval item %actor.eq(%i%)%
  if (%item.vnum% > 0)
    set BanMsg 1
  end
  eval i %i%+1
done
if (%BanMsg% > 0)
  set LetHimIn 0
  %send% %actor% ����� ����� ������ : '�� ��� ������� ���� ���� ������ ������ � �����!'
end
if ((%LetHimIn% == 1) || (%actor.level% > 30) || (%actor% == %rasp.global(master)%))
  %send% %actor% �� ��������� �� ������.
  %echoaround% %actor% %actor.vname% ���������� �� ������.
  %teleport% %actor% 13026 horse
  %echoaround% %actor% %actor.vname% ���������� � ������.
  calcuid volsh 13005 mob
  set incoming %actor%
  remote incoming %volsh.id%
  exec 13017 %volsh.id%
else
  %send% %actor% ����� ����� ��������� ��� ����.
end
return 1
~
#13001
���� � ��������� ������� ����������~
2 c 100
*~
*���� � ��������� ������� ���������� | Rooms | Command | 100 | *
if ((%cmd.mudcommand% != west) && (%cmd.mudcommand% != �����))
  return 0
  halt
end
calcuid rasp 13000 mob
if (%rasp.global(free4all)% == 1)
  set LetHimIn 1
else
  set LetHimIn 0
  set i 1
  while (%i% < 13)
    set temp efighter%i%
    eval smth %rasp.global(%temp%)%
    if ((%actor.iname% == %smth%) || (%actor% == %smth%))
      set LetHimIn 1
    end
    eval i %i%+1
  done
end
if (%rasp.global(battle)% == 1)
  set LetHimIn 0
end
set i 0
while (%i% <= 20)
  eval item %actor.eq(%i%)%
  if (%item.vnum% > 0)
    set BanMsg 1
  end
  eval i %i%+1
done
if (%BanMsg% > 0)
  set LetHimIn 0
  %send% %actor% ����� ����� ������ : '�� ��� ������� ���� ���� ������ ������ � �����!'
end
if ((%LetHimIn% == 1) || (%actor.level% > 30) || (%actor% == %rasp.global(master)%))
  %send% %actor% �� ��������� �� �����.
  %echoaround% %actor% %actor.vname% ���������� �� �����.
  %teleport% %actor% 13031 horse
  %echoaround% %actor% %actor.vname% ���������� � �������.
  calcuid volsh 13004 mob
  set incoming %actor%
  remote incoming %volsh.id%
  exec 13017 %volsh.id%
else
  %send% %actor% ����� ����� ��������� ��� ����.
end
return 1
~
#13002
����� ����� ��� ������������~
2 c 100
*~
*���� � ������� ������������� | Rooms | Command | 100 | *
calcuid rasp 13000 mob
if ((%actor% != %rasp.global(master)%) && (%actor.level% < 31))
  return 0
  halt
end
switch %cmd.mudcommand%
  case up
    case �����
      set fromdir �����
      set todir �����
      switch %self.vnum%
        case 13025
          case 13026
            case 13027
              case 13028
                case 13029
                  eval dest 13086
                break
              break
            break
          break
        break
        case 13030
          case 13031
            case 13032
              case 13033
                case 13034
                  eval dest 13094
                break
              break
            break
          break
        break
        default
          eval dest 13090
        break
      done
    break
  break
  case east
    case ������
      if (%self.vnum% == 13026)
        eval dest 13031
        set fromdir � ������
        set todir �� ������
      else 
        return 0
        halt
      end
    break
  break
  case west
    case �����
      if (%self.vnum% == 13031)
        eval dest 13026
        set fromdir � �������
        set todir �� �����
      else 
        return 0
        halt
      end
    break
  break
  default
    return 0
    halt
  break
done
%send% %actor% �� ��������� %todir%.
%echoaround% %actor% %actor.iname% ��%actor.y% %todir%.
%teleport% %actor% %dest% horse
%echoaround% %actor% %actor.iname% ����%actor.y% %fromdir%.
return 1
~
#13004
�������� � ��������������~
0 d 100
*~
*�������� � �������������� | Mobiles | Speech | 100 | *
wait 3
if ((%actor.level% <= 30) && (%actor.id% != %master.id%))
  if (%random.10% >= 7)
    say ��� ���������� ������ �������������� ������.
    say ����� ��� � ������ &W�����&n.
    say ��� �������, ������ ���.
  end
  halt
end
switch %speech.car%
  case ������
    ������� �������� �����!
    calcuid troom 13000 room
    exec 13008 %troom.id%
  break
  case ��������
    eval mastername %speech.words(2)%
    if (%actor.level% > 30) && (%mastername%)
      say � ����������! ����� ������ ������� ��� ���...
      unset master
      global mastername
      if %exist.obj(13000)%
        calcuid venok 13000 obj
        %purge% %venok%
      end
      %load% obj 13000
    else
      say �� ����!
      �����
    end
  break
  case ������
    set string %speech.cdr%
    attach 13045 %self.id%
    exec 13045 %self.id%
  break
  case ����
    attach 13010 %self.id%
    exec 13010 %self.id%
  break
  case �����
    attach 13005 %self.id%
    exec 13005 %self.id%
  break
  case ������
    set string %speech%
    attach 13038 %self.id%
    exec 13038 %self.id%
  break
  case ������
    attach 13016 %self.id%
    exec 13016 %self.id%
  break
  case ������
    attach 13026 %self.id%
    exec 13026 %self.id%
  break
  case �������
    eval dir %speech.words(2)%
    attach 13042 %self.id%
    exec 13042 %self.id%
  break
  case �������
    eval dir %speech.words(2)%
    attach 13041 %self.id%
    exec 13041 %self.id%
  break
  case �������
    eval dir %speech.words(2)%
    attach 13043 %self.id%
    exec 13043 %self.id%
  break
  case ������
    attach 13029 %self.id%
    exec 13029 %self.id%
  break
  case ������
    attach 13034 %self.id%
    exec 13034 %self.id%
  break
  case ��������
    calcuid wstr 13018 room
    calcuid estr 13006 room
    attach 13039 %wstr.id%
    attach 13039 %estr.id%
    exec 13039 %wstr.id%
    exec 13039 %estr.id%
  break
done
~
#13005
������� �����~
0 z 100
~
*������� ����� | Mobiles | Auto | 100
if (%battle% == 1)
  tell .%mastername% ��� ���� ��� ��� ����, �� ���?
  say ��� ���� ��� ��� ����, �� ���?
  halt
end
������� ��� ������ � ���! ��� �������� ����� ���� ������!
wait 1s
������� ������!
wait 1s
������� ���!
wait 1s
������� ���!
wait 1s
������� ����!
wait 1s
������� �������-�-�!
set battle 1
global battle
unset 13025
unset 13030
calcuid troom 13000 room
exec 13006 %troom.id%
detach 13005 %self.id%
~
#13006
��������� ������� ��� ���~
2 z 100
~
*��������� ������� ��� ��� | Rooms | Auto | 100
wait 3
%door% 13025 east room 13056
wat 13025 wecho �������� ������ �� ������!
%door% 13030 west room 13050
wat 13030 wecho �������� ������ �� �����!
%door% 13043 north purge
wat 13043 wecho ������ �� ����� ��������!
%door% 13063 south purge
wat 13063 wecho ������ �� �� ��������!
wait 3s
wat 13025 wecho ����� ����� ������: '��, ���� ������! �����, �������!'
wat 13025 wecho ��������� ���� ��������� ���������� ��� �� ���������.
wat 13025 wteleport all 13056
wat 13030 wecho ����� ����� ������: '��, ���� ������! �����, �������!'
wat 13030 wecho ��������� ���� ��������� ���������� ��� �� ���������.
wat 13030 wteleport all 13050
~
#13007
��������� ������� ����� ���~
2 fz 100
~
*��������� ������� ����� ��� | Rooms | Auto | 100
wait 3
%door% 13025 east purge
wat 13025 wecho ������ �� ������ ��������!
%door% 13025 north room 13026
wat 13025 wecho �������� ������ �� �����!
%door% 13026 south room 13025
wat 13026 wecho �������� ������ �� ��!
%door% 13030 west purge
wat 13030 wecho ������ �� ����� ��������!
%door% 13030 south room 13031
wat 13030 wecho �������� ������ �� ��!
%door% 13031 north room 13030
wat 13031 wecho �������� ������ �� �����!
calcuid wreadyroom 13025 room
attach 13009 %wreadyroom.id%
attach 13011 %wreadyroom.id%
calcuid ereadyroom 13030 room
attach 13009 %ereadyroom.id%
attach 13011 %ereadyroom.id%
%door% 13043 north room 13012
wat 13043 wecho �������� ������ �� �����!
%door% 13063 south room 13000
wat 13063 wecho �������� ������ �� ��!
~
#13008
������� �����~
2 z 100
~
*������� ����� | Rooms | Auto | 100
wait 3
set croom 13025
while (%croom% < 13066)
  wat %croom% wecho ��������� ������������� ����������� �����...
  calcuid here %croom% room
  foreach body %here.all%
    if ((%body.vnum% != -1) && (%body.vnum% != 13004) && (%body.vnum% != 13005) && (%body.vnum% != 13011))
      wat %croom% wecho ...��������� %body.vname%
      %purge% %body%
    end
  done
  eval temp %random.2%
  foreach man %here.pc%
    wat %croom% wsend %man% ...���������� ��� � �����
    wat %croom% wechoaround %man% ...���������� %man.vname% � �����
    if (%temp% == 1)
      %teleport% %man% 13006 horse
      %echoaround% %man% %man.vname% ���������� ���� � ������.
    else
      %teleport% %man% 13018 horse
      %echoaround% %man% %man.vname% ���������� ���� � �������.
    end
  done
  eval croom %croom%+1
done
calcuid bochka 13003 obj
%purge% %bochka%
calcuid bochka 13003 obj
%purge% %bochka%
wat 13025 wload obj 13003
wat 13030 wload obj 13003
~
#13009
��� ������~
2 d 0
��� ������~
*��� ������ | Rooms | Speech | 100 | ���
wait 3
if ((%speech.words(2)% != ������) || (%direction%))
  exec 13011 %self.id%
elseif (%speech.words(2)% == ������)
  switch %self.vnum%
    case 13025
      %door% 13026 south purge
      wat 13026 wecho ������ �� �� ��������!
      %door% 13025 north purge
      %echo% ������ �� ����� ��������!
    break
    case 13030
      %door% 13031 north purge
      wat 13031 wecho ������ �� ����� ��������!
      %door% 13030 south purge
      %echo% ������ �� �� ��������!
    break
  done
  calcuid rasp 13000 mob
  set %self.vnum% ready
  remote %self.vnum% %rasp.id%
  exec 13012 %rasp.id%
  detach 13009 %self.vnum%
end
~
#13010
������� ����~
0 z 100
~
*������� ���� | Mobiles | Auto | 100
if (%battle% == 1)
  ������� ��� ��������!
  set battle 0
  global battle
  calcuid troom 13000 room
  exec 13007 %troom.id%
  ������� ������ � ��������� �������!
else
  tell .%mastername% ��� ����� ��� �� ��� � �� ��������
  say ��� ����� ��� �� ��� � �� ��������
end
detach 13010 %self.id%
~
#13011
��� ������?~
2 g 100
~
*��� ������? | Rooms | Enter | 100
if (%actor.name%)
  wait 1
  %send% %actor% ������-�� ������ �����������: '��� ������?'
end
~
#13012
������ ������ � ����������~
0 z 100
~
*������ ������ � ���������� | Mobiles | Auto | 100
wait 3
if (%13025% == ready)
  ���� �������� ������ ������!
end
if (%13030% == ready)
  ���� ��������� ������ ������!
end
if ((%13025% == ready) && (%13030% == ready))
  say �� ������ ��������� ��� ����� ����������
  tell .%mastername% �� ������ ��������� ��� ����� ����������
  calcuid wroom 13025 room
  detach 13040 %wroom.vnum%
end
~
#13013
����� ����������~
1 n 100
~
*����� ���������� | Objects | Load | 100
wait 1
if (%world.curobjs(13000)% > %world.maxobj(13000)%)
  %purge% %self%
else
  %echo% %self.iname% ������ ��������� � ����� �����.
  calcuid croom %self.room% room
  eval temp %self.put(%croom.id%)%
end
detach 13013 %self.id%
~
#13014
����� �����~
1 j 100
~
*����� ����� | Objects | Wear | 100
calcuid rasp 13000 mob
wait 3
if (%actor.iname%)
  %echo% %self.iname% &Y�������� &M������������� &R������!&n
  set master %actor%
  set mastername %actor.iname%
  remote master %rasp.id%
  remote mastername %rasp.id%
  wait 3
  %force% %rasp% tell .%mastername% ��������� ����� ��� ���������� ��������. ����� &R�����&n
end
~
#13015
����� �����~
1 l 100
~
*����� ����� | Objects | Remove | 100
calcuid rasp 13000 mob
wait 3
%force% %rasp% tell .%rasp.global(mastername)% � � ����� ������ �� ������������, ���� �� ������� ����� �������
%echo% %self.iname% &W����� ��������� ������ ����� ������!&n
rdelete master %rasp.id%
rdelete mastername %rasp.id%
~
#13016
������� ������~
0 z 100
~
*������� ������ : Mobiles : Auto : 100
eval num 1
while (%num% < 13)
  set wtemp wfighter%num%
  set etemp efighter%num%
  unset %etemp%
  unset %wtemp%
  eval num %num%+1
done
unset wlist
unset elist
unset wbiglist
unset ebiglist
*���������� ���������� �����
unset 13025
unset 13030
*��������� ������ ������, ��������� ������ �����
%door% 13025 north room 13026
%door% 13026 south room 13025
calcuid wreadyroom 13025 room
attach 13009 %wreadyroom.id%
*������������� ������
detach 13040 %wreadyroom.id%
%door% 13030 south room 13031
%door% 13031 north room 13030
calcuid ereadyroom 13030 room
attach 13009 %ereadyroom.id%
say ������ ����� ��������, ������ ������� �������
tell .%mastername% ������ ����� ��������, ������ ������� �������
detach 13016 %self.id%
~
#13017
����� � ����������~
0 z 100
~
*����� � ���������� | Mobiles | Auto | 100
if ((!%actor%) && (%incoming%))
  eval victim %incoming%
  unset incoming
else
  eval victim %actor%
end
wait 3
if (!%victim.name%)
  halt
end
if (%LetHimIn%)
  if (!%victim.rentable%)
    ������� %victim.iname% � �����!
    say ���%victim.y% �����!
    dg_cast !����� ��������! %victim%
    halt
  end
  say ����� ����������, %victim.iname%!
  say ������ ������ ��� ������, ������� ��� ������
  :�������� �����
  foreach body %self.all%
    if ((%body.vnum% > 0) && (%body.leader% == %victim%))
      %purge% %body%
    end
  done
  eval temp %victim.dispel%
  eval temp %victim.hitp(%victim.maxhitp%)%
  eval temp %victim.restore%
  *dg_cast '�������' %victim% � �� ���������� ����� ����������
  dg_cast '��� ���' %victim%
  dg_cast '��� ���' %victim%
  say � ���� ����� &R��������&n ����������� ����������
else
  halt
end
~
#13018
����� � ������� ��������~
2 e 100
~
*����� � ������� �������� : Rooms : Enter PC : 100
calcuid rasp 13000 mob
if ((%actor.level% > 30) || (%actor% == %rasp.global(master)%))
  halt
end
wait 3
%echo% &K������ ������ ���������� � ����-��.&n
switch %actor.class%
  case 6
    case 12
      * �������� *
      * ����� *
      %echo% ������ ������, �������, � �� ��������, �� ������ � ������� �����������.
      %load% mob 13010
      %load% mob 13009
      %load% mob 13008
    break
  break
  case 8
    * ������������ *
    %echo% ������ ������, �������, � �� ��������, �� ������ � ������� �����������.
    %echo% �� ������� ������� ������� ��������� ����� ����� !
    %load% mob 13010
    calcuid voevoda 13010 mob
    %load% mob 13009
    calcuid bravman 13009 mob
    %load% mob 13008
    calcuid justguy 13008 mob
    %load% mob 13007
    calcuid poslush 13007 mob
    eval dam %voevoda.maxhitp%+100
    %echo% %voevoda.iname% ����� � ����� ���� � ������ ������.
    %damage% %voevoda% %dam%
    %echo% %bravman.iname% ����� � ����� ���� � ������ ������.
    %damage% %bravman% %dam%
    %echo% %justguy.iname% ����� � ����� ���� � ������ ������.
    %damage% %justguy% %dam%
    %echo% %poslush.iname% ��������� �������� � �����-������ ���� �� ������.
  break
done
~
#13019
����� ����������~
0 f 100
~
*����� ���������� : Mobiles : Death : 100
%echo% &K�������, ������ ������ ������� ��� ������, �������, ������ �� ����������.&n
%load% mob 13007
~
#13020
������ ��������� ����������~
0 c 1
��������~
*������ ��������� ���������� : Mobiles : Command : 100 : ��������
wait 3
mjunk all
%load% obj 2188
%load% obj 2182
%load% obj 2005
%load% obj 2031
%load% obj 2049
foreach itm %self.objs%
  eval tmp %itm.effect(+����������)%
  eval tmp %itm.effect(+!�����)%
  eval tmp %itm.effect(+!�������)%
done
switch %actor.class%
  * ���� *
  case 4
    %load% obj 1901
    %load% obj 1904
    %load% obj 1907
    %load% obj 1910
    foreach it %self.objs%
      eval tmp %it.effect(+���������� ��� ����)%
      eval tmp %it.effect(+����������)%
      eval tmp %it.effect(+!�����)%
    done
    * ���� *
    case 2
      %load% obj 13013
      %load% obj 13014
      %load% obj 13015
      %load% obj 13018
      %load% obj 13019
      %load% obj 13022
    break
  break
  * ����� *
  case 3
    %load% obj 13019
    %load% obj 13023
    %load% obj 13024
    %load% obj 13026
    %load% obj 13027
    %load% obj 13028
    %load% obj 13029
  break
  * ���� *
  case 5
    %load% obj 13010
    %load% obj 13011
    %load% obj 13013
    %load% obj 13014
    %load% obj 13015
    %load% obj 13016
    %load% obj 13019
    %load% obj 13025
    %load% obj 13029
  break
  * ������ *
  case 9
    %load% obj 13010
    %load% obj 13011
    %load% obj 13013
    %load% obj 13014
    %load% obj 13015
    %load% obj 13016
    %load% obj 13017
    %load% obj 13018
    %load% obj 13019
    %load% obj 13025
    %load% obj 13026
    %load% obj 13027
    %load% obj 13029
  break
  * ���� *
  case 10
    %load% obj 13030
    %load% obj 13012
    %load% obj 13010
    %load% obj 13011
    %load% obj 13013
    %load% obj 13014
    %load% obj 13015
    %load% obj 13016
    %load% obj 13019
    %load% obj 13025
    %load% obj 13029
  break
  * ���� *
  case 11
    %load% obj 13010
    %load% obj 13011
    %load% obj 13013
    %load% obj 13014
    %load% obj 13015
    %load% obj 13016
    %load% obj 13017
    %load% obj 13018
    %load% obj 13019
    %load% obj 13024
    %load% obj 13025
    %load% obj 13026
    %load% obj 13027
    %load% obj 13028
    %load% obj 13029
  break
  * ���� *
  case 12
    %load% obj 13013
    set i 1
    while (%i% <= 10)
      %load% obj 13014
      eval i %i%+1
    done
    %load% obj 13015
    %load% obj 13016
    %load% obj 13018
    %load% obj 13019
    %load% obj 13029
  break
  default
    %load% obj 13012
    %load% obj 13020
    %load% obj 13021
  break
done
attach 13022 %self.id%
exec 13022 %self.id%
if (%actor.class% == 13)
  eval runenum 600
  while (%runenum% < 646)
    if ((%runenum% != 627) && (%runenum% != 628) && (%runenum% != 631) && (%runenum% != 633) && (%runenum% != 637) && (%runenum% != 644))
      %load% obj %runenum%
    end
    eval runenum %runenum%+1
  done
  %load% obj 2191
  calcuid chest 2191 obj
  eval tmp %chest.effect(+���������� ��� ����)%
  eval tmp %chest.effect(+����������)%
  eval tmp %chest.effect(+!�����)%
  eval tmp %chest.effect(+!�������)%
  foreach item %self.objs%
    %item.effect(+���������� ��� ����)%
    if (%item.vnum% != 2191)
      eval temp %item.put(%chest%)%
    end
  done
  ���� ������ .%actor.name%
end
drop all
~
#13021
������� �������� � ���������~
0 n 100
~
*������� �������� � ��������� : Mobiles : Load : 100
wait 1s
%load% obj 13017
wait 1
������ ���������
~
#13022
���������� ���� � ���������~
0 z 100
~
*���������� ���� � ��������� : Mobiles : Auto : 100
foreach item %self.objs%
  eval tmp %item.put(%actor%)%
done
%send%       %actor% %self.iname% ��������� ��� ������� � �����������.
%echoaround% %actor% %self.iname% ��������� %actor.dname% ������� � �����������.
detach 13022 %self.id%
~
#13023
�������� ����� �� �����~
0 j 100
~
*�������� ����� �� ����� : Mobiles : Receive : 100
%send% %actor% ������ ���� %object.vname% ����!
%send% %actor% ���� ���� ������ �� �����! ������ ���� ��������!
return 0
~
#13024
��������� ������~
1 c 1
��~
*��������� ������ : Objects : Command : 1 : ��
switch %cmd%
  case ��
    case ���
      case ����
        case �����
          wait 3
          %send% %actor% _&W��������� �� ��������&n:
          %send% %actor% 1. &R��������         &n- ��������/������ ������, ������������ � ���� �� ���� ���� ����.
          %send% %actor% 2. &R�������� <�|�> <���> [<���2> ... <���12>] &n- ��������� ������ �����
          %send% %actor% 3. &R��������         &n- �������� ������ ����� (���� ��� ������� ����� �������)
          %send% %actor% 4. &R����������       &n- �������� ���������� � ��������������� ������
          %send% %actor% 5. &R��������� <�|�|���> &n- ������� ������� ���������� ��� �������� ������
          %send% %actor% 6. &R��������� <�|�|���> &n- ������� ������� ���������� ��� �������� ������
          %send% %actor% 7. &R�������          &n- ������ ��� ����� ������� 5 ������
          %send% %actor% 8. &R������           &n- ���������� ���, ������� ������ � �����
          %send% %actor% 9. &R�������� <�|�>   &n- �������� ����������� ���� �� ������
          %send% %actor% 10.&R��������         &n- ���������� ����� �� ���������, �������� ���������� � ��������� 
          %send% %actor% _                     � ������ ����������.
          %send% %actor% 11.&R��������         &n- ����� ������� �����
          %send% %actor% 12.&R��������         &n- ������ ������ ����� (������������)
          %send% %actor% 13.&R�������� <�����> &n- ������ �� ��� ���� ����� (����� � � !���� �������)
        break
      break
    break
  break
  case ���
    case ����
      case �����
        case ������
          case �������
            case ��������
              wait 3
              calcuid rasp 13000 mob
              attach 13016 %rasp.id%
              exec 13016 %rasp.id%
            break
          break
        break
      break
    break
  break
  case ���
    case ����
      case �����
        case ������
          case �������
            case ��������
              wait 3
              set string %arg%
              calcuid rasp 13000 mob
              attach 13045 %rasp.id%
              exec 13045 %rasp.id%
            break
          break
        break
      break
    break
  break
  case ���
    case ����
      case �����
        case ������
          case �������
            case ��������
              wait 3
              set message %arg%
              calcuid troom 13030 room
              remote message %troom.id%
              exec 13025 %troom.id%
            break
          break
        break
      break
    break
  break
  case ���
    case ����
      case �����
        case ������
          case �������
            case ��������
              wait 3
              calcuid rasp 13000 mob
              attach 13034 %rasp.id%
              exec 13034 %rasp.id%
            break
          break
        break
      break
    break
  break
  case ����
    case �����
      case ������
        case �������
          case ��������
            wait 3
            calcuid rasp 13000 mob
            %force% %rasp% ������� �������� �����!
            calcuid troom 13000 room
            exec 13008 %troom.id%
          break
        break
      break
    break
  break
  case ������
    case �������
      wait 3
      calcuid rasp 13000 mob
      attach 13005 %rasp.id%
      exec 13005 %rasp.id%
    break
  break
  case �����
    case ������
      wait 3
      calcuid rasp 13000 mob
      attach 13010 %rasp.id%
      exec 13010 %rasp.id%
    break
  break
  case ���
    case ����
      case �����
        case ������
          case �������
            case ��������
              wait 3
              calcuid rasp 13000 mob
              attach 13026 %rasp.id%
              exec 13026 %rasp.id%
            break
          break
        break
      break
    break
  break
  case ���
    case ����
      case �����
        case ������
          case �������
            case ��������
              wait 3
              eval dir %arg.car%
              calcuid rasp 13000 mob
              attach 13042 %rasp.id%
              exec 13042 %rasp.id%
            break
          break
        break
      break
    break
  break
  case ����
    case �����
      case ������
        case �������
          case ��������
            case ���������
              case ����������
                wait 3
                calcuid wstr 13018 room
                calcuid estr 13006 room
                attach 13039 %wstr.id%
                attach 13039 %estr.id%
                exec 13039 %wstr.id%
                exec 13039 %estr.id%
              break
            break
          break
        break
      break
    break
  break  
  case ����
    case �����
      case ������
        case �������
          case ��������
            case ���������
              wait 3
              eval dir %arg.car%
              calcuid rasp 13000 mob
              attach 13041 %rasp.id%
              exec 13041 %rasp.id%
            break
          break
        break
      break
    break
  break
  case �����
    case ������
      case �������
        case ��������
          case ���������
            wait 3
            eval dir %arg.car%
            calcuid rasp 13000 mob
            attach 13043 %rasp.id%
            exec 13043 %rasp.id%
          break
        break
      break
    break
  break
  case ��������
    wait 3
    calcuid rasp 13000 mob
    attach 13029 %rasp.id%
    exec 13029 %rasp.id%
  break
  case ���
    case ����
      case �����
        case ������
          case �������
            case ��������
              set string ������ %arg%
              calcuid rasp 13000 mob
              attach 13038 %rasp.id%
              exec 13038 %rasp.id%
            break
          break
        break
      break
    break
  break
  default
    return 0
  break
done
~
#13025
������� ������~
2 z 100
~
%echo% 13245
*������� ������ : Rooms : Auto : 100
if (%message%)
  wzoneecho 13025 &G������������� ������: '%message%'&n
end
~
#13026
������� ������~
0 z 100
~
*������� ������ : Mobiles : Auto : 100
if ((!%wfighter1%) || (!%efighter1%))
  tell .%mastername% ��� ������ ����� ��� � ����� ������ ��������� �����
  say ��� ������ ����� ��� � ����� ������ ��������� �����
  halt
end
������� �������� ������: %wlist%
if (%13025% == ready)
  ���� ...������ � ���
end
������� ��������� ������: %elist%
if (%13030% == ready)
  ���� ...������ � ���
end
if (%battle% == 1)
  ������� � ������ ������ ���� ���
end
detach 13026 %self.id%
~
#13027
������ - ���� ��� ����~
1 b 100
~
*������ - ���� ��� ���� : Objects : Random : 100
if ((%self.room% < 13000) || (%self.room% > 13099))
  wait 3
  %echo% %self.iname% ������� � ������� ���������� ����� ��������.
  %purge% %self%
end
~
#13028
������ - �����~
1 c 2
�����~
*������ - ����� : Objects : Command : 100 : �����
wait 3
if ((%startroom%) && %actor.name% && %actor.rentable%)
  %send%       %actor% %self.iname% �������� ����� ������, ������� ���.
  %echoaround% %actor% %self.iname% �������� ����� ������, � %actor.iname% �����!
  %teleport% %actor% %startroom% horse
  wait 3
  %send%       %actor% �������� �����, �� ����������, ��� ��������� ������ � ������ �����.
  %echoaround% %actor% %actor.iname% ������%actor.u% ����� �� ������� �����.
  wait 3
  %echo% %self.iname% ������� � ������� ���������� ����� ��������.
  %purge% %self%
end
~
#13029
������� ������~
0 z 100
~
*������� ������ : Mobiles : Auto : 100
if (!%klubki%)
  tell .%mastername% ���������� ������ ���������� �� ��������� ������ ����-�������
  say ���������� ������ ���������� �� ��������� ������ ����-�������
  set klubki 1
  global klubki
  calcuid troom 13012 room
  attach 13030 %troom.id%
  exec 13030 %troom.id%
else
  tell .%mastername% ���������� ������ �������, ������ ���� ����� �� ������
  say ���������� ������ �������, ������ ���� ����� �� ������
  unset klubki
  calcuid troom 13012 room
  attach 13032 %troom.id%
  exec 13032 %troom.id%
end
detach 13029 %self.id%
~
#13030
������ - ��������~
2 z 100
~
*������ - �������� : Rooms : Auto : 100
eval RentsList1 4056 5000 6049 7038 8010 9007 13589 18253 24074 25076 27018 30266 32480 34404 35040 
eval RentsList2 49987 60036 60288 62001 63030 63671 64035 66069 68051 69091 72043 73050 75000 77053 85146
eval RentsList3 12662 14611 15906 20962 21017 21186 21211 23744 30423 35738 42103 58123 77622 85540 58300
set i 1
while (%RentsList1.words(%i%)%)
  wat %RentsList1.words(%i%)% wload obj 13001
  wat %RentsList2.words(%i%)% wload obj 13001
  wat %RentsList3.words(%i%)% wload obj 13001
  eval i %i% + 1
done
detach 13030 %self.id%
~
#13031
������ - �� �����~
1 g 100
~
*������ - �� ����� : Objects : Get : 100
if ((%actor.vnum% != -1) || (!%actor.rentable%))
  %send% %actor% ������� ����, � �� �������� �� �����!
  return 0
  halt
end
wait 1
eval temp %actor.wait(1)%
eval temp %self.effect(+����������)%
eval temp %self.effect(-!����������)%
eval temp %self.owner(%actor.uniq%)%
set startroom %self.room%
global startroom
%send%       %actor% %self.iname% �������� ����� ������ ����� � ��� � �����.
%echoaround% %actor% %self.iname% �������� ����� ������, � %actor.iname% �����%actor.q%!
%load% obj 13001
eval targetroom %random.2%*12+12988
%teleport% %actor% %targetroom% horse
wait 3
%send%       %actor% �������� �����, �� ����������, ��� ��������� ������ � ������ �����.
%echoaround% %actor% %actor.iname% ������%actor.u% ����� �� ������� �����.
*%send%       %actor% %self.iname% ������� � ������� ���������� ����� ��������.
*%purge% %self%
%send%       %actor% ��� �������� �� ������� ����� ����������� ������� &M�����&n.
attach 13028 %self.id%
detach 13031 %self.id%
~
#13032
������ - ���������~
2 z 100
~
*������ - ��������� : Rooms : Auto : 100
while (%exist.obj(13001)%)
  calcuid klubok 13001 obj
  if (%klubok.room%)
    wat %klubok.room% wecho ���������� ������ �����������, ������������� � ���������� ������.
    wait 1
    %purge% %klubok%
  else
    if (%exist.mob(13000)%)
      calcuid rasp 13000 mob
      %force% %rasp% ���� ��! ���-�� ���� ������ � �����!
    end
    halt
  end
done
~
#13033
������ - ����~
1 n 100
~
*������ - ���� : Objects : Load : 100
wait 3
%echo% %self.iname% ������ ��������� �� �����.
detach 13033 %self.id%
~
#13034
������� ������~
0 z 100
~
*������� ������ : Mobiles : Auto : 100
if (%wlist%)
  tell .%mastername% �������� ������: %wlist%
  say �������� ������: %wlist%
  if (%13025% == ready)
    tell .%mastername% ...������ � ���
    say ...������ � ���
  end
end
if (%elist%)
  tell .%mastername% ��������� ������: %elist%
  say ��������� ������: %elist%
  if (%13030% == ready)
    tell .%mastername% ...������ � ���
    say ...������ � ���
  end
end
if (%battle% == 1)
  tell .%mastername% ��� �������!
  say ��� �������!
else
  tell .%mastername% ��� ����������!
  say ��� ����������!
end
if (%klubki% == 1)
  tell .%mastername% ������ ��������
  say ������ ��������
else
  tell .%mastername% ������ ���������
  say ������ ���������
end
detach 13034 %self.id%
~
#13035
�������� �� �������~
1 c 4
����~
*�������� �� ������� : Objects : Command : 4 : ����
if ((%cmd.mudcommand% == ��������) && (%actor.position% > 6))
  %send% %actor% �� ������� �� ������� ���������� �������.
  eval temp %actor.position(6)%
  %echoaround% %actor% %actor.iname% ������%actor.g% �� �������.
  return 1
else
  return 0
end
~
#13036
��� ��������� - ���������� �����~
0 b 100
~
*��� ��������� - ���������� ����� : Mobiles : Random : 100
set target %random.pc%
if ((%self.fighting%) && (%target.name%))
  dg_cast '���� ����' %target%
  dg_cast '���� �����' %target%
  mecho &r������������ ��� �� ����� ���� ����� ������� �������� �� ������ ������������ ������� ����!&n
  mload mob 13013
  mload mob 13013
elseif ((%self.realroom% > 13040) && (%self.realroom% < 13066))
  mecho &r������������ ��� �� ����� ���� ����� ������� �������� �� ������ ������������ ������� ����!&n
  mload mob 13013
  mload mob 13013
end
~
#13037
����� ������� ����~
0 n 100
~
*����� ������� ���� : Mobiles : Load : 100
set dir 0
calcuid troom %self.realroom% room
switch %random.6%
  case 1
    set dir %troom.north%
  break
  case 2
    set dir %troom.east%
  break
  case 3
    set dir %troom.south%
  break
  case 4
    set dir %troom.west%
  break
  case 5
    set dir %troom.up%
  break
  default
    set dir %troom.down%
  break
done
if (%dir%)
  mecho ����� ������� ������� ��������� ���� ���!
  %dir%
  wait 2
  set target %random.pc%
  if (%target%)
    mkill %target%
  end
  wait 7s
  mpurge %self%
else
  calcuid zmey 13012 mob
  if (%zmey.fighting%)
    set target %zmey.fighting%
    mkill %target%
    wait 3s
  end
  wait 2
  mpurge %self%
end
~
#13038
������� ������~
0 z 100
~
*������� ������ : Mobiles : Auto : 100
wait 3
eval dir %string.words(2)%
eval dir %dir.mudcommand%
if ((%dir% != �����) && (%dir% != ������))
  tell .%mastername% ����� ��� ������? �������� ������� �����
  say ����� ��� ������? �������� ������� �����
elseif (!%string.words(3)%)
  tell .%mastername% � ���� �� �� ������ ���������� � ������ �� %dir%�?
  say � ���� �� �� ������ ���������� � ������ �� %dir%�?
else
  if (%dir% == �����)
    eval dl w
  else
    eval dl e
  end
  set wordNum 3
  while ((%string.words(%wordNum%)%) && (%wordNum% < 15))
    eval fnum %wordNum%-2
    set temp %dl%fighter%fnum%
    charuid id %string.words(%wordNum%)%
    if %id%
      eval %temp% %id%
      eval tname %id.iname%
      eval tmort %id.remort%
      switch %id.class%
        case 0
          set tclass ��
        break
        case 1
          set tclass ��
        break
        case 2
          set tclass ��
        break
        case 3
          set tclass ��
        break
        case 4
          set tclass ��
        break
        case 5
          set tclass ��
        break
        case 6
          set tclass ��
        break
        case 7
          set tclass ��
        break
        case 8
          set tclass ��
        break
        case 9
          set tclass ��
        break
        case 10
          set tclass ��
        break
        case 11
          set tclass ��
        break
        case 12
          set tclass ��
        break
        case 13
          set tclass ��
        break
      done
    else
      tell .%mastername% �������� '%string.words(%wordNum%)%' �� ������, ������ �� ��������!
      say �������� '%string.words(%wordNum%)%' �� ������, ������ �� ��������!
      eval num 1
      while (%num% < 13)
        if %dl% == w
          set wtemp wfighter%num%
          unset %wtemp%
        else
          set etemp efighter%num%
          unset %etemp%
        end
        eval num %num%+1
      done
      unset %dl%list
      unset %dl%biglist
      detach 13038 %self.id%
      halt
    end
    if (%list.strlen%)
      set list %list%, %tname%
      set biglist %biglist%, %tname% (%tclass% %tmort%)
    else
      set list %tname%
      set biglist %tname% (%tclass% %tmort%)
    end
    global %temp%
    eval wordNum %wordNum%+1
  done
  tell .%mastername% � ������ �� %dir%� �����: %list%
  say � ������ �� %dir%� �����: %list%
  eval temp %dl%list
  eval %temp% %list%
  global %temp%
  eval temp %dl%biglist
  eval %temp% %biglist%
  global %temp%
end
detach 13038 %self.id%
~
#13039
�������� ����������~
2 z 100
~
*�������� ���������� : Mobiles : Auto : 100
calcuid rasp 13000 mob
if ((!%rasp.global(wfighter1)%) || (!%rasp.global(efighter1)%))
  if (%self.vnum% == 13018)
    %force% %rasp% say ��� ������ ����� ��� � ����� ������ ��������� �����
    %force% %rasp% tell %rasp.global(mastername)% ��� ������ ����� ��� � ����� ������ ��������� �����
  end
  detach 13039 %self.id%
  halt
end
if (%self.vnum% == 13018)
  %force% %rasp% ���� ��������� ����������� ������ �� ������ �� ���������!
  %force% %rasp% ���� �� ���������� � ��� ��������� 5 �����!
  calcuid wroom 13025 room
  attach 13040 %wroom.id%
  exec 13040 %wroom.id%
  set side w
  set napr �� ������
elseif (%self.vnum% == 13006)
  set side e
  set napr �� �����
end
set i 1
while ((%rasp.global(%side%fighter%i%)%) && (%i% < 13))
  eval victim %rasp.global(%side%fighter%i%)%
  if (%victim.realroom% != %self.vnum%)
    if (%victim.vnum% != -1)
      *������ ���� - ������ ����������� ������� ������ ���������!
      %force% %rasp% mteleport .%victim% %self.vnum%
    else
      wat %victim.realroom% wsend %victim% ����� ����� ������� ���!
      wat %victim.realroom% wechoaround %victim% ����� ����� ������� %victim.vname% �� ���������!
      %teleport% %victim% %self.vnum%
    end
    %echoaround% %victim% ����� ����� ������� %victim.vname%!
    %send% %victim% ����� ����� ������ : '����� ����������, ��������� %napr%'
  end
  eval i %i%+1
done
detach 13039 %self.id%
~
#13040
������ �������~
2 z 100
~
*������ ������� : Rooms : Auto : 100
eval minutes 5
while (%minutes% > 0)
  wait 60s
  eval minutes %minutes%-1
  if (%minutes% > 1)
    wzoneecho %self.vnum% &r�� ��������� ���������� �������� %minutes% ������!&n
  elseif (%minutes% == 1)
    wzoneecho %self.vnum% &r�� ��������� ���������� �������� %minutes% ������!&n
  end
done
wzoneecho %self.vnum% &R�����, ���������� ��� ���������� ����������, �����!&n
wzoneecho %self.vnum% &R��� �� �����, ��� ��������!&n
calcuid rasp 13000 mob
if (%rasp.global(13025)% != ready)
  %door% 13026 south purge
  wat 13026 wecho ������ �� �� ��������!
  %door% 13025 north purge
  %echo% ������ �� ����� ��������!
  set 13025 ready
  remote 13025 %rasp.id%
end
if (%rasp.global(13030)% != ready)
  %door% 13031 north purge
  wat 13031 wecho ������ �� ����� ��������!
  %door% 13030 south purge
  wat 13030 wecho ������ �� �� ��������!
  set 13030 ready
  remote 13030 %rasp.id%
end
detach 13040 %self.vnum%
~
#13041
������� �������~
0 z 100
~
*������� ������� : Mobiles : Auto : 100
if (%dir.mudcommand%)
  eval dir %dir.mudcommand%
end
if ((%dir% != �����) && (%dir% != ������) && (%dir% != ���))
  tell %mastername% ���� ������� ������� ����� ��� "���", ��� �������?
  say ���� ������� ������� ����� ��� "���", ��� �������?
elseif (%dir% == �����)
  if (!%13025%)
    say � �� ������ ���� ��� �������
    tell %mastername% � �� ������ ���� ��� �������
    detach 13041 %self.id%
  end
  unset 13025
  %door% 13025 north room 13026
  %door% 13026 south room 13025
  calcuid wreadyroom 13025 room
  attach 13009 %wreadyroom.id%
  ������� ������ ������ � �������� ������� ��� ������� � ���
elseif (%dir% == ������)
  if (!%13030%)
    say � �� ������� ���� ��� �������
    tell %mastername% � �� ������� ���� ��� �������
    detach 13041 %self.id%
  end
  unset 13030
  %door% 13030 south room 13031
  %door% 13031 north room 13030
  calcuid ereadyroom 13030 room
  attach 13009 %ereadyroom.id%
  ������� ������ ������ � ��������� ������� ��� ������� � ���
elseif (%dir% == ���)
  set free4all 1
  global free4all
  unset 13025
  unset 13030
  calcuid wreadyroom 13025 room
  calcuid ereadyroom 13030 room
  detach 13009 %ereadyroom.id%
  detach 13011 %ereadyroom.id%
  detach 13009 %wreadyroom.id%
  detach 13011 %wreadyroom.id%
  %door% 13030 south room 13031
  %door% 13031 north room 13030
  %door% 13025 north room 13026
  %door% 13026 south room 13025
  ������� ������ �������� ������ � ����� �������� ����������!
end
detach 13041 %self.id%
~
#13042
������� �������~
0 z 100
~
*������� ������� : Mobiles : Auto : 100
eval dir %dir.mudcommand%
if ((%dir% != �����) && (%dir% != ������))
  say ����� ��� ������? �������� ������� �����
  tell %mastername% ����� ��� ������? �������� ������� �����
  detach 13042 %self.id%
elseif (%dir% == �����)
  ������� �������� ������ (%wlist%) ����������� �����������!
elseif (%dir% == ������)
  ������� ��������� ������ (%elist%) ����������� �����������!
end
wait 3
say �������� ���, ������ ������� �����, ������ �����!
tell %mastername% �������� ���, ������ ������� �����, ������ �����!
detach 13042 %self.id%
~
#13043
������� �������~
0 z 100
~
*������� ������� : Mobiles : Auto : 100
if (%dir.mudcommand%)
  eval dir %dir.mudcommand%
end
if ((%dir% != �����) && (%dir% != ������) && (%dir% != ���))
  tell %mastername% ���� ������� ������� ����� ��� "���", ��� �������?
  say ���� ������� ������� ����� ��� "���", ��� �������?
elseif (%dir% == �����)
  if (%13025%)
    say � �� ������ ���� ��� �������
    tell %mastername% � �� ������ ���� ��� �������
    detach 13043 %self.id%
  end
  set 13025 ready
  global 13025
  %door% 13026 south purge
  %door% 13025 north purge
  calcuid wreadyroom 13025 room
  attach 13009 %wreadyroom.id%
  attach 13011 %wreadyroom.id%
  ������� ������ � �������� ������� ��� ������� � ��� ������ ��������������
elseif (%dir% == ������)
  if (%13030%)
    say � �� ������� ���� ��� �������
    tell %mastername% � �� ������� ���� ��� �������
    detach 13043 %self.id%
  end
  set 13030 ready
  global 13030
  %door% 13031 north purge
  %door% 13030 south purge
  calcuid ereadyroom 13030 room
  attach 13009 %ereadyroom.id%
  attach 13011 %ereadyroom.id%
  ������� ������ � ��������� ������� ��� ������� � ��� ������ ��������������
elseif (%dir% == ���)
  set free4all 0
  global free4all
  set 13025 ready
  set 13030 ready
  global 13025
  global 13030
  calcuid wreadyroom 13025 room
  calcuid ereadyroom 13030 room
  attach 13009 %ereadyroom.id%
  attach 13011 %ereadyroom.id%
  attach 13009 %wreadyroom.id%
  attach 13011 %wreadyroom.id%
  %door% 13026 south purge
  %door% 13025 north purge
  %door% 13031 north purge
  %door% 13030 south purge
  ������� ������ � ����� �������� ���������� ������ ��������������!
end
detach 13043 %self.id%
~
#13044
�������� �� �����~
1 c 4
�����~
if (!%actor.iname%)
  %echo% ��� ��� ������� �� �����? ����� �������, ��!?
  halt
end
if (%actor.level% < 31)
  %send% %actor% �� ���������� ����� �� �����, �� � ��� ������ �� ����������.
  %echoaround% %actor% %actor.iname% ����������%actor.g% ����� �� �����, �� ������ �� ����� �� �����.
  halt
end
if %arg.contains(�����)%
  %echoaround% %actor% %actor.iname% �����������%actor.g% �� �����.
  if (%self.room% == 13090)
    %teleport% %actor% 100 horse
  else
    %teleport% %actor% 13090 horse
  end
  %echoaround% %actor% ���-�� ����� �� ����!
else
  %send% %actor% ���� �����?
end
~
#13045
������� ������~
0 z 100
~
*������� ������
wait 1
if (%string.car% == �����)
  set str %string.cdr%
else
  %send% %actor% ���������: ������ [����� <������1> <������2> ... <������N>]
  if (!%self.global(fight1)%)
    detach 13045 %self.id%
    halt
  end
  set counter 1
  while (%self.global(fight%counter%)%)
    %send% %actor% %self.global(fight%counter%)%
    eval counter %counter%+1
  done
  detach 13045 %self.id%
  halt
end
set amount %str.words%
if (%amount% < 3)
  say ������ ��� � ������ ������� ��� �� ������ �����.
  tell %mastername% ������ ��� � ������ ������� ��� �� ������ �����.
  detach 13045 %self.id%
  halt
end
set list %str%
set fightnum 0
���� � ���������� ���������: %list%
while (%amount% > 2)
  set opponent1 %list.words(%random.num(%amount%)%)%
  set counter 1
  unset newlist
  while (%list.words(%counter%)%)
    if (%list.words(%counter%)% != %opponent1%)
      eval newlist %newlist% %list.words(%counter%)%
    else
      eval amount %amount%-1
    end
    eval counter %counter%+1
  done
  set list %newlist%
  set opponent2 %list.words(%random.num(%amount%)%)%
  set counter 1
  unset newlist
  while (%list.words(%counter%)%)
    if (%list.words(%counter%)% != %opponent2%)
      eval newlist %newlist% %list.words(%counter%)%
    else
      eval amount %amount%-1
    end
    eval counter %counter%+1
  done
  set list %newlist%
  eval fightnum %fightnum%+1
  ���� ��� %fightnum%: %opponent1% - %opponent2%
  set fight%fightnum% ��� %fightnum%: %opponent1% - %opponent2%
  global fight%fightnum%
done
eval fightnum %fightnum%+1
if (%amount% == 2)
  ���� ��� %fightnum%: %list.words(2)% - %list.words(1)%
  set fight%fightnum% ��� %fightnum%: %list.words(2)% - %list.words(1)%
else
  set rndopponent %list%
  while (%rndopponent% == %list%)
    set rndopponent %str.words(%random.num(%str.words%)%)%
  done
  ���� ��� %fightnum%: %list% - %rndopponent% (�������������� ���)
  set fight%fightnum% ��� %fightnum%: %list% - %rndopponent% (�������������� ���)
end
global fight%fightnum%
detach 13045 %self.id%
~
#13046
����� � ��������~
2 e 100
~
wait 3
if (%world.curmobs(13006)% <= 50) && (%actor.level% < 31)
  if (%self.vnum% == 13027) && (%direction% == south)
    %echo% �� �������� ������������� ����� ������, ������� � ��������.
    %load% mob 13006
  elseif (%self.vnum% == 13032) && (%direction% == north)
    %echo% �� �������� ������������� ����� ������, ������� � ��������.
    %load% mob 13006
  end
end
~
#13047
�������� � �����������~
1 c 4
�������������~
*�������� � ����������� : Objects : Command : 4 : �������������
if ((%actor.vnum% != -1) || !%actor.name%)
  halt
end
eval temp %actor.wait(1)%
calcuid rasp 13000 mob
*����� ������ ������, ���� ��� - ����� ��� ���
set wlist %rasp.global(wbiglist)%
if (%wlist.strlen% < 1)
  set wlist �����������
else
  *��������� ���������� ������
  if (%rasp.global(13025)% == ready)
    set wready � ��� ������
  else
    set wready ��������� � ���
  end
end
set elist %rasp.global(ebiglist)%
if (%elist.strlen% < 1)
  set elist �����������
else
  if (%rasp.global(13030)% == ready)
    set eready � ��� ������
  else
    set eready ��������� � ���
  end
end
*��������� �� ���� �� ���
set battle %rasp.global(battle)%
*�������� �����
%send% %actor% ��������������, �� �������� ��������� �������:
%send% %actor% &W�������� ������: %wlist%&n
if ((%battle% < 1) && %wready.strlen%)
  %send% %actor% ...%wready%
end
%send% %actor% &W��������� ������: %elist%&n
if ((%battle% < 1) && %eready.strlen%)
  %send% %actor% ...%eready%
end
if ((%battle% > 0) && %wlist.strlen% && %elist.strlen%)
  %send% %actor% &R�������� ��� ��������!&n
end
~
#13055
����������� � ���������~
0 c 1
��� ���� ����� ������ dig~
*����������� � ��������� : Mobiles : Command : 1 : ��� ���� ����� ������ dig
eval temp %actor.wait(1)%
return 1
wait 3
%send% %actor% %self.iname% ������ ����� ����� ����.
%echoaround% %actor% %self.iname% ������ ����� ����� %actor.tname%.
%send% %actor% �� ������������, ����� �������� �����.
wait 5
set digging 1
global digging
exec 13059 %self.id%
~
#13056
����� �����~
0 fz 100
~
*����� ����� : Mobiles : Death : 100
eval newmob %self.vnum%+1
%load% mob %newmob%
calcuid enot %newmob% mob
if (%question%)
  remote question %enot.id%
end
if (%victim%)
  remote victim %enot.id%
end
~
#13057
������� � ������~
0 d 100
*~
*������� � ������ : Mobiles : Speech : 100 : *
wait 3
if (%actor.level% > 30)
  switch %speech.words(1)%
    case ����
      set name %speech.words(2)%
      if (!%name%)
        say ��� �� ����� �����?
      end
      if (%name.vnum% != -1)
        say ��� ���� ��%name.g% ���!
        halt
      end
      eval victim %name.id%
      global victim
      say ���� ���������! ������!
      %echo% %self.iname% ������ �� ��������.
      %teleport% %self% %victim.realroom%
      %echo% %self.iname% �������� ��-�� ���������.
      wait 3
      ���� .%victim.name%
    break
    case �����
      if (%victim%)
        ���� .%victim.name%
      else
        ����
      end
      ���� �
      unset victim
      unset question
      %echo% %self.iname% ������ �� ��������.
      %teleport% %self% 42740
      %echo% %self.iname% �������� ��-�� ���������.
    break
    case ����
      say �� ��-�-����
      if (%self.vnum% < 13058)
        exec 13056 %self.id%
      end
      wait 1
      %echo% %self.iname% �������� � ���������� � ����.
      %echo% �������� ������ � ����� �� ������������� ����� %self.rname%.
      %purge% %self%
    break
    case �������
      say ������� ����� ���� ���������:
      say __���� <���_����>____________
      say __�����______________________
      say __����_______________________
    break
  done
  halt
end
if ((%actor% != %victim%) || (!%question%))
  halt
end
if ((%question% == 1) && ((%speech% == 4) || (%speech% == ������)))
  set answerok 1
elseif ((%question% == 2) && ((%speech.contains(����)% && %speech.contains(������)%) || (%speech% == ����)))
  set answerok 1
elseif ((%question% == 3) && ((%speech% == �����) || (%speech% == ������)))
  set answerok 1
elseif ((%question% == 4) && ((%speech% == 10) || (%speech% == ������)))
  set answerok 1
elseif ((%question% == 5) && ((%speech% == 600) || (%speech% == ��������)))
  set answerok 1
end
if (%answerok%)
  ���
  say ������%actor.g%
  ���� ������ %victim.iname% ����� ������� �� ����������� ������
  ���� .%victim.name%
  ���� �
  unset victim
  unset question
  %echo% %self.iname% ������ �� ��������.
  %teleport% %self% 42740
  %echo% %self.iname% �������� ��-�� ���������.
else
  ���
  ���� ������ %victim.iname% ������� ������� �� ����������� ������
  exec 13059 %self.id%
end
~
#13058
���� �������~
0 n 100
~
*���� ������� : Mobiles : Load : 100
wait 3
if %victim%
  ���� .%victim.name%
else
  say ����� "�������" ����� ������ ���� � ����
end
detach 13058 %self.id%
~
#13059
���� ���������� ����������� ������~
0 bz 100
~
*���� ���������� ����������� ������ : Mobiles : Random,Auto : 100
if (!%victim%)
  halt
else
  if (%self.realroom% != %victim.realroom%)
    %echo% %self.iname% ������ �� ��������.
    %teleport% %self% 42740
    %teleport% %self% %victim.realroom%
    %echo% %self.iname% �������� ��-�� ���������.
  end
end
if ((%digging%) && (!%question%))
  set chance 100
  unset digging
else
  set chance %random.100%
end
if (%chance% < 75)
  halt
end
say ��������� �������, � �� ���� � �������
if (!%question%)
  eval question %random.5%
  global question
end
switch %question%
  case 1
    say ������� ����� ��� ���� ���?
  break
  case 2
    say ��� ���� �����?
  break
  case 3
    say ���o�o ����� ������ ����?
  break
  case 4
    say ������� ������ � ����� ���?
  break
  case 5
    say �� ������� ����� ������� ����-��������?
  break
done
���� .%vitim.name%
~
$~
