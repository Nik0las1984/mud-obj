#7000
�������� ������������~
0 q 25
~
wait 1s
mecho �������� ��������� � ��������� ����� � ������ �������.
� ����, ������� ���� ����������� ����!
� �� ��� ������!
wait 4
mechoaround %actor% �������� ����� ���������� � %actor.dname%.
msend %actor% �������� ����� ���������� � ��� �����.
wait 4
if (%actor.sex% == 1)
  � ��� ���� �������, ������� �������?
end
if (%actor.sex% == 2)
  � ��� ���� �������, ��� �������?
end
~
#7001
������� ������������~
0 q 15
~
wait 1s
mecho ������ ������� ��������� ����-�� �� ������ � �������.
wait 4
switch %random.4%
  case 1
    � ���.. ����������-�� ������� ����..
  break
  case 2
    � ���.. ����������-�� ��������� ��������..
  break
  case 3
    � ���.. �������������-�� ������ ������..
  break
  case 4
    � ���.. �� ������� ������ ������� � ��� ������..
  break
done
wait 4
mecho ������ ������� ��������� ������� ������� ������.
�� %actor.name%
~
#7002
���������� ������������~
0 q 25
~
wait 1s
mecho ���� ���������� ������ ���������.
wait 4
switch %random.4%
  case 1
    � ��������� ���� ������ � �������� ����
    � � �������� ������ - ��� ����� �����..
  break
  case 2
    � ���� � ���� ������, ������ ��� ���� � ���
    � ��� ���������� ��� ���� �� ������ �..
  break
  case 3
    � ����� ������������� ����� �� ���� �������
    � ����� �� ���� ������� ����� �������� ���..
  break
  case 4
    � ������ �������������� ������� �������������
    � ���, ��� �� �������� ��� ������ ���-���..
  break
done
wait 4
����
mecho ���� ���������� ������ ������ ��������, ��� ���-�� ������.
� �� �� ���?
~
#7003
�������� ������������~
0 r 15
~
wait 4
switch %random.4%
  case 1
    � ������ �� ����.. ���.. 
    ���
    wait 1s
    � ������!
    ���
  break
  case 2
    � ������ �� ����.. ���..
    ���
    wait 1s
    � ������!
    ���
  break
  case 3
    � ������ �� ����.. ���..
    ���
    wait 1s
    �� ��������� ��������� �� ������������� ������ ���
    �� ��������� � �������� ������� ������
    wait 1s
    � �����������!
    ���
  break
  case 4
    � ���� �� ���.. ���..
    ���
    wait 1s
    � ��, ������, ������..
    ��� 
  break
done
~
#7004
�������� ��������~
0 q 100
~
wait 1
if %actor.level% >= 10 || (%actor.gold% >= 20) || (%actor.bank% >= 20) 
  halt
end
wait  1
msend %actor% ������� ������� ���:
if %actor.sex% == 1
  msend %actor% - �� �� ����������, �������� ��������, %actor.name%.
elseif
  %actor.sex% == 2
  msend %actor% - �� �� ����������, �������� ��������, %actor.name%.
end
msend %actor% - ��� �� �������� �����, ���� �� ���������. 
msend   %actor% - ������, �������...
dg_cast '���������' %actor.name%
~
#7005
����������� ����~
0 b 12
~
wait 4
mecho ����������� ��������� �� ������� � �����:
wait 4
switch %random.4%
  case 1
    mecho ����������� ������ : '�������� ��� ���������.'
    mecho ����������� ������ : '������� � ���������.'
    mecho ����������� ������ : '�� ������ �����-�����������,'
    mecho ����������� ������ : '��� ��������� �������.'
    wait 4
    ����
  break
  case 2
    mecho ����������� ������ : '�� ��� ���������, ����������� �������,'
    mecho ����������� ������ : '���������� � ����� ��� ��������.'
    mecho ����������� ������ : '���� ���� ���� ���� ���� ����-��'
    mecho ����������� ������ : '���� ���� ���� ���� ����-��.'
    wait 4
    ���
  break
  case 3
    mecho ����������� ������ : '��������� �,'
    mecho ����������� ������ : '��� � ���� �������.'
    mecho ����������� ������ : '������������� �,'
    mecho ����������� ������ : '����� ��������.'
    wait 4
    ������
  break
  case 4
    mecho ����������� ������ : '���� ������ � �������� ������'
    mecho ����������� ������ : '� ������ ����, ����-�� ����.'
    mecho ����������� ������ : '� ������ ����� ������ � ������.'
    mecho ����������� ������ : '�������� ����� ������ ����.'
    wait 4
    �����
  break
