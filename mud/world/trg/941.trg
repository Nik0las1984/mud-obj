#94100
���� ���� ���~
2 c 0
����~
if !(%arg.contains(���)%)
  wsend %actor% ���� ���?
  return 0
  halt
else
  wsend %actor% �������� �� ����, �� ������ ���� �����.
  wechoaround %actor% %actor.iname% ��������%actor.g%, ����%actor.g% ������ � ���� � �����%actor.g% ���� ���.
  wait 1s
  wecho ������ ������� �������
  wait 1s
  wecho ����� ��� ������� �������
  wait 1s
  wecho � ��� ���� ����...
  wait 1s
  wsend %actor% ������ ���� � ������� � �� ������ � ���.
  %teleport% %actor% 94101
  wechoaround %actor% %actor.iname% � ����� ������ ��������%actor.u% � �������.
  %door% 94100 down room 94101
  wait 1s
  wecho �� ��������, �������� � ���...
  wecho �� �������� ���� ��������
  wecho � ������� ������, �������� � ������.
  wait 1s
  %teleport% all 94101
end
~
#94101
������ ��� 1~
2 c 0
������~
if !(%arg.contains(���)%)
  wsend %actor% ���� ������?
  return 0
  halt
else
  wsend %actor% ����������� � ��� ��������, �� �������� ������.
  wechoaround %actor% %actor.iname% ��������%actor.g%, �������%actor.u% � ��� �������� � ������%actor.q% ������.
  %teleport% %actor% 94102
end
~
#94102
������ ��� 2~
2 c 0
������~
if !(%arg.contains(���)%)
  wsend %actor% ���� ������?
  return 0
  halt
else
  wsend %actor% ����������� � ��� ��������, �� �������� ������.
  wechoaround %actor% %actor.iname% ��������%actor.g%, �������%actor.u% � ��� �������� � ������%actor.q% ������.
  %teleport% %actor% 94103
end
~
#94103
������ ��� 3~
2 c 0
������~
if !(%arg.contains(���)%)
  wsend %actor% ���� ������?
  return 0
  halt
else
  wsend %actor% ����������� � ��� ��������, �� �������� ������.
  wechoaround %actor% %actor.iname% ��������%actor.g%, �������%actor.u% � ��� �������� � ������%actor.q% ������.
  %teleport% %actor% 94104
end
~
#94104
������ ��� 4 ����������~
2 c 0
������~
if !(%arg.contains(���)%)
  wsend %actor% ���� ������?
  return 0
  halt
else
  if %actor.class% == 2
    wsend %actor% ����������� � ��� ��������, �� �������� ������.
    wechoaround %actor% %actor.iname% ��������%actor.g%, �������%actor.u% � ��� �������� � ������%actor.q% ������.
    %teleport% %actor% 94105
  else
    wsend %actor% ����������� � ��� ��������, �� �������� ������.
    wechoaround %actor% %actor.iname% ��������%actor.g%, �������%actor.u% � ��� �������� � ������%actor.q% ������.
    wait 5
    switch %random.3%
    break
    case 1
      wsend %actor% �������� ���������, �� �������� ���� ����. ������ ���������� ����� �����.
      wsend %actor% ������ �����, �������� ��� ����, ����������, ��������� ��� ��� �����.
      wsend %actor% �� ������. ��� ����� ����. ������ ����. ��������� � �����.
      wdamage %actor% %actor.maxhitp%+1
      wecho ������ ����� ����������, ��������� %actor.vname% ��� �����.
      wecho ������� �����, �� ��������� ����������� ���� �� ��� �������.
    break
    case 2
      wsend %actor% �������� ���������, �� �������� ���� ����. ������ ���������� ����� �����.
      wsend %actor% ������ �����, �������� ��� ����, ����������, ��������� ��� ��� �����.
      wsend %actor% �� ������. ��� ����� ����. ������ ����. ��������� � �����.
      wdamage %actor% %actor.maxhitp%+10
      wecho ������ ����� ����������, ��������� %actor.vname% ��� �����.
      wecho ������� �����, �� ��������� ����������� ���� �� ��� �������.
    break
    case 3
      wsend %actor% �������� ���������, �� �������� ���� ����. ������ ���������� ����� �����.
      wsend %actor% ������ �����, �������� ��� ����, ����������, ��������� ��� ��� �����.
      wsend %actor% �� ������. ��� ����� ����. ������ ����. ��������� � �����.
      wdamage %actor% %actor.maxhitp%
      wecho ������ ����� ����������, ��������� %actor.vname% ��� �����.
      wecho ������� �����, �� ��������� ����������� ���� �� ��� �������.
    break
  done
