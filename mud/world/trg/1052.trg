#105200
�������� �����~
0 f 100
~
mechoaround %actor% %actor.name% ��������%actor.u% � ����� �������%actor.g% ��� ��������.
msend %actor% �� ����������� � ����� �������� ��� ��������.
mload obj 105226
~
#105201
������ ��� �����~
0 f 100
~
if ((%random.3% == 1) && (%world.curobjs(105223)% < 2)) 
  mload obj 105223
else
  if ((%random.2% == 1) && (%world.curobjs(105224)% < 2))
    mload obj 105224
  end
end    
~
#105202
������ ������������~
0 q 100
~
�� ������ ������, ������ �������� ������������
wait 4
� ����������, %actor.name%!
� ������ ���� ��������%actor.g% �� � ������ ������.
� �� �����%actor.g% �� � ����� ������������� �������� ��������?
���
wait 4
� ����� �� � ���� ������, � ���� �� ������!
� �� ������ � �� ��� ����� �������, �� ���-�� �� ���� �� ��������.
� ������ �� ����� � �����.
���
wait 4
� ��������� ��� � ������ - ������� ������, ���� ��� ������.
wait 2s
�� ��������� ������
� ���! ������, %actor.name%, ������ � �������� �� ����.
� ����� ���� � ������, ������ ������� ��������!
� ���� ������, �����, ������� � ����.
� ��� � ��� ��� �����, ������ ����� �� ���� � �����.
calcuid syrchan 105200 mob
attach 105203 %syrchan.id%
attach 105204 %syrchan.id%
~
#105203
������ � ����~
0 c 0
������ ����� �����~
if (%razulsya.iname% != %actor.iname%)
  msend %actor% ���� �� �� �� ���������-�� �����?!
  halt
end
if (%arg.contains(��)%)
  msend %actor% �� ������ �� ������ � ���� ����� � �����.
  mechoaround %actor% %actor.iname% ����%actor.y% �� ������ � ���%actor.g% ����� ����.
  wait 4
  �� %actor.iname%
  � %actor.iname%, �� ������ � �������� ���� ������.
  � � ������ ���� ��� ������ ���� � ����� ����.
  wait 4
  � �� ������ �� ������� �� ������, �������� ���� ���������?
  calcuid syrchan 105200 mob
  attach 105205 %syrchan.id%
else
  if (%arg.contains(������)%)
    msend %actor% �� ������ ������ ������ � ���� ����� � �����.
    mechoaround %actor% %actor.iname% ����%actor.y% ������ ������ � ���%actor.g% ����� ����.
    wait 4
    ���� %actor.iname%
    � �� ��, �������!
    � ����%actor.y% � ����� ���, � ������� �� ����������?!
    wait 4
    � ��� �� ���� ����!
    unset razulsya
    * ������������
    eval pcs %self.pc%
    foreach i %pcs%
      mteleport %i% 105271
    done
  else
    msend %actor% ������ ����� �� ������ ��� ������ ������.
  end
end
~
#105204
��������~
0 c 0
��������~
if (%arg.contains(������)%) 
  msend %actor% �� �������� ������� �� �����.
  eval obuvka %actor.eq(������)%
  if (%obuvka%)
    mforce %actor% ����� %obuvka.iname%
  end
  unset razulsya
  wait 4
  �� ������ �������� �����
  � �� ������ �� ����� �������, %actor.iname%.
  � ���-�� ����� �����, �� ����� ����.
  * ������������
  eval pcs %self.pc%
  foreach i %pcs%
    mteleport %i% 105271
  done
else
  if (%arg.contains(�����)%)
    msend %actor% �� �������� ������ �� �����.
    eval obuvka %actor.eq(������)%
    if (%obuvka%)
      mforce %actor% ����� %obuvka.iname%
    end
    eval razulsya %actor%
    global razulsya
    wait 4
    �� ������������ �������
  else
    msend %actor% �������� ����� ������ ��� ����� �� �����. 
  end 
