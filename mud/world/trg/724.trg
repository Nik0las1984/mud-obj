#72400
����������� ������~
0 r 100
~
wait 1
� ������, ������. ��, �� �������?
� ������� �������, � ������ ������ ������ ���� � ���� ������� ����������.
� � ���������� � ���� �������� ����������� ��� ���� �������� ����� ���,
� � ����� ������� ��� �������. �����, �����������. � �� �� ������� �...
� ����!
���
wait 1
� ��� � ��� �� ��� � ������? �, ���! ����������, ��������, � ����, �������
� �����������, �� ������, ��� � �� �����. ��� ������� �� ����� ������������ ������.
� ��� ��� �������� ����� �����������, ����� ���� ��������������.
� ��? ����?
wait 1s
���
halt
~
#72401
������ ���� �����~
0 m 1
~
wait 1
if ((%amount% > 0) && (%amount% < 30000))
  � �������� �����!
  wait 1
  ���
  %self.gold(2)%
  halt
elseif ((%amount% >= 30000) && (%amount% < 300000))
  if %random.1000% > 500
    � ����� ���� �������! ����� ��, �������.
    mecho ���������� ����� ����� � ���� ������� � ����� ����� ����.
    %self.gold(2)%
    mpurge %self%
  else
    � �������, ������! � ��� �� ���������� ����� ��� ����-���� ����������.
    ��
  end
elseif (%amount% == 300000)
  � ��� ��� ������ ��������!
  mjunk all
  mload obj 72400
  ��� ���
  mpurge %self%
else
  � ���, �� �� �����!
  mjunk all
end
~
#72402
����� � ��������~
0 r 100
~
wait 1
� ������, �� ���������!
wait 3
� ������ ��� ������, �������!
� �� ����� �� ����� ����� ���������, �� �����.
� ������ ��� ����, � ���� ��� ���� ����.
wait 10
���
wait 10
� � ���� ����� ��� ��� �� �������, � ��������. ��� ���� �� ���. �� � ��������� ���� ������.
� �� ����� ���, �������, ����� ����. ��� ��� �������� �� ��������, ��� ���������.
� ����� ��� ������ ����� �������, ��-�... �������� ��� �����, � ��������� ������!
wait 1 s
� ������, � ������! � ������, �������, ���� �����-�� ������ �������� ������ ���� ������.
� ��� ������� ������� ��� �������� ���������� ���������...
wait 1
����
� ��� ���, ���� ���� ����� ��� �������� - �� ������� ��� �����.
� ����� �� �����, �� ����������, ��� ��������.
wait 10
: ����� ������� �����..
mecho ���-�� ���� �������� ������.
mpurge %self%
~
#72403
������� ��~
1 h 100
~
if (%actor.realroom% != 72401)
  %send% %actor% �� ����� ��������� �� ��� ������ - ���� ����� ���������� ����!
  return 0
  halt
end
wait 1
%send% %actor% �� ��������� ��������� ��. ������ ����� �����������.
%echoaround% %actor% %actor.name% ��������� ��������%actor.g% ��.
while (%exist.mob(72403)% == 1)
  calcuid bkrisa 72403 mob
  exec 72406 %bkrisa.id%
done
wait 1s
%echo% ������ �� ����� ���������� �������� ����.
~
#72404
�� ������~
0 z 100
~
mload mob 72413
mpurge %self%
~
#72405
������ ��~
1 c 2
���������~
if (%actor.realroom% != 72401)
  %send% %actor% �� ����� ��������� �� ��� ������ - ���� ����� ���������� ����!
  halt
end
wait 1
%send% %actor% �� ��������� ��������� ��. ������ ����� �����������.
%echoaround% %actor% %actor.name% ��������� ��������%actor.g% ��.
while (%exist.mob(72403)% == 1)
  calcuid bkrisa 72403 mob
  exec 72406 %bkrisa.id%
