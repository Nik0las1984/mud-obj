#12800
������� - ����� � ��������~
0 q 100
~
wait 1
if ((%actor.class% == 7) && !(%actor.skill(�����)%))
  ��� %actor.name%
  if %actor.sex% == 1
    � ������ ���� ���������!
  elseif %actor.sex% == 2
    � ������ ���� ����������!
  end
  � ������� ��� � ��� ���� ��������� �������.
  �����
  � ������ ��������� ��� ���� ����?
end
if ((%actor.class% == 7) && (%actor.skill(�����)%))
  ���� %actor.name%
  if (%actor.sex% == 1)
    � ��������� ����!
  end
  if (%actor.sex% == 2)
    � ��������� ������!
  end
  � ������ � ��� ������, �� ������� ����� �������.
end
~
#12801
������� - ����������� ������ ��������~
0 d 0
�� ������� ���� ������ �������� ���~
if ((%actor.class% == 7) && !(%actor.skill(�����)%))
  � �����-�� ����� ������� � ������������.
  � ������� ���� �����, ���� ������ ������!
  � ������� �� ������ ������ ������������ �� �������� �����������.
  � �������� ����� ���, �� ���� �� ����� �������, ���� ��������.
  � ������� ������������ ����� �����.
  � � ����� ����� ����� �������!
  � ����� ��� ���� ��� � ����� �������, ����� ������ ����� ����� ��� �������.
  calcuid sosn128 12859 room
  attach 12807 %sosn128.id%
  detach 12800 %self.id%
  detach 12801 %self.id%
end
~
#12802
������� - ����� ����� ��������~
0 f 100
~
mecho ����-��������� ���� ����������� ������ � ����� �����.
mecho ���� �����-������� ������ ������ ���� �����.
mecho ������� ����-��������� ����������� � �������-���������.
mload obj 12802
~
#12803
������� - ��������� � ������� � ��������~
0 q 100
~
if (%world.curmobs(12803)% > 0 )
  halt
end
wait 1
if ((%actor.class% == 7) && !(%actor.skill(�����)%))
  msend %actor.name% �� ���������� �������� ��� ��, ��� � ���� ���������.
  msend %actor.name% ��� ��, ��� ���������, ������������ �� ���, �������� 
  msend %actor.name% �� ����� ���� ��������, ������� � ������ �� ��� �������.
  mechoaround %actor% %actor.name% �������� ������� ������������ ��� ���� �����������.
  wait 2s
  ���
  wait 1s
  ��� %actor.name%
  � ��� ������� ���� ������� ������ �����, �� �� �� �����,
  � ��� ���  �������� �������� ��� �����.
  � ����� �� ��� ���� �������� �� ��� �� ���!
  � � ��� ������� �������� ��� ������� ������� ����� ��!
  if (%actor.sex% == 1)
    � ������ �� ��� ���� � ����� �� ��� ������ ���� ��������� ������.
  end
  if (%actor.sex% == 2)
    � ������ �� ���� ������ � ����� �� ��� ������ ���� ��������� ������.
  end
  ���� %actor.name%
  wait 2s
  ���
  � ������, ���� ������� � ��� �����, ����������, ����� ��� ����� ����������.
  calcuid sosn128 12800 mob
  detach 12809 %sosn128.id%
  attach 12804 %sosn128.id%
  attach 12805 %sosn128.id%
  attach 12806 %sosn128.id%
  detach 12803 %self.id%
end
~
#12804
������� - ����� � ����������~
0 q 100
~
wait 1
if ((%actor.class% == 7) && !(%actor.skill(�����)%))
  ��� %actor.name%
  if (%actor.sex% == 1)
    � ���������, ���� ���������!
  end
  if (%actor.sex% == 2)
    � ��������� ������, ����������!
  end
  � � ������ ������� ������� ����� � ����������.
  � ����, ��� �������� �� ����� ������� �������.
  � � ������ ���� ������� ���� ���� ������� ����.
  � � �� ������ ���������� �� ������, ��� ������ ���������.
  � � ���� �, �����, ���� ������� ���-���� �������.
  � ���� �� � ���� ������� ����� �� ��� � �������?
