#77800
����������� ������ ���~
0 r 100
~
wait 1
msend %actor% �� � ������ ������ ��������� ����, ����� �� ��������� ������������� ��� ������, �������, ��� �����, ����.
mechoaround %actor% ~~%actor.name% � ������ �����%actor.g% ��������� ����, ����� �� ��������� ������������� ������, �������, ��� �����, ����.
mecho �� ���� � ��� ����� ��������...
south
mpurge %self%
~
#77801
������� � �����������.~
2 eg 100
~
wait 1
wecho �������� ������ ������������� ���� � ������������� ���� ����������� �������-������� ����. ������ ��� ��������.
~
#77802
������ � ������~
2 c 1
���� ������ ������ ������~
wait 1
if %arg.contains(�����)%
  wsend %actor% �� ������ ������������ ���������� � �����
  wechoaround %actor% ~~%actor.name% �����%actor.g% ������������ ���������� � �����.
  wait 1s
  *������������� ����� ������������ � ����� ������.
  wload o 77801
  wsend %actor% ������ ������ �� ����������� ��������, �� ����� ����� ������������ ����������� ������.
  detach 77802 %self%
else
  wsend %actor% ��� ������-�� �����?
end
~
#77803
����� �����~
0 q 100
~
wait 1
mecho ����� �����������: �����... �����...
mecho ����� ������ ����������: �� ������ �������� ��� ����, ������ ������� �����!
mecho ����� ������� ��������: � ����� ����� �������!!! �� ������� ���� ����, ����!!!
~
#77804
���� � ����������� ��������~
2 e 50
~
wait 1
if %actor.dex% < 15 
  wdamage %actor.name% 50+%random.num(20)%
  wsend %actor%  �� ����������� ����������� � ������ ���, �������� �� �����.
end
~
#77805
������������ ������ � ������~
1 g 100
~
wait 1
osend %actor% ������ ��������� ����� � ��� � �����!
oechoaround %actor% � ����� � %actor.rname% ��������� ������!
odamage %actor% 250+%random.num(50)%
opurge %self%
~
#77806
��������� ������~
0 j 100
~
wait 1
* *��� �� ������� �������
if %object.vnum% == 77801
  mpurge %object%
  mecho ������ ����������� ��������� �� ����������� ����� � �������� ��������� ����������� �������������...
  *�������� ������� � ���� ���������� �����
  *������ ���� �� ������ ������ - �������� 77809
  *���� 77824 77827 77830
  if (!%world.curobjs(77824)% || !%world.curobjs(77827)% || !%world.curobjs(77830)%)
    mload o 77809
    say ���, �����.
    ���� �������� .%actor.iname% 
    *������ ���� �� ������ ������ - ��������� 77810
    *���� 77823 77826 77829
  elseif (!%world.curobjs(77823)% || !%world.curobjs(77826)% || !%world.curobjs(77829)% )
    mload o 77810
    say ���, �����.
    ���� ��������� .%actor.iname% 
    *������ ���� �� ������ ������ - ����� 77811
    *���� 77822 77825 77828
  elseif (!%world.curobjs(77822)% || !%world.curobjs(77825)% || !%world.curobjs(77828)% )
    mload o 77811
    say ���, �����.
    ���� ����� .%actor.iname% 
    *���� ��� ���� ����������, ������ ����� ������, ���� ��������� �������.
  else
    eval rnd %random.3%
    switch %rnd%
      case 1
        mload o 77809
        say ���, �����.
        ���� �������� .%actor.iname%
      break
      case 2
        mload o 77810
        say ���, �����.
        ���� ��������� .%actor.iname% 
      break
      case 3
        mload o 77811
        say ���, �����.
        ���� ����� .%actor.iname% 
      break
    done
  end
else
  say � � ���� �� �������.
  ���� %oblect.name% .%actor.iname%
end
~
#77807
����������� �������~
0 q 50
~
msend %actor% ������ ������� �������� �� ��� � ��������� ���� ������...
~
#77808
���� ������ �������~
0 j 100
~
wait 1
if %object.vnum% == 77805
  eval sacred 1
  global sacred
  say ������� ������ ��� ���� ���������.
  mpurge %object%
