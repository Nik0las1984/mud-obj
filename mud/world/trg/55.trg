#5500
�������-�������~
0 q 100
~
if %actor.vnum% != -1
  halt
end
if %world.curmobs(5500)% > 0
  msend %actor% ������� �������� ���� ����������� � ����������� � ���.
  tell %actor.name% ������ ����!
  tell %actor.name% ��� ������� ���� � ���� ����� ������� ����? ����� ������� ������ ��.
  tell %actor.name% ��� �� ������ ����� ���������� ���, �� ���������� ����� � ������.
  tell %actor.name% � ���� ���� � ���� �������, ����� ��� �� �������.
  tell %actor.name% ������� ���������� �������� ����� ��� � ������, ������.
  tell %actor.name% ���� ��, � ������� �������������� �� ������.
  tell %actor.name% � ����������� ���� �� ���.
  msend %actor% ������� ���������� ���������� ������ ������.
end
~
#5501
������ �������~
0 f 100
~
if %world.curmobs(5500)%==1 && %world.curobjs(5500)%==0
  mload obj 5500
  calcuid ovar 5500 obj
  attach 5503 %ovar.id%
end
~
#5502
���� ����� �������~
0 j 100
~
wait 1
if ((%object.vnum% == 5500) && !%self.fighting%)
  wait 1
  mpurge %object%
  mecho ������� ��������� ������������� �����.
  say �� ��, �� ����%actor.g% ��������!
  if (%actor.canbeseen%)
    dg_cast '���������' .%actor.name%
    dg_cast '��������������' .%actor.name%
    dg_cast '���������' .%actor.name%
    dg_cast '���������' .%actor.name%
  end
  if (%exist.mob(5514)%)
    calcuid hostr 5514 mob
    attach 5504 %hostr.id%
    attach 5507 %hostr.id%
  end
  if ((%random.1000% <= 200) && (%world.curobjs(516)% < 1))
    mload obj 516
    ���� all %actor.name%
  end
  if (%world.curobjs(234)% < 50) && (%random.1000% <= 100)
    mload obj 234
    ���� all %actor.name%
  end
  if (%world.curobjs(1731)% < 1) && (%random.1000% <= 50)
    mload obj 1731
    ���� all %actor.name%
  end
  say ���������, �� ��������� ���.
end
~
#5503
������� �����~
1 g 100
~
if %actor.realroom% == 5548 || %actor.realroom%  == 5549
  oforce %actor.name% �����
  osend %actor.name% ������������ �� ������, �� ��������� �� ������� ������ ����� � ��������������.
  osend %actor.name% �� ���, ����� �������, ������� ��� ����� �� ����� ����������: ���, ���, ���...
  wait 5
  if %actor.sex% == 1
    oechoaround %actor% %actor.name% ������� ���� � ������.
  else
    oechoaround %actor% %actor.name% �������� ���� � ������.
  end
  osend %actor.name% �� �������� ���� � ������.
  wait 1
  oteleport %actor.name% 5528
  if %actor.sex% == 1
    oechoaround %actor% %actor.name% ���� � ������.
  else
    oechoaround %actor% %actor.name% ����� � ������.
  end
  osend %actor.name% ���, ������!
  osend %actor.name% ����� ������������ ����� ���� ���� �������.
  osend %actor.name% ������ ���������� � �����, ������� �� ����������� ������� �� ���.
  oforce %actor.name% ��������
  odamage %actor.name% 50
end
~
#5504
������-�������~
0 r 100
~
wait 1
if (( %world.curmobs(5503)% > 0 ) && ( %world.curobjs(5508)% == 0 ))
  mecho ������ ������ ������ � ��������� � ���� �������.
  say ������ ����, ������!
  mecho _- �� ����� ��������� ��� �� ��������, ������� ����!
  mecho _- ���� �� ���� �� �������� ����� �� � ��� �������� ������.
  mecho _- � ������� �� ������ ��������� �������, ��� � �������� ������ ��������.
  mecho _- �� ��� � ��������� ��� ���� �� ������ ����� � ����� �������.
  mecho _- �������� �� ����� ������, ��� ���� �� ������� � ���� �������.
  mecho _- � ��� ���� � �� � ��������� ������� ��.
  mecho _- ������ ��, � � ����������� ����.
  mecho _- ��, ����� ������� - ������ � ��� ���� �� ����� �������, ������ ���, �����.
  if (!%self.haveobj(5514)% && (%world.curobjs(5514)% < 6))
    mload obj 5514
    calcuid vobj 5514 obj
    ����� %vobj.name%
    ���� %vobj.name%
  end
  wait 3
  say � � ���� ���, ������� �� �����!
  mecho _- ������ ����� ��-�� ����� � ������ �� �������.
  mecho _- ������ ����� �� �������� ��� �� ������� � � ������ ����������� ����� ����.
  mecho _- ��, ������ �� ���� ����� ������ �������.
  detach 5504 %self.id%
end
~
#5505
������ ������~
0 f 100
~
if %world.curmobs(5503)% == 1
  mecho  ������ ����� ������ ��������:
  mecho  - ������, ��������, ����� ����!
  mecho � ��� ������ ������� ��������� ������ ��������� �������� ������ � ��������� ������ ��� ����.
  mecho  ������ ��� ���� ��������� ������.
  mload mob 5504
  mload mob 5504
