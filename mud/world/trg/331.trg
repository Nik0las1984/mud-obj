#33100
� ��������� �������~
0 q 100
~
wait 1
say ������ ��� ��������?
wait 2s
calcuid russal 33119 mob
attach 33113 %russal.id%
attach 33114 %russal.id%
~
#33101
� ����� �����~
0 q 100
~
wait 1
����
say ������� ������!
wait 2s
say �� ��������� ���������� �������, ��� �� ������ ���....
wait 2s
say ������� �����-���������, ��� ����� ����������, ������������ �� ���� ���������..
wait 1s 
say ��� ��� �������! 
wait 1s
say ������ ����� ���, � � ���� �����������...
~
#33102
��� ������ �����~
0 j 100
~
wait 1
if %object.vnum% != 33105 
  drop %object.name%
  halt
end
wait 1
mpurge %object%
wait 2s
say �� ����� ����! �� ���� ������� ���! ��� �������!
wait 2s
if (%world.curobjs(33110)% < 5) && (%random.100% < 26)
  mecho ���� ����� �������� ������� ������ � ������ ������ ���������� ���.
  mload obj 33110
  wait 2s
  ��� ��� .%actor.name%
end
if (%world.curobjs(206)% < 50) && (%random.100% < 34)
  say ���� �������� ���������� ������� ��� ��� ����. ����� ���� ����������?  
  mecho ���� ������ �� ��� ������� ���� �����.
  mload obj 206
  wait 2s
  ��� ��� .%actor.name%
end
~
#33103
� �����������~
0 q 100
~
wait 1
say �-�, ��� ���� �������� ���������� �������....
wait 1s
say � ���� �����-�� ����� ���....
�����
wait 2s
say ���, � �����, ��� ����� � ���� �� ������. ����� ���� �������!
wait 1s
mecho _���������� ��������, �����������, � ���� ������ ������ ���� � ��������� �������
~
#33104
� ��� � ������~
0 q 100
~
wait 1
mecho _����� �������� ����, ������������� �� ����� �, ������� �����, �������� � ��� 
mkill %actor.name%
~
#33105
� ��� �� �������~
0 q 100
~
wait 1
mecho _����� ������ �������� � ������� ������� ������� � ����� ����������� �� ���
mkill %actor.name%
~
#33106
����� � ������ �����������~
0 r 100
~
wait 4s
mecho _����� ����������� ����� ��������� ��� ����� ����� ������� ������
~
#33107
����� �����~
0 f 100
~
if %world.curobjs(33105)% < 1
  mload obj 33105
end
if (%world.curobjs(33101)% < 2) && (%random.4% == 1)
  mload obj 33101
end
if (%world.curobjs(502)%==0) && (%random.4%==1)
  mload obj 502
end
~
#33108
�����  �.����~
0 f 100
0~
if (%world.curobjs(33100)% < 10) && (%random.2% == 1)
  mload obj 33100
end
~
#33109
�����  �.���������~
0 f 100
0~
if (%world.curobjs(33109)% < 10) && (%random.4% == 1)
  mload obj 33109
end
~
#33110
�����  �����.����~
0 f 100
0~
if (%world.curobjs(33103)% < 8) && (%random.4% == 1)
  mload obj 33103
end
~
#33111
����� �����.����~
0 f 100
0~
if (%world.curobjs(33104)% < 8) && (%random.5% == 1)
  wload obj 33104
end
~
#33112
����� �����~
0 f 100
0~
if (%world.curobjs(33102)% < 10) && (%random.2% == 1)
  mload obj 33102
end
~
#33113
������~
0 d 1
������~
if (%actor.vnum% != -1)
  halt
end
wait 1
say ��� �� �����!!!
wait 1s
msend       %actor% _������� ������������ �� ���, ����� ���������� � �����������.
mechoaround %actor% _������� ������������ ��  %actor.vname%, ����� ���������� � �����������.  
calcuid rusall 33119 mob
detach 33100 %rusall.id%
detach 33113 %rusall.id%
detach 33114 %rusall.id%
wait 1s
mecho _������� ������ ������ �� ��.
mpurge %rusall.id%
end
~
#33114
��������~
0 d 1
��������~
if (%actor.vnum% != -1)
  halt
end
wait 1
say �� �� ��� �����!!!
wait 1
mecho  _������� ���������� ���, ������� �� ����� � ������������ �� ���������..
calcuid rusalk 33119 mob
detach 33100 %rusalk.id%
detach 33113 %rusalk.id%
detach 33114 %rusalk.id%
wait 1s
mecho _������� ������ �� �����.
mecho  �� �������� ������������ ������!
mpurge %rusalk.id%
end
~
#33115
������ ������ � 33100~
2 f 100
~
calcuid rusal 33119 mob
attach 33100 %rusal.id%
~
#33116
������ � ���������~
2 e 100
~
wait 1s
wsend       %actor% ������ ����������� ��� ������� ��� ���� � �� �������� ��������.
wechoaround %actor% %actor.name% � ������ �����%actor.q% � ����������!!!
wait 1s
wsend %actor.name% .- �� �������� �� ��� ����.
wteleport %actor% 33102
wat 33102 wechoaround %actor% ���-�� ��� �������� ���� ��������!
~
#33117
�����  �����~
0 f 100
0~
mload obj 33111
~
#33118
�����  ��������~
0 f 100
0~
if (%world.curobjs(33112)% < 10) && (%random.10% <= 2)
  mload obj 33112
end
~
#33119
���� ��� �����~
2 e 100
~
eval temp %actor%
wait 1s
if (%actor.realroom% != %self.vnum%)
  halt
end
wsend       %temp.name% _���������� �� ��� ��������� ����� ����������� ����.
wechoaround %temp.name% _���������� �� %actor.vname% ���������� ����������� ����.
wechoaround %temp.name% _������ ������ � �������!
wdamage %temp.name% 75
~
#33120
���� ��� �� �������~
0 j 100
~
wait 1
mpurge %object%
wait 2
say �� ����� ��� ���???  ����, ������� ��� �����.
~
$~
