* BRusMUD trigger file v1.0
#66200
����������� ��������~
0 q0 100
~
wait 1s
� ���������� ������!
� �������������, ������� � ������.
wait 1s
��� %actor.iname%
wait 1s
� ����, �� ������� �� �������, ������� ����� ������.
� ���� ��������� � ����� ��������, �� ����������� �� ������?
attach 66209 %self.id%


~
#66201
����������� �������~
0 j0 100
~
if %object.vnum% != 66270
    halt
end
return 0
wait 1s
mecho �� ������ �� �������� ������, ������ � �� � ����? - ������ ������ ������.
mecho � �� ��� �������� ���� �������. ���� ����, ��� ������� ����� ���������� �����,
mecho �� ��� � ����� ��� ���������� �����! � � ������ ������ ���� �����.
������
attach 66208 %self.id%
detach 66201 %self.id%
























~
#66202
�������� ���� ����� �� �������~
0 j0 100
~
if %object.vnum% != 66206
    halt
end

wait 2s
���
� ������ � ���� � ������� �����, ���� ��� ����������� ���-��.
� ������ ���� ������ ���� � ����� ������������, �� ��� � ���� �������.
� ������ ��, �� �����, ��� �� ����.
wait 1s
�� ����� ������ ������� �� ������ �������
wait 1s
mload obj 66270
���� ��� %actor.name%





~
#66203
������� ���������������~
0 j0 100
~
if %object.vnum% != 66206
    halt
end
wait 1s
�� �������� �����, ������� ��� ������
wait 1s
� ������� �������, ������� ������ ��� ������.
������ %actor.name%
� ������, ������ ���� ����-������, ���� ����� ����� �� �����.
wait 5s
eval rnd %random.100%
if      %rnd% < 10
   if %world.curobjs(66211)% < 3
      mload obj 66211
      ���� ������� %actor.name%
   else
      mload obj 66219
      ���� ���������� %actor.name%
   end
elseif  %rnd% < 20
   if %world.curobjs(66212)% < 3
      mload obj 66212
      ���� ������� %actor.name%
   else
      mload obj 66219
      ���� ���������� %actor.name%
   end
elseif  %rnd% < 30
   if %world.curobjs(66213)% < 3
      mload obj 66213
      ���� �������� %actor.name%
   else
      mload obj 66219
      ���� ���������� %actor.name%
   end
elseif  %rnd% < 40
   if %world.curobjs(66214)% < 3
      mload obj 66214
      ���� ����� %actor.name%
   else
      mload obj 66219
      ���� ���������� %actor.name%
   end
elseif  %rnd% < 50
   if %world.curobjs(66215)% < 3
      mload obj 66215
      ���� ��� %actor.name%
   else
      mload obj 66219
      ���� ���������� %actor.name%
   end
elseif  %rnd% < 60
   if %world.curobjs(66216)% < 3
      mload obj 66216
      ���� ������ %actor.name%
   else
      mload obj 66219
      ���� ���������� %actor.name%
   end
elseif  %rnd% < 70
   if %world.curobjs(66217)% < 3
      mload obj 66217
      ���� ��� %actor.name%
   else
      mload obj 66219
      ���� ���������� %actor.name%
   end
elseif  %rnd% < 80
   if %world.curobjs(66218)% < 3
      mload obj 66218
      ���� ������ %actor.name%
   else
      mload obj 66219
      ���� ���������� %actor.name%
   end
else
   mload obj 66219
   ���� ���������� %actor.name%
end
detach 66203 %self.id%






~
#66204
�������������� ���� �����~
0 d0 100
������~
say ��� ���������? ������ ������ ���-�� ������?
say ��� ����, ��� � ������ �� � ���, ����� �� ���� ��� ������� ������
�����
wait 1
say ������� �������� - ������ ��� ���� ����.
calcuid berezka 66207 obj
attach  66205 %berezka.id%


~
#66205
������� ������~
1 c0 100
�������~
eval prime %actor.eq(16)%
oecho %prime.val0%
oecho %actor.eq(16).val3%
*if (%actor.eq(16).val0% != 0 && %actor.eq(16).val3 != 3) || (%actor.eq(17).val0% != 5 && %actor.eq(17).val3% != 3) || (%actor.eq(18).val0% != 5 && %actor.eq(18).val3% != 3)
*    osend %actor% � ������ ���? ������ ������?!
*    oechoaround %actor%  %actor.iname% ������ ������ ����� � ������� �� ����.
*    halt
*end
*wait 3
osend %actor% �� ����������� ������� �� ���������� ������ 
oechoaround %actor%  %actor.iname% ���������� ������� �� ���������� ������.
oload mob 66209
opurge %self%

















~
#66206
�������� ������~
0 n0 100
~
mecho �������� ������� ���� "����� ���������!! ������� �� � ������� ����� ����� ������!"


































~
#66207
��� ������~
0 f0 100
~
mecho ��������� ����� ������� ����� ������� �� ���.
mload obj 66206


































~
#66208
������� �������~
0 j0 100
~
if %object.vnum% != 66201
    halt
end
wait 1s
�� ����� ������������� �����
wait 1s
���
� - �� ��� ��!
� ������� ����, ������� ��������. ������ � �������� ����� � ���� � �������� ����� �������.










~
#66209
�������� ���� ����� �� ������ ������~
0 d0 100
������~
wait 2s
� ��� ������ ����� � ������� ��� ������� ����� ���
� ������ ������, ��� ����� �� ������-������� �������
� �����, ����� � ���� � ���� �����-������ ������������� �������
wait 1s
� ������� - ������� ���, ��������� ���������� ���
attach 66210 %self.id%





~
$
$
