* ������������� BZEditor
* ���������� ��������� : 7
* ��������� 13.12.2009 21:13:04
#21300
������� ������ ����������~
0 d 100
����������~
wait 1
if %actor.vnum% != -1
halt
end 
say ���, �������!
wait 1
if %actor.bank% < 675
���
say �� ������ �����! ���, ���� �� ����� � ����-������!
halt
end
eval buffer %actor.bank(-675)%
mload obj 21311
mload obj 21311
mload obj 21312
mload obj 21312
if (actor.sex==1) then
mload obj 21314
else
mload obj 21356
end 
mload obj 21315
mload obj 21316
mload obj 21317
mload obj 21318
mload obj 21319
mload obj 21320
mload obj 21321
mload obj 21322
mload obj 21323
mload obj 21345
mload obj 21348
give all .%actor.name% 
drop all
~
#21301
������� ������ �������~
0 d 100
������~
* 10 �������, 10 ��������, 10 ������, 10 �������, 10 �����, 10 �����, ����� ������, ����� �����,
wait 1
if %actor.vnum% != -1
halt
end 
say ���, �������!
wait 1
if %actor.bank% < 11750
���
say �� ������ �����! ���, ���� �� ����� � ����-������!
halt
end
eval buffer %actor.bank(-11750)%
set i 0
while (i < 10)
mload obj 138
mload obj 139
mload obj 141
mload obj 142
mload obj 144
done
mload obj 153
mload obj 149
give all .%actor.name% 
drop all

~
#21302
���� ����~
1 c 2
�����~
* ������� �� ���� ��������� ����. ��������� � �������.
* ����������, ���� �� ������� �������� �������� (�������)
* ��� ����, �� � �������� ���������� ������ ���������
wait 1
osend %actor% �� �������� �������� ���������� ������� ������� ����.
if %actor.clan% != ��
halt
end
if %world.curmobs(2008)% > 50
osend %actor% ...� ������ �� ���������!
halt
end
oechoaround %actor% %actor.name% �������%actor.g% �� ������� �������.
oload mob 2008
oecho ������ ������ ��� ����������, ������� �������, � �������� �������� ������� ����.
wait 1s
oecho ���������� ��� �����������, � �� ������� ����������� ������������ �������.
wait 1s
oecho ���� ���������, ��������� � �������� ���.
wait 1s
oforce %actor% �������� ����
wait 1
opurge %self%








~
#21303
���������� ����~
0 c 1
���������~
* ������� �� ����������� ��������� ����. ��������� � ����-����.
* ����������, ���� �� ������� �������� �������� (�������)
* ��� ����, �� � �������� ���������� ������ ���������
wait 1
if %self.fighting%
halt
end
if !%arg.contains(����)%
msend %actor%  ���� �� ������ ����������?
halt
end
if (%actor.clan% != ��) || (%actor% != %self.leader%)
msend %actor% ��� �� ��� ������.
halt
end
msend %actor% �� ��������� �������� ���� �� ����.
mechoaround %actor% %actor.name% ���������%actor.g% ����.
mload obj 21352
give ���� .%actor.name%
wait 1
mecho ���� ������� ��������� ������.
wait 1
mpurge %self%








~
#21304
������ �������~
0 m 1
~
* ���� ����� �� ������
wait 1
if %amount% < 50
wait 2
say �������� �����!
give %amount% ��� .%actor.name%
halt
end
if %world.curobjs(21352)% >= 200
wait 2
say ���� �����, ���������!
give %amount% ��� .%actor.name%
halt
end
wait 2
say ���, ��������.
mload obj 21352
give ���� .%actor.name%








~
#21305
����������� � �������~
0 d 100
���� ���� � ��������~
wait 1
if %actor.vnum% != -1
halt
end
msend %actor% �� �������� �� ����� ����� � ��������� ����� ����� � ������
mechoaround %actor% %actor.name% �������%actor.g% �� ����� ����� � ��� ��������� ����� ����� � ������
mteleport %actor% 21381
wait 1
msend %actor% ������ ����� ����������� � �� ��������� ����� ����� ���������� ������� ��������
wait 1
mechoaround %actor% %actor.name% �������� ����� ������ �� �������� �����
mecho ������������� �� ������, ����� ������� �����, �������� �� ����� ������ ����������� �����.
~
#21306
����������� � �������~
2 c 1
������� �����~
wait 1
if %actor.vnum% != -1
halt
end
wsend %actor%�� ������� �����, �� ������ ���� ��������� �������� ����
wechoaround %actor% %actor.name% ������%actor.g% �����, �� ������ ���� ��������� �������� ����
wait 1
wecho ������ ������ � ��� ���������� ����� �� ���
wait 1
wecho ��� ���������� ����������� � ����� �� ������� ����������� ��������� ����� � ����� ������������� ��������.
wsend %actor% �� �������� �� ����� ����� � ��������� ����� ����� � ������
wechoaround %actor% %actor.name% �������%actor.g% �� ����� ����� � ��� ��������� ����� ����� � ������
wteleport %actor% 21383
wait 1
wsend %actor% ������ ����� ����������� � �� ��������� �� �����, ������� � �����.
wait 1
wechoaround %actor% %actor.name% �������� ����� ������ �� �������� �����
wecho ������������� �� ������, ����� ������� �����, �������� �� ����� ������ ����������� �����.
~
$
$
