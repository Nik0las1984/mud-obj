#32300
���� ��������~
2 c 1
������~
wait 1
if %actor.move% < 20 
  wsend %actor% _��� �� ������ ��� �� ���.
  halt
end
if !%actor.haveobj(32302)% || !%actor.haveobj(32303)%
  wsend %actor% _��� ����� ��� ����� ������ � �����.
  halt
end
wforce %actor% ���� ������
wforce %actor% ���� �����
wsend %actor% _�� ������ ������ ������ �������� � �������.
wechoaround %actor% _%actor.name% �����%actor.g% ������ ������.
wpurge ������
wpurge �����
eval %actor.move(-20)%
%actor.wait(2)%
wait 2s
if %self.west% || %self.east%
  eval shagnn %self.vnum% + 1
  wdoor %self.vnum% north room %shagnn%
  wdoor %shagnn.vnum% south room %self.vnum%
  unset shagnn
else
  switch %random.3%
    case 1
      eval shagn %self.vnum% + 1
      wdoor %self.vnum% north room %shagn%
      wdoor %shagn.vnum% south room %self.vnum%
      unset shagn
    break
    case 2
      eval shagw %self.vnum% + 1
      wdoor %self.vnum% west room %shagw%
      wdoor %shagw.vnum% east room %self.vnum%
      unset shagw
    break
    case 3
      eval shage %self.vnum% + 1
      wdoor %self.vnum% east room %shage%
      wdoor %shage.vnum% west room %self.vnum%
      unset shage
    break
  done
end
wsend %actor% _�� ��������� ������ � ������ �� ������ ����� ��������.
wechoaround %actor% _%actor.name% ������%actor.g% ����� ������� ������, ������ ������.
detach 32300 %self.id%
~
#32301
����������� �����~
0 q 100
~
if %actor.vnum% != -1
  halt
end
wait 1s
set i 0
foreach ktouknyazya323 %self.pc%
  * ���������
  unset kukclass
  set kukclass %ktouknyazya323.class%
  if (%kukclass% == 2) || (%kukclass% == 4)
    if !(%vor323% == %ktouknyazya323.id%)
      mechoaround %ktouknyazya323% _����� ������������� ��������� �� %ktouknyazya323.vname%.
      � �� ��, %ktouknyazya323.name%, ����� ������� ������ �����������?
      � ������%ktouknyazya323.u% � ���� � ������� ���������? � �� �������, �� ��� ���!
      unset vor323
      set vor323 %ktouknyazya323.id%
      global vor323
      attach 32302 %self.id%
      halt
    break
  else
    eval i %i% - 1
  end
end
* �����
if %kukclass% == 12
  if !(%kupa323% == %ktouknyazya323.id%)
    � ����� ����������, %ktouknyazya323.name%!
    � ������, ������, ������%ktouknyazya323.q% �� �������? ����� ����, ����� � ������������.
    if %world.curobjs(32377)% < 10
      � ��� � ���� ����! ���� ���� ���������� ������, ����� �� ������ ����� ���. ����� � ����.
      attach 32304 %self.id%
    end
    � � ���� �� ��������, ��� � �����.
    unset kupa323
    set kupa323 %ktouknyazya323.id%
    global kupa323
    attach 32303 %self.id%
    attach 32305 %self.id%
    halt
  break
else
  eval i %i% - 1
end
end
eval i %i% + 1
done
if %i% > 1
  � ����� ����������, ����� �������!
  �� .%actor.name%
  � ��, ������, �� ������ ������� ��������, ������ ������ ��������.
  � � �� ��� ���� �����, ��� �� ����� ����. ��� ������...
elseif %i% == 1
  � ����� ����������, %actor.name%!
  �� .%actor.name%
  � ��, ������, �� ������ ������� �������%actor.g%, ������ ������ �������%actor.g%.
  � � �� ��� ���� �����, ��� �� ����� ����. ��� ������...
end
wait 2
exec 32307 %self.id%
wait 10s
~
#32302
� ����� ��� ����������~
0 d 1
�� ���~
wait 1
if (%actor.id% == %vor323%) && (%speech% == ��)
  � ��� ���! � ��-��, �������� %actor.vname% � �������!
  msend %actor% _��������� ��� ������� ���������� � ��������� ��� ����-��.
  mechoaround %actor% _��������� ��� ������� ���������� � ��������� %actor.vname% ����-��.
  mat 32330 mecho _%actor.name% �������%actor.a% � �������!
  mteleport %actor% 32330
  detach 32302 %self.id%
elseif (%actor.id% == %vor323%) && (%speech% == ���)
  � ��-��. �� ����, ��� � ����� ������� ���� ����� �� ����.
  wait 1s
  exec 32307 %self.id%
  detach 32302 %self.id%
end
~
#32303
����� �������� ����~
0 j 100
~
wait 2
eval xpobj %object.name%
if %kupa323% != %actor.id%
  � ����� ��� ���?
  ������� %xpobj.car%
else
  if %object.type% == 5
    if %object.timer% < 3000
      � ��� ������� ���������� �����, ��� ����� �� �����!
      ������� %xpobj.car%
      halt
    end
    eval srednee %object.val1% * (%object.val2% + 1) / 2
    if %srednee% < 11
      � �� ���� �� ���� ����������? � ����� ������� ������ � ������ �� �����!
      ������� %xpobj.car%
      halt
    else
      � �������!
      if %srednee% < 19
        eval srednee %srednee% / 4
      end
      eval orkuny ((%srednee% * 7 + %object.timer% / 1800) / 10 + 1) * 10
      msend %actor% ����� ��� ��� %orkuny% ���.
      mechoaround %actor% ����� ��� %actor.dname% ���� ���.
      %actor.gold(+%orkuny%)%
      mpurge %object%
      halt
    end
  elseif %object.type% == 9
    if %object.timer% < 3000
      � ��� ������� ���������� �����, ��� ����� �� �����!
      ������� %xpobj.car%
      halt
    end
    eval acbronya %object.val0% * %object.val1%
    if %acbronya% < 13
      � �� ���� �� ���� ����������? � ��� ������ ���� ������ �� �����!
      ������� %xpobj.car%
      halt
    else
      � �������!
      eval brkuny ((%acbronya% * 8 + %object.timer% / 1200) / 10 + 1) * 10
      msend %actor% ����� ��� ��� %brkuny% ���.
      mechoaround %actor% ����� ��� %actor.dname% ���� ���.
      %actor.gold(+%brkuny%)%
      mpurge %object%
      halt
    end
  elseif (%object.type% == 15) && (%object.val3% == 1)
    � �� �� �� �����, � ������!
    � � ��, �������� %actor.vname% � �������!
    msend %actor% _��������� ��� ������� ���������� � ��������� ��� ����-��.
    mechoaround %actor% _��������� ��� ������� ���������� � ��������� %actor.vname% ����-��.
    mat 32330 mecho _%actor.name% �������%actor.a% � �������!
    mteleport %actor% 32330
    mpurge %object%
    detach 32303 %self.id%
  else
    � ��� ��� �� �����.
    ������� %xpobj.car%
  end
