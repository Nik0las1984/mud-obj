#49700
�����������~
0 d 0
��~
wait 1
say ����������� ���� ��������� ����!
wait 1
say ���� ������ �� ���� ��������� ������ ����, �����������!
wait 1 
say ����� � ���� �� ���!
wait 2
say ���� ������ ������� ���������, ������� �������, �� ����� "��������"
say ���� ������� "������", � ����� ��� ������� � ���������.
wait 2
if %actor.name%==�����
  mecho ����� ������ ������� ��-�� ����� � �������� ������� �� ����� ������ &R"����� ������!"&n
  wait 2
  ���
  wait 2
  mecho ����� �� ��������� ������� �� ���� � �������� �������� "��� �, � ������ ��� ��� �����!" 
  wait 1
  ���
end
~
#49701
��������� ����� ��������~
2 g 100
~
if ( %actor.vnum% > 49700 ) && ( %actor.vnum% < 497999 )
  return 0
  halt
end
~
#49702
�������� ����~
2 z 100
~
wload mob 49718
~
#49703
������ + ������ + ����� ��������~
2 z 100
~
wload mob 49708
wload mob 49709
wload mob 49710
~
#49704
������� ����� � �����������~
2 z 100
~
wload mob 49702
wload mob 49703
wload mob 49703
~
#49705
�������� �����~
0 d 0
�������� ������ ������~
wait 1
if (%actor.vnum% != -1)
  halt
end
if (%speech% == ��������)
  tell %actor.name% ��, ����, ��� ���� ������ ����������:
  tell %actor.name% 1.  ������� �������
  tell %actor.name% 2.  ������� ������� � 3 ������
  tell %actor.name% 3.  ������� ������� � 6 �������
  tell %actor.name% 4.  ������� ������
  tell %actor.name% 5.  ���������
  tell %actor.name% 6.  ��������� + �������
  tell %actor.name% 7.  �������
  tell %actor.name% 8.  ��������
  tell %actor.name% 9.  ������� ������ � �����������
  tell %actor.name% 10. ������� ������ � �����������
  tell %actor.name% 11. ������� ����� � �����������
  tell %actor.name% 12. ������ + ������ + ����� ��������
  tell %actor.name% 13. �������� ���� 
  tell %actor.name% ����� ��������� �����: "&R������ <�����>&C"&n
elseif (%speech% == ������)
  emote ������� ��������
  calcuid arena 49713 room
  exec 49716 %arena.id%
  say ��������� ��������.
end
if %speech.contains(������)%
  if %world.people(49713)% != 0 
    ���
    wait 2  
    say �� ���������� �� � ����� ������!
    halt
  end
  if %speech.contains(13)%
    emote ������� ��������
    calcuid arena 49713 room
    exec 49702 %arena.id%
    say �������� ���� ���� ��� �� ���������.
  elseif %speech.contains(12)%
    emote ������� ��������
    calcuid arena 49713 room
    exec 49703 %arena.id%
    say ������, �����, ������ �������� ���� ��� �� ���������.
  elseif %speech.contains(11)%
    emote ������� ��������
    calcuid arena 49713 room
    exec 49704 %arena.id%
    say ������� ����� � ����������� ���� ��� �� ���������.
  elseif %speech.contains(10)%
    emote ������� ��������
    calcuid arena 49713 room
    exec 49706 %arena.id%
    say ������� ������ � ����������� ���� ��� �� ���������.
  elseif %speech.contains(9)%
    emote ������� ��������
    calcuid arena 49713 room
    exec 49707 %arena.id%
    say ������� ������ � ����������� ���� ��� �� ���������.
  elseif %speech.contains(8)%
    emote ������� ��������
    calcuid arena 49713 room
    exec 49708 %arena.id%
    say �������� ���� ��� �� ���������.
  elseif %speech.contains(7)%
    emote ������� ��������
    calcuid arena 49713 room
    exec 49709 %arena.id%
    say ������� ���� ��� �� ���������.
  elseif %speech.contains(6)%
    emote ������� ��������
    calcuid arena 49713 room
    exec 49710 %arena.id%
    say ��������� � ������� ���� ��� �� ���������.
  elseif %speech.contains(5)%
    emote ������� ��������
    calcuid arena 49713 room
    exec 49711 %arena.id%
    say ��������� ���� ��� �� ���������.
  elseif %speech.contains(4)%
    emote ������� ��������
    calcuid arena 49713 room
    exec 49712 %arena.id%
    say ������� ������ ���� ��� �� ���������.
  elseif %speech.contains(3)%
    emote ������� ��������
    calcuid arena 49713 room
    exec 49713 %arena.id%
    say ������� ������� � 6 ������� ���� ��� �� ���������.
  elseif %speech.contains(2)%
    emote ������� ��������
    calcuid arena 49713 room
    exec 49714 %arena.id%
    say ������� ������� � 3 ������ ���� ��� �� ���������.
  elseif %speech.contains(1)%
    emote ������� ��������
    calcuid arena 49713 room
    exec 49715 %arena.id%
    say ������� ������� ���� ��� �� ���������.
  else
    say � �� �����, � ��� �� ������ ���������?
    ������ %actor.name%
  end
end
end
~
#49706
������� ������ � �����������~
2 z 100
~
wload mob 49707
wload mob 49706
wload mob 49706
~
#49707
������� ������ � �����������~
2 z 100
~
wload mob 49705
wload mob 49704
wload mob 49704
~
#49708
��������~
2 z 100
~
wload mob 49719
~
#49709
�������~
2 z 100
~
wload mob 49701
~
#49710
��������� + �������~
2 z 100
~
wload mob 49711
wload mob 49712
wload mob 49713
wload mob 49714
~
#49711
���������~
2 z 100
~
wload mob 49711
~
#49712
������� ������~
2 z 100
~
wload mob 49717
~
#49713
������� ������� � 6 �������~
2 z 100
~
wload mob 49715
wload mob 49716
wload mob 49716
wload mob 49716
wload mob 49716
wload mob 49716
wload mob 49716
~
#49714
������� ������� � 3 ������~
2 z 100
~
wload mob 49715
wload mob 49716
wload mob 49716
wload mob 49716
~
#49715
������� �������~
2 z 100
~
wload mob 49715
~
#49716
�������� �����~
2 z 100
~
if %self.pc%
  halt
end
wecho ���-�� ������������ ���������, � ��� �������� �����!
wait 1
wpurge
~
$~
