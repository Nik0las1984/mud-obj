#47700
reset~
2 f 100
~
calcuid reset 47702 mob
detach 47721 %reset.id%
detach 47722 %reset.id%
detach 47723 %reset.id%
detach 47724 %reset.id%
attach 47721 %reset.id%
attach 47722 %reset.id%
calcuid reset 47734 mob
detach 47728 %reset.id%
detach 47729 %reset.id%
detach 47730 %reset.id%
attach 47728 %reset.id%
~
#47701
���� ��������~
0 n 100
~
if (%world.curobjs(47717)% < 6) && (%random.5% == 1)
  mload obj 47717
elseif (%world.curobj(47718)% < 6) && (%random.5% == 1)
  mload obj 47718
end     
~
#47702
���� ������~
0 n 100
*~
if (%world.curobjs(47708)% < 6) && (%random.5% == 1)
  mload obj 47708
end     
if (%world.curobjs(47703)% < 6) && (%random.5% == 1)
  mload obj 47703
end
if (%world.curobjs(47704)% < 6) && (%random.5% == 1)
  mload obj 47704
end     
if (%world.curobjs(47705)% < 6) && (%random.5% == 1)
  mload obj 47705
end     
~
#47703
���� ������~
0 n 100
*~
if (%world.curobjs(47709)% < 6) && (%random.5% == 1)
  mload obj 47709
end     
if (%world.curobjs(47703)% < 6) && (%random.5% == 1)
  mload obj 47703
end
if (%world.curobjs(47704)% < 6) && (%random.5% == 1)
  mload obj 47704
end     
if (%world.curobjs(47705)% < 6) && (%random.5% == 1)
  mload obj 47705
end     
~
#47704
���� ���~
0 n 100
~
if (%world.curobjs(47710)% < 6) && (%random.5% == 1)
  mload obj 47710
end
~
#47705
���� ����~
0 n 100
*~
if (%world.curobjs(47703)% < 6) && (%random.5% == 1)
  mload obj 47703
end
if (%world.curobjs(47706)% < 6) && (%random.5% == 1)
  mload obj 47706
end     
if (%world.curobjs(47707)% < 6) && (%random.5% == 1)
  mload obj 47707
end     
~
#47706
���� ������~
0 f 100
~
if (%world.curobjs(47712)% < 6) && (%random.5% == 1)
  mload obj 47712
end
~
#47707
���� ��������~
0 n 100
*~
if (%world.curobjs(47713)% < 6) && (%random.5% == 1)
  mload obj 47713
end
if (%world.curobjs(47714)% < 6) && (%random.5% == 1)
  mload obj 47714
end     
if (%world.curobjs(47715)% < 6) && (%random.5% == 1)
  mload obj 47715
end     
if (%world.curobjs(47716)% < 6) && (%random.5% == 1)
  mload obj 47716
end     
~
#47708
���� ��������~
0 n 100
~
if (%world.curobjs(47711)% < 6) && (%random.5% == 1)
  mload obj 47711
end
~
#47709
���� �����~
0 n 100
*~
if (%world.curobjs(47723)% < 6) && (%random.5% == 1)
  mload obj 47723
end
if (%world.curobjs(47724)% < 6) && (%random.5% == 1)
  mload obj 47724
end     
if (%world.curobjs(47725)% < 6) && (%random.5% == 1)
  mload obj 47725
end          
~
#47710
���� �����~
0 n 100
~
if (%world.curobjs(47721)% < 6) && (%random.5% == 1)
  mload obj 47721
end
~
#47711
���� �����~
0 n 100
~
if (%world.curobjs(47722)% < 6) && (%random.5% == 1)
  mload obj 47722
end
~
#47712
���� �������~
0 n 100
~
if (%world.curobjs(47720)% < 6) && (%random.5% == 1)
  mload obj 47720
end
~
#47713
���� �����������~
0 n 100
~
if (%world.curobjs(47719)% < 6) && (%random.5% == 1)
  mload obj 47719
end
~
#47714
���� ���~
0 f 100
~
if (%world.curobjs(47726)% < 6) && (%random.5% == 1)
  mload obj 47726
end
~
#47715
���� �������� ������~
0 n 100
~
if (%world.curobjs(47727)% < 6) && (%random.100% < 17)
  mload obj 47727
end
~
#47716
���� �����~
0 n 100
~
if (%world.curobjs(47728)% < 6) && (%random.5% == 1)
  mload obj 47728
end
~
#47717
���� ��������~
0 n 100
*~
if (%world.curobjs(47729)% < 6) && (%random.5% == 1)
  mload obj 47729
end
if (%world.curobjs(47730)% < 6) && (%random.5% == 1)
  mload obj 47730
end
if (%world.curobjs(47731)% < 6) && (%random.5% == 1)
  mload obj 47731
end
~
#47718
������ ����� ���~
0 f 100
~
mecho ������ ����� ��������� ��� �� ����� ������� � ����� ����-�� �����
mecho �� �������� � �����-�� ���, �� ��� ����� ����� ���� ��������� ������������ �������
mecho -�� ������ � ���� ������, �������!
calcuid riproom 47738 room
calcuid ravenroom 47732 room
exec 47727 %ravenroom.id%
exec 47726 %riproom.id%
~
#47719
����� �����~
2 c 100
�����~
if !%arg.contains(�����)%
  wsend %actor% ���� �����?
  halt
else 
  wsend %actor% �� ������� �����, �������� �� ����� ��������.
  wechoaround %actor.name% %actor.name% ����� ������, �������� ������ �� ����� ��������.
  wteleport %actor% 47740
end
~
#47720
����� � ����~
2 c 100
�����~
if !%arg.contains(����)%
  wsend %actor% ���� �����?
  halt
