#9900
�����������~
0 gh 100
~
wait 1s
� �� ����, �������...
wait 1s
%force% %world.mob(9902)% ������
%force% %world.mob(9902)% ��� .%actor.iname%
wait 1s
��� .%actor.iname%
if (%actor.sex% == 1)
  � �� ������, ������ �������, � ������...
else
  � �� ������, ������ ������, � ������...
end
~
#9901
�������~
0 d 0
�����~
wait 1
��� .%actor.iname%
set tmp �������� ��������
if (%actor.class% == 11)
  set tmp ������� �� �������
end
if (%actor.sex% == 2)
  � � ����, ��� ����� ������� �� ������� � ������ %tmp%!
else
  � � ����, ��� ����� ������� �� ������� � ������ %tmp%!
end
wait 1s
� ���� ����� ������ � ������ ����, �� � ����� ������, ��� ����� ����������� ����!
� � ��� � ���, ��, ����� �������, ������� ������ ��� �� �������.
� ������� ��� � �����, ����� ������� ���� �����������.
exec 9903 %world.obj(9900)%
set s1 %world.obj(9903)%
set s2 %world.obj(9904)%
%s1.put(%world.obj(9900)%)%
%s2.put(%world.obj(9900)%)%
%load% mob 9900
%teleport% %world.mob(9900)% 9982
attach 9906 %world.mob(9900)%
���
detach 9900 %self%
detach 9914 %self%
detach 9901 %self%
~
#9902
����� �������~
2 c 1
������ �������~
if ((%cmd% == ������) && (%arg% == �������))
  set s1 %actor.eq(16)%
  set s2 %actor.eq(17)%
  if (%s1.vnum% == 9903)
    if (%s2.vnum% == 9904)
      if ((%actor.class% > 1) && (%actor.class% < 12))
        %send% %actor% ������� �������, ����������� � MUD-�����, �� � ����������� ��������� ��������� ������ ������� � ������ �������.
        %send% %actor% ���������� �������, ������������ �� ���� ����� ������, ������, ������ ��������� �� ������� �����.
        %echoaround% %actor% %actor.iname% ��������%actor.g% �������, ����������� � MUD-�����, ��� ��%actor.g% �����%actor.u% ������� �� ����,
        %echoaround% %actor% � ������%actor.u% ������ ������� � ������ �������, ����� ��� �� ����� ����.
      else
        %send% %actor% �� ���� ��� �������� ��������� �������, ������� ��� ��������� ��������.
        %send% %actor% �, ������ ������, � ������ ��������, ��� ������ �������� ����... 
        %echoaround% %actor% %actor.iname% �������� ��������%actor.g% �������, ����� ��� ���� �������� ����. 
        %echoaround% %actor% ��� � ����, ��� ����� ����� ������?
      end
      %door% 9965 west room 9973
      %door% 9973 east room 9965
    else
      %send% %actor% ����� ������ ��� �� ��������.
    end
  else
    if (%actor.eq(16)% || %actor.eq(17)% || %actor.eq(18)%)
      %send% %actor% ���� ������ ��������� ��� �����.
    else
      %send% %actor% �� ������� ���� �������. ����������!
      %send% %actor% ������� ��� ���-����.
    end
  end
else
  if (%actor.eq(16)% || %actor.eq(17)% || %actor.eq(18)%)
    %send% %actor% "��� �� ����� �������?.."
    %send% %actor% � ���������, ��� ���������� �����.
  else
    %send% %actor% ������ ��� ����� - ������ ������ ������...
  end
end
~
#9903
���� ������~
1 b 0
~
%load% obj 9903
%load% obj 9904
~
#9904
zedit ��-������~
2 f 100
~
%door% 9973 east purge
%door% 9965 west purge
~
#9905
���� ������~
2 c 1
������������ ���������~
if (%cmd% == ��������� && !%arg%)
  %send% %actor% ��� �� ������ ���������?
  halt
end
if (%cmd% == ������������ || (%cmd% == ��������� && (%arg% == ����� || %arg% == �����)))
  %load% obj 9902
  %send% %actor% ������������ �� �������� ����� � ������� ���� � ��������� � ��� ������ �����!
  %echoaround% %actor% %actor.iname% ���������%actor.u% � ������� ���� � �������%actor.g% � ���� �����.
else
  return 0