end
end
~
#94105
��������� ���~
2 c 0
��������~
if !(%arg.contains(���)%)
  wsend %actor% �������� ���?
  return 0
  halt
else
  wsend %actor% �������� �� ����, �� ��������� �� ������.
  wait 1s
  wecho ������ ������� �������
  wait 1s
  wecho ����� ��� ������� �������
  wait 1s
  wecho � ��� ���� ����...
  wait 1s
  wsend %actor% � ��� ������ ��������� � ������ ��� ���������.
  calcuid lazzhopa 94104 room
  detach 94104 %lazzhopa.id%
  attach 94106 %lazzhopa.id%
end
~
#94106
������ ��� 4 ��������~
2 c 0
������~
if !(%arg.contains(���)%)
  wsend %actor% ���� ������?
  return 0
  halt
else
  wsend %actor% ����������� � ��� ��������, �� �������� ������.
  wechoaround %actor% %actor.iname% ��������%actor.g%, �������%actor.u% � ��� �������� � ������%actor.q% ������.
  %teleport% %actor% 94105
end
~
#94107
��������� ����~
2 c 0
�������~
if !(%arg.contains(����)%)
  wsend %actor% ������� ���?
  return 0
  halt
else
  wsend %actor% �� ���������� ������� ����.
  wechoaround %actor% %actor.iname% �������%actor.u% ������� ����.
  wecho &y������ �����, �������� ��� ����, ����������, ���� �� ��������� ��� ��� �����.&n
  eval gopa %actor.pc% 
  foreach i %gopa% 
    %damage% %i% 1000
  done
  wecho ��� � ���� ���������� �� ������, ������� ��� ����� ���������.
end
~
#94108
�������� � �����~
2 c 0
�������~
if !(%arg.contains(�����)%)
  wsend %actor% ������� ���?
  return 0
  halt
else
  wsend %actor% �������� �� ����, �� ������ ������� �����
  wechoaround %actor% %actor.iname% ��������%actor.g% �� ���� � �����%actor.g% ������� �����.
  wecho ������ ����� ����������, ������� ������.
  wsend %actor% �� ��������� �������� ������.
  switch %random.9%
  break
  case 1
    %load% obj 909
  break
  case 2
    %load% obj 910
  break
  case 3
    %load% obj 911
  break
  case 4
    %load% obj 912
  break
  case 5
    %load% obj 913
  break
  case 6
    %load% obj 914
  break
  case 7
    %load% obj 915
  break
  case 8
    %load% obj 916
  break
  case 9
    %load% obj 917
  break
done
end
detach 94108 %self.id%
~
#94109
���� ��� 2~
2 c 0
����~
if !(%arg.contains(���)%)
  wsend %actor% ���� ���?
  return 0
  halt
else
  wsend %actor% �������� �� ����, �� ������ ���� �����.
  wechoaround %actor% %actor.iname% ��������%actor.g%, ����%actor.g% ������ � ���� � �����%actor.g% ���� ���.
  wait 1s
  wecho ������ ������� �������
  wait 1s
  wecho ����� ��� ������� �������
  wait 1s
  wecho � ��� ���� ����...
  wait 1s
  wsend %actor% ������ ���� � ������� � �� ������ � ���.
  %teleport% %actor% 94107
  wechoaround %actor% %actor.iname% � ����� ������ ��������%actor.u% � �������.
  %door% 94107 down room 94108
  wait 1s
  wecho �� ��������, �������� � ���...
  wecho �� �������� ���� ��������
  wecho � ������� ������, �������� � ������.
  wait 1s
  %teleport% all 94108