else 
  if (%actor.realroom% == 47768)
    wsend %actor% �� �������� � ����
    wechoaround %actor.name% %actor.name% ����� � ����
    wteleport %actor% 47780
    halt
  end
  if (%actor.realroom% == 47780)
    wsend %actor% �� ������� �� ����
    wechoaround %actor.name% %actor.name% ����� �� ����
    wteleport %actor% 47768
    halt
  end
end
~
#47721
����� ������~
0 q 100
~
wait 1s
� ������ ����
� ���� �� � ������� �� ��� � ������, � � ������ ��������
� �� ������ ��� � ������
~
#47722
����� ������ ������~
0 d 100
������~
wait 1s
detach 47721 %self.id%
if (%actor.sex% == 1)
  � �� �������, ������ �������, �� �� ���� �� ������, ��� � �� ���� ����!
else
  � �� �������, ������ ������, �� �� ���� �� ������, ��� � �� ���� ����!
end
� �� �� �� �� �������� ������� ���� ��������� � ������� � �������� ��������������?
set quest477 %actor%
global quest477
attach 47723 %self.id%
detach 47722 %self.id%
~
#47723
����� ������ ��������~
0 d 1
�������� ������ �������� �������� ����� ������~
detach 47722 %self.id%
wait 1
� ���� � ���� ������, �������� �� ����������, ���� �� ��������
���
wait 1s
� ����� � �� ������
���
wait 1s
� �� ��� ������� ������� ���, ����-���� � ����, ��� � ������� ������������
� ���� ������ �������, �� ��� ������� ����� � ���� �������� ������ �����, ���������� �����, � ���������
� ��������� ��� �������� �������� ��
wait 1s
� ����� ������� ������ � ��� ���
� �� ������ ������� ���� � ��� ��������� ������ ����� � ������� ���� ����
� �����, ��� �������, �������� �� ����, � ������ � ������� ���� �����
� ����� �, � �� ��� ���� �� ��������
wait 1s
mecho ���������� ������������� �����, ��� ����� �������� ������ ��������� ������
mecho ����� �������� ������� ������-�� � ���
if (%actor.sex% == 1)
  � ������ ���, ������ �������, ���� ������, ����� ������� ���� ���� �� ��� ��������
else
  � ������ ���, ������ ������, ���� ������, ����� ������� ���� ���� �� ��� ��������
end
calcuid ravenroom 47732 room
exec 47725 %ravenroom.id%
attach 47724 %self.id%
detach 47723 %self.id%
~
#47724
����� ������ ���������~
0 q 100
~
wait 1s
if (%actor.name% == %quest477.name%) && (%world.curmobs(47740)% < 1)
  � �� ��� �� �����, �����������
  wait 1s
  msend %actor% �� �������� ������� � ��� ������ �������
  wait 1s
  ���
  � ������ �� ���������, ������ ������
  if (%world.curobjs(47734)% < 6) && (%random.5% == 1)
    � ��� ������ ���� ����, �� �����-�� ����������� ���� ������
    mload obj 47734
  end
  ��� ���� .%actor.name%
  ���� ���
  detach 47724 %self.id%
end
~
#47725
���� ������~
2 z 100
~
wload mob 47741
~
#47726
���� ������ � ����~
2 z 100
~
if (%world.curobjs(47732)% < 6) && (%random.5% == 1)
  wload obj 47732
  %echo% ���� ������ ������ ���������� �� �����.
end
~
#47727
��������~
2 z 100
~
wteleport all 47738
halt
*� ������� ������������ ������ ���������� �������������)
eval gopa %actor.pc%
foreach i %gopa%
  wteleport %i% 47738
done
~
#47728
��������� �����~
0 q 100
~
wait 1s
� ������ ��� ����� ���� ������
�� �������������
wait 1s
� ����� � ���� � ���� �����
� �������� ��, �������������.
� �� ������ � �������� ���, ��������� ����� ������ � ����� �����
� �������� �� ������� ��������� �� ������
wait 1s
� ���������� � ����� ����� ��������
� ������� ������ �������� �� ���� ���� ����
� ���������� ��� ����� ����� ������� �� �������
� �� ��-�� ������� �������� ����� ������ �� ����� ����� �� ���� �� ��������
wait 1s
� ������������ ����, ��� � �������� ���� ���� ������, ��� � ���������� ��������
� ������ ���������� �� ���, ����� �������
attach 47729 %self.id%
~
#47729
��������� ����� ������~
0 d 100
������~
wait 1
� ��� � ������
� ������, �� �������� � ����� �������
set quest2477 %actor%
global quest2477
attach 47730 %self.id%
detach 47728 %self.id%
detach 47729 %self.id%
~
#47730
��������� ����� �������~
0 q 100
~
if (%actor.name% == %quest2477.name%) && (%world.curmobs(47740)% < 1)
  � �� �� �������, %actor.name%
  � ������ ���� �������
  ��� 4567 ��� .%actor.name%
  if (%world.curobjs(47733)% < 6) && (%random.5% == 1)
    mload obj 47733
  end
  ��� ��� .%actor.name%
  ���� ���
  calcuid telroom 47777 room
  exec 47732 %telroom.id%
  detach 47730 %self.id%
end
~
#47731
�������� ���~
0 f 100
~
mforce %actor.name% � ��� �� ������� ������, ������� �������� ���� ������?
mecho - � � ���� ������
mecho - ��� � ��������� ������
mecho - �� � ������ ���� ���� ������ �� ����� ������
mecho - �� ������ ���� ��������� ����, � � ������� ������ ����� � ������!
~
#47732
����� � ���~
2 z 100
~
wait 1s
wportal 47732 2
~
$~