end
~
#32304
����� ������� �����~
0 m 10000
~
wait 1
if %actor.id% == %kupa323%
  if %world.curobjs(32377)% > 4
    � ������, ������ ��� �� ����� ����� ������ ���... ���-�� �����, �������!
    � ������ � ������ ���.
    ���� %amount% ��� .%actor.name%
  else
    � ���, �����. � ����� ��� ��� ��� ������� � ������� ��������.
    mload obj 32377
    ���� ����.���� .%actor.name%
    if %amount% > 10000
      � � ��� �� ��� ������ ���%actor.g%, ��� �����. ��� � ��� ����� ��������, � ��� �����!
      eval lishnee %amount% - 10000
      ���� %lishnee% ��� .%actor.name%
    end
  end
  %self.gold(-10000)%
  detach 32304 %self.id%
else
  � ����? ��������!
end
~
#32305
� ����� ��� ������~
0 d 0
�� ������~
wait 1
if %actor.id% == %kupa323%
  � �� �������� - � �� ����. ����� ��� ���.
  wait 1
  exec 32307 %self.id%
  detach 32303 %self.id%
  detach 32304 %self.id%
  detach 32305 %self.id%
end
~
#32306
������ ����~
2 c 1
�������~
if !(%arg.contains(����)%)
  wsend %actor% _��� �������?
  halt
end
wait 1
if %actor.move% < 40
  wsend %actor% _��� �� ������ ��� �� ���.
  halt
end
while %actor.haveobj(32302)%
  if %brevna323% > 3
  break
end
wforce %actor% ���� ������
wpurge ������
eval brevna323 %brevna323% + 1
worlds brevna323
done
if %brevna323% < 4
  wsend %actor% _����� ���� �� ������ ������.
  halt
end
wsend %actor% _�� ������� �������� ���� ����� ���� �� ������������� ������...
wechoaround %actor% _%actor.name% �����%actor.g% ������� ���� ����� ���� �� ������������� ������.
eval %actor.move(-40)%
%actor.wait(3)%
wait 4s
wdoor 32361 n purge
wdoor 32364 s purge
wdoor 32361 n room 32363
wdoor 32364 s room 32363
wsend %actor% _�� � ��������� ��������� �� ���� ��� ����� - ����� ����.
wechoaround %actor% _%actor.name% ��������%actor.g% ������. ����� ���� �����!
detach 32306 %self.id%
~
#32307
����� ������������ ��� �������~
0 z 0
~
� �� ��������� ������� �� ������� ������� � ����, ��� ���� � ����� �� ������ ���������� ����.
� ����� ��� ��������... ����� �� ������ ��������� ����� � ���� �� ������!
� ����� ���� �� ���� �������� � � ���� ������������ ���������, � ��� ��� ��������� - �������.
� �� ������� ��� � �������� ��� ��� ���� �������� ����� � ����� ��������, ����� ������� �������� ��������.
� ��������� ������ ����� ���, �� ��������� �, �������, ����������� ����� ��������, �� � ��� ������� ������.
� ���� �� � ����������� ������� �� �������, �� ���� ���� �������, � ����� � ������ �������� ����� ����...
� �������� ���� ����� ��, ��� ��� ��������, �� ������� �� �����, ��� �� ��� �� ����� �� �����!
� � � �������� ��� ������� �� �����.
� �� ��������� �� ������� ��������� - ������, �����, � �� ������ - ��� ������� � ����� ���� ������.
if %exist.mob(32315)%
  calcuid plo323 32315 mob
  attach 32308 %plo323.id%
  attach 32309 %plo323.id%
end
~
#32308
������� ���������� �����~
0 q 100
~
wait 1
� ���� ��, %actor.name%, ������� �� ������ ������ ������%actor.u%, �� ��� ���� �������� � ���� ���.
� � ���� ������ ���������� ����� � ����, ������� ���� �����, � �� � ������ ���������.
� ������ �����, �� ������� ���.
~
#32309
������� ������� �����~
0 m 500
~
wait 1
mload obj 32304
� ����.
���� ����� .%actor.name%
%self.gold(-500)%
if %amount% > 500
  mecho _���� ����� ���� ������ ���� �����, ������� ������ ���, ��� �� ������� �����.
end
detach 32308 %self.id%
set otknyazya323 %actor.id%
worlds otknyazya323
detach 32309 %self.id%
~
#32310
�������� ������~
2 c 1
������ ������ ��������~
if !(%arg.contains(������)%)
  wsend %actor% _�� ������ ������� ��� ������.
  halt
