#50100
��� ��������~
0 c 0
�����~
if !(%arg.contains(�����������)%)
  msend %actor% ��� ����� ����?
  halt
else
  wait 1s
  ����
  � ��� ��� ���� �����������?
  wait 2s
  � � �� �� ����� ������, �����!
  � ��� ������ �����!
  ����
  wait 1s
  � ������
  ���
  wait 1s
  � ����..
  wait 1s
  ���
  �����
  wait 2s
  ����
  wait 9s
  ����������
  ������
  ���� ������������ ��������� �� ��������
end
~
#50101
����� � ������~
2 c 0
����� ~
if !(%arg.contains(������)%)
  wsend %actor% _���� �����-�� ���������?
  halt
else
  %actor.wait(2)%
  wsend %actor% _�������� � ������� ������ �����, �� ������� � ������.
  wechoaround %actor%  �������� ������ �����, %actor.name% �����%actor.q% � ������.
  if %exist.obj(50120)%
    calcuid bochki 50120 obj
    wpurge %bochki%
  end
  wait 2s
  wteleport %actor% 50180
end
~
#50102
�������� �� �������~
2 c 0
�������~
if !(%arg.contains(�� �������)%)
  wsend %actor% _������ ��� �� ����������� ��������?
  halt
else
  %actor.wait(2)%
  wsend %actor% _����������� ������ ������� � �����, �� ������� �� �������.
  wechoaround %actor% _%actor.name% �����%actor.q% �� �������.
  wait 2s
  wteleport %actor% %number%
end
~
#50103
C������ ������~
2 e 100
~
wait 1
set target %actor%
calcuid burger 50135 mob
if (%actor.dex% < 22) && (%random.10% <= 5)
  wforce %burger% �������
  wforce %burger% ���
  wforce %burger% ��� �� �� ������! ������!!!
  wforce %burger% mkill %target%
  wait 4s
  if (%world.curmobs(50133)% < 10 ) && ( %burger.realroom% == %self.vnum% )
    wecho _�������� �������� ���������� �������� ��-�� ����.
    wload mob 50133
  else
    calcuid guard 50133 mob
    wteleport %guard% %self.vnum%
  end
  *detach 50106 %self.id%
end
if (%actor.dex% < 25) && (%random.10% <= 3)
  wforce %burger% �������
  wforce %burger% ���
  wforce %burger% ��� �� �� ������! ������!!!
  wforce %burger% mkill %target%
  wait 4s
  if (%world.curmobs(50133)% < 10 ) && ( %burger.realroom% == %self.vnum% )
    wecho _�������� �������� ���������� �������� ��-�� ����.
    wload mob 50133
  else
    calcuid guard 50133 mob
    wteleport %guard% %self.vnum%
  end
  *detach 50106 %self.id%
end
if (%actor.dex% < 30) && (%random.10% <= 2)
  wforce %burger% �������
  wforce %burger% ���
  wforce %burger% ��� �� �� ������! ������!!!
  wforce %burger% mkill %target%
  wait 4s
  if (%world.curmobs(50133)% < 10 ) && ( %burger.realroom% == %self.vnum% )
    wecho _�������� �������� ���������� �������� ��-�� ����.
    wload mob 50133
  else
    calcuid guard 50133 mob
    wteleport %guard% %self.vnum%
  end
  *detach 50106 %self.id%
end
end
~
#50104
������ ������ �����.~
0 ab 25
~
wait 1
if %self.fighting% || (%self.position% == 4 )
  halt
end
switch %random.3%
  case 3
    emot �������%self.q% ���� � �������%self.g% �������� � ������
  break
  case 2
    emot �������%self.q% ���� � �������%self.g% �������� � ������
    wait 1s
    mload obj 50115
    ���� ������
  done
~
#50105
�������� ����~
0 b 7
~
��� �������! ������� �������, ������� - ��������!
~
#50106
������� �����~
0 b 30
~
eval pian %random.5%
eval pl %random.pc%
if !%pl%
  halt
end
switch %pian%
  case 5
    ��� %pl.name%
    � ��, �-�-���, ��� �� �, �-��, ������ ���� ������..
    wait 1s
    ��� �������� �� ���
  break
  case 4
    eval mo %random.npc%
    ��� %mo.name%
  break
  case 3
    ��
    wait 1s
    eval mo2 %random.npc%
    ��� %mo2.name%
  break
  case 2
    ���
  break
  case 1
    ����
  done
