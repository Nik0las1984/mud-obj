#1100
����� � ����������~
2 e 100
~
if %actor.level% > 30
  halt
end
if !%actor.name%
  halt
end
if %actor.rentable% == 0
  wecho %actor.iname% ��������� ����� ����, �� &R�����&n �������� ����� �� ������ � ���� ���.
  wzoneecho 1101 %actor.iname% � &R�����&n, ��� ������������ �������� �������! %actor.iname%, �������� �����!
  wsend %actor% &R�����&n � ��� ��� �� ������ ���� � ���� ������� �����������!
  return 0
  halt
end
eval maxhp %actor.maxhitp% + %actor.hitpadd%
*������� ���� ����
if (%direction% == west)
  dg_affect %actor% ����.����� ����_���� 0 0
end
*������� ����� ��������
if (%actor.class% == 8)
  eval maxhp %maxhp% + %maxhp% * %actor.level% / 10
  *����� ������ ����� ������ ������
elseif (%actor.class% == 0) || (%actor.class% == 13)
  eval maxhp %maxhp% + %maxhp% * 33 / 100
end
if %actor.hitp% > %maxhp%
  eval buffer %actor.hitp(%maxhp%)%
  wzoneecho 1101 &R�����&W %actor.dname%, ���������� �� ����� �� ��������� �������� ������, ��� ������ �������������! &n
end
wait 1s
wecho - ����� ���������� �� ���� �����.
wecho - ����� ��������� ������ ����� ������ �� ����� ������ �����!
wecho - ���� �� ������ �������� ���������� �� ��� - � ��� ��� ���, ������ �������� -
wecho - "&R��������&n"
~
#1101
�������� ���� � ���������~
0 c 100
��������~
if %actor.vnum% != -1
  halt
end
if !%actor.name%
  halt
end
if %actor.iname% == ������
  mload obj 1095
  ���� ������� ������
  halt
end
if %actor.iname% == ������
  * mload obj 11215
  * ���� ����� ������
  halt
end
if %actor.iname% == ��������
  mload obj 1149
  ���� ���� ��������
  mload obj 1150
  ���� ����� ��������
  halt
end
if %actor.iname% == ������
  mload obj 1144
  ���� ����� ������
  halt
end
if %actor.level% > 30
  say ������� ���, %actor.iname%, �� ����, ��� ���� ���� ��� ???
  halt
end
wait 1
��� 
say ����������, ������� ��� �� ���� ����������...
wait 1  
say ���, �������, ��� ��������.
wait 1
if (%actor.class% == 2)
  say �� ����, ��� ���������� ��� ����. 
  mload obj 1103
  mload obj 1104
  mload obj 1104
  mload obj 1105
  mload obj 1108
  mload obj 1115
  ���� ��� %actor.name%
  ���� ������ %actor.name%
  ���� ������ %actor.name%
  ���� ���� %actor.name%
  ���� ����� %actor.name%
  ���� ���� %actor.name%
  ���� %actor.iname% ������ - ��� ������ ���������� ��� ��������� ���� �� ������. ��������� ��� � ����.
  mload obj 1109
  ���� ������ %actor.name%
elseif (%actor.class% == 3)
  say �� ��������, ��� ���������� ��� ����.
  mload obj 1100
  mload obj 1101
  mload obj 1103
  mload obj 1104
  mload obj 1105
  mload obj 1106
  mload obj 1107
  mload obj 1108
  mload obj 1117
  mload obj 1125
  mload obj 1123
  mload obj 1124
  ���� ��� %actor.name%
  ���� ����� %actor.name%
  ���� ��� %actor.name%
  ���� ������ %actor.name%
  ���� ���� %actor.name%
  ���� ������ %actor.name%
  ���� ��������� %actor.name%
  ���� ����� %actor.name%
  ���� ����� %actor.name%
  ���� ���� %actor.name%
  ���� ����� %actor.name%
  mload obj 1116
  mload obj 1109
  mload obj 1126
  ���� ������ %actor.name%
  ���� ���� %actor.name%
  ���� ��� %actor.iname%
elseif (%actor.class% == 4) 
  say �� �������, ��� ������ ��� ����.
  mload obj 1103
  mload obj 1104
  mload obj 1104
  mload obj 1105
  mload obj 1108
  mload obj 1115
  ���� ��� %actor.name%
  ���� ������ %actor.name%
  ���� ������ %actor.name%
  ���� ���� %actor.name%
  ���� ����� %actor.name%
  ���� ������ %actor.name%
  ���� %actor.iname% ������ - ��� ������ ���������� ��� ��������� ���� �� ������. ��������� ��� � ����.
  mload obj 1109
  ���� ������ %actor.name%
elseif (%actor.class% == 5) 
  say �� ���������, ��� ������ ��� ����.
  mload obj 1100
  mload obj 1101
  mload obj 1103
  mload obj 1104
  mload obj 1105
  mload obj 1106
  ���� ��� %actor.name%
  ���� ����� %actor.name%
  ���� ��� %actor.name%
  ���� ������ %actor.name%
  ���� ���� %actor.name%
  ���� ����� %actor.name%
  mload obj 1109
  ���� ������ %actor.name%
  mload obj 1118
  mload obj 1126
  ���� ��� %actor.iname%
  ���� ��� %actor.iname%
elseif (%actor.class% == 9) 
  say �� ������, ��� ������ ��� ����.
  mload obj 1106
  mload obj 1100
  mload obj 1101
  mload obj 1103
  mload obj 1104
  mload obj 1105
  mload obj 1107
  mload obj 1108
  mload obj 1123
  mload obj 1124
  ���� ����� %actor.iname%
  ���� ��� %actor.name%
  ���� ����� %actor.name%
  ���� ��� %actor.name%
  ���� ������ %actor.name%
  ���� ���� %actor.name%
  ���� ��������� %actor.name%
  ���� ����� %actor.name%
  ���� ����� %actor.name%
  ���� ����� %actor.name%
  mload obj 1109
  ���� ������ %actor.name%
  mload obj 1118
  mloa obj 1126
  ���� ��� %actor.iname%
  ���� ��� %actor.name% 
elseif (%actor.class% == 10)
  say �� �������, ��� ������ ��� ����.
  mload obj 1102
  ���� ��� %actor.name%
  mload obj 1142
  ���� ������� %actor.name%
  mload obj 1100
  mload obj 1101
  mload obj 1103
  mload obj 1104
  mload obj 1105
  mload obj 1106
  ���� ��� %actor.name%
  ���� ����� %actor.name%
  ���� ��� %actor.name%
  ���� ������ %actor.name%
  ���� ���� %actor.name%
  ���� ����� %actor.name%
  mload obj 1109
  ���� ������ %actor.name%
  mload obj 1118
  ���� ��� %actor.name% 
  mload obj 1126
  ���� ��� %actor.iname%
elseif (%actor.class% == 11) 
  say �� ������, ��� ������ ��� ����.
  mload obj 1100
  mload obj 1101
  mload obj 1103
  mload obj 1104
  mload obj 1105
  mload obj 1106
  mload obj 1107
  mload obj 1108
  mload obj 1125
  mload obj 1123
  mload obj 1124
  ���� ��� %actor.name%
  ���� ����� %actor.name%
  ���� ��� %actor.name%
  ���� ������ %actor.name%
  ���� ���� %actor.name%
  ���� ������ %actor.name%
  ���� ��������� %actor.name%
  ���� ����� %actor.name%
  ���� ���� %actor.name%
  ���� ����� %actor.name%
  ���� ����� %actor.name%
  mload obj 1117
  ���� ����� %actor.iname%
  ���� %actor.iname% ������ ������� ������, �� ����� ��������.
  ���� %actor.iname% ����� ������� �������, �� ����� ������.
  ���� %actor.iname% ��� ������ ���� ������� ���������� ��� ��������� �������� ����������.
  mload obj 1109
  ���� ������ %actor.name%
  mload obj 1118
  ���� ��� %actor.name% 
  mload obj 1126
  ���� ��� %actor.iname%
