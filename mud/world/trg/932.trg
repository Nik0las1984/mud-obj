#93200
������ ������~
0 f 0
~
if (%world.curobjs(93202)% < 5)
  mload obj 93202
end
~
#93201
����� ����������~
2 c 1
����� �������� �������~
if (%exist.mob(93203)%) && (%actor.vnum% == -1)
  if (%arg%==����������)
    wait 1s
    wsend %actor% �� ����� ���������� � ������ � ������� ��� �� ����.
    wait 1s
    calcuid malmedv 93203 mob
    wpurge %malmedv%
    wteleport %actor.name% 93246
    wechoaround %actor% ~~%actor.name% ����%actor.g% ���������� � ������ � �����%actor.q% ��� �� ����.
    makeuid malmkvestor %actor.id%
    calcuid gdemedv 93269 room
    remote malmkvestor %gdemedv.id%
    calcuid uskaly 93250 room
    remote malmkvestor %uskaly.id%
    halt
  else
    wsend %actor% ���� �� ������ �����?
  end
end
~
#93202
������~
2 b 100
~
wecho - ����! - ������ �����.
wait 1s
wecho - ���-���! - ��������� ������ �����.
~
#93203
�������~
2 c 1
���� ������ ������ ��������~
if (%arg%==�������) && (%actor.position%==5) && (%actor.vnum%==-1)
  wait 1s
  wsend %actor% �� ������ ��� ������� �������.
  calcuid gdevorony 93250 room
  attach 93204 %gdevorony.id%
  run 93204 %gdevorony.id%
  detach 93202 %self.id%
  detach 93203 %self.id%
else
  wait 1
  wsend %actor% �����-����� ������� �����, � ����� �����, �� �������...
end
~
#93204
������ ������������~
2 z 1
����� �������� �������~
calcuid rosinki 93209 obj
wpurge %rosinki%
calcuid uskaly 93250 room
detach 93203 %uskaly.id%
detach 93202 %uskaly.id%
wait 2s
wecho ���� �� ���������� �������, ��� ����� ������, � ��� ����� ����� ��� ������ �������.
wait 2s
wecho - ����, ����� ������ ������ ���, �������.
wecho - ���-���, ���� ������, ��� ��������, ���� ������������, ����� ������ ������.
wecho - ����, � ������� �����-������� �� �����.
if %malmkvestor%
  wecho - ���-���, ��, � ������ �� ��, ���� ���, %malmkvestor.name% ���������� �� ���� ����%malmkvestor.q%?
  wecho - ����, ��� ��. �� ���� �� ������ ����������, � ��� �����-������� �������.
  wecho - ���-���, ������� ������ %malmkvestor.vname% ������ ������, ������ ������ � ���� �� �����.
  wecho - ����, ������-�� �����. ����� ������ � ������ � ����� ������� ������ ��������...
end
wait 1s
wecho - ���-���, ���� �� �� ������� ���, ���� ���, �������� �� ������.
wecho - ��������� ��� ����.
wait 2s
wecho ������ ��������, ��� ������ �������.
calcuid voron1 93231 mob
calcuid voron2 93234 mob
wpurge %voron1%
wpurge %voron2%
~
#93205
�������� ������~
2 c 1
�������� ������ �������� ���������� ������~
if (%arg%==������)
  wait 1s
  wsend %actor% �� �������� ������ �� ����, �� �������� ������ ��� ���������.
  wechoaround %actor% %actor.name% ������� ������ �� ����, �� �������� ������ ��� ���������.
  wait 1
  wecho ������ ����� �������� �� �� �������.
  wdoor 93253 west room 93252
  wdoor 93252 east room 93253
  detach 93205 %self.id%
else
  wsend %actor% ��� �� ������ ��������?
end
~
#93206
�������� ����������~
2 e 20
~
wait 1
wecho ����� ��������� ��� ������ �������� �������� �� ��������� ������ ����.
wait 1s
wecho �������� �������� ������ : '���� ���� �������?'
wload mob 93200
wait 20s
if %exist.mob(93200)%
  wecho �������� �������� ������ ������� ������ �������, � ��� ���, ����� � �� ����.
end
calcuid tanzagan 93200 mob
detach 93207 %tanzagan.id%
wpurge %tanzagan%
detach 93206 %self.id%
~
#93207
�������� ������������~
0 d 1
*~
if (%actor.vnum% != -1)
  halt