~
#50107
����� ����~
2 f 100
~
if %exit%
  detach 50101 %exit.id%
end
switch %random.8%
  case 1
    set number 50161
  break
  case 2
    set number 50162
  break
  case 3
    set number 50166
  break
  case 4
    set number 50158
  break
  case 5
    set number 50100
  break
  case 6
    set number 50179
  break
  case 7
    set number 50169
  break
  case 8
    set number 50173
  done
  calcuid exit %number% room
  attach 50101 %exit.id%
  calcuid cavern 50180 room
  remote number %cavern.id%
  global exit
  wat %number% wload obj 50120
~
#50108
���� ������� 2~
2 e 100
~
wait 1
calcuid burger 50136 mob
if (%actor.dex% < 22) && (%random.10% <= 5)
  wforce %burger% �������
  wforce %burger% ���
  wforce %burger% ��� �� �� ������! ������!!!
  wforce %burger% mkill %random.pc%
  wait 4s
  if (%world.curmobs(50133)% < 10 ) && ( %burger.realroom% == %self.vnum% )
    wecho _�������� �������� ���������� �������� ��-�� ����.
    wload mob 50133
  else
    calcuid guard 50133 mob
    wteleport %guard% %self.vnum%
  end
  *detach 50106 %self.id%
end
if (%actor.dex% < 25) && (%random.10% <= 3)
  wforce %burger% �������
  wforce %burger% ���
  wforce %burger% ��� �� �� ������! ������!!!
  wforce %burger% mkill %random.pc%
  wait 4s
  if (%world.curmobs(50133)% < 10 ) && ( %burger.realroom% == %self.vnum% )
    wecho _�������� �������� ���������� �������� ��-�� ����.
    wload mob 50133
  else
    calcuid guard 50133 mob
    wteleport %guard% %self.vnum%
  end
  *detach 50106 %self.id%
end
if (%actor.dex% < 30) && (%random.10% <= 2)
  wforce %burger% �������
  wforce %burger% ���
  wforce %burger% ��� �� �� ������! ������!!!
  wforce %burger% mkill %random.pc%
  wait 4s
  if (%world.curmobs(50133)% < 10 ) && ( %burger.realroom% == %self.vnum% )
    wecho _�������� �������� ���������� �������� ��-�� ����.
    wload mob 50133
  else
    calcuid guard 50133 mob
    wteleport %guard% %self.vnum%
  end
  *detach 50106 %self.id%
end
end
~
#50109
���� ������� 3~
2 e 100
~
wait 1
calcuid burger 50137 mob
if (%actor.dex% < 22) && (%random.10% <= 5)
  wforce %burger% �������
  wforce %burger% ���
  wforce %burger% ��� �� �� ������! ������!!!
  wforce %burger% mkill %random.pc%
  wait 4s
  if (%world.curmobs(50133)% < 10 ) && ( %burger.realroom% == %self.vnum% )
    wecho _�������� �������� ���������� �������� ��-�� ����.
    wload mob 50133
  else
    calcuid guard 50133 mob
    wteleport %guard% %self.vnum%
  end
  *detach 50106 %self.id%
end
if (%actor.dex% < 25) && (%random.10% <= 3)
  wforce %burger% �������
  wforce %burger% ���
  wforce %burger% ��� �� �� ������! ������!!!
  wforce %burger% mkill %random.pc%
  wait 4s
  if (%world.curmobs(50133)% < 10 ) && ( %burger.realroom% == %self.vnum% )
    wecho _�������� �������� ���������� �������� ��-�� ����.
    wload mob 50133
  else
    calcuid guard 50133 mob
    wteleport %guard% %self.vnum%
  end
  *detach 50106 %self.id%
end
if (%actor.dex% < 30) && (%random.10% <= 2)
  wforce %burger% �������
  wforce %burger% ���
  wforce %burger% ��� �� �� ������! ������!!!
  wforce %burger% mkill %random.pc%
  wait 4s
  if (%world.curmobs(50133)% < 10 ) && ( %burger.realroom% == %self.vnum% )
    wecho _�������� �������� ���������� �������� ��-�� ����.
    wload mob 50133
  else
    calcuid guard 50133 mob
    wteleport %guard% %self.vnum%
  end
  *detach 50106 %self.id%
