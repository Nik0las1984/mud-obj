#13200
������� ������~
0 f 100
~
msend %actor.name% ����� � ��������� ��� �������� �������� � ����.
mechoaround %actor.name% %actor.iname% ������ ������ ����� ������.
mload obj 13212
~
#13201
�� ������~
2 c 0
����� ������� ������ ����������~
if !%arg.contains(������)% 
  wsend %actor% _���� ��� �� ������?!
  return 0
  halt 
end
wsend %actor%  �� ������ ����������� �� ������.
wechoaround %actor% _%actor.name% ����%actor.q% �� ������.
wteleport %actor% 13289
wsend %actor% _�� ������� �� ������.
wechoaround %actor% _���-�� ���� �� ������. 
end
~
#13202
� ������~
2 c 0
������ ��������� ����������~
if !%arg.contains(�����)% && !%arg.contains(����)%  && !%arg.contains(����)%
  wsend %actor%  ������ �� ������ ���������� ?!
  return 0
  halt 
end
wsend %actor% _�� ������ ���������� � ������.
wechoaround %actor% _%actor.name% ����� ����������%actor.q% � ������. 
wteleport %actor% 13260
wsend %actor% _�� ������ � ������.
wechoaround %actor% _���-�� ��������� � ������ �� �����. 
end
~
#13203
������� ����-���~
0 f 100
~
msend %actor.name% ������ ������ �� ������ ��������� ����-���.
mechoaround %actor.name% %actor.iname% ������ ������ ����� ����-���.
mload obj 13215
~
#13204
�������� ���~
0 qt 100
~
wsend %actor.iname% _������� ������ ��� ���������� � ����� �������� �� ���� ����.
wechoaround %actor.iname% _������� ������ ��� ���������� � ����� �������� � ���� %actor.rname%.
~
#13205
����� ������ � �������~
2 c 0
������ ������� ����������� ��������~
if !%arg.contains(������)% 
  wsend %actor% _���� ��� �� ������ ���������?!
  return 0
  halt 
end
wsend %actor% _�� ��������� � �������� ������� � ������.
wechoaround %actor% _%actor.name% ��������%actor.q% � ����� � ������, ��� � ��� �� ������ ������ �� ����!
wteleport %actor% 13204
wsend %actor% _�� ������ � �������.
wechoaround %actor% _���-��, ����� ����� ������, ���� � �������. 
end
~
#13206
����� ������ �� �������~
2 c 0
������ ������� ����������~
if !%arg.contains(������)% 
  wsend %actor%  ���� ��� �� ������� ���������?!
  return 0
  halt 
end
wsend %actor% _�� ��������� � �������� ������� � ������.
wechoaround %actor% _%actor.name% ��������%actor.q% � ����� � ������, ��� � ��� �� ������ ������ �� ����!
wteleport %actor% 13200
wsend %actor%  �� ������� �� �������.
wechoaround %actor% _���-��, ����� ����� ������, ����� �� �������. 
end
~
#13207
��� � ������� ��������~
0 r 100
~
��� %actor.iname%
����� %actor.iname%
~
#13208
����� �������~
0 qt 100
~
� ���������
~
#13209
������� ������� ������ ���� ���~
0 f 100
~
msend %actor.name% ������ ������ �� ������ ��������� ������ ����-���.
mechoaround %actor.name% %actor.iname% ������ ������ ����� ������ ����-���.
mload obj 13204
~
#13210
������� ������� ������ ���� ���~
0 f 100
~
msend %actor.name% ������ ������ �� ������ ��������� ������ ����-���.
mechoaround %actor.name% %actor.iname% ������ ������ ����� ������ ����-���.
mload obj 13206
~
#13211
����� ��������~
0 r 100
~
� �� ������ ���������� ��� ?!
��� %actor.iname%
� �� ������ !!!
����� .%actor.iname%
calcuid for_mb 13206 mob
detach 13211 %for_mb.id%
~
#13212
������ ������ ���������� �������~
0 r 100
~
wait 1s
����
� ������ ���, � ������� � ������� ����.
wait 1s
� ��������� ���� � ��� � ����.
wait 1s
����
� ���� ������� � ��� �� �� ��������!
� ��� �� ������ ��� ��� � �� �����...
����
wait 1s
� ����� �, ������� ��� ����-���, �� ������ �����, � �����, ���� �� ��������!
wait 1s
� �������� ���, � ����� ����...
~
#13213
����� ���� �������~
0 r 100
~
wait 1s
� ��...
� ��� ��� !?
wait 1s
����
� �� ������� ������ ���������� ���� ?
wait 1s
�����
wait 1s
� � �� ������� ������ ������� ���� � ���� ?
� �� ����, � �� ���������, ��� ����� !!!
wait 1s
� ��� ����� ������ �����, �� ������, ��� �� ����� ����!
mload obj 13207
wait 1s
���� �����  %actor.name%
calcuid for_mb 13211 mob
detach 13213 %for_mb.id%
~
#13214
������� ������ �������~
0 j 100
~
if ((%object.vnum% != 13207) || (%actor.vnum% != -1))
  msend %actor% ��� ��� �� �����.
  return 0
  halt
end
wait 1
mpurge %object%
wait 3
emot �������� �������
waut 7
� �� ��� ������� ������� ����� !!!
� �� ����� ��� ?
wait 1s
� ��������, ������, ��� �� ��������� ��� ������ ?
� �� �� ���� ���� ��� �������.
���
wait 1s
� �� �� �����, ������ �� ��� ���������, � ������, ��� ��������.
wait 1s
� � �� ������ ����, �� ������, ��� ���, ��� ���� � ����. 
msend %actor% ������ ��� ��� ����� �����.
mechoaround %actor% ������ ��� ����� ����� %actor.dname%.
%actor.gold(+1300)%
~
#13215
�����~
2 f 100
~
calcuid deletetrig 13210 mob
attach 13200 %deletetrig.id%
calcuid deletetrig 13201 mob
attach 13203 %deletetrig.id%
calcuid deletetrig 13212 mob
attach 13209 %deletetrig.id%
calcuid deletetrig 13213 mob
attach 13210 %deletetrig.id%
calcuid deletetrig 13206 mob
attach 13211 %deletetrig.id%
calcuid deletetrig 13219 mob
attach 13212 %deletetrig.id%
attach 13214 %deletetrig.id%
calcuid deletetrig 13211 mob
attach 13213 %deletetrig.id%
~
#13216
� ����� �� ������~
2 c 100
��������~
if !%arg.contains(������)% 
  wsend %actor% _���� ��� �� �������� ������?!
  return 0
  halt 
end
wsend %actor% _������������ �� �������� � ����� �� ������.
wechoaround %actor% _%actor.name% ������%actor.q% � ����� �� ������.
wteleport %actor% 13289
wsend %actor% _�� �������� �� ������.
wechoaround %actor% _���-�� ������� �� ������. 
end
~
$~
