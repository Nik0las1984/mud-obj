#29600
� �������~
0 q 100
*~
wait 30
mecho ������ ������ �� ������ ������ ��������.
wait 1s
� ��, ��� �� ��� �����, ��� ������� ���������...
wait 30
mecho �� ������ �� ��� ���������� ������������� �����.
wait 15
� ������ �����������, ����� �� ������� ����� ����������� �������? 
� ��������� ���� ����� �� ����� � �����, � ��� � �� ��������...
attach 29601 %self.id%
attach 29602 %self.id%
detach 29600 %self.id%
~
#29601
� �������2~
0 q 100
*~
wait 30s
mecho ������ ������ ��������.
wait 1s
�� ������ �� ��� ���������� ������������� �����
~
#29602
������~
0 d 1
����� ������~
context 296
wait 20
set kven %actor.id% 
worlds kven
say ������� ���, ������ �������.
wait 30
msend %actor% ���� ������ ���������� ��������, ����� �� ������� �������� �����,
msend %actor% ���� ����������� �� ���� �������.
wait 5
msend %actor% �� ��������� ���� ����, ��� ����������� ������� ����� ��������� ���������
msend %actor% � ��������� ������� �������.
*���� �� ������� � ������ ���� ���� ����
if %world.curmobs(29614)%
  calcuid tort 29614 mob
  attach 29604 %tort.id%
end
detach 29601 %self.id%
detach 29602 %self.id%
~
#29603
� ��������~
0 q 100
*~
wait 30
mecho �������� ������������� ���������� �� ���.
wait 15
say ���-�� ��������, ������� �������?
~
#29604
����������~
0 d 1
���������~
wait 25
say ��, � �� ����� ����� ���������� ���������.
� �� ��� ���� � ������� � �������� ��������, �� ����� �� ���� ������ ���������� ���.
� � ��������� � �������� ��� ������ �� ��� �������.
wait 15
� ��� ���� �� ����� ������ ���������.
wait 15
mecho �������� �������� ���������.
mdoor 29637 down room 29638
mdoor 29637 down flags e 
detach 29603 %self.id%
detach 29604 %self.id%
~
#29605
����� ���~
0 r 100
*~
wait 30
mecho ������� �� ���� ������� ��� ����� ����������� ��������� ���������...
wait 20
mecho ������� � ���� ���������� �����.
wait 20
mecho ������� �����, ������� ����� ���, � ��������� ������� ����� � ��� ��������� ��������.
say �-�-�... �-�-�-�-�... �-�-�-�...
wait 20
mecho ���, � ����� ���������, ������� �� ���� �� ���������. ���� ���-�� � ���� ������.
~
#29606
���� ����� ����~
0 j 100
*~
wait 10
if %object.type% = 17 
  if %object.val1% < 1 
    �� ���������� ������� ��� �������� ���� � ������ � �������
    wait 1s
    �� � ������ ������ ����� �� ���
    halt
  end
  if ((%object.val2% == 1 ) || (%object.val2% == 2 ) || (%object.val2% == 3 ) || (%object.val2% == 5 ) || (%object.val2% == 7 ) || (%object.val2% == 8 ))
    wait 30
    mecho ����� ��� � �������� ��������� ����� � ��� ������� � ��������� �� �� ������ �������.
    wait 30
    mecho ��� ������ ������ - ���� ������, - � �������� �������� ��.
    wait 20
    say ��, ������ �� ���...
    wait 20
    mecho �������� ����� ��� ��� ����� ���-�� ��������.
    wait 20
    say �����, ��� �������...
    �� ������� �������
    wait 20
    mecho ����� ������ ����������, ��� ������� ������, ��� ���-�� ����� � ���� ������ ���������� �������� � ��������� ��� �����.
    mecho ������ � ��� - ������������, ��� ������� �������� �� ������ �� ���� ������� ����� �����.
    mecho � ������ �� ������.
    wait 20
    mecho ��, ��� ��������� ���� ������� (�� �������������, �� ������������� �����!), � �������� �������� ����� �������.
    attach 29607 %self.id%
    detach 29605 %self.id%
    detach 29606 %self.id%
  else
    wait 1s
    �� ���������� ��������� �� ���
  end
