#95200
������ ����~
1 c 100
������~
if !%arg.contains(����)%  
  osend %actor% _��� �� ������ ��� ����� ��������?
  halt
end
if %actor.str% > 24
  wait 5
  osend %actor% �� ��������� � ���� ����� ������ ������� � ���� �� ������� ��� � ������!
  oechoaround %actor% %actor.iname% ������%actor.u% � ���� � �����%actor.g% ��� ���� �����������.
  oecho ����� ����� ������������� ������������.
  wait 10
  oecho _� ��������� ������...
  wait 10
  oecho _���������� � ����� ������� �����, ���-�� � �������� ���������� � �����.
  oload mob 95200
  detach 95200 %self.id%
else
  osend %actor% �� ��������� � ���� ������ ������, �� �� ������ ��� ���������.
  oechoaround %actor% %actor.iname% ������%actor.u% � ����, �� �� ����%actor.q% ��� ���������.
end
~
#95201
���������� �������� ����~
0 n 100
~
wait 5
mecho _�������� ����:
mecho  - �� ���� � ����� �����!
mecho _- ������ � �������, ��� ���� � ����� ��������.
mecho _- �� ���� ����������� ��������.
wait 5
mecho _- ���� ���� ���� �� ���� � ����� �����!?
attach 95202 %self.id%
detach 95201 %self.id%
~
#95202
������� �� �����~
0 d 0
����� �����~
wait 3
mecho _�������� ����:
mecho _- �!
mecho _- ��� ��� �����!
������
wait 10
switch %random.2%
  case 1
    mecho _- �����, ��� ���� ���� �� ���� �����.
    mload obj 95201
    ������� �����
    mecho _- ������ ������, ������ �� ����� �� ��������!
  break
  case 2
    mecho _- �� �� ���!
    mecho _- � ���� ����� �� ���� �� �����!
    mecho _- ������ ����, ����������!
    dg_cast '���� �����' %actor.iname%
  break
done
detach 95202 %self.id%
~
#95203
�����~
2 f 100
~
* ������� ������� �� ������� �����
if %exist.obj(95200)%
  calcuid fromid 95200 obj
  attach 95200 %fromid.id%
end
* ������� �������� �� �������� ���� 
if %exist.mob(95200)%
  calcuid fromid 95200 mob
  attach 95201 %fromid.id%
  detach 95202 %fromid.id%
end
* ������� ������� � ������� ������
calcuid fromid 95274 room
attach 95204 %fromid.id%
if %exist.mob(95201)%
  * ������� ������� �� ������ �������� (���������)
  calcuid fromid 95201 mob
  attach 95205 %fromid.id%
  attach 95206 %fromid.id%
  attach 95209 %fromid.id%
  attach 95211 %fromid.id%
  detach 95207 %fromid.id%
  detach 95208 %fromid.id%
end
* ����� ����� �� ����� ��������
calcuid fromid 95214 mob
attach 95213 %fromid.id% 
* ����� ������ �� ������� ������ � �������� �����
calcuid fromid 95216 mob
attach 95219 %fromid.id% 
attach 95221 %fromid.id% 
wdoor 95250 south purge room 95253
wdoor 95253 north purge room 95250
* ����� ����� �� ������� ������
calcuid fromid 95217 mob
attach 95220 %fromid.id% 
* ����� ����� �� ��������
calcuid fromid 95218 mob
attach 95223 %fromid.id% 
* ����� ����� �� ������
calcuid fromid 95236 obj
attach 95224 %fromid.id% 
* ����� ������ �� ��������� �����
calcuid fromid 95222 mob
attach 95225 %fromid.id%
attach 95226 %fromid.id%
* ����� ������ �� ������ ���������� �����
calcuid fromid 95221 mob
attach 95227 %fromid.id%
attach 95228 %fromid.id%
* ����� ������ �� �������
calcuid fromid 95219 mob
attach 95229 %fromid.id%
attach 95230 %fromid.id% 
detach 95231 %fromid.id% 
* ����� ������ �� ����������
calcuid fromid 95223 mob
attach 95234 %fromid.id%
attach 95235 %fromid.id%
* ������� ����� � ������ �����
wdoor 95277 east purge room 95274 
wdoor 95274 west purge room 95277 
* ��������� ����������
set quest1 0
set quest2 0
set quest3 0
global quest1
global quest2
global quest3
~
#95204
�������� � ����� ������� ������~
2 c 1
�������~
wait 1
if !%arg.contains(�����)%  
  wsend %actor% _��� �� ������ ���� �������!
  halt
