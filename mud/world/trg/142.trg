#14200
���� ������~
0 n 100
~
if (%world.curobjs(14200)% < 10) && (%random.5% == 1)
  mload obj 14200
end
���� �����
if (%world.curobjs(14202)% < 10) && (%random.5% == 1)
  mload obj 14202
end
�� �����
~
#14201
���� ��������~
0 n 100
~
if (%world.curobjs(14201)% < 10) && (%random.5% == 1)
  mload obj 14201
end
�� �������
~
#14202
����� ������~
2 c 100
�����~
if !%actor.rentable%
  return 0
  halt
end
if !(%arg.contains(������)%) 
  wsend %actor% ���� ��� �� ������ �����???
  return 0
  halt
end
wsend %actor.name% _�� ������ �� �������.
wechoaround %actor% %actor.name% �����%actor.g% �� �������.
wait 3
wecho _����� ��������� � ������� � �������� ����.
wteleport all 14250
calcuid more 14250 room
attach 14203 %more.id%
exec 14203 %more.id%
detach 14202 %self.id%
end
~
#14203
�� ����~
2 z 100
~
wait 1s
wecho _�� � �������� ����, ����� �������!
wecho _� ����� ��� ����� � �����!
wteleport all 14251
calcuid more1 14251 room
attach 14204 %more1.id%
exec 14204 %more1.id%
detach 14203 %more.id%
end
~
#14204
����� �������~
2 z 100
~
wait 1s
wecho  ������� �� ������ ���� ������.
calcuid more2 14208 room
wteleport all 14208
attach 14205 %more2.id%
exec 14205 %more2.id%
detach 14203 %more1.id%
end
~
#14205
�� �������~
2 z 100
~
wait 1s
wecho �� ��������� �� ���� �������!
detach 14205 %more2.id%
calcuid message 14205 room
attach 14207 %message.id%
attach 14208 %message.id%
end
~
#14206
����� ����~
2 f 100
~
attach 14202 %self.id%
~
#14207
������� ����� �� ������ ����� ����������� �������~
2 c 100
�����~
if !(%arg.contains(������)%)
  wsend %actor% ���� ��� �� ������ �����???
  return 0
  halt
end
wait 5
wecho ����� ������� ��� ������...
~
#14208
����� ����~
2 f 100
~
calcuid message 14205 room
detach 14207 %message.id%
detach 14208 %message.id%
~
$~
