#20900
�������� ���� �����~
1 gj 100
~
wait 1
if %actor.clan% == ���
  halt
end
%send% %actor% %self.name% ��������%self.u% � ��� � �����.
%purge% %self%
~
#20901
��������� ������ ���~
0 ab 10
~
%echo% ����������� ����� �������� ����-�� �� ����.
~
#20902
����� ��������~
0 q 10
~
if (%actor.clan%==���)
  ��� %actor.name%
else
  ��� %actor.name%
end
~
#20903
[�������] [���������] ������~
2 c 0
������� ���������~
if %cmd% == �������
  if (%world.curmobs(20950)% > 0)
    wsend %actor% ����� ��� �����, �� ��� �����.
    halt
  end
  if %actor.clanrank% != 0 && %actor.name% != �������
    wsend %actor% ����� �� ������� ���.
    halt
  end
  wsend %actor% ����� ������� ���.
  wecho &K����� ����� ����� ��������� ������ ���.&n
  wait 1s
  wecho �� ����� ������ �������� ����� ��������� ��� � ������.
  wait 1s
  wecho  �� ��������� ��������� ������������ �� ��������,
  wecho  � ������� ��������, � ������� �� ���� � ���������� � ���� �������.
  wload mob 20950
elseif %cmd% == ���������
  if %actor.clanrank% != 0 && %actor.name% != �������
    wsend %actor% ����� �� ������� ���.
    halt
  end
  if (%world.curmobs(20950)% > 0)
    wecho &K����� ����� ����� ������ �� ���.&c
    calcuid volhv 20950 mob
    wpurge %volhv%
    wait 1s
    wecho �������� ����� ��������, � ����� ����� ������ � ���.
  else
    wsend %actor% �� ��� ��! ���� �� ������ ��������� ?
  end
end
~
#20904
�������� ��������~
0 ab 15
~
*if (%actor.clan%==���)
%echo% ������� �������� ��� � ��� �� ������.
*end
~
#20905
����� ���������~
0 c 100
�����~
set enemy %arg%
if !(%enemy.clan%==%actor.clan%)||(%enemy.level%>30)
  %echo% ������� ����� ��������� ��� � ����������.
  halt
else
  set enroom %enemy.realroom% 
  * %echo% ������� �� ��������� ���������.
  ��� 
  wait 2
  � %enroom.name% - �������, %enemy.name% ������ ���.
end
~
#20906
��� �� ����� ����~
2 b 20
~
%echo% ����� ��������� ��� �� ����� ���� ���� ���������.
~
#20907
������ �� ������� �����~
0 c 100
*~
if (%cmd.mudcommand% == ��)||(%cmd.mudcommand% == south)
  if %actor.clan% != ���
    %echoaround% %actor% %actor.name% �������%actor.u% ������ � ���, �� ������ �� ������ ���.
    %send% %actor% �� ���������� ������ � ���, �� ������ �� ������ ���.
    return 1
    halt
  end
end
*%send% %actor% ����� ����������� �������� ���, � ������ � �������, ��������� ���� � ���.
return 0 
~
#20908
���� �� �����~
2 e 100
~
wait 2
wsend %actor.name% �� �� ���������! 
wsend %actor.name% ��� ��� ����� ����������� ���� � ��� ���������.
~
#20909
����� � �����~
2 c 1
��������� ������� �����~
wait 1
wechoaround %actor% %actor.name% �������%actor.q% ����� ���������� ���� ���������� � ������%actor.g%.
wsend %actor.name% _�� ��������� ����� ���������� ���� ����������.
wteleport %actor% 20934 horse
wat 20934 wechoaround %actor% %actor.name% � �������� ������� ������%actor.u% � ���������� ���� ����������.
end
~
#20910
����������� ��������~
0 q 100
~
%send% %actor.name% ������� ������ ��� : "������������ � ������� ������...."
%send% %actor.name% ������� ������ ��� : "�� 20 ��� � �������� ����."
~
#20911
���� ������ ��������~
0 m 0
~
if %actor.vnum% != -1
  halt
end
if %amount% < 20
  tell %actor.name% �� ����� ������ ��� ��� ��� ���� ���
else
  %send% %actor% ������� ������ ��� �� ��������� ����, � ����� �������.
  eval temp %actor.wait(5)%
  dg_cast '���������' .%actor.name%