elseif %object.vnum% == 77802
  eval golden 1
  global golden
  say ��... ���, ������ �������?! ������� �����!
  mpurge %object%
elseif %object.vnum% == 77803
  eval silver 1
  global silver
  say ��... ���, ������ �������� ����� �����...
  mpurge %object%
elseif %object.vnum% == 77804
  eval steel 1
  global steel
  say ��... ��� ��������� ������ - ������ �������.
  mpurge %object%
elseif %object.vnum% == 77809
  eval gemstone krovavik
  global gemstone
  say ������� ������ ��� ��������� ����.
  mpurge %object%
elseif %object.vnum% == 77810
  eval gemstone aqua
  global gemstone
  say �������� ������ � ����! ��� ���� ������.
  mpurge %object%
elseif %object.vnum% == 77811
  eval gemstone diamond
  global gemstone
  say ����� ������� ������! �������� ��� ������.
  mpurge %object%
else
  say ����� � ���� � ������ ������.
  ������� %object.name%
end
if %gemstone% && %sacred% && (%golden% || %silver% || %steel%)
  switch %gemstone%
    case krovavik
      if (!%world.curobjs(77824)% && %golden%)
        mecho ������ ����� � �������� � ������� �������
        wait 2s
        mload o 77824
        say ���, �����.
        ���� ��� .%actor.iname%
        detach 77808 %self%
        halt
      elseif (!%world.curobjs(77827)% && %silver%)
        mecho ������ ����� � �������� � ������� �������
        wait 2s
        mload o 77827
        say ���, �����.
        ���� ��� .%actor.iname%
        detach 77808 %self%
        halt
      elseif (!%world.curobjs(77830)% && %steel%)
        mecho ������ ����� � �������� � ������� �������
        wait 2s
        mload o 77830
        say ���, �����.
        ���� ��� .%actor.iname%
        detach 77808 %self%
        halt
      else
        mecho ������ ����� � �������� � ������� �������
        wait 2s
        mecho ������ ������������� ��������� �� ���.
        � ����... �� �����... �� ������... ���� ���� ������ ������ - ����� �������� ���.
      end
    break
    case aqua
      if (!%world.curobjs(77823)% && %golden%)
        mecho ������ ����� � �������� � ������� �������
        wait 2s
        mload o 77823
        say ���, �����.
        ���� ��� .%actor.iname%
        detach 77808 %self%
        halt
      elseif (!%world.curobjs(77826)% && %silver%)
        mecho ������ ����� � �������� � ������� �������
        wait 2s
        mload o 77826
        say ���, �����.
        ���� ��� .%actor.iname%
        detach 77808 %self%
        halt
      elseif (!%world.curobjs(77829)% && %steel%)
        mecho ������ ����� � �������� � ������� �������
        wait 2s
        mload o 77829
        say ���, �����.
        ���� ��� .%actor.iname%
        detach 77808 %self%
        halt
      else
        mecho ������ ����� � �������� � ������� �������
        wait 2s
        mecho ������ ������������� ��������� �� ���.
        � �� �������� ���� ������ �� ���� ������. ������� ������ - ��������� �����
      end
    break
    case diamond
      if (!%world.curobjs(77822)% && %golden%)
        mecho ������ ����� � �������� � ������� �������
        wait 2s
        mload o 77822
        say ���, �����.
        ���� ��� .%actor.iname%
        detach 77808 %self%
        halt
      elseif (!%world.curobjs(77825)% && %silver%)
        mecho ������ ����� � �������� � ������� �������
        wait 2s
        mload o 77825
        say ���, �����.
        ���� ��� .%actor.iname%
        detach 77808 %self%
        halt
      elseif (!%world.curobjs(77828)% && %steel%)
        mecho ������ ����� � �������� � ������� �������
        wait 2s
        mload o 77828
        say ���, �����.
        ���� ��� .%actor.iname%
        detach 77808 %self%
        halt
      else
        mecho ������ ����� � �������� � ������� �������
        wait 2s
        mecho ������ ������������� ��������� �� ���.
        � ������ ������������� ���� ������ ��������. �� ����� � ���� ������� ����� ����. ���� ������ ������.
      end
    break
  done 
