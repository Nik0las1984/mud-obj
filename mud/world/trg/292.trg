#29200
����������� ��������~
0 q 100
~
wait 2
msend %actor% �������� �������� ��������� �� ���.
mechoaround %actor% �������� �������� ��������� �� %actor.vname%.
wait 1s
msend %actor% - ����� ������ �������, ������ ������?
msend %actor% - � �� ���������� �� ���� ����� �������� � ������ ���������?
msend %actor% - ����� � �����, �� ���� ��� ��� ������ ������ �� ���� �� ������ �� ����.
msend %actor% - �� ���� ��������� ��� ����� ������, ��� � ����, ����� � ����� ��������.
msend %actor% - � � ����� ���������� �� ������.
~
#29201
��������� ��������~
2 e 100
~
if %random.4% == 1
  wait 1s
  wecho ����� �� ������������ ����� ������ �������� ������� ��������.
  switch %random.6%
    case 1
      if %world.curobjs(29200)%<100
        wload obj 29200
      end
    break
    case 2
      if %world.curobjs(29201)%<100
        wload obj 29201
      end
    break
    case 3
      if %world.curobjs(29202)%<100
        wload obj 29202
      end
    break
    case 4
      if %world.curobjs(29203)%<100
        wload obj 29203
      end
    break
    case 5
      if %world.curobjs(29204)%<100
        wload obj 29204
      end
    break
    case 6
      if %world.curobjs(29205)%<100
        wload obj 29205
      end
    break
    default
    break
  done
end
~
#29202
������� ���� ������ ��� �������� �������� �� ������� ����~
0 j 100
~
wait 1
eval objectvnum %object.vnum%
if (( %object.vnum% >= 29200 ) && ( %object.vnum% =< 29299 ))
  wait 1
  mpurge %object%
end
switch %objectvnum%
  case 29307
    wait 1
    mpurge %object%
    wait 2s
    msend %actor% - ���! ��� ���! ������� ��� ��� ������, �������� � �� ������ ���
    msend %actor% - ������ ����� ���, ��������� ��� ��������?
    mecho �������� �������� �� ������� ��� ��������� ��������� � ������ �� �� ���.
    wait 1s
    mecho �������� ��������� ������ �������� ������.
    wait 2s
    mecho �������� ���������� ������, � �� ���� �� ��������� ����� �������.
    msend %actor% - �������, ��� ������ ���, � �����-��, �������, ������ �����,
    msend %actor% - �� ��� ��������� ���� ������, ����� ���� �� �����.
    if ( %actor.level% < 6 ) 
      wait 1
      say ������� ����...
    elseif ( %actor.level% < 10 ) && ( %actor.level% > 6 )
      wait 1s
      msend %actor% �� ������ ���� �� �������� 5000 ����� �����...
      %actor.exp(+5000)%
    else
      wait 1s
      msend %actor% �� ������ ���� �� �������� 10000 ����� �����...
      %actor.exp(+10000)%
    end
  break
  case 29204
    wait 1s
    say �������. �������%actor.g%!
    wait 1s
    mecho �������� ������� ����� � �����, �������� � ����� ��� � ���������� ��������.
    wait 1
    *mpurge %object%
    if ((%random.30% > %world.curobjs(29207)%) || (%random.100% == 6))
      mload obj 29207
      wait 2s
      ���� �������� %actor.name% 
    else
      say ������ �������� �� ������... �������� ������ ��!
    end
  break
  case 29203
    wait 1s
    say �������. �������%actor.g%!
    wait 1s
    mecho �������� ������� ����� � �����, �������� � ����� ��� � ������� ��������.
    wait 1
    *mpurge %object%
    if ((%random.30% > %world.curobjs(29209)%) || (%random.100% == 6))
      mload obj 29209
      wait 2s
      ���� �������� %actor.name%
    else
      say ������ �������� �� ������... �������� ������ ��!
    end
  break
  case 29205
    wait 1s
    say �������. �������%actor.g%!
    wait 1s
    mecho �������� ������� ����� � �����, �������� � ����� ��� � ����� ��������.
    wait 1
    *mpurge %object%
    if ((%random.30% > %world.curobjs(29208)%) || (%random.100% == 6))
      mload obj 29208
      wait 2s
      ��� �������� %actor.name%
    else
      say ������ �������� �� ������... �������� ������ ��!
    end
  break
  case 29202
    wait 1s
    say �������. �������%actor.g%!
    wait 1s
    mecho �������� ������� ����� � �����, �������� � ����� ��� � ������� ��������.
    wait 1
    *mpurge %object%
    if ((%random.30% > %world.curobjs(29210)%) || (%random.100% == 6))
      mload obj 29210
      wait 2s
      ���� �������� %actor.name%
    else
      say ������ �������� �� ������... �������� ������ ��!
    end
  break
  case 29200
    wait 1s
    say �������. �������%actor.g%!
    wait 1s
    mecho �������� ������� ����� � �����, �������� � ����� ��� � ������ ��������.
    wait 1
    *mpurge %object%
    if ((%random.30% > %world.curobjs(29206)%) || (%random.100% == 6))
      mload obj 29206
      wait 2s
      ���� �������� %actor.name%
    else
      say ������ �������� �� ������... �������� ������ ��!
    end
  break
  case 29201
    wait 1s
    say �������. �������%actor.g%!
    wait 1s
    mecho �������� ������� ����� � �����, �������� � ����� ��� � ����� ��������.
    wait 1
    *mpurge %object%
    if ((%random.30% > %world.curobjs(29211)%) || (%random.100% == 6))
      mload obj 29211
      wait 2s
      ���� �������� %actor.name%
    else
      say ������ �������� �� ������... �������� ������ ��!
    end
  break
  default
    drop all
  done
