#42200
������� � ��������~
0 q 100
~
wait 3s
say _������� ���� �������!
if (%actor.level% <= 24)
  mecho _�������� ����� ���������� � ���������� ���� ������������ ��� ����.
  calcuid beregina 42207 mob
  attach 42201 %beregina.id%
  attach 42202 %beregina.id%
  detach 42200 %beregina.id%
end
~
#42201
������ !���! � ��������~
0 d 0
���� ����� ������ ���� ���~
wait 2s
if %actor.level% <= 24 
  mecho _�������� ��������� �����, ������ �������.....
  DG_CAST '���������' %actor.name%
  calcuid beregina 42207 mob
  attach 42203 %beregina.id%
  detach 42201 %beregina.id%
end
~
#42202
������ !�����! � ��������~
0 d 0
����� ������������ ��������������~
wait 2s
if %actor.level% <= 24 
  mecho  �������� ��������� ��� �� ���������, ������� ���-��.....
  DG_CAST '��������������' %actor.name%
  calcuid beregina 42207 mob
  attach 42203 %beregina.id%
  detach 42202 %beregina.id%
end
~
#42203
������ !�������! � ��������~
0 d 0
������������� ������� ����� �������~
wait 2s
say ������� �� ����� ������! �� �� ��� �� ������...
�������
wait 2s
say _��� ������� �������� �� ����� ���������... � �� � ����� ���� �������� ��...
wait 2s
�������
say_����, ���� ���� ������ �������� - ���-�����...
say _�� �� ���� � ����������, �������� ���� ����� ��� ���������...
����
wait 2s
say_����� ��� ������, ������ �������� ��������.
calcuid beregina 42207 mob
attach 42204 %beregina.id%
detach 42203 %beregina.id%
~
#42204
������ !������! � ��������~
0 d 0
������ �����~
wait 2s
say _���������. �������...
if %actor.level% <= 14
  say _������ ������ �� ������... 
  mload obj 42202
  ���� ���� %actor.name%
end
wait 2s
say _� � ���� ������� �� ������ ���������.
calcuid beregina 42207 mob
attach 42205 %beregina.id%
calcuid polewik 42209 mob
attach 42207 %polewik.id%
����
���
mecho _�������� �������� ��� � ����������� � ������ ���.
detach 42204 %beregina.id%
end
~
#42205
������ !��������! � ��������~
0 d 0
�������� ������� ������ ���������~
wait 2s
mecho _�������� ������ ����������, �������� ��������... 
���
say _�� ���?
calcuid beregina 42207 mob
attach 42206 %beregina.id%
detach 42205 %beregina.id%
~
#42206
��� �������� �����~
0 j 100
~
wait 1
if %object.vnum% != 42203
  wait 1s
  ���
  say ���������, �� ����� ��� ���?
  drop all
  halt
end
���
mpurge %object%
wait 2s
say �������....! ��� ������ � �� ����� �������, �� ���� �������� ���� ������...
if %world.curobjs(42207)% < 30
  mload obj 42207
  wait 2s
  say ���� �� ��������...
  ��� ������� %actor.name%
else
  say ������...
  ������
end
~
#42207
������� � ��������~
0 q 100
~
wait 3s
if %exist.mob(42213)%
  mecho _������ ������������� �������� �����.
  say ��, �������, ������ ���-������ ������....
  mecho _������ ��������� ��������.
  say �� ��������� ������ � ����! � ��� ����...
  ���
  wait 2s
  ����
  wait 1s
  say _������� ��������� �������! ���� �������� ������, ���� ���� � �������!
  say  _��� ��� ������ �������, �����.
  mecho _������� ����� �������� ������ �� ��� ���� �����.
  if %exist.mob(42213)%
    * ������ ��� ��������� �� 6 ������ �������� ������ ����� �����
    calcuid homiak 42213 mob
    attach 42208 %homiak.id%
  end
end
~
#42208
����� �����~
0 f 100
~
calcuid polewik 42209 mob
attach 42209 %polewik.id%
calcuid polewik 42209 mob
detach 42207 %polewik.id%
~
#42209
������� � �������� ����� ���� ������~
0 q 100
~
wait 1
if %direction% != down
  halt
end
wait 1s
mecho _������ ������ �������.
say ��� � ���������.... ��� � ������...
mecho _������ ��������� ��������.
wait 2 s
mload obj 42203
���� ���� .%actor.name%
say _��� ���� �������, ��� ������. �� ��������, ���� ������ �������� ���� ����.
calcuid polewik 42209 mob
detach 42209 %polewik.id%
~
#42210
������� ������ �����-�����~
0 f 100
~
if (%world.curobjs(42219)% < 15) && (%random.8% == 1)
  mload obj 42219
end
~
#42211
������� �����~
0 f 100
~
if (%world.curobjs(42205)% < 15) && (%random.4% == 1)
  mload obj 42205
end
~
#42212
����� ������ ����~
0 f 100
~
if (%world.curobjs(42204)% < 15) && (%random.15% == 1)
  mload obj 42204
end
~
#42213
����� ������~
2 f 100
~
calcuid polewik 42209 mob
detach 42207 %polewik.id%
calcuid homiak 42213 mob
detach 42208 %homiak.id%
calcuid beregin 42207 mob
detach 42201 %beregin.id%
detach 42202 %beregin.id%
detach 42203 %beregin.id%
detach 42204 %beregin.id%
detach 42205 %beregin.id%
detach 42206 %beregin.id%
attach 42200 %beregin.id%
~
$~
