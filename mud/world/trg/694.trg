#69400
�����������������~
0 r 100
~
*wecho test %i.name% %i.class%
wait 2s
mecho - ���������� ��������.
mecho - ������ ���� � ��� ������������...
wait 1s
mecho ����� �������� ����������� �������.
wait 1s
mecho _����������� ����� ������ �����.
wait 1s
mecho _���� �������� ����� �����-������ - ������������ ��� � ����� �����������.
calcuid nTroom 69422 room
*detach 67827 %nTroom.id%
attach 69409 %nTroom.id%
exec 69409 %nTroom.id% 
detach 67809 %nTroom.id%
~
#69401
��������������~
0 d 0
�� ������~
calcuid trm 69414 mob
set quest694 %actor%
remote quest694 %trm.id%
wait 1s
���
mecho - ������ ����� ���� ����...
mecho - ���� ���� �� ���, �� ������ ���� - �� ��������� ������ �����
mecho - �����, � �� ������������-����������� �������, ����� ��� ��� ��� ��� ��
mecho - ����� �������� �� ���� ����� �������� ������, ����������� ��� � ���
mecho - ������ ���� ������, ��� ��������� �� ������
mecho - � �� ������ �� ����������� ������� ���� ���������
mecho - �� ���������� ���� �������� ������ ������, ��������� ������ ���������.
���
wait 1s
mecho - �������� ����� ����� ���� ���� �� ���������� ����
mecho - �� � ���� ������...
wait 1s
�� �����������, ��������� ���� ������� ����� � ���������� ����������� ����.
wait 1s
mecho _������������� ����� ����� �������.
wait 1s
mecho - ��� ������ - ���� ������ ������� ���� ����� ������ ������.
mload obj 69400
���� ��� %actor.name% 
*detach 69400 %self.id%
attach 69435 %self.id%
detach 69408 %self.id%
detach 69400 %self.id% 
detach 69401 %self.id%
~
#69402
��������������������������~
2 e 100
~
if %actor.haveobj(69400)% 
  _&y���������� ������ ����, �������, �������� ���� �� �����.&n
end
~
#69403
����������������~
2 e 100
~
*wecho _ddddddddddddddddddddd
if %actor.haveobj(69400)% 
  wait 3s
  wecho _&C����� ���������� ���� ������ ����� ������, ������ ���������� ���� � ����.&n
  wait 1s
  wecho _�������� �� ��� ��������, �� ������ ����� ������
  wecho _��������� ��������� �����, ���������� ����������� ��������� �� ����.
  wecho _���������� ������� � ���� ������, ����� ������
  wait 1s
  wecho _� ������� ��� ����� �� ������ �������
  wecho _� ��������� ����� ���� ��������� � ����� ��������� - ����� ���������.
  wait 3s
  wat 69427 wecho ���-�� �������� ����� � ������ ������ ����.
  wteleport all 69427
end
~
#69404
���������������~
2 c 0
�������~
if !%arg.contains(������)%
  wsend %actor.name% ��� ���������?
else
  %send% %actor% _������ ��������� �� ������� �� ������� ����������� �������.
  %echoaround% %actor% %actor.name% ������ ��������� �����%actor.q% �� ������� ����������� �������.
  wait 1s
  wecho _����������� ������� ���� �� ����� �����...
  wecho _�������� ������� �� �������� �����...
  wecho _� �� ����� �������� ���� ��, ��� �����-�� ���� ����� ������� ������������ ������� - ��������.
  *���� ��������
  wload obj 69411
  *���� ������ � ������
  calcuid nVroom 69447 room 
  attach 69415 %nVroom.id%
  *������� ������
  calcuid kv2 69401 obj
  %purge% %kv2.id%
  detach 69404 %self.id%
end
~
#69405
����������������������~
0 r 100
~
wait 1s
mecho - ���������� ������...
mecho - �� ����� ������� ���� �����
mecho - ���� ����� �� �� ����, ��� ���� ������ ��������
�� ������� �������
wait 2s
mecho - � ���� ������� ������ ���, ��� ����:
mecho - ����� �������� ��� ������������ ������ �����
mecho - ���������� �������� ����� � ������� �����������.
���
mecho - � ���� ����������� ����� �� ������� ����������� � ����� ����.
mecho - ������� � ���� �� ���� ����� - ���������, ������� �����, �������� �� ��� �����. 
mecho - �� ���� �������� ���� ������ - ����� ������� - ��������� � ��� ���� �������, 
mecho - �� ������� ��� � ������� ����� ���� ������,
mecho - ����� �� �������� - ������� ������ ������
mecho - � ����� ���������� �� ����� ����� � ���� ������.
mecho - ����� �� �� ���������� � ����? 
������
~
#69406
�����������~
0 d 0
�� �����~
wait 1s
mecho - ������ � �����!
mecho - �� �������� � ����� �������� � ���� ������ �����!
*detach 69406 %self.id%
*detach 69405 %self.id%
wait 1s
calcuid mpt 69447 room
attach 69416 %mpt.id%
exec 69416 %mpt.id%
calcuid asd1 69407 mob
%purge% %asd1.id%
calcuid asd2 69406 mob
%purge% %asd2.id%
*detach 69406 %self.id%
*detach 69405 %self.id%
~
#69407
����������~
0 r 20
~
wait 1s
mecho  __�����-�����-����...
wait 1s
mecho �������� ����� ��� ����� �������� � ���������� ���� ������.
~
#69408
����������������~
0 d 0
��������~
wait 1s
mecho - ����� ����� ���� �� � ���� � ����. 
mecho - � ���� � ����� � � ������ ��������. 
mecho - ���� ����� - ��������� ��� - ������ ���� ��������, ������ ������ �� �������
mecho - ������ ����� ��������, �� ���� ������
mecho - ���� � �������� ������� ������������
mecho - � ��� �� ��� ������ ����������...
���
wait 2s
mecho - �� �������, ������ � ������ ���� ������� ��������� �����.
mecho - � ���������� �� ��� ����� ���
mecho - � ����� �� ���� ������ ���� �� ������
mecho - ����� ���� ����� �������...
mecho - ��� ��� ��� ����� ������� ��� �����
mecho - � �� �� ����� ����� ��������� �� ��� ���� ���� - ���� ������
mecho - ����� ����������� ���� ��� ��� �����...
�� �������� ���������� ��� ���� �����
wait 1s
mecho - ����� ���� �� ������� �� ������ � ������ �������?
mecho - � �� ������� ��� � �������� ��� �����
mecho - � ����� �������� � ��� ��� � ���.
������ 
attach 69401 %self.id%
~
#69409
��������~
2 z 0
~
wait 1s
*wecho _������ ������� ��������!!!!!!!!!
if %world.curobjs(69403)% < 1
  wload obj 69403
  wload obj 69403
  wload obj 69403
