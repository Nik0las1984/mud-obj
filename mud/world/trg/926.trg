#92600
����� �������~
1 b 100
~
wait 20t
halt
if !%self.worn_by%
  wait 2t
  halt
else  
  set actor %self.worn_by%        
  osend %actor% ����� ������� ���� �������� ���!
  oechoaround %actor% ����� ������� ���� �������� %actor.vname%!
  dg_affect %actor% ��������� ��������_��� 3 150 1
  wait 8t
end
~
#92601
������� �����~
1 c 4
�������~
if !%arg.contains(�����)%
  osend %actor% ��� �� ������ ��������???
  halt
elseif %actor.skill(��������)% < 5
  osend %actor% ������� ��������� ���������� � ����� ��� ���������...
  halt
elseif %actor.vnum% > 0
  halt
end
switch %self.vnum%
  case 92630
    set sroom 92638
    set dir south 
    set dir2 north 
    set troom 92639
    set slozhn 79
  break
  case 92626
    set sroom 92638
    set dir north   
    set dir2 south 
    set troom 92640
    set slozhn 89
  break
  case 92627
    set sroom 92637
    set dir north
    set dir2 south  
    set troom 92641
    set slozhn 99
  break
  case 92628
    set sroom 92658
    set dir east
    set dir2 west
    set troom 92660
    set slozhn 79
  break
  case 92629
    set sroom 92659
    set dir west 
    set dir2 east  
    set troom 92661
    set slozhn 94
  break
  case 92631
    set sroom 92662
    set dir north
    set dir2 south  
    set troom 92663
    set slozhn 109
  break  
  default
    halt
  break                 
done                       
if %actor.skill(��������)% > %slozhn%
  osend %actor% ������ ��������, ������ � ������ �����, �� ����...
  osend %actor% ������ ���� ����������� ���������� �� ��������.
  osend %actor% �� ����� ��������� ��������, � ����� � �������� ������������!
  oechoaround %actor% %actor.name% ��������%actor.g% �����, � ^%actor.name% ������ ��������� �������!
  oechoaround %actor% %actor.name% ��������� ��������� �������%actor.u% �� ��������.
  oechoaround %actor% %actor.name% �����%actor.g% ��������� �������� � �����.
  oechoaround %actor% ����� ������� � ����� � �������� ������������!    
  odoor %sroom% %dir% purge  
  odoor %sroom% %dir% room %troom%
  odoor %troom% %dir2% purge  
  odoor %troom% %dir2% room %sroom%
  wait 1s
  opurge %self%
else
  osend %actor% ������ ������ �� ������ ����� ������� ���� �����, �� ������ ����!
end
return 0
~
#92602
����� ���������� ������~
1 n 100
~
switch %self.vnum%
  case 92630
    set sroom 92638
    set dir south 
    set troom 92639
  break
  case 92626
    set sroom 92638
    set dir north   
    set troom 92640
  break
  case 92627
    set sroom 92637
    set dir north  
    set troom 92641
  break
  case 92628
    set sroom 92658
    set dir east
    set troom 92660
  break
  case 92629
    set sroom 92659
    set dir west   
    set troom 92661
  break
  case 92631
    set sroom 92662
    set dir north  
    set troom 92663
  break
  default
    halt
  break
done
odoor %sroom% %dir% purge  
odoor %sroom% %dir% flags abcd
detach 92602 %self.id%
~
#92603
������ ����� �������� �������~
0 k 100
~
eval wai %random.3%*2+4
wait %wai%s
mtransform 92605
wait 2s
mtransform 92604
~
#92604
����� �������~
0 k 100
~
if %self.position% < 7 || %self.affect(��������)%
  wait 1s
  halt
end
if !%world.curmobs(92604)% && !%world.curmobs(92605)% && %random.12% == 1
  mecho _%self.name% ��������%self.g% �������������� ����������!
  mecho _���� ������ ��� ��������� � ��������� � ����� ������!
  wait 1s
  mecho _����� ������ ����������!
  mecho _�� ������� ������ �������� �������� ������� ������!
  mload mob 92604
  halt
end                            
set life 5
eval life (%self.hitp%/500)+%life%
if %life% < %random.10% && %random.5% == 1
  mecho _%self.name% ��������%seld.g% �������� ����������!
  eval bonus %random.8%*1000+%self.maxhitp%
  %self.hitp(+%bonus%)%
  mecho _���� ������ ��������� ���� %self.rname%!
  wait 1s
  halt
end    
if %self.realroom% == 92667 && %self.hitp% < 1000 && %random.5% == 1
  mecho %self.name% ���� ������ �������� � ����� ����.
  mecho %self.name% ������� ������ ��������.
  mteleport %self% 92662  
  dg_cast '�����'
