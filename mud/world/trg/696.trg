#69600
��������������~
2 c 0
�����~
if !%arg.contains(�������)%
  wsend %actor.name% ��� �� ������ �����?
else
  %send% %actor% _�� ���������� ����� � ����� ���������� �������, 
  %send% %actor% _�� ��� ������������ �� ����� ��� � ����� �� �����.
  %echoaround% %actor% %actor.name% ��������� ����%actor.g% ���������� ������� � ������. 
  %echoaround% %actor% �� ������ ��������� ���������, ������%actor.g% ��� �� �����.
  wload obj 69601
  detach 69600 %self.id% 
end
~
#69601
������������������~
2 c 0
������~
*wait 1s
*wecho actor test - %actor.name%
if !%arg.contains(�����)%
  wsend %actor.name% ��� �� ������ ������?
else
  if !%actor.haveobj(69601)%
    %send% %actor% �� ���� ��������-��?!
  else
    calcuid tmp 69601 obj
    *���� ������� �� ������
    if %tmp.val1%>0
      **************
      %send% %actor% ���� � ���� ���������� �������, �� ������ ��� ���������� �� �������� �� ���� �����.
      %echoaround% %actor% %actor.name% ����%actor.g% � ���� ���������� ������� � �����%actor.g% ��� ���������� �� �������� �� ���� �����.
      *attach 69611 %tmp.id%
      *exec 69611 %tmp.id%
      *detach 69611 %tmp.id%
      wforce %actor.name% ������ ������� �����
      *wpurge tmp.id
      *wload obj 
      **************
      wait 1
      switch %random.10%
        case 1
          *����������� �����
          if %world.curmobs(69600)%>0 
            %echo% _�������� ����� ����� ��������� ����������� �����.
            halt
          end 
          %load% mob 69600
          set v1 %actor%
          calcuid maus1 69600 mob
          *attach 69603 %maus1.id%
          remote v1 %maus1.id%
          exec 69603 %maus1.id%
          *detach 69603 %maus1.id%
        break
        case 2
          if  %world.curobjs(69607)%>1
            %echo% _���������� ������������ ������� ����� ����� ��������� ����������� �����.
            halt
          end
          *���� �������
          wait 1 
          wecho _&Y����� �� �������� ����� ����� ���������� ��������� �������.&n
          wload obj 69607
        break
        case 3
          if  %world.curobjs(69614)%>10
            %echo% _���������� ����� ����� ����� ��������� ����������� �����.
            halt
          end
          *������ �������
          wecho _&C��������� ����������� ������ ���� � ���������� ������� ���� �������.&n
          wload obj 69614
        break        
        default
          %echo% _�������� ����� ����� ��������� ����������� �����.
        break
      done
      
    else
      %send% %actor% �������� �� ������� �����, ��� �������, �������!
    end
  end
end
~
#69602
������������������~
2 c 0
������~
*wecho test quester - %quest696.name% actor - %actor.name%
if !%arg.contains(�����)%
  wsend %actor.name% ��� �� ������ ������?
else
  if !%actor.haveobj(69601)%
    %send% %actor% �� ���� ��������-��?!
  else
    calcuid tmp 69601 obj
    *���� ������� �� ������
    if %tmp.val1%>0
      **************
      %send% %actor% _���� � ���� ���������� �������, �� ������ ��� ���������� �� �������� �� ���� �����.
      %echoaround% %actor% %actor.name% ����%actor.g% � ���� ���������� ������� � �����%actor.g% ��� ���������� �� �������� �� ���� �����.
      wforce %actor.name% ������ ������� �����
      **************
      wait 1
      switch %random.10%
        case 1
          *����������� �����
          if %world.curmobs(69601)%>0 
            %echo% _����� ����� ����������� ������� � �������� �����, �� �������� ���� �����.
            halt
          end
          %load% mob 69601
          set v1 %actor%
          calcuid maus1 69601 mob
          *attach 69603 %maus1.id%
          remote v1 %maus1.id%
          exec 69603 %maus1.id% 
        break
        case 2
          *���� ������
          if  %world.curobjs(69613)%>10
            %echo% _���������� ����� ����� ����� ��������� ����������� �����.
            halt
          end
          wecho _&C��������� ����������� ������ ���� � ���������� ���������� ������ ���� ������ �����������.&n
          *����� ���� ��������� ����������� ������ � ��������� ������� ������ ���� ������ �����������.
          wload obj 69613
        break
        case 3
          if  %world.curobjs(69608)%>5
            %echo% _���������� ������������ ������� ����� ����� ��������� ����������� �����.
            halt
          end
          *������ ����
          wecho _&y����� ����� �������� ����� ���������� ������ �����-��������.&y
          wload obj 69608 
        break        
        default
          %echo% _�������� ����� ����� ��������� ����������� �����.
        break
      done
      
    else
      %send% %actor% �������� �� ������� �����, ��� �������, �������!
    end
  end
end
~
#69603
����������������~
0 z 0
~
wait 1s
%echo% _�� ������� ����� ���� ��������� ����������� ����.
�� ����� ������������ � ������ ������ ����������� ������, ������� �� ������
wait 1s
� �� ��� ��� �� ����� �������?!
wait 1s
%send% %v1% _��� ���� �� ���������� ���� ���� �� ���������� ��� �������� ������ ����-�������.
%echoaround% %v1% _��� ���� �� ���������� ���� ���� �� ���������� %v1.rname% �������� ������ ����-�������.
~
#69604
�����������������~
0 d 0
*~
*mecho %speech%
if %speech% == ����� ������
  *mecho %speech% 
  � !����! %actor.name% 
  � !��������! %actor.name%
  � !���������! %actor.name%
end
~
#69605
��������������~
2 c 0
������~
if !%arg.contains(����)%
  wsend %actor.name% ��� �����?
else
  %send% %actor% _���� � ���� ������ ��������� ������ �������, �� �������������, ������� �� ������ ����.
  %echoaround% %actor% %actor.name% ������%actor.g% ���-�� � ��� ���� �, �������������, �����%actor.g% �� ������ ����.
  wait 1s
  wecho _����������� ������ ���� �� ����-�������� ���������!
  if %world.curobjs(69660)% < 17
    wload obj 69662
    wload obj 69662
    wload obj 69662
  end
  detach 69605 %self.id%
end
~
#69606
�������������������~
0 f 0
~
switch %random.3%
  case 1
    if %random.100% < 10 && %world.curobjs(69663)% < 8
      mload obj 69663
    end 
  break
  case 2
    if %random.100% < 10 && %world.curobjs(69664)% < 8 
      mload obj 69664
    end 
  break
  case 3
    if %random.100% < 10 && %world.curobjs(69665)% < 8
      mload obj 69665
    end 
  break
  default 
    halt
  break 
done
~
#69607
����������������������~
0 j 100
~
wait 1s
mtransform 69604
���
wait 1s
mecho - �� ������� ���� ������ �������!
mecho - �� ����� ��������� � ������ ���� ������ �����.
mecho - ������� � ���� � ����� �� ��������...
wait 1s
*******************
switch %object.vnum%
  case 69607
    *���� ���� �������
    if  %world.curobjs(69604)%>1
      %echo% _�������� ������-�� ������ (� ����� ���� �����) ������� �����.
      wait 1s
      %echo% _����� ��������� �������� � �� ���� ��� ��������� � ���� �����.
      halt
    end
    
    mecho _����� ����� ������� �� ����,
    mecho _� ����� ������� ��� �������� �� �����, ����� ���-�� � �����.
    wait 1s
    mpurge %object.id%
    mecho - ��� �����!
    mload obj 69604
    ���� ��� %actor.name%
    wait 1s
    mecho - ����� ��� ����� ����� ������� ��� ������� �������
    mecho - � ��������� ���� ����� ������ ������
    mecho - �� �� �� �����, �� �� �������!
    mecho - ��� �������� ���, ��� �� ��������� �� �� ����� �� ����.
    mecho - ��, � ������ ��� ����.
    �� ������� � ��������� �����
    mpurge %self.id% 
  break 
  case 69614
    *���� �������
    �� �������
    wait 1s
    �� ������� ����������� ��������
    wait 1s
    mecho - ������ ��������� ��� �� ���� �������� ���� �����!
    ���
    wait 1s
    mecho - ��� ���, � ��� ��� �...
    �� �������� ����� � ���� ������ ���-�� ���������.
    wait 1s
    mecho - ������-������ �� �������� ������, �� ����������� ������,
    mecho - �� �������� ������ ������-������� ������ ������� ���� � ����� ���������. 
    mecho - ��� ��� ����� ����� �� ���� �������.
    mecho - ����� �� ����� ��� ������ �� ������,
    mecho - �� �������, ��� ������� ���, ���������� ������ ��� ������� ��������� � �����.
    mecho - � � ����� ���� ����� ������...
    �� ���������������� ������� ����� � �������������� �����������
    wait 1s
    mecho - ��, � ������ ��� ����.
    �� ������� � ��������� �����
    mpurge %object.id%
    mpurge %self.id% 
  break 
  ***********
  default 
    mpurge %object.id%
    mecho _����� ����� ������� �� ����,
    mecho _� ����� ������� ��� �������� �� �����, ����� ���-�� � �����.
    wait 1s
    mload obj 69615
    ���� ��� %actor.name%
    wait 1s
    mecho - ��, � ������ ��� ����.
    �� ������� � ��������� �����
    mpurge %self.id%
  break 