end
~
#29607
������������~
0 j 100
*~
switch %object.vnum%
  case 29617
    wait 10
    mpurge %object%
    wait 30
    say �������� ���, �� ����� ��!
    �� �������� �� �������
    wait 30
    � �� ��� �� � ���� ��� �������������, � ���� �� ������ ���.
    wait 30
    mecho �������� ������ ���� �������� ������.
    wait 10
    � ����, � ���� ���-���� ��� �������, ����� � ����������.
    wait 10
    �� ����� ��������� ���
    wait 20
    � ��-��, ����������� �������.
    wait 10
    msend %actor% ����� ������ ����� ��� ������ ��� ������� ���������� �������.
    if %actor.skill(������������)% < 99
      mskilladd %actor.name% ������������ %random.3%
      msend %actor% �� � ������������ ��������� ���������� �� ����.
      msend %actor% ��, ����� �� ��� ������, �� ������ ���������� �� ����������� � �������������� �������� ����� ���������.
      mechoaround %actor% ����� ������ ����� ��� ���-�� ���� ����������.
    else
      msend %actor% �� � ����������� ���������� �� ������� �������. ������ ������ �� ��� �� ���������.
    end
  done
~
#29608
�����������~
1 h 100
*~
if (%actor.realroom% == 29627)
  if %exist.mob(29607)%
    wait 1s
    %send% %actor% �� ��������� ������ ����, ������ ��������� ���� ����� ������ �� ����������.
    %echoaround% %actor% %actor.name% ������%actor.g% ������ ���� � ���� ��������, �� ���� ��� ���� ���������� ������.
    calcuid karab 29607 mob
    attach 29657 %karab%
    exec 29657 %karab%
    %purge% %self%
  end
end
~
#29609
�����������~
2 c 1
������ ��������~
if %arg.contains(��)%
  wait 20
  wsend %actor%  �� ������ ����.
  wechoaround %actor% %actor.name% �������%actor.g% ��������� ����.
  attach 29630 %self.id%
  detach 29609 %self.id%
end
~
#29610
���������~
0 q 100
*~
wait 30
mecho ������� ������� ��������� �����.
wait 30
say ������������, ������������.
mecho ����� ���������� ��������� �����...
wait 20
say ������ �������� � ��� ����������?
say ��������� �������������, - �������. ������ �������������� ����, � ����� �������.
wait 20
say �� ���-������ ���������? ������ ��������, ���, �������� ����������?
say ������ ���� � �������?
wait 20
say � ��� ��� ���� ������� ��������, � � �� � �������� ��� �����, ��, ������ ��, �������, �������� � �������, �� ���...
say �-�-�...����� ���� ������ ������, � ������ �� ���� ��� ���� �������� ������.
wait 20
�� ������� ��������
wait 20
say ��� ���, ��������� ��� ���� ���������� ������, � � ���������� ��� ��� ��� �����.
say �� ���, ��������?
attach 29611 %self.id%
attach 29612 %self.id% 
detach 29610 %self.id%
~
#29611
���������2~
0 q 100
*~
wait 15
�� ����� ��������� ���
~
#29612
���������~
0 d 1
�������� �� ������~
wait 30
� ��� � ������. ������ �� ������� ����� �� ������ ����������. �������, ������ ������.
wait 10s
�� ����������� ��������
attach 29613 %self.id%
detach 29612 %self.id%
~
#29613
�����������~
0 j 100
*~
wait 1
if %object.vnum% != 29620
  say ����� �� ��� ��� ��������?
  drop %object.name%
  halt
else
  wait 1
  mpurge %object%
  eval counter %counter%+1
  global counter
end
if %counter% < 13
  wait 1
  eval rand %random.1000%
  if (%rand% < 333)
    � ��� ��� ����. ������!
  elseif (%rand% < 666)
    �� ��������� � ����� ��������� ������ � �������
  else
    � ������, ������. �����, ��� ������� ��������.
  end
  halt
end
eval rando %random.1000%
if (%rando% < 700)
  wait 30
  � ��, ��� ������� ��������!
  wait 20
  � ���? � ������ ��� ��� ��������? �, �� ��, ���, �������.
  � ��� ����� ������ �����, �������� ���� ����� ������ ������� �� ����� �����.
  wait 15
  �� ������ ���������
  mload obj 29619
  ���� ��� %actor.name%
  detach 29611 %self.id%
  detach 29613 %self.id%
