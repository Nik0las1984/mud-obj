#15300
�������� ����~
0 r 100
~
wait 7s
if %random.5% == 1
  mecho _�������� ���� ������� ���.
end
~
#15301
������� �������~
0 r 100
~
wait 7s
if %random.5% == 1
  mecho _������� ��������� ��� ���� ���.
end
~
#15302
���-���~
0 r 100
~
wait 7s
if %random.5% == 1
  mecho _����� ���������� ����� �������������.
end
~
#15303
������� ��������~
0 q 100
~
wait 1s
say � �� ���� ���� ����������?!
���
���� .%actor.name%
~
#15304
������ ��������~
0 q 50
~
say ��, ��� � ��� ������...
�� ������ ����������
~
#15305
����� ������~
0 r 100
~
wait 1
say ����� ��� ������, �������� ������...
mecho ����� ������ �������� ������ �����
��
~
#15306
����� �������~
0 q 100
~
mecho  _�����, ������, �����������.
wait 1s
if %actor.sex% == 1
  say ����������, ������, � �������� ��� �� ������� ���.
  say �������� � ����� ����� �����-�������.
  say ������ ���� ������, ���� �������� ������ ����
  say ������� ����� ��-�� ��� �� �����.
  wait 1s
  mecho  _����� ������ ��������.
  wait 2s
  say � �� �������� �� ���� �����, ���� �� ��� ���������� - ��� ��������� �� ������.
  say ������, ������, ��� ������ ��� ���� ��� ������.
  say �� ��� � � ������ �����, �� ������ ��� ���...
  say ����� �������� ���, ������ �������, �������� �������?
  wait 2s
  mecho  _������ ����� �������� � �������� �� ������� ������.
else
  say ����������, �������, � �������� ��� �� �������� ���.
  say �������� � ����� ����� �����-�������.
  say ������ ������� ������, ���� �������� ������ ����,
  say ������� ����� ��-�� ��� �� �����.
  wait 1s
  mecho  _����� ������ ��������.
  wait 2s
  say � �� �������� �� ���� �����, ���� �� ��� ���������� - ��� ��������� �� ������.
  say ������, ������, ��� ������ ��� ���� ��� ������.
  say �� ��� � � ������ �����, �� ������ ��� ���...
  say ����� �������� ���, ����� ������, �������� �������?
  wait 2s
  mecho  _������ ����� �������� � �������� �� ������� ������.
end
~
#15307
��������� ��������~
1 c 4
������~
wait 1s
%echo% ����� ������ ����� ���������, ��������� �� ����� � �������� ������������ � �������!
%echo% �������� ������ ���������� �� ��������.
%echo% �������� ������� : '��� �� �������� ���� �� ���� �������?'
%echo% �������� �������� ��������.
wait 1s
%echo% �������� ������� : '������� ���! � ����� ������, � ������.'
%echo% �������� ������� : '�������� � ����, �� ����������� ��� ������������.'
%echo% �������� ������ �������� � ������� ����, � ������ ������� �� ����.
%load% mob 15310
%teleport% %world.mob(15310)% 15318
attach 15312 %world.mob(15304)%
detach 15309 %world.mob(15304)%
detach 15310 %world.mob(15304)%
%purge% %self%
~
#15308
����� ����� � ������~
0 d 1
������ ������ �������� ������~
set questor153 %actor.id%
global questor153
say ��, ������������� ����, %actor.name%.
say �� ���, ����� � ������, ��� ����� ����������,
say ����� ��������� ����, ��� ������ ��� ������ ������.
calcuid leshiy 15304 mob
detach 15305 %leshiy.id%
attach 15309 %leshiy.id%
attach 15314 %self.id%
detach 15306 %self.id%
remote questor153 %leshiy.id%
detach 15308 %self.id%
~
#15309
����� ����������~
0 r 100
~
wait 1s
say �� ���� ���� �������?
���� 
attach 15310 %self.id%
~
#15310
����� �������~
0 d 1
������~
wait 1s
if %actor.id% == %questor153.id%
  if (%world.curobjs(15306)% > 0)
    � ������ ������� ��� �������, ����� ��� ���� ������
    halt
  end
  say ������� ���� ������?
  say �-�-�...�� ������� ����� ���������� ������?
  ���
  say �� ���-�� ��� ��� �����, ��� ��� �� �����.
  say ��� � ���� ������, ���� �������� ���.
  wait 3s
  say ���������� �� ��� ���� ����, ��������.
  say ���-�� ��������� � �� ������, ������-�� ��� ���� ����.
  say �� ��� �����, ����� ���� ������ ����,
  say �������, ������������, ����� �� � ������ ���� ��� ��.
  ���
  say � ������� ��� ��������� ���������� ��������.
  say ��������, ��� ��������� �������.
  ���
  wait 1s
  say � � � ��� �� ����... �� ��� ��������� ������� ����� ������.
  say �� � ������...
  mecho ����� ��������� �������� �������� ������� ������ � ������ �� �����.
  wait 2s
  say ����� ��� ��, � � ������ ���� � ��������� ����������.
  say �����, �� ������ ��� ��������� � ������ �� ���������� ����,
  say � ������������ � ������. � ���� ��������� ����� �� �� �������. 
  say ��� ������ ������ ��� ������ � �������,
  say ����� ����� ��� �� ������ - � ����������� ��� ������� � ��������.
  attach 15315 15337
  run 15315 15337
