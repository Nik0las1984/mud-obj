#33900
��������~
0 f 10
~
if %world.curobjs(33901)% < 100
  mload obj 33901
end
if %world.curobjs(33912)% < 50
  mload obj 33912
end
~
#33901
��������� �������~
0 f 10
~
if %world.curobjs(33916)% < 50
  mload obj 33916
end
~
#33902
������ �������~
0 f 10
~
if %world.curobjs(33915)% < 10
  mload obj 33915
end
~
#33903
������ �������~
0 f 10
~
if %world.curobjs(33904)% < 10
  mload obj 33904
end
~
#33904
����� �������~
0 f 10
~
if %world.curobjs(33903)% < 5
  mload obj 33903
end
~
#33905
��������~
0 f 10
~
if %world.curobjs(33902)% < 6
  mload obj 33902
end
~
#33906
���������_���-��������~
0 q 100
~
wait 1
msend %actor% ����� ���� ����������� �������� ��� � ������ �� ���.
mechoaround %actor% ����� ���� ����������� �������� %actor.vname% � ������ �� ���.
mecho ���� �� ��������� ���������.
wait 1s
msend %actor% ����� ����� ����� �������� �� ���.
mechoaround %actor% ����� ����� ����� �������� �� %actor.vname%.
wait 1s 
���� %actor.name%
say ��, ������� �� ������� ��� ������, %actor.name%...
wait 1s
say �����%actor.g% �� �� ��� ������?
calcuid voin 33925 mob
attach 33907 %voin.id%
~
#33907
������~
0 d 0
�� ������~
wait 1
say �������!
wait 5
mechoaround %actor% ������ ����� ������� �������, ������ ���������
mechoaround %actor% � ����� ���-�� ���� �������� %actor.dname%.
msend %actor% ������ ����� ������� ������� � ������ ���������.
tell %actor.name% � ��� � ������� ���������� �������� ����.
tell %actor.name% ��� �������� ����� ������ ��������.
tell %actor.name% ��� ���� �������� ��� �����!
tell %actor.name% ��, � ���������, �� ������� ������ � ��� ���...
���
wait 10
tell %actor.name% � � ��� ��� � ��� ������ ����������� ���-�� ��������.
tell %actor.name% ������� �� ������ ���, ��� ������ �����, ������� ��� � ������.
tell %actor.name% � �� ��������� ���� �� �����...
tell %actor.name% � ����� ���, �� �� �����.
wait 5
tell %actor.name% ��������, �� ������� ���, %actor.name%, �� ��� �������� �������.
tell %actor.name% ���, � ��� ����, �������� ��� ���������� ����.
tell %actor.name% ��� ��������� ������������ ����, ���� �� ������� �� ����.
wait 1s
say ��, ���� �� �����! 
wait 5
msend %actor% ���� ���������� � ��� � ����� ������� �� ���.
mechoaround %actor% ���� ���������� � ���-�� �������� �� ��� %actor.dname%
msend %actor% �� ��� ������� � �����-�� ����������� �����.
msend %actor% �� ����� �� ����� ��� ���...
wait 1s
mecho ���� ������� ����� � ��������� ���������� � ���� ����.
eval questor339 %actor.name%
worlds questor339
detach 33906 %self.id%
calcuid gena 33926 mob
attach 33909 %gena.id%
detach 33907 %self.id%
~
#33908
�������� ~
0 q 100
~
wait 1
msend %actor% �������� ��������� ��� � ������ �� ���.
mechoaround %actor% ������� ��������� %actor.rname% � ������ �� ���.
wait 1s
msend %actor% - �� �� �������� ���� ��� �� ���� ����, %actor.name%!
msend %actor% ����� ����� ��� ������ ��� ������������ � �����������.
mechoaround %actor% ������� ������������ %actor.vname% � �����������.
msend %actor% ���... ������ ���� ���������, ��� �� �������, � ������ ����� �������� ��������.
mechoaround %actor% �� ������� %actor.vname%! �� ������ ��� ������� ������ ���!
~
#33909
�����������~
0 c 0
�������~
if (%arg.contains(������)% || %arg.contains(����)% || %arg.contains(����)%) 
  if %actor.name%==%questor339%
    wait 2
    calcuid gena 33926 mob
    msend %actor% ������� ��������� �� ��� ������� �������, ���������� � ��������� �������.
    attach 33915 %self.id%
    run 33915 %self.id%
  else
    wait 2
    msend %actor% ������� ��������� �� ��� ������� �������, ����������
    msend %actor% � ����� �����������.
  end
else
  return 0
end
~
#33910
������������~
0 q 100
~
wait 1s
msend %actor.name% ������ �������� ������, �� ��������� ��������� � ��������� ������ ������, �� ������� ���.
~
#33911
�������������~
0 q 100
~
if (%actor.name%!=%questor339%)
  halt
