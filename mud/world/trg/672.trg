#67200
����� � ������-��������~
0 q 100
~
tell %actor.name% _ ����������, %actor.name%!
tell %actor.name% _ �� � ������ ��� �������� ���� �, �� �� � ������!
tell %actor.name%   ����� ���, ������-��������,  ������ ��� ��� ��� �����.
tell %actor.name% _ ���� �� �� ����� ����������� �������, �� ��� � �� ��������.
tell %actor.name% _ ������� ��������� ���, ���� � ��� ���������, ���� ���� �� ���.
tell %actor.name% _ �� �� ������ ���, ���� ���� ����� � ����, � � �� ����������� ����.
������ %actor.name%
attach 67218 %self.id%
~
#67201
� ��� � �����~
0 k 33
~
switch %random.20%
  case 1
    msend %actor% _���� ��������� ���� ������ ���� ��� �� ��������� � �����!
    mechoaround %actor% _���� ��������� ����� ������ ������ %actor.vname% ����� �� ���������!
    mdamage %actor% 50
  break
  case 2
    msend %actor% _���� ��������� ���� ������ ���� ��� �� ������ � �����!
    mechoaround %actor% _���� ��������� ����� ������ ������ %actor.vname% ����� �� ������!
    mdamage %actor% 100
  break
  case 3
    msend %actor% _���� ��������� ���� ������ ���� ��� �� ���� � �����!
    mechoaround %actor% _���� ��������� ����� ������ ������ %actor.vname% ����� �� ����!
    mdamage %actor% 150
  break
  case 4
    msend %actor% ���� ��������� ���� ������ ���� ��� �� ����� � �����!
    mechoaround %actor% _ ���� ��������� ����� ������ ������ %actor.vname% ����� �� �����!
    mdamage %actor% 200
  break
  default
  break
done
end
~
#67202
����� � ����~
0 q 100
~
tell %actor.name% _��, ��, �������� ���� ������ �� �������, ����� �� ������, 
tell %actor.name% _� ����� ������� ��� ��� ������.
tell %actor.name% _��� ������ ���� �����-�������� �� ���� � �� ��������� ���������.
���
wait 3s
tell %actor.name% _���, ����� ���� ������, ����-��������? �� � ���� �� ���� ����
tell %actor.name% _������, � ������ ���������!
���
~
#67203
����� �� ���~
2 c 0
�����~
if !(%arg.contains(���)%) 
  wsend       %actor% ���� �� ������ �����?
  halt
end
if %actor.sex%==1
  wechoaround %actor% %actor.name% ����� ����� �� ���.
else 
  wechoaround %actor% %actor.name% ����� ������� �� ���.
end
wsend       %actor% �� ����� ������������� ����� �� ����.
wteleport %actor%  67217
wechoaround %actor% ���-�� �������� ����.
~
#67204
����� ����~
0 f 100
~
if (%world.curobjs(67229)% <1) && (%random.33% == 1)
  mload obj 67229
end
if %world.curobjs(67203)% == 0
  mload obj 67203
end
~
#67205
������ � ����~
2 c 0
��������~
if !(%arg.contains(����)%) 
  wsend       %actor% ���� �� ������ ��������?
  halt
end
if %actor.sex%==1
  wechoaround %actor% %actor.name% �������� �������� � ����.
else 
  wechoaround %actor% %actor.name% �������� ��������� � ����.
end
wsend       %actor% �� �������� � ���� �� �����.
wteleport %actor%  67203
wechoaround %actor% ���-�� �������� �������� � ����.
~
#67206
�������� ������~
2 c 0
��������~
if !(%arg.contains(������)%) 
  wsend       %actor% ��� �� ������ �����������???
  halt
end
wsend       %actor% �� ������ ��������� �������� ������.
wechoaround %actor% %actor.name% �� ������� �������� �� ���� �����%actor.g% �������� ������.
wait 1
wecho _����� ������ ���������� ����� ������� � �������� ��������.
wait 2
wecho _����������� ���� ����������� �������� ������� ������.
wload mob 67208
detach 67206 %self.id%
~
#67207
������ ������~
0 f 100
~
if %world.curobjs(67209)% == 0
  mload obj 67209
  ���� �����
  mload obj 67207
end
~
#67208
������ ������~
0 f 100
~
if %world.curobjs(67216)% == 0
  mload obj 67216
end
~
#67209
������ �������~
0 f 100
~
if %world.curobjs(67210)% == 0
  mload obj 67210
  ���� �����
  mload obj 67217
end
~
#67210
���� ���� ����1~
0 j 100
~
wait 2s
switch %object.vnum%
  case 67207
    * ����� ������
    %purge% %object%
    if (%world.curobjs(67221)% < 5) && (%random.100% < 26)
      wait 2s
      mload obj 67221
      ���� all .%actor.name%
      ���� all
    else
      say ��, �� �����... ������� ��� ���� - ������ �������. 
    end
  break
  case 67216
    * ����� ������
    %purge% %object%
    if (%world.curobjs(67224)% < 5) && (%random.100% < 34)
      wait 2s
      mload obj 67224
      ���� all .%actor.name%
      ���� all
    else
      say ��, �� �����... ������� ��� ���� - ������ �������. 
    end
  break
  case 67217
    * ������ �������
    %purge% %object%
    if (%world.curobjs(67218)% < 5) && (%random.100% < 34)
      wait 2s
      mload obj 67218
      ���� all .%actor.name%
      ���� all
    else
      say ��, �� �����... ������� ��� ���� - ������ �������. 
    end
  break
  default
    say ���? ����� ��� ���?
    ���� all
  break
