#11400
������ � �������~
0 q 100
~
*���-��������� ��� �����
wait 1
if %actor.quested(27001)%
  halt
end
if ((%actor.class% == 8) || (%actor.class% == 12)) && %actor.quested(27010)%
  if %world.gameobjs(11407)% > 0
    halt
  end
  wait 1s
  say ���� ����%actor.y%?
  mecho _- ��� - �� ����� �� ��������. �%actor.y% �� ���� �� ����.
  wait 3s
  ����
  say ��, ���� �����?
  %actor.unsetquest(27002)%
  %actor.unsetquest(27000)%
  %actor.setquest(27001)%
  halt
end
wait 5
if !%exist.mob(11406)%
  halt
end
say ���������� %actor.name%!
say � ��� ����� ��������� ������ � ������ �����
say � ��� �� �������� ��� ��������� � ���� �����.
say ��������� ���� �������������, � �� �� ����� ������������ � ������� �������
say ��� � �������� ����� ������������.
wait 3
���
say �� ������� ��� ������������ �������! ������� ���� ������� ����� ���� ����
say � ��� ���, ��������� � ��� ��� �� ��������! �� �������� ��?
~
#11401
������ ������~
0 d 1
*~
wait 1
if %speech.contains(����)% || %speech.contains(�����)% || %speech.contains(�����)% || %speech.contains(�����)% || %speech.contains(���)% || %speech.contains(�����)% || %speech.contains(����)% || %speech.contains(�����)% || %speech.contains(����)%
  ����
  say ���, ����� ����� �����-��!
  say � �� - ��� ������!
  msend %actor% _������� �������� ��� �� ����� ��� ������ �������� ���������.
  mteleport %actor% 11410
  mecho _������� �������� %actor.vname% �� ����� ��� ������ �������� ���������.
  mechoaround %actor% %actor.name% �������%actor.g% �� ������� � ������� �������%actor.u% �� �����.
  eval dmg %actor.hitp%/2
  mdamage %actor% %dmg%
  %actor.position(2)%
  %actor.wait(3)%
end
if ((%actor.class% == 8) || (%actor.class% == 12)) && %actor.quested(27001)%
  if %speech.contains(����)% && %speech.contains(��������)%
    if %actor.quested(27002)% || %actor.quested(27003)%
      halt
    end
    wait 2
    if %world.gameobjs(11407)%
      halt
    end
    say �� ���...
    mecho _- � �� ��� ������� � ����� ���� �����%actor.g%?
    mecho _- �� ����� ����� ��������%actor.g%?!
    ����� .%actor.name%
    say ��� ����...
    ���
    wait 2s
    say �����, ��� ��� � �����.
    mecho _- ���� � ���� ����� - � ����������� �����, � �������� ��������.
    mecho _- ��� �� ������ ��������� ���...
    ���
    say �������� �� �� ���� ���������, � �� ��� �������� ��������, ��� ��� ��� ��� ������.
    mecho _- ����� � � ���� ������.
    wait 1s
    mload obj 11407
    ���� ����� .%actor.name%
    %actor.unsetquest(27001)%
    %actor.setquest(27000)%
    %actor.setquest(27002)%
    attach 11408 %self.id%
    detach 11400 %self.id%
    detach 11401 %self.id%
    halt
  end
end
if %speech.contains(������)%
  wait 5
  say ������� ��� � ������� ����
  say ������� �������� � �������, ��� ��� ��� �� ������, � ���� ����������!
  wait 5
  ���
  wait 5
  say ���� ������� ��������� � ��������, ����� ��� �����.
  say � � ����� �� ��������!
  detach 11400 %self.id%
  detach 11401 %self.id%
end
*attach 11402 %self.id%
~
#11402
��� ����� �������~
0 j 100
~
wait 1
switch %object.vnum%
  case 33037
    wait 1
    mpurge %object%
    ��� .%actor.name%
    emot ������ ��������
    wait 2s
    say ��.. ����� ����.
    if !%actor.quested(27007)%
      say ������� ����, %actor.name%, ���� ������ ����� �����, ��� ����� - ������.
      halt
    end
    %actor.setquest(27008)%
    say �� ��� ��, �������%actor.g% �� ����, ������ ��� �����.
    mecho _- ������ ��� � �� ������� �� ����� - ���� ���.
    mecho _- ���� ��� ����� � ���� ������� ��������  - ��� ���� � �������.
    mecho _- ��������� ��� ��� �����, � �� ���� � ��� �����.
    mecho _- � �� ���� � ���, �������,  ������������-�� ���� �� ������
    ����
  break
  case 11400
    wait 1
    mpurge %object%
    if %actor.quested(27008)%
      wait 2s
      �����
      say ���� ��!
      mecho _- ������%actor.g% ����� - �������.
      mecho _- ��, �� ����� ���� � ����� ����������, � ��� ���� ������� ����.
      wait 2s
      mload obj 11408
      say ���, �����.
      give all .%actor.name%
      %actor.setquest(27009)%
      halt
    end
    wat 10
    say �� ��� � ����� ����! � ���� �� ���� �������� �������� �����!
    say � � ������� �� ���� ���� ������, ��� ��� � ���� ������
    wait 5
    mecho ������ ������� ����� � ������ � ���-�� ������ �� ����.
    wait 5
    eval rand %random.100%
    if (%rand% < 10) && (%world.curobjs(11401)% < 10)
      mload obj 11401
      ���� ������ %actor.name%
    elseif (%rand% < 20) && (%world.curobjs(11402)% < 10)
      mload obj 11402
      ���� ����� %actor.name%
    elseif (%rand% < 30) && (%world.curobjs(11403)% < 10)
      mload obj 11403
      ���� �������� %actor.name%
    else
      say ��� ����� �� ����� ����... ��� �������, �� � ��� �����, �� �� ��������.
      msend %actor% ������ ������� ��� ��� ��������� ����� ���.
      %actor.gold(+1000)%
    end
  break
  default
    say ����� �� ��� ��� ����� ?
    wait 1
    ���
    drop ���
  done
~
#11403
����� �������~
0 f 100
~
if %world.curobjs(11400)% <5
  mload obj 11400
end
~
#11404
����� ����~
0 n 100
~
attach 11400 %self.id%
attach 11401 %self.id%
~
#11405
����� ������~
0 f 100
~
if (%world.curobjs(11405)% < 30) && (%random.10% <= 2)
  mload obj 11405
end
~
#11406
����� �����~
0 f 100
~
if (%world.curobjs(11404)% < 30) && (%random.10% <= 2)
  mload obj 11404
end
~
#11407
����� �����~
0 f 100
~
if (%world.curobjs(11406)% < 30) && (%random.10% <= 2)
  mload obj 11406
end
~
#11408
���� � �������� ���� ������� ���~
0 q 100
~
wait 1
�������
say �����-�� �������, ��������...
say � �� ������� ���, ����� �.
~
$~
