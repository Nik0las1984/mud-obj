#20600
�����~
2 f 100
*~
context 261
unset uman
context 2061
unset bman
context 2062
unset mman
wdoor 20608 EAST purge
wdoor 20645 north purge
wdoor 20603 n purge
*������ ������� ������ ������� � ������� ����� 20617 
*20217 ��� ������ �������� - �� ���� �� ���������� �� ����� 
*calcuid uch 20600 mob
*attach 20217 %uch.id%
*exec 20217 %uch.id%
~
#20601
����������������~
0 q 100
*~
context 206
wait 3
if %actor.id% != %uman.id%
  �� ����� ��������� �� ���
  halt
end
� ��!
wait 3
� ������� ����!
wait 5
msend %actor% ������ ���������� �� ������ �������� ������ � �� �������� ������� � ����.
wait 10
���� .%actor.name% � ������ �� �����%actor.g% ����� ������� ������?
wait 10
������� .%actor.name% �� � �������� �� � ����� �� ����������!
wait 20
��
wait 15
������� .%actor.name% ���� ������ �� ������� ����������, ����� ����� ���� � ������� ���.
mload obj 20600
wait 5
���� ���� .%actor.name%
wait 15
������� .%actor.name% �� ����� �� ������ ����� � �������, ��� ���� ������.
wait 10
msend %actor% ����� ���� ���� ������ ���������� ������� � ��� �������, �, �������, ������ ���,
msend %actor% ��� ������ �� ��������.
calcuid star 20602 mob
attach 20604 %star%
detach 20601 %self%
~
#20602
� �����~
0 q 100
*~
wait 4
context 206
mecho ������ ���, ������� ����� �����������.
say �� ������� ������, ������� ��������� �� �������.
say �������� ��:
wait 2
���
wait 2
say ���� � ���, ������� ����� �������� - ��������, �� �� � ���� ������ �������.
say ��������� ��� , ����� �� ����������� ��, �� ������ ��� �� ������� �� ��������, ����� �������� �����
mecho �� ���������� ���������� ��������� �����: 
mecho "��, ��... ����� ����������... �������� ����� ����� ���� ���������, � ���� ������� 
mecho ����-�������, � ������� ����� ��������� �� ������� ������ ������� �����."
wait 10
���
say � �� ������ ������ ������� ������, ��� �� ������, ��������� ���� �� ���������� �� �������
say ������� ���� ���, -- �� ������� �������, ��� �� ����  � ����� ������ �������� � ����� 
say ���� ��������, �� ������ � � �������...
wait 9
mecho ����� �������� ����������, ���� ��� ����� �������� � �����������.
say ��� ��� �� ��������.
say ������ � �������  �����, ����� ������� ��� ��������� � ��������, ���� ����� �� ����. 
say � �� �� ��������, �� ���� ������.
say � ����� ������ ��� �� ���������� � ������� �� ������.
wait 9
���
say ���� �� ��� �������.
set uman %actor.id% 
worlds uman
calcuid uchen 20600 mob
attach 20601 %uchen.id%
calcuid Knaz 20200 mob
attach 20214 %Knaz.id%
calcuid Volxv 20203 mob
attach 20210 %Volxv.id%
detach 20208 %self.id%
~
#20603
� �������~
0 q 100
*~
wait 10
�� ������ ������ � ���� �������
� ���� ��� �����%actor.g%?
calcuid ruch 20252 room
attach 20616 %ruch.id%
exec 20616 %ruch.id%
detach 20216 %ruch.id%
attach 20618 %self.id%
detach 20603 %self.id%
~
#20604
����������~
0 j 100
*~
switch %object.vnum%
  case 20600
    wait 10
    mpurge %object%
    if (%actor.sex% == 1)
      *if %actor.remort% < 0
      if %actor.remort% < 14
        � � �� �������, ������� �� ���, �� �������.
        wait 20
        � ������� �� �� ������ � ������� ������ �� ���������, �� ���� �� �����.
        wait 20
        � ������ �� ������� ����� �����������!
      elseif %actor.remort% > 50
        � � �� ����� ������!
        wait 20
        � ���� ����� ����� ��� ��������� ������, ��� ���-��!
        wait 20
        � �� � ���� ���� ���� ������, ��� ����������.
        wait 20
        � � ���� ������ ������ ������ � ����� �����������, ��� ������� ����� ��� �� ���������!
      else
        context 2062
        set mman %actor.id%
        worlds mman
        wait 10
        � �� ����, �� �������� ������!
        wait 5
        � �� � ����� ������ ����������� �������� ������ ��� ���� �������.
        wait 20
        � �������� ������ �����������!
        wait 20
        � ��� � ������� �������� � �������� ����������� � ������ ���������, ��� ����� ������. 
        wait 5
        � �� ����� ������� ��� ���������, ��� �������� � ��� ����� ��������. 
        wait 25
        � �, �������, � �� �����! 
        wait 20
        � ������� � �����, ���� �����. 
        wait 20
        � � �� ������� ����� ����� ����� ���� ����� �� ����. 
        wait 20
        � �� ��� ���!
        wait 35
        � ���������� ���� ������������ �� ������-�������� ������� � ����� �� �������. 
        wait 20
        ��� ��� � �� ������ �������� ���������.
        wait 20
        ���
        wait 30
        � ����� ��, �� ������ ����� � ��������.
        wait 20
        � ��� � ������ � �������� ����� ������ �����, ���, �� �� ������ ������� ���� �� ���-���� ��������.
        wait 20
        ��
        wait 30
        � ���� ���������� � ��� ���� ��� ����� ������� ������ ����� �� �����.
        wait 20
        � ���� �� � ����� �������� �� ����� ����������.
        wait 30
        � � �����, ����, ������� �� ��� ���������, �������� ���� ����� �� ������!
        wait 5
        � �� � ��� �� �������� ���, �� �������� ������.
        wait 30
        � ��� ���, ��������?
        wait 10
        �� ������������� ��������� �� ���
        attach 20609 %self.id%
      end
    else
      wait 5
      � �� ������ �������! 
      wait 5
      � �� � ����� ���� ����� - ���� �� ����� ��������!
      wait 5
      ���
      wait 20
      � ������-�� �� ������ ����� ����� ������, � ����� - �� ������� ����!
      wait 30
      � �� ��� ������ �� �������?
      wait 20
      � ������ ��� ����� �������?
      attach 20605 %self.id%
    end
  done
