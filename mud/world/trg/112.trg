#11200
����� (������ ��� ���� � ����� �����, ��������� ���������� ������)~
2 f 100
~
calcuid santa 11210 mob
attach 11205 %santa.id%
calcuid snegurka 11204 mob
detach 11202 %snegurka.id%
attach 11201 %snegurka.id%
detach 11212 %snegurka.id%
**��������� ������� ��� ������, ������� �����**
calcuid elk1 11206 room
calcuid elk2 11215 room
calcuid elk3 11223 room
calcuid elk4 11229 room
attach 11210 %elk1.id%
attach 11210 %elk2.id%
attach 11210 %elk3.id%
attach 11210 %elk4.id%
detach 11211 %elk1.id%
detach 11211 %elk2.id%
detach 11211 %elk3.id%
detach 11211 %elk4.id%
~
#11201
���� � �������� (������ ������)~
0 r 100
~
wait 1
say �����-����-����-����-���...
wait 1
say �, ������, �����!!!
say �� ����� ��� �� ����� ������?
wait 1
���
wait 1
say ����� �� ������,
say ��� ������ ����� ����:
say ������� ����� ��� ������-����� �������� -
say ����� �� ��������� ��� � ����!
wait 1
say ���ģ�� �������� -
say ����� ���, ��� ����, ���, � ��� ����, �� � ��� �����, �����-�� �����.
say �� � ���� ������� ���������� �������, ���� ����, � ��-���� ������ ��� ����.
wait 2s
say �� �ӣ, �����, �����!
attach 11202 %self.id%
detach 11201 %self.id%
~
#11202
���� � �������� (������� ������)~
0 r 100
~
wait 1
say �����-����-����-����-���...
wait 1
say ���. ������� ��������, ��� ������ ���, ������ �� ��������, ������ �� ���������!
say ��� � ������ ������, �� 1�� ���� ������... � ������...
say ���...
�����
~
#11203
����� ������ ������ ������~
0 j 100
~
if %object.vnum% == 11205 then
  wait 1
  say �� ���� ��� �� ������� ��������
  wait 1
  say ������� �������...
  wait 1
  say �� ��� �������� ��� ���� 
  wait 1
  say � ��������� ��� ������ �������������
  wait 1
  ��� 
else 
  wait 1s
  say ����� ��� ���? ���� ��, ������ �����.
  wait 1s
  mecho ������-����� ����������� ��������� � �������� %object.vname% �� ����.
end
mpurge %object%
detach 11205 %self.id%
~
#11204
���� ����� - ���� ������~
0 f 100
~
mload obj 11205
~
#11205
���� � C�����-������ (����� �����)~
0 r 100
~
wait 1
say �� �����, ���� ������� �� ����?
wait 1
say ������ ������ � ������� ��� ������.
~
#11206
������-����� rip - ������ ������� :)~
0 f 100
~
mecho ������-����� � ����� � ��������� ��� ������� - we wish you merry Christmas - � �����.
mload mob 11201 
~
#11207
���� ������ ������~
0 n 100
~
wait 1s
if !%self.fighting%
  mecho �� ������� ������ ��������� ��������� ������ ������ ������� ������.
  wait 2s
  if !%self.fighting%
    mecho ������� �� �����, ��� ������� ������, � ����� � ���.
    wait 1s
    if !%self.fighting%
      say ������, ������� ������� �������
      say ���, ������ ���� ������, ���� ����� ����� ����, ��?
      wait 1s
      if !%self.fighting%
        say ��� ��� ������, ���� �������� ��� �����, ����� ����� ������� :)
        say ����� ����� �����, ��� ������-����� ��������. 
        say �� ������ �� ��������, ������� � ���� ���� ������ģ�.
        wait 2s
        if !%self.fighting%
          say �� �� �����.. ���� ���� ������ ���������� ����������, �������� �����.
          attach 11208 %self.id%
        end
      end
    end
  end
