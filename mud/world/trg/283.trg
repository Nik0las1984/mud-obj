#28300
�����: �����~
2 f 100
~
eval rkvest no
global rkvest
eval blag no
global blag
calcuid rm 28339 room
attach 28303 %rm.id%
detach 28304 %rm.id%
wpurge
switch %random.4%
  case 1
    if (%world.gameobjs(28306)% < 5) 
      %load% obj 28306
    end
  break
  case 2
    if (%world.gameobjs(28308)% < 5) 
      %load% obj 28308
    end
  break
  case 3
    if (%world.gameobjs(28311)% < 5) 
      %load% obj 28311
    end
  break
  case 4
    if (%world.gameobjs(28313)% < 5) 
      %load% obj 28313
    end
  break
done     
~
#28301
�����: ����� ���������� �����~
2 c 4
����������~
wait 1s
if (%arg% == �����)
  wsend %actor% �� ��������� ���������� ����� � ������� ����� ����.
  wechoaround %actor% ��������� ��������� ����� $n ������$y ����� ����.
  %door% 28325 down room 28391
  wait 8 s
  wecho ����� � �������� �������, ������� ������ ����.
  %door% 28325 down purge 
  halt
else
  %send% %actor% ���� ���������� ���������?
  halt
end
~
#28302
�����: �� ����� ������ �� ������~
2 eg 100
~
if (%direction% == down)
  wecho ����� ������������, �������� ������ ����.
  wdoor 28325 down room 28391
  wait 8 s
  wecho ����� � �������� �������, ������� ������ ����.
  wdoor 28325 down purge
else
  halt
end
~
#28303
�����: ���� ������...1~
2 c 4
������~
wait 1
if (%arg% == ������)
  wsend %actor% �� ������ ������������ �����, ��� ������.
  %echoaround% %actor% $n ����$y ������������ �����.
  wait 5s
  wsend %actor% �� ����� ��������� ������ � ������� �� ���� ������� ������.
  %echoaround% %actor% $n ������$y �� ������� � ����� ������� �����. 
  set %actor.gold(+300)%
  calcuid rm 28339 room
  attach 28304 %rm.id%
  detach 28303 %rm.id%
  halt
else
  %send% %actor% ���� ������ �����?
  halt
end
~
#28304
�����: ���� ������...2~
2 c 4
������~
wait 1
if (%arg% == ������)
  %send% %actor% �� ������ ������������ �����, ��� ������.
  %echoaround% %actor% $n ����$y ������������ �����.
  wait 5s
  %send% %actor% �� ����� ��������� ������, � ��������� �� ����.
  halt
else
  %send% %actor% ���� ������ �����?
  halt
end
~
#28305
�����: ���� � ���������~
0 q 100
~
%echo% �������� ��������, ������� ��������������� ������.
%echo% ��� �� ��� �������� �� �������.
~
#28306
����������: ������� �� ������ ������� (���� � �������)~
0 q 100
~
wait 1s
if (%direction% == �)
  if (%actor.class% == 2 || %actor.class% == 4)
    %send% %actor% %self.name% ����������� �������� ���.
    say �������, %actor.name%. ������� �� ������ ����������?
    halt
  else
    %echoaround% %actor% ��� ���� $r $N ������������ �������$U.
    %send% %actor% ��� ���� ��� $N ������������ �������$U.
    say ���������� �� ��, ���� ������ ����.
    wait 10s
    say ��, � ���� ������������!
    mkill %actor.name%
    halt
  end
else
  halt
end
~
#28307
����������: ������� �� ������ ������� (���������� �� ������)~
0 d 1
����~
if (%actor.class% == 2 || %actor.class% == 4)
  say �� %actor.name% ����� �������� � ����� ��������.
  wait 2
  %send% %actor% ������ ������� ��������� ��� �� ������.
  %echoaround% %actor% $N ��������� $v �� ������.
  %teleport% %actor.name%  28375
  wat 28375 %echoaround% %actor% $n ����$i � ������.
  halt
else
  say �� ��� ������ �� ��������!
  mkill %actor.name%
  halt
end
~
#28308
����������: ������� ��� ���� �� ���� ����� ����� � ���������~
0 q 100
~
if (%actor.class% == 2 || %actor.class% == 4)
  halt
else
  �����
  say �� �� ����� �������! �������!
  mkill %actor.name%
end
~
#28309
����������: ����� � ������� (����).~
0 q 100
~
wait 2
if (%actor.class% == 2 || %actor.class% == 4) 
  msend %actor%  %self.name% �������� ��� ���������
  wait 2
  say �������  %actor.name%!
  msend %actor% %self.name% ������� ��� �� �����
  wait 2
  say � ��� ��� ��������� �������� � ��������, � � �� �������� ���� �� ������ � �� �������
  say ���������� ��� ������?
  wait 2
  msend %actor% %self.name% ������������� ��������� �� ���.
  calcuid glav 28312 mob
  attach 28310 %glav.id%
  halt
else
  ������
  mkill %actor.name%
