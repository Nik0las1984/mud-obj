#13800
������ � �������~
2 c 100
�����~
wait 1
if !%arg.contains(�������)%
  wsend %actor% _���� ��� �� ����� ���������?
  return 0
  halt
end
wsend %actor% _ �� ������� ��� ������. ������� ������������ ����� ���� � ���� �������� ����������.
wechoaround %actor% _%actor.name% ������%actor.g% ��� ������ � ������%actor.g% �� ���������� ������.
wait 1s
wteleport %actor% 13792
wsend %actor% _�� ������ � ����, ���������� � �����-�� ����.
wechoaround %actor% _%actor.name% �������%actor.g% �� ������� � ����%actor.g% ����� � ����.
~
#13801
������������~
0 r 100
~
wait 1s
say ������������ ������!
wait 1s
say ����� � �� ��� ��� ������!
~
#13802
���� �������� � �������~
0 r 100
~
wait 1s
mecho ��� ���� ��� ���� ��������� �������� � ������� � �������.
wait 1
mpurge %self%
~
#13803
������ �������~
0 f 100
~
if %world.curobjs(13800)% <= 1
  mload obj 13800
end
~
#13804
������ �����~
0 f 100
~
if (%world.curobjs(13801)% < 2) && (%random.1000% <= 100)
  mload obj 13801
end
~
#13805
������ ���������~
0 f 100
~
if (%world.curobjs(13802)% < 3) && (%random.1000% <= 100)
  mload obj 13802
end
~
#13806
������ �����~
2 c 1
������� �����~
if (!%arg.contains(����)%)
  if (%cmd% == �����)
    return 0
  else
    wsend %actor% _��� �� ������ %cmd%?
  end
  halt
end
wait 1
wsend %actor% _�� ������� � ����� �� ����� � ������� �������� ����� � ������ ��������� � ���������� ���������.
wechoaround %actor% _%actor.name% ������%actor.g% ����� � ����� �� �����.
wait 1s
wsend %actor% _�� ������� ����� � ���������� ���� ���-�� ���������, ������ ���� ���� ��� ���������� ��������.
wechoaround %actor% _%actor.name% ��������%actor.g% ����� �, ��������, ����� ������%actor.g%.
wait 1s
wsend %actor% _�� ��������� ����� �� �� �����.
wechoaround %actor% _%actor.name% ��������%actor.g% ����� ������� �� �����.
~
#13807
��������� ��������~
0 k 100
~
if %world.curmobs(13811)% <= 1
  ��� ������� ���� � ����...
  ���� ������� �� ���, � ���� ����, ���� ������!
  wait 1
  mecho �������� ������� �������... �� ������� ������ ������ ������� ������ ������!
  mload mob 13811
end
~
#13808
������� �������~
0 q 100
~
wait 1 
if %self.fighting%
  halt
end
���
say �� ��� �� ������ ������ ����?
say �������, ������� ���� �����?
wait 1s
say �� ����������!
���� .%actor.name%
~
#13809
������������ ��������~
0 q 100
~
wait 1
��
say � ���� ���.
wait 5
say �� �������� ������?
say ������� ��� ���!
attach 13810 %self.id%
detach 13809 %self.id%
~
#13810
������ ��������~
0 j 100
~
wait 1
if (%object.vnum% != 13721)
  ���
  drop .%object.name%
  halt
end
��� �������� ������������� ������.
wait 1s
say �������, �� ���������
wait 1
��� ��������� ������� ������ � �������������� �����.
mpurge %object%
wait 1s
mecho ������ ���������� � ����� �����.
wait 1s
mecho ����� ��� ������ ������ �����.
wait 1s
mecho ����� ����� ���������, ����� ���� ������� ������� �������.
mload mob 13805
detach 13810 %self.id%
~
#13811
������� ������~
0 f 100
~
if %world.curobjs(13804)% <= 1
  mload obj 13804
  mdoor 13843 east room 13833
