#5000
�� ����~
0 r 100
~
tell %actor.name% �� ����������, ���� ������, ��� ��������� �� �����?
�������
~
#5001
�� ����1~
0 d 100
�����~
if %speech%==�����
  tell %actor.name% �������!
  ������ %actor.name%
endif
~
#5002
������� �� ������� ~
0 j 100
����~
wait 1
switch %object.name%
  case ���� ��������
    say  ��� ����� ����� ������! �������, ��������� ������, ����� ������.
    %self.gold(+1)%
    ���� 1 ��� %actor.name%
    mpurge %object%
  break
  case ���� �����
    say  ��� ����� ����� ������! �������, ��������� ������, ����� ������.
    %self.gold(+1)%
    ���� 1 ��� %actor.name%
    mpurge %object%
  break
  case ���� ����
    say  ��� ����� ����� ������! �������, ��������� ������.
    mload obj 101
    ���� ������ %actor.name%
    mpurge %object%
  break
  case ���� �����
    say  ��� ����� ����� ������! �������, ��������� ������.
    mload obj 101
    ���� ������ %actor.name%
    mpurge %object%
  break
  case ���� ����� ����
    say  �, ������, ��������� ������! ������ ������.
    %self.gold(+5)%
    ���� 5 ��� %actor.name%
    mpurge %object%
  break
  default
    say  ����� ��� ���?
    eval getobject %object.name%
    if  %getobject.car% == ����
      mpurge %object%
    else
      ����� %getobject.car%.%getobject.cdr%
    end
  break
done
~
#5003
������� �� �������� ~
0 j 100
����~
wait 1
switch %object.name%
  case ���� �����
    say  �� ����� ������� ������ ���������, ������ ����� ��������!
    ����
    %self.gold(+10)%
    ���� 10 ��� %actor.name%
    mpurge %object%
  break
  case ���� �����
    say  �� ����� �������� ������ ���������, ������ ����� ��������!
    %self.gold(+75)%
    ���� 75 ��� %actor.name%
    mpurge %object%
  break
  case ���� ����
    say  �� ���� �������� ������ ���������, ������ ����� ��������!
    %self.gold(+100)%
    ���� 100 ��� %actor.name%
    mpurge %object%
  break
  case ���� �����
    say �, �� ����%actor.g% �����! ��� ������, �� ����� ����!
    %self.gold(+20)%
    ���� 20 ��� %actor.name%
    mpurge %object%
  break
  default
    say  ����� ��� ���?
    ����� all
  break
done
~
#5004
��������������~
0 r 100
~
wait 1
set factor %self.people%
while %factor%
  set pc %factor.next_in_room%
  if (%factor.vnum% == -1) && (%factor.level%>19) && (%factor.level%<31)
    if %factor.sex%==1
      tell %factor.name% ����� �� ���, ������ ���� ����� ����� �����������.
    else
      tell %factor.name% ������� �� ���, ������ ���� ����� ���� �����������.
    end
    tell %factor.name% �� ���� � ���� ����� �� ������, ��� � �����, ��� ��� ������� �����.
    tell %factor.name% � �� ��� ������ �������� ����� �����.
    mechoaround %factor% ������� ���������� %factor.rname% � �������.
    msend %factor.name% ������� ���������� ��� � �������.
    mteleport %factor.name% 5001
    if %factor.sex%==1
      mat 5001 mechoaround %factor% ������� ������������� %factor.name% ������ ������.
    else
      mat 5001 mechoaround %factor% ������� ������������� %factor.name% ������ ������.
    end
  end
end
if %pc%
  makeuid factor %pc.id%
else
  set factor 0
end
done
~
#5005
������� �� �����~
0 q 100
~
if ((%actor.level% >= 10) || (%actor.bank% >= 20))
  halt
end
wait  1
msend %actor% ����� ������� ���:
msend %actor% - �� �� ��������%actor.w%, ������%actor.w% ��������, %actor.name%.
msend %actor% - ��� �� �������� ����� �� ���������. 
msend %actor% - ������, �������...
dg_cast '���������' .%actor.name%
~
#5006
�������� ������� � ��������~
0 t 75
~
wait 1
if %actor.clan% != null
  halt