done
~
#69608
������������~
1 c 4
������~
*wait 1s
*wecho actor test - %actor.name%
if !%arg.contains(����)%
  %send% %actor.name% ��� �� ������ ������?
else
  if !%actor.haveobj(69601)%
    %send% %actor% �� ���� ��������-��?!
  else
    calcuid tmp 69601 obj
    *���� ������� �� ������
    if %tmp.val1%>0
      %send% %actor% ���� � ���� ���������� �������, �� ������ ��� ���������� ��� ������ �����.
      %echoaround% %actor% %actor.name% ����%actor.g% � ���� ���������� ������� � �����%actor.g% ��� ���������� ��� ������ �����.
      wait 1s
      *oecho  ���������� ���� ������ ������!
      * oecho  �������� ����� ������ ������� � ���������, ������� ����� � ����� �� ��� ���� � ����.
      *oecho  ���-��� �������� ����, ������� � ������ ���� �� ������ �� ������ ����!
      *�����
      calcuid trm 69610 room
      attach 69634 %trm.id%
      exec 69634 %trm.id%
      detach 69634 %trm.id%
      *otransform  69605
      detach 69608 %self%
      
    else
      %send% %actor% �������� �� ������� �����, ��� �������, �������!
    end
  end
end
~
#69609
��������������~
2 e 100
~
*wait 1s
*wecho test quester - %quest696.name% actor - %actor.name%
* *���� ����� �������
if %actor.name% == %quest696.name%
  wait 1s
  wecho _�� ������ �������� ���� ���������� �������� �������.
  wload mob 69614
  calcuid belka 69614 mob
  remote quest696 %belka.id%
  wait 1s
  wecho �������� ������� �������:
  wecho - ������, ��������!
  wecho - ���������� � ��� �� ������ � ����� ���� ������.
  wecho - ������ ��� �� ����� ������� ��� ���������� ��.
  wforce ������� ���
  wait 1s
  wecho - ���� ��������� �� ������� ���, �� � � ������ ����.
  wecho - ��������? ��� �������?
  detach 69609 %self.id%
  attach 69690 %self.id%
end
~
#69610
�������������������~
2 h 100
~
if ( %object.vnum% == 69612 )
  wait 1s
  eval flag_kol_vo_drov %flag_kol_vo_drov%+1
  global flag_kol_vo_drov
  if %flag_kol_vo_drov% < 4
    wecho _���������� � ���� ����� ��������� ������.
    *������� ������� ������
    wpurge %object%
    if %flag_kol_vo_drov% == 1
      *������� �������� ��������
      if ( %world.curobjs(69628)% > 0 ) 
        *��������� ������� ���� �� �������
        calcuid kostr 69628 obj
        wpurge %kostr%
      end
      *���� ����� ����
      wload obj 69630
    end
    if %flag_kol_vo_drov% == 2
      *wecho test (2)  %flag_kol_vo_drov%
    end
    if %flag_kol_vo_drov% == 3
      *���� ��� ������� ��������
      *������ ���� ������
      attach 69623 %self%
    end
  else
    %send% %actor% _����� ������ ���?
  end
end
~
#69611
������������������������~
0 d 1
*~
*mecho %speech% %arg.words%--- ���� ������ ����� %n_word% 
if %actor.name% == %quest696.name% 
  switch %speech%
    case ������
      if %n_word% == 1
        *mecho 1
        set fl_good 1
      end
    break
    case ���
      if %n_word% == 2
        *mecho 2
        set fl_good 1
      end
    break
    case ����
      if %n_word% == 3
        *mecho 3
        set fl_good 1
      end
    break
    case �����
      if %n_word% == 4
        *mecho 4
        set fl_good 1
      end
    break
    case ���������
      if %n_word% == 5
        *mecho 5
        set fl_good 1
      end
    break
    default
      set fl_good 0
    break
  done
  wait 1s
  if %fl_good% == 1
    ���
    say �������! ������!
    wait 1s
    say �� ����, ��� ���� �����, ������� �� �����.
    wait 1s
    �� ��������� ������� � ������ �� �������� ��� ����� ��������� ��������� ����
    calcuid tmp_room 69617 room
    attach 69620 %tmp_room.id%
    exec 69620 %tmp_room.id%
    detach 69620 %tmp_room.id%
    wait 1s
    say � � ��������� ���������� ���! 
    �� ������� � ������� ������
    mpurge %self.id%
  else
    ���
  end
else
  wait 1s
  ��� %actor.name%
  mecho - � �� ��� �����?!
end
~
#69612
���������~
0 f 100
~
switch %random.2%
  case 1
    *����
    if %random.100% < 15 && %world.curobjs(69616)% < 8
      mload obj 69616
    end
  break
  case 2
    *������
    if %random.100% < 15 && %world.curobjs(69617)% < 8
      mload obj 69617
    end
  break
  default
  break
done
~
#69613
�����������������������~
0 r 100
~
wait 1s
�� ���������� �� ��� ������ �������
wait 1s
mecho �����-�������������� ���:
mecho - �� �� ��� ��� �����-�������
mecho - �������� �� ������� � ���� �����
mecho - �� ����� ���� ����-����� �������� �����
mecho - ����� ������� ��� �����, ���������� ���
mecho - ���������� ��� ������� �������!
mecho - ���! �����!
wait 5s
mecho _&Y��� ����� ���������� ������� ���� �����, �� ����������� ����� ������ ������.&n
wait 1s
�� �������� ������
wait 5s
mecho _������� ����� ������� ���� �����������.
wait 1s
mecho �����-�������������� ������:
mecho - ����������, ������ �������!
mecho - ���� ����� �� �� ���� �����.
mecho - ���� ���� �� �������� �� ��������� �� �� � ���� ����?
mecho - ������ �������� �.
�� ������ ��������� �� ����������� �����
wait 1s
�����
attach 69614 %self.id%
~
#69614
��������������������~
0 d 0
�� ������ ����� ��������~
wait 1s
���
wait 1s
mecho - ����� ������
mecho - �������� ���� ����� ����������� �������� � ���������� �� ���� ����� ��� ��������
mecho - ��� ������� ������, ��� ���� ��������, ����� ����������
mecho - ������ � ����� � ����� �� ������ ��������
���
wait 1s
mecho - ������ ��� � ������� ���� � ���� � ����� ���� ������ - ������ �����������
mecho - ���� ������ �� �� �������� ��������� �� ����� ��������,
mecho - �� �������� �� ������� �������� ���� ������ �������, ��� ��� ������.
mecho - �� ����� �� �� ������� ��������� ������� �� �����.
mecho - � ������ �� �������� �� ����-����� ������ �����.
mecho - ����� ��������� � ����� ���� ����������.
mecho - � ������ �� �� �����, ��� ����� ���������, ������� ����.
mecho - ������� ������� �� ���� ������ ����� �� �����!
���
wait 1s
mecho - � ������ ��� ��� ���� � ��� ����� ����� � � �����, �� � ������� ������.
mecho - ���� ������ ��������� ���� ������, ��������� ���� �����,
mecho - � ���� �������� ���-��, ����� ������, ��������� �������� �����.
mecho - �� ������ ������ ������ ������� ������������� �� ���� ������� ��������.
���
wait 1s
mecho - ��� ������ �� ������ ���� ����.
mecho - � �� �������� �����%actor.g% ��� ������?
attach 69615 %self.id%
detach 69613 %self.id%
detach 69614 %self.id%
~
#69615
�������������������~
0 d 0
����� ������~
calcuid trm 69617 room
attach 69609 %trm.id%
set quest696 %actor%
*global quest696
remote quest696 %trm.id%
calcuid trm1 69633 mob
remote quest696 %trm1.id%
calcuid trm2 69603 mob
remote quest696 %trm2.id%
wait 1s
mecho - ������ ����� ���� ���� - �� ������� ������ ������-�������
mecho - � �� ��� �����, �� ���� ��� � �������.
mecho - � ���������� ���� � ���� ������ ����� ������ ������� ���� 
mecho - ����� �������, �� ����� �������.
�� ���������, ������ ���-�� ���������
wait 1s
mecho - ��, ���� �� �����!
mecho - ���� �� ������� ������� ����� ������ �� ������� �������� �����,
mecho - � ����� ��������� ���� ����� �� ������ �������� ����� ���������.
mecho - ���������� ��� ��������� ���� - ����� ���� �������, 
mecho - � �������� ���������, ���� ������� ������� ���� �� ����� �����.
mecho - �������� � ���� � ������ � ������� ��� ����
mload obj 69627
wait 1s
���� ������ %actor.name%
mecho - ������ ���!
wait 1s
�� ���������� � ������� ��������
detach 69615 %self.id%
~
#69616
����������~
1 c 2
������~
if %arg.contains(����)%
  %send% %actor% _�� ��������� ������ � ���� �������� ������.
  %echoaround% %actor% _%actor.name% �����%actor.g% ��������� ������ ���� ����-��������.
  set buf %actor.hitp(+%random.50%)%
  wait 1s
  opurge %self.id%
