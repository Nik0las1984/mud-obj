#67900
������ ��������� ������~
2 e 100
~
wait 3s
wecho _����� ���� ����� ������ ���������� � �� ��������������� ������ �������� �����!
wload mob 67901
detach 67900 %self.id%
~
#67901
����� ��������� ������~
0 f 100
~
mload obj 67903 
~
#67902
������� ������ ������~
2 h 100
~
if (%object.iname% == ������ ������)
  wait 1s
  wecho  ����� ��������� ������ ������ � ����� �������� ������������.
  wait 1s
  wdoor 67904 north room 67912
  wdoor 67912 south room 67904 
  wait 1s
  wecho _��� ����� ��������� ������������, � ������ ��� ����� ������ ������. 
end
~
#67903
���� �������� ���~
0 f 100
~
mecho _�������� ��� ���������� �� ��������� ������ ��������!
mload mob 67908
mload mob 67909
mload mob 67910 
~
#67904
���� �������� �����~
0 f 100
~
return 0
mecho  �������� ����� ���� ��������, ������ ����� ��� ������, � ������.
msend %actor%  ��� �� ��������� ������ ������ �������� ���.
mechoaround %actor%  %actor.name% ��������%actor.g%, ��������%actor.w% �������!
eval damage %actor.hitp%/5
mdamage %actor% %damage%
~
#67905
����� �������� �������~
0 f 100
~
mecho  &g ������� ������ ���������� �� ��������� ������, ������� ����� ���� ����������� ����! &n
foreach victim %self.char%
  mdamage %victim% 75 
done
~
#67906
� ��� � ���������� ��������-1~
0 k 10
~
set char %random.pc%
msend %char% _���������� ������ �������� ����� �������� �������!
%char.position(6)%
%char.wait(2)%
mechoaround %char% _���������� ������ ������ ����� ������� %actor.rname% 
������ ��� �� �����!
~
#67907
� ��� � ���������� ��������-2~
0 k 10
~
mecho _���������� ������ �������� ����� ������� �� ����� ����� �����!
foreach char %self.char%
  if %random.2% == 1
    msend %char% _� ��� ������ ������� ����������� �������!
    mechoaround %actor% _������� ������ ����� � ���� %actor.rname%
    mdamage %char% 75
  end
done
~
#67908
� ��� � ���������� ��������-3~
0 k 5
~
mecho _���������� ������ �������� �������� ����� �� ����� ����� �����!
foreach char %self.char%
  if %random.2% == 1
    msend %char% _� ��� ������ �������� ����� ����������� �������!
    mechoaround %actor% _�������� ����� ������ ����� � ���� %actor.rname%
    mdamage %char% 100
  end
done
~
#67909
����� ����������� �������~
0 f 100
~
mload obj 67917
~
#67910
������ �����(50%)~
2 e 25
~
wait 4s
wecho _����� �� ����� ������ ������� ����� � ������ ������ ������ �������� �� ���!
wload mob 67923
~
#67911
��������� �����~
2 c 100
���������~
if !%arg.contains(�����)% 
  wsend %actor% _��� ��������� �� �� ������?!
  return 0
  halt 
end
wsend %actor% _������ � ������������ �� ��������� �����, ��������� ����.
wechoaround %actor% _%actor.name% ��������%actor.g% �����.
wdoor 67971 north room 67973
wdoor 67973 south room 67971
end
e7 wechoaround %actor%  %actor.name% ��������%actor.g% �����.
~
#67912
����� �������� ������~
0 z 100
~
halt
if (%random.7% == 1) && (%world.curobjs(67931)% < 1)
  mload obj 1218
end
~
#67913
�����~
2 f 100
~
wdoor 67904 north purge
wdoor 67912 south purge
wdoor 67971 north purge
wdoor 67973 south purge
calcuid demonroom 67909 room
attach 67900 %demonroom.id%
~
$~
