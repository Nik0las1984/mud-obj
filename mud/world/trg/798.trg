#79800
reset~
2 f 100
~
wdoor 79807 east purge room 79806
wdoor 79806 west purge room 79807
rdelete klok798 79839
rdelete nogti798 79839
rdelete zybu798 79839
~
#79801
���� ���������~
0 r 100
~
wait 1s
� ��� �����? ���� ��� �����?
detach 79801 %self.id%
~
#79802
����~
0 d 100
����~
wait 1s
say �, �� ������, ���� ����!
wait 1s
say � �� ��� ������� ��� ���� �����, �� �� ���� ����� �� � ��� ����������.
wait 1
say � ��� ������ ��������� ������� ��� �� ����������, �����, �� ������� ��������.
wait 1s
say � ����������� ��������� ��������, ��� � ����� �� �������.
say � ������ ���� ������ ���� ������, � �� ������� ������� � ������ ����� ��� ����.
wait 1s
say �� ���� ���� �������! �� ������� ����!
wait 1s
say �����? ������ ������ ���� ������ �� ��������� ������, �� �����!
wait 2s
say �� ���! ������! �� ���� ���������.
say �� ��! ��� ����! ���� �������� ��������� � ������, ������� �� ���������.
mdoor 79806 west room 79807
mecho �������� ��������� ����� � ����� ���� �������� ��������� ��������� � ���������, ������� � ������.
wait 5s 
mdoor 79806 west purge room 79807
mecho �������� ������ ��������� ������ ������ � ��������� � ���.
~
#79803
���� ������ � ������~
0 n 100
~
if (%world.curobjs(79809)% < 3) && (%random.100% <= 10)
  mload obj 79809
end
~
#79804
������� ��������~
2 c 100
�������~
wecho �� ��������� �� ���������.
wait 2s
wecho ����� �� �������� ������ � �����.
wait 1s
wecho �������� ����� ��������, � ������ �� ������ �������� �������.
wait 10
wecho �� �������� ����� ����� � ������ ������� ��������� "����, �����!"
wdoor 79807 east room 79806
wait 5s
wecho �������� ������ ������.
wdoor 79807 east purge room 79806
~
#79805
������~
2 f 100
~
wload obj 79800
~
#79806
���� ������~
0 f 100
~
mload obj 79728
~
#79807
���� ����� ��������~
0 n 100
~
if (%world.curobjs(79801)% < 3) && (%random.100% <= 3)
  mload obj 79801
end
if (%world.curobjs(79802)% < 3) && (%random.100% <= 3)
  mload obj 79802
end
if (%world.curobjs(79803)% < 3) && (%random.100% <= 3)
  mload obj 79803
end
if (%world.curobjs(79804)% < 3) && (%random.100% <= 3)
  mload obj 79804
end
if (%world.curobjs(79805)% < 3) && (%random.100% <= 3)
  mload obj 79805
end
if (%world.curobjs(79806)% < 3) && (%random.100% <= 3)
  mload obj 79806
end
if (%world.curobjs(79807)% < 3) && (%random.100% <= 3)
  mload obj 79807
end
if (%world.curobjs(79808)% < 3) && (%random.100% <= 3)
  mload obj 79808
end
~
#79808
���� ����� � ������~
0 n 100
~
if (%world.curobjs(79810)% < 3) && (%random.100% <= 10)
  mload obj 79810
end
~
#79809
���� ���� � ������~
0 n 100
~
if (%world.curobjs(79811)% < 3) && (%random.100% <= 10)
  mload obj 79811
end
~
#79810
���� ������ � ������~
0 n 100
~
if (%world.curobjs(79812)% < 3) && (%random.100% <= 10)
  mload obj 79812
end
~
#79811
���� ���������� � ������~
0 n 100
~
if (%world.curobjs(79813)% < 3) && (%random.100% <= 10)
  mload obj 79813
end
~
#79812
���� ������ � ������~
0 n 100
~
if (%world.curobjs(79814)% < 3) && (%random.100% <= 10)
  mload obj 79814
end
~
#79813
���� ����� � ������~
0 n 100
~
if (%world.curobjs(79815)% < 3) && (%random.100% <= 10)
  mload obj 79815
end
~
#79814
���� ������ � ������~
0 n 100
~
if (%world.curobjs(79816)% < 3) && (%random.100% <= 10)
  mload obj 79816
end
~
#79815
���� ��� � ������~
0 n 100
~
if (%world.curobjs(79818)% < 3) && (%random.100% <= 10)
  mload obj 79818
end
~
#79816
���� ���� � ������~
0 n 100
~
if (%world.curobjs(79817)% < 3) && (%random.100% <= 10)
  mload obj 79817
