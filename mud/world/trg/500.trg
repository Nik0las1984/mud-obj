#50000
������_������~
1 h 100
~
context 500quest
wait 1
set room %self.room%
attach 50083 %room.id%
oecho ����� ����� !
wait %pause%s
oecho ����� �����������!
detach 50083 %room.id%
attach 50084 %room.id%
oecho ���������� - ��� ��� ������� ��������������!
set schet 2
while (%schet% > 1)
  set schet 0
  set igrok %room.people%
  while %igrok%
    if %igrok.vnum% == -1
      eval schet %schet%+1
    end
    set igrok %igrok.next_in_room%
  done
  wait 10s
done
oecho �� ���������� !
wait 5s
set schet 0
set igrok %room.people%
while %igrok%
  if %igrok.vnum% == -1
    eval schet %schet%+1
  end
  set igrok %igrok.next_in_room%
done
if %schet% == 0
  oecho ����� ��� �������� ������!!!
  oecho ������ ���� �����������!!!
  detach 50084 %room.id%
  oecho ������ ��� ����� �����.
  opurge %self%
  halt
else
  oecho �������� �������������� ����� ������.
  oload obj 50001
end
opurge %self%
~
#50001
������_�������_��������_�_����_500~
2 c 100
������~
context 500quest
if %pause%
  wecho ���� ����� ��� �����!
  halt
end
if !%arg%
  wecho ������� ����� ����� ������ !
  halt
end
if %arg% == ������
  wdoor 50082 west purge
  wdoor 50082 west room 50001
  wdoor 50082 west flags a
  wforce �������.�����.����� ����� ���� ����� ��� �������� ���� ���������, �������� � �����, � �������� ��������������.
  wforce �������.�����.����� ����� ���������� ������� ��� ������� � ��� ��������� �����. ����� �� �� ����� ����.
  eval pause 900+%random.1100%
  worlds pause
  exec 50008 %self.id%
elseif %arg% == �����
  wdoor 50082 east purge
  wdoor 50082 east room 50014
  wdoor 50082 east flags 0
  wforce �������.�����.����� ����� ���� ����� ��� �� &R��������&Y �����, �������� � �����������, � ��������
  wforce �������.�����.����� ����� ��� ������ �� �������� ����� � ����� ���� ��������� ��� ��������� � �����!
  wforce �������.�����.����� ����� � ��� ���� �������, ��� �� ������ � ����� �����! ����������!
  eval pause 900+%random.120%
  worlds pause
else
  wecho ��� ������ ������ !
  halt
end
wecho ��������� ������ ������� � ���� ����� ���������� ����������.
wecho �������: ����� 27030, �� - 49954, ����� - 34453, ������ - 66001, �� - 60050
wat 60050 %load% mob 50000
wat 66001 %load% mob 50000
wat 34453 %load% mob 50000
wat 49954 %load% mob 50000
wat 27030 %load% mob 50000
wait %pause%s
calcuid quester 50000 mob
%purge% %quester%
calcuid quester 50000 mob
%purge% %quester%
calcuid quester 50000 mob
%purge% %quester%
calcuid quester 50000 mob
%purge% %quester%
calcuid quester 50000 mob
%purge% %quester%
wat 27030 wecho ��������� ��������� � ������������ � �������.
*wat 49954 %purge% ���������.�����
wat 49954 wecho ��������� ��������� � ������������ � �������.
*wat 34453 %purge% ���������.�����
wat 34453 wecho ��������� ��������� � ������������ � �������.
*wat 66001 %purge% ���������.�����
wat 66001 wecho ��������� ��������� � ������������ � �������.
*wat 60050 %purge% ���������.�����
wat 60050 wecho ��������� ��������� � ������������ � �������.
wdoor 50082 east flags abcd
~
#50002
����_�_����������~
0 q 100
~
wait 1
say ����������� ����, ������ ������� � ��� ������� � ������������ ?
~
#50003
����� ������ ����~
0 cd 0
���� �� �������~
if %actor.level% > 1
  say �� ��� ��, ����� ������� ������.
  *
end
calcuid room %self.realroom% room
attach 50005 %room.id%
exec 50005 %room.id%
detach 50005 %room.id%
~
#50004
������������_�����~
2 j 100
~
*if %drection% == west
wait 3s
wecho � ����� �������� ������� ����� ���������.
wdoor 50082 west flags b
*end
* � ����� � ��� ��� ���� �����-�� � ����������� �� ����������, ������ ������� �����
~
#50005
������_�_������_�����-����~
2 z 100
~
wportal 50080 1
~
#50006
�������_��_������~
0 cd 1
���������~
say �� ���� ���, ��������� ��� ���� ���������, �� ���� ��� �������� ��� ���.
msend %actor% �� ��, ������ �� ���-��, ���� � ����� �����.
dg_cast '����� ��������' %actor.name%
say ����, %actor.name%.
~
#50007
�����~
2 g 100
~
wait 1
wecho ���� ������� �����������!
eval temp %actor.move(-30)%
~
#50008
������_�����_������~
2 z 100
~
calcuid nablud 50001 mob
attach 50009 %nablud.id%
run 50009 %nablud.id%
detach 50009 %nablud.id%
~
#50009
�����_������_�������_������~
0 z 100
~
mload obj 50000
west
south
�� ������
north
east
����
~
#50010
���� ��������������~
1 g 100
~
if %actor.vnum% != -1
  return 0
  halt
else
  wait 1
  set room %self.room%
  detach 50084 %room.id%
  oecho ������ ��� ����� �����.
  osend %actor% ��� ���� ������ �������������� �����������, �� ����� �����!
end
detach 50010 %self.id%
~
#50011
���� �������������� �����������~
0 j 100
~
if %object.vnum% != 50001
  say ����� ��� ��� ?
  �� ���
  halt
