#67700
������� �� �����������~
2 c 100
�����������~
if !%arg.contains(�����)% 
  wsend %actor% _���� ��� �� ����������� ���������!?
  return 0
  halt 
end
wsend %actor%  �� ������ ����������� �����, �������� �� �����.
wechoaround %actor%  %actor.name% �����%actor.g% ����������� � �����%actor.q% �� ����.
wteleport %actor% 69151
wsend %actor% _�� ������� �� �����������.
wechoaround %actor%  ���-�� �������� ���� �� �������.
end
~
#67701
� ��� �� ��������(1)~
0 k 20
~
mecho _����������� ������ ������ ���� �� ����� ������ ����� � ���!
foreach char %self.char%
  if %random.2% == 1
    msend %char% _� ��� ������ ������ ����� �������!
    mechoaround %actor% _����� ������� ����� � ���� %actor.rname%
    mdamage %char% 50
  end
done
~
#67702
� ��� �� ��������(2)~
0 k 5
~
mecho  ����������� ������ ��������� ������� ����������, ������ ������ �����!
foreach char %self.char%
  if %random.2% == 1
    msend %char%  � ��� ����� ������ �����, ��������� ��������!!!
    mechoaround %actor%  ������ ����� ������ ����� � %actor.rname%, ������ ������� ���!
    mdamage %char% 100
  end
done
~
#67703
����� ����������� ����~
0 f 100
~
mload obj 67727
~
#67704
� ��� � ������������ ����~
0 k 20
~
mecho  ����������� ���� ������ �������� ����� � ���� �������!
foreach char %self.char%
  if %random.2% == 1
    msend %char%  � ��� ����� �������� ��� ����������� ����!
    mechoaround %actor%  �������� ��� ����������� ���� ������ ����� � ���� %actor.rname%
    mdamage %char% 125
  end
done
~
#67705
�������� � ����~
2 e 100
~
wait 1s
wecho  ����������� ������� ��������, ����������� � �������� ����!
~
#67706
�������� ������~
2 e 100
~
wait 1s
wecho _����� � ����� ����� ����� ����� ����, ����������� �� �������� ����!
~
$~
