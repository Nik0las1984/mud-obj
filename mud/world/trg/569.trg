* ������������� BZEditor
* ���������� ��������� : 31
* ��������� 08.08.2015 13:12:46
#56900
����� � �������� �� �����������~
0 r 100
~
������
wait 1s
� ��� �� ������� �� ������%actor.u%!
� ����� ����, � ���� �������� ����� ��������� ��� �����������?
attach 56901 %self.id%

~
#56901
����� ����� 1~
0 d 1
��������~
wait 1s
����
wait 1s
� �, ��.. �������, � ������� ��������� �� ������ � ������� �������, ��� ������� ���� ��������� ����������� �������. �������, � ���� ������ ������� ������� � � ����� ��� �����.
� ����� ���� ������ ��������� ��� ����, � � ������� ��������� ����, � ��������� ��� ���������� ����� ������� ������.
� � ��� ��������� ��� �����, �� � ���� ��������� ������, � ��������, ������� � �����, ���������� �������� ������.
� ��� ���, � ����, ����� �� �������%actor.u% ����, ���%actor.y% ������ ��������� � ��������%actor.g% ��� ��� ������. ��� ����� ��� ���, �.. ������������ ��������.
� ��� ����� ������ ���� ��������, ��������� ������ ����� ����. ��� ����� ������ ��� ��� �� �����������.
wait 1s
� ��, ��� �������? �����, ���� ������������.

attach 56902 %self.id%
detach 56900 %self.id%
detach 56901 %self.id%
~
#56902
����� ����� 2~
0 c 0
�������~
%send% %actor% �� ������������� �������.
%echoaround% %actor% %actor.name% �������� ������%actor.g%.
wait 1s

� �������! ����� ������.
� �������� ����� �������� ������ ������� �������, ������ ����� ������, �� ���������� � ��������� ���������� �������.
� ������� ������ �� ������ ����� ����� �����. ����� �������� �� ������ � ������� ������, ���� ����� ����� ���-�� ���������.
� � ��� ���� ������� �����������. ����� ���������, ����� ��� �� ��� � ������ ���������, ���� ���� ���� �������, � ������� ���� ���� �� ���.
� ������ ������ �����, ���������� ���������� ��������, ����� ����� �� ���������.
wait 1s

mload obj 56920
���� ��� .%actor.name% 

wait 1s

� ����� ���� � ��������!

attach 56920 %self.id%
detach 56902 %self.id%
~
#56903
�����~
2 f 100
~
*������� �������� �� ��������
*eval tmpid %world.mob(56900)%
*attach 56900 %tmpid%
*detach 56901 %tmpid%
*detach 56902 %tmpid%

*������� ������� "���� ������ 1" � ������� ����
%door% 56901 east purge
%door% 56902 west purge
attach 56904 %world.room(56901)%
 
*������� ������� "�������� �����" � ������� ����
%door% 56923 west purge
%door% 56924 east purge
attach 56905 %world.room(56923)%

*������� ������� "���� ������ 2" � ������� ����
%door% 56949 east purge
%door% 56950 west purge
attach 56907 %world.room(56949)%

*������� ������� "���� ������ 3" � ������� ����
%door% 56950 east purge
%door% 56951 west purge
attach 56908 %world.room(56950)%

*������� ������� "������ ���������" � ������� ����
%door% 56971 north purge
%door% 56972 south purge
attach 56909 %world.room(56971)%

*������� ������� "��������� �����" � ������� ����
%door% 56912 north purge
%door% 56913 south purge
attach 56910 %world.room(56912)%

*������� ����� ������ �� ������� � ������� ����
%purge% %world.obj(56923)%
attach 56918 %world.room(56910)%

*����� �����
detach 56919 %world.room(56995)%
attach 56917 %world.room(56995)%


~
#56904
���� ������ 1~
2 c 100
����~
if !%arg.contains(������)%
	%send% %actor.name% ������ ���� ���������?
else
	%send% %actor.name% �� ����� ������.
	%echoaround% %actor% %actor.name% �����%actor.g% ������.
	wait 2s

	%door% 56901 east room 56902
	%door% 56902 west room 56901

	%send% %actor.name% �� ��������� ������ � �����, � ������ ����� ��������� ������.
    %echoaround% %actor% %actor.name% ��������%actor.g% ������, �� �������� ����� ���� ������.
	%load% obj 56915

	detach 56904 %self.id%
