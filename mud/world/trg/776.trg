#77600
������~
1 ghijlt 100
~
wait 1
if (%actor.clan% == �� ) || (%actor.vnum% == 77601 )
  halt
end
wait 1
%purge% %self%
~
#77601
���������������~
1 c 2
���������~
if %actor.clan% != ��
  wait 1
  opurge %self%
  halt
end
if %arg.contains(��������)%
  osend %actor% _�� ������ ������ ���� �� ��������...
  oechoaround %actor% _%actor.iname% �����%actor.g% ������� ������ ����������� ���� �� ��������...
  if %world.curmobs(77609)% > 30
    osend %actor% _� ������ �� ���������.
    halt
  end
  oload mob 77609 
  wait 1
  opurge %self%
end 
~
#77602
���������������~
0 c 1
���~
if (%actor.clan%)!=��
  msend %actor% _\&R������ �� ������� ������ ��� ����� ��������...
  halt
else
  mechoaround %actor% _\&G%actor.iname% ����� ������� ������� � ������� ������� ������ !!!\&w
  msend %actor% _\&W������� ������� ������ ������������ � ���� !!!
  mload obj 77630
  ���� ���� %actor.name%
  wait 1
  mpurge %self%
  halt
end
~
#77603
���������������������~
0 r 100
~
wait 1
if %actor.clan% != ��
  ���� ��������� � �������
else
  ���� ������� �������
end
~
#77604
������ �����~
0 d 3
����~
wait 1s
�����
wait 2s
if (%world.curobjs(77629)% < 10)
  mecho ���������� ������ �� ������� ��������� ������.
  wait 2s
  say  ������ ���, �� ����� ������� ��� ��� ����.
  mload obj 77629
  wait 2s
  ��� ����� %actor.name%
end
~
#77605
�����������������������~
0 d 8
�����~
wait 1s
mecho �������� ����� ������ �������� � ������:'�����'
mechoaround %actor% �������� ����� ��������� %actor.dname% �� �����.
wait 2
wsend %actor% ... �� ������ �� ���������� �����.
mteleport %actor% 77632
wechoaround %actor% ���-�� ����� �� ����� � �������� �����.
end
~
#77606
�����������~
0 r 100
~
wait 1s
� ������ ����!
wait 1s
� �����%actor.g% �� �� ��������� ���� ������� � ��������� �� �����?
~
#77607
�������������~
2 c 100
������������~
if !(%arg.contains(��������)%) 
  wsend %actor% ��� �� ������ ������������?
  return 0
  halt
end
wsend %actor% ������������, �� �������� ����� ��������.
wechoaround %actor% ������������, %actor.name% �����������%actor.g% ����� ��������.
wait 1s
wsend %actor% ... �� ��������� � ������ ������� ���������.
wteleport %actor% 77631
wechoaround %actor% ���-�� ����������� �������� � �������� �����.
~
#77608
������� �����~
0 d 1
������ �����~
wait 1
if (%actor% != %self.leader%)
  msend %actor% ���� �������� ��������� �� ���, ��������� � �������.
  mechoaround %actor% ���� �������� ��������� �� %actor.vname%, ��������� � �������.
  halt
end
if %speech% == ������
  stand
else
  rest
end
~
#77609
�������� �����~
1 c 2
����������~
wait 1
if !%arg.contains(������)%
  osend %actor% ��� ������� ������?
  halt
end
if %actor.clan% != ��
  osend %actor% �� ���������� ������ ������ ������ � ������, �� ������ �� ���������.
  halt
end
if %world.curmobs(77611)% > 50
  osend %actor% ...� ������ �� ���������!
  halt
end
oload mob 77611
osend %actor% �� ���������� ������ ������ ������.
oechoaround %actor% %actor.name% ���������%actor.g% � ������ ������ ������ ������.
oecho ������ ������ ������ ����� � ����� �������.
oecho ��������� ������ ���� ������ �����!
oforce %actor% �������� ����
wait 1
opurge %self%
~
#77610
�������� �����~
0 c 1
��������~
wait 1
if %self.fighting%
  halt
end
if !%arg.contains(�����)%
  msend %actor% _���� �� ������ ��������?
  halt
end
if ((%actor.clan% != ��) || (%self.leader% && (%self.leader% != %actor%)))
  msend %actor%  �� ���������� ������������ � �����.
  msend %actor%  ���� ������ ������� � ������� ������!
  mechoaround %actor% %actor.name% �������%actor.u% ������������ � �����.
  mechoaround %actor%  ���� ���� �� ������� %actor.dname% ����!
  eval dmg %actor.hitp%/5
  mdamage %actor% %dmg%
  halt
