#25300
����� �����~
1 t 20
~
wait %random.35%s
switch %random.9%
  case 9
    oecho _����� � ������ �������� � �������� ���� ����. 
  break 
  case 8
    oecho _�� ������ � ������� ������� ������ � ��������� ������� �� ����. 
  break 
  case 7
    oecho _����� � ������ ���� ��������.
  break 
  case 6
    oecho _����� � ������ ������ ��������� � ������ ����������� �� ������. 
  break 
  case 5
    oecho _����� ������� � ������ ��������� � ��� ���������� � ��������. 
  break 
  case 4
    oecho _����� � ������ ������� � ����� ������� ����������� � �����. 
  break 
  case 3
    oecho _��������� ������ ������� �� ������ � ���� � ����� �����.
  break  
  case 2
    oecho _�� �������� ������ ����� ��������������� ������� ��������� �����.
  break
  case 1
    oecho _����� � ������ ����� ����. 
  break 
done
~
#25301
����~
1 g 100
~
wait 1
if (%actor.clan% != ���)
  %send% %actor% %self.name% ��������%self.g% � ��������%self.u%. 
  %purge% %self%
end
~
#25302
������� � ������~
0 r 100
~
wait 1
eval key %actor.eq(17)% 
if ( %key.vnum% != 139 )
  msend %actor% _�������� �� ���� ������ ��������� �������� ���� � �� ���� ������� ����������� �� ���� ������.
  msend %actor% �� ������ �������������, ��� ��� ������� �� ���� � ����� ����-��.
  dg cast '�� �����' %actor.name%
  %actor.position(6)% 
  %actor.wait(10)% 
  dg_cast '�� �����' %actor.name%
end
~
#25303
���� ������� � ������� � ������~
0 t 100
~
wait 1
foreach target %self.pc%
  eval key %target.eq(17)% 
  if ( %key.vnum% != 139 )
    msend %target% _�� ������������� ���-�� �������� �����������. 
    msend %target% _�������� �� ���� ������ ��������� �������� ���� � �� ���� ������� ����������� �� ���� ������.
    msend %target% �� ������ �������������, ��� ��� ������� �� ���� � ����� ����-��.
    dg cast '�� �����' %target.name%
    %target.position(6)% 
    %target.wait(10)%
    dg_cast '�� �����' %target.name%
  end
done
~
#25304
� ������� ������~
0 m 1
~
*if (%actor.clan% != ��)
*say ������ ����������??? ������-�� ������, ������ ���.
*give %amount% ��� %actor.name%
*halt
*end
wait 1
mecho ������ ����� ������ ����, ���-�� ��������� � ������ ��������� �������� ������. 
switch %amount%
  case 1
    mload obj 127
    give ����� %actor.name%
  break
  case 100
    mload obj 25336
    give ������� %actor.name%
  break
  default
    say � ���� �� �� �� ��� ������ ������?
    say ��� - �������� �����, ���� �� ��������� ���.
    give %amount% ��� %actor.name%
  done
~
#25305
���������� �������~
1 c 3
����������~
if (%actor.clan%  != ���)
  %send% %actor% _�� ������ ���������� �������... � ������ �� ���������.
  halt
end
if !%arg.contains(�������)%
  %send% %actor% _���� �� �� ������ ��������?
  halt
end
%send% %actor% _�� ���������� �������.
%echoaround% %actor% _%actor.name% ���%actor.q% � ���� ��������� ������� � ������ ��������%actor.q% ��.
%echo% _����������� �������� �������� ������� � ������� ������. 
%echo% _�������� ����������� ������ �������� ����.
%load% mob 25312
%force% %actor.name% �������� ������
%purge% %self%
~
#25306
����������~
0 c 1
����������~
if !%arg.contains(�������)%
  %send% %actor% _���� �� ������ ����������?
  halt
end
if (%actor.clan%  != ���)
  %oecho% _�� ���������� ����� ������� � ������� �� �� ���� �� ���� ��� ������ � ����!
  halt
