#63000
c����� ������������~
0 r 100
~
if %actor.clan% == ��
  switch %random.5%
    case 1
      ������ %actor.iname%
    break
  done 
end
~
#63001
��������� �������~
0 qt 10
~
���� %actor.iname%
~
#63002
������� (�����������)~
0 r 100
~
wait 10
���� %actor.iname% ������ ���� %actor.iname%!
���� %actor.iname% � ����������� � ����� � ���� ���������� ��� ���� ����������.
���� %actor.iname% ���� �� � ���� �������������%actor.g% � ����, ��� ��� �����.
~
#63003
������� (������� ����������)~
0 d 0
��������� �� ������ ������������� �������������� ������~
wait 10
���� %actor.iname% ����.
���� %actor.iname% �������� ����� ����� ���� 200 ���.
���� %actor.iname% ������ ��������� ����� � 300 ���.
���� %actor.iname% ���� ������ ��������, �����-�� �� 150 ���.
*���� %actor.iname% � ��� �� ��������� �������� �������� 800 ���.
���� %actor.iname% ���� ��������.
~
#63004
������� (������� ����������)~
0 m 1
~
wait 1s
if %amount% < 150 
  ���� %actor.iname%  �� �� ��� ������, � ���� �� ���� ������ �� ����!
  ���� %actor.iname% ��. ������ �� �������!
  ���� %amount% ��� %actor.iname%
  halt
end  
switch %amount%
  case 200
    msend %actor.iname% _������� ����������� � ��������� �����.
    msend %actor.iname% _��� ������ ����� ���� ���������!    
    dg_cast '��������' %actor.iname%
  break 
  case 300
    msend %actor.iname% _������� �������� �� ��� � ���-�� ������������.
    dg_cast '������' %actor.iname%
  break 
  case 150
    msend %actor.iname% _������� ����� ����� � ����� �� ����� ���-�� ���������.
    dg_cast '����' %actor.iname%
  break                         
  *case 800
  *msend %actor.iname% _������� ������ ������ �������, ��������� �������� ���� ���.
  *dg_cast '���������' %actor.iname%
break
done
~
#63005
������� ������~
2 e 5
~
wsend %actor.iname% _������� ������, �� ���� ������� �������������� � �������� ��� � ������!
wechoaround %actor.iname% _������� ������, �� ���� ������� �������� ����������� � �������� � ������ %actor.rname%!
~
#63006
������� � ������~
2 e 15
~
wait 10
wecho _�� ������ ����������� ����� ����������.
wecho _����� ��������� ����� �� ������ � ����� ����� ������� ������ �����.
wecho _�� ��� �������� ������ ������, � ����� ������ ��������� �����
wecho _��� ������ �� ����� ����������� �� ���.  
wait 10
wecho _������� ������ ��������� �� �������� � � ������ ����� ���� ����-�� �� �����.
~
#63007
������������ ��������� ������~
2 e 10
~
wait 10
wecho _������� ��������� ����� ������ ���������� �...
wecho _��� ����������, ��� ��� ������ ������ �� ���!
~
#63008
������ ������~
2 e 10
~
wait 10
wecho  ������-�� ������ ��������� ���������� ����� �������.
~
#63009
�����������~
2 e 5
~
wait 1
wecho _�� ����������� � ��������� ������� � ������� ��������� �����.
wecho  ������ �� ������ ��� ������?!
wdamage %actor% 50
~
#63010
�������� ���� � ����� �����~
2 e 15
~
wecho _��� ������ ������ ���� ������� ����������...
wecho _��� ��� ��� ����������?
~
#63011
������ � ��������� �����~
2 e 5
~
eval temp %actor.wait(3)%
wsend %actor% ��� ����������, ��� ���� ���������� ��� ������ ������.
wsend %actor% ���� �������� ����� ��������� � ���, ������ �����
wsend %actor% ����� ������� ������ �������� ���� ��������������� � ����������
wsend %actor% ������� ������ ���� �� ���������� ���.
wechoaround %actor% %actor.iname% ����� ������ �������%actor.u% � � ������� ������%actor.u% � ��������� ���.
wechoaround %actor% ���������� ���� ������� ������ ������ �������� �� ���
wechoaround %actor% ��������������� ���� %actor.rname%.
wechoaround %actor% ����� ��������� ����� %actor.iname% ����%actor.y% � ����
wechoaround %actor% � � ������������ ���������%actor.g% �� ��������.
wdamage %actor% 100
~
#63012
������ (�����������)~
0 r 100
~
wait 1s
���� %actor.iname% ������ ��������.
���� %actor.iname% � ����������� � ������������� ������� � ���� �� ��������� ���
���� %actor.iname% �����������, �� � ����� ������� ���� ��������� ������� ������.
~
#63013
������ (�����)~
0 j 100
~
wait 1
if (( %object.vnum% < 700 ) || ( %object.vnum% > 799 ))
  say ��� ��� �� �����...
  ���� %object.name%
  halt
