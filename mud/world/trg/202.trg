#20200
������ ������~
1 bj 5
~
if %actor%
  osend %actor% ����� ����� �������� �� �������� ������� ������ ���� � ���� ���� ������� ������.
  oechoaround %actor% ����� ����� �������� �� �������� ������� ������ ���� � ���� %actor.rname% ������� ������.
end
~
#20201
����  � ����� ~
0 q 100
*~
eval item %actor.eq(3)%
wait 1
if (%item.vnum% != 20301)
  mecho ������ ���, ������� ����� �������� - �������
  say  ������ ���� �� ��������!
  wait 2
  say ����, � �� �������!
  wait 5
  if (%actor.canbeseen%) && (%actor.realroom% == %self.realroom%)
    msend %actor.name%  ����� ������� �� ��� - ���� ��, ��������!
    attack .%actor.name%
  end
  calcuid Cluch 20205 mob
  attach 20202 %Cluch.id%
  exec 20202 %Cluch.id%
else
  calcuid Cluch 20205 mob
  attach 20290 %Cluch.id%
  exec 20290 %Cluch.id%
end
detach 20201 %self.id%
halt
end
����� %actor.name%
~
#20202
������ ����� �� ������ ( �� ����� � ����� � ������ ��������)~
0 z 100
~
if !%self.fighting%
  wait 1s
  say ����, ����
  wait 1s
  mecho C����� �������, ���� �� ��� ������� - �� ������!
  calcuid Temn 20264 room
  attach 20203 %Temn.id%
  exec 20203 %Temn.id%
  calcuid Xram 20263 room
  attach 20216 %Xram.id%
  exec 20216 %Xram.id%
  mpurge %self%
else
  wait 1
  mecho   ������� ����������� ����, ������ ����� - "�� ����� �"
~
#20203
���� ���������� �� ���� �������~
2 z 100
~
wait 1s
wecho ���������� ������ ������� �����, � � ������� ��������� ����������.
wait 1s
wload mob 20215
calcuid Plech 20215 mob
attach 20204 %Plech.id%
exec 20204 %Plech.id%
wait 2s
wload mob 20215
calcuid Plech 20215 mob
attach 20204 %Plech.id%
exec 20204 %Plech.id%
wait 2s
wload mob 20225
calcuid Mon 20225 mob
attach 20215 %Mon.id%
exec 20215 %Mon.id%
~
#20204
������ ��������� �� ����~
0 z 100
~
wait 1
set Target %random.pc%
mecho ����������� �� ������� ���� �������� - ������ %Target.name% !
attack %Target.name%
~
#20205
��������� ������ ( �������� ����� � �����)~
2 c 1
��������� ��������� ������~
if !%arg.contains(������)% && !%arg.contains(�����)%
  return 0
  halt
end
wecho ��������� ������ ��������� ��� ������ �������, ������ ������ �� �����.
wdoor 20274 north room 20264
wdoor 20264 south room 20274
detach 20205 %self.id%
~
#20206
����������������~
0 br 100
*~
if %random.100% <= 15
  mecho ���������� ������� � ���� � ����� � ������ ���� �������.
end
~
#20207
������� ���� ��������� �� ��� ����� ����� ��������~
0 z 100
~
wait 1s
mecho  �������� �������� ��� � ��� �� ������.
say ���������� ��� �����, ����� ��������� ����� � �����?
~
#20208
� ����� ~
0 r 100
*~
wait 4
mecho ������ ���, ������� ����� �����������.
say �� ������� ������, ������� ��������� �� �������.
say �������� ��:
wait 2
���
wait 2
say ���� � ���, ������� ����� �������� - ��������, �� �� � ���� ������ �������.
say ��������� ���, ����� �� ����������� ��, �� ������ ��� �� �������, �� ��������, ����� �������� �����
mecho �� ���������� ���������� ��������� �����: 
mecho "��, ��... ����� ����������... �������� ����� ����� ���� ���������, � ���� ������� 
mecho ����-�������, � ������� ����� ��������� �� ������� ������ ������� �����."
wait 10
���
say � �� ������ ������ ������� ������, ��� �� ������, ��������� ���� �� ���������� �� �������
say ������� ���� ���, - �� ������� �������, ��� �� ����  � ����� ������ �������� � ����� 
say ���� ��������, �� ������ � � �������...
wait 9
mecho ����� �������� ����������, ���� ��� ����� �������� � �����������.
say ��� ��� �� ��������.
say ������ � �������  �����, ����� ������� ��� ��������� � ��������, ���� ����� �� ����. 
say � �� �� ��������, �� ���� ������.
say � ����� ������ ������ ���������� � �������� �� ������.
wait 9
���
say ���� �� ��� �������.
set uman %actor.id% 
worlds uman
if %exist.mob(20600)%
  calcuid uchen 20600 mob
  attach 20601 %uchen.id%
