#5900
����� ����~
2 f 100
~
context 59
unset quester
unset state
unset steps
calcuid bedroom 5966 room
detach 5904 %bedroom.id%
wdoor 5960 north purge
wdoor 5908 east purge
while (%world.curmobs(5902)%+%world.curmobs(5907)%+%world.curmobs(5908)% >= 1)
  if %exist.mob(5902)%
    calcuid gonka 5902 mob
    %purge% %gonka%
  end
  if %exist.mob(5907)%
    calcuid mouse 5907 mob
    %purge% %mouse%
  end
  if %exist.mob(5908)%
    calcuid skel 5908 mob
    %purge% %skel%
  end
done
if (%exist.mob(5904)%)
  calcuid mother 5904 mob
  detach 5911 %mother.id%
  attach 5911 %mother.id%
end
if (%exist.mob(5901)%)
  calcuid mertv 5901 mob
  %purge% %mertv%
  wat 5927 wload mob 5901 
end
if (%exist.mob(5903)%)
  calcuid drakon 5903 mob
  %purge% %drakon%
  wat 5943 wload mob 5903
end
if (%exist.mob(5905)%)
  calcuid docha 5905 mob
  %purge% %docha%
end
if (%exist.obj(5907)%)
  calcuid lovka 5907 obj
  %purge% %lovka%
end
if (%exist.mob(5906)%)
  calcuid madangel 5906 mob
  %purge% %madangel%
end
context 4000
set warlockstory 0
worlds warlockstory
~
#5901
����������� ��������~
0 r 100
~
*����������� �������� | ��� | Great-All PC | 100
context 59
wait 1s
����
wait 1s
if ((%state% == �����) || (%state% == ����))
  ������ .%actor.name%
  halt
end
%echo% �� ������ � ������� ��� ������ ������� �� ��� ��������.
wait 5
if (%quester% != %actor.iname%)
  say ������ ��� ����� ����
  %echo% "������� ���������%actor.g% ���� �������%actor.w%?" - �������� ��������� %self.name%.
  wait 5
  say �������-�� ���, ��� ����������� �� - ���� ��� ����?
  ���� .%actor.name%
  halt
