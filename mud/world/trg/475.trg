#47500
reset~
2 f 100
~
calcuid reset 47545 room
detach 47503 %reset.id%
attach 47503 %reset.id%
calcuid reset 47537 room
detach 47516 %reset.id%
attach 47516 %reset.id%
eval i 6
eval num 0
while %i% > 0
  eval reset 47569+%num%
  calcuid reset %reset% room
  detach 47504 %reset.id%
  attach 47504 %reset.id%
  eval i %i%-1
  eval num %num%+1
done 
eval i 3
eval num 0
while %i% > 0
  eval reset 47577+%num%
  calcuid reset %reset% room
  detach 47504 %reset.id%
  attach 47504 %reset.id%
  eval i %i%-1
  eval num %num%+1
done 
calcuid reset 47503 mob
detach 47517 %reset.id%
attach 47517 %reset.id%
detach 47522 %reset.id%
attach 47522 %reset.id%
detach 47518 %reset.id%
calcuid reset 47505 mob
detach 47519 %reset.id%
attach 47519 %reset.id%
detach 47520 %reset.id%
attach 47520 %reset.id%
detach 47521 %reset.id%
~
#47501
���� ��������~
0 f 100
~
if (%world.curobjs(47512)% < 10) && (%random.5% == 1)
  mload obj 47512
end     
~
#47502
���� ���������~
0 f 100
~
mecho _��������� ������ ��������� �� ��� � ���� �� ����� ��������
mecho _��� �� ��� ���� ������� � ������ ������� �� ��� �����
if (%world.curobjs(47530)% < 10) && (%random.5% == 2)
  mload obj 47530  
end
mload mob 47508
~
#47503
������ ������~
2 e 100
1~
wait 3ms
if %world.curmobs(47507)% == 0
  wportal 47580 2
  wait 1s
  wecho &b�� ������� ������� �������&n
  detach 47503 %self.id%
end
~
#47504
������ ��������~
2 e 100
~
wait 1ms 
eval i 0
foreach zom %self.pc%
  eval i %i%+1
done
if %i% == 0
  halt
end
wecho _����� ��� ���� ��������, � ����� ������� ������ �������� ��������
wait 1s
while %i% > 0
  eval npc 47507+%random.3%
  wload mob %npc%
  calcuid npc %npc% mob
  wecho _�� ����� �����%npc.q% %npc.name%
  eval i %i%-1
done
detach 47504 %self.id%
~
#47505
����� � ������� �������~
2 e 100
~
wait 2ms
while 1 > 0
  foreach pc %self.pc%
    if %pc.affect(������� ����)% != 1
      wsend %pc% _�� ���������� ���������� �� ���� ������
      wdamage %pc% 20
      if (%random.15% == 1) && (%pc.affect(����������)% == 0)
        wsend %pc.name% _�� ����� ������ �� ������������ � ������� ������
        wechoaround %pc% %pc.name% ����������� � ������� ������
        dg_affect %pc.name% ���������� ���������� 1 30 1
      end   
    end   
    
  done
  eval pc 000
  eval i 0
  foreach pc %self.pc%
    eval i %i% + 1
  done
  eval pc 000
  if %i% == 0
  break
  halt
end  
wait 15s  
done
~
#47506
����������� � ����~
2 e 100
~
wait 1ms
if %random.10% == 1
  wecho ����� ��� ������ ��������� � ����� ���� ������ ������
  wait 2ms
  wload mob  47508
end
eval pol %actor.realroom%
while 1 > 0
  wait 1s
  eval room 47553+%random.11%
  wdoor %pol% west room %room% 
  eval room 47553+%random.11%
  wdoor %pol% south room %room%
  eval room 47553+%random.11%   
  wdoor %pol% north room %room%
  eval room 47553+%random.11%  
  wdoor %pol% east room %room%
  switch %random.4%
    case 1 
      wdoor %pol% north purge
    break     
    case 2 
      wdoor %pol% south purge
    break
    case 3 
      wdoor %pol% east purge 
    break
    case 4
      wdoor %pol% west purge 
    break 
  done       
  eval i 0
  foreach pc %self.pc%
    eval i %i% + 1
  done
  eval pc 000
  if %i% == 0
  break
  halt
end  
done
~
#47507
����� �������� �������~
0 q 100
~
wait 1s 
mecho %self.name% �������� : '������ �� ������'.
mecho %self.name% ��������� ������ ��� �����.
mdoor 47574 east purge
mdoor 47545 west purge
while 1 > 0
  wait 1s
  eval i 0
  foreach pc %self.pc%
    eval i %i% + 1
  done
  eval pc 000
  if %i% == 0
    mdoor 47574 east room 47576
    mdoor 47545 west room 47576
  break
  halt
