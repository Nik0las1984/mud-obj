#80300
������� ���� ���� �����_1~
0 r 100
~
if (%quest803.name% == %nil%)
  wait 1s
  � ����������� ���� %actor.iname%!
  � ���� �� ������%actor.g% ��������.
  ������ %actor.iname%
  wait 1s
  � ���� � ���� ��� ���� ������� �������������.
  � �������� ��� �� ���� ���� ��������.
  � �� ��� ���, ���������?
else
  calcuid form_mb 80300 mob
  detach 80301 %form_mb.id%
  attach 80303 %form_mb.id% 
  ������ %actor.iname%
  wait 1s
  � �� ����������!
  � � ���� ���� %actor.iname%...
  � ��� �������� ��������, ��� ���� ������ ����� ���� � ���� ����������!
  � �� �� �����, ��� �� ����%actor.y% ���� ������ ���...
  � �� ����� ������� ���� ����������.
  ������ %actor.iname%
  � ���� � ���� � ���� ��������� �����������.
  � ������ �� ���� ��������!
  � ��� �� ������� ���� ������� � ��� ��� � ���� ���������...
  wait 1s
  � �� ��������� � �������� � �������, ��� � � ��� ��������� ������.
  � ���� �� ��������� ������ ���� ���� � �������� ���� ����!
  � �� ��� ���, �� �� ����� ������� ��� ���? �� ��� ���!?
  wait 1s
end
~
#80301
������� ���� ���� �����_2~
0 d 0
��~
if (%quest803.name% == %nil%)
  set quest803 %actor% 
  set side803 0
  worlds quest803
  worlds side803
  wait 1s
  � � ���� ��� �� �����������!
  ���� %actor.iname%
  � ��� ���.
  � �����, �������� �� ���, ���� ������, � ������� ��������� ���������.
  � ��� �� ���� ���� � ������ ������ ����������, ������� ����� � ��� �� � ����� ������!
  ������
  wait 1s
  � �� ��� ����� ������� ���, ��� ���� � ��� ��� ����� �������, ��� �� ��� ��������!
  � ����� �� ��� �� ����� �� �������.
  ������ %actor.iname%
  � ������� ��� �� � ����� �� ������ ���������� ���������.
  � ����� ����!                          
end
calcuid del_trig 80300 mob
detach 80300 %del_trig.id% 
detach 80301 %del_trig.id% 
detach 80303 %del_trig.id%
~
#80302
������� ��������� �����~
0 j 100
~
wait 1
if (%quest803.id% != %actor.id%)
  ���
  wait 1s
  drop all
  halt
end
if (%object.vnum% == 80319)
  wait 1
  mpurge %object%
  wait 2s
  � �� ����� �, ��� �� ���� ��� ���� ����� ���� ��� ��!
  � ��� �������, � ������ �������, ��� �� ����%actor.u% �� ��������� ����������!
  � ��� ��������� �����! 
  set side803 1
  worlds side803
  ������ %actor.iname%  
  wait 1s
  � �� ������ �����! ���� �� ����!
  ���� .%actor.name%
  detach 80300 %self.id%
  detach 80301 %self.id%
  detach 80303 %self.id%
  detach 80302 %self.id%
  halt
end
if ((%object.vnum% == 80318) && !%exist.mob(80312)%)
  wait 1
  mpurge %object%
  wait 2s
  � ��� �������!
  � �� �����%actor.g% ���� ����!
  ���� %quest803.name%   
  eval giveitem %random.400% / 100
  if (%giveitem% == 1) && (%world.curobjs(80314)% < 10)
    mload obj 80314               
    ���� ��� %quest803.name%
    halt
  end
  if (%giveitem% == 2) && (%world.curobjs(80315)% < 10)
    mload obj 80315 
    ���� ��� %quest803.name%
    halt
  end
  mload obj 80320
  ���� ���� %quest803.name%
  detach 80300 %self.id%
  detach 80301 %self.id%
  detach 80303 %self.id%
  detach 80302 %self.id%
end
~
#80303
������� ���� ��������� �����~
0 d 0
�� ���~
if (%quest803.name% == %actor.name%) && (%speech% == ��)
  wait 1s
  ���� %actor.iname%
  � �� ������%actor.g% ���������� �������.
  � ��� ��, �� ����� ������� ����!  
  set side803 0
  worlds side803
  calcuid form_mb 80300 mob
  detach 80300 %form_mb.id%
  detach 80301 %form_mb.id%
  detach 80303 %form_mb.id%
else
  wait 1s
  ������ %actor.iname% 
  � �� �� ���������� ��� ������!
  � �� ����� ������� ����! 
  msend %actor.name% ������� ���� ������� � �������� �� ���.
  mechoaround %actor.name% ������� ���� ������� � �������� �� %actor.rname%!
  calcuid form_mb 80300 mob
  detach 80300 %form_mb.id%
  detach 80301 %form_mb.id%
  detach 80302 %form_mb.id%
  detach 80303 %form_mb.id%
  ���� %actor.name%
end 
~
#80304
�����~
2 f 100
~
set quest803 %nil%
worlds quest803
set side803 %nil%
worlds side803
calcuid strateg 80312 mob
detach 80308 %strateg.id%
attach 80305 %strateg.id%
attach 80306 %strateg.id%
attach 80307 %strateg.id% 
attach 80309 %strateg.id%
calcuid voevoda 80300 mob
detach 80303 %voevoda.id%
attach 80300 %voevoda.id%
attach 80301 %voevoda.id%
attach 80302 %voevoda.id%
attach 80310 %voevoda.id%
~
#80305
������� ���� ���� �����_1~
0 r 100
~
if (%quest803.name% == %nil%)
  ������ %actor.iname%
  � �, �������� ��� ���������!
  � ������� ������������� ������ %actor.iname% ?
  � ��?