else
  %send% %actor% _���� ������?
end
~
#69617
�������������������~
2 cz 100
~
wportal 69643 2
~
#69618
�������������~
0 d 0
�������� ��������~
detach 69619 %self.id%
wait 1s
say �� ������ �������...
wait 2s
switch %random.5%
  case 1
    set n_word 1
    mecho - ��� ���� ����,
    mecho - ����� �����,
    mecho - ��� ���� �����?
  break
  case 2
    set n_word 2
    mecho - ����� ��� �� �������,
    mecho - � ������� ������ ��������,
    mecho - ��� ����, � �����,
    mecho - ��� �����, � ������
    mecho - ��� ���?
  break
  case 3
    set n_word 3
    mecho - ����� �����-�����,
    mecho - � � ������ �� �������,
    mecho - ������ ���� �� ����,
    mecho - � ����� ������ ����.
    mecho - ��� �����?
  break
  case 4
    set n_word 4
    mecho - �� ����, �� �����,
    mecho - � ���� ��������,
    mecho - �� �������� �����
    mecho - � ������ ������.
    mecho - ��� ���?
  break
  case 5
    set n_word 5
    mecho - ������� ��������
    mecho - ������ ���� ������� ������ ��������,
    mecho - ��� ������� - ���� ������
    mecho - � ��� ��� �?
  break
  default 
    halt
  break 
done 
global n_word
attach 69611 %self.id%
detach 69618 %self.id%
~
#69619
����������~
0 d 0
�����~
*wait 1s
*wecho test quester - %quest696.name% actor - %actor.name%
if %actor.name% == %quest696.name%
  wait 1s
  ���
  wait 1s
  mecho �������� ������� ����������� �������:
  mecho - � ��� � �����!
  �� ������ ���������� ������ �� ����� ����-������
  wait 2s
  mecho - �� ����� ���� ��� ����� ������ ���!
  mecho - ��� ��� �������� ���� ������, ��� ���� �� ���������!
  �� ����������� � ������� �� �����, ������ ����� �����
  wait 3s
  mecho - ��-������, ��� ���� �����, ������� �� �����.
  wait 1s
  �� ��������� ������� � ������ �� �������� ��� ����� ��������� ��������� ����
  calcuid tmp_room 69617 room
  attach 69620 %tmp_room.id%
  exec 69620 %tmp_room.id%
  detach 69620 %tmp_room.id%
  if %world.curobjs(69629)% < 17
    wait 3s
    mecho - ��-������, ��� ���� ��������� ����� ����.
    mecho - � ������� ������ ������� �� �� �����, � �� � ����� ���� ����������� ���� �����.
    mecho - � �������, ���� ������ ��� ��������� ��������� ���� ��������� ������ �������!
    wait 1s
    mload obj 69629
    mload obj 69629
    mload obj 69629
    ���� ��� %actor.name%
  end
  ���
  wait 1s
  mecho - ��� ������� ���! 
  �� ������� � ������� ������
  mpurge %self.id%
else
  wait 1s
  ��� %actor.name%
  mecho - � �� ��� �����?!
end
~
#69620
��������~
2 z 0
~
wload obj 69612
wload obj 69612
wload obj 69612
wload obj 69612
wload obj 69612
wload obj 69612
wload obj 69612
wload obj 69612
wload obj 69612
wload obj 69612
wload obj 69612
wload obj 69612
~
#69621
�������������������~
1 h 100
~
wait 1s
oecho ��� �������� ��������� ����� �����, ��� ����������� � ����, ���� ������� ������� ��������.
foreach i %self.pc%
  eval delta %i.maxhitp%-%i.hitp%
  *oecho %delta%
  if %delta%>0
    set buf %i.hitp(+%random.200%)%
  end
done
%purge% %self%
~
#69622
�������������~
2 h 100
~
if %object.vnum% == 69604
  wait 1s
  wpurge %object.id%
  wecho _��� ������ ������ �����, ��� �� ���������� �� ������� ������� �������.
  wecho _� ���� �����-�������, �������� ������� ����� �������!
  wait 1s
  wecho _��������-�������� ������ �������, �� �� �������� ��� ������ ������ ������.
  wload obj 69654
  calcuid vrn 69610 room
  *attach 69608 %vrn
end
~
#69623
��������������������~
2 c 0
�������~
if !%arg.contains(������)%
  wsend %actor.name% ��� ���������?
else
  if %actor.haveobj(69627)% 
    %send% %actor% _�� �������� ��������� �������� � ������� ��������.
    if %actor.sex% == 1 
      %echoaround% %actor% %actor.name% ������ ��������� �������� � ������� ��������.
    else
      %echoaround% %actor% %actor.name% �������� ��������� �������� � ������� ��������.
    end
    wait 1s
    wecho &R���� �����������, ��������� ����� ���������� ������.&n
    *������� �����
    calcuid krada 69630 obj
    wpurge %krada.id%
    *������ ������
    wload obj 69645
    *���� ��� ������
    calcuid volxv 69603 mob
    *attach 69624 %volxv.id%
    set sever_yes 1
    remote sever_yes %volxv.id%
    detach 69623 %self.id%
  else 
    wsend %actor.name% ����-�� �� �������.
  end
end
~
#69624
������������~
0 r 100
~
wait 1s
*mecho sever_yes %sever_yes%  vostok_yes %vostok_yes% ug_yes %ug_yes% zapad_yes %zapad_yes% ������� %quest696.name%
if %actor.name% == %quest696.name%
  if %ug_yes%  != 1
    *mecho 1
    halt
  end
  if %sever_yes% != 1
    *mecho 2
    halt
  end
  if %zapad_yes% != 1 
    *mecho 3
    halt
  end
  if %vostok_yes% != 1
    *mecho 4
    halt
  end
  *set nom_variant 1
  ���
  wait 1s
  mecho - ��, ������ � ���� ��������� ���� � ����� ��������.
  mecho - � �����:
  mecho - �� ��� ���� �������� ����, ��� ��� � ����� ������,
  mecho - �� ���, ��� ������� ����� ��� ��������� �� �������� ������������!
  wait 1s
  mecho - �� �������� � ����� ����!
  wait 2s
  calcuid mpt 69627 room
  attach 69633 %mpt.id%
  exec 69633 %mpt.id% 
  detach 69633 %self.id%
  *mecho -- %nom_variant%
  *
  detach 69624 %self.id% 
end
~
#69625
����������������~
2 h 100
~
if %object.vnum% == 69612
  wait 1s
  eval flag_kol_vo_drov %flag_kol_vo_drov%+1
  global flag_kol_vo_drov
  if %flag_kol_vo_drov% < 4
    wecho _���������� � ���� ����� ��������� ������.
    *������� ������� ������
    wpurge %object%
    if %flag_kol_vo_drov% == 1
      *������� �������� ��������
      if ( %world.curobjs(69642)% > 0 )  
        calcuid kostr 69642 obj
        wpurge %kostr%
      end
      *���� ����� ����
      wload obj 69639
    end
    if %flag_kol_vo_drov% == 2
      *wecho test (2)  %flag_kol_vo_drov%
    end
    if %flag_kol_vo_drov% == 3
      *���� ��� ������� ��������
      *������ ���� ������
      attach 69628 %self%
    end
  else
    %send% %actor% _����� ������ ���?
  end
  *
end
~
#69626
�������������������~
2 h 100
~
if %object.vnum% == 69612
  wait 1s
  eval flag_kol_vo_drov %flag_kol_vo_drov%+1
  global flag_kol_vo_drov
  if %flag_kol_vo_drov% < 4
    wecho _���������� � ���� ����� ��������� ������.
    *������� ������� ������
    wpurge %object%
    if %flag_kol_vo_drov% == 1
      *������� �������� ��������
      if ( %world.curobjs(69643)% > 0 ) 
        *��������� ������� ���� �� �������   
        calcuid kostr 69643 obj
        wpurge %kostr%
      end
      *���� ����� ����
      wload obj 69640
    end
    if %flag_kol_vo_drov% == 2
      *wecho test (2)  %flag_kol_vo_drov%
    end
    if %flag_kol_vo_drov% == 3
      *���� ��� ������� ��������
      *������ ���� ������
      attach 69629 %self% 
    end
  else
    %send% %actor% _����� ������ ���?
  end
  *