end
wait 5
wsend %actor% _�� ������� �������� ����� �� �����.
wechoaround %actor% _%actor.iname% ��������� �������%actor.g% ����� � �����.
wait 1
wecho _���! ���!
switch %random.4%
  case 1
    wecho _�� ������ ����������� �����-�� ������...
    wait 5
    wecho _����� ��-�� �����:
    wecho _- ���� ���� ����, ������ ����� ���� �������?!
    wecho _- �� ��� ��� � ����!
    wecho _- ���� � ��� ������!
    wait 15
    set char %actor%
    *set char %random.pc%
    wecho _�������� ����� ������� ������������ 
    wecho _� ��-�� ��� ���������� ����������� �������� ��������� ����.
    wsend %char% _������� � ����� ��������� ��� � �����.
    wsend %char% _�� ����� ������, �� �� ��������� �������� ��������.
    %char.wait(3)%
    wechoaround %char% _������� � �� �� ������� �������� %char.vname% �� �����
    if %char.sex% == 1 
      wechoaround %char% _� ������������ ������� � ��� �� ������!
    else
      wechoaround %char% _� ������������ ������� � ��� �� ������!
    end
    wat 95277 wload mob 95201
    set quester %char%
    global quester
    wteleport %char% 95277
    wait 15
    wecho _��-�� ����� ����������� �����-�� ����� � ��������� �����.
    wecho _�� ��������� ����� ��������� ������ ��� ������...
    wait 15
    wecho �������� ������ �� �����-�� ������������� �����!
    detach 95204 %self.id%
  break
  case 2
    wecho _����� ������� ���� � �� ������ ��������� ��� �����.
  break
  case 3
    wecho _�� ������ ���������� ���� ��������. ����� �� �� �� ��� ������.
  break
  case 4
    wecho _����� ��-�� �����:
    wecho _- ���� ������!
  break
done
~
#95205
������ �������� � ������ �����~
0 n 100
~
wait 5
mecho _������ �������:
mecho _- �� ��� �� �����!
mecho _- ���� ���� ����� ����?
wait 3
mecho _- ���� ���, �����! 
mecho _- ����� � ��� ������.
������
wait 2s
mecho  - ��������, �� ������ ������� � ������ ����� ���� ���������.
mecho _- ������ ������ � ����, ��� � ���� �������.
mecho _- � ��������� ������?
attach 95207 %self.id%
~
#95206
���� �������� ����� ��� ����� �����~
0 j 100
~
* ���� ���� �������� �����
if (%object.vnum% == 95201) && (%quester.id% == %actor.id%)
  set quest2 1
  global quest2
  wait 1
  mpurge %object%
  mecho _������ �������:
  mecho _- ����� ������� �����!
  mecho _- �������!
  mecho _- ������ � �� �� ������ ����.
  exec 95211 %self.id%
else
  mecho _������ ������� ���� ���-�� �� �������.
  ������� %object.iname%
end
* ���� ���� ������� �����
if (%object.vnum% == 95212) && (%quester.id% == %actor.id%)
  set quest3 1
  global quest3
  wait 1
  mpurge %object%
  mecho _������ �������:
  mecho _- ��, ������� ������.
  mecho _- ����� ��� ��� ������ �������.
  �����
  exec 95211 %self.id%
else
  mecho _������ ������� ���� ���-�� �� �������.
  ������� %object.iname%
end
~
#95207
������� � ������ ���������_1~
0 d 0
��~
wait 10
mecho _������ �������:
mecho _- �� ��� �� ������ � ������, ��� �������� "��" �� "������".
mecho  - �� ������ ���� ��������� ������ � �� �������� ������.
wait 10
mecho _- �� �� �����.
mecho _- �����, � ����� ���� ������.
������
wait 15
mecho _- �� ��� �� ���, ��� �� ������� ��� �����%actor.g%, ����� ����� ��� ������ �������.
���
wait 15
mecho  - ���� � ���� ���� ������� ��� ����.
mecho _- ��� ����� ������������?
attach 95208 %self.id%
detach 95207 %self.id%
~
#95208
������� � ������ ���������_2~
0 d 0
�� ������ �����~
set quester %actor%
global quester
wait 5
if %speech% == ��
  mecho _������ �������:
  mecho _- ����� ��� ����� "��".
  �������
