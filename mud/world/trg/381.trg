#38100
� �������� ���������~
0 h 100
~
wait 1
if %actor.vnum% == 27020
  mteleport %actor% 38143
  mecho ���� ������� ���� ��������� ������� ��� ��������-���������.
  mecho ��������-�������� ������� ������ ������� �����, � ����� �� �����.
  halt
end
wait 1s
foreach target %self.pc%
  msend %actor% �������� �������� ���������, ������ ���.
  msend %target% ��������-�������� ������ : ���� �� ����� �� �����, �� ��������, ��� ������ ������.
  msend %target% _- � � ���� �� ���� ��������� ����� ��� ������ ���������.
  msend %target% _- ����� ���� ���-�� ������������ ��� ������ ����, �� ������� ���
  eval needgold %target.level%*(%target.remort%+1)
  msend %target% _- ������� %needgold% ���.
done
~
#38101
� ������� ���������~
0 r 100
~
wait 1s
foreach target %self.pc%
  eval needgold 10+%target.level%*(%target.remort%+1)
  tell %target.name% ��������� ����� ������ ����� %needgold% ���.
  tell %target.name% ���� �� ������ ������� - �� ��� ���� ���%target.g%
done
���
~
#38102
��� ����� �������~
0 m 1
~
wait 1
eval needgold 10+%actor.level%*(%actor.remort%+1)
if (%amount% < %needgold%)
  ���
  say ���, ����� �� ������ ��� �������� ������...
  halt
end
wait 1
msend       %actor% �������-�������� �������� � ������� ��� ����� ��������.
mechoaround %actor% �������-�������� �������� � ������� %actor.dname% ����� ��������.
msend       %actor% �� ���� ��� �� ���� � ����� ����������� ��������.
mechoaround %actor% %actor.name% � �������� ���� �� ��.
wait 1
msend       %actor% � �����-�� ������ ��� ����������, ��� �� ����� �������.
msend       %actor% �� ������� �������� ����� � ���������� ������ ������.
msend       %actor% ��������, ��� ����� �������� ��������� �� ����.
mechoaround %actor% �������� �������� � ���, �������� ����������� ������.
mteleport %actor% 38147 horse
wait 1
mat 38147 mechoaround %actor% _���-�� ������ ���� �� ������� �����.
msend       %actor% �� ������� ���� ��������, � �� ��� �� ��������.
~
#38103
��� ����� ��������~
0 m 1
~
wait 1
eval needgold %actor.level%*(%actor.remort%+1)
if %self.fighting%
  give %amount% ��� .%actor.name%
  halt
end
if (%amount% < %needgold%)
  wait 1
  ���
  if      (%actor.sex% == 1)
    say �� ����� �����...��� �� �� ������� ������ ����...
  else 
    say ��������� �� �������...���� ���� ��������..
  end
  msend       %actor% �������� �������� ������, � �� ��������� ������� ���.
  mechoaround %actor% �������� �������� ������, � %actor.name% ������%actor.g% ������� ����.
  mteleport %actor% 38168
  mat 38168 mechoaround %actor% _���-�� ������ ���� �� ������� �����.
  msend       %actor% �� ��������� �� ������.
  halt
end
wait 1
msend       %actor% ������-�������� �������� ����� � � ��� ����������� ������.
mechoaround %actor% ������-�������� �������� ����� � %actor.name% �����%actor.q%.
mteleport %actor% 38143 horse
mat 38143 mechoaround %actor% _���-�� ������ ���� �� ������� �����.
msend       %actor% �� ��������� �� ������ �� �� ������� �����.
~
#38104
����� � �����~
2 c 0
����� �������� �������~
if (%actor.vnum% != -1)
  halt
end
if !(%arg.contains(�����)%) 
  wsend %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
if !%actor.rentable%
  wsend %actor% �� ���������� ������� � �����, �� ���������� ���� ��������� ��� �����.
  %actor.hitp(1)%
  halt