elseif (%state% == ����)
  set state ����
  worlds state
  ���� .%actor.name%
  say ���� �� ��� ������? � ���� ���� ��� ��� ��������!
  wait 5
  �����
  say ������-��! �� ��� ��, �� ��������� � ��� ����?
  �����
  say ��� �� ���, ���� �� ���%actor.g% ������%actor.g% ��� �� ��������
  say ���� ���� �������������...
  �����
  say ����� ������ �������, �� �� ���������
  emot ���������� �����������, �������� � �������� �������������
  wait 2s
  say ��� � ������� ����, � ���� ����� ������ �����
  say ��������� ��������� ������������� � ������� �� ����
  say � ������� � ��� ���-�� ��������� � ������� ��� � �����
  say � �� ��������� ������� ����� � �������� ������ ������� �� ���
  say ������ ����� ���������, ������ ��������� ���������� ���� 
  say � �������� �������� �� �������, �������� ������� ��������
  say �� ��������� �� ������ ������ ������� ���� �� ������
  say ���� �� �� ��������� � �������, ������� ��� ��� �������
  say ����� ��� � �� ������ - ���� ���� � ���� ���-�� ��������,
  say ���������� ������������ ����
  emot �������� � ������� �������
  say ������ � ������ ���� ��������� ������ ���� �� ����� �������
  say � ������ ��������� ����������������, ��� �� ������� �� ���,
  say �� ��� ������ ���������� ��������, ���������� ���, ��� �����
  say � �������� � ���� �� ����� ��������, ��� � ����� �������
  say �� ������� �������������. ���� �� � ���, �������, ����
  say ���������� ��� � ����, ������ �������� � ������� ����������
  say ��� ������, ������� ����� ����� �������� �� ������ ����
  say ������������. ������ ����� � ������� ��������� ����� �����
  say ����� ��� ������� ��������� �������� �� ������������� �
  say � ������ ����������� ��� ������ ���� ����� ��� �� �����.
  say ��������� �����������, ���� ���� �������������, ������ �����,
  say ������� ��������� ��������, �� � ����� � �����.
  wait 3
  ����
  say �� ��� �� ���� ��������� - ������������� �� �� ���� � ��
  say ����� � ����� - ������� ���������� ���� ������� �� ����������,
  say ���������� �� � ������ ���������, ���������� �������, ����
  say ����������� ��-������� ��������� �����. ���� ���� ������������
  say ���-�� �� �����.
  say ���������� ������� �� ���� ��� ���������� ���� ���������
  say �������� ��� ���� �������������, �� �������� ���� �� �����������
  say ����� ������������� �� ���������� �� ������� �� �����������
  �����
  say �� �� ���� ��� ��������� � ������ ��� �������������
  say ���������� �� ���������� � ������ ���������� ���������,
  say ������� �� ��� ������������ ����, ����� � ���������, �� � 
  say ������� �� ���, ��� ��� ������� ��� �����-������� � ����.
  say ������ �������� � �������. � ��� ��� ��� � �� ���� ���
  say ������ ���, ��� ����� ����� �� �������������
  �����
  say ��������� � ������ ����, ����� ������������ ��� �� ���������� 
  say ������� �� � �����, �� ��� ����� �� ���������, ��� � �����������
  say ��� ������ ����� �� �������.
  wait 3
  say ���� �����, ���� � ������� �� �������, ������ ��������, ���� 
  say ���� � ������� �� ������������, �� ������������ ������.
  say ������ � � ����� ����� ����� ��� ��������� ����� ��� �� ������
  say �� �� ��������� ����������� ������ ����-�� � ����� ������������,
  say �� �� �������� ��������� ���� ���������� �� ����������,
  say �� ���������� ������ ��������� ��� ��������� �� ��������
  say �������� � ������� ���������� ���������� �������
  say ����� �� ����, ���� � ����� ������ ����� ��������� �� ����������
  �����
  wait 3
  say ������ � ������, ������������ ����� ������� ���, ��� �����
  say �������� ����� ��������� ��� ������ ����, ������� ��� ����
  say ���������� � ������� ��� ���������� �� ���������� ���������
  say � �� ��� � �������� ���, �� ��� ��������� � �������
  �����
  say ��� ������, �������� ���� ������ �������� ���, ������ �����
  say ������ ������, � ���� ��� ��� ���� ��������. ����������� ������
  say ���������� ��������� - ��� �������� �� ���� ���� ��������.
  halt
elseif ((%state% == ����) || (%state% == �����) || (%state% == ����))
  ���� .%actor.name%
  say ���� �� ��� ������? � ���� ���� ��� ��� ��������!
  wait 5
  %echo% %self.iname% ��������� �������� ��� ������� �� ��������.
  eval temp %actor.position(8)%
  %force% %actor% down
