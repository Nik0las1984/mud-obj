#23700
������� �����~
1 c 2
�������~
wait 1
if !%arg.contains(�������)%
  osend  %actor% ��� �� ������ ���������?
  halt
end
osend %actor% �� ������� ��������� ������� �� �����
if %actor.clan% != ���
  halt
end
if %world.curmobs(23716)% > 50
  osend %actor% ...� ������ �� ���������!
  halt
end
oechoaround %actor% %actor.name% ������� ��������%actor.g% ������� �� �����.
wait 1s
oload mob 23716
oecho ��������� ������ ����� ������ ������� �������� ������� ����.
oforce %actor% �������� ����
wait 1
opurge %self% 
~
#23701
������� �����~
0 c 1
�������~
if (%actor% != %self.leader%)
  msend %actor% ��� �� ��� ������.
  halt
end
if (%actor.clan% != ���) 
  mechoaround %actor% %actor.name% �������%actor.u% �������, �� ���� ��� � ������� � �������.
  msend %actor% �� ���������� �������, �� ���� ���� ��� � ������� � �������.
  halt
end
mechoaround %actor% %actor.name% ������ ������%actor.g%.
msend %actor% �� ������ ������� ����� � ����. 
mload obj 23701
���� ����� .%actor.name%
mecho ������� ���� ��������� �� ����� ������.
wait 1
mpurge %self%
~
#23702
����� � ������~
2 c 100
����������~
if !(%arg.contains(������)%) 
  wsend %actor% ���� ��� �� ������ ����������?
  halt
end
wsend %actor% �� ���������� �� �������� � ������.
wechoaround %actor% %actor.name% �������%actor.u% � ������.
wteleport %actor% 23758
wechoaround %actor% ���-�� ��������� � ������.
end
~
#23703
���� ���� ���������~
1 g 100
~
if (%actor.clan% == ���) 
  halt
end
osend %actor% %self.name% ��������%self.u% � ����� �����.
wait 1
opurge %self%
~
#23704
����������� �����~
0 q 100
~
if %actor.clan% == ���
  halt
end
���� &B����� &R%actor.name%&n &B� ������ ����� ���������%actor.g%.&n
~
#23705
������ ��������� �����~
0 c 1
�������~
wait 1
say ��� ���� � ���� ������ ���, ���������� � ����������.
halt
wait 1
if %actor.vnum% != -1
  halt
elseif %actor.clan% == ���
  say ��� ���, �������%actor.w%!
  wait 1
  if %actor.bank% < 1550
    ���
    say �, �� � ���� ����� �� ������ ����!
    halt
  end
  eval buffer %actor.bank(-1550)%
  mload obj 23701
  mload obj 23708
  mload obj 23713
  mload obj 23714
  mload obj 23715
  mload obj 23716
  mload obj 23717
  mload obj 23718
  mload obj 23718
  mload obj 23719
  mload obj 23719
  mload obj 23720
  mload obj 23721
  mload obj 23722
  mload obj 23723
  mload obj 23725
  mload obj 23725
  mload obj 23731
  mload obj 23738
  mload obj 144
  mload obj 141
  mload obj 139
  mload obj 139
  mload obj 139
  ����� ��� ����
  say ��� ���� ���������. �������� � �����������!
  give all .%actor.name%
  drop all
  wait 1
  say ������ ���%actor.g% ���� ����, ����� ���������.
else 
  say � �� �� ���� ������, ��� ���� ������%actor.g%!
  say �� �������� ���� ������ �������� ���������!
  msend %actor%  %self.name% ������ ��-��� �������� ������� ����� � ������� ��� �� ������.
  mecho %self.name% ������ ��-��� �������� ������� ����� � ������� %actor.rname% �� ������.
end
~
#23706
������� ������~
0 c 0
������~
if %actor.vnum% != -1
  halt
elseif %actor.clan% == ���
  say ��-��, ������ �������. ��, ������!
  wait 1
  if %actor.clanrank% < 8
    ���
    say ���%actor.g% �� ��� ������ �������� �������������!
    halt
  end
  if (%world.curobjs(23724)% > 50)
    say ���� ������� ��.. ���������.
    halt
  end
  mload obj 23724
  give all .%actor.name%
  drop all