end
~
#20912
�������� 2��� �� �����~
2 c 100
*~
* ��� ���� - ���� ������� �� ������ ������� � ������� �� ���-��, �� �� ������ �����
if (%cmd.mudcommand% == ��)||(%cmd.mudcommand% == south)
  if %world.people(20969)% > 1
    %send% %actor% ������� ���� �����.
    return 1
    halt
  end
end
return 0
~
#20913
������ �����~
0 ab 5
~
if %random.4% == 1
  %echo% ������ ���-�� ������������ �������.
  ���
else
  %echo% ������ ��������� �������� ���-��, �� ������ ��� ��� ������.
end
~
#20914
�������� ������~
0 ab 5
~
%echo% ������ ���������� �� ��� � ������� �����������.
wait 2s
%echo% ������ �����������, � ��������� ������ �����-�� ��������.
~
#20915
[��������] ���������~
1 c 3
��������~
if (%actor.clan%==���)
  oechoaround %actor% %actor.name% ����� �������%actor.g% ���������, � �� ����.
  osend %actor% �� ����� �������� ���������, � �� ����.
  oload mob 20924
  oforce %actor% ������ ��������
  opurge %self%
else
  oechoaround %actor% %actor.name% �������%actor.u% �������� ���������, �� �� ��������� ��������.
  osend %actor% �� ���������� �������� ���������, �� �� ��������� ��������.
end
~
#20916
[���������] ���������~
0 c 0
���������~
if (%actor.clan%==���)
  if (%self.leader% == %actor%)
    mechoaround %actor% %actor.name% ��������%actor.g% ��������� � ��� �������� ���� ��������.
    msend %actor% �� ��������� ��������� � ��� ����� ���� ��������.
    �� ���.������
    calcuid room %self.realroom% room
    attach 20919 %room.id%
    exec 20919 %room.id%
    if %actor.affect(������ ��� ��� ������)%
      mforce %actor% ���������
    end
    mforce %actor% ����� ������
    mpurge %self%
  else
    msend %actor% ��� �� ��� ��������.
  end
else
  mechoaround %actor% %actor.name% �������%actor.u% ��������� ���������, �� ��� ��������.
  msend %actor% �� ���������� ��������� ���������, �� �� �������� �� ����� ���.
end
~
#20917
[���� ������ ��������]~
0 j 100
~
if (%actor.clan%!=���)
  if (%object.vnum%!=20906)
    return 0
    mecho �������� �����������.
    halt
  end
end
wait 1
���
mecho �������� ������� ������ � ���� � �������� ���� �� �����.
~
#20918
[�������] ������ � ���������~
0 c 0
�������~
wait 1
if %self.leader%!=%actor%
  halt
end
if (%actor.clan%==���)
  if %self.haveobj(20907)%
    ������� .%actor.name%
    ���� ������ .%actor.name%
  else
    ������ .%actor.name%
  end
end
~
#20919
�������� �������� ��������~
2 z 0
~
wload obj 20905
detach 20919 %self.id%
~
#20920
������ ������ [���] ���������~
0 c 0
���~
if (%actor.clan%==���)
  if %self.leader%==%actor%
    mforce %actor% say ���!
    ��� %arg%
  else
    msend %actor% ��� �� ��� ��������.
  end
else
  msend %actor% �������� ���� ��������� �� ���.
end
~
#20921
���� 50 ��� ������~
0 m 0
~
wait 1
if (%amount% < 50)
  say �� ��� �� ��, ������ ���� ������� ? ������ ���� ������ �������.
  ���� %amount% ��� %actor.iname%
elseif (%amount% == 50)
  say �� ���, ����� ����� ���������.
  mload obj 20905
  ���� ���.���� %actor.iname%
  wait 1
  �� ���
elseif (%amount% > 50)
  say ������� �� ���� ��������, ������� ���.
  mload obj 20905
  ���� ���.���� %actor.iname%
  wait 1
  �� ���
end
~
#20922
�������� ���� � �����~
0 e 0
�����������.~
wait 1
if %actor% == %self.leader%
  ����
  ����� �����������
end
~
#20923
�������� �� ���� ���~
0 k 100
~
if (%actor.clan%==���)
  msend %actor% ����������� ��� ����� �������� ��������.
  ������
end
~
#20924
����� 1~
0 q 100
~
if (%actor.name%==�������)
  %echoaround% %actor% ������ � ������� ������ ����� �� ��� ��������.
  %send% %actor% � ������� ������ ������ ����� � ��� �� ���.
  wait 1
  � ����������, ��������, ��� �� �� ���������??