elseif (%state% == ����)
  ����
  say ��� ��� ���, ��� ��� ���!
  say �� ��������%actor.g% ���������������, �������%actor.w%
  say � ������ ������������ ���������� ���������
  eval temp %actor.exp(+50000)%
  wait 3
  say ��, �� �� ��� ������? ��������, � ������� ���...
  wait 3
  emot ����� ��������� � ���������� �����������
  say ���. ������� ��� ��� ��� � �� � ����
  say �� ���� ��� ���� �������, ��� ������ ��������� ���������
  emot ��������� ��������� ����������� ��������� ����
  wait 1s
  say ���� �� �������� �������, � ������� � �� ������� �����������
  say ������� ��������������.
  wait 1s
  if (%actor.can_get_spell(������� ����)%)
    if (!%actor.spelltype(������� ����)%)
      mspellturn %actor% �������.���� set
      say ������� ���� - ������ ���������� ��� �������������
      ����� %actor.name%
    else
      say ������, ��� �� ��� ������ ��� ��������� �����!
      say ����� ���� ������� ����� ������� ����
      %echo% � ����� ������� %self.iname% ������ �� ������� ������� ��� � ������ ���.
      eval temp %actor.gold(+500)%
    end
    eval temp %actor.setquest(5900 %date.yday%)%
  else
    �����
    say ������, ���� ������, �� �����%actor.q% �� ��� ����� ��� ����������
    say ������� �����, ����������� �������!
  end
  wait 3
  say ������ � ����� ����� ����� �������� �����, &W����� ����� ������&n!
  wait 2s
  say �����, ������, ��� � �������� - ��� ����� ������ ���� ��������� ������
  set state ����
  worlds state
  %door% 5908 east purge
  eval temproom 5900
  while %temproom% < 5963
    eval rnd %random.4%
    switch %rnd%
      case 1
        mat %temproom% mload mob 5902
      break
      case 2
        mat %temproom% mload mob 5907
      break
      case 3
        mat %temproom% mload mob 5908
      break
      case default
      break
    done
    eval temproom %temproom%+1
  done
end
~
#5902
���������� �� ���������~
2 c 1
���������� �����~
if %arg.contains(���������)%
  %echo% ������� �� ��������� ���� ����������, �� ������ ����������� � ���������� �� ����.
  wait 3
  %teleport% %actor% 5918
else
  %send% %actor% ���� �� ���?
end
~
#5903
�������� � ���������~
0 d 100
*~
context 59
if ((%actor.name% == %quester%) || (%actor.vnum% != -1))
  ������ .%actor.name%
  halt
end
wait 1
switch %speech%
  case ����
    �����
    say ���, ���������, �������, �������
    say �� �� ������ ������ � ���� �� ����
    �����
  break
  case ����
    case ����
      set quester %actor.iname%
      set state ����
      eval steps 0
      worlds quester
      worlds state
      worlds steps
      ��� .%actor.name%
      say � ��� � ����, ��� ������� ����������� � ����!
      say ��� �� ������� ��� �� ��� ��� ���������
      �����
      say ��� �� �� �������%actor.w%, ������ ���� ����� ��� ���
      say ��� ��� �� ���� �����������, ����������� ����������
      wait 1s
      say �, ��, ���� �� �����
      say ���� ���� �������� ����� � ����� ��������� ����
      say ���� � �� ���� ����� ���� ���� ����� �����������
      wait 3
      %echo% %self.iname% ����� � ������ ������, ������ �����-�� ����.
      %echo% %self.iname% ������ � ����� ������.
      wait 3
      %load% obj 5901
      %load% obj 5903
      %load% obj 5904
      %load% obj 5905
      ���� all .%actor.name%
      wait 3
      %echo% %self.iname% ��������� �������� ��� ������� �� ��������.
      eval temp %actor.position(8)%
      %force% %actor% down
      wait 1s
      ������ ���� ����� ���� ��������� ����� - �����������, ���������!
    break
  done