done
~
#67211
���� ����2 ����~
0 j 0
~
wait 2s
if %object.vnum% ==67216 
  wait 1
  mjunk all
  if (%world.curobjs(67221)% < 5) && (%random.3% == 1)
    wait 2s
    mload obj 67221
    ��� ��� %actor.name%
  end
end
~
#67212
����� ����~
0 n 100
~
mecho ���� �������� �������� �� ���.
say  �� ����� ������!
say ������ ��� � �����, � � ���� ���-��� ������.
wiat 1s
say ���� � ���� ��������� ����, �� � ���� ������ �������.
�� 
~
#67213
���� ����3 ����~
0 j 0
~
wait 2s
if %object.vnum% ==67217 
  wait 1
  mjunk all
  if (%world.curobjs(67224)% < 5) && (%random.3% == 1)
    wait 2s
    mload obj 67224
    ��� �������� %actor.name%
  end
end
~
#67214
������� ������~
0 f 100
~
if (%world.curobjs(67228)% <1) && (%random.3% == 1)
  mload obj 67228
end
~
#67215
������ ������~
0 f 100
~
if (%world.curobjs(67227)% <1) && (%random.3% == 1)
  mload obj 67227
end
~
#67216
��������� �����~
2 c 0
��������� ������� ����������~
if !(%arg.contains(�����)%) 
  wsend       %actor% � ���� �� ������ ������������ �����???
  return 0
  halt
end
wsend       %actor% ������������, �� ��������� ����� ����� ������� �������.
wechoaround %actor% %actor.name% �������%actor.g% ���� �� ����� �������.
DG_CAST '���������' %actor.name%
DG_CAST '��������������' %actor.name%
DG_CAST '����' %actor.name%
if %actor.sex%==1
  wsend  %actor% ������� ����� ������� �������� ���, �� ������� ����, ����� ����� ���.
else 
  wsend  %actor% ������� ����� ������� �������� ���, �� ���������� ������, ����� ����� ���.
end
if (%random.100% < 66 )
  detach 67216 %self.id%
end
~
#67217
����� ����~
2 f 100
~
calcuid starik 67201 mob
detach 67200 %starik.id%
detach 67218 %starik.id%
attach 67200 %starik.id%
calcuid kowch1 67232 room
detach 67219 %kowch1.id%
attach 67219 %kowch1.id%
calcuid dikowin 67205 mob
detach 67220 %dikowin.id%
calcuid ldroom 67216 room
detach 67226 %ldroom.id%
attach 67226 %ldroom.id%
calcuid ldroom 67219 room
detach 67226 %ldroom.id%
attach 67226 %ldroom.id%
calcuid ldroom 67221 room
detach 67226 %ldroom.id%
attach 67226 %ldroom.id%
calcuid ldroom 67223 room
detach 67227 %ldroom.id%
attach 67227 %ldroom.id%
calcuid ldroom 67224 room
detach 67227 %ldroom.id%
attach 67227 %ldroom.id%
calcuid ldroom 67225 room
detach 67227 %ldroom.id%
attach 67227 %ldroom.id%
calcuid ldroom 67234 room
detach 67225 %ldroom.id%
attach 67225 %ldroom.id%
calcuid ldroom 67238 room
detach 67225 %ldroom.id%
attach 67225 %ldroom.id%
calcuid ldroom 67239 room
detach 67225 %ldroom.id%
attach 67225 %ldroom.id%
calcuid ldroom 67250 room
detach 67225 %ldroom.id%
attach 67225 %ldroom.id%
calcuid eagleroom 67217 room
detach 67206 %eagleroom.id%
attach 67206 %eagleroom.id%
~
#67218
���� ��~
0 d 0
�� ������~
wait 1s
tell %actor.name% _ �� �����. ����� ���� ��� ������� �� ����� ����� ���-�� �� ������-����.
detach 67200 %self.id%
detach 67218 %self.id%
~
#67219
��������� ����~
2 c 0
������ ������� ���������~
if !(%arg.contains(����)%) 
  wsend       %actor% ��� �� ������ ��������� �����???
  return 0
  halt
end
wait 1s
wsend       %actor% �� ����� ���� � �� ����� ��������� ��� �������� �������.
wechoaround %actor% �����������, %actor.name% ��������%actor.g% ���� �������� �������.
calcuid kovsh 67212 obj
wait 1
wpurge %kovsh%
wload obj 67201
calcuid dikowin 67205 mob
attach 67220 %dikowin.id%
calcuid kowch1 67232 room
detach 67219 %kowch1.id%
~
#67220
������� ����� �����~
0 c 0
������� �����~
if !(%arg.contains(�����)%) 
  msend       %actor% ���� �� ������ �������???
  return 0
  halt
