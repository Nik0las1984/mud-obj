#47600
reset~
2 f 100
~
calcuid reset 47610 room
wdoor 47610 north room 47613
wdoor 47613 south room 47610
attach 47601 %reset.id%
attach 47603 %reset.id%
eval num 47612
while %num% < 47632
  calcuid reset %num% room
  detach 47602 %reset.id%
  eval num %num%+1
done 
calcuid reset 47608 room
attach 47604 %reset.id%
calcuid reset 47624 room
attach 47610 %reset.id%
attach 47611 %reset.id%
wdoor 47624 east room 47625
wdoor 47625 west room 47624
wdoor 47632 east purge
wdoor 47633 west purge
wdoor 47647 east purge
wdoor 47653 west purge
calcuid reset 47667 room
attach 47618 %reset.id%
wdoor 47614 west purge
wdoor 47629 north purge
calcuid reset 47632 room
attach 47612 %reset.id%
calcuid reset 47647 room
attach 47616 %reset.id%
wdoor 47654 east purge
wdoor 47675 west purge
calcuid reset 47654 room
attach 47621 %reset.id%
calcuid reset 47632 room
attach 47612 %reset.id%
calcuid reset 47647 room
attach 47616 %reset.id%
calcuid reset 47654 room
attach 47621 %reset.id%
~
#47601
������� � �������� 1~
2 e 100
~
wait 1ms
wdoor 47610 north purge
wdoor 47613 south purge
wait 1s
wecho _�� ������������� ��� ��� ����� ����� ���-�� ��������
wait 2ms
wecho _������ ������� ���� �����������, ��� ������� �� ������
wait 3ms
wecho _���� ����������� ����� ������� �� ���, ������ ���-�� ��������
calcuid num 47605 obj
exec 47607 %num%
detach 47601 %self.id%
~
#47602
���� �������~
2 e 100
~
wait 1ms
wload mob 47600
wecho _����� �������� ����� ��� ����� ������������ � ������� � �� ������ ����� �������� �������
wait 1s
wecho �������� ������� ������ ������� � ������� � ���
detach 47602 %self.id%
~
#47603
������ 2 ������~
2 e 100
~
wait 1s
if %world.curmobs(47600)% == 2
  wecho _�������� ����� �������� �������� ����
  wdoor 47610 north room 47613
  wdoor 47613 south room 47610
  detach 47603 %self.id%
end
~
#47604
��������� ����� �������~
2 e 100
~
eval i 6
while %i% > 0
  eval roomnum 47612+%random.19%
  if %roomnum% == 47621
    eval roomnum %roomnum%+1
  end
  if %roomnum% == 47626
    eval roomnum %roomnum%-1
  end
  calcuid roomid %roomnum% room
  attach 47602 %roomnum.id%
  eval i %i%-1
  wait 1s
done
detach 47604 %self.id%
~
#47605
������� �������~
0 n 100
~
mload obj 47603
wait 5ms
����� ���
wait 1s
if %random.5% == 3
  wecho ������� ������� � ���� �� ����� �������� �������� ������
  mload obj 47604
  ���� ���
end
detach 47605 %self.id%
~
#47606
���������� ����� ��������~
0 k 5
~
mecho &y������� �� ���� ���� ������ �� �����, ������ �������������&w
foreach pc %actor.pc%
  msend %pc% ������ ������������� �������� ��� �� �����
  %pc.wait(1)% 
  %pc.position(6)%
  mdamage %pc% 100
done
set target %random.pc%
if (!%target%)
  halt
end
wait 2s
switch %random.6%
  case 1
    msend %target% � ���������� ������������� ������� ������ ��������� ����� �� ���
    mechoaround %target% ��-�� ������������� ������� ������ ������, ��������� %target.rname%
    mdamage %target% 200
  break
  case 2
    msend %target% �������� �������� ����� ��������� ����� �� ���
    mechoaround %target% �������� �������� ����� �������� �������� %target.rname%
    mdamage %target% 150
    �����
  break
done
~
#47607
��������� ������~
1 z 100
~
wait 2ms
oecho ��������� ����� ������������ � ������ � ��� �������� ����� ��������
otransform 47606
~
#47608
����� �����~
1 g 1
~
wait 2ms
osend %actor% �� ��������� �������� ����� �����, ����� �� �� ������������
oechoaround %actor% %actor.name% ������ �� ���� � ������� �����
otransform 47605
~
#47609
������ ��������� �������~
0 k 15
~
switch %random.5%
  case 1
    mecho ������ ������� ����� ������ � ��������� �� �����
    msend %actor% ������ ����������� � ������ � ��� �����, ������� ������ ��� � �����!
    mechoaround %actor% ������ ������ �����, ������� ������ %actor.dname% � �����!
    mdamage %actor% 100
    ���
  break
  case 2
    mecho ������ ������� ����� ������ � ��������� �� �����
    msend %actor% ������ ����������� � ������ � ��� �����, ������� ������ ��� � �����!
    mechoaround %actor% ������ ������ �����, ������� ������ %actor.dname% � �����!
    mdamage %actor% 150 
    ���
  break