end
~
#69627
��������������������~
2 h 100
~
if %object.vnum% == 69612
  wait 1s
  eval flag_kol_vo_drov %flag_kol_vo_drov%+1
  global flag_kol_vo_drov
  if %flag_kol_vo_drov% < 4
    wecho _���������� � ���� ����� ��������� ������.
    *������� ������� ������
    wpurge %object%
    if %flag_kol_vo_drov% == 1
      *������� �������� ��������
      if ( %world.curobjs(69644)% > 0 ) 
        *��������� ������� ���� �� ������� 
        calcuid kostr 69644 obj
        wpurge %kostr%
      end
      *���� ����� ����
      wload obj 69641
    end
    if %flag_kol_vo_drov% == 2
      *wecho test (2)  %flag_kol_vo_drov%
    end
    if %flag_kol_vo_drov% == 3
      *���� ��� ������� ��������
      *������ ���� ������
      attach 69630 %self% 
    end
  else
    %send% %actor% _����� ������ ���?
  end
  *
end
~
#69628
�����������������~
2 c 0
�������~
if !%arg.contains(������)%
  wsend %actor.name% ��� ���������?
else
  if %actor.haveobj(69627)% 
    %send% %actor% _�� �������� ��������� �������� � ������� ��������.
    if %actor.sex% == 1 
      %echoaround% %actor% %actor.name% ������ ��������� �������� � ������� ��������.
    else
      %echoaround% %actor% %actor.name% �������� ��������� �������� � ������� ��������.
    end
    wait 1s
    wecho &R���� �����������, ��������� ����� ���������� ������.&n
    *������� �����
    calcuid krada 69639 obj
    wpurge %krada.id%
    *������ ������
    wload obj 69645
    *���� ��� ������
    calcuid volxv 69603 mob
    *attach 69624 %volxv.id%
    set ug_yes 1
    remote ug_yes %volxv.id%
    detach 69628 %self.id%
  else 
    wsend %actor.name% ����-�� �� �������.
  end
end
~
#69629
��������������������~
2 c 0
�������~
if !%arg.contains(������)%
  wsend %actor.name% ��� ���������?
else
  if %actor.haveobj(69627)% 
    %send% %actor% _�� �������� ��������� �������� � ������� ��������.
    if %actor.sex% == 1 
      %echoaround% %actor% %actor.name% ������ ��������� �������� � ������� ��������.
    else
      %echoaround% %actor% %actor.name% �������� ��������� �������� � ������� ��������.
    end
    wait 1s
    wecho &R���� �����������, ��������� ����� ���������� ������.&n
    *������� �����
    calcuid krada 69640 obj
    wpurge %krada.id%
    *������ ������
    wload obj 69645
    *���� ��� ������
    calcuid volxv 69603 mob
    set zapad_yes 1
    remote zapad_yes %volxv.id%
    *wecho zapad_yes %zapad_yes%
    detach 69629 %self.id%
  else 
    wsend %actor.name% ����-�� �� �������.
  end
end
~
#69630
���������������������~
2 c 0
�������~
if !%arg.contains(������)%
  wsend %actor.name% ��� ���������?
else
  if %actor.haveobj(69627)% 
    %send% %actor% _�� �������� ��������� �������� � ������� ��������.
    if %actor.sex% == 1 
      %echoaround% %actor% %actor.name% ������ ��������� �������� � ������� ��������.
    else
      %echoaround% %actor% %actor.name% �������� ��������� �������� � ������� ��������.
    end
    wait 1s
    wecho &R���� �����������, ��������� ����� ���������� ������.&n
    *������� �����
    calcuid krada 69641 obj
    wpurge %krada.id%
    *������ ������
    wload obj 69645
    *���� ��� ������
    calcuid volxv 69603 mob
    *attach 69624 %volxv.id%
    set vostok_yes 1
    remote vostok_yes %volxv.id%
    detach 69630 %self.id%
  else 
    wsend %actor.name% ����-�� �� �������.
  end
end
~
#69631
���������~
2 f 100
~
* *������� ��������� ������ � �����
if %exist.obj(69645)% == 1 
  calcuid iu 69645 obj
  %purge% %iu.id%
end
if %exist.obj(69645)% == 1 
  calcuid iu 69645 obj
  %purge% %iu.id%
end
if %exist.obj(69645)% == 1 
  calcuid iu 69645 obj
  %purge% %iu.id%
end
if %exist.obj(69645)% == 1 
  calcuid iu 69645 obj
  %purge% %iu.id%
end
if %exist.obj(69639)% == 1 
  calcuid iu 69639 obj
  %purge% %iu.id%
end
if %exist.obj(69640)% == 1 
  calcuid iu 69640 obj
  %purge% %iu.id%
end
if %exist.obj(69630)% == 1 
  calcuid iu 69630 obj
  %purge% %iu.id%
end
if %exist.obj(69641)% == 1 
  calcuid iu 69641 obj
  %purge% %iu.id%
end
***
*������� ����
if %exist.obj(69605)% == 1
  calcuid viu 69605 obj
  %purge% %viu.id% 
end
*������� ���������� ������ 
calcuid r1 69626 room
attach 69668 %r1.id% 
exec 69668 %r1.id%
*����� ���������� ������� 
detach 69623 %r1.id%  
*
calcuid r2 69624 room
attach 69668 %r2.id% 
exec 69668 %r2.id% 
*����� ���������� ������� 
detach 69629 %r1.id%  
*
calcuid r3 69625 room
attach 69668 %r3.id% 
exec 69668 %r3.id% 
*����� ���������� ������� 
detach 69628 %r1.id%  
*
calcuid r4 69623 room
attach 69668 %r4.id% 
exec 69668 %r4.id% 
*����� ���������� ������� 
detach 69630 %r1.id%  
*
* 
*���� ����� �������� ��������������
calcuid volxv 69603 mob
attach 69613 %volxv.id%
attach 69624 %volxv.id%
*
*������ ���� �� ���� � ������ � ������
detach 69690 %self.id%
* 
* 
***
*���������� ������� �� ������ ������ �� �������� ������ 89 80 85 84 
calcuid r5 69689 room
attach 69638 %r5.id% 
*
calcuid r6 69680 room
attach 69644 %r6.id% 
*
calcuid r7 69685 room
attach 69652 %r7.id% 
*
calcuid r8 69684 room
attach 69657 %r8.id% 
*������� �������� ����� ������ 79 83 73 89 92 10
calcuid r10 69679 room 
attach 69679 %r10.id% 
exec 69679 %r10.id% 
detach 69679 %r10.id%
*
calcuid r11 69683 room 
attach 69680 %r11.id% 
exec 69680 %r11.id% 
detach 69680 %r11.id%
*
calcuid r12 69673 room 
attach 69681 %r12.id% 
exec 69681 %r12.id% 
detach 69681 %r12.id%
*
calcuid r13 69689 room 
attach 69682 %r13.id% 
exec 69682 %r13.id% 
detach 69682 %r13.id% 
*
calcuid r14 69692 room 
attach 69684 %r14.id% 
exec 69684 %r14.id% 
detach 69684 %r14.id% 
*
calcuid r15 69610 room 
attach 69683 %r15.id% 
exec 69683 %r15.id% 
detach 69683 %r15.id% 
*********************
*
calcuid r31 69610 room 
attach 69694 %r31.id% 
exec 69694 %r31.id% 
detach 69694 %r31.id%  
*��������������� �������� ����� ������ 92 91 90 93 94 95 96
calcuid r21 69692 room 
attach 69686 %r21.id% 
*
calcuid r22 69691 room 
attach 69687 %r22.id% 
*
calcuid r23 69690 room 
attach 69688 %r23.id% 
*
calcuid r24 69693 room 
attach 69689 %r24.id%  
*
calcuid r25 69694 room 
attach 69691 %r25.id%  
*
calcuid r26 69695 room 
attach 69692 %r26.id%  
*
calcuid r27 69696 room 
attach 69693 %r27.id%  
*�������
calcuid r41 69605 room
attach 69600 %r41.id%  
*���
* 
calcuid r42 69664 room
attach 69685 %r42.id%   
*����
calcuid r43 69678 room
attach 69605 %r43.id%   
*���� ����������� ��������
calcuid rq1 69644 room
attach 85221 %rq1% 
~
#69632
�������������~
0 f 0
~
mecho _������� ������������ ���� ������ ����� � ����.
mecho _������� ����� � ��������� ��� � �������� �����.
*wait 1s
mecho _��������� ����� ������ ������ � ��������� ���� �������� ������
*wait 1s
* -200 ����� �� ������
set nHit 200
foreach i %self.pc%
  mdamage %i% %nHit%