end
~
#20605
�������������~
0 d 1
�� �����~
if (%actor.sex% == 1)
  wait 5
  � � ���� ��� ���������??
  msend %actor% ������� ��� ��������� ��������� ����� ��� �� ����, ���������� ������� �������� �������.
  mteleport %actor% 20606
else
  context 2061
  set bman %actor.id% 
  worlds bman
  ���
  � �� ��� ���, ������� � �������, ��� � ���������!
  %bman.wait(7)%
  msend       %actor% ��� ������ �� ����� � ���������� ����� �������� ������� ������.
  mteleport %actor% 20609
  mechoaround %actor% %actor.name% ������ � �������, � ������ ����������� � ���������. 
  %teleport% hutor 20609
  mechoaround %actor% ���������� �� �������� ����� ������������� ������.
  wait 30
  msend %actor% ������� ���� �������� ��� �� ����� � ��������� ������, �, �� ��� ����������, 
  msend %actor% �������� ������.
  wait 30
  msend %actor% ����� ������� ������ ���� �������� ��� ����. 
  wait 30
  msend %actor% ������ ��������� �������� � ���� ��, ��� ������ ������ ������ � ������.
  dg_affect %actor% �������� �������� -20 0
  dg_affect %actor% �������� �������� -20 10000
  dg_affect %actor% ��������� ���� -20 0
  dg_affect %actor% ��������� ���� -20 10000
  wait 30
  msend %actor% �����, �� ����� �������� �����-�� ���.
  wait 20
  msend %actor% ������, ������ ������ ����� �����, � ������� ������� ����������� �������.
  calcuid jenasen 20607 room
  exec 20607 %jenasen.id%
  calcuid jenasv 20608 room
  exec 20608 %jenasv.id%
  mload mob 20603
  attach 20621 %self.id%
  detach 20605 %self.id%
