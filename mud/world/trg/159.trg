#15900
������ ������~
1 c 2
���������~
if !%arg.contains(������)%
  osend %actor% ��� �� ������ ���������?
  halt
end
if (%actor.clan% !=��)
  return 0
  halt
end
if %world.curobjs(15945)% > 4
  osend %actor% �� �������, ��� ���� ������ ��� ��� �����?
  halt
end
osend %actor% �� ��������� ��� ������ ��������� ��������.
oechoaround %actor% %actor.name% ��������%actor.g% ��� ������ ��������� ��������.
oload obj 15945
~
#15901
�������� ������~
1 c 4
�������~
if !%arg.contains(������)%
  osend %actor% ��� �� ������ �������?
  halt
end
if (%actor.clan% !=��)
  return 0
  halt
end
oecho ���� ��������, ������ ��������� �������� �������.
opurge %self%
~
#15902
����� ���� �����~
1 ghj 100
~
if %actor.vnum% != -1
  halt
end
if (%actor.clan% !=��)
  wait 1
  oecho ����� ������� �������� ���!
  osend %actor% ���� ����� ����� ������������ ������ ������ ��������� ��������!
  opurge %self%
end
~
#15903
��������� ������ ���� ���������� �� ��������~
1 c 2
���������~
if (%actor.clan% !=��)
  return 0
  halt
end
osend %actor% ������ %self.iname% ����� ������ ����� �����.
detach 15902 %self%
detach 15903 %self%
~
#15904
���� ����~
0 c 0
�������~
wait 1
say ��� ���� � ���� ������ ���, ���������� � ����������.
halt
drop all
if %actor.bank% < 500
  ���� %actor.name%
  wait 1
  ����� %actor.name%, � ���� ��������� ����� �� ����������
  halt
end
����� ������, ������ ������� � ������ ��� ��� ���� ����������
wait 1s
eval buffer %actor.bank(-500)%
mload obj 15901
mload obj 15902
mload obj 15903
mload obj 15904
mload obj 15905
mload obj 15906
mload obj 15906
mload obj 15907
mload obj 15907
mload obj 15908
mload obj 15909
mload obj 15910
mload obj 15912
mload obj 15912
mload obj 15913
mload obj 15919
mload obj 15935
put all ���
give ��� .%actor.name%
����� ���, �����
�� .%actor.name%
~
#15967
����� �����~
0 q 100
~
wait 1
if %actor.level% < 31
  %actor.loadroom(60036)%
end
~
#15968
������� �����~
2 e 100
~
wait 1
if %actor.level% < 31
  %actor.loadroom(60036)%
end
log %actor.name%
~
#15969
������ � ������~
2 c 1
������ ���������� ������������~
wait 1
wsend %actor%  �� ���������� �� ��������� � ����� ����� ������� � ������������ ����.
wechoaround %actor% _  %actor.name% �������%actor.u% �� ��������� � ����� ����� ������� � �����������%actor.g% ����.
wteleport %actor% 15903
wechoaround %actor% _  %actor.name% �������%actor.u% � ������.
~
#15970
����� �� �����~
2 c 1
����� ������ ������� ��������� �������������~
wait 1
if !%actor.rentable%
  return 0
  halt
end
if !%arg.contains(�����)% && !%arg.contains(������)%
  wsend %actor% _���� �� ������?
  halt
end
wsend %actor% _�� ���������� �� ��������� � ����� ����� ������� � ������� ������.
wechoaround %actor% _  %actor.name% �������%actor.u% �� ��������� � ����� ����� ������� � �����%actor.g% ������.
wteleport %actor% 15952
wechoaround %actor% _  %actor.name% ������%actor.u% ����.
~
#15971
���� ������ ������~
0 m 1
~
wait 1
if %amount% < 150
  say �������� �����!
  give %amount% ��� .%actor.name%
  halt
end
if %world.curobjs(15933)% < 100
  mload obj 15933
  give ����� .%actor.name%
  ���
  halt
end
say ������... ���������!
���
give %amount% ��� .%actor.name%
~
#15972
�������� ����������~
0 c 1
��������~
wait 1
if %self.fighting%
  halt