else 
  � ���? � ������ ��� ��� ��������?
  � ������ ���������, ��� �������� �����������. ��� ��� ������ ����������.
  wait 15
  �� ������ ���������
  detach 29611 %self.id%
  detach 29613 %self.id%
end
~
#29614
�����������������~
2 b 50
*~
wait 20
set loh %self.pc%
if %loh%
  wsend %loh%  �� �������������, ��� ������ ������ ����� ���������� � ��� �����.
  wait 2s
  wecho ������� ���������, ������ ����������.
  wdamage %loh% 66
  wload obj 29620
end
~
#29615
����� � ����~
0 z 100
*~
wait 10s
� � ���� ������� �� � ������� ���,
� �� ����� ���� � ���� ��� �� ����.
� ������� ���� � ���� ���� ���,
� ������� ���� ������ ���� � �����! 
wait 10s
� � ����, ���� - ������ ���!
� �� ��� ��� ������� � ��������.
� �� ������ ����, �� ����� �������
� ������ ��� ������ ��� �� ����.
detach 29615 %self.id%
~
#29616
����� � ����~
0 z 100
*~
wait 20
� ���� ����������� ����� -
� ������ �� ��� �����.
� ��� ������� ����� -
� ���, ������� ������.
� �������, ��� �������, -
� �������������� �������.
� � ����� ��� �� �����!
� ���� ���� - � ����� ���!
detach 29616 %self.id%
~
#29617
����� �� �������~
0 z 100
*~
wait 20
� ������ ���� �� �����, -
� ������ �� ������� ���.
� �������� ������ �����,
� ����� ������ �������, -
� ��� ����� ��������� ����
� �������� ����-������...
� � ������� ����� ���, -
� ����� ���� ��� � ���!
detach 29617 %self.id%
~
#29618
���������� ���~
0 b 100
*~
wait 1
eval rand %random.1000%
if (%rand% < 333)
  � ���������!
elseif (%rand% < 666)
  � ����� �������! 
else
  � �� ��������������!.. 
end
~
#29619
���������~
0 rz 100
*~
context 296
if %actor.id% != %kven.id%
  �� ���� ������� � ����� �������� ������ � ���� �������
  halt
end
%kven.wait(3)%
wait 20
���
wait 20
� �� ���������, � ���� �������!
wait 20
� ��, ��� ��? ��� ������ ���� ������?
wait 20
mecho ���� ��������� ������� ������.
wait 20
� �� ���� ������� ���, ��������� ���������.
� �� ����� ������� ������������ � ����� � ���� �����, � ������� � ���� ������� ���...
wait 20
�� ���������
wait 20
� ���� ��� ��� ������ ���� ������, �� ��� ����� ������.
wait 20
� � ���� ���� ������, ������� ������ ����� ��������, �������, �� ��������� �������� ������.
wait 20
� �������� ��� � ������� ���� �������.
���
���� .%kven.name%
���� .%lven.name%
if %exist.mob(29607)%
  calcuid kar 29607 mob
  detach 29660 %kar.id%
  attach 29661 %kar.id%
end
wait 10
if %exist.mob(29626)%
  calcuid dob 29626 mob
  attach 29653 %dob.id%
end
if %exist.mob(29649)%
  calcuid dob 29649 mob
  attach 29653 %dob.id%
end
if %exist.mob(29650)%
  calcuid dob 29650 mob
  attach 29653 %dob.id%
end
if %exist.mob(29651)%
  calcuid dob 29651 mob
  attach 29653 %dob.id%
end
wait 10
if %exist.mob(29603)%
  calcuid bul 29603 mob
  attach 29653 %bul.id%
end
if %exist.mob(29644)%
  calcuid bul1 29644 mob
  attach 29653 %bul1.id%
end
if %exist.mob(29645)%
  calcuid bul2 29645 mob
  attach 29653 %bul2.id%
end
if %exist.mob(29646)%
  calcuid bul3 29646 mob
  attach 29653 %bul3.id%
end
if %exist.mob(29647)%
  calcuid bul4 29647 mob
  attach 29653 %bul4.id%