else
  msend %actor% �� �������� ���� ������ ������� ���������!
end
~
#23707
������ ����������~
2 c 0
���������~
if (%arg% == ����)
  %send% %actor% �� ��������� ����.
  calcuid rom 23701 room
end
if (%arg% == ������)
  %send% %actor% �� ��������� ������.
  calcuid rom 23700 room
end
if (%arg% == �����)
  %send% %actor% �� ��������� �����
  calcuid rom 63189 room
end
end
foreach target %rom.all%
  wsend %actor% ����� �� ����� �� ������� %target.vname%.
done
~
#23708
����� �� �����~
2 c 0
��������~
wait 1
if !%arg.contains(�����)%
  return 0
  halt
end
wait 1
wsend %actor% ������ ������� �������� ����������, ��������� ��� ������.
wteleport %actor% 60085
wechoaround %actor% %actor.name% ������ ������� � ������� ������%actor.u% �� ������.
~
#23709
������ ����������~
0 b 3
~
wait 1
switch %random.8%
  case 1
    mecho  ��� ������������ ��������� �� ���.
    mecho  ���������� ������ ��������: '���������� �����, ���?'
  break
  case 2
    mecho  ���������� ������ ��������� � ��������� �������� ������.
  break
  case 3
    mechoaround ���������� ������ ���������, ���� ������ �������� � ������ ���������� �� %random.pc%
  break
  case 4
    ���� ��� ��� ��, %random.pc%, ������ �� ���� ��������? � �� ������ �� �����, ����!
    mload obj 23760
    mload obj 23761
    ���� obj 23760 %actor.name%
    ���� obj 23761 %actor.name%
  break
  case 5
    mecho  ���������� ������ ��������� �� ��� � ����� ���������� : '����� �����������!'
  break
  case 6
    mecho  ���������� ������ ����������� � ��� ������� � ������������ ����������.
    say ��������� ������� ����� �� ����������.
    ��� %actor.name%
    case 7
      ������� %random.pc%
    break
  done
end
wait 4s
~
#23710
������ ��������� ������~
1 h 100
~
wait 1
if ((%actor.realroom% != 23739) || ((%actor.vnum% != -1) && (%actor.vnum% != 23705)))
  halt
end
if (%actor.vnum% != 23705) 
  if !%gamerresult%
    eval result1 %random.6%
    eval result2 %random.6%
    eval gamerresult %result1%+%result2%
    global gamerresult
    oecho ������ %result1% � %result2%.
  end
  calcuid gipsy 23705 mob
  exec 23732 %gipsy.id%
end
if (%actor.vnum% == 23705) 
  eval result1 %random.6%
  eval result2 %random.6%
  eval gipsyresult %result1%+%result2% 
  oecho ������ %result1% � %result2%.
end
if (!%gamerresult% || !%gipsyresult%)
  halt
end
if (%gamerresult% > %gipsyresult%)
  oecho "���, � ��������" - ��������� ��������� �� ��� �����.
  oecho ����� ��� ��� %game% ���.  
  eval buffer %gamer.bank(+%game%)%
elseif (%gamerresult% < %gipsyresult%)
  eval buffer %gamer.bank(-%game%)%
  oecho "� �������!" - �������� ������� �����.
  oecho ����� ����� ������� �� ������ ������� %game% ���.
else
  oecho "���-���, �����!" - �������������� �����.
end
oecho ����� ���� ��������� �����.
calcuid gipsy 23705 mob
if (%random.1000% >  100)
  oecho ����� ������: "��� �������?"
  attach 23730 %gipsy.id%
else
  oecho ����� �������� ����� � ����� � ������� ��
  oecho ����� ���������: " ���, ���, ����� ������".
  exec 23735 %gipsy.id%
end
opurge %self%
~
#23711
����������� ������~
0 q 100
~
wait 1
if (%world.curobjs(23758)% > 0)
  ����
  say ����� ���, �������... � ����� ���� ���������!
  say ��� ����� ��� ����, �?! �������! �� ������� ���������!! (� �������) ������, ������...
  ���
  halt
