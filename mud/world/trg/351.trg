#35100
������ ���� � ����~
0 r 100
~
if (!(%exist.mob(35110)%) && !(%exist.mob(3511)%) && !(%exist.mob(35112)%))
  halt
end
if !(%exist.mob(35103)%) 
  halt
end
���� %actor.name%
msend %actor% - ������ ����, %actor.name%!
msend %actor% - ������� ������ � ���� ����� �����.
msend %actor% - ���� �� � ������������ �� ���� ������ � ������ ����?
attach 35103 %self.id%
detach 35100 %self.id%
~
#35101
������ �� ������ � ����~
2 z 0
~
wportal 35184 2
detach 35101 %self.id%
~
#35102
���� ����~
0 f 100
~
mload obj 35102
%echo% - \&W�������� ����� �� ������������� ���� ��������� ���� �� ������� ���������.\&n
if ((%world.curobss(553)% < 1) && (%random.100% < 10))
  *����� "�������� �����"
  *mload obj 553
end
~
#35103
�������� ������� ��~
0 d 1
��������� �� ��������~
if !(%exist.mob(35103)%)
  halt
end
say - � ����� ���������� ����� ����������� ������ ��������...
say - � ����� ��� ��� �������� ���������, ������� ��� ��������� ���
say - �������� ������ ��� � ���� ����������� �����, ����������� 
say - ������ ���������.
wait 1s
say - ������� ��������� ��������� ������ ���� ����������
say - ������ ��������� � ������ �������� �������!
say - �� �����, ���-�� �� ���� ����� �� ������ ���� ������������
say - ������� � ��������� � ���������.
say - ��������� ��������� ���-������ �� ����, �� ������ - ����� ��� �� ��������!
attach 35109 %self.id%
detach 35103 %self.id%
~
#35104
������ ������~
0 j 100
*~
wait 1s
if (%object.vnum%==35102) 
  wait 1
  mpurge %object%
  if (%actor.sex% == 1)
    msend %actor% - ������ ���� , %actor.name% , �� ���� �������!
  elseif
    (%actor.sex% == 2)
    msend %actor% - ������� ����, ���������, ������� �������.
    msend %actor% ��� �������� ������� �������� ��� �� �������.
  else
    msend %actor% - ������� ����, %actor.name% , ����� �� ��������� ����� �����.
  end     
  wechoaround %actor% ��� �������� ������������ %actor.rname%.
  switch %actor.class%
    * ������
    case 0
      if (%world.curobjs(35108)% < 20) && (%random.10% <= 3)
        mload obj 35108
        ���� ���.��� %actor.name%
      else
        %self.gold(+3000)%
        ���� 3000 ��� %actor.name%
      end
    break
    * ���
    case 2
      if (%world.curobjs(35109)% < 10) && (%random.10% <= 5)
        mload obj 35109
        ���� ���.����� %actor.name%
      elseif (%world.curobjs(35110)% < 7) && (%random.10% <= 2)
        mload obj 35110
        ���� ����.����� %actor.name%
      else
        %self.gold(+2000)%
        ���� 2000 ��� %actor.name%
      end
    break
    * ��������
    case 3
      if (%world.curobjs(35104)% < 10) && (%random.10% <= 2)
        mload obj 35104
        ���� ���.������ %actor.name%
      else
        %self.gold(+2000)%
        ���� 2000 ��� %actor.name%
      end
    break
    * �������
    case 4
      if (%world.curobjs(35109)% < 10) && (%random.10% <= 5)
        mload obj 35109
        ���� ���.����� %actor.name%
      elseif (%world.curobjs(35110)% < 7) && (%random.10% <= 2)
        mload obj 35110
        ���� ����.����� %actor.name%
      else
        %self.gold(+2000)%
        ���� 2000 ��� %actor.name%
      end
    break
    * ���������
    case 5
      if (%world.curobjs(35105)% < 15) && (%random.10% <= 1)
        mload obj 35105
        ���� ���.��� %actor.name%
      elseif (%world.curobjs(35106)% < 10) && (%random.10% <= 3)
        mload obj 35106
        ���� ������� %actor.name%
      else
        %self.gold(+1500)%
        ���� 1500 ��� %actor.name%
      end
    break
    * ������
    case 9
      if (%world.curobjs(35105)% < 15) && (%random.10% <= 1)
        mload obj 35105
        ���� ���.��� %actor.name%
      elseif (%world.curobjs(35106)% < 10) && (%random.10% <= 3)
        mload obj 35106
        ���� ������� %actor.name%
      else
        %self.gold(+1500)%
        ���� 1500 ��� %actor.name%
      end
    break
    default
      %self.gold(+5000)%
      ���� 5000 ��� %actor.name%
    break
  done