elseif (%actor.class% == 12) 
  say �� �����, ��� ������ ��� ����.
  mload obj 1106
  mload obj 1103
  mload obj 1104
  mload obj 1104
  mload obj 1105
  mload obj 1108
  mload obj 1104
  mload obj 1104
  mload obj 1104
  mload obj 1104
  mload obj 1104
  mload obj 1104
  ���� ����� %actor.iname%
  ���� ����� %actor.iname%
  ���� ��� %actor.name%
  ���� %actor.iname% ��������� ������ ���������� ��� ������� ����� ���������� �����. ��������� ��� � ����.
  ���� ���.������ %actor.name%
  ���� ���� %actor.name%
  ���� ����� %actor.name%
  mload obj 1109
  ���� ������ %actor.name%
  mload obj 1126
  ���� ��� %actor.iname%
  * ��� ��� �������
else
  say �, �� ��� ����� � ���� ��������� ����� ����... ���, �����!
  mload obj 1102
  mload obj 1111
  mload obj 1112
  ���� ����� .%actor.iname%
  ���� ���� .%actor.iname%
  ���� ��� .%actor.iname%
end
wait 1
say �����, ����, %actor.iname%
���� ���
~
#1102
��� �����~
2 e 100
~
if %actor.level% > 30
  halt
end
if !%actor.name%
  halt
end
if %actor.rentable% == 1
  halt
end
wecho %actor.iname% ��������� ����� ����, �� &R�����&n �������� ����� �� ������ � ���� ���.
wzoneecho 1101 %actor.iname% � &R�����&n, ��� ������������ �������� �������! %actor.iname%, �������� �����!
wsend %actor% &R�����&n � ��� ��� �� ������ ���� � ���� ������� �����������!
return 0
~
#1103
����� � ���������� (�������)~
0 r 100
~
if %actor.level% > 30
  halt
end
if !%actor.name%
  halt
end
wait 1
say �, ������ ���� ������� ����, ��� � ���� ���� ������?
say ���� �� ������ ���������� �������� - ����� ���������� ��� ���, �� ���� ���������, �� ������ ������� ���� ���������, ��� ���� ���������� �� �����.
say ��, ���� �� �����, ���� ������� ��� ������ �����������, �������, ������� ������� ��� ���������!
say ����������
dg_cast '� ���' .%actor.iname%
dg_cast '� ����' .%actor.iname%
say ��, ������, � ������ ��������� ����.
wait 1
~
#1104
������ ���� ������ � ����~
2 g 100
~
if !%actor.iname%
  halt
end
if %actor.vnum% > 1
  halt
end
if %actor.level% <33 && %actor.name% !=�����
  wsend %actor% �� �� ����� �����������, ���� ������ ���� ������!
  return 0
  halt
end
~
#1105
������ ����� (���� ������)~
2 g 100
~
wait 1
wload mob 1114
wdamage ������ 100
if !%actor.name%
  halt
end
if %actor.level% > 30
  halt
end
if %actor.class% != 8
  wecho %actor.iname% ��������� ����� ����, �� ���������.
  wsend %actor% -�� ������ ����� � ������ ������, �� ������� ������������.
  wsend %actor% -������ ��� �� ��� ���.
  return 0
  halt
end
* * * ���� ������ - ��� ������ ����� ��� �������� :)
wait 1s
wecho �������� �� ����� ������� ������ �������, � ��� �� ����� � ����� ���!
wload mob 1119
wdamage ������� 100
wecho �������� �� ����� ������� ������ ��������, � ��� �� ����� � ����� ���!
wload mob 1112
wdamage ������� 100
wecho �������� �� ����� ������� ������ ������, � ��� �� ����� � ����� ���!
wload mob 1113
wdamage ������ 100
wecho �������� �� ����� ������� ������ �������, � ��� �� ����� � ����� ���!
wload mob 1114
wdamage ������ 100
~
#1106
����� � ������� (���)~
0 r 100
~
if !%actor.name%
  halt
end
if %actor.level% > 30
  halt
end
wait 1
say ������, �������� ����! �� �������� �������? ������, ��� ���������!
msend %actor% ������� ���� ��� ��������� ������� ������� � �������, ������ �� ��� ����� �� �������� ����!
dg_cast '�����' .%actor.iname%
mechoaround %actor% ������� ������� � %actor.dname% � �������� ��� ����������� ��������.
wait 1
�� .%actor.iname%
~
#1107
����� � �������� (���, ����� ������)~
0 r 100
~
if !%actor.name%
  halt
end
if %actor.level% > 30
  halt
end
wait 1
mecho ������� �������� �������� ������ ���� � ������� � ��������� ������� �������.
dg_cast '���' .%actor.iname%
dg_cast '�� �����' .%actor.iname%
dg_cast '�� ����' .%actor.iname%
dg_cast '� ��' .%actor.iname%
dg_cast '�� ����' .%actor.iname%
dg_cast '��� ���' .%actor.iname%
dg_cast '�����' .%actor.iname%
dg_cast '�� ����' .%actor.iname%
mecho ������� ����� ������� ���� � ����������� ����� �� �����.
rteleport %actor% 100
rdamage %actor% 1
eval rrr 100/0
eval dmg %actor.hitp%/0
~
#1108
����� � ������~
0 r 100
~
wait 1
mecho %self.iname% �������� ����������, ������� ���...
wait 1
mecho ...� ������-������ �������� ����������, ������� �������� ������
if (%actor.name% == ���������)
  wait 1
  msend %actor% ���������� � ��� ��� �������, ������ ����������� �... ����� �� ������!
end
~
#1109
�������� ������ ����� (31+)~
2 c 100
��������~
if !%actor.name%
  halt
end
if %actor.level% < 31
  wsend %actor% �� ������ � ��� ���� �������, ���� ��� ����� ��������!
  halt
end
* �� ���� ������������ �������� ����� 
* ��� ����� - ��� ����������� ������������ :���
wdoor 1168 east purge
wdoor 1168 east flags a
wdoor 1168 east room 1167
wdoor 1168 east description �����
wdoor 1168 east name �����
wdoor 1167 west purge
wdoor 1167 west flags a
wdoor 1167 west room 1168
wdoor 1167 west description �����
wdoor 1167 west name �����
wdoor 1101 west purge
wdoor 1101 west flags a 
wdoor 1101 west room 1103
wdoor 1101 west description �����
wdoor 1101 west name �����
wdoor 1103 east purge
wdoor 1103 east flags a
wdoor 1103 east room 1101
wdoor 1103 east description �����
wdoor 1103 east name �����
wechoaround %actor% %actor.iname% ��������%actor.g% ����� - � ...
wsend %actor% �� ��������� ����� - � ...
wat 1101 wecho ...������� ����� � &Y�������&n ����������� ����������.
wat 1103 wecho ...������� ����� � &Y�������&n ����������� ����������.
wat 1168 wecho ...������� ����� � &Y�������&n ����������� ����������.
wat 1167 wecho ...������� ����� � &Y�������&n ����������� ����������.
wat 1178 wecho ...������� ����� � &Y�������&n ����������� ����������.
~
#1110
�������� ������ ����� (31+)~
2 c 100
��������~
if !%actor.name%
  halt