end
~
#20606
��������~
0 n 100
*~
context 2061
wait 4
������� �� �� ������ ������!
wait 5
� ������ � �� ����, � �� ��� ����-������ �����������?!
wait 30
� � �� ��� �������?!
wait 10
�� ����������� ������� ���������� ����� �� ���.
wait 20
� ���� ������ �������� �����������???
msend %bman% � ������ �� ���������� ��� ���������, ��� ���� ���������� �������� ������� ����� ����� �������
msend %bman% � ������� ���!
mdamage %bman.id% 500
wait 25
������� ����� ���!!!
����� .%bman.name%
~
#20607
����������~
2 z 100
*~
wait 20
wecho ���������� � ��� ������� �����-�� �������, � ������ �������� ��������� � ��������.
~
#20608
�������������~
2 z 100
*~
wait 20
wecho ���������� � ������� ������� �����-�� ������� �, ������ ������ ����� ����� � ������ ������� ������.
wdoor 20608 EAST room 20609
~
#20609
�������!~
0 d 1
�� ������~
context 2062
wait 10
if %actor.id% != %mman.id%
  ���� %actor.name%
  � �� �� ������ ��� � ����� ��������� ��������� �� ������?
  msend %actor% ������� ��� ��������� ��������� ����� ��� �� ����, ���������� ������� �������� �������.
  mteleport %actor% 20606
  halt
end
*�������� ���� �� ��
calcuid sRoom 20608 room
foreach i %sRoom.pc%
  *mecho %i.name% -----------------
  if !%i.rentable% 
    ��� %i.name%
    wait 1s
    � �� �� ���, ������!
    � � ���� �� ����, ��� � �����, �� � ��� ���� ���, �� ��� �� ������...
    � �� ���� � ��� �� ������ �����!
    � � �� ����������!
    � ��� ��� � ������� �����, ���������!
    �� ���������� � ������� ������ ������
    halt
  end
  *
done
*
wait 15
msend %actor% �� ������ ����� �� ������ �������� �� �����, ��� �� �������� ��������� 
msend %actor% ��� ������ ������, ������� ��� �� ��������� ������.
*mteleport %actor% 20610
mechoaround %actor% ������� ����� ������ ������ ����� �� �������, � �� ���, ��� ��������, ������� %actor.name%
*��� �� ����� � ��. �� ����� ����������� ���������� (���� ��� ����������)
*%teleport% hutor 20610
* �������� ������
mechoaround %actor% ��, � ������ �� ���, ���������� �����������, ��������� � ��� ���������.
mat 20610 mecho ���-�� ������ ���� �� ������� ������.
mteleport all 20610
wait 20
� ��� ���� ������������ ���� ������ � ���������, ������ ����, ��� ���� ����� �� �����!
wait 5
� ��������� ������� ������ ������������� � ���� ������.
wait 20
� �� � ����� �������� ������ ��� ����������. 
wait 20
� ������, ������ ��� �� ������ �� �������, �, ���� �������� ���� - ������ �� ��������!
wait 20
� �� � ����, ��� �� ����������! ������ ��!
� ���� ������ �����, �� ��������� � ������ ������ �������!
wait 3s
�
�
�
�
�
�
attach 20620 %self.id%
detach 20609 %self.id%
~
#20610
�������������~
0 q 100
~
context 2062
wait 10
if %actor.id% == %mman.id%
  wait 10
  msend %actor% � ������ ������, ���� �� ��������� ���� ������, �� ��������, ��� ������ �� ����� � �������.
  wait 30
  msend %actor% ����� ��������� �����, ����������� �� ������� � ��������� �����������, 
  msend %actor% ��� �������� ������� �� ������ ����.
  wait 20
  Mload obj 20601
  ���� ������� %actor.name%
  wait 10
  � ������ ��� �����.
  wait 10
  � �� ���� ������ ��������!
  calcuid knyaz 20200 mob
  attach 20611 %knyaz.id%
  detach 20214 %knyaz.id%
  detach 20610 %self.id%