end
~
#69410
������������~
0 f 40
~
if (( %random.100% < 8 ) && ( %world.curobjs(69404)% < 6 ))
  mload obj 69404
end
if %exist.mob(69405)%
  halt
end
if (( %random.1000% < 30 ) && (%world.curobjs(69405)% < 10 ))
  *���� ����� � �������� 69405 � �����
  mload mob 69405
  calcuid maus 69405 mob
  if %actor.vnum% == -1
    set herro %actor%
  else
    set herro %actor.leader%
  end
  attach 69417 %maus%
  global herro
  remote herro %maus.id%
  *attach 69417 %maus
  exec 69417 %maus.id% 
  *wait 3s
  halt 
end
if (( %random.1000% < 30 ) && ( %world.curobjs(69406)% < 10 ))
  *���� ����� � �������� 69406 � �����
  mload mob 69405
  calcuid maus 69405 mob
  if %actor.vnum% == -1
    set herro %actor%
  else
    set herro %actor.leader%
  end
  attach 69467 %maus%
  global herro
  remote herro %maus.id%
  *attach 69467 %maus%
  exec 69467 %maus.id% 
  *wait 3s
  halt 
end
if (( %random.1000% < 30 ) && ( %world.curobjs(69407)% < 8 ))
  *���� ����� � �������� 69407 � �����
  mload mob 69405
  calcuid maus 69405 mob
  if %actor.vnum% == -1
    set herro %actor%
  else
    set herro %actor.leader%
  end
  attach 69468 %maus%
  global herro
  remote herro %maus.id%
  *attach 69468 %maus%
  exec 69468 %maus.id% 
  *wait 3s
  halt 
end
~
#69411
��������������������������~
2 e 100
~
wait 1s
if %actor.haveobj(69400)% 
  wecho _&y���������� ������ ����, �������, �������� ���� �� �����.&n
end
~
#69412
���������������������������~
2 e 100
~
wait 1s
if %actor.haveobj(69400)% 
  wecho _&y���������� ������ ����, �������, �������� ���� �� ������.&n
end
~
#69413
�����������������������~
2 e 100
~
wait 1s   
if %actor.haveobj(69400)% 
  wecho _&y���������� ������ ����, �������, �������� ���� �� ��.&n
end
~
#69414
��������������������������~
2 e 100
~
wait 1s
if %actor.haveobj(69400)% 
  wecho _&y���������� ������ ����, �������, �������� ���� �����.&n
end
~
#69415
�������������~
2 ez 100
~
wload mob 69406
wload mob 69407
detach 69415 %self.id%
~
#69416
��������������~
2 z 100
~
wportal 69458 2 
~
#69417
���������������������05~
0 z 0
~
wait 1
mecho _����� �� �������� ���-�� �������� � ����� � ������ �����
wait 1s
mecho _��������� ������� ������ ������-������, ���� �������� ������� - �������...
*wait 2s
mload obj 69405
��
���� %herro.name% �� �� ��� ���� ���� �� �������� � ������� ����
���� ��� .%herro.name%
mecho ����� ���������� ���������� ��� � ����� � ������� � ��������� �����.
mpurge %self%
~
#69418
��������������~
0 r 100
~
wait 1s
mecho - � ��� ������ �� ����?
���
wait 1s
mecho - ��� ���� ���? ��� ������!
�� ������ �������� �����
~
#69419
��������������������~
0 j 100
~
wait 1
if %object.vnum% == 69411
  set flag_vnum11 1
  global flag_vnum11
  *mecho - 1111111111
elseif %object.vnum% == 69403
  set flag_vnum03 1
  global flag_vnum03
  *mecho - 3333333333333
else
  drop all
  halt