end     
~
#92605
����������� ����������~
0 k 100
~
dg_cast '��� �����'
dg_cast '��� �����' 
dg_cast '��� �����'
~
#92606
������ ������~
0 f 100
~
if %random.6% == 1 && %world.curobjs(92600)% < 2
  mload obj 92600
elseif %random.6% == 1 && %world.curobjs(92601)% < 2
  mload obj 92601
elseif %random.5% == 1 && %world.curobjs(92602)% < 2
  mload obj 92602
elseif %random.5% == 1 && %world.curobjs(92603)% < 2
  mload obj 92603
end
~
#92607
������� ���������� ������~
0 f 100
~
if %random.6% == 1 && %world.curobjs(92607)% < 2
  mload obj 92607
elseif %random.5% == 1 && %world.curobjs(92608)% < 2
  mload obj 92608
end
~
#92608
��������� ������~
0 f 100
~
if %random.6% == 1 && %world.curobjs(92604)% < 2
  mload obj 92604
elseif %random.6% == 1 && %world.curobjs(92605)% < 2
  mload obj 92605
elseif %random.5% == 1 && %world.curobjs(92606)% < 2
  mload obj 92606
elseif %random.4% == 1 && %world.curobjs(92609)% < 2
  mload obj 92609
end
~
#92609
����� ���������  �����~
0 f 100
~
if %random.6% == 1 && %world.curobjs(92610)% < 2
  mload obj 92610
elseif %random.6% == 1 && %world.curobjs(92611)% < 2
  mload obj 92611
elseif %random.5% == 1 && %world.curobjs(92612)% < 2
  mload obj 92612
elseif %random.5% == 1 && %world.curobjs(92613)% < 2
  mload obj 92613
end
~
#92610
������ ������� �����~
0 f 100
~
if %random.6% == 1 && %world.curobjs(92614)% < 2
  mload obj 92614
elseif %random.6% == 1 && %world.curobjs(92615)% < 2
  mload obj 92615
elseif %random.5% == 1 && %world.curobjs(92616)% < 2
  mload obj 92616
elseif %random.5% == 1 && %world.curobjs(92617)% < 2
  mload obj 92617
end
~
#92611
��������� ���� ���� 1~
0 f 100
~
if %random.7% == 1 && %world.curobjs(92621)% < 2
  mload obj 92621
end
~
#92612
��������� ���� ���� 2~
0 f 100
~
if %random.7% == 1 && %world.curobjs(92622)% < 2
  mload obj 92622
end
~
#92613
���� �������~
0 f 100
~
if %random.6% == 1 && %world.curobjs(92623)% < 2
  mload obj 92623
end
~
#92614
�����������  �������~
0 k 100
~
eval wai %random.4%*2+4
wait %wai%s
if %self.vnum% == 92620
  mtransform 92621
else
  mtransform 92620
end
~
#92615
������ ����~
0 f 100
~
if %random.6% == 1 && %world.curobjs(92624)% < 2
  mload obj 92624
elseif %random.5% == 1 && %world.curobjs(92625)% < 2
  mload obj 92625
end
~
#92616
������ ����� ��������� ����~
0 k 100
~
set i 0
if %self.hitp% < 10000
  eval i (%self.hitp%)/1000+4
  if !%self.affect(��������)% && %self.position% > 6 && %random.18% < %i%
    mecho _�������� ����� ������� ��������� ����!
    dg_cast '��� ���'
    dg_cast '�����'
    halt
  end
end
eval wai %random.3%*2+4
wait %wai%s
mtransform 92622
wait 4s
mtransform 92623
~
#92617
�����  ���������  ��������� �  ���~
0 b 100
~
if %self.fighting% || %random.pc%
  halt
end  
if %self.vnum% == 92601
  wait 3s
end
if %random.4% == 1
  eval rnum 92600+%random.36%
else
  eval rnum 92647+%random.9%
end  
eval mnum %random.3%+92627    
eval quanty (92631-%mnum%)*3
if %world.curmobs(%mnum%)% < %quanty%
  mat %rnum% mecho _%self.name% ������ ����� ������.
  mload mob %mnum%       
  mdoor %self.realroom% down room %rnum%
  mforce �������_926 ����                       
  mdoor %self.realroom% down purge
end
~
#92618
������  �����  �������~
0 k 100
~
if %self.position% < 7 || %self.affect(��������)%
  wait 2s
  halt