end
~
#94110
��������� �� ����~
2 g 0
~
eval victim %random.char%
switch %random.3%
  case 1
    if (%random.100% <= 31)
      wsend %victim% ������� ����������� �� �������, �� ��������� �� ������� �����. 
      wechoaround %victim% %victim.iname%, ������ ������, ��������%victim.g% �� �������� �����.
      wsend %victim% ���� ��������� �� ��� � ����� � ���.
      wechoaround %victim% ���� ����� ������� ���� �����, ������ %victim.vname% � ���.	
      wait 1
      %victim.wait(2)%
      %victim.position(6)%
    end
  break
  case 2
    if (%random.100% <= 25)
      wsend %victim% ������� ����������� �� �������, �� ��������� �� ������� �����. 
      wechoaround %victim% %victim.iname%, ������ ������, ��������%victim.g% �� �������� �����.
      wsend %victim% �������� ����� ��������� � �������. �� ������ ������� ����.
      wechoaround %victim% �������� ����� ��������� � �������, %victim.iname% ����� ��� ��������.
      wait 1
      %victim.position(4)%
    end
  break
  case 3
    if (%random.100% <= 10)
      wsend %victim% ������� ����������� �� �������, �� ��������� �� ������� �����.
      wechoaround %victim% %victim.iname%, ������ ������, ��������%victim.g% �� �������� �����.
      wsend %victim% ���� ������� ���� �������� ���� � ���� ���. �� ��������.
      wechoaround %victim% ���� ��������� � ��� %victim.rname%, ����� ��������.
      wait 1
      %victim.position(2)%
    end
  break
done
detach 94109 %self.id%
~
#94111
��������� ������~
2 c 0
���������~
if !(%arg.contains(������)%)
  wsend %actor% ��������� ���?
  return 0
  halt
else
  if %actor.class% == 2
    wsend %actor% �� ��������� ������, ��� �� � ��� �� ������.
    wechoaround  %actor.iname% � ��������� �������� ������.
    %door% 94113 west room 94114
    wait 1
    wecho ___&K������ ������ ������ ��������� �������.&n
    wload mob 94116	
    detach 94111 %self.id%
  else
    wsend %actor% �� ��������� ������. � ������� ������� ������ �������.
    foreach pc %self.pc%
      wdamage %pc% %random.1000%
    done
  end
end
~
#94112
���� ���������~
0 r 100
~
switch %random.6%
break
case 1
  say ������!
  wait 1
  say ���� �������� ����.
  say �������� ����� ��� ����� � ��, ������ �������.
  say ��� ��� �������?
  say �� ������ ����� ��� ������, �� �� ������ � ������.
break
case 2
  say ������!
  wait 1
  say ����� ��� �� �����������.
  say ����� �������.
  say ��� ��������.
  say �� ������ ����� ��� ������, �� �� ������ � ������.
break
case 3
  say ������!
  wait 1
  say ������ ������� ��� �������?
  say ������� ���, ��� ��� ������ ����.
  say ������ ������ - ������ ������!
break
case 4
  say ������!
  wait 1
  say ������ ��� ���������?
  say �� � ��� ��� ��������.
  say � � ��� ���!
  say � ����� ���� ������ ���.
break
case 5
  say ������!
  wait 1
  say ��, ������� ���� ��������?
  say �� � ������ ��� ����!
  say �� � ������ ����� �� ���� �������.
break
case 6
  say ������!
  wait 1
  say ��! ��! �������.
  wait 2
  say � ��, ���, �� ����.
  say �����.
  say ������ �������� �����, � �� ��� ��.
