#26900
����������� �������~
0 r 100
~
if !(%questor269%) && %exist.mob(26911)% && %exist.mob(26916)% && %exist.mob(26903)%
  wait 1
  if (%actor.sex% == 1)
    � ����������, ��� �������. ��, ��������, ������� ����, ��� ��� ���������, � � ���� �����.
  end
  if (%actor.sex% == 2)
    � ����������, �����. ��, ��������, �������� ����, ��� ��� ���������, � � ���� �����.
  end
  wait 1
  ���
  � ������, � �������� ����, ��� �� ���� ������ � ��� �� �����.
  � ������� ��, �� ���������. ���� ������ ������ ���� �� ���,
  � � ��������� �������� � �������� ������ � ����. � ��������
  � ���������� ������, ������� ������� ����� �����������,
  � �������� �� � ������� � ���������. � ����� ��, ������������
  � ������ �����, ������ �� ����� � ��� ��� ����.
  wait 1
  ���
  if (%actor.sex% == 1)
    � ��, � ����, �����, �� �������� ������. ��� ���� �� �� ����������
    � ������ ���, ���������� ������ �������, �� �� � ����� �� ��������.
  end
  if (%actor.sex% == 2)
    � ��, � ����, ������, �� ��������� ������. ��� ���� �� �� �����������
    � ������ ���, ���������� ������ �������, �� �� � ����� �� ��������.
  end 
  wait 1
  ���� %actor.name% 
  attach 26901 %self.id%
end
else
halt
end
~
#26901
������� ���� �����~
0 d 1
������~
if !(%questor269%) && %exist.mob(26911)% && %exist.mob(26916)% && %exist.mob(26903)%
  wait 1
  � ������! ������, ��� � �������� ����. ������� � ������� ����� �����
  � � ���������� � ��� ��� �������� � ����, ��� �� �� ����� ��� �������
  � ������, � ������� ����� ����. ���� ��� � ������ ���� �� ��������.
  � ����� �� ������� ���������� ��������� �������. ������� �� � ���
  � � ������ � �����, ������ �������� ������������, ������ ���� ���� �
  � �����, �� � ������ �������� ����� ������, ��� ������ �������� ����
  � ��������� �������.
  wait 1
  ���
  � ������ ����������, � �� ������� ��������, � �������� ���������� 
  � ��������� ���� ��� �����.
  makeuid questor269 %actor.id%
  global  questor269
end
else
halt
end
~
#26902
���� ������� �����~
0 f 100
~
%echo% �������� ������� �����, � ������� ����� ���� ��������.
mload obj 26900
~
#26903
������������ �������~
2 d 0
����� ������~
if (%actor.vnum% != -1)
  return 0
  halt
end
wait 1
calcuid target 26904 mob
if %actor.sex% == 1
  wecho __������� ����, ��� ���������! � ��� � �� ��������� �� ������.
end
if %actor.sex% == 2
  wecho __������� ����, ��� �������������! � ��� � �� ��������� �� ������.
end
wecho __������ ���� � ����� ������, ���� ���� ��� �� ���������.
wecho ___- ������� ����������� �������.
wforce %target% follow %actor.name%
makeuid Keeper %actor.id%
remote Keeper %target.id%
calcuid room 26922 room
attach 26904 %room.id%
detach 26903 %self.id%
~
#26904
������� ������ � ������~
2 g 100
~
if %actor.vnum% != 26904
  halt
end
wait 1
calcuid target 26916 mob
if !%target%
  halt
end
wpurge %target%
wecho _____��������, ������� ������� ��������� ����� ������� 
wecho ___� � ������������� ���� ������������ � ������� ������!
wload mob 26919
calcuid Vedma 26919 mob
wecho  - ��� �� ������� ������ ����! - ��������� ������ ������, ����� �� �������.
wecho  - �� ��� �� ������! - �������� ���, � ������ ��������� � �����.
wforce %Vedma% attack %actor.name%
detach 26904 %self.id%
~
#26905
������ ������~
0 f 100
~
� �� ���� � ����.... ����� �����!
calcuid room 26922 room
attach 26906 %room.id%
exec 26906 %room.id%
~
#26906
�������� ��������� �������~
2 z 100
~
if !%exist.mob(26904)%
  halt