end
~
#15311
������� �������~
0 u 100
~
if (%actor.id% == %self.id%)
  halt
end
eval item %actor.eq(12)%
if %item.vnum% != 15308
  if %actor.sex% == 1
    say ��� �� �����! ��������, ������� ������� ����� �������!
    msend %actor% _������� ��������� � ��� � ������� ������ ��� ��������!
    msend %actor% _�� ������ ����������� � ����� �������������� ����� ������ ����. ��� ����������!
    msend %actor% _���! ���-�-�-�-�!!! �� ��� �� ������������� ����.
    msend %actor% _�� ������ ������ ��� ��� ������, ���� �� ������� ��� ��������� �������, ����������� ���� ��� ������ ���.
    msend %actor% _��� ����� �������, �� ���������� ��� ����� �������� ���...
    mechoaround %actor% _������� ��������� � %actor.vname%, � ������ ��� ������� ��������!
    mechoaround %actor% _�� � ������ ������ ��� %actor.name% ������ �����������, � �������� ��� �����.
    %actor.hitp(1)%
    calcuid rusroom 15361 room
    exec 15316 %rusroom.id%
  else
    say ��� �� �����! ��������, ������� ������� ��� ����!
    msend %actor% _������� ��������� � ��� � ������� ������ ��� ��������!
    msend %actor% _�� ������ ����������� � ����� �������������� ����� ������ ����. ��� ����������!
    msend %actor% _���! ���-�-�-�-�!!! �� ��� �� ������������� ����.
    msend %actor% _�� ������ ������ ��� ��� ������, ���� �� ������� ��� ��������� �������, ����������� ���� ��� ������ ���.
    msend %actor% _��� ����� �������, �� ���������� ��� ����� �������� ���...
    mechoaround %actor% _������� ��������� � %actor.vname%, � ������ �� ������� ��������!
    mechoaround %actor% _�� � ������ ������ ��� %actor.name% ������ �����������, � �������� ��� �����.
    %actor.hitp(1)%
    calcuid rusroom 15361 room
    exec 15316 %rusroom.id%
  end
else 
  msend %actor% _������� ���������� ������� � ���, �� ��� ���� ����� �� ������ �� ���� ���������� � �������� ����!
  mechoaround %actor% _������� ���������� ������� � %actor.dname%, �� ��� ���� ����� �� ������ �� ���� ���������� � �������� ����!
end
return 0
~
#15312
����� ���� ������~
0 q 100
~
wait 1s
if %actor.id% == %questor153.id%
  say ��, ������������� ����, %actor.name%.
  say �����%char.q% �� ���, ���� �� ��� ����������� ���������.
  ��� ��������
  say ������ � ��� ������� ���� ��������.
  say ���� � ���� ��������� ������ ������ �� ������,
  say ��� ������ ������� ��������� �����, ����� ��������.
  say ��, �����, � ��� ������ ���� ���� ������.
  wait 4s
  %echo% ����� ����� ����� �������� � ���� ����� ������� � ������� �����.
  wait 4s 
  say ���, �����! ����� ���.
  say ��������� ��, � ������� ������ � ���� ������� �� ������.
  %load% obj 15308
  ���� ����.����� %actor.name%
  wait 2s
  say ��, ���� ��� ����������� - �����, � ���� �� ��� ��������� ���-�� ������ ����
  if %random.1000% <= 75
    %load% obj 1710
    � ����� � ��� ���� �������. ��� �� ��� �������� ���� - � ����� ���� ��� ������ ������ ����� �� ����!
    ���� ����� %actor.name%
  end
  attach 15313 %self.id%
  detach 15312 %self.id%
