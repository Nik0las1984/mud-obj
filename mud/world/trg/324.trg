#32400
���������~
0 q 100
~
if (%actor.religion% == 1)
  wait 1s
  say ������� ������� ����� ���, %actor.name%!
  say �������� � ��� � ������������ �������.
  �� ��������� �� �������� � ��� ������ ���������
  say ������ � ���� ��������, � ��� ��� �� ���� �������� ����������
  ���
  �����
else
  say ��������, �� ��������� �� ����� � ����� �������.
  *wait 1s
  mteleport %actor% 32460 horse
end
~
#32401
���� ���������~
0 j 100
~
wait 1
if %object.vnum% != 32503
  wait 5
  ����
  say �� �� ���! � ��� ���� ���������������! �� ����� ��� ������!
  ����
  ���� ���
  halt
end
mpurge %object%
say ��� ������� ����, ������ �������!
wait 3
say ��� ������������� ��������� ��� ���� ������ ������!
���
wait 1
say ������ � ������ ������� ��� ������� ������!
say ��� ������ �� ����� ����...
wait 3
�� ������ ���-�� �� �������� � ����� � �������� ���.
if (%random.1000% < 90) && (%world.curobjs(32503)% < 3)
  mload obj 32413
else
  mload obj 32428
end
���� ��� %actor.name%
say �� ���� ������ ���� �� ������ ���������� ��� �������������!
say �� �������, ������ ������� �������!
say ���� ��� � �������� ���������...
�����
%purge% %self%
end
~
#32404
�������������~
0 r 100
~
wait 1
msend %actor% ������� ������� ����:
msend %actor% - �� ������� ���� ������� �� ������� ���, %actor.name%!
msend %actor% - ����, ��� �� ������ ��� �� ���� ���%actor.y%! ���� ���� ������!
msend %actor% - ���� �� ���� ��� ������� ��� ��� ������ �����
msend %actor% - � ������ ���� ����� ��������� �� ������� �������� ������.
~
#32405
������������~
0 m 100
~
wait 1
if (%amount% < 200)
  say �� ����� ����� ���%actor.g% ����� ���������. � � �� ������!
  halt
end
emot ����������%self.g% ������.
eval target 0
switch %amount%
  * ������
  case 3400
    eval target 30213
  break
  * �����
  case 4200
    eval target 76083
  break
  * �����
  case 5900
    eval target 75066
  break
  default
    wait 1
    msend %actor% ������� ������� ����:
    msend %actor% - ���� ����������� ���� ���� ���������, �� �������, �������.
    msend %actor% - � ������ - �� 3400 ���.
    msend %actor% - � ����� - �� 4200 ���.
    msend %actor% - �� � � ����� �� - 5900 ���.
    msend %actor% - � ��� ��� ������, �� �������-�� �����!
    wait 2
    msend %actor% - ����� ��� - ������ ��� ��� ������� �������.
    msend %actor% - ���� � ������ ������ - ������� ��� ����� � ������ �����.
    msend %actor% - ���� �������� ����� ��������� � �����, �� ����� ��������� ���� � �����.
    msend %actor% - � �������� �� ����� ������� - ��� ��� ���� � �����.
    halt
  done
  ���
  emot ������%self.g% ��������� �������� ������
  mechoaround %actor% %actor.name% �����%actor.q% � ������ ����.
  msend %actor% � ��� ����������� ������, � �� ��� �� �������� ��������...
  *msend %actor% 
  mteleport %actor% %target%
  mechoaround %actor% %actor.name% ������%actor.u% ����� � ������ ����.
~
#32406
������������~
0 j 100
~
wait 1
if (%object.vnum%==713)
  if (%object.val1%>5)
    say �������� �����! �������� ��� ���������� ��������!
    if  !(%self.haveobj(60067)%)
      mload obj 60067
    else 
      say ��... ����� � ���� ��� ����. ������ �� ����� ����.
    end
  else
    say ��... ����� �� ���������� �������! ����� �� ��������.
  end 
end
if (%object.vnum%==705)
  if (%object.val1%>5)
    say ������������� ������ �����! � ����� ��� ��� ����������!
    if  !(%self.haveobj(60061)%)
      mload obj 60061
    else 
      say � ���� ��� ���� �����! ��� ���� ���� �� �����!
    end
  else
    Say ���! ��� ����� ������������ ������! ����� �� ��������.
  end 