end
~
#12805
������� - ����������� ��������� �������� ������~
0 d 0
���� �� ���� �����~
if ((%actor.class% == 7) && !(%actor.skill(�����)%))
  � ���� �� ������ � ���� �������, �� ����� ���� ���� ������ ���������.
  � ���, ������ ���� ������� � ����� ������ � ����� ������ ����������� ����.
  � ������� ��� � �������, � �� �������� ���� � ������� ���� ����� �������.
  � �������, ����� ������� � ����� ������� �������� ������ �� ��� � ������� �� ���.
  ���� ���
  mload obj 12801
  ���� ���� %actor.name%
  ���� ���
  detach 12804 %self.id%
  detach 12805 %self.id%
end
~
#12806
������� - ��������� ���������� � ����������~
0 j 100
~
if (%object.vnum% != 12822)
  ���� ���
  halt
end
if ((%actor.class% == 7) && !(%actor.skill(�����)%))
  wait 1
  mpurge %object%
  ���
  � ���������! ������ ������ �� �����.
  ���
  wait 2s
  msend %actor.name% ������ ��������� ��������� ����������� ���� ��������� � ������ �����.
  mechoaround %actor% ������ ��������� ���-�� �������  � ���� %actor.rname%.
  msend %actor.name% ���-�� ������ ������� ��� � ����.
  msend %actor.name% �� ���� ������ �� �������� ��������.
  mechoaround %actor% %actor.name% �� ������ ����%actor.g% �� ���.
  wait 2s
  mecho ���� �������� �����������.
  mechoaround %actor% %actor.name% �����%actor.g% �� ����.
  � ��� � ���. ��������� ��������������� ������������� � ����.
  � � �� �������� ��� �����.
  mskillturn %actor% ����� set
  dg_affect %actor% ��������� ���������_����� -15 0
  %actor.setquest(12800)%
end
~
#12807
������� - ������� � ���� ������~
2 e 100
~
wait 1
if ((%actor.class% == 7) && !(%actor.skill(�����)%))
  wload mob 12803
  wecho � ����� �������� ������� ����� � ���������� �� ���.
  wdoor 12802 w room 12860
  wforce ����128 ���� %actor.name%
  calcuid star128 12802 mob
  attach 12803 %star128.id%
  detach 12807 %self.id%
end
~
#12808
������� - ����� � �������~
0 q 100
~
wait 1
if ((%actor.class% == 7) && (%actor.skill(�����)%))
  ������  
  �� %actor.name% �������, ��� � ���� ���� �� ���� ���� �������, ������� ���� ����� ��������
  halt
end
���� ������ ������� �� ���. ������ �� ����� ����� � ���� �������
~
#12809
������� - ����� �� ������ � ����������~
0 q 100
~
wait 1
if ((%actor.class% == 7) && (%actor.skill(�����)%))
  ��� %actor.name%
  if (%actor.sex% == 1)
    � � ����������� ������ �������.
  end
  if (%actor.sex% == 2)
    � � ����������� ���� �������.
  end
  halt
end
�� %actor.name%
� �����, �����. �� �������� ���� �� ���.
~
#12810
���������� - � ������� ������� ������~
1 h 100
~
if (%actor.realroom% != 12820)
  halt
end
if (%actor.class% != 7)
  halt
end
if (%actor.skill(�����)%)
  halt
end
wait 1
osend %actor.name% ���� �� ������ ����� ����� ���������, �������� � ������ � ������ ����� �����.
osend %actor.name% ������ �� ������� �� ������ ������ ����� �� ���.
wait 1s
osend %actor.name% �� ����� �� ��.
oechoaround %actor% %actor.name% ����-�� �������%actor.g% ����� ������ �����.
wait 2
oteleport .%actor.name% 12817
wait 2
osend %actor.name% ����� ������� ���������� �� ������� ������ � ��� ����� � ������.
osend %actor.name% ��������� ������ ��� : '� ����� ������ �� ������ ��������� �������'
osend %actor.name% ��������� ������ ��� : '������ ������ � ���� �����, ��� �� ������ ������, �� �����'
osend %actor.name% ��������� ������ ��� : '�� � ���� ������ �� ��������� ���������,'
osend %actor.name% ��������� ������ ��� : '����� ��� ������� ��������!'
opurge %self%
~
#12811
���������� - ��������� ����-�����~
1 g 100
~
calcuid sosn128 12817 room
attach 12812 %sosn128.id%
~
#12812
���������� - ����� � ������� � ������ ���� ����-�����~
2 e 100
~
wait 2
wecho ������� ������ ������ ������� � ����� �� ������ ���������.
wdoor 12817 e room 12813
detach 12812 %self.id%
~
#12813
���������� - ������� ������� ���-�� �����������~
2 e 100
~
wait 1
eval bron128 %actor.eq(5)%
eval laser128 %actor.eq(18)%
if (%actor.haveobj(12811)% || (%bron128.vnum%==12811))
  wteleport %actor.name% 12817
  wsend %actor.name% �� ���������� �����.
  wsend %actor.name% ������-����� ��������� �� ���-�� ��������� � ����� ��� �������.
  halt
