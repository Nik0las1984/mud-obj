#95100
����� ����������� � �����~
1 c 100
������������~
if !%arg.contains(������)%
  osend %actor% _� ��� �� ������ ��� ������� ��������?
  halt
end
if %actor.class% == 4
  wait 1
  osend %actor% _������������� � ����� �� ������������� ������ ��������������.
  oechoaround %actor% _%actor.iname% ���������%actor.u% � ����� � ��������%actor.u%.
  wait 4
  oecho _� ��� ������� ���������� ������.
  odoor 95105 east room 95110 
  odoor 95110 west room 95105  
  
  detach 95100 %self.id%
else 
  osend %actor% _�� ������������ � ����� � ��� ������ ����������!
  osend %actor% _�������� ������ ������������ �������� � 
  osend %actor% _���� ���� �������� ������� ����.
  oechoaround %actor% _%actor.iname% ���������%actor.u% �����.
  oechoaround %actor% _�������� �� ����� �������� ������������ ���������!
  oechoaround %actor% _%actor.iname% ����%actor.g% � �����%actor.u% � ���������!
  odamage %actor% 200
end
~
#95101
�����~
2 f 100
~
* ��������� ������ � ����� �������� �� �����
wdoor 95105 east purge room 95110 
wdoor 95110 west purge room 95105 
calcuid fromid 95100 obj
attach 95100 %fromid.id% 
* ����� ������ �� ����� �������
calcuid fromid 95112 mob
attach 95104 %fromid.id%
detach 95105 %fromid.id%
detach 95106 %fromid.id%
detach 95107 %fromid.id%
* ����� ����� �� ����������
calcuid fromid 95111 mob
attach 95103 %fromid.id% 
* ����� ������ �� ������� ������
calcuid fromid 95113 mob
detach 95111 %fromid.id%
detach 95112 %fromid.id% 
detach 95113 %fromid.id% 
~
#95102
����� � ������ �������~
0 r 100
~
mecho _����� ������:
mecho _- �!
mecho _- ��� ���� ������� ���������!
mecho _- � ��, ����� � ���� ������ ������!
wait 2s
������ %actor.iname%
mecho _- ��.
mecho _- �����.
mecho _- �� �� �����%actor.g% �� �������, ������� � ��� ����� �������� �� ����� �����.
mecho  - �� ������ �� ���������, ������ ��� ������.
mecho _- ����� ���� �� ������?
~
#95103
����� � ���������� ���������~
0 r 100
~
wait 5
mecho _����������:
mecho _- ��. ����� ����������.
mecho _- �� �������, ����� �� �������.
mecho _- � ��� ������ ��� � ��� ��� �������.
wait 5
mecho  - ����, ���� �������� ��-�������� �� �������, ����� � ������ ��� ������� �������.
mecho _- ���� ������ ������, ����� � ������ ������ �������, ��� ����� �� ������-�������.
mecho _- �� ��� ��� ������.
mecho  - ��� ������ �������� ������ �������� � ���-��������� �����.
calcuid fromid 95112 mob
detach 95104 %fromid.id%
attach 95105 %fromid.id%
attach 95106 %fromid.id%
attach 95107 %fromid.id%
calcuid fromid 95113 mob
attach 95111 %fromid.id%
attach 95112 %fromid.id%
attach 95113 %fromid.id%
detach 95103 %self.id%
~
#95104
����� � ������ ������� (��� ��������� ����������)~
0 r 100
~
wait 5
mecho _������:
mecho _- �� ���� ���� ���� �����?
mecho _- ��� � ���������� � �� ����� ���!
~
#95105
����� � ������ ������� (����� ��������� ����������)~
0 r 100
~
wait 5
mecho _������:
mecho _- �. ���� ������������, ��� ����� ��� ������.
mecho _- ��... ��� ���� ���... %actor.iname%
mecho _- �����%actor.g% ��� ������?
mecho _- ����� ������������, ������� ����� ������� � ������!
~
#95106
������� ������ ������� ��� �������~
0 d 0
�� ������ ������~
wait 5
set quester %actor%
global quester
mecho _������:
mecho _- �������.
mecho _- ��� ������ ���� ��� �������� ����� �������������.
mecho _- ����� ��, ������������ ����� ������, �� �����.
mecho _- ������� ������ ����� ������� ������� � ������ �����.
wait 5
mecho _- �� ������� � ����� �� ��������� �����������.
mecho _- �� ��� ��, ��� � ���������� ������� ����� ������������
mecho _- ����� ������� ����� �����, ��� ��������������� ���������.
wait 5
mecho _- �� �� � ���� � ���� ����������.
mecho _- �� ������ � ��� ���� � ������ ����� ������ ����.
mecho _- ��� ���� ���� �� �����, ��� ����������� ���� � ������� �����.
mload obj 95112
���� ���� %actor.iname%
wait 5
mecho _- ���� �� "��������� �� ����" �� ����� ��������.
mecho _- � ����� ����� ����� ��� ���� ��������� ��������������..
detach 95105 %self.id%
detach 95106 %self.id%
~
#95107
����� � ������ ������� ����� �������� ������� �����~
0 r 100
~
wait 5
if (!%exist.mob(95109)%) && (%actor.id% == %quester.id%)
  mecho _������:
  mecho _- � ������� ����� ������, %actor.iname%.
  mecho _- ����� ������ ��� �� �����������, � �� ��� ���� �������� �������.
  if %actor.class% == 4
    msend %actor% _������ ����������� �������� ���.
    mechoaround %actor% _������ ����������� �������� %actor.rname%.
    mecho _- � ����, %actor.iname%, �� ������� �������.
    mecho _- �����, ���� ����� �������� ��� ����� ����.
    mecho _- � ���� �� �������� ���� � ���������� ���� �������.
    mecho _- �� � ���� ����� ���� �������� ������ ������ ��������� �����.
    wait 5
    mecho _- ����� � ������ ���� �������.
    mecho _- ������ �� ������ �������, ��� �������� ����������� � ������ ����� ������� �����.
    mecho _- �� ����� ��� ������.
    mecho _������ ���� ������ ����� ������� � ����� ������ ���������� �� ��� �����-�� �����.
    mecho _- ���, �����.
    mload obj 95123
    ���� ������ %actor.iname%
    detach 95107 %self.id%
  end
  mecho _- ��� � � ������, ��� ���� �������.
  switch %random.4%
    case 1
      mload obj 95121
      ���� ����� %actor.iname%
    break
    case 2
      mload obj 95122
      ���� ����� %actor.iname%
    break
    default
      mechoaround %actor% _������ ��� %actor.dname% ��������� ����� ���.
      msend %actor% _������ ��� ��� ��������� ����� ���.
      %actor.gold(+5000)%
    break
  done
  detach 95107 %self.id%