end
if %exist.mob(29648)%
  calcuid bul5 29648 mob
  attach 29653 %bul5.id%
end
if %exist.mob(29618)%
  calcuid po 29618 mob
  attach 29620 %po.id%
  attach 29615 %po.id%
  exec 29620 %po.id%
  exec 29615 %po.id%
end
if %exist.mob(29619)%
  calcuid ma 29619 mob
  attach 29620 %ma.id%
  exec 29620 %ma.id%
end
if %exist.mob(29620)%
  calcuid an 29620 mob
  attach 29620 %an.id%
  exec 29620 %an.id%
end
calcuid uhol 29603 room
attach 29640 %uhol.id%
calcuid ali 29650 room
wait 10
attach 29634 %ali.id%
detach 29619 %self.id%
~
#29620
������������������~
0 z 100
*~
context 296
���
���� .%kven.name%
detach 29620 %self.id%
~
#29621
��������� � ������~
0 z 100
*~
wait 2s
� �������� ������ ���-�� �����...
�� ������������� ��������� �� ��������
calcuid hol 29603 room
attach 29622 %hol.id% 
detach 29621 %self.id%
~
#29622
�������������~
2 c 1
�������� ��������~
context 296
wait 3
context 2961
unset lven
%kven.wait(3)%
if %arg.contains(�����)%
  wait 20
  wsend %actor%  �� � ������� ������� ����� �� �����. �� ��� ������������ ��������� ������.
  wechoaround %actor% � ������� ��������� ����� ������� �� ����� ��������� ������.
  if %exist.mob(29617)%
    calcuid bur 29617 mob
    attach 29623 %bur.id%
    exec 29623 %bur.id%
  end
  wdoor 29603 n room 29604
  wdoor 29603 n flags abcd 
  wdoor 29603 n key 29623
  calcuid holst 29621 obj
  attach 29656 %holst.id%
  if %exist.mob(29607)%
    calcuid bar 29607 mob
    detach 29658 %bar.id%
    detach 29659 %bar.id%
    detach 29660 %bar.id%
    detach 29661 %bar.id%
    attach 29655 %bar.id%
  end
  exec 29656 %holst.id%
  detach 29622 %self.id%
end
~
#29623
������!~
0 z 100
*~
wait 20
� ��� ���!
wait 20
�� ������ �� ������� ������� ������ � ����� �����
mload obj 29623
wait 20
����� ����
����� ����
calcuid tru 29606 room
attach 29642 %tru.id%
detach 29623 %self.id%
~
#29624
������� ���������~
0 z 100
*~
wait 10
� ����!!!
���� �
~
#29625
�������� ����������~
0 z 100
*~
wait 10
�� ���������� ���������� �� ��������
���� �
~
#29626
������� �����~
0 z 100
*~
wait 10
mecho � ����� �� ��������� ���������� �������
���� �
~
#29627
������� �����~
0 z 100
*~
wait 10
�� �������� ��������
���� �
~
#29628
�������~
0 r 100
*~
context 296
if %actor.id% == %kven.id%
  wait 2s
  mecho ��������� ������� ����� ��� ����������.
  � �������, ��� ������� �� � ���� �����, ����� �� ����� ������.
  � ���� ������� �� ������ ����� � ������� ���� ������. 
  mload obj 29624
  ���� ���� .%kven.name%
  detach 29628 %self.id%
end
~
#29629
�����~
2 f 100
*~
context 296
context 2961
unset kven
unset lven
wdoor 29637 down purge
wdoor 29603 n purge
calcuid zol 29654 room
detach 29609 %zol.id%
detach 29630 %zol.id%
detach 29631 %zol.id%
detach 29632 %zol.id%
detach 29633 %zol.id%
attach 29609 %zol.id%
~
#29630
�����������2~
2 h 100
*~
if (%object.iname% == ������ ������� �����)
  wait 5 
  wecho ������ ������ ������ � ���, ��� ����� ���������� ������.
  calcuid mon 29616 obj
  attach 29631 %self.id%
  wpurge %mon%
  detach 29630 %self.id%