end
~
#20611
����������~
0 j 100
*~
switch %object.vnum%
  case 20601
    wait 10
    mpurge %object%
    �� ����������� ������ �������.
    wait 10
    ���
    wait 10
    � �� ��� �, �� ����� ������������ ������ ��������...
    wait 20
    � �������, � �� ����������, ��� ��� ���������.
    wait 20
    � ����� ��� �� ����� ����.
    msend %actor% ����� ����� ������� ��� ������� �����.
    %actor.gold(+50000)%
    detach 20214 %self.id%
  done
~
#20612
���������������~
0 q 100
*~
*�������� �����
halt
context 2062
wait 5
�� � �������� ��������� �� ���
wait 10
� �� ��� ������, ����� ���� ��� �����?
wait 10
��
wait 20
� �������, � ��������� ��� ����� �������!
context 2062
wait 10
if ((%actor.id% == %mman.id%) && (%world.curobjs(20619)% < 5))
  wait 30
  �� ��� ��� �������� �� ���
  wait 1s
  � � ������ �� ������ �������� ������?
  wait 20
  ��
  wait 10
  � ���� ����, ������� �����!
  wait 20
  ��
  wait 10
  mload obj 20619 
  ���� ����� %actor.name%
  wait 10
  � �������� ��� ��� �� ������ ����������. ��� � ���� ����� ����� ����� ������ ���!
  � ��������� ���� ������.
  wait 10
  �� ����� ��� ���������
  detach 20612 %self.id%
end
~
#20613
�������������~
0 f 100
*~
eval rand %random.1000%
if ((%rand% < 67) && (%world.curobjs(20602)% < 1))
  mload obj 20602
elseif ((67 <= %rand%) && (%rand% < 133) && (%world.curobjs(20603)% < 1))
  mload obj 20603
elseif ((133 <= %rand%) && (%rand% < 190) && (%world.curobjs(20604)% < 1))
  mload obj 20604
elseif ((190 <= %rand%) && (%rand% < 257) && (%world.curobjs(20605)% < 1))
  mload obj 20605
elseif ((257 <= %rand%) && (%rand% < 333) && (%world.curobjs(20606)% < 1))
  mload obj 20606
elseif ((333 <= %rand%) && (%rand% < 390) && (%world.curobjs(20607)% < 1))
  mload obj 20607
elseif ((390 <= %rand%) && (%rand% < 457) && (%world.curobjs(20608)% < 1))
  mload obj 20608
elseif ((457 <= %rand%) && (%rand% < 533) && (%world.curobjs(20609)% < 1))
  mload obj 20609
elseif ((533 <= %rand%) && (%rand% < 590) && (%world.curobjs(20610)% < 1))
  mload obj 20610
elseif ((590 <= %rand%) && (%rand% < 657) && (%world.curobjs(20611)% < 1))
  mload obj 20611
elseif ((657 <= %rand%) && (%rand% < 733) && (%world.curobjs(20612)% < 1))
  mload obj 20612
elseif ((733 <= %rand%) && (%rand% < 790) && (%world.curobjs(20613)% < 1))
  mload obj 20613
elseif ((790 <= %rand%) && (%rand% < 857) && (%world.curobjs(20614)% < 1))
  mload obj 20614
elseif ((857 <= %rand%) && (%rand% < 933) && (%world.curobjs(20615)% < 1))
  mload obj 20615
elseif ((933 <= %rand%) && (%rand% <= 1000) && (%world.curobjs(20616)% < 1))
  mload obj 20616
end
~
#20614
����������������~
2 c 1
����~
if (%arg.contains(�����)% && %arg.contains(��)% && %arg.contains(������)%) 
  wait 2
  wsend %actor% ��� �� ����� �� ��������� ���������� ���������� ����.
  wdoor  20645 north room 20646
end
~
#20615
������������~
0 f 100
*~
eval rand %random.150%
if ((%rand% < 5) && (%world.curobjs(20602)% < 2))
  mload obj 20602
elseif ((5 <= %rand%) && (%rand% < 10) && (%world.curobjs(20603)% < 2))
  mload obj 20603
elseif ((10 <= %rand%) && (%rand% < 15) && (%world.curobjs(20604)% < 2))
  mload obj 20604
elseif ((15 <= %rand%) && (%rand% < 20) && (%world.curobjs(20605)% < 2))
  mload obj 20605
