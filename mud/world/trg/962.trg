#96201
���-����� �����������~
0 b 100
~
mecho &R��������� �� ���-����� ����� ���� ������� ���!&n
foreach victim %self.char%
  mdamage %victim% 100 
done
~
#96202
������ ����� ������~
0 k 100
~
if !%self.haveobj(96200)%
  %load% obj 96200
  ���� ����
end
~
#96203
������-����� ����� ��������~
0 k 20
~
set char %random.pc%
msend %char% ������� ������ ����� ������-����� �������� �����, ������� ����� ��� � ���!
%char.position(6)%
%char.wait(6)%
mechoaround %char% ������� ������ ����� ������-����� �������� �����, ������� ����� %char.rname% � ���!
~
#96204
������ ������������� � �����~
0 k 100
~
if %self.hitp% < 3000
  %echo% ���������� �������, ������ ��������� � �����.
  mtransform 96205
  detach 96204 %self.id%
end
~
#96205
������ ���-�����~
0 f 100
~
%load% obj 96201
if (%random.100% <= 30) && (%world.curobjs(96207)% < %world.maxobj(96207)%)
  mload obj 96207
end
if (%random.100% <= 30) && (%world.curobjs(96208)% < %world.maxobj(96208)%)
  mload obj 96208
end
~
#96206
������ ����� ����� �����~
0 q 100
~
wait 1
if !%self.haveobj(96200)%
  %load% obj 96200
  ���� ����
end
if (%actor.class% == 0) || (%actor.class% == 1) || (%actor.class% == 6) || (%actor.class% == 7) || (%actor.class% == 13)
  mkill .%actor.name%
end
~
#96207
������ ������~
0 f 100
~
if (%random.100% <= 10) && (%world.curobjs(96202)% < %world.maxobj(96202)%)
  mload obj 96202
end
~
#96208
������ ���������~
0 f 1000
~
if (%random.100% <= 10) && (%world.curobjs(96203)% < %world.maxobj(96203)%)
  mload obj 96203
end
~
#96209
������ �����~
0 f 100
~
if (%random.100% <= 30) && (%world.curobjs(96205)% < %world.maxobj(96205)%)
  mload obj 96205
end
~
#96210
��������� ����� � ������~
1 c 2
����������~
if (%arg.words(1)% == ����� && %arg.words(2)% == ������)
  if (%actor.haveobj(96206)% )
    foreach obj %actor.objs%
      if (%obj.vnum% == 96206)
        %purge% %obj.id%
      break
    end
  done
  if  (%world.curobjs(96204)% < %world.maxobj(96204)%)
    otransform 96204
    %send% %actor.name% �� �������� � ���������� ��������� ����� ������ � ����� �����.
    %send% %actor.name% ��� ������ ��� ������� ����� ������� ������!
    detach 96210 %self%
  else
    %send% %actor.name% �� ���������-���������, �� ������ ��������� �� ����� � ��� �� �����.
  end
else
  %send% %actor.name%  ��� �������, ����-�� ��� ���-���� �� �������.
end
else
%send% %actor.name% ���������� ��� � � ����?
end
~
#96211
������ ������~
0 f 100
~
if (%random.100% <= 30) && (%world.curobjs(96206)% < %world.maxobj(96206)%)
  mload obj 96206
end
~
#96212
������ � ���-�����~
0 w 100
~
if %castnum% == 26
  %self.hitp(%self.maxhitp%)%
  %echo% �������� ��� ���������� � ���-����� ������� �������� �� ��������� ���!
end
~
#96213
������ ����� �������������~
0 k 100
~
wait 2s
if %self.vnum% == 96207
  mtransform 96209
else
  mtransform 96207
end
~
$~
