#74800
������ � �������� �� ����~
2 c 100
���������~
if !%arg.contains(�� ����)%
  wsend  %actor% ���� ��� �� ���������?
  halt
end
*
wsend %actor%  ������������ � �������� ��� ��������� ������ �������� �� ���������� �� ����.
wechoaround %actor%  ������������ %actor.name% �����%actor.q% �� ����.
wteleport %actor% 74856
wait 1s
wsend %actor%  ���� �� ���������� �� ����, ��� ��� �� ������� �������e� �� �����.
%actor.position(6)%
%actor.wait(2)%
wechoaround %actor%  ���-�� �������� ����, � ��� �� ������ �� ����� ��� ���. 
~
#74801
������� ����� ��������~
2 c 0
������~
if !%arg.contains(�� �������)%
  wsend  %actor% �� ��� �� ����� ������ ���� ��������!
  halt
end
wsend %actor%  �� ��������� ������� �������� �� �������.
wechoaround %actor%  %actor.name% ��������� �����%actor.y% ����� ������.
*if (%actor.sex% == 1)
*  wechoaround %actor% %actor.name% ��������� ������� ����� ������.
*elseif
*  (%actor.sex% == 2)
*  wechoaround %actor% %actor.name% ��������� ������� ����� ������.
*else
*  wechoaround %actor% %actor.name% ��������� ������� ����� ������.
*end
wteleport %actor% 74864
wechoaround %actor%  ���-�� �������� ����� � ����.
~
#74802
������� ����� �������� �������~
2 c 0
������~
if !%arg.contains(�� �������)%
  wsend  %actor% �� ��� �� ����� ������ ���� ��������!
  halt
end
*
wsend %actor%  �� ��������� ������� �������� �� �������.
wechoaround %actor%  %actor.name% ��������� �����%actor.y% ����� ������.
*if (%actor.sex% == 1)
*  wechoaround %actor% %actor.name% ��������� ������� ����� ������.
*elseif
*  (%actor.sex% == 2)
*  wechoaround %actor% %actor.name% ��������� ������� ����� ������.
*else
*  wechoaround %actor% %actor.name% ��������� ������� ����� ������.
*end
wteleport %actor% 74863
wechoaround %actor%  ���-�� �������� ����� � ����.
~
#74803
����� � ���� �� ������� 1~
2 c 0
����������~
if !%arg.contains(�� �������)%
  wsend  %actor% ���� ��� �� ���������?
  halt
end
*
wsend %actor%  �� ��������� ������ ���� ����.
wechoaround %actor%  ���������� �� �����, %actor.name% �����%actor.q% �� ����.
wteleport %actor% 74855
wait 1s
wsend %actor%  �������������, �� ��������� �� ����� � ������ ��������.
%actor.position(6)%
%actor.wait(2)%
wdamage %actor% 150
wechoaround %actor%  ���-�� �������� �� ����� � ��������� ����� � ����.
~
#74804
����� � �������� �� �����~
2 c 0
����������~
if !%arg.contains(�� �����)%
  wsend  %actor% ���� ��� �� ���������?
  halt
end
*
wsend %actor%  �� ��������� ������ ���� ����.
wechoaround %actor%  ���������� �� �����, %actor.name% �����%actor.q% �� ����.
wteleport %actor% 74869
wait 1s
wsend %actor%  �������������, �� ��������� �� ����� � ������ ��������.
%actor.position(6)%
%actor.wait(2)%
wdamage %actor% 150
wechoaround %actor%  ���-�� �������� �� ����� � ��������� ����� � ����.
~
#74805
������ � ����� �� �������~
2 c 0
���������~
if !%arg.contains(�� �������)%
  wsend  %actor% ���� ��� �� ���������?
  halt