done
wait 1s
%echo% ������ �� ����� ���������� �������� ����.
~
#72406
�� ��������~
0 z 100
~
mload mob 72404
mpurge %self%
~
#72407
�����~
2 e 100
~
*���-�� ��������� � ��� ��� ������. �������� - �������!
~
#72408
����� ��������~
0 f 0
~
mload mob 72402
if ((%random.1000% > 900) && (%world.curobjs(72401)% < 2))
  mload obj 72401
end
~
#72409
����� ��������~
0 f 100
~
set randomic %random.1000%
if ((%randomic% > 950) && (%world.curobjs(72402)% < 2))
  mload obj 72402
elseif ((%randomic% < 951) && (%world.curobjs(72403)% < 2))
  mload obj 72403
end
~
#72410
����� �����~
0 f 0
~
halt
if %random.1000% > 300
  halt
else
  switch %random.3%
    case 1
      set anticrash 1
      set loadok 0
      while ((%anticrach% < 20) && (%loadok% == 0))
        eval staffnum (20201 + %random.23%)
        if (%world.curobjs(%staffnum%)% < 2)               
          mload obj %staffnum%
          set loadok 1
        else
          eval anticrash (%anticrash%+1)
        end
      done
    break
    case 2
      set anticrash 1
      set loadok 0
      while ((%anticrach% < 20) && (%loadok% == 0))
        eval staffnum (20601 + %random.18%)
        if (%world.curobjs(%staffnum%) < 2)
          mload obj %staffnum%
          set loadok 1
        else
          eval anticrash (%anticrash%+1)
        end
      done
    break
    case 3
      switch %random.9%
        case 1
          mload obj 209
        break
        case 2
          mload obj 205
        break
        case 3
          mload obj 215
        break
        case 4
          mload obj 220
        break
        case 5
          mload obj 226
        break
        case 6
          mload obj 216
        break
        case 7
          mload obj 242
        break
        case 8
          mload obj 240
        break
        case 9
          mload obj 211
        break
      done
    break
  done
end
~
#72411
����� ����~
0 f 0
~
set rand %random.1000%
if ((%rand% > 800) && (%rand% < 900) && (%world.curobjs(72408)% < 2))
  mload obj 72408
elseif ((%rand% > 900) && (%world.curobjs(72409)% < 2))
  mload obj 72409
end
~
#72412
����� ����~
0 f 0
~
set rand %random.1000%
if ((%rand% > 800) && (%rand% < 900) && (%world.curobjs(72405)% < 2))
  mload obj 72405
elseif ((%rand% > 900) && (%world.curobjs(72406)% < 2))
  mload obj 72406
elseif ((%rand% > 700) && (%rand% < 800) && (%world.curobjs(72407)% < 2))
  mload obj 72407
end
~
#72413
����� �����~
0 f 0
~
set rand %random.1000%
if ((%rand% > 900) && (%world.curobjs(72404)% < 2))
  mload obj 72404
end
~
#72414
����� ����������~
0 f 0
~
set rand %random.1000%
if ((%rand% > 900) && (%world.curobjs(72410)% < 4))
  mload obj 72410
end
~
#72415
����� � ����~
2 ez 100
~
wait 1
wforce %actor% ��� ����!
wsend %actor% � � ��� ������ ������� ��� ������� ����??
wait 5
wecho ��� ������ �������� ����� ���� - ��� � �����.
wecho ��� ����� �������� ������������ ����� � �����!
wecho �� ���������� ����� ��������� ����������: "Non vagina, non reda cogorta - pre pater ad Inferno!"
~
#72416
���� ����� �� �����~
2 z 100
~
wecho � �� ��������� ���� ��!!!
wforce all wake
wforce all stand
wforce all north
~
#72417
��������������� ������� (�� ������������)~
2 z 0
~
while (%exist.mob(72403)% == 1)
  calcuid bkrisa 72403 mob
  exec 72404 %bkrisa.id%
done
return 1
~
#72418
������ � �������~
2 a 0
*~
%echo% ����� ��� ������ ����. ������ ��� �� �����.
~
$~