end
~
#105205
����� �������~
0 d 1
���� ������ ��~
�� ����� ���� �������� �����
wait 4
calcuid pevec 105205 mob
attach 105206 %pevec.id%
remote razulsya %pevec.id%
exec 105206 %pevec.id%
calcuid urta 105286 room
attach 105207 %urta.id%
~
#105206
����� �������� ������~
0 z 100
~
����� �����
�� ���� ������� ���������
������ %razulsya.iname%
wait 4 
���� ����� %razulsya.iname%
~
#105207
������ ������~
2 c 0
������ ������� ��������~
eval dombra %actor.eq(18)%
if !(%arg.contains(�����)% && (%dombra.vnum%==105203)) 
  wsend %actor% �� ������� �� ������� ���������� ����� � ����� ���������.
  wsend %actor% ������, ��� �� ��������� �� �� ���� �����������...
  wechoaround %actor% %actor.iname% ������%actor.g% �� ������� ���������� ����� � ����� ���������.
  wechoaround %actor% ���, ���������� ���-�� �� �����...
  halt
end
wsend %actor% �� ������� ������ ������ ������ � ��� ������ ������ �������.
wechoaround %actor% %actor.iname% ������%actor.g% ������ ������ ������ � ��� ������ ������ �������.
wait 4
* �������� �����. ����������� �������.
wforce %actor% � ����, � �������� �������,
wforce %actor% � �� ������ �������� ������
wforce %actor% � � ������� ����� ����� ����,
wforce %actor% � ��� ����� ���������� ����.
wait 4
wforce %actor% � ��������� ������� ������,
wforce %actor% � ����� �� �� ��, � ������,
wforce %actor% � ��� ��������� ��� �� �������
wforce %actor% � ������ � ����� ������.
wait 4
wforce %actor% � ��� ����� � ������ ����,
wforce %actor% � ��� ������ �������� ������,
wforce %actor% � �� ������ ������� ������
wforce %actor% � ��������� ����� ������.
wait 4
wforce %actor% � ��� ���, ��� �����, ��� �����-
wforce %actor% � ��������� �� ���� �� �� �����,
wforce %actor% � ���� ������ ����� - ������ ����� 
wforce %actor% � ������� ���������� �����!
wait 1s
wforce %actor% ������
wforce %actor% ����� ������
wforce %actor% ���� ������ �����
calcuid syrchan 105200 mob
attach 105208 %syrchan.id%
exec 105208 %syrchan.id%
~
#105208
������ ������� ���� �����~
0 z 100
~
����
� �������%razulsya.g% �� ����, %razulsya.iname%!
� � ���� ����� ���� ���������� ��������.
wait 4
� ������� � ���� � ������ �������� � ����� ����.
���� %razulsya.iname%
� ��� � ���� ������� ����, ��� ����� - ����� �����.
� ���-�� ����� �� �� ���� ������� ����� � �������� ��� �����.
� ����� ����� ����� �� ���� ������, ���� ��� ���� � �����.
������
wait 4
� � ����� �������� ���� �����, �������� ���������� ��� � ����.
� ������ ����� � ������ - � ������ �� ���� ������.
� �� ��� ������� ����� � ������� ��������.
�����
wait 4
� ������ ��������� ������� ���� ������� �������� �� �����.
� � � ����� ������� ������� � �����.
� � ����� ������, � �� ���� ��� �� ����� ��������, �� ����� �������.
���
wait 4
� � ��� ������ ����� ���...
� ������� �, ��� � ������� ������ ����� � ������� ����� ������� ���.
� ��������� �� ����������� ������, ��������� ����� ������.
� � ����, ��� ���� ���.
wait 4
� ����� � ����, � %razulsya.iname%!
� ���� ��� ����� �����, � ���� �� ����� �� ���������
� ����� � ����� �����-����� � ��� ���, � �� ��������.
������� %razulsya.iname%
� ������ ��.
* ���. ��� ���� �� ������ �������.
eval quester1052 %actor%
global quester1052
calcuid otrok 105201 mob
attach 105216 %otrok.id%
remote quester1052 %otrok.id%
calcuid syrchan 105200 mob
detach 105202 %syrchan.id%
detach 105203 %syrchan.id%
detach 105204 %syrchan.id%
detach 105205 %syrchan.id%
detach 105206 %syrchan.id%
detach 105207 %syrchan.id%
detach 105208 %syrchan.id%
~
#105209
�������� ������������~
0 q 100
~
wait 4
���� %actor.iname%
� ����, ��� ��� ������ � ���� ����?!
� ����� ���� �������� ������ ����� �����?
����
wait 4
� �� �� ��� ��� ����� - ��� �������� ����� ���,
� � ��� ���� �� - � ������� �����!
���
wait 4
� �� �� � ��� �� � �������, ����� ������� ���� ���� �����.
� ���� �� ����� ������ ����� �� �������.
�����
wait 1s
� �� ���� �������? ����� �����?
� ����� ���� ��������.
~
#105210
���� �����~
0 j 100
~
wait 4
if !(%object.vnum% == 105208)
  � ��� �� ��� ������ ����� �����?!
  halt