end
foreach char %self.pc%
  if %char.agressor% > 5000
    if %char.agressor% < 5099
      set target %char%
    break
  end
end
if %char.agressor% > 5100
  if %char.agressor% < 5199
    set target %char%
  break
end
end
if %char.agressor% > 5600
  if %char.agressor% < 5699
    set target %char%
  break
end
end
done
if !%target%
  halt
end
if %target.sex% == 1
  ����� %target.name%, - ��� ��, ������, ������ ���! ���� ���!
else
  ����� %target.name%, ��������, ������ ��! ���� ��!
end
����� %target.name% - ��� ��%target.g% ���, ������, ������!
mforce %target.name% �����
mforce %target.name% stand
����
mforce %target.name% ������
mforce %target.name% ��������� r1guarg
group all
kill %target.name% 
~
#5007
������ ������� � ���������~
0 q 80
~
wait 1
if %actor.clan% != null
  halt
end
if !%actor.agressor%
  halt
end
if %actor.agressor% > 5000
  if %actor.agressor% < 5099
    set agr 1
  end
end
if %actor.agressor% > 5100
  if %actor.agressor% < 5199
    set agr 1
  end
end
if %actor.agressor% > 5600
  if %actor.agressor% < 5699
    set agr 1
  end
end
if %agr% == 1
  if %actor.sex% == 1
    ����� %actor.name%, - ��� ��, ������, ������ ���! ���� ���!
  else
    ����� %actor.name%, ��������, ������ ��! ���� ��!
  end
  ����� %actor.name% - ��� ��%actor.g% ���, ������, ������!
  mforce %actor.name% stand
  mforce %actor.name% ��������� r2guard
  group all
  kill %actor.name% 
end
~
#5008
������� � ���������~
0 r 75
~
wait 1
emot ������ ������ � ����������� � ����� �����
say ����������, ������ �������! ����� ��� ������!
attach 5009 %self.id%
~
#5009
������� ���������~
0 d 0
������ ������~
if %speech% == ������
  wait 1s
  say �� ����� �� ���� ������������� �����! � �� �������, ������ ���� � ������� ����� ����...
  wait 1s
  say ������ �� �� ��������� ��� �������? ����� �� �� ������?
  attach 5018 %self.id%
  detach 5009 %self.id%
end
~
#5010
���� ������� �������~
0 j 100
~
wait 1
if %object.vnum% != 5050
  wait 1s
  mecho %self.name% ����������� ������ %object.vname%.
  wait 1s
  say � �� �������� ���������� �� ���� ����, ����� �����-�� ���������� ��� ��������.
  wait 1s
  drop %object.name%
  ���
  halt
end
wait 1
mpurge %object%
wait 1s
say ��, ��� ��! � �������� ��� ���! ��������� ����, ��� ���������!
wait 2s
if (%actor.can_get_feat(������������ ������)% && !%actor.feat(������������ ������)%)
  say � ���� � ����, � ��� �� ���-��� �� ��������� ���������� �����. �������, ������ ���� ���� �������. 
  mechoaround %actor% 
  mfeatturn %actor% ������������.������ set
  halt
end
if %random.1000% < 310
  say ����� ��� ���� �������������, �� ��� ������ ��� �����, �����, �� ������� ������� ������� ?
  wait 5
  mload obj 514
  ���� ���� .%actor.name%
  halt
end
msend %actor% �� ������ ���� �� �������� ��������� ����� �����!
%actor.exp(+50000)%
detach 5010 %self.id%
~
#5011
������� ������� � ������~
0 r 100
~
if %quest50% && %quest50.id% == %actor.id%
  wait 2s
  if %quest50.room% == %self.room%
    say �� ��� ������ ? ��� ������� ?
    attach 5012 %self.id%
    detach 5011 %self.id%
  end
