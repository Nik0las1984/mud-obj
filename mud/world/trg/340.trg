#34000
����������� ���������~
0 r 100
1~
if %direction%==south
  ������ %actor.name%
  tell %actor.name% �� ��� ��������?
  tell %actor.name% ������ � ����� ����������� ���� �� ������ ����� ����.
  tell %actor.name% �� ��������� � ��� ������ �� ����, ������ �� 10 ���.
 else
wait 1s
  tell %actor.name% ����� ����, %actor.iname%!
  tell %actor.name% ���� ������ ����������� � �� �� ������� ������� �� ���� �� ������ �����.
  tell %actor.name% ����� ��� � ������ ����.
  ����
wait 1s
  tell %actor.name% �� 10 ��� � �������� ���� �� ������ �����.
end
~
#34001
��������� � ������� �� �����~
0 m 1
~
if %amount%>=10
if %amount%>10
  ������� %actor.name%
  tell %actor.name% ��! ������� �� ������ ���� ��������� ����� ������!!
end
tell %actor.name% ��� ������ ����������! � ������ �������� �� �������!!!
���� %actor%
wait 1s
msend %actor% - �������� ������� ��� � �����, ������ ������� � ������ � ������� ������.
mechoaround %actor% %actor.iname% �����%actor.q% � ����� � ���������. � ��� ������� � ���������������� ������
wait 2s
if %actor.realroom% == 34013
mteleport %actor% 34018 horse
else
mteleport %actor% 34013 horse
end
msend %actor% - �������� ������ ������� ���� � ������� ��� �� ��������������� �����.
mechoaround %actor% �������� �������� � ������. �� ����� �����%actor.q% %actor.iname%.
else
  tell %actor.name% 10 ���! �� ��� ������� �� ������?
 give %amount% ��� %actor.name%
end
~
#34002
������ � ���� � �������������� �����~
2 e 100
~
wait 1s
if (%time.minth% == 12 ) || (%time.minth% == 1 ) || (%time.minth% == 2 )
halt
end
if (%actor.realroom% != 34015)&&(%actor.realroom% != 34016)
  wsend %actor% �� �� ��� � ����.
  halt
end
wsend %actor% - ��������������� �� ������ �� � ������ �������� � ����... �� ��� ���� ����������� :(
wechoaround %actor% - %actor.iname% �����������%actor.u% �� ������ � � ������ "�-�-�-�-�!!!" ����%actor.g% � �����, ������ ��� �����.
if %actor.realroom% == 34015
  wteleport %actor% 34048
else
  wteleport %actor% 34049
end
~
#34003
����� ���~
0 b 100
~
return 0
wait 1
if %self.fighting%
 halt
end
eval fchar %self.people%
while %fchar%
 if %fchar.vnum%==-1
  switch %random.18%
   case 1
    msend %fchar% ������ ������ �����, �������� ������� �� ������ � ����� ���������.
    break
   case 2
    msend %fchar% ����� �������� ����� ��������� ������ ���� �����������..
    break
   case 3
    msend %fchar% �� ����������� ����� ��������� ������ ���������� �� �����.
    mdamage %fchar.name% 15
    break
   case 4
    msend %fchar% �������� ���� ��� � ��������� ������.
    break
   default
    break
  done
 end
 eval pc %fchar.next_in_room%
 if %pc.id% && %pc.id%!=%fchar.id%
  makeuid fchar %pc.id%
 else
  unset fchar
 end
done
~
$~