else
  calcuid form_mb 80312 mob
  detach 80306 %form_mb.id%
  attach 80308 %form_mb.id% 
  ������ %actor.iname%
  wait 1s
  � � �� ��� ���%actor.w%?
  � �� ��! � ���� ���� %actor.iname%...
  � ��� ������ ��������, ��� ���� ������ ������� ��� �����!
  � �� �� �����, ��� �� ����%actor.y% ���� ������ ���...
  � �� ����� ������� ���� ����������.
  ������ %actor.iname%
  � ���� � ���� � ���� ��������� �����������.
  � ����� ���� ����� ����� ���� �����-�� ��� �������!
  � ��������� � ������! ��� ��� �������!
  � � ���� ����� ������ �������, ���� �� ��� ��������.
  � �� � ������� ������ ���� ��������...
  �����
  wait 1s
  � �� ��������� � ������� � ��������� ������ � ������ ��� ��������� �����.
  � � �� �������! �� ��� � ������ �������!
  � �� ��� ���, �� �� ����� ������� ��� ���? �� ��� ���!?
  wait 1s
end
������ %actor.iname%
~
#80306
������� ���� ���� �����_2~
0 d 0
��~
if (%quest803.name% == %nil%)
  set quest803 %actor% 
  set side803 1
  worlds quest803
  worlds side803
  � �� ��� ���.
  � � ��������� ������ ���� ���������� ������� � ��� 4 ���������.
  � ���� �� � ����� �����������! 
  � ��� ���. ���!       
  calcuid del_trig 80312 mob
  detach 80305 %del_trig.id% 
  detach 80308 %del_trig.id% 
end
~
#80307
������� ��������� �����~
0 d 0
����~
if (%quest803.name% == %actor.name%) 
  if (%side803% == 0) && (%exist.mob(80320)%)
    � ��� ������� ��� �� ����%actor.u% � �������� �� ���������� ������!
    � �� ������������ ���� ��������!
    � �� ����������� �� ����� ��������.
    � ����... 
    msend %actor.name% ������� ����� �������� ����� � �������� �� ���.
    mechoaround %actor.name% ������� ����� �������� ����� � �������� �� %actor.rname%!
    ���� %actor.name%      
    calcuid form_mb 80312 mob
    detach 80305 %form_mb.id%
    detach 80307 %form_mb.id%
    detach 80308 %form_mb.id%
  elseif (%side803% == 1) && (%exist.mob(80300)% == %nil%) && (%exist.mob(80303)% == %nil%)
    � �� ������ ���� ������. ��� ����� �������, ��� � ��������������.
    set give_item %random.4% 
    if (%give_item% == 1) && (%world.curobjs(80316)% < 10)
      mload obj 80316               
      ���� ��� %quest803.name%
      calcuid form_mb 80312 mob
      detach 80305 %form_mb.id%
      detach 80307 %form_mb.id%
      detach 80308 %form_mb.id%
      halt
    end
    if (%give_item% == 2) && (%world.curobjs(80317)% < 10)
      mload obj 80317 
      ���� ����� %quest803.name%
      calcuid form_mb 80312 mob
      detach 80305 %form_mb.id%
      detach 80307 %form_mb.id%
      detach 80308 %form_mb.id%
      halt
    end
    mload obj 80320
    ���� ���� %quest803.name%
    calcuid form_mb 80312 mob
    detach 80305 %form_mb.id%
    detach 80307 %form_mb.id%
    detach 80308 %form_mb.id%
  else
    � � ��� ��� �������� ��������, ��� ���-�� �� ��� ��� ���.
    � ���, ������� ���� ������!
  end
end
~
#80308
������� ���� ��������� �����~
0 d 0
�� ���~
if (%speech% == ��) && (%quest803.name% = %actor.name%)  
  wait 1s            
  ���� %actor.iname%
  � �� ������%actor.g% ���������� �������.
  � ��� ��, �� ���� ���!
  � ��� ���� ��������� �����. 
  set side803 1
  worlds side803 
  mload obj 80319
  ���� ����� %actor.name%
  calcuid form_mb 80312 mob
  detach 80305 %form_mb.id%
  detach 80306 %form_mb.id%
  detach 80307 %form_mb.id%
  detach 80308 %form_mb.id%
  detach 80309 %form_mb.id%
else
  wait 1s
  ������ %actor.iname%
  � �� �� ���������� ��� ������!
  � ���� ��! 
  set side803 0
  worlds side803
  msend %actor.name% ������� ����� �������� ����� � �������� �� ���.
  mechoaround %actor.name% ������� ����� �������� ����� � �������� �� %actor.rname%!
  ���� %actor.name%
  calcuid form_mb 80312 mob
  detach 80305 %form_mb.id%
  detach 80306 %form_mb.id%
  detach 80307 %form_mb.id%
  detach 80308 %form_mb.id%
end 
~
#80309
������ ��������~
0 f 100
~
if %world.curobjs(3349)% < 1  && %random.100% < 3
  *mload obj 3349
end
� � ���������� ����!  
set side803 0
worlds side803
mecho ������� ��������� ��� ������ �������� � ������...
mload obj 80318  
~
#80310
������ �������~
0 f 100
~
if (%exist.mob(80312)%)
  calcuid form_mb 80312 mob
  detach 80309 %form_mb.id%
end
~
#80311
���� ����� - ���� ���������~
0 f 100
~
if %random.100% < 11
  mload obj 575
end
~
$~