end           
set  vnum 0
eval i %random.3%+1
if %self.vnum% == 92608 && !%world.curmobs(92614)%
  set vnum 92614
elseif %self.vnum% == 92610 && !%world.curmobs(92615)%
  set vnum 92615
end
if %vnum%   
  mecho %self.name% ����������!
  while %i% >0
    mload mob %vnum%
    eval i %i%-1
  done
  halt
end             
if %self.realroom% != 92640 && %self.hitp% < 1000 && %random.5% == 1
  mecho %self.name% ���� ������ �������� � ����� ����.
  mecho %self.name% ������� ������ ��������.
  mteleport %self% 92640 
  dg_cast '�����'
end
~
#92619
����� �����~
2 e 100
~
eval wt %random.25%+5
wait %wt%s 
if !%random.pc%
  halt
end
set actor %random.pc%
set i 0
foreach next %actor.pc%
  if %next.fighting%
    set i 1
  break
end
done
if !%i%
  halt
end
switch %random.7%
  *��� �������������,  ���� ���� ���� �������������
  case 1
    if %world.curmobs(92601)% || %world.curmobs(92606)% 
      %echo% _����� ������ �������� ��� ����!
      %echo% ��� ������������� �������� ������! 
      %load% mob 92630
      wait 10t
    end
  break       
  *�����,���� ���� ����� � ����
  case 2
    case 3
      if %world.curmobs(92611)% >0
        %echo% �������� ����������� ��������� � �������.
        %echo% ����� �������� �� �����������!
        %echo% ����������� �������� ��������.
        %teleport% �����_��� %self.vnum%
        wait 10t
      end
    break                    
    *�������� ���� ���� ���� �������
    default
      if %world.curmobs(92608)% || %world.curmobs(92610)% 
        %echo% �������� ����������� ��������� � �������.
        %echo% �������� ���� �������� �� �����������!
        %echo% ����������� �������� ��������.
        %load% mob 92627
        wait 10t
      end
    break
  done
~
#92620
�����  ������~
0 k 100
~
if %self.realroom% != 92677 && %self.hitp% < 1000 && %random.5% == 1
  mecho %self.name% ���� ������ �������� � ����� ����.
  mecho %self.name% ������� ������ ��������.
  mteleport %self% 92677
  dg_cast '�����'
end
~
#92621
������� ������ ������ ��������~
2 b 100
~
if !%random.pc% || !%world.curmobs(92617)%
  wait 4t
  halt
end
switch %random.3%
  case 1
    if !%world.curmobs(92608)%
      halt
    else
      calcuid kold 92608 mob
    end
  break
  case 2 
    if !%world.curmobs(92610)%
      halt
    else
      calcuid kold 92610 mob
    end
  break
  default     
    wait 1t
    halt
  break
done                        
wteleport %kold% %self.vnum%
wecho %kold.name% �������� � ������ ����!
~
#92622
������� ������ ������~
2 b 100
~
if !%random.pc% || !%world.curmobs(92600)%
  wait 4t
  halt
end
switch %random.3%
  case 1
    if !%world.curmobs(92601)%
      halt
    else
      calcuid kold 92601 mob
    end
  break
  case 2
    if !%world.curmobs(92606)%
      halt
    else
      calcuid kold 92606 mob
    end
  break
  default     
    wait 1t
    halt
  break
done                        
wteleport %kold% %self.vnum%
wecho %kold.name% ������ ����� �������!
wecho %kold.name% �������� ������.
~
#92623
��������  ����  "����"~
0 f 0
~
mload mob 92631
~
#92624
����  ���� �������~
0 n 100
~
mecho �������� ���� �������� � ��� � ����������� � ����� �������!
wait 2s
say ����������� ��� �����!
say ������� ������ �� ��� ��������! 
say ����-����� ���� ��������!
wait 2s
say ����� � � ���� ���������� ������� ���������� ?
wait 1s
say ������� � ���-�� ������� � ����-���.
say ��������� ����� ����������� ������.
say ������ ��� ������ ������, ���� - ���� ������� ���������.
wait 1s
�����
wait 1s
say � �������� � ��� � ���������.
say ���� ��� �� ���� �������� ������� ��������.
say � ��� ���� ��������.
wait 1s
���
wait 1s
say �� ������ ��, ���� � �������, ���������� �������.
say �� ������� � � ���� ��������.
say ��� ����� ��� ��� ������� ����.
wait 2s
say ���� ������� %actor.name%, ������ ���� ������� �������.
say ������� ������� ���� ��������.
say ��� �� ����� � �� � ����� �� ��������.
wait 2s
mload obj 92634
���� ���� %actor%
��� ����
say ������ �������� ��� ����� ����������.
say ������ �� �������� ��� �� ���� -  ��� ����� �� ��� �����.
say �������� ������ ������� - ����� ������� �� ������� ������.
mdoor 92678 east room 92500
wait 40s
mdoor 92678 east purge
~
#92625
���� ������� ����~
1 i 100
~
if (%victim.vnum% != 92324)
  halt