end
calcuid target 26904 mob
wpurge %target%
wload mob 26918
wecho __
wecho __
wecho __����������� ������� ������� ����� � ����� ������ �� ���������� ������� �������.
wecho __
wecho ���������� ������� �������: ��� � ����, ��� �� ����� ������! 
wecho ���������� ������� �������: ������� ���, ������ ����!
wecho __
if %exist.mob(26905)%
  calcuid questor 26905 mob
end
attach 26907 %questor.id%
detach 26906 %self.id%
~
#26907
������� �� �����-1~
0 r 100
~
if (%questor269.id% == %actor.id%)
  wait 1s
  if %actor.sex% == 1
    � ������� ����, ��� �������! �� ������� ��� � ����.
  end
  if %actor.sex% == 2
    � ������� ����, �����! �� �������� ��� � ����.
  end
  � ������ ������� ���������, � ��� � ��� ����� ������.
  � � ���� ������� ��� � �������� �������� ���� ������ � �������������
  � ������� ������� �����������. �� ��� �... �� ��������%actor.g% �������.
  � �� ���, ������ ��� � ���� ����� �������������.
  wait 1s
  mecho ������� �������� ���-�� �� ������� �������.
  switch %random.10%
    case 1
      � �����! ����� ��� ���������� ����, � �������� ������ � �������.
      mload obj 217
      ���� ��� %actor.name%
    break
    case 2
      � ���, �����, ����� �������������� ������� ���� ��������� ��������� �� �����������.
      mload obj 528
      ���� ��� %actor.name%
    break
    case 3
      � ���, �����, ����� ���� ���� ����� �������� ����� �� ���.
      mload obj 1709
      ���� ��� %actor.name%
    break
    default
      �� %actor.name%
    done
    %self.gold(2500)%
    ���� 2500 ��� %actor.name%
    unset questor269
    detach 26907 %self.id%
  end
  
~
#26908
��������� ����������~
2 f 100
~
calcuid questor1 26905 mob
attach  26900 %questor1.id%
detach  26901 %questor1.id%
detach  26907 %questor1.id%
rdelete questor269 %questor1.id%
calcuid questor2 26910 mob
attach  26920 %questor2.id%
detach  26921 %questor2.id%
detach  26923 %questor2.id%
rdelete questor269add %questor2.id%
calcuid room48 26948 room
attach 26903 %room48.id%
attach 26924 %room48.id%
exec 26924 %room48.id%
calcuid room29 26929 room
attach 26916 %room29.id%
calcuid room11 26911 room
attach 26918 %room11.id%
calcuid room49 26949 room
attach 26922 %room49.id%
calcuid room22 26922 room
attach 26909 %room22.id%
exec 26909 %room22.id%
~
#26909
Purge �����~
2 z 100
~
if %world.curmobs(26918)% > 0
  calcuid realnevesta 26918 mob
  wpurge %realnevesta% 
end
if %world.curmobs(26919)% > 0
  calcuid vedma 26919 mob
  wpurge %vedma% 
end
calcuid mob1 26912 mob
wpurge %mob1% 
calcuid mob2 26913 mob
wpurge %mob2% 
calcuid mob3 26914 mob
wpurge %mob3% 
calcuid mob4 26915 mob
wpurge %mob4% 
calcuid mob5 26917 mob
wpurge %mob5% 
wload mob 26917
wload mob 26914
wload mob 26913
wload mob 26912
wload mob 26915
calcuid mob1 26917 mob
attach 26915 %mob1.id%
calcuid mob2 26912 mob
attach 26914 %mob2.id%
calcuid mob3 26913 mob
attach 26914 %mob3.id%
calcuid mob4 26915 mob
attach 26914 %mob4.id%
~
#26910
����������� ����������~
0 r 50
~
wait 1s
��� %actor.name%
� ����� ���������� �� ��� �����, ����� �������!
~
#26911
������� � ����������~
0 r 50
~
wait 1s
if %actor.sex% == 1
  �� ���� ����������, ������ ����� � �������
end
if %actor.sex% == 2
  ���  %actor.name%
