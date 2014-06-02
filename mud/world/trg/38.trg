#3800
������ �������� ��������~
2 f 100
~
wait 5s
* ������ ������ ��������
set ship1 3800 3801 3802 3803 3804 3805 3806 3807 3808
set ship2 3809 3810 3811 3812 3813 3814 3815 3816 3817
global ship1
global ship2
* ������ ����� ��������
set point1 1
set point2 1
global point1
global point2
* ����� ����������� ��� ���������� ����� �����!
* ���������� ���������� ������ ���� ���������.
* ���������� ������ �������
set cities1 ������� ����������� ����� ������� ������ �������_�������� ����� ������ ��������_����
set shiprooms1 3801 3802 3802 3802 3800 3802 3802 3801 3800
set dirs1 north north east east west east east north west
set rdirs1 south south west west east west west south east
set whardes1 27141 25064 69098 64086 62079 60091 35046 24006 67601
set speaker1 27000 25000 69001 64000 62000 60000 35000 24000 49900
global cities1
global shiprooms1
global dirs1
global rdirs1
global whardes1
global speaker1
* ���������� ������ �������
set cities2 ������ ����� ����� ����� ����� ��������_���� ������� ����������� ����� �������_��������
set shiprooms2 3809 3809 3809 3809 3809 3810 3809 3809 3809 3809
set dirs2 north north north north north west east north west north
set rdirs2 south south south south south east west south east south
set whardes2 24007 35046 75098 32473 77089 67602 27139 25063 69096 60091
set speaker2 24000 35000 75100 32400 77000 49900 27000 25000 69001 60000
global cities2
global shiprooms2
global dirs2
global rdirs2
global whardes2
global speaker2
* ������������ ���� �� ���� (��� ��������)
calcuid data 3898 mob
global data
remote whardes1 %data.id%
remote whardes2 %data.id%
remote point1 %data.id%
remote point2 %data.id%
remote cities1 %data.id%
remote cities2 %data.id%
* ���������� ������ �������� ��������
exec 3805 %self.id%
eval pause 20+%random.20%
wait %pause%s
exec 3806 %self.id%
* ������� ����, ���� �� ��������� ����� 
detach 3800 %self.id%
~
#3801
������� ������� ������� 3800-3808~
2 z 100
~
foreach target %self.pc%
  wsend %target% _�������� ������ ��������� ��� �� ��������, � ��������� ����������� ������� �� �����.
  wteleport %target% %wharf1%
  wechoaround %target% _�������� ��������� %target.vname% � �������.
done
~
#3802
������� ������� ������� 3809-3817~
2 z 100
~
foreach target %self.pc%
  wsend %target% _�������� ������ ��������� ��� �� ��������, � ��������� ����������� ������� �� �����.
  wteleport %target% %wharf2%
  wechoaround %target% _�������� ��������� %target.vname% � �������.
done
~
#3803
������� ������� �������~
2 z 100
~
eval pause 500+%random.100%
wait %pause%s
while %stop%
  wait 30s
done
exec 3805 %self.id%
~
#3804
������� ������� �������~
2 z 100
~
eval pause 500+%random.100%
wait %pause%s
while %stop%
  wait 30s
done
exec 3806 %self.id%
~
#3805
����������� ������� ������� �� ��������~
2 z 100
~
*���� ������� ����� ����� ����� �����, ������ ������� �������, �������� � ������
if (%point1% > %cities1.words%)
  set point1 1
  global point1
end
*���������� ��������� ����� 
set city %cities1.words(%point1%)%
global city
*������ ��������� �� �������
foreach room1 %ship1%
  wat %room1% wecho _&G�������� �����������, �������� ������&n
  wat %room1% wecho _&Y"����������!" - ���������� �� ��� ����� - "������������ � %city%!"&n
done
set cond1 1
global cond1
remote cond1 %data.id%
wait 30s
foreach room2 %ship1%
  wat %room2% wecho _&G�������� ������� �� �����, � ������� ����������� ������� �� ��������.&n
done
*������� ������
eval ratchet %world.room(%whard%)%
if %ratchet%
  attach 3808 %ratchet.id%
  exec 3808 %ratchet.id%
