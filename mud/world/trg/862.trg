#86200
����� ������~
0 f 100
*~
mload obj 86123
~
#86201
��������� ���� �����~
0 k 75
~
if %random.3% == 1
  set target %random.pc%
  dg_cast '����' .%target.name%
end
~
#86202
������� ��������� ����~
0 k 70
~
if ((%random.3% == 1) && (%world.curmobs(86210)% < 4))
  mecho ��������� ������� ������� �� ������ ���� ����� 
  mecho - � ���������� ����� ��� ������ ��� � �����!
  mload mob 86210
  mforce ���.���� kill %random.pc%
end
~
#86203
����� ��� �����~
0 f 50
~
if (%world.curobjs(86207)% < 41)
  mload obj 86207
  mecho ����� ��� ����� ���������� �����, ��� ������� ������� � ��������!
  mecho ���� ����� �����������...
end
~
#86204
����� ��������� �������~
0 f 100
~
mload obj 86124
~
#86205
� ��� � ��������~
0 k 15
~
wait 1
foreach victim %self.char%
  emot �������� ������ ���� ������� � ������� �� ���, ���� ������� � ������!
  if (%random.100% < 60 )
    dg_cast '�����' %victim.name%
  end
done
if (%random.100% < 3 )
  detach 86205 %self.id%
end
~
#86206
����� ������ ���������~
0 f 100
~
if ((%random.100% < 25) && (%world.curobjs(555)% < 1 )) 
  mload obj 555
  *if ((%random.100% < 25) && (%world.curobjs(487)% <1 )) 
  *mload obj 487
end 
~
#86208
��������� �����~
2 c 1
���������~
wait 1
if !%arg.contains(�����)%
  %send% %actor% ��� �� ������ ���������?
  halt
end
%send% %actor% �� ������ ������� �����.
%echoaround% %actor% %actor.name% �����%actor.g% ������� �����.
%echo% ���������� ���� ������� - ������ ������ ����� �������.
wdoor 86265 east purge
wdoor 86265 east room 86133
wdoor 86265 east name ������
wdoor 86265 east description ������
wdoor 86265 east flags ab
detach 86208 %self.id%
~
#86209
����� ���� 862~
2 f 100
~
detach 86208 %self.id%
attach 86208 %self.id%
wdoor 86265 east purge
wdoor 86265 east room 86133
wdoor 86265 east name ������
wdoor 86265 east description ������
wdoor 86265 east flags abcd
~
#86210
���������������, ���~
1 c 3
��~
set command %cmd.mudcommand%
if ((%command% != ����) || %self.val1% < 1))
  return 0
  halt
end
if %actor.fighting%
  osend %actor% �� ����� ����������� � ���!
  halt
end
set name �������
set target %arg.words(1)%
if !%name.contains(%target%)%
  halt
end
%self.val2(2)%
*���� ���� ������-�� ��������� � ������ ����
return 0
set vol %self.val1%
wait 1
*oops - �������� ��� ������� � ������ ��� �� ����
if (%self.val1% >= %vol%)
  halt
end
if (%actor.hitp% < %actor.maxhitp%)
  eval heal 50+%random.50%
  eval hitp %actor.maxhitp%-%actor.hitp%
  if (%heal% <= %hitp%)
    set buf %actor.hitp(+%heal%)%
  else
    set buf %actor.hitp(+%hitp%)%
  end
  osend %actor% �� ������������� ���� ����������� �����.
end
~
$~