end
wait 2
if %exist.mob(33927)%
  msend %actor.name% �������� ����������� � ��� � ������ ���� ��������.
  tell %actor.name% %actor.name%, � ������ ���� ���� �� ���� �������� �������.
  mechoaround %actor% ������� ��������� � %actor.dname% � ����� ��� ������ ��������.
  tell %actor.name% �����, ������� �� ������� �������, ����� ��������!
  tell %actor.name% � ��� �������� ������� �� ����, � ����� �� ����� �� ������.
  tell %actor.name% ������ ��, � ���� ���� �� ������� ��� ��������.
  mecho ������� ����������� ������ � �������������� � ����� ����������.
  calcuid vdova 33910 mob
  attach 33916 %vdova.id%
end
detach 33911 %self.id%
~
#33912
����������������~
0 q 100
~
wait 1s
msend %actor% ������ �������� ������, �� ��������� ��������� � ��������� ������ ������, �� ������� ���.
if (%actor.name%==%questor339%)
  if %exist.mob(33927)%
    wait 1s
    msend %actor% ���������� ������ ������ �� ��� ����� � ������� � ������ �� ���.
    msend %actor% - �, �����. ����, �������, �������� ���� �������. �� ��� �...
    wait 1s
    msend %actor% - �� �������� ���������� ���� - ������ ��� �� ���, � ����� �, ��������, ������ ����.
    msend %actor% ���� ����� ������� ������ ������.
    if %exist.mob(33915)%
      calcuid nichiy 33915 mob
      attach 33913 %nichiy.id%
    end
    attach 33930 %self.id%
    detach 33912 %self.id%
  end
end
~
#33913
���������������~
0 m 1
~
wait 1
if %amount% < 100
  say ������� ��������, �� ��������� ���� ��� �� ������� �����!
  halt
end
switch %myvar%
  case 1
    say �� �������� ����� ���������� ����!
    ����
    wait 1
    mecho ������ �������� ����� ������ ��� ����� ��� ���-��.
    set myvar 2
    global myvar
  break
  case 2
    say ������ ���������� ��� �� �����, ������� ���� �� �������� ���������.
    wait 1
    mecho ������ �������� ����� ������ ��� ����� ��� ���-��.
    set myvar 3
    global myvar
  break
  case 3
    say ��� ���� �������, ��� ��� ���� � �������� ���! ������� �������!
    wait 1
    mecho ������ �������� ����� ������ ��� ����� ��� ���-��.
    set myvar 4
    global myvar
  break
  case 4
    say � ��� ���������� �� � ����������. ����� ���� ����� �� ������������.
    wait 1
    mecho ������ �������� ����� ������ ��� ����� ��� ���-��.
    set myvar 5
    global myvar
  break
  case 5
    say � ��� �������, ����� ������� ���� ���� �������, ������� �� ������� � ������ ����...
    wait 1
    mecho ������ ��������, ����� ����������, ������� � ����� � ������.
    set myvar 0
    global myvar
    mpurge %self%
  break
  default
    say �������� �������, ����, �� �� ���������� �� ���� �����!
    wait 1
    mecho ������ �������� ����� ������ ��� ����� ���-�� ����� ������.
    set myvar 1
    global myvar
  break
done
~
#33914
������������~
0 q 100
~
%actor.wait(2)%
wait 1
mecho ������ ���� ��� � �������� � ��� ���� ������� ����.
msend %actor% �� ���������� �� ������� ��������.
wait 1s
msend %actor% �������� ���� ������, � ��� �� �������, ��� ������, ���� ������ ��� ��� ������.
msend %actor% ��� ���� �� ��� �� � ����� - ����� 100, � ����� 200, ���� ��������� �� �����.
wait 2
msend %actor% ������ ��������� �� ��� ������� � ���������.
~
#33915
����������2~
0 z 100
~
%actor.wait(3)%
wait 2
if %actor.sex% == 1
  msend %actor% ��... ��... ������� ���� ��������... ����� �� ����� ����� �� �����... 
  wait 1s
  say %actor.name%, � ���� �� �� ������ ��������. 
  say ��� ��� ����� ����������� ���������. 
  say � � ��������� ����� �� �������� � �������� �����.
  say ���� � �� ����� ��������.
  wait 1s
  say ��� ���� ��� �����. ��� ���, ��� �������, ��� ���� ����� ��� ���� ������.
  say ������, ��� ���� ������ ����������.
  wait 1s
  msend %actor% ������� ������ ��� � ����� ����������: "����� ����� ����, � �� �� ���������!"
  mechoaround %actor% ������� ������ %actor.vname% � ����� ����������.
else
  msend %actor% �� ��� �, ������� ����� ������ �������... �� ������� ��� �����.
  wait 1s
  say %actor.name%, �� ������� �������, � �� ������� �� ������ ������� �� ������.
  say ��� �������, ���� ����� ��� ���� ����� ����� ����.
  say �� ����� ������� � �����-�� �����, ����� ��� ������ �� �����������.
  say � ����� � ���� ����� �������, ������ - ��� ������������ ��� � ���� ��������.
  say ����� ���� ����� ������ � ����� ���������, �������, ��� ���� ����� ��� ������ ����.
  say ����������, ����� ��� ����� ������������.
  ����
end
calcuid star 33917 mob
attach 33911 %star.id%
detach 33908 %star.id%
calcuid diak 33916 mob
detach 33910 %diak.id%
attach 33912 %diak.id%
detach 33909 %self.id%
detach 33915 %self.id%
~
#33916
����� ������ �������~
0 q 100
~
if (%actor.name%==%questor339%) && %exist.mob(33927)%
  wait 1
  �����
  ������
  wait 1s
  mecho ����� ����� ���������� �... ����� ���������� �����������.
  wait 1s
  mecho ������������, �����, ��� �� ��������, ����������.
  wait 1s
  msend %actor% - �������� ����, �� � ���� ������� ����. ��� ��� �����-�� ����� �����
  msend %actor% � �������� ���. � �� �� ��� ������ �����.
  wait 1s      
  ����
  wait 1s
  msend %actor% - ������ �� - ���������� �������, - �� �������� �� ��� �� �����.
  msend %actor% � ������� ������� � �����������, �� ��������. ��� �� ����� �����
  msend %actor% ��� �������������. ����� ����, %actor.name%, �������� ���!
  wait 1s
  msend %actor% - � �������� ����� � ����� ���� ���-����. ����� ����, ������!
  msend %actor% ������� ������ ��������� � ����������.
  wait 1s
  msend %actor.name% - �� ���������� � ������ ��������, �� � �� ����, ��� ��� ��������.
  msend %actor.name% ����� ����! - ������� ��� � �����������.
  attach 33918 %self.id%
  detach 33916 %self.id%
end
~
#33917
������������~
2 c 0
������������~
wait 1
if !(%arg.contains(���)%) 
  return 0
  halt
end
wsend  %actor% ����� ���������, ������ ���������, �... ����� ����� ������� �������� ���!
wsend  %actor% ������ ��������� �� ����� ������ ������ � � ���������� ����������, ���
wsend  %actor% ��������� ��������� ����������� �������!
wload mob 33928
calcuid slav 33928 mob
attach 33923 %slav.id%
exec 33923 %slav.id%
wait 1s
wpurge ������
detach 33917 %self.id%
~
#33918
������ � ��������~
0 q 100
~
if (%actor.name%==%questor339%) 
  if %exist.mob(33927)%
    wait 2
    ������
    msend %actor% - ��, %actor.name%, �� ��� ��� ������ ����!
  else
    wait 2
    ��
    msend %actor% - �� ��������%actor.g% � ���?
    attach 33920 %self.id%
    detach 33918 %self.id%
  end
end
~
#33919
��������������������~
0 c 0
��������~
if (%actor.name%!=%questor339%) 
  return 0
  halt
end
say �� ��� �, � ���� �� �������%actor.u%! ������ �, �������, ������ ���� ���� ������.
mecho ���� �� ��������� ���������.
wait 8
say ����� � ������������ ������� ����� ����������� ����������� �� ����� 
mecho ��������� ������. �� ����, ��� � ��� �����������, ��������� ������ �����!
wait 1s
say � ���, ���� �� �����, ���� �� �����. ����������!
if %world.curobjs(33935)% < 1
  mload obj 33935
  say ������ ��� - ����������...
  wait 2
  ���� ���� %actor.name%
end
wait 2
mecho ���� ����� ������ �� ��� � �������� �� ���� ������� ������.
calcuid aaa 33981 room
attach 33917 %aaa.id%
detach 33919 %self.id%
~
#33920
��������������������~
0 c 0
��������~
if (%actor.name%!=%questor339%) 
  return 0
  halt
end
say �� ��� �, � ���� �� �������%actor.u%! ������ �, �������, ����������� ����.
wait 1s
mecho ����� ������ ������ � ��������.
wait 1s
mecho ���! - ������� ��� ������ �� ������� ��������� �����.
say ������ ��� ��� ���������� � ����� � ���� �������������.
mload obj 33900
mload obj 33929
���� ��� %actor.name% 
���� ��� %actor.name%
wait 1s
mecho ����� ���������� � �������� ��� �� ��������.
calcuid  vdova 33910 mob
detach 33920 %vdova.id%
~
#33921
���������������~
2 z 100
~
wait 1s
%purge% questor3391
wecho ����� ����� ������� �������� ��� �� ���������! �� �� - ������������ ��...
if %world.curobjs(33934)% == 0
  wload obj 33934
end
~
#33922
�����������������������~
0 n 100
~
if %world.curobjs(33905)% < 2
  mload obj 33905
end
if %world.curobjs(33913)% < 25
  mload obj 33913
end
if %world.curobjs(33914)% < 10
  mload obj 33914