end
msend %actor% �� �������� ����� �� ����.
mechoaround %actor% %actor.name% �������%actor.g% ����� �� ����.
mload obj 77635
mecho ���� ����� ���������� � ����������� � ���������� ������ ������ ������.
give ������ .%actor.name%
wait 1
mpurge %self%
~
#77611
���� ����~
0 f 100
~
mload obj 77635
~
#77620
�����_���������~
1 ghj 100
~
if %actor.vnum% != -1
  halt
end
if %actor.clan% != ��
  wait 2
  %send% %actor% ����� ���� �������� �������� ���������� ����.
  %echoaround% %actor% ����� %actor.tname% �������� �������� ���������� ����.
  wait 1
  %echo% ������ ������� ������, ���� ���������� ����������� ��������, ������ � ����� %self.iname%.
  wait 1
  opurge %self%
end
~
#77621
������_���������~
0 d 0
���������� ������~
* �������� ������ ����� ��� � ��������� ���� ����� ����
*if %actor.clan% != ��
wait 1
say ������, %actor.iname%, ��� ���� � ���� ������ ���.
halt
endif
wait 1
if %speech% == ����������
  if %actor.bank% >= 855
    %actor.bank(-855)%
  else
    if %actor.gold% >= 855
      %actor.gold(-855)%
    else
      say �� � ���� ��� �����!
      halt
    endif
  endif
  say ������� ��� ���� �����, ������ ������ ��� �����������.
  wait 1
  %echo% ��������� �������� ������ �� ������ � ������� ����������
  mload obj 77605
  mload obj 77606
  mload obj 77607
  mload obj 77608
  mload obj 77609
  mload obj 77610
  mload obj 77611
  mload obj 77612
  mload obj 77613
  mload obj 77614
  mload obj 77615
  mload obj 77615
  mload obj 77617
  mload obj 77617
  mload obj 77632
  mload obj 139
  wait 2
  say ��������%actor.w% �������, %actor.iname%?
  %echo% ��������� �������������� �������.
  wait 2
  ����� ��� �����
  ���� ����� .%actor.name%
endif
if %speech.car% == ������
  %echo% ��������� ����� � ���� � �������.
  extract weapon 2 %speech%
  switch %weapon%
    case ������
      set price 50
      mload obj 77618
    break
    case ������
      set price 75
      mload obj 77621
    break
    case ���
      set price 30
      mload obj 77619
    break
    case ������
      set price 7
      mload obj 77620
    break
    case �����
      set price 30
      mload obj 77622
    break
    case ���
      set price 40
      mload obj 77623
    break
    case ���
      set price 80
      mload obj 77616
    break
    default
      say ��� � ���� ������ ������, ������� ������������.
      %echo% - ������ - ������� ������
      %echo% - ������ - ��������� ���
      %echo% - ��� - ����������� ������
      %echo% - ������ - �������� ������
      %echo% - ����� - ������ � ������
      %echo% - ��� - ���
      halt
    break
  done
  if %actor.bank% >= %price%
    %actor.bank(-%price%)%
  else
    if %actor.gold% >= %price%
      %actor.gold(-%price%)%
    else
      say �� � ���� ��� �����!
      %purge% %weapon%
      halt
    endif
  endif
  say ���, ����� �� ������� ���� � ���!
  ���� %weapon% .%actor.name%
endif
~
#77622
�����_���������~
0 q 100
~
wait 1s
mecho ��������� �������� ������, � ���� �����.
wait 1s
eval skazitel %random.8%
if %skazitel% == 7
  ����� ��� �� �����, �� ���, �������
  wait 1s
  ����� ���������� ������ �����,
  wait 1s
  ����� � �������, ���� �������,
  wait 1s
  ����� ������� ��� ������ �����...
  wait 1s
  ��� ��������, ��������� ��������� ���������� ������
elseif %skazitel% == 6
  ����� ���������� ��� ������
  wait 1s
  ����� ������ ��� ��������� ������
  wait 1s
  ����� � ����� ���� ��������
  wait 1s
  ����� ������� ������ ������.
  wait 1s
  ��� ��������, ��������� ��������� ���������� ������
elseif %skazitel% == 5
  ����� ��-��� ������ � ���� ��������
  wait 1s
  ����� ���������� ����
  wait 1s
  ����� ���-�� ������� ���, ��������:
  wait 1s
  ����� �����, �����, ��� �� ���!
  wait 1s
  ��� ��������, ��������� ��������� ���������� ������
elseif %skazitel% == 4
  ����� ����� - �����, ������ ����,
  wait 1s
  ����� �������� ���� �����,
  wait 1s
  ����� ��� �������� - ������ ����,
  wait 1s
  ����� �����, ����� � �������.
  wait 1s
  ��� ��������, ��������� ��������� ���������� ������
elseif %skazitel% == 3
  ����� ��� �� ����� - �� ��������
  wait 1s
  ����� ����� ������� ������,
  wait 1s
  ����� ��� ������� - ������ ����,
  wait 1s
  ����� ����� ������, ������ �����!
  wait 1s
  ��� ��������, ��������� ��������� ���������� ������
elseif %skazitel% == 2
  ����� �� ���� �� ���, ��������,
  wait 1s
  ����� �� �������� ��������  ����
  wait 1s
  ����� � ������� ����� ������,
  wait 1s
  ����� �� �������� �� �����
  wait 1s
  ��� ��������, ��������� ��������� ���������� ������
elseif %skazitel% == 1
  ����� ��, ������, �����, ������ ������ �
  wait 1s
  ����� ������ ������ ����
  wait 1s
  ����� ������� ������ �������
  wait 1s
  ����� �� ����� ��������� ���.
  wait 1s
  ��� ��������, ��������� ��������� ���������� ������
elseif %skazitel% == 0
  ����� ������ ����� �������,
  wait 1s
  ����� ���� ������� ������,
  wait 1s
  ����� ���������� ������ ��,
  wait 1s
  ����� ����� - ����� ����� �����.
  wait 1s
  ��� ��������, ��������� ��������� ���������� ������
else
  ����� ����� - �����, ������ ����,
  wait 1s
  ����� �������� ���� �����, 
  wait 1s
  ����� ��� ��������, ������ ����,
  wait 1s
  ����� �����, ����� � �������...
  wait 1s
  ��� ��������, ��������� ��������� ���������� ������
endif
~
#77623
�����-�������~
0 r 100
~
if %actor.clan% != ��
  if %direction% == west
    �� ������� ����������!!! %actor.name% �������� � �����!
    �� ������ ����������!!! %actor.name% �������� � �����!
    �� ������ ����������!!! %actor.name% �������� � �����!
    �� ���� ����������!!! %actor.name% �������� � �����!
    �� ������� ����������!!! %actor.name% �������� � �����!
    �� ���� ����������!!! %actor.name% �������� � �����!
    �� ����� ����������!!! %actor.name% �������� � �����!
    �� ������� ����������!!! %actor.name% �������� � �����!
    �� ����� ����������!!! %actor.name% �������� � �����!
    �� ��������� ����������!!! %actor.name% �������� � �����!
    �� ������ ����������!!! %actor.name% �������� � �����!
    �� ������� ����������!!! %actor.name% �������� � �����!
    �� ������� ����������!!! %actor.name% �������� � �����!
    �� ������� ����������!!! %actor.name% �������� � �����!
    �� ������ ����������!!! %actor.name% �������� � �����!
    eval pc %actor.iname%
    worlds pc
    calcuid Hoz 77604 mob
    run 77624 %Hoz%
  end
end
~
#77624
��������_�_������~
0 a 0
~
say ���������� ������� ����� ��������!! %pc% � ��� ���������!!
~
#77625
���_�_�����_������_��_�����~
0 aqr 100
~
if %actor.affect(����������)% && (!%actor.affect(���������)%)
  say �� �� ���� �� ������������, %actor.iname%, �� �������� ����, ������ �������!
  wait 10 s
  if %actor.realroom% == 77622
    say �� �� ������ ��-��������, ����� ��-�������...
    %echoaround% %actor% ������� ��������� ���������� ������ ����� %actor.vname%!
    %send% %actor% ������� ��������� ���������� ������ ����� ���!
    %echoaround% %actor% %actor.iname%, ������ ��������� ������, ����� �� ���.
    %send% %actor% ������ �� �������, �� ���������, � ������� ���������� �� ����� � ������.
    %teleport% %actor% 77624
  endif
