#13300
����� � ��������~
0 r 100
~
wait 4
say � �������� ��� ��� ��� �� ������, ������.
wait 3
say � �� ������ ������ ������ ��-�� ��������� ����
say ���� ��������� � �������� ���������.
wait 3
say �� ��������� ��������� ��������� � ���������.
say ��� ������ �� ���� �����, �������� ������� �� ������.
wait 5
���
say � �� ���� ����� ������, �� ���� ����� �� ��������� ���
say �������� ���� ������ � �����.
���
wait 5
say � ����� ������������� ������� � �� ���� ��������� �������
say �� ����������� �� �� ��� ������?
end
~
#13301
���������� ������ ��������~
0 d 100
������~
wait 5
���
say �� ��� �! �� �������� � ����� ����!
say �������� ����� ��������� � � � ����� �� ��������.
attach 13302 %self.id%
detach 13300 %self.id%
detach 13301 %self.id%
end
~
#13302
������������� ��������~
0 j 100
~
wait 1
if %object.vnum% != 13300
  ���� ���
  halt
end
wait 1
mpurge %object%
say �! � ����� ������ ������ �����! � �� ��� �� ������� ��������� �� ����
say ���� ����� ������ �� ����! �� ����� ����� ���! � ������ ����� 
say ������������� ����!
mecho ������� ������ ���-�� �� �������� �����
switch %random.20%
  case 1
    case 2
      mload obj 13305
      ���� ��� %actor.name%
      drop all
    break
    case 3
      case 4
        mload obj 13304
        ���� ��� %actor.name%
        drop all
      break
      case 5
        case 6
          say ��� ��� �������� ���� ��� ����� �������, �������� �� ��������� � ����, ��������� �� ������� �������.
          say �� ��� ������, � ��� ���������� ������ ������-�� �������� ����������.
          mload obj 1719
          give ������ .%actor.name%
        break
        default
          wait 3
          if (%random.1000% <= 200) && (%world.curobjs(207)% < 50)
            mload obj 207
            give ���� .%actor.name%
          else
            %self.gold(5000)%
            ���� 5000 ��� %actor.name%
          end
          drop all
        done
        detach 13307 %self.id%
        detach 13302 %self.id%
~
#13303
����� � �����~
0 r 100
~
wait 4
say ����������� ����, ������!
say � ���� ��� ������ ����� �������� ��� ����������
say � ��������� ����� ���� � ��� ����.
wait 5
say ��� ������ ������ ������� ������� �������
say ���� ������� ��������� �������� �� ���� �����
say ������ ���� ���� � ������� �����.
wait 5
���
say �� ��������� ����� ��� ������� ������,
say �� �� ������� ��� ��� ����� � ����� ����.
say � ��� ������� ���� ���, ����� ��������
say ����������� ������������ ����� ���������.
wait 6
���
say �� ���������� �� �� ��� ������?
end
~
#13304
���������� ������ �����~
0 d 100
������~
wait 5
���
say ����� ������! ������� ��� �������������� ����
say ��� �� ����� ����� �� �������� �� ������ ������!
wait 5
say ��� ����� ������������ ����!
attach 13305 %self.id%
detach 13303 %self.id%
detach 13304 %self.id%
end
~
#13305
������������� �����~
0 j 100
~
wait 1
if %object.vnum% != 13301
  ���� ���
  halt
end
wait 1
mpurge %object%
switch %random.8%
  case 1
    say ���! �� ������ ���! � ����� ���� ������������ �������!
    say ������ ��� ��� ������? ����� ������! ���� ������� ���� ����!
    mecho _����� ������� ���-�� ��-�� ������.
    mload obj 587
    ���� ��� %actor.name%
  break
  case 2
    say ���! �� ������ ���! � ����� ���� ������������ �������!
    say ������ ��� ��� ������? ����� ������! ���� ������� ���� ����!
    mecho _����� ������� ���-�� ��-�� ������.
    mload obj 13302
    ���� ��� %actor.name%
  break
  case 3
    say ���! �� ������ ���! � ����� ���� ������������ �������!
    say ������ ��� ��� ������? ����� ������! ���� ������� ���� ����!
    mecho _����� ������� ���-�� ��-�� ������.
    mload obj 13303
    ���� ��� %actor.name%
  break
  default
    say ���! �� ������ ���! � ����� ���� ������������ �������!
    say ������ ��� ��� ������? ����� ������! ���� ������� ���� ����!
    mecho _����� ������� ���-�� ��-�� ������.
    %self.gold(5000)%
    ���� 5000 ��� %actor.name%
  done
  detach 13305 %self.id%
~
#13306
��������� ������~
0 c 100
���������~
if !(%arg.contains(������)%) 
  msend  %actor% � ��� ������?
  return 0
  halt
end
wait 1
msend %actor% �� ��������� ������ � ������� ��� ������.
mechoaround %actor% %actor.name% �������� ������ � ����� ��� ������.
wait 3s
mecho ����� ��������� �������: ��� ������ �������?
mecho ������� ��� ������� �� ������. �� � �� ����  ���������,
mecho ���� �� ���������� � ����� ����������!
mecho ����� ������� ��� �������, �������� ��� ������ - �������� ���.
mecho ��������� ���, ��� ��� ������ � ������� ���� ����� - � ����� �� �������.
mload obj 13300
���� ��� %actor.name%
wait 4
mecho ����� �������� ����� �� �������.
if %exist.mob(13313)%
  calcuid storozh 13313 mob
  attach 13308 %storozh.id%
end
wait 1
mpurge %self%
~
#13307
����� ��������~
0 f 100
*~
if %world.gameobjs(13301)% <5
  mload obj 13301
end
~
#13308
����� ������~
0 r 100
~
wait 3
say �� ����� ������ ������!? ��� ���� ��, ���������!
����  %actor.name%
calcuid torol 13300 mob
detach 13307 %torol.id%
calcuid zhrica 13309 mob
detach 13303 %zhrica.id%
attach 13309 %zhrica.id%
calcuid voin 13310 mob
attach 13310 %voin.id%
calcuid opolch 13311 mob
attach 13311 %opolch.id%
end
~
#13309
� ����� ����� ������~
0 r 100
~
wait 3
say �� ����� ������ ������!? ��� ���� ��, ���������!
����  %actor.name%
detach 13309 %self.id%
end
~
#13310
����� ������ � �����~
0 r 100
~
wait 3
say �� ����� ������ ������!? ��� ���� ��, ���������!
����  %actor.name%
detach 13310 %self.id%
end
~
#13311
� ��������� ����� ������~
0 r 100
~
wait 3
say �� ����� ������ ������!? ��� ���� ��, ���������!
����  %actor.name%
detach 13311 %self.id%
end
~
#13312
����� �����~
0 f 100
~
if (%world.curobjs(13309)% < 2) && (%random.1000% <= 20)
  mload obj 13309
end
~
#13313
����� ��������~
0 f 100
~
if (%world.curobjs(13307)% < 10) && (%random.100% <= 5)
  mload obj 13307
end
~
#13314
����� �������~
0 f 100
~
if (%world.curobjs(13306)% < 10) && (%random.100% <= 5)
  mload obj 13306
end
~
#13315
����� ��������~
0 f 100
~
if (%world.curobjs(13308)% < 10) && (%random.100% <= 5)
  mload obj 13308
end
~
#13316
����� ���������~
0 f 100
~
if (%world.curobjs(13310)% < 10) && (%random.100% <= 5)
  mload obj 13310
end
~
#13317
����� �����~
0 f 100
~
if (%world.curobjs(13311)% < 10) && (%random.100% <= 5)
  mload obj 13311
end
~
$~