end
~
#5012
������� ������ ��� ����~
0 d 0
������� ������ ����~
wait 1s
say ���-�� ����� �� ���� �����? � � ���� �� ���?
say ������� ������ �������, ����� ��� ������ ���� � �����.
say �����, ��� �� ���� ��� �����, ������ �� ���� ����? ������ 8000 ���?
wait 1s
if %actor.sex% == 1
  say ��������?
else
  say ��������?
end
attach 5013 %self.id%
attach 5014 %self.id%
detach 5012 %self.id%
~
#5013
���������� ������ ����� ������~
0 d 0
���~
wait 1s
%actor.setquest(5004)%
detach 5014 %self.id%
say ��, ����� ���������� ��������.
say � �� ������ ������ ����� ������ �� �������.
say �����, ������ ��� ��������, ������, ���� ����.
say ������������ - �������. ���, ������.
wait 1
mload obj 5051
���� ����� %actor.name%
say ����� �� �� ������, ��� � ���� �� ����� �� �������.
detach 5013 %self.id%
~
#5014
���� ����� ������~
0 m 200
~
if %amount% < 8000
  wait 1s
  mecho ������ ��������� ���������� ������.
  wait 1s
  say ��������!
  wait 4
  set dam %actor.hitp%
  msend %actor% ���������� ���� ���������� ������ �������� ��� � �����!
  mechoaround %actor% ���������� ���� ���������� ������ �������� %actor.vname% � �����!
  mdamage %actor.name% %dam%
else
  wait 1s
  mecho ������ ��������� ���������� ������.
  %self.gold(-8000)%
  mecho ������ ��������� ������ �� �������.
  mload obj 5050
  ���� ������ %actor.name%
  wait 1s
  say ���� ��, �� ����� ����������� ������ �������! ������ ������ �����.
  detach 5013 %self.id%
  detach 5014 %self.id%
end
~
#5015
���� ������ ������� ������~
0 j 100
~
wait 1
if %object.vnum% != 5518
  ���
  say ���-�� �� ����� �������...
  ���� %object.name%
  halt
end
wait 1
mpurge %object%
wait 1s
if !%actor.quested(5004)%
  emot �������� ��������
  say ����, ������, ������� ������?
  wait 1s
  say �� ��� ��, ������������� �� ������
  ������
  say � �� ����� �������.
  halt
end
%actor.unsetquest(5000)%
%actor.unsetquest(5001)%
%actor.unsetquest(5002)%
%actor.unsetquest(5003)%
%actor.unsetquest(5004)%
say ����������, ����, ����. ������� ����� � ���� ����� ��� �����. 
say ��� �, ��� ������ - �����. ���� ���...
wait 5
mload obj 5050
���� ����� %actor.name%
~
#5016
�������� ������ ������~
0 j 100
~
wait 1s
if %object.vnum% == 5051
  say �������, ��� ������ �������� �� ������. ����� � � ��� �� �������.
  say ���-�� ���� ���������� �����. ������� ��� �����-�� ����� �������, ��� ����� � ��������...
  say �� ������ �� ��� ���������� - �� ����� � ����� ���� ��� ������ �������.
  say � ����� �� �� �� �����, ���� ��� �� ����� �� ����� ������.
  wait 1
  say ��� ���, ����� �����, ��� �� ������ ���������� ���������?
  say ������ � ����� ��.
  say ������� ��� ...., ...., �� ...., � ����� ���� ������� ���� ������ �����������!
  attach 5017 %self.id%
  mpurge %object%
  detach 5016 %self.id%