end
if (%speech.contains(������)%) || (%speech.contains(����)%) || (%speech.contains(����)%)
  calcuid poyavl 93206 room
  detach 93206 %poyavl.id%
  wait 1s
  � ����� �� ��������� ����� ��-����-����.
  � ����� � ���� - ���� ��� ��� ������, �� ����������.
  � ����� ��� �� � ����� ����� �� ��������.
  � ����� ��, ��� ��� �� ����� ������ ������� ���.
  wait 2
  � ��... � ������ �� �����, � ������� ������:
  � � ������ ���� ���, �� ������ ���� ��� ���� ��������, � ��������� �����, ������.
  � � ��� ������ �����, ������� ������, ����� ������, �������.
  � ��� ��� �����, �������, ��� ��� �����!
  wait 2s
  mecho ������ - � ��� �������. ��� ����� ������ ���� - ����� �������, ���� ������� - ����� �� �����.
  makeuid tanzkvestor %actor.id%
  if %exist.mob(93201)%
    calcuid kaan1 93201 mob
    remote tanzkvestor %kaan1.id%
  end
  if %exist.mob(93235)%
    calcuid kaan2 93235 mob
    remote tanzkvestor %kaan2.id% 
  end
  mpurge %self%
end
~
#93208
������� ����~
0 b 100
~
switch %random.3%
  case 1
    mecho \&Y��-��! - ������� �������.\&n
  break
  case 2
    mecho \&Y��! ����! - ������� �������.\&n
  break
  default
    mecho \&Y�����! - ������� �������.\&n
  break
done
~
#93209
������� �������~
2 e 100
~
wait 1
* ������� ������� �������, ���� � ������� ���� ���, ������� ����������.
* ����� ��������� ����� ��������� �� ��������, �� �������� ����� � ����� � �����.
set igr %self.people%
while %igr%
  if (%igr% == %malmkvestor%)
    wait 2s
    wload mob 93233
    wload mob 93202
    wecho ��������� �������� ����� �� ������.
    wecho � ������� � ����� ���������� ������ � ����, �� ������ ������� ������ � ������.
    wecho ������� ��� �������� �������� �������� �����-������ �����.
    wait 4s
    wsend %igr% ������-������ �� � ��� �������, �����-����� ���� ������ �������.
    wechoaround %igr% ������-������ �� � %igr.dname% �������, �����-����� ���� ������ �������.
    wait 3s
    wecho - �� ��� ����, %igr.name%, �������� ������, �������� ����, - ������ �����-������ �������.
    wait 3s
    wecho - �� ����� ���� �� ���� ����.
    wait 3s
    wecho - ��� � ���, ��� ������, ����� � ������, ���� ���������, ������� �������, ����� ��������.
    if (%igr% != %kaankvestor%)
      detach 93209 %self.id%
      halt
    end
    wait 4s
    wsend %igr% �� ������� : '�������� ������ �������� �� ����, ������� ������� �� ����.'
    wechoaround %igr% %igr.name% ������%igr.g% : '�������� ������ �������� �� ����, ������� ������� �� ����.'
    wait 2s
    wsend %igr% �� ������� : '��-����-���� ���� �� ���� ������.'
    wechoaround %igr% %igr.name% ������%igr.g% : '��-����-���� ���� �� ���� ������.'
    wait 2s
    wsend %igr% �� ������� : '�� ��� �� ���� �������, ������ ������ ������ ��������, �� ���� �������.'
    wechoaround %igr% %igr.name% ������%igr.g% : '�� ��� �� ���� �������, ������ ������ ������ ��������, �� ���� �������.'
    wait 3s
    wecho � �������� �� ������ �������� ����� �������.
    wait 2s
    wecho ��������� ��� ���� ������� � ����, ������� � ������ � ��������:
    wecho - �������� ��-����-�����!
    wait 3s
    wecho ������� ������� ������ ������ �������� ���� - ��� ������� ����� �������.
    wait 3s
    wecho - � ����� � ����� ��-����-�����, - ������ �������.
    wait 4s
    wecho ������� � ������� �������� ����� �� �������. ������� ��� � ���� ��� �������,
    wecho ����� ��� �������� �, ������ ������ �����, ����� � ���� �������� ������.
    calcuid medvedi 93233 mob
    wpurge %medvedi%
    wait 4s
    wsend %igr% - ������ �� ����! - �������� ��� ������� �������.
    wechoaround %igr% - �������� �� ����! - �������� ������� �������.
    wait 8s
    wecho ������� ���� �������� �����-������ ������� � �������� �����.
    calcuid bolmedv 93202 mob
    attach 93218 %bolmedv.id%
    run 93218 %bolmedv.id%
    detach 93209 %self.id%
    halt
  end
  set igr %igr.next_in_room%
