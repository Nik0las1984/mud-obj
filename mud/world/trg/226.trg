#22600
������ ����� ����� ��������~
0 t 10
�����~
eval Mob %random.npc%
if (%Mob.fighting%)
  wait 1
  mecho �, ����� ! ����%Mob.w% %Mob.name% ! ����� �������� ������ !
  mecho ������ �������� ���� � �������� ���������: "�����"...
  eval Hit %Mob.maxhitp%
  eval Exp ((%Mob.maxhitp%-%Mob.hitp%)*%Mob.level%+1)/2
  %Mob.hitp(%Hit%)% 
  %Mob.exp(+%Exp%)%
end
~
#22601
����� �����~
2 c 0
��������� ������� ������ ����� ��������� ��������� �������~
if (%arg.contains(�����)% || %arg.contains(���)%)
  if (%world.curobjs(22628)% <= 0)
    wsend  %actor% ������ ���! 
    wforce %actor% ��
    wait 1s
    wsend ������%actor.g%? ��� ���-�� ���...
    halt
  end
  wsend %actor% �� ������� �������� �����...
  wechoaround %actor% %actor.name% �����%actor.q% �������� �����...
  wecho ���-��, � ��� � ������! ���, �����! ��, ��� �� �� ��� ������?
  wforce all ���
  calcuid Stone 22628 obj
  wpurge %Stone%
  wload  obj 22630 
else
  wsend %actor% ������ - ������ ������ ���� ���������� - ������� !!!
end
~
#22602
������ ��������~
2 c 0
������� ��������~
if (%arg.contains(������)%)
  wsend %actor% ���, ���, ������ ������� �������� - �����������...
else
  wsend %actor% ���� ��� ��� ������ ���� ?
end
~
#22603
�������� � �������~
2 c 100
��������~
if (%actor.fighting% || %actor.hitp% <= 0) 
  halt 
end   
if (!%arg.contains(�������)% && !%arg.contains(����)%)
  wsend %actor% ������ �������%actor.u%! ��� ��� �� �����, �� ��� ������
  wsend %actor% ������ ������� ������� ���������.
  halt
end
%send% %actor% �� �������� � �������.
wechoaround %actor% %actor.name% �������%actor.g% � �������.
wteleport %actor% 22601
wforce    %actor% ��
~
#22604
����� � �����~
0 q 100
~
if (!%self.fighting% && %self.hitp% > 0)
  wait 1
  switch (%random.4%)                 
    case 1
      mecho ����� ��������� ������� ����� � ����������:
      mecho - �����! ����� �����! ������, ����� � � ������� ������...
    break
    case 2
      mecho ����� ������� �����������:
      mecho - ��������, �� � ��������! ����������� ������� - ��������, ��������� - ��������...
    break
    case 3
      if (%actor.room% == %self.room%)
        mecho ����� �������� �������� �� ����:
        mecho - ����������� �� �������! ������! �� �������! ������ � ������! ���� ��������!
        �����
        ����
        mkill  %actor%
      break;
    end
    case 4
      if (%random.20% == 1 && %world.curobjs(22632)% < 10)
        mecho ����� ������� ������� �����:
        mecho - ����, ��� ����! ���� � �� ���, ���� ��...
        mload obj 22632
        *mforce %self% ���� ���
        mecho ����� ������� ���� ������ �������, � ����������� ���� ����� ������...
        mpurge %self%
      break
    end     
    default   
    break
  done
end
~
#22605
������� ��������� �� �������~
0 k 100
~
set crazy 0
if (%actor.vnum% == -1)
  set crazy %actor%
elseif (%actor.leader%)
  set crazy %actor.leader%
  if (%crazy.vnum% >= 0)
    set crazy 0
  end
end
if (%crazy%)
  mteleport %crazy% 22626
end
say %crazy.name%
~
#22606
����� �����~
0 ft 5
�����~
if (%world.curobjs(22632)% < 20)  
  mload obj 22632
end
~
$~