end
mpurge %object%
if (( %flag_vnum11% == 1 ) && ( %flag_vnum03% == 1 ))
  wait 1s
  unset flag_vnum03
  unset flag_vnum11
  mecho - �� ����-�� �����...
  �� ��������� ���� �� ���� ����������� ������ ��������.
  wait 1s
  �� ������������, �������� ������.
  wait 1s
  mecho � ��������� ��� ����� � ������ ����� ����� - 
  mecho � ����� ������ ������������ ��������� �� ������ ����������������.
  wait 1s
  mecho - ��� ��, ���� ������, ���� �������, ���� ����, ����� �������!
  mecho - ������� ����, ������ �� ����!
  mecho - �����-���� �� ���� ����� ��������, ���� ��� �������, �� ���� ������
  mecho - � �� ����� ����� ����� ���� ������ � ���
  mecho - � ������� �� ���� ������ ������� - ��� ����������, 
  mecho - � ����������� �������� ���� ������.
  mecho - ��� ����, ��� ����, � ��� ����� ������!
  wait 2s
  mecho _&C���������, ���������� ����� �������.&n
  wait 1s
  mecho _&C�������� ������� ���� ������.&n
  wait 1s
  mecho _&C��������� ����� ���� ���� �������.&n
  wait 1s
  mecho _&R������ ���� ���� � ������� �����.&n
  wait 1s
  mecho _�� ���������� ������ ������,
  mecho _�� ������� ����� ������, 
  mecho _�� ��������� ������ ����� ������ ������
  mecho _��� ������� ����� ����� ����������� ���� ����� � �������� ����� � �����.
  *  wait 2s
  *mecho %actor.name% == %quest694.name%
  **********************
  *������� ���� �� �������
  set i 69424
  while %i% < 69469
    calcuid pm %i% room
    attach 69441 %pm.id%   
    exec 69441 %pm.id%
    detach 69441 %pm.id%   
    eval i %i%+1
  done
  *calcuid ts1001 69408 mob 
  **exec 69448 %ts1001.id%
  **calcuid ts1002 69408 mob 
  **exec 69448 %ts1002.id%
  **calcuid ts1003 69408 mob 
  **exec 69448 %ts1003.id%
  **calcuid ts1004 69408 mob 
  *exec 69448 %ts1004.id%
  *calcuid ts1005 69408 mob 
  *exec 69448 %ts1005.id%
  *calcuid ts1006 69408 mob 
  *exec 69448 %ts1006.id%
  *calcuid ts1007 69408 mob 
  *exec 69448 %ts1007.id%
  *calcuid ts1008 69408 mob 
  *exec 69448 %ts1008.id%
  **********************
  * ************************ 
  *�������� ����� � �������
  * ������
  wait 1s 
  calcuid nMob1 69415 mob
  mteleport %nMob1% 69444
  * ����� ���������
  calcuid nMob11 69418 mob
  mteleport %nMob11% 69429
  * ������
  calcuid nMob12 69424 mob
  mteleport %nMob12% 69445
  wait 1s
  * ���� ������
  calcuid nMob13 69425 mob
  mteleport %nMob13% 69442
  * �������
  calcuid nMob14 69426 mob
  mteleport %nMob14% 69446
  * ����������
  calcuid nMob15 69429 mob
  mteleport %nMob15% 69435
  wait 1s
  *����� 
  calcuid nMob2 69421 mob
  mteleport %nMob2% 69443
  *�����
  calcuid nTroom1 69436 room
  attach 69428 %nTroom1.id%
  exec 69428 %nTroom1.id% 
  detach 69428 %nTroom1.id%
  *
  calcuid nTroom1 69439 room
  attach 69428 %nTroom1.id%
  exec 69428 %nTroom1.id% 
  detach 69428 %nTroom1.id%
  wait 1s
  *����� ������
  calcuid nTroom2 69425 room
  attach 69429 %nTroom2.id%
  exec 69429 %nTroom2.id% 
  calcuid nTroom2 69426 room
  attach 69429 %nTroom2.id%
  exec 69429 %nTroom2.id% 
  detach 69429 %nTroom2.id%
  *�����/�����
  calcuid nTroom3 69445 room
  attach 69430 %nTroom3.id%
  exec 69430 %nTroom3.id% 
  calcuid nTroom3 69447 room
  attach 69430 %nTroom3.id%
  exec 69430 %nTroom3.id% 
  detach 69430 %nTroom3.id%
  wait 1s
  *���������
  calcuid nTroom4 69438 room
  attach 69431 %nTroom4.id%
  exec 69431 %nTroom4.id% 
  detach 69431 %nTroom4.id%
  calcuid nTroom4 69437 room
  attach 69431 %nTroom4.id%
  exec 69431 %nTroom4.id% 
  detach 69431 %nTroom4.id%
  *��������
  calcuid nTroom5 69462 room
  attach 69432 %nTroom5.id%
  exec 69432 %nTroom5.id% 
  detach 69432 %nTroom5.id%
  calcuid nTroom5 69452 room
  attach 69432 %nTroom5.id%
  exec 69432 %nTroom5.id% 
  detach 69432 %nTroom5.id%
  calcuid nTroom5 69456 room
  attach 69432 %nTroom5.id%
  exec 69432 %nTroom5.id% 
  detach 69432 %nTroom5.id%
  wait 1s
  *��������
  calcuid nTroom6 69443 room
  attach 69439 %nTroom6.id%
  exec 69439 %nTroom6.id% 
  detach 69439 %nTroom6.id%
  calcuid nTroom6 69439 room
  attach 69439 %nTroom6.id%
  exec 69439 %nTroom6.id% 
  detach 69439 %nTroom6.id%
  calcuid nTroom6 69436 room
  attach 69439 %nTroom6.id%
  exec 69439 %nTroom6.id%  
  detach 69439 %nTroom6.id%
  wait 1s
  *����������
  calcuid nTroom7 69463 room
  attach 69440 %nTroom7.id%
  exec 69440 %nTroom7.id% 
  detach 69440 %nTroom7.id%
  calcuid nTroom7 69454 room
  attach 69440 %nTroom7.id%
  exec 69440 %nTroom7.id% 
  detach 69440 %nTroom7.id%
  calcuid nTroom7 69457 room
  attach 69440 %nTroom7.id%
  exec 69440 %nTroom7.id%  
  detach 69440 %nTroom7.id%
  *������
  calcuid nTroom8 69418 room
  attach 69438 %nTroom8.id%
  exec 69438 %nTroom8.id% 
  detach 69438 %nTroom8.id%
  calcuid nTroom8 69414 room
  attach 69438 %nTroom8.id%
  exec 69438 %nTroom8.id% 
  detach 69438 %nTroom8.id%
  wait 1s
  *�������
  calcuid nTroom9 69416 room
  attach 69437 %nTroom9.id%
  exec 69437 %nTroom9.id% 
  detach 69437 %nTroom9.id%
  calcuid nTroom9 69417 room
  attach 69437 %nTroom9.id%
  exec 69437 %nTroom9.id% 
  detach 69437 %nTroom9.id%
  calcuid nTroom9 69420 room
  attach 69437 %nTroom9.id%
  exec 69437 %nTroom9.id%  
  detach 69437 %nTroom9.id%
  calcuid nTroom9 69421 room
  attach 69437 %nTroom9.id%
  exec 69437 %nTroom9.id%  
  detach 69437 %nTroom9.id%
  wait 1s
  mecho _�������� ������� ����� �����, ������ ��� �� �������� �����
  mecho _� ����� ��� ������� �� ��� �� ���� �����.
  wait 1s
  ************************
  mat 69427 mecho ���-�� �������� ����� � ������ ������ ����.
  mteleport all 69427
  *********************
  *���� ����� ��������������� 
  calcuid ber 69400 mob
  attach 69427 %ber.id% 
  remote quest694 %ber.id%
