#73200
DT1~
2 g 100
~
eval actdex %actor.dex%+%actor.dexadd%
if %actdex% > 50
  eval actdex 50
end
eval check %actdex%+%random.50%
if %check% >= 60
  halt
end
wait 1
wechoaround %actor% %actor.name% �� �������%actor.u% �� ������� � � ������ �������%actor.g% ����! 
wsend %actor% �� �� ���������� �� ������� � � ������ �������� ����! 
switch %random.4%
  case 1
    wteleport %actor% 73290
  break
  case 2
    wteleport %actor% 73292
  break
  case 3
    wteleport %actor% 73294
  break
  case 4
    wteleport %actor% 73295
  break
done
%actor.position(6)%
eval lag %random.5%
%actor.wait(%lag%)%
eval dmg %actor.maxhitp%/3
wdamage %actor% %dmg%
~
#73201
������� ������� ����~
0 r 100
~
wait 1
say � ����! �� �� ����, ��? ������ �� ���...
wait 1
say ������ �� ��������� ���� ��, �����������!
���
say �� ���� �� ��, ������? �������, ��� �� �� ��!
~
#73202
�������������� ������� ����~
0 d 2
�� �� ��~
say �� �����-�-����! � ��� ���������!
say ��, ��������, � ����������� ���� �����, ���?
���� %actor%
wait 1 s
say ����� ��� � ��� ��������� �������, ��� ����������, ��������!
wait 1 s
say � ������ ������ ������ ����� ��������� ������ ����������, �� ����� ���: ��������, ��������� � �����.
say ����� �������� � ��������� �� ������ �� � ���� ������, ���� ������� ������ ��� ���������� ������.
say ������ ����� ����� ���������. ��, ������, ����� ���������, �� �� ��� ������� ���������...
emo ����� ��� �� ��� � ���������
wait 1 s
say ������� ���� �������, ��� ��� ������ ��������� ����, �� ����� ������� ������ ���������� �������
say ��������� �����-�� �� ���� �������� �������. � �����, ���� ��� ������ ������ - ������ ����� �� ���
say ����� ��� �������! � ��������� - �� ����������� ������ ��� ���, ������� ���������� �����. ��� �����
say ����� �������� ������ ����� �������...
wait 1 s
say ���� ��� ����, ���� ������!
mecho ������ ��� ���� ����������� ��� ������ � ����� � ���� �����.
mpurge %self%
~
#73203
������� ��������� �������~
2 g 100
~
wait 1
wload mob 73227
detach 73203 %self.id%
~
#73204
��� �������� ����~
2 e 100
~
wait 1
if %random.1000% <= 200
  wecho ��� �������� ���� ����� ��-��� �����!
  wload mob 73226
end
detach 73204 %self.id%
~
#73205
������ ��������� ��������~
2 c 0
������� ��������~
return 1
set pogodka %weather.sunlight% 
if %pogodka.contains(����)% && %arg.contains(�����)%
  wecho %actor.name% ������%actor.g% ��������� ������.
  wait 1 s
  %load% mob 73230
  wecho �������� ��� ���������� ������ ��������� �����.
  wait 1 s
  wecho ���� �������� ������� : '����������� ���, ���������...'
  wecho ���� �������� ������� : '���� �� �����, ������� �� ���� � ����������� ����. ���������� �������.'
  wecho ���� �������� ������� : '������ ���� �������, �� ������ ��� �� ���� ������ � ���������.'
  wecho ���� �������� ������� : '���������� ������ �����, ����� �� �����, ���� �� ������.'
  wait 1 s
  wecho - � ���� ������ �� � ����� ����������, �� �� �������� �� ��� � ������.
  wecho - ���, � ����� ������ ���, �� ���������, � ������, � ������ ������, �������� ��������� ���������.
  wecho - ����� ������, ������� ��� �������-������, ����� �������� �������, �����-���� ��������� ��������.
  wecho - � ����� ������� �������� �� ����������, �� �, ��������, �����, ��� ��� ������������.
  wecho - �� ����� ������ ��� ���� - ���� ������ �������� � ���, ������ �� ���� ���.
  wecho - ������� ������, ��� �� ������ ����� ������������ ���� ����, �� ����� �� ������.
  return 1
end
~
#73206
������ ���������~
0 j 100
~
if (%object.vnum% != 73206)
  msend %actor% _- ���, ������ ����� ��� ����.
  ���� all
  return 0
  halt
