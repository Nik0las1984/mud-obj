#35900
������ �������� �������~
0 ab 50
~
exec 35901 %world.obj(35916)%
�� ����
���� ���� ������
detach 35900 %self%
~
#35901
��������� ��������~
1 b 0
~
if (%self.vnum% == 35916)
  otransform 35917
else
  otransform 35916
end
~
#35902
��������� ��������/��������� �����~
0 j 100
~
wait 1s
if (%object.vnum% == 35917)
  exec 35901 %world.obj(35917)%
  %echo% ������� ��������� ������� �������� � ������ � �����.
  wait 1
  ���� ���� ���.���
  attach 35900 %world.mob(35901)%
  halt
end
if (%object.vnum% == 35919 && %actor.vnum% == -1)
  detach 35900 %world.mob(35901)%
  if (%world.curobjs(35916)% > 0)
    %purge% %world.obj(35916)%
  else
    %purge% %world.obj(35917)%
  end
  %purge% %world.mob(35901)%
  %load% mob 35932
  set q359 %actor%
  global q359
  remote q359 %world.mob(35932)%
  ���
  ���� ���� ���.���
end
~
#35903
������� ��������~
0 j 100
~
wait 1s
if (%object.vnum% == 35916)
  ���� ����
  eval rnd %random.num(1000)%
  if (%rnd% < 500)
    %echo% ���� ������� ������ � ������ ��������� � �����������.
    wait 1
    %echo% ������� ������ ���������.
  end
end
~
#35904
����������� �������~
0 d 0
��� ���������?~
wait 1s
if (%speech.car% == ��� && %speech.cdr% == ���������?)
  ����
  � ��� �����, ���������� ��� ���� ��� �������.
  � � � ���� ���������� ���� ��� �� ������ ��������� � �������...
  � � ��� ������ ����� �� ����� ��������.
  � ����� ����, �� � �������� �� ����� � ������� ������ �������.
  wait 1s
  ������
  wait 1s
  � ������ ���, ������, ����� ����!
  � ���� � �� ���� �� �������� ��� ���������, �� � ���� ��� �� ��...
  attach 35905 %self%
end
~
#35905
������� �������~
0 d 0
������~
if (%speech% == ������)
  detach 35904 %self%
  wait 1s
  ��� .%actor.iname%
  wait 1s
  � ����� � ��������� ������� ������.
  � ���� � ��� ��� ����, ��, ���� �� �����, ����� ���-��.
  � �� ����� � ��� ���. � ��� ��� �������� �� ������ �����������...
  � ������ ������ ������ ���������� �� �����.
  � �������� ���, ����� �� �������, ��� �� ��������.
  attach 35910 %world.mob(35921)%
  attach 35911 %world.mob(35921)%
  
  detach 35905 %self%
end
~
#35906
�������� ����������~
2 f 100
~
if %random.100% < 50
  %load% mob 35933
  %load% mob 35935
  %teleport% %world.mob(35935)% 36139
else
  %load% mob 35934
  %load% mob 35936
  %teleport% %world.mob(35934)% 36139
end
~
#35907
������� ����~
0 ab 100
~
eval room %self.realroom%
if (%room.north%)
  set exits north
end
if (%room.south%)
  set exits %exits% south
end
if (%room.west%)
  set exits %exits% west
end
if (%room.east%)
  set exits %exits% east
end
eval rnd %random.num(%exits.words%)%
: �������� ������� ������� ��� ������ � ����-�� ����������� ���������
eval exit %exits.words(%rnd%)%
if (%exit% == south)
  set direction north
end
if (%exit% == north)
  set direction south
end
if (%exit% == west)
  set direction east
end
if (%exit% == east)
  set direction west
end
���� ���� %exit%
���� ����� %exit%
���� ����� %exit%
%exit%
���� ���� %direction%
���� ����� %direction%
���� ����� %direction%
����
~
#35908
�� ���� ������� �����~
0 c 1
��������� �� �����~
if (%actor.vnum% != -1)
  halt
end
eval gr %actor.group%
if (%gr%)
  eval rnd %random.num(%gr.words%)%
  eval rndchar %gr.words(%rnd%)%
else
  eval rndchar %actor%
