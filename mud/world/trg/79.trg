#7900
��������� �����~
2 c 0
���������~
wait 1
if !%arg.contains(�����)%
  wsend %actor.name% ��� �� ������ ���������?
  halt
end
wsend %actor.name% ��� ������ �� ����������� ��� �����, ����� ������������ � �������� ����������� �� ��������
wechoaround %actor% ��� ������ %actor.name% ��������%actor.u% ��� �����, ����� ������������ � �������� ����������� �� ��������
wecho ������ �� ������ ������ ������������ � �������������� ������������
wdoor  7957 north flags a
wdoor  7957 north room  7959
detach 7900 %self.id%
~
#7901
����� � ��������~
0 q 100
~
if !(%exist.mob(7910)%)
  halt
end
wait 1s
msend %actor% �������� ������� ������ � ���������� �� ���.
msend %actor% - ����������, ��� �������, �� ������� ���� ��� ����.
if !%questor79%
  msend %actor% - � ��� ��� �� �����-������ ���������, �� ��� �� ���, �������� �� ����� ������.
  msend %actor% �������� ���������� � ����������:
  wait 1s
  msend %actor% - �� � ����� ����� �������� �����, �� ����� ����� ����� ����� ���������.
  msend %actor% - ���� ��� �����, ��� ����� - ������ �� ����-�������.
  msend %actor% - � ����� �������� �� ��� - ����-����, ��� � ����� �����, ���� � ������ ������ �� ���� �������.
  msend %actor% �������� ����� ����������.
  wait 1s
  msend %actor% ����� ����������:
  msend %actor% - ������, ���� �� ���� �����%actor.g% ���� �����, ��� ����� ��� ������.
  msend %actor% - ����� � ����� ��� �������� ������, � ������������ ���������� � ��� � ������. 
  msend %actor% - ������� ��� ������� ����-�����, ����� �� ������� �����, ���� �������� ��������, � � � ����� �� ��������.
  �����
  wait 1s
  msend %actor% - ��� �� ��������?
  msend %actor% ������� �������� ���������� �� ��� � �������� ������.
  attach 7902 %self.id%
end
~
#7902
������ ������~
0 d 1
������� ������ ������~
if %actor.vnum% != -1   || !(%exist.mob(7910)%)
  halt
end
wait 1s
if %questor79%
  if %questor79.sex% == 1
    ���
    say ��..� ��� ��������� ������ �������� ������, �� ���� �� ������� ������ ���� ����������... 
    halt
    say ��� � ����, ����� ��� ���� ���������.
  else
    say ��..� ��� ��������� ���� ������ ������, �� ���� �� ������� ������ ��� ����������...
    halt
    say ��� � ����, ����� ��� ���� ���������.
  end
end
makeuid questor79 %actor.id%
global questor79
eval questor79tname %actor.tname%
global questor79tname
eval questor79sex %actor.sex%
global questor79sex
msend %actor% - ��... ��� � � ����� ���� ����� �� � ��� �� ��� ��� ��������.
msend %actor% �������� �������� ����������� � ���.
attach 7903 %self.id%
~
#7903
������ ������~
0 j 100
~
wait 1
if (%object.vnum% != 7905)
  msend %actor% - �������, �� ��� ����� �� ����.
  ���� all
  halt
end
mpurge %object%
if (!%questor79% || (%questor79.id% != %actor.id%))
  msend %actor% - ������� ����, �����%actor.q% �� ��� �����.
  msend %actor% - ���, ����� �����.
  msend %actor% �������� ���� ��� ������ �����.
  eval temp %actor.gold(+300)%
  halt
end
if (!%killer79% || (%killer79.id% != %questor79.id%))
  wait 1
  msend %actor% - �� � ���� ����, %actor.iname%, ����������� ����� ����!
  msend %actor% - �� �� ������� �������. ��� �� ���� �����.
  msend %actor% ������� ���� ��� ������ �����.
  eval temp %actor.gold(+300)%
  halt
else
  msend %actor% - �� ������� ����, %actor.iname%. ��� ���� �� ������.
  msend %actor% - �������%actor.g% �� ����. ������ ���������� �����, ��������� �������.
  msend %actor% - ��� ���� �������... ��������%actor.g%!
  switch %actor.class%
    case 0
      if !%actor.spelltype(���������)%
        mspellturn %actor% ��������� set
      else
        � ��, �� ��� ������ ���������� ���������, ������ � �� ���� ���� ����� ������.
      end
    break
    case 1
      if !%actor.spelltype(������� ������)%
        mspellturn %actor% �����.���� set
      else
        � ��, �� ��� ������ ���������� ������� ������, ������ � �� ���� ���� ����� ������.
      end
    break
    case 6
      if !%actor.spelltype(���� ����)%
        mspellturn %actor% ����.���� set
      else
        � ��, �� ��� ������ ���������� ����������� ��������, ������ � �� ���� ���� ����� ������.
      end
    break
    case 7
      if !%actor.spelltype(����������)%
        mspellturn %actor% ���������� set
      else
        � ��, �� ��� ������ ���������� ����������, ������ � �� ���� ���� ����� ������.
      end
    break
    case 8
      if !%actor.spelltype(����)%
        mspellturn %actor% ���� set
      else
        � ��, �� ��� ������ ���������� ����, ������ � �� ���� ���� ����� ������.
      end
    break
    case 9
      if !%actor.skill(���������)%
        mskillturn %actor% ��������� set
      else
        � ��, �� � ������ �� ������������ �����, ��� ��� � �� ����� ���� ������ � ���� ����
      end
    break
    case 12
      if !%actor.spelltype(���������)%
        mspellturn %actor% ��������� set
      else
        � ��, �� ��� ������ ���������� ���������, ������ � �� ���� ���� ����� ������.
      end
    break
    case 13
      ���
      � �����? �� ���� ��� ������ ������, ����� ��� ���� ������.
    break
    default
    break
  done
  eval rnd %random.10% 
  if (%rnd% < 4 && world.curobjs(7918) < world.maxobj(7918))
    mload obj 7918
    ���� ��� %actor.name%
  elseif (%rnd% < 7 && world.curobjs(7919) < world.maxobj(7919))
    mload obj 7919
    ���� ����� %actor.name%
  else
    msend %actor% �������� �������� ��� �� �������� ������ �����.
    eval temp %actor.gold(+500)%
  end
end
detach 7903 %self.id%
~
#7904
���� ����-����~
0 f 100
~
%load% obj 7905
if (%actor.vnum% == -1)
  makeuid killer79 %actor.id%
  calcuid questor 7901 mob
  remote killer79 %questor.id%
end
~
#7905
������. ����������~
2 f 100
~
calcuid questor 7901 mob
if %questor%
  attach 7901    %questor.id%
  detach 7902    %questor.id%
  detach 7903    %questor.id%
  rdelete questor79 %questor.id%
  rdelete questor79tnam %questor.id%
  rdelete questor79sex %questor.id%
  rdelete killer79 %questor.id%
end
wdoor 7957 north purge
wait 1
calcuid roots 7957 room
attach 7900 %roots%
~
#7906
�������~
2 e 100
~
wait 5
wsend %actor% &R������� ������ ���� ���!&n
~
#7907
������ �����-������� (���� ����� � �������� ����)~
0 f 100
~
if (%random.1000% <= 150) && (%world.curobjs(511)% < 1)
  mload obj 511
end
~
#7908
������ ������� (���� ����� ��������)~
0 f 100
~
if (%random.100% <= 10) && (%world.curobjs(518)% < 1)
  mload obj 518
end
~
$~
