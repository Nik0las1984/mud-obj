#91100
<911 - Dubinya killed>~
0 f 100
~
if (%world.curobjs(91117)% < 4) && (%random.20% <= 5)
  mload obj 91117
elseif (%world.curobjs(91118)% < 4) && (%random.20% <= 5)
  mload obj 91118
end 
~
#91101
<911 - Gold Unicorn killed>~
0 f 100
~
if (%world.curobjs(91111)% < 4) && (%random.20% <= 5)
  mload obj 91111
end
~
#91102
<911 - Dubinya keeper killed>~
0 f 100
~
if (%world.curobjs(91115)% < 1) && (%random.20% <= 5)
  mload obj 91115
elseif (%world.curobjs(91116)% < 1) && (%random.20% <= 5)
  mload obj 91116
end
~
#91103
<911 - Mogol killed>~
0 f 100
~
if (%world.curobjs(91112)% < 4) && (%random.20% <= 5)
  mload obj 91112
end
~
#91104
<911 - Unicorn killed>~
0 f 100
~
if (%world.curobjs(91110)% < 4) && (%random.100% <= 16)
  mload obj 91110
end
~
#91105
<911 Take apple>~
2 c 0
������� �����~
if %actor.vnum% != -1
  halt
end
if !%arg.contains(�������)% && !%arg.contains(��������)%
  wsend %actor% ������� ���???
  *   return 0
  halt
end
wait 1
if %world.curobjs(91106)%
  *   calcuid apple 91106 obj
  *   wpurge %apple%
  *   wsend %actor% ������, ��� ��� �������...
  halt
end
wload obj  91106
wechoaround %actor% %actor.name% ������%actor.g% � ����� �������� �������...
wsend      %actor% �� ������� �������� �������, � ��� ����� �� �����...
*detach     91105 %self.id%
~
#91106
<911 Put apple>~
2 c 0
��������~
if %actor.vnum% != -1
  halt
end
if !%arg.contains(�������)% && !%arg.contains(��������)%
  return 0
  halt
end
wait 1
if !%actor.haveobj(91106)%
  wsend %actor% � ��� ��� ��������� �������....
  halt
end
wload  obj 91100
wpurge ��������.�������
wechoaround %actor% %actor.name% �������%actor.g% �������� ������� � ������ ����...
wsend      %actor% �� �������� �������� ������� � ������ ����.
wsend      %actor% ��� ��������� ���� ������ ����� � ���������� ����, ����������� ���������� ���������.
detach     91106   %self.id%
~
#91110
<911 Reset all>~
2 f 100
~
calcuid room 91159 room
attach  91106 %room.id%
calcuid room 91107 room
attach  91105 %room.id%
~
$~