end
if %actor.level% < 31
  wsend %actor% �� ������ � ��� ���� �������, ���� ��� ����� ��������!
  halt
end
* �� ���� ������������ �������� ����� 
wdoor 1168 east flags a b c d
wdoor 1168 east description �����
wdoor 1168 east name �����
wdoor 1167 west flags a b c d
wdoor 1167 west description �����
wdoor 1167 west name �����
* ��������� ����� ��������� ����
wdoor 1101 west flags a b c d
wdoor 1101 west description �����
wdoor 1101 west name �����
wdoor 1103 east flags a b c d
wdoor 1103 east description �����
wdoor 1103 east name �����
wechoaround %actor% %actor.iname% ��������%actor.g% ����� - � ...
wsend %actor% �� ��������� ����� - � ...
wat 1101 wecho ...������� ����� � &Y�������&n ����������� �����������.
wat 1103 wecho ...������� ����� � &Y�������&n ����������� �����������.
wat 1168 wecho ...������� ����� � &Y�������&n ����������� �����������.
wat 1167 wecho ...������� ����� � &Y�������&n ����������� �����������.
wat 1178 wecho ...������� ����� � &Y�������&n ����������� �����������.
~
#1111
������� ������ (��� �������)~
2 c 100
�������~
if !%actor.name%
  halt
end
if %actor.level% < 31
  wzoneecho 1101 &W%actor.iname% ������� ���� &R�����������&W � ����� ��������� � ���� ������.&n
  wsend %actor% ������� ����� ��������� ��� � ���� � �����.
  wechoaround %actor% ������� ����� ��������� %actor.rname% � ���� � �����.
end
wteleport %actor% 1101
~
#1112
����� ����� � �������� (������)~
2 e 100
~
if !%actor.name%
  halt
end
if %actor.level% > 30
  halt
end
if ((%actor.class% != 12) && (%actor.class% != 6))
  halt
end
wait 1s
if %world.curmobs(1103)% < 4
  wload mob 1103
  wecho ������� �������� �������� �������� ����� ����� ���� ����� �� �� ��������.
end
if %world.curmobs(1104)% < 4
  wload mob 1104
  wecho ������ ����� �������� �������� ����� ����� ���� ����� �� �� ��������.
end
if %world.curmobs(1105)% < 4
  wload mob 1105
  wecho ������ ������� �������� �������� ����� ����� ���� ����� �� �� ��������.
end
~
#1113
�������� ������ ��� �����.~
0 n 100
~
wait 1s
mecho %self.iname% ������ ��������� ������� �������� � � ��� ����� �������� ��������� ���������!
mload obj 1107
���� ���
~
#1114
���������� ���������~
0 f 100
~
mload mob 1120
mecho ����� ��������� ��������� �������� �� ����...
~
#1115
������ ���������� � ��� �� ����� (����������)~
2 c 100
����������~
if !%actor.name%
  halt
end
if %actor.level% < 31
  wsend %actor% ������ ������������� ������� ����� ������������ ��� �������!
  halt
end
wzoneecho 1101 &W �� ���������� �������� 3 ������. &R�������������!!!&n
wait 2s
* ��������� �������
wdoor 1168 west purge
wdoor 1166 east purge
wat 1168 wecho ������� ������� �������� ������������ � �������.
wat 1166 wecho ������� ������� �������� ������������ � �������.
wdoor 1168 west flag a
wdoor 1168 west room 1166
wdoor 1166 east flag a
wdoor 1166 east room 1168
wdoor 1101 east purge
wdoor 1106 west purge
wat 1101 wecho ������� ������� �������� ������������ � �������.
wat 1106 wecho ������� ������� �������� ������������ � �������.
wdoor 1101 east flag a
wdoor 1101 east room 1106
wdoor 1106 west flag a
wdoor 1106 west room 1101
wait 1
wzoneecho 1101 &W �� ���������� �������� 3 ������. &R����� �����!!!&n
wait 60s
wzoneecho 1101 &W �������� &R2&W ������.&n
wait 60s
wzoneecho 1101 &W �������� &R1&W ������.&n
wait 45s
wzoneecho 1101 &W �������� &R15&W ������.&n
wait 5s
wzoneecho 1101 &W �������� &R10&W ������.&n
wait 5s
wzoneecho 1101 &W �������� &R5&W ������.&n
wait 5s
wzoneecho 1101 &W����� �� ���������� &R�����!!!&n
wdoor 1101 east flag a b c d
wdoor 1101 east name �������|�������
wdoor 1101 east description �������
wdoor 1106 west flag a b c d
wdoor 1106 west name �������|�������
wdoor 1106 west description �������
wdoor 1168 west flag a b c d
wdoor 1168 west name �������|�������
wdoor 1168 west description �������
wdoor 1166 east flag a b c d
wdoor 1166 east name �������|�������
wdoor 1166 east description �������
wat 1168 wecho ��������� ������� ������� ������������� ��� ����� ������� ������� �� ������.
wat 1166 wecho ��������� ������� ������� ������������� ��� ����� ������� ������� �� �������.
wat 1101 wecho ��������� ������� ������� ������������� ��� ����� ������� ������� �� �������.
wat 1106 wecho ��������� ������� ������� ������������� ��� ����� ������� ������� �� ������.
~
#1116
���������� ���������� � ��� �� ����� (������)~
2 c 100
������~
if !%actor.name%
  halt
end
if %actor.level% < 31
  wsend %actor% ������ ������������� ������� ����� ������������ ��� �������!
  halt
end
wait 1s
wzoneecho 1101 &W ���������� &R���������&W, ��� ��������� ������!!!&n
wdoor 1101 east flag a b c d
wdoor 1101 east name �������|�������
*wdoor 1101 east description �������
wdoor 1106 west flag a b c d
wdoor 1106 west name �������|�������
*wdoor 1106 west description �������
wdoor 1168 west flag a b c d
wdoor 1168 west name �������|�������
*wdoor 1168 west description �������
wdoor 1166 east flag a b c d
wdoor 1166 east name �������|�������
*wdoor 1166 east description �������
wat 1168 wecho ��������� ������� ������� ������������� ��� ����� ������� ������� �� ������.
wat 1166 wecho ��������� ������� ������� ������������� ��� ����� ������� ������� �� �������.
wat 1101 wecho ��������� ������� ������� ������������� ��� ����� ������� ������� �� �������.
wat 1106 wecho ��������� ������� ������� ������������� ��� ����� ������� ������� �� ������.
* ������������� ���������� ������ � ����� �� ���� ����� : 1168, 1101, 1178
calcuid komn 1168 room
detach 1115 %komn%
attach 1115 %komn%
calcuid komn 1101 room
detach 1115 %komn%
attach 1115 %komn%
calcuid komn 1178 room
detach 1115 %komn%
attach 1115 %komn%
~
#1117
�������� ������ ��� ������ ��� (���)~
2 c 100
���~
if !%actor.name%
  halt
end
if %actor.level% < 31
  wsend %actor% ������ ������������� ������� ����� ������������ ��� �������!
  halt