end
~
#35105
����� �����~
0 f 100
~
if ((%random.100% < 10 ) && (%world.curobjs(35112)% < 3))
  mload obj 35112
end
~
#35107
����� ���� ���������� �������~
2 f 100
~
eval num1 %random.100%
eval num2 %random.100%
eval num3 %random.100%
eval mobeq (%num1%+%num1%+%num1%)/3
if (%mobeq% > 66)
  calcuid ranger 35110 mob
elseif (%mobeq% > 33)
  calcuid ranger 35111 mob
else
  calcuid ranger 35112 mob
end
attach 35108 %ranger.id%
exec 35108 %ranger.id%
calcuid pud 35102 mob
detach 35100 %pud.id%
detach 35103 %pud.id%
detach 35104 %pud.id%
detach 35109 %pud.id%
detach 35110 %pud.id%
attach 35100 %pud.id%
~
#35108
���� �������~
0 z 0
~
mjunk all
mload obj 35111
detach 35108 %self.id%
~
#35109
��������� ����� ������~
0 j 100
~
wait 1
if (%object.vnum% != 35111)
  say ����� �� ��� ��� ������?
  ����
  give all %actor.name%
  halt
end
if ( %actor.vnum% != -1 )
  ���
  give ������ %actor.name%
  halt
end
if %exist.mob(35110)%
  set num1 1 1
end
if %exist.mob(35111)%
  set num2 1 1
end
if %exist.mob(35112)%
  set num3 1
end
eval sum %num1%+%num2%+%num3%
say ���, �� ���%actor.q% ����������... ��� ������.
if (%sum% < 2)
  ����
  say �� ��� � �������?!
  say ����� ��� ������� �� ���� �������, � ��?!
  say �������� ������� ��������� ������!
  say ��� � ���� ����!!!
  drop all
  detach 35109 %self.id%
end
wait 3
say ������ ��, ���-�� ������ ��� � ������ ���� ��������� ���������.
say ��� � � ���� ������� ������ �������, ����������.
say �������, �� ����� ����� �� ������ ������� ������ � ����������� ������.
say ������� ��������� - ���� ��������� ����� - �������� ���� ������ ��� ����� �������.
say ����������� �� �� ���������� ���������� � ���� ����?
set questor %actor%
global questor
attach 35110 %self.id%
detach 35109 %self.id%
~
#35110
�������� �������� �� ������~
0 d 1
�� �������� �����~
wait 2
emot ������ ������ ����� �������, ���������� � ���� � ���-�� ���������
calcuid selfroom %self.realroom% room
exec 35111 %selfroom.id%
say ����� �������� ��������� - ������ ����� ��� ������.
give questitem351 .%questor.name%
attach 35104 %self.id%
detach 35110 %self.id%
~
#35111
������ �� ���� �� ������~
2 z 0
~
wportal 35193 2
~
#35112
������� ������ �� ������~
1 h 100
~
wait 1
if ((%self.room% < 35191) || (%self.room% > 35196))
  halt
end
if (%exist.mob(35103)% || %exist.mob(35109)% || %exist.mob(35107)%)
  halt
end
%echo% ������ �������� �������� ����� � ���������� � ����.
calcuid selfroom %self.room% room
attach 35101 %selfroom.id%
exec 35101 %selfroom.id%
wait 1
%purge% %self%
~
$~