end
~
#29631
�����������3~
2 c 1
������ ��������~
if %arg.contains(����)%
  wait 20
  wsend %actor% �� ��������� �������� ����� �����.
  wechoaround %actor% %actor.name% �� ����� �����%actor.g%  �������������� �����. 
  wechoaround %actor% ���� ������� �����, ����� ���� �� �����...
  attach 29632 %self.id%
  detach 29631 %self.id%
end          
~
#29632
�����������4~
2 c 1
������ ���� ������~
wait 1
wsend %actor% �� ���������� ��������� ���� � ��������� ������ ���������� �������.
wechoaround %actor% %actor.name% ���������%actor.g% ��������� ���� � ��������� �����%actor.g% ���������� �������.
attach 29633 %self.id%
detach 29632 %self.id%
~
#29633
�����������5~
2 d 1
����� ���� ����~
wait 1
eval rand %random.1000%
if (%rand% < 750)
  wsend %actor% ��������� ���, �� � ������ ���������� ���� ����� ����-�� �����.
  wechoaround %actor% �� �������� ��� %actor.name% ���-�� ������������ �����������%actor.g%.
  wait 1s
  wecho ������ �� ���������.
  wait 2s
  wecho ��� �, ����� � ��������� �������.
else
  wecho �� ������ �� � ������ ��������, ��� ����� ���� � ������������ ��������� ������
  wecho ����� ������. � ������� ���������� ������ �� ���������� �������� ��� ������������ �
  wecho �������� ������� �������, �� ������� ������ ������� ������ �������, �� ���� ������� ��
  wecho ��� ����������� �������.
  wait 20
  wecho �������� ��� ������� ����� � ����� �����, ������ ���������, ������ �������� � ����������� � �����.
  wload obj 29618
  wload obj 29618
  wload obj 29618
end
detach 29633 %self.id%
~
#29634
���� ���� � ����~
2 e 100
*~
context 296
if %actor.id% == %kven.id%
  wecho ���������� ��-�� ������ ���������� ����� ���� � ������ ���, ��������� ��� ������.
  if %exist.mob(29620)%
    calcuid art 29620 mob
    exec 29637 %art.id%
  end
  wload mob 29629 
  wload mob 29630
  detach 29634 %self.id%
end
~
#29635
���� �����~
0 n 100
*~
context 296
wait 10
��� ���������
��� �����
��� ������������
��� �����
��� .%kven.name%
~
#29636
��� �����~
0 n 100
*~
context 296
wait 10
��� ���������
��� �����
��� �����
��� ������������
~
#29637
����� ����� ����~
0 z 100
*~
wait 10
mecho ����� ������ ��������� � ������� � �����.
����� �������
~
#29638
���� ���������~
0 f 100
*~
if %exist.mob(29629)%
  calcuid alis 29629 mob
  exec 29635 %alis.id%
end
if %exist.mob(29630)%
  calcuid baz 29630 mob
  exec 29636 %baz.id%
end
if %exist.obj(29621)%
  calcuid hol 29621 obj
  detach 29622 %hol.id%
end
~
#29639
������ ����~
0 f 100
*~
if %exist.mob(29618)%
  calcuid po 29618 mob
  attach 29616 %po.id%
  exec 29616 %po.id%
end
if (%world.curobjs(29616)% < 1)
  mload obj 29616
end
if (%world.curobjs(29612)% < 4) && (%random.1000% <= 200)
  mload obj 29612
end
~
#29640
��������������~
2 g 100
*~
context 296
if (%actor.vnum% != 29617)
  halt
else
  %actor.wait(5)%
  if %exist.mob(29617)%
    calcuid bur 29617 mob
    attach 29621 %bur.id%
    exec 29621 %bur.id%
  end
  wait 1s
  if %exist.mob(29632)%
    %force% %world.mob(29632)% � ������� ���! �� ����� ���!
    %force% %world.mob(29632)% ���
    %force% %world.mob(29632)% ���� �������
  end
  wait 5s
  if %exist.mob(29620)%
    calcuid art 29620 mob
    attach 29641 %art.id%
    exec 29641 %art.id%
  end
  detach 29640 %self.id%
