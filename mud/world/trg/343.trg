#34300
������ � ������3  � ���� 34312~
2 e 100
~
wdamage %actor% 19
wsend       %actor% "������! ����������!" - �������� ��, ����� ��� ������ ���������� ��� � �����!!!!
wechoaround %actor% "������! ����������!" - �������� ��, ����� ��� ������ ���������� ����� %actor.rname%!!!!
wdamage %actor% 19
wload mob 34300
wload mob 34300
if (%exist.mob(34301)%)
  calcuid glavar 34301 mob
  attach 34302 %glavar.id%
  exec 34302 %glavar.id%
end
calcuid zasada 34312 room
detach 34300 %zasada.id%
~
#34301
����� ������ � ����~
2 f 100
~
if !(%random.35% == 1)
  calcuid zasada 34312 room
  detach 34300 %zasada.id%  
  calcuid zasada 34322 room
  detach 34303 %zasada.id%
  return 0
  halt
end
switch %random.2%
  case 1
    calcuid zasada 34312 room
    attach 34300 %zasada.id%  
  break
  case 2
    calcuid zasada 34322 room
    attach 34303 %zasada.id%  
  break
  default
  break
done
end
calcuid glavar 34301 mob
attach 34302 %glavar.id%
~
#34302
������� ��� �� ������~
0 z 100
~
mkill %actor%
wait 2
say ��� ��! �� ����, �������!!!
detach 34302 %self.id%
~
#34303
������ � ������3  � ���� 34322~
2 e 100
~
wdamage %actor% 19
wsend       %actor% "������! ����������!" - �������� ��, ����� ��� ������ ���������� ��� � �����!!!!
wechoaround %actor% "������! ����������!" - �������� ��, ����� ��� ������ ���������� ����� %actor.rname%!!!!
wdamage %actor% 19
wload mob 34300
wload mob 34300
wload mob 34300
wload mob 34300
wload mob 34301
calcuid glavar 34301 mob
attach 34302 %glavar.id%
exec 34302 %glavar.id%
detach 34303 %self.id%
~
#34304
������� � �������~
0 h 30
~
wait 1
if %actor.vnum% == 34632
  ����
  mshou ������! �� �������� ����� �������! ��� �����!!!
end
wait 1
if %actor.vnum% == 34631
  ����
  mshou ������! �� �������� ����� �������! ��� �� �����!!!
end
wait 1s
say ��� ������ �� ����� � �����.
say ����� ��������� � �������� ������ �� ����-�������. � �� �������.
~
#34305
������� � ������~
0 q 10
~
wait 3s
���
~
$~