end
set needarg �� �����
if (%cmd% == ���������)
  if (%arg% == %needarg%)    
    ���� ��!
    � ������ ����! ���� �������?!
    : ��������� ��������� ���� �����
    wait 1s
    � ��� �� ���� ����������, �� ��������� �� ��������...
    ����
    %echo% ��������� ����� ������� �������� !
    wait 1s
    %echo% �� ������� ��������� �������� ������ ����������� �������������. �� ������ ���� ��������� ����� !
    wait 1s
    %load% mob 35931
    %force% %world.mob(35931)% � ����� ���� ��� �������� �������?
    ���
    %force% %world.mob(35931)% ����� .%actor.iname%
    detach 35908 %self.id%
  else
    if (%rndchar% == %actor%)
      %send% %actor% ���������� ������ ��� �������, � �� ����� � � ������ �������.
      if (%random.100% < 50)
        %send% %actor% &R������� ������ ����������� �� ����� ����.&n
        %send% %actor% ��� ������������� ������ !
        eval buf %actor.hitp(-5)%
        %echoaround% %actor% %actor.iname%, ���������� ������, ������ � ������� ������.
      end
    else
      eval rnd %random.1000%
      if (%rnd% < 333)
        %send% %actor% &Y�� ������ ��������� �� ���� %rndchar.dname%.&n
        %send% %rndchar% &R%actor.iname% ������ ��������%actor.g% ��� �� ����.&n
        %send% %rndchar% ��� ������������� ������ !
        foreach i %gr%
          if (%i% != %actor% && %i% != %rndchar%)
            %send% %i% %actor.iname% ������ ��������%actor.g% %rndchar.dname% �� ����.
          end
        done
      end
      if (%rnd% > 333 && %rnd% < 666)
        %send% %actor% &Y�� ������ ��������� �� ���� %rndchar.dname%.&n
        %send% %rndchar% &R%actor.iname% ������ ��������%actor.g% ��� �� ����.&n
        %send% %rndchar% ��� ������������� ������ !
        foreach i %gr%
          if (%i% != %actor% && %i% != %rndchar%)
            %send% %i% %actor.iname% ������ ��������%actor.g% %rndchar.dname% �� ����.
          end
        done
      end
      if (%rnd% > 666)
        %send% %actor% &Y�� ���������� ��������� �� ���� %rndchar.dname%.&n
        %send% %rndchar% &R%actor.iname% ���������� ��������%actor.g% ��� �� ����.&n
        %send% %rndchar% ��� ������������� ������ !
        foreach i %gr%
          if (%i% != %actor% && %i% != %rndchar%)
            %send% %i% %actor.iname% ���������� ��������%actor.g% %rndchar.dname% �� ����.
          end
        done
      end
      %send% %actor% ��� !
    end
  end
end
~
#35909
c���~
0 d 0
����~
if (%speech% == ����)
  detach 35907 %self%
  ����
  wait 1s
  %echo% ����������� ��� ���-�� �������� ��������.
  %echo% �� ��������� ���� ��������� ����� ��� ���������� ���������.
  wait 1s
  � ...�����... 
  wait 1s
  � ...������...
  wait 1s
  � ...��������...
  wait 1s
  � ...�����...
  wait 1s
  � ...����... 
  wait 1s
  � ...�����...
  wait 1s
  � ...�������... �����!!!
  %echo% ����������� ��� ��������� �������� � � ������ ������� �� ��� �����.
  %load% mob 35930
  %teleport% %world.mob(35930)% 35983
  attach 35907 %self%
  detach 35908 %self%
end
~
#35910
����������� ������~
0 r 100
~
wait 1
� �����, ������! ����� �� ����������!
� ������ ������! �� ����� ����� ���������!
� �����, �� ����� � ��� �����, ������ �� �����!
wait 1s
if (%actor.sex% == 1)
  � ����������, �����, ����� ���� ����� �������?
  ��� .%actor.iname% � ���� ���� �������� ����������� �����! ��� ������� ����� ������!
else
  � ����������, �����, ����� ���� ����� �������?
  ��� .%actor.iname% � ���� ���� �������� ����������� �����! ��� ������� ����� ������!
end
��� .%actor.iname%
~
#35911
������� ������~
0 d 1
�����������~
if (%speech% == �����������)
  %echoaround% %actor% %actor.iname% �������� ���������%actor.g% ������ ������ � �����������.
  %send% %actor% �� ��������� ���������� ������ ������ � �����������.
  wait 1s
  ���
  wait 1s
  ���
  � ��.. ������� ������.
  � ���� � ���� ������ � ���� ���� ��������.
  ����
  wait 1s
  � �� ��� ���� � ���� �� ������� ������ ������������� �����������.
  � ������� ������ ����� ����������, � ������ ������� ����������.
  � ���� ��� ������ ��������, ������ ����� ��� ������.
  ���
  wait 1s
  � ���� ����������� ��� - �������, ���������� ���� ����������� ���������!
  attach 35912 %self%
  detach 35910 %self%
  detach 35911 %self%
