#33200
� 5 �������~
0 q 100
~
wait 1
say �� �������� ���� � ��������� ������� �� ��������� ������� �������!
say � ��� �� ���� �� ���������!
~
#33201
��� ������ �������~
0 j 100
~
wait 1
if %object.vnum% == 33105 
  wait 1
  %purge% %object%
  wait 2s
  say �� �������� �� ��� ������?!! �������...
  wait 2s
  mecho ������� �������� ��� �� ��� � ������ �������������.
  say �������, ������ ������, ����� ���� ������� ������ ������ �������!
  foreach char %self.char%
    mechoaround %char% %char.name% ���%char.g% ��������%char.g% ������!!! 
    mteleport %char% 33202
    msend %char% .- �� ��������� ������!
  done
end
~
#33202
��� ��� �������~
0 j 100
~
if %object.vnum% == 33110 then
  wait 1s
  say ������! ��� ��� �� ���� ���� �������!
  mkill %actor.name%
end
~
#33203
������� ������~
2 c 0
������� ���������~
if !(%arg.contains(����)%) 
  wsend       %actor% ���� ��� �� ������ �������???
  return 0
  halt
end
if %actor.fighting%
  wsend %actor% �� �� ������ ������� ���� ����������.
end
wsend       %actor% �� ���������� ������� � ������.
wechoaround %actor% %actor.name%, ������������� � ����, �����%actor.g% �� ������� ����.
wait 1s
wsend %actor.name% .- �� ��������� � �������� ������...
wat 33300 wecho ���-�� ������� ����.
wteleport %actor% 33300 horse
end
~
#33204
� �������� ��������~
0 q 100
~
wait 1
mecho _������� �������� ��������, ����� �� ������ � ���� ����������� ���������� �����
wait 1s
say ��� �� �� ��� �������... ��� �� �� ��� ��������...
����
wait 2s 
mecho _������� �������� ������ ���, ��������
wait 1s
say ��, ���� �� �� ������ ��� ��� ����� � ��������, � �������-�� ���� �� ����������.
wait 2s
say � ����� ����, ������ �� ���� ������ ���� � ���� ��������!
wait 1s
mecho _������� �������� ����� ����� �� ������ � ���� ����������� ���������� ������
~
#33205
� ��������~
0 q 100
~
wait 1
mecho  _������� �������� ����������� ���������, ��������� �� ���, ����� ���������
wait 1s
say "�������"...? - ���, "��� � �����"..? - ���,
�����
wait 2s 
mecho _������� �������� ���� �������� ������, ������ ���-��
wait 1s
say "��� � ����"...? - ���, "��������"...?  - ���...
wait 2s
say �� ��� �� ��������� ��� �������....
calcuid konek 33215 mob
detach 33205 %konek.id%
~
#33206
� ��� �� ��������~
0 q 100
~
wait 4s
mecho _�� ������ ������� ����� ������ ���������� �� ���������
mecho _������ ����� ������ ��������� � ���� � ������ ��������� ���
~
#33207
��������~
2 c 0
�������� ������������~
if !(%arg.contains(������)%) 
  wsend       %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
wsend       %actor% ������������, �� � ������ �������� ����� ������.
wechoaround %actor% %actor.name% � ������ �����������%actor.g% ������!
wait 1s
wsend %actor.name% .- �� � �������� ������ ������������ �� ������ �������� �������
wteleport %actor% 33271
wat 33271 wechoaround %actor% ���-�� ������� ����.
end
~
#33208
����� ����~
2 c 0
����� ���������~
if !(%arg.contains(����)%) 
  wsend       %actor% ���� ��� �� ������ �����???
  return 0
  halt
end
wsend       %actor% �������� ������� �����, �� ������ ������ �����������...
wechoaround %actor% %actor.name% ������%actor.g% � ������ ����� �������.
wait 1s
wsend %actor.name% - ��� �� �������� ����� ����� �� �������, � ��� �� ��� ���!
wteleport %actor% 33290 horse
wat 33290 wechoaround %actor% ���-�� ������� ����.
end
~
#33209
�����������~
2 c 0
�����������~
if !(%arg.contains(�����)%) 
  wsend       %actor% ���� ��� �� ������ �����������???
  return 0
  halt
end
wsend       %actor% ��� ����, �� ����� ������������� �����.
wechoaround %actor% %actor.name% ������%actor.g% �����.
wait 1s
wsend %actor.name% .- �� ���� ������������� � �������� �������!
wteleport %actor% 33246 horse
wechoaround %actor% ���-�� ������������ ����.
end
~
#33210
���������� �����~
2 c 0
���������� ���������� ���������~
if !(%arg.contains(�����)%) 
  wsend       %actor% ���� ��� �� ������ ����������???
  return 0
  halt