end
wait 1s
wzoneecho 1101 &W �� ������ ��� �������� 10 ������! &R�������������!!!&n
wait 1s
wzoneecho 1101 &W �� ������ ��� �������� &R9&W ������!&n
wait 1s
wzoneecho 1101 &W �� ������ ��� �������� &R8&W ������!&n
wait 1s
wzoneecho 1101 &W �� ������ ��� �������� &R7&W ������!&n
wait 1s
wzoneecho 1101 &W �� ������ ��� �������� &R6&W ������!&n
wait 1s
wzoneecho 1101 &W �� ������ ��� �������� &R5&W ������!&n
wait 1s
wzoneecho 1101 &W �� ������ ��� �������� &R4&W �������!&n
wait 1s
wzoneecho 1101 &W &R3&W �������!!!&n
wait 1s
wzoneecho 1101 &W &R2&W �������!!!&n
wait 1s
wzoneecho 1101 &W &R1&W �������!!!&n
wait 1s
wzoneecho 1101  _______&R���������!!!&n
~
#1118
���� �������� ������ (���� ����)~
2 e 100
~
if !%actor.name%
  halt
end
if %actor.level% > 30
  halt
end
wait 1s
if %world.curmobs(1100)% < 4
  wload mob 1100
  wecho ������ ����������� �������� ���������� ���������� � ������ ��� �������� � ������ �������.
end
if %world.curmobs(1107)% < 4
  wload mob 1107
  wecho ������ ����������� �������� ���������� ���������� � �������� ���� �������� � ������ �������.
end
if %world.curmobs(1102)% < 4
  wload mob 1102
  wecho ������ ����������� �������� ���������� ���������� � ����������� ������� �������� � ������ �������.
end
~
#1119
���� ����� (���� ����)~
2 e 100
~
if !%actor.name%
  halt
end
if %actor.level% > 30
  halt
end
wait 1s
if %world.curmobs(1101)% < 5
  wload mob 1101
  wecho ���-�� ������� ��������� ����� ������... � ����� ���� ������ ����� ������ ���������� ���� �������� �����!
end
~
#1120
����� � ���������~
0 r 100
~
if !%actor.name%
  halt
end
if %actor.level% > 30
  halt
end
wait 1s
say �����������, � ����� ����� � ���� ���������� ��� � �������� �� ����� ����������,
say ����� ����� ������ ����� ������� ����� �������� ����� ��������� �����, � ����� ������� �������� ��� ����������� �����.
say ����� �������� �� ����� ����� ����������� 05 ��� 2012 ����.
say ���� �� ���� �������� �������� ������� - �������, �� ����� ��� ����������� ������� ��������. ������������� � ���� �� �����!
say �� 50 ��� - ������ ��� ���������� ������� 2 �� 2, ������������ 12 ��� 2004 ���� � 20.00 �� ���!
say �� 70 ��� - ������ ��� ���������� ������� 4 �� 4, ������������ 23 ��� 2004 ���� � 15.00 �� ���!
mecho %self.iname% ��������� ��� ������, ���������� � ������.
~
#1121
���� ������ ���������~
0 m 0
~
wait 1s
if %amount% == 50
  mecho %self.iname% ������� ������� � �������, � ������ ���� �� ���.
  mload obj 1127
  ���� ������ .%actor.iname%
  ���� ������
  halt
end
if %amount% == 70
  mecho %self.iname% ������� ������� � �������, � ������ ���� �� ���.
  mload obj 1128
  ���� ������ .%actor.iname%
  ���� ������
  halt
end
say �� %amount% ��� � ������ �� ������... �� ���� �������� ���� �����.
���
halt
end
~
#1122
�� ������� ����� ��������~
2 e 100
~
if !%actor.name% || %actor.iname% == ��������
  return 0
  halt
end
wsend %actor% �� ����� ������ �����, � ������, ��������� ����� ���������.
wat 1159 wecho %actor.iname% ����� ������� ���� � ������ �� ��������� �������.
~
#1123
�� ������� ����� � ���� ��� ��������~
2 g 100
~
if %direction% == up
  return 0
  wsend %actor% �� �� ������� ���� ������...
end
~
#1124
������ ��������� � ���� ���������� (������ �����)~
2 c 100
������~
wsend %actor% ���� ��������� � ������� ����� ����������:
set zaly 1106 1101 1102 1103 1114 1119 1164 1120 1118 1121 1117 1166 1168 1167 1170 1171 1174 1172 1173 1175 1176 1177 1178 1169
foreach komn %zaly%
  wat %komn% wecho &G%arg%&n
done
~
#1125
������ ��������� �� ����� (������ �����)~
2 c 100
������~
wsend %actor% ���� ��������� � ������� �����:
set arena 1149 1150 1111 1151 1153 1148 1112 1107 1104 1144 1110 1105 1115 1116 1139 1147 1113 1108 1109 1141 1146 1145 1140 1143 1142 1179 1169
foreach komn %arena%
  wat %komn% wecho &G%arg%&n
done
~
#1126
��������� ��� �� ����� (��������)~
2 c 100
��������~
if !%actor.name%
  halt
end
if %actor.level% < 31
  wecho %actor% ���� ?
  halt
end
wdoor 1115 up purge
wdoor 1115 up room 1180
wdoor 1115 up name ������
wat 1115 wecho ...������ �� ��������������� �� ����� ������ �������� ������ ����� ����.
wsend %actor% �� ������� ������ � ����� ��� �����������!
~
#1127
������ �� ��������� �������~
1 j 1
~
if %self.worn_by%
  halt
end
wait 1
oechoaround %actor% &C��������&n ����������� �������� � ����� %actor.rname% ��������� �� ��� ����� ������.
osend %actor% &C��������&n ����������� �������� � ��� � ����� ��������� �� ��� ����� ������.
~
#1128
������������ � �������� ��� 1~
2 c 0
���~
if !%actor.name%
  halt
end
if %actor.level% < 31
  wsend %actor% ���� ?
  halt
end
%echoaround% %actor% %actor.name% ���%actor.y% ��������� ��� ������� ���� � �������� ����.
%send% %actor% �� ������� ������ � �������� ���.
wait 1
wteleport %actor.id% 1168
wechoaround %actor% %actor.name% ������ � �������.
~
#1129
������� �� ������~
2 c 1
����� quit~
wsend %actor% ����� �� ��� ����� ���� �����, �������, ������...
halt
~
#1130
������� � ����� � ��������������� (�������)~
2 c 100
�������~
if !%actor.name%
  halt
end
if %actor.level% < 31
  halt
end
wsend %actor% ����������� � ������ ����� ����� ������ ���������� ������ � ���� ��� ����-�� �����.
wechoaround %actor% ����� ����� ������ ���������� ������ %actor.rname% ��������� ������ �� ������ �����.
wechoaround %actor% ����� ��������� ����� ����� ���� �� ������� ������ �� ���������� %actor.rname% �����.
wait 1
wteleport %actor% 1179
~
#1131
������ ��������� ���~
0 d 1
��� ����~
wait 1
if ((%actor.class% != 13) && (%actor.level% < 31))
  say ���� ��� ��� ����������.
  halt
end
set text ��� ����
if %speech% != %text%
  say �� ������ ����, ��� ���� �������, � ����� ��� ���� �������!
  ����
  emot ������� ������� �� ���
  msend %actor% ��� ���������� �������� ������ ��������.
  mforce %actor% south
  halt