end
*������� ���� �� �������
wdoor %shiproom% %dir% purge
wdoor %whard% %rdir% purge
set cond1 2
global cond1
remote cond1 %data.id%
*���������� ����� ����� ������������
set shiproom %shiprooms1.words(%point1%)%
set dir %dirs1.words(%point1%)%
set rdir %rdirs1.words(%point1%)%
set whard %whardes1.words(%point1%)%
global shiproom
global dir
global rdir
global whard
*������ ���������� ��������� � ������� � ����.
set i 0
while (%i% < 24)
  switch %random.20%
    case 1
      set msg &g������ ��� ��������� ������ ����.&n
    break
    case 2
      set msg &Y��������� ��������� ���������� �� ������, ����� ��� ������.&n
    break
    case 3
      set msg &C���������� ����, � �������� ����� ����� ���������� �� ������.&n
    break
    case 4
      set msg &W������ ����� �������� ��� �����.&n
    break
    case 5
      set msg &G���������� ����� ����������� ������ ��������� �� ���� � ����� ��������.&n
    break
    case 6
      set msg &Y������ ���������� �� ������ �������� ���� �� �������, �� ������ ������� ������� ������������.&n
    break
    case 7
      set msg &Y��������� ��������� ���������� �� ���� � ������ �������� �����.&n
    break
    case 8
      set msg &C������� ������ ����� ��������� ���� ����� � ����������� �������.&n
    break
    case 9
      set msg &G���-�� ���������� �� ����� �������, �������� ��� ���������.&n
    break
    case 10
      set msg &Y������ ������� ������� �� ���� ������� ����� �� ������� � ������ ������ �����.&n
    break
    case 11
      set msg &C������� ������ �������, � ������ ������ ������ �����.&n
    break
    case 12
      set msg &Y������� ������� ���������� �� ������.&n
    break
    case 13
      set msg &Y����� ��� � �������� -- ���� ����� � ������������� �����.&n
    break
    case 14
      set msg &R������� ���� ������������ �� ����� ���� �� ������.&n
    break
    case 15
      set msg &Y������ ������������ ������ ��������� � �������, �� ������� ��������� �������� �����.&n
    break
    case 16
      set msg &G������� ��������� ���������� ��� ������� � ������ � �����.&n
    break
    case 17
      set msg &K�������� ���� ������� ����, � ������� �� � ���� ���������� ����������� �����.&n
    break
    case 18
      set msg &Y�� ������ ��������� �������� � ��������� ����� �������.&n
    break
    case 19
      set msg &K������� ���� ��������� �� ������, �������� ���� �������� ��� ��������� ��������.&n
    break
    case 20
      set msg &G������������� ��� ����� ����� ���������� ������ ��������� �� �����.&n
    break
  done
  eval i %i%+1
  wait 10s
  foreach room3 %ship1%
    wat %room3% wecho %msg%
  done
  unset room3
done
*�����������
wdoor %shiproom% %dir% room %whard%
wdoor %whard% %rdir% room %shiproom%
eval ratchet %world.room(%whard%)%
attach 3807 %ratchet.id%
set speak %speaker1.words(%point1%)%
remote speak %ratchet.id%
exec 3807 %ratchet.id%
eval point1 %point1%+1
global point1
foreach room4 %ship1%
  wat %room4% wecho _&Y������� �� ������� � %city%!&n
done
set cond1 3
global cond1
remote cond1 %data.id%
unset room1
unset room2
unset room3
unset room4
*��������� ������ �������
exec 3803 %self.id%
halt
~
#3806
����������� ������� ������� �� ��������~
2 z 100
~
*���� ������� ����� ����� ����� �����, ������ ������� �������, �������� � ������
if (%point2% > %cities2.words%)
  set point2 1
  global point2
end
*���������� ��������� ����� 
set city2 %cities2.words(%point2%)%
global city2
*������ ��������� �� �������
foreach room1 %ship2%
  wat %room1% wecho _&G�������� �����������, �������� ������&n
  wat %room1% wecho _&Y"����������!" - ���������� �� ��� ����� - "������������ � %city2%!"&n
done
set cond2 1
global cond2
remote cond2 %data.id%
wait 30s
foreach room2 %ship2%
  wat %room2% wecho _&G�������� ������� �� �����, � ������� ����������� ������� �� ��������.&n
done
*������� ������
eval ratchet %world.room(%whard2%)%
if %ratchet%
  attach 3808 %ratchet.id%
  exec 3808 %ratchet.id%