end
~
#77809
���������� ����~
0 j 100
~
wait 1
*������� ����������� ��������� ����������
eval rnd %random.100%
*������ ��� �� ��� ����
if %object.vnum% == 77806
  *���� ������
  mecho ������ ���� ������� ����� ���� � ����� � ����
  wait 1s
  *����������� ������
  if %rnd% < 70
    mload o 77802
    say ��� � ������. �����
    ���� ������ .%actor.iname%
  else
    say ��... ������ � ���� ����. ��� ��������.
    ���
  end
  mpurge %object%
elseif %object.vnum% == 77807
  *���� �������
  mecho ������ ���� ������� ����� ���� � ����� � ����
  wait 1s
  *����������� ������
  if %rnd% < 80
    mload o 77803
    say ��� � ������. �����
    ���� ������ .%actor.iname%
  else
    say ��... ������ � ���� ����. ��� ��������.
    ���
  end
  mpurge %object%
elseif %object.vnum% == 77808
  *���� ������
  mecho ������ ���� ������� ����� ���� � ����� � ����
  wait 1s
  *����������� ������
  if %rnd% < 90
    mload o 77804
    say ��� � ������. �����
    ���� ������ .%actor.iname%
  else
    say ��... ������ � ���� ����. ��� ��������.
    ���
  end
  mpurge %object%
else
  say �� � ����� ��� ���?..
  ����
  ���� %object.name% .%actor.iname%
end
~
#77810
��� ������~
0 q 100
~
wait 2
����
say �� �����! ������� ��� ������ ������. ��, ��� �� ��� �������� ��� ����!
����� .%actor.iname%
detach 77810 %self%
~
#77811
������������� ������~
0 d 1
������ ������~
wait 1
say ��� �������!
��� .%actor.iname%
wait 1s
say ������ ���������� �� ������ �������. ��� ������� ���� ������ �����-�� ������ ������ ���������..����! �� ���������� �������� ���!
say � ����� � ���� ��� ����������.
mecho ����� ������ ����� � ������������� �������...
mecho ���-�� �� ��� ��������� ��� ������, �� ��� ��������� - �� �� ���������.
detach 77812 %self%
detach 77811 %self%
~
#77812
������ ������~
0 q 100
~
wait 1
msend %actor% ����� �������� �� ���.
if %actor.sex% == 1
  ���� %actor.name% ����������, ������ �������.
else 
  ���� %actor.name% ����������, ������ ������.
end
msend %actor% ����� ���������� ��������� �� ���.
wait 1s
���� %actor.name% ����, ������ ����� �� ���������?
���� %actor.name% �� ������ ��� � ������.
���� %actor.name% �������� � ��� ��� �������� ����.
���� %actor.name% ���� � ���� ���� ������ �� ��� ��������� ������...
���� %actor.name% � ����� �������� � ���� �����. ��� ������ �� ��������
wait 1s
���� %actor.name% � � ���� ������.
���� %actor.name% ������ � ��� ���� ����. ���� ������ ������� ������.
���� %actor.name% ����� ��� ���� � ������� �� ����� �������� ���������.
���� %actor.name% � ������� ���� � ������ ���� ������ ��� ���� ������ ��� ��� �� �����.
wait 1s
���� %actor.name% �������!
msend %actor% ����� �������� ��������� �� ���.
~
#77813
���� ���� ��� ��������~
0 j 100
~
wait 1
if %object.vnum% == 77813
  eval rune 1
  global rune
  mecho ����� �������������� ��������� �� ����.
  mpurge %object%
elseif %object.vnum% == 77812
  eval woodenplate 1
  global woodenplate
  mecho ����� ����������� ��������� �� ��������.
  mpurge %object%
else
  say � � ���� �� ��������.
  ������� %object.name%
end
if (%woodenplate% && !%rune%)
  say ��� ���� � ��������. ������� ���� ��������.
elseif (%rune%  && !%woodenplate%)
  say �������! ��, ������ ������ ����� ��������.
