#3900
�������� ������ � �������� - ���� ���~
0 r 100
~
switch %self.vnum%
  case 62007
    set vnum 3932
  break
  default
    halt
  break
done
mecho %self.name% ������ �� ��������� �����-�� ���� � �������� ����������� �� �� ��������.
set i 0
while %i% < 8
  mload obj %vnum%
  mload obj %vnum%
  mload obj %vnum%
  mload obj %vnum%
  mload obj %vnum%
  mload obj %vnum%
  mload obj %vnum%
  mload obj %vnum%
  mload obj %vnum%
  mload obj %vnum%
  eval i %i%+1
  eval vnum %vnum%+1
done
detach 3900 %self.id%
~
#3901
���� ������������ ����~
1 c 1
�������~
wait 1
eval first %arg.words(1)%
eval secnd %arg.words(2)%
if (%secnd.contains(���)% && (%first% > 1))
  if (%world.curobjs(3966)% >= 500)
    osend %actor% �� �������� ����� � �����, �� ���� ���������!
    halt
  end
  if (%first% > 10)
    eval first 10
    osend %actor% ������� ����� ����� ��� �� ��������.
  end
  while (%first% > 0)
    oload obj 3966
    calcuid knife 3966 obj
    eval temp %knife.put(%actor%)%
    eval temp %knife.owner(%actor.uniq%)%
    eval first %first%-1
  done
  osend %actor% �� ������� ��������� ����������� ����� �� ����� � ������������ ������.
  oechoaround %actor% %actor.iname% ������%actor.g% ��������� ����������� ����� �� �����.
  halt
end
if (%first% == ���)
  if %world.curobjs(3966)% >= 500
    osend %actor% �� �������� ����� � �����, �� ���� ���������!
    halt
  end
  oload obj 3966
  calcuid knife 3966 obj
  osend %actor% �� ������� ����������� ��� �� ����� � ������������ ������.
  oechoaround %actor% %actor.iname% ������%actor.g% ����������� ��� �� �����.
  eval temp %knife.put(%actor%)%
  eval temp %knife.owner(%actor.uniq%)%
else
  osend %actor% ��� �� ������ �������?
end
~
#3902
������ ���� ��� �������~
1 c 1
��~
return 0
halt
if (%cmd.mudcommand% == �������)
  wait 2s
  eval carrier %self.carried_by%
  if (%carrier.vnum% != -1)
    %purge% %self%
  end
end
~
#3903
������� ��� �� ����� (�� ����)~
1 c 2
�������~
wait 1
eval first %arg.words(1)%
eval secnd %arg.words(2)%
if (%secnd.contains(���)% && (%first% > 1))
  if (%world.curobjs(3966)% >= 500)
    osend %actor% �� �������� ����� � �����, �� ���� ���������!
    halt
  end
  if (%first% > 10)
    eval first 10
    osend %actor% ������� ����� ����� ��� �� ��������.
  end
  while (%first% > 0)
    oload obj 3966
    calcuid knife 3966 obj
    eval temp %knife.put(%actor%)%
    eval temp %knife.owner(%actor.uniq%)%
    eval first %first%-1
  done
  osend %actor% �� ������� ��������� ����������� ����� �� ����� � ������������ ������.
  oechoaround %actor% %actor.iname% ������%actor.g% ��������� ����������� ����� �� �����.
  halt
end
if (%first% == ���)
  if %world.curobjs(3966)% >= 500
    osend %actor% �� �������� ����� � �����, �� ���� ���������!
    halt
  end
  oload obj 3966
  calcuid knife 3966 obj
  osend %actor% �� ������� ����������� ��� �� ����� � ������������ ������.
  oechoaround %actor% %actor.iname% ������%actor.g% ����������� ��� �� �����.
  eval temp %knife.put(%actor%)%
  eval temp %knife.owner(%actor.uniq%)%
else
  osend %actor% ��� �� ������ �������?
end
~
$~