~
#5904
�������� �����������~
2 e 100
~
wait 2s
%echo% _- ����?
wait 1s
%echo% �������� ������� � �������� ����� ������������.
%echo% ��������� ��������� �������� ������� �� ��� ������� ����� �������.
%load% mob 5905
calcuid docha 5905 mob
wait 1s
%force% %docha% �����
%force% %docha% say ��������, ���, ��������, ������ ��������� ���.
%force% %docha% �����
%force% %docha% say ��! � �� ���, ������������?
detach 5904 %self.id%
~
#5905
������ ��������~
1 h 100
~
switch %self.vnum%
  case 5901
    if (%self.room% != 5908)
      %echo% �� ������� %self.vname%.
      %echo% %self.iname% �������� �� ����� � ��������� ������� � ��� � ����.
      return 0
      halt
    else
      %echo% &y�� ������� %self.vname%, � ����� ������ ������� !&n 
      if %actor.affect(������ ��� ��� ������)%
        %force% %actor% ������
      end
      %actor.position(6)%
      %send% %actor% ��� �������� �� �����.
      %echo% ���� �� ��������� �������� �� ������� �������, ��������� ����� ������.
      %door% 5908 east room 5909
    end
  break
  case 5903
    if (%self.room% != 5943)
      %echo% �� ������� %self.vname%.
      %echo% %self.iname% �������� �� ����� � ��������� ������� � ��� � ����.
      return 0
      halt
    else
      if (%exist.mob(5903)%)
        %echo% �� ������� %self.vname% � ����. 
        %echo% ��������� ������������ �� ��������, %self.iname% ������. 
        %echo% &R���������� ������ ����, ���������� �� ������, ������� ����.&n 
        calcuid drakon 5903 mob
        attach 5908 %drakon.id%
        exec 5908 %drakon.id%
      end
    end
  break
  case 5904
    if (%self.room% != 5927)
      %echo% �� ������� %self.vname%.
      %echo% %self.iname% �������� �� ����� � ��������� ������� � ��� � ����.
      return 0
      halt
    else
      if (%exist.mob(5901)%)
        calcuid mertv 5901 mob
        %echo% �� ������� %self.vname%, ���� ��������� ������. 
        %echo% &b������ ������ ������� %mertv.vname% � ������ �� ���.&n
        dg_cast '���������' %mertv.name%
        %echo% %mertv.iname% �������� �����.
        detach 5907 %mertv.id%
        attach 5908 %mertv.id%
        exec 5908 %mertv.id%
      end
    end
  break
  case 5905
    if (%self.room% != 5935)
      %echo% �� ������� %self.vname%.
      %echo% %self.iname% �������� �� ����� � ��������� ������� � ��� � ����.
      return 0
      halt
    else
      if (%exist.obj(5900)%)
        calcuid gruda 5900 obj
        %purge% %gruda%
      end
      %echo% �� ������� %self.vname% � ����, ����� ������� ��������� �� ����.
      if (%self.carried_by%)
        set playa %self.carried_by%
        dg_cast '������ �����' .%playa.iname%
      end
      %echo% &C������ ������� ��������� ����� ������ �� ��� �����.&n 
      %echo% ����� �������� ������ ��������� ��� �����. 
      %load% mob 5902
      calcuid gruda 5902 mob
      eval savior %actor%
      remote savior %gruda.id%
      attach 5908 %gruda.id%
      exec 5908 %gruda.id%
    end
  break
done
return 0
%purge% %self%
~
#5906
������ ����� ��������~
2 e 100
~
switch %self.vnum%
  case 5908
    if (%exist.obj(5901)%)
      calcuid sphere 5901 obj
    end
  break
  case 5943
    if (%exist.obj(5903)%)
      calcuid sphere 5903 obj
    end
  break
  case 5927
    if (%exist.obj(5904)%)
      calcuid sphere 5904 obj
    end
  break
  case 5935
    if (%exist.obj(5905)%)
      calcuid sphere 5905 obj
    end
  break
done
wait 1
if %sphere%
  %echo% %sphere.iname% ����� �����%sphere.g% ����������� � ��� �� ���.
end
~
#5907
����������� ��������~
0 r 100
~
eval temp %self.hitp(200)%
wait 1s
eval rnd %random.2%
switch %rnd%
  case 1
    %echo% %self.iname% ���������� � ������� � ���������.
  break
  case 2
    %echo% %self.iname% ��������� ���-�� � ��������� �� �����.
  break
