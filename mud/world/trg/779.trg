#77900
��������� �������� ������~
0 j 100
~
wait 1
if %object.vnum%!=77901
  halt
end
���� ����
~
#77901
���� � ������ � ���������~
0 r 100
~
wait 1
mecho ����� �������� ����� ����������� �������.
mecho �� ��������� �������� � ��������� ���������, �� ��� ��� �� �������.
����
wait 1
�����
wait 1
mecho ������� �� ������ �������� ������������ ������ �� ����. 
~
#77902
����������� ��������� ������~
0 q 100
~
wait 1
msend %actor% ������-�������� ������ ����:
msend %actor% - ������ ����, %actor.name%!
msend %actor% - � ���� ��������� ���� ����� ���� �� �������� ����� �� 10 ���.
~
#77903
����������� ��������� ���������~
0 q 100
~
wait 1
msend %actor% ���������-��������� ��������� ����:
msend %actor% - ������ %actor.name%.
msend %actor% - � ���� ��������� ���� ����� ���� �� ��������� ����� �� 10 ���.
~
#77904
������� ������-���������  ~
0 m 10
~
wait 1
switch %amount%
  case 10
    wait 1
    msend %actor.name% ������-�������� ����������� ����� �� �����, ����� ��� ����� ������������ � ���.
    wait 1s
    msend %actor.name% �� ������� �� ������ ����� ���� �� ������ �����.
    if %actor.sex%==1
      mechoaround %actor% %actor.name% ����� �� �����.
      mechoaround %actor% %actor.name% ����� �� ������ �����.
    else
      mechoaround %actor% %actor.name% ������� �� �����.
      mechoaround %actor% %actor.name% ������ �� ������ �����.
    end
    wait 1s
    msend %actor.name% �� �������� � ������� ������ ����.
    msend %actor.name% �������� �������� �� ����� � ������ �����.
    mteleport %actor.name% 77966
    wait 1s
    if %actor.sex%==1
      mat 77966 mechoaround %actor% %actor.name% ������� �� ������.
      mat 77966 mechoaround %actor% %actor.name% ���� � ����.
    else
      mat 77966 mechoaround %actor% %actor.name% �������� �� ������.
      mat 77966 mechoaround %actor% %actor.name% ������ � ����.
    end
    mat 77966 mechoaround %actor% �������� �������� �� ����� � ������ �����
    wait 1s
    mat 77949 mecho ������-�������� ������� �����.
  break
  default
    msend %actor% ���-�� �� ��.
    msend %actor% � ������� ����������� �����, � ��� ��������� ���. 
    ���� %amount% %actor.name%
  break    
done
~
#77905
������� ���������-������~
0 m 10
~
wait 1
switch %amount%
  case 10
    wait 1
    msend %actor.name% ���������-��������� ��������� ����� �� �����, ����� ��� ����� ������������ � ���.
    wait 1s
    msend %actor.name% �� ������� �� ������ ����� ���� �� ������ �����.
    if %actor.sex%==1
      mechoaround %actor% %actor.name% ����� �� �����.
      mechoaround %actor% %actor.name% ����� �� ������ �����.
    else
      mechoaround %actor% %actor.name% ������� �� �����.
      mechoaround %actor% %actor.name% ������ �� ������ �����.
    end
    wait 1s
    msend %actor.name% �� �������� � ������� ������ ����.
    msend %actor.name% ���������-��������� �������� �� ����� � ������ �����.
    mteleport %actor.name% 77949
    wait 1s
    if %actor.sex%==1
      mat 77949 mechoaround %actor% %actor.name% ������� �� ������.
      mat 77949 mechoaround %actor% %actor.name% ���� � ����.
    else
      mat 77949 mechoaround %actor% %actor.name% �������� �� ������.
      mat 77949 mechoaround %actor% %actor.name% ������ � ����.
    end
    mat 77949 mechoaround %actor% ���������-��������� �������� �� ����� � ������ �����
    wait 1s
    mat 77966 mecho ���������-��������� ������� �����.
  break
  default
    msend %actor% ���-�� �� ��.
    msend %actor% � ������� ����������� �����, � ��� ��������� ���. 
    ���� %amount% %actor.name%
  break    
done
~
#77906
��������� �������� ���������~
0 j 100
~
wait 1
if %object.vnum%!=77908
  halt
end
���� �������
~
#77907
������ ��������~
0 f 100
~
if (%world.curobjs(77900)% < 10) && (%random.10% <= 3)
  mload obj 77900
end
~
#77908
������ �����~
0 f 100
~
if (%world.curobjs(77906)% < 3) && (%random.10% <= 1)
  mload obj 77906
end
~
#77909
������ ��������~
0 f 100
~
if (%world.curobjs(77905)% < 6) && (%random.10% <= 2)
  mload obj 77905
end
~
#77910
���� �������~
0 j 100
~
wait 1
if %object.vnum% != 93603
  � ��� ���? ��� ��� ����?
  ���� ���
  halt
end
wait 1
mpurge %object%
� �! �� ����� ��� ������! � � ����� �� ���������! ��� ��� ������!
� �� ����� ���� ������ ����������� � ��� ��... ��-���������!
���
if (%world.curobjs(77909)% < 2) && (%random.1000% =< 100)
  mecho - ���, ��� ��� �������� ���� ������ �� ���������������.
  mecho - � �� ������� �� ��������� ����������.
  mload obj 77909
  give ����� %actor.name%
else
  mecho - ���, ������, ��� ������� ������� �� ��, ��� � ��� ������ ��� ������.
  msend %actor% ������� ��� ��� 500 �����.
  %actor.gold(+500)%
  mechoaround %actor% ������� ��� %actor.dname% ������ �����.
  if (%world.curobjs(239)% < 50) && (%random.1000% <= 100)
    mload obj 239
    ���� ��� %actor.name%
  end
end
~
$~