end
calcuid bortho 105208 obj
mpurge %bortho%
���
� ��, ����� ������ ������ �������� ��� ����� �����!
����
wait 1s
�� ��������� �������� ������
� ������!
wait 4s
�� ��������� �������� ������
� ��, ������!
wait 4s
�� ��������� �������� ������
wait 4
�� ��������� �� ��� ������ ��������.
� ����� �����.
��
wait 4
� ���� ���� � �����, ����������.
� � ���� ��� ������ ����, ����� ������.
��
wait 4
� ����, ����, � ����� ����� - ���� �����, ������ �����.
���
msend %actor% �������� ������� ��� ��� ���� � ������� ����-�� ����� ���.
mechoaround %actor% �������� ������� %actor.vname% ��� ���� � ������� ����-�� ����� ���.
* ������������
eval pcs %self.pc%
foreach i %pcs%
  mteleport %i% 105228
done
calcuid subsutay 105206 mob
mteleport %subsutay% 105228
wait 1s
� ���� �����! ������, � ����� ����� - ���� �����!
wait 4
mecho �������� ��������� ��� �������, � ��� ��� ��� � ���� �������.
eval wepun %subsutay.eq(18)%
mpurge %wepun%
mpurge %subsutay%
mecho �� � ���� ��� �� ��� �����?
~
#105211
������� ������������~
0 q 100
~
wait 4
�� �������� �������� �� ����� ����������� �����
wait 4
� ��.
����
wait 1s
� �� ���� ��� �����, %actor.iname%, �������%actor.g%?
wait 1s
���
� ����, ���� - ������ ������.
� �� ������ � ���� ������ ��� �� ����.
wait 4
� ���������, %actor.iname%, ������ ��� � ����������� ����-�� �������.
� �� � ���������� � ������ ������� ��� �����������.
wait 4
� ����� ����� ����-������ ��������, �� ����� �� ����� � ���� ������.
����
wait 4
� ����� ����, ��������� - ����� �����, � �� ��������� - ��� ������.
�����
~
#105212
������� ���������~
0 d 1
��������� ����� ������ �������� �������� ������~
�� ����� ����������
wait 4
eval zagadka %random.28%
global zagadka
calcuid velikan 105273 mob
attach 105213 %velikan.id%
switch %zagadka%
  case 1
    � ��� �����.
    wait 4
    � ����� ������� - ������ ����,
    � �������� - ������ ������,
    � � ������.. ? 
    * ������ �����.
  break
  case 2
    � ��� ������
    wait 4
    � ����� ����� ��� ����,
    � ����� ��� ��� �������,
    � ����� ����.. ?
    * ��� ������
  break
  case 3
    � ��� �� ���, ���� ���������
    wait 4
    � ������ ��� ���������,
    � �������� ���� ���������,
    � ������.. ?
    * ��� ���������
  break
  case 4
    � ��� ������
    wait 4
    � ���������� ����� ���� �����,
    � ������� �������� ����� ����,
    � ������� ��������.. ?
    * ���� �����.
  break 
  case 5
    � ��� ��������
    wait 4
    � ������� �������� �����,
    � ������� ����, ��������� �� ������,
    � ������� ������.. ?
    * ����� ��������.
  break
  case 6
    � ��� ����������
    wait 4
    � �� ��������� ����� ����� �����,
    � �� ��������� ���������� ������,
    � �� ��������� ������.. ?
    * ������.
  break
  case 7
    � ��� �����
    wait 4
    � ���� ���� ��������,
    � ���� ���� ����,
    � ���� ������.. ?
    * ������� ��������.
  break
  case 8
    � ��� ��������������
    wait 4
    � ��� � ���� �������,
    � ��� � ���� ��������,
    � ��� � �����.. ?
    * ������.
  break
  case 9
    � ��� �������
    wait 4
    � ������ ������ �������,
    � ������� �������� ������ ������,
    � ����� ���� ���.. ?
    * ������.
  break
  case 10
    � ��� ����������
    wait 4
    � ��������� ������� - ��������,
    � ��������� ����� ������,
    � ��������� ��������.. ?
    * ����.
  break
  case 11
    � ��� �� ����, ��� ������
    wait 4
    � ������, ����� ������� ������ ���������,
    � ������, ����� �������� ������,
    � ������, ����� ���������.. ?
    * ��������.
  break
  case 12
    � ��� ��������������
    wait 4
    � ��� �������� � ����,
    � ��� � ���� �������,
    � ��� ������.. ?
    *� ������.
  break
  case 13
    � ��� ���������
    wait 4
    � ����� � ������ �������,
    � ��������� ������� � ������� �������,
    � ��������-������.. ?
    * � ������� �������.
  break
  case 14
    � ��� ���������
    wait 4
    � �������� ����, ���������� ����,
    � �������� �����, �������� �� �����,
    � �������� ������.. ?
    * ������� ��������.
  break
  case 15
    � ��� ������
    wait 4
    � ����� ���������� �������� �����,
    � �������� ���� �����,
    � ����� ����, �����������.. ?
    * � ������.
  break
  case 16
    � ��� �������
    wait 4
    � �������� ����� �����,
    � ��� �������� ������� �����,
    � ����� �������.. ?
    * ����� ������.
  break
  case 17
    � ��� ������
    wait 4
    � ����� ������ ���� �����,
    � � ������� � �������� ����� �����,
    � � ����������.. ?
    * ������ �����.
  break
  case 18
    � ��� �������
    wait 4
    � ������ ����� ������,
    � ������ ����� ������,
    � ������ �����.. ?
    * �������.
  break
  case 19
    � ��� ���������
    wait 4
    � �������� ������, ���������� ������,
    � �������� �����, ���������� �����,
    � �������� ���.. ?
    * � �������.
  break
  case 20
    � ��� ���������
    wait 4
    � ������ ����� � ������� �������,
    � ����������� � ������� �������,
    � ���������.. ?
    * � ������� �������.
  break
  case 21
    � ��� �����
    wait 4
    � ���� ����� �������� ������,
    � ���� ������ ������� ��� ����,
    � ��� �����.. ?
    * ��� ������������.
  break
  case 22
    � ��� ������
    wait 4
    � ����� ����� - �������� ������,
    � ������� ��� - ������� ������,
    � ������� ������.. ?
    * ������ ������.
  break
  case 23
    � ��� �����������
    wait 4
    � ���������� ���������� �� ����,
    � ���������� ������� ���� ���,
    � ���������� �������.. ?
    * ���� ������.
  break
  case 24
    � ��� ���������
    wait 4
    � �������� ������ � ������� �������,
    � ����� ������ � ������� �������,
    � ������ ���.. ?
    * � ������ �������.
  break
  case 25
    � ��� �� ����, ��� �������
    wait 4
    � ���� �������� �������,
    � �������� ������ �������,
    � ������� ����.. ?
    * ����� �������.
  break
  case 26
    � ��� ��������
    wait 4
    � � ������� ������� ��� �������,
    � � ������ ������� ���� �������,
    � � �������������� ��������.. ?
    * ����� �������.
  break
  case 27
    � ��� �������
    wait 4
    � ������ �������� ��� �������,
    � ������ ������� ��� ���������,
    � ������ ���������.. ?
    * ��� ������.
  break
  case 28
    � ��� �����������
    wait 4
    � ������ ��� - ���,
    � ������ ����� - �����,
    � ������ ����� �������.. ?
    * ����.
  break
