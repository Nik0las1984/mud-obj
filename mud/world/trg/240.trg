#24000
���������~
2 e 100
~
wait 2
if %actor.religion% == 1
  wsend %actor.name% _�� ���������� �� ����� ��� ��������, �������������� � ���� ���������� �������.
end
~
#24001
����������_��������_������_���������~
0 q 100
~
wait 1
if %actor.religion% == 0
  �� %actor.name% �������� � ����� ���������?! ������ ������� ������� ���, ��������!
  msend %actor.name% ���� ������� ������ ������ �� ���.
  mechoaround %actor.name% ���� ������� ������ ������ �� %actor.vname%.
end
~
#24002
��������~
0 qt 100
~
wait 5
mecho _��������, ������� ���, ������� �� ��� �����:
mecho _- � ��� ���� �������, �������, ������!..
mecho _- � �� ��������� �� ����?
mecho _- ���������� ������ ����� 3 ����, ������ ������� 7 ���, �����_- 15!
~
#24003
�������~
0 m 1
~
wait 3
if %amount% < 3 
  � �� ��� ������ � ������ ���� �� ���.
  ��� %amount% ��� %actor.name%
  halt
end
switch %amount%
  case 3
    � ���, ������ ������!
    mload obj 24057
    ���� ������ %actor.name%
  break
  case 7
    � ��� ���� ��������!
    mload obj 24056
    ���� ������ %actor.name%
  break
  case 15
    � ����� ����� ������!
    mload obj 24058
    ���� ����� %actor.name%
  break
  default
    ���
    say � ���� � �� �� ��� ������ �������?
    ��� %amount% ��� %actor.name%
  done
  set buf %self.gold(0)%
~
#24004
�������_�������~
0 q 30
~
wait 1
�� %actor.name%
switch %actor.sex%
  case 1
    �� %actor.name% ��������, ��������! ��� �������!
  break
  case 2
    �� %actor.name% ��������, ��� �������!
  break
done
�� ����� ����������
~
#24005
����_�������_������~
0 m 0
~
wait 1
if %amount% == 1 
  � �������!
  �� %actor.name%
  �� �������� ������� ������� ������� � ���� ������ �� ����
  halt
end
if %amount% > 99
  � ���!
  �� ��������� �� ������ � ��������� ������ ��� �� ���������� ��������
  msend %actor.name% _��, �����, ������� ����������� ������ ���.
  msend %actor.name% _�������� ������� ��������� ���, ��� ����� ���-�� ������� ��� � �����.
  dg_cast '��������' %actor.iname%
  msend %actor.name% _�� ����� ����������, ������� ������� ������� ����� �������. �� �������� ������� ��� �������.
  msend %actor.name% ��������� �������������� ��������� ���.
  mechoaround %actor.name% ��������� �������������� ��������� %actor.dname%.
  halt
end
mload obj 24059
mecho ��������� ������ ��-�� ������ �������.
��� ������� %actor.name%
�� %actor.name%
wait 1
if %random.1000% <= 100
  %load% obj 229
  ���� ��� %actor.name%
  � ����� ����������!
  detach 24005 %self.id%
end
~
#24006
��������1~
0 r 50
~
wait 1s
set i %random.3%
switch %i%
  case 1
    � � � ������ ����� ����, � ���� ���� ������� �����!
    � � ��� ������� �� �����, � ���� ����� ��� ������!
    ����
  break
  case 2
    mecho �������� ������ ���� ��������� � ����� ����� ������� ������ �� �����.
  break
  case 3
    mecho �������� ����� � ���� �����, ���������� ������ ��� ������� � �������� ������ ���.
    � � - �����-�����.
  break
done
~
#24007
���� ���� �������~
0 m 1
~
if (%amount% < 200)
  say �� ����� ����� ���%actor.g% ����� ���������. � � �� ������!
  halt
end
wait 1
� ���� ������ � ������� ������� - ������� ��� ���� � �����.
~
#24008
���� ����� �������~
0 j 100
~
wait 1
If (%object.vnum%==705)
  If (%object.val1%>5)
    Say �������� ������ ����� !
    If !(%self.haveobj(60061)%)
      Mload obj 60061
    Else
      Say ��... ����� � ���� ��� ����. ������ �� ����� ����.
    End
  Else
    Say ��... ����� ����� �� ���������� ������ ��� ��������.
  end
End
If (%object.vnum%==700)
  If (%object.val1%>5)
    Say ��-�! ������������� �����!
    If !(%self.haveobj(60060)%)
      Mload obj 60060
    Else
      Say � ���� ��� ���� ����! ��� ������ �� �����!
    End
  Else
    Say ��-�-��! ���� ������ ��������� � ��������. ����� �� �������!
  end
End
%purge% %object%
if (%self.haveobj(60060)% && %self.haveobj(60061)%)
  wait 1
  say �������! ������ � ������� ������ � ������� ��������!
  say � ��� ������� � �������� ��� � �������.
  mecho ������� ���-�� ��������� ��� ������������� � �������� �� � �����.
  ���� ���
  mat 27031 mecho ���-�� �������� ����� � ������ ������ ����.
  mteleport all 27031
end
~
#24009
�������� ����������~
0 q 100
~
wait 2
if %self.fighting%
  halt
end
say ������ ����.
say ������������� ������?
set j 0
set needgold 30
foreach target %self.pc%
  eval needgold %needgold%+%target.level%*(%target.remort%+2)
  eval j %j%+1
done
if %j% > 1
  say �� ���� ��� ������...
else
  say � ���� �����...
end
mecho �������� ���-�� �������� ��������.
wait 2
say ...%needgold% ���.
���
~
#24010
��������� ���������~
0 m 1
~
wait 2
set needgold 30
foreach target %self.pc%
  eval needgold %needgold%+%target.level%*(%target.remort%+1)
done
mecho �������� ���������� ������.
wait 1s
if %amount% < %needgold%
  say �� ������� ��� ���� �� �������� ���� ������, �� ��� � ������.
  ���
  give %amount% ��� .%actor.name%
  halt
end
���
wait 1
mecho � ��� �� ��� ������� �� ����.
wait 1
mat 8508 mecho ���-�� ����� � ������, ������������ � ������.
mteleport all 8508
end
~
#24011
����������� �������~
0 r 100
~
eval char %actor%
wait 1
msend %char% ������� ������� ����:
msend %char% - �� ������� ���� ������� �� ������� ���, %char.name%!
msend %char% - ���� ��� �� ������ ��� �� ���� ���%char.y%! ���� ���� ������!
msend %char% - ���� �� ���� ��� ������� ��� ��� ������ �����
msend %char% - � ������ ���� ����� ��������� �� ������� �������� ������.
~
$~