done  
*���� ������* 
switch %random.5%
  case 1
    if %random.100% < 20 && %world.curobjs(69649)% < 10
      mload obj 69649
    end 
  break
  case 2
    if %random.100% < 20 && %world.curobjs(69650)% < 10 
      mload obj 69650
    end 
  break
  case 3
    if %random.100% < 20 && %world.curobjs(69651)% < 10
      mload obj 69651
    end 
  break
  case 4
    if %random.100% < 20 && %world.curobjs(69652)% < 10
      mload obj 69652
    end 
  break
  case 5
    if %random.100% < 20 && %world.curobjs(69653)% < 10
      mload obj 69653
    end 
  break
  default 
    halt
  break 
done 
~
#69633
�����������~
2 z 100
~
wportal 69643 2
~
#69634
������������������~
2 hz 100
~
wecho _���������� ���� ������ ������!
wecho _�������� ����� ������ ������� � ���������, ������� ����� � ����� �� ��� ���� � ����.
wecho _���-��� �������� ����, ������� � ������ ���� �� ������ �� ������ ����! 
wdoor 69610 down room 69635
wdoor 69610 up room 69653
~
#69635
��������������~
0 r 100
~
wait 1s
��� %actor.name%
mecho - ���� ����� �� ����, ������ ������ ������ ���� � ����� � ����� ������ ���.
mecho - ���� ����� ������ �� ����, ����.
���
wait 1s
mecho - ��� ��� ����� ��� ����� �� ����� ��� �������� - ������ �������.
mecho - ������ ��� �� ���� � �������� ������ ������� � ������� ����� �� � ��������� ������.
�� ����������
wait 1s
mecho - ����� � ����� ������� � �� ����� �������
mecho - �� ������ ��� ��������� ���� ���� ������ - ����� ������.
mecho - � �� ���� ������� ������� �� �������.
mecho - � �� ������� � ����� ������� ����.
�� ������� ����� ������ �� �������� ������.
wait 1s
mecho - �� ���� ������ �� ����, ����
mecho - ������ ������� ������� ���������
mecho - ������ ��������� ����� � ���� �� ��������!
������
attach 69636 %self.id%
~
#69636
��������������~
0 d 0
�� ������~
set quest696_2 %actor%
*remote quest696_2 %trm.id%
*mecho %quest696_2.name% =---------- 
calcuid trm1 69633 mob
remote quest696_2 %trm1.id%
wait 1s
���
mecho - ��� �� ���� � ��� ������� ���!
mecho - � �����, �� ����� ����� ������� ������ ��������.
wait 1s
calcuid tmp_room 69672 room
attach 69637 %tmp_room.id%
exec 69637 %tmp_room.id%
detach 69637 %tmp_room.id%
�����
mtransform 69607
detach 69635 %self.id%
detach 69636 %self.id%
~
#69637
�������������������~
2 z 0
~
wdoor 69672 up room 69689
~
#69638
����89~
2 e 100
~
wait 1s
%echo% __&R���� ��� ����� �� ����-����&n
%echo% __&R���� ������-����������&n
%echo% __&R�� ��������� - ����� �������&n
wait 1s
%echo% __&R��� ������� ��� �� ������ ��������&n
%echo% __&R������� ��������� �� �������� ����&n
%echo% __&R���� ��������-�� ���� ����� ���&n
%echo% __&R����� ��������� ���� �������&n
wait 1s
%echo% __&R������� ����� ���� ��� ����&n
%echo% __&R�� ������ ������, �� ��������!&n
wait 3s
* *���� ����
*��������
calcuid nTroom1 69689 room
attach 69639 %nTroom1.id%
exec 69639 %nTroom1.id% 
detach 69639 %nTroom1.id%
*��� ���� �� ������ 
wait 1s 
wecho _�� ������ ������� ���� ��������� ����. 
wforce ���� �� ���������� �������� ������� � ��� �� ������
wait 1s
wforce ���� �� �����
*
calcuid nTroom2 69697 room
attach 69639 %nTroom2.id%
exec 69639 %nTroom2.id% 
detach 69639 %nTroom2.id% 
*
calcuid nTroom3 69679 room
attach 69639 %nTroom3.id%
exec 69639 %nTroom3.id% 
detach 69639 %nTroom3.id% 
*
calcuid nTroom4 69688 room
attach 69639 %nTroom4.id%
exec 69639 %nTroom4.id% 
detach 69639 %nTroom4.id%
*��������
calcuid nTroom5 69697 room
attach 69640 %nTroom5.id%
exec 69640 %nTroom5.id% 
detach 69640 %nTroom5.id%
*
calcuid nTroom6 69679 room
attach 69640 %nTroom6.id%
exec 69640 %nTroom6.id% 
detach 69640 %nTroom6.id% 
* 
calcuid nTroom7 69688 room
attach 69640 %nTroom7.id%
exec 69640 %nTroom7.id% 
detach 69640 %nTroom7.id% 
*������ ����
calcuid nTroom8 69679 room
attach 69641 %nTroom8.id%
exec 69641 %nTroom8.id% 
detach 69641 %nTroom8.id%  
******
detach 69638 %self.id% 
~
#69639
����������������~
2 z 100
~
wload mob 69624
~
#69640
�������������~
2 z 100
~
wload mob 69625
wload mob 69625
~
#69641
��������������~
2 z 100
~
wload mob 69626
~
#69642
������������~
0 f 100
~
*���� ��� ����� ���� ��������� ���� � ������ ������ � ����� �����
eval tmpz %world.curmobs(69624)% + %world.curmobs(69625)% + %world.curmobs(69626)%
*mecho %world.curmobs(69624)% -- %world.curmobs(69625)% -- %world.curmobs(69626)% -dctuj- %tmpz%
if %tmpz% == 1
  *load
  calcuid vpr 69607 mob
  mteleport %vpr% 69680
  
  calcuid nTroom2 69689 room
  attach 69649 %nTroom2%
  exec 69649 %nTroom2%
  detach 69649 %nTroom2%
  ***
  if %world.curobjs(69675)% < 2
    *mload obj 69675
  end 
  *** 
  switch %random.2%
    case 1
      if ( ( %random.1000% < 201 ) && ( %world.curobjs(69674)% < 6 ) )
        mload obj 69674
      end 
    break
    case 2
      if ( ( %random.1000% < 201 ) && ( %world.curobjs(69673)% < 3 ) )
        mload obj 69673
      end 
    break
    default 
      halt
    break 
  done   
end
~
#69643
����������~
2 z 100
~
wload mob 69607
~
#69644
����80~
2 e 100
~
wait 1s
%echo% __&R���� ��� ����� �� ����-����&n
%echo% __&R���� ������-����������&n
%echo% __&R�� ��������� - ����� �������&n
wait 1s
%echo% __&R��� ������� ��� �� ������ ��������&n
%echo% __&R������� ������� ������ ���� ������&n
%echo% __&R������� ����� ������ ������� ����&n
%echo% __&R�� ������ ������, �� ��������!&n
wait 3s
* *���� ������
*�����
calcuid nTroom1 69680 room
attach 69645 %nTroom1.id%
exec 69645 %nTroom1.id% 
detach 69645 %nTroom1.id%
*��� ���� �� ������ 
wait 1s 
wecho _�� ������ ������� ����, �����������, ����� ������ �����.
wforce ��� �� ��������� � ������� ������
wait 1s
wforce ���� �� ����� 
*
calcuid nTroom2 69682 room
attach 69645 %nTroom2.id%
exec 69645 %nTroom2.id% 
detach 69645 %nTroom2.id% 
*
calcuid nTroom3 69683 room
attach 69645 %nTroom3.id%
exec 69645 %nTroom3.id% 
detach 69645 %nTroom3.id% 
*
calcuid nTroom4 69681 room
attach 69645 %nTroom4.id%
exec 69645 %nTroom4.id% 
detach 69645 %nTroom4.id%
*��������
calcuid nTroom5 69682 room
attach 69646 %nTroom5.id%
exec 69646 %nTroom5.id% 
detach 69646 %nTroom5.id%
*
calcuid nTroom6 69683 room
attach 69646 %nTroom6.id%
exec 69646 %nTroom6.id% 
detach 69646 %nTroom6.id% 
* 
calcuid nTroom7 69681 room
attach 69646 %nTroom7.id%
exec 69646 %nTroom7.id% 
detach 69646 %nTroom7.id% 
*���������
calcuid nTroom8 69683 room
attach 69647 %nTroom8.id%
exec 69647 %nTroom8.id% 
detach 69647 %nTroom8.id%  
******
detach 69644 %self.id% 
~
#69645
���������������~
2 z 100
~
wload mob 69627
~
#69646
������������������~
2 z 100
~
wload mob 69628
wload mob 69628
~
#69647
������������~
2 z 100
~
wload mob 69629
~
#69648
�����������~
0 f 100
~
*���� ��� �����  ��������� ���� � ������ ������ � ����� �����
eval tmpz %world.curmobs(69627)% + %world.curmobs(69628)% + %world.curmobs(69629)% 
if %tmpz% == 1
  calcuid vpr 69607 mob
  mteleport %vpr% 69685
  *load
  *calcuid nTroom1 69685 room
  *attach 69643 %nTroom1.id%
  *exec 69643 %nTroom1.id% 
  *detach 69643 %nTroom1.id% 
  *��������� ����� �� �����
  calcuid nTroom2 69683 room
  attach 69650 %nTroom2.id%
  exec 69650 %nTroom2.id% 
  detach 69650 %nTroom2.id% 
  switch %random.3%
    case 1
      if %random.100% < 20 && %world.curobjs(69678)% < 5
        mload obj 69678
      end 
    break
    case 2
      if %random.100% < 20 && %world.curobjs(69679)% < 5
        mload obj 69679
      end 
    break
    case 3
      if %random.100% < 20 && %world.curobjs(69680)% < 5
        mload obj 69680
      end 
    break
    default 
      halt
    break 
  done   
  *
  *calcuid nTroom3 69680 room
  *attach 69659 %nTroom3.id%
  *exec 69659 %nTroom3.id% 
  *detach 69659 %nTroom3.id%  
