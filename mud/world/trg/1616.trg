* BRusMUD trigger file v1.0
#161600
����� ����~
2 f0 100
~
calcuid m161602 161602 mob
attach 161608 %m161602.id%
detach 161607 %m161602.id%
detach 161609 %m161602.id%
detach 161610 %m161602.id%
detach 161613 %m161602.id%


~
#161601
������� ��� 1~
2 c0 0
������� �������� ����������~
if !%arg.contains(���)%
%echo% �� ������ �������� ������� �����, �� ������ �� ���������.
   return 1
   halt
end
wait 1
if %actor.str% < 25
   wsend %actor% ��� ������� ������ �������� ���� ���...
   wechoaround %actor% %actor.name% �������%actor.u% ��������� ���...
   halt
end
wsend %actor%       �� ���������� � �������� ������ ���� � �����...
wechoaround %actor% %actor.name% ������%actor.u% � �������%actor.g% ������ ����...
wecho               ��� �������� ������, ������ �������� ����...
wdoor 161619 down room 161618
wdoor 161618 up room 161619
detach 161601 %self.id%
end




~
#161602
������� ��� 2~
2 c0 0
������� �������� ����������~
if !%arg.contains(���)%
%echo% �� ������ �������� ������� �����, �� ������ �� ���������.
   return 1
   halt
end
wait 1
if %actor.str% < 25
   wsend %actor% ��� ������� ������ �������� ���� ���...
   wechoaround %actor% %actor.name% �������%actor.u% ��������� ���...
   halt
end
wsend %actor%       �� ���������� � �������� ������ ���� � �����...
wechoaround %actor% %actor.name% ������%actor.u% � �������%actor.g% ������ ����...
wecho               ��� �������� ������, ������ �������� ����...
wdoor 161681 down room 161624
wdoor 161624 up room 161681
detach 161602 %self.id%
end




~
#161603
����������� �������� 1~
0 c0 0
���������� ���������~
if !%arg.contains(��������)% 
msend %actor%  ���� �� ������ ���������� ?!
return 0
halt
end
msend %actor%       �� ���������� �������� �� �����.
mechoaround %actor% ���������%actor.g% �������� �� �����.
mecho               ������� �����, �������� �����.
mload mob 161614
mpurge �������


~
#161604
��� ��� ��� ��������~
2 c0 0
��������� ���������� ���������� �������~
if !%arg.contains(�������)% 
%send% %actor%  ��� ������ ?
return 0
halt
end
%send% %actor%      �� ��������� ��� �������.
%echoaround% %actor% ���������%actor.g% �������.
eval priznum 161617+%random.5%
if  ((%world.curobjs(%priznum%)%<4)&&(%random.10%<5))
     %echo%               ��� �������� ���-�� ��������.
     %load% obj %priznum%
end
detach 161604 %self.id%


~
#161605
������������� ��������~
0 n0 100
~
� �������...
%echo% ������� ���������� �� ��������.
� �������� �����, �� ������ ����� ���������...
� ����, ������� ����� ��������.. ��.��...���.
%echo% ����� ����������� ���� �������������.
� ���... � ���.. ��... ��... ���... ���... ����������������������............
%echo% ������� ������ ������� ��������.
%self.position(1)%
%self.hitp(0)%
%self.hitp(-1)%
detach 161605 %self.id%


~
#161606
����� ����~
0 r0t0 100
~
%self.wait(1)%
wait 1s
%echo% �������� �������� ����� ������������ � ������ � ������� �����.
%echo% ����, ��� �� ������ �������� !
%echo% ������ !
wait 1s
%echo% �� ��, ������ ������ !!!



~
#161607
����� �����~
0 f0 0
~
calcuid r161610 161610 room
attach 161604 %r161610.id%






~
#161608
����� ��� ���~
0 h0 100
~
wait 1s
� �-��-��! ���%actor.g% %actor.name% � ��� ���������%actor.g% !!!
%echo% ����� ������� �������� � ��������� ��������� �� ��������.
wait 1
� ������� ��, %actor.name%, ������!
� ���%actor.g% ����� ������%actor.q% !!! � ������� �� ��������.
wait 2s
� �� �����, 10000 ����� ����� - ���� �� �������.
���
attach 161609 %self.id%
attach 161610 %self.id%
attach 161613 %self.id%
detach 161608 %self.id%


~
#161609
����� ������� ������~
0 m0 1
~
wait 1s
if (%amount%<10000)
%echo% ���� ���� ���������� �� ������, ����� ���������� �� �����.
� �� ���, %actor.name%, �������� ���� �������%actor.g%?!?!?!!
���� ����� ��!!!
run 161610 %self.id%
halt
end
if (%amount%>=10000)
%echo% ���� ���� ���������� � ��������� ������.
� ���-��������, %actor.name%, ������%actor.g% �������.
� ���, ������ �����������, ������� ���, ��� ����� �����������.
��� %actor.name%
%echo% ����� �������� �����.
eval pcs %self.pc%
foreach pc %pcs%
%teleport% %pc% 161689
done
wait 1s
%self.gold(1)%
attach 161608 %self.id%
detach 161610 %self.id%
detach 161613 %self.id%
detach 161609 %self.id%
end


