#27800
����������~
0 r 100
~
wait 1
if ((%actor.class% == 8) || (%actor.class% == 4))
  msend %actor.name% ������ ���� ���������� �� ���.
  mechoaround %actor% ������ ���� ���������� ��  %actor.rname%.
  if %exist.mob(27807)%
    tell %actor.name% �� ���� �������� ���� ������ ��������� ���, ��� �������� ����
    tell %actor.name% � ��� ����������. � ��� ����� ����� ������� ������������ ��� �����,
    tell %actor.name% ���� ��������� ��� ����� ������.
    tell %actor.name% ���� ��������� ��������, �� �������?
    ���
    wait 1s 
    tell %actor.name% �� ���� ��������.
    tell %actor.name% ����� ���� ���� ������ �������, �� ��������� ������ ���,
    tell %actor.name% ���-�� �� ������ ���������� ������, ������� �� ���� ���
    tell %actor.name% ����������� ���������� ��� ����. ���� ��� � � ����������� ����.
    ���
  end
else
  tell %actor.name% ����� �� ����%actor.y% ����?
  mkill %actor.name%
end
~
#27801
������������~
0 f 100
~
mload obj 27801
mload obj 27803
if (%random.1000% <= 150) && (%world.curobjs(511)% < 1)
  mload obj 511
end
~
#27802
����������������~
0 r 100
~
wait 1
if %actor.class% == 8
  msend %actor% ����� ������� ���� ��������� �� ���.
  mechoaround %actor% ����� ������� ���� ��������� �� %actor.vname%.
  tell %actor.name% ��, �� ����������� � ������ �����, ���-�� ��� ������� ���
  tell %actor.name% ��� ����� � ��� �� ����.
  mecho ����� ������� ������ �� ��� ������ ������, ��������� �� ���� � ����� �����.
  tell %actor.name% �������� �� ��������� �����.
  tell %actor.name% ��� �� �� �������� �� ����� �� �������.
  wait 1s 
  ������
else
  wait 2s
  msend %actor% ����� ������� ���������� ��������� �� ���.
  mechoaround %actor% ����� ������� ���������� ��������� �� %actor.vname%.
  tell %actor.name% ������� ������� ��������� � ���, ��� � ���� �� �������, �� � �������
  tell %actor.name% ��������, �� ������� ������� �� ����. � ��� ��� �� ���, ������� ����
  tell %actor.name% ���������� ���. ��� ���� �� �������� ��� ������� ������ ���, ����
  tell %actor.name% ��� �������. ���� ������, ������ ���, ��������� � ����, � � �� ��������
  tell %actor.name% � �����. �����, ��� ��� ��� ������, ������� ����� ���������� ���������,
  tell %actor.name% ������� ���, � ����� ����� ��� ����������.
end
~
#27803
������������������~
0 f 100
~
mload obj 27802
~
#27804
��������������~
0 j 100
~
wait 1
if %object.vnum%==27807
  wait 1
  mpurge %object%
  mecho ������� ����������� �������� ����.
  mecho ������� ����, ����� ������� ������� ���.
  wait 1s
  if (%random.5%==1) && (%world.curobjs(27808)%<10)
    wait 5s
    mecho ������� ����� ������� � ������, ���-�� ����� � ���.
    mecho ����� ������� ����, ��������� ����� �� ���� �����������.
    say ��� ��� ����������, ������.
    mload obj 27808
    wait 1
    ���� ��� %actor.name%
  else
    mecho ������� ���� ������� ����, ��� ����� �� ��������.
    ���
    wait 1
    say ���� �� ����������.
  end
end
~
#27805
����������������~
0 j 100
~
wait 1
if (%object.vnum% != 27802)
  say ����� �� ��� ��� ������%actor.q%?
  halt
end
wait 1
mpurge %object%
if ((%actor.class% != 4) && (%actor.class% != 8))
  halt
end
say ��� � �������.
mecho ������ ����� ����������� � ��������� � ������.
say ������ ���� ��� ���, ������ ���, � ����� � �� ������ ���.
say �� ��� �������, ������� ����.
switch %actor.class%
  case 4
    if %random.1000% <= 150
      say �����, ���� ���������� ������ ��� ����� �����.
      mload obj 1754
      ���� ������ .%actor.name%
    else
      say ���� ��������� ���� ������� �������.
      eval temp %actor.gold(+300)%
    end
  break
  case 8
    if (!%actor.spelltype(�������� �����)% && %actor.can_get_spell(�������� �����)%)
      msend %actor% ��� �����, � ������� �� ����� �������������� �� ��� � ��������.
      mspellturn %actor% ��������.����� set
      msend %actor% �������� ����� - ������ ���������� ��� �������������.
    else
      �����
      msend %actor% ���� ���� ������ ����� ���������.
      eval temp %actor.gold(+300)%
    end
  break
  default
    halt
  break
