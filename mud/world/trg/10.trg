#1000
����� ������~
1 c 4
���������~
wait 1
%echo% � ������� ������ ������ ����� ������ � ����������� � ��������� ������� ������.
%purge% %self%
~
#1001
�����~
1 j 100
~
wait 1
* oechoarround %actor.name% ����� ������ ���� ������.
* osend %actor% �� ������ ������ ���� ������.
oecho ������ ��������� ����� ������.
~
#1002
������~
1 gj 100
~
if (%actor.name% != ������)
  return 0
  halt
end
~
#1003
new trigger~
2 d 100
�����~
wecho ����� ��!
log &R%actor.name% - �������!&n
~
#1004
������� ������������ ������� (1092) - �������~
1 j 100
~
if (!%actor.canbeseen%)
  halt
end
if (( %actor.level% > 30 ) && (%actor.vnum% == -1))
  return 1
  halt
end
if ( %actor.name% == ������� )
  return 1
  wait 1
  %echoaround% %actor% ���� ����� ������ ���������� �� ������ �������, � �� ������������� ��� ���� ���� �������� � ������� ���.
  %send% %actor% ���� ����� ������ � ���� �������� �� ������������ ������ �������.
else
  return 0
  %echoaround% %actor% %actor.name% �������%actor.u% �������� ������, �� ���� �������%actor.u% �� ������ �����.
  %send% %actor% �� ���������� �������� ������, �� ���� ����������� �� ������ ����� ��������.
  eval dmg %actor.hitp%/10
  odamage %actor% %dmg%
end
~
#1005
������....~
0 b 18
~
switch %random.22%
  case 1
    ����
  break
  case 2
    ���
    ����
  break
  case 3
    ����� �� ��������� ���� ������ - ������� �����!
    ����� � ��� ����� �������, ��� ���� �� ��������� �������!!!
  break
  case 4
    emot ������������ ������� : '� �� ���� ��� ������ ���������� ������, � ��-�� ����-�-���� ������� ������...'
  break
  case 5
    say � ���� - �� ��� �� ����� ��� �����? �������� �������... ���������..
    ����
  break
  case 6
    say � ��� ��������, �� ���� ����� - ��������?
    ������
  break
  case 7
    say ��, �� ���������, ����!!! ������ ���� �����!
  break
  case 8
    say �� �������, ������� - ���� � ������? 
    say �������� ������������ - �����-����-�����-����..
    say ���� �� ������ ��� ��������!
  break
  case 9
    say �� ��� �� ������� - �� �������� � �������, �� ��������...
    say �� �� ���� - ����������...
    �����
  break
  case 10
    say ��������� �������� �����!
    emot : ��������������������������������������!!!!!!!!!!!!!!!!!
  break
  case 11
    say ������� � �������, ������� ���������. ������� ��� �������� �������...
    wait 1
    say ��, � ��� ��� �, ������ ���� ��������� ��������.
  break
  case 12
    say ������-����, ������-����, � ����� ������� �... �... ���..
    �����
  break
  case 13
    ���
    �����
  break
  case 14
    %force% ��������� ����� ������
  break
  case 15
    say ��, ����������� ��� ������...
    emot : "���� �� �������� � ������� �����, ������������ ������� ����� �������..."
    wait 2
    say �� ��� ������ ����� �� ��� ����� ������... � � ������! ������! 
  break
  case 16
    emot : '�������� �������� � ��������, � � ������� ����� �������... ����� � ����� ����� ���� ���������� ������ �����...'
    ����
  break
  case 17
    eval target %random.pc%
    mforce ��������� ���� %target.name%
  break
  case 18
    say �� � ����� � ������� �������! ������� ���� "�����"! � � ����� ������� ��������!!!
  done
break
case 19
  eval target %random.pc%
  ���� %target.name%
break
case 20
  say ��, �� ���, �������! � ��� ��� �������������! ������� ������� ������ ����! � �� ��� ����� � �����!!!
