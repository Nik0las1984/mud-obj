#77500
���� ���� �����~
1 gijt 100
~
wait 1
if %actor.vnum% != -1
  halt
end
wait 1
if %actor.clan% == ��
  halt
endif
osend %actor% %self.name% ������%self.g% � ����� �����.� ���������� ���� �� ������� ����� �� 
oechoaround %actor% � ���������� ����, ����������� %self.name%, �� ���� �������� �������� ���� ��
wait 1
opurge %self%
~
$~