end
if !%arg.contains(����������)%
  msend %actor% ��� �� ������ �������?
  halt
end
if %actor.clan% != ��
  msend %actor%  �� ��� ����� - ��� � �� �������!
  halt
end
msend %actor% �� ������ �������� ����������.
mechoaround %actor% %actor.name% �����%actor.g% �������� ������ ������� ����������.
wait 1
����
emot ������� ���� ����� � �����
mload obj 15933
give ����� .%actor.name%
emot ������� ������ ���� ����� ������
wait 1
mpurge %self%
~
#15973
���� �����������~
1 c 2
����������~
wait 1
if !%arg.contains(�����)%
  osend %actor% �� ������ ����������� ������ �������.
  halt
end
if %actor.clan% != ��
  return 0
  halt
end
if %world.curmobs(15907)% > 50
  osend %actor% ...� ������ �� ���������!
  halt
end
oload mob 15907
osend %actor% �� ���������� ����� ����������.
oechoaround %actor% %actor.name% ����%actor.g% � ���� ����� ���������� � ���������%actor.g% ���.
oecho _����� ���������� � ���������� ������ �����.
oecho _���������� ��������� ����� ��-��� ����� � ��������� �� ���.
oforce %actor% �������� ������
wait 1
opurge %self%
~
#15974
���� ������� ����������~
0 k 10
~
flee
flee
hide
camouf
~
#15977
�������� �����~
2 c 1
�������~
wait 1
calcuid smotr 15911 mob
detach 15987 %smotr.id%
while %exist.mob(15912)%
  calcuid target 15912 mob
  exec 15979 %target.id%
  wait 1s
done
wait 1
while %exist.mob(15913)%
  calcuid target 15913 mob
  exec 15979 %target.id%
  wait 1s
done
wait 1
while %exist.mob(15914)%
  calcuid target 15914 mob
  exec 15979 %target.id%
  wait 1s
done
wait 1
while %exist.mob(15915)%
  calcuid target 15915 mob
  exec 15979 %target.id%
  wait 1s
done
wait 1
while %exist.mob(15916)%
  calcuid target 15916 mob
  exec 15979 %target.id%
  wait 1s
done
wait 1
while %exist.mob(15917)%
  calcuid target 15917 mob
  exec 15979 %target.id%
  wait 1s
done
wait 1
wait 10s
attach 15987 %smotr.id%
~
#15978
���� ���������~
2 c 1
������~
wait 1
if (%actor.vnum% != -1) || (!%exist.mob(15918)%)
  halt
end
wforce arenmob159 follow .%actor.name%
~
#15979
����� ������~
0 z 100
~
mecho ����� ���������� ������� %self.vname% � ������.
wait 1
mpurge %self%
~
#15980
����-������� � ������~
0 n 100
~
wait 2
follow ���
wait 1
if (%self.vnum% == 15913)
  group all
end
wait 2s
if !%self.leader%
  follow ������
end
wait 2s
if !%self.leader%
  follow ������
end
wait 2s
if !%self.leader%
  follow ��������
end
~
#15981
���� ������~
2 z 100
~
wload mob 15917
~
#15982
���� ���������~
2 z 100
~
wload mob 15916
~
#15983
���� ����~
2 z 100
~
wload mob 15915
~
#15984
���� �������~
2 z 100
~
wload mob 15914
~
#15985
���� ����~
2 z 100
~
wload mob 15913
~
#15986
���� �������~
2 z 100
~
wload mob 15912
~
#15987
���� ������ �� �����~
0 m 1
~
wait 1                   
if %world.curmobs(15912)% > 5
  say �� ����� � ��� ������ ��� �����. 
  say � ��� ������� ���������, ��� �� ��������� � ������ �������.
  halt
end
if %world.curmobs(15913)% > 5
  say �� ����� � ��� ������ ��� �����. 
  say � ��� ������� ���������, ��� �� ��������� � ������ �������.
  halt
end
if %world.curmobs(15914)% > 5
  say �� ����� � ��� ������ ��� �����. 
  say � ��� ������� ���������, ��� �� ��������� � ������ �������.
  halt