end
attach 20214 %self.id%
if %exist.mob(20203)%
  calcuid volxv 20203 mob
  attach 20210 %volxv.id%
end
detach 20208 %self.id%
~
#20209
����������~
0 p 100
~
return 0
mecho ���������� ������ ����, � ��� ������ ������������ ����.
~
#20210
����� ���� ������� �  ��� ������ � �������~
0 r 100
*~
wait 3
say �� ��� ���������� � ������?
say ������� �� �����, �� ������ ������� �������������. ��� ����� ����� ��������, �� ���� ���...
say ���� ������� ������ �� ������ ��� ����. ���� ���� ������ ��������, ���������� ��� �� 
say �����, � ������� ��� � ��������.  
wait 15
say �� ����, ��� ��������� ����...
wait 1s
mecho ���������� ��������� � ������� ������ ������ ��������� ���������� ���� ������ ������.
mecho "��, ����!!! ������!" - �������� �����.
mecho ������ �� �������, ������ �������� ���� ��� ������ ��������� �������� � �������� � �������.
mecho  ���������� ������ ������ �, ����������� ������ ��� ��������, �����������:
mecho "�� ���. ������ ����� �����. ������� ����� �����, ���� ������ �� ��������� �� �������,"
mecho "��� ���� ������ �����..."
calcuid  Temnica 20265 room
attach 20211 %Temnica.id%
exec 20211 %Temnica.id%
mpurge %self%
~
#20211
���� ������ � ������� � ���� ������� � ���� �� �������~
2 z 100
~
wait 2
wload mob 20203
calcuid Vo 20203 mob 
attach  20212 %Vo.id% 
~
#20212
� ������ � �������~
0 r 100
*~
wait 3
mecho ����� ������ ���������� ����.
say ��� �� ��� ���������???
wait 3
say ���� ������ �� ��� �������.
say �������� ������ ���� �������.
wait 3
say � ������ ��� ��� � ����������, ������� ����� ������ ������ �����, �� ��� ���� ������. 
say ������ �������, ��� �������� �������� ����� ���� ���� � ��������� ���������. ��� ��� 
say ������ ���� ������, � ������� �������� ����� ���� �� �������� ���� �������, � ������� 
say ����� �� ����������. ����� ��� ������, �� ��������� ��� ���� ����������: ��������-������. 
say � ����� ����������� ������ ��, ��� ���� ������ ������ �� �������, � ���� ��� ��� ����� 
say �� ����� �����...
wait 3
��� 
wait 3
say ���������� ���������� � ������� ������. �� ����� ������ ����� ��� ���������.
wait 3
say ������ ����� ������ � ����� �����.
calcuid  eger 20228 mob
attach 20218 %eger.id%
attach 20213 %self.id%
detach 20212 %self.id%
~
#20213
����� ����� ������~
0 j 100
*~
switch %object.vnum%
  case 20500
    wait 10
    say ��, ��� ��! 
    mpurge %object%
    wait 30
    mecho ����� ����� ����� ������ ������ ������ � ����� ������ ���������.
    mecho ������� ���������� � �������� �� 15 ���, ������� ���
    mecho �� ������ �������� �����, - �������� ��
    wait 30
    mecho �������� ���������� ��� ����.
    say ������ ����� ���������� � ���� ������� � ���� ��������� ������� ����� �������. ������� 
    say �� ��������� ������� ������� ���� ����!
    wait 10
    ��� .%actor.name%
    eval rand %random.1000%
    if ((%rand% < 199) && (%world.curobjs(20218)% < 3))
      say ����� �� ���� � ������� ��� �����!
      mload obj 20218
      ���� ���� .%actor.name%
    elseif ((199 <= %rand%) && (%rand% < 400) && (%world.curobjs(20219)% < 3))
      mload obj 20219
      say ����� �� ���� � ������� ��� ��������!
      ���� ������� .%actor.name%
    elseif ((400 <= %rand%) && (%rand% < 600) && (%world.curobjs(20220)% < 3))
      mload obj 20220
      say ����� �� ���� � ������� ��� �����!
      ���� ����� .%actor.name%
    elseif ((600 <= %rand%) && (%rand% < 800) && (%world.curobjs(20221)% < 3))
      mload obj 20221
      say ����� �� ���� � ������� ��� ������!
      ���� ����� .%actor.name%
    elseif ((800 <= %rand%) && (%rand% < 900) && (%world.curobjs(20222)% < 3))
      mload obj 20222
      say ����� �� ���� � ������� ��� �������!
      ���� ������ .%actor.name%
    elseif ((150 <= %rand%) && (%rand% < 450) && (%world.curobjs(20223)% < 3))
      mload obj 20223
      say ����� �� ���� � ������� ���� ��������!
      ���� ����� .%actor.name%
    elseif ((450 <= %rand%) && (%rand% < 850) && (%world.curobjs(20224)% < 3))
      mload obj 20224
      say ����� �� ���� � ������� ���� ������!
      ���� ������ .%actor.name%
    else
      say ������� �� ������!
      %actor.exp(+1000000)%
      wait 5
      if (%actor.canbeseen%)
        msend %actor% �� ��������, ��� ��� ���� ����������.
      end
    end 
    mdoor 20314 east room 20381
    mdoor 20321 north room 20381
    mdoor 20323 north room 20382
    mdoor 20323 east  room 20383
    mdoor 20347 north room 20383
    mdoor 20325 west room 20383
    mdoor 20325 north room 20384
    mdoor 20350 north room 20385
    mdoor 20351 north room 20386 
    mdoor 20352 north room 20387
    mdoor 20353 north room 20388
    mdoor 20355 west room 20388
    mdoor 20332 west room 20389
    mdoor 20332 north room 20390
    mdoor 20334 west room 20390
    mdoor 20334 north room 20391
    mdoor 20360 west room 20391
    mdoor 20361 west room 20392
    mdoor 20362 west room 20393
    mdoor 20338 south room 20393
    calcuid laz 20311 room
    detach 20301 %laz.id%
    attach 20302 %laz.id%
    wait 1s
    say ���, �� ��� ���? ������ ����� ����� �������� ��� �����, � ��� ��� � ��� ��������� - ��������!
    say �� �� ������ ����� �������. ������ � ��� ������.
    wait 10
    mecho �� ��������� �� �������.
    mat 20311 mecho ���-�� �������� ����� � ������ ������ ����.
    mteleport all 20311
  break