end
~
#11208
����-������ ������� "����"~
0 d 0
����~
wait 1
if !%self.fighting%
  say ���.. ���??? ���???? ��, � �������.
else
  halt
end
wait 1
mecho ���-����� �������� � ������� � ��������� ������ ����������� ���� � ������� ������.
if %random.6% == 1
  wait 1s
  mload obj 11203
  ���� �����
  ���
  � ���� ���� ������, �������, ���, ���� �������.
end
wait 1s
mecho ������� ������ �������� �������������� � ��������� � �����.
calcuid snegurka 11204 mob
attach 11212 %snegurka.id%
mpurge %self%
~
#11209
����� � ����~
0 r 100
~
wait 1
����
wait 1
�� %actor.name%
~
#11210
������ ��� �����~
2 c 100
������~
wait 1
if %arg.contains(�����)% || %arg.contains(�����)%
  wload obj 11212
  wsend %actor% �� ������ ������ ������ ��������� � ������� ����� ��!
  wechoaround %actor% %actor.iname% �������%actor.g% ���� � �����%actor.g% ����ޣ��� ������ ��� ������� :) �� �� ����, � ? :)
  attach 11211 %self.id%
  detach 11210 %self.id%
else
  wsend %actor% � ��� �� �� ��������� ������?
end
~
#11211
������ ��� ������ �����~
2 c 100
������~
wait 1
if %arg.contains(�����)% || %arg.contains(�����)%
  wsend %actor% �� ������ ������ ������ ���������... �� ������ �� ��� ���.. �����!
else
  wsend %actor% � ��� �� �� ��������� ������?
end
~
#11212
����� ����� �������� (���� �������)~
0 j 100
~
if %object.vnum% == 11212
  wait 1
  ��
  wait 1
  mecho �������� ������� ����� � ����������:
  mecho ���������-�������-����������...
  switch %random.23%
    case 1
      mecho  �������� ������� &W����������&n ������� �������� �� ����� � ���������.
      mload obj 11211
      ���� ����� .%actor.iname%
      say ����, ������� :)
      mpurge %object%
      halt
    break
    case 2
      mecho  �������� ������� &W����������&n ������ �� ����� � ���������.
      mload obj 11210
      ���� ���� .%actor.iname%
      say ����, ������� :)
      mpurge %object%
      halt
    break
    case 3
      mecho  �������� ������� &W����������&n ������� �� ����� � ���������.
      mload obj 11209
      ���� ��� .%actor.iname%
      say ����, ������� :)
      mpurge %object%
      halt
    break
    case 4
      mecho  �������� ������� &W����������&n ������� ����� �� ����� � ���������.
      mload obj 11208
      ���� ���� .%actor.iname%
      say ����, ������� :)
      mpurge %object%
      halt
    break
    case 5
      mecho  �������� ������� &W����������&n �������� �� ����� � ���������.
      mload obj 11207
      ���� ���� .%actor.iname%
      say ����, ������� :)
      mpurge %object%
      halt
    break
  done
  ***������� ����***
  mecho �������� ������� ���-�� ����������� �� ����� � �������� ������� �������.
  wait 1
  mecho ������ ������� ������ �������� �� ����� ����������� ���� � ��������� ��������.
  wait 1
  say ����������� ��� :)
  mpurge %object%
else
  wait 1
  say � ����� ��� ���? ���� ��, ������ ����� :)
  mpurge %object%
end
~
#11213
����� ��̣��� ��������~
1 c 1
��������~
set selfnum 0
set num 0
foreach i %self.pc%
  eval num %num%+1
done
set ranofself %random.num(%num%)%
foreach n %self.pc%
  eval selfnum %selfnum%+1
  if %ranofself% == %selfnum%
    set char %n%
  break
end
done
if %char.name% == ������
  oecho ������ ����������� ��������� �� �������� � �������� : "� �� ������ ������ + %actor.iname%"
  odamage %actor% 50
  osend %actor% ������ &R������&n ������ ���!
  halt