end
~
#79817
����� ����� ������~
0 n 100
~
if (%world.curobjs(79819)% < 3) && (%random.100% <= 5)
  mload obj 79819
end
if (%world.curobjs(79820)% < 3) && (%random.100% <= 5)
  mload obj 79820
end
if (%world.curobjs(79821)% < 3) && (%random.100% <= 5)
  mload obj 79821
end
if (%world.curobjs(79822)% < 3) && (%random.100% <= 5)
  mload obj 79822
end
~
#79818
���� ������� � ������~
0 n 100
~
if (%world.curobjs(79823)% < 3) && (%random.100% <= 10)
  mload obj 79823
end
~
#79819
����������� �������~
0 r 100
~
wait 10
say ���������� %actor.name%!
wait 1
switch %actor.class%
  case 0
    say �� ������ ����������! ����� ��� ������?
  break
  case 1
    say �� ������ ����������! ����� ��� ������?
  break
  case 2
    say �� ������ ����������! ����� ��� ����?
  break
  case 3
    say �� ������ ����������! ����� ��� ��������?
  break
  case 4
    say �� ������ ����������! ����� ��� �������?
  break
  case 5
    say �� ������ ����������! ����� ��� ���������?
  break
  case 6
    say �� ������ ����������! ����� ��� ��������?
  break
  case 7
    say �� ������ ����������! ����� ��� ���������?
  break
  case 8
    �� ������ ����������! ����� ��� ������������?
  break
  case 9
    say �� ������ ����������! ����� ��� ������?
  break
  case 10
    say �� ������ ����������! ����� ��� �������?
  break
  case 11
    say �� ������ ����������! ����� ��� ������?
  break
  case 12
    say �� ������ ����������! ����� ��� �����?
  break
  case 13
    say �� ������ ����������! ����� ��� �����?
  break
  default
    ���
  break
done
Say �� ������� ���� ��������?
���
wait 1s
say �������!
wait 1s
if (%world.curmobs(79821)% > 0)
  calcuid helper 79821 mob
  mteleport %helper% %self.realroom%
  mecho _��������-������ ������� "����� ������� �� ���!"
  wait 10
  mecho ����� ������� �������� � ������� �� ��� ��������-�������.
  wait 1s
  say �� �� ��� ��� ������� ��� ������� ������� ����?
  ���
end
detach 79819 %self.id%
~
#79820
����� ������� ���~
0 d 100
���~
Say ��-��! � ��� � �����!
say �� ������ � ���� ������ ��� ��������.
���
wait 1s
say ������� �� ���� ���� ��� �� ������ ���...
wait 10
say �������!
����
detach 79820 %self.id%
~
#79821
������ �������~
0 d 100
������~
say ������ ���!
wait 1s
say ����� ��� �����!
wait 10
say ������� �, � ����������� �� ���� ������.
say ��� ������ ������ ����� ������ � �����.
say ����� �� ������� � ����� �����, ���� ���� �� � ������.
���
wait 1s
say ����� � ����� � ������� �� ������� ����� ��� ����.
wait 5
say ��������!
mecho _��������-������ ������ ��� ������� �� �����.
detach 79821 %self.id%
~
#79822
����������� �����~
0 r 100
~
wait 1
Say �� ������ ��������! �����, �� ��� � ����� �� ����������.
say ������������ ������ ������!
wait 5
say ���� ����?
detach 79822 %self.id%
~
#79823
����� �����~
0 d 100
�����~
say �����?
���
wait 1s
say ��� �������� �����? ������� � � ������ ���, �� ��� ������ �� ���� � ������� ������...
say ������� �� ������ ������� � ���-�����, ����� � ���� ��� ���� ������ � ��������.
say �� ����� ���! �� ������ �� �� ���� ���� ������ ������ ���!
wait 1s
say ������� �� ���� ������ � ����� �� ������, � ����� ������ ����� � ��� �����.
detach 79823 %self.id%
attach 79829 %self.id%
~
#79824
����������� ���~
0 r 100
~
mecho _������� ���� ����, ���-����� �������� �� ������� � ������:
say ���� ���� �������?
detach 79824 %self.id%
~
#79825
����� ���~
0 d 100
������~
say ������?
say ����� �������?
say ����� � ���� ������� ������ ��������.
say �� ��� ��, ������� �� �� ���...
���
wait 2s
say � ������� �� �� ��� ����� �������!
���
say � ����� ��� ����������.
say C�����
mecho ���-����� �������� ������ ������� ������.
detach 79825 %self.id%
~
#79826
���� ������~
0 f 100
~
eval taildrop %world.curmobs(79822)%
if (%taildrop% < 2)
  mload obj 79824