done
wait 4
��
� ��, %actor.iname%, ���������.
detach 105211 %velikan.id%
detach 105212 %velikan.id%
~
#105213
����������~
0 d 1
*~
switch %zagadka%
  case 1
    if !(%speech.contains(����)% || %speech.contains(�����)%)
      halt
    end
    * ������ �����.
  break
  case 2
    if !(%speech.contains(����)% || %speech.contains(����)%)
      halt
    end
    * ��� ������
  break
  case 3
    if !(%speech.contains(���)% || %speech.contains(����)%)
      halt
    end
    * ��� ���������
  break
  case 4
    if !(%speech.contains(����)% || %speech.contains(�������)%)
      halt
    end
    * ���� �����.
  break 
  case 5
    if !(%speech.contains(�����)% || %speech.contains(�������)%)
      halt
    end
    * ����� ��������.
  break
  case 6
    if !(%speech.contains(����)% || %speech.contains(����)%)
      halt
    end
    * ������.
  break
  case 7
    if !(%speech.contains(����)% || %speech.contains(�����)%)
      halt
    end
    * ������� ��������.
  break
  case 8
    if !(%speech.contains(����)% || %speech.contains(���)%)
      halt
    end
    * ������.
  break
  case 9
    if !(%speech.contains(�����)% || %speech.contains(�����)%)
      halt
    end
    * ������.
  break
  case 10
    if !(%speech.contains(����)%)
      halt
    end
    * ����.
  break
  case 11
    if !(%speech.contains(�����)% || %speech.contains(����)%)
      halt
    end
    * ��������.
  break
  case 12
    if !(%speech.contains(�����)%)
      halt
    end
    *� ������.
  break
  case 13
    if !(%speech.contains(����)%)
      halt
    end
    * � ������� �������.
  break
  case 14
    if !(%speech.contains(�������)% || %speech.contains(�����)%)
      halt
    end
    * ������� ��������.
  break
  case 15
    if !(%speech.contains(�����)% || %speech.contains(����)%)
      halt
    end
    * � ������.
  break
  case 16
    if !(%speech.contains(����)%)
      halt
    end
    * ����� ������.
  break
  case 17
    if !(%speech.contains(�����)% || %speech.contains(����)%)
      halt
    end
    * ������ �����.
  break
  case 18
    if !(%speech.contains(������)% || %speech.contains(�����)%)
      halt
    end
    * �������.
  break
  case 19
    if !(%speech.contains(�����)% || %speech.contains(����)%)
      halt
    end
    * � �������.
  break
  case 20
    if !(%speech.contains(�����)% || %speech.contains(�����)%)
      halt
    end
    * � ������� �������.
  break
  case 21
    if !(%speech.contains(�������)% || %speech.contains(���)%)
      halt
    end
    * ��� ������������.
  break
  case 22
    if !(%speech.contains(�����)% || %speech.contains(����)%)
      halt
    end
    * ������ ������.
  break
  case 23
    if !(%speech.contains(�����)% || %speech.contains(������)%)
      halt
    end
    * ���� ������.
  break
  case 24
    if !(%speech.contains(�����)% || %speech.contains(�����)%)
      halt
    end
    * � ������ �������.
  break
  case 25
    if !(%speech.contains(�����)% || %speech.contains(������)%)
      halt
    end
    * ����� �������.
  break
  case 26
    if !(%speech.contains(����)% || %speech.contains(�����)%)
      halt
    end
    * ����� �������.
  break
  case 27
    if !(%speech.contains(���)% || %speech.contains(����)%)
      halt
    end
    * ��� ������.
  break
  case 28
    if !(%speech.contains(����)% || %speech.contains(����)%)
      halt
    end
    * ����.
  break