end
*
wsend %actor%  ������������ � �������� ��� ��������� ������ �������� �� ���������� �� �������.
wechoaround %actor%  ������������ %actor.name% �����%actor.q% �� ����.
wteleport %actor% 74866
wait 1s
wsend %actor%  ���� �� ���������� �� �������, ��� ��� �� ������� ��������� �� �����.
%actor.position(6)%
%actor.wait(2)%
wechoaround %actor%  ���-�� �������� ����, � ��� �� ������ �� ����� ��� ���. 
~
#74806
���� ��� ����� � ��������~
2 g 100
~
wait 1s
wecho &K��� ������ �� ������� �� ���&n &y�����&n &K��� ������ ����������� ��&n &r���������&n &K��������� �� ���.&n
detach 74806 %self%
~
#74807
����������� ������~
0 k 100
~
if (%world.curmobs(74814)% < 1)  && (%random.5% == 1)
  mecho ������-������ ������� ����� � ��������� : '����� ����� ����� ����'.
  mecho ������-������ ���������� !
  mecho ������� �������-������ ����� ��������� �� ��������-������.
  mecho ������-������ ���������� !
  mecho ������� �������-������ ����� ��������� �� ��������-������.
  mecho ������-������ ���������� !
  mecho ������� �������-������ ����� ��������� �� ��������-������.
  mecho ������-������ ���������� !
  mecho ������� �������-������ ����� ��������� �� ��������-������.
  mload mob 74814
  mload mob 74814
  mload mob 74814
  mload mob 74814
  wait 1s
  mecho ������-������ ����� ������!
end
~
#74808
����� ���� ������ ����~
0 k 100
~
if (%world.curmobs(74815)% < 1)  && (%random.6% == 1)
  mecho ��������-������ �������� : '� ������� �� ���, � �������� ���...'.
  mecho ������������� ����������� ������� �� ������!
  mecho ��������-������ �������� �� ������������� ����������� � �������� : '���� ���� ������ ���!'.
  mecho ������������� ����������� ������ ��������� �� ����������-������.
  mload mob 74815 
  wait 1s
  mecho ��������-������ ����� ������!
end
~
#74809
������ ������� ��������~
0 k 100
~
if (%world.curmobs(74816)% < 3)  && (%random.5% == 1)
  mecho ���������-������ �������� : '�������, ����� ���������'.
  mecho �������� ��������� �������� �� ����� �������! 
  mecho �������� ��������� ����� ��������� �� �����������-������.
  mload mob 74816
end
~
#74810
������ ������ ��������~
0 k 100
~
if (%world.curmobs(74817)% < 3)  && (%random.6% == 1)
  mecho ������������-������ �������� : '����� ��� ����� ���������'.
  mecho �������� ��� �������� �� ������ �������� ���� ! 
  mecho �������� ��� ����� ��������� �� ��������������-������.
  mload mob 74817
  wait 1s
  mecho ������������-������ ����� ������! 
end
~
#74811
����� ��������� �������~
0 k 100
~
if (%world.curmobs(74818)% < 1)  && (%random.6% == 1)
  mecho �����-������ ������ &R�������� ������&n.
  mecho ������� �������� �� �������.
  mecho �����-������ ����� ��������.
  mecho ������� ������: " ��� ������ ��� ���� ������� ������ �� �����!"
  mecho ������� ����� ��������� �� ������-������.
  mload mob 74818
  wait 1s
  mecho �����-������ ����� ������!
  wait 1s
  mecho &R�������� ������&n �������� � �����.
end
~
#74812
�������� ������~
0 k 100
~
eval action %random.15%
switch %action%
  case 1
    mecho %self.name% ������%self.g% ����, ������� ��������� ����� �������!
    dg_cast '��� ����'
  break
  case 2
    mecho %self.name% ������%self.g% ����, ������� ��������� ����� �������!
    dg_cast '���������'
  break
  case 3
    mecho %self.name% ������%self.g% ����, ������� ��������� ����� �������!
    dg_cast '����� �����'
  break
  case 4
    mecho %self.name% ������%self.g% ����, ������� ��������� ����� �������!
    dg_cast '��� ����'
  break
  case 5
    mecho %self.name% ������%self.g% ����, ������� ��������� ����� �������!
    dg_cast '����  ����'
  break  case 6
  mecho %self.name% ������%self.g% ����, ������� ��������� ����� �������!
  set target %random.pc%
  dg_cast '���� �����' %target.name%
