#7600
����������� ���������~
0 r 100
~
wait 1
if %questor76% == %actor.id%
  say %actor.name%, �� ��� �������� ��� �������?
  ����
  halt
end
if %questor76%
  halt
end
wait 1s
say ����������� ����, %actor.name%!
��
say �� ������� �� �� ��� ������?
~
#7601
����������� ������ ���������~
0 d 0
���� �����~
wait 1s
set questor76 %actor%
global  questor76
say �������! ���, ��������.
say ���� ������, ���������, � ����-�� ����. ������, ��������. ����, �� ������ �������!
say ��������� � ��� ���-�� � � ��� ��� ��� �� ���, ��� ������.
���
say ������ ���� �����, ������� ��������...! �� �� ���� ����!
wait 1s
say �������� �������� ���������� ���� ���� �� ����������... �� ���� ����� �� ���������!
say � � �� � ����� �� ��������...
wait 1s
if ((%actor.realroom% == %self.realroom) && (%actor.canbeseen%))
  �� ��������� ������� � ������
  dg_cast '������' %actor.name%
  wait 1s
  say ���, ��� ������������ ����, ������� � ���� �� ���� ��������...
end
say � ������ ������!
detach 7601 %self.id%
~
#7602
����� � �����~
2 c 1
����� ��������~
if !%arg.contains(�����)%
  wsend %actor% _���� �����?
  halt
end
wait 1
%actor.wait(2)%
wsend %actor% �� ������� � �����...
wechoaround %actor% _%actor.name% �����%actor.q% � �����. �� �����, ������%actor.w%!
wteleport %actor% 7663 horse
wait 1s
wsend %actor% ...� ������� �� �����-�� ������.
~
#7603
����� �������~
2 c 0
����� ��������~
if !%arg.contains(�����)%
  wsend %actor% _���� �����?
  halt
end
wait 1
%actor.wait(2)%
wsend %actor% �� ������� � �����...
wechoaround %actor% _%actor.name% �����%actor.q% � �����.
wait 2s
wteleport %actor% 7662 horse
wsend %actor% ...� ������� �� �����-�� ������.
~
#7604
�������� �������~
0 d 1
�� �������� ��������� ������ ������� ������ ���~
wait 1
if (%questor76.id% != %actor.id%)
  halt
end
if %exist.mob(7609)% || %exist.mob(7610)% || %exist.mob(7611)% || %exist.mob(7612)%
  wait 1s
  say ���-�� ������������ ���, ��� �� �����! 
  �� ���������� �� ���
  halt
end 
if !%exist.obj(7610)%
  wait 1s
  ���
  say �������! �������! �� ���� ��� ���, � ��� �� ������ �����!
  wait 1s
  eval chance %random.100%
  if ( %chance% < 20 ) && ( %world.curobjs(7607)% < 4 )
    mload obj 7607
    � ������ ��� ������ �����, � ��� �� �� ���������� ���� ����� ������ �����.
    ��� ����� %actor.name%
  elseif ( %chance% < 40 ) && ( %world.curobjs(7614)% < 4 )
    say ������� ��� ��������, � ���� �� ���� ��� ������ ������ ����������� ����� ������.
    mload obj 7614
    ���� ������ .%actor.name%
  elseif ( %chance% < 60 ) && ( %world.curobjs(7615)% < 4 )
    say ����� � ��� ���� �����, �������� ��� � ���� ������� ��������, ��� � � ���������..
    mload obj 7615
    ���� ����� .%actor.name%
  else
    %self.gold(+300)%
    ��� 300 ��� %actor.name%
  end
else
  say ����, ��� �� ������� �������� �������������... �� �� ��� �����.