done
wait 4
� �����-��! �������%actor.g%!
��� %actor.iname%
wait 5
� ��, ��� ������ - �������.
�� ����� ������ ����������� ����� � ��������� �� ������-������
calcuid glyba 105206 obj
mpurge %glyba%
mdoor 105241 north room 105248
calcuid velikan 105273 mob
detach 105213 %velikan.id%
~
#105214
���������� �����~
2 e 100
~
calcuid westroom 105241 room
calcuid eastroom 105234 room
wait 4
wsend %actor% ��������� ���� �� ������ �������.
wechoaround %actor% ��������� ���� %actor.iname% ������ ������%actor.g%.
wait 4
wecho ��������� ������ ������ ������� ����������.
wait 4
wecho ���� ���������� ������ �������.
wdamage %actor% 50
wait 4
wecho �� �������� �������� ������ ���������� ����.
wecho �� ���-��� ���������� �� ������������ �����.
if (%direction.contains(west)%)
  exec 105223 %westroom.id%
else
  exec 105224 %eastroom.id%
end
wait 4
wforce %actor% ���
wait 1s
wecho �� ���. ������ ����� ������ ������� �������.
calcuid prohod 105235 room
wload obj 105230
wdoor 105235 %direction% purge
detach 105214 %prohod.id% 
~
#105215
����� ������������~
0 q 100
~
wait 4
�� � �������� �������� �� ���
� ��� ���� ����� � ���� �����, %actor.iname%?
� ��������� ����, ������!
wait 4
msend %actor% �� ��������� ������ ����� ���� ������ � ������� �����.
mechoaround %actor% %actor.iname% �������� ������ ����� ���� ������ � ������� �����.
wait 4
�� ������ ������� ��� � ����� ������
if (%actor.sex% == 1)
  � ������� ���!