done
~
#47610
������� � �������� 2~
2 e 100
~
wait 1
wdoor 47624 east purge
wdoor 47625 west purge
wait 1s
wecho _�� ������������� ��� ��� ����� ����� ���-�� ��������
wait 2s
wecho _������ ������� ���� �����������, ��� ������� �� ������
wait 3s
wecho _���� ����������� ����� ������� �� ���, ������ ���-�� ��������
detach 47610 %self.id%
~
#47611
������ ��� ������~
2 e 100
~
wait 1s
if %world.curmobs(47600)% == 0
  wecho _�������� ����� �������� �������� ����
  wdoor 47624 east room 47625
  wdoor 47625 west room 47624
  wdoor 47614 west room 47681
  wait 60s
  wdoor 47614 west purge
  detach 47611 %self.id%
end
~
#47612
������� ������ � ������ ����� ����~
2 e 100
~
wait 1s
wecho ������ �������� �� ����� ���������� ����� ������, ������ ��� ������
wait 3ms
wecho ����� ������� ��� ����� ���������� ����, �������� ������ ������
wdoor 47632 east room 47633
wdoor 47633 west room 47632
wdoor 47629 north room 47679
wait 60s
wdoor 47629 north purge
detach 47612 %self.id% 
~
#47613
(������) ����� ���� ��������~
1 b 100
~
wait 5s 
if (%self.vnum% == 47608) || (%self.vnum% == 47613)
  if !%self.worn_by%
    halt
  end
  set char %self.worn_by%
  set i 0  
  set num 0
  while %i% < 18
    eval i %i%+1
    set item %char.eq(%i%)%  
    if %item.vnum% > 47607  && %item.vnum% < 47616
      eval num %num%+1
    end
  done
  if %num%>4 
    otransform 47613                     
  else
    otransform 47608
  end
end
~
#47614
(������) ����� ���� ��������~
1 b 100
~
wait 5s 
if (%self.vnum% == 47609) || (%self.vnum% == 47614)
  if !%self.worn_by%
    halt
  end
  set char %self.worn_by%
  set i 0  
  set num 0
  while %i% < 18
    eval i %i%+1
    set item %char.eq(%i%)%  
    if %item.vnum% > 47607  && %item.vnum% < 47616
      eval num %num%+1
    end
  done
  if %num%>4 
    otransform 47614                     
  else
    otransform 47609
  end
end
~
#47615
(������) ����� ���� ��������~
1 b 100
~
wait 5s 
if (%self.vnum% == 47612) || (%self.vnum% == 47615)
  if !%self.worn_by%
    halt
  end
  set char %self.worn_by%
  set i 0  
  set num 0
  while %i% < 18
    eval i %i%+1
    set item %char.eq(%i%)%  
    if %item.vnum% > 47607  && %item.vnum% < 47616
      eval num %num%+1
    end
  done
  if %num%>4 
    otransform 47615                     
  else
    otransform 47612
  end
end
~
#47616
������ ������~
2 e 100
~
wait 1s
if %world.curmobs(47611)% == 0
  wecho &R������ ������� �� ����� ���������� ����� ��������&n
  wait 2ms
  wecho �������� ����� �������� ����
  wdoor 47647 east room 47653
  wdoor 47653 west room 47647
  detach 47616 %self.id%
end
~
#47617
������ ���� � ������~
0 cfg 0
~
*���� ����
wait 1ms
mload obj 47600
~
#47618
������ �����~
2 c 1
������� �������� �������~
if !%arg.contains(����)%
  wsend %actor% ��� �� ������ ��������?
  halt
else 
  wsend %actor% �� ������������� � �������� ������� �����.
  wechoaround %actor.name% %actor.name% ������� ������� ����� �� ������ ������.
  wload obj 47617
  wforce %actor% ����� ����
  if %random.15% == 2
    wait 1s
    wforce %actor% � ����, �� �� ����� ��?
    set target %random.pc%
    wait 5ms
    wforce %target% � � �� �����, ������ �����, �� ������� ��� �� �����, ����
  end
  if %world.curobjs(47617)% == 3
    detach 47618 %self.id%
  end