end
end
~
#29641
����� �������� �����~
0 z 100
*~
wait 10
�� ��������� ������� ��� ����� ����������� ����� �������
wait 6s
�� ������� ������� � ������ � �������� ��� � ������
�������� �����
detach 29641 %self.id%
~
#29642
���������������~
2 e 100
*~
context 296
if %actor.id% == %kven.id%
  wait 30
  if %exist.mob(29617)%
    calcuid bur 29617 mob
    attach 29624 %bur.id%
    exec 29624 %bur.id%
  end
  wait 30
  if %exist.mob(29619)%
    calcuid mal 29619 mob
    attach 29625 %mal.id%
    exec 29625 %mal.id%
  end
  wait 15
  if %exist.mob(29618)%
    calcuid po 29618 mob
    attach 29626 %po.id%
    exec 29626 %po.id%
  end
  wait 10
  if %exist.mob(29620)%
    calcuid an 29620 mob
    attach 29627 %an.id%
    exec 29627 %an.id%
  end
  detach 29642 %self.id%
end
~
#29643
��������������~
0 f 100
*~
mload obj 29617
~
#29644
����������~
0 f 100
*~
if (%world.curobjs(29616)% < 1)
  eval rand %random.1000%
  if (%rand% < 503)
    mload obj 29616
  end
end
~
#29645
������� ����~
0 f 100
*~
if (%world.curobjs(29603)% < 4) && (%random.1000% <= 300)
  mload obj 29603
end
if (%world.curobjs(29606)% < 4) && (%random.1000% <= 300)
  mload obj 29606
end
~
#29646
��������~
0 f 100
*~
if (%world.curobjs(29607)% < 4) && (%random.1000% <= 300)
  mload obj 29607
end
~
#29647
�����������~
0 f 100
*~
if (%world.curobjs(29605)% < 4) && (%random.1000% <= 300)
  mload obj 29605
end
~
#29648
���������� ��� �����~
0 f 100
*~
if (%world.curobjs(29608)% < 4) && (%random.1000% <= 80)
  mload obj 29608
end
~
#29649
�������~
0 f 100
*~
if (%world.curobjs(29609)% < 4) && (%random.1000% <= 300)
  mload obj 29609
end
~
#29650
����������~
0 f 100
*~
if (%world.curobjs(29610)% < 4) && (%random.1000% <= 200)
  mload obj 29610
end
~
#29651
������ ������~
0 f 100
*~
if (%world.curobjs(29611)% < 4) && (%random.1000% <= 100)
  mload obj 29611
end
~
#29652
���������������~
1 p 100
~
eval rand %random.1000%
wait 1
if ((%rand% < 333) && (%world.curobjs(29613)% < 4))
  osend %actor% ��� ������ ������ ��������, �� ���� ���������� ��������� �����.
  oechoaround %actor% ��� ������ ������ ��������, �� ���� ���������� ��������� �����.
  oload obj 29613
elseif ((333 <= %rand%) && (%rand% < 666) && (%world.curobjs(29614)% < 4))
  osend %actor% ��� ������ ������ ��������, �� ���� ���������� ������� ��������.
  oechoaround %actor% ��� ������ ������ ��������, �� ���� ���������� ������� ��������.
  oload obj 29614
elseif ((666 <= %rand%) && (%rand% < 999) && (%world.curobjs(29615)% < 4))
  osend %actor% ��� ������ ������ ��������, �� ���� ��������� ������ ������.
  oechoaround %actor% ��� ������ ������ ��������, �� ���� ��������� ������ ������.
  oload obj 29615
else
  osend %actor% ��� ������ ������ ��������, �� ���� ���������� ������ �����.
  oechoaround %actor% ��� ������ ������ ��������, �� ���� ���������� ������ �����.
  oload obj 29625
  detach 29652 %self.id%
