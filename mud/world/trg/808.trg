#80800
������ 1~
2 e 80
~
%actor.wait(1s)%
wait 1
wload mob 80803
wload mob 80802
wload mob 80802
wecho ������ ������������ ����� ��������!
wecho ������ ��-��� ����� ������� �� ������ �������� �� ����������� ���������� ����������.
wecho __������!!!
detach 80800 %self.id%
~
#80801
����� ������ ����� ~
2 f 100
~
*���������� ������ �� ������ ����������� 1/2
if %zasada1%
  detach 80800 %zasada1.id%
  rdelete zasada1 %self.id%
end
if %random.2% == 1
  eval room1 %random.21%+7
  eval snip1 80800+%room1%
  calcuid zasada1 %snip1% room
  global zasada1
  detach 80800 %zasada1.id%
  attach 80800 %zasada1.id%
end
if %zasada2%
  detach 80800 %zasada2.id%
  rdelete zasada2 %self.id%
end
if %random.2% == 1
  eval room2 %random.24%
  eval snip2 80900+%room2%
  calcuid zasada2 %snip2% room
  global zasada2
  detach 80800 %zasada2.id%
  attach 80800 %zasada2.id%
end
calcuid kipchak 80808 mob
*������ �������� ����� � ��������� ������� ���� ����� ��� ���� � ��������
*���� ����� �� �������� - ������� �� ��������, ���� �� ����� ������� 80808
*���������������� ������� � ���� ������������ ������ ���� �� � ���������
if  !%exist.mob(80807)% && (%kipchak.realroom% == 80886)
  eval num %random.70%+15
  eval room3 80800+%num%
  calcuid trgroom %room3% room
  attach 80814 %trgroom.id%
  exec 80814 %trgroom.id%
end
~
#80802
������� ������� �� ��������~
0 n 100
~
wait 1
follow ������
mforce ������ group all
~
#80803
���� ����� � �����~
0 b 20
~
if %random.2% ==1
  masound _����� ������� � ���� ��� ������.
else
  masound _������ ����� ����� ���������� �������� ��� �� ����.
end
~
#80804
������� ���� �� ������ ����� �����~
0 l 20
~
flee
flee
if %random.5% == 3
  detach 80804 %self.id%
end
~
#80805
������ �������~
0 n 100
~
wait 2
mecho _��������� ������� ���� ���������� � �������� �� ���, ������ ���!
set victim %random.pc%
kill %victim.name%
~
#80806
����� � �������� �����~
2 e 100
~
if !(%actor.vnum% == -1)
  halt
end
wait 1
wecho ��� ���� ��� ������� ���� ������ ������� ������������, �� ��� �� ����� ���� �� �����.
wecho ����� ������� � ���� �� ���.
wait 3s
wecho ������� ���� ���������:
wecho   - ����...
wecho   - ��������...  ...� �����...
wecho   - �������...  ... .��� � �c....�....
wecho ������� ���� ��������� � ��������� �������� ����� �� �����.
wait 1
wecho ���� �������� � ���������:
wecho   - ��������!...
wecho ������� ���� �������� ����� � �����, ����������� � �����.
calcuid warrior 80807 mob
wpurge %warrior%
wload obj 80802
calcuid kipchak 80808 mob
if %kipchak% && (%kipchak.realroom% == 80886)
  switch %random.3%
    case 3
      wteleport %kipchak% 80810
    break
    case 2
      wteleport %kipchak% 80871
    break
    default
      wteleport %kipchak% 80967
    done
    wechoaround %kipchak% _������-���������� ������ � ������.
  end
  detach 80806 %self.id%
~
#80807
�������� ������� �2~
0 f 100
~
mload obj 80803
~
#80808
����� �������� ��� �������~
0 f 100
~
return 0
mecho _����� ����...
mteleport %self% 80899
~
#80809
���� ������� ������� ��������~
0 j 100
~
wait 1
if !(%object.vnum% == 80803) || !(%actor.vnum% == -1)
  �����
  say ������-�� ������, ����� �.
  drop %object.name% 
  halt
end
wait 1
mpurge %object%
emot ������ ������ ������� � �������� �� ���
say ��� ��� �� - �����?
wait 1
say  ���, ��� ��� �... ��� �� ������ ���� ��...
wait 2s
say  ��� ������ ��� ���...
emot �������� ��������� �� �������� ������ �������
say  ����� ����� ����� ��� �����.
wait 1s
say �������� �� ����� ������%actor.q% �� ���...
say �������, ����� ���� ��� ���. �� � �� ���� ���%actor.q% ��������� ��������� ���������?
say ���� �� ������������ ���� �� ������.
mecho _������� ��������� � �������� � ���-�� ������ ������.
if (%world.curobjs(80804)% < 10)
  mload obj 80804 
  give ��������� %actor.name%
  say ���... �� ����� � ������� ������ ��� ������ ���. ������ ������ ���� ��������.