end
switch %actor.class%
  *������
  case 0
    wsend %actor% _�� ��������� ������ ����� ����� ������� ����������!
    wechoaround %actor% _%actor.name% ��������%actor.g% �� ������ � ��������%actor.q% �����-�� �������� �����.
    wecho _������ ����������� � ����������.
  break
  *����
  case 1
    wsend %actor% _�� �������� � ���� ����� ��������� ����� �������� ���!
    wechoaround %actor% _%actor.name% ��������%actor.g% �� ������ � ��������%actor.q% �����-�� �������� �����.
    wecho _�������� ���������� ������ ����� � ���������� ������.
  break
  *�����
  case 6
    wsend %actor% _�� ��������� ����� ����� ������� �����������!
    wechoaround %actor% _%actor.name% ��������%actor.g% �� ������ � ��������%actor.q% �����-�� �������� �����.
    wecho _����� �� ������� ���������� � ��� ���������.
  break
  *����
  case 7
    wsend %actor% _�� ��������� ����� ������� � ���� ����� ��������� �����!
    wechoaround %actor% _%actor.name% ��������%actor.g% �� ������ � ��������%actor.q% �����-�� �������� �����.
    wecho _����� �� ������� ���������� � ��� ���������.
  break
  *������
  case 8
    wsend %actor% _�� ��������� ������ ����� ����� ������� ����������!
    wechoaround %actor% _%actor.name% ��������%actor.g% �� ������ � ��������%actor.q% �����-�� �������� �����.
    wecho _����� �� ������� ����������� � ���� � ��� ������������.
  break
  *�����
  case 13
    wsend %actor% _�� ������� ����, ������� ��������� ����� ��������.
    wechoaround %actor% _%actor.name% ������%actor.g% ����, ������� ��������� ����� ��������.
    wecho _���� ���������� ���������� ������.
  break
  default
    set brevno323 %actor.eq(18)%
    if !(%brevno323.vnum% == 32302)
      wsend %actor% _����� ������ ������ �� �������, ��� ������� ����...
      halt
    end
    if %actor.move% < 20 
      wsend %actor% _��� �� ������ ��� �� ���.
      halt
    end
    wsend %actor% _�� ����������� � ������� ������� � ������. ������� ������������.
    wechoaround %actor% _%actor.name% ��������%actor.u% � ������ ������� � ������. ������� ������������.
    eval %actor.move(-20)%
  break
done
wdoor 32365 e purge
wdoor 32365 e room 32366
wdoor 32365 e name ������|������
wdoor 32365 e description ������
wdoor 32365 e flags a
wdoor 32366 w purge
wdoor 32366 w name ������|������
wdoor 32366 w description ������
wdoor 32366 w room 32365
wdoor 32366 w flags a
%actor.wait(2)%
detach 32310 %self.id%
~
#32311
����� ����~
2 f 100
~
unset kkonets323
unset skonets323
unset vkonets323
unset geroy323
*������������� �����
eval poryadok323 %random.2%
worlds poryadok323
*�����
calcuid velesur323 32300 mob
detach 32301 %velesur323.id%
attach 32301 %velesur323.id%
*��������
wdoor 32307 s flags abc
wdoor 32307 s lock 20
calcuid dvor323 32307 room
detach 32333 %dvor323.id%
attach 32333 %dvor323.id%
*������ � �������
wdoor 32365 e flags abc
wdoor 32365 e lock 120
wdoor 32366 w flags ab
calcuid vorota323 32365 room
detach 32310 %vorota323.id%
attach 32310 %vorota323.id%
*������
wdoor 32334 n purge
wdoor 32334 e purge
wdoor 32334 w purge
calcuid opushka323 32334 room
detach 32312 %opushka323.id%
attach 32312 %opushka323.id%
*����� ������
wdoor 32334 e purge
wdoor 32334 w purge
wdoor 32360 s purge
wdoor 32360 e purge
wdoor 32360 w purge
*����
wdoor 32361 n purge
wdoor 32361 n room 32362
wdoor 32364 s purge
wdoor 32364 s room 32362
set brevna323 0
worlds brevna323
calcuid ureki323 32361 room
detach 32306 %ureki323.id%
attach 32306 %ureki323.id%
*��������
set pyan323 0
worlds pyan323
unset kras323
wdoor 32309 d flags abc
wdoor 32309 d lock 180
wdoor 32330 u flags abc
wdoor 32330 u lock 180
*�������
calcuid vedunya323 32346 mob
detach 32330 %vedunya323.id%
attach 32330 %vedunya323.id%
detach 32331 %vedunya323.id%
detach 32332 %vedunya323.id%
unset otknyazya323
*������ � ��������
unset geroy323
calcuid vepr323 32307 mob
detach 32336 %vepr323.id%
calcuid mezenya323 32310 mob
detach 32335 %mezenya323.id%
*�����
wdoor 32317 e flags abc
wdoor 32317 e lock 40
wdoor 32321 w flags abc
wdoor 32321 w lock 40
~
#32312
����� ���~
2 c 100
������~
wait 1
if !%arg.contains(���)%
  wsend %actor% _������ ���?
  halt
end
set topor323 %actor.eq(18)%
if !(%topor323.vnum% == 32304)
  wsend %actor% _������ ��� ���� ���������� �������.
  halt
end
if %actor.move% < 30 
  wsend %actor% _��� �� ������ ��� �� ���.
  halt
end
wsend %actor% _�� ��������� ������ ���, ����������� ����� �������.
wechoaround %actor% _%actor.name% �����%actor.g% ������ �������.
eval %actor.move(-30)%
%actor.wait(2)%
wait 2s
eval shag323 %self.vnum% + 1
if %self.west% || %self.east%
  wdoor %self% north room %shag323%
  wdoor %shag323.vnum% south room %self.vnum%
else
  if %self.vnum% == 32339 || %self.vnum% == 32347
    wdoor %self.vnum% north room %shag323%
    wdoor %shag323.vnum% south room %self.vnum%
  else
    switch %random.3%
      case 1
        wdoor %self.vnum% north room %shag323%
        wdoor %shag323.vnum% south room %self.vnum%
      break
      case 2
        wdoor %self.vnum% west room %shag323%
        wdoor %shag323.vnum% east room %self.vnum%
      break
      case 3
        wdoor %self.vnum% east room %shag323%
        wdoor %shag323.vnum% west room %self.vnum%
      break
    done
  end
end
if %poryadok323% == 1
  *� 32335 ��� 32327
  eval sledmob323 %shag323% - 8
else
  *� 32348 ��� 32327
  *64675 = 32340 + 32335
  eval sledmob323 64675 - %shag323%
end
if %shag323% < 32349
  wat %shag323% wload mob %sledmob323%
end
unset shag323
unset sledmob323
wsend %actor% _�� ���������� ���������� ����� ��� ������.
wechoaround %actor% _%actor.name% ������%actor.g% ��������� ����� (���, ��� ��� ������ ������) � ������ ����� ����� ������.
wload obj 32303
if %self.vnum% < 32354
  if %random.2% == 1
    wload obj 32302
  end
  if %self.vnum% > 32346 && %world.curobjs(32302)% < 10
    wload obj 32302
  end