done
~
#20214
��������������������� ~
0 j 100
*~
if %object.vnum% != 20302
  say ��� ��� ���?
  return 0
  halt
end
wait 1
mpurge %object%
wait 10
��� %actor.name%
say  � ���� ��� �� ����������.
eval rand %random.1000%
if ((%rand% < 250) && (%world.curobjs(20209)% < 3))
  say  ������� �� ������, � ������� �� ����� �� ���� ���� ���. �� �� ��� ������ ���� � 
  say ����� ������ ���������.
  mload obj 20209
  ���� ��� %actor.name%
elseif ((200 <= %rand%) && (%rand% < 450) && (%world.curobjs(20210)% < 3))
  mload obj 20210
  say ������� �� ������, � ������� �� ����� �� ���� ��� ������, ������� ������ ������ ����� 
  say ����������� �����.
  ���� ����� %actor.name%
elseif ((400 <= %rand%) && (%rand% < 650) && (%world.curobjs(20211)% < 3))
  mload obj 20211
  say ������� �� ������, � ������� �� ����� �� ���� ��� ������, ������� ������ ������ ����� 
  say ����������� �����.
  ���� ����� %actor.name%
elseif ((600 <= %rand%) && (%rand% < 850) && (%world.curobjs(20212)% < 3))
  mload obj 20212
  say ������� �� ������, � ������� �� ����� �� ���� ��� ��������, ������� ������ ������ ����� 
  say ����������� �����.
  ���� ������� %actor.name%