done
~
#5908
������������� ����������~
0 z 100
~
context 59
wait 1s
switch %self.vnum%
  case 5901
    eval steps %steps%+1
    worlds steps
    say ��������� ����, �, �������%actor.w%!
    say ������� �������������, ���� ����� ����
    say ���� ������ ������� ����� ����� ��������
    say � ���������� ������� � ��� ������� �����
    say ����� ���� ����� �� ������ �� �� ���.
    say ��� ������������ �������� ��������� ����
    say ���� �� ������� ��� ��� ��� - ����������
    say �������� ������������� �������, � ��� ��
    say �����, ��� ��� ������� � ���� ������� ����?
    �����
    wait 3
    if (%exist.mob(5905)%)
      say ����� ����� ����� ���� ����������� �� ���
      say �������� ��� �����
      attach 5913 %self.id%
    else
      say ���� ����� ����� ���� � ���� ������� -
      say ��� ����� ���-�� ����� � �������,
      say ���������� ��� ������� ������������ ����
      wait 3
      say ����� ����� �� ���� � �������, �������� ��� �����
    end
  break
  case 5902
    eval steps %steps%+1
    worlds steps
    %echo% � ������ ���������, %self.iname% ���������� ������������ �������. 
    say ��������� ����, �, �������%actor.w%!
    say ������� ������� ���� �������������� ����� 
    say ����� � ����� ������ ���� �������� �������
    say ��� ���� � �������.
    %echo% %self.iname% ������ ������������� � �����.
    wait 1s
    say ������ �� ����!
    wait 3
    attach 5909 %self.id%
    east
  break
  case 5903
    detach 5910 %self.id%
    eval steps %steps%+1
    worlds steps
    %echo% %self.iname% ���������� � ����, ������� ������ ������.
    %echo% ����� �� ������ ������� ����, ����� ����������� ����� � ����.
    wait 3
    %echo% � ������ ���������, %self.iname% ��������� ������������ �������. 
    say ��������� ����, �, �������%actor.w%!
    say ����� �� ������ �����%actor.g% � �������� � ����������,
    say ������� ����� ���������� ����
    say �����, � ����� ������� �� �� �������� ���
    attach 5917 %self.id%
  break
done
~
#5909
������ ���� ��������~
0 br 100
~
wait 3
if ((%savior.realroom% != %self.realroom%) || %self.fighting%)
  halt
end
if (%self.realroom% != 5960)
  eval rnd %random.3%
  switch %rnd%
    case 1
      %echo% %self.iname% ��������� ����� �� �����.
    break
    case 2
      %echo% %self.iname% ������ ������������� � �����.
    break
    case 3
      %echo% %self.iname% ������� �� ���, � ����� ������� � �������� �����������.
    break
  done
  north
  halt
else
  %echo% %self.iname% ��������� �������� ����� ����� ����.
  wait 1s
  %echo% %self.iname% ��������� �� ������ ���� ������� �� ���-��.
  %echo% ������� ����� ������������ ������ ������.
  %door% 5960 north room 5963
  wait 3
  %echo% ������ ������� �������, %self.iname% ������� � ���.
  north
end
wait 1s
if (%self.realroom% == %actor.realroom%)
  say � ���� ����� ��� �����. ����� ����� ����� ���� ����
else
  ���� � ���� ����� ��� � ����. ����� ����� ����� ���� ����
end
detach 5909 %self.id%
~
#5910
������ �������� �������~
0 b 30
~
%echo% %self.iname% ��������� ������� �����.
%echo% �������� ����, ��������� � ��� ���� �� ������������ ����, ����������.
%echo% %self.iname% ��������� ��������� ��� �������.
~
#5911
����������� ���� �������~
0 r 100
~
*����������� ���� ������� | ��� | Great-All PC | 100
context 59
wait 1
if ((%state% == ����) || (%state% == ����))
  say � ��� � ���%actor.g% ����������%actor.w% �������%actor.w%!
  say ��������� ���� �� ������ ����, %actor.name%
  emot ������� � ��� � ������ ������
  wait 1s
  say ���� ������, ������ ����� � ���� ������
  say �� ���������� ��� ��� ������ ������� ����
  say ������ ���������, ��� ������� �������� ����
  say �� � ��������� ��� ����, ���� � ����� �������
  wait 1
  %echo% %self.iname% ������� ���� � ����������� �����, ���������� � ����� �����...
  calcuid portroom 5964 room
  attach 5925 %portroom.id%
  exec 5925 %portroom.id%
  detach 5925 %portroom.id%
  set state �����
  worlds state
  halt