end
~
#5017
�������� ����� - � �������� ������~
0 j 100
~
detach 5017 %self.id%
~
#5018
������� ���������~
0 d 1
������ ��������� ������ ����� ������~
wait 1s
say ����� ������. �����-�� � ��� ������� ������.
mecho _- ���� � ���� �����, ������ �����.
mecho _- ���� ����� ������������, ���� ���������� ��������� �� ������ ��������.
wait 1s
���
wait 2s
say �� ���-�� �� ����� ������ �, �� ���������, � ����� ������ ��������� �����.
mecho _- � ��� � ��������. � �������� - ���� � �������� ���� ��� ���.
mecho _- ��� ������� ���������� ����������� ��������, ���� ���������.
mecho _- ������ �������, ��� �������� ������ ����� �������� ����.
mecho _- � ����� � ��� ����� �� ������. �� �������, ����� �� �� ���� ����� �����...
wait 1s
say  �� ���-�� ������� �, ��� ���� � ���� ������ �����, ������� ������� ������ ����������.
mecho _- ���� ������ ��������, ������� ����� ���� ������.
mecho _- ������ � � ���, �� �������� �� ����� ������ ������,
mecho _- ��� � �� ���� ����, ��� �������������?
mecho _- ����� - ������ ��� ����������� ���, ������� ��� �������.
mecho _- �����, ���� �� ����� ����� ���, �� ���������� ������, � �������� ���������
mecho _- ����� ����� ������� ��� ������ �����, �� �� ����� �������?
set quest50 %actor%
calcuid efim 5029 mob
attach 5011 %efim.id%
remote quest50 %efim.id%
*attach 5010 %self.id%
detach 5008 %self.id%
detach 5018 %self.id%
~
#5019
��������� ������ �����~
0 g 100
~
tell %actor.name% ������ ������� ���� �� ������ �����, ��� ���� �� �� �����������!
eval needgold %actor.level%
tell %actor.name% �����-�� ��� ���� %needgold% � �� ���!
~
#5020
���� ���� ������5031~
0 m 1
~
if %actor.vnum% != -1
  halt
end
eval needgold %actor.level%
if %amount% < %needgold%
  ���� %amount% ��� %actor.name%
  tell %actor.name% �������� �����!
else
  mecho ����� ��������� ����-�� � ������ � ������ ��������.
  mecho ��-�� ������ �������� ��������� � �������.
  msend %actor.name% � �������� �������, ������ �������� �� �������!
  msend %actor% ��������� ������ ������ ��� ������.
  mechoaround %actor% %actor.iname% ����%actor.q% �� ������.
  mecho ��������� �������: � �� ��������!
  wait 1
  mteleport %actor.name% 4064 horse
  wait 1
  msend %actor% �� ������ �� � ������ ��������, ��� ��������!
  msend %actor% ��������� ������ ��������� ������ � ������� �������.
  mechoaround %actor% %actor.iname% ����%actor.q% � ����������� ������.
  mechoaround %actor% ������ ������������ � �������� �����.
end
~
#5021
��������� ������ ��������~
0 r 100
~
*������������� | Mobiles | Great-All PC | 100
tell %actor.name% ���� �������� ������������ ������ �������� �� ������� �������!
eval needgold %actor.level%
tell %actor.name% ����� �� %needgold% ���!
~
#5022
���� ��� ������� ���������~
0 m 1
~
*����20������� | Mobiles | Bribe | 1
if %actor.vnum% != -1
  halt
end
eval needgold %actor.level%
if %amount% < %needgold%
  ���� %amount% ��� %actor.name%
  tell %actor.name% ����, ������� ������� �����!
else
  mecho �������� ������� ������� ��� ����.
  msend %actor.name% ��-�� ������ ����� ��� ���� �������� � ������ ����� ����� ��������� �� ���.
  if %actor.sex%==1
    mechoaround %actor% ��-�� ������ ����� ��� ���� �������� � ������ ����� ��� %actor.name% ����� �������� �� ���.
    mechoaround %actor% %actor.name% ����� � ������ ������ � �����������.
  else
    mechoaround %actor% ��-�� ������ ����� ��� ���� �������� � ������ ����� ��� %actor.name% ����� ��������� �� ���.
    mechoaround %actor% %actor.name% ������� � ������ ������ � �����������.
  endif
  mteleport %actor.name% 6053 horse
  msend %actor% ���� ����������� ����������.
  * if %actor.sex%==1
  *  mat 6053 mechoaround %actor% %actor.name% �������� � �����������.
  * else
  *  mat 6053 mechoaround %actor% %actor.name% ��������� � �����������.
  * end
  *  mat 6053 mecho ��������� ������� ��� �������.
  *end
end
~
$~
