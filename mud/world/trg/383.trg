#38300
������� � �������~
0 r 100
~
wait 1
if %self.fighting%
  halt
end
wait 5s
switch %random.30%
  case 1
    mecho _������� �������: "�� ��������� ����� ���� ������� �����
    mecho _3 ���� ������� �������� � ��� ����� ���������� ������!"
  break
  case 2
    mecho _������� �������: "�� ��������� ����� ���� �������� �������� ������ �����
    mecho _3 ����� ������� �������� � 6 ���������� �������!"
  break
  case 3
    mecho _������� �������: "�� ��������� ����� �������� ����������
    mecho _���� ��������� � ������� ��� ������ �������!"
  break
  case 4
    mecho _������� �������: "�� ��������� ����� � ������ ������� ���� ���������
    mecho _����� 3 ����� � ���������, ��� ���� ����� �� �������!"
  break
  default
  break
done
end
~
#38301
� ������~
0 r 100
~
wait 1
if %self.fighting%
  halt
end
wait 3s
switch %random.21%
  case 5
    mecho _����� ��������: "�������! ��������! ����� ������� ������!"
  break
  case 10
    mecho _����� ���� ��������: "���� ����� ����������! ������ �� ��� ������!"
  break
  case 15
    mecho _����� ��������: "����� ������ ����! ����� ����!"
  break
  case 21
    mecho _����� ��������: "��� ��������� ��������� ����! �������!"
  break
  default
  break
done
end
~
#38302
���� ���� ��������~
0 j 100
~
if %object.vnum% == 38305 then
  wait 2s
  mecho �������� ������� �������� �� ������.
  say �������. �������%actor.g%! ����� ����������!
  wait 2s
end
~
#38303
���� ���� ��������~
0 j 100
~
if %object.vnum% == 38306 then
  wait 2s
  mecho �������� ������� ���� � �����.
  say �������. �������%actor.g%! ����� ����������!
  say ���� ����� �������� 500 ���. ������ � �����.
end
~
#38304
������� �����~
0 f 100
~
if (%world.curobjs(38305)% < 2) && (%random.4% == 1)
  mload obj 38305
end
if (%world.curobjs(38306)% < 2) && (%random.4% == 1)
  mload obj 38306
end
~
#38305
����� ��������~
0 f 100
~
* if (%world.curobjs(615)% < 90) && (%random.3% == 1)
*   mload obj 615
* end
~
#38306
����� �����������~
0 f 100
~
* if (%world.curobjs(602)% < 90) && (%random.3% == 1)
*   mload obj 602
* end
~
#38307
����� ���������~
0 f 100
~
* if (%world.curobjs(600)% < 90) && (%random.8% == 1)
*   mload obj 600
* end
~
#38308
��� �������� ��������~
0 j 100
~
if %object.vnum% == 38222
  wait 2s
  mpurge %object%
  wait 2s
  say ��������...���...���... 
  wait 2s
  say �! ����! ����� ���... �������-�� � ������� ����� �� ������... 
  if %actor.level% > 20
    msend %actor% _�� ������ ���� �� �������� 90000 ����� �����...
    %actor.exp(+90000)%  
    wait 2s
  end
  msend %actor% _�������� ����� ������ ��� � ��������..
  mechoaround %actor% _�������� ����� ������ %actor.vname% � ��������.
  say �������! �������! ��� �� ������...
  if ((%world.curobjs(215)% < 60) && (%random.100% < 26))
    wait 2s
    say � ���� ���� ��� ���� ��� �������. ������ - �������, ��� ��� ������ �����.
    mload obj 215
    ��� ��� %actor.name%
  end
  ����
end
~
#38309
���� ������� ������������~
0 d 0
������� ����� ������~
wait 1s
say ��������� ��� �� ������, %actor.name%?
say � ������ �� ����...� ������� �� ����.
mecho  ������������ ��������� � ������.
wait 1s
say ���� ������ ������� ���� �� ����� ����� �������� ������� �� 100 ���.
~
#38310
��� 100 ��� ������������~
0 m 0
~
wait 1
if %amount% < 100 then
  ���
  say ���, ����� ��������... � �� ������� - 100 ��� �������...
  halt
end
wait 1
mecho _������������ ������ ������� �����.
msend   %actor% ������������ �������� �� ��� � ������� �������� �����.
mechoaround %actor%  ������������ �������� ��  %actor.vname% � ������� �������� �����..
wait 1
msend   %actor% � ����� �� ������ ��� ���������� ��� �� ������ ��� ����� �������.
msend   %actor% ���� ��� ��������� ����, �������, ����� � ������...
mechoaround %actor% %actor.name% �����%actor.q%... ���������%actor.u%... ������%actor.g%.
mteleport %actor% 33009 horse
msend   %actor% � ����� ������ �� ������������ � �������� ���������.
mechoaround %actor% ���-�� ������ ����� � ��������� �����.
~
#38311
���� �� ����������~
0 d 0
�� ���� �����~
wait 1s
mecho ���������� ������� ���������� � ��������� �����.
msend   %actor% �������� ��� ������� ���� ��������� ��� � ���� �����.
mechoaround %actor%  ��� ������� ���� ��������� %actor.rname% � ���� � ��������� ����.
wait 1
msend   %actor% � �����-�� ������ ��� ���������� ��� �� ������ ��� ������ � ������..
msend   %actor% ���� ��� ���������  �������, ����� � ������...
mteleport %actor.name% 33009 horse
msend   %actor% � ����� ������ �� ������������ � ��������� ����.
msend   %actor% ��� ������� ���� ������� ��� ������ � ������.
mat %actor.realroom% mechoaround %actor% � ������ ������� ���� ���-�� �������� �����.
~
#38312
������ � ����������~
0 r 100
~
wait 2s
if %actor.sex%==1
  tell %actor.name%  ����������, � ������ ��������!
  tell %actor.name%  ��������, �� ����� ��������� ����������� � ��������� ��������..
  tell %actor.name%  ���� ��� ���, �� ������ ����� "��", � � �������� ���� � ��������� ����.
  tell %actor.name%  ������ ��� ���� ������ ���������� �������� �����������.
  ��
else 
  tell %actor.name%  ����������, ����� �������!
  tell %actor.name%  ��������, ���� ������� ����� � �����, � �� ����� ����� �������� � �����������.
  tell %actor.name%  ���� ��� ���, �� ������ ����� "��", � � �������� ���� � ��������� ����.
  tell %actor.name%  ��� ���� ���������, ���������, ��� ��� ��� ������� ����������� �����������.
  ��
end
~
#38313
��� � ��������~
0 r 100
~
wait 2s
if %self.fighting%
  halt
end
wait 5s
switch %random.30%
  case 1
    ��� %actor.name%
  break
  case 2
    �� %actor.name%
  break
  case 3
    ������ %actor.name%
  break
  case 4
    ��� %actor.name%
    ��� %actor.name%
  break
  default
  break
done
end
~
$~