end
~
#79827
����� ���~
0 j 100
~
if %object.vnum%==79824
  wait 1
  mpurge %object%
  say �� �������! ����� ��������.
  say � ���� ��������� � ���� ���������.
  say ��� � ����!
  say ����� ������.
  mecho ���-����� ������ ������ � �����.
  mload obj 79825
  ���� ��� %actor.iname%
end
���
���� ���
~
#79828
������ �����~
0 j 100
~
if %object.vnum%==79825
  wait 5
  mecho ����� ��������� ������ � ������������� ��� �������.
  mpurge %object%
  wait 1s
  say ��! ��� ������ ��� ������.
  wait 10
  mecho ����� ��� ��� ��������� �� ������ � �������:
  say �������-�� �� ��� ����� � ���� ����������, � ��� ����� ���� ������ ����� �����������.
  say ��� ��������� � � ���� �����!
  wait 1s
  say ���� �������� ��� ������������, ��� �� ���� ������� �������, ��� ����� �����������, ����� ��������� �����.
  say �� ���, ������.
end
~
#79829
����������� ������~
0 qz 100
~
wait 10
mecho ������ ���, ����� ������� ��� � ������� � �������:
say ���� ���� �����?
detach 79829 %self.id%
attach 79830
~
#79830
����� ������~
0 dz 100
���� ������~
say �� ��� ��, ���� � ���� ���� ������ ����� �����������.
say ��� ������ ������ ��� ���� ���� ������� �� ������� � ������ ���� ��� ����.
wait 1s
say ������! ������ ��������!
wait 1s
say �� � ���� ����� ���� �� �������...
wait 10
say ���� �� ��������� ��� �����!
wait 10
say ��������.
detach 79830 %self.id%
~
#79831
���� �����~
0 f 100
~
eval toothdrop %world.curmobs(79818)%
if (%toothdrop% < 2)
  mload obj 79827
end
~
#79832
���� ������~
0 f 100
~
eval naildrop %world.curmobs(79801)%
if (%naildrop% < 2)
  mload obj 79826
end
~
#79833
���� �����~
0 f 100
~
mload obj 79829
~
#79834
����� ������~
0 j 100
~
if %object.vnum%==79829
  wait 1
  mpurge %object%
  mecho ����� ������ ������, ����� ���� � ������ � ����� ����� �����.
  wait 1s
  say ������ �����!
  wait 1s
  say �� ��� ��, �� �������� �������� ����, � � ������� ����.
  say ���, �����!
  mload obj 79828
  ���� ���� %actor.iname%
end
~
#79835
����� �������~
0 j 100
~
if (%object.vnum% == 79826)
  wait 1
  mpurge %object%
  set nogti798 1
  global nogti798
  mecho ������� ����� ���������� ������� �����.
  wait 1s
  say ��� ����� ��������!
end
if (%object.vnum% == 79827)
  wait 1
  mpurge %object%
  set zybu798 1
  global zybu798
  mecho ������� ����� ���������� ������� ����.
  wait 1s
  say ����� ���� ��������!
end
if (%object.vnum% == 79828)
  wait 1
  mpurge %object%
  set klok798 1
  global klok798
  mecho ������� ����� ���������� ������� ���� ������.
  wait 1s
  say ����� ���� ������ �� �������!
end
if ((%nogti798% == 1) && (%zybu798% == 1) && (%klok798% == 1))
  wait 2s
  mecho ������� ������� ��� ����������� � ����� � ������ ������ ������������:
  wait 3
  mecho _"�� � ����-������, �� � ����, �� � ������, �� � �����, �� � �������, �� � �����,
  mecho _�� � ������ ����� ����� - �������� �����. ��� �������, ���� ����� �� ������� ����, �� ����� ����".
  wait 1s
  mecho ������ ������ ����� ��������, ���������, �������...
  wait 1s
  ��
  say ��� � ����� �������������...
  wait 10
  mecho ������� ������� ����� �� �����.
  mload obj 79830
  ���� ����� %actor.name%
end
~
#79836
����� �������~
0 j 100
~
if (%object.vnum% != 79830)
  %send% %actor% ��� ��� �� �����!
  return 0
  halt
end
wait 2
mpurge %object%
mecho %self.iname% �������� ������� ����� � ������.
wait 1s
���
say ��� ����� �����!
wait 1s
say ��������%actor.g% �� �������! �������!
if (%actor.quested(79836)%)
  eval %actor.gold(+5000)%
  %send%       %actor% %self.iname% �������� ��� ������ ������.
  %echoaround% %actor% %self.iname% �������� %actor.dname% ������ ������.