end
if %world.curmobs(15915)% > 5
  say �� ����� � ��� ������ ��� �����. 
  say � ��� ������� ���������, ��� �� ��������� � ������ �������.
  halt
end
if %world.curmobs(15916)% > 5
  say �� ����� � ��� ������ ��� �����. 
  say � ��� ������� ���������, ��� �� ��������� � ������ �������.
  halt
end
if %world.curmobs(15917)% > 5
  say �� ����� � ��� ������ ��� �����. 
  say � ��� ������� ���������, ��� �� ��������� � ������ �������.
  halt
end
calcuid arena 15936 room
switch %amount%
  case 1
    exec 15986 %arena.id%
  break
  case 2
    exec 15985 %arena.id%
  break
  case 3
    exec 15984 %arena.id%
  break
  case 4
    exec 15983 %arena.id%
  break
  case 5
    exec 15982 %arena.id%
  break
  case 6
    exec 15981 %arena.id%
  break
  case 7
    exec 15986 %arena.id%
    exec 15986 %arena.id%
    exec 15986 %arena.id%
  break
  case 8
    exec 15985 %arena.id%
    exec 15984 %arena.id%
  break
  case 9
    exec 15985 %arena.id%
    exec 15984 %arena.id%
    exec 15983 %arena.id%
  break
  case 10
    exec 15985 %arena.id%
    exec 15984 %arena.id%
    exec 15983 %arena.id%
    exec 15981 %arena.id%
  break
  case 11
    exec 15985 %arena.id%
    exec 15984 %arena.id%
    exec 15983 %arena.id%
    exec 15986 %arena.id%
    exec 15981 %arena.id%
  break
  case 12
    exec 15985 %arena.id%
    exec 15984 %arena.id%
    exec 15983 %arena.id%
    exec 15982 %arena.id%
    exec 15981 %arena.id%
  break
  case 13
    exec 15985 %arena.id%
    exec 15984 %arena.id%
    exec 15983 %arena.id%
    exec 15986 %arena.id%
    exec 15982 %arena.id%
    exec 15981 %arena.id%
  break
  case 14
    exec 15985 %arena.id%
    exec 15984 %arena.id%
    exec 15984 %arena.id%
    exec 15986 %arena.id%
    exec 15986 %arena.id%
    exec 15982 %arena.id%
    exec 15981 %arena.id%
  break
  case 15
    exec 15985 %arena.id%
    exec 15985 %arena.id%
    exec 15984 %arena.id%
    exec 15984 %arena.id%
    exec 15983 %arena.id%
    exec 15986 %arena.id%
    exec 15982 %arena.id%
    exec 15981 %arena.id%
  break
  case 16
    exec 15984 %arena.id%
    exec 15986 %arena.id%
  break
  case 17
    exec 15984 %arena.id%
    exec 15982 %arena.id%
    exec 15982 %arena.id%
  break
  case 18
    exec 15985 %arena.id%
    exec 15984 %arena.id%
    exec 15981 %arena.id%
  break
  case 19
    exec 15984 %arena.id%
    exec 15983 %arena.id%
  break
  case 20
    exec 15982 %arena.id%
    exec 15982 %arena.id%
    exec 15982 %arena.id%
  break
  case 1000
    halt
    set list 15912 15913 15914 15915 15916 15917
    foreach mobs %list%
      while %exist.mob(%mobs%)%
        calcuid target %mobs% mob
        exec 15979 %target.id%
      done
    done
    wait 1
  done
  ���
~
#15988
������ ������ � �����~
0 d 100
������ � ����~
wait 1
if %self.realroom% == 15950
  ��� .%actor.name%
  halt
end
if %self.leader%
  ��� .%actor.name%
  halt
end
set text ������ � ����
if %speech% != %text%
  ������ .%actor.name%
  halt
end
������
emot ���� � ��������
wait 1
mpurge %self%
~
#15989
��������� ����� ��������~
2 g 100
~
if ( %actor.vnum% > 15900 ) && ( %actor.vnum% < 15999 )
  return 0
  halt
end
~
#15990
�������� ��������~
0 b 25
~
if !self.fighting%
  dg_cast '���������' ��������
end
stand
~
$~