break
done
~
#94113
������ ����~
0 f 100
~
switch %random.4%
  case 1
    if (( %random.100% < 25 ) && ( %world.curobjs(94100)% < %world.maxobj(94100)%  ))
      mload obj 94100
    end 
  break
  case 2
    if (( %random.100% < 25 ) && ( %world.curobjs(94101)% < %world.maxobj(94101)% ))
      mload obj 94101
    end 
  break
  case 3
    if (( %random.100% < 15 ) && ( %world.curobjs(94102)% < %world.maxobj(94102)% ))
      mload obj 94102
    end 
  break
  case 4
    if (( %random.100% < 25 ) && ( %world.curobjs(94103)% < %world.maxobj(94103)% ))
      mload obj 94103
    end 
  break
  default 
    halt
  break 
done
~
#94114
������ ��������~
0 f 100
~
switch %random.4%
  case 1
    if (( %random.100% < 25 ) && ( %world.curobjs(94108)% < %world.maxobj(94108)%  ))
      mload obj 94108
    end 
  break
  case 2
    if (( %random.100% < 25 ) && ( %world.curobjs(94109)% < %world.maxobj(94109)% ))
      mload obj 94109
    end 
  break
  case 3
    if (( %random.100% < 25 ) && ( %world.curobjs(94110)% < %world.maxobj(94110)% ))
      mload obj 94110
    end 
  break
  case 4
    if (( %random.100% < 25 ) && ( %world.curobjs(94111)% < %world.maxobj(94111)% ))
      mload obj 94111
    end 
  break
  default 
    halt
  break 
done
~
#94115
���� ������~
0 f 100
~
switch %random.3%
  case 1
    if (( %random.100% < 25 ) && ( %world.curobjs(94112)% < %world.maxobj(94112)%  ))
      mload obj 94112
    end 
  break
  case 2
    if (( %random.100% < 25 ) && ( %world.curobjs(94113)% < %world.maxobj(94113)% ))
      mload obj 94113
    end 
  break
  case 3
    if (( %random.100% < 25 ) && ( %world.curobjs(94114)% < %world.maxobj(94114)% ))
      mload obj 94114
    end 
  break
  default 
    halt
  break 
done
~
#94116
������ ��������~
0 f 100
~
switch %random.3%
  case 1
    if (( %random.100% < 25 ) && ( %world.curobjs(94115)% < %world.maxobj(94115)%  ))
      mload obj 94115
    end 
  break
  case 2
    if (( %random.100% < 25 ) && ( %world.curobjs(94116)% < %world.maxobj(94116)% ))
      mload obj 94116
    end 
  break
  case 3
    if (( %random.100% < 25 ) && ( %world.curobjs(94117)% < %world.maxobj(94117)% ))
      mload obj 94117
    end 
  break
  default 
    halt
  break 
done
~
#94117
���� �����~
0 f 100
~
switch %random.2%
  case 1
    if (( %random.100% < 25 ) && ( %world.curobjs(94132)% < %world.maxobj(94132)%  ))
      mload obj 94132
    end 
  break
  case 2
    if (( %random.100% < 25 ) && ( %world.curobjs(94133)% < %world.maxobj(94133)% ))
      mload obj 94133
    end 
  break
  default 
    halt
  break 
done
~
#94118
����� � ����~
0 r 100
~
wait 1
emote ���������� ������� � ���������� �� ��� ���������� ��������
wait 1
say ����������, ����.
say ���� �� �����������, ��� �� ���� ���� ���������.
say �� ��� �� �� ���, �� ������ � ������, ������, ������.
~
#94119
������ ����~
0 d 0
������~
say ������� ���� ���� ������� �����
say �� ������, ��� ������ �������� ����
say � ����� �����
say ����� ����, ����.
wait 1
say ���� ������, � � �������������� ����� ��� ������� ���
say �� �������� � ����, ��� ���� ������������
emote �������������� ����������
calcuid baba 94153 mob
detach 94118 %baba.id%
~
#94120
����� ����~
0 f 100
~
mecho _&R��������� ������ �� �������� ����� ���� ��������&n
mecho _&W� ������� ������ ����� ������ �� ���.&n
calcuid baha 94117 mob
mteleport %baha% 94197
mload obj 94136
switch %random.3%
  case 1
    if ((%world.curobjs(94134)% < %world.maxobj(94134)%) && (25 >= %random.100%))
      mload obj 94134
    end 
  break
  case 2
    if ((%world.curobjs(94135)% < %world.maxobj(94135)%) && (25 >= %random.100%))
      mload obj 94135
    end 
  break
  case 3
    if ((%world.curobjs(94137)% < %world.maxobj(94137)%) && (25 >= %random.100%))
      mload obj 94137
    end 
  break
  default 
    halt
  break 