else
  wait 1
  mpurge %object%
  ����� %actor.name% �� ��� ��, ����� ���� � ����, ����� ������ �����, ��� ��� �����
  wait 1s
  mecho ����������� ����������, � �� �������� ���� �������� ������.
  wait 1s
  switch %random.3%
    case 1
      mload obj 50012
      say ��� ������� �������, ��� ����� ���.
      � �����.���� %actor.iname%
    break
    case 2
      mload obj 50013
      say ��� ������, ��� ����� �����.
      � ������.���� %actor.iname%
    break
    case 3
      say ��� ������, ����� ���.
      mload obj 50014
      � �����.���� %actor.iname%
    break
  done
  context 500quest
  unset pause
end
~
#50012
����� ����~
2 f 100
~
context 500quest
if !%pause%
  wdoor 50082 east flags abcd
  wdoor 50082 west flags abcd
  calcuid nablud 50001 mob
  wpurge %nablud%
  wat 50002 wload mob 50001
end
~
#50013
����� �������~
1 j 100
~
if %actor.name% != ������
  osend %actor% �� ���� ���� ����� ��� �� �������� �����...
  return 0
  halt
else
  oechoaround %actor% %actor.name% ������� �������� �������� ����� � ���������� �� �������, ��������� ������� �� �������.
end
~
#50020
��������_�����_5~
1 j 100
~

~
#50021
���� �������~
1 g 100
~
if %actor.name% != ������
  osend %actor% ___&R������, ��� �����!&n
  return 0
  halt
end
~
#50022
���� ����� �������~
1 l 100
~
return 0
osend %actor% _�� ����������, ��� ���������� �������� ������ �������� ��������� � ���� ������!
oechoaround %actor% _%actor.name% �������%actor.u% ����� � ������� ��������� �������, �� ������ �� ����������.
~
#50023
����� ������� � ���������� ������ ������~
1 c 1
*~
set str �����
set str2 quit
if %str.contains(%cmd%)% || %str2.contains(%cmd%)%
  return 1
  osend %actor% ��������� ������� �������� ��������� � ���� ������ � �� ��������� ���!
  halt
end
set str1 ������
set str2 ��������
if ((%cmd% == %str1%) || (%cmd% == %str2%))
  if !%arg.contains(�����)%
    osend %actor% ��� ������ �� ������ ��������?
    return 1
    halt
  end
  osend %actor% �� �������� �������� �� ����� ����������� ���������� � ��� ����� �������� �������� ������.
  attach 50024 %self.id%
  detach 50022 %self.id%
  wait 5s
  attach 50022 %self.id%
  detach 50024 %self.id%
  halt
end
return 0
~
#50024
����� ��������� �������~
1 l 100
~
wait 1
if !%self.worn_by%
  otransform 51819
  attach 50025 %self.id%
end
~
#50025
������ ��������� �������~
1 j 100
~
if %actor.vnum% != -1
  return 0
  halt
end
wait 1
if ((%self.vnum% == 51819) && %self.worn_by%)
  otransform 51820
end
detach 50025 %self.id%
~
#50030
���������������~
0 q 100
~
wait 1s
� ���� �� �����������!
� ������ ������ �� �������!
wait 1s
mecho _&W�������� ����� ������, �������� ��� �������� ����������.&n
mecho _&W�� ������, �� ��������!
~
#50031
����������~
0 d 0
*~
wait 1s
if %actor.name% == ������
  switch %speech%
    case ������
      ���
      wait 1s
      ���� .������
    break
    case �������
      ���
      wait 1s
      ��� .������
      %purge% %self%
    break
    default
      ���
      ������ .������
    break
  done
else
  ��� .%actor.name%
end
~
#50037
�������� ���� �� �����~
0 n 100
~
wait 180s
say ���-�� �� �����������! ������ ����...
mecho ����-��-����� ������ ����-��, �� � ������ �������� �� ������.
wait 1
mpurge %self%
~
#50038
��������� � �����~
1 c 4
���������~
wait 1
if (!%arg.contains(� �����)% || (%self.val3% >= 50))
  osend %actor% �� ������ ��������� ���� �� ���.
  halt
end
osend %actor% �� ��������� � ������������ ������ �����... ������ � ������ �������?
oechoaround %actor% %actor.name% ��������%actor.u% � ��������%actor.g% � ������ �����.
wait 1
if (%world.curmobs(50039)% > 0)
  calcuid two 50039 mob
  if (%two.realroom% == %actor.realroom%)
    oforce %two% say �� ������ ���...
    oecho �� � ������ �������� �� ������, ��� ����-��-����� ������ ������� � �����.
    opurge %two%
  else
    oecho � ������ �� ���������!
  end
  halt
end
oecho ������ � ������� ������������, � ������ �� �������� ������� ����-��-�����.
oload mob 50039
eval num %self.val3%+1
%self.val3(%num%)%
~
#50039
����-��-�����~
0 j 100
~
wait 1
eval oname %object.name%
eval oname %oname.car%
say �-��,��� ���� �� ���������!
cast '�������' %oname%
wait 1
give %oname% %actor.name%
say �������� ������!
~
#50040
������� ���������� �������~
1 c 1
�������~
wait 1
if !%arg.contains(�������)%
  osend %actor% ��� �� ������ �������?
  halt
end
oecho %actor.name% ������%actor.q% ������� � ����� � ������ ����� � ���.
if (%world.curmobs(50049)% < 1)
  wait 1s
  oecho ����������� ������������ ������� �������.
  wait 1s
  oecho ������ ����� �������� ��������� �� �������, ����������� ����� �� ���.
  oechoaround %actor% ������ ����� �������� ��������� �� �������, ����������� ����� �� %actor.vname%
  oload mob 50049
  halt
end
calcuid moonanimal 50049 mob
if ((%moonanimal.realroom% == %actor.realroom%) && !%moonanimal.leader%)
  wait 1s
  oecho ����������� �������� ���������� �������.
  oecho ������ ����� �������� ������ � ������� � �������.
  wait 1
  opurge %moonanimal%
  halt
