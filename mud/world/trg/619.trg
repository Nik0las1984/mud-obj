#61900
������� ������������~
0 r 100
~
if (%quest619.name% == %nil%)
  wait 1s
  ��
  � ����������� ����, %actor.iname%.
  ����� %actor.iname%
  wait 1s
  if %actor.sex% == 1
    � ���� ����� ��, �� ����.
  elseif
    %actor.sex% == 2
    � ���� ������ ��, �� ����.
  end
  � �� ������ ���� ����, ������ � ������� �����.
  � � � � ���� ������� ����������� ���� ��-������.
end
~
#61901
������� ���� �������~
0 d 100
������~
if (%quest619.name% = %nil%)
  set quest619 %actor%
  global quest619
  wait 1s
  � �������, ��� �� �������%actor.g%.
  ��
  wait 1s
  � ���� � ��� �� ������� ������� ���, � ����� � �����.
  � ������� ���� � ��� ����� �� �������, �� ������ ������. 
  � � ��� ���������� ����, ���������� �����, �� �� ���� � �������� ���� ����, ��� ����������.
  wait 1s
  � ��� ��� �����, �������� �������� � ������� ������ �����.
  � � ������, ������� ������ ��� � ��������������.
  � ������ �����, ����� �� �� �������.
  wait 1s
  � ��� ���� ���� �� ���� � ��� ���.
  � ��� ��, ����� � ��� ��� ��� ����������.
  wait 1s 
  mload obj 61900
  ���� ���� %actor.iname%
  detach 61900 %self.id%
  detach 61901 %self.id%
end
~
#61902
���� �����~
0 f 100
~
msend %actor.name% ��� � ���� ������� ����� ������� ������.
mechoaround %actor.name% %actor.iname% ���������� ������ ������� ���� ������.
mload obj 61901
~
#61903
�������~
0 j 100
~
wait 1
if %actor.id% == %quest619.id%
  if %object.vnum% == 61901
    wait 1
    mpurge %object%
    wait 10
    ��
    if %actor.sex% == 2
      � �������, ���������� �����������, �� ������� ���, � � ������� ���� �� ���.
    else
      � �������, ���������� ����, �� ����� ���, � � ������� ���� �� ���.
    end
    � ��� �� ���� ���� �����?
    ���
    wait 1s
    switch %random.50%
      case 1
        mecho _������� ���� � ���� ����������� ���� ������ � �������� ��� ���.
        wait 1s
        mload obj 61902
        ���� ������ .%actor.iname%
        � ��� ���������� ��� � ���� ���-����, ��, �������.
      break
      case 2
        mecho _������� ���� � ���� ����������� ���� ������ � �������� ��� ���.
        wait 1s
        mload obj 61903
        ���� ������ .%actor.iname%
        � ��� ���������� ��� � ���� ���-����, ��, �������.
      break
      case 3
        mecho _������� ���� � ���� ����������� ���� ���� � �������� ��� ���.
        wait 1s
        mload obj 61904
        ���� ���� .%actor.iname%
        � ��� ���������� ��� � ���� ���-����, ��, �������.
      break
      case 4
        mecho _������� ���� � ���� ����������� ���� ������ � �������� ��� ���.
        wait 1s
        mload obj 61905
        ���� ������ .%actor.iname%
        � ��� ���������� ��� � ���� ���-����, ��, �������.
      break
      case 5
        mecho _������� ���� � ���� ����������� ���� �������� � �������� ��� ���.
        wait 1s
        mload obj 61906
        ���� �������� .%actor.iname%
        � ��� ���������� ��� � ���� ���-����, ��, �������.
      break
      case 6
        mecho _������� ������ ����������� ���� ��� � �������� ��� ���.
        wait 1s
        mload obj 61907
        ���� ��� .%actor.iname%
        � ��� ���������� ��� � ���� ���-����, ��, �������.
      break
      case 7
        mecho _������� ������ ����������� ���� ������ � �������� ��� ���.
        wait 1s
        mload obj 61908
        ���� ������ .%actor.iname%
        � ��� ���������� ��� � ���� ���-����, ��, �������.
      break
      case 8
        mecho _������� ������ ����������� ���� ����� � �������� ��� ���.
        wait 1s
        mload obj 61909
        ���� ����� .%actor.iname%
        � ��� ���������� ��� � ���� ���-����, ��, �������.
      break
      case 9
        mecho _������� ���� ����������� ���� ���� � �������� �� ���.
        wait 1s
        mload obj 61931
        ���� ���� .%actor.iname%
        � ��� ���������� ��� � ���� ���-����, ��, �������.
      break
      case 10
        mecho _������� ���� ����������� ���� ���� � �������� ��� ���.
        wait 1s
        mload obj 61932
        ���� ���� .%actor.iname%
        � ��� ���������� ��� � ���� ���-����, ��, �������.
      break
      case 11
        mecho _������� ���� ����������� ���� ������� � �������� �� ���.
        wait 1s
        mload obj 61933
        ���� ������� .%actor.iname%
        � ��� ���������� ��� � ���� ���-����, ��, �������.
      break
      default
        mecho _������� ��� ��� ������� ���� ����������� ������.
        eval temp %actor.gold(+15000)%
        wait 1s
        � ��� ������, ��� ���� ����������!.
      break
    done
    ���� all
  else
    ���
    ���� %object.name%
  end
