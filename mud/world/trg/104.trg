#10400
<104 - PC enter to Kupchikha>~
0 h 100
~
if %self.fighting%
  halt
end
wait 1
set  pc %self.people%
set  men 0
while %pc%
  if %pc.vnum% == -1
    if     %pc.sex% == 1
      makeuid men %pc.id%
    elseif %pc.sex% == 2
      mecho - �� �� ������ ����������, ������ � ���� ������, - ��������� 
      mecho ������� � ��������� %pcr.dname% � ������.
      attack %pc.name%
      halt
    end
  end
  set pc %pc.next_in_room%
done
if %men%
  mecho - ������, %actor.name%, ������, ������� � ������ �������, - ������� 
  mecho �������, ������ �� �������.
end
~
#10401
<104 - Kupchikha killed>~
0 f 100
~
mload obj 10401
if (%world.curobjs(10405)% < 1) && (%random.100% <= 5)
  mload obj 10405
end
if %actor.vnum% == -1
  calcuid room     10427 room
  attach  10409 %room.id%
  exec    10409 %room.id%
  detach  10409 %self.id%
  calcuid Merchant 10419 mob
  if %Merchant%
    makeuid Killer %actor.id%
    global  Killer
    remote  Killer %Merchant.id%
  end
end
~
#10402
<104 PC enter to Svakha>~
0 h 100
~
if %self.fighting%
  halt
end
wait 1
set  men   0
set  women 0
set  pc %self.people%
while %pc%
  if %pc.vnum% == -1
    if     %pc.sex% == 1
      makeuid men %pc.id%
    elseif %pc.sex% == 2
      if %random.100% < 30
        mecho - ��� �� ������ ���� ������� ������ � ����� ���������, ��, �������, - ���������
        mecho ����� � ��������� �� %pc.vname%.
        attack %pc.name%
        halt
      end
      makeuid women %pc.id%
    end
  end
  set pc %pc.next_in_room%
done
if     %women%
  mecho - ������ ������, %women.name%, �� ���� �������� ������� � ����� ���������, ���� 
  mecho � ���� ��� ����� �� �������������, - ��� ��������� �����.
elseif %men%
  mecho - ������, �����, ����� �� ���� ���������, �� ���� ���������, ���� ��� ���� � 
  mecho - ������������, ������ � ���, �� ���� �� ���� - ������ ��������� �����.
end
~
#10403
<104 - Svakha killed>~
0 f 100
~
if (%world.curobjs(10405)% < 10)
end
~
#10404
<104 PC enter to Kumushka>~
0 h 100
~
wait 1
if %self.fighting%
  halt
end
set men   0
set women 0
set pc %self.people%
while %pc%
  if %pc.vnum% == -1
    if     %pc.sex% == 1
      makeuid men %pc.id%
    elseif %pc.sex% == 2
      makeuid women %pc.id%
    end
  end
  set pc %pc.next_in_room%
done
if     %women%
  mecho - ��� �� ��, ��������, �� ����� ��������, � �� ������ �����,
  mecho - � ���� ���� - ������� - �� ����������, - ����������� ������ �������.
elseif %men%
  mecho - � ��� � ����� �� ��� �����, - �������� �������� �������.
  mecho - ������ ������ � ����� ���������, ����� ���������, ���� ��� ����,
  mecho - �� ��������, ��� ��������� ����������� � ������ �������.
end
~
#10405
<104 - Kumushka killed>~
0 f 100
~
if (%world.curobjs(10405)% < 10)
end
~
#10406
<104 - PC open cofr>~
1 p 100
~
wait 1s
oload  mob 10410
osend  %actor% ������ �� �������� �������� ���������, � � ������ "����� ����" ��������� ��
osend  %actor% ���.
oechoaround  %actor% ������ �� �������� �������� ���������, � � ������ "����� ����" ��������� ��
oechoaround  %actor% %actor.vname%.
oforce ��������� attack %actor.name%
detach 10406 %self.id%
~
#10407
<104 command LAY BAD>~
2 c 0
���� ������� �����~
if %actor.vnum% != -1
  halt
end
if !%arg.contains(�������)% && !%arg.contains(�������)%
  halt
end
wait 1
wsend       %actor% ������� ����������� �� ������ � �� ����� ������� ����...
wechoaround %actor% ������� ����������� �� ������ � %actor.name% ��������%actor.u%...
set  hitdec %actor.hitp%
eval hitdec %hitdec%/4
wdamage     %actor% %hitdec%
wteleport   %actor% 10427
~
#10408
<104 Merchant recive eat>~
0 j 100
~
return 0
if %actor.vnum% != -1
  halt     
end
if %actor.id% != %Killer.id%
  halt
end
if %object.type% != 19
  halt
end
return 1
wait   1
mecho  ___������� ����, %actor.name%, ���� �� ���� �� �������� ������.
%actor.exp(+200000)%
mesend %actor%  �� �������� 200000 ����� �����.
wait 1
mpurge %object%
mpurge %self%
~
#10409
<104 Virtual load Merchant>~
2 x 100
~
return 0
wload  mob 10419
~
$~