end
if ((%moonanimal.realroom% == %actor.realroom%) && (%moonanimal.leader% == %actor%))
  oecho ����������� ������������ ���������� �������.
  wait 1s
  oechoaround %actor% ������ ����� ������� � �������, ����������� ����� �� %actor.vname%
  oecho ������ ����� ������� � �������, ����������� ����� �� ���.
  halt
end
if ((%moonanimal.realroom% == %actor.realroom%) && (%moonanimal.leader% != %actor%))
  oecho ����������� ������ �������� �������.
  wait 1s
  oecho ������ ����� ���������� �����.
  oforce %moonanimal% follow �
  wait 3
  oechoaround %actor% ������ ����� �������� ����� � %actor.dname%
  oecho ������ ����� �������� ������� � ���.
  halt
end
if (%moonanimal.realroom% != %actor.realroom%)
  oecho ����������� ����������� ������� �������.
  wait 1s
  oechoaround %moonanimal% ������ ����� ����� ���������� ����� � ������� � �������.
  oecho ������ ����� �� ������� �������� ������-��, � �������� � ���.
  oteleport %moonanimal% %actor.realroom%
end
~
#50041
������� ������������� �����~
1 c 1
������~
wait 1
if !%arg.contains(� �����)%
  osend %actor% ����-���� ������?! � ��� ��� ��������� �� ��� ��������� �� ������� �� �������� �� �������� ��������!
  halt
end
osend %actor% �� � ����� ������ � ������������ �����.
oechoaround %actor% %actor.name% � ����� �����%actor.g% � ������������ �����.
oecho ���������� ��������� ��������� ����.
eval i %world.curmobs(50041)%
while (%i% > 0)
  wait 1
  calcuid raven 50041 mob %i%
  if (%raven.leader% == %actor%)
    oecho ���������� ����� ������ �� ���.
    oteleport %raven% %actor.realroom%
    halt
  end
  eval i %i%-1
done
oecho ���������� ����� � ������� ������ ������ �� ����.
oload mob 50041
calcuid raven 50041 mob 1
oforce %raven% follow .%actor.name%
eval count %self.val0%+1
%self.val0(%count%)%
if (%self.val0% == 10)
  osend %actor% ������������ ����� ��������, � ���������� � ����.
  wait 1
  opurge %self%
end
~
#50042
������� ��������~
0 ab 100
~
if !%self.leader%
  mecho ���������� ����� �������� �������� � �������.
  wait 1
  mpurge %self%
end
~
#50043
��������� ������ �� �������~
2 z 100
~
wait 1
wportal %target% 2
wait 1
rdelete target %self.id%
detach 50043 %self.id%
~
#50044
��������� � ���������~
1 c 1
����������~
wait 1
if !%arg.contains(�����)% && !%arg.contains(������)%
  osend %actor% ��������� �������� �� �����, �� ������ �� ���������.
end
if %arg.contains(�����)%
  osend %actor% �� ���������� ����� � ��������� ���������.
  osend %actor% ����� ���� ��������� �� ��� �������, � ��� ������ �������� ����� ����� ����.
  osend %actor% ��������� ����� �������� � ��������.
  osend %actor% ��� ����������, ��� ��������� ������ ��������� ��� ������ ���.
  %self.val0(%actor.realroom%%)%
end
if %arg.contains(������)%
  osend %actor% �� ��������� ������� � ������ ��������� � ����.
  osend %actor% ����������� ������� ����� �����������!
  wait 1
  if (%self.val0% != 0)
    calcuid room %actor.realroom% room
    osend %actor% � ������� ����� ��������� ��������� ������ ������� �����!
    attach 50043 %room.id%
    set target %self.val0%
    global target
    remote target %room.id%
    exec 50043 %room.id%
    eval count %self.val1%+1
    %self.val1(%count%)%
    rdelete target %self.id%
  else
    osend %actor% �� ������ �� ���������...
  end
end
if (%self.val1% == 5)
  osend %actor% ��������� ��������� ��������� � ����������� � ����.
  wait 1
  opurge %self%
end
~
#50046
���� ������������ ������~
1 gj 100
~
%echo% ����
~
#50047
������� ���� ��������~
1 b 5
~
*log Trigger 50047 work
eval objname %self.name%
eval owner %self.carried_by%
if !%owner%
  halt
end
switch %self.vnum%
  case 50050
    if %owner.name% != �����
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50051
    if ((%owner.name% != ����) && (%owner.name% != �����)
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50052
    if %owner.name% != �����  %owner.name% != ������  %owner.name% != ����
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50053
    if %owner.name% != ������
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50054
    if %owner.name% != ����� && %owner.name% != ������ && %owner.name% != �������
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50055
    if ( %owner.name% != ������ ) && ( %owner.name% != ����� )
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50056
    if %owner.name% != ������
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50057
    if (%owner.name% != �����) && (%owner.name% != ����))
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50058
    if %owner.name% != ������ && %owner.name% != ������� && %owner.name% != ������
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50059
    if ((%owner.name% != ����) && (%owner.name% != �����) && (%owner.name% != �����))
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50060
    if %owner.name% != �������
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50061
    if %owner.name% != �����
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50062
    if %owner.name% != ������
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50063
    if %owner.name% != ���� && %owner.name% != ������ && %owner.clan% != �� && %owner.clan% != �� && %owner.clan% != ��
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50064
    if ( %owner.name% != �������� ) && ( %owner.name% != ������ )
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50065
    if %owner.name% != ������
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50066
    if ((%owner.name% != �����) && (%owner.name% != ������) && (%owner.name% != �������) && (%owner.name% != �������))
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50067
    if %owner.name% != �����
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50068
    if %owner.name% != �����
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50069
    if %owner.name% != �����
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50070
    if %owner.name% != ����
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50071
    if %owner.name% != ����
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50072
    wait 1
    if ((%owner.name% != �������) && (%owner.name% != ����))
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50073
    wait 1
    if %owner.name% != �������
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50074
    wait 1
    if %owner.name% != ������
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50075
    wait 1
    if ((%owner.name% != ������) && (%owner.name% != �����) && (%owner.name% != �������))
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50088
    wait 1
    if %owner.name% != �����
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50076
    if ((%owner.name% != ������� ) && (%owner.name% != ������� ) && (%owner.name% != ������ ))
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50077
    if %owner.name% != �������
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
  case 50079
    if %owner.name% != �����
      oforce %owner% ������� %objname.car%.%objname.cdr%
    end
  break
