#13400
������������� ������������ ����~
1 c 2
�������~
wait 1
if !%arg.contains(���������)%
  osend  %actor% ��� �� ������ ���������?
  halt
end
osend %actor% �� ����� ��������� ���������.
if %actor.clan% != ��
  halt
end
if %world.curmobs(13400)% > 50
  osend %actor% ...� ������ �� ���������!
  halt
end
oechoaround %actor% %actor.name% ����� ��������%actor.g% ���������.
wait 1s
oload mob 13400
oecho ��������� ���� ����� � ����� ���� �������� ����������� ����.
oforce %actor% �������� ����
wait 1
opurge %self%  
~
#13401
����������� ������������ ����~
0 c 1
�������~
if  (%actor% != %self.leader%)
  msend %actor% ��� �� ��� ������.
  halt
end
if (%actor.clan% != ��) 
  mechoaround %actor% %actor.name% �������%actor.u% �������, �� ���� ��� � ������� � �������.
  msend %actor% �� ���������� �������, �� ���� ���� ��� � ������� � �������.
  halt
end
mechoaround %actor% %actor.name% ������ ������%actor.g%.
msend %actor% �� ������ ������� ����� �����. 
mload obj 13401
���� ����� .%actor.name%
wait 1s
mecho ����������� ���� ��������� �� ����� ������.
wait 1
mpurge %self%
~
#13402
����� � �����~
2 c 1
����������~
if !%arg.contains(������)%
  wsend       %actor% ���� ��� �� ������ ����������???
  halt
end
wsend %actor% �� ���������� �� �������� � ������.
wechoaround %actor% %actor.name% �������%actor.u% � ������.
wteleport %actor% 13446
wechoaround %actor% ���-�� ���������� � ������.
~
#13403
�������� �����~
1 gj 100
~
if (%actor.clan% == ��) 
  halt
end
osend %actor% %self.name% ��������%self.u% � ����� �����.
oechoaround %actor% %self.name% ��������%self.u% � ����� %actor.rname%.
wait 1
opurge %self%
~
#13404
����������� � �����~
2 c 1
���������~
if !%arg.contains(�����)%
  wsend %actor%  ���� ��� �� ������ ���������???
  halt
end
if !%actor.rentable%
  wsend %actor% _�� ���������� ������������� ������, �� ����������� ������ ���� �������� �� ������.
  halt
end
wsend %actor%  �� ��������� �� ��������.
wechoaround %actor%  %actor.name% ������%actor.u% �� ��������.
wait 1s
wsend %actor.name%   �� ��������� ������ ����� ������������ �������!
wteleport %actor.name% 13445
wechoaround %actor%  ���-�� �������� �� �������� � �����.
~
#13405
��������� ������ � ����� ����� ���1~
2 c 100
�����~
if !%arg.contains(���)%
  wsend  %actor% ���� ��� �� ������ ��������?
  halt
end
wsend %actor%  �� ������������ � ���.
wechoaround %actor%  %actor.name% ���������%actor.u% � ���.
wteleport %actor% 13465
wechoaround %actor%  ���-�� ���������%actor.u% � ��� ����� �� ����.
~
#13406
��������� ������ � ����� ����� ���2~
2 c 100
�����~
if !%arg.contains(���)%
  wsend  %actor% ���� ��� �� ������ ��������?
  halt
end
wsend %actor%  �� ������������ � ���.
wechoaround %actor%  %actor.name% ���������%actor.u% � ���.
wteleport %actor% 13467
wechoaround %actor%  ���-�� ���������%actor.u% � ��� ����� �� ����.
~
#13407
����� ��� �� �����1~
2 c 100
�����~
if !%arg.contains(���)%
  wsend  %actor% ���� ��� �� ������ ��������?
  halt
end
wsend %actor%  �� ������������ � ���.
wechoaround %actor%  %actor.name% ���������%actor.u% � ���.
wteleport %actor% 13471
wechoaround %actor%  ���-�� ���������%actor.u% � ��� ����� �� ����.
~
#13408
����� � ��� �� �����2~
2 c 100
�����~
if !%arg.contains(���)%
  wsend  %actor% ���� ��� �� ������ ��������?
  halt
