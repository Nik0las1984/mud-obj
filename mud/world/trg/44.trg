#4400
����������� 1~
0 q 100
~
if !(%exist.mob(4420)%)
  halt
end
wait 1
*if %actor.quested(4401)%
*    msend %actor% - ������ ����, %actor.name%!  
*    msend %actor% - ��� ��� �� �������, ����� �� ��� ��������!
*  halt
*end
msend %actor% - ������ ����, %actor.name%!
msend %actor% - ������� ������ � ���� ����� �����.
msend %actor% ������ ������ ��������.
if !%questor44%
  msend %actor% - �� ���� �� ������%actor.g% �� ���� - �� ������ � ������ �������.
  attach 4401 %self.id%
  *   attach 4405 %self.id%
  *   detach 4400 %self.id%
end
~
#4401
������ ������ ������~
0 d 1
������� ������ ������~
if %actor.vnum% != -1 || !(%exist.mob(4420)%)
  *|| (%questor44%) || !(%exist.mob(4420)%)
  halt
end
wait 1
if %questor44%
  if %questor44sex% == 1
    say � ��� ������ ��� ������ ������ �������, %questor44tname% ������, ��� ��� ����� ���, �������, ��� �������� ������ ����������.
    wait 1
    say ������ ������ � ������, ����������, ��� ������������ �� ������, � ��� ���, ������� �������.
    halt
  else
    say � ��� ������ ��� ������ ���� ����� ������, %questor44tname% ������, ��� ��� ����� ��, �������, ��� �������� ������ ����������.
    wait 1
    say ������� ������ � �������, �����������, ��� ������������ �� ������, � ��� ���, �������� �������. ����� ����� ������, � �� ������� ������ ���������.
    halt
  end
end 
*if %actor.quested(4401)%
*  msend %actor%  � ���� ��� ������ � ������, � ��� ��� �� ��� ���.
*  �����
*  halt
*end
makeuid questor44 %actor.id%
global  questor44
eval questor44tname %actor.tname%
global  questor44tname
eval questor44sex %actor.sex%
global  questor44sex
msend %actor% - ���� � ���� ������ �����, ���, - ������ ������ ����� �� �����.
msend %actor% ������ ���� ������ ���� ����������� �����, �������� ���� ���� ��.
msend %actor% ���-���, � ������ �����.
msend %actor% - �� ���������� ������ ����� ����, ������ �� � �������� ���� �������.
msend %actor% ������������, �������� ���� ������� �� ����. �������� ���������.
msend %actor% ������ ����������� ������� �������...
wait 2s
msend %actor% - � ������� �������� ����, ������� �����, ����������, ������ ������,
msend %actor%   ������ ���������. ������ ����� � - �������� ��� ������, ��, ��������.
msend %actor%   ����� � ���� ����� �� ���.
msend %actor% - ������� � ���, � �� ��������� ��� ���, �� ������ �� ������, ���� ��������.
msend %actor% - � ��� ������, ��� ������� ������, � ��� ������ - �����.
msend %actor% - ������ ��� ����������� � ���� �������, � �� ��� �����, �� � ���� � ����
msend %actor%   ���-�� �����, ����, ��� ������� � ���� ���� ���������� � ���� ����.
if (%actor.sex% == 1)
  msend %actor% - ������, �����, ������ ������ ����� �� ����� ������������ ��������...
elseif 
  (%actor.sex% == 2)
  msend %actor% - ������, �����, �������� ����� �� ��� ����������� ����...
elseif
  msend %actor% - ������, ������� ��� ��� ����.
end
if (%actor.realroom% == %self.realroom%)
  msend %actor% - ������ ������ ����� � ���� � ���-�� ���������...
  dg_cast '���������' .%actor.name%
end
*%actor.setquest(4401)%
attach 4402 %self.id%
*detach 4401 %self.id%
~
#4402
������ ������~
0 j 100
~
return 0
set itemname %object.iname%
msend %actor% �� �������� %self.dname% %itemname%.
if (!%questor44% || !(%questor44.id% == %actor.id%))
  msend %actor% - �������, �� ����� ��� ��� ?
  msend ������ ������� ���������.
  ���� %object.name%
  halt
end
if (!%itemname.contains(������� �����������)%)
  msend %actor% - ��� � ���� � ���� �����, %actor.name%.
  msend %actor% ������ ���������� ����� �������.
  halt
end
return 1
wait 1
if !%killer44% || !(%killer44.id% == %questor44.id%)
  msend %actor% - �� � ���� ����, %actor.name%, ����������� ����� ���� !
  msend %actor% ������ ������ ��������� �� ��� � ������ �����.
  ���� %object.name%
  halt
end
mpurge ����.����
wait 2s
if (%actor.sex% == 1)
  msend %actor% - �������, �����, ��� �� ������� � ���� �������.
  msend %actor% ������ ����� ��� ����.
elseif
  (%actor.sex% == 2)
  msend %actor% - ������� ����, �����, ������� �������.
  msend %actor% ������ ������� �������� ��� �� �������.
else
  msend %actor% - ������� ����, %actor.name%, ����� �� ���� ����� �����.
  msend %actor% ������ ����� ���������� ���.
end
unset questor44
unset questor44tname
unset questor44sex
unset killer44
switch %actor.class%
  case 0
    if (%actor.can_get_spell(���������)%)
      mspellturn %actor% ��������� set
    end
  break
  case 1
    if (%actor.can_get_spell(����� ����)%)
      mspellturn %actor% �����.���� set
    end
  break
  case 6
    if (%actor.can_get_spell(���� ����)%)
      mspellturn %actor% ����.���� set
    end
  break
  case 7
    if (%actor.can_get_spell(����������)%)
      mspellturn %actor% ���������� set
    end
  break
  case 8
    if (%actor.can_get_spell(����)%)
      mspellturn %actor% ���� set
    end
  break
  case 9
    if (%actor.can_get_skill(���������)%)
      mskillturn %actor% ��������� set
    end
  break
  case 12
    if (%actor.can_get_spell(���������)%)
      mspellturn %actor% ��������� set
    end
  break
  case 13
    if ((%random.2% == 1) && (%world.curobjs(214)% < 50))
      mload obj 214
      ���� ��� .%actor.name%
    end
  break
  default
  break
done
eval rnd %random.100%
if %rnd% < 4
  mload obj 4413
  ���� ������ .%actor.name%
elseif %rnd% < 7
  mload obj 4411
  ���� ������� .%actor.name%
elseif %rnd% < 10
  mload obj 4412
  ���� ������ .%actor.name%
elseif (%rnd% < 30) && (%world.curobjs(4407)% < 30)
  mload obj 4407
  ���� ����� .%actor.name%
else
  msend %actor% ������ ��� ��� ������� �����.
  %actor.gold(+500)%
end
%actor.setquest(4400)%
detach 4402 %self.id%
halt
~
#4403
���� �������~
0 f 100
0~
if (%actor.vnum% == -1)
  set killer44 %actor.id%
else
  set killer44 %actor.leader%
end
calcuid questor 4417 mob
remote killer44 %questor.id%
~
#4404
���������� ����������~
2 f 100
~
calcuid questor 4417 mob
if %questor%
  attach  4400      %questor.id%
  detach  4401      %questor.id%
  detach  4402      %questor.id%
  detach  4405      %questor.id%
  rdelete questor44 %questor.id%
  rdelete questor44tname %questor.id%
  rdelete questor44sex %questor.id%
  rdelete killer44  %questor.id%
end
~
#4405
����������� 2~
0 q 100
~
wait  1
mecho ������ ������ ��� ����������� �������.
~
$~