end
if (%object.vnum%==700)
  if (%object.val1%>5)
    say ��-�! ������������� �����!
    if  !(%self.haveobj(60060)%)
      mload obj 60060
    else 
      say � ���� ��� ���� ����! ��� ������ �� �����!
    end
  else
    say ��-�-��! ���� ������ ��������� � ��������. ����� �� ��������!
  end 
end    
if (%object.vnum%==751)
  if (%object.val1%>5)
    say �������� ����� ����!
    if  !(%self.haveobj(60068)%)
      mload obj 60068
    else 
      say ���� � ���� ��� ����! ������ ������� ���� �� �����!
    end
  else
    say ��..���� ������ ��� �� �������� ��� ����������! ��� ��, ��� �������!
  end 
end
mpurge %object%
if (%self.haveobj(60067)% && %self.haveobj(60061)%)
  say �������! ������ � ������� ������ � ������� ��������!
  say � ��� ������� � �������� ��� � ������.
  mecho ������� ���-�� ��������� ��� ������������� � �������� �� � �����.
  drop all
  mat 30213 mecho ���-�� �������� ����� � ������ ������ ����.
  mteleport all 30213
end
if (%self.haveobj(60067)% && %self.haveobj(60060)%)
  say �������! ������ � ������� ������ � ������� ��������!
  say � ��� ������� � �������� ��� �� �����.
  mecho ������� ���-�� ��������� ��� ������������� � �������� �� � �����.
  drop all
  mat 76083 mecho ���-�� �������� ����� � ������ ������ ����.
  mteleport all 76083
end   
if (%self.haveobj(60068)% && %self.haveobj(60060)%)
  say �������! ������ � ������� ������ � ������� ��������!
  say � ��� ������� � �������� ��� � �����.
  mecho ������� ���-�� ��������� ��� ������������� � �������� �� � �����.
  drop all
  mat 75066 mecho ���-�� �������� ����� � ������ ������ ����.
  mteleport all 75066
end
~
#32407
�������������~
0 r 100
~
*32503 ��������� ����, �������� ����� ����, ���� ��������� ����� ���� ������ �����-�����������
if (%world.curmobs(32503)% > 0)
  wait 1s
  say ����������� ���!
  wait 5s
  say ��, � �� �� ��������� �������� �� �������!
  say ����� �� ���� ������ ����, �� ������ ���������.
end
~
#32408
����������������~
0 d 0
������~
*32503 ��������� ����, �������� ����� ����, ���� ��������� ����� ���� ������ �����-�����������
if (%world.curmobs(32503)% == 1)
  wait 1s
  say ������� ���� ���� ������� ������� ��������� ��� ����.
  wait 3s
  say ��� ���, ������ � ������� ������ �������� ��������.
  say �������� ��� ������, ���������... ��������.
  say �� � ���� ����, ���� ��� �����, ������ �� � ���� ������ ����
  say �������� �� ���� ������ ��������� � �������� ��� �� ������.
  say ����� ������ �� ������ ���-�� � �����, ��� ����� ������.
  say � ��������� ������ ��� ���������, ��� ���������� ��� ��� ����  - ������ ����!
  wait 2s
  say ���� �������� ������ � ���� ��� ������, ����������� ����
  say � ����� ���, �� ��� ���� �����!
  say �� ��� ���?
else
  say ������ ���� ������ ��� ��� ����������.
end
*detach 32408 %self%
~
#32409
�������������~
0 d 0
������~
wait 1s
say �������!
say ���� ����� ��� ���!
say ����� ��...
detach 32407 %self%
detach 32408 %self%
detach 32409 %self%
~
#32410
��������������~
0 j 100
~
wait 1s
if (%object.vnum% == 32416)
  *calcuid veshitzo 32416 obj
  say ��� ������� ���� ��� �������, ������� �������
  say ����� �������� �������!
  *mpurge %veshitzo.id%
  wait 1s
  mpurge %object%
  %actor.exp(+10000)%
  switch %random.9% 
  break
  case 1
    if %world.curobjs(32417)% < 2
      mload obj 32417
      wait 1s
      ���� ���� .%actor.name%
      ���� ����
    end
  break
  case 2
    if %world.curobjs(32418)% < 2
      mload obj 32418
      wait 1s
      ���� ����� .%actor.name%
      ���� �����
    end
  break
  case 3
    if %world.curobjs(32419)% < 2
      mload obj 32419
      wait 1s
      ���� ����� .%actor.name%
      ���� �����
    end
  break
  default 
    %self.gold(+1000)%
    ���� 1000 ��� .%actor.name%
  break