end
~
#69420
�������������������~
0 r 100
~
wait 1s
mecho - ������ ������, ������� ������� ����
mecho - ���� ������ �� ��������� � �������
mecho - � ���� ������, �� ������ �� ������� ���
mecho - ��� ������ ��� � ��� ������������:
wait 1s
mecho - ������ ������ ������ ����� ��������, ��� ��� ����� ������� �� ����� �����
�� ��������� ������� ������
mecho - �� �� �� ������ �� ��������, ����� ��� ����� ��������, ������ ���������� �������
mecho - �� ���-�� �������� �������� ����������� ��������� � ����� �� ����� ������:
mecho - ������, ��, ��� ������ ����� ������, ��� � ��� ��� ������ ����������.
mecho - �� �����, �� �� ���� ���. ����������� �� ��� � ��������� ������ ���� ������.
mecho - � ������� ����� ����� �������� ������� �� ���� ������
mecho - ���� ����� ��� ������� ����, ����� ����� �� ������, � ������ �� ��������
�� ���������
wait 1s
mecho - �� ������ ������, ����� �� ����� �� ������ � ������ �������-������� - ������ ���������
mecho - � ������ �� ���� ������
mecho - ������� �� ������ ��������� � ���� ����
mecho - ���� ����� ������� ������-������� � ��� ��� �������� �����
�� ������ ��-�� ������ ����� � ����� ��� ����������� ������������
wait 1s
mecho - ���� ����� �����, ���� ���� - ��� ��������-�� - �� ����� �� ��������!
mecho - ��������� ���� ������-�� �� ����� � ������� ���������� 
mecho - � ����� �� ��������� ����� � ������ �� ������.
mecho - ���� - ����������, ����� ����-��������, � ����� �� ������.
mecho - ���� ������� ������ �������� � ������ ��� ����� ������� ���� �� ���� ������.
mecho - ��������?
~
#69421
���������~
0 d 0
�� ��������~
wait 1s
mecho - ������ ���� ���������� �� ���� 
mecho - ��� ����� ��������� � ����������� � ���� ����� ���� ������...
*���� �����
mload obj 69416 
���� ����� %actor.name%
*���� �������� � �������� 
calcuid nMob14 69420 mob
mteleport %nMob14% 69441
calcuid nMob15 69428 mob
mteleport %nMob15% 69441
detach 69420 %self.id%
detach 69421 %self.id%
~
#69422
�����������������~
0 j 100
~
if (( %object.vnum% == 69413 ) || ( %object.vnum% == 69414 ))
  wait 1s
  mpurge �����
  mecho - ��� �������! � ����, ��� ������ ��� ������� � ��� ����� �����!
  �� ������ ������� ��������
  switch %random.7%
    case 1
      if (( %random.100% < 50 ) && ( %world.curobjs(69417)% < 10 ))
        mload obj 69417
        mecho  - ��, ������, � ���� ���-��� ���� ��� ����.
        wait 1s
        ���� ��� %actor.name% 
        � ���, �����.
      else
        wait 1s
        ������
        halt
      end 
    break
    case 2
      if (( %random.100% < 50 ) && ( %world.curobjs(69418)% < 10 ))
        mload obj 69418
        mecho  - ��, ������, � ���� ���-��� ���� ��� ����.
        wait 1s
        ���� ��� %actor.name% 
        � ���, �����.
      else
        wait 1s
        ������
        halt
      end 
    break
    case 3
      if (( %random.100% < 50 ) && ( %world.curobjs(69419)% < 5 ))
        mload obj 69419
        mecho  - ��, ������, � ���� ���-��� ���� ��� ����.
        wait 1s
        ���� ��� %actor.name% 
        � ���, �����.
      else
        wait 1s
        ������
        halt
      end 
    break
    case 4
      if (( %random.100% < 10 ) && ( %world.curobjs(69420)% < 3 ))
        mload obj 69420
        mecho  - ��, ������, � ���� ���-��� ���� ��� ����.
        wait 1s
        ���� ��� %actor.name% 
        � ���, �����.
      else
        wait 1s
        ������
        halt
      end 
    break
    case 5
      if (( %random.100% < 50 ) && ( %world.curobjs(69425)% < 12 ))
        mload obj 69425
        mecho  - ��, ������, � ���� ���-��� ���� ��� ����.
        wait 1s
        ���� ��� %actor.name% 
        � ���, �����.
      else
        wait 1s
        ������
        halt
      end 
    break
    case 6
      if (( %random.100% < 50 ) && ( %world.curobjs(69426)% < 7 ))
        mload obj 69426
        mecho  - ��, ������, � ���� ���-��� ���� ��� ����.
        wait 1s
        ���� ��� %actor.name% 
        � ���, �����.
      else
        wait 1s
        ������
        halt
      end 
    break
    default 
      wait 1s
      ������
      halt
    break 
  done
else
  mecho  - ���, ��� �� ���!
  ���� ��� %actor.name%