end
eval ovnum %object.vnum%
wait 1
mpurge %object%
if (%object.val1%<8)
  say �� ��� ����� �� ������� �����?
  ����
  wait 1
  say ���, �� ��������, ������� ������ ��������.
  ���� %object.name%
  halt
end
if %number% < 5
  eval number %number%+1
  global number
  say � ���� ��� �����, ��� ����� ��� ����� �����, ����� ����, �� ��������� ��� ���-������?
  halt
else
  eval number 0
  global number
end
if ( %random.25% < %random.50% )
  ���
  say ������ �� ����������, ��� �����, � ��-�� ������� � ��������...
  eval number 0
  global number
  halt
end
switch %ovnum%
  case 700
    mecho ��� �����. ��� ���, ��� ���� �������.
    mload obj 63052
    ���� ����� %actor.iname%
  break
  case 701
    mecho ��� �����. ��� ���, ��� ���� �������.
    mload obj 63042
    ���� ����� %actor.iname%
  break
  case 705
    mecho ��� �����. ��� ���, ��� ���� �������.
    mload obj 63052
    ���� ����� %actor.iname%
  break
  case 751
    mecho ��� �����. ��� ���, ��� ���� �������.
    mload obj 63051
    ���� ����� %actor.iname%
  break
  case 752
    mecho ��� �����. ��� ���, ��� ���� �������.
    mload obj 63043
    ���� ����� %actor.iname%
  break
  case 754
    mecho ��� �����. ��� ���, ��� ���� �������.
    mload obj 63049
    ���� ����� %actor.iname%
  break
  case 755
    mecho ��� �����. ��� ���, ��� ���� �������.
    mload obj 63053
    ���� ����� %actor.iname%
  break
  case 756
    mecho ��� �����. ��� ���, ��� ���� �������.
    mload obj 63046
    ���� ����� %actor.iname%
  break
  case 757
    mecho ��� �����. ��� ���, ��� ���� �������.
    mload obj 63047
    ���� ����� %actor.iname%
  break
  case 758
    mecho ��� �����. ��� ���, ��� ���� �������.
    mload obj 63050
    ���� ����� %actor.iname%
  break
  case 721
    mecho ��� �����. ��� ���, ��� ���� �������.
    mload obj 63045
    ���� ����� %actor.iname%
  break
  case 722
    mecho ��� �����. ��� ���, ��� ���� �������.
    mload obj 63048
    ���� ����� %actor.iname%
  break
  case 724
    mecho ��� �����. ��� ���, ��� ���� �������.
    mload obj 63044
    ���� ����� %actor.iname%
  break
  default
    � ��� ��� �� ����.
    ���� %object.iname%
    halt
  done
~
#63014
����������� �������~
0 q 100
~
wait 1
msend %actor% ������� ������� ����:
msend %actor% - �� ������� ���� ������� �� ������� ���, %actor.name%!
msend %actor% - ����, ��� �� ������ ��� �� ���� ��������%actor.g%! ���� ���� ������!
msend %actor% - ���� �� ���� ��� ������� ��� ��� ������ �����
msend %actor% - � ������ ���� ����� ��������� �� ������� �������� ������.
~
#63015
���� ������ �������~
0 m 1
~
if (%amount% < 200)
  say �� ����� ����� ���%actor.g% ����� ���������. � � �� ������!
  halt