end
~
#47619
����� � ������ ��� �����~
2 e 100
~
wait 2ms
set i 0  
set num 0
while %i% < 18
  eval i %i%+1
  set item %actor.eq(%i%)%  
  if %item.vnum% == 47617
    eval num %num%+1
  end
done
if %num% == 1
  wsend %actor% �� ��������� ����� ������, ���������� ������ ������ ���.
  wechoaround %actor.name% %actor.name% ��������� ����, ���������� ��� ������ ����� ������.
  halt
else 
  wsend %actor% _�� ���������� � ��� ����� ���������� � �������� ����, �� � ��� ���� ��� ������� �� �����.
  wait 3s
  wsend %actor% _����� �������� ������ ���, ��� � �������, ����� ������.
  wechoaround %actor% %actor.name% �������� ������%actor.g% � ������� � ������ � ��������%actor.u%.
  set ind 0
  set flat 47668 47669 47670 47672 47673
  foreach pcr %flat%
    if %actor.realroom%==%pcr%
      eval ind 1
    end      
  done
  if %ind%==0
    halt
  end
  wdamage %actor% 1000
end
~
#47620
���� ��������~
0 f 100
~
mload obj 47619
~
#47621
�������� ������~
2 c 1
��������~
if !%arg.contains(������)%
  wsend %actor% ��� �� ������ ��������?
  halt
else 
  wecho ������ � ����� ������ �����������
  wait 1s
  wecho &W������ �������� �� ����� ���� ���������&w
  wdoor 47654 east room 47675
  wdoor 47675 west room 47654
  detach 47621 %self.id%
end
~
#47622
��������� ���������~
0 n 100
~
wait 2ms
mload obj 47618
���� ����
~
#47623
������� �����~
0 n 100
~
set i 47620
while %i% < 47629
  mload obj %i%
  eval i %i%+1
done
wait 2ms
�� ���
���� ���
detach 47623 %self.id%
~
#47624
���� ������� ������~
0 f 100
~
mload obj 47612
if (%world.curobjs(47633)% < 6) && (%random.5% == 1)
  mload obj 47633
end     
~
#47625
���� �������� ������~
0 f 100
~
mload obj 47611
if (%world.curobjs(47637)% < 6) && (%random.5% == 1)
  mload obj 47637
end     
~
#47626
���� ������� ������~
0 f 100
~
mload obj 47610
mload obj 47608
if (%world.curobjs(47639)% < 6) && (%random.5% == 1)
  mload obj 47639
end     
~
#47627
������ �����������~
0 f 100
~
mload obj 47609
mload obj 47600
if (%world.curobjs(47636)% < 4) && (%random.1000% <= 90)
  mload obj 47636
end     
~
#47628
���� �����~
0 f 100
~
if (%world.curobjs(47629)% < 6) && (%random.5% == 1)
  mload obj 47629
end     
~
#47629
���� ������~
0 f 100
~
if (%world.curobjs(47630)% < 6) && (%random.5% == 1)
  mload obj 47630
end   
~
#47630
������ ����(���� ��� ����� ���� �������:-) )~
0 f 100
~
if (%world.curobjs(47631)% < 6) && (%random.5% == 1)
  mload obj 47631
end   
~
#47631
������ ������~
0 f 100
~
if (%world.curobjs(47632)% < 6) && (%random.4% == 1)
  mload obj 47632
end   
~
#47632
���� ����~
0 f 100
~
if (%world.curobjs(47634)% < 6) && (%random.5% == 1)
  mload obj 47634
end   
~
#47633
�������� ������~
0 f 100
~
if (%world.curobjs(47635)% < 13) && (%random.5% == 1)
  mload obj 47635
end   
~
#47634
�������� ��������~
0 f 100
~
if (%world.curobjs(47638)% < 6) && (%random.5% == 1)
  mload obj 47638
end   
~
#47635
������ ����������~
0 f 100
~
if (%world.curobjs(47640)% < 6) && (%random.5% == 1)
  mload obj 47640
end   
~
#47636
�������� �������� ������~
0 f 100
~
mload obj 47601
~
#47637
������� �����~
0 f 100
~
if (%world.curobjs(47641)% < 6) && (%random.5% == 1)
  mload obj 47641
end  
~
#47666
����������� ��������� ����~
0 q 100
~
wait 1
say ����������� ���� ��������������!
��� .%actor.name%
wait 1
mecho �������� ��� ������ ������, � ���� �� �����������.
wait 1
say ��� ��� �� ������� ������ - ����� ���� ���, � �������� �� ���� ������-�����.
mecho �������� ��� ������� ��� � ��������.
~
$~