end
say ������, �������!
if ((%actor.uniq% == %oldgamer1%) || (%actor.uniq% == %oldgamer2%) || (%actor.uniq% == %oldgamer3%) || (%actor.uniq% == %oldgamer4%) || %actor.uniq% == %oldgamer5%))
  halt
end
��� � ��������� ������� ��� � ��� �� ������.
say ��������-������, ��������-���������?
����
wait 1
say �� ���, �������?
attach 23730 %self.id%
~
#23712
�������� �� ����~
2 c 0
����������~
if !%arg.contains(�� ������)%
  return 0
  halt
end
wait 1
wsend %actor% ����� �������������� �� ������ ������, �� ��������� �������.
wteleport %actor% 23780
wechoaround %actor% %actor.name% ������%actor.u% ���� ������ ������� � �������.
log &W%actor.name%&g
~
#23714
������ ��������~
0 p 100
~
wait 3
����
wait 2
say �� ���� ���� ������, У� ���������!
wait 1s
����� .%actor.name%
~
#23715
������� ��������� �����~
0 b 4
~
wait 1
switch %random.8%
  case 1
    mecho  �������� ��������� ����� ��������� �� ��� � ����������.
  break
  case 2
    mecho  �������� ��������� ����� ����������� �������� ��� � ��� �� ������.
    mecho  �������� ��� ������ ����������� : '����� ��� ������...'
  break
  case 3
    mecho  �������� ��������� ����� ����� ������ ������ � �������� ��������� �� ���.
  break
done
end
wait 4s
~
#23716
������  �������~
0 b 3
~
wait 1
switch %random.6%
  case 1
    mecho  ������� ��������� ���������� �� ��� � ����������.
  break
  case 2
    mecho  ������� ����������� �������� ��� � �����������.
    mecho  ������� ������� : '���� �, ���� ����� ����������� �� ��������'
    mecho  ������� ������� : '������� � �������, ����������, ���� ���'
  break
  case 3
    mecho  ������ ������� ��������� ���� ������� �� �����.
  break
done
end
wait 4s
~
#23717
������� ��������~
0 b 2
~
wait 1
switch %random.6%
  case 1
    mecho  �������, ����������� ��������� �����, ���������� ��������.
  break
  case 2
    mecho  ������� � ������ ��������� �� ���������� ����� �� ������� �� ����� � ��������� �� ���.
    mecho  ��� ���-���� �������� : '�������, �������, �� ��� ���� ������� ��������� �� �������������!'
    mecho  ������� ��� ���-���� ������� ��� ������.
  break
  case 3
    mecho  ������� ��� ���-���� ��������� ������� � ������ �� ������ ���������� ��������.
  break
  case 4
    mecho  ������� ��� ���-���� �������� ������ �� ��������� �������� ����������� ����� � ���������.
  break 
  case 5
    mecho  ������� ��� ���-���� �������� �� ����� ����� ��������� �������� � ���������� � ��������.
  break 
  case 6
    mecho  ������� ��� ���-���� ���������� � ����� � ����� � ������ ���-�� ������� �����.
    mecho  ������� ��� ���-���� ��������� ��������� �� �����.
  break
  case 7
    mecho  ������� ��� ���-���� ��������� ��� �� ����� � ����� �������� � ���.
    mecho  ������� ��� ���-���� �������� ���������� : '�, ������ �����! ��� ��� ��� ������ �� �������!'
  break
done
end
wait 4s
~
#23718
������ ����� �� ������~
2 g 100
~
if  (%direction% ==  west )
  return 0
  wsend %actor% ����� ��������� ��� ����. 
  wsend %actor% ����� ������: "�, ���, �����! �����-�� ������ ���� ��������!"
end
~
#23719
������� �������~
0 c 1
��������� ������~
if ((%cmd% == ���������) && !%arg.contains(�������)%)
  return 0
  halt
end
if ((%cmd% == ������) && !%arg.contains(� ��������)%)
  return 0
  halt