end
if %world.curobjs(33925)% < 10
  mload obj 33925
end
~
#33923
������~
0 z 0
~
wait 1
mecho ������ �������� � ������ ����!
say %actor.name%, ���, � ������� ���� � �����!
dg_cast 'san' %actor.name%
mecho ������ �����...
~
#33924
��������~
0 r 100
~
wait 1s
����
say �, ��������� ���! ������� ����!
wait 1s
mecho ������ ���������.
say � ����� ���������� ��������� � ��������� ��� �����.
say �� ��� ����, � ���-�� ������� ���� ���������� ������.
say ��� � ������ ���� ����. ����� �� � ����� � ������� �����!
detach 33924 %self.id%
~
#33925
���������������������~
0 j 100
~
wait 1
if %object.vnum% == 33934
  say �������� �������! ��� ��, ������ � ������� ������ �����!
  mecho ������ ������� ���������� � ��������� �����-�� ���������� ����� � ����� �������.
  mecho ������ ��� ���� ����! - ��������� ��� ������-�� ��������.
  calcuid luks 33949 room
  exec 33921 %luks.id%
  calcuid genae 33926 mob
  attach 33927 %genae.id%
end
~
#33927
������������������~
0 j 100
~
wait 1
if (%object.vnum% != 33934)
  say ����� ��� ���?
  drop all
  halt
end
if (%actor.name% != %questor339%)
  msend %actor% H� ���� ������ �������, �� �� ���������� �������.
  halt
end
wait 1
mpurge %object%
msend %actor% ������� ��������� �� ��� � �������� �������� �������.
mechoaround %actor% ������� ��������� �� %actor.rname% � �������� �������� �������.
msend %actor% "��� ���," - ������ ����� ����������� ���, - "�� �����!"
����
wait 2
say �� ����, ������ � ���� ���� ��� ������, ������ �� ��� ����� �������.
say �� ��� � ���� �����������!
switch %actor.class%
  *������
  case 0
    if (!%actor.spelltype(������� ���)% && %actor.can_get_spell(������� ���)%)
      mspellturn %actor% �������.��� set
      say �, %actor.iname%. ������ ���������� ������� ���!
    else
      say ������, �� ���� �� ���%actor.g% ���, ���� ��� ������ ��� �������� ���.
    end
  break
  *������
  case 1
    if (!%actor.spelltype(������������)% && %actor.can_get_spell(������������)%)
      mspellturn %actor% ������������ set
      say �, %actor.iname%. ������� �� ������������ ��� ������ ������!
    else
      say ������, �� ���� �� ���%actor.g% ���, ���� ��� ������ ��� ����������� ����.
    end
  break
  *����
  case 2
    if (!%actor.skill(�����������)% && %actor.can_get_skill(�����������)%)
      mskillturn %actor% ����������� set
      say ��� ���� ������, ��� ��������������, %actor.name%.
    else
      say ������, �� ���� �� ���%actor.g% ���, ���� ��� ������ �����������. 
    end
  break
  *��������
  case 3
    if ((%actor.skill(������)% < 98) && (%actor.skill(������)% > 4))
      mskilladd %actor% ������ %random.3%
    else
      mecho ������, �� � �� ���� ���� ������� ������ ������...
    end
  break
  *�������
  case 4
    if (%actor.skill(����������)% < 100)
      mskilladd %actor% ���������� %random.3%
    else
      ��� .%actor.name%
      mecho ������, � ��� ������ ������ ���� �� �����...
      �����
    end
  break
  *����
  case 5
    if (%actor.skill(�����)% < 98)
      mskilladd %actor% ����� %random.3%
    else
      ��� .%actor.name%
      mecho ������, � ��� ������ ������ ���� �� �����...
      �����
    end
  break
  *��������
  case 6
    if !%actor.can_get_spell(��������� ����)%
      say �� ������� ���%actor.g%, ���� � ����� ���� �����������, ������-�� ����� ���.
      eval temp %actor.gold(+1000)%
    else
      if !%actor.spelltype(��������� ����)%
        mspellturn %actor% �����.���� set
        say �, %actor.iname%. ������ �� ������� ���� ����������� ������ �������!
      else
        say �� ��� ������ ��� ����������, ���� ������������� ���� ������ ��������. 
        eval temp %actor.gold(+1000)%
      end
    end
  break
  *����������!
  case 7
    eval lev 14-%actor.remort%/3
    if (!%actor.spelltype(��������)% && %actor.can_get_spell(��������)%)
      mspellturn %actor% �������� set
      say �, %actor.iname%. ������ �� ������� ��������� ���������!
    else
      say ������, �� ���� �� ���%actor.g% ���, ���� ��������� ��� ����� ������������ ����.
    end
  break
  *������
  case 8
    if (!%actor.spelltype(��������� �����)% && %actor.can_get_spell(��������� �����)%)
      mspellturn %actor% ���������.����� set
      say �, %actor.iname%. ������ �� ������ ����� ���������� �����!
    else
      say ������, �� ���� �� ���%actor.g% ���, ���� ���������� ����� ���� ��� ��������.
    end
  break
  *������
  case 9
    if (%actor.skill(�����������)% < 98)
      mskilladd %actor% ����������� %random.3%
    else
      ��� .%actor.name%
      mecho ������, � ��� ������ ������ ���� �� �����...
      �����
    end
  break
  *����
  case 10
    if (%actor.skill(���������)% < 98)
      mskilladd %actor% ��������� %random.3%
    else
      ��� .%actor.name%
      mecho ������, � ��� ������ ������ ���� �� �����...
      �����
    end
  break
  *������
  case 11
    if (%actor.skill(��������)% < 98)
      mskilladd %actor% �������� %random.3%
    else
      ��� %actor.name%
      mecho ������, � ��� ������ ������ ���� �� �����...
      �����
    end
  break
  *�����
  case 12
    if (!%actor.spelltype(�������)% && %actor.can_get_spell(�������)%)
      mspellturn %actor% ������� set
      say ��� ���� ������ ���������� �������, %actor.name%.
    else
      say ������, �� ���� �� ���%actor.g% ���, ���� ��� ������%actor.g% � ���������� ��������.
    end
  break
  *�����
  case 13
    if ((%world.curobjs(206)% < 75) && (%random.1000% <= 100))
      mload obj 206
      say ������ �������... �� ����� �������� ��....
      ���� ��� .%actor.name%
    else
      %send% %actor% %self.iname% ��������� ��� ����� ���.
      eval temp %actor.gold(+1000)%
    end
  break
  default
    %send% %actor% %self.iname% ��������� ��� ����� ���.
    eval temp %actor.gold(+1000)%
  break