end
wait 15
mecho _- �����.
mecho  - ��-������, ������� ��� �������� �����.
mecho _- ���� ��� ���� ������ �������� ��������.
mecho  - �� � ��� ���, ��� ��� ���� ���������, ���� ��������� �������.
�������
wait 15
mecho _- �� ������, ������ ��� ����� ����� �����, ��� �� ������� ������ �������.
mecho _- � �� ���� ����� �������, � �������� ��� ��� ������� �������.
wait 15
mecho _- �� � �� ��������, � �����, ������� ����� ������� �����.
mecho _- �����, ��������� � ������� ����� �����, �� ������� ��.
mecho _- ����� �����, ��� �� ���� � ���� ��������, ����� � ��� ������������.
wait 20
mecho _- �� ���, ��� �� ����.
mecho _- ��� ��� ��������, �������...
mecho _- ������ ����� ��������, � �� � �������� �������.
mecho _������ ������� ������� ��� �� ������� � ��������� ����� ������� �� �����.
mat 95274 mecho _����� ������� ������������ � �� ��������������� ������ ������� �������%actor.g% %actor.iname%.
mteleport %actor% 95274
mdoor 95277 east room 95274 
mdoor 95274 west room 95277  
detach 95208 %self.id%
~
#95209
����� � ������� ��������~
0 r 100
~
if (!%exist.mob(95204)%) && (%actor.id% == %quester.id%) && (%quest1% == 0)
  set quest1 1
  global quest1
  wait 15
  mecho _������ �������:
  mecho _- �. ��� ����� ��.
  mecho _- ��� ����, ��� ���������� ��� ������.
  mecho _- ������� �� ��� ������ ����� ������.
  mecho _- �� �� �� �����, ��� ��� ���� �� �����.
  ���
  exec 95211 %self.id%
  detach 95209 %self.id%
end
~
#95210
����� ������� �����~
0 f 100
~
if %world.curobjs(81012)% == 0
  mload obj 95212
end
~
#95211
���������� ������~
0 z 100
~
if (%quest1% == 1) && (%quest2% == 1) && (%quest3% == 1)
  wait 10
  mecho _������ �������:
  mecho _- �����! �����!
  mecho _- ������%actor.g% �� ����.
  wait 10
  mecho _- ������ � ��� ��������� �� ������ ����� ���������.
  wait 10
  mecho _������ ������� ������ �������� � �� ��������� � ����.
  mat 95249 mecho ���-�� ��� ����� � �����.
  mteleport all 95249
  detach 95211 %self.id%
end
~
#95212
����� ��������� ����~
0 f 100
~
mload obj 95201
~
#95213
����� � ������ ���������~
0 q 100
~
wait 5
msend %actor% _����� �������� �������� ��������� �� ���.
mechoaround %actor% _����� �������� �������� ��������� �� %actor.vname%.
wait 3s
mecho _����� ��������:
mecho _- ���� ������ ���������� �� �� ����?!
mecho _- ��� ����, ����� �� ������ ���������� � ���� �������!
mecho _- ���, ���� ���� �� ��� �����, ���� �� ������, �� ���%actor.g% �������.
mload obj 95213
���� ���� %actor.iname%
wait 15
mecho _- � ����� �������� ������, ��� ���� �� �� ��������� � ���!
mecho _- � �� ��������� �������� �� ����.
wait 10
msend %actor% _����� �������� ���������� �� ���.
mechoaround %actor% _����� �������� ���������� �� %actor.rname%.
detach 95213 %self.id%
~
#95214
����� �������� ����~
0 f 100
~
mload obj 95232
~
#95215
���� ���-�� ������ ���������~
0 j 100
~
wait 1
if %object.vnum% == 95232
  mpurge %object%
  wait 15
  mecho _����� ��������:
  mecho _- ������� ���� ������� �������� ��� ��������?!
  mecho _- �� ��� ��� ���� ������ �� �����.
  wait 15
  mecho _- ����...
  mecho _�� ������ � ������ ���������, �� ������, ��� ��� ������ �� ����� ��������� ����.
  wait 5
  msend %actor% _� ����� ������ ����� �������� ���������� �� ���!
  attack %actor.iname%
  mechoaround %actor% _� ������ ������ ����� �������� ��������� �� %actor.rname%!