end
~
#95108
����� ������� �����~
0 f 50
~
mload obj 95120
~
#95109
���� ������� ������ �������~
0 j 100
~
if %object.vnum% == 95123
  wait 1
  mpurge %object%
  mecho _����� ������:
  mecho _- �.
  mecho _- ��� ������ ����� ��� ������ ���������.
  mecho _- ������.
  mecho _- � ������ ���� ������� � ��������� ���.
  mecho _- ����� ���� ���� ������ � ������ �����.
  mecho _- �� ���� ���������, ������ ��� ����� ������.
  mecho _- ������� ������, � ���� ��� ������ �� ������� �� �����.
  wait 5
  foreach c %self.pc%
    msend %c% _������ ������ ���-�� ����������� � �������� �����.
    msend %c% _�� ��� ������ ������� �� �����.
    if %c.rentable%
      msend %c% _��� ��� ������ ��?
      msend %c% _��� ��� �� �����?!
      mteleport %c% 95200 followers
    end
  done
else
  mecho _����� ������:
  mecho _- ����� ��� ��� �����?
  ���� %object.iname%
end
~
#95110
����� ����� ����� �� ������~
2 c 100
��������~
if !%arg.contains(�����)%  
  halt
end
wechoaround %actor% _%actor.name% �����%actor.q% ����� �����..
wsend %actor% _�� ������� ����� ����� �� ��.
wteleport %actor% 95122
~
#95111
����� � �������� ������ ��������� �����~
0 r 100
~
wait 3
mecho _������� �����:
mecho _- ��! � �� ����!
mecho _- ������ ���� ����� ��������!
mecho _- ��� ������ ����, � ��� ����� ������� �� ���.
wait 5
mecho _- �� ���� �� ������ �������, �� � ���� ���� � ���� ������.
mecho _- ���� � ���� �������, �� ��� ��������!
mecho  - ����� �� �� � �����, %actor.iname%?
~
#95112
������� ����� �������� ������ �����~
0 d 1
�� ������ ������~
wait 3
set quester2 %actor%
global quester2
mecho _������� �����:
mecho _- �� ������... �� ������.
mecho _- �����.
mecho _- ������ ���� � �������� ����� ������� ������ ������� � ������.
mecho _- ����� ���-��, ����� �� �������.
mecho _- ���� � ���� ��� ���������, � ���� ����� �������.
detach 95111 %self.id%
detach 95112 %self.id%
~
#95113
����� � �������� ������ ����� �������� ����~
0 r 100
~
if (!%exist.mob(95119)%) && (!%exist.mob(95120)%) && (%actor.id% == %quester2.id%)
  wait 3
  mecho _������� �����:
  mecho _- ��� ��� �������� � ���, ��� � ���� ����� ����� �����.
  mecho _- �������� ������!
  switch %random.5%
    case 1
      if %world.curobjs(95124)% < 2
        mecho _- ��� ���� �� ���� �����.
        mload obj 95124
        ���� ����� %actor.name%
      end
    break
    case 2
      if %world.curobjs(95125)% < 2
        mecho _- ��� ���� �� ���� �����.
        mload obj 95125
        ���� ��� %actor.name%
      end
    break
    default
      mechoaround _������� ����� ��� %actor.dname% ������� ����� ���.
      msend %actor% _������� ����� ��� ��� ������� ����� ���.
      %actor.gold(+7000)%
    break
  done
  detach 95113 %self.id%
end
~
#95114
������ ������ ��������~
2 e 20
~
wait 1
wechoaround %actor% _%actor.iname% ������� ������ �����%actor.y% � ���� �����
wechoaround %actor% _� �� ������� ���������� ������%actor.u% � ������ ���� ����.
wsend %actor% _�� ������� ������ ������� � ���� ����� � ����� � ������� ����!
wteleport %actor% 95179
wait 2
%actor.wait(3)%
wsend %actor% _��� ��������� �� �����.
~
#95115
����� ���������~
0 f 10
~
if (%random.1000% <= 100) && (%world.curobjs(95129)% < 8)
  mload obj 95129
end
~
#95116
����� �������������~
0 f 100
~
nop
~
$~