else
  wecho _����� ���������� ������, �������� ��� ������, ����� ��������� ������ ������.
end
detach 32312 %self.id%
~
#32313
�� ���� ������~
2 e 50
~
wait 1
if %weather.temp% > -1
  wsend %actor% _�� ����� ����������� ����, �� ���� ������ �������� ������ � ��������� � ���� ��� ����.
  wsend %actor% _�� ��������� ������� � ������, ���� �� �������, ����� �������� � ��������...
else
  wsend %actor% _�� ����� ���������� ���� �� ����, �� ���� ������ �������� ����������� � ���� ��� ����.
  wsend %actor% _������� ����� ������ ���� ����, � � �������� ������ ��� ������� ���������...
end
%actor.wait(5)%
set %actor.hitp(10)%
dg_affect %actor% ���������� ���������� 1 30 1
wsend %actor% _��� ������� ��� ������ ��������� �� ������ � �� ����� ��� ��������.
if %weather.temp% > -1
  wechoaround %actor% _%actor.name% ����%actor.g% ����������� ����, �� �����%actor.g% � ��������� � �����%actor.q%.
  wechoaround %actor% _������, %actor.name% ������%actor.g%... ���� ��� - �� ������� ��� }%actor.name% ���-��� ������%actor.u% �� ����� � ����%actor.g% ��� ������.
else
  wechoaround %actor% _%actor.name% ����%actor.g% ���������� ���� �� ����, �� ��������%actor.u%.
  wechoaround %actor% _������, %actor.name% ������%actor.g%... ���� ��� - �� ������� ��� }%actor.name% ������%actor.u% �� ��� � ����%actor.g% ��� ������.
end
wait 2
wteleport %actor% 32361 follower
wat 32361 wechoaround %actor% _%actor.name% ���-��� ������%actor.u% �� ����� � ����%actor.g% ��� ������.
~
#32314
� ������~
0 r 100
~
if %actor.vnum% != -1
  halt
end
wait 1
foreach udevitsy323 %self.pc%
  if %udevitsy323.sex% == 1 && %udevitsy323.canbeseen%
    msend %udevitsy323% _������ ������� ���, ��������� � ���������� �������.
    mechoaround %udevitsy323% _������ ������� �������, ��������� � ������ ���������� �������.
    ���� �����, ����, ������ � ������, ����� ���������!
    foreach baby323 32313 32318 32303 32308 32319
      if %exist.mob(%baby323%)%
        unset zhen323
        calcuid zhen323 %baby323% mob
        if !(%zhen323.realroom% == 32318)
          if !(%zhen323.affect(����������)%) && !(%zhen323.affect(���)%)
            mechoaround %zhen323% %zhen323.name% �������� ���� � �������� �� ������.
            mteleport %zhen323% 32318
            mechoaround %zhen323% %zhen323.name% ��������� � �������.
            mforce %zhen323% ���� .%udevitsy323.name%
          end
        end
      end
    done
    msend %udevitsy323% ������ �������� �� ��� � ���������� : '... �����.'.
    mechoaround %udevitsy323% ������ ��������� �� %udevitsy323.vname% � ���������� : '... �����.'.
    dg_cast '����' .%udevitsy323.name%
    halt
  break
end
done
~
#32315
���� � ������~
0 q 100
~
if %actor.vnum% != -1
  halt
end
if %kkonets323% == 1
  halt
end
wait 1
set k 0
foreach osta323 32362 32363 32365 32367 32372 32373 32374 32378 32381
  if %exist.mob(%osta323%)%
    eval k %k% + 1
  end
done
if %k% < 6 && %skonets323% != 1
  � ��������! �������� ���� �������!
  dg_cast '���� ����' .%actor.name%
  dg_cast '��� �����' .%actor.name%
  halt
end
� ���, ������ ��������� ����� ����������, ��������� �� ���� ������� ����������?
� � �����. ����� ����� �� ������ � �� ��� ���� ����! ������ - ����� ����!
wait 1s
if !%self.fighting%
  � ���, ���� ��������� �� � ������� ������ ���� �������, ���������� ����.
  ���� .%actor.name%
end
~
#32316
����� ���������� �����~
0 d 1
����������� �������� ���������~
if %actor.vnum% != -1
  halt
end
if %kkonets323% == 1
  halt
end
wait 1
� ����� �� � �������� ��� � �����, �� ����� ������� ���� ������� � �� ����� ������ � ��� ������.
� ����� �� �� ������ �����������. ���� � ������� ����� �������, ��� ���� �����.
� ����, ��� ����� ��� � ��� �� ��� ��������� ��������� ������ � ������������ ����.
� �� ���, ��� ������ �� ��� �������, � ���� ���� - ����� ���������� � �� �������� ������ �����.
� ��� ��� ���� ������� ��� ������ - ��������� � ����� ��������, ������� ��� ����.
� ��������� ��, �� �����. ����� ���� ������ �� ������� �������, ������� ����� ������� ����.
� � ��� ����� ������ ��������� �����, ������� ��������� �� ������� ���������� ������������.
� � �������, ������� � ���� �����, ������� ����, ������ � ��� ����� ���� � ����� ������� �����������.
� ���� ���� � ������� ��� �� ����, ��� � ����. � ������ ����� � ������� ����� � �� ����� ����.
detach 32315 %self.id%
detach 32316 %self.id%
~
#32317
����� ������ ����� ������~
0 j 100
~
if %actor.vnum% != -1
  halt
end
wait 1
set k 0
foreach osta323 32362 32363 32365 32367 32372 32373 32374 32378 32381
  if %exist.mob(%osta323%)%
    eval k %k% + 1
  end
done
if %k% < 6 && %skonets323% != 1
  � ��������! �������� ���� �������!
  mecho _����� �������� ������ ����!
  dg_cast '���� ����' .%actor.name%
  dg_cast '��� �����' .%actor.name%
  halt