end
wait 1
if (%cmd% == ���������)
  mechoaround %actor% %actor.name% ������� ��������%actor.g% �������.
  msend %actor% �� ��������� ������� �� ����������� �������.
  wait 1s
  switch %random.5%
    case 1
      msend %actor% ������� �������� �������� � �������� ��������� � ���� ����.
      mechoaround %actor% ������� �������� �������� � �������� ��������� � ���� %actor.rname%.
    break
    case 2
      mecho ������� ���������� �� ������������, ���������� �������� ������ ��� ������.
    break
    case 3
      msend %actor% ������� ��������� �� ����� � �������� ������ ���� ���� ������� ������.
      mechoaround %actor% ������� ��������� �� ����� � �������� ������ ���� %actor.rname% ������.
    break
    case 4
      msend %actor% ������� ������� ������� ����� � ���� ����, ���� �� ��������� �� �����.
      mechoaround %actor% ������� ������� ������� � ���� %actor.rname%.
    break
    case 5
      msend %actor% ������� ������� ���� ���� ������, ���������� ������ ��� ��� �����.
      mechoaround %actor% ������� ������� ���� %actor.rname% ������, ���������� ��� ��� �����.
    break
  done
end
if (%cmd% == ������)
  mechoaround %actor% %actor.name% ������%actor.u% ������ � ��������.
  msend %actor% �� ��������� ������ � �������� �������.
  wait 1s
  switch %random.4%
    case 1
      msend %actor% ������� ������ �� �������� ����, � ������� ������, ������� ������� ����
      ����.
      mechoaround %actor% ������� ������ �� �������� ����, � ������� ������, �������
      ������� ���� %actor.rname%.
    break
    case 2
      mecho ������� � ���������� ����� ��������� � �������.
    break
    case 3
      msend %actor% ������� ������ ������� � ����� ���� ����.
      mechoaround %actor% ������� ������ ������� � ����� ���� %actor.rname%.
    break
    case 4
      msend %actor% ������� �������� �� �����, ������������ �� ����� ����.
      mechoaround %actor% ������� �������� �� �����, ������������ �� ���� %actor.rname%.
    break
  done
end
~
#23720
������ �������~
0 j 100
~
wait 1
set str %object.name%
set food %str.car%.%str.cdr%
if (%object.type% != 19) || (!%food.contains(���)% && !%food.contains(���)% &&
  !%food.contains(�����)% && !%food.contains(�����)%))
  wait 1
  mecho ������� �������� �������.
  drop %food%
  halt
end
mecho ������� � ��������� ������ %object.vname%.
wait 1
mpurge %object%
wait 2s
mecho ������� ���������� � �������� ���������� �������.
~
#23721
������� ���������~
0 q 100
~
wait 1
if ((%actor.name% == ������) && (%exit% == 1))
  set exit 0
  global exit
  �������
  ��� �����
  wait 2s
  emot �������� �� ����� �� �������
end
~
#23722
�������� �������~
0 n 100
~
set exit 1
global exit
~
#23723
������� ������~
2 c 1
������� ����������~
wait 1
if %cmd% == �������
  if !%arg.contains(�����)%
    wsend %actor%  ��� �� ������ �������?
    halt
  end
  if %exist.obj(23757)%
    wsend %actor%  ����� ��� ����� �����!
    halt
  end
  wsend %actor% �� �������� �����.
  wechoaround %actor% %actor.name% �������� �����.
  wload obj 23757
  halt
end
if %cmd% == ����������
  if !%arg.contains(�����)%
    wsend %actor%  ��� �� ������ ����������? �������? :)
    halt
  end
  if !%exist.obj(23757)%
    wsend %actor% ������ ��� ������������ ����� - ���� �� ��������� �����. :)
    halt
  end
  wsend %actor% �� ���������� ��������� ������� � �����.
  wsend %actor% ����� �������� � ����� �����.
  calcuid flame 23757 obj
  wpurge %flame%
  wload obj 23757