end
~
#20925
������� ������ ��� �� � ������~
0 d 0
*~
if !%speech.contains(���)%
  halt
end
if %actor.clanrank% != 9
  � ���� ���� �����, ������ �� �� ����� ������� ��� �� � ����!
  halt
end
if %speech.contains(����)%
  mload obj 20958
elseif %speech.contains(����)%
  mload obj 20945
elseif %speech.contains(����)%
  mload obj 20913
elseif %speech.contains(����)%
  mload obj 20914
elseif %speech.contains(���)%
  mload obj 20915
elseif %speech.contains(���������)%
  mload obj 20916
elseif %speech.contains(�����)%
  mload obj 20920
elseif %speech.contains(�������)%
  mload obj 20917
else
  halt
End
wait 1
���� ��� %actor.iname%
wait 1
� ����� ��� ����, � ��������� �� �� ����������.
~
#20926
����� ����~
2 c 100
�����~
if !(%arg.contains(����)%) 
  wsend       %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
%send%       %actor% ��� �� �������� �� � ������ ������������ � ����� ���� � ������.
%echoaround% %actor% %actor.name% � ������ ������%actor.q% � ����� ���� � ������.
wait 1s
wsend %actor% .- �� ��������� � �������� ���.
wteleport %actor.name% 20916
wat 20916 wechoaround %actor% ���-�� ������ ����.
~
#20927
����� 1~
0 q 100
~
if (%actor.name%==�����)
  %echoaround% %actor% �������� � ������ ������� ���������� � ������.
  %send% %actor% �������� � ������ ������� ���������� � ���.
  wait 1
  ���� �����
end
~
#20928
��������� �������~
0 b 20
~
switch %random.6%
  case 1
    ���
  break
  case 2
    ����
  break 
  case 3
    ����
  break
  case 4
    ����
  break
  case 5
    �� ��������� : '�����, ����, ����!'
  break
  case 6
    �� �������� : '��� ���������?! � ���������?'
  break
done
~
#20929
����������� �����~
1 b 40
~
eval uidchar %self.carried_by%
* ** UID ���� ������� ����� ������
if !%uidchar%
  halt
end
switch %random.10%
  case 1
    oforce %uidchar% ���
  break
  case 2
    oforce %uidchar% �����
  break 
  case 3
    oforce %uidchar% ����
  break
  case 4
    oforce %uidchar% ����
  break
  case 5
    oforce %uidchar% �� ���������%uidchar.g% : '�����, ����, ����!'
  break
  case 6
    oforce %uidchar% �� ��������%uidchar.g% : '��� ���������?! � �������%uidchar.u%?'
  break
  default
    **%echo% ������� ����������.
    %send%       %uidchar% �� � ������������ ���������� �����������.
    %echoaround% %uidchar% %uidchar.name% � ������������ �������%uidchar.u% ��������� �����������.
  break
done
end
~
#20930
������ ������~
0 c 100
��������~
if !(%arg.contains(������)%) 
  %send% %actor% ��� �� ����������� ������??
  return 0
  halt
end
%send% %actor% �� � ������������ ������ ������ ������.
%echoaround% %actor% %actor.name% �����%actor.q% ������ ������.
wait 2s
%send% %actor% ��������� �������� ������ � ��� � ����� ���������.
wait 1s
%send% %actor% ��������� ������ ��� : '�������, ����� ������ ��� ������? ��� ���� � ���� ���� ��� ���.'
%load% obj 20919
��� ��� %actor.name%
~
#20931
����������~
0 c 100
����������~
wait 1
say ��� ���� � ���� ������ ���, ���������� � ����������.
halt
��� ���
if %arg.contains(�����)%
  if (%actor.bank%<530)
    %send% %actor% �� �� ������ �����! ��� ������� ����� 530 ��� � ����, � ����� ����� ����!
    halt
  end
  %load% obj 20931 *�������� 100 
  %load% obj 20932 *����     80
  %load% obj 20933 *�����    50
  %load% obj 20934 *������   60
  %load% obj 20935 *�����    35
  %load% obj 20938 *������   60
  %load% obj 20939 *����     35
  %load% obj 20910 *�����    10
  %load% obj 20953 *������   20
  %load% obj 20953 *������   20
  %load% obj 20954 *����     30
  %load% obj 20954 *����     30
  %actor.bank(-530)%
