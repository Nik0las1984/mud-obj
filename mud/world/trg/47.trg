#4700
������ � ����������� ���~
0 q 33
~
wait 1
: ����������� ������� � ��� � �������
~
#4701
������ � ����������~
0 q 100
~
wait 1
if !%exist.mob(4723)%
  halt
end
if %actor.id% == %questor47.id%
  halt
end
emot ������ ������ � ���������� ��������� �� ���
wait 3
say ������... ��������� �� �� ��� ����� �� �������.
if !%questor47%
  say ��, ���� ���������%actor.g% - ����� �������� � ����� ����?
  say � �� �����������, ��� ����.
  attach 4702 %self.id%
else
  say � ���� ���� ����� ���� ������, ���� ���������� � ���������� �� ����.
end
~
#4702
������ ������~
0 d 0
������ ������ �������� ������� ��~
if %actor.vnum% != -1
  halt
end
wait 1
if %questor47.id% ==  %actor.id%
  say �� ��� �� �������%actor.g% - "������" �� "������".
  say ������ ������ - ��� � ���� ��� ������, ��� ��� ������� ������.
  say ��� � ������. �� � ���� �� ������� ��� �����������, ���� ����.
  �������
  halt
end
if %questor47%
  wait 2
  say � ��� �������� � ������ %questor47.vname%, ��� ���.
  say � � ���� � ���� ������ ���.
  say �������, ��������� � ������.
  halt
end
if (%world.curmobs(4723)% == 0)
  halt
end
set questor47 %actor%
calcuid mainwolf 4723 mob
attach 4703 %mainwolf.id%
global questor47
remote questor47 %mainwolf.id%
wait 1s
������
say ��� ��� ����� ����. ���� � ���� - ���� ��� �������, �� �����, ������, �������.
say �� ��� �����-������ � ���� ��������...
wait 1s
say ��� ��������� - �� ������� ��� �� ������, ������ � ������ �������, �� ������ � � ��� � ���� ����������.
say �� �� ������� ����, ��� ������� � ������ ���� �������. � ��� ��� �c��� ����� - �� � ������ ��!
say � ������ - ��� ���� ���: ��� ������ �� ������, � ��� �� �������.
wait 1s
say ������� ���-�� ������ ���� � �������� ��������� - ������ � ������� �� ����� ������������.
say ������� �� ������ ���� ���, ������� � � �������� �����������, ������ � � ��� ������ - ������ � ��� � �����
wait 1s
say �������� � ��� ������... �� ������ ���� ���� �� ������� ������.
say �� ��������� �� ������ ���, ��������� ����� �����?
say ��� ����� - �����������, �� �� ��������� ������� �� �����������.
����
say ������� � �����.
if (( %actor.quested(4700)% == 0 ) && ( %actor.level% < 15 ) && (%actor.realroom% == %self.realroom%))
  msend %actor% ������ ��������� ��������� ��� � ���-�� ���������.
  dg_cast '�����' .%actor.name%
end
attach 4704 %self.id%
~
#4703
����� ����~
0 f 100
~
if %actor.vnum% == -1
  set killer47 %actor%
else
  set killer47 %actor.leader%
end
global killer47
calcuid hunter 4721 mob
remote killer47 %hunter.id%
mload obj 4704
~
#4704
������� �� �����~
0 j 100
~
wait 1
if %object.vnum% != 4704
  say ����� �� ��� ��� ������%actor.q%?
  ������ .%actor.name%
  drop all
  halt
end
wait 1
mjunk all
if (%actor.id% != %questor47.id%)
  say � �� ������ ���� � ������, �� ��� �����, ����� ��� �������������.
  ������ .%actor.name%
  detach 4704 %self.id%
  halt
end
if (%actor.id% != %killer47.id%)
  say �� ��� ��, ����, ��� � ������ ���������, ������� �� ����...
  say �� ������ - ��� �� �� ���� ���%actor.g%, �� ��� ��?!
  say ������-�� ������, �� ������ ������!
  ����
  detach 4704 %self.id%
  halt
