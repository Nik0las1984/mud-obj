#34600
���� ������ �������~
0 d 0
������ �����~
wait 2s
��� %actor.name%
�� %actor.name%
wait 1
say �������� ���� �������� ����������!
say ���� �����, �� ����� �������� ������, ������ � ���� ��� ������� ��������.
say ��� ������� ��������� ������� �����....
say ��� ���� ������ ����� ������...
���
say ���� ���! ��� �� � ����������� ���������!!!!
���
~
#34601
���� ������� �������~
0 j 100
~
wait 1
if %object.vnum% != 34604 
  say ����� ��� ���? 
  eval getobject %object.name%
  ���� %getobject.car%.%getobject.cdr%
  halt
end
wait 1
mpurge %object%
wait 2s
say ��������� ����, ����! �������� ������ ���� ����!!
wait 2s
mecho ������ ������ ������� �������� ��������.
if (%random.1000%  <= 10)
  mload obj 103
  ���� ��� .%actor.name%
else
  %actor.exp(+100000)%
  msend �� ������ ���� �� �������� 100000 ����� �����.
end
%actor.gold(+5000)%
msend ������ ������ ��� ��� 5000 ���.
mechoaround %actor% ������ ������ ��� ������� ����� ��� %actor.dname%.
����
~
#34602
������ � ���� ��� �����~
0 r 100
~
if !(%actor.affect(���������)%)
  say ��, ��������%actor.w% %actor.name%!!! ��� ������%actor.g% ������ �� �������!!!!
  ������
  mkill %actor%
end
~
#34603
������� � ������~
0 q 100
~
wait 1s
say ��� ���, ������ ������...
say �� � ������� - �� ����������, � �����-���� �� ���-������.
say � ����-�������� ���� ������ �� ������� �����.
say ����� ���� �����������, ���� � ������� �������� ������� ����.
say � ����� ������� �� ��� �����������...
���
calcuid repopmob 34612 mob
detach 34603 %repopmob.id%
~
#34604
����� ������ � ����~
2 f 100
~
calcuid rep1opmob 34612 mob
detach 34603 %rep1opmob.id%
attach 34603 %rep1opmob.id%
~
#34605
���� ������ - ���� ��� ��� �� ��� - �����~
0 c 0
����� ���~
wait 2s
msend %actor% �� ���������� ������ �������, ���������� ������� ����� �� ����.
mechoaround %actor% %actor.name% ������ ����� ����� �� ����... ���-�� �������� �������....
switch %random.3%
  case 1
    wait 2s
    mat 34614 mecho ��������� �����-�����������, ���������, ���������� ����.
    mat 34614 mload mob 34632
    mat 34614 mload mob 34632
    mat 34614 mload mob 34632
    wait 40s
    mat 34614 mecho ��������� ������� ����� ������ ����.
    mat 34614 mload mob 34631
    mat 34614 mload mob 34631
    mat 34614 mload mob 34631
    wait 40s
    mat 34614 mecho ���� �� ������� ������� ������ ����.
    mat 34614 mload mob 34630
    mat 34614 mload mob 34630
    mat 34614 mload mob 34630
    wait 40s
    mat 34614 mecho ����� ����������� �� ����� ����� ������ ����.
    mat 34614 mload mob 34629
    mat 34614 mload mob 34629
    mat 34614 mload mob 34629
  break
  case 2
    wait 2s
    mat 34614 mecho ��������� �����-�����������, ���������, ���������� ����.
    mat 34614 mload mob 34632
    mat 34614 mload mob 34632
    mat 34614 mload mob 34632
    mat 34614 mload mob 34632
    mat 34614 mload mob 34632
    wait 60s
    mat 34614 mecho ��������� ������� ����� ������ ����.
    mat 34614 mload mob 34631
    mat 34614 mload mob 34631
    mat 34614 mload mob 34631
    mat 34614 mload mob 34631
    mat 34614 mload mob 34631
    wait 60s
    mat 34614 mecho ���� �� ������� ������� ������ ����.
    mat 34614 mload mob 34630
    mat 34614 mload mob 34630
    mat 34614 mload mob 34630
    mat 34614 mload mob 34630
    mat 34614 mload mob 34630
    wait 60s
    mat 34614 mecho ����� ����������� �� ����� ����� ������ ����.
    mat 34614 mload mob 34629
    mat 34614 mload mob 34629
    mat 34614 mload mob 34629
    mat 34614 mload mob 34629
    mat 34614 mload mob 34629
  break
  case 3
    wait 2s
    mat 34614 mecho ��������� �����-�����������, ���������, ���������� ����.
    mat 34614 mload mob 34632
    mat 34614 mload mob 34632
    wait 40s
    mat 34614 mecho ��������� ������� ����� ������ ����.
    mat 34614 mload mob 34631
    mat 34614 mload mob 34631
    wait 40s
    mat 34614 mecho ���� �� ������� ������� ������ ����.
    mat 34614 mload mob 34630
    mat 34614 mload mob 34630
    wait 40s
    mat 34614 mecho ����� ����������� �� ����� ����� ������ ����.
    mat 34614 mload mob 34629
    mat 34614 mload mob 34629
  break
  default
  break
done
end
~
#34606
���� �������� � ����� 34604~
0 h 100
~
wait 1
if %actor.vnum% == 34632
  mshou �����! ���� ��������� �� ����! � ������!
end
wait 1
if %actor.vnum% == 34631
  mshou ������! �������� ���� ��������� �� ����-����! �� ������!
end
~
#34607
���� ����~
0 z 100
~
mpurge %self%
~
#34610
������ ����� - ���� ���������~
0 f 100
~
if %world.curobjs(3304)% < 1 && %random.100% < 3
  mload obj 3304
end
~
$~