elseif %arg.contains(�����)%
  if (%actor.bank%<2190)
    %send% %actor% �� �� ������ �����! ��� ������� ����� 2190 ��� � ����, � ����� ����� ����!
    halt
  end
  %load% obj 139 *����� 25 
  %load% obj 139 *����� 25 
  %load% obj 139 *����� 25 
  %load% obj 139 *����� 25 
  %load% obj 139 *����� 25 
  %load% obj 139 *����� 25 
  %load% obj 139 *����� 25 
  %load% obj 139 *����� 25 
  %load% obj 139 *����� 25 
  %load% obj 139 *����� 25
  %load% obj 144 *������ 100
  %load% obj 144 *������ 100 
  %load% obj 144 *������ 100
  %load% obj 144 *������ 100
  %load% obj 144 *������ 100
  %load% obj 144 *������ 100
  %load% obj 144 *������ 100
  %load% obj 144 *������ 100
  %load% obj 144 *������ 100
  %load% obj 144 *������ 100
  %load% obj 141 *������� 300
  %load% obj 141 *������� 300
  %load% obj 141 *������� 300
  %load% obj 142 *����� 20
  %load% obj 142 *����� 20
  %actor.bank(-2190)%
elseif %arg.contains(���)%
  if (%actor.bank%<450)
    %send% %actor% �� �� ������ �����! ��� ������� ����� 450 ��� � ����, � ����� ����� ����!
    halt
  end
  %load% obj 20911 *������ 30 
  %load% obj 20911 *������ 30 
  %load% obj 20911 *������ 30 
  %load% obj 20911 *������ 30 
  %load% obj 20911 *������ 30 
  %load% obj 20911 *������ 30 
  %load% obj 20911 *������ 30  
  %load% obj 20911 *������ 30  
  %load% obj 20911 *������ 30  
  %load% obj 20911 *������ 30  
  %load% obj 20911 *������ 30  
  %load% obj 20911 *������ 30  
  %load% obj 20911 *������ 30  
  %load% obj 20911 *������ 30  
  %load% obj 20911 *������ 30  
  %actor.bank(-450)%
elseif %arg.contains(���)%
  if (%actor.bank%<3170)
    %send% %actor% �� �� ������ �����! ��� ������� ����� 3170 ��� � ����, � ����� ����� ����!
    halt
  end
  %load% obj 139 *����� 25 
  %load% obj 139 *����� 25 
  %load% obj 139 *����� 25 
  %load% obj 139 *����� 25 
  %load% obj 139 *����� 25 
  %load% obj 139 *����� 25 
  %load% obj 139 *����� 25 
  %load% obj 139 *����� 25 
  %load% obj 139 *����� 25 
  %load% obj 139 *����� 25
  %load% obj 144 *������ 100
  %load% obj 144 *������ 100 
  %load% obj 144 *������ 100
  %load% obj 144 *������ 100
  %load% obj 144 *������ 100
  %load% obj 144 *������ 100
  %load% obj 144 *������ 100
  %load% obj 144 *������ 100
  %load% obj 144 *������ 100
  %load% obj 144 *������ 100
  %load% obj 141 *������� 300
  %load% obj 141 *������� 300
  %load% obj 141 *������� 300
  %load% obj 142 *����� 20
  %load% obj 142 *����� 20
  %load% obj 20911 *������ 30 
  %load% obj 20911 *������ 30 
  %load% obj 20911 *������ 30 
  %load% obj 20911 *������ 30 
  %load% obj 20911 *������ 30 
  %load% obj 20911 *������ 30 
  %load% obj 20911 *������ 30  
  %load% obj 20911 *������ 30  
  %load% obj 20911 *������ 30  
  %load% obj 20911 *������ 30  
  %load% obj 20911 *������ 30  
  %load% obj 20911 *������ 30  
  %load% obj 20911 *������ 30  
  %load% obj 20911 *������ 30  
  %load% obj 20911 *������ 30   
  %load% obj 20931 *�������� 100 
  %load% obj 20932 *����     80
  %load% obj 20933 *�����    50
  %load% obj 20934 *������   60
  %load% obj 20935 *�����    35
  %load% obj 20938 *������   60
  %load% obj 20939 *����     35
  %load% obj 20910 *�����    10
  %load% obj 20953 *������   20
  %load% obj 20953 *������   20
  %load% obj 20954 *����     30
  %load% obj 20954 *����     30
  %actor.bank(-3170)%