end
~
#15313
����� ���� ��� ������~
0 d 1
��� ����~
if %actor.id% == %questor153.id%
  say ���? ��� ���� �����?
  say ������ �����...
  wait 4s
  if %world.curobjs(15308)% < 5
    %echo% ����� ������� ������ � ����� �����, ����� ������ �� ���� ��� ���� ����.
    wait 3s
    say �� �����, ��� ����� - ����� ���.
    %load% obj 15308
    ���� ����.��� .%actor.name%
  else
    %echo% ����� ������� ������ � ����� �����, ����� �������� � ������� ������.
    wait 3s
    say � ����, ��������� �����-��!
    ���
  end
end
~
#15314
����� ����������~
0 q 100
~
if %actor.id% == %questor153.id%
  if %exist.mob(15316)%
    say �� ��� ��� � ���������?
  else
    say ��, �� �������� ���� �������?
    say �� ����� ���� � ����, � �� ������ ���� �������� �� ������.
    say ���������, � ���� ��������� ���-������ �������� ��� ���.
    say ��� ������ �� �������� � ���� ����...
    say �� � ������� ������ �����, � ������������� �� ������ � ���.
    wait 3s
    %echo% ����� ����� ���-�� ������ � �������.
    wait 3s
    say ���, �����! ����� ��� ����������.
    eval rnd %random.100%
    if      %rnd% < 3
      mload obj 1722 // ����� � ���������� ����������
      ���� ��� .%actor.name%
    elseif  (%rnd% < 18) && (%world.curobjs(208)% < 50)
      mload obj 208 // ���� ����������
      ���� ��� .%actor.name%
    elseif %rnd% < 30
      mload obj 500 // ����� �����
      ���� ��� .%actor.name%
    elseif (%rnd% < 40) && (%world.curobjs(15309)% < 30)
      mload obj 15309
      ���� ��� .%actor.name%
    elseif (%rnd% < 50) && (%world.curobjs(15310)% < 10)
      mload obj 15310
      ���� ��� .%actor.name%
    elseif (%rnd% < 60) && (%world.curobjs(15311)% < 10)
      mload obj 15311
      ���� ��� .%actor.name%
    elseif (%rnd% < 70) && (%world.curobjs(15312)% < 10)
      mload obj 15312
      ���� ��� .%actor.name%
    elseif (%rnd% < 80) && (%world.curobjs(15313)% < 10)
      mload obj 15313
      ���� ��� .%actor.name%
    elseif (%rnd% < 90) && (%world.curobjs(15314)% < 10)
      mload obj 15314
      ���� ��� .%actor.name%
    elseif (%rnd% <= 100)
      mload obj 501 // ����� � �������� �����
      ���� ��� .%actor.name%
    end
    detach 15314 %self.id%
  end
end
~
#15315
�������� ������~
2 z 0
~
%load% obj 15306
~
#15316
������� ���������� ������~
2 z 100
~
%teleport% %actor% 15361
%send% %actor%  �� � ������ ������ � ���� �� ������ �����...
%send% %actor%  ������ ����� �� �������� ��������, ������� ������� �� ���, � ���� ���� ������� � ������ �����.
%send% %actor%  ���������� �������� ��������� ���...
%echoaround% %actor% �� ������ ��� ���� %actor.rname% �������� ��������� � ������.
%echoaround% %actor% �� ������ �������� ��� �� �����, � ���������� �������� ��� � ��������.
%echoaround% %actor% ������� %actor.iname% �������...
~
#15317
������ �������-��������~
0 f 100
~
if %random.1000% <= 80
  %load% obj 1718
end
~
$~