end
~
#56905
�������� �����~
2 c 100
��������~
if !%arg.contains(�����)%
	%send% %actor.name% ��� �� ������ ��������?
else
	%send% %actor.name% �� � ����� �������� �� �����, � ��� � �������� ����������.
	
	%door% 56923 west room 56924
	%door% 56924 east room 56923

	detach 56905 %self.id%
end
~
#56906
���� � ���������~
0 f 100
~
if ((%random.100% <= 70) && (%world.curobjs(56929)% < %world.maxobj(56929)%)) 
	%load% obj 56929
end

if ((%random.100% <= 23) && (%world.curobjs(56903)% < %world.maxobj(56903)%)) 
	%load% obj 56903
end
~
#56907
���� ������ 2~
2 c 100
����~
if !%arg.contains(������)%
	%send% %actor.name% ��� ��� ���� ����-��?
else
	%send% %actor.name% �� ������ ������ ������...
	%echoaround% %actor% %actor.name% �����%actor.g% ������.
	wait 2s

	%door% 56949 east room 56950
	%door% 56950 west room 56949

	%send% %actor.name% �� ��������� ������ � �����, � ������ ����� ������ ������...
	%echoaround% %actor% %actor.name% ��������%actor.g% ������, �� �������� ����� ���� ������.
	%load% obj 56915

	detach 56907 %self.id%
end
~
#56908
���� ������ 3~
2 c 100
����~
if !%arg.contains(������)%
	%send% %actor.name% ��� ��� ���� ����-��?
else
	%send% %actor.name% �� ������ ������ ������...
	%echoaround% %actor% %actor.name% �����%actor.g% ������.
	wait 2s

	%door% 56950 east room 56951
	%door% 56951 west room 56950

	%send% %actor.name% �� ��������� ������ � �����, � ������ ����� ������ ������...
	%echoaround% %actor% %actor.name% ��������%actor.g% ������, �� �������� ����� ���� ������.
	%load% obj 56915

	detach 56908 %self.id%	
end
~
#56909
������ ���������~
2 c 100
������~
if %arg.contains(���������)%
	%send% %actor.name% �� ������ ��������� �� �����.
	
	wait 1s
	
	%echo% ����� ��������� ��� ������ ������. ����� ���������, ������ ����� ����.
	
	%door% 56971 north room 56972
	%door% 56972 south room 56971
	
	detach 56909 %self.id%
end
~
#56910
��������� �����~
2 c 100
���������~
if !%arg.contains(�����)%
	%send% %actor.name% ��� �� ������ ���������?
else
	%send% %actor.name% �� ��������� �����, ��������� ������ � ��������.

	%door% 56912 north room 56913
	%door% 56913 south room 56912

	detach 56910 %self.id%	
end
~
#56911
����� � ���������� - �������� �������~
0 r 100
~
� �����... ����...
wait 1s
� ���? �� ����%actor.y%, ����� ������� ��� ��������? �� �� �������%actor.g%.
� ���� ��� ���� ��������� ���� ���, ���������� � ����� ����� ����������. �� �� � ������ ������� ������ ���� ������ - �������� ����������. 
� � ��� ������ ��� �������� �� ����� �������, ������� ���� ����� �� ����� �� �������.
wait 1s
*�������� ��������
mat 56979 mload mob 56908
*�������� ���� � �������� ����� � ���������
exec 56915 %world.room(56979)%
exec 56916 %world.room(56980)%
wait 1s
� �� ��� �����, ��� �� �����. ����� �� �������������� � ���.
detach 56911 %self.id%
~
#56912
������ �������� - ������~
0 n 100
~
���� ���� ������ �� ������ ��� �� ����!

exec 56926 %world.room(56978)%
~
#56913
������ �������~
0 f 100
~
%load% obj 56906

if ((%random.100% <= 50) && (%world.curobjs(56924)% < %world.maxobj(56924)%)) 
	%load% obj 56924
end

attach 56914 %world.mob(56906)%
~
#56914
����� � ���������� ����� ������ �������~
0 r 100
~
� ��� ���� �����... ������ ��� ������� �������� ��������.
� � ��� ��������� ����������, �� � ���� ���� ������������� ����� ���� �� ����� �������.
%load% obj 56919
���� ��� %actor.name%
� ����� ����, �� ������� ��� ���-������ �������� ��� ����.
exec 56917 %world.obj(56922)%
detach 56914 %self.id%
~
#56915
�������� ���� 1~
2 z 100
~
%load% obj 56909
~
#56916
�������� ���� 2~
2 z 100
~
%load% obj 56910
%load% obj 56911
~
#56917
����� �����~
2 h 100
~
if (%object.vnum% != 56920)
	halt