end
~
#23724
����� �����~
1 nz 100
~
oecho &r����� ���� ��������� � ������, �������� ������� � ������ ����� ��� �������.&n
wait 20s
oecho &r����� ������� �������� ������ � ������.&n
wait 40s
oecho &r�� ������ ������� ������� ����� �����.&n
wait 40s
oecho &r��������� �� ������ ����� ����� ������� ����.&n
wait 30s
oecho &r����� � ������ ������������, �������� ������� ����.&n
wait 45s
oecho &r����� � ������ ����-���� �������.&n
wait 50s
oecho &r������� ������ � ������� ������� ����������� �� ��������� ��������.&n
wait 40s
oecho &r����� � ������ �������� �������� �������.&n
wait 50s
oecho &r����� ������� ���������� �� ������� ���� � �������� � �������.&n
wait 50s
oecho &r����� ��������, � ��� ����� �� �������� �������.&n
wait 45s
oecho &r���� � ������ �����������, ���������� � ����.&n
wait 50s
oecho &r����� ����� ����.&n
wait 50s
oecho &r���� ���� ����� � ���������� ����� ������.&n
wait 50s
oecho &r����� �����.&n
wait 1
opurge %self%
~
#23725
���� � �����~
2 c 1
���������~
if (!%arg.contains(� �����)% || ( %actor.name% != ������ ))
  return 0
  halt
end
wait 1
wsend %actor% �� �������� �������� ����� �������� ������ � ��������� ����� �� ��������
��������.
wteleport %actor% 23782
~
#23726
����� �� �����~
2 c 1
����������~
if !%arg.contains(� �����)%
  return 0
  halt
end
wait 1
wsend %actor% �� ���������� ���� �� �������� � ���� ������������ � �������� ������.
wteleport %actor% 23729
set exit 1
global exit
calcuid panther 23720 mob
remote exit %panther.id%
~
#23727
����������������� ��������~
0 b 6
~
wait 1
switch %random.6%
  case 1
    mecho  ������� ����� ������ ��� �� ����� � ��������������� : '����� �� ������?' 
  break
  case 2
    mecho  ������� ����� ��������� � ������� � �������.
    mecho  ������� ����� ������ : '�� ���������� � ��������������� ����� ��������� ����� �������!'
  break
  case 3
    mecho  ������� ����� ��������� : '�� ���� �� �� �������������!' 
  break
done
wait 4s
~
#23728
������ ����~
2 b 5
~
wait 1
switch %random.6%
  case 1
    wecho  ______�� ��� ��������� ������ ������������ ����� �������.
  break
  case 2
    wecho  ______�� ���� ����������, ����� ����� ��� ��������� ������ ������� �������� �������.
  break
  case 3
    wecho  ______������ ������� ����� �������� ������ ���� � ������ �����. 
  break
done
end
wait 4s
~
#23729
����� ����� ����~
2 c 0
������� �������� ����������~
wait 1
if !%arg.contains(���������)%
  return 0
  halt
end
wait 1
wsend %actor% ��������� ����� ������ � �������, ��������� ��� � ��������� ���.
wsend %actor% ������ ��������� �������� ������, �� ��������� � �������� ����������.
wsend %actor% ����������� �� ���������� �����, �� ��� � �� ������ ������, ������ �� �� �����.
wteleport all 23769
wechoaround %actor% %actor.name% ������ ������� � ������� ������%actor.u% �� ������.
~
#23730
���������� ������� ����� ����~
0 d 0
�� �������� ������� ���~
wait 1
if (%speech%  ==  ���) 
  say �� � ���������� �����.
  set gamer %actor.id%
  global gamer
  exec 23735 %self.id%
  halt
end
if ((%actor.uniq% == %oldgamer1%) || (%actor.uniq% == %oldgamer2%) || (%actor.uniq% == %oldgamer3%) || (%actor.uniq% == %oldgamer4%) || %actor.uniq% == %oldgamer5%))
  say �� ��� �� � ����! 
  say ����������� ����, ������ �� ��?
  ����
  halt
end
say ��� � ������!
���
emot �������� ����� ����
wait 2s
say ����� ����? �� ������, ���� �����%actor.g%, ��� 500, 300 ���?
say ��� �� ��������� - �� ����� ��������?
attach 23731 %self.id%
detach 23711 %self.id%
detach 23730 %self.id%
~
#23731
�������� ����� ����~
0 d 0
������ ������� ������ ��� 1000 500 300 100~
wait 1
if (%actor.vnum%  != -1)
  halt