end
~
#61904
�������� ����� ����~
0 f 100
~
if (%random.3% == 1)
  msend %actor.iname% �� �������, ���, �������, ������ ������� ����� ��������� ����.
  mechoaround %actor.iname% %actor.iname% ���������� ������ ��������%actor.g% ����� ���� �����. 
  mload obj 61919
end
~
#61905
������ - ������ ������������~
0 r 100
~
wait 1s
� �, �� ���� ������ ������ �����.
����
� �����, ����� �������.
���
wait 1s
� ��, �� ����� �, ��� ���-�� �������� ����...
� �� ���� ����� ����, ������ ���.
� �������� ���� ���� �� ��, ��� ��� ����� ������ ����� ������ �������, �� ������ ������.
� ��� � ��������� �������� ���� ����, �� �������� �������� ��� ���������� �����.
� ����� ����� � ��������.
wait 1s
� ������� ��� �������� �����-������, ����� �� ����� ������ ����������!
~
#61906
������ - ������ ������ ����1~
0 j 100
~
wait 1
if %object.vnum% == 61919
  wait 1
  mpurge %object%
  eval addvnum %random.30%
  eval vnum %addvnum%+61920
  wait 10
  � �����, ������, ������!
  if %world.curobjs(%vnum%)% > 3 || %addvnum% > 10
    set addvnum  20
  end
  wait 2s
  switch %addvnum%
  break
  case 1
    wait 1s
    mload obj 61921
    ���� ������ %actor.iname%
    � ���, ���� �� ��������!
  break
  case 2
    wait 1s
    mload obj 61922
    ���� ������ %actor.iname%
    � ���, ���� �� ��������!
  break
  case 3
    wait 1s
    mload obj 61923
    ���� ������ %actor.iname%
    � ���, ���� �� ��������!
  break
  case 4
    wait 1s
    mload obj 61924
    ���� ������ %actor.iname%
    � ���, ���� �� ��������!
  break
  case 5
    wait 1s
    mload obj 61925
    ���� ������ %actor.iname%
    � ���, ���� �� ��������!
  break
  case 6
    wait 1s
    mload obj 61926
    ���� ������ %actor.iname%
    � ���, ���� �� ��������!
  break
  case 7
    wait 1s
    mload obj 61927
    ���� ������ %actor.iname%
    � ���, ���� �� ��������!
  break
  case 8
    wait 1s
    mload obj 61928
    ���� ������ %actor.iname%
    � ���, ���� �� ��������!
  break
  case 9
    wait 1s
    mload obj 61929
    ���� ������ %actor.iname%
    � ���, ���� �� ��������!
  break
  case 10
    wait 1s
    mload obj 61930
    ���� ������ %actor.iname%
    � ���, ���� �� ��������!
  break
  default 
    wait 1s
    � ��� ��������, ����� ��������...
    � ������� ���, ����, ����� � ���������.
  break 
done
end
~
#61907
���������~
2 e 100
~
wait 1s
wecho _��� ����������� �������������� ���������...
~
#61908
����� ����� �����~
2 c 100
�����~
if !%arg.contains(�����)% 
  wsend %actor% _���� ��� �� ������?!
  return 0
  halt 
end
wsend %actor% _������ ������, �������� ���� � �����, �� ��� �� �������� ����� �����.
wechoaround %actor% _%actor.name% �����%actor.q% ����� �����..
wteleport %actor% 61931
wsend %actor% _�� ��������� �� ������.
wechoaround %actor% _���-�� ������ � �������� ������ ����� �����. 
end
~
#61909
����� �������~
2 c 100
�����~
if !%arg.contains(�����)% 
  wsend %actor% _���� ��� �� ������?!
  return 0
  halt 
end
wsend %actor% ������ ������, �������� ���� � �����, �� ��� �� �������� ����� �����.
wechoaround %actor% _%actor.name% �����%actor.q% ����� �����..
wteleport %actor% 61927
wsend %actor% _�� ��������� �� ������.
wechoaround %actor% _���-�� ������ � �������� ������ ����� �����. 
end
~
#61910
������ �����~
2 c 100
�����~
if !%arg.contains(�����)% 
  wsend %actor% _��� ����� �� ��� ������ ?!
  return 0
  halt 
end
wsend %actor% _�� � ������� ������� ����� �� ��������� �����, �������� ������������ ������.
wechoaround %actor% %actor.iname% ����%actor.g% �����, �������� ��������� �����.
wdoor 61976 north room 61977
wdoor 61977 south room 61976
end
~
#61911
�����~
2 f 100
~
calcuid deletetrig 61900 mob
attach 61900 %deletetrig.id% 
attach 61901 %deletetrig.id%
attach 61903 %deletetrig.id%
calcuid deletetrig 61902 mob
attach 61902 %deletetrig.id%
calcuid deletetrig 61918 mob  
attach 61905 %deletetrig.id%
wdoor 61976 north purge room 61977
wdoor 61977 south purge room 61976
wdoor 61912 west purge room 61913
wdoor 61913 east purge room 61912  
~
#61913
���� ������~
0 f 100
~
mload obj 61953
~
#61914
�������� ����������� �����~
2 h 100
~
if (%object.iname% == ����������� �����)
  wait 1s
  wecho _����� ����� �������� ��� ����, ������� ��� ������!
  wait 1s
  wecho _����� �� ������� ���� ����������! 
  wait 1s
  wecho _������ ����� ����������� ����� ����!
  wdoor 61912 west room 61913
  wdoor 61913 east room 61912 
  wait 1s
  wecho _� ��� ����� �� ����������� ��� ����!
end
~
$~
