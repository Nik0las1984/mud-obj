#10300
<103 Prelat killed>~
0 f 100
~
mload obj 10300
~
#10301
<103 Prelat loaded>~
0 n 100
~
if (%world.curobjs(10301)% < 10) && (%random.10% <= 4)
  mload obj 10301
  wear  ����
end
if (%world.curobjs(10304)% < 10) && (%random.10% <= 4)
  mload obj 10304
  wield �����
end
if (%world.curobjs(10305)% < 5) && (%random.10% <= 4)
  mload obj 10305
  wear  �����
end
~
#10302
<103 Abbat loaded>~
0 n 100
~
if (%world.curobjs(10307)% < 10) && (%random.10% <= 4)
  mload obj 10307
  wield �������
end
if (%world.curobjs(10308)% < 10) && (%random.10% <= 4)
  mload obj 10308
  wear  ����
end
~
#10303
<103 Abbat killed>~
0 f 100
~
if %world.curobjs(10327)% < 1
  mload obj 10327
end
~
#10304
<103 Presviter killed>~
0 f 100
~
mload obj 10327
~
#10305
<103 Prior loaded>~
0 n 100
~
if (%world.curobjs(10312)% < 10) && (%random.10% <= 4)
  mload obj 10312
  wear  ����
end
if (%world.curobjs(10314)% < 10) && (%random.10% <= 4)
  mload obj 10314
  wear  ����
elseif (%world.curobjs(10315)% < 10) && (%random.10% <= 4)
  mload obj 10315
  wear  �����
end
if (%world.curobjs(10313)% < 10) && (%random.10% <= 4)
  mload obj 10313
  wield ���
elseif (%world.curobjs(10317)% < 10) && (%random.10% <= 4)
  mload obj 10317
  wield �����
end 
~
#10306
<103 Knight loaded>~
0 n 100
~
if     (%world.curobjs(10315)% < 10) && (%random.10% <= 4)
  mload obj 10315
  wear  ��������
elseif (%world.curobjs(10318)% < 10) && (%random.10% <= 4)
  mload obj 10318
end
*if     (%world.curobjs(10325)% < 10) && (%random.100% <= 4)
*   mload obj 10325
*   wield ���
*   mload obj 10317
*   wield �����
end 
set weapon 0
global weapon
~
#10307
<103 Weaponary loaded>~
0 n 100
~
if     (%world.curobjs(10322)% < 20) && (%random.100% <= 4)
  mload obj 10322
  wield ���
end 
~
#10308
<103 Inquisitor loaded>~
0 n 100
~
if     (%world.curobjs(10323)% < 20) && (%random.10% <= 4)
  mload obj 10323
  wear  �������
end 
~
#10309
<103 ����� ����� � ������>~
0 q 100
~
wait 1
if (%weapon% == 1 ) || (%world.curobjs(10317)% > 9 )
  halt
end
say ����������, �������� � ���!
remove all
set weapon 1
mload obj 10317
wield �����
����� ���
global weapon
~
#10310
<103 ������ ������>~
0 f 100
~
if  (%world.curobjs(10325)% < 10) && (%random.100% <= 4)
  mload obj 10325
elseif (%world.curobjs(10317)% < 10) && (%random.100% <= 4)
  mload obj 10317
end 
mload obj 10329
~
#10311
Knight loaded~
0 n 100
~
set weapon 0
global weapon
~
$~