Else
  %send% %actor% ����� ���������� �� ������ ��������?
  %send% %actor% ���������� ����� - � ��� ���� ������ ������, �� ����� 530 ���
  %send% %actor% ���������� ����� - � �������� ���� ������������ ������� ��� �����������, ��� ����� 2190 ���
  %send% %actor% ���������� ���   - � ������ ���� ��� � ����, ��� ����� ������ 450 ���
  %send% %actor% ���������� ���   - � ��� ��� �����������������, � ������ ��� ����� 3170 ���
  halt
end
���� ��� %actor.name%
��� ���
~
#20932
���� ������~
0 q 100
~
if %actor.clan% == ���
  halt
end
���� &Y����� �� �� ������, &W%actor.name%&Y, ��� ��� ����� ����� �������� ������� �������?&n
~
#20950
[� �����] ������� ������~
0 d 100
�����~
if %actor.clanrank% == 0 || %actor.name% == �������
  attach 20951 %self.id%
  ����
  say ����� ������
  wait 1
  ���
  calcuid volhvroom %self.realroom% room
  detach 20953 %volhvroom.id%
end
~
#20951
����� ��������� �����������~
0 q 100
~
calcuid volhvroom %self.realroom% room
attach 20953 %volhvroom.id%
wait 1
����� .%actor.iname%
say ����������, %actor.iname%, ���� � ���� �����, ���� � �� ���.
wait 1
���
if %actor.level% > 24
  say �����%actor.w% �� ���, ��� �� ������� ���� ?
  attach 20952 %self.id%
  wait 100s
  if !%bylotvet%
    say �� ������ ����� ����%actor.y% ? ����� � ������ ���� ��� ������.
    msend %actor% ����� ������ ������� �� ���, � ��� ���������� �������� ��������.
    mforce %actor% north
    rdelete bylotvet %self.id%
    detach 20952 %self.id%
    detach 20953 %volhvroom.id%
    detach 20951 %self.id%
    halt
  else
    detach 20951 %self.id%
    halt
  end
elseif ((%actor.level% < 11) && (%actor.remort% == 0))
  say �����%actor.a% �� ���, ��� ����� ���� ?
  say ������ ����� ����������� !
  msend %actor% ����� ������ ������� �� ���, � ��� ���������� �������� ��������.
  mforce %actor% north
  detach 20953 %volhvroom.id%
  detach 20951 %self.id%
  halt
else
  say �����%actor.g% ��, ������� ������ ��� ?
  * ��������� ������ ��� 11-24 �������
  attach 20954 %self.id%
  detach 20951 %self.id%
  halt
end
~
#20952
����� ������~
0 d 0
������ ������ ����� ������ �������� ���� ����� ������� ����� ���� sex �����~
set bylotvet 1
remote bylotvet %self.id%
wait 1
say �� ��� �� ��� ������� ����� ��������� ���������.
����
wait 1s
say ���� �� ����, ���������.
msend %actor% ������������� ���� ��������� ��� �����.
mforce %actor% �����
eval templag %actor.wait(12)%
wait 1s
say ��� ������, �����.
mecho ����� ���� ����� � ������� ������� � ����.
mload obj 20970
���� ���� %actor.iname%
wait 2s
mforce %actor% ���
mforce %actor% ������ �����
wait 3s
mforce %actor% ���� ����
wait 1s
msend %actor% ������ ���� ������� ��� � ������.
wait 3s
mforce %actor% ������� ����
�� ����
mjunk all
wait 1s
msend %actor% �������� �������� �������� ���.
msend %actor% ����� ��������� ������� �����.
wait 1s
msend %actor% �� ������� ����� � ����� �����.
mechoaround %actor% ������ ����� ����� �������� ��� ��������, ����� �� ������� �����
mechoaround %actor% %actor.rname% ��� �� ��������� �� �����.
mteleport %actor% 20990 horse
wait 1s
msend %actor% ����� ������ ������� �� ��� ��������:
msend %actor% - ����� ������, ���� ������ ���.
msend %actor% - �����.
calcuid volhvroom %self.realroom% room
detach 20953 %volhvroom.id%
detach 20952 %self.id%
~
#20953
�� ������� � �������� ����������~
2 e 100
~
wsend %actor% ���-�� ���� �� ���� ��� ������� ��� ������.
return 0
~
#20954
11-24�� [� ������]~
0 d 100
������~
say �� ��� ��. ������ � �� �������� �������.
wait 2s
say �������, ��� ������� ���� ?
attach 20952 %self.id%
wait 100s
if !%bylotvet%
  say �� ������� ���� �����, �� ������� ����� �����.
  say ������ ���� ����� ������!
  wait 1s
  msend %actor% ����� ������ ������� �� ���, � ��� ���������� �������� ��������.
  mechoaround %actor% %actor.iname% �������%actor.u% �� ������.
  mforce %actor% north
  detach 20952 %self.id%
  calcuid volhvroom %self.realroom% room
  detach 20953 %volhvroom.id%
  detach 20954 %self.id%
  halt