~
#29203
����������� ���.���������~
0 r 100
~
wait 2s
msend %actor% - �� �������� ��� � ��� �� ��������� ��� �� ������ �����.
msend %actor% - �� ������ �������.
����
~
#29204
����������� ���������~
0 r 100
~
wait 2s
msend %actor% - �� �������� ��� � ��� �� ��������� ��� �� ������ �����.
����
~
#29205
���� 20 ��� ���������~
0 m 0
~
wait 1
if %amount% <20 then
  ���
  say ���, ����� ��������! � �� �������, 20 ��� �� �������...
  halt
end
wait 1
mecho �������� ������ �������� � � ������� ������ ��������� ������� � �����.
msend   %actor% ������� ������� ��� � ����� � ������ ��������� �������.
mechoaround %actor% ������� ������� %actor.vname% � ����� � ������ ��������� �������.
wait 2s
msend   %actor% ��� ����� ������� �����������, ����� �� ��������� �� �������� ����.
mechoaround %actor% ����� ���� ����� %actor.name% �����%actor.q% �� ����, ������������� � ������ ������.
mteleport %actor.name% 29275 
msend   %actor% � ����� ������ �� ��������� � ���������������� ������, ����� � ��������.
mat %actor.realroom% mechoaround %actor% ���-�� ������ ���� � ����.
~
#29206
���� 20 ��� ���.���������~
0 m 0
~
wait 1
if %amount% <20 then
  ���
  say ���, ����� ��������! � �� �������, 20 ��� �� �������...
  halt
end
wait 1
mecho �������� ������ �������� � � ������� ������ ��������� ������� � �����.
msend   %actor% ������� ������� ��� � ����� � ������ ��������� �������.
mechoaround %actor% ������� ������� %actor.vname% � ����� � ������ ��������� �������.
wait 2s
msend   %actor% ��� ����� ������� �����������, ����� �� ��������� �� �������� ����.
mechoaround %actor% ����� ���� ����� %actor.name% �����%actor.q% �� ����, ������������� � ������ ������.
mteleport %actor.name% 29262 
msend   %actor% � ����� ������ �� ��������� � ��������� �������� ��������� �������.
mat %actor.realroom% mechoaround %actor% ���-�� ������ ���� � ����.
~
#29207
����� �������~
0 f 100
~
mecho �� ���� ������ �������� ���, ������� �� ������ �����.
mecho ���� ������� ����������� � �� ���� ����� ���������� ��� ����������.
mload mob 29211
~
#29208
����������� ������~
0 q 100
~
msend %actor% ����� ������� ����� � � �������� ��������� �� ���.
mechoaround %actor% ����� ������� ����� � � �������� ��������� �� %actor.vname%.
wait 1s
msend %actor% - ������������!
msend %actor% - �� ����� �� �� ������� ��� ���� ��������� ������?
msend %actor% - �������� �����, ��� ����� � ���� �� ����.
~
#29209
������� �����~
0 c 0
�������� �������~
if !(%arg.contains(�����)%) 
  return 0
  halt
end
msend %actor% �������� �����, �� ������� ����� ������� ����� �� ���� � ������.
mechoaround %actor% %actor.name%, �������� �����, ��������%actor.g% ����� ������ �� ������ ������.
wait 1s
switch %random.5%
  case 1
    mecho ����� ���������, � ������ ��-�� ������ ��������� �������.
    wait 1s 
    msend %actor% - �����! ��� ��� ����� ��� ���� �������� �������� ��� �����,
    msend %actor% - ������ �� ���������%actor.g% ����, � �� �����������%actor.g% ������ ���.
    ��� 100 ���  %actor.name%
    wait 1s 
    mecho ����� �������� ����� � ���������� ����� � ����������� � ������ ����.
    mpurge %self%
  break
  case 2
    mecho ����� ���������, � ������ ��-�� ������ ��������� ������� ������.
    wait 1s
    mecho ������������.
    msend %actor% - ����� � ���� ����������, �� ����� �� ���.
    mecho ����� �������� ����� � ���������� ����� � ����������� � ������ ����.
    mpurge %self%
  break
  default
    say ������! �� �� ��� ��� �������, �� �������!
    mkill %actor%
  break
done
~
$~