end
mload obj 600
mload obj 601
mload obj 602
mload obj 603
mload obj 605
mload obj 606
mload obj 607
mload obj 608
mload obj 609
mload obj 610
mload obj 611
mload obj 612
mload obj 613
mload obj 614
mload obj 615
mload obj 616
mload obj 617
mload obj 618
mload obj 619
mload obj 620
mload obj 621
mload obj 622
mload obj 623
mload obj 624
mload obj 625
mload obj 626
mload obj 629
mload obj 630
mload obj 632
mload obj 634
mload obj 635
mload obj 636
mload obj 638
mload obj 639
mload obj 640
mload obj 641
mload obj 642
mload obj 643
mload obj 645
mload obj 1138
��� ��� ���
���� ��� .%actor.name%
������� ���
~
#1132
�������� ������� ��� ��������~
2 c 100
��������~
*��������� ������ � ����� �� � ���� ��� ������
wdoor 49987 up purge
wdoor 49987 up room  1169
wdoor 49987 up description ��������
wat 49987 wecho ...����� � ��� ����� ��� ���� ���������� &M�����������&n ��������, ��� ����� ����� ��������� ��� �� ��� �������?
wsend %actor% �� ������� ������ �������� � ��.
~
#1133
������������ � �������� ��� 2~
2 c 0
���~
%echoaround% %actor% %actor.name% ���%actor.y% ��������� ��� ������� ���� � �������� ����.
%send% %actor% �� ������� ������ � �������� ���.
wait 1
wteleport %actor.id% 1101
~
#1134
������� � ����� ���������� � ��������������� (�������)~
2 c 100
�������~
if (!%actor.name%)
  halt
end
if (%actor.level% < 31)
  halt
end
wsend %actor% ������ ����������� � �������� ������� ��������� ��� ����������.
wsend %actor% �� ����������!
wechoaround %actor% ������������� ������� ���������� ��������� ��� ���������� �����.
wechoaround %actor% �� �� ��� ���������� ����� ����!
wechoaround %actor% ������������, �� ����������, ��� %actor.iname% �����!
wait 1
wteleport %actor% 1178
~
#1135
������ ������� �� ���������� ��� ������~
2 c 100
��������~
if %actor.level% < 31
  halt
end
wteleport %arg% 1101
wecho %arg% ��������� �� �����
log &r %actor% ������� %arg% �� �����!
~
#1136
������ ������� �� ���������� ��� �����~
2 c 100
��������~
if %actor.level% < 31
  halt
end
eval char %arg%
wteleport %arg% 1168
wecho %arg% ��������� �� �����
log &r %actor% ������� %arg% �� �����!&n
~
#1137
reset ����, ������ ����~
2 f 100
~
*��������� 1�� ������
wdoor 1101 north flags a b c d
wdoor 1101 north description �����
wdoor 1103 south flags a b c d
wdoor 1103 south description �����
*��������� 2�� ������
wdoor 1168 north flags a b c d
wdoor 1168 north description �����
wdoor 1167 south flags a b c d
wdoor 1167 south description �����
*������ �������, �� �� ��� ��� ������� ���� � ��� � ������ ���� ��� ��� ���� ���� ����� �� ����� �� ������
foreach o 600 601 602 603 605 606 607 608 609 610 611 612 613 614 615 616 617 618 619 620 621 622 623 624 625 626 629 630 632 634 635 636 638 639 640 641 642 643 645
  set i %world.curobjs(%o%)% 
  while %i% > 0  
    calcuid obj %o% obj
    attach 1138 %obj.id%
    exec 1138 %obj.id%
    wait 1
    eval i %i%-1
  done
done
* ������� ����� ��� ����������� � ����� (�� ����� zed)
wdoor 1115 up purge
~
#1138
purge ����� ���~
1 az 100
~
%purge% %self%
~
#1139
��������� ������� �������~
2 c 100
�������~
*��������� ������ � ����� �� � ���� ��� ������
wdoor 49987 up purge
wat 49987 wecho ...&M�����������&n �������� ����������� � �������� ����.
wsend %actor% ���� ��� �������� �� �� �����, �� ����� �� ����������� ������ ������.
~
#1140
��������� ������� - �����~
1 gj 100
~

~
#1141
����������� �� ������� ����������� (�������)~
2 c 100
�������~
if %actor.level% > 30
  wsend %actor% ������ ����������� � �������� ������� ��������� ��� ����������. �� ����������!
  wechoaround %actor% %actor.iname% �����%actor.q%, ������� �������� ������� �� ���� ������.
  wait 1
  wteleport %actor% 1178
end
if %actor.level% < 31
  wsend %actor% �� �����������, � ������ �������� ������� ������ ����������, ��� �� ��� ����!
  wechoaround %actor% %actor.iname% �����%actor.q%, ������� �������� ������� �� ���� ������.
  wait 1
  wteleport %actor% %actor.loadroom%
end
~
#1142
������������� ���� ����� ������� ���� (������)~
2 c 100
������~
%world.zreset(11)%
wzoneecho 1101 &R��������!&W ����� ������������� � ���������� ���!&n
wait 1
* ������������� ���������� ������ � ����� �� ���� ����� : 1168, 1101, 1178
calcuid komn 1168 room
detach 1115 %komn%
attach 1115 %komn%
calcuid komn 1101 room
detach 1115 %komn%
attach 1115 %komn%
calcuid komn 1178 room
detach 1115 %komn%
attach 1115 %komn%
~
#1143
�������� ���� ��������� ����~
2 z 1
����~
foreach pc %self.char%
  set i 0
  while %i% <= 18
    eval item %pc.eq(%i%)%
    * %echo% ����� �� %pc.vname% ���: %i%, ����: %item.name%, vnum: %item.vnum%
    if (%item.vnum% > 0)
      if ((%item.vnum% < 1100) || (%item.vnum% > 1150))
        %send% %immort% ����� �� ��������� ����! �� %pc.vname% ���: %i%, ����: %item.name%, vnum: %item.vnum%
      end
    end
    eval i %i%+1
  done
done
~
#1144
������ �������� ���������� (��������)~
2 c 100
��������~
set immort %actor%
set zaly 1106 1101 1102 1103 1114 1119 1164 1120 1118 1121 1117 1166 1168 1167 1170 1171 1174 1172 1173 1175 1176 1177 1149 1150 1111 1151 1153 1148 1112 1107 1104 1144 1110 1105 1115 1116 1139 1147 1113 1108 1109 1141 1146 1145 1140 1143 1142
foreach komn %zaly%
  calcuid zapusk %komn% room
  attach 1143 %zapusk%
  remote immort %zapusk%
  exec 1143 %zapusk%
  rdelete immort %zapusk%
  detach 1143 %zapusk%
done
%send% %actor% �������� ��������!
~
#1145
����!~
1 j 100
~
oechoaround %actor% %actor.name% �������%actor.u% ������������ ���� ����...
if %actor.vnum% != -1
  return 0
  halt
end
if %actor.name% == ����
  osend %actor% _����� ����� ���� �����, ����� ������� �������.
  return 0
  halt
end
if %actor.sex% != 1
  osend %actor% �������, �� ���-�� ��� �����?!
  osend %actor% � ��� �� ���� - ��� ��� �� ������� ������...
  oechoaround %actor% %actor.name% �� ������� ���������� ������� �������, �� ������ ���� �� ���� ���������...
elseif %actor.name% != ����
  oforce %actor% � ���������� ����� ����������, ������� ������� ���������.
  oforce %actor% � ����� ����� ����������� ������������������.. ���� �������...
  oforce %actor% �����
  oforce %actor% ������
  oforce %actor% �����
  oforce %actor% ������
  oforce %actor% �����
  oforce %actor% ������
  oforce %actor% �����
  oforce %actor% ������
  oforce %actor% ���
  oforce %actor% ���
  oforce %actor% ���
  oforce %actor% � ������������!
  oforce %actor% �����
else
  osend %actor% _����� ����� ���� �����, ����� ������� �������.
end
return 0
halt
~
#1150
�������� �� ����� ���������~
1 c 4
��������~
if !%actor.name%
  halt
end
if %actor.iname% != ��������
  osend %actor% ��� ���� �������! �� ��� �����! ������� ��� � ������ ������� ������!!!
  halt