end
wait 1s
msend       %actor% �� ����� ���� � �������� ��� � ����� �����������.
mechoaround %actor% ���� ����, %actor.name% ������%actor.q% ��� � ����� �����������.
mecho ����� ���������� ����������� �� �������!
wait 1
mecho � ��������� �� ����� ������ ������ �� �����.
wait 1
mecho ��������� �������, ����� ��������� ��������� � ������.
if %actor.level% > 22
  msend       %actor% _�� ������ ���� �� �������� 40000 ����� �����...
  %actor.exp(+40000)%  
end
calcuid kov 67201 obj
mpurge  %kov%
mload mob 67211
calcuid dikow 67205 mob
mpurge  %dikow%
~
#67221
������� ����� � ��������~
1 h 100
~
wait 1s
calcuid krowi 67203 obj
if (%krowi.room%==67247)
  oecho ����� ����� �� ����� � �������� ��������� ������ �� ������� ����������� ��������.
  wait 1s
  oecho ������� ����� ������ ����� ��������.
  wait 1s
  oecho ����� �� ���� ������� ������� � ��������� �������� ������.
  wait 1s
  oecho �������� ����� ��� ���� �������� ��������!!!
  oload mob 67212
  calcuid statu 67206 obj
  opurge  %statu%
  wait 1
  opurge  %self%
end
~
#67222
������ �������~
0 b 50
~
switch %random.6%
  case 1
    mecho ������-�������� ����� �������, ����������.
  break
  case 2
    mecho ������-�������� �������� ����������, ���������.
  break
  say �� ���������� ���� ����������.
  foreach target %self.pc%
    �� %target.name%
  done
  wait 2
  say �� ���� ��� � ���� ���������!
  foreach target %self.pc%
    ����� %target.name%
  done
break
case 4
  mecho ������-�������� �������� ������, ����������
break
default
break
done
end
~
#67223
���� ������ ���~
0 d 0
������ ������� ���������� ������~
wait 1s
say ��� ���, ���� �� ����� ��� ��� �����...
say ������� �� ����������, �� ������� ������, � � ���� ����� �...
���
wait 1s
say ... ��... ����� ���� ����� ��������.
wait 1s
say � ����� � ������ ���������� ���� ��� � ������� ����� �������.
wait 1s
say ����� �� ���� ��� �������� ��������� ������ ������� ���������.
say �� �� ���� ����� �� ��� �� ������, �� � �� ������ ����� ������� ������������ ��.
say ���� ���� ����� - ��������� �������� ���� ����.
wait 1s
mload obj 67204
���� ���� .%actor.name%
mecho ������ ������� ������� � ������ ���� �� �����.
wait 1
%purge% %self%
~
#67224
���� ����� �������~
0 j 100
~
if %object.vnum% != 67204
  msend %actor% ��� ��� �� �����, � ���, �������, ����������.
  return 0
  halt
end
wait 1
mpurge %object%
wait 2s
say ��� ��� �� ����%actor.q% ���� ������...��� ������� ��...
wait 2s
if (%actor.level% > 26) && (%actor.level% < 28)
  msend %actor%  �� ������ ���� �� �������� 400000 ����� �����...
  %actor.exp(+400000)%
  say � ���� �������... ��� � ���� ������ ������� � �������� ���� ���.
  say �� ���� �! ��� ������� � ��� ������ �������� � ��������, ������� �� ����� ������� �������.
  say ��� ����� � ������� - ��������� ���� ����� � ���.
elseif ((%world.curobjs(405)% < 1) && (%random.1000% <= 180))
  mload obj 405
  say ���� � ���� ��� ���� ������ ������...
  ���� ��� .%actor.name%
end
��
mecho �������� �������� � ����� ��������� � ������.
~
#67225
���� ������� ~
2 b 40
~
if ( %random.100% < 60 )
  detach 67225 %self.id%
end
if (%world.curmobs(67204)% < 1)
  halt
end
if (%world.curmobs(67206)% < 6)
  wecho ������� �������� ������� �� ����.
  wload mob 67206
end
~
#67226
���� �����~
2 b 100
~
if ( %random.100% < 60 )
  detach 67226 %self.id%
end
if (%world.curmobs(67204)% < 1)
  halt
end
if (%world.curmobs(67200)% < 5)
  wecho ������ ���������� ������� �� ��� �����.
  wload mob 67200
end
~
#67227
���� �����~
2 b 80
~
if ( %random.100% < 60 )
  detach 67227 %self.id%
end
if (%world.curmobs(67207)% < 1)
  halt
end
if (%world.curmobs(67203)% < 5)
  wecho ������ �������� ��������� �� ������� ����.
  wload mob 67203
end
~
#67228
������ ����� ���� � ����~
0 f 100
~
mjunk all
~
#67229
������� ���� � �����~
0 z 100
~
detach 67208 %self.id%
~
#67230
������� ���� � �������~
0 z 100
~
detach 67209 %self.id%
~
$~