done
wait 1s
calcuid devka1 7014 mob 
calcuid devka2 7035 mob 
exec 7006 %devka1.id%
wait 1
exec 7006 %devka2.id%
~
#7006
����� �������~
0 z 0
~
if (%random.2% == 1)
  ����
else
  ����
end
��� �����������
~
#7007
���������� ����� ������~
0 q 100
~
wait 4
������ %actor.iname%
wait 4
� ������ �������������, %actor.iname%?
wait 4
� ���� � ���� ��� ���� ���������.
� ������ ��� ��� ����� ���������, �� ������ ��� �������.
� ����� ����� - ������� �� ����, �����.
������
� �� �� �������%actor.g% �� ������, � � � �� ���� ������������.
~
#7008
����� ��������~
0 j 100
~
if !(%object.vnum% == 7009)
  � ��� ������ �������� ����, ��� � ����� �� ����.
  return 0
  halt
end
wait 1
mpurge %object%
� ��, �� ����� �� ���� ��� ������� ������%actor.q%!
���� %actor.iname%
� ������� ��� ����� ��������, �� ����������.
�������
%self.gold(+50)%
���� 50 ��� .%actor.iname%
if %random.1000% <= 100
  � ��� ��� �����, ����� ��������� �����.
  %load% obj 1756
  ���� ����� .%actor.iname%
end
detach 7007 %self.id%
detach 7008 %self.id%
~
#7009
����� ����~
2 c 1
����� ��������~
if (!%arg.contains(����)% && !%arg.contains(���)%)
  wsend %actor% ���� �����?
  halt
end
wsend %actor% �������� ������� �� ������� � ����.
wechoaround %actor% %actor.name% �������� ������� � �����%actor.q% � ����.
wait 1s
wteleport %actor% 7061
wsend %actor% �� � �������!
~
#7010
��������� ��������~
1 g 100
~
wait 1
if (%world.curmobs(7003)% == 1)
  osend %actor% ���� ���� �������� � ��������� �� ���!
  oechoaround %actor% ���� ���� �������� � ��������� �� %actor.rname%!
  calcuid suka 7003 mob
  set podobral %actor%
  global podobral
  remote podobral %suka.id%
  exec 7011 %suka.id%
  rdelete podobral %self.id%
end
~
#7011
���� ���� �����~
0 z 0
~
*mecho ���� - %podobral.iname%
wait 4
��� %podobral.name%
mkill %podobral%
~
#7012
����������� ���� ����~
0 m 1
~
wait 1
emot ����������%self.g% ����
eval target 0
switch %amount%
  case 2000
    eval target 4039
  break
  default
    ����
    say � ���� �� �� �� ��� ������ ������?
    give %amount% ��� .%actor.name%
    halt
  done
  ���
  emot ������%self.g% ��������� �������� ������
  mechoaround %actor% %actor.name% �����%actor.q% � ������ ����.
  msend %actor% � ��� ����������� ������, � �� ��� �� �������� ��������...
  msend %actor% 
  mteleport %actor% %target% horse
  mechoaround %actor% %actor.name% ������%actor.u% ����� � ������ ����.
~
#7013
��������!~
2 z 100
~
wportal 4039 2
~
$~