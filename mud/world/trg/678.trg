#67800
��������� �����~
2 e 100
~
wait 1s
wecho _��� ����������� ������� ��������� �����.
~
#67801
� ��� �� ������� ���~
0 k 5
~
set char %random.pc%
msend %char% _����� ��� ������� �� ������ ���� ����� � ��� �������� �� �����!
%char.position(6)%
%char.wait(4)%
mechoaround %char% _����� ��� �������� ����� � ����� ���������� ��� ������ %actor.rname% 
������ ��� �� �����!
~
#67802
� ��� � �������� ������~
0 k 5
~
set char %random.pc%
msend %char%  �������� ����� ������ �����, ��������� ��� ��������!
%char.position(6)%
%char.wait(2)%
mechoaround %char%  �������� ����� ��������� %actor.vname%
~
#67803
� ��� � ������ �����~
0 k 5
~
mecho _������ ��� ������� ��������� ������ ������! 
foreach char %self.char%
  if %random.2% == 1
    msend %char% _� ��� ������ ��������� ������ ������, ������� ������ �����!
    mechoaround %actor% _��������� ������ ������� ����� � ���� %actor.rname%
    mdamage %char% 100
  end
done
~
#67804
������� ����� ��������~
2 c 100
��������~
if !%arg.contains(��������)% 
  wsend %actor% _���� ��� �� �������� ���������!?
  return 0
  halt 
end
wsend %actor% _������������ � ��� ������� ������������ �� �������� ����� ��������.
wechoaround %actor% _%actor.name% �����������%actor.g% ����� ��������.
wteleport %actor% 67855
wsend %actor% _�� ������������ ����� ��������.
wechoaround %actor% _���-�� ������� ����. 
end
~
#67805
����� �������� �������~
2 c 100
��������~
if !%arg.contains(��������)% 
  wsend %actor% _���� ��� �� �������� ���������!?
  return 0
  halt 
end
wsend %actor%  ������������ � ��� ������� ������������� �� �������� ����� ��������.
wechoaround %actor% _%actor.name% �����������%actor.g% ����� ��������.
wteleport %actor% 67853
wsend %actor% _�� ������������ ����� ��������.
wechoaround %actor% _���-�� ������� ����. 
end
~
#67806
���������� ����� ����~
2 c 100
��������~
if  !%arg.contains(�����)%
  wsend %actor% _��� �� ������ ��������?!
  halt
end                                              
wechoaround %actor% _%actor.iname% ������%actor.g% �� ������ �� ������ ����, ������� ���.
wsend %actor% _�� �������� ���� ����� ����.
wload obj 67825
~
$~