end
wait 1
%send% %actor% _�� ���������� ������������ �������.
%echoaround% %actor% _%actor.name% ����%actor.q% ����� � ������������ �������.
%echo% _������ �������� ��������, ������ ������� �����, � ������.
%load% obj 25336
%purge% %self%
~
#25307
give~
1 i 100
~
if (%victim.clan% != ���)
  return 0
  wait 1
  %send% %actor% �� ������ �������� ��� ������?!
  halt
end
~
#25308
� �����������~
0 d 0
"������� ������!"~
wait 1
if (%actor.clan%  != ���)
  ����
  wait 3
  ����
  wait 1s
  ����� %actor.name%
  halt
end
if %actor.name% == ������
  say ������������� �� ���� - ����������� ��� ������.
  ������� .%actor.name%
  halt
end
���
%load% obj 25329
������ ����� ������
��� ����� ������
mjunk all
wait 4s
%load% obj 25329
���� ����� ������
������ ����� ������
mjunk all
~
#25309
� ��������~
0 q 100
~
wait 1
halt
if %actor.clan% != ���
  ����
  say �� ��� ��� �����?!
  ����� ������!!!
  msend %actor% ��������� ����������� ������� ��������� ��� ���.
  mteleport %actor% 25300 horse
  mecho ��������� ����������� ������� ��������� %actor.vname% ���.
  halt
end
wait %random.10%
switch %random.4%
  case 4
    ������ %actor.name%
  break
  case 3
    ������ %actor.name%
  break
  case 2
    ���� %actor.name%
  break
  case 1
    ��� %actor.name%
  break
  �����
done
~
#25310
� ������� ��������~
0 c 1
����!~
if %actor.clan% != ���
  halt
end
if %actor.clanrank% >= 2
  halt
end
wait 1
���
if !%exist.mob(25312)%
  say ��� ������� � �����.
  halt
end
calcuid griphon 25312 mob
while %griphon%
  %teleport% %griphon% 25327
  emot ������ ���� � �������� ���������� ����������..
  %echo% ����������� ������ ��������� ������-��.
  emot ����� ������ ������������ �������
  wait 1s
  %purge% %griphon% 
  %echo% ������ �������� ������� � ������.
  unset griphon
  calcuid griphon 25312 mob
  wait 2s
done
~
#25311
��������� � ������.~
0 m 1
~
wait 2
if (%actor.clan% != ���)
  say �������, ������ ����!
  ������ %actor.name%
  ���
  halt
end
if %amount% < 10
  ���
  ������ %actor.name%
  halt
end
mload obj 25329
give ���� %actor.name%
emot ����� ������� ����� � ��������
~
#25312
������� �����-����������� :�)~
0 r 100
~
wait 1
if (%actor.clan% ==���)
  halt
else
  ������� � ������, �����! ���� � ������ ��������! ��� � ��� !!!
end
~
#25313
������� ������� �� ������~
2 c 1
�����������~
wait 1
if !%arg.contains(������)%
  %send% %actor% _���� ��������?
  halt
end
if %actor.clan% != ���
  %send% %actor% _�� ����������� ������, �� ������ ��� ��� �� �����.
  halt
end
%echoaround%  %actor% %actor.name% ����������%actor.g% ������ � �������%actor.g% ���-�� ��-��� ����.
%load% obj 25329
%send% %actor% _��� ������ ���-�� ��������.
~
#25314
����� � �����������~
0 r 100
~
if %direction% == east
  wait 5s
  mload obj 25329
  close ����� ������
  ����� ����� ������
  mjunk all
end
if %actor.clan% == ���
  halt
end
����
say �� ��� ��� �����?!
����� ������!!!
msend %actor% ��������� ����������� ������� ��������� ��� ���.
mteleport %actor% 25300 horse
mecho ��������� ����������� ������� ��������� %actor.vname% ���.
~
#25315
�������� ������~
0 c 1
����~
wait 1
if %actor.clan% != ���
  ������� %actor.name%
  halt
end
if %actor.clanrank% > 0
  ���� %actor.name%
  halt