end
if (%world.curobjs(13801)% < 2) && (%random.1000% <= 60)
  mload obj 13801
end
mload obj 13708
~
#13812
������� ����������� ���� ��������~
0 d 0
����� ������ ����~
wait 1
if !%speech.contains(������)%
  say �� �����!
  halt
end
say ������-������
say ������ ��������, ������ �� ��������!
��� �� ������� ����� �������� � ������.
mload obj 13708
mload obj 13804
give ��� .%actor.name%
��� ������ �������� �� ����.
mecho ����� ������������ ����� ���� � �������� ���� � ���.
mdoor 13843 east room 13833
wait 1
mpurge %self%
~
#13813
���������� ���� �������~
0 n 100
~
wait 1
if %exist.mob(13810)%
  say ������� ���!
  mecho ���-�� �� ����� ������ ����������� ����������� ����.
  wait 5
  mecho � �������� �������� ���������� ���.
  calcuid target 13810 mob
  mpurge %target%
  mat 13843 mload mob 13812
  wait 1s
  say �������... ��� �������...
  say ������ � �������� ��� � ���� ���... ��� ������� �� ���.
  say ������ � ��� ������ �������� � ������� ���
  wait 1s 
  say �� ��� � ������� ����!
  eval charlist %self.pc%
  foreach pc %charlist%%
    if %pc.rentable%
      mteleport %pc% 13835 horse     
      wait 1
      msend %pc%  �� ��������� � ����...
    end
  done
else
  say �� ���� �������. ����� ��� �������� � � ������� ����!
  attach 13814 %self.id%
end
~
#13814
���� �������� � �������� �������~
0 j 100
~
wait 1
if %object.vnum%==13804
  wait 1
  mpurge %object%
  say �������! �� ���������!
  say ������ � ������� ����.
  switch %random.10%
    case 1
      if %world.curobjs(13704)% <= 4
        mload obj 13704
        ���� ��� .%actor.name%
      else
        mload obj 13811
        ���� �����.����� .%actor.name%
      end
    break
    case 2
      if %world.curobjs(13705)% <= 4
        mload obj 13705
        ���� ������ .%actor.name%
      else
        mload obj 13811
        ���� �����.����� .%actor.name%
      end
    break
    case 3
      if %world.curobjs(13706)% <= 4
        mload obj 13706
        ���� ����� .%actor.name%
      else
        mload obj 13811
        ���� �����.����� .%actor.name%
      end
    break
    case 4
      if %world.curobjs(13709)% <= 4
        mload obj 13709
        ���� ������ .%actor.name%
      else
        mload obj 13811
        ���� �����.����� .%actor.name%
      end
    break
    case 5
      if %world.curobjs(13710)% <= 4
        mload obj 13710
        ���� ������ .%actor.name%
      else
        mload obj 13811
        ���� �����.����� .%actor.name%
      end
    break
    case 6
      if %world.curobjs(13810)% <= 4
        mload obj 13810
        ���� ���� .%actor.name%
      else
        mload obj 13811
        ���� �����.����� .%actor.name%
      end
    break
    default
      mload obj 13811
      ���� �����.����� .%actor.name%
    break
  done
  say �����!
  halt
end
say ��� ��� �� �����!
detach 13814 %self.id%
~
#13815
������� ��������~
0 k 50
~
switch %random.3%
  case 1
    if (%world.curmobs(13814)% < 2)
      mecho _������� ������ � �� �� ��� �������� ��������.
      mload mob 13814
    end
  break
  case 2
    if (%world.curmobs(13817)% < 2)
      mecho _������� ������ � �� �� ��� �������� ������� ����� ����.
      mload mob 13817
    end
  break
  case 3
    if (%world.curmobs(13818)% < 2)
      mecho _������� ������ � �� �� ��� ������ ������ ����� ����.
      mload mob 13818
    end
  break
done
end
~
$~