else
  detach 20954 %self.id%
  halt
end
~
#20955
��������� �����~
2 e 100
~
if !%exist.mob(20951)%
  wecho ������� ������� ����� �� ����.
  wload mob 20951
end
calcuid volchish 20951 mob
run 20957 %volchish.id%
~
#20956
������ ��������� � ���~
2 g 100
~
if %actor.realroom% == 20991
  wsend %actor% ������� ��� � ��� ���� �� ��������.
  return 0
end
if %actor.realroom% == 20993
  wsend %actor% ������� ��� � ��� ���� �� ��������.
  return 0
end
~
#20957
� �������� �������~
0 z 100
~
wait %random.9%s
if %self.fighting%
  halt
end
mecho ������� ������� ������ ��������� �� ���.
wait %random.9%s
if %self.fighting%
  halt
end
���
wait %random.9%s
if %self.fighting%
  halt
end
mecho ������� ������� ������� ����� � �������� �� ���.
wait %random.9%s
if %self.fighting%
  halt
end
wait 20s
mecho ������� ������� �����. ��� ������.
wait 2s
msend %actor% �������������� � ��� �����, �� ������ : - �� � ���� ��� �������� �����!
msend %actor% ��������� ������� � ����, �� ������ ���� � �����, � �������� ������ ��������.
mload obj 20971
��� ����.����� .%actor.iname%
wait 2s
mecho ������� ������� ������� �������.
����� .%actor.iname%
wait 2s
mecho �� ����� ���� ����� ��� � �� �������� �����, ������� � �� ������ ���.
mecho ������ �� ����������� � �������� ���� ������� � ������������ ����.
mecho ���� ��������.
calcuid volhv 20950 mob
set kvest 1
remote kvest %volhv.id%
mpurge %self%
~
#20958
������ �������� �������~
0 f 100
~
calcuid volhv 20950 mob
set kvest 0
remote kvest %volhv.id%
~
#20959
��������� ��������~
0 z 100
~
mteleport %kvestor% %self.realroom%
if %kvest% == 0
  ���� %kvestor.iname% �� ����%kvestor.y% ��������� !
else
  ���� %kvestor.iname% ����%kvestor.y% ��������� !
end
wait 1s
msend %kvestor% �� ������.
wait 1s
msend %kvestor% ������� ��� ��� �����-���� ���.
wait 1s
if %kvest% == 0
  msend %kvestor% �� ����� ������ �� ���� ?
else
  if %actor.haveobj(20972)%
    msend %kvestor% �� ����� ������ �� ��� ���� ?
    mforce %kvestor% ���� ����.������
  elseif %actor.haveobj(20971)%
    msend %kvestor% �� ����� ������ �� ��� �������� ?
    mforce %kvestor% ���� ������.�����
  end
end
rdelete kvest %self.id%
rdelete kvestor %self.id%
~
#20960
������ ���������~
2 e 100
~
wait 1
if (%actor.realroom% == 20992)
  calcuid volhv 20950 mob
  eval kvestor %actor%
  remote kvestor %volhv.id%
  run 20959 %volhv.id%
end
~
#20961
����� �� ������~
0 p 100
~
if (%self.hitp% < 500)
  msend %damager% ����� �������� �����, ��������� �� ��� � ������.
  mechoaround %damager% ����� �������� �����, �������� �� %damager.rname% � ������.
  calcuid room %self.realroom% room
  run 20965 %room.id%
  halt