end
if !%world.curmobs(92631)%
  log ����� ����-�� ����� �������� �����!!!
  halt
end
wait 1s
oecho ���� ��������� ���������� �� ������� �, �� ������ �� �����, ���� !
oteleport %victim% 91646
wait 10s
oecho ������ ��������� ����� �� ������� ���� ����� ���� � �����!
oteleport %victim% 91643
oteleport ����_��� 91643
calcuid vict 92631 mob
attach 92626 %vict.id%
exec 92626 %vict.id%  
set quester %actor%
remote quester %vict.id%
wait 1
opurge %self%
~
#92626
����� ������~
0 z 100
~
wait 1s        
mecho ���� ���������� ����.
say ���������� ����-�������.
say ������ � ���� ����� ������ � ���� ��, ������� ���������.
say � ��� �� ���� ��������.
wait 2s 
say � ��, %quester.name%, ������ ��������%quester.g% �������!
if  %random.10% == 1 && !%actor.quested(926)% && %actor.level% > 25
  wait 2s
  say � ���� ������ ���� %quester%, ������� ������������ � ����� ����� ������.
  msend %quester% � ����� ������ �� �����%quester.g% �� ����� �������� ?
  attach 92627 %self.id% 
  detach 92626 %self.id%
elseif %random.10% == 1
  wait 1s
  say ������ ���� ������, � ��� �������� ���������� �������� ����, � ����� �� ������� ��� ����������.
  switch %random.4%
    case 1
      mload obj 508
    break
    case 2
      mload obj 411
    break
    case 3
      mload obj 408
    break
    default
      mload obj 409
    break
  done
  ���� ��� %quester.name%
  wait 1s
  detach 92626 %self.id%
end
set char %quester%
if %random.5% == 1  && %world.curobjs(92640)% < 2
  mload obj 92640
elseif %random.5% == 1  && %world.curobjs(92639)% < 2
  mload obj 92639
elseif %random.5% == 1  && %world.curobjs(92638)% < 2
  mload obj 92638
elseif %random.4% == 1  && %world.curobjs(92637)% < 2
  mload obj 92637
elseif %random.4% == 1  && %world.curobjs(92636)% < 2
  mload obj 92636
else
  mload obj 92635
end
���� ��� %quester.name%
detach 92626 %self.id%
~
#92627
������� ��������~
0 d 100
*~
*�������� ����������� �������� ������� ������ ���������� ������� �������� �����
*����� �������� ������ ������� ������ ������ ������� �������� ���� ����������
*����������� ����� ����������� ���� �������������� ���������� ����������� ��������
*������ ������� �����
switch %speech.car%
  case ��������
    case �����������
      case ��������
        case �������
          case ������
            case ����������
              case �������
                case ��������
                  case �����
                    case �����
                      case ��������
                        case ������
                          case �������
                            case ������
                              case ������
                                case �������
                                  case ��������
                                    case ����
                                      case ����������
                                        case �����������
                                          case �����
                                            case �����������
                                              case ����
                                                case ��������������
                                                  case ����������
                                                    case �����������
                                                      case ��������
                                                        case ������
                                                          case �������
                                                            case �����
                                                              set skill %speech.car%
                                                            break
                                                          break
                                                        break
                                                      break
                                                    break
                                                  break
                                                break
                                              break
                                            break
                                          break
                                        break
                                      break
                                    break
                                  break
                                break
                              break
                            break
                          break
                        break
                      break
                    break
                  break
                break
              break
            break
          break
        break
      break
    break
  break
  default
    halt
  break
done
wait 3
if %actor%!=%quester%
  say � ���� ���� ������, %quester.iname%, �� ������� ���� ��� ������� �� ����.
  halt
end
if !%actor.skill(%skill%)%
  msend %actor% ��� ����� ������� ������������ � ���, � ��� ���� �� ������������?
  wait 5s
  halt
elseif %actor.skill(%skill%)% < 151
  mskilladd %actor% %skill% 25
  %actor.setquest(926)%
  detach 92627 %self.id%
else
  eval skl %actor.skill(%skill%)%
  eval val 200 - %skl%
  mskilladd %actor% %skill% %val%
  %actor.setquest(926)%
  detach 92627 %self.id%
end
~
$~
