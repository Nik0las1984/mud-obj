* BRusMUD trigger file v1.0
#35200
������ � ������� ����� ����~
2 e0 100
*~
wsend %actor% ������� �� ���������� ��������� �� ������ ��������� ���� ������ ������ �������� ����� ����.
if %actor.sex%=2
   wechoaround %actor% ����� ���� %actor.name% �������� ������ ������������.
end
if %actor.sex%=1
   wechoaround %actor% ����� ���� %actor.name% �������� ������ ������������.
end
     eval    dam352  %actor.hitp%/7
wait 1s
wdamage %actor% %dam352%
*worlds dam352









~
#35201
������� ������~
2 c0 100
�������~
if !(%arg.contains(�����)%)
   wsend %actor% ��� ��������� �� �����?
   halt
end
if (%world.curobjs(35202)%<1)
   wsend %actor% � ��� �� �������� �� ����������� ��� ������?
   halt
end
wait 1
wpurge �������
wload obj 35205
wsend %actor%  _������ �������� �� �������� ��������� ������.
if (%actor.sex%==2)
   wechoaround &C������ �������� %actor.name% ������ ��������� ������.
else
   wechoaround &C������ �������� %actor.name% �������� ��������� ������.
end
wait 1s
wecho &R���� ����� ������ - ���� - ������ ������� ��...
wait %random.100%s
wecho &Y��� � �������� ������ ���������� ��������...
wait %random.200%s
wecho &w�� ����� ������ ����� ������� �������� �����... ����� � ��� ��������...
wait %random.60%s
wecho &c������ ������ ������ ��������� ������ ������ ���������, ������ ��� ��� �������
wpurge ������
wload obj 35201
wload obj 35201
wload obj 35201









~
#35202
���������~
0 j0 100
*~
if ( %object.vnum% != 35201 )
  msend %actor% "�-�-�-�-�-�-�... " - ����� �������� ��������.
  ��������� %actor.name%
  return 0
  halt
end
msend %actor% ������� ��������� �������� ����������...
msend %actor% � ������ ������� ������ �����...
mechoaround %actor% ������� ��������� �������� ����������, � ������ ������� ������ �����.
mload mob 35209
mpurge %self%









~
#35203
������� �����~
2 c0 100
�������~
if !(%arg.contains(�����)%)
wsend %actor% ��� �� ������ �������?
halt
end
   wsend %actor%  �� ������ �������� ����� �������� ��� ������.
   wechoaround ������������ %actor.name% �����%actor.g% �������� ������� ��� ������.
wait 1s
wload obj 35202












~
#35204
���� �� �����~
1 j0 100
*~
eval owner %self.carried_by%
if (%random.10%<=1)
dg_cast '���'  %owner.name%
end
if (%random.10%<=1)
dg_cast '����'  %owner.name%
end
if (%random.20%<=1)
dg_cast '����'  %owner.name%
end
if (%random.40%<=1)
dg_cast '�����'  %owner.name%
end
if (%random.100% < 40)
otransform 35210
end





~
#35205
��� ������~
0 f0 100
*~
if (%world.curobjs(35203)% < 5) && (%random.10% <= 2)
   mload obj 35203
end





















~
#35206
���� �� �����~
1 j0l0 100
*~
eval owner %self.worn_by%
if (%random.50%<=1)
dg_cast '���� ���'  %owner.name%
end
if (%random.100% < 40)
otransform 35211
end


~
#35207
��� ������~
0 f0 100
*~
if (%world.curobjs(35204)% < 5) && (%random.100% <= 5)
   mload obj 35204
end

































~
#35208
���� �� ��������������~
0 q0 100
*~
mecho %Self.name% ������ ��� :
mecho \&R��������� ������...
mecho \&R������ �� ����� ����� � �������� ������ ��������� ��� ������ ���������   
mecho \&R������. ������� ������� ��� ������ �����������  ���  �������  �����, ���� 
mecho \&R���� ����� ������ � �������, ����� ������ ��  ������ ������.  ������ ����
mecho \&R���������� ��������� ���� � ����  ���������. ����  �������� ��� � �� ���-
mecho \&R������  � �����������  ��������  �������. ��  ���� � ��� �������� ����������
mecho \&R��������� � ������� - ��� �� ��� � �� ��������.




~
#35209
��� �����~
0 f0 100
*~
if (%world.curobjs(35206)% < 5) && (%random.100% <= 10)
   mload obj 35206
end

































~
#35210
�������� ������~
0 0 15
~
if %world.curobjs(35209)% < 5
mload obj 35209
end





~
$
$