end
~
#69649
�����79~
2 z 0
~
wdoor 69679 west room 69680
~
#69650
�����83~
2 z 0
~
wdoor 69683 west room 69685
~
#69651
�����73~
2 z 0
~
wdoor 69673 west room 69684
~
#69652
����85~
2 e 100
~
wait 1s
%echo% __&R���� ��� ����� �� ����-����&n
%echo% __&R���� ������-����������&n
%echo% __&R�� ��������� - ����� �������&n
wait 1s
%echo% __&R��� ������� ��� �� ������ ��������&n
%echo% __&R�������� ������ ������� ������ ������&n
%echo% __&R����� ������ ������ ��� ���������&n
%echo% __&R�������� �����, ����-����� ��������&n
%echo% __&R������ ������ ����� ������ �� ����&n
%echo% __&R�� ������ ������, �� ��������!&n
wait 3s
* *���� �������
*�������
calcuid nTroom1 69685 room
attach 69654 %nTroom1.id%
exec 69654 %nTroom1.id% 
detach 69654 %nTroom1.id%
*��� �� ������ 
wait 1s 
wecho _�� ������ ������� ����, ������� ������ ���������, ������� ����.
wforce ����� �� ���������, ��������� ������
wait 1s
wforce ��� �� �����
*
calcuid nTroom2 69687 room
attach 69654 %nTroom2.id%
exec 69654 %nTroom2.id% 
detach 69654 %nTroom2.id% 
*
calcuid nTroom3 69673 room
attach 69654 %nTroom3.id%
exec 69654 %nTroom3.id% 
detach 69654 %nTroom3.id% 
*
calcuid nTroom4 69686 room
attach 69654 %nTroom4.id%
exec 69654 %nTroom4.id% 
detach 69654 %nTroom4.id%
*�������
calcuid nTroom5 69687 room
attach 69653 %nTroom5.id%
exec 69653 %nTroom5.id% 
detach 69653 %nTroom5.id%
*
calcuid nTroom6 69673 room
attach 69653 %nTroom6.id%
exec 69653 %nTroom6.id% 
detach 69653 %nTroom6.id% 
* 
calcuid nTroom7 69686 room
attach 69653 %nTroom7.id%
exec 69653 %nTroom7.id% 
detach 69653 %nTroom7.id% 
*���� �����
calcuid nTroom8 69673 room
attach 69655 %nTroom8.id%
exec 69655 %nTroom8.id% 
detach 69655 %nTroom8.id%  
******
detach 69652 %self.id% 
~
#69653
�����������~
2 z 100
~
wload mob 69630
wload mob 69630
~
#69654
����������������~
2 z 100
~
wload mob 69631
~
#69655
��������������~
2 z 100
~
wload mob 69632
~
#69656
������������~
0 f 100
~
*���� ��� ����� ���� ��������� ���� � ������ ������ � ����� �����
*if %world.curmobs(69630)% == 1 && %world.curmobs(69631)% == 1 && %world.curmobs(69632)% == 1
if (%world.curmobs(69630)% + %world.curmobs(69631)% + %world.curmobs(69632)%) == 1
  calcuid vpr 69607 mob
  mteleport %vpr% 69684
  *load
  *calcuid nTroom1 69684 room
  *attach 69643 %nTroom1.id%
  *exec 69643 %nTroom1.id% 
  *detach 69643 %nTroom1.id% 
  *��������� ����� �� �����
  calcuid nTroom2 69673 room
  attach 69651 %nTroom2.id%
  exec 69651 %nTroom2.id% 
  detach 69651 %nTroom2.id% 
  if %random.100% < 20 && %world.curobjs(69678)% < 3
    mload obj 69681
  end 
  *
  *calcuid nTroom3 69685 room
  *attach 69659 %nTroom3.id%
  *exec 69659 %nTroom3.id% 
  *detach 69659 %nTroom3.id% 
end
~
#69657
����84~
2 e 100
~
wait 1s
%echo% __&R���� ��� ����� �� ����-����&n
%echo% __&R���� ������-����������&n
%echo% __&R�� ��������� - ����� �������&n
wait 1s
%echo% __&R��������� ����� �� ������ ������&n
%echo% __&R������� ����� ����� ��� �� �������� ���!&n
detach 69657 %self.id% 
~
#69658
�����������~
0 r 100
~
*mecho %quest696_2% =----------%quest696_3%
if %flag_black_altar% == 1
  ���
  mecho _��� ������ ���� ������� �����, ��� ���������� �� ����� ���� �����.
  mat 69639 mecho ���-�� �������� ����� � ������ ������ ����.
  mteleport all 69639
  mteleport %self% 69639
  ���
  wait 5s
  ��� %quest696_3.name%
  say ����, �������� ����� �� ���� �����, ��� ����� ��������� ��� �����!
  say �� ��� ������� �� �������!
  switch %random.5%
    case 1
      if %random.100% < 50 && %world.curobjs(69655)% < 10
        mload obj 69655
      else 
        %self.gold(+10000)%
        ���� 10000 ��� %quest696_3.name%
      end 
    break
    case 2
      if %random.100% < 50 && %world.curobjs(69659)% < 10 
        mload obj 69659
      else 
        %self.gold(+10000)%
        ���� 10000 ��� %quest696_3.name%
      end 
    break
    case 3
      if %random.100% < 50 && %world.curobjs(69656)% < 10
        mload obj 69656
      else 
        %self.gold(+10000)%
        ���� 10000 ��� %quest696_3.name%
      end 
    break
    case 4
      if %random.100% < 50 && %world.curobjs(69657)% < 10
        mload obj 69657
      else 
        %self.gold(+10000)%
        ���� 10000 ��� %quest696_3.name%
      end 
    break
    case 5
      if %random.100% < 50 && %world.curobjs(69658)% < 10
        mload obj 69658
      else 
        %self.gold(+10000)%
        ���� 10000 ��� %quest696_3.name%
      end 
    break
    default 
    break 
  done
  ���� ��� %quest696_3.name%
  wait 1s
  say �� ������ ������ ����!
  say �� ������, ���� ���!
  ���
  wait 1s
  mecho _��� ������ ���� ������� �����, ��� ��������� �������� �����, �������� ���� �����.
  *��������� ����� �����
  calcuid nTroom2 69639 room
  attach 69661 %nTroom2.id%
  exec 69661 %nTroom2.id% 
  detach 69661 %nTroom2.id% 
  mpurge %self.id%
else
  ���� %actor.name%
end
~
#69659
�������������~
2 z 100
~
calcuid perun 69607 mob
%purge% %perun.id%
~
#69660
���������������������~
2 c 0
��������~
if !%arg.contains(������)%
  wsend %actor.name% ��� ���������?
else
  set quest696_3 %actor%
  set flag_black_altar 1
  calcuid trm1 69633 mob
  remote quest696_3 %trm1.id%
  remote flag_black_altar %trm1.id%
  %send% %actor% ������� ������ ���������� ������ �������, �� �������� ���� �� �����.
  %echoaround% %actor% %actor.name% �������%actor.g% ������ ���������� ������ ������� � �������%actor.g% ���� �� �����.
  wait 1s
  wecho _�������� �� ������ ������ ���� ����-�����.  
  wait 2s
  set nHit 100
  wdamage %actor% %nHit%
  %send% %actor% ������ �� ���������� � ���������� ����, �� �� ������ - ������� ��� ������ ���!
  %echoaround% %actor% %actor.name% ������%actor.q% ������ ���������� ������ ������� � �������%actor.q% ���� �� �����.