end
~
#5506
������ ������~
0 f 100
~
if %world.curmobs(5504)% == 1
  mload obj 5508
end
~
#5507
���� �������~
0 j 100
~
wait 1
switch %object.vnum%
  case 5051
    wait 1
    mpurge %object%
    %actor.setquest(5000)%
    emot �������� �� ��� � �������� ����������� ������ ������.
    wait 1s
    say �������, ��� ������ �������� �� ������. ����� � � ��� �� �������.
    ���
    mecho  - ����� ���� ������� ���� ������ �����������!
    say ���-�� ���� ���������� �����. ������� ��� �����-�� ����� �������, ��� ����� � ��������...
    mecho _- �� ������ �� ��� ���������� - �� ����� � ����� ���� ��� ������ �������.
    mecho _- � ����� �� �� �� �����, ���� ��� �� ����� �� ����� ������.
    wait 2
    say ��� ���, ����� �����, ��� �� ������ ���������� ���������?
    mecho _- ������ � ����� ��. 
    mecho _- ������� ��� ��� ������ ����, ����������� �����, �� ���� ��������.
    mecho _- ����� ���� ������� ���� ������ ����������!
  break
  *�����
  case 5414
    wait 1
    mpurge %object%
    say ��... ��� ��� �� ����, ������� ������� ������...
    if !%actor.quested(5000)%
      say � ���� �� ������� �� ������, �� ��� ����� �������������
      halt
    end
    %actor.setquest(5001)%
    if %actor.quested(5001)% && %actor.quested(5002)% && %actor.quested(5003)%
      set questor5501 %actor%
      global questor5501
      exec 5508 %self.id%
      halt
    end
    say �� ��� ��, �������������... �� ��� ���-���� �� ������� - ����� �����.
  break
  *���
  case 4713
    wait 1
    mpurge %object%
    say ��... ��� ��� �� ����, ������� ������� ������...
    if !%actor.quested(5000)%
      say � ���� �� ������� �� ������, �� ��� ����� �������������
      halt
    end
    %actor.setquest(5002)%
    if %actor.quested(5001)% && %actor.quested(5002)% && %actor.quested(5003)%
      set questor5501 %actor%
      global questor5501
      exec 5508 %self.id%
      halt
    end
    say �� ��� ��, �������������... �� ��� ���-���� �� ������� - ����� �����.
  break
  *����
  case 5517
    wait 1
    mpurge %object%
    say ��... ��� ��� �� ����, ������� ������� ������...
    if !%actor.quested(5000)%
      say � ���� �� ������� �� ������, �� ��� ����� �������������
      halt
    end
    %actor.setquest(5003)%
    if %actor.quested(5001)% && %actor.quested(5002)% && %actor.quested(5003)%
      set questor5501 %actor%
      global questor5501
      exec 5508 %self.id%
      halt
    end
    say �� ��� ��, �������������... �� ��� ���-���� �� ������� - ����� �����.
  break
  case 5508
    wait 1
    mpurge %object%
    calcuid vobj 5514 obj
    ����� %vobj.name%
    *mpurge %vobj%
    wait 1s
    say �������! �������-�� ������� �� ��� ������.
    say ������� ��� �� ��������?
    mecho ������ ��������������� ��������� �� ���� ������, ��� � ������ �����.
    say �������, �� ������� ���.
    mecho ������ ������ � �������, ������ ���.
    switch %random.6%
      case 1
        if %world.curobjs(5503)% < 4
          mload obj 5503
          ���� ��� %actor.name%
        else
          %self.gold(+300)%
          ���� 300 ��� %actor.name%
        end
      break
      case 2
        if %world.curobjs(5504)% < 2
          mload obj 5504
          ���� ������� %actor.name%
        else
          %self.gold(+300)%
          ���� 300 ��� %actor.name%
        end
      break
      case 3
        if %world.curobjs(512)% < 2
          mload obj 512
          ���� ����� %actor.name%
        else
          %self.gold(+300)%
          ���� 300 ��� %actor.name%
        end
      break
      case 4
        if %world.curobjs(500)% < 1
          mload obj 500
          ���� ����� %actor.name%
        else
          %self.gold(+300)%
          ���� 300 ��� %actor.name%
        end
      break
      case 5
        if %world.curobjs(200)% < 50
          mload obj 200
          ���� ��� %actor.name%
        else
          %self.gold(+300)%
          ���� 300 ��� %actor.name%
        end
      break
      default
        mload obj 16023
        ���� ������ %actor.name%
      break
    done
    say ��� ���, ��� � ����� ���� �������������, ��� ��� ������.
  break
  default
    eval getobject %object.name%
    drop %getobject.car%.%getobject.cdr%
  done
~
#5508
������ ���� ������~
0 z 100
~
wait 1
say ���, ������ ������� ������ ������� �����, ����� ����� ��� �������� �����!
mecho _- � ���� �� ���, ������ ��.
emot ��������� � ������� � ������ �� ���� ��������� ������ �������
mload obj 5518
���� ���� .%questor5501.name%
drop ����
~
$~