end
wait 1s
say �����-�� ������, ��� �� ��������� ����.
wait 1s
say ��, �����, �����%actor.g% - �� ������ � ������� �������� ��� �� �� ����� ������.
say ��� � ������� ���� ��������� - ������ � ����� ������� ���������.
say � ���� ���� - ��������� ��� ��������.
wait 2
switch %actor.class%
  case 2
    say ����� � ���� �������� �������� �����, � ������� ����� ����� � �� ��������
    say �� ��� ����������� ���� ������, ��� ���� � �������� �� ����� - ��� ��.
    mskillturn %actor% �������� set
  break
  case 3
    say ����� � ���� ����� �������, ������ �������� ����� �� ������!
    mskillturn %actor% �����������.����� set
  break
  case 4
    say ����� � ���� ��� ����� ���������, ��� ��� ���� � ����� ���� �� ������ ������ �������� ������ �����.
    mskillturn %actor% �������� set
  break
  case 5
    say ����� � ����, ��� � ��� �� ��������� ������� � ����� ���� ����������.
    mskillturn %actor% ����������.����� set
  break
  case 9
    say ����� � ���� ����� ������� ���, ���� � ������ ����� ��� ������� ������ �����!
    mskillturn %actor% ������.����� set
  break
  case 10
    say ����� � ����, ��� ������ �� ������ ����� � ��� � ������ ����� ��� ������ � � ���������.
    mskillturn %actor% ��������� set
  break
  case 11
    say ����� � ���� �����, ����� �������� ����������� ���� �� ����� � ��������, ��� ��, �� ������ �����.
    mskillturn %actor% �������� set
  break
  case 12
    say ����� � ����, ��� ��� �� ����� � ������ ������ �������, ��� ���, ������, ���� � ��������� �� ��������.
    say ���� �������� �����.
    ��
    mskillturn %actor% ������� set
  break
done
mechoaround %actor% ������-�������� ��� %actor.dname% ��������� ����������� �� ������� ��������.
msend %actor% ������-�������� ��� ��� ��������� ����������� �� ������� ��������.
unset questor76
detach 7601 %self.id%
detach 7600 %self.id%
detach 7604 %self.id%
~
#7605
����� � �������~
0 q 100
~
wait 1s
mecho _������ ����� ����������� ���� ��������� ������.
wait 1s
� �����-�� ����� ����� ������� ���� �� ������ 
� ������ �� ����� ������ �� ���� ������!
�����
detach 7605 %self.id%
~
#7606
������� ���� ���~
0 j 100
~
wait 1
if (%object.vnum% != 7610)
  � � �� ������ ����� ������ ������� �����?
  ���
  halt
end
wait 1
mpurge %object%
����
wait 1s
� �������-�� �� ������� ���� ������ ���!
wait 1s
eval chanse %random.100%
if ( %chanse% < 40 ) && ( %world.curobjs(512)% < 1 )
  say ������ ��� ��� ������, ���������� � �����-�� ����, �� ��� ��� ��� ����������.
  mload obj 592
  ���� ���� .%actor.name%
elseif ( %chanse% < 55 ) && ( %world.curobjs(4413)% < 1 )
  say ������ ��� ���� ������, ����� ���-�� �� ����, �� ����� ��� ��� ����� ������ �� ����.
  mload obj 4413
  ���� ���� .%actor.name%
else
  say ������, ���, �� ������.
  %self.gold(+150)% 
  give 150 ��� .%actor.name%
end
wait 1s
mecho _������ ����� ������� ������, �������� ����� � �������� �����.
exec 7607 %world.mob(7609)%
exec 7607 %world.mob(7610)%
exec 7607 %world.mob(7612)%
mteleport %self% 7699
��� ���
mjunk all
wait 1
mpurge %self%
~
#7607
������ ��������~
0 z 100
~
mteleport %self% 7699
��� ���
mjunk all
wait 1
mpurge %self%
~
#7608
����� ������~
2 f 100
~
calcuid star 7600 mob
detach 7600 %star%
detach 7601 %star%
detach 7604 %star%
attach 7600 %star%
attach 7601 %star%
attach 7604 %star%
calcuid us 7611 mob
detach 7605 %us%
detach 7606 %us%
attach 7605 %us%
attach 7606 %us%
~
#7609
���� �������~
0 f 100
~
if %random.1000% <= 300
  %load% obj 517
end
~
#7610
������� �� ������~
2 e 100
~
wsend %actor% ������� ������ ����� ����������� ������� �� ���� ������� ������� �� ������.
wsend %actor% ����� ���� ���� ���������� �� �����, �� ������� �� �����,
if (%random.100% < 34)
  wsend %actor% ������ ���� ��� �� �������, ����� ������ ������� � �������� ������ ��� �� ������.
  wsend %actor% ������ �� �������������, ��� �� ����, �� ��������� ����� � �� ���������� ������ �������� ����.
  eval buf %actor.hitp(-10)%
  wteleport %actor% 7644
  return 0
  wat 7644 wechoaround %actor.name% %actor.name% �� ���������� ������ ����%actor.g% ������.
else
  wsend %actor% ����� ���������� �������, ����������� �� ��� � ��������� �� �������� ������.
end
~
$~