end
wsend       %actor% ������� �� �����, �� ������� � �������.
wechoaround %actor% %actor.name% ������%actor.g% � �������, ������� �� �����.
wait 1s
wsend %actor.name% .- ��� ������ ��, �� ������ ���������� ����� �����.
wteleport %actor% 33287
wat 33287 wechoaround %actor% ���-�� ��������� ����.
end
~
#33211
������� ���~
2 c 0
������� ���������~
if !(%arg.contains(���)%) 
  wsend %actor% ���� ��� �� ������ �������???
  return 0
  halt
end
wsend %actor% ��������� ���, �� ������� � �������������.
wechoaround %actor% %actor.name% ���������%actor.g% ��� � ������%actor.g% � �������������
if %exist.mob(33213)%
  calcuid brat 33213 mob
  detach 33215 %brat.id%
  attach 33214 %brat.id%
end
wait 1s
wsend %actor.name% .- �� ��������� � ��������� ������ ����.
wteleport %actor% 33307 horse
wechoaround %actor% ���-�� �������� ����.
end
~
#33212
��� ����� �����~
0 j 100
~
if %object.vnum% == 33204 then
  wait 2s
  say �� ���-�, ������� � �� ����! 
  wait 2s
  say ����� ����, ��� � ����, ���.... ���...
  wait 2s
  say ��-�, ��� ���� � ��������� ������� - ��� �������� ����, ��� ����������!
  mecho ����� ��������� ����������, �� � ���� ������ �� ����������...
  ���
  calcuid varo 33204 obj
  mpurge %varo%
end
if %object.vnum% == 33205 then
  wait 2s
  say ��, ��� �� ��� ��� �����! 
  wait 2s
  say ���� � ��������� ������� ����������... ������ ������ - �� ���� ���.
  wait 2s
  say �� �� �� ���������!!! �� ���� ������, ����� ��� ����� �����-�����, �����  ���� �� ���� �������..
  mload obj 33206
  ��� ��� %actor.name%
  mecho ����� �� ������������ ���������, ��������� � ����� ����� � �������.
  calcuid var 33205 obj
  mpurge %var%
  calcuid pokoi 33212 mob
  mpurge %pokoi%
  calcuid brat 33213 mob
  detach 33214 %brat.id%
  attach 33215 %brat.id%
end
~
#33213
� ��� � �����~
0 r 100
~
mecho _���� �������� � ��� �� ������, ������� ����������� ������ � ������� � �����
����� %actor.name%
~
#33214
����� ������~
0 f 100
~
if (%world.curobjs(506)% < 2) && (%random.1000% <= 250)
  mload obj 506
end
~
#33215
� ������ ����� c �����o�~
0 q 100
~
mecho _����� ���� ���������� �������� �� ���
wait 1s
say ��, �������� ������, ����� ������! ����� ���� �� ��� ����?
~
#33216
��� ������ ������~
0 j 100
~
if %object.vnum% == 33206 then
  wait 2s
  say �� �� �����!!! ��� �� ���!!! ��, �������!!!
  wait 2s
  mecho ����� ���� ����������, �������� �������� �����...
  wait 1s
  say ������ ���� ������... ���� � ��������� ������� ������� ���� ����� �������!
  say ��������  ��������� �� ���...
  *calcuid wchod 33257 room
  *detach 33211 %wchod.id%
  *halt �� ��� ������ ����? - ���������� ����� "������� ���" ����� ������������ � ��� ��� ���� ������� ���
end
~
#33217
������ "GOOD LUCK"~
0 d 1
Good Luck~
if (%actor.vnum% != -1)
  halt
end
wait 1
say �����! ������ "Good Luck"
wait  2s
mecho ���������� ����� ����������, ���������...
wait 1s
say ������ � ��� ��������! ��� �� ������� ��� ������� � ����! ��!
mecho ������� ������� �������, ��������� ��������� �����...
wait 2s
say �� - ��� �����! �� ��� ��? �� �����....
say ����� ���� �� ������� ���? ��... �� ��������� ���������� �������...
say � ���� ������� ���� � �������, ��� �� �� ������������ ������������� � ��� ������...
say �� ���� � �� ����������... � ��� ����!
say ������ �� �� ������ ���?
*calcuid teleporter 33215 mob
attach 33218 %self.id%
*calcuid t1eleporter 33215 mob
detach 33217 %self.id%
end
~
#33218
������ "��"~
0 d 1
�� ������� ����� ����~
if (%actor.vnum% != -1)
  halt
