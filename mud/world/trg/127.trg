#12700
������� ���������~
2 ab 100
~
set kto %self.people%
eval skolko 0
while %kto%
  if (%kto.vnum% == 12720)
    eval skolko %skolko%+1
  end
  set kto %kto.next_in_room%
done
if (%skolko% < 15)
  set zigr %self.people%
  while %zigr%
    if (%zigr.vnum% == -1) && %zigr.fighting%
      wecho ��� ���� ������� ����� �� �����������.
      wload mob 12720
      halt
    end
    set zigr %zigr.next_in_room%
  done
end
~
#12701
������ ���~
0 f 0
~
if %kpotapych%
  set zigr %self.people%
  while %zigr%
    if (%zigr% == %kpotapych%)
      eval yozhmertv %kpotapych%
      calcuid gdezveri 12703 room
      remote yozhmertv %gdezveri.id%
      halt
    end
    set zigr %zigr.next_in_room%
  done
end
if (%world.curobjs(12715)% < 1)
  mload obj 12715
end
~
#12702
������ ����~
0 f 0
~
mecho ���� � ������� ����������� � �� �������� ������� ���������� ���!
foreach zigr %self.pc%
  mdamage %zigr% 150
done
if (%world.curobjs(12712)% < 4)
  mload obj 12712
end
~
#12703
������� � �������~
2 e 100
~
wait 1s
if %exist.mob(12731)% && %exist.mob(12735)%
  wecho ���� � ����� ��������� �� ��� ��������� �������.
  wecho ������� ������� ��� � ������ �� ��� � ������� �������.
  wecho ������� ������:
  wecho - ������ ���� �� ������� ������ ������.
  wecho - ����� �� ����� ��� ������� ������ � ���?
  wecho - ���� �������� �� ��� ���������. ���� �� ������ ������ �����...
  wecho - �� ���� ����� �� � �����, ������ ����������� ������.
  attach 12704 %self.id%
  detach 12703 %self.id%
end
~
#12704
������ ������~
2 d 0
������ ���� �������� ������~
wait 1s
if (%actor.vnum% != -1)
  halt
end
if %exist.mob(12731)% && %exist.mob(12735)%
  wecho - ��, ���� �� �� ������� �������.
  wecho - ������ ������.
  wecho - �������� � ����� ���� ������ ��������� ����.
  wecho - ������ �����, ������, �����, ������ �������� ����� ������ ���, ������.
  wecho - �� �� ��� � ������ ���������. ��� ���� ������ - ����� ������.
  wecho - � ����� � ��� ������� ��������, ����� ������, ������ ����������.
  wecho - �������� �� ������ �� ��������, ������ ��� ����� ��� �������, ��� � ������,
  wecho - �� ��������, ���-���. �� �������� � � ��� ����������, ��� ��� �� �����
  wecho - �� ����, ��� ��������.
  wecho - ��� ����� ���, � ������� ������� �������, �� ��� ����, �� ���� ����.
  wecho ���� ������ :
  wecho - � ���, ������, ������?
  wecho - ������ ����, ��� �� ����� ������ �� �������� ������.
  wecho - � ��������. ��� �� ����, ���� ��� � �������� �� ��������.
  wecho ���� ������� :
  wecho - ������ �� ������ � ������-�� ���� � �����������. ����� ���� ��� ������.
  wecho - �� ���� ����� �������, � � ���� ��������, ��� �������.
  wecho ������� ������ :
  wecho - � ������� ���� ��� ���� ���. ����� ������ �������� ����������.
  wecho - ����� �� ��� ���� � ������ ����� �������.
  wecho - ����� ����� ����� ����������. � �� ������� ��� ��������, ������ ����� �������.
  wecho - �� ����� ���� ������, ��������� ��� ��� ��������� ������.
  wecho - ��� ����� �������� ������, ������ � ��� ��������, ����� ��������� �� ��������.
  wecho - ������� ��� ����-�������, ������� � ������� ���������.
  wecho - ����� �������� ������� ������ ������� �������.
  wecho - � ����� ������� � ���, ������ �, - ��!..
  wecho - �������� ������� ��. � �������, ����� ������ �� ��� ��� �������.
  wecho - �� ���� � ��� ����� � ���� �����, � ������� ���� ��� ��������.
  makeuid kpotapych %actor.id%
  calcuid yozh 12731 mob
  calcuid koldun 12735 mob
  remote kpotapych %yozh.id%
  remote kpotapych %koldun.id%
  attach 12705 %self.id%
  detach 12704 %self.id%