elseif ((850 <= %rand%) && (%rand% < 999) && (%world.curobjs(20213)% < 3))
  mload obj 20213
  say ������� �� ������, � ������� �� ����� �� ���� ��� ������, ������� ������ ������ ����� 
  say ����������� �����.
  ���� ����� %actor.name%
elseif ((100 <= %rand%) && (%rand% < 350) && (%world.curobjs(20214)% < 3))
  mload obj 20214
  say ������� �� ������, � ������� �� ����� �� ���� ���� ����, ������� ������ ������ ����� 
  say ����������� �����.
  ���� ���� %actor.name%
elseif ((300 <= %rand%) && (%rand% < 550) && (%world.curobjs(20215)% < 3))
  mload obj 20215
  say ������� �� ������, � ������� �� ����� �� ���� ���� ����, ������� ������ ������ ����� 
  say ����������� �����.
  ���� ���� %actor.name%
elseif ((550 <= %rand%) && (%rand% < 750) && (%world.curobjs(20216)% < 3))
  mload obj 20216
  say ������� �� ������, � ������� �� ����� �� ���� ���� ���������, ������� ������ ������ ����� 
  say ����������� �����.
  ���� ������ %actor.name%
elseif ((750 <= %rand%) && (%rand% < 999) && (%world.curobjs(20217)% < 3))
  mload obj 20217
  say ������� �� ������, � ������� �� ����� �� ���� ���� ������, ������� ������ ������ ����� 
  say ����������� �����.
  ���� ����� %actor.name%
else
  ������� �� ������!
  %actor.exp(+700000)%
  wait 5
  msend %actor% �� ��������, ��� ��� ���� ����������.