end  
done
~
#47508
����� �� ���� 1~
2 e 100
~
wait 1ms
wdoor 47559 north room 47565
~
#47509
���� �����~
0 f 100
~
detach 47507 %self.id%
detach 47508 %self.id%
mdoor 47574 east room 47576
mdoor 47545 west room 47576
switch %random.9%
  case 1 
    if (%world.curobjs(47500)% < 5) && (%random.5% == 2)
      mload obj 47500  
    end
  break
  case 2 
    if (%world.curobjs(47501)% < 5) && (%random.5% == 2)
      mload obj 47501  
    end
  break
  case 3 
    if (%world.curobjs(47513)% < 5) && (%random.5% == 2)
      mload obj 47513  
    end
  break
  case 4 
    if (%world.curobjs(47514)% < 5) && (%random.5% == 3)
      mload obj 47514  
    end
  break
  case 5 
    if (%world.curobjs(47515)% < 5) && (%random.5% == 3)
      mload obj 47515  
    end
  break
  case 6 
    if (%world.curobjs(47516)% < 5) && (%random.5% == 3)
      mload obj 47516  
    end
  break
  case 7 
    if (%world.curobjs(47517)% < 5) && (%random.5% == 3)
      mload obj 47517  
    end
  break
  case 8 
    if (%world.curobjs(47518)% < 5) && (%random.5% == 3)
      mload obj 47518  
    end
  break
  case 9 
    if (%world.curobjs(47519)% < 5) && (%random.5% == 3)
      mload obj 47519  
    end
  break
done
~
#47510
����� �� ���� 2~
2 e 100
~
wait 1ms
wdoor 47554 south room 47552
~
#47511
����� �������~
0 f 100
~
if (%world.curobjs(47509)% < 10) &&  (%random.5% == 1)
  mload obj 47509
elseif (%world.curobjs(47510)% < 10) &&  (%random.5% == 1)
  mload obj 47510
end
~
#47512
����� ����~
0 f 100
~
if (%world.curobjs(47509)% < 10) &&  (%random.5% == 1)
  mload obj 47511
end
~
#47513
���� �������~
0 f 100
~
if (%world.curobjs(47512)% < 10) && (%random.5% == 1)
  mload obj 47512
end   
~
#47514
����� � �������� �������~
2 e 100
~
wait 2ms
while 1 > 0
  foreach pc %self.pc%
    if %pc.affect(�������� ����)% != 1
      wsend %pc% _����� ������� �������� ����������� ���
      wdamage %pc% 40
    end   
    
  done
  eval pc 000
  eval i 0
  foreach pc %self.pc%
    eval i %i% + 1
  done
  eval pc 000
  if %i% == 0
  break
  halt
end  
wait 15s  
done
~
#47515
������� ��������~
1 b 30
~
oecho _������� ���� �������� � ��� �� �����
~
#47516
����� 2~
2 e 100
~
wait 3ms
if %world.curmobs(47521)% == 0
  wecho _������� ���� ���������� � ���� ������ ��� ����
  wait 1s
  wportal 47545 3
  detach 47516 %self.id%
end
~
#47517
������ ����������~
0 q 100
~
wait 1s
say ���� ������������ � ����� �����.
say ������ ���� ���-�� ������� �������� ����������� � ����� ���������.
���
wait 2ms
say �� ��� ���� ������������ � �������� �� ���.
say ������p����� � ��, ��� �������� ���� ���������� � ����� ������ ����
say �� ��������� ���, ������� ���� � ����� ����� �� �������.
wait 1s
�� ��������� ������� � ��� � ���������
wait 1s
say �� ����� ����, ��� ��� �������, ����� ����������� �������� ����.
say � ����� ���� ��� �����, ������ ���� ����� � ��� ������� �� ��������.
say �� ���-�� ������� ��� ��� �����, ����������� ������ ������
say � ��� �������� ��� � ����� ��� ���� �� �����
��
wait 1s
say ��� ��� � �� ����� ��������� ���������� ����� ��������.
say ��������� ���� �� ������� ��, ������ ���� ������ ������� ���� ��� �������� � �������
say � ������� �� �� ������ �������.
wait 1s
���
wait 2ms
say ������� �, ��� � ������� ����� ���� ����� �������� ����, �������� ���
say ������� � ���� �����, �������� ���, ����� ��� ��� � ������� ���������
say �� �������� � �� ������, ��������� � ���� ����, �� ��������.
say �� ���, �������� ���?
~
#47518
������� ���� ������~
0 j 100
~
if %object.vnum% != 47524
  wait 1s
  Say ���-�� �� �� �� ��� ������
  Say ��� ����� ������ ���� �������� �������
  ��� %obj.iname% %actor.iname%
  ��� ���
  halt
else 
  wait 1s
  ���
  say �� ������������� ���� ��� �������
  say ��� � � ������, �� �������� � �� ������.
  if (%world.curobjs(47533)% < 5) &&  (%random.5% == 3)
    mload obj 47533
    ���� ������ %actor.name%
    say �����, ��� ������� ������ ���� � �����.
  elseif 
    mload obj 47525
    ��� ���� %actor.name%
  end
  detach 47518 %self.id%
