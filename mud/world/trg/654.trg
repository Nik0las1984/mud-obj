#65400
�������� ���������~
0 m 1
~
if %actor.vnum% != -1
  halt
end
if %amount% < 50
  wait 1s
  ���� %amount% ��� %actor.name%
  wait 1s
  say ���, ������� ���� � �����, ��� ������ �����?!
  wait 1s
  say �� �� ������, ��� ������ �� ���� ������ �����?
  wait 1s
  say � �� ������ ��������� ������ ��������� �� �� ������!
else
  wait 1s
  say ���, ��� ������� ���� ��������.
  wait 1s
  mecho �����-�������� ���� ���������� �������� ������ �� ��������� � ����.
  wait 2s
  say �� ��� ���, �����, ���� ��������.
  mload obj 65400
  wait 1s
  ��� ��� %actor.name%
end
~
#65401
����� � ���������....~
0 r 100
~
wait 1s
say ����������� ���!
wait 1s
say � ������� �������� ������, � ������������� ������ ��� ���� �������������
wait 1s 
say �� �� ���������, ����� �� 1000 ��� � ���� ��� � ������ ����������,
say ��� � �����, �������� �����������, ��� ������, ������� �����������,
say ��� �� ��������, � � ��������, ��� ����� �� �����!
����
attach 65402 %self.id%
~
#65402
����� �������� �������������~
0 m 100
~
if (%actor.vnum% != -1)
  halt
end
if (!%actor.rentable%)
  wait 3
  ���� %amount% ���
  ���
  wait 1s
  say ��� � ����� ���� ������,
  say �� ����� �� � ������,
  say �� ����� ��� ��������,
  say ������� ������ ��������:
  say ������ ����� �������
  say � ����� ������ ����� ��� ���!
  log %actor.iname% ������� ������ �� ����� � ��!
  halt
end
if (%self.hitp% >= %self.maxhitp%)
  set was %self.hitp%
  eval temp %self.hitp(-250)%
end
���
if (%amount% < 1000)
  wait 1s
  ���� %amount% ��� .%actor.name%
  wait 1s
  say ����, ��������� ����� - 
  say ��� ��������� ������, 
  say � ���� ������ ��� ���� �����,
  say ���� ����� ����� ������� �� � ����.
  wait 1s
  %self.hitp(%self.maxhitp%)%
  ���
  halt
end
wait 1s
mecho �������� ������ ��-�� ������ ��������� ���������,
mecho � ������� ������� �����, ����������� ����� �������������� ����������.
wait 1s
say ����� ��� ��� ����� �
say � ���� ��� �����
say �� �� ���, ���� ��� � ��� ���
say ������ ��� ����� ���� -
say � ��� ����� �� ���� ��� ������ �� �����,
wait 1s
say � ����� ��� ������� �����,
say ����� ���� ��� � �������,
say � ���� �� �� ����� ����
say ��� ������� �������� -
say ������� � �������
say �������� ������� �����,
say � ���� �������� ������
say �� ������ ������ ����
say ����� ������� �������
say �������� ����� ���������,
say �������� ������ ��� ����,
say � ����� ��� ��� ��� ���, 
say ��� ��������� �������
say ����� ����� � � ���� ����
say ���� �������� ������,
say ������� ����� ����������.
wait 1s
say ��� � ��� �� ��� �����,
say �� � ��� ��� �������.
say ����� ��� ���� �� ���,
say ������� �� ���� ������,
say � ���� ������� ������� 
say ����� ���������� ������,
say ��� � ��� ��� � ����� ���������
wait 1s
say �������� ������ �������, ������� �� 6 ������,
say �� ��� ����� �������, � ��������� �������,
say �� ����� �� ������, � ������ ����� ��������
say � �� ��� ���� � ������ ���
wait 1s
say ���� ����� ��� ��� ����,
say ��� ������� �� �����,
say ����� ����� �������
say � ������� � ������.
wait 1s
���
say � ��� ���������� ���� ���� �������... �� � ���� ������ ��� ����, ����� �����
say ����� ������� ���� ��� ������� � �������, �� ������� � �� �������,
say ������� �� ��� ��������� �� �����.
wait 1s
say �� ������ ���� �������� � ��������� �����, � �������� ��� ���������� ��������� -
say ������, ��� �� ��������� - ������ ������� ������ � ���� ������ ����
wait 1s
say ���� ����� � ��� ���� ��� �����...
say �� ���� ���������, � �� �������� ���� ������!
attach 65403 %self.id%
if (%was%)
  %self.hitp(%was%)%
end
���
~
#65403
����� ����� �� �����~
0 d 1
���� �� ������� ��������~
wait 1
if (%actor.vnum% != -1)
  halt
end
if (!%actor.rentable%)
  wait 3
  say �����������, �������!
  log %actor.iname% ������� ������ �� ����� � ��!
  halt
end
say ����� ���� �� ����������� ���������!
mload o 65404
���� ���� .%actor.name%
%self.wait(6)%
wait 1s
mecho ����������� �������� ������� � ��� ������ �������, � ����, �������� �������.
wait 3s
msend %actor% �� �� ���������� � ����������� � �������� �����.
mechoaround %actor% %actor.iname% ��������%actor.u% � �������� �����.
wait 1s
mecho ������ �� ������, ���� ����, � ��������� ����� �������� ������ ��������� �� �����.
mecho �� �������� ��������, ��� ������ ����� �����-����� �������... � ��� ���������, �����...
mteleport all 78900
detach 65401 %self.id%
detach 65402 %self.id%
detach 65403 %self.id%
~
$~
