* BRusMUD trigger file v1.0
#25400
������~
2 c0 1
�������� ������~
if !%arg.contains(������)%
return 0
halt
end
%send% %actor% _�� ������ �������� ������, � �� ���������� �������� � �������, ��������� ������.
wdoor 25453 s room 25454
wdoor 25454 n room 25453
wait 1s
wdoor 25453 s purge
wdoor 25454 n purge











~
#25401
�����~
2 c0 1
����������~
if !%arg.contains(�����)%
return 0
halt
end
%send% %actor% _�� ���������� ������� ����� � ������� �� ���� ������� ��� � ���-�� ����.
wdoor 25441 e room 25413
wait 1s
%echo% _����� ����������� � ������� ���.
wdoor 25441 e purge









~
#25402
����� � �����~
0 q0 85
~
msend %actor% _����� ���� ������, ��� �� ������ �������� � ��� ����!
mkill %actor.name%


















~
#25403
����� � �����������~
0 q0 85
~
wait 2
�����
say ���������... � - ���������� ��������.
say ������ �� ��� ����� ��������� - ��� ����� ������ ���.
say � �� ������ ������� - ������ ���������
wait 1
����











~
#25404
����� � ���������~
0 q0 85
~
wait 2
��
say �������, ����� ����.
say ���� ��� �� ��� ����� - ������� ��� �������� ���.
say ��� ����-���������� �����-������ ��� ����������.











~
#25405
��� ������ �����������~
0 m0 1
~
wait 1
if %amount% < 50
say ������ ���� ��.
give %amount% ��� %actor.name%
������ %actor.name%
halt
end
wait 1s
say ��� � ������ - ��������� �� ����� 
stand
msend %actor% _�� ��������� �� �����, � ���������� �������� ������ �����.
mechoaround %actor% _~~%actor.name% ����%actor.y% �� ����� � ���������� �������� ������ �����.
mteleport %actor% 25430 horse
msend %actor% _������ ������� ������� - � �� ��� �� ��������������� ������.
mechoaround %actor% _���-�� ������ ���� �� ������.











~
#25406
��� ������ ���������~
0 m0 1
~
wait 1
if %amount% < 50
say �������� ����...
give %amount% ��� %actor.name%
������ %actor.name%
halt
end
wait 1s
say ��� � ������. 
stand
emot ������������ ���������
mecho �������� �� ��������������� ������ ����� � �������� ������ ����� � ������ ������
msend %actor% _�� ��������� �� �����, � ���������� �������� ������ �����.
mechoaround %actor% _~~%actor.name% ����%actor.y% �� ����� � ���������� �������� ������ �����.
mteleport %actor% 25428 horse
msend %actor% _������ ������� ������� - � �� ��� �� ��������������� ������.
mechoaround %actor% _���-�� ������ ���� �� ������.











~
#25407
���� ��������~
0 h0 40
~
if ((%actor.vnum% == 25411) || (%actor.vnum% == 25412))
stand
mkill %actor.iname%
end















~
#25408
����� � ����~
2 c0 1
����� ��������~
if !%arg.contains(��������)%
%send% %actor% _���� �� ������?!
halt
end
%send% %actor% _��������� � �����, �� ������� � ���������.
%echoaround% %actor% _%actor.name% �����%actor.q% � ��������� ����� �������.
%teleport% %actor% 25491
%echoaround% %actor% _���-�� ������ ����.











~
#25409
����� ������~
2 c0 1
����� ��������~
if !%arg.contains(������)%
%send% %actor% _���� �����?
halt
end
%send% %actor% _��������� � ����� �� ������� � ���������.
%echoaround% %actor% _%actor.name% �����%actor.q% � ��������� ����� �������.
%teleport% %actor% 25404
%echoaround% %actor% _���-�� ������ ����.











~
$
$