done 
end
~
#32411
������������1(�������)~
0 q 100
~
wait 1
if !%exist.mob(32424)%
  halt
end
if %actor% == %turovquest% 
  halt
end
emot ������� ������ � ���������� ���������� �� ���.
wait 2s
say ������ ���� ��� ��������.
if !%turovquest%
  say ���� �� ������ ��� ������� ����.
  say ������ � ������ �� ���� �����������.
  say ����� �� ��������? 
  attach 32412 %self%
end
~
#32412
������������2(���)~
0 d 0
������~
*if %actor.vnum% != -1
*halt
*end
if %turovquest%
  wait 2
  say � ��� ��������� � ������ %turovquest.vname%, ��� ���..
  say �� ���� ���������, ��� ������.
  halt
end
if (%world.curmobs(32424)% == 0)
  halt
end
set turovquest %actor%
calcuid ivan 32424 mob
calcuid jrez 32423 mob
attach 32413 %ivan.id%
global turovquest
remote turovquest %ivan.id%
remote turovquest %jrez.id%
wait 1s
emot ��������� ������� � ����� � ��� �� �����.
say ��, ������� ���� ��� �������, ��� ���������� ������ ����� ����.
wait 1s
emot ������� ����������� � ������ �������.
say ���� � ���� ������, ����� ������... ��������� �����
say ���� �� � ���� �������, �������� ��� ������� � ������� �������.
�����
wait 1s
say � ������ � ��� ������, �� �� ��� ���� ����������.
say ����� �����, ��� ��� ������ ����, ��� � �������� ������ �����.
say �� ���� � ��� � ������ ���������, ����� � ���� �������.
���
wait 1s
say �� ���, ���������� ��� ��� �����.
say � ������ ������, � ���� ����� ��������!
~
#32413
���������������~
0 q 100
~
if %actor% == %turovquest%
  ���
  say ������� %turovquest.name% ��� ��������� ���� �� ��� ����� �����!
  msend %actor% �������� �������� � ��� �� ���!
  say �����, ������ � � �������, � �� �������� � ���.
  mecho �������� ����� ������ �������� �����. 
  %turovquest.exp(+5000)%
  calcuid babka 32422 mob
  attach 32416 %babka%
  mpurge %self%
else
  �����
  say �� ������� ����� �������, ��� ������ ����.
  say �� ����� ��� �� ��������� � ������ �����.
  say ������� ����� �� ��� �������!
end
~
#32414
�����������1~
0 r 100
~
if %actor% == %turovquest%
  wait 1s
  ����  
  say �������� ��� ������ ��� ������ ��� ����!
  say � �� ������ �� �� ������ ������?
  say �� ��� �, �����, ����� ���� ���, ���� �������� ��� ��� � ���!
  ���
  wait 2s
  say � ����� ������ � �������� "��-���", ����� ��������� ����� ������.
  say ����� � ���� � ��� ���������, ���� � ��� ������ ��������� ��!
  say ����� � ����, ���������, �� ������ ��� ������� � ��������� �������.
  say ��� ������ ������ ���� �� ������! ����� � �������� ������!
  wait 1s
  say �� ���� ������? ����������!
else
  wait 1s
  say ���� ������?!
  say ���������� ������!
  halt
end
calcuid knieze 32425 mob
attach 32417 %knieze%
remote turovquest %knieze%
attach 32415 %self%
detach 32414 %self%
~
#32415
�����������2~
0 j 100
~
if (%object.vnum% == 32421)
  wait 1s
  say � �� �������!
  say � ����� ������ ����� ������������!
  say ��, ����� ����, ��� � ������.
  say ������� ������ � �������� � ����� ���!
  mload obj 32420
  ���� ���� %turovquest.name%
  �� ����
end
detach 32415 %self%
~
#32416
��������������~
0 r 100
~
if ( ( !%exist.mob(32424)% ) && ( %actor% == %turovquest% ) )
  wait 1s
  say ������� ���� ��� �������!
  say ������ ������ ����� �� ����� ���������� �����!
  say ������� �������!
  say ��� ������, ��� ����������!
  switch %random.9%
  break
  case 1
    if %world.curobjs(32422)% < 2
      mload obj 32422
      wait 1s
      ���� ���� %turovquest.name%
      ���� ���
    else
      %self.gold(+500)%
      ���� 500 ��� .%actor.name%
    end
  break
  case 2
    if %world.curobjs(32423)% < 2
      mload obj 32423
      wait 1s
      ���� ���� %turovquest.name%
      ���� ���
    else
      %self.gold(+500)%
      ���� 500 ��� .%actor.name%
    end
  break
  case 3
    if %world.curobjs(32424)% < 2
      mload obj 32424
      wait 1s
      ���� ���� %turovquest.name%
      ���� ���
    else
      %self.gold(+500)%
      ���� 500 ��� .%actor.name%
    end
  break
  case 4
    if %world.curobjs(32425)% < 2
      mload obj 32425
      wait 1s
      ���� ����� %turovquest.name%
      ���� ���
    else
      %self.gold(+500)%
      ���� 500 ��� .%actor.name%
    end
  break
  case 5
    if %world.curobjs(32426)% < 2
      mload obj 32426
      wait 1s
      ���� ���� %turovquest.name%
      ���� ���
    else
      %self.gold(+500)%
      ���� 500 ��� .%actor.name%
    end
  break
  default 
    %self.gold(+500)%
    ���� 500 ��� %turovquest.name%
  break
done 
detach 32416 %self%
end
~
#32417
����������~
0 q 100
~
if %actor% == %turovquest%
  wait 1s
  say ���������� %turovquest.name%
  say ��������� �, ��� �� � ������ ���������� ����� ���.
  say ������ �� � ��� �������...
  say ��� �� �� ���� ��� �����?
  attach 32418 %self%
end
~
#32418
�����������������~
0 d 0
������~
if %actor% == %turovquest%
  wait 1s
  ���
  say ��� �� ������ �����!
  say �� ���� ����� ��� � ���������...
  ���
  wait 4s
  say �����, ����� ��� ������
  say ����� ������� �� ���� �������...
  say ����� � ����� �������, ������� ���������...
  mload obj 32421
  ���� ���� %turovquest.name%
  detach 32417 %self.id%
  detach 32418 %self.id%
else
  say ��� � ���� ������ ��� ����!
end
~
#32419
�����~
2 f 100
~
calcuid starik 32421 mob
attach 32407 %starik%
*calcuid starik 32421 mob
attach 32408 %starik%
*calcuid starik 32421 mob
attach 32409 %starik%
calcuid jrez 32423 mob
attach 32414 %jrez%
*calcuid jrez 32423 mob
rdelete turovquest %jrez%
calcuid kluka 32422 mob
attach 32411 %kluka%
*calcuid kluka 32422 mob
rdelete turovquest %kluka%
unset turovquest
*unset turovquest
~
#32420
����C������������������������~
0 j 100
~
wait 1s
if (%object.vnum% == 32600 )
  ��
  wait 1s
  say ��-�, �������� ��� �� ����� �� ��� ������, ������.
  emot ��������� ������ � ����� ����������� ������� �����.
  wait 1s
  ���
  ���
  wait 2s
  ���
  wait 1s
  say �������� ������� ����� �������� ��� �������.
  say �� �� �����, ��� ������������, ��� ��������!
  wait 1s
  say � �� ���� ����� ��� �����? �������������� �����?
  ���
  wait 1s
  say �� ��� ���� �� ����, � ���������� ���� �� ��������� �� ��������!
  %self.gold(+500)%
  ���� 500 ��� %actor.name%
  wait 1
  mpurge %object%
  wait 10s
  ���� ������ �������� ����! �������� ������!
  ���� ������ ������ �� ����� ��� ������� �����������!
else
  ���� ���
end
~
$~