end
if ((%state% == �����) || (%state% == �����) || (%state% == ����))
  halt
end
say �� ���, �������, ����������?
������
wait 1s
������
%echo% %self.iname% ������ ������.
%echo% %self.iname% ��������� � ��������������� ������.
%echo% %self.iname% �������� ���������, ������� �� �����.
%echo% ��������� ��� �� ������� - ���������, ������� ����� ��� � ���.
%echo% �� ������� !
eval temp %actor.wait(2)%
wait 2s
%echo% � ��� ��������� ����������� ������.
wait 2s
%echo% ���������� �� ������ � ����...
wait 2s
if (%actor.sex% == 2)
  say �� �������, ������?
else
  say �� �������, �����?
end
say �� �� ������ ����, ������� � ��� ����� �����������
say � ������ ��� ��� ����� �� ������, ��� � � ��������
say ���� ����� �������� � ��� ���� �����
wait 3
say ��� �� �� ������%actor.g% ����, ������ ������ ����
�����
say � ��� ���� �� �� ���������� � ����... ������?
say � ��, ��� ������, ������ - �� ���� ����� � ��� �� �����
say �� ����� ���� ����� - ������� ���� ���, �� ������ � ����
������
say ��� �������� ��� �������� ����� �����, �������� � �������
calcuid bedroom 5966 room
attach 5904 %bedroom.id%
set state �����
worlds state
~
#5912
�������� ������������~
0 d 1
*~
context 59
wait 3
switch %speech%
  case �������
    case �����
      case ��
        if (%state% == �����)
          set state ����
          worlds state
          ����� .%actor.iname%
          say ����� ��� ��� ����!
          say ����� � �������, � ���� ����� ��������������!
          �����
          say ���� ������ �����, ������, � �� - �������%actor.w%, � ����
          wait 3
          %echo% ����� ���� ������� ���������. ����� ��-��������� ���������. 
        end
        wait 3
        if (%steps% < 3)
          say ������ ��� �� ������ ������� �� ��� ��� �����,
          say ���� ����� ��������� ����� � ����� ����������
          say ������� ����� � ������, � ������� ����� ������ ������ ���
          say ��������� ��� ��������, ������ �������� � ���� �� ���-������
          say ������� �� �������� ��� ���������, ��� � ������� �� ������
          attach 5918 %self.id%
        else
          detach 5918 %self.id%
          say � ����, ���� � ����� ��������� ��� �� �������
          say � ��� ������, ��� �� ����� ������� �� �� ���
          say ������� ���� � �������� - ����� ���� ��� ����� �������������
          wait 5
          ������
          wait 5
          �����
          wait 1s
          east
          wait 2s
          %echo% %self.iname% ������� ���������� �������, ��������� ����� � ����.
          %echo% %self.iname% ������� �� ���� ������� ���� ������� ��������.
          wait 1s
          south
          wait 5
          ����� ��������.������
          wait 5
          east
          wait 1s
          ����� ����.�������������
          wait 2s
          �����
          wait 5
          west
          wait 5
          ���� .%actor.iname%
          attach 5913 %self.id%
          calcuid gonka 5902 mob
          attach 5913 %gonka.id%
          calcuid mertv 5901 mob
          attach 5913 %mertv.id%
          detach 5912 %self.id%
        end
      break
      default
        �����
        halt
      break
    done
~
#5913
������� ���������~
0 d 1
������ ������ ���� ����~
context 59
if (%steps% >= 3) && (%actor.vnum% == -1)
  ������
  ���� .%actor.name%
  if (%self.vnum% != 5905)
    dg_affect %self% ��������� ���������_����� 1 10000
  end