end
end
~
#50110
���� ���������� 4~
2 e 100
~
wait 1
calcuid burger 50134 mob
if (%actor.dex% < 22) && (%random.10% <= 5)
  wforce %burger% �������
  wforce %burger% ���
  wforce %burger% ��� �� �� ������! ������!!!
  wforce %burger% mkill %random.pc%
  wait 4s
  if (%world.curmobs(50133)% < 10 ) && ( %burger.realroom% == %self.vnum% )
    wecho _�������� �������� ���������� �������� ��-�� ����.
    wload mob 50133
  else
    calcuid guard 50133 mob
    wteleport %guard% %self.vnum%
  end
  *detach 50106 %self.id%
end
if (%actor.dex% < 25) && (%random.10% <= 3)
  wforce %burger% �������
  wforce %burger% ���
  wforce %burger% ��� �� �� ������! ������!!!
  wforce %burger% mkill %random.pc%
  wait 4s
  if (%world.curmobs(50133)% < 10 ) && ( %burger.realroom% == %self.vnum% )
    wecho _�������� �������� ���������� �������� ��-�� ����.
    wload mob 50133
  else
    calcuid guard 50133 mob
    wteleport %guard% %self.vnum%
  end
  *detach 50106 %self.id%
end
if (%actor.dex% < 30) && (%random.10% <= 2)
  wforce %burger% �������
  wforce %burger% ���
  wforce %burger% ��� �� �� ������! ������!!!
  wforce %burger% mkill %random.pc%
  wait 4s
  if (%world.curmobs(50133)% < 10 ) && ( %burger.realroom% == %self.vnum% )
    wecho _�������� �������� ���������� �������� ��-�� ����.
    wload mob 50133
  else
    calcuid guard 50133 mob
    wteleport %guard% %self.vnum%
  end
  *detach 50106 %self.id%
end
end
~
#50111
���� ���������� 5~
2 e 100
~
wait 1
calcuid burger 50138 mob
if (%actor.dex% < 22) && (%random.10% <= 5)
  wforce %burger% �������
  wforce %burger% ���
  wforce %burger% ��� �� �� ������! ������!!!
  wforce %burger% mkill %random.pc%
  wait 4s
  if (%world.curmobs(50133)% < 10 ) && ( %burger.realroom% == %self.vnum% )
    wecho _�������� �������� ���������� �������� ��-�� ����.
    wload mob 50133
  else
    calcuid guard 50133 mob
    wteleport %guard% %self.vnum%
  end
  *detach 50106 %self.id%
end
if (%actor.dex% < 25) && (%random.10% <= 3)
  wforce %burger% �������
  wforce %burger% ���
  wforce %burger% ��� �� �� ������! ������!!!
  wforce %burger% mkill %random.pc%
  wait 4s
  if (%world.curmobs(50133)% < 10 ) && ( %burger.realroom% == %self.vnum% )
    wecho _�������� �������� ���������� �������� ��-�� ����.
    wload mob 50133
  else
    calcuid guard 50133 mob
    wteleport %guard% %self.vnum%
  end
  *detach 50106 %self.id%
end
if (%actor.dex% < 30) && (%random.10% <= 2)
  wforce %burger% �������
  wforce %burger% ���
  wforce %burger% ��� �� �� ������! ������!!!
  wforce %burger% mkill %random.pc%
  wait 4s
  if (%world.curmobs(50133)% < 10 ) && ( %burger.realroom% == %self.vnum% )
    wecho _�������� �������� ���������� �������� ��-�� ����.
    wload mob 50133
  else
    calcuid guard 50133 mob
    wteleport %guard% %self.vnum%
  end
  *detach 50106 %self.id%
end
end
~
#50112
���� ������ ����������~
0 j 100
~
wait 1
if %object.vnum% != 49959
  drop %object.name%
  halt
end
say ��, ��� ���!
mecho  - ����� �� �������, ������ ���� - ���� �� �������.
give ������ .%actor.name%
~
$~
