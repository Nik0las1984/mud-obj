#12000
����� ��������� ����~
0 f 100
~
if (%random.5%==1)
  mload obj 12018
end
~
#12001
���� ����� ����~
0 j 100
~
wait 1
if %object.vnum% != 12018
  wait 10
  �����
  ���� ���
  ���� ���
  halt
end
mpurge �����
���� ���� ����� � ����� ���� � ��������� ��������� ��� � �����.
wait 10
say �, ������ ����!
say � ���� ��.
say ����� �� �� �������.
wait 5
say � ������ ���� ������ ��� ����� �����, ��� ��� �����.
���� ��������� ������ ��-�� ����� ����� � �������� �������� �����.
wait 30
mecho � ����� 5 ����� ������������ �����c��� ���� ������.
if %random.2%==1
  mload obj 12019
else
  mload obj 12020
end
���� ��� %actor.name%
~
#12002
���� ����� ����~
0 ab 100
~
if %self.fighting%
  halt
end
say ������ �����
wait 5
if %random.2%==1
  mecho ����� ���-�� ������ �������. ���� ������, �� ���������.
  if %random.2%==2
    mecho "� ���� �� ����������" - �������� �� - "�� ���� ������".
  end
  wait 2
  ���
end
~
#12003
������� ����~
2 d 1
������ �����~
eval volk %actor.people%
while %volk%
  if %volk.vnum%==12029
    halt
  end
  eval volk %volk.next_in_room%
done
if %random.5%>1
  wecho �� ���� ���������� ������ ����� �����, � ����� �������.
  halt 
end
wecho ���� �������� ������������ � �� ��� �������� ��������, ���������
wecho ���������� ���  �������� �������� ������ � ������� ������ 
wecho � ������ ������� � ������.
wait 10
if %random.3%==2
  wecho &Y���� ��������� "�� ������� �����! ������!"&n
end
wait 1
wload mob 12010
calcuid room 12016 room
detach 12003 %room.id%
~
#12004
����� ����~
0 f 100
~
mecho � ������� ������� �������� ���������
calcuid emel 12019 mob
detach 12005 %emel.id%
~
#12005
����� �������~
0 p 100
~
mecho ����� ������� ����� � ��������� : "�� ����� �������".
eval emela %self.people%
while %emela%
  if %emela.sex%==2
    ��� %emela.name%
  end
  eval emela %emela.next_in_room%
done
mecho ����� ������ �������� ������� �����.
mecho ����� ������� �� ��� � �������� : "�� ������� �������".
mecho � ������� ������� �������. "����" - �������� ��.
eval emela %self.people%
while %emela%
  %emela.hitp(-15)%
  eval emela %emela.next_in_room%
done
%self.hitp(%self.maxhitp%)%
wait 1
eval killer %self.people%
while %killer%
  eval killer %killer.next_in_room%
  if %killer.vnum% == -1
    �� %killer.name%
    halt
  end
done
~
#12006
�������� �������~
0 p 100
~
return 0
mecho ����������� ���� ������ ���� �� ����.
%self.hitp(%self.maxhitp%)%
if %actor.vnum% == -1
  mdamage .%actor.name% 30
  mdamage %actor% 30
  mdamage %actor% 80
end
~
#12007
������������ �������~
0 c 100
��������~
msend %actor% �� ������� � ���� � ������ ������� ��������� ���� ������� �������.
mechoaround %actor% %actor.name% �����%actor.q% � ���� � �����%actor.u% ������������� � ������� �����.
mechoaround %actor% ����� ����! �� � �� ����������� ����� ������������ ������ ��������!
wait 30
mecho �������� ���� �� ������ ���������� �� ������ �������.
mecho �� � ����� ������� ������ ������ ���� ����� �� ����.
wait 10
� ��� ��� ���� ��� ����������?
wait 10
mload mob 12030
wait 1
mpurge %self%
~
#12008
����� �������~
0 f 100
~
if (%world.curobjs(10210)%) < 10 && (%random.5%==2)
  mload obj 12010