end
if %object.vnum% == 32378
  wait 1
  mpurge %object%
  if %exist.mob(32300)%
    calcuid knyaz323 32300 mob
    detach 32301 %knyaz323.id%
  end
  wait 1s
  if %kkonets323% == 1
    � ��� ��� ������ �� �������.
    halt
  end
  � �� ��������� ���������.
  eval maxskill323 85 + %actor.remort% * 5
  if maxskill323 > 175
    set maxskill323 175
  end
  switch %actor.class%
    *������ ����
    case 13
      if %random.3% == 1 && %world.curobjs(217)% < 50
        mload obj 217
        ���� ��� .%actor.name%
      end
      case 0
        case 1
          case 6
            case 7
              case 8
                case 9
                  case 10
                    case 11
                      case 12
                        if %actor.skill(���������)%
                          if %actor.skill(���������)% < maxskill323
                            msend %actor% _����� �������� ������ ����, ������� ��������� ����� ��������.
                            mechoaround %actor% _����� �������� ������ ���� � %actor.name% ������%actor.u% ����� ������.
                            mskilladd %actor.name% ��������� 5
                          end
                        end
                      break
                      *����
                      case 2
                        if %actor.skill(����������)%
                          if %actor.skill(����������)% < maxskill323
                            msend %actor% _����� �������� ������ ����, ������� ��������� ����� ��������.
                            mechoaround %actor% _����� �������� ������ ���� � %actor.name% ����-�� ������%actor.g%, �� ��� �� ����� ������%actor.u%.
                            mskilladd %actor.name% ���������� 5
                          end
                        end
                      break
                      *��������
                      case 3
                        if %actor.skill(������ ����)%
                          if %actor.skill(������ ����)% < maxskill323
                            msend %actor% _����� �������� ������ ����, ������� ��������� ����� ��������.
                            mechoaround %actor% _����� �������� ������ ���� � %actor.name% ������ ���������%actor.u%.
                            mskilladd %actor.name% ����.���� 5
                          end
                        end
                      break
                      *���������
                      case 5
                        if %actor.skill(������)%
                          if %actor.skill(������)% < maxskill323
                            msend %actor% _����� �������� ������ ����, ������� ��������� ����� ��������.
                            mechoaround %actor% _����� �������� ������ ���� � %actor.name% ������%actor.u% ������� ������.
                            mskilladd %actor.name% ������ 5
                          end
                        end
                      break
                    done
                    msend %actor% _�� ��� ������ ���� �� �������� 400000 ����� �����.
                    %actor.exp(+400000)%
                    set vkonets323 1
                    worlds vkonets323
                    � ������ ����� � �� ���������� � ����.
                    mecho ����� �������� ���� �� �����.
                    *�� � ������ �����, ������� ������ �������... ����� �� ����� ����� ������ :P
                    foreach vse323 32362 32363 32365 32367 32372 32373 32374 32378 32381
                      if %exist.mob(%vse323%)%
                        unset poka323
                        calcuid poka323 %vse323% mob
                        exec 32334 %poka323.id%
                      end
                    done
                    mpurge %self%
                  end
~
#32318
���� � ����������~
0 q 100
~
if %actor.vnum% != -1
  halt
end
if %kkonets323% == 1
  halt
end
wait 1
set k 0
foreach osta323 32362 32363 32365 32367 32372 32373 32374 32378 32381
  if %exist.mob(%osta323%)%
    eval k %k% + 1
  end
done
if %k% < 6 && %vkonets323% != 1
  � �� ��� ��� ���������, �� �������� �� �������, �� ������!
  dg_cast '���������' .%actor.name%
  dg_cast '���� ����' .%actor.name%
  halt
end
� �� �������� ���. �� ����� �� �������� �� �������� �� ���� ������ ����?
� �� ������� �� ���� �������, �� ��� �������� ����� ���, ���� �������� ���, � �� �����.
� � ������� ���� �������� �������, � � ���� ����� �� ��������, ��� ����� ���������� ��� ��������.
� ��� �� ��������� ����� ������������ ��� (���� � ����������) � ����� �� �������.
� � ��� �� ���� �������� ������ ������ �����.
if %actor.sex% == 2
  � �� ���� ������� ����, %actor.name%, ��� ���� ��������, ����� �� �� ������� � ��� ����...
  ��� .%actor.name%
else
  � �� ���� ������� ����, %actor.name%, ������� ���, ��� ����� �� ����� ��������� �� ���...
end
� �� �� ������ �� ����� ������ �����, ���������� ������� � ��� ��������.
� ��� �� ��� �����������, � ������� ����� ��� �� ������ �� ������ ��� �����.
� � ���� ��� �� ����, �� ������� ������� � �������� ������� �������.
wait 5s
~
#32319
����� ������ ����� ����������~
0 j 100
~
if %actor.vnum% != -1
  halt
end
wait 1
set k 0
foreach osta323 32362 32363 32365 32367 32372 32373 32374 32378 32381
  if %exist.mob(%osta323%)%
    eval k %k% + 1
  end
done
if %k% < 6 && %vkonets323% != 1
  � �� ��� ��� ���������, �� �������� �� �������, �� ������!
  dg_cast '���������' .%actor.name%
  dg_cast '���� ����' .%actor.name%
  halt
end
if %object.vnum% == 32381
  wait 1
  mpurge %object%
  if %exist.mob(32300)%
    calcuid knyaz323 32300 mob
    detach 32301 %knyaz323.id%
  end
  wait 1s
  if %kkonets323% == 1
    *�� ���� �� �����, �� ���� ��
    � ��� ��� ��� �� � ����, � ��� �����.
    halt
  end
  � �� ������ ��� ����! ������ �� �� ����� ����������.
  msend %actor% ���������� ��� ��� 20000 ���.
  mechoaround %actor% ���������� ��� %actor.dname% ������� ����� ���.
  %actor.gold(+20000)%
  detach 32318 %self.id%
  set skonets323 1
  worlds skonets323
  *�� � ������ �����, ������� ������ �������... ����� �� ����� ����� ������ :P
  foreach vse323 32362 32363 32365 32367 32372 32373 32374 32378 32381
    if %exist.mob(%vse323%)%
      unset poka323
      calcuid poka323 %vse323% mob
      exec 32334 %poka323.id%
    end
  done
end
~
#32320
����� ������ ����� �����~
0 j 100
~
if %actor.vnum% != -1
  halt