done
~
#93210
�� ���� � ����� �����~
2 e 100
~
wait 1
if %exist.mob(93201)%
  foreach igr %self.pc%
    if %igr.eq(6)%
      wsend %igr% ��-����-���� ���� �� �������� �� ���.
      wsend %igr% ��� �������� ������ �������� ��� �� ���� � ���������� �� �����.
      wechoaround %igr% ��� �������� ������ �������� %igr.vname% �� ���� � ���������� ^%igr.name% �� �����.
      wdamage %igr% 100
      wteleport %igr% 93225
      %igr.position(6)%
      wechoaround %igr% %igr.name% �������%igr.g% �� ����� � ����%igr.g% �� �����.
    end
  done
end
~
#93211
������ ������~
2 e 100
~
wait 1
foreach igr %self.pc%
  if (%igr.id% == %polnkvestor.id%)
    if  %polnkvestor.level% < 25 
      detach 93211 %self.id%
      halt
    end
    wait 1
    wecho ����� ��������� ��� ������ �������� �������� �� ��������� ������ ����.
    wload mob 93251
    wait 3s
    wecho - �������%igr.g% ��, %igr.name%, ����� ��������� �� ����� �����.
    wecho - �� ���� ��� ������ �� ������� ���� ���� �������.
    wait 1s
    if (%igr.level% < 27)
      wecho - ��������� �� ������� ���� ��� ���.
      %igr.exp(+100000)%
    else
      switch %igr.class%
        case 2
          wecho - �� ��� ��������� �� ������ ���� �������... ����� ����� � �����.
        break
        case 3
          wecho - � ��� ������� ���� ������ ���������� � ������.
          if !%igr.skill(������)%
            wskillturn %igr% ������ set
          elseif %igr.skill(������)% < 110
            wskilladd %igr% ������ 3
          end
        break
        case 4
          wecho - �� ��� ��������� �� ������ ���� �������... ����� ����� � �����.
        break
        case 5
          wecho - ������ �������� ����.
          if !%igr.skill(������)%
            wskillturn %igr% ������ set
          elseif %igr.skill(������)% < 110
            wskilladd %igr% ������ 3
          end
        break
        case 7
          wecho - ����������� ����� ��� ������� �������� �����.
          if !%igr.skill(�����)%
            wskillturn %igr% ����� set
          elseif %igr.skill(�����)% < 110
            wskilladd %igr% ����� 3
          end
        break
        case 9
          wecho - ����� ������ ���������� ����� ���� ��� ����.
          if !%igr.skill(������� ������)%
            wskillturn %igr% �������.������ set
          elseif %igr.skill(������� ������)% < 110
            wskilladd %igr% �������.������ 3
          end
        break
        case 10
          wecho - ����� ������, ����� ����� ��������, ��� ������ �����.
          if !%igr.skill(�������������� �������)%
            wskillturn %igr% ��������������.������� set
          elseif %igr.skill(�������������� �������)% < 110
            wskilladd %igr% ��������������.������� 3
          end
        break
        case 11
          wecho - ���������� ����� ���� �������.
          if !%igr.skill(��������)%
            wskillturn %igr% �������� set
          elseif %igr.skill(��������)% < 110
            wskilladd %igr% �������� 3
          end
        break
        case 12
          wecho  - ����� ���� ���� ������� �� �����, ����� ������� �� �� ����� ���� ������.
          if !%igr.skill(�������)%
            wskillturn %igr% ������� set
          elseif %igr.skill(�������)% < 110
            wskilladd %igr% ������� 3
          end
        break
        case 13
          wecho - ���� ���� ��������� �� ������ ����� � ���.
          if !%igr.skill(��������)%
            wskillturn %igr% �������� set
          elseif %igr.skill(��������)% < 110
            wskilladd %igr% �������� 3
          end
        break
        default
          wecho - ��������� �� ������� ���� ��� ���.
          %igr.exp(+100000)%
        break
      done
    end
    wait 2s
    wecho �������� �������� ������ ������� ������ �������, � ��� ���, ����� � �� ����.
    calcuid tanz 93251 mob
    wpurge %tanz%
    detach 93211 %self.id%
  end
done
~
#93212
������ � ������� ����~
2 ab 100
~
foreach kogo %self.pc%
  switch %random.6%
    case 1
      wsend %kogo% �� ��� �������� ����� �������.
      wdamage %kogo% 30
    break
    case 2
      wsend %kogo% ��������� ��� ������ ��� � ������.
      wdamage %kogo% 50
    break
    case 3
      wsend %kogo% ��� �� ������� �������� ������� �� ���.
      wdamage %kogo% 80
    break
    case 4
      wsend %kogo% ����� ������� ������� ���.
      wdamage %kogo% 100
    break
    case 5
      wsend %kogo% ���������� ��������� ������� ��� �� ������.
      wdamage %kogo% 150
    break
    default
      wsend %kogo% ���������� ������� ����������� � ������� ����� �� ���.
      wdamage %kogo% 300
    break
  done