end
� ������� ������, ���������.
~
#26912
������� � ������� ������~
0 r 50
~
wait 1s
� �������������, ����� ������.
����� %actor.name%
~
#26913
����� �����~
0 f 100
~
� ������, �������! � ���� ������.
if ((%random.5% < 2) && (%world.curobjs(26908)% < 5))
  mload obj 26908
end
~
#26914
����� ������~
0 br 100
0~
wait 1s
if %self.fighting%
  halt
end
switch %random.10%
  case 1
    � ������! ������ ��� ����� �������?! ������!
  break
  case 2
    � ��� ������ �� �� �������!
  break
  case 3
    �� ������
    � ��, ������ ��������!
  break
  case 4
    �� ����
    � ��� ��� ��! ������ ������!
  break
  case 5
    ����
  break
  case 6
    ���
  break
  case 7
    ����
  break
  case 8
    � ������� ���, �������! ������!
    �� ������ ������
  break
  case 9
    �� ����� ����� � �������
    ��
  break
  case 10
    ��� ���
  break
done
wait 10s
~
#26915
��� �������������~
0 ar 100
0~
wait 2s
if !%self.fighting%
  switch %random.3%
    case 1
      ������ ����
    break
    case 2
      ������ �����
    break
  done
end
~
#26916
������������ �������~
2 g 100
0~
if %actor.vnum% != 26904
  halt
end
wait 1s
wecho __- �� ������� ������� ��������� �� ����.
wteleport %actor% 26925
detach 26916 %self.id%
~
#26917
������� �������~
0 f 100
~
� ������, �������! � ���� ������.
if ((%random.5% < 2) && (%world.curobjs(26908)% < 5))
  mload obj 26908
end
~
#26918
� ������~
2 c 1
����������~
if (%actor.vnum% != -1)
  return 0
  halt
end
wsend %actor%  __�� ������� ���� �� ����� � ������ ������� � ����������.
wechoaround %actor% __ %actor.name% ������%actor.g% ���� �� ����� � �����%actor.g% ������� � ����������.
wait 1s
wecho _- ����� ����� ��������� � ����.
wsend %actor% _����� �������� ��� ���� ����� �������.
wload mob 26920
calcuid angel 26920 mob
makeuid keeper %actor.id%
remote keeper %angel.id%
attach 26919 %angel.id%
exec 26919 %angel.id%
wpurge %angel% 
wecho ����� �����.
detach 26918 %self.id%
~
#26919
����� ������~
0 z 100
~
dg_cast '���������' %keeper.name%
~
#26920
����������� �������~
0 r 100
~
if !(%questor269add%)
  wait 1
  � ����������� ����, ������. ����� ����� �� ��������� � ���� ����.
  � ������ ������ ������ ������� ��������. ��� ���� �� � ��� ��������.
  �����
  � ���� � ���� ���� ���������. �� ���������� �� ��������� ��� ������?
  ���� %actor.name%
  attach 26921 %self.id%
end
~
#26921
������ ���� �����~
0 d 1
����� �������~
if !(%questor269add%)
  wait 1s
  � ����� ������. ��������� ��������� � ���� ��������� ��� �����,
  � ����� � ��� ��� �������� ������� � ����� ���. ���-�� ����������
  � � �� ����� � ��� ���. ������ � ��� ��� � ��� ���� � ���, �������,
  � ������ ���������� � ������� ������, � ������ ��� �����. ������ �
  � ���������, ����� ���������, ��� �����, ������-�� �� ���� ���������
  � ����� ����������� � �������� �� ���. ���� � � ������� ����, �� ��
  � ���� ������� �����, ������� � �������� ������.
  ���
  � ���� � ������ �� ���, � ������� ���-�� � ���� ���� ���. ��� ��� ������
  � �������� ����� �� ������������, �� ��� ���� �� ����� ��� ������ �
  � ���� ����. ���� �� ������� ��������� � ������� ��� ��� ���, �
  � ���������� ����, ��� �����.
  ���
  wait 1s
  if %actor.sex% == 1
    � ������ ��, �� ���� ���������, � ���� �� ��� ��� ������ �����������
    � �����.
  end
  if %actor.sex% == 2
    � ������ ��, �� ���� ���������, � ���� �� ��� ��� ������ �����������
    � �����.
  end
  ������ %actor.name%
  makeuid questor269add %actor.id%
  global  questor269add
  attach 26923 %self.id%
  detach 26920 %self.id%
  detach 26921 %self.id%