end
if %char.name% == %actor.name%
  osend %actor% �� ���������� �� �������� � ������� ������ ����� ��������.
  osend %actor% ������������� �� ���� �������, �� ������ ���� ������������ &G%actor.iname% + %actor.iname% = Love&n...
  oechoaround %actor% %actor.iname% ����� ���� ���-�� ������� � ������� &G��̣��� ��������&n, �� ������ ���������...
  osend %actor% �� ������� ������������, ������� �� ������������� ���-�� :).
else
  osend %actor% �� ���������� �� �������� � ������� ������ ����� ��������. ���, ������� %char.iname% - ����� ���.
  oechoaround %actor% %actor.iname% ����� ���-�� �������� ����� � ������� &G��̣��� ��������&n.
  %actor.wait(2)%
  osend %actor% �� ������ ���-�� �������� � ���������� ��� ������ ���� �������� "&G%actor.iname% + %char.iname% = Love!&n"
  oechoaround %actor% %actor.iname% ������� �������� ��ϣ ��������...
  oecho ������� &G%actor.iname% + %char.iname% = Love! &n������� �������� � ������� � �������.
end
~
#11214
���� ����~
1 c 1
��������~
set chars %self.pc%
set num 0
foreach i %chars%
  oecho ���� ���� - %i.iname% :)
  eval num %num%+1
  if %num% > 10
  break
end
done
oecho ���������� ����� � ���� - %num%
wait 1
set rchar %random.num(%chars%)%
oecho ��������� ��� - %rchar.iname%
set ranchar %random.char%
oecho ��������� ��� �� ������ ����� - %ranchar.iname%
**********���
eval ran %random.num(%num%)%
oecho ������������� ���������� ����� ������� ��� ������� �� �������� - %ran%
foreach i %chars%
  if %num% == %ran%
    set rchar %i%
  break
else
  eval num %num%-1
End
done
oecho ��������� ��� �� ������ �� - %rchar.iname%
***********�����������������������������
eval nrchar %random.num(%chars%)%
oecho � �� ������ Forbes ������ ����� �������� ... %nrchar.iname% !
********���������
%echo% ����.. �������� ������ ���
set selfnum 0
set num 0
set chars %self.pc%
foreach i %chars%
  %echo% ����� ���� - %i.iname%
  eval num %num%+1
break
done
%echo% ����� � ���� - %num%
set ranofself %random.num(%num%)%
%echo% �� ������� ������ %ranofself%�� �� ���..
foreach i %chars%
  eval selfnum %selfnum%+1
  if %ranofself% == %selfnum%
    set rchar %i%
  end
done
%echo% �� ������ ��� (������� ���������) ������ ��� - %rchar.iname%
~
#11215
����� ���� ����~
1 c 1
������~
%echo% ����.. �������� ������ ���
set selfnum 0
set num 0
set chars %self.pc%
foreach i %chars%
  %echo% ����� ���� - %i.iname%
  eval num %num%+1
done
%echo% ����� � ���� - %num%
set ranofself %random.num(%num%)%
%echo% �� ������� ������ %ranofself%�� �� ���..
wait 1s
%echo% �� �������� ������ ���� ������������ ���������, �������� ����������� �� �ݣ ���������� �� ������� ����� - %chars% .
foreach n %chars%
  eval selfnum %selfnum%+1
  %echo% �� ������, �������� ������ ���� �� ����������. ������ � ��� ��������������� %selfnum% ��� �� �����.
  %echo% � ��� ��� ���������� ��� ��� ���������� ����� ��� %selfnum% ������ %ranofself% (�� ����).
  if %ranofself% == %selfnum%
    set rchar %n%
    %echo% ������ ��� �� ���������� ���������� ���� ��� ���� ������� � ���������� ����������.
  end