end
~
#28310
����������: ������� ���� ������� (����).~
0 d 1
������ ��������~
wait 2
say ���������! ������, ��� ���� ���� ����� �������
say �� ������� ����������� �����, ��������� ������ �������� ���.
say ������� ��� ��� ������� �� �������, �� ��� ������� ������ ����� ������.
say ���� �� �� ��������� �� ������ � �������, ��� � ������ ������ �������.
say ������, ����� ������ ��� ������� ��.
%load% obj 28319
��� ������ %actor.name%
set %rkvester% %acto.name%
global rkvester
eval rkvest no
global rkvest no
calcuid glav 28312 mob
attach 28312 %glav.id%
detach 28309 %glav.id%
detach 28310 %glav.id%
~
#28311
����������: ������ �������.~
2 c 1
��������~
if %actor.name% != %rkvester%
  return 0
  halt
end
if %arg% != �������
  wsend %actor% ���� ������� �����?
  halt
end
eval svertok %actor.eq(17)%
if %svertok.name% != �������
  wsend %actor% � ��� ������� ���������?
  halt
end
wsend %actor% �� ��������� ������� ������� � �������.
wpurge %svertok%
wsend %actor% ������ ���� � �� ������....
eval rkvest_yes
global rkvest_yes
~
#28312
����������: ��������� � ���������� (����).~
0 q 100
~
if (%actor.name%==%rkvester%)
  if (%rkvest%==yes)
    say ����� ���, ��������� ��������� � ������� ������!
    say �� ���� �������, � �� ������� � �� �� �����.
    say �����.
    say � ���� ����������� �������� �� ������� ������.
    say ������, ������� �� �� ���, �� ����� �� �������, �� � ��������� ��������.
    set %actor.gold(+300)%
    eval blag %actor%
    global blag
    calcuid glav 28312 mob
    attach 28313 %glav.id%
    run 28313 %glav.id%
    dettach 28312 %glav.id%
  else
    say � ���� �� ��������?
    say ���� � �������� �� ����������� � ������� ���� � �� ��������!
  end
else
  if (%actor.class% == 2 || %actor.class% == 4)
    halt
  else
    �����
    say �� �� ����� ���! �������!
    mkill %actor.name%
  end
end
~
#28313
����������: ������������� ������� (�������������).~
0 z 100
~
*����� ����� �������� ��������� ������������� ����� �����...
*� ���������� blag ����������� actor ������������ ����� 
%echoaround% %blag% ������� ������� �� ����� %blag.rname%
wait 5
if ( %world.curobjs(592)% < 1 )
  if ( %random.100% > 66 )
    mload obj 592
    give ����� %blag.name%
    say ���������� � ���� ��� ��� ��� ���� - ��� �� � ����, � ���� ����� � ��������!
  else
    eval buffer %self.gold(+500)%
    give 500 ��� %blag.name%
  end
end
calcuid glav 28312 mob
detach 28312 %glav.id%
detach 28313 %glav.id%
calcuid glav 28324 mob
detach 28319 %glav.id%
detach 28313 %glav.id%
~
#28314
����������: ����� � ������� (����)~
0 q 0
~
wait 2
if (%actor.class% == 2 || %actor.class% == 4) 
  msend %actor%  %self.name% �������� ��� ���������
  wait 2
  say �������  %actor.name%!
  msend %actor% %self.name% ������� ��� �� �����
  wait 2
  say � ��� ��� ��������� �������� � �������, � � �� �������� ���� �� ������ � �� �������.
  say ���������� ��� ������?
  wait 2
  msend %actor% %self.name% ������������� ��������� �� ���.
  calcuid glav 28324 mob
  attach 28315 %glav.id%
  halt
else
  ������
  mkill %actor.name%
end
~
#28315
����������: ������� ���� ������� (����)~
0 d 1
������ ��������~
wait 2
say ��� �������� ���������� ���� �����������. 
say ������ ��� ����� ��������, ���� �� ������ �� ��������...
say �������� �� �� �� �������� �������, �� ������ ��� �������� ������� � ��� ����� �� ��� ��� ������.
say ��������� �������������� ������� �� ����, �� ������ ��� ����� ����� ������� ��� �� �����.
say �� ����� ������� �� ��� ����, ���� ������� ����� ��������� � �����, �� � ����� ������.
say �� � ���� �� ������m, �� �� ����������, �������� ����� �����.
set %rkvester% %acto.name%
global rkvester
calcuid glav 28324 mob
attach 28319 %glav.id%
detach 28314 %glav.id%
detach 28315 %glav.id%
~
#28316
����������: ������� ������� ����� ����~
0 d 1
���� �����~
if (%actor.name%==%rkvester%)
  say � � ���� ��� �� ������� ���������� ������� ��?
  calcuid kupa 28323 mob
  attach 28317 %kupa.id%
  wait 5
  say ���?
  wait 5
  say � �� ������ ������ ���� ����� ��� ���� �� ������!
  wait 2s
  say ������ ��������� �� �����! ����� ��� ���-�� ����...
  dettach 28317 %kupa%
  mkill %actor.name%