end 
wait 10
say ������ �������� ������� � ������ �����.
say � ��, ����������� �� ���, ������� �������� � �����.
mecho  "�� ������, ������ ��� � ����" - �������� �����.
wait 3
mecho  � ������� ������ �������� ��������, - ���� �����! ���������� �����
mecho " ���������� ��������, ����� ����� ��� ���, ����� ���� ��������, ������ ���� ���� , 
mecho ����� "- ������������� �������� �����
wait 3
mecho ������� �����, ����� � ��������� - "���� ��� ������, �� �������� ������ ������ �������. 
�� %actor.name%
wait 3
say  �������!
say �������, ���� ��������, �� ���� ���� � ��� ��� ����� ���, �� ��� � ������� ������ � �������.
Wait 30s
mdoor 20201 SOUTH room 20324
mdoor 20257 EAST room 20335
mdoor 20324 north room 20201
mdoor 20335 west room 20257
calcuid ATAKA1 20201 room
calcuid ATAKA2 20257 room
calcuid ATAKA3 20225 room
attach 20221 %ATAKA1.id%
attach 20222 %ATAKA2.id%
attach 20231 %ATAKA3.id%
exec 20221 %ATAKA1.id%
exec 20222 %ATAKA2.id%
exec 20231 %ATAKA3.id%
detach 20214 %self.id%
~
#20215
������ ��������� �� ���� ( �����)~
0 z 100
~
wait 1
set Target %random.pc%
mecho ����������� �� ������� ����� �������� -  "��������� �� ���� ������ %Target.name%
attack %Target.name%
~
#20216
���� �������� ����� ��� ������  ~
2 z 100
~
wload mob 20205 
calcuid Cluch 20205 mob
attach 20217 %Cluch.id%
~
#20217
���� ��������~
0 p 95
*~
mecho "�� ������!" - �������� ������.
mload mob 20215
calcuid Plech 20215 mob
attach 20204 %Plech.id%
exec 20204 %Plech.id%
detach 20217 %self.id%
~
#20218
� �����1~
0 r 100
*~
wait 1
�� ����������� �������� ��� � ��� �� ������.
� ��. ����� ���, ������?
attach 20219 %self.id%
attach 20220 %self.id%
detach 20218 %self.id%
~
#20219
� �����2~
0 r 100
*~
wait 1
�� ����������� �������� ��� � ��� �� ������.
~
#20220
��� �����~
0 d 1
��������-������~
wait 5
���
say ���� � �� ���� ��� ���� ������. �������� � ��� ������ ���-�� � ���� ������ ����-������.
wait 25
say ����� � ������� ����� �������, ������ ��� � ���� �� ���������, ����� ���� �������, � 
say ������ ���� ���������. 
wait 25
say �������, ���-�� �� ������ ����� ���� �� ������. ��� �� ����� ��� � ��� ������, ����� 
say ������ � � ������ �� ����. 
wait 10
say ������ ���� �� ���������, ���� ������ �� ������� � ������ ������.
detach 20220 %self.id%
detach 20219 %self.id%
~
#20221
����������������������~
2 z 0
*~
wait 2
wload mob 20322
calcuid tatar1 20322 mob 
attach 20238 %tatar1.id% .
attach 20224 %tatar1.id% .
exec 20224 %tatar1.id%
wload mob 20323
calcuid tatar2 20323 mob 
attach 20224 %tatar2.id% .
exec 20224 %tatar2.id%
wload mob 20323
calcuid tatar2 20323 mob 
attach 20224 %tatar2.id% .
exec 20224 %tatar2.id%
wload mob 20324
calcuid tatar3 20324 mob 
attach 20224 %tatar3.id% .
exec 20224 %tatar3.id%
wload mob 20324
calcuid tatar3 20324 mob 
attach 20224 %tatar3.id% .
exec 20224 %tatar3.id%
wload mob 20325
calcuid tatar4 20325 mob 
attach 20224 %tatar4.id% .
exec 20224 %tatar4.id%
calcuid tatar4 20325 mob 
attach 20224 %tatar4.id% .
exec 20224 %tatar4.id%
wload mob 20328
calcuid tatar5 20328 mob 
attach 20224 %tatar5.id% .
exec 20224 %tatar5.id%
wload mob 20330
calcuid tatar6 20330 mob 
attach 20224 %tatar6.id% .
exec 20224 %tatar6.id%
~
#20222
����������������������~
2 z 0
*~
wait 2
wload mob 20323
calcuid atar2 20323 mob 
attach 20224 %atar2.id% .
exec 20224 %atar2.id%
wload mob 20324
calcuid atar3 20324 mob 
attach 20224 %atar3.id% .
exec 20224 %atar3.id%
wload mob 20324
calcuid atar31 20324 mob 
attach 20224 %atar31.id% .
exec 20224 %atar31.id%
wload mob 20325
calcuid atar4 20325 mob 
attach 20224 %atar4.id% .
exec 20224 %atar4.id%
calcuid atar41 20325 mob 
attach 20224 %atar41.id% .
exec 20224 %atar41.id%
wload mob 20328
calcuid atar5 20328 mob 
attach 20224 %atar5.id% .
exec 20224 %atar5.id%
wload mob 20330
calcuid atar6 20330 mob 
attach 20224 %atar6.id% .
exec 20224 %atar6.id%
~
#20223
������������~
0 n 100
*~
if (%world.curobjs(20200)% < 7) && (%random.1000% <= 35)
  mload obj 20200
end
if (%world.curobjs(20205)% < 7) && (%random.1000% <= 35)
  mload obj 20205
end
if (%world.curobjs(20206)% < 7) && (%random.1000% <= 35)
  mload obj 20206
end
~
#20224
����� ������~
0 isz 100
*~
wait 2
����� ���
~
#20225
�����������~
0 f 100
*~
mload obj 20201
~
#20226
�������������~
0 n 100
*~
if (%world.curobjs(20202)% < 5) && (%random.1000% <= 35)
  mload obj 20202
end
~
#20227
�����������~
0 n 100
*~
if (%world.curobjs(20203)% < 5) && (%random.1000% <= 85)
  mload obj 20203
end
~
#20228
��������������~
0 n 100
*~
if (%world.curobjs(20204)% < 5) && (%random.1000% <= 75)
  mload obj 20204
end
~
#20229
������������~
0 n 100
*~
if (%world.curobjs(20207)% < 9) && (%random.1000% <= 50)
  mload obj 20207
end
~
#20230
������������~
0 n 100
*~
if (%world.curobjs(20208)% < 6) && (%random.1000% <= 30)
  mload obj 20208