end
wait 1
mpurge %object%
switch %random.4%
  case 1
    if (%world.curobjs(73200)% < 2)
      mload obj 73200
      ���� ��� .%actor.name%
    end
  break
  case 2
    if (%world.curobjs(73204)% < 2)
      mload obj 73204
      ���� ������ .%actor.name%
    end
  break
  case 3
    if (%world.curobjs(73205)% < 4)
      mload obj 73205
      ���� ���� .%actor.name%
    end
  break
  case 4
    if (%world.curobjs(73207)% < 2)
      mload obj 73207
      ���� ������ .%actor.name%
    end
  break
done
set rnd %random.1000%
if %rnd% < 200
  mload obj 73210
  ���� ����� .%actor.name%
end
switch %actor.class%
  case 0
    if %rnd% < 200
      mspellturn %actor% ������.����� set
    end
  break
  case 1
    if %rnd% < 200
      mspellturn %actor% ���.����� set
    end
  break   
  case 2
    if (%rnd% < 100 && char.skill(��������) < 151)
      mskilladd %actor% �������� 10
    end
  break   
  case 3
    if (%rnd% < 100 && char.skill(��������) < 151)
      mskilladd %actor% �������� 20
    end
  break   
  case 4
    if (%rnd% < 100 && char.skill(���������� �����) < 151)
      mskilladd %actor% ����������.����� 10
    end
  break   
  case 5
    if (%rnd% < 100 && char.skill(�����) < 151)
      mskilladd %actor% ����� 10
    end
  break   
  case 6
    if (%rnd% < 100 && char.skill(���������� �����) < 151)
      mskillturn %actor% ����������.����� 20
    end
  break   
  case 7
    if %rnd% < 50
      mspellturn %actor% ������.����� set
    end
  break
  
  case 8
    if %rnd% < 200
      mspellturn %actor% ����.��� set
    end
  break   
  case 9
    if (%world.curobjs(73203)% < 1)
      mload obj 73203
      ���� ����� .%actor.name%
    else
      if %rnd% < 200
        mskilladd %actor% ������ 20
      end
    end 
  break   
  case 10
    if (%rnd% < 100 && char.skill(����� �������) < 151)
      mskillturn %actor% �����.������� 10
    end
  break   
  case 11
    if (%rnd% < 100 && char.skill(������ ����) < 101)
      mskilladd %actor% ������.���� 10
    end
  break   
  
  case 12
    if (%rnd% < 100 && char.skill(���������� �����) < 181)
      mskilladd %actor% ����������.����� 10
    end
  break   
  case 13
    if %rnd% < 200
      mload obj 240
      ���� ��� .%actor.name%
    end
  break   
done 
wait 1 s
say ������� ���, �������!
wait 3
%echo% ���� �������� �������� �������� �� ����.
mpurge %self%
~
#73207
����� ���� 732 - ����������� ����~
2 f 100
~
calcuid room1 73283 room
attach 73203 %room1.id%
calcuid room2 73283 room
attach 73205 %room2.id%
calcuid room3 73284 room
attach 73204 %room3.id%
~
#73208
��������� �� ������� - ��� 1~
2 c 1
����������� ������������~
wait 1
if (%cmd% == ������������)
  wsend %actor% �� ������������ ������ �� �����, ������� �������� ������, � ���������� �������.
  halt
end
wsend %actor% �� �����������, ��������� �� �������� ������, � ����������� �� ����� � ���� ���������.
attach 73209 %self.id%
set mntr %actor%
global mntr
detach 7321 %self.id%
exec 73211 %self.id%
detach 73208 %self.id%
~
#73209
��������� �� ������� - ���2~
2 c 1
����������� ������������~
wait 1
if %actor.id% != %mntr.id%
  wsend %actor% � ��� ��� %mntr.name% ��������, �� ����� �� ���� ������ ������...
  wsend %actor% ��! ������ ��� ���� ��� �������.
  halt
end
if (%cmd% == �����������)
  wsend %actor% �� �������� ��� ����, ������ ���������� � ���������, �� ��� ����������� ������� ������.
  halt