end
~
#28317
����������: ���� ���� ������~
0 j 100
~
if (%actor.name%==%rkvester%)
  if (%object.vnum% == 28315)
    calcuid kupa 28323 mob
    dettach 28316 %kupa.id%
    say � ���� ��� �� ��������!
    say ��� �� �� � ��� ������ ������ ���������!
    wait 5
    say �� ���������� ����� ����� ���������!
    %load% obj 28318
    ���� ���� %actor.name%
    %echo% ����� ��� � �����������.
    dettach 28317 %kupa.id%
  end
end
~
#28318
����������: ������ �����~
0 f 100
~
%load% obj 28315
~
#28319
����������: ������������� ������� (����)~
0 j 100
~
if (%actor.name%==%rkvester%)
  if (%object.vnum% == 28318)
    say ������� ���������, �� ������ � � ����!
    say �����.
    say � ���� ����������� �������� �� ������� ������.
    say ������, ������� �� �� ���, �� ����� �� �������, �� � ��������� ��������.
    set %actor.gold(+300)%
    eval blag %actor%
    global blag
    calcuid glav 28324 mob
    attach 28313 %glav.id%
    run 28313 %glav.id%
    dettach 28319 %glav.id%
  else
    %purge%
    say �� ���� ��� ��� �������?
    say ��� ��� ���� �����?
    say ���� �� ��������� � �������� ��� � ������, � ������ ���� ���� �� �������!
  end
end
~
#28320
����������: ������� �� ��������� (���� � �������)~
0 q 100
~
wait 1s
if (%direction% == east)
  if (%actor.class% == 5 || %actor.class% == 6)
    say ����������� ����, %actor.name% !
    say ������ ������ � ������ ��������. � ���� ����� ���� ��������� ��� ����.
    halt
  else
    %echoaround% %actor% ��� ���� %actor.rname% %self.name% ������������ ���������.
    %send% %actor% %self.name% ����������� �������� ��� � ������������ �������%self.u%.
    say ����������, ������ ���� ����� ������!
    halt
  end
else
  halt
end
~
#28321
����������: ������� �� ��������� (���������� �� �����)~
0 c 1
������~
wait 1s
if (%actor.class% == 5 || %actor.class% == 6)
  %send% %actor% �������� ��������� ��� �� �����.
  %echoaround% %actor% �������� ��������� %actor.rname% �� �����.
  %teleport% %actor.name%  28343
  wat 28343 %echoaround% %actor% $n ����$i � �������.
  halt
else
  say � ���� ��� �� %actor.name% ��������? ���� � ���� � ���� ������, ���� � ���� �� ������.
  wait 5s
  say �� ��� �����? �� ��� ��������!
  mkill %actor.name%
  halt
end
~
#28322
����������: ������� ��� ���� �� ���� ����� ����������� � �������~
0 q 100
~
if (%actor.class% == 5 || %actor.class% == 6)
  halt
else
  ���
  say �����%actor.u% �������!
  mkill %actor.name%
end
~
#28323
����������: ����� � ��������~
0 q 100
~
wait 2
if (%actor.class% == 5 || %actor.class% == 6)
  %send% %actor%  %self.name% �������� ��� ���������
  say ����������� ����,  %actor.name%!
  say ������ ��� ����� �� ���, � ���� ���� ������������ ��� ����.
  say ��� ����� ������� ���� ���������� ����� �����������, �� �� ����� �� ����� �� �������.
  say �� ������� ����� ��� ���,  �� ��� ����� ������ ����� �� �������.
  say ���� �� �� ���� ����� ��� � �������� ��� ��� ������, � �� ���� �����������.
  say ��, ��� �������? 
  calcuid kapi 28318 mob
  attach 28324 %kapi.id%
else
  ������
  mkill %actor.name%
end
~
#28324
����������: ������� ���� �������~
0 d 1
������ ~
wait 2
say ���������! ��� ���� � ������� �������.     
set %dkvester% %acto.name%
global dkvester
calcuid kapi 28318 mob
attach 28322 %kapi.id%
attach 28325 %kapi.id%
detach 28323 %kapi.id%
detach 28324 %kapi.id%
~
#28325
����������: ���� ������ ���������~
0 j 100
~
if (%actor.name%==%dkvester%)
  wait 2
  if (%object.vnum% == 28314)
    say ��� �� ������ �������!
    say ����, ��� ���� �� ������ ��������� ���  �����.
    say ���������� ������! ����� ���� �������.
    set %actor.gold(+300)%
    eval blag %actor%
    global blag
    calcuid kapi 28318 mob
    attach 28326 %kapi.id%
    run 28326 %kapi.id%
  else
    say �� � ����� ��� ���?
    ���� %object.name%
  end
end
~
#28326
����������: ������������� ��������~
0 z 100
~
*����� ����� �������� ��������� ������������� ����� �����...
*� ���������� blag ����������� actor ������������ ����� 
%echoaround% %actor% ������� ����� ���� %blag.dname%
wait 5
calcuid kapi 28318 mob
detach 28325 %kapi.id%
detach 28326 %kapi.id%
~
#28327
����������: ������ �������~
0 f 100
~
%load%  obj 28314
~
$~