end
~
#12009
����� ��������~
0 f 100
~
if (%world.curobjs(10209)%) < 10 && (%random.5%==2)
  mload obj 12009
end
~
#12010
���� �������� �����~
0 j 100
~
wait 2
switch %object.name% 
  case ���� ��������
    say  ����� �������! ����� �� �� ��� ���� ��� ����� �������! ��� ��� �� �����!
    %self.gold(+100)%
    ���� 100 ��� %actor.name%
    mpurge ���� 
  break
  case ���� �������
    say    �! � �� ��� ����� ������ �������! �������! ��������� �������! 
    %self.gold(+110)%
    ����   110 ��� %actor.name%
    mpurge ���� 
  break
  default
    say  ��� ��� �� ��� ��� ���������? � �� ��� ������... ����� ���, ��������� ��!
    eval getobject %object.name%
    if  %getobject.car% == ����
      mpurge ����
    else
      ����� %getobject.car%.%getobject.cdr%
    end
  break
done 
~
#12011
����� ���������~
0 f 100
~
if (%world.curobjs(12002)%) < 10 && (%random.5%==3)
  mload obj 12002
end
~
#12012
����� ������� ����~
0 f 100
~
if (%random.1000% < 80) && (%world.curobjs(12000)% < 6)
  mload obj 12000
end 
~
#12013
����� �����~
0 f 100
~
if (%random.1000% < 100) && (%world.curobjs(12021)% < 6)
  mload obj 12021
end 
if (%random.1000% < 75) && (%world.curobjs(12022)% < 6)
  mload obj 12022
end 
~
#12014
����� ������� ������~
0 f 100
~
if (%random.1000% < 100) && (%world.curobjs(12013)% < 6)
  mload obj 12013
end 
if (%random.1000% < 75) && (%world.curobjs(12024)% < 6)
  mload obj 12024
end 
~
#12015
����� ������� ������~
0 f 100
~
if (%random.1000% < 100) && (%world.curobjs(12012)% < 6)
  mload obj 12012
end 
if (%random.1000% < 75) && (%world.curobjs(12026)% < 6)
  mload obj 12026
end 
~
#12016
����� �������~
0 f 100
~
if (%random.1000% < 100) && (%world.curobjs(12025)% < 6)
  mload obj 12025
end 
~
#12017
����� �������~
0 f 100
~
if (%random.1000% < 100) && (%world.curobjs(12027)% < 6)
  mload obj 12027
end 
~
#12018
����� ������~
0 f 100
~
if (%random.1000% < 50) && (%world.curobjs(12028)% < 6)
  mload obj 12028
end 
~
#12019
����� �������~
0 f 100
~
if (%random.1000% < 50) && (%world.curobjs(12029)% < 6)
  mload obj 12029
end 
~
#12020
����� ��������~
0 f 100
~
if (%random.1000% < 80) && (%world.curobjs(12014)% < 6)
  mload obj 12014
end 
if (%random.1000% < 120) && (%world.curobjs(12030)% < 9)
  mload obj 12030
end 
~
#12021
����� �����~
0 f 100
~
if (%random.1000% < 80) && (%world.curobjs(12008)% < 6)
  mload obj 12008
end 
~
#12022
����� ������~
0 f 100
~
if (%random.1000% < 80) && (%world.curobjs(12015)% < 6)
  mload obj 12015
end 
~
#12023
����� ���~
0 f 100
~
if (%random.1000% < 80) && (%world.curobjs(12017)% < 6)
  mload obj 12017
end 
~
#12024
����� ���� ������~
0 f 100
*~
if (%random.1000% < 80) && (%world.curobjs(12001)% < 6)
  mload obj 12001
end 
if (%random.1000% < 80) && (%world.curobjs(12003)% < 6)
  mload obj 12003
end 
if (%random.1000% < 80) && (%world.curobjs(12006)% < 6)
  mload obj 12006
end 
if (%random.1000% < 80) && (%world.curobjs(12005)% < 2)
  mload obj 12005
end 
~
#12025
����� ����������~
0 f 100
~
if (%random.1000% < 50) && (%world.curobjs(12004)% < 4)
  mload obj 12004
end 
~
$~