done
wait 1
detach 33927 %self.id%
~
#33928
������������~
0 f 100
~
if (%world.curobjs(528)% == 0) && (%random.1000% <= 150)
  mload obj 528
end
~
#33929
����� ������~
2 f 100
~
unset questor339
calcuid voin 33925 mob
attach 33906 %voin.id%
calcuid gena 33926 mob
detach 33909 %gena.id%
detach 33915 %gena.id%
detach 33927 %gena.id%
calcuid dyak 33916 mob
detach 33912 %dyak.id%
detach 33919 %dyak.id%
detach 33930 %dyak.id%
attach 33910 %dyak.id%
calcuid star 33917 mob
detach 33911 %star.id%
attach 33908 %star.id%
calcuid ubog 33915 mob
detach 33913 %ubog.id%
attach 33914 %ubog.id%
calcuid vdov 33910 mob
detach 33916 %vdov.id%
detach 33918 %vdov.id%
detach 33920 %vdov.id%
calcuid iconroom 33981 room
detach 33917 %iconroom.id%
calcuid luch 33923 mob
attach 33924 %luch.id%
~
#33930
������ � ��������~
0 q 100
~
if %actor.name%!=%questor339%
  wait 1s
  msend %actor.name% ������ �������� ������, �� ��������� ��������� � ��������� ������ ������, �� ������� ���.
  halt
end
if %exist.mob(33927)%
  wait 1s
  msend %actor% ���� ��������� �� ����� ��� � ���-�� ��������� ���� ��� ���, ����� �� ���.
  wait 1s
  msend %actor% ���� ����� ��� ������� � ������, ����� ������, ��� ������ ��� ������� ������.
  halt
end
wait 1s
msend %actor% ���� ��������� �� ����� ��� � ������� ������� ���.
wait 2
say �, %actor.name%! ��.. ������ �������%actor.u% � ���� ��������?
say ��-��, ��-��, ��������.
wait 2
msend %actor% ������ ��������� �� ��� � ���������.
attach 33910 %self.id%
attach 33919 %self.id%
detach 33930 %self.id%
~
#33931
���� ���� ����� ���������� �� �������~
0 f 100
~
if %random.100% <= 20
  if %world.curobjs(561)% < 2
    mload obj 561
  end
end
~
#33932
������ ����� � ���� �����~
0 f 100
~
if (%random.1000% <= 700)
  mload obj 33931
end
if ((%actor.vnum% == -1) && %actor.quested(27012)%)
  mload obj 11407
  %actor.unsetquest(27012)%
  %actor.setquest(27013)%
else
  set target %actor.leader%
  if %target.quested(27012)%
    mload obj 11407
    %target.unsetquest(27012)%
    %target.setquest(27013)%
  end
end
~
#33933
����������� � �������~
0 q 100
~
if %self.fighting%
  halt
end
if %actor.quested(33905)% && ! %actor.quested(33906)%
  wait 1s
  mecho ������� ������ �� ������� �������� ������� � ��������� ������� �� � �����.
  halt
end
if %actor.quested(33902)%
  halt