else
  � ������� �e!
end
wait 4
mecho ��������� ����� ������ ���������� ����������� ������ ��������� � ���� �������.
wait 10s
mecho ����������� ������ ��������� ��� ��� �� �����.
* ������������
eval pcs %self.pc%
foreach i %pcs%
  mteleport %i% 105255
done
~
#105216
���� ����� �����-�����~
0 j 100
~
wait 4
if !(%object.vnum% == 105204)
  ���
  � �� � ����� ���?!
  halt
end
msend %actor% ���������, �� ������ ���� ����� �����-�����.
mechoaround %actor% ���������, %actor.iname% �����%actor.g% ���� ����� �����-�����.
wait 1s
�� ��������� �� �����, ������ ����� � ������ ����
�� �� ������� �� ������ ������ ����� �����-����� � �����
wait 4
�� ����� �������� �������
� �� ���� � ������ ��� ������!
� ������ � ���� ������ �����, ��� ����� �� �������!
wait 4
mecho ��� ����� � �������� �������� ���������� �������� � ����.
mecho �� � ����������. ���� � ���.
calcuid otrok 105201 mob
mteleport %otrok% 105286
calcuid syrchan 105200 mob
mpurge %syrchan%
mload mob 105202
mload mob 105203
calcuid newsyrchan 105202 mob
remote quester1052 %newsyrchan.id%
eval wepun %otrok.eq(16)%
mpurge %wepun%
mpurge %otrok%
~
#105217
�� � ������� �� �����~
0 q 100
~
wait 4
������
wait 4
if (%actor.iname% == %quester1052.iname%)
  ������ %quester1052.iname%
  � ������� ����, %quester1052.iname%!
  � � ������ ������ ���� �������.
  wait 4
  � ����� ���� ���� ���� �������� ���.
  if ((%random.3% == 1) && (%world.curobjs(105209)% < 2)) 
    mload obj 105209
    ���� ����� %actor.iname%
  else
    if ((%random.2% == 1) && (%world.curobjs(105210)% < 2))
      mload obj 105210
      ���� ����� %actor.iname%
    else
      mload obj 105216
      ���� ����� %actor.iname%
    end
  end   
  wait 4
  � ��, �� ������� ���� ���.
  ������ %actor.iname%