end
else
halt
end
~
#26922
������� ������~
2 c 1
��������~
if %actor.fighting%
  return 0
  halt
end
if (%actor.vnum% != -1)
  return 0
  halt
end
if !(%arg.contains(������)%)
  wsend %actor% _- ��� �� ��������� ��������?
  return 0
  halt
end
wait  1
wecho __
wsend %actor% _- �������� ������ ������, ��� ������� �������� ������,
wsend %actor% _��� ������� ���-�� ����������.
wechoaround %actor% %actor.name% �������%actor.g% ������.
wecho __
wload obj 26912
detach 26922 %self.id%
~
#26923
������� �� �����-2~
0 j 100
~
wait 1s
if %object.vnum% != 26912
  ���� ���
  halt
end
mjunk all
if (%questor269add.id% == %actor.id%)
  if %actor.sex% == 1
    � �� ���-���� ����� ���. ��� �������! 
  else 
    � �� ���-���� ����� ���. ��� �������! 
  end
  � ��� ���������%actor.g% ������� �� ������ ���.
end
�� .%actor.name%
if ((%actor.class% == 10) && !%actor.skill(�����)% && %actor.can_get_skill(�����)%)
  � �� ��� �, ������� � ����� ���� ������ ������, 
  � ������� ����� �������� ���� � ���.
  wait 1s
  mskillturn %actor% ����� set
else
  wait 1s
  � �� ��� �, ��� � ������, �������� �������.
  wait 1s
  msend %actor% ������ ������ ������� � �������� � �������� ��� ���.
  eval temp %actor.gold(+1500)%
end
else
� ��.... � �� ������ ���� � ������, �� ��� �����, �������.
end
unset questor269add
detach 26920 %self.id%
detach 26921 %self.id%
detach 26923 %self.id%
~
#26924
Purge �������~
2 z 0
~
if %world.curmobs(26904)% > 0
  calcuid uznik 26904 mob
  wpurge %uznik% 
  wload mob 26904
end
~
#26925
����� ������� ����������~
0 f 100
~
return 0
if (%actor.class% != 8)
  msend %actor% _�� ��� ������ ���� ������� ����� ��� 10000 ����� �����.
  %actor.exp(-10000)%
  halt
end
msend %actor% _�� ��� ������ ���� �������� ��� ��� 5000 ����� �����.
%actor.exp(+5000)%
~
#26926
����� ����� �����~
0 f 100
~
return 0
if (%actor.class% != 8)
  msend %actor% _�� ��� ������ ���� ������� ����� ��� 10000 ����� �����.
  %actor.exp(-10000)%
  halt
end
msend %actor% _�� ��� ������ ���� �������� ��� ��� 5000 ����� �����.
%actor.exp(+5000)%
if (%world.curobjs(26913)% < 10) && (%random.10% <= 2)
  mload obj 26913
end
~
#26927
����� �������~
0 f 100
~
return 0
if (%actor.class% != 8)
  msend %actor% _�� ��� ������ ���� ������� ����� ��� 10000 ����� �����.
  %actor.exp(-10000)%
  halt
end
msend %actor% _�� ��� ������ ���� �������� ��� ��� 5000 ����� �����.
%actor.exp(+5000)%
if (%world.curobjs(26914)% < 10) && (%random.10% <= 2)
  mload obj 26914
end
~
#26928
����� ����~
0 f 100
~
return 0
if (%actor.class% != 8)
  msend %actor% _�� ��� ������ ���� ������� ����� ��� 10000 ����� �����.
  %actor.exp(-10000)%
  halt
end
msend %actor% _�� ��� ������ ���� �������� ��� ��� 5000 ����� �����.
%actor.exp(+5000)%
if (%world.curobjs(26915)% < 10) && (%random.10% <= 1)
  mload obj 26915
end
~
#26929
����� ����������~
0 f 100
~
if (%world.curobjs(26916)% < 6) && (%random.10% <= 2)
  mload obj 26916
end
~
$~