endif
~
#77626
��������_��_�����_��_����_��_�����~
0 b 12
~
foreach Char %self.pc%
  if %Char.affect(����������)% && (!%Char.affect(���������)%)
    say �� �� ���� �� ������������, %Char.iname%, �� �������� ����, ������ �������!
    wait 10 s
    if %Char.affect(����������)% && (!%Char.affect(���������)%)
      if %Char.realroom% == 77622
        say �� �� ������ ��-��������, ����� ��-�������...
        %echoaround% %Char% ������� ��������� ���������� ������ ����� %Char.vname%!
        %echoaround% %Char% ������� ��������� ���������� ������ ����� %Char.vname%!
        %echoaround% %Char% %Char.iname%, ������ ��������� ������, ����� �� ���.
        %send% %Char% ������ �� �������, �� ���������, � ������� ���������� �� ����� � ������.
        %teleport% %Char% 77624
      endif
    endif
  endif
done
~
#77627
������ ��������~
0 b 10
~
if %self.position% != 4
  eval key %random.10%
  switch %key%
    case 1
      ���� � ������� �������� ������ ���� ����������� �����
      wait 3
      ���� ��� � �� ������ ���� �����, ��������� �� ���� � ��������� �������
    break
    case 2
      ���� ������ ������� �� ����, �� ��� � ������ � �������� �����, ����������� � ���-�� �����
    break
    case 3
      ���� ��������� �� ���������� ��������� �������
    break
    case 4
      eval Aim %random.pc%
      if %Aim.sex% == 1
        set S ���
      end
      if %Aim.sex% == 2
        set S ��
      end
      if %Aim.clan% == ��
        %send% %Aim% �������� ��������� � ��� �� ������� � ������ ��� � ���.
        %echoaround% %Aim% �������� ��������� �� ������ � %Aim.dname% � ������ %S% � ���.
      end
    break
    case 5
      eval Stick %exist.obj(77654)%
      if Stick != 1
        eval Aim %random.pc%
        %send% %Aim% �������� �������� ��� �� ������� ��������� ��������.
        %echoaround% %Aim% �������� ����� ���������� � %Aim.dname% ��������� �������� � ���.
        %load% obj 77654
        ������� �����
      end
    break
  done
end
~
#77628
������� ��������~
0 d 1
������ ������ ���� �����~
if %actor.clan% != ��
  ���� ������ ��� ��� �� ������ ���
  halt
end
if %speech% == ������
  ���� ��� �� ��� � ������� ������ �� ����
  wait 3
  ���� �������� � ������� �������
end
if %speech% == ������
  �����
  wait 3
  ���� �������� ������� ���������� � ����
  wait 3
  ������
end
if %speech% == ����
  ���� � ����������� ������ ������ ����
  wait 2
  ���� ������� ���� � ������� ������� ������ �������
end
if %speech% == �����
  ���� ���������� ������ �������, � ��� ���� � ������ ���������
end
~
#77629
������� ����� ��������~
0 c 0
������ �����~
eval Stick %world.obj(77654)%
if %Stick.carried_by% == %actor%
  %send% %actor% ������ �������������, �� ������� �������.
  %echoaround% %actor% ������ �������������, %actor.iname% ������ �������.
  %purge% %Stick%
  %echoaround% %self% ��������, ������� ��������� ��������, ����������� ������ ������� ����� �� ��������.
  eval key %random.4%
  if %key% == 2
    %echoaround% %self% �� ������ �� ����������, � �������� ��� ������ ������� � ����� �������� ���!
    %load% obj 77654
    drop �����
  else
    %echoaround% %self% �� ������ �� ����������, � �������� ��� ������ �������, �� �������� �� ��� �� ����� �� ����������.
  endif
endif
~
#77630
�������� ���-�� ����~
0 j 100
~
if %object.type% == 19
  eval fd %object.iname%
  if %fd.contains(���)%
    eval Angry %random.5%
    switch %Angry%
      case 1
        wait 1
        ���� � ��������� �������� ���������� �� %object.vname% � � ���� ��������� �������� �� �����
        %purge% %object%
      break
      case 3
        wait 1
        ���� �������� ����� �� %object.vname% � �������� �������� �� ���
        %purge% %object%
      break
      case 5
        wait 1
        ���� ������ ������� %object.vname%, ����� ����� � ���� � ��������� �������
        %purge% %object%
      break
      default
        ���� ������� ��������, �� ������-�� ���� �� ����
        return 0
        halt
      break
    done
  else
    wait 1
    ���� � ��������� ����� ����, �� ����� ��� ��� �� ���� �������� %object.vname% �� ���
    drop %object.iname%
  end
else
  wait 1
  ���� ���������� ��������, �� ��������� ��� %object.iname% ��� �� ��-�����
  drop %object.iname%
end
~
$~