end
���
calcuid newsyrchan 105202 mob
detach 105217 %newsyrchan.id%
~
#105218
���� ��� �������~
0 j 100
~
wait 4
if !(%object.vnum% == 105226)
  � �� ������ ���� ������%actor.g%, ��� ��� �� �����.
  halt
end
calcuid ushi 105226 obj
mpurge %ushi%
� �� ��� �� ��� ������� ��������!
� �� � ��� ��������%actor.u%?
� ������.
�� � ����������� ������
wait 4
� �� ��� � ���� �������.
mload obj 105216
���� ����� %actor.iname%
~
#105219
����-������� ������������~
0 q 100
~
wait 4
eval pcs %self.pc%
eval btr 0
foreach i %pcs%
  if ((%i.class% == 3) && (%i.sex% == 1))
    eval btr 1
  break
end
done
if (%btr%)
  �� ������� ��������� ����� �������
  � ����, %i.iname%-�����!
  � ����� ������ ���� ���� � �������!
end
~
#105220
������ ��� ������~
0 q 20
~
wait 4
���
� ������ ���� ���� � ����, ��� �� ������� �����������.
� ��� � ������� ���� ������ ����� ����������� � ����, �� ������� �����.
wait 4
�������
�� �������� �� ����� ������ � ��������� ��������� �� ���
~
#105221
����� ����~
2 f 100
~
if (%exist.mob(105203)%)
  calcuid newotrok 105203 mob
  wpurge %newotrok%
end
if (%exist.mob(105202)%)
  calcuid newsyrchan 105202 mob
  wpurge %newsyrchan%
end
if (%exist.mob(105205)%)
  calcuid pevec 105205 mob
  exec 105225 %pevec.id%
end
if (%exist.obj(105230)%)
  calcuid obval 105230 obj
  wpurge %obval%
end
wdoor 105235 west room 105241
wdoor 105235 east room 105234
wdoor 105234 west room 105235
wdoor 105241 east room 105235
wdoor 105241 north purge
calcuid prohod 105235 room
attach 105214 %prohod.id%
if (%exist.mob(105273)%)
  calcuid velikan 105273 mob
  attach 105211 %velikan.id%
  attach 105212 %velikan.id%
  detach 105213 %velikan.id%
end
~
#105222
����-������ ��������~
0 q 100
~
wait 4
������
� ��������, %actor.iname%!
� ����� � � ���� ������ �������, ����� ���� �� � ���!
� �����-�����!
msend %actor% ����-������ �������� �� ���.
mechoaround %actor% ����-������ �������� �� %actor.vname%.
mkill %actor%
~
#105223
����� �� �������~
2 z 100
~
wecho � ������� ������� ���-�� ��������� �����.
wait 4
wecho ��������� ����� ���������� � ����� ������ �� �������.
wecho ������ �� ������� �������.
wdoor 105241 east purge
~
#105224
����� �� ������~
2 z 100
~
wecho � ������ ������� ���-�� ��������� �����.
wait 4
wecho ��������� ����� ���������� � ����� ������ �� ������.
wecho ������ �� ������� �������.
wdoor 105234 west purge
~
#105225
������ ������ �����~
0 z 100
~
if (%world.curobjs(105203)% == 0)
  mload obj 105203
end
���� ������
~
#105226
������� �����~
0 f 100
~
mechoaround %actor% ���������%actor.g% %actor.name% �������� �� ����� ��������-���������� ����� � ������%actor.g% �� �����.
msend %actor% �� ���������� �������� �� ����� ��������-���������� ����� � ������� �� �����.
mecho ���������� ����� �� �����, � �������� ����� �� ������ ������ �����������.
calcuid glyba 105206 obj
if %glyba%
  mpurge %glyba%
end
mdoor 105241 north room 105248
~
$~