end
wait 1s
emot ������������ ����������, ����������� � ���� ����
say �� ������� �� ������! ���� ���� ������...
wait 1
emot ��� ��� ����������� � ���, � ����� ��������� ����������.
wait 2
say ��, ������, � ������ � ���� ����� ������
say �������... �� ������ �� �� ����������?
attach 33934 %self.id%
~
#33934
������ ������ � �������~
0 d 1
�� ��� ���� ��������~
wait 1
if %speech% == ���
  ����
  say �� � ������ ����� ����� �������.
  detach 33934 %self.id%
  halt
end
mat 33906 mload mob 33929
mat 33906 mload mob 33930
%actor.setquest(33902)%
say ��� � ������! 
mecho _- ����� ��� ������� �������, � ������� �������� � �� �� ��������.
mecho _- �������� ���� ���� �� ����� ��������, ��� ����� ������� �� ��������� ����� � �������� ���������� ������.
wait 2
say �������� �����, �� ������ ���� ��� � ����. ������ ���!
mecho _- ��������� - ������� �����! � ���� �� �� �������%actor.g% �������...
emot ��������� �� ����� �������� ����� � ����� �������� ��������� ����� �� ����� ��������.
wait 1
say ��������� �������� - ������ ��������� ��������! � ������ ���, ����� ��������� ����������.
wait 2s
���
mecho _"��� ���, ���������, ������-�� �� ���� ������" - ����������� ������� � �������.
detach 33934 %self.id%
~
#33935
�� ������� �������� ����� ������ ������ � �������, ���� �� ������� � �������~
2 e 100
~
if (%direction% != north) || %actor.quested(33904)% || !%actor.quested(33902)%
  halt
end
If %exist.mob(33929)% 
  calcuid man1 33929 mob
  if (%man1.realroom% == 33906)
    wsend %actor% %man1.name% ��������� ��� ������.
    return 0
    halt
  end
end
if %exist.mob(33930)%
  calcuid man2 33930 mob
  if (%man2.realroom% == 33905)
    wsend %actor% %man1.name% ��������� ��� ������.
    return 0
    halt
  end
end
~
#33936
������� ������������� ��� �����~
0 q 100
~
wait 1
if (%direction% == south) && %actor.haveobj(38105)% && !%actor.quested(33904)%
  ����� ���, �����%actor.u%! 
  ����� �����, ������!
  mkill %actor%
  halt
end
if (((%direction% == west) || (%direction% == north)) && %actor.quested(33902)% && !%actor.quested(33904)%)
  %actor.setquest(33903)%
  say ����!
  say ���������� ����� ������, � ������ � ����� ���������� ����� ������� ���������.
  say ������-�� �����... ��� � ����� ������� ����, �� ���������!
  emot ���������� ��� � ������ �� �����
  %actor.wait(2)%
end
~
#33937
������� ���������� ���� �������~
0 q 100
~
if %self.fighting%
  halt
end
if %actor.quested(33905)% && ! %actor.quested(33906)% && %actor.quested(33904)%
  wait 1s
  ����
  say ���� ���, ���� �����, � ����������� �������!
  halt
end
if !%actor.quested(33903)% || %actor.quested(33904)%
  halt
end
%actor.setquest(33904)%
wait 1s
���
say ���, ������ ���������� ���� �������? ������ � ������!
emot �������� ����-������ �� �������
wait 2
say �������, ��� ������� �����, ��������� ���!
mecho _- ���, ������� ��������, ��� ������ �����.
mecho _- ��� �� ��� � ������ �������� - ���� ����, �� ���� ��������� ������ ���
mecho _- �� �... �� ���� �� ���, ��� ������ ��� ������ ��������?
mecho _- ��� ����� ���� �������, ���� ��� �������!
wait 2s
emot ���������� �� ��� � �������. 
mecho ������� ���������� �����������: "������� � ������ ��-�� ����, �� ��� � �����!"
wait 1s
say ���, ������.
if (%exist.mob(33929)%)
  calcuid batrak1 33929 mob
  mpurge %batrak1%
end
if (%exist.mob(33930)%)
  calcuid batrak2 33930 mob
  mpurge %batrak2%
end
~
#33938
���� � ����� � ��������� ������� � ��������~
0 q 100
~
wait 1
if !%actor.quested(33902)% || !%actor.quested(33904)% || %actor.quested(33907)%
  halt
end
wait 3
if %actor.sex% == 1
  say ����������, ������� ��������.
else
  say ������ ����!