else
  mpurge %object%
  mecho _����� ��������:
  mecho _- ������� �������.
  mecho _- ������� �� � �� ����.
end
~
#95216
����� ������ ���������~
0 f 100
~
if (!%exist.mob(95215)%) && (%world.gameobjs(95232)% == 0)
  mload obj 95232
end
~
#95217
��� � ������� �����_1~
0 k 5
~
set char %random.pc%
msend %char% ���������� ������ ����� ������� ���� ������� ��� �� �����!
%char.position(6)%
%char.wait(6)%
mechoaround %char% ���������� ������ ����� ������� ���� ������� %char.vname% �� �����!
~
#95218
��� � ������� �����_2~
0 k 5
~
mecho _������� ���� �������� �������� �� ������� �������� ������ �������� ����!
foreach char %self.char%
  if %random.2% == 1
    msend %char% _� ��� ������ ���� �� ���, ���������� �� ����� ����!
    mechoaround %actor% _���� �� ���, ���������� �����, ������� ����� � %actor.vname%!
    mdamage %char% 150
  end
done
~
#95219
����� � �������� ������~
0 r 100
~
wait 5
mecho _������� �����:
mecho _- ���!
mecho _- � �� ���� �������!
wait 5
msend %actor% _������� ����� ����������� ��������� �� ���.
mechoaround %actor% _������� ����� ����������� �������� %actor.rname%.
wait 15
mecho _- � �� ������ �� ���� ������ ���� ��������!
mecho _- � ��, �� ��� �����!
wait 10
msend %actor% _������ ������ ������� ����� �������� ��� ����!
mdamage %actor% 400
mechoaround %actor% ������ ������ ������� ����� ������ �� ���� %actor.rname%!
������ %actor.iname%
wait 15
mecho _- � �� ���, ���������, ��� � ����, ����� �������, ������ �������?!
mecho _- ������ ��� ���!
�����
wait 10
mecho _- ���� �������� ���� ������ �������, ����� � ���������.
mecho _- ��� �� ����, �� �������� ��� ������.
detach 95219 %self.id%
~
#95220
����� � �������� ������~
0 q 100
~
wait 5
mecho _������� �����:
mecho _- ��!
mecho _- �� ���� ������!
mecho _- �������� ���� ����� �����-��!
mecho _- � ����� � �� ����� ��� �����...
mecho _������� ����� ��������� ��������.
detach 95220 %self.id% 
~
#95221
���� �������� ���� �������� ������~
0 j 100
~
wait 1
if %object.vnum% == 95232
  mpurge %object%
  msend %actor% _������� ����� ��������� ��������� �� ���.
  mechoaround %actor% _������� ����� ��������� ��������� �� %actor.vname%.
  wait 15
  mecho _������� �����:
  mecho _- �� ������... �� ������.
  mecho _- ��� ������ ����� �� ������ � ��� ����������, � ��...
  mecho _- ��� �� �� ����%actor.q%?!
  wait 15
  mecho _- �� ��� �� �����!
  wait 15
  mecho _- ���������, ���� ������� ���� �������.
  mecho _- � ��� � � �������, � ������� ����.
  mecho _- ��� ���� ���������� �� ���� �� ���������� ����.
  mload obj 95238
  ���� ������ %actor.iname%
  mecho _- ������ ��� ���������... � ����� �� ����� � ���.
  wait 10
  mecho _- �� �� �����, ��� ������ ���� ��� ���������!
  mecho _- �� ����� ������������ �� �����...
  wait 20
  mecho _������� ����� ��������� �� ������� �����, �������� �� �����.
  mecho _��� ������ ����������� � ������� ����� �������� ������������.
  mdoor 95250 south room 95253
  mdoor 95253 north room 95250
  detach 95221 %self.id%
else
  mecho _������� �����: 
  mecho _- � �� �����, ��� ��� ������� ���� ������� ������.
  ������� %object.iname%