end
wait 1
say �� ���-�, ����! ������ ��������� �� ������� ���� ������ ����� ������� ����� ���������� ����� ��������...
mecho ���������� ������ ����, ������...
wait  1s
eval  firstchar %self.people%
eval  num 0
while %firstchar% && (%num% < 5)
  set pc %firstchar.next_in_room%
  if %firstchar.vnum% == -1
    mechoaround %firstchar% %firstchar.name% ���%actor.g% ���������%actor.g% � �������!!! 
    mteleport %firstchar% 33483
    wait 1
    if %firstchar.realroom% == 33483
      msend %firstchar% .- �� ��� � �������! ��� ���������!
      eval  num %num%+1
    end 
  end
  if %pc%
    makeuid firstchar %pc.id%
  else
    set firstchar 0
  end
done
calcuid varru 33414 room
attach 33400 %varru.id%
calcuid kartogr 33417 mob
attach 33405 %kartogr.id%
calcuid wdowa 33486 room
attach 33407 %wdowa.id%
calcuid tract 33401 mob
attach 33402 %tract.id%
*calcuid teleporter 33215 mob
detach 33218 %self.id%
end
~
#33219
��������~
2 c 0
�������� ������������~
if !(%arg.contains(������)%) 
  wsend       %actor% ���� ��� �� ������ ��������???
  return 0
  halt
end
wsend       %actor% ������������, �� � ������ �������� ����� ������.
wechoaround %actor% %actor.name% � ������ �����������%actor.g% ������.
wait 1s
wsend %actor.name% .- �� � �������� ������ ������������ �� ������ �������� �������
wteleport %actor% 33270
wat 33270 wechoaround %actor% ���-�� �������� ����� .
end
~
#33220
����� ����~
2 c 0
����� ���������~
if !(%arg.contains(����)%) 
  wsend       %actor% ���� ��� �� ������ �����???
  return 0
  halt
end
wsend       %actor% �������� ������� �����, �� ������ ������ �����������...
wechoaround %actor% %actor.name% ������%actor.g% � ������ ����� �������.
wait 1s
wsend %actor.name% .- ��� �� �������� ����� ����� �� ������� � ��� �� ��� ���!
wteleport %actor% 33283
wat 33283 wechoaround %actor% ���-�� ������� ����.
end
~
#33221
�����������~
2 c 0
����������� ~
if !(%arg.contains(����)%) 
  wsend       %actor% ���� ��� �� ������ �����������???
  return 0
  halt
end
wsend       %actor% ��� ����, �� ����� ���������� ����.
wechoaround %actor% %actor.name% ������%actor.g% ����.
wait 1s
wsend %actor.name% .- �� ���� ���������� ����!
wteleport %actor% 33245
wat 33245 wechoaround %actor% ���-�� ������������ ����.
end
~
#33222
��������� �����~
2 c 0
�������� ����� ��������� ~
if !(%arg.contains(�����)%) 
  wsend       %actor% ���� ��� �� ������ �����???
  return 0
  halt
end
wsend       %actor% ������� �� �����, �� ������� �����.
wechoaround %actor% %actor.name% ������%actor.g% �����, ������� �� �����.
wait 1s
wsend %actor.name% .- ��� ������ ��, �� ������ ��������� ����� �����.
wteleport %actor% 33262
wat 33262 wechoaround %actor% ���-�� �������� ����.
end
~
#33223
���� � ����� ������ � �� 2~
2 f 100
~
calcuid brat 33213 mob
detach 33215 %brat.id%
attach 33214 %brat.id%
calcuid konek 33215 mob
attach 33205 %konek.id%
calcuid t1eleporter 33215 mob
attach 33217 %t1eleporter.id%
calcuid teleporter 33215 mob
attach 33218 %teleporter.id%
~
#33224
��� ����� ��������~
0 j 100
~
wait 1
if %object.vnum% == 33417 then
  wait 2s
  say ���! ��� ����� �����, � ������������ ����������� �� ���, � ������ ��������� �� ��� ������� ����� �� ���!!!
  say ����� �������! ��� ���������. ������... � ��� � �������� ���� ������?
  calcuid vari 33417 obj
  wait 1
  mpurge %object%
  wait 2s
  calcuid prizr 33215 mob
  attach 33230 %prizr.id%
  detach 33224 %prizr.id%