done
%echo% �� ������ ��� (������� ���������) ������ ��� - %rchar.iname%
~
#11220
������� ������� ��������~
1 c 1
�������~
if %arg.contains(�������)% || %arg.contains(�������)%
  wait 1
  osend %actor% �� ������� �� ��ң����� � �������� ����������.
  oechoaround %actor% %actor.iname% ������%actor.g% �� ��ң����� � �������� ����������.
  wait 1
  %echo%  - &R�����&n �������� ��������� � &W����� ���&n
  %echo%  - �������� &G�������&n &B�����&n &Y�������&n
  %echo%  - ���� ������� ���� ������� �� �������
  %echo%  - ������ ������ � &R�&G�&B�&Y�&w�&C�&b�&n, � �� �� ��� &W��� �����&n
  %echo%  - ��� &G�������&n ��� ������, ��� ������ &R����� ���&n
  %purge% %self%
else
  osend %actor% �� ��� �� ������ �������? :)
end
~
#11221
������� �������~
1 h 100
~
wait 1
%echo% - ������� ������� &Y������&n �������� � �����,
%echo% - &R��������&n ������ �����, ��� ���������� ��� ������.
%echo% - ��� ������� �����, &W��� �����&n ��� �̣�.
%echo% - �� � ������ ������ ���-������ ����أ�.
%purge% %self%
~
#11222
������� �������� ��������~
1 c 4
�������~
if %arg.contains(���������)%
  wait 1
  osend %actor% �� ��������� �������� �������� � �������� ��������...
  oechoaround %actor% %actor.iname% ��������� �������%actor.g% �������� � �������%actor.g% ��������...
  %actor.wait(3)%
  wait 3s
  calcuid bum %self.room% room
  attach 11266 %bum.id%
  exec 11266 %bum.id%
  %purge% %self%
else
  osend %actor% ��� �� ������ �������?
end
~
#11250
����� � �����~
0 g 100
~
wait 1
�� ��������.
wait 1
mecho ������ �������� ��������� �� ��� � ����� ��������� ��������� ������������ �������.
wait 1s
say ��, ����, ���� ������������... ������� ����� � ����, ���� �ϣ ������. � ��� ���, � ����� �������
wait 1
������� ��� ������ ���, ��� ף� ���� ������, �� ��� ���� �����...
wait 1
say ���� ������ �����-�� �� ���� ���������� ��������� ������ ���, ���� ������� �������� ����������
wait 1
say �� ������ �ӣ �� ����, ����� ���... �� ��� �� � ��������� �����.. ������ ��� ���� ���.. ��������..
wait 1
say ��������� �� ��� ��� � ����. ������� �� � ���� ���� �������.
~
#11264
������ ����������� �� �����~
1 n 100
~
%echo% %self.iname% ������ ���������%self.g% �� ��������� &R�������� �����&n � ���������.
~
#11265
������� ����� ���� ������ - ����� �������~
1 p 100
~
wait 1
set mode %random.8%
if %mode% > 7
  oload obj 11225
else
  eval fload 11215+%mode%
  oload obj %fload%
end
~
#11266
��������� ������ �� ���� ��� ������� ���������~
2 z 100
~
wzoneecho %self.vnum% - &b�����&n, &G�������&n, &Y������&n, &R�������&n ���� ����������� � ����.
wzoneecho %self.vnum% - ����� ���������� ���� ���������� � ����� ����� �������� ������
wzoneecho %self.vnum% - ����-�� ������� ����� ����� ���� �������?
detach 11266 %self.id%
~
#11298
����� ��������� �������~
2 f 100
~
set i 0
while %i% < 40
  eval i %i%+1
  eval rum 11200+%i%
  wait 1
  if %i%>39
    halt
  end
  calcuid komn %rum% room
  detach 11299 %komn.id%
  attach 11299 %komn.id%
done
~
#11299
��������� ������� �  �� ������~
2 e 100
~
if %actor.remort%  > 3
  wsend %actor% �� ����� � ���������� ������ � �������� ������� ����������. 
  %actor.wait(2)%
  wait 10
  eval rum 49900+%random.50%
  wteleport %actor% %rum%
end
~
$~