end
calcuid bochka 38190 room
if %bochka.pc%
  wsend %actor% ��� ��� ���-�� ����, � ���� �� ���������� - �� ������� ���-����.
  halt
end
wsend %actor% ��������� ������, �� ������� � ����� � �����..
wechoaround %actor% %actor.name% ���������%actor.g% ������ � �����%actor.q% � �����.
wait 1s
wsend %actor% .- �� ������, ������ ����� � ����� ������� ����������� �����.
wteleport %actor% 38190  
~
#38105
������� �������~
2 f 100
~
if (%random.1000% <= 250)
  calcuid zasada 38122 room
  detach 38110 %zasada.id%  
  calcuid zasada 38125 room
  detach 38112 %zasada.id%
  halt
end
switch %random.2%
  case 1
    calcuid zasada 38122 room
    attach 38110 %zasada.id%  
  break
  case 2
    calcuid zasada 38125 room
    attach 38112 %zasada.id%  
  break
done
~
#38106
����� �� �����~
2 c 0
����� �������� �������~
if !(%arg.contains(�����)%) 
  wsend       %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
wsend       %actor% ��������� ������, �� ������� �� �����. ��� � ������ ����� ��������.
wait 1s
wsend %actor% .- �� ������� �� ����� � ��� ������� �� ��� � ���������.
wteleport %actor% 38129
wechoaround %actor% ���-�� ����� �� �����.
calcuid izbozku 38129 room
attach 38104 %izbozku.id%
detach 38107 %izbozku.id%
~
#38107
����� � ����� ����� �����~
2 c 0
����� �������� �������~
if !(%arg.contains(�����)%) 
  wsend       %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
wsend       %actor% ��� ��� ���-�� ����, � ���� �� ���������� - �� ������� ���-����.
~
#38108
����� �� ����~
2 c 0
����� ����������� �������~
if !(%arg.contains(����)%) 
  wsend       %actor% ���� ��� �� ������ �������???
  return 0
  halt
end
wsend       %actor% �� ������� �� ����.
wechoaround %actor% %actor.name% �����%actor.q% �� ����.
wait 1s
wsend %actor% .- �� ����� � ��� ����� ������, � ��� �� �������.
wteleport %actor.name% 38176
wat %actor.realroom% wechoaround %actor% ���-�� ������ ���� �����.
~
#38109
�������� � �����~
2 c 0
�������� ���������~
if !(%arg.contains(����)%) 
  wsend       %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
wsend       %actor% ��������� ����������� ������, �� �������� � �����.
wechoaround %actor% %actor.name% ��������%actor.g% ����.
wait 1s
wsend %actor% .- �� ��������� �� ������ � �������� �����.
wteleport %actor.name% 38143
wat %actor.realroom% wechoaround %actor% ���-�� �������� ���� � �����.
~
#38110
������ 38122~
2 e 100
~
wdamage %actor% 9
wsend       %actor% "������! ����������!" - �������� ��, ����� ��� ������ ���������� ��� � �����!!!!
wechoaround %actor% "������! ����������!" - �������� ��, ����� ��� ������ ���������� ����� %actor.rname%!!!!
wdamage %actor% 9
wload mob 38112
wload mob 38113
calcuid glavar 38112 mob
attach 38111 %glavar.id%
exec 38111 %glavar.id%
calcuid zasada 38122 room
detach 38110 %zasada.id%  
~
#38111
������� �������~
0 z 100
~
mkill %actor%
��� ��� ��! �� ����, ������!!!
calcuid glavar 38112 mob
detach 38111 %glavar.id%
~
#38112
������ 38125~
2 e 100
~
wdamage %actor% 9
wsend       %actor% "������! ����������!" - �������� ��, ����� ��� ������ ���������� ��� � �����!!!!
wechoaround %actor% "������! ����������!" - �������� ��, ����� ��� ������ ���������� ����� %actor.rname%!!!!
wdamage %actor% 9
wload mob 38112
wload mob 38113
calcuid glavar 38112 mob
attach 38111 %glavar.id%
exec 38111 %glavar.id%
calcuid zasada 38125 room
detach 38112 %zasada.id%
~
#38113
����� �����~
0 f 100
~
if (%world.curobjs(38100)% < 5) && (%random.4% == 1)
  mload obj 38100
