#7200
�������� �����~
1 c 2
���������~
if !%arg.contains(����)%
  osend %actor% �� ����?
  halt
end
if !%arg.contains(��������)%
  osend %actor% � ��� ������?
  halt
end
if !%actor.haveobj(7201)%
  osend %actor% ���� � ��� ���������� �����.
  halt
end
osend %actor% �� ����� ���������� �� ����� ��������.    
oechoaround %actor% %actor.iname% ����� ���������%actor.g% �� ����� ��������.
oload obj 7203
oforce %actor% ����� ��������
wait 1
opurge %self%
~
#7201
������� ��������~
2 c 0
�������� ������� ��������� ������� ��������� ��������~
if !%arg.contains(������)%
  wsend  %actor% ���� ������? ��� � ��� ������ ��������..
  halt
end
if !%actor.haveobj(7203)%
  wsend  %actor% ���� ���%actor.g% ��������, �������???
  halt
end
wait 1
wsend  %actor% ������ ����� �� ��������, �� �������� �������� �� ����.
wsend %actor% ����� ��������� �� ������������ �������.
wechoaround %actor% %actor.name% �������%actor.g% �������� �� ����.
wechoaround %actor% �� ������ � ������ ��� �� ������������ �������.
calcuid korablik 7203 obj
wpurge %korablik%
set questor721 %actor%
global questor721
wait 5
wecho ����� ���� ��������� � ������������. ������� �����.
wait 5
wecho ������ � ����������� �� �������, �� ��� ���� �������� ����� ����.
wload mob 7200
calcuid chert 7200 mob 
remote questor721 %chert.id%
rdelete questor721 %self.id%
exec 7202 %chert.id%
~
#7202
���� ������~
0 z 0
~
wait 1
��� %questor721.iname%
� ���, ���...
� ��� �������� ��� ��� ���� �����.
����
wait 5
� � ������ � �� �����, ���� �������?
� ��� �������� �� ����� ���������� �������� �� ������ ��������?
~
#7203
����� ������� �����~
0 d 1
�����~
wait 1s
���
� �� � ��, ����� ����, �� ����� ������ ������� �����%actor.g%?
� ����� �����, ���������������.
���� %actor.name%
wait 5
� ��������� � ���� ��� ���� ����.
� �� ������ � ���� ����-�� ��������%actor.w%, �� �� ���� ��������.
� ������� ������ ������, ������ ��� � ����.
wait 5
� ��� ���, ���������� � ���-�� �������� � ����.
� ������ ������ ���������, �� ������ � ��������� � ��.
� ������ ��� ��� ��� ����������, � ��� � �����������.
� ��������� ���, �� ������� ���������..
������
wait 5
� ���, ������.
attach 7208 %self.id%
detach 7203 %self.id%
~
#7204
�������� �����~
2 c 0
�������� ����������~
if !(%world.curobjs(7207)%)
  return 0
  halt
end
if !(%arg.contains(����)%) 
  wsend  %actor% ����?
  halt
end
wsend  %actor% �� ���������� �� �������� ����� � ����� �� ��������.
wechoaround %actor% %actor.name% �������%actor.g% �������� ����� � �������� �� ��������.
set shekotun %actor%
wait 5
wecho ���������� ����, �� �������� ����� �������� � ����������� ����� ������.
wload mob 7201
calcuid kopna 7207 obj
wpurge %kopna%
wload obj 7216
calcuid ryzhiytat 7201 mob 
remote shekotun %ryzhiytat.id%
rdelete  shekotun %self.id%
exec 7205 %ryzhiytat.id%
~
#7205
���� ������~
0 z 0
~
wait 5
���� .%shekotun.name%
� ���� ������??!
�� .%shekotun.name%
~
#7206
� ���� �����~
0 q 20
~
wait 1
���
� �� �����! ������� 5 ���
���
~
#7207
���� ����~
0 f 100
~
mecho ����� ���� �� ��������� ��� ����������� �� �����.
����  
mecho ����� ���� ��������� : '��������� ��������... � �������'
mecho ����� ���� ��������� : '���, ������ ��� ����� �� �������'
mecho ����� ���� ��������� : '�� �� ������ ����'
����
mecho ������� �������� ���.
mload obj 7215
if (%exist.obj(7207)%)
  calcuid kopna 7207 obj
  exec 7214 %kopna.id%
end
~
#7208
����� �������~
0 j 100
~
wait 2
if (%object.vnum% == 7215)
  mecho ����� ���� �������� ���������� ������ � �����.
  � ���! ��, �������.
  wait 1
  mpurge %object%
  eval sdalpestik %actor%
  global sdalpestik
end
if (%object.vnum% == 7214)
  mecho ����� ���� �������� ���������� ������ � �����.
  � ���, ���! ���������.
  wait 1
  mpurge %object%
  eval sdalstupku %actor%
  global sdalstupku
end
if (%sdalpestik% && %sdalstupku%)
  if (%sdalpestik.id% == %sdalstupku.id%)
    ����
    ��� %sdalpestik.name%
    � ��, ����������. ��� ���� �������.
    wait 6
    switch %random.5%
      case 1
        if %world.curobjs(527)% >= 1 
          ��� %sdalpestik.name%
        else
          mload obj 527
        end
      break
      case 2
        if %world.curobjs(202)% >= 100 
          ��� %sdalpestik.name%
        else
          mload obj 202
        end
      break
      case 3
        if %world.curobjs(7217)% > 2 
          ��� %sdalpestik.name%
        else
          mload obj 7217
        end
      break
      default
        ��� %sdalpestik.name%
      done
      ���� ��� .%actor.name%
    else
      � �������, �������, ������.
      � ������ ���������� �� ��� ������ - ��� ��� ���??.
      � ��� ��� ����� � ����.
    end
    wait 1
    ���� 
    mecho ���� ����������� � �����, ������� ������ ����� ����.
    wait 1
    mpurge %self%
  end
~
#7209
����� ������ �� ���� ������~
1 g 100
~
if %exist.mob(7213)%
  return 1
  halt
end
wait 1
osend %actor% �� �������� ���� � ����� ������.
osend %actor% ����� ���-�� ��������� ������ ��� �� ����.
eval buf %actor.hitp(-12)%
oechoaround %actor% %actor.name% �����%actor.g% ���� � ����� ������.
oechoaround %actor% %actor.name% ������%actor.g% ������ ����� � ��������%actor.g% ����.
wait 5
oecho ������� �����, �� ����� ������ ������� ������ ����!
oload mob 7213
calcuid buynayamysh 7213 mob
exec 7210 %buynayamysh.id%
detach 7209 %self.id
~
#7210
������ ���� ����~
0 z 0
~
wait 1
�� ������� ������
wait 5
�����
~
#7212
����� �����~
0 r 50
~
wait 3s
�� ��������� ���� ���� � ���������� ��������� �� ���
wait 4
� ���, ���
�� ������� � ��� ������ �������
~
#7213
������ �����~
0 r 100
~
wait 1s
���
���� %actor.name%
wait 5
��
~
#7214
���� ����� ��� �����~
1 z 100
~
oload obj 7216
wait 1
opurge %self%
~
$~