end
~
#20231
�����3~
2 z 0
*~
wait 2
wload mob 20321
calcuid katar1 20321 mob 
attach 20224 %katar1.id% .
exec 20224 %katar1.id%
wload mob 20326
calcuid katar2 20326 mob 
attach 20224 %katar2.id% .
exec 20224 %katar2.id%
wload mob 20326
calcuid katar21 20326 mob 
attach 20224 %katar21.id% .
exec 20224 %katar21.id%
wload mob 20326
calcuid katar22 20326 mob 
attach 20224 %katar22.id% .
exec 20224 %katar22.id%
wload mob 20327
calcuid katar3 20327 mob 
attach 20224 %katar3.id% .
exec 20224 %katar3.id%
wload mob 20327
calcuid katar31 20327 mob 
attach 20224 %katar31.id% .
exec 20224 %katar31.id%
wload mob 20329
calcuid katar4 20329 mob 
attach 20224 %katar4.id% .
exec 20224 %katar4.id%
wload mob 20329
calcuid katar41 20329 mob 
attach 20224 %katar41.id% .
exec 20224 %katar41.id%
wload mob 20329
calcuid katar42 20329 mob 
attach 20224 %katar42.id% .
exec 20224 %katar42.id%
wload mob 20331
calcuid katar5 20331 mob 
attach 20224 %katar5.id% .
exec 20224 %katar5.id%
wload mob 20332
calcuid katar6 20332 mob 
attach 20224 %katar6.id% .
exec 20224 %katar6.id%
~
#20232
���������������~
0 j 100
*~
if (%object.vnum% != 20333)
  say ��� ��� ��� �����?
  return 0
  halt
end
wait 1
mpurge %object%
say ��, ��� ��! 
��
���
������ %actor.name%
say � �����! � �����, ���� ���� �� �������!!!
wait 15
say �� � �������� � �� � ��������� ��������� ��������� ����� �������. ��� ��������� �������� ����.
wait 5
say ���������� �������� ������� ��� �� �������������. ��������� ���� ���������� ��� �� ����� ���.
say  �� � ����� ������� ��� �������������!
wait 20
mload obj 20225
���� ����� %actor.name%
wait 5
say �� ���� �������� ����� ������� ���! ������ ��� � ���� � �����, �� ������� �������� ��������� 
say ���� �� ������ ����� ������ � ����������� � �����. 
Mecho ����� �������� ������� � ��������.
wait 1
mpurge %self%
~
#20233
��������������~
0 r 100
*~
wait 8
mecho ��� ������ �� ����� � �������, ���������� ������ � �����, � ��������� ��������.
~
#20234
������~
2 c 100
�����~
if !%arg.contains(��)%
  wecho ����?
  halt
end
calcuid yad 20225 obj
if %actor.eq(19)%==%yad%
  wecho ���?
  halt
end
if %actor.eq(17)%!=%yad%
  wecho ���?
  halt
end
if (%arg.contains(��)%) && (%actor.eq(17)%==%yad%)
  wsend %actor% �� ��������� ������ ���������� �������� � ����.
  if %actor.sex%==1
    wechoaround %actor% %actor.name% ��������� ����� ���������� �������� � ����.
  else
    wechoaround %actor% %actor.name% ��������� ������ ���������� ������� � ����.
  end
  wecho ��������� ����� ������ � ���� ������� ���������� � ������ ���� �������.
  wait 2s
  wecho ����� � ������ �������� ���� �� ���, � ������ �����.
  calcuid ar 20208 mob 
  wpurge %ar%
  wload mob 20229
  wpurge %yad%
else
  wecho ���� ��� ������?
  halt
end
~
#20235
������������~
0 f 100
*~
mload obj 20226
~
#20236
�����������������~
0 j 100
*~
if (%object.vnum% != 20407)
  say ��� ��� ���?
  return 0
  halt
end
wait 1
mpurge %object%
wait 20
mecho �������� ��������, �������� ������ �� ������ �� ��� � �������.
wait 20
say ���? ��� �� �� �����?
wait 20
say � ����� �������� ������ ������ �������� ������� ��� ���.
������ %actor.name%
eval rand %random.1000%
if ((%rand% < 300) && (%world.curobjs(20227)% < 5))
  mload obj 20227
  say ����� �� ���� ����� ��� � �������.
  ���� ����� %actor.name%
  wait 15
  say � ������ ������ � �����. ������ ������ �� �����, � ��� ��� ����� ������� ���, ��� �� 
  say �������� ����� ������� �� ������ � ���� ��������.