end
~
#69423
���������������������~
0 j 100
~
if %object.vnum% == 69414
  wait 1s
  mpurge �����
  �� ���������� ������
  mecho - ��� �� ���� ����� �������! ��� �������! � ����, ��� ������ ������� �� ����� �������� �����!
  switch %random.7%
    case 1
      if (( %random.100% < 50 ) && ( %world.curobjs(69422)% < 10 ))
        mload obj 69422
        mecho  - ��, �������, � ���� ���-��� ���� ��� ����.
        wait 1s
        ���� ��� %actor.name% 
        � ���, �����.
      else
        wait 1s
        ������
        halt
      end 
    break
    case 2
      if (( %random.100% < 50 ) && ( %world.curobjs(69430)% < 10 ))
        mload obj 69430
        mecho  - ��, �������, � ���� ���-��� ���� ��� ����.
        wait 1s
        ���� ��� %actor.name% 
        � ���, �����.
      else
        wait 1s
        ������
        halt
      end 
    break
    case 3
      if (( %random.100% < 50 ) && ( %world.curobjs(69431)% < 5 ))
        mload obj 69431
        mecho  - ��, �������, � ���� ���-��� ���� ��� ����.
        wait 1s
        ���� ��� %actor.name% 
        � ���, �����.
      else
        wait 1s
        ������
        halt
      end 
    break
    case 4
      if (( %random.100% < 50 ) && ( %world.curobjs(69432)% < 6 ))
        mload obj 69432
        mecho  - ��, �������, � ���� ���-��� ���� ��� ����.
        wait 1s
        ���� ��� %actor.name% 
        � ���, �����.
      else
        wait 1s
        ������
        halt
      end 
    break
    case 5
      if (( %random.100% < 50 ) && ( %world.curobjs(69433)% < 12 ))
        mload obj 69433
        mecho  - ��, �������, � ���� ���-��� ���� ��� ����.
        wait 1s
        ���� ��� %actor.name% 
        � ���, �����.
      else
        wait 1s
        ������
        halt
      end 
    break
    case 6
      if (( %random.100% < 50 ) && ( %world.curobjs(69428)% < 7 ))
        mload obj 69428
        mecho  - ��, �������, � ���� ���-��� ���� ��� ����.
        wait 1s
        ���� ��� %actor.name% 
        � ���, �����.
      else
        wait 1s
        ������
        halt
      end 
    break
    default 
      wait 1s
      ������
      halt
    break 
  done
else
  mecho  - ���, ��� �� ���! ������ ����.
  ���� ��� %actor.name%
end  
~
#69424
��������������~
0 r 1
~
wait 1s
�� ����������� � ������ �������� �� ����.
~
#69425
��������������~
0 c 0
���������~
if !%arg.contains(�����)%
  msend %actor.name% ���� ������?
  halt
else
  %send% %actor% _����� ���������, ���� ������� ������ �������, �� ��������� �����.
  %echoaround% %actor% _����� ���������, ���� ������� ������ �������, %actor.name% ��������%actor.g% �����.
  wait 1s
  mecho _������ ��������� �� �������������, ������� ������� ����� ����� �������.
  mecho _�, �������� �� ����� ������ �����, ����� �� ����.
  if (( %random.100% < 50 ) && ( %world.curobjs(69413)% < 8 ))
    mload obj 69413
  end
  if (( %random.100% < 50 ) && ( %world.curobjs(69414)% < 4 ))
    mload obj 69414
  end
  ��� ���
  mpurge %self%
end
~
#69426
������������~
0 r 100
~
if %actor.haveobj(69415)% 
  *����������
  *wait 1s
  *mecho _&W����������� ���� ������ � ������������ � ��� ���� ������, ����������.&n
  *mpurge ��10011001
else
  ���� %actor.name%
end 
~
#69427
����� ������ � ������~
0 q 100
~
wait 1
if %actor% != %quest694%
  halt
end
unset quest694
wait 1s
���
wait 1s
mecho - ������� ��� ���� ���� , �� �������� �� ������� ���...
mecho - �� ��� ������� � ���� �� ����� ������ � ��������� � ����.
�� ����������� �� �����
wait 1s
mecho � ��� � ������� ����..
eval max 95+%actor.remort%*5
switch %actor.class%
  *������
  case 0
    if (( %random.100% < 10 ) && ( %world.curobjs(69441)% < 3 ))
      mload obj 69441
      ���� ��� %actor.name%
    else
      %self.gold(+3000)%
      ���� 3000 ��� %actor.name%
    end
  break
  *������
  case 1
    if (( %random.100% < 10 ) && ( %world.curobjs(69444)% < 3 ))
      mload obj 69444
      ���� ��� %actor.name%
    else
      %self.gold(+3000)%
      ���� 3000 ��� %actor.name%
    end
  break
  *����
  case 2
    if (%actor.skill(����������)% < %max%) 
      eval lvskl %actor.skill(����������)%+3
      if %lvskl% > %max%
        eval addskl %max%-%actor.skill(����������)%
      else
        set addskl 3
      end
      mskilladd .%actor.name% ���������� %addskl%
    else
      %self.gold(+3000)%
      ���� 3000 ��� %actor.name% 
    end
  break
  *��������
  case 3
    if (%actor.skill(�����������)% < %max%) 
      eval lvskl %actor.skill(�����������)%+3
      if %lvskl% > %max%
        eval addskl %max%-%actor.skill(����������� �����)%
      else
        set addskl 3
      end
      mskilladd .%actor.name% �����������.����� %addskl%
    else
      %self.gold(+3000)%
      ���� 3000 ��� %actor.name% 
    end
  break
  *�������
  case 4
    �� �������� �������, � ���-�� ���������
    wait 1s
    �� ������������ �� �� �����
    wait 1s
    � ��� �����%actor.q% �� ������ �� ���, ������?!
    � ���� ���� ��������� - �����, ���� ��%actor.q%!
    wait 1s
    � �� ������ ������ - ����� �� ����!
    wait 1s
    mecho _�������� �� ���������� ������ - ������� ����� �������� ������.
    %send% %actor% _����� ������� ����� ����� ��� ����� - ����� ������ �� ��� ���� ��������.
    %echoaround% %actor% _����� ������� ����� ����� ��� ����� - ����� ������ �� ���� %actor.rname% ��������.
    eval nHit %actor.hitp%+11
    mdamage %actor% %nHit%
  break
  *����
  case 5
    if (%actor.skill(���������� �����)% < %max%) 
      eval lvskl %actor.skill(���������� �����)%+3
      if %lvskl% > %max%
        eval addskl %max%-%actor.skill(���������� �����)%
      else
        set addskl 3
      end
      mskilladd .%actor.name% ����������.����� %addskl%
    else
      %self.gold(+3000)%
      ���� 3000 ��� %actor.name% 
    end
  break
  *��������
  case 6
    if %random.100% < 10 && %world.curobjs(69421)% < 3
      mload obj 69421
      ���� ��� %actor.name%
    else
      %self.gold(+3000)%
      ���� 3000 ��� %actor.name%
    end
  break
  *����������
  case 7
    if %random.100% < 10 && %world.curobjs(69445)% < 3
      mload obj 69445
      ���� ��� %actor.name%
    else
      %self.gold(+3000)%
      ���� 3000 ��� %actor.name%
    end
  break
  case 8
    if %random.100% < 10 && %world.curobjs(69441)% < 3
      mload obj 69441
      ���� ��� %actor.name%
    else
      %self.gold(+3000)%
      ���� 3000 ��� %actor.name%
    end
  break
  *������
  case 9
    if (%actor.skill(������ �����)% < %max%) 
      eval lvskl %actor.skill(������ �����)%+3
      if %lvskl% > %max%
        eval addskl %max%-%actor.skill(������ �����)%
      else
        set addskl 3
      end
      mskilladd .%actor.name% ������.����� %addskl%
    else
      %self.gold(+3000)%
      ���� 3000 ��� %actor.name% 
    end
  break
  *����
  case 10
    if (%actor.skill(����������)% < %max%) 
      eval lvskl %actor.skill(����������)%+3
      if %lvskl% > %max%
        eval addskl %max%-%actor.skill(����������)%
      else
        set addskl 3
      end
      mskilladd .%actor.name% ���������� %addskl%
    else
      %self.gold(+3000)%
      ���� 3000 ��� %actor.name% 
    end
  break
  *������
  case 11
    if (%actor.skill(��������)% < %max%)
      eval lvskl %actor.skill(��������)%+3
      if %lvskl% > %max%
        eval addskl %max%-%actor.skill(��������)%
      else
        set addskl 3
      end
      mskilladd .%actor.name% �������� %addskl%
    else
      %self.gold(+3000)%
      ���� 3000 ��� %actor.name%
    end
  break
  *�����
  case 12
    if (%quest694.skill(����������)% < %max%)
      eval lvskl %actor.skill(����������)%+3
      if %lvskl% > %max%
        eval addskl %max%-%actor.skill(����������)%
      else
        set addskl 3
      end
      mskilladd .%actor.name% ���������� %addskl%
    else
      %self.gold(+5000)%
      ���� 5000 ��� %quest694.name%
    end
  break
  *�����
  case 13
    if %random.100% < 10 && %world.curobjs(69441)% < 3
      mload obj 69441
      ���� ��� %actor.name%
    else
      %self.gold(+3000)%
      ���� 3000 ��� %actor.name%
    end
  break
  default
    %self.gold(+3000)%
    ���� 3000 ��� .%actor.name%
  break
