* BRusMUD trigger file v1.0
#5500
�������-�������~
0 r0 100
~
if %actor.vnum% != -1
 halt
end
if %world.curmobs(5500)% > 0
msend %actor.name% ������� �������� ���� ����������� � ����������� � ���.
tell %actor.name% ������ ����!
tell %actor.name% ��� ������� ���� � ���� ����� ������� ����? ����� ������� ������ ��.
tell %actor.name% ��� �� ������ ����� ���������� ���, �� ���������� ����� � ������.
tell %actor.name% � ���� ���� � ���� �������, ����� ��� �� �������.
tell %actor.name% ������� ���������� �������� ����� ��� � ������, ������.
tell %actor.name% ���� ��, � ������� �������������� �� ������.
tell %actor.name% � ����������� ���� �� ���.
msend %actor.name% ������� ���������� ���������� ������ ������.
end


~
#5501
������ �������~
0 f0 100
~
if %world.curmobs(5500)%==1 && %world.curobjs(5500)%==0
mload obj 5500
calcuid ovar 5500 obj
attach 5503 %ovar.id%
end


~
#5502
���� �������~
0 j0 100
~
wait 1
if (%object.vnum%==5500)&&!(%self.fighting%)
 tell %actor.name% �� ��, �� ���� ��������!
 mecho ������� ��������� ������������� �����.
 dg_cast '���������' %actor.name%
 dg_cast '��������������' %actor.name%
 dg_cast '���������' %actor.name%
 dg_cast '���������' %actor.name%
 calcuid hostr 5514 mob
 attach 5504 %hostr.id%
 attach 5507 %hostr.id%
  if %random.5% == 1 && %world.curobjs(516)% < 1
   mload obj 516
   ���� ������� %actor.name%
  end
 tell %actor.name% �������, �� ��������� ���.
 calcuid target 5500 obj
 mpurge %target.name%
end


~
#5503
������� �����~
1 g0 100
~
if %actor.realroom% == 5548 || %actor.realroom%  == 5549
 oforce %actor.name% �����
 osend %actor.name% ������������ �� ������ �� ��������� �� ������� ������ ����� � ���������������.
 osend %actor.name% �� ���, ����� ������� ������� ��� ����� �� ����� ���������, ���, ���, ��� ...
 wait 5
 if %actor.sex% == 1
 oecho %actor.name% ������� ���� � ������.
 else
 oecho %actor.name% �������� ���� � ������.
 end
 osend %actor.name% �� �������� ���� � ������.
 oteleport %actor.name% 5528
 if %actor.sex% == 1
 oechoaround %actor% %actor.name% ���� � ������.
 else
 oechoaround %actor% %actor.name% ����� � ������.
 end
 osend %actor.name% ���, ������!
 osend %actor.name% ����� ������������ ����� ���� ���� �������.
 osend %actor.name% ������ ���������� � �����, ������� �� ����������� ������� �� ���.
 oforce %actor.name% ��������
 odamage %actor.name% 50
end


~
#5504
������-�������~
0 r0 100
~
if %actor.vnum% != -1
 halt
end
if %world.curmobs(5503)% > 0 && %world.curobjs(5514)%==0
msend %actor.name% ������ ������ ������ � ��������� � ���� �������.
tell %actor.name% ������ ���� ������!
tell %actor.name% �� ����� ��������� ��� �� ��������, ������� ����!
tell %actor.name% ���� �� ���� �� �������� ����� �� � ��� �������� ������.
tell %actor.name% � ������� �� ������ ��������� �������, ��� � �������� ������ ��������.
tell %actor.name% �� ��� � ��������� ��� ���� �� ������ ����� � ����� �������.
tell %actor.name% �������� �� ����� ������, ��� ���� �� ������� � ���� �������.
tell %actor.name% � ��� ���� � �� � ��������� ������� ��.
tell %actor.name% ������ ��, � � ����������� ����.
tell %actor.name% ��, ����� ������� - ������ � ��� ���� �� ����� �������, ������ ���, �����.
mload obj 5514
calcuid vobj 5514 obj
����� %vobj.name%
���� %vobj.name%
msend %actor.name% � � ���� ��� ������� �� �����!
msend %actor.name% ������ ����� ��-�� ����� � ������ �� �������.
msend %actor.name% ������ ����� �� �������� ��� �� ������� � � ������ ����������� ����� ����.
msend %actor.name% ��, ������ �� ���� ����� ������ �������.
end


~
#5505
������ ������~
0 f0 100
~
if %world.curmobs(5503)%==1 && %world.curobjs(5514)%==1
msend %actor.name% ������ ����� ������ ��������:
msend %actor.name% ������, ��������, ����� ����!
msend %actor.name% � ��� ������ ������� ��������� ������ ��������� �������� ������.
msend %actor.name% � ����� ������ ��� ����. �� �� ����, ���� � ��� �������.
msend %actor.name% ������ ������ ����� ���� �������� �������.
mload mob 5504
mload mob 5504
end


~
#5506
������ ������~
0 f0 100
~
if %world.curmobs(5504)%==1 && %world.curobjs(5508)%==0
mload obj 5508
end


~
#5507
���� �������~
0 j0 100
~
wait 1
if %object.vnum%==5508
 calcuid vobj 5514 obj
 ����� %vobj.name%
 mpurge %vobj.name%
 say �������! �������-�� ������� �� ��� ������.
 say ������� ��� �� ���������?
 mecho ������ ��������������� �������� �� ���� ������ ��� � ������ �����.
 say �������, �� ������� ���.
 mecho ������ ������ � �������, ������ ���.
 switch %random.6%
 case 1
  if %world.curobjs(5503)% < 4
   mload obj 5503
   ���� ��� %actor.name%
  else
   %self.gold(+300)%
   ���� 300 ��� %actor.name%
  end
  break
 case 2
  if %world.curobjs(5504)% < 2
   mload obj 5504
   ���� ������� %actor.name%
  else
   %self.gold(+300)%
   ���� 300 ��� %actor.name%
  end
  break
 case 3
  if %world.curobjs(512)% < 2
   mload obj 512
   ���� ����� %actor.name%
  else
   %self.gold(+300)%
   ���� 300 ��� %actor.name%
  end
  break
 case 4
  if %world.curobjs(500)% < 1
   mload obj 500
   ���� ����� %actor.name%
  else
   %self.gold(+300)%
   ���� 300 ��� %actor.name%
  end
  break
 default
   %self.gold(+300)%
   ���� 300 ��� %actor.name%
  break
 done
 msend %actor.name% ��� ���, ��� � ����� ���� �������������, ��� ��� ������.
 calcuid target 5508 obj
 mpurge %target.name%
else
 eval getobject %object.name%
 drop %getobject.car%.%getobject.cdr%
 break
end
 calcuid hostr 5514 mob
 detach 5504 %hostr.id%
 detach 5507 %hostr.id%

~
$
$
