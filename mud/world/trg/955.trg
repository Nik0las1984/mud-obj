* BRusMUD trigger file v1.0
#95500
����� ������ �� ����� ������~
2 c0 100
�����~
wait 1
if !%arg.contains(�����)%
wsend %actor% _���� �� ������ �����?
halt
end
wechoaround %actor% _%actor.iname% ����� � ����� �����%actor.q% ������.
wsend %actor% _����� � ����� �� ������� ������ �� ������.
wteleport %actor% 95544




~
#95501
����� ���� �� ����� ������~
2 c0 100
�����~
wait 1
if !%arg.contains(����)%
wsend %actor% _���� �� ������ �����?
halt
end
wechoaround %actor% _%actor.iname% ����� � ����� �����%actor.q% ����.
wsend %actor% _����� � ����� �� ������� ���� �� ������.
wteleport %actor% 95543




~
#95502
������������~
0 k0 100
~
calcuid target 95520 mob
if %target.affect(�������)% 
mecho _������������ ������� � ������ ������� �� ����������� ���� !
dg_cast '����� ����' %target%
end
if %target.affect(����������)% 
mecho _������������ ������� � ������ ������� �� ����������� ���� !
dg_cast '����� ����' %target%
end
if %target.affect(��������)% 
mecho _������������ ������� � ������ ������� �� ����������� ���� !
dg_cast '����� ��������' %target%
end
if %target.hitp% < 400 
mecho _������������ ������� � ������ ������� �� ����������� ���� !
mecho _� ���� �� ������ ���� �� ��� ���������� ���� ����� ������������ !
dg_cast '���������' %target%
end






















~
#95503
����� ��������~
0 f0 100
~
mload obj 95523



















~
#95504
�������� �����~
2 c0 100
������~
* �������� ���������
if !%arg.contains(�����)%
wsend %actor% _�� ��� �� ������ ������ ?
halt
end
* ���� ����� ����, ������ ������� ��� ����������
if %room.north% == north
halt
end
* ������� ����� �������� ���� 25+ ����
if %actor.str% > 24 
wsend %actor% _�������� ������� ������, �� ������ �� �����.
wechoaround %actor% _������� ��������, %actor.iname% �����%actor.g% �� �����.
wdoor 95592 south room 95591
wdoor 95591 north room 95592
else
wsend %actor% _�� ���������� ������ �� �����, �� �� ������ �������� ���.
wechoaround %actor% _%actor.iname% ������%actor.u% ������ �����, �� �� ����%actor.q%.
end 




~
#95505
�����~
2 f0 100
~
wdoor 95592 south purge room 95591
wdoor 95591 north purge room 95592
calcuid mobid 95531 mob
attach 95508 %mobid.id% 
calcuid mobid 95530 mob
attach 95509 %mobid.id%
attach 95510 %mobid.id%











~
#95506
������������� � ������ �������~
2 g0 10
~
wsend %actor% _��� ��� ������ ��������� � �� ������� �������� ���� !
wteleport %actor% 95555


















~
#95507
����� ������ �������~
0 f0 100
~
mload obj 95532















~
#95508
��������� �������~
0 r0 100
~
wait 10
mecho _��� ����������:
mecho _- ����, ����� !
mecho _- �� ���� � ���� ����� !
mecho _- �� ���� � ��� �����.
mecho _- ��� ���� ���� ������ ������...
detach 95508 %self.id%














~
#95509
����� � ������� �������~
0 r0 100
~
wait 10
mecho _������ �������:
mecho _- ��� �� � ����%actor.y% %actor.iname% !
mecho _- � ���� ����.
���
wait 20
mecho _- ������ � ���� ���� �����.
mecho _- ��� ������� ��� ��� ������� !
mecho _- ����� �� �����.
mecho _- �����%actor.g% ��� �� ��� �������?
detach 95509 %self.id%




~
#95510
������� � ������ ��������~
0 d0 100
�����~
wait 10
mecho _������ �������:
mecho _- ����� ����������� � ����.
mecho _- ��� �� �������, ��� ������ ������.
* ���������� ������� ��������� ����
mteleport ��� 95400
detach 95510 %self.id% 



~
$
$
