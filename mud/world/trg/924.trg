#92400
�������� ���� ��� ������ ����� ������.~
2 e 100
~
if %actor.move% < 30 
  wsend %actor% �� ������� ������ ���������� �� ���� �������!
  return 0
else
  *%actor.move(-30)%
end
~
#92401
������� �������� ���������~
2 ab 100
~
if %world.curmobs(92400)%<9 && %random.3%==1
  wecho �������� ���������� ������� �� ����!
  wload mob 92400
  wait 30s
end
~
#92402
����� �� �������� �� ����~
2 e 100
~
eval dam 10+%random.40%
wdamage %actor% %dam%
~
#92403
���������� ������ ������ ( �� �� ������ �������� ����� ����� :( )~
0 p 100
~
eval dam %amount%*(100 - %self.level%)/100
eval dam %dam%-(%self.level%/2)
eval reg %amount%-%dam%
if %dam% > 0
  eval buf %self.hitp(+%reg%)%
  return %dam%
else
  return 0
end
~
#92404
���������� ����������~
0 k 100
~
dg_cast '��� �����'
~
#92405
���������� �����~
0 k 100
~
dg_cast '��� ���' 
~
#92406
������ ������� ��������� �����~
0 k 100
~
if !%random.pc%
  halt
end
set mode %random.10%
foreach char %self.pc%
  if mode == 1
    dg_cast '����� ���' %char.name%
    mecho �������� ����� ����� ��� ��������!
  elseif mode < 4
    dg_cast '��� �����' %char.name%
  end                   
done
if mode >2
  set target %random.pc%
  dg_cast '����� ���' %target.name%
end
~
#92407
����������� �������� ������~
0 ab 100
~
if %random.8% <4
  eval wait %random.10%
  wait %wait%s
  if !(%self.fighting%)
    eval fly 92411+%random.28%
    if %self.realroom% != %fly%
      mecho �������� ����� ������� �����!
      mteleport %self% %fly% 
      wait 1s
      mecho �������� ����� ��������� ������!
    end
  end
  
end
~
#92408
���������� ����������~
0 k 100
~
dg_cast '��� ���'
dg_cast '��� ���' 
~
#92409
����������� ��������� ����������~
0 ab 100
~
if %random.8% <4
  eval wait %random.10%
  wait %wait%s
  if !(%self.fighting%)
    eval fly 92411+%random.28%
    if %self.realroom% != %fly%
      mecho �������� ��������� ������ � �����!
      mteleport %self% %fly%  
      wait 1s
      mecho �������� ��������� ������� �� �����!
    end
  end
  
end
~
#92410
������ �������~
2 ab 100
~
halt
if %random.30000% < 6
  wait 40000s
  calcuid volhv 49931 mob  
  attach 92425 %volhv.id%
  calcuid koldun 92413 mob   
  attach 92426 %koldun.id%
  if %random.5% == 1
    set rum 49947
  elseif %random.4% == 1
    set rum 49928
  elseif %random.3% == 1
    set rum 49976
  else
    set rum 49922
  end
  wat %rum% wecho ������� ����������� ��������� � �������.
  wload mob 92410
  wteleport �����������_92410 %rum%
  calcuid portal 92410 mob
  exec 92411 %portal.id%
  detach 92410 %self.id%
end
~
#92411
����������� ��������� - ������ ������~
0 z 100
~
attach 92412 %self.id%  
mload mob 92411 
mecho ��������� ����� ����� �� �����������!
mload mob 92411 
mecho ��������� ����� ����� �� �����������!
attach 92414 %self.id% 
wait 2400s
detach 92414 %self.id%  
mecho ����������� ���������� ����!
attach 92415 %self.id% 
wait 2400s
detach 92415 %self.id%
mecho ����������� ���������� ����!
attach 92416 %self.id%
wait 2400s
detach 92416 %self.id% 
mecho ����������� ���������� ����!
attach 92417 %self.id%
wait 2400s
detach 92417 %self.id% 
mecho ����������� ���������� ����!
attach 92418 %self.id%
wait 5000s   
calcuid pentroom 92453 room
exec 92413 %pentroom.id%  
mteleport �������_92411 92299
mteleport �������_92411 92299
~
#92412
����������� ����������~
0 f 100
~
if %random.20% < 5    
  *���� ����� ���� �������!
  set naem 0            
  *��������� ���� �� � ������ ������� 29+ ��� ���������
  foreach chr %actor.group%
    if (%chr.class% == 4 && %chr.level% > 28 && !%chr.skill(��������)%)
      set naem %chr%
    end          
  done   
  *���� ������� 29+ ��� ��������� ���� - �� �� �� ��������
  if %naem.iname%
    mechoaround %naem% ������������ ���� �������� �� %naem.vname%!
    msend %naem% ������ ���� �� �������� �������� ����� ������!
    mskillturn %naem% �������� set 
    *����� �������� ���� ���� ������ ���� ���� �������� � ������ ������������!
  elseif %random.2% == 1
    mload obj 220
  else
    mload obj 240
  end
end
calcuid pentroom 92453 room
exec 92413 %pentroom.id%  
mteleport �������_92411 92299
mteleport �������_92411 92299
~
#92413
���������� �����~
2 z 100
~
if %world.curmobs(92410)%
  calcuid penta 92410 mob
  wechoaround %penta% ����������� �������� ��������!
  wpurge %penta% 
end    
wait 1s        
attach 92427 %self.id%
calcuid koldun 92413 mob   
detach 92426 %koldun.id%
calcuid volhv 49931 mob  
detach 92425 %volhv.id%
wait 40000s
attach 92410 %self.id% 
~
#92414
1-� ��� �����������~
0 ab 100
~
if %random.20% == 1
  mecho ��� �������� �� �����������!
  mload mob 92406
end
~
#92415
2-� ��� �����������~
0 ab 100
~
if %random.20% == 1
  mecho ��� �������� �� �����������!
  mload mob 92406
elseif %random.30% == 1
  mecho ���� �������� �� �����������!
  mload mob 92407
end
~
#92416
3-� ��� �����������~
0 ab 100
~
if %random.20% == 1
  mecho ��� �������� �� �����������!
  mload mob 92406
elseif %random.30% == 1
  mecho ���� �������� �� �����������!
  mload mob 92407 
elseif  %random.50% == 1
  mecho ���������� ��������� �� �����������!
  mload mob 92412
end
~
#92417
4-� ��� �����������~
0 ab 100
~
if %random.20% == 1
  mecho ��� �������� �� �����������!
  mload mob 92406
elseif %random.30% == 1
  mecho ���� �������� �� �����������!
  mload mob 92407 
elseif %random.50% == 1
  mecho ���������� ��������� �� �����������!
  mload mob 92412 
elseif %random.75% == 1
  mecho �������� ������� �������� �� �����������!
  mload mob 92406
end
~
#92418
5-6-� ��� �����������~
0 ab 100
~
if %random.20% == 1
  mecho ��� �������� �� �����������!
  mload mob 92406
elseif %random.30% == 1
  mecho ���� �������� �� �����������!
  mload mob 92407 
elseif %random.50% == 1
  mecho ���������� ��������� �� �����������!
  mload mob 92412 
elseif %random.75% == 1
  mecho �������� ������� �������� �� �����������!
  mload mob 92408
elseif %random.100% == 1
  mecho �������� ��������� �������� �� �����������!
  mload mob 92409
end
~
#92419
����� ������~
0 c 1
�����~
if !%arg.contains(�����������)% && %world.curmobs(92411)% && !%arg.contains(������)%
  halt 
end  
mecho ������� ����������� ������ ���������! 
wait 1s
if %actor.fighting%
  msend %actor% �� �� ������ ����� � ����������� �� ����� ���!
  halt
end
mteleport %actor% 92453
mecho %actor.name% ����� � �����������!
mechoaround %actor% %actor.name% ������%actor.g% �� �����������!
mremember %actor%
~
#92420
������ ������� ����� � �����������~
0 o 100
~
���
mecho ����������� ���������!
dg_cast '�������� ���' %actor.name%
~
#92421
���� ���� ~
0 f 100
~
eval numer 92401+%random.3%
eval altnum 92404+%random.3%
if %random.10% == 1 && %world.curobjs(%numer%)% < 3
  mload obj %numer%
end
if %random.10% == 1 && %world.curobjs(%altnum%)% < 3
  mload obj %altnum%
end
~
#92422
������ ����������  ~
0 f 100
~
eval numer 92407+%random.4%
eval altnum 92411+%random.4%
if %random.11% == 1 && %world.curobjs(%numer%)% < 3
  mload obj %numer%
end
if %random.11% == 1 && %world.curobjs(%altnum%)% < 3
  mload obj %altnum%
end
~
#92423
���� �����~
0 f 100
~
eval numer 92415+%random.2%
eval altnum 92417+%random.2%
if %random.7% == 1 && %world.curobjs(%numer%)% < 3
  mload obj %numer%
end
if %random.7% == 1 && %world.curobjs(%altnum%)% < 3
  mload obj %altnum%
end
~
#92424
���� �������~
0 f 100
~
if %random.7% == 1 && %world.curobjs(92420)% < 3
  mload obj 92420
end
if %random.7% == 1 && %world.curobjs(92421)% < 3
  mload obj 92421
end
~
#92425
����� ������������� � �������� �������!~
0 ab 100
~
if %random.7% == 1
  mshou ��� ������� ������ � �������� ����� �����!
  wait 1s
  mshou ����� ����� ����� �� ������� ������� ������� ������ ��������!
  wait 60s
end
~
#92426
���� �������� ������ �� ����� ��������� �������~
0 f 100
~
*calcuid pentroom 92453 room
*exec 92413 %pentroom.id%  
*mteleport �������_92411 92299
*mteleport �������_92411 92299
if %random.10% < 3
  mload obj 563
end
~
#92427
������ ���� ����� ����������� ����� ����������� ~
2 ab 100
~
if %world.curmobs(92409)%  
  calcuid target 92409 mob
  wechoaround %target% �������� ��������� ����������� � �������!
  wpurge %target%                                        
elseif %world.curmobs(92408)%
  calcuid target 92408 mob
  wechoaround %target% �������� ������� ���������� ��� �����!
  wpurge %target%                                        
elseif %world.curmobs(92412)%
  calcuid target 92412 mob
  wechoaround %target% ���������� ������ �������� � �����!
  wpurge %target%       
else
  detach 92427 %self.id%   
end  
*� ������ � ����� ������(�� � ������) ���������                          
~
$~