end
wsend %actor%  �� ������������ � ���.
wechoaround %actor%  %actor.name% ���������%actor.u% � ���.
wteleport %actor% 13474
wechoaround %actor%  ���-�� ���������%actor.u% � ���.
~
#13409
������ � ����� ����� ���3~
2 c 100
�����~
if !%arg.contains(���)%
  wsend  %actor% ���� ��� �� ������ ��������?
  halt
end
wsend %actor%  �� ������������ � ���.
wechoaround %actor%  %actor.name% ���������%actor.u% � ���.
wteleport %actor% 13481
wechoaround %actor%  ���-�� ���������%actor.u% � ���.
~
#13410
����� ��� �� �����3~
2 c 100
�����~
if !%arg.contains(���)%
  wsend  %actor% ���� ��� �� ������ ��������?
  halt
end
wsend %actor%  �� ������������ � ���.
wechoaround %actor%  %actor.name% ���������%actor.g% � ���.
wteleport %actor% 13401
wechoaround %actor%  ���-�� ���������%actor.u% � ��� ����� �� ����.
~
#13411
���� �����~
0 q 100
~
if %actor.clan% == ��
  halt
end
���� &B���������� ����� &R%actor.name%&n &B� ��� �� ������� ���������.&n
~
#13412
������ ���� �����~
0 d 100
����������~
wait 1
if %actor.vnum% != -1
  halt
elseif %actor.clan% == ��
  say ������-������...
  wait 1
  if %actor.bank% < 665
    ���
    say �, �� � ���� ����� �� ������ ����!
    halt
  end
  eval buffer %actor.bank(-665)%
  mload obj 13403
  mload obj 13404
  mload obj 13405
  mload obj 13406
  mload obj 13407
  mload obj 13408
  mload obj 13409
  mload obj 13409
  mload obj 13410
  mload obj 13410
  mload obj 13411
  mload obj 13412
  mload obj 13412
  mload obj 13413
  mload obj 13414
  mload obj 13415
  * mload obj 13425
  mload obj 139
  ����� ��� ����
  say ��� ���� �����.
  give all .%actor.name%
  drop all
  wait 1
  say ������ ���%actor.g% ���� � ����� ���� - �� ������%actor.w% ���.
else 
  say ������� �� �������� ������ � ������� �����!
  say � ���� �� �� ��� ������? � �� ����� ��������!
  msend %actor%  %self.name% ������ ��������� ���������� ������, � �� �������� ���������� � ������������.
  mteleport .%actor.name% 13403
  mecho %self.name% ������ ��������� ���������� ������, � %actor.name% �����%actor.g% �� ����.
end
~
#13413
����� � �������~
2 c 1
�����~
if !%arg.contains(������)%
  wsend  %actor% ���� ��� �� ������ ��������?
  halt
end
wsend %actor%  �� � ������ �������� � �������.
wechoaround %actor%  %actor.name% � ������ ������%actor.g% � �������.
wteleport %actor% 13479
wechoaround %actor%  ���-�� ������ � ������� ����� �� ����.
~
#13414
������ �����~
0 d 100
����~
wait 1
if %actor.vnum% != -1
  halt
end
if %actor.clan% != ��
  say ������ � ��� ���� ����...
  say ������� �� �������� ������ ����� ����!
  say � ���� �� �� ��� ������? � �� ����� ��������!
  msend %actor%  %self.name% ������ ��������� ���������� ������, � �� �������� ���������� � ������������.
  mteleport .%actor.name% 13403
  mecho %self.name% ������ ��������� ���������� ������, � %actor.name% �����%actor.g% �� ����.
  halt
end
wait 1
if %world.curobjs(13443)% > 100
  say ����! ���������...
  ���� .%actor.name%
  ������
end
mload obj 13443
if %actor.bank% < 50
  ���
  say �, �� � ���� ����� �� ������ ����!
  halt
end
eval buffer %actor.bank(-50)%
say �� ���� �� � ��� ���?
���
wait 2s
say �� ��� �� ��...
give ���� .%actor.name%
drop ����
~
#13415
��������, ������������� ��������...~
0 d 1
� �~
wait 2
set text � ����� ������� ������
if (%speech% == %text%) && (%actor.name% == ������)
  say � ����� ���������� ������!
end
~
$~
