#27600
������ ����~
1 c 100
������~
if (%actor% == %hero276%)
  if (%arg% == ����)
    osend %actor% �� ����� ��������� ������ � ����� ����. ��������� ���.
    oechoaround %actor% %actor.name% ����%actor.g% ��������� ������ � ����� ����. ��������� ���.
    oload obj 27609
    oforce %actor% ����� ������
    calcuid mpast 27610 mob
    detach 27603 %mpast.id%
    detach 27600 %self.id%
  else
    osend %actor% � ��� ������?
  end
else
  osend %actor% ��� ������ �� ���������?
end
~
#27601
��������~
0 q 100
~
wait 1
if (%weather.season% == ����)
  halt
end
if (%world.curobjs(27610)% > 0)
  tell %actor.name% ������, ���� �������, �� ����� �� � ���� ���� �����?
  tell %actor.name% � ���� ��������� ���� ��� � ���.
end
~
#27602
������~
0 d 0
�� ������� yes~
wait 1
if (%weather.season% == ����)
  halt
end
wait 1
eval hero276 %actor%
global hero276
if %exist.mob(27613)%
  calcuid ustal 27613 mob
  remote hero276 %ustal.id%
end
if %exist.mob(27610)%
  calcuid pastuh 27610 mob
  attach 27603 %pastuh.id%
  remote hero276 %pastuh.id%
end
tell %actor.name% �������, � ������� ����� ������ �������.
tell %actor.name% �� �������� �������, ��� ��������� �����
tell %actor.name% �������� �� ����� ������ �� �����������.
tell %actor.name% � ��� ��� ������ ��� �������� ������, ��������.
tell %actor.name% � ����� �� ������� ���� � ������� ���� ���� ������.
tell %actor.name% ����� � ��������, ������ � ���, ����� �� ���
tell %actor.name% ���� ���� ���������� ��� �����.
detach 27601 %self.id%
detach 27602 %self.id%
~
#27603
����������~
0 q 100
~
wait 1
if (%actor% == %hero276%) && (%actor.realroom% == 27645)
  wait 1
  tell %actor.name% ����! ���������, ������ ��� ����!
  tell %actor.name% � ������, ��� �� ��� �������, �������� ���������.
  %send% %actor% ������������, �� ������ ���������� � ��������� ��������.
  %echoaround% %actor% ������������, %actor.iname% ������ ���������%actor.g% � ��������� ��������.
  tell %actor.name% ���, ��� �� ��� ���������?
  tell %actor.name% ���� ���� ����? � ��� ���%actor.y% ��� ��.
  tell %actor.name% ��, ���������� ������?
  tell %actor.name% ��, ���� ����� ��������.
  wait 2
  ���
  wait 2
  tell %actor.name% ��, ��������, ������ ����!
  tell %actor.name% ���������� ������ ����, ��������� �����.
  tell %actor.name% �� ������ � �� ���, � ���-�� ������� ������ �� �����.
  tell %actor.name% ������ ���� ������ �� �������. �����, ���� ����%actor.g%.
  tell %actor.name% ����� � �������.
  calcuid stog 27608 obj
  attach 27600 %stog.id%
  remote hero276 %stog.id%
  attach 27605 %self.id%
  detach 27603 %self.id%
end
~
#27604
���������~
2 f 100
~
if (%world.curobjs(27610)% > 0)
  calcuid zemlem 27609 mob
  attach 27601 %zemlem.id%
  attach 27602 %zemlem.id%
  detach 27606 %zemlem.id%
  calcuid ustav 27613 mob
  detach 27607 %ustav.id%
  calcuid mpast 27610 mob
  detach 27603 %mpast.id%
  detach 27605 %mpast.id%
  calcuid ovca 27608 obj
  detach 27600 %ovca.id%
else
  calcuid zemlem 27609 mob
  dettach 27601 %zemlem.id%
  dettach 27602 %zemlem.id%
end
~
#27605
����������������~
0 j 100
~
wait 1
if (%object.vnum% != 27609)
  tell %actor.name% ����� ��� ���?
  return 0
  halt
end
if (%actor% != %hero276%)
  mpurge %object%
  tell %actor.name% ������� �� ������!
  tell %actor.name% ������ �� ������ ��� ��� ���? � ���� ����� ������� �� ����?
  �����
  mkill %actor%
  detach 27605 %self.id%
  halt
else
  mpurge %object%
  tell %actor.name% �� ��� ����, �������!
  tell %actor.name% ������� ���� �����, � ������ ������ ������ ����� �������.
  wait 1s
  tell %actor.name% �� ���� ����� �����, ������ ���� ��� ������!
  tell %actor.name% � ����� ����� ���������, ���� ���� �������� ��� ������ ���.
  tell %actor.name% ��� ����� �������.
  ����
  calcuid zemlem 27609 mob
  attach 27606 %zemlem.id%
  remote hero276 %zemlem.id%
  detach 27605 %self.id%