end
~
#69661
������������~
2 z 0
~
wdoor 69639 up room 69610
~
#69662
��������~
0 f 100
~
*mecho %quest696_2.name% ----------------
*mload obj 69676
*������� ������ 
calcuid nPerun 69607 mob
attach 69664 %nPerun.id% 
*
*������� ��������������
calcuid nVolxv 69603 mob
attach 69667 %nVolxv.id%  
remote quest696 %nVolxv.id%
*detach 69624 %nVolxv.id%
* 
calcuid nTroom2 69675 room
attach 69663 %nTroom2.id%
exec 69663 %nTroom2.id% 
*
calcuid trm1 69607 mob
remote quest696_2 %trm1.id%
*detach 69663 %nTroom2.id% 
~
#69663
�������������~
2 z 0
~
wait 1s
wecho _&g� ���, �������, ������� ��� - ������� ������ ����.&n
wait 1s
wecho _&g�������� ������, ������ �� ����-����� ������ �����, ����� ��������� � ����� ���� ����������.&n
wait 1s
wecho _&g�������� ����-�� ����� - �� ��������� �� ��-���� �������� ��������� ��������� ����
wecho _&g� ����� ��� ��� �����, ����� ��� ������ �������, �������� ����� ���������,&n 
wecho _&g�������� ������ ������.&n
wait 1s
wecho _&g�����-��������� ������� ���������, ����������� �����.&n
wait 1s
wecho _&g����� ������� �������-������ � ������ ���� ������ ������� ����.&n
wecho _&g� ������ �� �����, ����� ���������, ������� ���� - ������� ������� �� ���� ����� �� �����!&n
~
#69664
�������������~
0 r 100
~
*mecho %quest696_2.name% -----
if %actor.name% == %quest696_2.name%
  wait 1s
  say ��������%actor.g% �� �������� ����
  say ������ ������ ���� ��� ���� �������� ��������!
  *
  wait 1s 
  switch %random.3%
    case 1
      if ( ( %random.1000% < 301 ) && ( %world.curobjs(69618)% < 5 ) )
        mload obj 69618
        say ����� ��� ������ ������ ���� ����� � ���� ������!
        ���� ��� %quest696_2.name%
      end 
    break
    case 2
      if ( ( %random.1000% < 301 ) && ( %world.curobjs(69660)% < 5 ) )
        mload obj 69660
        say ����� ���� ��� ������ ���� ����� � ���� ������!
        ���� ��� %quest696_2.name%
      end 
    break
    case 3
      if ( ( %random.1000% < 301 ) && ( %world.curobjs(69647)% < 5 ) )
        mload obj 69647
        say ���� ����� ���� ������ � �����, �� ��������� �� �� ������� ��� � ��� ����!
        ���� ��� %quest696_2.name%
      end 
    break
    default 
      halt
    break 
  done  
  wait 2s
  wait 1s
  mecho _��� ������ ����� �������� ������� �� �������, ��� ��������� ����!
  wait 1s
  mecho _� ���������� � �����-������� ��-���� ������� ����������!
  wait 2s
  *��������� ����� � ������
  say ��� ���� ���� � ������� ����!
  say �� ������, �� �������� �����������! ���������! 
  wait 1s
  �� ��������� � ������ � �����
  calcuid nTroom2 69684 room
  attach 69666 %nTroom2%
  exec 69666 %nTroom2%
  detach 69666 %nTroom2%
  mpurge %self%
end
~
#69665
�����������������������~
0 j 100
~
wait 1s
mtransform 69604
���
wait 1s
mecho - �� ������� ���� ������ �������!
mecho - �� ����� ��������� � ������ ���� ������ �����.
mecho - ������� � ���� � ����� �� ��������...
wait 1s
*******************
switch %object.vnum%
  case 69608
    *���� ���� ����
    if  %world.curobjs(69604)%>1
      %echo% _�������� ������-�� ������ (� ����� ���� �����) ������� �����.
      wait 1s
      %echo% _����� ��������� �������� � �� ���� ��� ��������� � ���� �����.
      mpurge %self%
      halt
    end
    
    mecho _����� ����� ������� �� ����,
    mecho _� ����� ������� ��� �������� �� �����, ����� ���-�� � �����.
    wait 1s
    mpurge %object.id%
    mecho - ��� �����!
    mload obj 69604
    ���� ��� %actor.name%
    wait 1s
    mecho - ����� ��� ����� ����� ������� ��� ������� �������
    mecho - � ��������� ���� ����� ������ ������
    mecho - �� �� �� �����, �� �� �������!
    mecho - ��� �������� ���, ��� �� ��������� �� �� ����� �� ����.
    mecho - ��, � ������ ��� ����.
    �� ������� � ��������� �����
    mpurge %self.id% 
  break 
  case 69613
    *���� �����������
    �� �������
    wait 1s
    �� ������� ����������� ��������
    wait 1s
    mecho - ������ ��������� ��� �� ���� �������� ���� �����!
    ���
    wait 1s
    mecho - ��! � ���-�� ������ ��� �������� ������...
    �� �������� ����� � ���� ������ ���-�� ���������.
    wait 1s
    mecho - ��-��, ���������...
    mecho - �����-�� ����� �����, �� ������� ��������� ���� �������
    mecho - ���� �� ����� ����� ��������� ������� ������
    mecho - � ��� ������ ����� ���� ������� ������ �������� ������
    mecho - � � ��� ��� �� ������ ��� ��������� �� ��������� � ���������
    mecho - ����� �� ����� ��� ��� �� ������, �� ��� ����� ��� �� ����� ��� ��� ������
    mecho - ������� ������ �� ���
    �� ��������� ����������
    mpurge %object.id%
    mload obj 69682
    ���� ��� %actor.name%
    wait 1s
    mecho - ��, � ������ ��� ����.
    �� ������� � ��������� �����
    mpurge %self.id% 
  break 
  ***********
  default 
    mpurge %object.id%
    mecho _����� ����� ������� �� ����,
    mecho _� ����� ������� ��� �������� �� �����, ����� ���-�� � �����.
    wait 1s
    mload obj 69615
    ���� ��� %actor.name%
    wait 1s
    mecho - ��, � ������ ��� ����.
    �� ������� � ��������� �����
    mpurge %self.id%
  break 
done
~
#69666
������������~
2 z 0
~
wdoor 69684 down room 69692
~
#69667
���������������������~
0 r 100
~
*mecho %quest696.name% -----
if %actor.name% == %quest696.name%
  wait 1s
  mecho _����� �������� ��������� �������� � ����� � ��� ������ �������! 
  mecho _� ����� ���� ��� ���� ���� ��������� ������ ��� ������ ������, �� ��� ��������!
  wait 1s
  �� %quest696.name%
  say � �����, ��� ������� ������ ���� ������� �������! 
  say � ����� � ����, ����!
  ������ %quest696.name%
  wait 1s
  say ��� ������ �� ���� �� ������
  *
  wait 1s 
  switch %random.3%
    case 1
      if %random.100% < 20 && %world.curobjs(69625)% < 10
        mload obj 69625
        ���� ��� %quest696.name%
      else
        %self.gold(+10000)%
        ���� 10000 ��� %quest696.name%
      end 
    break
    case 2
      if %random.100% < 20 && %world.curobjs(69626)% < 10
        mload obj 69626
        ���� ��� %quest696.name%
      else
        %self.gold(+10000)%
        ���� 10000 ��� %quest696.name%
      end 
    break
    case 3
      if %random.100% < 20 && %world.curobjs(69648)% < 10
        mload obj 69648
        ���� ��� %quest696.name%
      else
        %self.gold(+10000)%
        ���� 10000 ��� %quest696.name%
      end 
    break
    default 
      halt
    break 
  done  
  if %self.haveobj(85135)%
    wait 1s
    � ������, ��� ���� ���� ����������...
    ���� ���� %quest696.name%
  end
  detach 69667 %self.id% 
end
~
#69668
�������������~
2 z 0
~
unset flag_kol_vo_drov
~
#69669
��������������~
0 f 0
~
if %random.100% < 20 && %world.curobjs(69624)% < 10
  mload obj 69624
end 
~
#69670
�����������~
0 f 0
~
if %random.100% < 20 && %world.curobjs(69661)% < 7
  mload obj 69661
end 
~
#69671
�������������������~
0 f 0
~
if %random.100% < 20 && %world.curobjs(69623)% < 5
  mload obj 69623
end 
~
#69672
����������������~
0 f 0
~
switch %random.3%
  case 1
    if %random.100% < 20 && %world.curobjs(69619)% < 20
      mload obj 69619
    end 
  break
  case 2
    if %random.100% < 20 && %world.curobjs(69646)% < 10 
      mload obj 69646
    end 
  break
  case 3
    if %random.100% < 20 && %world.curobjs(69651)% < 10
      mload obj 69622
    end 
  break
  default 
    halt
  break 
done 
~
#69673
�����������~
0 f 0
~
if %random.100% < 20 && %world.curobjs(69666)% < 6
  mload obj 69666