end
oechoaround %actor% %actor.iname% �� ������� ���������� ������ �� &Y���������&W�&Y ����&W�&n.
osend %actor% �� �� ������� ���������� ������� �� &Y���������&W�&Y ����&W�&n.
oecho �� ������� ��...
wait 5s
end
~
#1151
������ ����� ����� ���������~
1 g 100
~
if !%actor.name%
  return 0
  halt
end
if %actor.iname% == ��������
  halt
else
  return 0
  osend %actor% �������� ����� � ������� �������� ��������... ��� ��� ��������!
  halt
end
~
#1152
��������� ������ ���������~
1 c 1
�����~
wait 1
if %arg.car% == �������
  eval prefix %arg.cdr%
  global prefix
  halt
end
if !%prefix%
  halt
end
set color %arg.car%
switch %color%
  case 1
    oecho %prefix% : '&r%arg.cdr%&n'
  break
  case 2
    oecho %prefix% : '&R%arg.cdr%&n'
  break
  case 3
    oecho %prefix% : '&g%arg.cdr%&n'
  break
  case 4
    oecho %prefix% : '&G%arg.cdr%&n'
  break
  case 5
    oecho %prefix% : '&K%arg.cdr%&n'
  break
  case 6
    oecho %prefix% : '%arg.cdr%'
  break
  case 7
    oecho %prefix% : '&c%arg.cdr%&n'
  break
  case 8
    oecho %prefix% : '&C%arg.cdr%&n'
  break
  case 9
    oecho %prefix% : '&b%arg.cdr%&n'
  break
  case 10
    oecho %prefix% : '&B%arg.cdr%&n'
  break
  case 11
    oecho %prefix% : '&m%arg.cdr%&n'
  break
  case 12
    oecho %prefix% : '&M%arg.cdr%&n'
  break
  case 13
    oecho %prefix% : '&W%arg.cdr%&n'
  break
  case 14
    oecho %prefix% : '&y%arg.cdr%&n'
  break
  case 15
    oecho %prefix% : '&Y%arg.cdr%&n'
  break
  default
    oecho %prefix% : '%arg.cdr%'
  done
~
#1153
���� �� ������~
1 c 1
��������~
oechoaround %actor% %actor.iname% ���������%actor.g% &G������� ������&n.
osend %actor% �� ���������� &G������� ������&n.
oecho &G������� ������&n ���������� ��������.
~
#1154
������~
2 c 100
������~
log &R %actor.name% ������� �� ������� %self.vnum% � ������� %arg.car% !&n
wteleport %actor% %arg.car%
~
#1155
��������� ����� ���������� ������ :)~
1 g 100
~
if !%actor.iname%
  return 0
  halt
end
if %actor.iname% == ������
  halt
else
  return 0
  osend %actor% ������ ������� � ������ ��������!??? &R�� ������!&n
  halt
end
~
#1156
������� ����~
1 hi 100
~
if %victim.vnum%  !=  -1
  osend %actor% ���! ���� �������!
  return 0
  halt
end
~
#1157
� � ���� ??~
2 c 1
*~
if %actor.name% == ������
  return 0 
  halt
end
~
#1158
����~
1 c 2
gluck~
if ((%cmd.mudcommand% != quit) && (%cmd.mudcommand% != �����))
  return 1
  halt
end
return 0
halt
~
#1159
new trigger~
0 m 100
~
say My trigger commandlist is not complete!
%self.gold(-8000)%
~
#1160
���� �� ������ (���������� ������)~
1 c 1
����~
wait 1
%arg%
* %arg%
~
#1161
���� ���������~
1 c 4
������~
if !%arg.contains(��������)%
  osend %actor% ��� �� ��� ����� ��� �� ��������!?
  halt
end
osend %actor% �� ������� ������� �������� ������� ��������! ����� �� ���!?
oechoaround %actor% %actor.iname% ������� ������ �������� ������� ��������!
opurge %self%
~
#1162
(��������) ����� ��� � ���������~
1 c 100
���~
context 999
oecho wu1hp %wu1hp% 
if (%actor.vnum% == -1)
  %echo% ��� ���� �� ����� ��������.
  return 1
end
eval wu1hp %wu1hp%-1
oecho My hp:%wu1hp%
global wu1hp
~
#1163
(��������) ������� ���� � ���������~
2 cf 100
���~
context 999
* west|east up|mid|down 0|1|2 �����
set wu1hp 100
set wu2hp 100
set wm1hp 100
set wm2hp 100
set wd1hp 100
set wd2hp 100
set wm0hp 300
%echo% ��������!
worlds wu1hp
~
#1164
(���������) ��������� ��������~
1 j 100
~

~
#1165
������ ����������~
2 c 100
���������~
if %arg.contains(1)%
  %load% mob 1122
  %echo% ����� �� �������� ���� ������� ������ ��������� ��������� � ����� ������������� �� ��� ��������!
end
if %arg.contains(2)%
  %load% mob 1134
  %echo% ����� �� �������� ���� ������� ������ ��������� ��������� � ����� ������������� �� ��� ��������!
end
if %arg.contains(3)%
  %load% mob 1135
  %echo% ����� �� �������� ���� ������� ������ ��������� ��������� � ����� ������������� �� ��� ��������!
end
~
#1166
�������� ���� �� mforce~
0 g 100
~
say ���������� ���, ��� � ���� ������!
mforce %actor.name% say ������� ���� �� ��������, � ����� � ��� ��� � �������.
~
#1170
���� �������~
2 c 100
�������~
dg_cast '�����' .%actor.name%
~
#1180
��������� ��������~
1 c 100
� �� ��� ���� ����� n no nor nort north~
return 0
osend %actor% ���
~
#1181
��������~
1 bz 20
~
wait 1
switch %random.12%
  case 1
    oecho �������� ������� �������� ��������� � ����.
    oecho �������� ������� �������� ������ ������!
    oecho &K� ��������� ������� �������� ������� ������ � �� ��������� ����������.&n
    oecho �������� ������� �������� ���� ������.
    oecho &K�������� ������� �������� ������ �������� �� ��������!&n
  break
  case 2
    oecho �������� ������� �������� ������ : '� ������� �������...'
    oecho &K�������� ������� �������� ���������.&n
  break
  case 3
    oecho �������� ������� �������� ������� ���� � ����� �������� ���������.
  break
  case 4
    oecho �������� ������� �������� ������ : '������ �� ������ ? �� ����� � ���� ���������.. ��� ���� �� ����� � ����.. ���...'
  break
  case 5
    oecho �������� ������� �������� ������ : '� ������ �� �� ���� �����������...'
    oecho &K�������� ������� �������� ���������.&n
    oecho �������� ������� �������� ������ : '�... �� ��� ��� ����� ����'
    oecho &K�������� ������� �������� ��������� ���������.&n
  break
  case 6
    oecho �������� ������� �������� ������ : '� �� ������� ���� ����� ����� ����?'
    oecho &K�������� ������� �������� ����� ������� � �����.&n
    oecho &K�������� ������� �������� ����� ������� � �����.&n
    oecho &K�������� ������� �������� ����� ������� � �����.&n
  break
  case 7
    oecho �������� ������� �������� ������ : '��� � ���� ��������! � ��������!'
    wait 1s
    oecho �������� ������� �������� ������ : '����� ��� � � ���� ������� ����!'
    wait 1s
    oecho �������� ������� ��������� ������ : '� ������ - �������� � ������ ���� �� 3 ������� � ���������� ������!'
    wait 3s
    oecho �������� ������� �������� ������ : '� ���... �.. �.....'
    wait 2
    oecho &K�������� ������� �������� ������ ����� ��������� ������� � ����� ������ ���� ������.&n
  break
  case 8
    oecho &K�������� ������� �������� ������� ���������� ����� �����.&n
  break
  case 9
    oecho �������� ������� �������� ������ : '� ������� �������� ��������?'
    wait 2s
    oecho �������� ������� �������� ������ : '���� ��� ����� ������� ������� � ����!'
    wait 2s
    oecho �������� ������� �������� ������ : '������ ���� ��������������� ����� �������� � ��������'
  break
  case 10
    oecho �������� ������� �������� ������ : '� �� ���� ��� ������ ? ��� ����� �����'
  break
  case 11
    oecho �������� ������� �������� ������ : '������ �� �� �������� ������ � 1� ����� ���������� 100� ��� 30 ����������� ���������� ������'
    wait 1s
    oecho �������� ������� �������� ������ : '����� ������������ ����������� �������� ������� � ����'
  break
  case 12
    oecho �������� ������� �������� ������ : '� ������ � ���� �� ������ ����� ����� ������, ��� � ���������?'
  break