done
%actor.align(-4)%
~
#27806
���������������~
0 j 100
~
wait 1
if (%object.vnum% != 27803)
  halt
end
wait 1
mpurge %object%
say %actor.iname%, �������� ������.
mecho ����� ������� ����������� �������� ������.
say ������ � ��� ������ �����������, ����� ������ � ��� ������ ��� ������.
say %actor.iname%, ��� �����, �����������.
switch %actor.class%
  * ������
  case 0
    if (!%actor.spelltype(���������)% && %actor.can_get_spell(���������)%)
      mspellturn %actor% ��������� set
      say ���, ���� ������ ���������, %actor.name%.
      set bonus 1
    end
  break
  * ������
  case 1
    if (!%actor.spelltype(����������)% && %actor.can_get_spell(����������)%)
      mspellturn %actor% ���������� set
      say ���, ���� ������ ����������, %actor.name%. 
      set bonus 1
    end
  break
  * ���
  case 2
    if (!%actor.skill(��������)% && %actor.can_get_skill(��������)%)
      mskillturn %actor% �������� set
      say ���, ���� ������ ��������, %actor.name%.
      set bonus 1
    end
  break
  * ��������
  case 3
    if (!%actor.skill(����������� �����)% && %actor.can_get_skill(����������� �����)%)
      mskillturn %actor% �����������.����� set
      say ���, ���� ������ ����������� �����, %actor.name%.
      set bonus 1
    end
  break
  * �������
  case 4
    if (!%actor.skill(��������)% && %actor.can_get_skill(��������)%)
      mskillturn %actor% �������� set
      say ���, ���� ������ ��������, %actor.name%.
      set bonus 1
    end
  break
  * ���������
  case 5
    if (!%actor.skill(���������)% && %actor.can_get_skill(���������)%)
      mskillturn %actor% ��������� set
      say ���, ���� ������ ���������, %actor.name%.
      set bonus 1
    end
  break
  * ��������
  case 6
    if (!%actor.spelltype(����������)% && %actor.can_get_spell(����������)%)
      mspellturn %actor% ���������� set
      say ���, ���� ������ ����������, %actor.name%. 
      set bonus 1
    end
  break
  * ���������
  case 7
    if (!%actor.spelltype(����������)% && %actor.can_get_spell(����������)%)
      mspellturn %actor% ���������� set
      say ���, ���� ������ ����������, %actor.name%. 
      set bonus 1
    end
  break
  * ������
  case 9
    if (!%actor.spelltype(���������)% && %actor.can_get_spell(���������)%)
      mspellturn %actor% ��������� set
      say ���, ���� ������ ���������, %actor.name%. 
      set bonus 1
    end
  break
  * �����
  case 12
    if (!%actor.spelltype(����� ��������)% && %actor.can_get_spell(����� ��������)%)
      mspellturn %actor% �����.�������� set
      say ���, ���� ������ ����� ��������, %actor.name%. 
      set bonus 1
    end
  break
  * �����
  case 13
    if ((%world.curobjs(207)% < 50) && (%random.100% <= 40))
      say ��� ���� ��������� ������, %actor.name%!
      mload obj 207
      ���� ��� %actor.name%
    else
      say ��� � ���� ������ ������ ���������� ������ ������, ��� ��, %actor.name%!
      say ������ �� ������ � �������.
      eval temp %actor.gold(+300)%
    end
    set bonus 1
  break
  default
    %send% %actor% %self.iname% �������� ��� ������� ���.
    eval temp %actor.gold(+500)%
    ���� 500 ��� %actor.name%
    set bonus 1
  break
done
if (%bonus% != 1)
  %send% %actor% %self.iname% �������� ��� ������� ���.
  eval temp %actor.gold(+300)%
end
%actor.align(+4)%
if ((%actor.skill(������� ������)% <= 0) && (%random.1000% < 100))
  say ����� � ���� ����� ������, � ������ ��� ������ ��� � ����� ����� ����������.
  say ������, �� ��������� ������.
  mskillturn %actor% �������.������ set
end
~
$~