done
~
#94121
���� �����~
0 f 100
~
if (( %random.100% < 25 ) && ( %world.curobjs(94138)% < %world.maxobj(94138)%  ))
  mload obj 94138
end 
~
#94122
���� ������~
0 f 100
~
if (( %random.100% < 25 ) && ( %world.curobjs(94139)% < %world.maxobj(94139)%  ))
  mload obj 94139
end 
~
#94123
������ ������~
0 f 100
~
calcuid pelena 94104 room
attach 94124 %pelena.id%
exec 94124 %pelena.id%
detach 94124 %pelena.id%
if (( %random.100% < 25 ) && ( %world.curobjs(94104)% < %world.maxobj(94104)%  ))
  mload obj 94104
end 
~
#94124
������ �����~
2 z 0
~
%door% 94113 west room 94114 
~
#94125
���� ������� �������~
0 j 100
~
if (%object.vnum% != 94136)
  msend %actor% �� �� ����� ���� ����!
  return 0
  halt
end
wait 1
if %object.vnum% == 94136
  wait 1
  mjunk all
  wait 5
  emote ���������� ����� �������������� �������
  say � ������ � ����!
  wait 1s
  switch %random.4%
  break
  case 1
    if %world.curobjs(94140)% < %world.maxobj(94140)%
      mecho ������� ������� � ������ &W����������� ������.&n
      mecho ������ �� ������ ������ ������� ������� ������.
      wait 1s
      mload obj 94140
      ���� ������ %actor.iname%
      say ��� ��� ��� �� ����������. ���� ��� ���� �� ������.
    else
      say ������ �� � ���� �������������, �� ��� ������ � ����
    end
  break
  case 2
    if %world.curobjs(94141)% < %world.maxobj(94141)%
      mecho ������� ������� � ������ &R����.&n
      mecho &R����&n ��������� ���������� ������.
      wait 1s
      mload obj 94141
      ���� ���� %actor.iname%
      say ��� ��� ��� �� ����������. ���� �� ���� �� ������.
    else
      say ������ �� � ���� �������������, �� ��� ������ � ����
    end
  break
  case 3
    if %world.curobjs(94142)% < %world.maxobj(94142)%
      mecho ������� ������� � ���� &W������ �����������.&n
      mecho &W������&n ��������� ����� ��������
      wait 1s
      mload obj 94142
      ���� ������ %actor.iname%
      say ��� ��� ��� �� ����������. ���� ��� ���� �� ������.
    else
      say ������ �� � ���� �������������, �� ��� ������ � ����
    end
  break
done
calcuid pent 94191 room
attach 94126 %pent.id%
exec 94126 %pent.id%
detach 94126 %pent.id%
end
~
#94126
����� �� ����~
2 z 0
~
wportal 94100 2
~
#94127
����� ����~
2 f 100
~
*����� �����������
wdoor 94100 down purge
wdoor 94107 down purge
wdoor 94113 west purge
*������ ��� � ������� �����
calcuid obval 94104 room
detach 94106 %obval.id%
attach 94104 %obval.id%
*������� �����
calcuid tupik 94107 room
attach 94108 %tupik.id%
*������ ����
calcuid zmei 94109 room
attach 94110 %zmei.id%
*������ ���� ���������
calcuid baba 94153 mob
attach 94118 %baba.id%
attach 94111 %world.room(94113)%
~
#94128
������ �����~
0 f 100
~
if (( %random.100% < 25 ) && ( %world.curobjs(94118)% < %world.maxobj(94118)%  ))
  mecho ����� �������, �� ����� � ���� ������. ����� ����������.
  mload obj 94118