end 
~
#69674
����������~
0 f 0
~
switch %random.3%
  case 1
    if %random.100% < 20 && %world.curobjs(69667)% < 6
      mload obj 69667
    end 
  break
  case 2
    if %random.100% < 20 && %world.curobjs(69668)% < 6
      mload obj 69668
    end 
  break
  case 3
    if %random.100% < 20 && %world.curobjs(69669)% < 6
      mload obj 69669
    end 
  break
  default 
    halt
  break 
done 
~
#69675
�������������~
0 f 0
~
if %random.100% < 15 && %world.curobjs(69670)% < 8
  mload obj 69670
end 
~
#69676
������������������~
0 f 0
~
if %random.100% < 10 && %world.curobjs(69671)% < 8
  mload obj 69671
end 
~
#69677
���������������~
0 f 0
~
if %random.100% < 15 && %world.curobjs(69672)% < 8
  mload obj 69672
end 
~
#69678
������������~
1 p 100
~
oecho  _��� �������� ����� �����, ��� ������� ������ �������...
switch %random.3%
  case 1
    if %random.1000% < 301  %world.curobjs(69659)% < 10
      oload obj 69659
    end 
  break
  case 2
    if %random.1000% < 301 && %world.curobjs(69658)% < 10
      oload obj 69658
    end 
  break
  case 3
    if %random.1000% < 301 && %world.curobjs(69656)% < 10
      oload obj 69656
    end 
  break
  default 
  break 
done 
detach 69678 %self%
~
#69679
������������79~
2 z 0
~
wdoor 69679 west purge
~
#69680
������������83~
2 z 0
~
wdoor 69683 west purge
~
#69681
������������73~
2 z 0
~
wdoor 69673 west purge
~
#69682
�����������������~
2 z 0
~
wdoor 69672 up purge
~
#69683
�������������������~
2 z 0
~
wdoor 69639 up purge
~
#69684
�������������������~
2 z 0
~
wdoor 69684 down purge
~
#69685
���������������������~
2 c 0
��������~
if !%arg.contains(���)%
  wsend %actor.name% ��� �����������?
else
  wait 1s
  if %random.100% < 20 && %world.curobjs(69621)% < 5
    wload obj 69621
    %send% %actor% _�� ���������� � ���� ���������� ����� �, �������� �� ���� ������, �������� ���
    %send% %actor% _�� �� ������ �������� � ����� �������� ������ � �� ������ ������� ��� �� �����.
    %echoaround% %actor% %actor.name% ��������%actor.g% �� ���� ����� ������ ����� ��������� ��� ���, �� ���� ������� ���.
    %echoaround% %actor% �� %actor.name% �� ���� �������� ����������� ��� � ���� � � ������ ������ ��� �� ����.
  else
    %send% %actor% _�� ���������� � ���� ���������� �����, �� �������� ���� ��������� �� ���, �������� � ����.
    %echoaround% %actor% %actor.name% ������%actor.u% � ���� ���������� �����, �� �������� ���� ��������� �� ���� � �������.
  end
  detach 69685 %self.id%
end
~
#69686
������������������92~
2 e 100
~
if ( ( %random.1000% < 101 ) && ( %world.curobjs(69632)% < 5 ) )
  wait 2s
  wecho _����� �� �������� �������������� ������, ������ ������ ������ ��������� �����.
  wait 1s
  wecho _� ����� ������� ���������� � ����� ����� ������� ����� ��-����.
  wload obj 69632
end
detach 69686 %self%
~
#69687
��������������������91~
2 e 100
~
if ( ( %random.1000% < 101 ) && ( %world.curobjs(69633)% < 5 ) )
  wait 2s
  wecho _����� �� �������� �������������� ������, ������ ������ ������ ��������� �����.
  wait 1s
  wecho _� ����� ������� ���������� � ����� ����� ��������� ����� ��-����.
  wload obj 69633
end
detach 69687 %self%
~
#69688
�����������������90~
2 e 100
~
if ( ( %random.1000% < 101 ) && ( %world.curobjs(69634)% < 5 ) )
  wait 2s
  wecho _����� �� �������� �������������� ������, ������ ������ ������ ��������� �����.
  wait 1s
  wecho _� ����� ������� ���������� � ����� ����� ������ ����� ��-����.
  wload obj 69634
end
detach 69688 %self%
~
#69689
������������������93~
2 e 100
~
if ( ( %random.1000% < 101 ) && ( %world.curobjs(69635)% < 5 ) )
  wait 2s
  wecho _����� �� �������� �������������� ������, ������ ������ ������ ��������� �����.
  wait 1s
  wecho _� ����� ������� ���������� � ����� ����� ������� ����� ��-����.
  wload obj 69635
end
detach 69689 %self%
~
#69690
�������������~
2 e 100
~
if %actor.haveobj(69606)%
  wait 1s
  %send% %actor% _���� ����� �� ����, �� �� � ���� ���������������, �� ���������������� � ������� �����...
  if %random.100% < 5
    %send% %actor% ����� ������ � ����� ����� ������� ����! � �������� ���� ���� ��������� ����!
    %echoaround% %actor% ����� ������ � ����� � %actor.rname% ����� ����� ������� ����!.
    wload obj 69677
    calcuid percvet 69606 obj
    wpurge %percvet.id%
  end
end
~
#69691
������������������94~
2 e 100
~
if %random.1000% < 501
  wait 1s
  wecho _&C������ ������ ��������, �������� ���� �������� ������� ����.&n
  wload obj 69606
end
if %random.1000% < 101  %world.curobjs(69636)% < 5
  wait 2s
  wecho _����� �� �������� �������������� ������, ������ ������ ������ ��������� �����.
  wait 1s
  wecho _� ����� ������� ���������� � ����� ����� ������� ����� ��-����.
  wload obj 69636
end
detach 69691 %self%
~
#69692
����������������95~
2 e 100
~
if ( ( %random.1000%  < 101 ) && ( %world.curobjs(69637)% < 5) )
  wait 2s
  wecho _����� �� �������� �������������� ������, ������ ������ ������ ��������� �����.
  wait 1s
  wecho _� ����� ������� ���������� � ����� ����� ����� ����� ��-����.
  wload obj 69637
end
detach 69692 %self%
~
#69693
���������������������96~
2 e 100
~
if ( ( %random.1000% < 101 ) && ( %world.curobjs(69638)% < 5 ) )
  wait 2s
  wecho _����� �� �������� �������������� ������, ������ ������ ������ ��������� �����.
  wait 1s
  wecho _� ����� ������� ���������� � ����� ����� ���������� ����� ��-����.
  wload obj 69638
end
detach 69693 %self%
~
#69694
������������������~
2 ez 100
~
wdoor 69610 down purge
wdoor 69610 up purge
~
#69695
��������������1~
0 r 100
~
if %actor.class% == 4
  %actor.wait(3)%
  mecho _ 
  mecho ������� ������� �����, ������ � ���-�� ������������...
  ���� %actor.name% ��� ���� ���� �����?&n
  ���� %actor.name% �� ����� �� ����� ����� ���, ��� ����� ��� ����� ���������...&n
  ���� %actor.name% �����, ������...&n
end
~
#69696
��������������2~
0 r 100
~
if %actor.class% == 4
  %actor.wait(5)%
  wait 1s
  mecho &r_��������� ����� �������� ����� � � ������ ��������� �����.&n
  ���� %actor.name% ����� ���������?
  ���� %actor.name% �� ����� �� ��������� ����� ���, ��� ����� ��� ����� ���������...
  ���� %actor.name% ����� �� ��������, ������...
end
~
#69697
��������������3~
0 r 100
~
*��������� ��������������
if %actor.class% == 4
  %actor.wait(10)%
  wait 1s
  %send% %actor% &R_�����, ������!
  %send% %actor% &R_�������� ��� ��������, �����... - ������������ �����.
  %send% %actor% &R_�� ����� �� ��������� ����� ���, ��� ����� ��� ����� ���������...
  wait 1s
  mecho &C_���������� �������� ����� ���������� ���������.&n
  %send% %actor% &C_� ������ ��������� ������ ��� ������� ������, ����� ������� - ����� �������.&n
  %echoaround% %actor% &C_� ������ ��������� ������ ������� ������ %actor.rname%, ����� ������� - ����� �������.&n
  eval nHit %actor.hitp%-1
  mdamage %actor% %nHit%
end
~
#69698
������������~
0 r 100
~
*���� ��������������� �� �������
if %actor.class% == 4
  wait 1s
  %send% %actor% &R_���� ���� ���������, ������... - ��� ������ ������������ �����.
  %send% %actor% &R_�� ���� �� �� ����� ����, ��� �������� ����!
  wait 1s
  mecho _�������� �� ���������� ������ - ������ ��������� ��� ������� ��� � ����.
  %send% %actor% _������� � ����� ������, �������� �� ��� ���� ����� �����.
  %echoaround% %actor% _ ������� � ����� ������, �������� �� %actor.rname% ����� �����.
  mdamage %actor% 100 Hit
  mteleport %actor% 85271
end
~
$~