end
if %arg.cdr% == ���������
  switch %arg%
    case 1
      calcuid znak 25363 obj
      exec 25320 %znak.id%
    break
    case 2
      calcuid znak 25364 obj
      exec 25320 %znak.id%
    break
    case 3
      calcuid znak 25365 obj
      exec 25320 %znak.id%
    done
    halt
  end
  switch %arg%
    case 1
      if %world.curobjs(25363)% < 10
        mload obj 25363
      else
        ������
      end
    break
    case 2
      if %world.curobjs(25364)% < 10
        mload obj 25364
      else
        ������
      end
    break
    case 3
      if %world.curobjs(25365)% < 10
        mload obj 25365
      else
        ������
      end
    done
    give ���� .%actor.name%
~
#25316
�������� ������ ����~
1 i 100
~
if %actor.vnum% != -1
  halt
end
if (%actor.clan% == ��� ) && (%actor.clanrank% == 0 )
  oecho ���� ����� ���������� ����� ������.
  set owner %victim%
  global owner
  halt
end
if (%victim.clan% != ��� ) || (%victim.clanrank% > 0 )
  osend %actor% ���� ����� �������� ����� �����!
  return 0
  halt
end
~
#25317
�������� ����~
1 j 100
~
if %actor.clan%  != ��� 
  return 0
  halt
end
set owner %actor%
global owner
~
#25318
�������� ������� ����~
1 h 100
~
return 0
halt
~
#25319
�������� ����� ����~
1 g 100
~
if %actor.clan% != ���
  return 0
  halt
end
if ( %actor% != %owner% ) && (%actor.clanrank% > 0 )
  osend %actor% ���� �������� ����������� ����� ������!
  return 0
  halt
end
~
#25320
��������������� �����~
1 z 100
~
osend %actor% _�������� �� ����������� ����� �������� ����� �����.
osend %actor% __���� �������� ����� �������� � ���������� � ����.
wait 1
opurge %self%
~
#25321
���������� �������� ����� �����~
0 q 100
~
wait 1
if (( %actor.clan% == ��� ) || (%actor.vnum% != -1))
  halt
end
����
say �� ��� ��� �����?!
����� ������!!!
msend %actor% ��������� ����������� ������� ��������� ��� ���.
mteleport %actor% 25300 horse
mecho ��������� ����������� ������� ��������� %actor.vname% ���.
~
#25322
���� ��������� ����~
0 qt 100
~
wait 1
set igva �������
if (%igva.realroom% != %self.realroom%)
  halt
end
�������
wait 2
switch %random.6%
  case 1
    ���� .������
  break
  case 2
    ������ .������
  break
  case 3
    say �, ��� �����! ��� ����! ��� ������! ���.. ���... ���������!
    ������� .�������
  break
  case 4
    ���� .�������
  break
  case 5
    ��� .�������
  break
  case 6
    say ����! �����������! ��� �� �� ��� ��� ��������!
  break
done
follow .�������
~
#25323
���� ��������~
0 b 10
~
set igva �������
if ((%self.realroom% != %igva.realroom%) && (%self.realroom% > 25399) && (%self.realroom% < 25300))
  ������
  ���
  say �������-��������� ��� �����������! ����� ������...
  ���
  : �������� ���������
  wait 1
  mpurge %self%
end
~
#25385
�������~
1 c 1
������~
oecho test
~
#25396
�������~
1 g 100
~
wait 1
if %actor.vnum% == -1
  oforce %actor% remove all
  oforce %actor% ����� ����
end
~
#25397
Summon to Sventovit~
1 cfg 0
~
say My trigger commandlist is not complete!
~
#25398
Destruction Demon Killed~
0 f 100
~
if (%world.curobjs(25396)% < 1)
  mload obj 25396
  halt
end
if (%world.curobjs(25395)% < 1)
  mload obj 25395
  halt
end
if (%world.curobjs(25394)% < 1)
  mload obj 25394
  halt
end
if (%world.curobjs(25393)% < 1)
  mload obj 25393
  halt
end
if (%world.curobjs(25392)% < 1)
  mload obj 25392
  halt
end
~
$~