else 
  say ������ ��� ������ ����� �����������...  ������ ��� ��� �������.
  msend %actor% _������� ��� ��� ������� ������ � ��������.
  mechoaround %actor%  _������� ��� %actor.name% ��������� ������ � ��������.
  %actor.gold(+600)%
end 
emot ������ ����� �������, ����������� � ����� � �������� ���-�� ������ ������
~
#80810
������� ������� � ������� � ����������.~
0 h 100
~
if (%actor.vnum% == 80811) || (%actor.vnum% == 80814)
  wait 1s
  mecho _������� ���� �� ����� � ������� �� �����.
  mecho _%actor.name% ������������ �������.
  mecho _%actor.name% ������ �������� ������� � ������ ����� �������.
  wait 1s
  ����
end
~
#80811
����� �������~
0 f 100
~
return 0
if !(%actor.class% == 8)
  msend %actor% _�� ��� ������ ���� ������� ����� ��� 20000 ����� �����.
  %actor.exp(-20000)%
else
  if %actor.level% < 18
    halt
  end
  msend %actor% _�� ��� ������ ���� �������� ��� ��� 5000 ����� �����.
  %actor.exp(+5000)%
  if %world.curobjs(80807)% > 25
    halt
  end
  mload obj 80807
  msend %actor% _�� �������������� ���������� �� ����.
  mechoaround %actor% _%actor.name% �������������� ��������%actor.g% �� ����.
end
~
#80812
����� � �����������-������~
0 q 100
~
if %self.position% == 7
  halt
end
wait 2s
���
say ��� ���, %actor.name%, ���� ���� �������?
~
#80813
������ �� �����������-������~
0 l 100
~
wait 1s
if %self.affect(��������)%
  halt
end
���
��� _�������!!! �������!!  %actor.name% ������%actor.g% ������ ����!!! 
��� _�� ������,  �����!!!!
wait 1s
mecho _��������� ������-������� ������� �� ���.
mload mob 80818
mload mob 80818
detach 80812 %self.id%
detach 80813 %self.id%
~
#80814
�������� �������� ����� � ��������~
2 z 0
~
wload mob 80807
attach 80806 %self.id%
wload obj 80805
wload obj 80805
wload obj 80805
detach 80814 %self.id%
~
#80815
������ �� �����������-��������~
0 l 99
~
wait 1s
if %self.affect(��������)%
  halt
end
���  _�����! ����, ���� ����!!!! �����!!
���  _�����, ����! �����!!!
*���-�� ���� "����� - ������� ���, ������ �� ������"
* "�����" - ���������� ��. - ��������, ����
wait 1s
mecho _��������� ��������� ������ ������� �� ��� �����������.
mload mob 80820
mload mob 80820
detach 80815 %self.id%
~
#80816
���������� ����� �����������~
0 o 100
~
switch %random.3%
  case 3
    say %actor.name% ���������!!!
  break
  case 2
    say %actor.name% !
    say �������, ���������� ���!!!
  break
  default
    say %actor.name% !
    say ����, ��������!
  done
  mkill .%actor.iname%
~
#80817
���������� �����������~
0 n 100
~
*�������� �������� ������� ��������
*��� ����� ������� ��� ��� ��������
mkill %random.pc%
wait 1
if %self.position% == 7
  eval enemy %self.fighting%
  mremember %enemy%
end
detach 80817 %self.id%
~
#80818
���������� �� �����~
2 c 100
�����~
return 0
if !(%cmd.mudcommand% == ����������)
  halt
end
wsend %actor% _���� �� ������ ��������� -
wsend %actor% _��� ��� ������, ��� ������ -
wsend %actor% _��� � ���������.
wsend %actor% _
wsend %actor% _���� �� �� - ��� ������ �����
wsend %actor% _�� ��������� ������� ������.
wsend %actor% _
wsend %actor% _�� ������� �� �� �������
wsend %actor% _��� ����� �� ����� ��� ����� � ����...
~
#80819
����� �����������-������~
0 f 100
~
if (%random.3% == 2) && (%world.curobjs(80809) < 15)
  mload obj 80809
end
~
#80820
����� �����������-��������~
0 f 100
~
if (%random.3% == 2) && (%world.curobjs(80808) < 15)
  mload obj 80808
end
~
#80821
���� ������ ���������~
0 f 100
~

~
#80822
��������� ����~
2 z 100
~

~
$~