end
*������� ���� �� �������
wdoor %shiproom2% %dir2% purge
wdoor %whard2% %rdir2% purge
set cond2 2
global cond2
remote cond2 %data.id%
*���������� ����� ����� ������������
set shiproom2 %shiprooms2.words(%point2%)%
set dir2 %dirs2.words(%point2%)%
set rdir2 %rdirs2.words(%point2%)%
set whard2 %whardes2.words(%point2%)%
global shiproom2
global dir2
global rdir2
global whard2
*������ ���������� ��������� � ������� � ����.
set i 0
while (%i% < 24)
  switch %random.20%
    case 1
      set msg &g������ ��� ��������� ������ ����.&n
    break
    case 2
      set msg &Y��������� ��������� ���������� �� ������, ����� ��� ������.&n
    break
    case 3
      set msg &C���������� ����, � �������� ����� ����� ���������� �� ������.&n
    break
    case 4
      set msg &W������ ����� �������� ��� �����.&n
    break
    case 5
      set msg &G���������� ����� ����������� ������ ��������� �� ���� � ����� ��������.&n
    break
    case 6
      set msg &Y������ ���������� �� ������ �������� ���� �� �������, �� ������ ������� ������� ������������.&n
    break
    case 7
      set msg &Y��������� ��������� ���������� �� ���� � ������ �������� �����.&n
    break
    case 8
      set msg &C������� ������ ����� ��������� ���� ����� � ����������� �������.&n
    break
    case 9
      set msg &G���-�� ���������� �� ����� �������, �������� ��� ���������.&n
    break
    case 10
      set msg &Y������ ������� ������� �� ���� ������� ����� �� ������� � ������ ������ �����.&n
    break
    case 11
      set msg &C������� ������ �������, � ������ ������ ������ �����.&n
    break
    case 12
      set msg &Y������� ������� ���������� �� ������.&n
    break
    case 13
      set msg &Y����� ��� � �������� -- ���� ����� � ������������� �����.&n
    break
    case 14
      set msg &R������� ���� ������������ �� ����� ���� �� ������.&n
    break
    case 15
      set msg &Y������ ������������ ������ ��������� � �������, �� ������� ��������� �������� �����.&n
    break
    case 16
      set msg &G������� ��������� ���������� ��� ������� � ������ � �����.&n
    break
    case 17
      set msg &K�������� ���� ������� ����, � ������� �� � ���� ���������� ����������� �����.&n
    break
    case 18
      set msg &Y�� ������ ��������� �������� � ��������� ����� �������.&n
    break
    case 19
      set msg &K������� ���� ��������� �� ������, �������� ���� �������� ��� ��������� ��������.&n
    break
    case 20
      set msg &G������������� ��� ����� ����� ���������� ������ ��������� �� �����.&n
    break
  done
  eval i %i%+1
  wait 10s
  foreach room3 %ship2%
    wat %room3% wecho %msg%
  done
  unset room3
done
*�����������
wdoor %shiproom2% %dir2% room %whard2%
wdoor %whard2% %rdir2% room %shiproom2%
eval ratchet %world.room(%whard2%)%
attach 3807 %ratchet.id%
set speak %speaker2.words(%point2%)%
remote speak %ratchet.id%
exec 3807 %ratchet.id%
eval point2 %point2%+1
global point2
foreach room4 %ship2%
  wat %room4% wecho _&Y������� �� ������� � %city2%!&n
done
set cond2 3
global cond2
remote cond2 %data.id%
unset room1
unset room2
unset room3
unset room4
*��������� ������ �������
exec 3804 %self.id%
halt
~
#3807
��������� � �������� ������� � ���� ������~
2 z 100
~
eval one %speak%/100
eval two %self.vnum%/100
if (%one% != %two%)
  wzoneecho %speak% _&Y"� �������� �������� ���������� �������!" -- ��������� ����������� �� �����.&n
end
wzoneecho %self.vnum% _&Y"� �������� �������� ���������� �������!" -- ��������� ����������� �� �����.&n
wload obj 3899
~
#3808
�������� ������~
2 z 100
~
foreach item %self.objects%
  if (%item.vnum% == 3899)
    wpurge %item%
    wecho &Y��������� ������� ��������� ���������� ������� ������ �� �����.&n
  break
end
done
~
#3809
���������� ��������� ��������~
2 c 0
����������~
wait 1
if (%actor.level% < 32)
  wsend %actor% _�� ��� ��� �����?
  halt
end
if %arg.contains(����)%
  wecho _&G * * * ������������� �������� �������� * * *&n
  set stop 1
  global stop
  halt
end
if %arg.contains(�����)%
  wecho _&R * * * ��������� �������� ��������, � ������ �� ������! * * *&n
  set stop 0
  global stop
  halt