end
~
#12705
����� ������~
2 e 100
~
wait 1s
if %actor% == %yozhmertv%
  wecho ������� ����������� ��������� �� ���.
  wait 1s
  wsend %actor% �� ���������� ������� � ���, ��� ���������� ���� ������.
  wsend %actor% � ���, ��� ����� ��������� ���-��������.
  wechoaround %actor% %actor.name% ���������%actor.g% ������� � ���, ��� �� ���������� ���� ������.
  wechoaround %actor% ��� ����� ��������� ���-��������.
  if %actor% == %koldunmertv%
    wsend %actor% � ������� ������� ���� ��������� - �������� �������.
    wechoaround %actor% � ������%actor.g% ������� ���� ��������� - �������� �������.
    wait 3s
    wecho ������� ������������� ������.
    wecho - ����, ����, � ��� �� - ������ �� ���� ������, ��� ��� ����������.
    wecho - ��� ��� ������� - ��� ��� �� ����� �� ���, �����.
    wait 3s
    wecho - �� ���, �� �������� �� ���� ����, ��� � ���, ���������.
    wecho - ������� ���� �� ���� ������ � ���� ������, ������� �� ��� �� ������.
    wecho ������� ����� ���������� ����� ���� � ���� �� �������� � ������.
    wecho - ������ �� ���� �������.
    wait 3s
    wecho ������� ����� ����� � �����, ������� ��� � ������� �������� �����.
    wload obj 12718
    wecho - � ������� ���� ����� � ���� ������� � ����� ����� ����� ������.
    wecho - �������, ���������� ������������ ���������.
    wecho - ���, ������, ������ �� �����, � ���� ����������.
    wforce %actor% ����� �����
    switch %random.2%
      case 1
        if (%world.curobjs(12716)% < 1)
          wait 2s
          wecho - ��, ��� ���.
          wecho ������� ����� ����� ���� � ����� � ������ ������ � �����.
          wload obj 12716
          wecho - �� ������ ���� � ������.
          wecho - �� ������, ����� ��� ������, �� ��� ���� ������.
          wecho - ��� ��� ������ ����. ������, ��� ��� ���� ���� �������� ��������� �� �����.
          wforce %actor% ����� ������
        end
      break
      case 2
        if (%world.curobjs(12717)% < 1)
          wait 2s
          wecho - ��, ��� ���.
          wecho - ������� ����� ����� ���� � ����� � ������ ��������� ������.
          wload obj 12717
          calcuid belt 12717 obj
          eval temp %belt.put(%actor%)%
          wsend %actor% ������� �������� %belt.vname% ���.
          wechoaround %actor% ������� �������� %belt.vname% %actor.dname%.
          wecho - � ������� ����, �����, �������� � � ���� ������ ��������.
          wecho - ��� �� � ���������, ����, �������, ����� �����.
          wecho - ��� ���, ��� �� ���� ��������. ����, ����� ���� �������, ���� � �����������.
        end
      break
    done
    wait 3s
    wecho ����� ������ � ������ � �����������.
    calcuid medved 12734 mob
    calcuid volk 12733 mob
    calcuid lisa 12732 mob
    wpurge %medved%
    wpurge %volk%
    wpurge %lisa%
    detach 12705 %self.id%
    halt
  else
    wait 3s
    wecho ������� ������������� ������.
    wecho - ����, ����, � ��� �� - ������ �� ���� ������, ��� ��� ����������.
    wecho - �� ��� ����-�� �� ����%actor.g%, � ��� � �� �������%actor.g%, ������ ��
    wecho - ��� ������� � ��� ���������.
    wecho - � ����� ������ ��� ����� ��� ���� ����� ������?
    wecho ������� ��������� ���� �� ����� � ���������.
    halt
  end
