* BRusMUD trigger file v1.0
#100200
����������� ����~
0 r0 100
~
wait 3
switch %random.2%
case 1
say ������� ������ !
�� ������ �������� � ��������� ��� � �����
say �������...
say �� ������ ������� ������ ����, � �� � ���� ������� �������...
wait 1s
����
say ���������!? ���� �� ���� ������������...
say �� ������ � ���� ����������, ������� ����������...
wait 1s
say ������ � ����� �� ��� �������� �����.
say �� �� ��������, � ��� �������� ��� ��� � ���� ��� � ����� �������.
wait 3
����
� ��, ���� ��� ����...
wait 1s
� �� ������� � ������� ���������, �� ��� ����� �������� � ����, ��� �� �������.
� ���� ���� �� �� �����, ������� ���� ���� �������� �����������...
� ���� �� ��� ��� ����� �������������.
wait 4
say �� ��� �� �� ��� �� ���� ��������, ������ ��� ��������-�������� ��������.
attach 100201 %self.id%
detach 100200 %self.id%
break
case 2
say ������ ����!
say ����� �����, ��� �� � ��� ������...
wait 6
����
say �� ���� �������� ��� ����, ����� �������� ������� ��� �����.
say � ��� ��� ������ ���� ����� ������� � ���� � �� �����, ��� �� �� �������-��.
���
say ��������� ������ ��������� ������� ������, �� ������, �� ������ ������� �� ��� ��� �� �������...
say �������� ��� ����� ������� - ����������� �� ������...
attach 100202 %self.id%
detach 100200 %self.id%
break
end









~
#100201
����� 1-������~
0 d0 1
���� ������ ����� ��������~
if %actor.vnum% != -1
    halt
end
makeuid questor10021 %actor.id%
global questor10021
calcuid mob100215 100215 mob
attach 100210 %mob100215.id%
say �� ���� ����� ����, �� �������� ������� ����..!
say ��� ������� ����� ������ ���� �� ���!
wait 5
say � ���� ����� ���� �����...
say ��� �� � ������� ��� �������!
attach 100211 %self.id%
detach 100201 %self.id%

~
#100202
����� 2 - ������~
0 d0 1
�� �������� ������~
if %actor.vnum% != -1
    halt
end
makeuid questor10021 %actor.id%
global questor10021
calcuid room100228 100228 room
calcuid room100230 100230 room
calcuid room100234 100234 room
calcuid room100237 100237 room
calcuid room100243 100243 room
attach 100206 %room100228.id%
attach 100206 %room100230.id%
attach 100206 %room100234.id%
attach 100206 %room100237.id%
attach 100206 %room100243.id%
say ���������, � �� �� ��� �������� ������������ �����...
say ������� ��� ���� ������������� �������, ����� �� ����� �������������� ��.
wait 5
say ������� ����� �������... �� ���������...
attach 100203 %self.id%
detach 100202 %self.id%

~
#100203
�����2 (�������� �����)~
0 j0 100
~
wait 1
if %object.vnum% !=100200
drop all
halt
end
wait 1
mpurge %object% 
eval orlenok1002 %orlenok1002%+1
global orlenok1002
say � ��� � %orlenok1002%-�! �� �������!
if %orlenok1002%<5 then
say � ��� ���������? ����� 5, � �� �������� ������...
halt
end
say �, �������! ������ ������� ��� � ������!
end

~
#100204
����������� � ����~
2 e0 33
~
if !(%random.10% > 5) then
%echoaround% %actor% %actor.name% �������%actor.u%  � � ������ ��������� �� �����.
%send% %actor.name% �� ��������� � ��������� ���� � �����������.
%force% %actor.name% �����
end

~
#100205
���������� � �����~
2 e0 33
~
if !(%random.10% > 5) then
%echoaround% %actor% %actor.name% ������ �������%actor.u%  �� ������ �����.
%send% %actor.name% �� �� ����� ���� �������� �� ������ �����...
%send% %actor.name% � ��� ��������� � ������ �� ����!
%send% %actor.name% ����� �� ��� �������?!?
%damage% %actor.name% 100
end