break
case 21
  say ��� ������� ������� ���... �� �����������-��! ��� ������, ��� ������... ��� ��������� �������� :-(
  ����
break
case 22
  � ����� �� ������������� ��������� ����. ��� ������ ���� �������.
  � �� ���� ��� ���� ������� �� �� � ���. ����� ��� ������, ���� �ӣ �������������, � ���� �������.
  ���� �ӣ ����������, ��������.. ��������� ������ ������ ����� � ����� ��� �����.
break
done
~
#1006
������� �� ����� ����������.~
1 c 1
���������~
if %arg.contains(�������)%
  calcuid victim 193 mob
  %echoaround% %victim% �������� �������� ���� � ��������� ����� ����� � ������ ����!
  wait 1
  opurge %victim%
  halt
end
if %arg.contains(�������)%
  if %world.curmobs(193)% > 9
    %send% %actor% ������ �� ���������!
    halt
  end
  %echo%  �������� �������� ���� � ��������� ����� ������ ����� � ������ ����!
  oload mob 193
  halt
end
if %arg.contains(���������)%
  set cmmd %arg.cdr%
  oforce ���������.����� %cmmd%
  halt
end
~
#1007
zone reset~
2 c 0
zreset~
if %actor.name% == ������ || %actor.name% == ��������
  %world.zreset(%arg%)%
  log &c ������ ������� ����  %arg%.
end
~
#1008
�������~
0 i 100
~
wait 1s
eval target %self.people%
if %target% == %self%
  eval target2 %target.next_in_room%
  if %target2%
    mkill %target2%
  end
end
~
#1009
sword~
1 c 1
����������~
eval spch %arg.car%
eval string %arg.cdr%
if ( %spch% == ���� )
  oforce ��������.������� tell %string%
  halt
end
if ( %spch% == ����� )
  oforce ��������.������� ������� %string%
end
~
#1010
flash~
1 c 1
������~
eval victim %arg.car%
eval value %arg.cdr%
foreach target %self.all%
  eval string %target.iname%
  set targetname %string.car%
  if ( %targetname% == %victim% )
    log  &B%actor.name% �������� ������� �� %value% ����� �� %victim% !!!&g
    %echoaround% %target% ~~%actor.name% ������ ������ ������� � �������� ������ ������� �� ��������� ������ � %target.vname%!
    %send% %target% ~~%actor.name% ������ ������ ������� � �������� ������ ������� ����� � ���!
    eval buffer %target.hitp(-%value%)%
    odamage %target% %value%
    halt
  end
done
~
#1011
Rafail's wings~
1 c 1
���������~
wait 1
%echo% ����������� ������ �������� �������� � �� ������� �������� ����� ��������� �����.
~
#1012
��������� ����~
0 f 100
~
log %actor.name% - �������!
msend %actor% � ��-��-��...
~
#1013
skull~
1 c 1
������~
wait 1
if !%actor.name%
  oecho &W�����&n � ���� ����-�� ����������� � ������� ���������� : '&R%arg%&n'
  halt
else
  oecho &W�����&n � ���� %actor.rname% ����������� � ������� ���������� : '&R%arg%&n'
end
~
#1014
������ � ��������� )~
1 c 1
���~
eval victim %arg.car%
eval value %arg.cdr%
foreach target %self.all%
  eval string %target.iname%
  set targetname %string.car%
  if ( %targetname% == %victim% )
    %echoaround% %target%  %actor.name% ����������� �������� �� %target.vname% - � ������� ����� ��������� ������!
    %echoaround% %target%  %target.name% �����%actor.q% � ����� �������� ����.
    %send% %target%  %actor.name% ����������� �������� �� ��� � �������� ����� ������ ���� ����!
    eval buffer %target.wait(%value%)%
    halt
  end
done
~
#1015
���������������~
1 c 1
��������~
wait 1
%send% %actor% �� �������� ���� ���� ��������������.
%echoaround% %actor% %actor.name% �������%actor.g% ���� ���� �������������� (�� �������� � ����).
%echo% ������ ������!
~
#1016
rafail wings2~
1 c 1
loa~
oload %arg%
osend %actor% &R loa %arg% - &C������&n
log &R%actor.name% ����������� ���-���� ������� �������!&n
~
#1080
������ ���-��~
1 h 100
~
wait 1
foreach victim %self.pc%
  set dmg %victim.hitp%
  eval dmg1 %dmg%*2/3
  osend %victim% &G��� ������ ���-��!!!&n
  osend %victim% &G� ���� �� ����!!!&n
  odamage %victim% %dmg1%
done
~
#1081
��������~
1 gj 100
~
if %actor.name% != ������
  return 0
  halt
end
~
#1087
���������� ������� ����� � ���������~
1 bg 100
~
wait 1
set target %self.worn_by%
if !%target%
  set target %self.carried_by%
  if %target%
    if %target.vnum% != -1
      oecho ������� ������������ �������� � ��������� �� ��� %target.rname%.
      oforce %target% drop ������.�����
      halt
    end
    osend %target% ������� ����� ���������� � ���������� ���������� � ��� �� �����.
    set trash %target.eq(12)%
    if %trash%
      set trashname %trash.name%
      oforce %target% ����� %trashname.car%.%trashname.cdr%
    end
    oforce %target% ����� ����.�����
  end
  halt
end
eval dmg %target.maxhitp%/10
if ((%target.hitp% < %dmg%) && (%target.vnum% == -1))
  osend %target%  ������� � ��������� ��� � ������� �������������� ����������� � ����� ���.
  eval dmg %target.hitp%+2
  set empty 1
