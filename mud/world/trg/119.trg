#11900
(r11937) ��������� � �����~
2 c 100
��������~
if %arg.contains(�����)%
  %send% %actor% ����� � ���������, �� �������� ������ �����.
  %teleport% %actor% 11938 horse
else
  %send% %actor% ���� �� ������ ��������?
end
~
#11901
(r11953) ����� � ������~
2 g 100
~
wait 5
%echo% �� ���� �������� �������� �����...
%echo% �� �� �������� ������, ����� �� ���� ��������... ������, ��������� � ������.
%echo% �������� ��������� �������, ��� � ������� ���������� ������� ������.
%door% 11953 east purge
%load% obj 11902
detach 11901 %self%
~
#11902
(o11902) �������� ����� ������~
1 g 100
~
if %actor.vnum% == -1
  %send% %actor% ���� �� ��� ������� �� �������?
  return 0
  halt
end
otransform 11901
return 1
%door% 11953 east room 11954
detach 11902 %self%
~
#11903
�������~
2 c 1
������� ��������� ���������~
if !%arg.contains(�����)% 
  return 0
  halt
end
wait 1
wdoor 11953 north room 11960
wsend %actor.name% ������ ������ �� ������� � ����� ������� ������.
wechoaround %actor% %actor.name% ������ ������ �����%actor.q% �����, ������ ������� ������.
detach 11903 %self.id%
~
#11905
����� �������~
2 f 100
~
wdoor 11953 s purge
attach 11903 %self.id%
~
#11906
����� ������� �������~
2 f 100
~
attach 11903 %self.id%
~
#11907
����� ������~
0 n 100
~
attach 11901 %self.id%
attach 11902 %self.id%
~
#11908
����� �������� ����~
0 f 100
~
mload obj 11908
~
#11909
������ �����~
0 f 100
~
mload obj 11907
~
#11911
(r11900) ������ ������~
2 z 100
~
wait 3
eval dam %actor.hitp%+2
%damage% %actor% %dam%
~
#11999
(r11901) �����~
2 f 100
~
%echo% RESETTING
attach 11901 %world.room(11953)%
%door% 11953 east room 11954
~
$~