elseif (%rune% && %woodenplate%)
  say �� ����. ������ ��������� � ����.
  mload o 77805
  ���� ������� .%actor.iname%
  �����
  � � ������ ������...
  wait 1s
  � ��� ���� ���� ����������� �����. ����� � ������. ��� ������� - ������ ������� ������.
  wait 1s
  � ��� ���� ��������� ����� ���� ������������� �������. ��� ��� ������� �������.
  � �� ����� �������� ������ �� ����. ���� ������� � �������. ������ ��� ���� ������.
  � � ��� � ���� �� ��������. ������ ���� ����� ���� �� ����, �� �������� ������ ���� �������� ���� ��������.
  �����
  wait 1s
  � �� ������ ���� ����!
end
~
#77814
ZoneReset~
2 f 100
~
calcuid reset 77816 room
attach 77802 %reset.id%
~
#77815
������ �����������~
0 f 100
~
if (%world.curobjs(77816)% < 6) && (%random.10% <= 1)
  mload obj 77816
end
~
#77816
������ ������~
0 f 100
*~
if (%world.curobjs(77814)% < 4) && (%random.10% <= 1)
  mload obj 77814
end
if (%world.curobjs(77831)% < 6) && (%random.10% <= 1)
  mload obj 77831
end
~
#77817
������ ����� ������~
0 f 100
*~
if (%world.curobjs(77820)% < 4) && (%random.10% <= 1)
  mload obj 77820
end
if (%world.curobjs(77834)% < 6) && (%random.10% <= 1)
  mload obj 77834
end
if (%world.curobjs(77833)% < 4) && (%random.10% <= 1)
  mload obj 77833
end
~
#77818
������ ����~
0 f 100
*~
if (%world.curobjs(77839)% < 4) && (%random.10% <= 1)
  mload obj 77839
end
if (%world.curobjs(77847)% < 6) && (%random.10% <= 1)
  mload obj 77847
end
~
#77819
������ �������~
0 f 100
~
if (%world.curobjs(77852)% < 6) && (%random.10% <= 1)
  mload obj 77852
end
~
#77820
������ �����~
0 f 100
~
if (%world.curobjs(77821)% < 6) && (%random.10% <= 1)
  mload obj 77821
end
~
#77821
������ �����~
0 f 100
~
if (%world.curobjs(77843)% < 6) && (%random.10% <= 1)
  mload obj 77843
end
~
#77822
������ �������~
0 f 100
*~
if (%world.curobjs(77848)% < 4) && (%random.10% <= 1)
  mload obj 77848
end
if (%world.curobjs(77849)% < 4) && (%random.10% <= 1)
  mload obj 77849
end
if (%world.curobjs(77850)% < 4) && (%random.10% <= 1)
  mload obj 77850
end
if (%world.curobjs(77851)% < 4) && (%random.10% <= 1)
  mload obj 77851
end
~
#77823
������ ��������~
0 f 100
~
if (%world.curobjs(77842)% < 6) && (%random.10% <= 1)
  mload obj 77842
end
~
#77824
������ �����~
0 f 100
~
if (%world.curobjs(77836)% < 6) && (%random.10% <= 1)
  mload obj 77836
end
~
#77825
������ �����~
0 f 100
~
if (%world.curobjs(77837)% < 6) && (%random.10% <= 1)
  mload obj 77837
end
~
#77826
������ ������~
0 f 100
~
if (%world.curobjs(77838)% < 6) && (%random.10% <= 1)
  mload obj 77838
end
~
#77827
������ �������~
0 f 100
~
if (%world.curobjs(77846)% < 6) && (%random.10% <= 1)
  mload obj 77846
end
~
#77828
������ ���������~
0 f 100
~
if (%world.curobjs(77815)% < 6) && (%random.10% <= 1)
  mload obj 77815
end
~
#77829
������ ������~
0 f 100
~
if (%world.curobjs(77854)% < 6) && (%random.10% <= 1)
  mload obj 77854
end
~
#77830
������ ������~
0 f 100
~
if (%world.curobjs(77853)% < 6) && (%random.10% <= 3)
  mload obj 77853
end
~
#77831
������ ���������~
0 f 100
~
if (%world.curobjs(77818)% < 6) && (%random.10% <= 1)
  mload obj 77818
end
~
$~