end
else
say  ��� �� �� �� �� ��� ������...
eval getobject %object.name%
���� %getobject.car%.%getobject.cdr%
end
~
#33225
����� �����~
0 f 100
~
if (%world.curobjs(33207)% < 5) && (%random.2% == 1)
  mload obj 33207
end
~
#33226
����� ����~
0 f 100
~
if (%world.curobjs(33208)% < 5) && (%random.3% == 1)
  mload obj 33208
end
~
#33227
������ ���~
2 c 0
������� �������� ������ ���������~
if !(%arg.contains(���)%) 
  wsend       %actor% ��� � �� ������ �������???
  return 0
  halt
end
wsend       %actor% ������ �������� �� �������, �� � ����� ��������� ��� �� ���.
wechoaround %actor% %actor.name%, ��������������, �������%actor.g% ��� �� �����.
wait 1s 
wecho ������ ��� �� ���� ��� ������������, � �������� �� ��� � ���� ������ ������.
wload mob 33217
wait 1s
calcuid mechik 33217 mob
attach 33228 %mechik.id%
exec 33228 %mechik.id%
calcuid mecklad 33220 room
detach 33227 %mecklad.id%
end
~
#33228
��� �������~
0 z 100
~
wait 5s
mecho _��� ������� ���!!!
mkill %actor%
~
#33229
��� �����~
0 f 100
~
context 332 
if %qwestik334% == 1
  if (%world.curobjs(33209)% < 1) && (%random.2% == 1)
    mload obj 33209
    unset %qwestik334% 
  end
  context 332 
  calcuid mechikr 33220 room
  attach  33231 %mechikr.id%
  exec     33231 %mechikr.id%
end
~
#33230
������ "�����"~
0 d 100
�����~
if (%actor.vnum% != -1)
  halt
end
wait 1
say ����� ����... ���... ����� �� ��� � ���� �������!
if (%world.curobjs(33202)% < 4) && (%random.3%==1)
  mload obj 33202
  wait 1
  ��� ��� %actor.name%
end
if (%world.curobjs(531)%==0) && (%random.2%==1)
  mload obj 531
  wait 1
  ��� ���� %actor.name%
end
say ��� ������� ����!!! ��� ��� �����??!! ��� ������ ���� ����������� ���: "������� �� ������ ���� ��������-�����!!!"
�����
wait 5
say ���.... �� ����� ���������!
say �� ��� � ���� ��������??
attach 33235 %self.id%
detach 33230 %self.id%
end
~
#33231
���������� ���� ����~
2 z 100
~
calcuid mechikkk 33217 mob
return  1
wpurge  %mechikkk%
end
~
#33232
������ ��� �����~
2 e 100
~
eval temp %actor%
wait 3s
wecho _����� �� ��� ��������� ��������� ��������� �������� �������.
wait 1s
wsend       %temp.name% _��� ������� ��� � ��������� ����� �� �����������.
wdamage %temp.name% 35
~
#33233
���� ��� �����~
2 e 100
~
eval temp %actor%
wait 10s
wecho _���������� �� ��� ��������� ����� ����������� ����.
wecho _��� ��� ������!!!
wdamage %temp.name% 70
~
#33234
����� ��������~
2 f 100
~
calcuid mecklad 33220 room
attach 33227 %mecklad.id%
context 332 
unset qwestik334
calcuid prizr 33215 mob
attach 33224 %prizr.id%
detach 33218 %prizr.id%
~
#33235
�� ��������~
0 d 100
������~
wait 5
say ������, ��� � ������� �� �� ����!!
attach 33236 %self.id%
detach 33235 %self.id%
~
#33236
���� ������� ��������~
0 j 100
~
wait 1
if %object.vnum% != 33402
  wait 5
  say ����� ��� ���?
  drop all
  halt
end
wait 1
mpurge %object%
say �� �������� �� ����?
say �������!
say ������ �������!
wait 1s
if (%world.curobjs(33210)% <= 5) && (%random.4%==1)
  mload obj 33210
  say ��� ������ ���..
  ���� ������.�������� .%actor.name%
  halt
elseif (%world.curobjs(33211)% <= 5) && (%random.4%==1)
  mload obj 33211
  say ��� ������ ���..
  ���� �������.�������� .%actor.name%
  halt
elseif (%world.curobjs(33212)% <= 3) && (%random.4%==1)
  mload obj 33212
  say ��� ������ ���..
  ���� ����.�������� .%actor.name%
  halt
end
%actor.gold(+5000)%
msend %actor% ������� �������� ��� ��� 5000 ���!
���
���
~
$~