end
osend %target% �� ���������� �������� ������ ���!
eval erg %target.move%-15
if %erg% > 0
  eval buf %target.move(-%erg%)%
end
if ((%target.maxhitp% < 100) || (%target.vnum% != -1) || (%empty% == 1))
  osend %target% ���������� ������� ���������� ����������� � ������� � ����� ����.
  osend %target% ��������� ����� ����� �������� �� ������� ���.
  oechoaround %target% ���������� ������� ���������� ����������� � ������� � ���� %target.rname%.
  detach 1089 %self.id%
  oforce %target% ����� ������.�����
  oforce %target% drop ������.�����
  wait 1
  if (%target.vnum% == -1)
    odamage %target% %dmg%
  end
  attach 1089 %self.id%
  halt
end
odamage %target% %dmg%
switch %random.4%
  case 1
    osend %target% ������� ������� � ���� ��� � ��������� �� ��� ��������!
    oechoaround %target% %target.name% ��������%target.g%, ������� ������� � ��� ������������ ����� �������!
  break
  case 2
    osend %target% ������� � ������ �������� ������� ���� ��� �������!
    oechoaround %target% ������� � �������� �������� ����� ����� �� %target.rname%!
  break
  case 3
    osend %target% ���������� ������� � ������� �������� ����������� � ����� ��� � ����� �����!
    oechoaround %target% ������� ������ �����, ��������� ����� �� %target.rname%!
  break
  case 4
    osend %target% � ���� ��� ������� ����� ���������� �������!!! ������!!!
    oechoaround %target% ������� � �������� ��������� ����� � ������ %target.rname%!
  break
done
~
#1088
���������� ������ ������~
1 c 1
*~
set str �����
set str2 quit
if %str.contains(%cmd%)% || %str2.contains(%cmd%)%
  return 1
  osend %actor% ����� ���������� ������� �������� ��������� � ���� ������ ����� � �� ������ ���������!
  halt
end
return 0
~
#1089
������ ����� �������~
1 l 100
~
return 0
osend %actor% _����� ���������� ������� �������� ������� � ���� ���!
oechoaround %actor% _%actor.name% �������%actor.u% ����� ���������� �������, �� ���� �����%actor.g% �� ����.
~
#1090
weea~
1 c 1
���~
nop
~
#1091
������� ���� - �������~
1 j 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != �������
  osend %actor% ����������� �� �������� ������ ���� ���������, �� �����������.
  return 0
  halt
end
~
#1092
������� �������� �������~
1 p 100
~
if %actor.level% > 30
  return 1
  halt
end
if %actor.realroom% < 10000
  osend %actor% �� ���� �� ������� ����� - �� ��� � �� ������ ������� ��������.
  return 0
  halt
end
oechoaround %actor% %actor.name% ������%actor.g% �������� �������.
switch %random.2%
  case 1
    eval loadmob 1125
    eval text1 &R�� �������� ����������� ��������� �������!&n
    eval i 0
    eval text2 &R������ ���������� ������� �������� �� ��������!&n
  break
  case 2
    eval loadmob 901
    eval text1 &R�� �������� ���������� ����������� � �����.&n
    eval i 0
    eval text2 &R������� ����� �������� �������� �� ��������!&n
  break
done
eval i 0
wait 1
oecho %text1%
while ( %i% < 10 )
  wait 12s
  oecho %text2%
  oload mob %loadmob%
  oload mob %loadmob%
  oload mob %loadmob%
  oload mob %loadmob%
  oload mob %loadmob%
  oload mob %loadmob%
  oload mob %loadmob%
  oload mob %loadmob%
  oload mob %loadmob%
  oload mob %loadmob%
  wait 3s
  oecho %text1%
  eval i %i%+1
done
wait 1
opurge %self%
~
#1093
���������� ������� ��������~
1 r 100
~
if %actor.level% > 30
  return 1
  halt
end
osend %actor% _�� ��������� �������� ������, �� ������ �� �����!
return 0
halt
~
#1094
�����~
0 k 100
~
������ � ������ ���! ���� �� �������!!!
flee
flee
if %actor.vnum% != -1
  halt
end
if %random.3% == 2
  %self.hitp(%self.maxhitp%)%
end
~
#1095
����� ������� )~
0 q 100
~
wait 1
if %actor.name% == ����
  �������
  follow .����
  ���� ������
end
~
#1096
����� ����-�� �������� :-)~
0 t 100
~
wait 1
if %self.leader%
  halt
end
foreach victim %self.pc%
  if %victim.name% == ����
    �������
    follow .����
    ���� ����
    halt
  end
done
~
$~