end
switch %speech%
  case 1000
    case ������
      set game 1000
    break
    case 500
      case �������
        set game 500
      break
      case 300
        case ������
          set game 300
        break
        case 100
          case ���
            set game 100
          break
          default
            say �����-�����?
            halt
          end
        done
        global game
        if (%actor.bank% < %game%)
          say �! �� �� ����� ���� �������� �������%actor.g%?! � ���� ���� ������� � ���!
          say ���-�� ������ ������� - ���������!
          ����
          halt
        end
        mload obj 23763
        calcuid key 23763 obj
        close ���� east
        lock ���� east
        wait 1
        mpurge %key%
        say �������!
        say ��� �� ������!
        mload obj 23758
        calcuid dice 23758 obj
        set gamer %actor.id%
        global gamer
        remote gamer %dice.id%
        remote game %dice.id%
        ���� ����� %actor.name%
        detach 23731 %self.id%
~
#23732
��������� �����~
0 z 0
~
drop all
get gamedice237
get all.���
wait 2
drop gamedice237
~
#23733
�������� � ���� � ������~
2 c 0
�������� ��������� ����������~
wait 1
if !%arg.contains(����)%
  wsend %actor% �� ����������� ���� � �����. ������!
  halt
end
calcuid room1 23739 room
if %room1.pc%
  wsend %actor% _"���� ����� ��������, ��������!" - ������� ��-�� ����� ������������ �����.
else
  calcuid gipsy 23705 mob
  exec 23734 %gipsy.id%
  wsend %actor% "��, ���� ����-��?" - ������� �������� ����� �����.
end
wait 5s
~
#23734
�������� ������ � ������~
0 z 100
~
detach 23730 %self.id%
detach 23731 %self.id%
attach 23711 %self.id%
rdelete gamer %self.id%
rdelete game %self.id%
rdelete gamerresult %self.id%
mload obj 23763
calcuid key 23763 obj
unlock ���� east
open ���� east
emot �������� � �������� � ����
wait 1
mpurge %key%
~
#23735
���������� �������~
0 z 100
~
if !%gamer%
  halt
end
if %oldgamer1%
  set oldgamer2 %gamer.uniq%
  global oldgamer2
elseif %oldgamer2%
  set oldgamer3 %gamer.uniq%
  global oldgamer3
elseif %oldgamer3%
  set oldgamer4 %gamer.uniq%
  global oldgamer4
elseif %oldgamer4%
  set oldgamer5 %gamer.uniq%
  global oldgamer5
elseif (%oldgamer5% || !%oldgamer1%)
  set oldgamer1 %gamer.uniq%
  global oldgamer1
end
exec 23734 %self.id%
~
#23736
������� �������~
0 d 3
����� ������� ���� ����������...!~
wait 2
set text ����� ������� ���� ����������...!
if (%speech% == %text%)
  say �� ��������...!
end
~
#23737
������ �������~
0 m 1
~
* ���� ����� �� �������
wait 1
if %amount% < 50
  wait 2
  say �������� �����!
  give %amount% ��� .%actor.name%
  halt
end
if %world.curobjs(23701)% >= 500
  wait 2
  say ��� ������ �������, ���������!
  give %amount% ��� .%actor.name%
  halt
end
wait 2
say ���, ��������.
mload obj 23701
give all.������� .%actor.name%
~
#23738
������ ��������~
1 c 4
��������~
* ���� ����� �� ������
if (!%arg.contains(����)%)
  %send% %actor% ��� �� ������ %cmd%?
  halt
end
if (%actor.gold% < 100)
  %send% %actor% � ��� ������������ ����� ��� �����!
  halt
end
%send% %actor% ��������� 100 ���, �� ������ ��������� �����!
%echoaround% %actor% %actor.iname% ����� ��������� �����!
%load% obj 23772
calcuid food 23772 obj
eval temp %food.put(%actor%)%
eval temp %actor.gold(-100)%
~
$~