end
~
#5914
��������� �����������~
2 e 100
~
if (%exist.obj(5906)%)
  wait 3
  calcuid lovka 5906 obj
  %purge% %lovka%
  %echo% ����������� �� ��������, �� �������� ������ ������� �� ���� ���������.
  %echo% ��������� ����������� � ������ ��������� ��� � ����.
  eval dmg %random.50%+10
  %damage% %actor% %dmg%
  wait 3
  %echo% ���������� ������� �����, �� ������������ �� ������� ���������.
  %load% obj 5907
end
~
#5915
������ ���� ���������~
0 k 100
~
if (%self.hitp% < 600)
  foreach victim %self.pc%
    if (%victim.maxhitp% < %victim.hitp%)
      %send% %victim% '���� ����� ��� ������' - ��������� ����� ����� � ����� ������.
      eval temp %victim.hitp(%victim.maxhitp%)%
    end
    eval percent %victim.hitp%*100/%victim.maxhitp%
    if (%percent% < 50)
      halt
    end
  done
  dg_cast '���������' %self.name%
  %echo% %self.iname% ������ ���������� ����.
end
~
#5916
������ ���� �����~
0 k 100
~
*������ ���� ����� | ��� | Fight | 100
if (!%exist.mob(5906)%)
  halt
end
eval rnd %random.10%
if (%rnd% < 4)
  eval leader %self.leader%
  if (%leader.realroom% != %self.realroom%)
    ������ ��� � ���! ���� � ����������� ���!
  else
    ����� %leader.name% ��� ������� ������!
    ����� %leader.name% �������� ������� ��, ��� �� ��������!
    ����� %leader.name% &M����������&n!
  end
end
if (%self.hitp% < 100)
  %echo% %self.iname% �������� ������ ��������.
  %echo% %self.iname% �������.
  %teleport% %self% 5965
  wait 1s
  ������ �� ���������� �� ��� ��������, �������%actor.w%!
end
~
#5917
������ � �����? ������ � �������~
0 r 100
~
wait 3
if ((%exist.mob(5901)%) && (%exist.mob(5902)%) && (%exist.mob(5905)%))
  calcuid mertv 5901 mob
  calcuid gonka 5902 mob
  calcuid docha 5905 mob
  if ((%mertv.realroom% == %self.realroom%) && (%gonka.realroom% == %self.realroom%) && (%docha.realroom% == %self.realroom%))
    ���� .%actor.name%
    say ����, ��� � �����
    say ��������� ����� �� ���� �����
    say ���� ����� ������� � ���, ��� ��������� ��� �����!
    %echo% � ����� ������� ������ ����� �����, ������� �� ��������.
    eval temp %actor.wait(1)%
    %teleport% %self% 5918
    wait 2s
    %teleport% %self% 5943
    %echo% �������� � ���� ����� �������� ������, � �� ��� � �������� ���������.
    %load% mob 5906
    if (%gonka.realroom% == 5943)
      %echo% %gonka.iname% ������ ��������� �� �����!
      %force% %gonka% ����� ���������
      %force% %mertv% ����� ���������
      %force% %docha% ����� ���������
      ����� ���������
    end
    detach 5917 %self.id%
    halt
  end
end
say ����� �� �� ��������� ���� ���� ����� ����������?
say ��� �� ������ ��� �� �� ��� �� ���������� � ���!
~
#5918
����� � �����~
0 r 100
~
wait 3
say �� ���, �������%actor.w%, �����%actor.g%?
������ .%actor.name%
~
#5919
����� ������ � �������~
0 bh 100
~
*����� ������ � ������� | ��� | Random, Greet-All | 100
context 59
if (%exist.mob(5906)%)
  calcuid madangel 5906 mob
  if (%self.realroom% == %madangel.realroom%)
    *%echo% %self.iname% ��������� �� �����!
    ��� .%quester%
    ����� %madangel.name%
  end