done
~
#1182
������ �������� ��������~
1 j 100
~
wait 1
switch %random.3%
  case 1
    oecho %actor.iname% ����� ������� ������������ ������ &W"�������� ��������"&n.
    oecho �� ��������� ����: �����, ������� � ��� �������� ������. ��, ��������� &G�&R�&Y�&C�&n ����� � ������!
  break
  case 2
    oecho %actor.iname% ����� ��������� ������ ������ &W"�������� ��������"&n �� ����� ���� � ������ � �������.
  break
  case 3
    oecho %actor.iname% �������� ����������� �������� ���� �� ������ ���� � �����.
    oecho ������� ���� ���������? ��� ��� ������ �����...
    oecho ������ ������� ������ ���� � ����������� ������ �������� ��� �� ������ �� ���� ������.
  break
done
~
#1183
���� ������ ���������~
1 b 5
~
wait 1
switch %random.10%
  case 1
    oecho &G���������� ���� &n������ ���������� ��� &R������� &n�������� �������.
  break
  case 2
    oecho &G���������� ���� &n������ ���������� ��� &G��̣��� &n�������� �������.
  break
  case 3
    oecho &G���������� ���� &n������ ���������� ��� &C������� &n�������� �������.
  break
  case 4
    oecho ������-�� � ���� �����������: &W����� ��� �������� � ��� - ��� ��������� �� �����. ��� ����� ������ � ������ - �� ������� �� � ���!&n
  break
  case 5
    oecho ������-�� � ���� �����������: �� ! �� ����� ! � �������� ������ ! ���-��� !
  break
  case 6
    oecho ������-�� � ���� �����������: &W�������� �������� ����� ��� - � ���� �� ���� ����. � ����� - ���� ��� � ������� � ���������� ����!&n
  break
  case 7
    oecho ������-�� � ���� �����������: &W���������������������� ��� � ��� ������! ����� ��� �������� )) �������� ��� ���� ��������!&n
  break
  case 8
    oecho &G���������� ����&n ������ ���������� ��� &Y������ &n�������� �������.
  break
  case 9
    oecho &G���������� ����&n ������ ���������� ��� &B����� &n�������� �������.
  break
  case 10
    oecho &G���������� ����&n ������ ���������� ��� &M���������� &n�������� �������.
  break
  case 11
    oecho &G���������� ����&n ������ ���������� ��� &W����� &n�������� �������.
  break
done
~
#1184
�������� ������ ����~
1 j 100
~
oechoaround %actor% %actor.name% �������%actor.u% ������������ ���� �����...
if %actor.sex% != 1
  osend %actor% ����� ���, ������, ����...
  oechoaround %actor% ����� �� ����...
elseif %actor.name% != ����
  oecho _����!!! ������� ��������!!!...
else
  osend %actor% _��� ��� ��� �����? ������ ���� ��������, �� � ������ �� ���������.
end
return 0
halt
~
#1185
����~
1 c 2
*~
if %time.hour% != 12
  oechoaround %actor% %actor.name% ����������%actor.g% � ���������%actor.g% �����. ����� �����%actor.g% ���-�� �������������.
  return 1
  halt
end
~
#1186
���������~
0 b 33
~
����� ���� ��� ���...??
����� �, ������ �, ����������... ����-����������...
~
#1187
���� ����������� ����~
0 bt 16
~
set target %random.pc%
switch %random.23%
  case 1
    ��
  break
  case 2
    ����
  break
  case 3
    ������
  break
  case 3
    ���� %target.name%
  break
  case 3
    eval gold %random.2000%
    ���� %gold% ��� %target.name%
  break
  case 4
    if %target% && (%target.realroom% == %self.realroom%)
      mecho ����������� ���������� ���� ����� � ����� ���������� ����.
      dg_cast '����' %target.name%
    end
  break
  case 5
    if %target% && (%target.realroom% == %self.realroom%)
      mecho ����������� ���������� ���� ����� � ����� ���������� ����.
      dg_cast '������' %target.name%
    end
  break
  case 6
    if %target% && (%target.realroom% == %self.realroom%)
      mecho ����������� ���������� ���� ����� � ����� ���������� ����.
      dg_cast '�������������' %target.name%
    end
  break
  case 7
    if %target% && (%target.realroom% == %self.realroom%)
      mecho ����������� ���������� ���� ����� � ����� ���������� ����.
      dg_cast '���������' %target.name%
    end
  break
  case 8
    if %target% && (%target.realroom% == %self.realroom%)
      mecho ����������� ���������� ���� ����� � ����� ���������� ����.
      dg_cast '���������' %target.name%
    end
  break
  case 9
    if %target% && (%target.realroom% == %self.realroom%)
      mecho ����������� ���������� ���� ����� � ����� ���������� ����.
      dg_cast '������' %target.name%
    end
  break
  case 10
    if %target% && (%target.realroom% == %self.realroom%)
      mecho ����������� ���������� ���� ����� � ����� ���������� ����.
      dg_cast '����' %target.name%
    end
  break
  case 11
    ���� %target.name%
  break
  case 12
    ���� %target.name%
  break
  case 13
    eval gold %random.500%
    ���� %gold% ��� %target.name%
  break
  case 14
    ��� %target.name%
  break
  case 15
    ���� %target.name%
  break
  case 16
    ������� %target.name%
  break
  case 17
    ���� %target.name%
  break
  case 18
    if %target% && (%target.realroom% == %self.realroom%)
      mecho ����������� ���������� ���� ����� � ����� ���������� ����.
      dg_cast '�����' %target.name%
    end
  break
  case 19
    if %target% && (%target.realroom% == %self.realroom%)
      mecho ����������� ���������� ���� ����� � ����� ���������� ����.
      dg_cast '����� ���' %target.name%
    end
  break
  case 20
    ����� � ���� �������� ��-�����, � ���� ���.. ��! ��������!!!
  break
  case 22
    ����� �������-��������, ������� ���������!
  break
  case 23
    ����� � ����� �����!
  break
done
~
#1188
����� :)~
0 d 0
� ����� ������� ������~
wait 1
set text � ����� ������� ������
if %speech% == %text%
  say � ����� ���������� ������.
end
~
#1189
������ �������� ������~
0 g 100
~
halt
if (%actor.name%==�����)
  load obj 91515
end
�� ���
~
#1190
������ ��� �����~
0 d 100
��� �������~
wait 1
if !%actor%
  halt