done
~
#50048
������ �������� ����� - ��������~
0 q 100
~
wait 1
if (%actor.name% == ���� || %actor.name% == ������)
  if (%world.curobjs(50063)% == 0)
    say ��� ��������! ��� ���� ������, �� �������!
    mload obj 50063
    ���� ������ .%actor.name%
  end
elseif (%actor.name% == ��������) || (%actor.name% == ������)
  if (%world.curobjs(50064)% == 0)
    say ���, %actor.name%! ���������... ������� ���� �������...
    ����
    �����
    mload obj 50064
    ���� ������ .%actor.name%
  end
elseif (%actor.name% == ������)
  if (%world.curobjs(50065)% == 0)
    ����
    say �����������, ������� ��� ��������! ��� � ����� ����.
    mload obj 50065
    ���� ����� .������
  end
elseif (%actor.name% == �������)
  if (%world.curobjs(50066)% == 0)
    ��
    mload obj 50066
    ���� ������ .%actor.name%
  end
elseif %actor.name% == �����
  if (%world.curobjs(50067)% == 0)
    ����
    �����
    mload obj 50067
    ���� ���� .�����
    �����
  end
elseif %actor.name% == �����
  if (%world.curobjs(50068)% == 0)
    ����
    say ������ ����, ���������!
    say ��� � ����� ����, � �����������.
    mload obj 50068
    ���� ���� .�����
  end
elseif ( %actor.name% == ����� ) || ( %actor.name% == ������ ) ||  ( %actor.name% == ������ ) ||  ( %actor.name% == �������� ) ||  ( %actor.name% == ������ ) ||  ( %actor.name% == ������ ) ||  ( %actor.name% == ������� ) 
  if ( %world.curobjs(50069)% == 0 )
    say ������ ����, %actor.name%!
    say ��� ����� ����, ����������� � ����������.
    mload obj 50069
    ���� ���� .%actor.name%
  end
elseif %actor.name% == ����
  if ( %world.curobjs(50070)% == 0 )
    say ������ ����, �������!
    say ��� ������ ���� ���������, �� ������.
    mload obj 50070
    ���� ������ .%actor.name%
  end
elseif %actor.name% == ����
  mechoaround %actor% �������� �������� ����� �����.
  msend %actor% �������� ������� ��� � �������� ��� �����.
  ����
  ������
  if ( %world.curobjs(50071)% == 0 )
    mload obj 50071
    ���� ���� .����
  end
elseif ((%actor.name% == �������) || (%actor.name% == ����))
  say ��� ����� ���� �����... ����� ��� �� ������ ������� �� �����.
  ���
  if ( %world.curobjs(50072)% == 0 )
    mload obj 50072
    ���� ��� .%actor.name%
  end
elseif (%actor.name% == �������)
  if ( %world.curobjs(50073)% == 0 )
    say �, �������, ����� ����... ������ ���� �����, � ���� �� ��� ���������� ���.
    mload obj 50073
    ���� ���� .�������
  end
elseif (%actor.name% == ������)
  if ( %world.curobjs(50074)% == 0 )
    say �, ������, ����� ����... ������ ���� �����, � ���� �� ��� ���������� ���.
    mload obj 50074
    ���� ���� .������
  end
elseif (%actor.name% == ������)
  if ( %world.curobjs(50075)% == 0 )
    say ����� ����! ��� ���� �������, �������.
    mload obj 50075
    ���� ������� .������
  end
elseif (%actor.name% == �����)
  if ( %world.curobjs(50088)% == 0 )
    mload obj 50088
    ���� ����� .�����
  end
elseif ((%actor.name% == �����) || (%actor.name% == ������� ) || (%actor.name% == ����� ))
  if ( %world.curobjs(50076)% == 0 )
    mload obj 50076
    ���� ����� .%actor.name%
  end
elseif (%actor.name% == ������� || %actor.name% == �����)
  if ( %world.curobjs(50077)% == 0 )
    mload obj 50077
    ____���� ���� .%actor%
  end
elseif (%actor.name% == ����)
  if ( %world.curobjs(50078)% == 0 )
    mload obj 50078
    ���� ��� .����
  end
elseif (%actor.name% == �����)
  if ( %world.curobjs(50079)% == 0 )
    mload obj 50079
    ���� .%actor.name%
    �����
    ���� ������� .�����
  end
elseif ((%actor.name% == ������) || (%actor.name% == ����))
  if ( %world.curobjs(50082)% == 0 )
    mload obj 50082
    emot ������� ������ ���������� ���� �� ����.
    ���� ������ .%actor.name%
  end
end
~
#50049
��������� ������ ����~
0 q 100
~
wait 1
if (%actor.name% == ������)
  if (%world.curobjs(50054)% == 0)
    say ������ ��� ���������, ����� ���� ���, �������� ��, �������, ���� ������� ������ ��� ��� ? �� �����.
    mload obj 50054
    � ����� .������
  end
end
if (%actor.name% == ����)
  if (%world.curobjs(50051)% == 0)
    say ��, ���� ���� ����, ���-�� ��� � ���� �������� ��� ������� ��������...
    mload obj 50051
    give ���� .����
  end
