#22000
�����, �������� �������� �����~
2 f 100
~
%load% mob 22003
calcuid warrior 22003 mob
eval %warrior.hitp(150)% 
attach 22001 %warrior.id%
eval helper 0
global helper
eval healer 0
global healer
eval voin 0
global voin
%door% 22058 down purge
attach 22011 %world.room(22058)%
eval loadroom %random.13%*5+22021
calcuid rm %loadroom% room
attach 22009 %loadroom%
eval healer %loadroom%
run 22009 %loadroom%
~
#22001
���� � ������� � ������~
0 q 100
~
wait 1s
�����
wait 1s 
say ����������, %actor.name%.
say �� ������ � ��������� � ���� ��������� ���� ����-������.
say �� ��� �� �� �����������, �� ������ � ������.
wait 1s
���� .%actor.name%
~
#22002
������� ����� ������~
0 d 100
������~
wait 1s
����
wait 1s
say �������, %actor.name%, ��� ��������%actor.u% ������.
say � ���� ���� ������� ��������� - ������� �����.
say ��-�� ���� ���� ��� ����� ������,
say ����� ��� ���������� � ����, � ������� ������ ���� ������
say ����� ��������� � �������� ������� ��-�� ���.
wait 1s
���
wait 1s
say � ����� ������� ����� ���������� � ����� � ���. ����� � ������, ��� �� �������.
say �� ������ �� ������� ��� ��� ���������� � ���� ��������. ��� ���� ������� ���������.
say ���� � ���� ����� � �������� �������, ������� ������ ������, �� ������ ������� � �� � ���� ���-��.
wait 1s
����
wait 1s
say �� �� �����, � ����� ������� � ��� ���������!
say ��� ������ �����%actor.a% � ��� ����� � ����� ������.
wait 1s
���
eval helper %actor.name%
global helper
calcuid warrior 22003 mob
attach 22003 %warrior.id%
detach 22001 %warrior.id%
detach 22002 %warrior.id%
~
#22003
������� ����� �����~
0 d 100
�����~
if ( %helper%==%actor.name%)
  wait 1 s
  ���
  wait 1 s
  say �� ���� � �����.
  wait 1 s
  �����
  wait 1 s
  say ������ �� ����.
  wait 1 s
  �����
  calcuid warrior 22003 mob
  attach 22004 %warrior.id%
  detach 22011 22058 room
else
  halt
end
~
#22004
�������� ����������~
0 r 100
~
%echo% � ������� ���� ������ ��������� ������ � �� ������������ ������� ��������� ���������.
%load% mob 22004
%door% 22058 D room 22095
wait 1 s
�� �������
calcuid warrior 22003 mob
detach 22003 %warrior.id%
detach 22004 %warrior.id%
~
#22005
���� ����� �����~
0 j 100
~
if (%object.vnum% != 22000)
  say ����� ��� ���?
  return 0
  halt
end
wait 1
mpurge %object%
say ������� ����, %actor.name%. ������ � ����� ����������� �������.
mecho ���� ���� �� ����� ��������� �������� � ������ ��� ���� ����.
wait 2s
mecho ���� �������� ������� �����.
eval %self.hitp(1750)%
eval healer 1
global healer
~
#22006
������ ����������~
0 f 100
~
if ( %voin%==0)
  calcuid warrior 22003 mob
  attach 22007 %warrior.id%
  run 22007 %warrior.id%
else
  %echo% ��������� ������� �����.
  %echo% ������ ����� ����� ������ ������ �� ����, � ���� ������ ��������� ������ �� ����.
end
if ( (%world.curobjs(22004)% < 8) && (%random.10% < 5) )
  mload obj 22004
end
if %random.1000% <= 80
  %load% obj 1711
end
~
#22007
���� - �������������~
0 z 100
~
if ( %healer%==1)
  switch %random.2%
    case 1
      %load% obj 22002
      %load% obj 22002
    break
    case 2
      %load% obj 22002
      %load% obj 22002
      %load% obj 22002
    break
  done 
  switch %random.2%
    case 1
      %load% obj 22003
      %load% obj 22003
    break
    case 2
      %load% obj 22003
      %load% obj 22003
      %load% obj 22003
    break
  done
  wait 1 s
  say � � ���� �� ������!
  say ������ �� ��������� ���������� � ���� ������.
  say ������� ���� �� ������ � ����� �� ���� �������.
  wait 1 s
  %load% obj 22001
  �� �����
  �� �����
  �� �����
  �� ����
  �� ����
  �� ����
  ����� ���� ����
  ����� ���� ����
  ����� ���� ����
  ����� ����� ����
  ����� ����� ����
  ����� ����� ����
  if %random.100% <= 25
    %load% obj 403
    ���� ���� .%helper.name%
  end
  ���� ����� .%helper.name%
  wait 1 s
  say ���, ��� ��� �� �������� �����, � ���� � ����� ������������ � ����� ����������.
  calcuid warrior 22003 mob
  detach 22007 %warrior.id%
else
  wait 1 s
  say � � ���� �� ������!
  say ������ �� ��������� ���������� � ���� ������.
  say ������� ���� �� ������, ����� ����� ��� ���� �������������...
  ���
end
~
#22008
������ �����~
0 f 100
~
eval voin 1
global voin
~
#22009
���� �����~
2 z 100
~
%load% obj 22000
~
#22010
������ ���~
0 b 30
~
����
switch %random.3%
  case 1
    masound &Y��������� �������� ��������� ���� ���.&n
  break
  case 2
    masound &Y������-�� �� ���� ���������� �������� ������ ���.&n
  break
  case 3
    masound &Y��������� �������� �������� ������ ���.&n
  break
done
~
#22011
�� ������� �� �����~
2 e 100
~
if %exist.mob(22003)%
  wasound �� ������ ��������� ��������� � ����� ������ �� ������� �����.
  wat 22059 %echo% ���� ������ : '���� �����?!����� ��� ��������!'
  wat 22059 %echo% ���� ������ : '� �������� � ��� �� ���������, ������ ������?'
  wat 22059 %echo% ���� ������ : '����� ������� ������� ���������.'
  return 0
end
~
#22012
������ �������������~
0 q 100
~
wait 1s
���
� � ��� ��������� �� ������, ������� �������.
� ����� ��� ����� ����-�� ��������, ����, ��������.
� ���� ��� ����� �������� ������ ��� ���������.
� � �� �������� ����...
wait 1s
����
~
$~