elseif ((300 <= %rand%) && (%rand% < 600) && (%world.curobjs(20228)% < 5))
  mload obj 20228
  say ����� �� ���� ����� ��� � �������.
  ���� ������ %actor.name%
  wait 15
  say � ������ ������ � �����. ������ ������ �� �����, � ��� ��� ����� ������� ���, ��� �� 
  say �������� ����� ������� �� ������ � ���� ��������.
else
  %self.gold(+10000)%
  say ����� �� ���� ����� ��� � �������.
  give 10000 ��� .%actor.name%
  say � ������ ������ � �����. ������ ������ �� �����, � ��� ��� ����� ������� ���, ��� �� 
  say �������� ����� ������� �� ������ � ���� ��������.
end
~
#20237
����������������~
0 q 100
*~
wait 1s
say ��, �� � ����� �� �� ������ ������������� ���������� ������ �����%actor.g%, ���������, ��� ����������!
���� %actor.name%
wait 20
say ��� �� ��� ��� ������� �������, ����� �� �����������, ���� ����� ���� ��������.
���
eval rand %random.1000%
if ((%rand% < 199) && (%world.curobjs(20229)% < 4))
  mload obj 20229
  say ������ ���, ���� ��������� ����������.
  ���� ���
  ���� ���� %actor.name%
elseif ((199 <= %rand%) && (%rand% < 400) && (%world.curobjs(20230)% < 4))
  mload obj 20230
  say ������ ���, ���� ��������� ����������.
  ���� ����� %actor.name%
  ���� ���
elseif ((400 <= %rand%) && (%rand% < 600) && (%world.curobjs(20231)% < 4))
  mload obj 20231
  say ������ ���, ���� ��������� ����������.
  ���� ���� %actor.name%
  ���� ���
elseif ((600 <= %rand%) && (%rand% < 800) && (%world.curobjs(20232)% < 4))
  mload obj 20232
  say ������ ���, ���� ��������� ����������.
  ���� ������ %actor.name%
  ���� ���
else
  ������� �� ������!
  %actor.exp(+600000)%
  wait 5
  msend %actor% �� ��������, ��� ��� ���� ����������.
end 
detach 20237 %self.id%
~
#20238
��������������~
0 f 100
*~
calcuid kn 20200 mob
attach 20237 %kn.id%
~
#20282
REPOP 76 ~
2 f 100
*~
wait 1
wdoor 20201 SOUTH purge
wdoor 20257 EAST purge
wdoor 20324 NORTH purge
wdoor 20335 WEST purge
wdoor 20274 NORTH purge
calcuid Vhod 20274 room
attach 20205 %Vhod.id%
~
#20283
���������� !�����~
0 p 100
~
mecho ���������� ������ ����, � ��� ������ ������������ ����.
dg_cast '���������' %self.name%
~
#20290
����� ����� �� ��� ������ , �������� ��������~
0 z 100
*~
wait 20
mecho ������� �������� ������ ���, � ����� � ��� �������� ������.
say �����  ������! ��� ������� ������� ������� ������ ��� �� ������.
wait 3
mecho  ����� �� ���������� ����� � ��� ������� �������� ��������� ���� �� ���,
mecho   �� ��������� ������ ������ ���������
calcuid Surov 20214 mob
attach 20207 %Surov.id%
exec 20207 %Surov.id%
wait 5
say ����� ��, ��������.
��� %actor.name% ������� �� ���, ������ ���� � ���� ����� ������ ��� 1� �� � �� ���� ���.
���
wait 5
say ������� ������ ���� ������ ���, ����� � ����� � ������, �� ���� ���.
say  ���... �� �� ��������� ������ ������, �� � ��� ������� �����������.
say  ���� ���� ������� ������������ ��� �� �� ��� ���� �������� � ����� ����� ��������
������ 
say  ��� �����, ����� ���� ��������� ������ �������� ���������...
~
$~