done
detach 69427 %self.id%
~
#69428
���������~
2 z 0
~
wload mob 69430
wload mob 69430
wload mob 69430
wload mob 69430
~
#69429
���������~
2 z 0
~
wload mob 69419
wload mob 69419
wload mob 69419
~
#69430
���������������~
2 z 0
~
wload mob 69423
wload mob 69423
wload mob 69423
wload mob 69422
wload mob 69422
wload mob 69422
~
#69431
��������������~
2 z 0
~
wload mob 69427
wload mob 69427
wload mob 69427
~
#69432
������������~
2 z 0
~
wload mob 69410
~
#69433
�����������������~
0 j 100
~
if %object.vnum% == 69416
  wait 1s
  mecho - ��������� ���� �� ������, ������!
  mecho - � �� � �� ����� �������� ������������ � ������� �� ������ ������������.
  ���
  wait 1s
  mecho - �� ��� � ������ ���� ����� � ���� ����!
  wait 1s
  calcuid mpt 69441 room
  attach 69434 %mpt.id%
  exec 69434 %mpt.id%
  detach 69434 %mpt.id%
  %purge% %object%
end
~
#69434
�����������~
2 z 100
~
wportal 69412 2
~
#69435
���������������~
0 d 0
�������~
wait 1s 
mecho - ��... ���� �� ������...
mload obj 69415
���� ��� %actor.name% 
detach 69435 %self.id%
~
#69436
���������~
2 f 100
~
*��������
calcuid nZ1 69400 mob
detach 69427 %nZ1%
attach 69400 %nZ1.id%
attach 69408 %nZ1.id%
*������
calcuid nZ2 69455 room
attach 69404 %nZ2.id%
*��������
*calcuid nZ3 69407 mob �� ������ ������� �������.. �� ����� ��� ���� ��������
*attach 69405 %nZ3.id%
*attach 69406 %nZ3.id%
*����
calcuid nZ4 69415 mob 
attach 69420 %nZ4.id%
attach 69421 %nZ4.id%  
*����
calcuid nZ5 69469 room
attach 69469 %nZ5.id%
~
#69437
�����������~
2 z 0
~
wload mob 69435
wload mob 69443
wload mob 69443
~
#69438
������������~
2 z 0
~
wload mob 69436
wload mob 69436
wload mob 69443
wload mob 69443
wload mob 69443
~
#69439
������������~
2 z 0
~
wload mob 69442
~
#69440
��������������~
2 z 0
~
wload mob 69441
~
#69441
����������������~
2 z 100
~
foreach i %self.npc% 
  *wecho ggggggggggggggggggg %i.iname%
  *wpurge ��10011001
  %purge% %i% 
done
~
#69442
�������������~
0 f 100
~
if (( %random.100% < 20 ) && ( %world.curobjs(69446)% < 10 ))
  mload obj 69446
end
if (( %random.100% < 20 ) && ( %world.curobjs(69447)% < 10 ))
  mload obj 69447
end
~
#69443
��������������������~
1 g 100
~
wait 2s
%send% %actor% _&W�������� �� �������� ���� ������, ������� �� ����� ������.&n
*%echoaround% %actor% _%actor.iname% ���������%actor.g% � �� ��� ��� �������� ������� �����.
***********
wait 1s
%send% %actor% _&W���� ���� ����� ����������� � ������ ����������.&n
%echoaround% %actor% _&W���� %actor.rname% ����� ������������ ����������� � ������ ����������.&n
***********
*wait 1s
%send% %actor% _&W� ������ ���� �� ����� ��� �������� ������� �����.&n
if (%actor.sex% == 1)
  %echoaround% %actor% _&W%actor.vname% ��������� � �� ��� ��� �������� ������� �����.&n
