#23600
��������� �������� ����~
0 q 100
~
wait 1s
say ������ ������ ��������� ������, ���������! ������ �� ���� ������ � �������� ������!
say ������ ������, ��� �, ������ ������ �����? ��!
say ����� �� �������, � ���� ��� ��� ������ ������. ��� ��� � ������ � ����� � ������ �����!
~
#23601
��������� �������� ����~
0 q 100
~
wait 1s
say ���� ������ ��� ������ ������� � �������� ������,
say ���������� ������� ����, ������� �������� �� ����� ����.
say � � �����, ��� �� �� ���� ����������.
���
~
#23602
����� � �����~
0 q 100
~
wait 1s
mecho ���� ����� ��������� ����� ����.
wait 2s
say �������� �� ��� ��������� �������� �����. ������ ��� �������� ���� ����� � ����.
say � ������ �� ���� ��������� ���. �������� ��� ������� ������ �� �������,
say �� ��� ������, ���, �������� ���� ��� ������� ��������. ����� � �� ���.
say ��� ���� �� ����� ��� ...
mecho ���� ����� � �������� ���������� �� ���.
attach 23604 %self.id%
~
#23603
��� ������ ���� � ������~
0 b 10
~
������
�����
�����
wait 1
�������� �������.������
������� �������.������
��� ��� ����.�����
��� 500 ��� ����.�����
������� �������.������
�������� �������.������
say ������ � ��� �������.
��
wait 1s
w
~
#23604
����� �����~
0 d 1
������ ������~
if %actor.vnum% != -1
  say �� �������� ���������� ����?
  halt
end
wait 1
if %questor236.id% ==  %actor.id%
  say ���� ������ ������, �� ������ ��, ��� � ���������.
  halt
end
if %questor236%
  wait 2
  say � ��� ��������� ������ ��� %questor236.vname%.
  say �� � ���� ��������� ��������� � ��� �� ������.
  halt
end
if (%world.curmobs(23616)% == 0)
  halt
end
set temp236 1
set questor236 %actor%
calcuid nkoldun 23616 mob
attach 23605 %nkoldun.id%
global questor236
remote questor236 %nkoldun.id%
remote temp236 %nkoldun.id%
wait 1s
��
say ������ �������� ���� ����. 
say ����� ����! � ����������� � �������� �������!
attach 23610 %self.id%
detach 23602 %self.id%
~
#23605
������ � �������~
0 q 100
~
wait 5
���
if %temp236% == 0
  say �� �������� ����. � � ��� �� ���� ����� �����.
  halt
end
say �� ������! ������� �� �������� ��� ��������� ��� ������.
say ��������� � �������, � ������� ���������� �������� ������� ���������.
say � ���� ��������� ��������� �� � ������, ��� �������� � ���� ����� �� ������.
say �� �� ����� ���������� ��� �� �������.
wait 1s
���
say ��������� �������� � � ����� ����������. ���� �������� ��� ���.
say �� ������ ����� ������ ������ �� ������ � ���� � ��� �������.
say ���� ����������� ��������� � � ����� ������ �� ��������� ��������.
attach 23606 %self.id%
detach 23605 %self.id%
~
#23606
��������� ����� �������~
0 q 100
~
wait 1s
if (%exist.mob(23613)% || %exist.mob(23614)% || %exist.mob(23615)%)
  say ����� ������������ ���, ��� ��� �� ��� ���������� �����.
  halt
end
wait 3
say �������, ��� ���� ������ �����. ������ � ���� �������� ��� �����.
if (%questor236.iname%)
  say ������ ����, %questor236.iname%.
  say ���� �����%actor.q% �� ��� ���������� � ���� �������, � � ����� �� ��������.
  say �� ���, ������ ������� ���. ���� ��� ������.
  wait 1s
  set temp %questor236.gold(+200)%
else
  say ������� %questor236.vname%. ������ ������� �� ������������.
  halt