end
if %actor.name% == �������
  if %world.curobjs(1091)% == 0
    say ����������, �������! ���� � ����� �� ������.
    say ������, ������, �����.
    wait 1s
    say ��, ��� ��!
    mload obj 1091
    � ���� �������
  end
end
if %actor.name% == �����
  if %world.curobjs(50050)% == 0
    say ����������� ����, �����. ��� ������ � ���� � ������, ��� � ��������� ������.
    wait 1s
    mload obj 50050
    � ������� c����
  end
elseif %actor.name% == �����
  if %world.curobjs(50052)% == 0
    say ��, ��... ������ �����. ������, ���� � ����� �� ���������, ����� ���� �������.
    ��� �����
    mload obj 50052
    � �����.���� .�����
  end
elseif (%actor.name% == ������)
  if %world.curobjs(50053)% == 0
    say ���, ������ �� ����� ������ ? �� � ���� �������� ��� �� ������, �������, �� ��� � ���� ���� ����� ����.
    mload obj 50053
    give ���� .%actor.name%
  end
elseif ( %actor.name% == ������ ) || ( %actor.name% == ����� )
  if %world.curobjs(50055)% == 0
    say �� �������� ������? ������� ��� ��������� - ��� ��� ��� ����� ������� ��������!
    mload obj 50055
    give ������� .�����
    give ������� .������
  end
elseif %actor.name% == ������
  if %world.curobjs(50056)% == 0
    say �� ������ ������? �� �������... � �� ��� ��� ����� ������ �� ���.
    say � ��������� ����������� ����� ����� �������!
    mload obj 50056
    give ����� .������
  end
elseif %actor.name% == �����
  if %world.curobjs(50057)% == 0
    say ���, �����, ��������� �������!
    say ��� ���� ���� - ������ ����������� ��������������!
    mload obj 50057
    give ���� .�����
  end
elseif ((%actor.name% == ����) || (%actor.name% == �����) || (%actor.name% == �����))
  if %world.curobjs(50059)% == 0
    say ������, �������, �����!
    ����
    say ��� ���� ������� - �������. ���� ��� �����, �� ��� � �����������, �������!
    mload obj 50059
    give ����� .%actor.name%
  end
elseif %actor.name% == ������
  if %world.curobjs(50058)% == 0
    say ����������, ����������, ������!
    ����
    say ��� ���� ������� - �� �������.
    mload obj 50058
    give ����� .������
  end
elseif %actor.name% == �������
  if %world.curobjs(50060)% == 0
    say ������-�������� ��� ��������!
    ����
    say ��� � ����� ���� - �� ���������.
    mload obj 50060
    give ����� .�������
  end
elseif %actor.name% == �����
  if %world.curobjs(50061)% == 0
    say ������ ����, �����!
    ����
    say �����-�����, �� ��� �� ������... ��� ���, ����������.
    mload obj 50061
    give ������� .�����
  end
elseif %actor.name% == ������
  if %world.curobjs(50062)% == 0
    say ����� � ����, ����� ������? 
    : ����� ����������� � ��������� ���
    say ����, ����� �� ������, ����... ��� ��, ������ ����.
    mload obj 50062
    give ������ .������
  end
end
�� ���
~
#50050
�������_����_�����~
1 ghjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != �����
  oechoaround %actor% ����� �� ������� ����� ������������, ���������, ������ ��������� �����������.
  osend %actor% ����� ��������� � ��� ���� ������, � ������������. ����� ����� �������� ��� ������.
  return 0
  halt
else
  wait 1
  osend %actor% _������� ������������ � ��� �� ���.
end
~
#50051
������� ���� ����~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != ���� && %actor.name% != �����
  osend %actor%  ���� ����� �������� � ��� �� ��� � ����� ������ �� �����.
  return 0
  halt
else
  wait 1
  *oechoaround %actor% �������� ������ � ����� �� ������������� ����� �����.
end
~
#50052
������� ���� �����~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if (%actor.name% != �����) && (%actor.name% != ������) && (%actor.name% != ����)
  osend %actor% �� ���������� ����� ����� ���������� ������, �� � ��� �������� ������.
  return 0
  halt
else
  wait 1
  osend %actor% ����� ������ ������� ������ ���.
  oechoaround %actor% ����� ��������� �� �����, ��������� ��� �� ������.
end
~
#50053
������� ���� - ������~
1 gjp 100
~
if (%actor.level% > 30 )  (%actor.vnum% == -1 )
  halt
end
if %actor.name% == ������
  wait 1
  oechoaround %actor% ���� ������ ������ ����������� � ������������ ���������.
  osend %actor% ���� ���� ������������� � ������� ������� ������.
  halt
else
  osend %actor% ���� ������ ��������� ��������� ��� � ������� ��������, �� ����� ������ ����������� ������� ��� �� ���.
  osend %actor% &R��� ������������� ������!&n
  oechoaround %actor% %actor.name% �������%actor.g% ��������� ����� ������, �� ��������� ���� �������� �������� ���. �������!
  otransform 50053
  return 0
  halt
end
~
#50054
������� ���� ������~
1 ghjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ( %actor.name% == ������ ) || ( %actor.name% == ����� ) || ( %actor.name% == ������� )
  wait 1
  osend %actor% �������� �������� �� ������ ��������� �������� ������ �����.
  oechoaround %actor% �������� �������� �� ������ %actor.rname% ��������� ��� � ������� ����� ���-������ ��������.
else
  oechoaround %actor% %actor.iname% ��������� �������� ���� �� ������, ��� ���������� ��� ���-�� ������.
  osend %actor% �������� �������� �� ������ ������� ��� �� �����, �� ������������� �� ��������� ����.
  otransform 50054
  return 0
  halt