end
say ��� ������� ���� �� ���?
attach 33939 %self.id%
~
#33939
����� ���� �������~
0 d 1
������� ���������� �������~
wait 1
%actor.setquest(33907)%
��, ����! 
emot ������ ���������
wait 2s
say ���� �� ����, �������, �������, �� ��� ��� ��������.
mecho _- ������-�� ��� �� ���� ���� ������ ������ ��������.
mecho  - � ���������, � �����, � ������. ����������, ����������.
wait 2
say � ��� ���� �������, ��� ��� ���� ����� ���� ����������
mecho _- ���� � ��������� ������� � ���� �������� ������� ���� � ���� ��������.
mecho _- �� ������ �� ������! ����, ������� � ������ ������� ������������
mecho _- � ��������� ��� ����� �������� �� ������ ��������...
wait 2s
say ��� ����� ������ - ���� ���� ��� ��� ���������, �� ������� ����� ������ ������!
detach 33939 %self.id%
~
#33940
����� ������ �������~
0 j 100
~
wait 1
if %object.vnum% != 38105 
  ���
  drop %object.name%
  halt
end
wait 1
mpurge %object%
emot ��������� ������ � �������� ����������.
wait 2s
if !%actor.quested(33902)%
  say ��, � ���� � ������ �� ������, �� ��� ������ �� ����, ��� ��� �����.
  say �������������.
  halt
end
%actor.unsetquest(33900)%
%actor.unsetquest(33901)%
%actor.unsetquest(33902)%
%actor.unsetquest(33903)%
%actor.unsetquest(33904)%
%actor.unsetquest(33905)%
%actor.unsetquest(33906)%
%actor.unsetquest(33907)%
%actor.setquest(33909)%
mat 33923 mload mob 33929
mat 33923 mload mob 33930
calcuid batrak2 33930 mob
detach 33936 %batrak2.id%
calcuid batrak 33930 mob
attach 33943 %batrak.id%
say ��, ��� ��. ���, ������ ������� ���������.. 
if ((%actor.class% == 0) && !%actor.spelltype(����������� ���������)%)
  wait 1
  say ��� � ����, �� ������ ����� ���� ��������� ����������� �����.
  msend %actor% ������� ��� ��� ��������� �����������.
  mechoaround %actor% ������� ��������� � %actor.dname% � ��� ���������.
else
  mload obj 562
  ���� ���� .%actor.name%
end
wait 1
say � ����� ��� - ���-�� �� ������ ���������, ������� ��������!
detach 33933 %self.id%
detach 33934 %self.id%
~
#33941
������ ������� � �������� �����������~
0 j 100
~
wait 1
if %object.vnum% != 38105 
  ���
  drop %object.name%
  halt
end
wait 1
mpurge %object%
emot ��������� ������ � �������� ����������
wait 2s
if !%actor.quested(33904)%
  say ��, � ���� � ������ �� ������, �� ��� ������ �� ����, ��� ��� �����.
  say �������������.
  halt
end
%actor.unsetquest(33900)%
%actor.unsetquest(33901)%
%actor.unsetquest(33902)%
%actor.unsetquest(33903)%
%actor.unsetquest(33904)%
%actor.unsetquest(33905)%
%actor.unsetquest(33906)%
%actor.unsetquest(33907)%
say ��� ��� ���. ����� �������, ��� ��� ����� �����!
mecho _- ����, ���� �������, ���� ����� �������
switch %random.3%
  case 1
    case 2
      case 3
        mload obj 33940
        say � ���� ��� ��� ��-������ ������ ���������� �������. 
        mecho _- ������ �� ���� �������. ������� �����������, �� ��� ��������� �����.
        mecho _- �����, ���� ��������.
        give ������ .%actor.name%
      break
      case 4
        case 5
          mload obj 528
          say � ���� ��� ��� ��-������ ������ ���������� �������.
          mecho _- �������� � ���� ���-���� �� ��� ���������. ���, �����.
          give ���� .%actor.name%
        break
        default
          %self.gold(+500)%
          give 500 ��� .%actor.name%
        done
        if (%world.curmobs(33914)%>0)
          set victim %actor%
          global victim
          calcuid medic 33914 mob
          remote victim %medic.id%
          wait 1s
          exec 33945 %medic.id%
          rdelete victim %self.id%
        end
~
#33942
������ ������� � �����~
0 j 100
~
wait 1
if %object.vnum% != 38105 
  ���
  drop %object.name%
  halt
end
wait 1
mpurge %object%
emot ���������� ������ � ��������� ����������
wait 2s
if !%actor.quested(33902)%
  say ��, � ���� � ������ �� �������, �� ��� ������ �� ����, ��� ��� �����.
  say �������������.
  halt