break
case 7
  mecho %self.name% ������%self.g% ����, ������� ��������� ����� �������!
  set target %random.pc%
  dg_cast '����� ���' %target.name%
break
case 8
  mecho %self.name% ������%self.g% ����, ������� ��������� ����� �������!
  dg_cast '�������� ����'
break
case 9
  mecho %self.name% ������%self.g% ����, ������� ��������� ����� �������!
  if %random.3% != 3
    mecho %self.name% ������%self.g% ���������!
    mload mob 74819
  end
  default    
    mecho %self.name% ������%self.g% ����, ������� ��������� ����� �������!
    if %self.hitp% < 75
      dg_cast '�������'
    else
      set target %random.pc%
      dg_cast '���� ����' %target.name%
    end
  break
done
~
#74813
����������~
2 z 100
~
wload mob 74822
detach 74813 %self%
~
#74814
������ ����������1~
0 k 100
~
*��� ���� � ������ ������ ��������� ������ ��������� 
if ( %self.realroom% != 74877) 
  *��������� ������ � 77 ������
  halt
end
*mecho  %m1.hitp% > 100) && ( %m2.hitp% > 100) && (%m5.hitp% > 100 
if ( ( %m1.hitp% > 100) && ( %m2.hitp% > 100) && (%m5.hitp% > 100 ) )
  *���� ��� ������� - ����� 100 ����� - ���� �� ������
  halt
end
*������ ��� ��� ������� ������
* ���� �������
switch %random.3%
  case 1
    set rV 74884
  break
  case 2
    set rV 74888
  break
  case 3
    set rV 74886
  break
done 
mecho ������-������ �������� : '... ��� ������, �������� � �����.'.
if ( %world.curmobs(74857)% == 1 ) 
  mteleport %m2% %rV%
  mecho ������-������ �����.
end
if ( %world.curmobs(74860)% == 1 )
  mteleport %m3% %rV%
  mecho ���������-������ �����.
end
if ( %world.curmobs(74862)% == 1 )
  mteleport %m4% %rV%
  mecho ������-������ �����.
end
if ( %world.curmobs(74858)% == 1 )
  mteleport %m6% %rV%
  mecho ��������-������ �����.
end
if ( %world.curmobs(74861)% == 1 )
  mteleport %m5% %rV%
  mecho ���������-������ �����.
end
mecho ������-������ �����.
mteleport %self% %rV%
* ���� �� ������� ��������� �������������
dg_cast '�� ����'
dg_cast '�� ����'
dg_cast '�� ����'
dg_cast '�����'
*
if ( %world.curmobs(74857)% == 1 )  
  dg_cast '�� ����' ����
  dg_cast '�� ����' ����
  dg_cast '�� ����' ����
  dg_cast '�����' ����
end
*
if ( %world.curmobs(74860)% == 1 ) 
  dg_cast '�� ����' ����
  dg_cast '�� ����' ����
  dg_cast '�� ����' ����
  dg_cast '�����' ����
end
*
if ( %world.curmobs(74862)% == 1 ) 
  dg_cast '�� ����' ���
  dg_cast '�� ����' ���
  dg_cast '�� ����' ���
  dg_cast '�����' ���
end
*
if ( %world.curmobs(74861)% == 1 ) 
  dg_cast '�� ����' ���
  dg_cast '�� ����' ���
  dg_cast '�� ����' ���
  dg_cast '�����' ���
end
~
#74815
���� ����~
0 f 100
~
if ( (%world.curobjs(74836)% < 2) && (%random.1000% < 201 ) )
  mload obj 74836
end
if ( (%world.curobjs(74837)% < 2) && (%random.1000% < 201 ) )
  mload obj 74837
end
if ( (%world.curobjs(74839)% < 2) && (%random.1000% < 201 ) )
  mload obj 74839
end
*���� ������ ����
calcuid rsedoy 74874 room
attach 74813 %rsedoy%
exec 74813 %rsedoy%
*
mecho ���� ������� ���� ������������ ������ ��������� �����, ��� ������ �������� ����� ������.
mecho ������ ����� ���� �� �������� &W������ ����&n, ��������� ������� ����� ������ ������������.
mecho &W����� ���&n �������� : '���� ���� �������'.
mecho �������� ����������� �������� � �������.
mecho &W����� ���&n ����� � �����������.
mecho ����������� �������� ��������.
*
if (%world.curobjs(74849)% == 1)
  calcuid tron 74892 room
  attach 74841 %tron%
  exec 74841 %tron%
end
~
#74816
����� � ����~
0 r 100
~
wait 2s
mecho &W����� ���&n ��������� �� ��� ��������� �������, � ���� �� ������, ��������� ��������.
����� �, ������� ���� ������ �������.
wait 1s
����
wait 1s
����� ������-�����, ��� � ���������, � ��������, �������� ������ � ��������.
����� � ������ ������������� �� ���.
����� ���� ����������� � � ����������� � ������������ �������.
����� � ����� ������ � �������� ��� ��������� ��� �����.
wait 1s
����
wait 1s
����� � ����, ���� �������� ���� ����� �������� ��� �����!
����� ��� �, � �����.
wait 1s
����
wait 1s
����� ������ ��� ����� ������ &C����������&n � �� ������ &W��������&n ��� �����!
mecho &W����� ���&n �������� ������, �������� �������� ��.
calcuid mag 74822 mob
detach 74816 %mag%
~
#74817
����� ����~
0 c 100
�����~
wait 1
if !%arg.contains(�����������)%
  msend  %actor% ��� �� ������ �������� ������ &W������ ����&n?
  halt
end
set mech %actor.eq(16)%
if (%mech.vnum% == 74809)
  msend %actor% �� ������������ � ����� ������ ������ &W������ ����&n ������.
  mechoaround %actor% �������������, %actor.name% ����� ������ ����%actor.g% &W������ ����&n ������.
  mecho &r����� ����� ����������� �� ��� �������.&n
  mecho &y����� � ��������� ������� ����� ������.&n 
  wait 1s
  mecho �������� ���� ������ ��������� �����!
  mecho ������ ��� ����� &W��������&n!
  mdoor 74874 south purge
  mdoor 74892 north purge
  mload obj 74810 
  mpurge %self%
  *�� ����� ���. ���� ������ ��� �������� ����
  *calcuid mag 74822 mob
  *detach 74817 %mag.id%
  *detach 74806 %self.id% 
else 
  ���
  � � ���� ���� ����������� ����, ����� ����� ����!
end
~
#74818
���������������1~
0 n 100
~
*���� ���� ��� ���� ����� �����������
wait 5s
*���� ���� ������ �����
*1 ������ 
calcuid m1 74856 mob
calcuid m2 74857 mob
wait 1
calcuid m3 74860 mob
calcuid m4 74862 mob
wait 1
calcuid m5 74861 mob
calcuid m6 74858 mob
*������ ���������� ����������� ���� �� ��������
global m1
global m2
global m3
global m4
global m5
global m6
~
#74819
������� � ������~
0 r 100
~
wait 3s
emot ������ �� ��� ������ ����� � ���������.
wait 1s
say ����������� ��� �������� �����.
wait 1s
�����
say ��������� � ���� ���� �� �������� ������ ����� ����.
say ���� �������� ������� ������, �� ������ �����.
wait 1s
say ������ � ��� ��������� �������, ���� � ��� �����.
say �� ��� �, � ���� ���������� ��� �� ���� �����.
say �� ������ ����������� ���� ���������?
����
calcuid ded 74823 mob
attach 74820 %ded%
~
#74820
������� ����~
0 d 100
������~
wait 2s
say �� ��� ���!
say ������-����� ��� �� ����� &W����� ���&n.
say � ��������� � ��� �����  ��������� ������ � ��������!
say ��� ��������, � �������� ����� ���������� � ������������ �������.
����
wait 2s
say � ��� ��� �� ���� �������� ���� ������ � ������� ��.
say ������ �� ���� ������� �� ����� ������ ����, ����� �� �� �������� ��� �������,
say � ����� ��������� �����.
�����
wait 2s
say � ���������� � ���� ������ �� ����, ����� �������� ��� �� ����� � ���.
say �� ���� �� ������ ����������� ��������� � ������ ����, � ������ ��� ������� ����.
���� 
say �� ��� ��������?
calcuid ded 74823 mob
*detach 74820 %self.id%
detach 74819 %ded%
attach 74821 %ded%
~
#74821
����� �����~
0 d 100
��������~
wait 2s
���
wait 1s
say ������ � ����� �����, ������� ��������� � �������.
wait 2s
say �...��� ��� ���, ���� �� �����, &W������ ����&n ������ ������ ��� �����.
say �� ����� ���� �������� ������ ��������� �����.
say � ������ ��� ��� �����, �� ���� � ��� ������.
wait 1s
mecho ������ ������ ����� ��������� �� �����!
wait 1s
say �� ��� ���, ��� ���� ������ ���� ���� �����������.
mload obj 74811
���� ����� %actor.name%
wait 1s
say �� ����� ���....
say �� ��...��� ��� ��� ���� �������� ��������� �����,
say �� ����������� ��� � ����������� ������������ �������.
wait 2s
say �� � ������ �������!
������� %actor.name%
wait 2s
mecho ������ ������� ������ � �� �� ��� ���������� � ������������.
mat 74801 mecho ���-�� �������� ����� � ������ ������ ����.
mteleport all 74801
wait 1s
mat %actor.realroom% mecho �� ��������� �� &K��������� �����!&n
*calcuid ded 74823 mob
detach 74820 %self%
detach 74821 %self%
~
#74822
������������ � ��������~
2 e 100
~
wecho �������� ����������� �������� � �������.
%portal% 74849 1
~
#74823
������� � ������2~
0 q 100
~
if ( (%world.curmobs(74821)% < 1) && (%world.curmobs(74822)% < 1) )
  wait 3s
  ��
  say � ���� �� ��������� �� ����� ������� � ���� &W������ ����&n.
  say ���������� �� ������, ��� �������� �� �����.
  wait 1s
  ���
  wait 1s
  say �� ���� � ���������� ���� �� ������.
  say ����� ��� ��� ���, ��� �� ��� ������������ ������ ����� ������� ��.
  wait 1s
  �����
  *calcuid ded 74823 mob
  detach 74823 %self%
end
~
#74824
������ ��� �������~
0 j 100
~
if (%object.vnum% != 74809)
  say ����� ��� ���?
  return 0
  halt
end
wait 1
mpurge %object%
wait 1s
say ��� �������, �������� ��� �� ��� � ������� ���������.
say �� ��� ���, �� � ���� �����������.
wait 3s
switch %random.9%
break
case 1
  if %world.curobjs(74812)% < 2
    mload obj 74812
    mecho ������ ������ ����� &C���������&n �� �����!
    wait 2s
    ���� ����� .%actor.name%
    ���� �����
    � �� �������� ������, � ������������ ����� �� ������ ����, � ���� ���� ���� ���!
    ������ .%actor.name%
  else
    set buf %self.gold(+666)%
    give 666 ��� .%actor.name%
  end
break
case 2
  if %world.curobjs(74814)% < 2
    mload obj 74814
    mecho ������ ������ ���� � ���� ������ ���������� ������.
    wait 2s
    ���� ���� .%actor.name%
    ���� ����
    � �� �������� ������, � ������������ ����� �� ������ ����, � ���� ���� ���� ������!
    ������ .%actor.name%
  else
    set buf %self.gold(+666)%
    give 666 ��� .%actor.name%
  end
break
case 3
  if %world.curobjs(74815)% < 2
    mload obj 74815
    mecho ������ ������ ���� � ���� ���� ���������� ������.
    wait 2s
    ���� ���� .%actor.name%
    ���� ����
    � �� �������� ������, � ������������ ����� �� ������ ����, � ���� ���� ���� ����!
    ������ .%actor.name%
  else
    set buf %self.gold(+666)%
    give 666 ��� .%actor.name%
  end
break
case 4
  if %world.curobjs(74816)% < 2
    mload obj 74816
    mecho ������ ������ ���� � ���� ��� ���������� ������.
    wait 2s
    ���� ��� .%actor.name%
    ���� ���
    � �� �������� ������, � ������������ ����� �� ������ ����, � ���� ���� ���� ���!
    ������ .%actor.name%
  else
    set buf %self.gold(+666)%
    give 666 ��� .%actor.name%
  end
break
case 5
  if %world.curobjs(74817)% < 2
    mload obj 74817
    mecho ������ ������ ���� � ���� ������ ���������� ������.
    wait 2s
    ���� ���� .%actor.name%
    ���� ����
    � �� �������� ������, � ������������ ����� �� ������ ����, � ���� ���� ���� ������!
    ������ .%actor.name%
  else
    set buf %self.gold(+666)%
    give 666 ��� .%actor.name%
  end
break
case 6
  if %world.curobjs(74818)% < 2
    mload obj 74818
    mecho ������ ������ ��������� ������������ ����� ���������� ������!
    wait 2s
    ���� ���� .%actor.name%
    ���� ����
    � �� �������� ������, � ������������ ����� �� ������ ����, � ���� ���� ���� �����!
    ������ .%actor.name%
  else
    set buf %self.gold(+666)%
    give 666 ��� .%actor.name%
  end
break
default
  mload obj 74819
  mecho ������ ������ ������ ����� ����������� ������!
  wait 2s
  ���� ���� .%actor.name%
  ���� ����
  � �� �������� ������, � ������������ ����� �� ������ ����, � ������� ����!
  ������ .%actor.name%
break
done
detach 74824 %self%
~
#74825
���� ����~
0 f 100
~
if ( (%world.curobjs(74820)% < 2) && (%random.1000% < 101 ) )
  mload obj 74820
elseif ( (%world.curobjs(74821)% < 2) && (%random.1000% < 101 ) )
  mload obj 74821
end
~
#74826
���� ����~
0 f 100
~
if ( (%world.curobjs(74822)% < 2) && (%random.1000% < 101) )
  mload obj 74822
elseif ( (%world.curobjs(74823)% < 2) && (%random.1000% < 101) )
  mload obj 74823
end
~
#74827
���� ���~
0 f 100
~
if ( (%world.curobjs(74824)% < 2) && (%random.1000% < 101) )
  mload obj 74824
elseif ( (%world.curobjs(74825)% < 2) && (%random.1000% < 101) )
  mload obj 74825
end
~
#74828
���� �����~
0 f 100
~
if ( (%world.curobjs(74826)% < 2) && (%random.1000% < 101) )
  mload obj 74826
elseif ( (%world.curobjs(74827)% < 2) && (%random.1000% < 101) )
  mload obj 74827
end
~
#74829
���� ����~
0 f 100
~
if ( (%world.curobjs(74828)% < 2) && (%random.1000% < 101) )
  mload obj 74828
elseif ( (%world.curobjs(74829)% < 2) && (%random.1000% < 101) )
  mload obj 74829
end
~
#74830
���� ����~
0 f 100
~
if ( (%world.curobjs(74830)% < 2) && (%random.1000% < 101) )
  mload obj 74830
elseif ( (%world.curobjs(74831)% < 2) && (%random.1000% < 101) )
  mload obj 74831
end
~
#74831
���� �����~
0 f 100
~
if ( (%world.curobjs(74832)% < 2) && (%random.1000% < 101) )
  mload obj 74832
elseif ( (%world.curobjs(74833)% < 2) && (%random.1000% < 101) )
  mload obj 74833
end
~
#74832
���� ����~
0 f 100
~
if ( (%world.curobjs(74834)% < 2) && (%random.1000% < 101) )
  mload obj 74834
elseif ( (%world.curobjs(74835)% < 2) && (%random.1000% < 101) )
  mload obj 74835
end
~
#74833
���� ������~
0 f 100
~
if ( (%world.curobjs(74800)% < 2) && (%random.1000% < 101) )
  mload obj 74800
end
~
#74835
���� ����~
0 f 100
~
if ( (%world.curobjs(74840)% < 2) && (%random.1000% < 101) )
  mload obj 74840
end
~
#74836
���� ����~
0 f 100
~
if ( (%world.curobjs(74842)% < 2) && (%random.1000% < 101) )
  mload obj 74842
elseif ( (%world.curobjs(74843)% < 2) && (%random.1000% < 101) )
  mload obj 74843
end
~
#74837
���� ����~
0 f 100
~
if ( (%world.curobjs(74844)% < 2) && (%random.1000% < 101) )
  mload obj 74844
elseif ( (%world.curobjs(74845)% < 2) && (%random.1000% < 101) )
  mload obj 74845
end
~
#74838
���� �����~
0 f 100
~
if ( (%world.curobjs(74846)% < 2) && (%random.1000% < 101) )
  mload obj 74846
elseif ( (%world.curobjs(74850)% < 2) && (%random.1000% < 101) )
  mload obj 74850
end
~
#74839
�����~
2 f 100
~
calcuid or 74800 room
attach 74806 %or%
*���� �� ���������� � ������ ������
*���������� �� �������� ���� 
*calcuid mag 74822 mob
*attach 74816 %mag.id%
*calcuid mag 74822 mob
*attach 74817 %mag.id%
calcuid ded 74823 mob
attach 74819 %ded%
*calcuid ded 74823 mob
attach 74823 %ded%
*calcuid ded 74823 mob
attach 74824 %ded%
wait 1
calcuid troom 74873 room
attach 74849 %troom.id%
~
#74840
���� ����2~
0 f 100
~
if ( (%world.curobjs(74804)% < 2) && (%random.1000% < 101) )
  mload obj 74804
end
~
#74841
���� �������� ������ �� �����~
2 z 100
~
wait 4s
wecho ����� ������ ������ ���������� ���� �������� ������ ��� �� ��� �����!
wait 1s
wecho ���� �������� ����� �� ����, ��������� ������ �� �����.
*
calcuid tron 74849 obj
wpurge %tron%
*
wdoor 74892 north flags a
wdoor 74892 north room 74874
wdoor 74874 south flags a
wdoor 74874 south room 74892
detach 74841 %self%
~
#74842
������ ���������~
0 f 100
~
if ( (%world.curobjs(74847)% < 2) && (%random.1000% < 101) )
  mload obj 74847
elseif ( (%world.curobjs(74848)% < 2) && (%random.1000% < 101) )
  mload obj 74848
end
~
#74843
���������������2~
0 n 100
~
*���� ���� ��� ���� ����� �����������
wait 5s
*���� ���� ������ �����
*2 ������
calcuid m7 74830 mob
calcuid m8 74834 mob
wait 1
calcuid m9 74835 mob
calcuid m10 74837 mob
calcuid m11 74838 mob
* 
*������ ���������� ����������� ���� �� ��������
global m7
global m8
global m9
global m10
global m11
~
#74846
���� ����2~
0 f 100
~
if ( (%world.curobjs(74802)% < 2) && (%random.1000% < 101) )
  mload obj 74802
end
~
#74847
���� �����2~
0 f 100
~
if ( (%world.curobjs(74805)% < 2) && (%random.1000% < 101) )
  mload obj 74805
end
~
#74848
���� ����2~
0 f 100
~
if ( (%world.curobjs(74808)% < 2) && (%random.1000% < 101) )
  mload obj 74808
end
~
#74849
����������������������������~
2 e 100
~
*���� ����� ����� � ������� � � ���� ���������
*���� � ���������, ���� ���� �� ����
*�� ������������ ��� � ����������� ���
* ��� ������ ���� ����!!!! ����� �������� �����!
*wecho -----------0 %world.curobjs(74811)%
if ( %world.curobjs(74811)% > 0 ) 
  calcuid mech 74811 obj 
  * ������� ��������� (��� �����)
  if %mech.carried_by%
    *���� ���� �������� �������� UID
    set i %mech.carried_by%
  end
  * ������� ��������� (�� ��� ����)
  if %mech.worn_by%
    *���� ���� �������� �������� UID
    set i %mech.worn_by%
  end
  if (%i% != %actor%)
    halt
  end
  *wecho -----------%actor.name% �������� ��� �����
  *������������ � �����������
  wait 1
  wecho _��������� �������� &C������� ��������&n, ������������ ��������� � ����������� ������.
  exec 74850 %mech%
  detach 74849 %self.id%
end
~
#74850
�������������~
1 z 0
~
otransform 74809 
~
#74851
�����������~
0 n 100
~
attach 74816 %self%
attach 74817 %self%
~
#74852
������ ����������2~
0 k 100
~
*��� ���� � ������ ������ ��������� ������ ��������� 
if ( %self.realroom% != 74841) 
  *��������� ������ � 41 ������
  halt
end
if ( ( %self.hitp% > 100) && ( %mkoldun.hitp% > 100) && (%volsh.hitp% > 100 ) )
  *���� ��� ������� - ����� 100 ����� - ���� �� ������
  halt
end
*������ ��� ��� ������� ������
* ���� �������
switch %random.3%
  case 1
    set rV 74884
  break
  case 2
    set rV 74888
  break
  case 3
    set rV 74886
  break
done 
mecho ������-������ �������� : '... ��� ������, �������� � �����.'.
if ( %world.curmobs(74834)% == 1 ) 
  mteleport %m8% %rV%
  mecho ��������-������ �����.
end
if ( %world.curmobs(74838)% == 1 )
  mteleport %m11% %rV%
  mecho �������-������ �����.
end
if ( %world.curmobs(74837)% == 1 )
  mteleport %m10% %rV%
  mecho ������-������ �����.
end
if ( %world.curmobs(74835)% == 1 )
  mteleport %m9% %rV%
  mecho ���������-������ �����.
end
mecho ������-������ �����.
mteleport %self% %rV%
* ���� �� ������� ��������� �������������
dg_cast '�� ����'
dg_cast '�� ����'
dg_cast '�� ����'
dg_cast '�����'
*
if ( %world.curmobs(74834)% == 1 )  
  dg_cast '�� ����' �����
  dg_cast '�� ����' �����
  dg_cast '�� ����' �����
  dg_cast '�����' �����
end
*
if ( %world.curmobs(74838)% == 1 ) 
  dg_cast '�� ����' ����
  dg_cast '�� ����' ����
  dg_cast '�� ����' ����
  dg_cast '�����' ����
end
*
if ( %world.curmobs(74837)% == 1 ) 
  dg_cast '�� ����' ���
  dg_cast '�� ����' ���
  dg_cast '�� ����' ���
  dg_cast '�����' ���
end
*
if ( %world.curmobs(74835)% == 1 ) 
  dg_cast '�� ����' ���
  dg_cast '�� ����' ���
  dg_cast '�� ����' ���
  dg_cast '�����' ���
end
~
$~