end
wait 1s
say �������, ���������� ����� �� ����� � ����� �� ��� ������.
say � �� ���� � �������� ��� ����� ����� ������� �� �������.
say ����� ������ ������� � ������ ������. ��������, ���-�� ��� ��� ������� ������.
wait 1
switch %actor.class%
  * ������
  case 0
    if (!%actor.spelltype(���������)%) && (%actor.can_get_spell(���������)%)
      mspellturn %actor% ��������� set
      say ���, ���� ������ ���������, %actor.iname%. ���������� � �����.
    end
  break
  * ������
  case 1
    if (!%actor.spelltype(����������)%) && (%actor.can_get_spell(����������)%)
      mspellturn %actor% ���������� set
      say ���, ���� ������ ����������, %actor.iname%, ���������� ���-������.
    end
  break
  * �������
  case 4
    if %random.1000% <= 150
      say ����� ��� ���, ����� ���� ���������� ��� ������.
      mload obj 1754
      ���� ������ .%actor.name%
    end
  break
  * ���������
  case 5
    if (!%actor.skill(���������)%) && (%actor.can_get_skill(���������)%)
      mskillturn %actor% ��������� set
      say ��������� ��, � ����� �� �������. �� ����� ������ ���� ����� ������� ���� ����������.
    end
  break
  * ��������
  case 6
    if (!%actor.spelltype(����������)%) && (%actor.can_get_spell(����������)%)
      mspellturn %actor% ���������� set
      say ���, ���� ������ ����������, %actor.name%, ���������� �����-������.
    end
  break
  * ���������
  case 7
    if (!%actor.spelltype(����������)%) && (%actor.can_get_spell(����������)%)
      mspellturn %actor% ���������� set
      say ���, ���� ������ ����������, %actor.name%, ���������� � �����.
    end
  break
  * ������������
  case 8
    if (!%actor.spell(������� ����)% && (%actor.can_get_spell(������� ����)%)
      say ��� �����, ����� ���� ���������� ��� ������, ������ �� ��������� �� ������ �� ���
      mspellturn %actor% �������.���� set
    end
  break
  * ������
  case 9
    if (!%actor.spelltype(���������)%) && (%actor.can_get_spell(���������)%)
      mspellturn %actor% ��������� set
      say ���, ���� ������ ���������, %actor.name%, ���� ��� ������� ������ �����.
    end
  break
  * �����
  case 12
    if (!%actor.spelltype(����� ��������)%) && (%actor.can_get_spell(����� ��������)%)
      mspellturn %actor% �����.�������� set
      say ���, ���� ������ ����� ��������, %actor.name%. 
    end
  break
  default
  break
done
wait 1
say ������ ������!
wait 1s
mecho ����������� ������ ������ ����, ��������� ���-�� � �����.
wait 5
if (%world.curobjs(23603)% < 10 && %random.1000% <= 500)
  %echo% � ������� �������� � �� ����� ���������� ���������� ����.
  %load% obj 23603 
elseif (%world.curobjs(547)% < 1)
  %echo% ����� �������������, ������, ����� �����, �������� �����-�� ������.
  %load% obj 547
end
mpurge %self%
~
#23607
����� �����~
0 f 100
~
mecho ����������� ������ �����, ����� �� ������ ��� �������� � �����.
mecho ���� �� ��� ��������� � ����� ������� ����� ������� �����.
mecho ������������ ������ ��������� �� ����.  
mecho 
while %exist.mob(23613)%
  calcuid ripa 23613 mob
  mpurge %ripa%
done
while %exist.mob(23614)%
  calcuid ripa 23614 mob
  mpurge %ripa%
done
while %exist.mob(23615)%
  calcuid ripa 23615 mob
  mpurge %ripa%
done
~
#23608
������ ��������~
0 z 100
~
mpurge %self%
~
#23609
��� ��������� ������~
0 d 1
����� �����~
wait 1
say ��� � ����, ������ ���� ������ �� ��������� �����.
say ������ ������� ���, ��� ��� ����.
n
n
e
wait 1s
�������� �������.������
������� �������.������
���� ��� �������.������
���� 500 ��� �������.������
say ������ ������, ��� � ������. ������ ��� �������, ��� �� ��� �� �����.
��
w
~
#23610
����� ������~
0 q 100
~
wait 1
if %exist.mob(23616)%
  say ���� ��� ������, �� ��� ������� ��� �����!
  halt
end
if %actor.id% != %questor236.id%
  say �� ���� � ������� � ������. ��� ��� ��� �������.
  ���� .%actor.name%
  * detach 23610 %self.id%
  halt
end
say ����� �����! �������%actor.u% �� � ���� ��������!
say �� ������ ���� ������ ������� ���.
%self.gold(500)%
give 500 ��� .%actor.name%
if %world.curobjs(23602)% < 10
  say �������! �� ��, ��� �� ������%actor.q% � ���� ������� ������ ��� ��������. ����� ����������.
  mload obj 23602
  ���� ����.���� .%actor.name%
end
detach 23602 %self.id%
detach 23604 %self.id%
detach 23610 %self.id%
~
#23611
����� 236~
2 f 100
~
eval nkoldun %world.mob(23616)%
attach 23605 %nkoldun%
detach 23606 %nkoldun%
~
#23612
��������� ������~
1 p 100
~

~
#23613
������ �������� ����~
0 f 100
~
if %random.1000% <= 80
  %load% obj 1701
end
~
#23614
������ �������� ����~
0 f 100
~
if %random.1000% <= 200
  %load% obj 520
end
~
$~