end
~
#50055
������� ���� - ������~
1 ghjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ( %actor.name% == ������ ) || ( %actor.name% == ����� )
  wait 1
  oechoaround %actor% ��������� ����� &W�&K�&W�&K�&W�&n �� ������� %actor.rname% ������ ����������� �� �����.
  osend %actor% ��������� ����� &W�&K�&W�&K�&W�&n �� ������� ������ ����������� �� �����.
  halt
else
  oechoaround %actor% %actor.iname% ���������%actor.g% � ��������%actor.g% � ������� �� �������� �������.
  osend %actor% �� ������� ����� ���������� ���� � ������� ������� � �� ���� �� ����������� ������� �� ����������.
  return 0
  halt
end
~
#50056
������� ���� ������~
1 ghjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != ������
  return 0
  oechoaround %actor% ������� �� ����� ����� ����� �������� �������� � ������ ������� %actor.vname%!
  oechoaround %actor% %actor.iname% �������%actor.g% � ��������%actor.g% � �������.
  osend %actor% ����� ����� �������� ������ � ����� ������ ������� ���!
  halt
else
  wait 1
  *oecho _����� ������� ����������, ����������� ���������.
  *oecho __����� ����������� �������� ������ ������� ���� � ���������...
end
~
#50057
������� ���� - ����~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != �����) && (%actor.name% != ����))
  return 0
  osend %actor% _��� �� �� ����� ������� ��� ������� - � ��� �� �� ������ ��� ���-����!
  halt
end
~
#50058
������� ���� ������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != ������ && %actor.name% != ������� && %actor.name% != ������ && %actor.name% != �����
  otransform 50058
  return 0
  oecho ___&Y����� &R�� ����&n ����� ������ ��������, � ���� �� ������ ��� �����!
  halt
else
  wait 1
  oecho _ &R����� &Y������������ &R��������&n �� ���� %actor.rname% &W���� ��������&n.
end
~
#50059
������� ���� - �����~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != ����) && (%actor.name% != �����) && (%actor.name% != �����))
  return 0
  oechoaround %actor% %actor.name% ��������� ����� �������.
  oecho ___������������ �� ������� �������� ���� ���� �� ��������� %actor.vname% �����!
  halt
else
  wait 1
  oecho _���� �� ������� ���� ����� ���������� � ��������� ���.
  oecho ___���������� �������� ������ ����� � ���� �������� �������� �����!
end
~
#50060
������� ���� - �������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != �������
  return 0
  oechoaround %actor% %actor.name% �������%actor.u% ����� �����, �� ����� ��������%actor.u% � ���� �� ����%actor.g%.
  oecho __����� �� �������� ����������� ����� ��� ��������� ������, ��� �� �� ������� �������� ��������.
  halt
else
  wait 1
  oecho _������� ������� ��� ���� ���������� � ����� ��� ����� ����.
end
~
#50061
������� ���� - �����~
1 ghjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != �����
  return 0
  oechoaround %actor% %actor.name% ��������%actor.u% ��� ������, �� ����� ���������%actor.g% � ��������%actor.g%.
  osend %actor%  _������� ����� ������������, � ��� ���� ����������� ����� ���� �� �������� ��� ��� �������!
  halt
else
  wait 1
  oecho ����� �������� �� ������� ����� ��������� �������� �������.
end
~
#50062
������� ���� - ������~
1 ghjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != ������ && %actor.name% != ����� && %actor.name% != �����
  otransform 50062
  return 0
  oechoaround %actor% %actor.name% ��������%actor.u% ����� ����� ������...
  oechoaround %actor% __...�� ������-�� �������� ���, �������� ������ � ��� �����.
  osend %actor% __��� ������������ �� ������ ������ ���� �� ������� ��� ���� � �������.
  *opurge %self%
  halt
else
  wait 1
  oecho �� ��������� ��� ����������, ��� ���� ���� ��������� � ������ %actor.rname%.
end
~
#50063
������� ���� - ����~
1 ghjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != ���� && %actor.name% != ������ && %actor.clan% != �� && %actor.clan% != �� && %actor.clan% != ��
  otransform 50063
  oechoaround %actor% %actor.name% ��������%actor.u% � �������� ���� � ������� ������.
  oechoaround %actor% ���� ����� ������� � ���� %actor.rname%!
  osend %actor% &R __������ ���� ������� ��� � ����! 
  osend %actor% &R __��� ������������� ������!&n
  if %actor.clan% != ��
    return 0
    halt
  end
else
  wait 1
  oecho ������ ������ �������� ������, ������ ���� � ����������.
end
~
#50064
������� ���� - ��������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ( %actor.name% != �������� ) && ( %actor.name% != ������ )
  oechoaround %actor% _������ ��������, ������ �������� �� ������� ���� %actor.rname% !
  osend %actor%  __������ ��������, ������ �������� �� ����� ����!
  return 0
  halt
else
  wait 1
  oecho _������ ���� ���������� ������� �������.
end
~
#50065
������� ���� - ������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != ������
  oechoaround %actor%  ����������� �� ����� ��������� ��������� ������� � ������ %actor.vname% �� �����.
  osend %actor% _����������� �� ����� �������� ��������� ������� � ����������.
  return 0
  halt
else
  wait 1
  oecho _����������� �� ����� ��� ��� ��������� ��������� ��� ���������.
end
~
#50066
������� ���� - ������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != �������) && (%actor.name% != �������) && (%actor.name% != �����) && (%actor.name% != ������))
  osend %actor% �������� ����� �������: �� �� � ��������� ����� ��� � ��� !
  return 0
  halt
end
~
#50067
������� ���� - �����~
1 ghj 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != �����
  osend %actor% _��� ������� ��� ������� ������������ � ����� ������!
  return 0
  halt
else
  wait 1
  oecho _���� ��� ������� ����� ���� ��������, ������� ��� �����.
end
~
#50068
������� ���� - �����~
1 ghjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != �����
  osend %actor%  �� ���� ������� ����, ������������� � ����!
  return 0
  halt