else
  %echoaround% %actor% _&W%actor.vname% ���������� � �� ��� �� �������� ������� �����.&n
end
************ 
wait 1s
oecho _&W������������ ����� ����� ���������� ����� ������ ����� ����, ������ � ����� ���� ������.&n
%echoaround% %actor% _���������� %actor.rname% ������� ���� ������.
set nbn 0
eval chnbn %actor%
foreach i %self.pc%
  *eval r10 %random.pc%
  * 
  *oecho %i.name% --%nbn%------%i.bank%----
  if (%nbn%<%i.bank%)
    eval nbn %i.bank%
    eval chnbn %i%
    *oecho %i.name% --%nbn%----88888888------ %chnbn.name% 
  end
done
wait 1s
if (%actor.sex% == 1)
  oecho _&W����� ������ �������� ������ ������� ������� �� %chnbn.vname% � ����, ������ ��� � �����.&n
else
  oecho _&W����� ������ �������� ������ ������� ������� �� %chnbn.vname% � ����, ������ �� � �����.&n
end
calcuid curroom %actor.realroom% room
eval nHit %chnbn.hitp%+11
odamage %chnbn% %nHit%
wait 1
%echo% ����� � ������ ������ �� ����������� ��� � ������ ���������� �� �����.
eval temp %self.put(%curroom.id%)%
~
#69444
�����������~
0 f 100
~
if (( %random.80% < 10 ) && ( %world.curobjs(69450)% < 8 ))
  mload obj 69450
end
if (( %random.80% < 10 ) && ( %world.curobjs(69451)% < 8 ))
  mload obj 69451
end
~
#69445
�����������������~
0 f 100
~
switch %random.7%
  case 1
    if (( %random.100% < 50 ) && ( %world.curobjs(69452)% < 10 ))
      mload obj 69452
    end 
  break
  case 2
    if (( %random.100% < 50 ) && ( %world.curobjs(69453)% < 10 ))
      mload obj 69453
    end 
  break
  case 3
    if (( %random.100% < 50 ) && ( %world.curobjs(69454)% < 10 ))
      mload obj 69454
    end 
  break
  case 4
    if (( %random.100% < 50 ) && ( %world.curobjs(69455)% < 10 ))
      mload obj 69455
    end 
  break
  case 5
    if (( %random.100%  < 50) && ( %world.curobjs(69456)% < 10 ))
      mload obj 69456
    end 
  break
  case 6
    if (( %random.100% < 50 ) && ( %world.curobjs(69457)% < 10 ))
      mload obj 69457
    end 
  break
  case 7
    if (( %random.100% < 50 ) && ( %world.curobjs(69458)% < 10 ))
      mload obj 69458
    end 
  break
  default 
    halt
  break 
done
~
#69446
���������������������~
0 f 100
~
switch %random.6%
  case 1
    if (( %random.100% < 50 ) && ( %world.curobjs(69442)% < 10 ))
      mload obj 69442
    end 
  break
  case 2
    if (( %random.100% < 50 ) && ( %world.curobjs(69452)% < 10 ))
      mload obj 69452
    end 
  break
  case 3
    if (( %random.100% < 50 ) && ( %world.curobjs(69453)% < 10 ))
      mload obj 69453
    end 
  break
  case 4
    if (( %random.100% < 50 ) && ( %world.curobjs(69454)% < 10 ))
      mload obj 69454
    end 
  break
  case 5
    if (( %random.100% < 50 ) && ( %world.curobjs(69454)% < 10 ))
      mload obj 69454
    end 
  break
  case 6
    if (( %random.100% < 50 ) && ( %world.curobjs(69442)% < 10 ))
      mload obj 69442
    end 
  break
  default 
    halt
  break 
done
~
#69447
�����������~
2 e 100
~
if %actor.haveobj(69400)% 
  calcuid asd 69400 obj
  %purge% %asd.id%
end
~
#69448
���� ��� 01~
0 f 100
~
if (( %random.100% < 8 ) && ( %world.curobjs(69409)% < 6 ))
  mload obj 69409
end
~
#69449
���� ��� 02~
0 f 100
~
if (( %random.100% < 8 ) && ( %world.curobjs(69408)% < 6 ))
  mload obj 69408
end
~
#69450
���� ��� 03~
0 f 100
~
if (( %random.100% < 8 ) && ( %world.curobjs(69404)% < 6 ))
  mload obj 69404
end
~
#69451
���� ��� 04~
0 f 100
~
if (( %random.100% < 8 ) && ( %world.curobjs(69402)% < 6 ))
  mload obj 69402
end
~
#69452
���� ��� 13~
0 f 100
~
if (( %random.100% < 8 ) && ( %world.curobjs(69434)% < 6 ))
  mload obj 69434
end
~
#69453
���� ��� 12~
0 f 100
~
if (( %random.100% < 8 ) && ( %world.curobjs(69427)% < 6 ))
  mload obj 69427
end
~
#69454
���� ��� 08~
0 f 100
~
if (( %random.100% < 8 ) && ( %world.curobjs(69423)% < 6 ))
  mload obj 69423
end
~
#69455
���� ��� 17~
0 f 100
~
if (( %random.100% < 8 ) && ( %world.curobjs(69429)% < 6 ))
  mload obj 69429
end
~
#69456
���� ��� 11~
0 f 100
~
if (( %random.100% < 8 ) && ( %world.curobjs(69424)% < 6 ))
  mload obj 69424
end
~
#69457
���� ��� 34~
0 f 100
~
if (( %random.100% < 8 ) && ( %world.curobjs(69437)% < 6 ))
  mload obj 69437
end
~
#69458
���� ��� 39~
0 f 100
~
if (( %random.100% < 8 ) && ( %world.curobjs(69448)% < 6 ))
  mload obj 69448
end
~
#69459
���� ��� 31~
0 f 100
*~
if (( %random.100% < 5 ) && ( %world.curobjs(69435)% < 4 ))
  mload obj 69435
end
if (( %random.100% < 5 ) && ( %world.curobjs(69439)% < 4 ))
  mload obj 69439