done
~
#93213
�� ���� � ����� �����-2~
0 q 100
~
wait 1
foreach igr %self.pc%
  set item %igr.eq(6)%
  if %item%
    msend %igr% ��-����-���� ���� �� �������� �� ���.
    msend %igr% ��� �������� ������ �������� ��� �� ���� � ���������� �� �����.
    mechoaround %igr% ��� �������� ������ �������� %igr.vname% �� ���� � ���������� ^%igr.name% �� �����.
    mteleport %igr% 93225
    wait 1
    *mdamage %igr% 100
    %igr.position(6)%
    mechoaround %igr% %igr.name% �������%igr.g% �� ����� � ����%igr.g% �� �����.
  end
done
wait 5s
if !%bylpoklon%
  foreach char %self.pc%
    mecho ��-����-���� �������� : '�������� ����� ������ �����!'
    msend %char% ��� �������� ������ �������� ��� �� ���� � ���������� �� �����.
    mechoaround %char% ��� �������� ������ �������� %char.vname% �� ���� � ���������� ^%char.name% �� �����.
    mteleport %char% 93225
    wait 1
    *mdamage %char% 100
    %igr.position(6)%
    mechoaround %char% %char.name% �������%char.g% �� ����� � ����%char.g% �� �����.
  done
end
~
#93214
����������� �����~
0 c 1
���� ����� ������ �����������~
wait 1
set bylpoklon 1
global bylpoklon
� �������� ������, ��������?
���
� � ������� ����, ��� �� ����� ������ ������ ����.
����
� �� ������� �������� ���� �������� �����-�� ������.
� �� ��� ��� �����-������� ������� ���������.
� ����� ����� ��� ������� � �������� ������ �� ������ ���� ���.
� ����� �� ������� � ������� ����, �������� �����.
� ����� �������, ��������� � ������ �������� � ������ ����� �����.
� ��� ���� ��� � ���� ������������, ��� ��������, �� ������� �� ���������.
���� ��������
���� ����
� ����� � �� �� �� ������� ����� �������.
� �� ��� ��, %actor.name%, ����%actor.y% �� ��� ��������.
� ���� ���� ������, ������ ��� �������, �� ���� �������.
� �����, � ���� ����� �����, �� ���� ��� ������.
� ������ - ������ ������ ������ ��������, ������ - �� ������ ������.
set kaankvestor %actor%
global kaankvestor
calcuid gdemedv 93269 room
remote kaankvestor %gdemedv.id%
~
#93215
��� ����������� �� �������~
2 g 100
~
wait 1
if (%actor.vnum%==93202)
  wecho ��-��! - ������� �������.
  wecho ������� �����, ��������, ����� � ������, ��������, ��� ���� ����������� �� ������.
  wecho ������ ��������� �� ������ ��-����-�����, ������ ���� �� ��������, ������ ���� �� �������.
  wecho - ��! ����!
  wecho ��-����-���� ������� ��� ������, ��� ������ ���� ������ � �������, �������� ����������.
  calcuid bogatyr 93216 mob
  calcuid alyp 93217 mob
  calcuid palatch1 93215 mob
  calcuid palatch2 93242 mob
  calcuid zhena1 93207 mob
  calcuid zhena2 93208 mob
  calcuid erbokokaan 93201 mob
  exec 93223 %bogatyr.id%
  exec 93224 %alyp.id%
  calcuid nbogatyr 93249 mob
  calcuid nalyp 93250 mob
  wteleport %nbogatyr% 93224
  wteleport %nalyp% 93224
  wpurge %palatch1%
  wpurge %palatch2%
  exec 93225 %zhena1.id%
  exec 93226 %zhena2.id%
  calcuid nzhena1 93247 mob
  calcuid nzhena2 93248 mob
  wteleport %nzhena1% 93290
  wteleport %nzhena2% 93290
  exec 93222 %erbokokaan.id%
  wat 93223 wload mob 93246
  wat 93223 wload mob 93246
  attach 93216 %self.id%
  calcuid bear 93202 mob
  attach 93227 %bear.id%
end
~
#93216
���� ������� �� ��������~
2 c 1
�������~
wait 1
if %arg.contains(�������)%
  wsend %actor% �� �������� ������ � �������� � ���������� ��� ��� �����.
  wechoaround %actor% %actor.name% �������%actor.g% ������ � �������� � �� ������� ��� ��� �����.
  calcuid nzhena1 93247 mob
  calcuid nzhena2 93248 mob
  wteleport %nzhena1% 93226
  wteleport %nzhena2% 93226
  detach 93216 %self.id%