end
return 0
~
#20962
����� ������ ���~
2 d 0
*~
if (%speech.contains(������ ���)% || %speech.contains(����� ���)%)
  if (%speech.contains(����)% || %speech.contains(�����)% || %speech.contains(�����)%)
    %send% %actor% ����� �� ������ ������ �� ��� ���:
    %send% %actor% - ������ ������ � ������� �������.
    %send% %actor% - ���� ������ � ����.
  end
end
~
#20963
[������� ������]~
0 c 0
������� ���������~
if (%actor.vnum% != -1)
  %echo% %actor.iname% �����%actor.g% ������ �� ���� � ������� ����-��, �� ������ �� ���%actor.y%.
  halt
end
if !%arg.contains(�����)%
  %send% %actor% ���� �� ��������� ������� ?
  halt
end
if %self.fighting%
  %send% %actor% �� ����� ����������� � ���.
  halt
end
wait 1s
%send% %actor% _����������� � �����, �� ���������� ��������� ������� ����,
%send% %actor% _����� ������������ ����� ������ ��������.
wait 4s
%send% %actor% ����� ������� �������, �� ��������� ������ ������� ����.
wait 4s
%send% %actor% ������� ����� ���� ���� �� ����� ���.
wait 5s
%send% %actor% ������� ����� ���� ����.
%send% %actor% ������� ����� ����� � ������� ����-�� � ���. �� ��� ������ ������ ��������� ����.
calcuid roomper %self.realroom% room
attach 20964 %roomper.id%
exec 20964 %roomper.id%
wait 1
%force% %actor% �� ����
wait 1
%send% %actor% �� ��������� ������ �� ������� �������.
wait 5s
%send% %actor% ����� ��������� ����� �� �������� ��� ��� ����� ������...
eval temppaus %actor.wait(1)%
wait 3s
calcuid volhv 20950 mob
set kvest 1
remote kvest %volhv.id%
%door% 20993 north room 20992 flags a
%force% %actor% �����
wait 1s
%door% 20993 north purge
~
#20964
������ ���� ������~
2 z 0
~
wload obj 20972
detach 20964 %self.id%
~
#20965
����� ������~
2 z 0
~
%purge% �����.�����
%send% %damager% ��� ������ ��������� ���.
%send% %damager% �� ������� �� �����, �� � ����� ��������������.
eval temppaus %damager.wait(3)%
wait 3s
%send% %damager% ����� �� ������ ������������, �� ���������� � ������� ������ � ���� �� �����.
calcuid volhv 20950 mob
set kvest 0
remote kvest %volhv.id%
%door% 20993 north room 20992 flags a
%force% %damager% �����
wait 1s
%door% 20993 north purge
~
#20966
����� ���������~
0 f 100
~
return 0
mecho �������� �������� � ����������� � �������.
mload obj 20905
~
#20967
����� ������~
0 b 10
~
wait 1
switch %random.4%
  case 1
    tell ������� ��� �������, �� ��� �������!
  break
  case 2
    tell ������� ������, �� ����� ��������! �� �������� ���� �������������� - �����, ��� ����!
  break
  case 3
    tell ������� �� ������� ���� �������� �� ����� - ����� ����!
  break
  case 4
    tell ������� ��� ������� - ������ �����!
  done
~
#20968
������ � �����~
2 e 100
~
wait 1
wecho �������� ������������ ���� � � ������� �������� �������� �����������.
wportal 131415 2
~
#20969
����� ����� ��������� :)~
1 l 100
~
if %actor.eq(9)% == %self%
  return 0
  osend %actor% ����� ��������� ���������� � ��������� ��������� ��� � ����.
  oechoaround %actor% %actor.name% ���������� ����� �����.
  oechoaround %actor% ����� ������� ����������, � %actor.name% ���������� � ����������.
end
~
#20970
������� �����~
1 c 1
��������~
return 0
wait 1
oechoaround %actor% %actor.name% �������� %self.vname%.
if %self.worn_by%
  oecho _%self.iname% �������� ����������%self.g% � ���������%self.u%.
  set equiped 0
  global equiped
  wait 3s
  if %self.worn_by%
    set equiped 1
    global equiped
  end
  halt