end
~
#35912
���������� ������~
0 j 100
~
wait 1
if (%object.vnum% == 35918)
  : ��������� � ����� �������� � ������ ����
  � �� ��... � ������ ���������, ����� ������������ ��� �������� ��������.
  � �� �����, ���� ����������!
  wait 1s
  %echo% ������ ������ ������� ��������� ������� � ��� ������� ������� � ��������� ��� �� �����.
  wait 1s
  %echo% ������ ������ ������ ������-�� ������ �������.
  � ���-�, ��� ��� � ���? ������ ����-��������, ������ ������� ���� �� ���.
  � ������� ���������� �������� ���, ������� �������� ������,
  � ����� ����������� ������� ����, ������������ ���� ������...
  wait 1s
  %echo% ���������� �����������, ������ ������ ������� ��������� �� � �������.
  %echo% �� �������� ���������� � ���, ��� ��� � ��� ���������...
  wait 1s
  � ������� ���������� �������.. ��! ��� �� �� ����� �������.
  %echo% ������ ������ ������ ������� ������ ���������� �� �������.
  wait 1s
  � �� ��� ���������, �������� � ������ ����� ����������!
  %echo% ��� ������ ����� ������ ���� � ������� �� ���� ��������� ����� ���� ��������� ���!
  %echo% - ������! - ���������� �� ������� ���������� ������ ������, ������ �� ��� ������� ������ ���.
  %purge% %world.obj(35918)%
  %load% obj 35919
  ���� ���� .%actor.iname%
end
~
#35913
������ ���~
0 f 100
~
if (%world.curobjs(35918)% < 1)
  %send% %actor% � ������ �����, �������� �� �������� ����, �� � ������� ������� �� ��� ������, ������� ��������.
  %echoaround% %actor% � ������ ����� %actor.iname%, �� ������ ����%actor.g% ������� ����, �� � �������%actor.g% ��� ����� ������� ���������.
  %load% obj 35918
end
~
#35914
!! FINISH !!~
0 j 100
~
wait 1
if (%object.vnum% == 35919)
  %purge% %world.obj(35919)%
  %echo% ����� ������ ������� ������ ���������� �� ���� �������.
  ���� ���
  wait 1s
  %echo% �� ����� ������ ���� ������� ��������� ��������� ����.
  %echo% ���� ������� ������ ������ � �������.
  wait 1s
  � ������� ����, %q359.iname%!
  � �� ����%q359.q% ��� �����, ������ ���!
  eval rnd %random.1000%
  if (%rnd% <= 333)
    if (%world.curobjs(35920)% <= 5)
      %load% obj 35920
      ���� ������ .%q359.iname%
    else
      %self.gold(+5000)%
      ���� 5000 ��� .%q359.iname%
    end
  end
  if (%rnd% > 333 && %rnd% <= 555)
    %load% obj 512
    ���� ���� .%q359.iname%
  end
  if (%rnd% > 555 && %rnd% <= 777)
    %load% obj 1748
    ���� ���.���� .%q359.iname%
  end
  if (%rnd% > 777)
    %load% obj 519
    ���� ����� .%q359.iname%
  end
  detach 35914 %self%
end
~
#35915
�������� ����������~
0 m 1
~
wait 1
if %amount% < 10
  say �������� �����!
  give %amount% ��� %actor.name%
  halt
end
wait 1
msend %actor%  �� ������� � ����� � ��������� �������� ������.
mechoaround %actor%  %actor.name% ����%actor.u% � ����� � ��������� �������� ������.
if (%self.realroom% == 35900)
  mteleport %actor% 36139
else
  mteleport %actor% 35900
end 
mechoaround %actor%  ���-�� ������� ���� �� �����.
~
#35916
������ ���������� 1~
2 z 0
~
%load% mob 35933
~
#35917
������ ���������� 2~
2 z 0
~
%load% mob 35935
~
#35918
������ ���������� 3~
2 z 0
~
%load% mob 35936
~
#35919
������ ���������� 4~
2 z 0
~
%load% mob 35934
~
$~