else
  eval temp %actor.setquest(79836 ��������)%
  switch %actor.class%
    case 0
      *=====������=====*
      %load% obj 532
      %echo% %self.iname% ������ �� ��� ������ �����.
    break
    case 1
      *=====������=====*
      %load% obj 571
      %echo% %self.iname% ������ ���-�� �� ��� ������.
    break
    case 2
      *======����======*
      %send%       %actor% %self.iname% ������ ��� ������ ��� ��������.
      %echoaround% %actor% %self.iname% ������ %actor.vname% ������ ��� ��������.
      mskillturn %actor% �������� set
      mskilladd %actor% �������� 10
    break
    case 3
      *=====�����!=====*
      %send%       %actor% %self.iname% ������� ��� ��� ���������� ������������� ��� �����.
      %echoaround% %actor% %self.iname% ������� %actor.dname% ��� ���������� ������������� ��� �����.
      mskillturn %actor% �����������.����� set
      mskilladd %actor% �����������.����� 10
    break
    case 4
      *======����======*
      %send%       %actor% %self.iname% ������ ��� ������ ��� ��������.
      %echoaround% %actor% %self.iname% ������ %actor.vname% ������ ��� ��������.
      mskillturn %actor% �������� set
      mskilladd %actor% �������� 10
    break
    case 5
      *======����======*
      %send%       %actor% %self.iname% ������� ����� � ����� ������.
      %echoaround% %actor% %self.iname% ������� %actor.dname% ����� � %actor.s% ������.
      mskillturn %actor% ����������.����� set
      mskilladd %actor% ����������.����� 10
    break
    case 6
      *=====�����!=====*
      %load% obj 587
      %echo% %self.iname% ������ �� ��� ������ �����.
    break
    case 7
      *======����======*
      %load% obj 578
      %echo% %self.iname% ������ �� ��� ������ �����.
    break
    case 8
      *=====������=====*
      %load% obj 534
      %echo% %self.iname% ������ �� ��� ������ �����.
    break
    case 9
      *=====������=====*
      %load% obj 566
      %echo% %self.iname% ������ �� ��� ������ �����.
    break
    case 10
      *======����======*
      %send%       %actor% %self.iname% ��������� ��� ��� ������� ����������� ������.
      %echoaround% %actor% %self.iname% ��������� %actor.dname% ��� ������� ����������� ������.
      mskillturn %actor% ��������������.������� set
      mskilladd %actor% ��������������.������� 10
    break
    case 11
      *======����======*
      %send%       %actor% %self.iname% ������� ��� ��� ���������� ������������� ��� �����.
      %echoaround% %actor% %self.iname% ������� %actor.dname% ��� ���������� ������������� ��� �����.
      mskillturn %actor% �������� set
      mskilladd %actor% �������� 10
    break
    case 12
      *======����======*
      if !%actor.skill(���������� �����)%
        %send% %actor% %self.iname% ������ �������� ��� ������� � ������.
        ��� .%actor.name%
        eval %actor.gold(+5000)%
      else
        %send%       %actor% %self.iname% ������� ����� � ����� ������.
        %echoaround% %actor% %self.iname% ������� %actor.dname% ����� � %actor.s% ������.
        mskillturn %actor% ����������.����� set
        mskilladd %actor% ����������.����� 10
      end
    break
    case 13
      *=====�����!=====*
      %send%       %actor% %self.iname% ��������� ��� �� ��� ������� �������� �������� ��� ���������.
      %echoaround% %actor% %self.iname% ������� %actor.dname% �� ��� ������� �������� �������� ��� ���������.
      mskillturn %actor% ��������� set
      mskilladd %actor% ��������� 20
    break
    default
    break
  done
end
give all .%actor.name%
drop all
wait 1s
say ������ � � �������� ����� ����������!
������� ������! ������������� � �����������!
wait 1s
%send%       %actor% %self.iname% ������� ��� � ������ �� ���.
%echoaround% %actor% %self.iname% ��������� �� %actor.vname%.
wait 10
���
wait 10
say � �� ���� �����%actor.g%? ���� ������, ���� ���%actor.g%!
if (%world.curmobs(79821)% > 0)
  wait 1s
  mecho ��������-������ ��������� � ������� ����� �������.
  wait 10
  say ��������!
  wait 10
  mecho ����� ������� ���� �� ������.
  calcuid helper 79821 mob
  mteleport %helper% 79848
end
~
#79837
����� �������~
0 k 100
~
if ((%world.curmobs(79824)% == 0) || (%random.100% > 20))
  detach 79837 %self.id%
  halt