end
~
#50069
������� ���� - �����~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ( %actor.name% != ����� ) && ( %actor.name% != ������ ) &&  ( %actor.name% != ������ ) &&  ( %actor.name% != �������� ) &&  ( %actor.name% != ������ ) &&  ( %actor.name% != ������ ) &&  ( %actor.name% != ������� )
  osend %actor%  _������������ ���������� ����, ��������� �� ������ ���� �� ������������.
  return 0
  halt
else
  wait 1
  oecho _������� ����� �� ������ ���� �������� �����������.
end
~
#50070
������� ���� - ������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != ����
  osend %actor% _������ ��������� ����� �������� �� ����������.
  return 0
  halt
else
  osend %actor% ������ ��������� ����� ���������� � ��������� ������� �� �������.
  oechoaround %actor% ������ ��������� ����� ���������� � ��������� ������� �� �������.
end
~
#50071
������� ���� - ������~
1 gj 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != ����
  osend %actor% _���� �������� ���������, ���� �� ������, � ���� ���� ��� ����� ������ ��������.
  osend %actor% ___...��� ��� ������ ��� �����!
  return 0
  halt
else
  wait 1
  oecho _�������� ������� ������ ������� � ����� �����.
  oecho __����� ����� ��������� ������ �������.
end
~
#50072
������� ���� - ��������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != ������� && %actor.name% != ���� && %actor.name% != ����� && %actor.name% !=  �������
  osend %actor% _�������� ����� �������� ��������� � �������, ������� ����� �������.
  return 0
  halt
else
  wait 1
end
~
#50073
������� ���� - �������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != �������
  osend %actor% _����� �� ���� ��������� ��������� ���������� ���.
  return 0
  halt
else
  wait 1
  oecho _����� �� ���� ��������� ��������� ��������� ����� ������.
end
~
#50074
������� ���� - ������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != ������
  osend %actor% _������������� � �����, �� ���� �� ������������ � ����, � ��� ������ ������ ����.
  return 0
  halt
else
  wait 1
  oecho _���� �� ������ ��������� �������, �� �� ���-�� ����.
end
~
#50075
������� ���� - ������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != ������) && (%actor.name% != �����) && (%actor.name% != ������) && (%actor.name% != �������) && (%actor.name% != ���������))
  otransform 50075
  osend %actor% _������� �������� ��������� �� ����� ����.
  return 0
  halt
else
  wait 1
end
~
#50076
������� ���� - �����~
1 gjlp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
switch %random.9%
  case 1
    set word &W���������&n
  break
  case 2
    set word &Y���������&n
  break
  case 3
    set word &M���������&n
  break
  case 4
    set word &B���������&n
  break
  case 5
    set word &C���������&n
  break
  case 6
    set word &R���������&n
  break
  case 7
    set word &r���������&n
  break
  case 8
    set word &b���������&n
  break
  case 9
    set word &m���������&n
  done
  if ((%Actor.name% != ������� ) && (%Actor.name% != ������� ) && (%Actor.name% != ������ ))
    osend %actor%  ����� �� %word% ������ �������� � ��� ����� ������� � ����� ����� �������� �� �����.
    return 0
    halt
  else
    wait 1
    oecho ____&K�����&n ����� ������ � ����� ��������� %word%.
  end
~
#50077
����� ������� - ���������� ����~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != ������� && %actor.name% != �����
  osend %actor%  ��� �� ������� ����� ����, �� ����� �� �� ����������...
  return 0
  halt
else
  osend %actor% �� ����� ����, �� �������� ����� ���������, �������� �� ���� �������...
  oechoaround %actor% %actor.iname% ����%actor.g% ����, �� �������� ����� ���������, �������� �� ���� �������...
end
~
#50078
������� ���� - �������~
1 gjp 100
~
if (%actor.level% > 30)
  halt
end
if ( %actor.name% != ����)
  *%self.val1% = 0
  otransform %self.vnum%
  osend %actor% _���������� ���� �� �������� ���������� ����-������� ������.
  *return 0
  halt
end
wait 1
set owner %self.worn_by%
if (%owner.name% == ���� )
  halt
end
oechoaround %actor% _���������� ���� �� %self.pname% �� ��������� ���������� ������� ���������� ������.
osend %actor%  _���������� ���� �� %self.pname% �� ��������� ���������� ������� ���������� ������.
~
#50079
������� ���� - �����~
1 gjop 100
~
if ((%actor.level% > 30) && (%actor.level% == -1))
  halt
end
if %actor.name% != ����� && %actor.name% != �����
  otransform 50079
  osend %actor%  ������� ����������� �����������.
  osend %actor%  ��� ����������� �� ������ � �� ���������� ��������� �����...
  if ( %actor.clan% != �� )
    oforce %actor% drop �������
    return 0
  end
else
  set owner %self.worn_by%
  if %owner.name% == ����� || %owner.name% == �����
    halt
  end
  wait 1
  osend %actor% �� ������� ������� ������� &R�&K�&R�&K�&R�&K�&R�&K�&R�&K�&R�&n � ������ �������� ������������ �����������.
  oechoaround %actor% %actor.name% ������%actor.g% ������� &R�&K�&R�&K�&R�&K�&R�&K�&R�&K�&R�&n � �����%owner.g% �������� ������������ �����������.
end
~
#50080
���� ������ ��� �����~
0 m 1
~
say ������, ���� ��� ���� ������.
say ��� ������ �� ��������� :)
return 0
halt
wait 1
if %amount% == 100
  ���
  wait 1
  say ������ ���� �������� ? �� ��� �, ����� ��� ��������.
  msend %actor% ������ ��������� �����, � �� ������ �������� � �����.
  mechoaround %actor% ������ ��������� ����� � %actor.name% ������ �������%actor.g% � �����.