end
~
#95222
����������� ������ �����~
2 e 100
~
wait 2s
wecho _������ ���� ���������� �� ���� � ������� ����� �������� ����������.
wdoor 95250 south purge room 95253
wdoor 95253 north purge room 95250
~
#95223
����� � ��������~
0 q 100
~
wait 3
mecho _�������:
mecho _- �� ������, �� �����.
mecho _- ����� �������� ��� ������� ����� ���������!
mecho _- ��� �� ������...
mecho _������� ������ �� ��������� ������, ������� � ���� �� ������.
mecho _- ��� ���� ����� ��������� �����, ������������ ����� ��������.
wait 5
mecho _������� ���� �����������.
wait 15 
mecho _- �� ������, �� ���� � ���� ��� ����������.
mecho _- �������� �������.
detach 95223 %self.id%
~
#95224
������� ������~
1 c 100
�������~
if !%arg.contains(������)%
  osend %actor% _��� ����� ������� ��?
  halt
end
osend %actor% _�� ��������� ����� ������ � �������� ������ � �������.
osend %actor% _�� ��� �����, ��� ��� ������ �� ������� ��������� �����.
osend %actor% _� ������� ����� �����-�� �������.
oechoaround %actior% %actor.iname% �������%actor.g% ������ � �������.
oload obj 95237
detach 95224 %self.id%
~
#95225
����� � ��������� �����~
0 q 100
~
wait 3
msend %actor% _��������� ����� � ���������� ��������� �� ���.
mechoaround %actor% _��������� ����� � ���������� ��������� �� %actor.vname%.
wait 15
mecho _��������� �����:
mecho _- ��� �� ����� �������... ��������!
mecho _- ��� �� ������ ������������ � ������ ����� ��� ����������!
mecho  - ������, ��� ���� ����� ���� ��� �����.
detach 95225 %self.id%
~
#95226
���� ���-�� ���������~
0 j 100
~
wait 1
if %object.vnum% == 95238
  mpurge %object%
  wait 10
  ���
  mecho _��������� �����:
  mecho  - � �� �������%actor.g%, ��� ���� ������ ������ ������� ������� ���� ������� ������?
  mecho _��������� ���� ���������� � �������� ���������� �� ������ ������.
  wait 15
  mecho  - ���� ������ �������, ���� ��� �� �������� �������� ���� �� �����!
  calcuid fromid 95221 mob
  exec 95227 %fromid.id%
  halt
end
if %object.vnum% == 95239
  mpurge %object% 
  ������
  wait 10
  mecho _��������� �����:
  mecho  - �� ����, ��� �� �����%actor.g% � ���, ��� � ����� ����� ���������� ���� ���.
  mecho _- �� ��� ������� ���� ������� � ����� �������.
  wait 15
  mecho _- ��� ���� ���� �� ���� �����.
  mload obj 95240
  ���� ���� %actor.iname%
  mecho _- ���%actor.g% �� ��������, ��� ����...
  halt
end
mecho _��������� �����:
mecho _- ����� ��� ���?
������� %object.iname%
~
#95227
������� ����� ���������� �����~
0 z 100
~
wait 10
mecho _����� �����:
mecho _- ��... ����... �� �����.
wait 2s
mecho _����� ����� �������� ���� ��������� ����� ���������� � ���������:
mecho _- �� ������ ������� ������?
mecho _- � ���� ��� ��� �������, ��...
wait 2s
mecho _- ��, �� ���� ������ ���� ����� ���������.
mecho _- ����� 5000 ��� ����� ����������.
��
detach 95227 %self.id%
~
#95228
���� ������ ���������� ����� ����~
0 m 100
~
wait 10
if %amount% < 5000
  mecho _����� �����:
  mecho _- �������� �����.
  ���� %amount% ��� %actor.iname%
  halt