end
if %object.vnum% == 32384
  wait 1
  mpurge %object%
  detach 32301 %self.id%
  wait 1s
  msend %actor% _�� ���������� ����� �������� � ���, ��� ��������� ������� ���������.
  mechoaround %actor% _%actor.name% �����%actor.g% ��������� ����������� ����� �������� ���� ������� � ������ �� ���������.
  wait 1s
  if %vkonets323% == 1
    � � ���� ������ ��� ����, �� �� ��?
    � ������� ��� ��� ��������, ���� � ���.
    � �� ���� � ������ �� ���, ������� ����� ���� ������.
    halt
  end
  if %skonets323% == 1
    � �� ��� ��� �� �� ��� ���������, ���-�� ����� ��������� ���� � ��������� �������.
    ���
    halt
  end
  set k 0
  foreach osta323 32362 32363 32365 32367 32372 32373 32374 32378 32381
    if %exist.mob(%osta323%)%
      eval k %k% + 1
    end
  done
  if %k% < 6
    � � ��� �� ��, %actor.name%, ���� ��� ��������%actor.g%? � ���� �� ���� �� ������.
    � ��� �� ��� ������ ���� ������� �����?
    � �������� �������-���������, �� �������� �� ���� ������.
    halt
  end
  ���
  � ������� �� ������!
  msend %actor% ����� ������� ��� ��� 7000 ���.
  mechoaround %actor% ����� ������� ��� ����� ��� %actor.dname%.
  %actor.gold(+7000)%
  msend %actor% _������� ��� ������ ����, �� �������� 300000 ����� �����.
  %actor.exp(+300000)%
  switch %actor.class%
    *������
    case 0
      *������
      case 9
        � ����� ��� � ��������� ��������, �� ���� ���-���� ������.
        calcuid mezenya323 32310 mob
        attach 32335 %mezenya323.id%
        set geroy323 %actor.id%
        worlds geroy323
      break
      *������
      case 11
        � ����� ��� � ������ �������, �� ���� ���-���� ������.
        calcuid vepr323 32307 mob
        attach 32336 %vepr323.id%
        set geroy323 %actor.id%
        worlds geroy323
      break
    done
    set kkonets323 1
    worlds kkonets323
    *������ � ������
    if %exist.mob(32379)%
      calcuid tenesvet323 32379 mob
      mat 32330 mecho _���-�� ������ ������ � ������� ���� �������� �������� � ��������� ������.
      mteleport %tenesvet323% 32330
    end
    *�� � ������ �����, ������� �� ����� �������... ����� �� ����� ����� ������ :P
    foreach vse323 32362 32363 32365 32367 32372 32373 32374 32378 32381
      if %exist.mob(%vse323%)%
        unset poka323
        calcuid poka323 %vse323% mob
        exec 32334 %poka323.id%
      end
    done
  end
~
#32321
����� �������~
2 f 100
~
if %self.vnum% < 32355
  detach 32312 %self.id%
  attach 32312 %self.id%
else
  detach 32300 %self.id%
  attach 32300 %self.id%
end
*� �������
if %self.vnum% == 32340
  wdoor %self.vnum% n purge
  wdoor %self.vnum% s purge
  wdoor %self.vnum% e purge
  *� �������
elseif %self.vnum% == 32348
  wdoor %self.vnum% n purge
  wdoor %self.vnum% s purge
  wdoor %self.vnum% w purge
  wdoor %self.vnum% e flags ab
  *�����
else
  wdoor %self.vnum% n purge
  wdoor %self.vnum% s purge
  wdoor %self.vnum% w purge
  wdoor %self.vnum% e purge
end
~
#32322
� ��������� - �~
0 j 100
~
if %actor.vnum% != -1
  halt
end
if %actor.sex% == 2
  return 0
  halt
end
eval xpeh %object.name%
wait 2
if %object.type% != 17
  � ��� �� ��� ��� �����?
  ���� %xpeh.car%
  halt
end
if %object.val1% == 0
  � ����� ��� ������ ����?
  ���� %xpeh.car%
  halt
end
if (%object.val2% == 1 ) || (%object.val2% == 2 ) || (%object.val2% == 3 ) || (%object.val2% == 5 ) || (%object.val2% == 7 ) || (%object.val2% == 8 )
  � ������ �� ���� ������? �����!
  wait 1s
  if !(%object.val0% == %object.val1%)
    � � ��� �� ����%object.w%-��?
    ���� %xpeh.car% .%actor.name%
    halt
  end
  ����
  mecho _�������� ����� ����� ������ %object.vname%.
  eval obyom %object.val1%
  if %obyom% > 20
    set obyom 20
  end
  eval pyan323 %pyan323% + %obyom%
  worlds pyan323
  mpurge %object%
  wait 1s
  if %pyan323% > 70
    switch %random.7%
      case 1
        ��
      break
      case 2
        ����
      break
      case 3
        ���
      break
      case 4
        ���
      break
      case 5
        ������
      break
      case 6
        ����
      break
      default
        ����
      break
    done
  end
  wait 1s
  if %pyan323% > %random.200% + 100
    mecho _��������� ������ ��������...
    ��� ���
    ��� ���
    mtransform 32384
    �����
    detach 32323 %self.id%
    detach 32322 %self.id%
  end
else
  � ��� �� ��� ��� �����?
  ���� %xpeh.car%
end
~
#32323
� ��������� - �~
0 c 1
���������� ��������� ����������~
if %actor.vnum% != -1
  halt
end
if !(%arg.contains(��������)%)
  msend %actor% _� ��� ���� ����� ������?
  halt
end
if !(%actor.sex% == 2)
  msend %actor% ���, �������� ��������� �� ��������.
  halt
end
wait 2
mforce %actor% ��� ��������
wait 1s
msend %actor% �������� ������� ������� ��� � ������ �� ���.
mechoaround %actor% �������� ������� ��������� �� %actor.vname%.
wait 1s
if %self.fighting%
  halt