~
#50081
�������� ������~
0 e 100
~
if %actor.is_killer%
  eval dushik 1
else
  eval dushik 0
endif
dg_affect %actor.name% ����������� 10 100
~
#50082
������� ���� - ������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != ������ ) && (%actor.name% != ���� ) && (%actor.name% != ������� ))
  osend %actor% _&R��������� ��� ��������� ���� � ������ �������.&n
  return 0
  halt
else
  wait 1
  *oecho ��������� ��� �������� ����� � ����������.
~
#50083
���� � ������� � ����~
2 g 100
~
if %actor.vnum% != -1
  halt
end
set schet 0
set igrok %self.people%
while %igrok%
  if %igrok.vnum% == -1
    eval schet %schet%+1
  end
  * wecho %igrok.name%  ��� ����! %schet% - ����� ���� ! %actor.vnum% - ����
  set igrok %igrok.next_in_room%
done
if %schet% > 1
  return 0
  wsend %actor% �� �� ������ ���� ������, ��� ������.
else
  return 1
end
halt
~
#50084
��_�������_�_����������~
2 g 100
~
if %actor.vnum% != -1
  halt
end
set schet 0
set igrok %self.people%
while %igrok%
  if %igrok.vnum% == -1
    eval schet %schet%+1
  end
  * wecho %igrok.name%  ��� ����! %schet% - ����� ���� ! %actor.vnum% - ����
  set igrok %igrok.next_in_room%
done
if %schet% > 0
  return 0
  wsend %actor% �� �� ������ ���� ������, ��� ������.
else
  return 1
end
~
#50085
������� ����� ������~
1 g 100
~
osend %actor% �� �� ������ ����� ���� ������.
return 0
~
#50086
������� ���� - �������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != �������
  osend %actor%  �� ���� ������� ����, ������������� � ����!
  return 0
  halt
end
~
#50087
�����~
1 c 4
�����~
wait 1
if %actor.name% != ������
  halt
end
oecho ��������� ����� ��� ����������� � �������� �� %arg%!
~
#50088
������� ���� - �����~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != �����
  osend %actor%  ����� ������ ���� ���������� �� ����� ������� � ������������ �����...
  return 0
  halt
else
  oechoaround %actor% ����� ޣ���� ���� �������� �������� �������...
  osend %actor% ����� ޣ���� ���� �������� �������� �������...
end
~
#50089
�������~
1 c 2
������~
wait 1
oecho ������ ������� �������� � ������.
oecho &R������ ������� ����������� ������ ������ ���.&n
oecho ��� ������������� ������!
oecho ������ ������� �������� ��� � ������, ������ ��������.
oecho �� ������!  H�� ����� ����...
oecho �� �������� 66666666 ����� �����.
oecho _
oecho 0) �������������.
oecho 1) ������ ����.
oecho 2) ������ �������� ������ ���������.
oecho 3) ������ �������.
oecho 4) �������� ������.
oecho 5) ������� ��������.
%actor.wait(3)%
~
#50090
���������� ������~
0 z 100
~
�������
purg %self%
~
#50091
���������� ������~
1 c 100
�������~
wait 1
osend %actor% �� ����������� ��������������� �������.
oechoaround %actor% %actor.iname% ����������%actor.a% ��������������� �������.
oload mob 50090
calcuid razhech 50090 mob
attach 50090 %razhech.id%
run 50090 %razhech.id%
~
#50092
���� �������~
1 j 100
~
if (( %actor.level% >= 31) || !%actor% || (%actor.vnum% != -1))
  halt
end
return 0
osend %actor% �� ���� �� �������, ����������� ��������� ��������!
%actor.hitp(1)%
oechoaround %actor%   %actor.name% ���� �� ������%actor.g% � ������������� �������, ����� �������%actor.u% ������ �������� ��������!
oecho ���, ����� ������� �� ����� �� �������...
~
#50093
������ ���� �������~
1 j 100
~
wait 1
osend %actor% ����� ������ ������� ���.
osend %actor% ������� ��������!
~
#50094
������������~
1 c 1
���������~
wait 1
if !%arg.contains(������������)%
  osend %actor% ��� �� ������ ���������?
  halt
end
osend %actor% �� �������� ��������� ������������!
osend %actor% ��� ���� �� ����� �� ������� ���������� ����?..
foreach target %self.pc%
  if %target% != %actor%
    wait 1
    oecho %target.name% ���������%target.u% �� ����� ������.
  end
done
%actor.wait(6)%
~
#50095
����������� ������~
1 c 1
������������~
wait 1
osend %actor% �� �������� � ����� ����� ������ � ��������� ������ ����������� �� �������.
oecho &G����� ������������� ������� ���������� ���������� ������.&n
wait 1
otransform 50092
~
#50096
������� ����� - ����~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != ���� && %actor.name% != ���� && %actor.name% != ������
  osend %actor% &R�������� ������� ���������� ���������� � ����� ������ ������ ��� �� ���!&n
  return 0
  halt
else
  oechoaround %actor% &Y�������� ������� �������� �������� �������� � ����������� ���������� �  �������� ����� ����� &n
end
~
#50097
������� 2~
1 c 2
������~
wait 1
oecho ����� �������� � ������.
oecho ������ �������� � ������.
oecho ������� ������� �������� � ������
oecho ������� ������� �������� � ������
oecho ������� ������� �������� � ������
oecho ������� ������� �������� � ������
oecho �������� �������� � ������
oecho ������� ��������� �������� � ������
oecho ������� ��������� �������� � ������
oecho ������� ��������� �������� � ������
oecho ������� ��������� �������� � ������
oecho ����� �������� � ������
oecho ������� ����� �������� � ������
oecho ������� ����� �������� � ������
oecho ������� ����� �������� � ������
oecho ������� ����� �������� � ������
oecho ������� �������� � ������
oecho ����� �������� � ������
~
$~