end
if %actor.name% == �������
  if %world.curobjs(1190)% < 1
    mload obj 1190
  end
  if %world.curobjs(1189)% < 1
    mload obj 1189
  end
  if %world.curobjs(1188)% < 1
    mload obj 1188
  end
  if %world.curobjs(1187)% < 1
    mload obj 1187
  end
  if %world.curobjs(1186)% < 1
    mload obj 1186
  end
  if %world.curobjs(1054)% < 1
    mload obj 1054
  end
  if %world.curobjs(1059)% < 1
    mload obj 1059
  end
elseif %actor.name% == ��������
  if %world.curobjs(1150)% < 1
    mload obj 1150
  end
elseif %actor.name% == ���������
  if %world.curobjs(25389)% < 1
    mload obj 25389
  end
  if %world.curobjs(25391)% < 1
    mload obj 25391
  end
  if %world.curobjs(25392)% < 1
    mload obj 25392
  end
  if %world.curobjs(25394)% < 1
    mload obj 25394
  end
  if %world.curobjs(25396)% < 1
    mload obj 25396
  end
elseif %actor.name% == ������
  if %world.curobjs(1194)% < 1
    mload obj 1194
  end
  if %world.curobjs(1195)% < 1
    mload obj 1195
  end
elseif %actor.name% == ������
  if %world.curobjs(1095)% < 1
    mload obj 1095
  end
  if %world.curobjs(1097)% < 1
    mload obj 1097
  end
elseif %actor.name% == ������
  if %world.curobjs(1168)% < 1
    mload obj 1168
  end
elseif %actor.name% == ���������
  if %world.curobjs(1198)% < 1
    mload obj 1198
  end
elseif %actor.name% == �������
  if %world.curobjs(1066)% < 1
    mload obj 1066
  end
elseif %actor.name% == ������
  if %world.curobjs(1158)% < 1
    mload obj 1158
  end
  if %world.curobjs(1159)% < 1
    mload obj 1159
  end
elseif %actor.name% == �����
  if %world.curobjs(1048)% < 1
    mload obj 1048
  end
  if %world.curobjs(1070)% < 1
    mload obj 1072
  end
end
wait 1
give all %actor.name%
~
#1191
���� �����~
1 g 100
~
wait 1
log &W%actor.name% ����� ����!&n
if ((%actor.level% <= 25) && (%actor.remort% == 0))
  oecho _&W���������� ����� �������� � �������� ���������� �� ��������� &Y������� �����.&n
  eval gold %random.4999%+1
  %actor.gold(+%gold%)%
else
  oecho _&W���������� ����� �������� � �������� ���������� �� ��������� &G������� ��������.&n
end
wait 1
opurge %self%
~
#1192
������ ������� ��������~
1 c 1
��������~
set selfnum 0
set num 0
foreach i %self.pc%
  eval num %num%+1
done
set ranofself %random.num(%num%)%
foreach n %self.pc%
  eval selfnum %selfnum%+1
  if %ranofself% == %selfnum%
    set char %n%
  break
end
done
if ((%char.name% == ���������) && (%actor.sex% != 2))
  oecho ��������� ����������� ��������� �� �������� � �������� : "� �� ������ ��������� + %actor.iname%"
  odamage %actor% 50
  osend %actor% ��������� ����������� ������� ����� �� ���!
  halt
end
if %char.name% == %actor.name%
  osend %actor% �� ���������� �� �������� � ������� ������ ����� ��������.
  osend %actor% ������������� �� ���� �������, �� ������ ���� ������������ &R%actor.iname% + %actor.iname% = Love...&R
  oechoaround %actor% %actor.name% �����%actor.g% ���� ���-�� ������� � ������� &R������� ��������&n, �� ������ ���������%actor.g%...
  osend %actor% �� ������� ������������, ������� �� ������������� ���-�� :).
else
  osend %actor% �� ���������� �� �������� � ������� ������ ����� ��������. ���, ������� %char.name% - ����� ���.
  oechoaround %actor% %actor.iname% �����%actor.g% ���-�� �������� ����� � ������� &R������� ��������&n.
  %actor.wait(2)%
  osend %actor% �� ������ ���-�� �������� � ���������� ��� ������ ���� �������� &R"%actor.iname% + %char.iname% = Love!"&n
  oechoaround %actor% %actor.iname% ������� ��������%actor.g% ��ϣ ��������...
  oecho ������� &R%actor.iname% + %char.iname% = Love!&n ������� �������� � ������� � �������.
end
~
#1193
������ ����������� �����~
0 d 0
����~
wait 1
if ((%actor.name% != ������ ) && (%actor.name% != ������ ) && (%actor.level% < 34))
  say �� ���!
  halt
end
eval ok 0
set bonus %speech.cdr%
if ((%bonus% >= 1130) && (%bonus% <= 1183))
  set ok 1
end
if ((%bonus% >= 10600) && (%bonus% =< 10699))
  set ok 1
end
if ((%bonus% >= 11207) && (%bonus% <= 11255))
  set ok 1
end
if (%ok% != 1)
  say �� ���!
  halt
end
mload obj %bonus%
give all %actor.name%
~
#1194
������� ���� ���~
0 j 100
~
wait 1
set nameobj %object.name%
if %nameobj.contains(����)% || %nameobj.contains(���)% || %nameobj.contains(�����)%
  mecho ������� ���� %object.vname%.
  wait 1
  mpurge %object%
  wait 2
  say ���!
  wait 1
  emot ��� � �������� ���������
  wait 1
  emot ���� ����������.
else
  ����
  ������� ���
end
~
#1195
������-������� �������~
0 ab 5
~
wait 1
set owner 0
if !%self.leader%
  foreach char %self.pc%
    if %char.name% == �������
      set owner 1
    end
  done
  if (( owner != 1 ) && ( %self.realroom% != 186 ))
    emot ������� �������
    wait 1s
    mecho ������� ������.
    mteleport %self% 186
    halt
  end
end
switch %random.10%
  case 1
    emot ��� � �������� ���������
  break
  case 2
    say ���!
    emot �������� ��� � �����, ���������� ����
  break
  case 3
    emot ���� ����������
  break
  case 4
    emot ������ � �����, � ����� ������� ������, ������� ������� ���-�� ���������
  break
  case 5
    if ( owner == 1 )
      emot ��������� �� ������ � ������� � ����� ������������
      ���� .�������
    end
    emot
  break
  case 6
    emot ��������� ��� ����� (������ ��� ������) � ����� ��������� ����������� ������
  break
  case 7
    if ( owner == 1 )
      emot ����� �� ������ � �������
      wait 2
      emot ��������� ��������� � ��������
      �����
    end
  break
  case 8
    ������
    say ���!
    wait 2
    ������
  break
  case 9
    set target %random.pc%
    ���� %target.name%
  break
  case 10
    emot ����� ������ ���� �����
  break
done
~
#1196
������� ������� �� ��������~
0 q 40
~
wait 1
if ( %actor.name% == ������� )
  say ���!
  follow .�������
  wait 2s
  ���� .�������
end
~
#1197
����������~
1 j 100
~
wait 2
oechoaround %actor% ��������� ���������� ����� %actor.vname% � �������� ���������� � ��� �� ������.
osend %actor% ��������� ���������� ����� ��� � �������� ���������� � ��� �� ������.
~
#1198
������-��������������~
1 c 3
*~
if (%cmd.mudcommand% == ����� || %cmd.mudcommand% == quit || %cmd.mudcommand% == ����� || %cmd.mudcommand% == enter || %cmd.mudcommand% == ����� || %cmd.mudcommand% == mode)
  %echo% ��������� ������!
  wait 1
end
return 0
~
$~