~
#161610
���� � ������~
0 z0 0
~
Wait 1s
%echo% �� ���� ���� ��������� ��������� ����������, ��� ����� ����� �������� ���.
eval pcs %self.pc%
foreach pc %pcs%
%pc.wait(10)%
done
� ��, ������! �� ������ ��-�������� - ����� ��-�������.
%echo% ����� ����������� ����� ������: "������� �� � �������!"
Wait 1s
%echo% ���� �� ���� ���������� � ��� ���� � ���-�� ��� ��������.
%echo% �� ���� �������� ���������� ����������� ���������� ������������.
Wait 1s
� ���� ���, ��������, �������� ������? �� ��� ������� �� ���� ������!
� ��� ���, �� �������, � ���.
Wait 1s
%echo% ������ ����� ��������� ���-�� �� ���������� �����, 
%echo% ����� � ������� �� ��� ���������� �������.
%echo% 
wait 1s
%echo% � ��������������� �������� � �������������� ��� ������� �� ���:
� ����� �������-����-��������� �� ������
� ����� ��������-�������-������-���������� �� �������
� ����� ������, ����� ���� � �������� ����������
� ���-����� ����...
eval zhertva1616 %random.pc%
%echo% ����� ����� ����������� �� %zhertva1616.pname%.
�                 ...������ �� ���� ����!!!
���
� ��� � ��� ����� ���.
�� .%zhertva1616.name%
� ���, �������.
%send% %zhertva1616% ��� ��������, ���������� �� ������ � ������� �� ����� � ������ �����.
%echoaround% %zhertva1616% ��������� �������� ~~%zhertva1616.vname% ��� ���� � �������� � ����������� �����������.
wait 1s
%teleport% %zhertva1616% 161672 horse
wait 1s
� ���, � ����� �����������.
� ��������� - ����������� ������� ��� ������� ������ �� ������.
� ������.
wait 2s
%echo% �� ������������ ��� ��� ����-�� �������.
eval pcs1 %self.pc%
foreach pc1 %pcs1%
eval rnum1616 161633+%random.4%
%teleport% %pc1% %rnum1616% horse
done
calcuid r161672 161672 room
attach 161611 %r161672.id%
attach 161607 %self.id%
detach 161613 %self.id%


~
#161611
���� ������~
2 c0 0
������� ���������� ����������~
if !%arg.contains(�����)% 
%send% %actor%  ��� ������ ?
return 0
halt
end
%send% %actor%      �� ��������� ��� �����.
%echoaround% %actor% ���������%actor.g% �����.
if  (%world.curobjs(161622)%<1)
     %echo%               � ���� ���-�� ��������.
     %load% obj 161622
end
detach 161611 %self.id%





~
#161612
�������� ��������~
0 r0t0 100
~
%self.wait(1)%
wait 1s
%echo% �� ������������ ���-�� �������� �����������.
%echo% ��� ����� ����� ������� ���, ������� ���������� �������� ��� �����.
wait 1s
%echo% �������� ������, � �� ����� ���� ���� !!!



~
#161613
�������!~
0 d0 0
*~
� ���� �� ��� ���������? ������ ����� ����, � ���������� !



~
#161614
������ ���������~
0 f0 100
~
if (%world.curobjs(161604)% < 6) && (%random.10% <= 1)
   mload obj 161604
end

~
#161615
������ ��������� ������~
0 f0 100
~
if (%world.curobjs(161603)% < 6) && (%random.10% <= 1)
   mload obj 161603
end

~
#161616
������ ����������� �������~
0 f0 100
~
if (%world.curobjs(161601)% < 6) && (%random.10% <= 1)
   mload obj 161601
end

~
#161617
������ ����� ��������~
0 f0 100
~
if (%world.curobjs(161606)% < 6) && (%random.10% <= 1)
   mload obj 161606
end

~
#161618
������ ����������� �����~
0 f0 100
~
if (%world.curobjs(161605)% < 6) && (%random.10% <= 1)
   mload obj 161605
end

~
#161619
������ ������~
0 f0 100
*~
if (%world.curobjs(161600)% < 4) && (%random.10% <= 1)
   mload obj 161600
end
if (%world.curobjs(161615)% < 4) && (%random.10% <= 1)
   mload obj 161615
end
if (%world.curobjs(161616)% < 4) && (%random.10% <= 1)
   mload obj 161616
end

~
#161620
������ �������� ��������~
0 f0 100
~
if (%world.curobjs(161602)% < 6) && (%random.10% <= 1)
   mload obj 161602
end

~
#161621
������ �����~
0 f0 100
*~
if (%world.curobjs(161613)% < 4) && (%random.10% <= 1)
   mload obj 161613
end
if (%world.curobjs(161614)% < 4) && (%random.10% <= 1)
   mload obj 161614
end

~
#161622
������ �������� �������~
0 f0 100
~
if (%world.curobjs(161607)% < 6) && (%random.10% <= 1)
   mload obj 161607
end

~
#161623
������ ��� �� ������~
0 f0 100
*~
if (%world.curobjs(161610)% < 4) && (%random.10% <= 1)
   mload obj 161610
end
if (%world.curobjs(161611)% < 4) && (%random.10% <= 1)
   mload obj 161611
end
if (%world.curobjs(161612)% < 4) && (%random.10% <= 1)
   mload obj 161612
end

~
#161624
������ ��� ������~
0 f0 100
*~
if (%world.curobjs(161608)% < 6) && (%random.10% <= 1)
   mload obj 161608
end
if (%world.curobjs(161609)% < 6) && (%random.10% <= 1)
   mload obj 161609
end

~
$
$