end 
~
#94129
������� ������~
0 f 100
~
if (( %random.100% < 25 ) && ( %world.curobjs(94119)% < %world.maxobj(94119)%  ))
  mecho ���� �������, �� ����� � ��� �������. �� ��������� �� ������.
  mload obj 94119
end 
~
#94130
��� �����~
0 f 100
~
if (( %random.100% < 25 ) && ( %world.curobjs(94120)% < %world.maxobj(94120)%  ))
  mecho ���� ����, �� ����� � ���� �������. �� ��������� �� ������.
  mload obj 94120
end 
~
#94131
�������� ���~
0 f 100
~
if (( %random.100% < 25 ) && ( %world.curobjs(94121)% < %world.maxobj(94121)%  ))
  mecho ���� ��������, �� ����� � ���� ��������. � ��������� ����������.
  mload obj 94121
end 
~
#94132
����� ������~
0 f 100
~
switch %random.2%
  case 1
    if (( %random.100% < 25 ) && ( %world.curobjs(94122)% < %world.maxobj(94122)%  ))
      mecho ���� ������, �� ����� � ���� ������. � ����� � ��� ����� ���������� �� ������.
      mload obj 94122
    end 
  break
  case 2
    if (( %random.100% < 25 ) && ( %world.curobjs(94123)% < %world.maxobj(94123)%  ))
      mecho ���� ������, �� ����� � ���� ������. ������ �� � ���� ���.
      mload obj 94123
    end 
  break
  default 
    halt
  break 
done
~
#94133
�������� ���~
0 f 100
~
if (( %random.100% < 25 ) && ( %world.curobjs(94124)% < %world.maxobj(94124)%  ))
  mecho � ����� ������ ������� ���������. �� ����� � ����� ������.
  mload obj 94124
end 
~
#94134
������������ ���~
0 f 100
~
if (( %random.100% < 25 ) && ( %world.curobjs(94125)% < %world.maxobj(94125)%  ))
  mecho ������ ������������ ��������� ���������, �� ����������� ������ � �� ��������.
  mload obj 94125
end 
~
#94135
�������� ���~
0 f 100
~
if (( %random.100% < 25 ) && ( %world.curobjs(94126)% < %world.maxobj(94126)%  ))
  mecho ������, �������� ��������� ���������� � �������. ������ �� ����������.
  mload obj 94126
end 
~
#94136
����������� ���~
0 f 100
~
if (( %random.100% < 25 ) && ( %world.curobjs(94127)% < %world.maxobj(94127)%  ))
  mload obj 94127
end 
~
#94137
��������� ����� ���~
0 f 100
~
if (( %random.100% < 25 ) && ( %world.curobjs(94128)% < %world.maxobj(94128)%  ))
  mload obj 94128
end 
~
#94138
���������� ���~
0 f 100
~
if (( %random.100% < 25 ) && ( %world.curobjs(94129)% < %world.maxobj(94129)%  ))
  mecho _&R��������� ������ �� ������ ������ ����������� � ����.&n
  mecho �� ����� ���� � ����������� ������.
  mload obj 94129
end 
~
#94139
���������� ��� ���~
0 f 100
~
if (( %random.100% < 25 ) && ( %world.curobjs(94130)% < %world.maxobj(94130)%  ))
  mecho ���� ���� �� ���������� ����� � ���� ������, �� �� ������
  mecho _&R�� �������� ����� � ��������� ������� ������&n
  mload obj 94130
end 
~
#94140
�������� ���~
0 f 100
~
if (( %random.100% < 25 ) && ( %world.curobjs(94131)% < %world.maxobj(94131)%  ))
  mecho �������� ��� ������� �������, �� �� ��� ����� ����� � ���� ������.
  mload obj 94131
end 
~
#94141
��������� ������~
0 k 100
~
set victim %random.char%
if !%victim%
  halt