end
mecho _����� �����:
mecho _- ��������� ����� ������� � ����, ��� ������ ��� �������.
mecho  - �� ������ ��� �� ��� �� ����� ��� �����...
mecho _����� ����� ����� ���������.
calcuid fromid 95219 mob
detach 95230 %fromid.id%
attach 95231 %fromid.id%
detach 95228 %self.id%
~
#95229
����� � �������~
0 q 100
~
wait 5
mecho _������:
mecho _- �, ������� ����!
mecho _- ������ ���-�� ������?
~
#95230
������� ������� "���" �� ��� ���� ��� �� �������� �� �������~
0 d 0
���~
wait 5
mecho _������:
mecho _- �... 
mecho _- � ����� ��� ���� �� �����.
mecho _- ���, �����, ����� ������� ����!
~
#95231
������� ������� "���" � ���������� �� �������~
0 d 0
���~
wait 10
mecho _������:
switch %random.2%
  case 1
    mecho _- �����, � ��� �������� � ���� �����.
    mecho _- ��� ����� ��� ���������, ������ ����� ��� �� ���� ��������.
    mload obj 95239
    ���� ��� %actor.iname%
    mecho _- �� � ��� ������ ��� ���� �������.
  break
  case 2
    mecho  - ��� � ���� �������� ���� � ������� �� ����!
    mecho _- � ������ �� ���������!
  break
done
detach 95231 %self.id%
~
#95232
������ �������~
0 f 100
~
if %world.gameobjs(95239)% == 0
  mload obj 95239
end
~
#95233
������ ��������� �����~
0 f 100
~
if %world.curobjs(95240)% == 0
  mload obj 95240
end
if (%random.100% <= 5)
  mload obj 103
end
~
#95234
����� � �����������~
0 r 100
~
wait 15
mecho _����� ����������:
mecho _- ������������ ���, ��� ���� ��������� ��� �������� � ����� �� ����� �����.
mecho _����� ���������� ������ ��������������� ���.
wait 1s
mecho  �������, ����������� ������� � ����� �������� ���������� �� ���.
wait 2s
mecho _�������������� ����:
mecho _- � ������������ ���.
mecho _- �� �� ��������� ������ ����� ����� ������� ���.
mecho _- �������� ��� ������ �� ���������.
mecho _�������������� ���� ������ ��������������� ���.
wait 1s
mecho _����� ���������� ��������� � ������ � �������.
wait 2s
mecho _������� ����������:
mecho _- � ��� ��� ����� ����?
mecho _- ����� �� ���������� ���.
mecho _- ������ �� ������ ������� ���� ����������!
wait 2s
mecho _�������������� ����:
mecho _- ��������, ���-�� �� ��� ����� ������� � ���?
mecho _- ���� ��, �� ��� ��?
detach 95234 %self.id%
~
#95235
������� �� ������������ � �������� �������~
0 d 0
�~
eval skl %actor.remort%*5+81
* ���� �������� ������ 28 ������, �� ���� ������ ����
if %actor.level% < 28
  msend %actor% _�������������� ���� �������� ��� � ������ �� ���.
  mechoaround %actor% _�������������� ���� �������� %actor.vname% � ������ �� ���.
  mecho _�������������� ���� ��������� � ������ � ������� � ������ �����������.
  wait 20
  mecho _����� ����������:
  mecho _- �� ������������, � ������, ��� �� ��� �� �����%actor.q% ����� ��������� � ���.
  mecho _- �������, ����� ������� ������� ���������.
  mecho _- �� ���-���� ��� �� �� ���� ������ �������.
  msend %actor% _��������� ���� ������ � ������� ����������, �� ����� ������� �������.
  %actor.exp(+2500000)%