end
%actor.unsetquest(33900)%
%actor.unsetquest(33901)%
%actor.unsetquest(33902)%
%actor.unsetquest(33903)%
%actor.unsetquest(33904)%
%actor.unsetquest(33905)%
%actor.unsetquest(33906)%
%actor.unsetquest(33907)%
%actor.setquest(33909)%
mat 33920 mload mob 33929
mat 33920 mload mob 33930
calcuid batrak2 33930 mob
detach 33936 %batrak2.id%
calcuid batrak 33930 mob
attach 33943 %batrak.id%
mecho ����� �������� ������ ���� � ������� � ������ �����.
say ����� ���� ����, %actor.name%! ������%actor.q% �� ����...
wait 2
say �� � ��� �������, �� ��� � �������.
say ��� ��� �� ���� ������ ��������, �� ������� ����� ������.
switch %random.7%
  case 1
    case 2
      case 3
        mload obj 561
        give ���� .%actor.name%
      break
      case 4
        mload obj 245
        ���� ��� .%actor.name%
      break
      default
        %self.gold(+500)%
        give 500 ��� .%actor.name%
      done
      if ((%actor.align% > -200) && (%actor.align% < 100))
        %actor.align(+5)%
      end
      if (%world.curmobs(33914)%>0)
        set victim %actor%
        global victim
        calcuid medic 33914 mob
        remote victim %medic.id%
        rdelete victim %self.id%
        wait 1s
        exec 33945 %medic.id%
      end
~
#33943
������� �����~
0 q 100
~
wait 1
if !%actor.quested(33909)%
  halt
end
if ((%direction% == west ) || (%direction% == north ))
  ����� ���! �� ������!
  mkill %actor%
  mforce batrak339_1 kill .%actor.name%
end
~
#33944
��� �������~
0 f 100
~
foreach target %self.pc%
  if %target.quested(33908)%
    %target.unsetquest(33908)%
    dg_affect %target% ���������� ���� -20 0
    dg_affect %target% �������� ���� -5 0
    dg_affect %target% ���� ���� -5 0
    dg_affect %target% ��������� ��������� -5 0
    dg_affect %target% �������� ��������� -5 0
    dg_affect %target% ������������ ��������� -5 0
    dg_affect %target% ������� ��������� -5 0
    dg_affect %target% ����� �������������� -50 0
    dg_affect %target% ����������� �������������� -100 0
    dg_affect %target% �����.���������� �������������� -50 0
    halt
  end
done
foreach target %self.pc%
  if %target.quested(33902)% && !%target.quested(33908)%
    %target.setquest(33908)%
    say ��� ���� �������� �������� ����!
    msend %target% "��� ���� �� �� �������!" - ��������� �������, ������ � ��� �����.
    mechoaround %target% "��� ���� �� �� �������!" - ��������� �������, ������ � %target.vname% �����.
    msend %victim% ��� ������ �������� �������� � �������� ���� �������� ���� ����.
    dg_affect %victim% ���������� ���� -20 10000 2
    dg_affect %victim% �������� ���� -5 10000 2
    dg_affect %victim% ���� ���� -5 10000 2
    dg_affect %victim% ��������� ��������� -5 10000 2
    dg_affect %victim% �������� ��������� -5 10000 2
    dg_affect %victim% ������������ ��������� -5 10000 2
    dg_affect %victim% ������� ��������� -5 10000 2
    dg_affect %victim% ����� �������������� -50 10000 2
    dg_affect %victim% ����������� �������������� -100 10000 2
    dg_affect %victim% �����.���������� �������������� -50 10000 2
    halt
  end
done
~
#33945
������� ����������~
0 z 100
~
msend %victim% _����� ������-�� �� �������� ����� �������:
msend %victim% ___"� �� �������, ����� �� �� �����%victim.u% ���� ��������!
msend %victim% ____������� ������, ��� ��������%victim.g%!"
msend %victim% ��� ������ �������� �������� � �������� ���� �������� ���� ����.
dg_affect %victim% ���������� ���� -20 0
dg_affect %victim% �������� ���� -5 0
dg_affect %victim% ���� ���� -5 0
dg_affect %victim% ��������� ��������� -5 0
dg_affect %victim% �������� ��������� -5 0
dg_affect %victim% ������������ ��������� -5 0
dg_affect %victim% ������� ��������� -5 0
dg_affect %victim% ����� �������������� -50 0
dg_affect %victim% ����������� �������������� -100 0
dg_affect %victim% �����.���������� �������������� -50 0
dg_affect %victim% ���������� ���� -20 10000 2
dg_affect %victim% �������� ���� -5 10000 2
dg_affect %victim% ���� ���� -5 10000 2
dg_affect %victim% ��������� ��������� -5 10000 2
dg_affect %victim% �������� ��������� -5 10000 2
dg_affect %victim% ������������ ��������� -5 10000 2
dg_affect %victim% ������� ��������� -5 10000 2
dg_affect %victim% ����� �������������� -50 10000 2
dg_affect %victim% ����������� �������������� -100 10000 2
dg_affect %victim% �����.���������� �������������� -50 10000 2
%victim.setquest(33908)%
~
#33999
����� ������� � ���� 339~
0 g 100
~
33900 - ������� �����, ����� ���� �������� �����
33901 - ����� � ���������� ������
33902 - ����� ���� ������� � �������
33903 - ����� ������� � ��������
33904 - ����� ������� ������� �� �����������
33905 - ����� ������� � �����
33906 - ����� ������� ������ �� �����
33907 - ������� ������� �� �����
33908 - ����� ������� ��������
~
$~