end
~
#27606
�����������������~
0 q 100
~
wait 1
if (%actor% == %hero276%)
  wait 1
  tell %actor.name% �������! �� �������� ��� �������, ����� ��� ���������
  tell %actor.name% ����� ���� ����������. �� � �, ��������� ��� ��������.
  tell %actor.name% ��� ������, ��� ������, ��� � ����.
  %send% %actor% %self.iname% ��� ��� ������� ���.
  eval temp %actor.gold(+50)%
  wait 1
  if %world.curobj(27614)%==0
    ���
    tell %actor.name% ��� �� ���� ������ ���� ��� ������ �� � ������.
    tell %actor.name% �� ������� ��� �� ��� ��� ����� ����������, �� ���� ��������.
    tell %actor.name% ����� � ���� ����� ���� �������� �������� �����������.
    tell %actor.name% ��� ��� ������� ����� ����� ���������, ���� �����������.
    tell %actor.name% �� ������ ���� ������ ����� ������, ���������� ��������
    tell %actor.name% ��������, �����, �� ������� � ������� ������������ ������.
    tell %actor.name% �� ��� �������� ��� ��� ����������� �����.
    wait 1
    tell %actor.name% � �����, ��� ���� ����, �����, �������� ��� ���.
    tell %actor.name% �� � ���� ���� �������, � �� ����, ���� ����� �� ������.
    tell %actor.name% ���� ������� ����� � �������� ������ � �� ���������.
    mload obj 27614
    ���� ���� .%actor.name%
    calcuid ustav 27613 mob
    attach 27607 %ustav.id%
    remote hero276 %ustav.id%
    ������
  end
  detach 27606 %self.id%
end
~
#27607
�������������~
0 q 100
~
wait 1
if (%actor% == %hero276%) && (%actor.realroom% == 27663)
  wait 1
  � ������ ����!
  � �� ����%actor.y%, ��� ������ ��� ���� ������ ����?
  � ������� �� ������������!
  ���� 150 ��� .%actor.name%
  � � ��� ������� �������������, ��� ���� �� ���� �����,
  � �� ����, ��� ��� ����� ������� ������.
  � �� ���� ��� ���������� ���� �����.
  � ������� � ���� � �����:
  if %world.curobjs(517)%==0
    � 100  ��� : ������� �������������
  end
  if %world.curobjs(516)%==0
    � 500  ��� : ��������
  end
  if %world.curobjs(512)%==0
    � 2000 ��� : �����
  end
  if %world.curobjs(527)%==0
    � 200  ��� : ��������� ���������
  end
  if %world.curobjs(518)%==0
    � 400  ��� : ��������
  end
  if %world.curobjs(538)%==0
    � 2500 ��� : �����
  end
  if %world.curobjs(500)%==0
    � 1500 ��� : �������
  end
  if %world.curobjs(543)%==0
    � 1000 ��� : ��������� ����
  end
  if %world.curobjs(537)%==0
    � 5000 ��� : �������� �����
  end
  � ������� ���� ���, ����� ����� � ��������.
  � ���������, ��� ����� ������, �� � ������ ������� �������� �������.
  attach 27611 %self.id%
  detach 27605 %self.id%
end
~
#27608
����������~
0 f 100
~
if (%world.curmobs(27614)% == 1) 88 (%world.curobjs(27614)% == 0)
  if (%actor.vnum% == -1)
    set hero276 %actor%
  else
    set hero276 %actor.leader%
  end
  calcuid ustav 27613 mob
  attach 27607 %ustav.id%
  remote hero276 %ustav.id%
  mload obj 27614
end
~
#27609
�����������~
0 f 100
~
if (%world.curobjs(535)%==0) && (%random.5%==1)
  mload obj 535
end
~
#27610
�������~
1 g 100
~
if (%world.curmobs(27614)% > 0) && (%world.curmobs(27617)% == 0)
  calcuid volk 27614 mob
  opurge %volk%
  oload mob 27617
  oechoaround %actor% ���� ����� ��������� � ����� �� %actor.vname%.
  osend %actor% ���� ����� ��������� � ����� �� ���.
end
~
#27611
��������������~
0 m 100
~
wait 1
if (%actor% != %hero276%) || (%actor.realroom% != 27663)
  halt
end
switch %amount%
  case 100
    set bvnum 517
  break
  case 200
    set bvnum 527
  break
  case 400
    set bvnum 518
  break
  case 500
    set bvnum 516
  break
  case 1000
    set bvnum 543
  break
  case 1500
    set bvnum 500
  break
  case 2000
    set bvnum 512
  break
  case 2500
    set bvnum 538
  break
  case 5000
    set bvnum 537
  break
  default
    say ����� �� ������������� �� ����� �� ����.
    ���� %amount% ��� .%actor.name%
    halt
  break
done
if (%world.curobjs(%bvnum%)% == 0)
  mload obj %bvnum%
  give all .%actor.name%
else
  � ������, ����� ������ ������� ����� � �������, ��� ����� ������.
  ���� %amount% ��� .%actor.name%
  ���
  halt
end
� ���, � ����� �������� ������ ����.
%echo% %self.iname% ������� �� ��������.
mpurge %self%
~
#27612
����������������~
1 g 100
~
wait 1
if (%random.5% < 2) && (%world.curobjs(27619)% <= %world.maxobj(27619)%)
  osend %actor.name% ������, � ������� ������� ����� ��� ���������� � �������.
  osend %actor.name% �� ������ ������� ������, ����� ������� ��� ����� ������
  osend %actor.name% ����������� � ������� ������ ��������.
  oload obj 27619
  oforce %actor% ����� ��������
else
  osend %actor% �� ����������� ������� �������� �� ������, �� ������ ��������� ��.
end
calcuid hobj 27613 obj
opurge %hobj%
~
#27613
����� ��������~
0 f 100
~
if (%world.curobjs(542)% < 1) && (%random.100% < 41)
  mload obj 542
end
~
$~