elseif ((20 <= %rand%) && (%rand% < 25) && (%world.curobjs(20606)% < 2))
  mload obj 20606
elseif ((25 <= %rand%) && (%rand% < 30) && (%world.curobjs(20607)% < 2))
  mload obj 20607
elseif ((30 <= %rand%) && (%rand% < 35) && (%world.curobjs(20608)% < 2))
  mload obj 20608
elseif ((35 <= %rand%) && (%rand% < 40) && (%world.curobjs(20609)% < 2))
  mload obj 20609
elseif ((40 <= %rand%) && (%rand% < 45) && (%world.curobjs(20610)% < 2))
  mload obj 20610
elseif ((45 <= %rand%) && (%rand% < 50) && (%world.curobjs(20611)% < 2))
  mload obj 20611
elseif ((50 <= %rand%) && (%rand% < 55) && (%world.curobjs(20612)% < 2))
  mload obj 20612
elseif ((55 <= %rand%) && (%rand% < 60) && (%world.curobjs(20613)% < 2))
  mload obj 20613
elseif ((60 <= %rand%) && (%rand% < 65) && (%world.curobjs(20614)% < 2))
  mload obj 20614
elseif ((65 <= %rand%) && (%rand% < 70) && (%world.curobjs(20615)% < 2))
  mload obj 20615
elseif ((70 <= %rand%) && (%rand% < 75) && (%world.curobjs(20616)% < 2))
  mload obj 20616
elseif ((75 <= %rand%) && (%rand% < 80) && (%world.curobjs(20618)% < 2))
  mload obj 20618
end
~
#20616
�����������~
2 z 100
*~
wload mob 20600
~
#20617
����������~
0 z 100
*~
*mpurge %self%
* ����� ����. ������ ������� � ���������
~
#20618
��������~
0 q 100
*~
wait 10
�� ������ ������ � ���� �������
� ���� ��� �����%actor.g%?
~
#20619
�������������~
0 f 100
*~
eval rand %random.1000%
if ((%rand% < 150) && (%world.curobjs(20617)% < 2))
  mload obj 20617
end
~
#20620
��������������������������~
0 q 100
*~
wait 1s
��
if (%actor.sex% == 1)
  wait 30
  � ��� ����� ��������� �������?
  attach 20622 %self.id%
else
  wait 30
  � ������!
  wait 10
  � ��������!
  wait 30
  � ������ �� �������� ��� ������� �������� ������?
  ��
  � ��� ����� ����� ������ ��������� ������?
  attach 20605 %self.id%
end
~
#20621
���������~
0 r 100
*~
wait 1s
� ���, ����� �� �����?!
wait 1s
���
wait 1s
� �������� ���, ��� ������� �� �����, ������ ����� ������.
� �������� �� ������, ��� ����� ������ ������.
� �� ��� ��������� �� ������� �����.
mdoor 20603 n room 20655
mdoor 20603 n flags e 
wait 35
mecho ����� ���� ���� ������ ��������� � �������� ��� ��������.
mecho ������, �� ��� �������� �������� ��������: "�� � ��������� �� ������ ���� ������������!"
~
#20622
���������~
0 d 1
��~
wait 1s
� �������� ���, ��� ������� �� �����, ������ ����� ������.
� �������� �� ������, ��� ����� ������ ������.
� �� ��� ��������� �� ������� �����.
wait 2s
� ������!
mdoor 20603 n room 20655
mdoor 20603 n flags e 
attach 20621 %self.id%
detach 20622 %self.id%
~
#20623
��������������56~
2 e 100
*~
wait 1
eval rand0 %random.1000%
if %rand0% <= 100
  wload mob 20699
end
wdoor 20656 south purge
wdoor 20656 north purge
wdoor 20656 west purge
wdoor 20656 east purge
*��
eval rand1 %random.1000%
if %rand1% <= 433
  wdoor  20656 south room 20656
elseif %rand1% <= 866
  wdoor  20656 south room 20657
else 
  wdoor  20656 south room 20657
end
*�����
eval rand2 %random.1000%
if %rand2% <= 433
  wdoor  20656 north room 20656
elseif %rand2% <= 866
  wdoor  20656 north room 20657
