* BRusMUD trigger file v1.0
#70400
������ �������~
2 z0 100
*~
wait 1
calcuid fenr 70404 mob
wpurge %fenr%
wload mob 70405









~
#70401
����� � ����~
0 r0 100
*~
wait 5
�� ��������� �� ��� ��������� �������.
wait 15
say �� �����, ��� ���� ���-������ ��������.
wait 5
say � ���� � ���� �������� �����, � ��� �� ���� ������, �� ��������� ��� ������ ������.
say ������� � �������� ��� � ������ ������?









~
#70402
����� ����� � ����~
0 d0 1
������ ���������~
wait 5
makeuid xman1 %actor.id%
worlds xman1
say ���� ������� ����������. ��� � ��� ����: � ���� �������, � ���������, � ����� �� 
say �������. ������ ������� ���������� � ����� ����� ��������. ���� ������� ���� ����.
wait 15
say �� ������� � ���� ����� ���������� �������, � ��� ����� ������ � �����. ����� �������� 
say ���� ��� ������ ���� ���������, � ��� �������� �������� � ���� ����. ��� ���� ����� 
say ������ � ������ ������������ � ������� ����. �� ������� �� �� ������ ������� �� � 
say ������� �����. ������� ��� ������ ���� ���� � ��� � ���������� � ���������.
wait 15
say ������ ���� �� ��������� ��, � �������� ������ ����. �������, ���� �� �� �������� ��������� 
say ��������� � �������� ������� � ������. ����� ������� ���������� ��� ��������, ��
say ��������� � ���� �����, � ������ ��� ��������. 
wait 15
say �� �������� �������� ��������� �� "��������� ����". 
say ����� �� ��� �������� � ���� �����, �� ��� ���� �������. 
say ��� ��������� �� ������� ������������ ���� ����, ������� ������� ���� ������, ��������� 
say �������� ����� � ���������� ���� ��������, ������� �� ��� ���.
wait 15
say ������ ������� ����������� ����� ���������� ������ �������, �� �� ��� ��� ��� ��������� 
say ����������, ���� ������� ��� ���������� � ������� ��������. 
wait 15
say ����, ��� ����� �� ������ ���������� � ����, �� ��� ����� � ��������� ���������� ������� 
say ������������� ��������� �������� ����� �� ����������� �������, � �� ��� ���� �� �����: 
say ���� ����������, �������������� �� �������� ����� �������, 
say ������� ��� �� ����� ����, ����������� �� ��������� ���� ������� � �������� ����� ����, 
say � ��������� ������ ���� ������, ���������� ����� �� �������. 
wait 15
say ����� �� ����� � ��� ����. 
wait 15
say ������� ��� ����� ���� ��������, �� ��� ������� ������ �����, � �� ���������� �����, 
say ���� ��� ����� �� ������� �����, � ���� ��� �� ����� � ���� �����, �� ���� �� ������ 
say ������� ������ ���. 
wait 15
say ������ ���, � ������� ����� �������� �����.
detach 70401 %self.id%
detach 70402 %self.id%









~
#70403
�������� ���~
0 f0 100
*~
calcuid duh 70400 mob
attach 70404 %duh.id%









~
#70404
����� ����� ����~
0 r0 100
*~
if %actor.id% == %xman1.id%
wait 5
say �� ������� ��� ������� �������.
wait 5
eval rand %random.1000%
if (%rand% < 200) && (%world.curobjs(70413)% < 3)
mload obj 70413
mecho �� �������� � ����� ���� �������� �������� ���������.
���� �������� %actor.name%
elseif ((200 <= %rand%) && (%rand% < 400) && (%world.curobjs(70414)% < 3))
mload obj 70414
mecho �� �������� � ����� ���� �������� �������� ������.
���� ����������� %actor.name%
elseif ((400 <= %rand%) && (%rand% < 600) && (%world.curobjs(70415)% < 3))
mload obj 70415
mecho �� �������� � ����� ���� ������ ������ ������.
���� ������ %actor.name%
else
%actor.exp(+600000)%
wait 5
msend %actor% �� ��������, ��� ��� ���� ����������.
end
wait 5
say ������ ����� �� ������ ��� �����.
say �������...
detach 70404 %self.id%
wait 1
mpurge %self%
else 
mecho ������ � ����� ������. ���� ����� �� �����.
end


~
#70405
����������(���, ����� ����) ������~
0 f0 100
*~
if (%world.curobjs(70405)% < 3) && (%random.1000% <= 100)
   mload obj 70405
end
if (%world.curobjs(70406)% < 3) && (%random.1000% <= 100)
   mload obj 70406
end
if (%world.curobjs(70407)% < 3) && (%random.1000% <= 100)
   mload obj 70407
end
if (%world.curobjs(70408)% < 3) && (%random.1000% <= 100)
   mload obj 70408
end


~
#70406
���� ��������~
0 n0 100
*~
if (%world.curobjs(70401)% < 3) && (%random.1000% <= 150)
   mload obj 70401
end
if (%world.curobjs(70402)% < 3) && (%random.1000% <= 150)
   mload obj 70402
end


~
#70407
�������� ��������~
0 n0 100
*~
if (%world.curobjs(70403)% < 3) && (%random.1000% <= 200)
   mload obj 70403
end
if (%world.curobjs(70404)% < 3) && (%random.1000% <= 200)
   mload obj 70404
end


~
#70408
�������� ��������~
0 n0 100
*~
if (%world.curobjs(70409)% < 3) && (%random.1000% <= 150)
   mload obj 70409
end


~
#70409
������� ������~
0 f0 100
*~
if (%world.curobjs(70410)% < 3) && (%random.1000% <= 100)
   mload obj 70410
end
if (%world.curobjs(70411)% < 3) && (%random.1000% <= 100)
   mload obj 70411
end
if (%world.curobjs(70412)% < 3) && (%random.1000% <= 100)
   mload obj 70412
end


~
$
$