end
~
#93217
����� ����~
2 f 100
~
wdoor 93253 west purge
wdoor 93252 east purge
calcuid uskaly 93250 room
detach 93202 %uskaly.id%
attach 93202 %uskaly.id%
detach 93203 %uskaly.id%
attach 93203 %uskaly.id%
calcuid zaval 93252 room
detach 93205 %zaval.id%
attach 93205 %zaval.id%
calcuid gdetanz 93206 room
detach 93206 %gdetanz.id%
attach 93206 %gdetanz.id%
calcuid gdemedv 93269 room
detach 93209 %gdemedv.id%
attach 93209 %gdemedv.id%
calcuid gdekaan 93226 room
detach 93216 %gdekaan.id%
if %exist.mob(93200)%
  calcuid tanzagan 93200 mob
  attach 93207 %tanzagan.id%
end
if %exist.mob(93202)%
  calcuid bolmedv 93202 mob
  detach 93208 %bolmedv.id%
end
if %exist.mob(93201)%
  calcuid erbokokaan 93201 mob
  detach 93213 %erbokokaan.id%
  attach 93213 %erbokokaan.id%
  detach 93214 %erbokokaan.id%
  attach 93214 %erbokokaan.id%
  rdelete tanzkvestor %erbokokaan.id%
  rdelete bylpoklon %erbokokaan.id%
end
if %exist.mob(93235)%
  calcuid erbokokaan2 93235 mob
  rdelete tanzkvestor %erbokokaan2.id%
end
calcuid plyushki 93213 room
attach 93211 %plyushki.id%
rdelete kaankvestor %gdemedv.id%
rdelete malmkvestor %uskaly.id%
rdelete malmkvestor %gdemedv.id%
rdelete polnkvestor %plyushki.id%
~
#93218
������� ����~
0 z 100
~
calcuid gdekaan 93226 room
detach 93210 %gdekaan.id%
attach 93215 %gdekaan.id%
calcuid erbokokaan 93201 mob
detach 93213 %erbokokaan.id%
detach 93214 %erbokokaan.id%
�
wait 3
�
wait 3
�
wait 3
�
wait 3
�
wait 3
�
wait 3
�
wait 3
�
calcuid zazavalom 93253 room
if !%zazavalom.west%
  wait 1s
  mecho ������� �������� ������ ������� � ������� ���.
  mdoor 93253 west room 93252
  mdoor 93252 east room 93253
end
wait 3
�
wait 3
�
wait 3
�
wait 3
�
wait 3
�
wait 3
�
wait 3
�
wait 3
�
wait 3
�
wait 3
�
wait 3
�
wait 3
�
wait 3
�
wait 3
�
wait 3
�
wait 3
�
wait 3
�
attach 93208 %self.id%
calcuid gdemedv 93269 room
detach 93209 %gdemedv.id%
~
#93219
����� ��������~
0 q 100
~
* ����� ��������, ���� � ������� ��� �����-������� �������
wait 1
if !%exist.mob(93202)%
  halt
end
calcuid bear 93202 mob
if %bear.realroom% == %self.realroom%
  halt
end
set kto %random.pc%
��������� %kto.name%
~
#93220
������ �� ����~
2 g 100
~
* ���� ������� �����, ����� �����-������ ������� ��� ������ �� ����� ������
* �� ����� �����, � ������ ���� �� ����� ���� �� ������� (����� ��������).
if (%actor.vnum%==93218) || (%actor.vnum%==93219) || (%actor.vnum%==93220)
  if !%actor.leader%
    return 0
  end
end
~
#93221
������ �����~
0 f 1
~
foreach igr %self.pc%
  if (%igr% == %tanzkvestor%)
    set polnkvestor %tanzkvestor%
    calcuid plyushki 93213 room
    remote polnkvestor %plyushki.id%
    halt
  end
done
~
#93222
������������� �����~
0 z 1
~
mtransform 93235
~
#93223
������������� ��������~
0 z 1
~
mtransform 93249
~
#93224
������������� �����~
0 z 1
~
mtransform 93250
~
#93225
������������� ������ ����~
0 z 1
~
mtransform 93247
~
#93226
������������� ������ ����~
0 z 1
~
mtransform 93248
~
#93227
����� � ������� ����� ������������� �����~
0 q 100
~
wait 1
say �����!
���� ����
emot ���������� � ����� �� �����
wait 1
%purge% self%
~
$~