else
  wdoor  20656 north room 20658
end
*�����
eval rand3 %random.1000%
if %rand3% <= 433
  wdoor  20656 west room 20656
elseif %rand3% <= 866
  wdoor  20656 west room 20657
else
  wdoor  20656 west room 20658
end 
~
#20624
��������������57~
2 e 100
*~
wait 1
eval rand0 %random.1000%
if %rand0% <= 100
  wload mob 20699
end
wdoor 20657 south purge
wdoor 20657 north purge
wdoor 20657 west purge
wdoor 20657 east purge
*��
eval rand1 %random.1000%
if %rand1% <= 433
  wdoor  20657 south room 20656
elseif %rand1% <= 866
  wdoor  20657 south room 20655
else 
  wdoor  20657 south room 20655
end
*�����
eval rand2 %random.1000%
if %rand2% <= 433
  wdoor  20657 north room 20656
elseif %rand2% <= 866
  wdoor  20657 north room 20657
else
  wdoor  20657 north room 20658
end
*�����
eval rand3 %random.1000%
if %rand3% <= 433
  wdoor  20657 west room 20656
elseif %rand3% <= 866
  wdoor  20657 west room 20657
else
  wdoor  20657 west room 20658
end 
*������
eval rand4 %random.1000%
if %rand4% <= 433
  wdoor  20657 east room 20656
elseif %rand4% <= 866
  wdoor  20657 east room 20657
else
  wdoor  20657 east room 20655
end 
~
#20625
��������������58~
2 e 100
*~
wait 1
eval rand0 %random.1000%
if %rand0% <= 100
  wload mob 20699
end
wdoor 20658 south purge
wdoor 20658 north purge
wdoor 20658 west purge
wdoor 20658 east purge
*��
eval rand1 %random.1000%
if %rand1% <= 433
  wdoor  20658 south room 20656
elseif %rand1% <= 866
  wdoor  20658 south room 20657
else
  wdoor  20658 south room 20655
end
*�����
eval rand2 %random.1000%
if %rand2% <= 433
  wdoor  20658 north room 20656
elseif %rand2% <= 866
  wdoor  20658 north room 20657
else
  wdoor  20658 north room 20659
end
*�����
eval rand3 %random.1000%
if %rand3% <= 433
  wdoor  20658 west room 20656
elseif %rand3% <= 866
  wdoor  20658 west room 20657
else
  wdoor  20658 west room 20659
end 
*������
eval rand4 %random.1000%
if %rand4% <= 433
  wdoor  20658 east room 20656
elseif %rand4% <= 866
  wdoor  20658 east room 20657
else
  wdoor  20658 east room 20659
end 
~
#20626
��������������59~
2 e 100
*~
wait 1
eval rand0 %random.1000%
if %rand0% <= 100
  wload mob 20699
end
wdoor 20659 south purge
wdoor 20659 north purge
wdoor 20659 west purge
wdoor 20659 east purge
*��
eval rand1 %random.1000%
if %rand1% <= 433
  wdoor  20659 south room 20656
elseif %rand1% <= 866
  wdoor  20659 south room 20657
else
  wdoor  20659 south room 20658
end
*�����
eval rand2 %random.1000%
if %rand2% <= 433
  wdoor  20659 north room 20656
elseif %rand2% <= 866
  wdoor  20659 north room 20657
else
  wdoor  20659 north room 20658
end
*�����
eval rand3 %random.1000%
if %rand3% <= 433
  wdoor  20659 west room 20656
elseif %rand3% <= 866
  wdoor  20659 west room 20657
else
  wdoor  20659 west room 20658
end
~
#20627
������ �������� �������~
0 f 100
~
eval rand %random.1000%
if ((%rand% < 10) && (%world.curobjs(20620)% < 3))
  mload obj 20620
elseif ((%rand% > 990) && (%world.curobjs(20621)% < 3))
  mload obj 20621
end
~
#20628
������� ����~
1 j 1
~
if %self.worn_by%
  halt
end
wait 1
%send% %actor% ���, ������ �� ������ ������...
%echoaround% %actor% %actor.name% ������ ������������� ����� ������� ������.
~
$~