end
switch %random.8%
  case 1
    oecho _%self.iname% ���������� �������%self.g% � ��������%self.g% �����.
  break
  case 2
    oecho _%self.iname% �������%self.g% �� �����, ����������� ���������.
  break
  case 3
    oecho _%self.iname% ��������%self.g% � �����%self.g% ����������� ����� �������.
  break
  case 4
    oecho _%self.iname% ������� �������%self.g% � ������%self.g% ������.
  break
  case 5
    oecho _%self.iname% ������ ����������%self.g%.
  break
  case 6
    oecho _%self.iname% ���������%self.g% ��� � �����%self.g% ���������������.
  break
  case 7
    oecho _%self.iname% �������� ��������%self.g% �������.
  break
  case 8
    oecho _%self.iname% �������� �������%self.g% � ������%actor.u% ���������� �����.
  done
~
#20971
����� ����������~
1 g 100
~
if %actor.name% == ����� || %actor.name% == ����
  wait 1s
  oecho %self.iname% �������� ����������%self.g%.
  halt
end
wait 1
if !%self.carried_by%
  oecho %self.iname% ������� ���������%self.g% � ������ ����������.
else
  return 0
  oechoaround %actor% %actor.name% �������%actor.u% ������ %self.vname%.
  oechoaround %actor% %self.iname% ������� �������%self.g% � ������%self.u% �� ��� %actor.rname%.
  osend %actor% %self.iname% ������� �������%self.g% � ������%self.u% �� ����� ���.
  oforce %actor% drop %self.name%
end
~
#20972
����������� �����~
1 jl 100
~
if (%actor.name% != ����� && %actor.name% != ����)
  oecho %self.name% ������� �������%self.g% � ��������%self.g% �����.
  return 0
  halt
end
if %equiped% == 1
  return 0
  osend %actor% %self.iname% ��������� ���������%self.g% � ������%self.u% ��������� ��� � ����.
  oechoaround %actor% %actor.name% ���������� ����� %self.vname%.
  oechoaround %actor% %self.iname% ������� ���������%self.g%, � %actor.name% ���������%actor.g% � ����������.
end
wait 1
set char %self.worn_by%
if (!%char% && %self.carried_by% && (%self.vnum% != 20975))
  oecho %self.iname% ����� ���������%self.u% � &W�������� �����&n!
  otransform 20975
end
set i 0
while %i% < 18
  eval i %i%+1
  if (%char.eq(%i%)% == %self%)
    switch %i%
      case 3
        case 4
          if %self.vnum% != 20976
            oecho %self.iname% �������%self.u% ������ ��� � ���������%self.u% � &W�������� �����&n!
            otransform 20976
          end
        break
        case 9
          case 10
            if %self.vnum% != 20975
              oecho %self.iname% ���������%self.u% � &W�������� �����&n!
              otransform 20975
            end
          break
          case 12
            if %self.vnum% != 20979
              oecho ����� �������� �� �����, %self.iname% ��������� ������� �������%self.u% &W������&n!!
              otransform 20979
            end
          break
          case 14
            if %self.vnum% != 20978
              oecho %self.iname% �������%self.u%� ������ ������� ��������, ���������� ��� � ���������%self.u% � &W���������&n!
              otransform 20978
            end
          break
          case 15
            if %self.vnum% != 20978
              oecho %self.iname% �������%self.u% ������ ������ ��������, &R����� �������� &w� ������������ � &W���������&n!!
              otransform 20978
            end
          break
        done
      end
    done
    if %self.worn_by%
      set equiped 1
    else
      set equiped 0
    end
    global equiped
~
#20973
������� ���������� �����~
0 r 100
~
wait 1
if (%actor.clan% == ���)
  halt
end
msend %actor% ������� ����� �������� �� ���.
mechoaround %actor% ������� ����� �������� �� %actor.vname%.
say ���� �������? ����������, ������ ����%actor.u%.
msend %actor% �� ������������� ���� �������, � ��������� �������� �������� � �����.
mforce %actor% east
~
#20974
��������� ���������� ������� � ����~
0 b 20
~
foreach victim %self.pc%
  if %victim.affect(����������)%
    say %victim.name%, ��������� ���� � ����� ���������!
    say ���-����, ����������!
    msend %victim% ��� �� ����� ����� �������� ��� �� ���� � �������� � �����.
    mechoaround %victim% ��� �� ����� ����� �������� %victim.vname% �� ���� � �������� � �����.
    mforce %victim% wake
    mforce %victim% stand
    mforce %victim% w
    mforce %victim% n
    mforce %victim% w
    mforce %victim% w
    mforce %victim% w
    mforce %victim% w
    mforce %victim% w
    mforce %victim% w
    mforce %victim% w
    *mforce %victim% n
  end
done
~
$~
