#20100
����� �����~
0 f 100
~
if (%world.curobjs(20100)% < 10) && (%random.10% <= 2)
  mload obj 20100
end
~
#20101
����� �����~
0 f 100
~
mload mob 20106
~
#20102
������� ��������~
0 nz 100
~
wait 10
mecho  ���������� ������� ������������ � �� ���
mecho  � ����������� �������� ��������� ��������� �������
wait 10
� �-�-�-� ! ������� ���� ������ ��������!
� ������� ���� �� ����, ��� �� � ������� �� ��������.
� � ���� ��� ����, ����� � � �������� ����� ������� ���
� ���������, ������� ������� ����� ����� ��� �����.
� �� �� ���� ������ �� ���� �� ������ �����-�� ����,
� �������� ��� ��� ����, � ����� ��� ��� ���� �� �����.
� ���� ��� �� ������ �������, ������ ���, ����� ����,
� � ������� �� ����������.
wait 10
� ��������� ��� ���� ?
~
#20103
��������� ���� ������~
0 m 100
~
wait 5
if %amount% < 50 then
  � ������� ?! �� �� ���� ���� ���������� ?
  � �� �� � ���� ������ �������� ����� �������,
  � ��� ���� �� ��������� !
  ��� %actor.name%
elseif %amount% < 100 then
  � ���...
  ���
  wait 10
  ���
else %amount% > 99 then
  ���
  � �����, ��� � ���� �������...
  ���
  wait 100
end
~
#20104
����� � ���������~
0 r 100
~
wait 1
if %direction% == west
  ���
  ��� %actor.name% ������ ! �� ��� ����� ������� ?
  ��� %actor.name% � �� ���� ������ ���� � ���� ��� ����� �� ��������� !
end
~
#20105
����� ������������~
0 f 100
~
if (%world.curobjs(20104)% < 10) && (%random.10% <= 2)
  mload obj 20104
end
~
#20106
������� �������~
0 d 100
��~
wait 1
if %memo_201% != 1 && %memo_201% != 2 then
  ���
  � ������, � ���� ����� ���� �����
  eval memo_201 1
  global memo_201
  wait 5
  ���
  wait 10
end
~
#20107
������� ���� ����~
0 j 100
~
if (%object.vnum% != 20103)
  say ������� �������... �� ����� ��� ��� �� �����.
  return 0
  halt
end
wait 1
mpurge %object%
wait 4
� � ��, ��� ������ ��, ��� ��� ����� !
� ������ ��� � ������ ����� ������ � �����,
� �� � ���� �� � ������� ������ ����� ����,
� � ������ ��� ���������� ��� ����� �� �����.
� ������ ���� �� ������, � ������� � ����� ����� 
� ������� ������, � ��� � ��� �����, ������ � ���� ������.
���� .%actor.name%
eval memo_201 2
global memo_201
wait 2s
� �� ! ������ �����... ����� ����� �� �����, ����� ��� ������.
~
#20108
������ �����~
0 f 100
~
mload mob 20105
~
#20109
���� ��������~
0 n 100
~
mload obj 20102
mecho ���������� � ������� �������� ������� ����.
mecho ����������� ������ �� ������ ����� �������:
mecho - ��� ���� ��� ������� ������ ?!!!
~
#20110
������ �������~
1 p 100
~
wait 1
�echo ������ �� ������� ��������, � ������ �������� ����������� ���.
�load mob 20122
~
#20111
������~
0 d 100
������~
if %memo_201% == 2 then
  wait 1
  if %self.realroom% == 20186 then
    mecho ������� ������� � �����, �������� ��� ���-��,
    mecho ����� � ����� ��������� � �������, ������ ���������� ����.
    mecho ��� ����� ������� ��������, �������������� �� ����� �����.
    mecho ������� ���� ��� � ���������.
    � ���... ��� �� ��� ���� ���� � ������� ?
    wait 20
    if %random.10%==1 then
      mload obj 20105
      ���� ���� %actor.name%
      � ��� ��� � ����� ����� ��������� �����.
    elseif (%random.10% > 8) && (%world.curobjs(211)% < 50)
      mload obj 211
      ���� ���� .%actor.name%
    else
      ���� 3000 ��� %actor.name%
      � ���-�� � ������� ������...
    end
    wait 5
    mecho ������� ����������� � ������ ������ � ����������� �����������.
    mpurge %self.id%
  else
    ������� ��������� �� ��������
    wait 5
    ���
    ��� %actor.name% ���, ��� ����� �� �����
    ��� %actor.name% ��� ��� ������� ������, ��� ���
    wait 5
    �����
  end
end
~
#20112
����� �������~
0 f 100
~
mload obj 20103
~
#20113
�������~
2 c 1
������� ������~
wait 1
if (%arg.contains(������)%)
  %send% %actor% �������� ������� ������, �� ������� �������.
  %echoaround% %actor% �������� ������� ������, %actor.name% ������%actor.g% �������.
  wdoor 20183 south purge
  wdoor 20183 south room 20174
else
  %send% %actor% ��� �� ������ �������?
  halt
end
~
#20114
����� �����������~
0 f 100
~
if (%world.curobjs(20107)% < 10) && (%random.10% <= 1)
  mload obj 20107
end
~
#20115
����� ���������~
0 f 100
~
if (%world.curobjs(20108)% < 10) && (%random.10% <= 1)
  mload obj 20108
end
~
#20116
����� �������~
0 f 100
~
if (%world.curobjs(20109)% < 10) && (%random.10% <= 1)
  mload obj 20109
end
~
$~