end
~
#38114
����� �������~
0 f 100
~
if ((%world.curobjs(38101)% < 1) && (%random.1000% <= 100))
  mload obj 38101
end
~
#38115
����� �������~
0 f 100
~
*if (%world.curobjs(613)% < 30) && (%random.4% == 1)
*   mload obj 613
*end
*if (%world.curobjs(614)% < 30) && (%random.4% == 1)
*   mload obj 614
*end
~
#38116
����� ����~
0 f 100
~
if (%world.curobjs(541)% < 1) && (%random.4% == 1)
  mload obj 541
end
~
#38117
�������� ���� ����� � �����������~
2 z 100
~
wechoaround %actor% _���-�� ������ ���� �� ������� �����.
~
#38118
��������� ����� �� �������� ��~
2 e 100
~
wait 1
*%actor.wait(4)%
foreach char %self.pc%
  if %char.haveobj(11407)% && !%char.quested(27013)%
    eval buf %char.setquest(27012)%
    wecho ������� ��������� ������� ����� �������� �� ������!
    wsend %char%  �������� �� ������ �������, �� �������� ����� � ���������� �� ������� ��������...
    wechoaround %char% %char.name% ��������%char.u% � ������� � �������%char.g% �����.
    wforce %char% drop questitem11401
    calcuid bag 11407 obj
    wpurge %bag%
    wecho ���� ��������� ����� � ������ ��������� �� ������ �� ������.
    halt
  end
done
~
#38119
���� ����� ������� (����� �� �������� ������)~
0 f 100
~
foreach killer %self.pc%
  if %killer.quested(38102)% && (%killer.align% > 200)
    %killer.align(-5)%
  end
done
mload obj 38105
~
#38120
������� ������ � �����~
0 q 100
~
wait 1
if %self.fighting%
  halt
end
wait 1s
mecho ������� ������� ��� � ������ �� ���.
if !%actor.quested(33902)% || %actor.quested(33905)%
  halt
end
say �� �� ��������? ��� � �� ��� �� ������? 
if ( %world.curobjs(38105)% >= 1 )
  say �������� ��� �� ���� ������� - � ������� �� � ��� �����.
  say �� ��������.
  halt
end
%actor.setquest(33905)%
mecho _- � �� �������� � ���� � ���� ���������, ��������.
mecho _- ������ � ������, �� ��� ����������� �������� �������...
wait 2s
say ��� ��� ����������� � ����. �� ��� ����� - ������ ������ ������, ��� � ���� ��������,
mecho _- �� ��������� �������� - ���� ����� ���, �� ���������� ������!
~
#38121
��������� �����~
0 m 1
~
wait 2
if !%actor.quested(33905)%
  ��� .%actor.name%
  say �� ���� ���, ���-�������?
  say � ��� � ����� ������� �������� �� ����, ������-�� ����� �������.
  give %amount% ��� .%actor.name%
  halt
end
if ( %world.curobjs(38105)% >= 1 )
  say ������� �� ����, ��� ����� � ��� ������ ����������! 
  say ������.
  give %amount% ��� .%actor.name%
  halt
end
mecho ����� ���������� ������.
if %amount% < 5000
  mecho ����� ���������� ������.
  ����
  wait 2
  say ������ ������? ��������, ����� �����.
  say ����� ��� ��������� - ��� ������ ������.
  give %amount% ��� .%actor.name%
  halt
end
%actor.setquest(33906)%
mload obj 38105
���� ������ .%actor.name%
say ���... �� �� �����, � �� ������, ������ ������������ � ����. 
say � ������-�� ���� ������� ����� �����, �? ������ � � ����� ����� �������!
emot ������ ����������
~
$~
