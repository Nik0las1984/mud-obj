#802
�������~
1 c 2
�������~
wait 1
dg_affect %actor% ���_����� 1
~
#810
<������ �������> - ��������  ��������  ���������~
1 c 1
������~
if %actor.realroom% != %actor.loadroom%
osend %actor% �� ������� ��� ��������� ������ �����? ������� ����� ������ �������!
halt
end
set pow %self.val0%
if %pow% < 15
set vozrast %actor.age%
if %vozrast% < 100
*���� ������� ������ � �������  ������ 100 -�������� (������ 9)
eval i 15-%pow%
%actor.age(+%i%)%
osend %actor% ����� ������� ��... ���������. ���-�� ���������� �� ����������� ����� ������� ���� �������.
else
*���� ������� ������ 100 � ������� ������, �� ����� � ������������ ������ 50%(������  14)
eval i %actor.maxhitp%*2
eval i %random.%i%%
osend %actor% ��� ������ %vozrast%-������� ���� ������������ ���������� ��������� ��������� ������ ���������������... � �� �� �����������...
%actor.wait(2)%
wait 1s
odamage %actor% %i%
end
halt
end
eval i %pov%-14
%actor.age(-%i%)%
osend %actor% �� �������������� ���� ������!
%actor.wait(2)%
wait 1s
opurge %self%
~
$~