end
if (( %random.100% < 5 ) && ( %world.curobjs(69438)% < 4 ))
  mload obj 69438
end
if (( %random.100% < 5 ) && ( %world.curobjs(69440)% < 4 ))
  mload obj 69440
end
~
#69460
���� ��� 40~
0 f 100
~
if (( %random.100% < 8 ) && ( %world.curobjs(69449)% < 4 ))
  mload obj 69449
end
~
#69461
��������������1~
0 r 100
~
if %actor.class% == 4
  %actor.wait(3)%
  mecho _ 
  mecho ������� ������� ��������� ���.
  ���� %actor.name% ��� ���� ���� �����?&n
  ���� %actor.name% �� ����� �� ��������� ����� ���, ��� ����� ��� ����� ���������...&n
  ���� %actor.name% �����, ������...&n
end
~
#69462
��������������2~
0 r 100
~
if %actor.class% == 4
  %actor.wait(5)%
  wait 1s
  mecho &r_������� ��������� ��������� ���.&n
  ���� %actor.name% ����� ���������?
  ���� %actor.name% �� ����� �� ��������� ����� ���, ��� ����� ��� ����� ���������...
  ���� %actor.name% ����� �� ��������, ������...
end
~
#69463
��������������3~
0 r 100
~
*��������� ��������������
if %actor.class% == 4
  %actor.wait(10)%
  wait 1s
  %send% %actor% &R_�����, ������!
  %send% %actor% &R_�������� ��� ��������, �����... - ������������ �����.
  %send% %actor% &R_�� ����� �� ��������� ����� ���, ��� ����� ��� ����� ���������...
  wait 1s
  mecho &C_����������� �� ��� ����������� �������-�����.&n
  %send% %actor% &C_� ������ ��������� ������� ������� ����� ���, ������ ���������� - ����� �������.&n
  %echoaround% %actor% &C_� ������ ��������� ������� ������� ����� %actor.rname%, ������ ���������� - ����� �������.&n
  eval nHit %actor.hitp%-1
  mdamage %actor% %nHit%
end
~
#69464
������������~
0 r 100
~
*���� ��������������� �� �������
if %actor.class% == 4
  wait 1s
  %send% %actor% &R_���� ���� ���������, ������... - ��� ������ ������������ �����.
  %send% %actor% &R_�� ���� �� �� ����� ����, ��� �������� ����!
  wait 1s
  mecho _�������� �� ���������� ������ - ������� ����� �������� ������.
  %send% %actor% _����� ������� ����� ����� ��� ����� - ����� ������ �� ��� ���� ��������.
  %echoaround% %actor% _����� ������� ����� ����� ��� ����� - ����� ������ �� ���� %actor.rname% ��������.
  mdamage %actor% 100 Hit
  mteleport %actor% 85271
end
~
#69465
���� ��� 33~
0 f 100
~
if (( %random.100% < 8 ) && ( %world.curobjs(69436)% < 6 ))
  mload obj 69436
end
~
#69466
���� ��� 41~
0 f 100
~
if (( %random.100% < 8 ) && ( %world.curobjs(69447)% < 6 ))
  mload obj 69447
  halt
end
if (( %random.100% < 8 ) && ( %world.curobjs(69446)% < 6 ))
  mload obj 69446
  halt
end
~
#69467
���������������������06~
0 z 0
~
wait 1
mecho _����� �� �������� ���-�� �������� � ����� � ������ �����
wait 1s
mecho _��������� ������� ������ ������-������, ���� �������� ������� - �������...
*wait 2s
mload obj 69406
��
���� %herro.name% �� �� ��� ���� ���� �� �������� � ������� ����
���� ��� .%herro.name%
mecho ����� ���������� ���������� ��� � ����� � ������� � ��������� �����.
mpurge %self%
~
#69468
���������������������07~
0 z 0
~
wait 1
mecho _����� �� �������� ���-�� �������� � ����� � ������ �����
wait 1s
mecho _��������� ������� ������ ������-������, ���� �������� ������� - �������...
*wait 2s
mload obj 69407
��
���� %herro.name% �� �� ��� ���� ���� �� �������� � ������� ����
���� ��� .%herro.name%
mecho ����� ���������� ���������� ��� � ����� � ������� � ��������� �����.
mpurge %self%
~
#69469
�������������������8502~
2 e 100
~
if ( ( %actor.quested(85021)% ) && ( !%actor.quested(85024)% ) 
  *������ ���� �� ����� �� ���� ������ � ����-�������
  *� ���������� ���� ����� ����� ���� (�� ��������) 
  *wait 1s 
  *wecho -------------------------- 
  switch %random.3%
    case 1
      calcuid rgrom1 69473 room
      *wecho -------------------------- 73
      attach 69470 %rgrom1% 
      exec 69470 %rgrom1% 
      detach 69470 %rgrom1% 
    break
    case 2
      calcuid rgrom2 69493 room
      *wecho -------------------------- 93
      attach 69470 %rgrom2% 
      exec 69470 %rgrom2% 
      detach 69470 %rgrom2% 
    break
    case 3
      calcuid rgrom3 69495 room
      *wecho -------------------------- 95
      attach 69470 %rgrom3% 
      exec 69470 %rgrom3% 
      detach 69470 %rgrom3% 
    break
  done
  detach 69469 %self%
end
~
#69470
��������������8502~
2 z 100
~
wload obj 85136
wforce ���� ����� ���
~
#69471
��������������~
0 d 0
*~
switch %speech%
  case ����
    wait 1s
    ���
    wait 1s
    � �, �������� �������-��!
    mecho - �� ��� ��� � ����...
    mecho - ����� �����, ����� ��� �����-�� �� ����� �� ����
    mecho - ����� � ���� ��� ��������� �� �������� ����� �����.
    mecho - � ��� ��� ��� � �����.
  break
  default
    � ��� � ���� �����! � ������ ����� ���.
  break
done
~
#69472
��������������2~
0 f 100
~
if (( %random.100% < 8 ) && ( %world.curobjs(69449)% < 4 ))
  mload obj 69449
end
~
$~