end
calcuid warrior 79824 mob
if (!%warrior.fighting%)
  shout �� ���! �� ������! 
  mteleport %warrior% %self.realroom%
end
detach 79837 %self.id%
~
#79838
������� �������~
0 r 100
~
set moblist 79800 79802 79803 79805 79806 79807 79808 79809 79810 79811 79812 79813 79814 79815 79816 79817 79823 79825 79826 79828 79829 79830 79831 79832 79833 79834 79835 79836 79837 79838 79839
set num 0
foreach mobnum %moblist%
  eval num %num%+%world.curmobs(%mobnum%)%
done
if (%num% > 0 )
  ���
  %self.action(+!���������)%
  halt
end
if (%num% < 1 )
  %self.action(-!���������)%
  say � ���� ������ ��� ������?
  ���
  say � ���� ������� ������ ��� ������...
  wait 1s
  say ��������! � ���� �� �� �����!
end
~
#79839
���� ����~
2 z 100
~
wecho �� �������� ������ �������� ������� � �������� �� �� ���.
wecho ������ ��� ����� ����������������� � ����������� ����� ���������.
wload obj 79832
detach 79840 %self.id%
~
#79840
������ �������~
0 f 100
~
calcuid droom %self.realroom% room
attach 79839 %droom.id%
exec 79839 %droom.id%
~
#79841
���� �����~
0 r 100
~
wait 5
mecho ����� �������� �� ��� ����� �������� ��������, � ��������� ������� ���-�� �������������.
wait 10
mecho �� ������������ � ������ � ������ �������� ��������� �����:
wait 1
mecho ...������, ������, ��� ������, ����� ���!
mecho ...������, ����� ���, ������!
detach 79841 %self.id%
~
#79842
������� �����~
0 j 100
~
if %object.vnum%==79833
  wait 1
  mpurge %object%
  wait 1s
  mecho ����� �������� �� ������.
  wait 2s
  mecho ����� ����� ��������� � �� ������:
  wait 10
  say � ��� ����� ������� ������ �� ����� � �� ����� ������ � ����.
  switch %random.2%
    case 1
      mload obj 79834
      case 2
        mload obj 813
        say ������� ���.
        ���� ��� %actor.name%
      done
      detach 79842 %self.id%
    end
~
#79843
���� ��������~
1 n 100
~
if (%world.curobjs(79834)% > %world.maxobj(79834)%)
  opurge %self%
end
~
#79844
����� ����� �����~
0 k 100
~
if %world.curmobs(79813)% == 1
  if %random.10% < 3
    set victim %random.pc%
    if %victim%
      mdamage %victim% 80
      mechoaround %victim% ������ ������ ��������� � ����� %victim.vname%.
      msend %victim% ������ ������ ��������� � ���� �����.
      mecho ��� ������ ������� ����� �� ������ ������ ������ �������.
    end
  end
end
~
#79845
����������� ����~
0 r 100
~
wait 1s
� ����������!
� ������ �������������?
detach 79845 %self.id%
~
#79846
����� ����~
0 d 100
����~
wait 1s
� ���� � ���� ��� � ���������,
� ������� ��� � ��� �� ����� �������� ������ ������.
wait 1s
� � ������, �� ����.
���
wait 1s
� � ��� �� ����� � ���� ���, ������ ����!
� � ���� ������� �, ���� ������� ���.
~
#79847
���� ������~
0 r 100
~
wait 10
� ��� ��������� �����?
wait 5
� ����� ��� ������?
~
#79848
����� ������~
0 d 1
����� ������~
*������� ��� ���� �� 79849 ����� �������� %actor% (������)
switch %speech%
  case �����
    set vnum 79842
  break
  case ������
    set vnum 79841
  break
done
%load% mob %vnum%
wait 1
calcuid jelme %vnum% mob
%force% %jelme% mkill %actor%
%purge% %self.id%
~
#79849
��� ������~
0 n 100
~
� ����!
*mkill %actor% - ������� � 79848, �.�. ��� ��� %actor%-� (������)
~
#79850
������ ������~
0 f 100
~
calcuid droom %self.realroom% room
attach 79839 %droom.id%
exec 79839 %droom.id%
if (%exist.mob(79832)%)
  calcuid zhoshi 79832 mob
  attach 79851 %zhoshi.id%
end
~
#79851
������� ����~
0 r 100
~
wait 1s
� ������� ����!
if (%world.curobjs(79835)% < %world.maxobj(79835)%)
  mload obj 79835
  wait 1
  ���� ��� .%actor.name%
end
wait 1s
� �����! � ������!
detach 79851 %self.id%
~
$~