end
wait 1
msend %actor% - ������� ������� ����:
msend %actor% - ���� �������� ������ � ����� ��, ����� ��������� ���� � �����������.
msend %actor% - � �������� �� �������� ������� - ��� ��� ���� � �����.
msend %actor% - ���� � ����� ������ - ������� ��� ����� � ������.
~
#63016
���� ����� �������~
0 j 100
~
wait 1
If (%object.vnum%==713)
  If (%object.val1%>5)
    Say �������� �����! �������� ��� ���������� ��������!
    If  !(%self.haveobj(60067)%)
      Mload obj 60067
    Else 
      Say ��... ����� � ���� ��� ����. ������ �� ����� ����.
    End
  Else
    Say ��... ����� �� ���������� �������! ����� �� ��������.
  end 
End
If (%object.vnum%==754)
  If (%object.val1%>5)
    Say ������������� ����� ������! � ����� ��� ��� ����������!
    If  !(%self.haveobj(60066)%)
      Mload obj 60066
    Else 
      Say � ���� ��� ���� ������! ��� ���� ���� �� �����!
    End
  Else
    Say ���! ��� ������ �� ���������� ������! ����� �� ��������.
  end 
End
If (%object.vnum%==700)
  If (%object.val1%>5)
    Say ��-�! ������������� �����!
    If  !(%self.haveobj(60060)%)
      Mload obj 60060
    Else 
      Say � ���� ��� ���� ����! ��� ������ �� �����!
    End
  Else
    Say ��-�-��! ���� ������ ��������� � ��������. ����� �� ��������!
  end 
End    
If (%object.vnum%==751)
  If (%object.val1%>10)
    Say �������� ����� ����!
    If  !(%self.haveobj(60068)%)
      Mload obj 60068
    Else 
      Say ���� � ���� ��� ����! ������ ������� ���� �� �����!
    End
  Else
    Say ��..���� ������ ��� �� �������� ��� ����������! ��� ��, ��� �������!
  end 
End  
If (%object.vnum%==722)
  If (%object.val1%>5)
    Say ������������� �����! � ����� ��� ��� ����������!
    If  !(%self.haveobj(60065)%)
      Mload obj 60065
    Else 
      Say � ���� ��� ���� �����! ��� ���� ���� �� �����!
    End
  Else
    Say ���! ���� ������ ������������ ������! ����� �� ��������.
  end 
End
mpurge %object%
if (%self.haveobj(60067)% && %self.haveobj(60066)%)
  say �������! ������ � ������� ������ � ������� ��������!
  say � ��� ������� � �������� ��� � �����
  mecho ������� ���-�� ��������� ��� ������������� � �������� �� � �����.
  ���� ���
  mat 32419 mecho ���-�� �������� ����� � ������ ������ ����.
  mteleport all 32419
end
if (%self.haveobj(60065)% && %self.haveobj(60060)%)
  say �������! ������ � ������� ������ � ������� ��������!
  say � ��� ������� � �������� ��� � �����������
  mecho ������� ���-�� ��������� ��� ������������� � �������� �� � �����.
  ���� ���
  mat 25005 mecho ���-�� �������� ����� � ������ ������ ����.
  mteleport all 25005
end   
if (%self.haveobj(60068)% && %self.haveobj(60060)%)
  say �������! ������ � ������� ������ � ������� ��������!
  say � ��� ������� � �������� ��� �� ��������
  mecho ������� ���-�� ��������� ��� ������������� � �������� �� � �����.
  ���� ���
  mat 18206 mecho ���-�� �������� ����� � ������ ������ ����.
  mteleport all 18206
end
~
#63017
���� �������~
0 n 100
~
wait 1
eval number 0
global number
~
#63018
������� ������ � ������~
0 m 1
~
wait 1
emot ����������%self.g% ������
eval target 0
switch %amount%
  * �����
  case 2600
    eval target 76083
  break
  * ������
  case 4900
    eval target 77040
  break
  default
    ���
    say � ���� �� �� �� ��� ������ ������?
    give %amount% ��� .%actor.name%
    halt
  done
  ���
  emot ������%self.g% ��������� �������� ������
  mechoaround %actor% %actor.name% �����%actor.q% � ������ ����.
  msend %actor% � ��� ����������� ������, � �� ��� �� �������� ��������...
  msend %actor% 
  mteleport %actor% %target% horse
  mechoaround %actor% %actor.name% ������%actor.u% ����� � ������ ����.
~
$~