end
if %arg.contains(����������)%
  wecho _&Y * * * ���������� �������� �������� * * *&n
  wecho _&Y __________* ��������� �������� *&n
  set stop 1
  global stop
  detach 3800 %self.id%
  detach 3805 %self.id%
  detach 3806 %self.id%
  wecho _&Y __________* ������� ������� *&n
  set m %shiprooms1.words%
  set i 1
  while (%i% <= %m%) 
    set shiproom %shiprooms1.words(%i%)%
    set dir %dirs1.words(%i%)%
    set rdir %rdirs1.words(%i%)%
    set whard %whardes1.words(%i%)%
    wdoor %shiproom% %dir% purge
    wdoor %whard% %rdir% purge
    eval i %i%+1
  done
  wait 1s
  set m %shiprooms2.words%
  set i 1
  while (%i% <= %m%) 
    set shiproom %shiprooms2.words(%i%)%
    set dir %dirs2.words(%i%)%
    set rdir %rdirs2.words(%i%)%
    set whard %whardes2.words(%i%)%
    wdoor %shiproom% %dir% purge
    wdoor %whard% %rdir% purge
    eval i %i%+1
  done
  wait 1s
  wecho _&Y __________* ����������� ��������� *&n
  attach 3800 %self.id%
  attach 3805 %self.id%
  attach 3806 %self.id%
  set stop 0
  global stop
  %world.zreset(38)%
  wecho _&Y __________* ������� ������������ *&n
  halt
end
wsend %actor% ��������� �������: "����", "�����" � "����������".
~
#3810
���������� � �������������� ��������~
1 c 4
�����������~
if !%arg.contains(�������)%
  %send% %actor% ���� ������������� �����?
  halt
end
calcuid data 3898 mob
set whardes1 %data.global(whardes1)%
set whardes2 %data.global(whardes2)%
%send% %actor% �� ����������� ������������� � ��������, ������� ��������� ����� �� �������.
set i 1
while (%i% <= %whardes2.words%)
  if (%self.room% == %whardes1.words(%i%)%)
    set route1place %i%
  end
  if (%self.room% == %whardes2.words(%i%)%)
    set route2place %i%
  end
  eval i %i%+1
done
eval tmp %route1place%+%route2place%
if (%tmp% < 1)
  %send% %actor% ������, ������� �� �� ���������, �������� ����� ��������� �� ������.
  halt
end
set point1 %data.global(point1)%
set point2 %data.global(point2)%
set cities1 %data.global(cities1)%
set cities2 %data.global(cities2)%
set cond1 %data.global(cond1)%
set cond2 %data.global(cond2)%
if (%route1place% > 0)
  %send% %actor% "�������" ������� ������
  if (%cond1% <= 1)
    %send% %actor% ���-��� ���������� � ��������,
    %send% %actor% �������������� -
    eval temp %point1%-1
    if (%temp% < 1)
      set temp %whardes1.words%
    end
    %send% %actor% %cities1.words(%temp%)%
    %send% %actor% ����� ���������� -
  elseif (%cond1% == 2)
    %send% %actor% ��� � ����,
    %send% %actor% ����� ���������� -
  else
    %send% %actor% ������������ � ��������,
    *    eval point1 %point1%-1
    *    if (%point1% < 1)
    *      set point1 %whardes1.words%
    *    end
    %send% %actor% ����� -
  end
  %send% %actor% %cities1.words(%point1%)%
end
if (%route2place% > 0)
  %send% %actor% "������" ������� ������
  if (%cond2% <= 1)
    %send% %actor% ���-��� ���������� � ��������,
    %send% %actor% �������������� -
    eval temp %point2%-1
    if (%temp% < 1)
      set temp %whardes2.words%
    end
    %send% %actor% %cities2.words(%temp%)%;
    %send% %actor% ����� ���������� -
  elseif (%cond2% == 2)
    %send% %actor% ��� � ����,
    %send% %actor% ����� ���������� -
  else
    %send% %actor% ������������ � ��������,
    %send% %actor% �������������� -
    *    eval point2 %point2%-1
    *    if (%point2% < 1)
    *      set point2 %whardes2.words%
    *    end
  end
  %send% %actor% %cities2.words(%point2%)%.
end
~
#3898
Dummy trig~
0 g 100
~
wait 1
say ��� �� ����� �������? ������������ ���� �� ������!
~
$~