end
detach 73211 %self.id%
wsend %actor% �� ����� ������������ ������ �� �����, � ��������� ���� ���� � ���������.
wait 1
wsend %actor% __�� ����� ���������� �� ����� ����������, ��� ������ ����� ���������� ��-��� ���
wsend %actor% __� ������ ��������, ����� �� �������� ���������� ������� �� �����. ��� ����� ������� ����
wsend %actor% __��������� ���, ������� ��������� �����, � ������ � ����������� ������� ��������
wsend %actor% __���������� � ����������� �����...
wait 1
wsend %actor% _�������, ���������� ���������, �� ��������� �� �����-�� ������ �����.
wteleport %actor% 73269
set buff %actor.move(1)%
%actor.position(6)%
unset mntr
attach 73208 %self.id%
detach 73209 %self.id%
~
#73210
���� ������~
0 f 100
~
if (%random.1000% < 100) && (%world.curobjs(73213)% < 2)
  mload obj 73213
end 
return 0
~
#73211
���������� �������~
2 z 100
~
wait 5s
wsend %actor% �� ������ ������ �� �����, � ����� ��������� �� ��� ������.
unset mntr
attach 73208 %self.id%
detach 73209 %self.id%
detach 73211 %self.id%
~
#73213
������2~
0 n 100
~
mecho ��� ��������� ������� �������� �������� �� �������.
mecho ��� �������� ��������...
wait 1 s
mecho   - �������, ���� ������!
mecho   - �� ������ �� ������, ��� ������� ������ ������ �����, ������ �����!
wait 2 s
mecho ��� ��������� ������� ����������� �� ����� ������.
mpurge %self%
~
#73217
���� ��������~
0 f 100
~
mload obj 73206
~
#73218
��������������~
0 l 100
~
dg_affect %self% ��������� �������� +50 200
dg_affect %self% ����������� �������� +120 200
dg_affect %self% �������� �������� -120 200
dg_affect %self% ��������� �������� +120 200
dg_affect %self% ��������� �������� +120 200
dg_affect %self% ������.��.������.���� �������� +120 200
dg_affect %self% ������.��.������.���� �������� +120 200
dg_affect %self% ������.��.������.������� �������� +120 200
dg_affect %self% ������.��.������.����� �������� +120 200
dg_affect %self% ����� �������� +100 200
dg_affect %self% ����.����� �������� +120 200
dg_affect %self% ������ �������� -120 200
dg_affect %self% ���������� �������� +120 200
dg_affect %self% ������ �������� +50 200
dg_affect %self% �������� �������� +50 200
dg_affect %self% ����� �������� +100 200
dg_affect %self% ���� �������� +50 200
wait 1
dg_affect %self% ����.����� �������� +120 200
wait 1
dg_affect %self% ����.����� �������� +120 200
wait 1
dg_affect %self% ����.����� �������� +120 200
wait 1
dg_affect %self% ����.����� �������� +120 200
wait 1
dg_affect %self% ����.����� �������� +120 200
wait 1
dg_affect %self% ����.����� �������� +120 200
wait 1
dg_affect %self% ����.����� �������� +120 200
wait 1
dg_affect %self% ����.����� �������� +120 200
wait 1
detach 73218 %self.id%
~
#73219
���� ������� ����~
0 f 100
~
if ((%random.1000% <= 150) && (%world.curobjs(73211)% < 3))
  mload obj 73211
end
~
#73220
���������~
0 m 1
~
if (%amount% == 100000)
  mecho ����� ��������� ���������� ������ � ����� � ��������� ������ �� ����!!!
  wait 1
  mpurge %self%
elseif (%amount% < 100000)
  wait 1 s
  ���
  say �� ���, ��������� ���� ������? � �� �����, ��������� �����!!!
  wait 1 s
  � !���� ����!
  � !���!
  � !���!
else
  � � ��, ������-�� � �������, ��� ������ ���� ������� ����.
  wait 1
  � ��� ��������� �� ��� ����� �����.
end
~
#73221
������ ������~
0 r 100
~
wait 1
say � �� ����! ������� ���� �� �������� ���?
say �� ��� � �������. ������� ����� � ������������.
wait 1 s
say ������ ����� ���������, ����� ��� ����� ��� �� ���� �����.
say ������� � ������� �� ����������.
���
~
#73222
�������� � 733~
2 c 0
���������~
if %arg.contains(�����)%
  wait 5
  %send% %actor% ����� ��������� � ������. ���������� ���� ������������ �����.
  wait 10
  %send% %actor% �������� ���� ���� ������������ �� ���������� ������...
  %send% %actor% � �� �������� ����!
  wait 10
  *%teleport% %actor% 73300
  %send% �� ������������� ����������� ������� � ������. ������� ������ ��������� - ��� �� �����...
else
  %send% %actor% ��� �� ��������� �������??
end
~
$~