end

wait 1

%purge% %object%

%echo% ������� �������� ����� ��������.

attach 56919 %self.id%
detach 56917 %self.id%
~
#56918
������ �������~
2 c 100
�������~
if (%arg.contains(�������)%)
	%send% %actor.name% ����� ������ ������� �� ������ �������?
elseif (%arg.contains(�������)%)
	%echo% ������� ������� ����������� �� �����, � ������� ������ ��� �� ������.
	%purge% %world.obj(56917)%
	%load% obj 56923
	eval gopa %actor.pc% 
	foreach i %gopa% 
 		%damage% %i% 1200
	done
	detach 56918 %self.id%
elseif (%arg.contains(����������)%)
	%echo% ���������� ������� ����������� �� �����.
	%purge% %world.obj(56918)%
	%load% obj 56923
	if (%world.curobjs(56923)% < %world.maxobj(56923)% && %random.100% <= 55)
		%echo% ��� ������ �� ����� ��������� ����� �������� �����.
		%load% obj 56912
	end
	eval gopa %actor.pc% 
	foreach i %gopa% 
 		%damage% %i% 500
	done
	detach 56918 %self.id%
else
	%send% %actor.name% ��� �� ������ �������?
end
~
#56919
����� ����� 2~
2 d 100
��������~
%portal% 56900 2
~
#56920
����� ����� ��������~
0 j 100
~
if %object.vnum% != 56906
  msend %actor% %self.dname% ����� ������ �������.
  return 0
  halt
end
wait 1
mpurge %object%

� ��� ��! ������ ��������...
� Aliquid igni tractare! 

wait 1

%echo% �������� � ����� �������� ���������, �������� � �������� ��� �� ��������� �������.
%load% mob 56909

mpurge %self%
~
#56921
�������� ��� �����~
0 n 100
~
wait 1s
� ���� �� ���� �� ����� ��������� ����!
mkill .%random.pc%
~
#56922
���� ����� � 56901~
0 f 100
~
if ((%random.100% <= 9) && (%world.curobjs(56900)% < %world.maxobj(56900)%)) 
	%load% obj 56900
end
~
#56923
���� ����� � 56902~
0 f 100
~
if ((%random.100% <= 10) && (%world.curobjs(56900)% < %world.maxobj(56900)%)) 
	%load% obj 56900
end

if ((%random.100% <= 10) && (%world.curobjs(56901)% < %world.maxobj(56901)%)) 
	%load% obj 56901
end
~
#56924
���� ����� � 56903~
0 f 100
~
if ((%random.100% <= 8) && (%world.curobjs(56900)% < %world.maxobj(56900)%)) 
	%load% obj 56900
end

if ((%random.100% <= 8) && (%world.curobjs(56901)% < %world.maxobj(56901)%)) 
	%load% obj 56901
end

if ((%random.100% <= 8) && (%world.curobjs(56914)% < %world.maxobj(56914)%)) 
	%load% obj 56914
end
~
#56925
���� ����� � 56904~
0 f 100
~
if ((%random.100% <= 12) && (%world.curobjs(56902)% < %world.maxobj(56902)%)) 
	%load% obj 56902
end

if ((%random.100% <= 12) && (%world.curobjs(56914)% < %world.maxobj(56914)%)) 
	%load% obj 56914
end
~
#56926
���� �������� ��� ���������~
2 z 100
~
if ((%random.100% <= 40) && (%world.curobjs(56925)% < %world.maxobj(56925)%)) 
	%load% obj 56925
end
~
#56927
��������� � ���������~
0 f 100
~
if ((%random.100% <= 33) && (%world.curobjs(56926)% < %world.maxobj(56926)%)) 
	%load% obj 56926
end
~
#56928
�������� � ���� ������~
0 f 100
~
if ((%random.100% <= 33) && (%world.curobjs(56921)% < %world.maxobj(56921)%)) 
	%load% obj 56921
end
~
#56929
���� ������~
0 f 100
~
if ((%random.100% <= 23) && (%world.curobjs(56903)% < %world.maxobj(56903)%)) 
	%load% obj 56903
end
~
#56930
���� �����~
0 f 100
~
if ((%random.100% <= 20) && (%world.curobjs(56930)% < %world.maxobj(56930)%)) 
	%load% obj 56930
end
~
$
$