end
if !(%actor.id% == %kras323.id%)
  if (%actor.age% < 26)
    � ������ ��, ������ ������, �� �� ������ �, ������� � ����� ������������.
    ������
    msend %actor% _�� ��������, ��� ���� ��� ����������� � �������������, �� � ������ �� ����� �������...
  elseif (%actor.age% < 46)
    � �������, � �������, �� ����� ������ ���.
    ���
    msend %actor% _�� ��������, ��� ���� ��� ����������� � �������������, �� ��� ���� �� �������...
  else
    � �������, � ���� �� - ������ �������.
    ����
    msend %actor% _�� ��������, ��� ���� ��� ������� � ������� ��������, �� ������� � �����������...
  end
  halt
end
� ������ ��, ������ ������! � ������-�� �������� �� ����, ������ ���-��� �������������!
msend %actor% _�������� ������� ���� ��� �� ���� � ����� ����-��.
mechoaround %actor% _�������� ������� �������� %actor.vname% � ����� � ��� ����-��.
mat 32317 mecho _�������� ������� ������ ���� � %actor.tname%.
mat 32317 mecho _�������� ������� ������ ����� � ����� � ������ ���� %actor.vname%.
mat 32317 mecho _�������� ������� ����� ����� � ��� �������.
mdoor 32317 e flags ab
mteleport %self% 32321
mteleport %actor% 32321
msend %actor% _�� ������ � �����...
mechoaround %actor% _�������� ������� ������ ���� � %actor.tname%.
wait 1s
if %self.fighting%
  halt
end
foreach vambare323 %self.pc%
  if !(%vambare323% == %actor%)
    � � �� ���%vambare323.y% ������, %vambare323.name%!
    msend %vambare323% _�������� �������� ��� ���.
    mechoaround %vambare323% _�������� �������� %vambare323.vname% ���.
    mat 32317 mecho %vambare323.name% ��������%vambare323.g% � �������.
    mteleport %vambare323% 32317
  end
done
wait 1s
if %self.fighting%
  halt
end
mecho _�������� ���� �������, ������ �� � ����, � ��� ������ �� ����� �����.
mload obj 32388
��� ���
��� ���
���
� ������ �����, �����, �����������!
mtransform 32383
set dev323 %actor.id%
global dev323
attach 32324 %self.id%
detach 32322 %self.id%
detach 32323 %self.id%
~
#32324
�������� � ������~
0 b 100
~
if !(%self.fighting%) && (%dev323.realroom% == %self.realroom%)
  switch %random.7%
    case 1
      ������ .%dev323.name%
    break
    case 2
      ���� .%dev323.name%
    break
    case 3
      ��� .%dev323.name%
    break
    case 4
      ��� .%dev323.name%
    break
    case 5
      ��� .%dev323.name%
    break
    case 6
      ������ .%dev323.name%
    break
    default
      ����� .%dev323.name%
    break
  done
end
~
#32325
����������~
1 c 2
�����������~
if %actor.vnum% != -1
  halt
end
if !(%actor.sex% == 2)
  osend %actor% _���� �� ��� ��������, ������� ������ � ���� ���� ��� �� ������ :)
  halt
end
wait 2
osend %actor% _�� ������� ������, ������� &M������&n � &W������&n � ������ ������� �� � ����.
oechoaround %actor% _%actor.name% ������� ������, ������� &M������&n � &W������&n � ������ ������� �� � ����.
wait 1s
osend %actor% _�� &c�������&n ����� � &K����������&n �����.
oechoaround %actor% _%actor.name% &c�������&n ����� � &K����������&n �����.
wait 1s
osend %actor% _�� ����� &R������&n � ��������� ����. ���!
oechoaround %actor% _%actor.name% ��������� ���� &R�������&n. ����� �������!
if !%actor.affect(��������� ����)%
  dg_affect %actor% ���������_���� ���������_���� 2 100
  dg_affect %actor% ������� ���������_���� 2 100
  dg_affect %actor% ����� ���������_���� 18 100
end
if (%actor.realroom% >= 32300) && (%actor.realroom% <= 32399)
  set kras323 %actor.id%
  worlds kras323
end
opurge %self%
~
#32326
������������~
1 c 2
�������~
if %actor.vnum% != -1
  halt
end
if !(%arg.contains(������������)%)
  osend %actor% _� � ��� �� ������ ��������� ���?
  halt
end
wait 2
osend %actor% _�� ���������� ������� ���������� ������������, �� �� �������� ������� � �������� ����� ������.
oechoaround %actor% _���������� ������������ � ����� %actor.rname% �������� ����� ������.
calcuid penta323 %actor.realroom% room
attach 32329 %penta323.id%
exec 32329 %penta323.id%
detach 32329 %penta323.id%
if %random.9% == 1
  osend %actor% _���������� ������������ ����������.
  %purge% %self%
end
~
#32327
����� � ������~
1 t 90
~
wait 1
osend %actor% _�� ������ ������ ������, ����������� � ������� �� ����� �����.
oechoaround %actor% _%actor.name% �����%actor.g% ������ ������, ����������� � ������� �� ����� �����.
oecho _���������� ���� �������� �����!
eval overok323 %actor.remort% * 2 + %actor.level%
if %overok323% < %random.100%
  osend %actor% �� ������� �� �����, �� � ����� ��������������.
  oechoaround %actor% %actor.name% �����%actor.q% �� ����� !
  dg_affect %actor% ���������� ���������� 1 35 1
else
  osend %actor% _�� ����������� �� ����, � ��� �����.
  oechoaround %actor% _%actor.name% ��������%actor.u% �� ����, ������� ����� �������.
end
opurge %self%
~
#32328
����� �����~
1 c 2
���������~
if %actor.vnum% != -1
  halt
end
if !(%arg.contains(�����)%)
  osend %actor% _� � ��� �� ������ ��������� ���?
  halt
end
wait 2
osend %actor% _�� ��������� ����� �����.
oechoaround %actor% _%actor.name% ��������%actor.g% ����� �����.
wait 1s
oecho _�� ����� �������� ��������� ����.
oload mob 32385
opurge %self%
~
#32329
�����~
2 z 1
~
wportal 32300 2
~
#32330
� �������~
0 q 100
~
if %actor.id% != %otknyazya323.id%
  halt