end
~
#9906
������� ����~
0 b 30
~
���� ������-������! ���� ���� ������!!
~
#9907
�������� ����~
0 qr 100
~
� ������ �����!!
wait 1s
%force% %world.mob(9900)% � �� ���� ��� � �� ���� ��-��-��!
wait 1s
� �� �� ���� � ���� ������!
� �� ������ ���.. �������� � ��������...
wait 1s
%force% %world.mob(9900)% � ����� � ��������?
wait 1s
� ���. � ��������
wait 1s
%echo% ������� ���, ���� ����������� � �������� ������� �����.
wait 1s
� �������, ���� � ������� ��� ���?! ���� ���� ����? � �� ��� ����� �������!
���� .%actor.iname%
detach 9907 %self%
~
#9908
������� �������~
0 ab 0
~
wait 1
� ��! �� � ����� ��� � �� �������� � ��������...
������
wait 1
����
� ������ �� ������� ������! � ���� � �������� �� �����������!
� � c ����� ������!
wait 1
%echo% ��� ������� � ���� �������.
attach 9909 %world.mob(9901)%
makeuid q99 %actor.id%
global q99
remote q99 %world.mob(9901)%
%load% mob 9909
%force% %world.mob(9909)% ����� %actor.iname%
%purge% %world.mob(9900)%
~
#9909
�������~
0 qr 100
~
if (%actor% == %q99%)
  wait 1
  � ������� ����, %actor.iname%, �� �������� �������!
  � ��� ��� ��� ����� ������!
  wait 1
  %force% %world.mob(9902)% � ��-��! �������!
  %force% %world.mob(9902)% ���
  wait 1
  eval rnd %random.1000%
  if (%rnd% < 300)
    � ���, ������. ����� ����������� ��� ���� ��.
    wait 1
    %force% %world.mob(9902)% � �� ������� ������, ������ ������ ����� ������������, � �� ������� �����-��.
    %load% obj 563
    give ���.��� .%actor.iname%   
  else
    %self.gold(300)%
    give 300 ��� .%actor.iname%
  end
  detach 9909 %self%
end
~
#9910
����� �����~
2 h 100
~
if (%object.vnum% == 9902)
  wait 1s
  %echo% �� ����� ����������� ���������� � ������ ����� ���������� ����.
  %teleport% %world.mob(9903)% %self.vnum%
  wait 1s
  %echo% �� ���������, �� ���������� ������, ������� � ������� ������ � ����������.
  %echo% ����� � ��� ����� ���������� ������� ������� �� ������� ���� ����� � ������� �����!
  %purge% %object%
  %purge% %world.mob(9903)%
  eval rnd %random.1000%
  eval nork %world.room(9989)%
  if (%rnd% < 100 && %world.curobjs(221)% < 51)
    %load% obj 221
    eval runn %world.obj(221)%
    %runn.put(%nork%)%
  else
    %load% obj 9905
    eval ppuh %world.obj(9905)%
    %ppuh.put(%nork%)%
  end
end
~
#9911
������������ � ����� � �����~
2 c 0
�����~
if (%arg% == ����� || %arg% == �����)
  eval norkroom %world.room(9989)%
  eval n %norkroom.all%
  if (%n.words% >= 1)
    %send% %actor% ��� ������!
    halt
  end
  if (%actor.rentable% == 0)
    %send% %actor% � ������ ����� ����� � ������ �� ������ ������!  
    halt
  end
  %echoaround% %actor% %actor.iname% ������������%actor.g% � ������ �����.
  %teleport% %actor% 9989
else
  %send% %actor% ���� ������������?
end
~
#9912
������ ����~
0 f 100
~
exec 9908 %world.mob(9900)%
~
#9913
����������� � �������~
0 ab 30
~
* special for ������ :)
eval k %world.curmobs(9911)%
while (%k% > 0)
  calcuid zai 9911 mob %i%
  if (%zai.realroom% == %self.realroom%)
    eval rnd %random.1000%
    if (%rnd% < 301)
      ��� %zai.iname%
    end
    if (%rnd% > 300 && %rnd% < 601)
      ���� %zai.iname%
    end
    if (%rnd% > 600)
      ����� %zai.iname%
    end
    halt
  end
  eval k %k%-1
done
~
#9914
history ����� �������~
0 d 0
��������~
wait 1
���
wait 1s
� ����� �� � �������� ������-�����, ���� ������ �������� ���� � ������� �� �� �����.
� � ���� � ���� ��������� ����������� ������� - �������.
wait 1s
� � ��� ������� ��������� �� �� ������� � �������� ������� �� �������.
������
%force% %world.mob(9902)% � ������ �� �� ������ � ����� ������ �� ���������.
wait 1s
%force% %world.mob(9902)% � �� ������ ���� ��� ���� �������� �������� ���� � ������...
%force% %world.mob(9902)% ����
wait 1s
���� �����.���
� ����� ������� �� ��� �������� ����!
attach 9901 %self%
~
#9915
��� � ���������~
0 k 20
~
%load% mob 9916
%echo% &K�� ��� ��-��� �������� ������ ������� � ������� �� ������ ������ �������!&n
%force% %world.mob(9916)% �� .%actor.iname%
~
$~