end
say ���������! �������%actor.u% � ���� ������!
emot �������� ��������� ������ ������
say ��... � ������ ������ ���.
say �����-�� ������, ��� �� ��������� ����.
wait 1s
say ��, �����, �����%actor.g% - �� ������ � ������� ��������� ��� �� ���� ���.
say ��������� ��� � ��� � ����� �������, � ����� �����������, �� � ������ ������� �������.
say ��� ������... �����-��.
wait 2
if (%questor47.quested(4700)% == 0)
  switch %actor.class%
    case 2
      if !%actor.skill(��������)%
        say ����� � ���� �������� �������� �����, � ������� ����� ����� � �� ��������
        say �� ��� ����������� ���� ������, ��� ���� � �������� �� ����� - ��� ��.
        mskillturn %actor% �������� set
      end
    break
    case 3
      if !%actor.skill(����������� �����)%
        say ����� � ���� ����� �������, ������ �������� ����� �� ������!
        mskillturn %actor% �����������.����� set
      end
    break
    case 4
      if !%actor.skill(��������)%
        say ����� � ���� ��� ����� ���������, ��� ��� ���� � ����� ���� �� ������ ������ �������� ������ �����.
        mskillturn %actor% �������� set
      end
    break
    case 5
      if !%actor.skill(���������� �����)%
        say ����� � ����, ��� � ��� �� ��������� ������� � ����� ���� ����������.
        mskillturn %actor% ����������.����� set
      end
    break
    case 9
      if !%actor.skill(������ �����)%
        say ����� � ���� ����� ������� ���, ���� � ������ ����� ��� ������� ������ �����!
        mskillturn %actor% ������.����� set
      end
    break
    case 10
      if !%actor.skill(���������)%
        say ����� � ����, ��� ������ �� ������ ����� � ��� � ������ ����� ��� ������ � � ���������.
        mskillturn %actor% ��������� set
      end
    break
    case 11
      if !%actor.skill(��������)%
        say ����� � ���� �����, ����� �������� ����������� ���� �� ����� � ��������, ��� ��, �� ������ �����.
        mskillturn %actor% �������� set
      end
    break
    case 12
      if !%actor.skill(�������)%
        say ����� � ����, ��� ��� �� ����� � ������ ������ �������, ��� ���, ������, ���� � ��������� �� ��������.
        say ���� �������� �����.
        ��
        mskillturn %actor% ������� set
      end
    break
  done
  mechoaround %actor% ������ ���� ��� %actor.dname% ��������� ����������� �� ������� ���������.
  msend %actor% ������ ���� ��� ��� ��������� ����������� �� ������� ���������.
  %questor47.setquest(4700)%
end
eval chance %random.20%
if (%chance% < 2)
  say ���, ������ ��� �����. ��������, ������ �������� ����� ������, �� ��� ���� �������!
  mload obj 1706
  set bonus 1
elseif (%chance% < 6)
  if %world.curobjs(4701)% < 10
    say ������-�� ��� ���� ���. ���� � �� �� ������ ������, �� ������ ������ �������� �� ���.
    mload obj 4701
    set bonus 1
  end
elseif (%chance% < 9)
  if %world.curobjs(4703)% < 8
    say ������ ��� ��� ����. ���� � ��������� ���� ������, �� � ����� ������ � ���� - ������ ������.
    mload obj 4703
    set bonus 1
  end
elseif (%chance% < 15)
  if %world.curobjs(4705)% < 8
    *���� ������ ������ - ����� ������� ����� ����� "������"
    say ������ ��� ���� ������. �� �������� ������ ������ � ���, � ��� ������.
    mload obj 4705
    set bonus 1
  end
end
give all .%actor.name%
if (%bonus% != 1)
  say �����, ���, �� ������ ���� ������� ���.
  %send% %actor% %self.iname% �������� ��� ������� � ������.
  eval temp %actor.gold(+500)%
end
detach 4702 %self.id%
detach 4704 %self.id%
~
#4705
����� ���� "����� ������"~
2 f 100
~
if %exist.mob(4723)% 
  calcuid wolf 4723 mob
  detach 4703 %wolf.id%
end
~
$~