end
~
#12706
�� � ���~
0 k 100
~
* �� ����� �������� ���� � �������, ���� �� ��������.
if !%self.affect(����������)%
  set zigr %self.people%
  while %zigr%
    if %zigr.vnum% != 12731
      msend %zigr% &R�� ���������� ������ ���.&n
      eval povrezhd %random.33%+10
      if (%random.3% == 1)
        %zigr.position(6)%
      end
      if (%random.3% == 1)
        %zigr.wait(2)%
      end
      mdamage %zigr% %povrezhd%
    end
    set zigr %zigr.next_in_room%
  done
end
~
#12707
������ �������~
0 f 0
~
if %kpotapych%
  set zigr %self.people%
  while %zigr%
    if (%zigr% == %kpotapych%)
      eval koldunmertv %kpotapych%
      calcuid gdezveri 12703 room
      remote koldunmertv %gdezveri.id%
      halt
    end
    set zigr %zigr.next_in_room%
  done
end
~
#12708
������ ���~
0 f 0
~
if (%world.curobjs(12700)% < 5) && (%random.3% == 1)
  mload obj 12700
end
if (%world.curobjs(12706)% < 5) && (%random.4% == 1)
  mload obj 12706
end
~
#12709
������ �����~
0 f 0
~
if (%world.curobjs(12701)% < 8) && (%random.4% == 1)
  mload obj 12701
end
~
#12710
������ �����~
0 f 0
~
if (%world.curobjs(12702)% < 1) && (%random.2% == 1)
  mload obj 12702
end
~
#12711
������ ����-������~
0 f 0
~
if (%world.curobjs(12704)% < 5) && (%random.3% == 1)
  mload obj 12704
end
~
#12712
������ ��������� ����~
0 f 0
~
if (%world.curobjs(12705)% < 4)
  mload obj 12705
end
~
#12713
������ �����~
0 f 0
~
if (%world.curobjs(12707)% < 5) && (%random.2% == 1)
  mload obj 12707
end
~
#12714
������ �����~
0 f 0
~
if (%world.curobjs(12709)% < 5)
  mload obj 12709
end
~
#12715
������ ������~
0 f 0
~
if (%world.curobjs(12710)% < 4)
  mload obj 12710
end
~
#12716
������ �������~
0 f 0
~
if (%world.curobjs(12711)% < 1)
  mload obj 12711
end
~
#12717
������ ������~
0 f 0
~
if (%world.curobjs(12713)% < 2)
  mload obj 12713
end
~
#12718
������ ��������~
0 f 0
~
if (%world.curobjs(12714)% < 4) && (%random.3% == 1)
  mload obj 12714
end
~
#12719
������ ���������~
0 f 0
~
if (%world.curobjs(12703)% < 4) && (%random.3% == 1)
  mload obj 12703
end
~
#12720
����� ����~
2 f 100
~
calcuid gdezveri 12703 room
attach 12703 %gdezveri.id%
detach 12704 %gdezveri.id%
detach 12705 %gdezveri.id%
rdelete yozhmertv %gdezveri.id%
rdelete koldunmertv %gdezveri.id%
if %exist.mob(12731)%
  calcuid yozh 12731 mob
  rdelete kpotapych %yozh.id%
end
if %exist.mob(12735)%
  calcuid koldun 12735 mob
  rdelete kpotapych %koldun.id%
end
~
$~