else
  * ---------------------------------------------------------------------------------------
  * ���� ��������� ������/���������� ��� �������� ������� ������
  mecho _����� ����������:
  mecho  - �� ������������, � ������ ������� �������� ����, � ������ ����� ���������.
  mecho _- �� ����, ������� ����� �������� � �������!
  wait 10
  switch %actor.class%
    * -------------------------------------- ������ -----------------------------------------
    case 0
      if ((!%actor.skill(������)%) && (%actor.can_get_skill(������)%))
        msend %actor% �� �������� ������ "������".
        mskillturn %actor% ������ set
      elseif %actor.skill(������)% < %skl%
        msend %actor% �� ����� ������� ������� � ������ "������".
        mskilladd %actor% ������ 10
      else
        msend %actor% _�� ����� ������� �������.
        %actor.exp(+1000000)% 
      end   
    break
    * -------------------------------------- ������ -----------------------------------------
    case 1
      if ((%random.1000% <= 30) && (%actor.can_get_spell(��������)%) && (!%actor.spelltype(��������)%))
        wspellturn %actor% �������� set
        msend %actor% _�� ������� ���������� '��������'! 
      else
        msend %actor% _�� ����� ������� �������. 
        %actor.exp(+1000000)%
      end
    break
    * --------------------------------------- ���� ------------------------------------------
    case 2
      if ((!%actor.skill(��������)%) && (%actor.can_get_skill(��������)%))
        msend %actor% �� �������� ������ "��������".
        mskillturn %actor% �������� set
      elseif %actor.skill(��������)% < %skl%
        msend %actor% �� ����� ������� ������� � ������ "��������".
        mskilladd %actor% �������� 10
      else
        msend %actor% _�� ����� ������� �������.
        %actor.exp(+1000000)% 
      end   
    break
    * -------------------------------------- �������� ---------------------------------------
    case 3
      if ((!%actor.skill(��� �����)%) && (%actor.can_get_skill(��� �����)%))
        msend %actor% �� �������� ������ "����������� �����".
        mskillturn %actor% ���.����� set
      elseif %actor.skill(��� �����)% < %skl%
        msend %actor% �� ����� ������� ������� � ������ "����������� �����".
        mskilladd %actor% ���.����� 10
      else
        msend %actor% _�� ����� ������� �������.
        %actor.exp(+1000000)% 
      end   
    break
    * --------------------------------------������� -----------------------------------------
    case 4
      if ((!%actor.skill(������� ����)%) && (%actor.can_get_skill(������� ����)%))
        msend %actor% �� �������� ������ "������� ����".
        mskillturn %actor% �������.���� set
      elseif %actor.skill(������� ����)% < %skl%
        msend %actor% �� ����� ������� ������� � ������ "������� ����".
        mskilladd %actor% �������.���� 10
      else
        msend %actor% _�� ����� ������� �������.
        %actor.exp(+1000000)% 
      end   
    break 
    * -------------------------------------- ��������� --------------------------------------
    case 5
      if ((!%actor.skill(���������� �����)%) && (%actor.can_get_skill(���������� �����)%))
        msend %actor% �� �������� ������ "���������� �����".
        mskillturn %actor% ����������.����� set
      elseif %actor.skill(���������� �����)% < %skl%
        msend %actor% �� ����� ������� ������� � ������ "���������� �����".
        mskilladd %actor% ����������.����� 10
      else
        msend %actor% _�� ����� ������� �������.
        %actor.exp(+1000000)% 
      end   
    break
    * -------------------------------------- �������� ---------------------------------------
    case 6
      if ((%random.1000% <= 30) && (!%actor.spelltype(���� �����)%) && (%actor.can_get_spell(���� �����)%))
        wspellturn %actor% ����.����� set
        msend %actor% _�� ������� ���������� '�������� �����'!
      else
        msend %actor% _�� ����� ������� �������.
        %actor.exp(+1000000)%
      end
    break
    * -------------------------------------- ��������� --------------------------------------
    case 7
      if ((%random.1000% <= 30) && (!%actor.spelltype(������� ����)%) && (%actor.can_get_spell(������� ����)%))
        wspellturn %actor% ���.���� set
        msend %actor% _�� ������� ���������� '������� ����'! 
      else
        msend %actor% _�� ����� ������� �������.
        %actor.exp(+1000000)%
      end
    break
    * ----------------------------------- ������������ --------------------------------------
    case 8
      if ((%random.1000% <= 30) && (!%actor.spelltype(�������� �������)%) && (%actor.can_get_spell(�������� �������)%))
        wspellturn %actor% ��������.������� set
        msend %actor% _�� ������� ���������� '�������� �������'! 
      else
        msend %actor% _�� ����� ������� �������.
        %actor.exp(+1000000)%
      end
    break
    * -------------------------------------- ������ ------------------------------------------
    case 9
      if ((!%actor.skill(������ �����)%) && (%actor.can_get_skill(������ �����)%))
        msend %actor% �� �������� ������ "������ �����".
        mskillturn %actor% ������.����� set
      elseif %actor.skill(������ �����)% < %skl%
        msend %actor% �� ����� ������� ������� � ������ "������ �����".
        mskilladd %actor% ������.����� 10
      else
        msend %actor% _�� ����� ������� �������.
        %actor.exp(+1000000)% 
      end   
    break
    * -------------------------------------- ������� ----------------------------------------
    case 10
      if ((!%actor.skill(�����)%) && (%actor.can_get_skill(�����)%))
        msend %actor% �� �������� ������ "�����".
        mskillturn %actor% ����� set
      elseif %actor.skill(�����)% < %skl%
        msend %actor% �� ����� ������� ������� � ������ "�����".
        mskilladd %actor% ����� 10
      else
        msend %actor% _�� ����� ������� �������.
        %actor.exp(+1000000)% 
      end   
    break
    * -------------------------------------- ������ -----------------------------------------
    case 11
      if ((!%actor.skill(��������)%) && (%actor.can_get_skill(��������)%))
        msend %actor% �� �������� ������ "��������".
        mskillturn %actor% �������� set
      elseif %actor.skill(��������)% < %skl%
        msend %actor% �� ����� ������� ������� � ������ "��������".
        mskilladd %actor% �������� 10
      else
        msend %actor% _�� ����� ������� �������.
        %actor.exp(+1000000)% 
      end   
    break
    * --------------------------------------- ����� -----------------------------------------
    case 12
      if ((!%actor.skill(�������)%) && (%actor.can_get_skill(�������)%))
        msend %actor% �� �������� ������ "�������".
        mskillturn %actor% ������� set
      elseif %actor.skill(�������)% < %skl%
        msend %actor% �� ����� ������� ������� � ������ "�������".
        mskilladd %actor% ������� 10
      else
        msend %actor% _�� ����� ������� �������.
        %actor.exp(+1000000)% 
      end   
    break
    * --------------------------------------- ����� -----------------------------------------
    case 13
      if ((!%actor.skill(��������)%) && (%actor.can_get_skill(��������)%))
        msend %actor% �� �������� ������ "��������".
        mskillturn %actor% �������� set
      elseif %actor.skill(��������)% < %skl%
        msend %actor% �� ����� ������� ������� � ������ "��������".
        mskilladd %actor% �������� 10
      else
        msend %actor% _�� ����� ������� �������.
        %actor.exp(+1000000)% 
      end   
    break
  done
