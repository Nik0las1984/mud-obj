#12400
���� � ����������~
2 c 0
����������~
if  !%arg.contains(�����)% || !%actor.rentable%
  wechoaround %actor% %actor.name% �����%actor.g% ������� ������ �����, �� ��� ����������.
  wsend %actor.name% �� ����� �� ����� ������� ������ ������� �� ��������.
  halt
else
  if %actor.clan% == �� || %actor.clan% == ��� || %actor.clan% == ��� || %actor.clan% == ��
    wechoaround %actor% %actor.name% ��������%actor.g% ������ � �������, ���� ������%actor.g% ��������� ���� � �����%actor.a%.
    wsend %actor% �� ������������ � �����, ���������� �������� �����, � ��� ��������� ���������� �����.
    wteleport %actor% 12645 horse
    wait 1s
    wsend %actor% ������ ��������� ��������� �� �������� ��� ������.
    wechoaround %actor% %actor.name% �������� ������%actor.u%.
  end
end
~
#12401
���� �� �����~
2 c 0
��������~
if !(%arg.contains(����)%)
  wechoaround %actor% %actor.name% ����� �������%actor.u% ��������� ����.
  wsend %actor.name% ��� ������ ������ ������ ����������.
  halt
end
wechoaround %actor% %actor.name% �������%actor.u% �� �������.
wsend %actor.name% �� ������ ����������� ����, ������������ ������� ����  - ���� ������� ������,
wsend %actor.name% �������, ���� ��������� ��� �� ������������ �����, ������ �������� ��������������
wsend %actor.name% ���������� ������.
~
#12402
���� �� ����~
2 e 100
����~
wait 1
if %random.99% <= 40
  wechoaround %actor% %actor.name% ��������� � � ������ ����� ��������%actor.u% ����.
  wsend %actor% ����� �� ���������� � � ������ ����� �������� ����.
  wsend %actor% ���... ����!!!
  wsend %actor% ������ ���� �����, �� ����������� � ������ ������ �����, ������� �������
  wsend %actor% ��� ���� �� �������. �� �� ����� - �� ����� ������� �� ��������� � ��������
  wsend %actor% ������. �� ��� ������...
  wteleport %actor% 12429
  eval dam124 %actor.hitp%*1/2
  wait 1
  wdamage %actor% %dam124%
  wsend %actor% �� ���� �� ������� � ������� ���� ���, � �������� ����.
  wsend %actor% � ����������, �� ������� �� �������� �� ����.
  wat 12429 wechoaround %actor% %actor.name% �� ������� � ������������ ����������%actor.u% �� �����.
else
  wsend %actor% ��� �� ���������� ����� �� ����������, �� ��� ������� �������� ����������.
  wechoaround %actor% %actor.name% �������%actor.u%, �� ����� �����%actor.g% ��������� ����������.
end
~
#12403
����� � ������~
2 c 0
��������~
if !(%arg.contains(����)%)
  wechoaround %actor% %actor.name% ����� �������%actor.u% ��������� ����.
  wsend %actor.name% ��� ������ ������ ������ ����������.
  halt
end
wechoaround %actor% %actor.name% �������%actor.u% �� ����.
wsend %actor.name% �� ����� ������� ���� ��������. ����� � ��� ������ ��������� :
wsend %actor.name% "�� ������ ����� ���� �������� ����������".
~
#12404
���� � ����~
2 c 0
�����~
if !(%arg.contains(����)%)
  wechoaround %actor% %actor.name% ���������� �������%actor.u% ������� ����-��.
  wsend %actor.name% �� ����������, � �� ����� ����, ���� ��������� �������.
  halt
end
wechoaround %actor% %actor.name% �����%actor.g% �� ����������� � ������%actor.q% � ����.
wsend %actor.name% ����������, �� �� ������������ ������� � ����.
wait 1s
wteleport %actor.name% 12444
wsend %actor.name% ����� ��������� ����� ���� ����� ���������� �������,
wsend %actor.name% � �� ����������� �� ���� ����.
~
#12405
���� ����~
0 j 100
~
wait 1
if (%object.vnum% == 12400)
  wait 1
  mpurge %object%
  wait 1s
  tell %actor.name% ��, ��� ��� ����� ����������� ������� �����, %actor.name%!
  tell %actor.name% ������ � �������-�� ����� ������� ������!
  wait 10
  mecho ������ ����� ��������� ��� ������� ������. 
  mecho ���� ������� ����������� � �� ���.
  �����
  tell %actor.name% �������� ��� �� ������� ���� ������, ���� ������������ �� ��������.
  ���
  if %world.curobjs(12404)% < 15
    mload obj 12404
    tell %actor.name% ����� ���� ���� ����, ����� �� ���� ����������.
    ���� ���� %actor.name%
  end
else
  wait 1
  tell %actor.name% ������� ��� �������, ��� �� ������ ��� ������ � ���� �������.
  tell %actor.name% �� ��� �� �� ��� � ���.
  eval getobject %object.name%
  ����� %getobject.car%.%getobject.cdr%
  halt
end
~
#12406
���� � ������~
2 c 0
����������~
if !(%actor.haveobj(12404)%)
  %send% %actor.name% - ��� ���?
  halt
end
if !(%arg.contains(����)%)
  wechoaround %actor% %actor.name% ���������� �������%actor.u% ���-�� �������.
  wsend %actor.name% �� ��� � �� ������ ��� ���� ������.
  halt
end
wechoaround %actor% %actor.name% ���������%actor.g% ���� � ���������� �����.
wsend %actor.name% �� ���������� ����, ����� �� ��������� ������ � �������, �������� ������.
wdoor 12403 north flags a
wdoor 12403 north room 12470
wait 5s
wecho ����� �������� ������ �� �����.
wdoor 12403 north purge
~
#12407
�����~
0 r 100
~
halt
eval agr %random.50%+%random.50%
if ( %actor.clan% != �� ) && ( %agr% <= 25 )
  mkill %actor%
elseif %agr% <= 10 
  mkill %actor%
end
~
#12408
zone reset~
2 fg 100
~
detach 12609 %world.room(12666)%
detach 12609 %world.room(12667)%
detach 12609 %world.room(12668)%
attach 12609 %world.room(12666)%
attach 12609 %world.room(12667)%
attach 12609 %world.room(12668)%
~
$~
