* BRusMUD trigger file v1.0
#104300
����������� ���������~
0 r0 100
~
if (%quest1043.name% == %nil%)
wait 2s
mecho ��������� �������� ������ �� ��� ������ ���� �����.
� ��� ��? ��� ������� � ���� �����? � ����! �� ���� �� ���!
������ %actor.iname%
attach 104301 %self.id%
end




~
#104301
�������� ���������~
0 d0z0 100
���~
� �������������? ����� �������� ����, ����� �� ������� ��� ������.
� ��� ������ ���� � �����, ���� � ���� ����������� - � ��� ����� �� ���� �� 
� ���������� �� ������ ���������. � ���������, � ��� ��� ����� ���� ����� 
� ���������� �� ������. � �������� ����, �� ��� ���� ������� ���� �� ����, � 
� ������ ������� � ���� ��� ������ � ������ �� ������. �� ������ ��� ��������� - 
� ������� ��� ��������� ������! ���� �� ������� ��� ��� � �� � ����� �� 
��������...
wait 2s
� �� ��� ���������� ��� ��������?
������ %actor.iname%
wait 1s
attach 104305 %self.id%
detach 104300 %self.id%
detach 104301 %self.id%
end


~
#104302
������ ��������� ������~
0 j0 100
~
wait 1
if %object.vnum% != 104300
  ���� ���
  halt
END
mpurge %object%
switch %random.20%
  case 1
    � ��� ���� ��� � � ������, ������� �� ����
    mecho  ��������� �������� ������ ���-�� �� �������.
    mload obj 104317
    ���� ��� %actor.name%
    � ����� � ��������������� ������.
    mecho ��������� �������� ���� �� �����.
    wait 1
    mpurge %self%
  break
  case 2
    � ��� ���� ��� � � ������, ������� �� ����
    mecho  ��������� �������� ������ ���-�� �� �������.  
    mload obj 104318
    ���� ��� %actor.name%
  � ����� � ��������������� ������.
  mecho ��������� �������� ���� �� �����.
    wait 1
    mpurge %self%
  break
  case 3
    � ��� ���� ��� � � ������, ������� �� ����
  mecho  ��������� �������� ������ ���-�� �� �������.
    mload obj 104319
    ���� ��� %actor.name%
  � ����� � ��������������� ������.
  mecho ��������� �������� ���� �� �����.
    wait 1
    mpurge %self%
 break
  default
    � ��� ���� ��� � � ������, ������� �� ����
    %self.gold(600)%
    ���� 600 ��� %actor.name%
   � ����� � ��������������� ������.
  mecho ��������� �������� ���� �� �����.
    wait 1
    mpurge %self%
  done
  


~
#104303
��� � ���~
0 k0 50
~
switch %random.15%
case 1
     msend %actor% �������� ���, �������� � ��� ����� ��� ����� � ����!
     mechoaround %actor% �������� ���, �������� ����� ����� %actor.dname% ����� � ����!
     mdamage %actor% 30
break
case 2
        
         msend %actor% ������ ����� ����� ��������� �� ���� ������� ��� �� �����!
         mechoaround %actor% ������ ����� ����� ��������� �� ���� ���� %actor.dname% 
         %actor.position(6)%
         %actor.wait(2)%
         mdamage %actor% 20
end
break
 default 
end



~
#104304
������ ���� ~
2 b0e0 100
~
 wecho �� �������� ��������� ������.




~
#104305
���������� ������~
0 d0z0 100
��~
set quest1043 %actor.name%
global quest1043
� ����� ��� ������� ��� ��� ������!
wait 1s
detach 104305 %self.id%
end



~
#104306
��� �������� ������~
0 k0 60
~
  msend %actor% ����� ������ ������� ������ ������� ��� �� ����� 
  msend %actor% � ��� � ������ ����������...
  mechoaround %actor% ����� ������ �������� ������ ���� %actor.vname% �� �����! 
  mdamage %actor% 40
  %target.position(6)%
  %target.wait(3)%
  if %random.3% == 2
  cast !����! %actor.name%
 end



~
#104307
��� �������~
0 k0 60
~
  msend %actor% &R����������&n ����� ���! 
  msend %actor% &R����������&n ����� ���! 
  msend %actor% &R����������&n ����� ���! 
  msend %actor% &R����������&n ����� ���! 
  mechoaround %actor% ���������� ������ %actor.vname%
  mechoaround %actor% ���������� ������ %actor.vname% 
  mechoaround %actor% ���������� ������ %actor.vname% 
  mechoaround %actor% ���������� ������ %actor.vname%  
  mdamage %actor% 90
  



~
#104308
����� ����~
0 f0 100
~
mload obj 104300
if (%world.curobjs(104316)% < 4) && (%random.10% <= 1)
   mload obj 104316


~
#104309
����� ����������~
0 f0 100
~
if (%world.curobjs(104301)% < 6) && (%random.10% <= 1)
   mload obj 104301


~
#104310
����� �������~
0 f0 100
~
if (%world.curobjs(104302)% < 6) && (%random.10% <= 1)
   mload obj 104302


~
#104311
����� ��������~
0 f0 100
~
if (%world.curobjs(104303)% < 6) && (%random.10% <= 1)
   mload obj 104303


~
#104312
����� ������~
0 f0 100
~
if (%world.curobjs(104304)% < 6) && (%random.10% <= 1)
   mload obj 104304


~
#104313
����� �������� ������~
0 f0 100
~
if (%world.curobjs(104305)% < 6) && (%random.10% <= 1)
   mload obj 104305


~
#104314
����� ���������~
0 f0 100
~
if (%world.curobjs(104306)% < 6) && (%random.10% <= 1)
   mload obj 104306


~
#104315
����� ��������� � �������~
0 f0 100
~
if (%world.curobjs(104307)% < 6) && (%random.10% <= 1)
   mload obj 104307


~
#104316
����� ������~
0 f0 100
~
if (%world.curobjs(104308)% < 6) && (%random.10% <= 1)
   mload obj 104308


~
#104317
����� �������~
0 f0 100
~
if (%world.curobjs(104309)% < 6) && (%random.10% <= 1)
   mload obj 104309


~
#104318
����� ���������~
0 f0 100
~
if (%world.curobjs(104310)% < 6) && (%random.10% <= 1)
   mload obj 104310


~
#104319
����� ��������~
0 f0 100
~
if (%world.curobjs(104311)% < 6) && (%random.10% <= 1)
   mload obj 104311


~
#104320
����� �����������~
0 f0 100
~
if (%world.curobjs(104312)% < 6) && (%random.10% <= 1)
   mload obj 104312


~
#104321
����� �����~
0 f0 100
~
if (%world.curobjs(104313)% < 6) && (%random.10% <= 1)
   mload obj 104313


~
#104322
����� �������~
0 f0 100
~
if (%world.curobjs(104314)% < 6) && (%random.10% <= 1)
   mload obj 104314


~
#104323
����� ������~
0 f0 100
~
if (%world.curobjs(104315)% < 6) && (%random.10% <= 1)
   mload obj 104315


~
#104324
����� �������~
0 f0 100
~
if (%world.curobjs(104320)% < 6) && (%random.10% <= 1)
   mload obj 104320


~
#104325
����� �������~
0 f0 100
~
if (%world.curobjs(104321)% < 6) && (%random.15% <= 1)
   mload obj 104321


~
$
$