end
foreach victim %self.all%
  if ((%victim.vnum% == 5910) || ((%victim.vnum% == 5911))
    *%echo% %self.iname% ��������� �� �����!
    ��� .%quester%
    ����� %victim.name%
    halt
  end
done
~
#5920
������������ ����� ����������~
0 c 100
������������~
*������������ ����� ���������� | ��� | Command | 100 | ������������
eval half %actor.maxhitp%
if (%actor.hitp% > %actor.maxhitp%/2+25)
  %echo% �� ������� ������ ��������� ��� ���� ����� ������������!
else
  %echo% �� �������� ������� �������� ���� � ���������� �� �����.
  eval temp %actor.position(6)%
  eval temp %actor.wait(1)%
  if (%exist.mob(5905)%)
    calcuid docha 5905 mob
    exec 5921 %docha.id%
  end
end
~
#5921
������������, ����� ���������~
0 z 100
~
*������������, ����� ��������� | ��� | Auto | 100
if (%exist.mob(5906)%)
  calcuid madangel 5906 mob
  %teleport% %self% %madangel.realroom%
  %echo% %madangel.iname% ������������� - ������ ���� �� ������� ����������.
  %echo% ������ �� ��������, �� ������ � ��� ��������� %self.iname%.
  %echo% &R�������� ���������&n %self.rname% ������� �������� � %madangel.rname%.
  *%echo% %self.iname% ������� &R���� �������&n � ������� ��� �� �������� ���������!
  %echo% ������ ���������� ������� %self.iname% ������ ������ %madangel.dname%.
  %purge% %madangel%
  exec 5923 %docha.id%
end
~
#5922
�������� ��������� ���� �������~
0 f 100
~
*�������� ��������� ���� ������� | ��� | Death | 100
if (%exist.mob(5905)%)
  %echo% %self.iname% ������������� - ������ ���� �� ������� ����������.
  calcuid docha 5905 mob
  if (%docha.realroom% != %self.realroom%)
    %teleport% %docha% %self.realroom%
    %echo% ������ �� ��������, �� ������ � ��� ��������� %docha.iname%.
  else
    %echo% ��������� ������, �� ������ � ��� ��������� %docha.iname%.
  end
  %echo% &R�������� ���������&n %docha.rname% ������� �������� � %self.rname%.
  *%echo% %docha.iname% ������� �� %self.vname% &R���� �������&n, ������� ������ �� � �������.
  exec 5923 %docha.id%
end
~
#5923
�������������, �������~
0 z 100
~
*�������������, ������� | ��� | Auto | 100
context 59
while (%world.curmobs(5910)%+%world.curmobs(5911)% > 0)
  if (%exist.mob(5910)%)
    calcuid hran 5910 mob
    %echo% ���������� ����� ������� ���������, �� ������� � �����.
    %purge% %hran%
  end
  if (%exist.mob(5911)%)
    calcuid hran 5911 mob
    %echo% ���������� ����� ������� ���������, �� ������� � �����.
    %purge% %hran%
  end
done
wait 1s
%echo% %self.iname% ������ ������.
if (%exist.mob(5901)%)
  calcuid mertv 5901 mob
  dg_affect %mertv% ��������� ���������_����� 0 0
  %force% %mertv% ���� �
end
if (%exist.mob(5902)%)
  calcuid gonka 5902 mob
  dg_affect %gonka% ��������� ���������_����� 0 0
  %force% %gonka% ���� �
end
if (%exist.mob(5903)%)
  calcuid drakon 5903 mob
  %force% %drakon% ���� �
end
���� �
wait 1s
�����
wait 1s
say ��� ��� ��������� ���
say ������� ���� �� ������!
say ������ �� � ����� ������ ��������� � �����,
say ������� ���� ��� ��� ��������!
say ������, ����������� ����� � ��� �������
say �� ��������� ������ ������� ���� ����-�� ���������
set state ����
worlds state
~
#5924
����������� ��������~
0 r 100
~
context 59
if ((%actor.name% == %quester%) && ((%state% == ����) || (%state% == �����)))
  wait 3
  ������ .%actor.name%
end
~
#5925
��������� ������ � ������~
2 z 100
~
wportal 11504 2
~
$~