end
if (%actor.haveobj(12812)% || (%laser128.vnum%==12812))
  wteleport %actor.name% 12817
  wsend %actor.name% �� ���������� �����.
  wsend %actor.name% �������� �������� ��������� �� ���-�� ��������� � ����� ��� �������.
  halt
end
if %actor.haveobj(12810)
  wteleport %actor.name% 12817
  wsend %actor.name% �� ���������� �����.
  wsend %actor.name% ����-����� ��������� �� ���-�� ��������� � ����� ��� �������.
  halt
end
~
#12820
������� - ����� � ����������� �������~
0 q 100
~
wait 1
if %actor.class% != 7
  log &R%actor.name% �������� ����� � ������ ��� ������!&n
  halt
end
eval robot128 %world.curmobs(12821)%+%world.curmobs(12822)%
if (%robot128% > 0)
  mecho ����� ����� ������ ������ ���.
  mecho �� ������������� ���� ������� �����.
  mecho ���� �������� ������������.
  dg_affect %actor.name% ��������� ���������_����� -15 0
  dg_affect %actor.name% �������� ���������_����� -15 5000
  dg_affect %actor.name% ��������� ���������_����� -15 5000
  set %actor.hitp(2000)%
  halt
end
� � ���������� �������� ���������� � ���������.
� ����������� ���������� �������������.
~
#12821
������� - �� ���� ��������� ����� � ���~
0 k 100
~
mecho ����� ���������� ������ ���.
eval dmg128 150+%random.20%
mdamage %actor% %dmg128%
~
#12822
������� - ������ ������������� ���������~
0 j 100
~
wait 1
if (%object.vnum% != 12821)
  � ���� ������ �� �������� �������������� �������������.
  ���� ���
  halt
end
mload mob 12824
mpurge �������
mecho �����-�������� ������� ������� � �����-�� ����������.
mpurge ���������������
~
#12823
������� - �� ��������� ��������� �����~
0 p 100
~
mecho �����-�������� �� ������������ � ������������ ���������� ����.
mecho ������ ��� ���� ���� ���-�� ����������� �������.
%self.hitp(%self.maxhitp%)%
~
#12824
������� - ����� � ������� � ����������~
0 q 100
~
wait 1
� ��������� ��� ����������������� ���� ����� ����������.
� �������� ������������� ���.
� ������ � ����� ���������� ��������.
� ��� ����������� ��������� �������������� ������������.
~
#12825
������� - ������� �������~
1 h 100
~
wait 1
%actor.wait(1)%
oecho ������� ����������.
foreach target %self.all%
  if ((%target.vnum% == 12821) || (%target.vnum% == 12822))
    eval buf %target.hitp(-1300)%
    oecho ����� �������� �������� �����!
  end
  if ((%target.vnum% == 12823) || (%target.vnum% == 12824))
    oecho �����-�������� �� ������������ � ������������ ���������� ����.
    oecho ������ ��� ���� ���� ���-�� ����������� �������.
  end
done
wait 1
opurge %self%
~
#12830
����� ����~
2 f 100
~
wait 1
calcuid sosn128 12859 room
detach 12807 %sosn128.id%
calcuid sosn128 12817 room
detach 12812 %sosn128.id%
wdoor 12817 e purge
wdoor 12802 w purge
wdoor 12802 w room 12803
context 4000
set defendermagestory 0
worlds defendermagestory
~
$~