~
#100206
����� 2 (������� �����)~
2 c0 1
������ ������� ������ �������~
if !%arg.contains(�����)%
wsend %actor.name% ��� �� ������ �������� �� ������ ?  
 return 1
   halt
end
wait 3
wsend  %actor.name% �� ������� ����� � ����� ��������� ���������� ��� ������.
wechoaround %actor% %actor.name% ������%actor.g% ����� � ���������%actor.g% � ����������� ��� ������.
wait 1s
if %random.10% < 4 then
wecho �������� �����, ��������, ������ ������ ������ ��������...
wecho ������ ���� ����� �������� �� ������� ��������� �������!
wload mob 100201
end
wait 3
wecho ������� ������ ��������� ��-�� �������, ����� �������� ���� ������...
wecho ������� ������ ��������� ��-�� �������, ����� �������� ���� ������...
wload mob 100200
wload mob 100200
wait 5s
wsend  %actor.name% ������ ��� ������� �������...
wsend  %actor.name% ��� ������ ������ �������� ������ � �� ���� ��������� ��������� ���������.
wechoaround  %actor% ������ ������ ��������� %actor.rname% ��������� ������.
wechoaround  %actor% ��������� ��������� � ������ ����� �� ������...
wait 4
%echo% ��������� ��������� ��� �������!
wload obj 100200
detach 100206 %self.id%

~
#100207
���� ����� � �����~
2 b0e0 33
~
wait 4
%echo% ������� ������� ����� ���������� � ��� � ����...

~
#100208
������� ���������~
0 b0 66
~
eval target %random.pc% 
%send% %target.name% �������� ����� ��� ������ ��������...
%echoaround% %target.name% �������� �������� ������ ������� � %target.rname%...
dg_cast '����' %target.name%
wait 5
%send% %target.name% �������� ������ ���� ��������...
%echoaround% %target.name%  ������� ������� �������� %target.rname%!
%send% %target.name% �� ���������� �� ���!
%echoaround% %target.name% %target.name% �������%target.u% �� ���!
mforce %target.name% �����
dg_cast '����������' %target.name%

~
#100209
����� ����~
2 f0 100
~
calcuid hantirah 100207 mob
detach 100200 %hantirah.id%
detach 100201 %hantirah.id%
detach 100202 %hantirah.id%
detach 100203 %hantirah.id%
detach 100211 %hantirah.id%
attach 100200 %hantirah.id%
detach 100210 %mob100215.id%
detach 100206 %room100228.id%
detach 100206 %room100230.id%
detach 100206 %room100234.id%
detach 100206 %room100237.id%
detach 100206 %room100243.id%

~
#100210
�����1 (����������� �������)~
0 c0 100
����������~
if %actor.vnum% != -1
    halt
end
if !%arg.contains(�������)%
%send% %actor.name% ���� �� ������ ���������� ?  
 return 1
   halt
end
%send% %actor.name% �� ���������� ���� ������������ ����.
%echoaround% %actor% %actor.name% ���������%actor.g% ���� ������������ ����.
wait 5
���� %actor.name%
wait 2
� ������ ���� �����, ������ ��������...
makeuid questor10022 %actor.id%
worlds questor10022
calcuid mob100207 100207 mob * ���-�����
attach 100210 %mob100207.id%
detach 100210 %self.id%

~
#100211
�����1 (������ �������)~
0 h0 100
~
wait 1
calcuid krasa 100215 mob
if (%krasa.realroom% != %self.realroom%)
  ���
  say �������� ������ �������, ���� �� , ��� ����� � ���� ����������� ���������.
  halt 
end
if (%questor10021.id% != %questor10022.id%)
  wait 1s
  say � �� ���� ������ � ������, �� ��� �� �������.
  say  � ������ ��� ������....
  ���� %questor10022.name%
  halt
end
wait 1s
����
%purge% %krasa%
say ������� ! 
say ��� �� ��� ������������� ���� %questor10022.name%..?
��� %questor10022.name%
detach 100211 %self.id% 

~
#100212
����� ����~
0 n0 100
~
 set orlenok1002 0
 global orlenok1002

~
$
$