end
msend %actor% _- ��� ���, ��� � ���� ��� ���� �������.
msend %actor% _- ������ � �����.
msend %actor% _����� ���������� �������� ����� � ��� ������ �����������.
mat 95100 mecho ���-�� �������� ����� � ������ ������ ����.
mteleport all 95100
detach 95235 %self.id%
~
#95236
����� ����� ������� ��������� �� ��~
2 c 100
�����~
wait 1
if !%arg.contains(�����)%  
  wsend %actor% _����� ��� �� ������ �����?
  halt
end
wsend %actor% _����� ����������� �� ������� ����� ������� ���������.
wechoaround %actor%  ����� ����������� %actor.name% �����%actor.q% ����� �����.
if %random.3% == 2
  wsend %actor% _������������ �� ������� ������, �� ����� ����� �� ������� ����!
  wsend %actor% _���� ������ �������� ���� ������ ����.
  wat 95266 wecho _�� ������ ����������� ����� ����������� ����� � �����.
  wat 95269 wecho _�� ������ ����������� ����� ����������� ����� � �����.
  if %actor.hitp% > 10 
    eval buf %actor.hitp(10)%
  end
end
wteleport %actor% 95269
~
#95237
����� ����� ������� ��������� �� �����~
2 c 100
�����~
if !%arg.contains(�����)%  
  wsend %actor% _����� ��� �� ������ �����?
  halt
end
wsend %actor% _����� ����������� �� ������� ����� ������� ���������.
wechoaround %actor% _����� ����������� %actor.iname% �����%actor.q% ����� �����.
if %random.3% == 2
  wsend %actor% _������������ �� ������� ������, �� ����� ����� �� ������� ����!
  wsend %actor% _���� ������ �������� ���� ������ ����.
  wat 95266 wecho _�� ������ ����������� ����� ����������� ����� � �����.
  wat 95269 wecho _�� ������ ����������� ����� ����������� ����� � �����.
  if %actor.hitp% > 10 
    eval buf %actor.hitp(10)%
  end
end
wteleport %actor% 95266
~
#95238
���� ������� �������~
0 f 100
~
if %random.10000% < 50
  mload obj 103
end
~
$~