end
~
#47519
����� � �������~
0 q 100
~
wait 1s
say ������ �� ���� ����������� � �����������
say �������� ������� ����� ������ ��������� � ����������� ������
say �� ��� �� ����������� ������ ������ ��������� �������� ������� � ����������� � �����
say � ��� ��� ����� �� � �������
���
wait 1s
say �� ��� ����� �, ��� � ���� ����� ����� �������� ������
say ����������� �� �������� ���� �, ��������, ������ �����
say ��������� �� ���, � ������ �� ��������� �� ����� ������ ���� � ���� ����
say � ���� ��� � ���, ��� ������� ���� ������ ����� ��� ���������� � ���������� ������
���
wait 1s
say � ������, ���� ��� ���, ��� ��� ���� ������
say ����� ��� ������ �� �� �������, �� ��� � ������� ����� ���� �������� ����
say ���� �� �� � ���, �� �� ������ �������� ��������� � ����� ����� � �����.
say ������ ���!!! 
~
#47520
������ ������ ��������~
0 d 1
������~
wait 2s
say ��� � ���������, ������� ���� �����
attach 47521 %self.id%
detach 47519 %self.id%
detach 47520 %self.id%
~
#47521
���� ������ ��������~
0 j 100
~
if %object.vnum% != 47524
  wait 1s
  Say ���-�� �� �� �� ��� ������
  Say ��� ����� ������ ���� �������� �������
  ��� %obj.iname% %actor.iname%
  ��� ���
  halt
else 
  ���
  say �� ������������� ���� ��� �������
  say ������� ���� �������, ��� �� � ���� ����� � ���� ������������ ������
  switch %actor.class%
    case 1
      if %actor.skill(���������)% <120
        mskilladd %actor.name% ��������� 5
      else 
        say �� ��� ����� ����, � ������ ���� �� �����
      end
    break
    case 2
      if %actor.skill(��������)% <120
        mskilladd %actor.name% �������� 5
      else 
        say �� ��� ����� ����, � ������ ���� �� �����
      end
    break
    case 3
      if %actor.skill(����������� �����)% <120
        mskilladd %actor.name% �����������.����� 5
      else 
        say �� ��� ����� ����, � ������ ���� �� �����
      end
    break
    case 4
      if %actor.skill(��������)% <120
        mskilladd %actor.name% �������� 5
      else 
        say �� ��� ����� ����, � ������ ���� �� �����
      end
    break
    case 5
      if %actor.skill(���������� �����)% <120
        mskilladd %actor.name% ����������.����� 5
      else 
        say �� ��� ����� ����, � ������ ���� �� �����
      end
    break
    case 7
      if %actor.skill(�����)% <120
        mskilladd %actor.name% ����� 5
      else 
        say �� ��� ����� ����, � ������ ���� �� �����
      end
    break
    case 9
      if %actor.skill(������ �����)% <120
        mskilladd %actor.name% ������.����� 5
      else 
        say �� ��� ����� ����, � ������ ���� �� �����
      end
    break
    case 10
      if %actor.skill(����)% <120
        mskilladd %actor.name% ���� 5
      else 
        say �� ��� ����� ����, � ������ ���� �� �����
      end
    break    
    case 11
      if %actor.skill(��������)% <120
        mskilladd %actor.name% �������� 5
      else 
        say �� ��� ����� ����, � ������ ���� �� �����
      end
    break       
    case 12
      if %actor.skill(�������)% <120
        mskilladd %actor.name% ������� 5
      else 
        say �� ��� ����� ����, � ������ ���� �� �����
      end
    break
    default
      ���
      say ������, �� �� ����� ���� � ��� ������ ��������� �� ��������� � ����
    break
  done
end
detach 47521 %self.id%
~
#47522
������� ������ �������~
0 d 1
������~
wait 5ms
attach 47518 %self.id%
detach 47517 %self.id%
say ��� � ���������, ������� �����
detach 47522 %self.id%
~
#47523
������ ����~
0 f 100
*~
switch %random.4%
  case 1 
    if (%world.curobjs(47520)% < 10) && (%random.5% == 1)
      mload obj 47520  
    end
  break
  case 2 
    if (%world.curobjs(47521)% < 10) && (%random.5% == 1)
      mload obj 47521  
    end
  break
  case 3 
    if (%world.curobjs(47522)% < 10) && (%random.5% == 1)
      mload obj 47522 
    end
  break
  case 4 
    if (%world.curobjs(47532)% < 10) && (%random.5% == 1)
      mload obj 47532 
    end
  break
done
~
#47524
���� ������~
0 f 100
~
if %random.5% == 3
  mecho _������� ������ ��� ���������, �� ��� ����� ����� ����� ����������
  mecho _��� ��������� ������ ������� ����� ����
  mload mob 47508
end
if (%world.curobjs(47529)% < 10) && (%random.5% == 1)
  mload obj 47529
end
~
#47525
������ ������~
0 f 100
~
if (%world.curobjs(47531)% < 10) && (%random.5% == 1)
  mload obj 47531
end
~
#47526
���� ����~
0 f 100
~
mload obj 47524
~
$~