end
~
#29653
������������~
0 r 100
*~
context 296
wait 10
����� ���������
����� �����
����� ������������
����� �����
����� .%kven.name%
~
#29654
����������~
0 r 100
*~
context 296
wait 10
����� ���������
����� �����
����� ������������
����� �����
����� .%kven.name%
~
#29655
������� �����~
0 r 100
*~
context 296
wait 10
� � ��� � ��� ����� ���������, ��� ���� ����� ����!
wait 5
� �������!
wait 1
���
����� .%kven.name%
~
#29656
���������~
1 z 100
*~
opurge %self%
~
#29657
��������� ��������~
0 z 100
~
wait 1
mtransform 29633
~
#29658
����������� ��������~
0 q 100
*~
wait 1s
� �� � ��� ��� ���... 
wait 30
�� �������, ��� ��� ����� ���� ��, ������ �� ���������
wait 1s
� ��� ��������� ���� �����-�� ��������� ����� ������� �� �����!
wait 1s
�� �������� ���������� ��������� �� ���
wait 30
�� ������ ����� ��������� ������� � ����� ������ ���� ������
wait 30
� ��, ��.
wait 30
� ��-��, � � ��� ���������.
wait 30
� �� ���� ������ ���������� ����������� ��������� ����� ������?
wait 15
�� �������� �� ���, ������ ��� ������ �����-�� ������
wait 30
� ��� ���, � ���� ������� ��������� ����������� �����, ������� ������ ����������� � ����������. 
� ������� ��, � � ��� �������.
wait 1s
�� ���������������� �������� �� �������� ������ �� �����
wait 30
� �� ���, ��������?
attach 29659 %self.id%
detach 29658 %self.id%
~
#29659
������~
0 d 1
�� ������~
context 2961
wait 20
set lven %actor.id% 
worlds lven
� �� ��� � ���������.
say �� ����������������, � �� ����� ���� ����� �� ���������. 
attach 29660 %self.id%
detach 29658 %self.id%
detach 29659 %self.id%
~
#29660
������������~
0 r 100
*~
context 2961
if %actor.id% == %lven.id%
  wait 5s
  � �� �?
  �� ������ ��������� �� ���
end
~
#29661
������������~
0 r 100
*~
context 2961
if %actor.id% == %lven.id% && %exist.mob(29617)%
  %lven.wait(3)%
  wait 30
  � ���, ��������?! 
  ���
  context 296
  unset kven
  calcuid uhol 29603 room
  detach 29640 %uhol.id%
  wait 30
  if %exist.mob(29619)%
    calcuid mal 29619 mob
    attach 29662 %mal.id%
    exec 29662 %mal.id%
  end
  wait 1s
  � � �� ������� �� � ��������, ����� � � ���� ���������.
  wait 45
  if %exist.mob(29617)%
    calcuid bur 29617 mob
    attach 29664 %bur.id%
    exec 29664 %bur.id%
    %teleport% %bur% 29623
  end
  if %exist.mob(29618)%
    calcuid po 29618 mob
    attach 29664 %po.id%
    exec 29664 %po.id%
    %teleport% %po% 29623
  end
  if %exist.mob(29619)%
    calcuid ma 29619 mob
    attach 29664 %ma.id%
    exec 29664 %ma.id%
    %teleport% %ma% 29623
  end
  if %exist.mob(29620)%
    calcuid an 29620 mob
    attach 29664 %an.id%
    exec 29664 %an.id%
    %teleport% %an% 29623
  end
  mecho ������ �� ��������, ��������� ��������� ����, ���������� ������� � ��� ����� � �������� �� ��� �� �������.
  wait 45
  ��
  � � ��� � ���� �������.
  wait 30
  �� ������ ������ ��-�� �����
  %actor.gold(+1500)%
  %send% %actor% ������� ��� ��� 1500 ���.
  %echoaround% %actor% ������� ��� %actor.dname% 1500 ���.
  detach 29661 %self.id%
end
~
#29662
��������������~
0 z 100
*~
�� ���� ���������
detach 29662 %self.id%
~
#29663
������� �����~
0 r 100
*~
context 296
if %actor.id% == %kven.id%
  wait 30
  ���� � �� ������ ��� �������� ���� ����� ����! 
  � �� ��...
  ����� .%kven.name%
  detach 29663 %self.id%
end
~
#29664
�����~
0 z 100
*~
���� �
~
#29665
������� ������ (� �� ����� ����� ��� ���� �� ���������)~
0 d 100
*~
wait 3
switch %speech%
  case ������
    ����
    %self.wait(1s)%
  break
  case ������
    �����
    %self.wait(1s)%
  break
  case �����
    %echo% _&Y- ���! ���!&n
    %self.wait(1s)%
  break
  default
    halt
  break
done
~
$~
