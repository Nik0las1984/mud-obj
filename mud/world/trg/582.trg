#58200
���� ���� �� ������� � ����� ��� ����� �� ����������~
1 g 100
~
* ���� ������ ����-���� ��� ������� ����� ��� ������� ����������-���������� � ����� ��
if ( %actor.vnum% != -1 )
  halt
end
wait 1
* �������� ���� ����� ���� -- ����� ������
if %actor.clan% == �� || %actor.clan% == ��2 || %actor.clan% == ��3
  halt
end
* �� �� � �� �������� -- �� �����
if ( %actor.clan% != �� )
  oecho �������� %self.iname% �����%self.q% � ����� �������.
  wait 1
  opurge %self.id%
end
~
#58201
�������� => ����~
1 c 3
��������~
wait 1
if (%actor.clan%!=��)
  oechoaround %actor% %actor.name% �����%actor.u% ������ ������ ��������. � ��� ��� � �������?
  osend %actor% �� ������ ������ ��������. ��������� �������.
  halt
end
if %world.curmobs(58112)% < 50
  oechoaround %actor% %actor.name% �����%actor.g% ������ �������� � ��� ����������� � ����.
  osend %actor% �� ������� �������� � �� ����������� � ����!
  oload mob 58112
  wait 1
  opurge %self%
else
  osend %actor% �� ������� �������� �� ������ �� ���������.
end
~
#58202
���� => ��������~
0 c 0
���������~
wait 1
if (%actor.clan%!=��)
  if %self.vnum% == 58112
    mechoaround %actor% %actor.name% ����������%actor.g% ��������� %self.vname%, �� ��� ���������� ������%self.g% ��� �� �����.
    msend %actor% �� ����������� ��������� %self.vname%, �� �� ���������� ������%self.g% ��� �� �����!
  else
    if %self.vnum% == 58303
      mechoaround %actor% %actor.name% ����������%actor.g% ��������� %self.vname%, �� �� �������%self.g% � �������.
      msend %actor% �� ����������� ��������� %self.vname%, �� ��� �������%self.g% � �������.
    end
  end
  halt
end
if %self.vnum% == 58112
  mechoaround %actor% %actor.name% ��������� ��������%actor.g% %self.vname%, � %self.name% � ������� ������� �����%self.q%.
  msend %actor% �� ��������� ��������� %self.vname%, � %self.name% � ������� ������� �����%self.q%.
else
  if %self.vnum% == 58303
    mechoaround %actor% %actor.name% ����������� ��������%actor.g% %self.vname%, � �������� %self.name% ������%self.g%! �������� :(.
    msend %actor% �� ����������� ��������� %self.vname% � ��� ��������� ��� ������%self.g%! ��� �� �� ��������!?
  end
end
mload obj 58258
wait 1
mpurge %self%
~
#58203
�������� => ����2~
1 c 3
�������~
wait 1
if %actor.clan% != ��
  oechoaround %actor% %actor.name% �����%actor.u% ���������� ������ ��������. � ��� ��� � �������?
  osend %actor% �� ������ ���������� ���������� ��������. ��������� �������.
  halt
end
if %world.curmobs(58303)% < 5
  if %actor.clanrank% < 6
    oechoaround %actor% %actor.name% �����%actor.g% ���������� �������� � �������� ��� ����������� � ��������� ����, �� � ����!
    osend %actor% �� ������ ���������� �������� � �������� �� ����������� � ��������� ����!
    oload mob 58303
    wait 1
    opurge %self%
  else
    osend %actor% ��-�� ������� ����������� ���������, ����� ����������� �������� ������ �������� ������� �����! :(.
  end
else
  osend %actor% �� ������� �������� �� ������ �� ���������.
end
~
#58204
������� ������� ����� ����~
0 c 1
�������~
wait 1
say ��� ���� � ���� ������ ���, ���������� � ����������.
halt
wait 1
if %actor.clan% != ��
  msend %actor.name% �������� ������� � ������ �����!
  halt
end
if %actor.bank% < 2830
  msend %actor.name% ����� ����� � ����� �� ������� �� �������!
  halt
end
%actor.bank(-2830)
���� ���
* ������ ����� = 10 ���
mload obj 58201
* ������� ������� = 2x25=50 ���
mload obj 58203
mload obj 58203
* ������� ������ = 2x400=800 ���
mload obj 58205
mload obj 58205
* ������� ������� = 80 ���
mload obj 58207
* ������ ���� = 50 ���
mload obj 58209
* ������ ������ = 50 ���
mload obj 58211
* ������ ������ = 30 ���
mload obj 58213
* ������ �������� = 30 ���
mload obj 58215
* ������ ������ = 30 ���
mload obj 58217
* �������� ��� = 40 ���
mload obj 58219
* ������� ������� = 200 ���
mload obj 58221
* ������� ���� = 20 ���
mload obj 58223
* ��������� ������� = 35x2=60 ���
mload obj 58225
mload obj 58225
* �������� ����� = 35 ���
mload obj 58229
* ������ �������� 25*3=75
mload obj 139
mload obj 139
mload obj 139
* ������� ���������� 100*3=300
mload obj 144
mload obj 144
mload obj 144
* ������� ������� 300*3=900
mload obj 141
mload obj 141
mload obj 141
* ����� � ����� ��������� 20*3=60
mload obj 142
mload obj 142
mload obj 142
give all %actor.name%
drop all
~
$~