end
switch %random.3%
  case 1
    set victim2 %random.char%
    set victim3 %random.char%
    if (!(%victim2%) && !(%victim3%))
      halt
    end
    mecho ___%self.iname% �����%self.g% ���������� ����!
    mecho ___&R�������� ������ ����������� � ������ �������.&n
    mechoaround %victim% ___&R�������� ������ �������� %victim.vname%!&n
    msend %victim% ___&R�������� ������ �������� ���.&n
    eval dmg 200+%random.200%
    mdamage %victim% %dmg%
    mechoaround %victim2% ___&R�������� ������ �������� %victim2.vname%!&n
    msend %victim2% ___&R�������� ������ �������� ���.&n
    eval dmg 200+%random.200%
    mdamage %victim2% %dmg%
    mechoaround %victim3%___&R�������� ������ �������� %victim3.vname%!&n
    msend %victim3% ___&R�������� ������ �������� ���.&n
    eval dmg 200+%random.200%
    mdamage %victim3% %dmg%
  break
  case 2
    mechoaround %victim% ___&y������ �������� ������,&n &r�������� �����&n &y��������� �� ��� �������&n
    dg_cast '���� ����'
    foreach victim %self.pc%
      msend %victim% ___&R����� ������� ���!&n
      mechoaround %victim% ___&R����� ������� %victim.vname%!&n
      mdamage %victim% 340
    done
  break
  case 3
    msend %victim% ___&r������ ��������� ������ ������ ������ ���.&n
    mechoaround %victim% ___&r������ ��������� ������ ������ ������ %victim.vname%.&n
    eval damag %random.450%
    mdamage %victim% %damag%
  break
done
~
#94142
���� ���� ��������~
0 k 40
~
set victim %random.char%
if !%victim%
  halt
end
switch %random.3%
  case 1
    msend %victim% ___&R������ ����� %self.rname% ����� ��� � ���!&n
    mechoaround %victim% ___&G���������� ���� %self.rname% ���� %victim.vname% � ���!&n
    mdamage %victim% 275
    %victim.position(6)%
    %victim.wait(2)%
  break
  case 2
    msend %victim% ___&R������ ����� %self.rname% �������� ���!&n
    mechoaround %victim% ___&c%self.iname% ������� %victim.vname%!&n
    mdamage %victim% 175
    %victim.position(3)%
    %victim.wait(2)%
  break
  case 3
    mechoaround %victim% ___&g%self.iname% �������� ��������� ������ �� ����� �����!&n
    dg_cast '��� ����'
    foreach victim %self.pc%
      msend %victim% ___&g������� �������� ���� ����, �������� ����!&n
      mechoaround %victim% ___&g��������� ������ �������� ����� �� ���� %victim.rname%!&n
      mdamage %victim% 150
    done
  break
done
~
#94143
���� ��� ��������~
0 k 100
~
if %self.position% < 7
  halt
end
eval rip %random.10%
switch %rip%
  case 1
    mecho %self.name% �����������%self.g% ������� ����������!
    dg_cast '��� �����'
  break
  case 2
    mecho %self.name% �����������%self.g% ������� ����������!
    dg_cast '��� ����'
  break
  case 3
    mecho %self.name% �����������%self.g% ������� ����������!
    dg_cast '��� ���'
  break
  default
    mecho %self.name% �����������%self.g% ������� ����������!
    if %self.hitp% < 3000
      dg_cast '�������'
    end
  break
done
~
#94144
���� ���� ����~
0 k 100
~
eval rip %random.10%
switch %rip%
  case 1
    mecho ___&K���� ������ ��� ����������, ����� ����� ������, ����� ������� ����!&n
    dg_cast '��� ����'    
  break
  case 2
    mecho ___&K������ �������� �� ��� ���� ����!&n
    dg_cast '��� ���' 
  break
  case 3
    mecho ___&K������ ���������� ������������� ��������!&n
    dg_cast '���� ����'
  break
  case 4
    mecho ___&K������ ���������� ������������� ��������, ����� ��� ������ ���������!&n
    dg_cast '���������'
  break
done
~
#94145
������ �������� �� ����~
0 d 100
����~

~
$
$