end
wait 1
� ��, ����� ����������!
���
wait 1s
� �����, ���� ��� ��, %actor.name%, � ���� �����. � ����� �� ��� ������� � ������� �� ����� ����������� ���������.
� ���� �������� �� ���� �� ���� - ��� ������ ������ ���������.
� ���� �� �� �� ����� ���� �����������, �� ���� �������, ��� ���� ������ ����, ����� ����� ����� � ������� ���������.
� �� ������ ���!
� � ����� ���� ���������, ���� ���� ������, ��� � ������� ��������... �� � ��� ��� ��� ����...
����
attach 32331 %self.id%
wait 1s
foreach uvedunyi323 %self.pc%
  if %uvedunyi323.sex% == 2
    ��� .%uvedunyi323.name% ��� �� �������, � ������ � ����� �� ������. � ���� � �� ����� ��������� ����.
    ��� .%uvedunyi323.name% ���� � ���� �������� ��� ����� - ������, ������, ������, ������. ����� � � ����� �� ������!
    ��� .%uvedunyi323.name% ���� ��������. ������? ��� � �����!
    attach 32332 %self.id%
  break
end
done
detach 32330 %self.id%
~
#32331
���� �������~
0 m 1000
~
if %actor.vnum% != -1
  halt
end
wait 1
if %amount% >= 1000
  mload obj 32308
  ���� ������ .%actor.name%
  if %amount% > 1000
    eval lishnee323 %amount% - 1000
    � ������� �� ����.
    ���� %lishnee323% ��� .%actor.name%
  end
  detach 32330 %self.id%
  %self.gold(-1000)%
  wait 2
  mecho _������� ������� ��� ���� ������������, � ��������� ��� ��������� �� ��� � ����� �������.
  mpurge %self%
end
~
#32332
������� ���� ����������~
0 d 1
����~
if %speech% == ����
  wait 1
  switch %actor.sex%
    case 1
      � � ������?
      ��� .%actor.name%
    break
    case 2
      mload obj 32387
      ���� ������ .%actor.name%
      detach 32332 %self.id%
    break
  done
end
~
#32333
������������ ����~
2 c 1
������ ��������~
if %actor.vnum% != -1
  halt
end
wait 1
if !(%arg.contains(����)%)
  wsend %actor% _���� ������-��?
  halt
end
if %random.4% != 1
  wsend %actor% _�� ����� �������� ����� ����� ����, �� ��� ��� �����.
  wechoaround %actor% _%actor.name% ����%actor.g% ���-�� ������ ���, ����������� ���������� ����� � ����������� �����.
else
  wsend %actor% _�� ����� ���� � ���� �������� ������.
  wechoaround %actor% _%actor.name% ���%actor.y% � ���� �������� ������ ����.
  wload obj 32335
end
detach 32333 %self.id%
~
#32334
������~
0 z 0
~
mecho _����� %self.name% ����-�� ������%self.g%.
mpurge %self%
~
#32335
�������� ����~
0 q 100
~
if (%actor.id% != %geroy323.id%)
  halt
end
wait 2
� �������� ��� ����� ������� ����, %actor.iname%, ����, ��� ����. �� ��� �...
eval xskill323 82 + %actor.remort% * 5
if xskill323 > 142
  set xskill323 142
end
if !%actor.skill(������� ������)%
  msend %actor% �� ������� ������ '������� ������'.
  mskillturn %actor% �������.������ set
elseif %actor.skill(������� ������)% < xskill323
  msend %actor% _������ �� ����� ������ �������� ������.
  mskilladd %actor% �������.������ 8
else
  � �, �� �� ���%actor.g% ������ �������!
end
detach 32335 %self.id%
~
#32336
������ ����~
0 q 100
~
if (%actor.id% != %geroy323.id%)
  halt
end
wait 2
� �������� ��� ����� ������� ����, %actor.name%, ����, ��� ����. �� ��� �...
eval xskill323 82 + %actor.remort% * 5
if xskill323 > 142
  set xskill323 142
end
if !%actor.skill(������)%
  msend %actor% �� ������� ������ '������'.
  mskillturn %actor% ������ set
elseif %actor.skill(������)% < xskill323
  msend %actor% _������ �� ����� ������ ������ ����.
  mskilladd %actor% ������ 8
else
  � �, �� �� ���%actor.g% ������ �������!
end
detach 32336 %self.id%
~
#32337
���� ����� � ������������� ������~
0 f 0
~
*�� ����� ������ ���� �� ������ ������ ����� ����
*���� ������ � 20% �� 2,5%
*� ����� ������� �� ����� ��������� ���� ��� ������ ���� 20% random.10 > 1 ��� ��������� 90% �����, ������� ���� ����� � 2 ���� �����
if %random.10% > 2
  halt
end
eval shmotka323 %self.vnum%
if %random.5% > %world.curobjs(%shmotka323%)%
  mload obj %shmotka323%
end
~
#32338
������ ����������~
0 f 0
~
if %exist.mob(32300)%
  calcuid velesur323 32300 mob
  detach 32303 %velesur323.id%
  attach 32320 %velesur323.id%
end
*���������
mload obj 32384
~
#32339
������ ���������~
0 f 0
~
*����
mload obj 32386
~
#32340
����~
0 q 100
~
wait 1
msend %actor% %self.name% �������%self.g% �� ��� � ��������%self.q% : '... �����.'.
mechoaround %actor% %self.name% ��������%self.g% �� %actor.vname% � ��������%self.q% : '... �����.'.
dg_cast '����' .%actor.name%
~
#32341
��������~
0 q 100
~
wait 1
msend %actor% %self.name% �������%self.g% �� ��� � ��������%self.q% : '����� ������� �����'.
mechoaround %actor% %self.name% ��������%self.g% �� %actor.vname% � ��������%self.q% : '����� ������� �����'.
dg_cast '��������' .%actor.name%
~
#32342
������ ����������~
0 f 0
~
if %world.curobjs(32344)% < %random.12%
  mload obj 32344
end
~
#32343
����~
0 q 100
~
if %actor.vnum% != -1
  halt
end
if %actor.sex% != 2
  halt
end
wait 1
� �� ��� ��� ������, ����?
msend %actor% %self.name% �������� �� ��� � ���������� : '�� �������� ���� ��������'.
mechoaround %actor% %self.name% ��������� �� %actor.vname% � ���������� : '�� �������� ���� ��������'.
dg_cast '��� ��' .%actor.name%
~
#32344
������ ����~
0 f 0
~
*����
mload obj 32385
~
$~
