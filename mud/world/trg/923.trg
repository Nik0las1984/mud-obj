#92300
�������� �����~
2 c 1
�������� �������~
if !%arg.contains(�����)%
  wsend %actor% ��� �� ������ ��������?
  halt
end               
wait 1s
if %actor.str% < 33
  wechoaround %actor.name% �������%actor.u% �������� �����, �� ��� ���� �� ������������.
  wsend %actor% �� ���������� �������� �����, �� ��� ���� �� ������������. 
  halt
end
wechoaround %actor.name% ����������%actor.u% � �������� ������%actor.g% �����.
wsend %actor% �� ������������� � �������� ������� �����.
wdoor 92342 east purge
wdoor 92342 east room 92349  
detach 92300 %self.id%
~
#92301
� ������� ������� ��~
0 kn 100
~
halt
eval wait %random.30%+20
wait %wait%s
mtransform 92313
detach 92301 %self.id%
~
#92302
� ���������� �������~
2 e 100
~
wait 1s        
if %actor.dex% > %random.30%
  halt
end
wechoaround %actor% %acrot.name% �������%act�r.g% ���� �� ������.
wsend %actor% �������, �� �������� �������� �������� ���� �� ������.
wait 2s
wecho ������� ����� � ���������!
wecho ���������� ������� ����������� �� �������!
set i 0
foreach calc %actor.pc%
  eval i %i%+1
done
*��������� ������� ����� �������� � ����������� �� ���������� �����
eval num 2+%i%-%random.%i%%
eval num %random.%num%%
*��������� �������
while %num%>0
  wload mob 92312
  eval num %num% - 1
done
wait 30s
halt
~
#92303
������� �������~
2 e 100
~
wait 1
eval chek 90+%random.50%
if %actor.skill(�����������)% > %chek%
  wsend %actor% ������ ��� ����� ����� ���� ������.
  wsend %actor% �� ������ ��������� ����.
  wsend %actor% ������������� �� �������� ������� ����� �� ���������.
  attach 92304 %self.id% 
  halt
end 
*
if %self.vnum%==92326
  wload mob 92316
  wait 3s 
  calcuid statuya 92316 mob
  exec 92307 %statuya.id% 
  *
elseif %self.vnum%==92329
  wload mob 92315
  wait 3s 
  calcuid statuya 92315 mob
  exec 92306 %statuya.id% 
  *
elseif %self.vnum%==92340
  wload mob 92317
  wait 3s 
  calcuid statuya 92317 mob
  exec 92308 %statuya.id% 
  *
elseif %self.vnum%==92343
  wload mob 92318
  wait 3s 
  calcuid statuya 92318 mob
  exec 92309 %statuya.id% 
end
detach 92303 %self.id%
~
#92304
������� �������������� �������~
2 c 1
����������� ��������� ~
if !%arg.contains(�������)%
  wsend %actor% � ��� �� �� ��� ������� ?
  halt
end
if %random.25% < %actor.int%
  wsend %actor% �� ������� ����������� �������!
  wechoaround %actor% %actor.name% �����%actor.g% ���������� � ����!
  wechoaround %actor% %actor.name% �������� ��������%actor.g%!
  detach 92303 %self.id%
  detach 92304 %self.id%
  halt
end 
*
wsend %actor% ������� ���������!
wechoaround %actor% %actor.name% �����%actor.g% ���������� � ����!
wechoaround %actor% ���-�� ��� ������ � %actor.rname% ��������!
wait 1s
*
if %self.vnum%  == 92326
  wload mob 92316
  calcuid statuya 92316 mob
  exec 92307 %statuya.id% 
  *
elseif %self.vnum%  == 92329
  wload mob 92315
  calcuid statuya 92315 mob
  exec 92306 %statuya.id% 
  *
elseif %self.vnum%  == 92340
  wload mob 92317
  calcuid statuya 92317 mob
  exec 92308 %statuya.id% 
  *
elseif %self.vnum%  == 92343
  wload mob 92318
  calcuid statuya 92318 mob
  exec 92309 %statuya.id% 
end
detach 92304 %self.id%
~
#92305
�� ������� �����~
2 g 100
~
if %actor.vnum% > 92299 && %actor.vnum% < 92400
  return 0
  halt
else
  return 1
  
~
#92306
������� ������~
0 z 100
~
if !%random.pc%
  halt
end
set target %random.pc%
mecho ����� ������ ���� ���������!
dg_cast '����� ���' %target.name%
dg_cast '����� ���' %target.name%
wait 2s
mecho ������ ����������!   
dg_cast '���������'
set target %random.pc%     
mecho ����� ���������� ������!   
dg_cast '������ ���' %target.name%
dg_cast '������ ���' %target.name%
dg_cast '������ ���' %target.name%
wait 2s
mecho � ����� ������� ������ ������ ����������� �� �������! 
set i 0
foreach calc %self.pc%
  eval i %i%+1
done
set num 0
while %num%<%i%
  set target %random.pc%      
  dg_cast '��� ���' %target.name%
  eval num %num%+1
done
wait 1s
mpurge %self%
~
#92307
������� ���������� ������~
0 z 100
~
if !%random.pc%
  halt
end
set target %random.pc%
mecho ����� ������ ������� �� �������!
dg_cast '��� ����' %target.name%
dg_cast '��� ����' %target.name%
wait 2s
mecho ���� ������!   
dg_cast '��� �����'
set target %random.pc%     
mecho ������ ������� �� ��� �������!   
set target %random.pc%     
dg_cast '����' %target.name%
set target %random.pc%     
dg_cast '����' %target.name%
set target %random.pc%     
dg_cast '����' %target.name%
set target %random.pc%     
dg_cast '����' %target.name%
set target %random.pc%     
dg_cast '����' %target.name%
wait 2s
mecho ��� ������� ������ ������� �� ��������, � ������ �����! 
set i 0
foreach calc %self.pc%
  eval i %i%+3
done
set num 0
while %num%<%i%
  set target %random.pc%      
  dg_cast '��� ����' %target.name%
  eval num %num%+1
done
wait 1s
mpurge %self%
~
#92308
������� �������~
0 z 100
~
if !%random.pc%
  halt
end
set target %random.pc%
mecho ������ ������� �������� �� �������!
dg_cast '������' %target.name%
dg_cast '������' %target.name%
dg_cast '������' %target.name%
wait 2s
mecho ������� ������ ��� ������!   
foreach next %self.pc%
  dg_cast '������' %next.name%
  dg_cast '������' %next.name%
  dg_cast '������' %next.name%
done
mecho ���������� ������ ����������� �� ��� �������!   
set target %random.pc%     
dg_cast '��� �����' %target.name%
set target %random.pc%     
dg_cast '��� �����' %target.name%
set target %random.pc%     
dg_cast '��� �����' %target.name%
set target %random.pc%     
dg_cast '��� �����' %target.name%
set target %random.pc%     
dg_cast '��� �����' %target.name%
wait 2s
mecho ������ ���������� �� ������� �������� ��� ��������� �������! 
set i 0
foreach calc %self.pc%
  eval i %i%+3
done
set num 0
while %num%<%i%
  set target %random.pc%      
  dg_cast '������' %target.name%
  eval num %num%+1
done
wait 1s
mpurge %self%
~
#92309
������� ������~
0 z 100
~
if !%random.pc%
  halt
end
set target %random.pc%
mecho ����� �������� ������� ������!
dg_cast '��� �����' %target.name%
wait 2s
mecho ������ ���������� �������� ������!   
dg_cast '��� �����' %target.name%
dg_cast '��� �����' %target.name%
dg_cast '��� �����' %target.name%
set target %random.pc%     
mecho �������� ����� ���������� � �����!   
set target %random.pc%     
dg_cast '������� �����' %target.name%
set target %random.pc%     
dg_cast '������� �����' %target.name%
set target %random.pc%     
dg_cast '������� �����' %target.name%
set target %random.pc%     
dg_cast '������� �����' %target.name%
set target %random.pc%     
dg_cast '������� �����' %target.name%
wait 2s
mecho ������ ���� ��������� � ����� � ��������! 
set i 0
foreach calc %self.pc%
  eval i %i%/2+1
done
set num 0
while %num%<%i%
  set target %random.pc%      
  dg_cast '���� �����' %target.name%
  eval num %num%+1
done
wait 1s 
mpurge %self%
~
#92310
����� ����~
2 f 100
~
calcuid rum 92326 room
detach 92303 %rum.id%
detach 92304 %rum.id%
attach 92303 %rum.id%
calcuid rum 92329 room
detach 92303 %rum.id%
detach 92304 %rum.id%
attach 92303 %rum.id%
calcuid rum 92340 room
detach 92303 %rum.id%
detach 92304 %rum.id%
attach 92303 %rum.id%
calcuid rum 92343 room
detach 92303 %rum.id%
detach 92304 %rum.id%
attach 92303 %rum.id%   
calcuid rum 92342 room
wdoor 92342 east purge
wdoor 92342 east room 92349 flags abcd
detach 92300 %rum.id%
attach 92300 %rum.id%
~
#92311
����������� ������~
0 k 100
~
if %self.position% < 7
  halt
end
eval action %random.15%
switch %action%
  case 1
    mecho %self.name% ������%self.g% ����, ������� ��������� ����� �������!
    dg_cast '��� �����'
  break
  case 2
    mecho %self.name% ������%self.g% ����, ������� ��������� ����� �������!
    dg_cast '���������'
  break
  case 3
    mecho %self.name% ������%self.g% ����, ������� ��������� ����� �������!
    dg_cast '����� �����'
  break
  case 4
    mecho %self.name% ������%self.g% ����, ������� ��������� ����� �������!
    dg_cast '��� ����'
  break
  case 5
    mecho %self.name% ������%self.g% ����, ������� ��������� ����� �������!
    dg_cast '����  ����'
  break
  case 6
    mecho %self.name% ������%self.g% ����, ������� ��������� ����� �������!
    set target %random.pc%
    dg_cast '���� �����' %target.name%
  break
  case 7
    mecho %self.name% ������%self.g% ����, ������� ��������� ����� �������!
    set target %random.pc%
    dg_cast '����� ���' %target.name%
  break
  case 8
    mecho %self.name% ������%self.g% ����, ������� ��������� ����� �������!
    dg_cast '�������� ����'
  break
  case 9
    mecho %self.name% ������%self.g% ����, ������� ��������� ����� �������!
    if %random.3% != 1
      mecho %self.name% ������%self.g% ���������!
      mload mob 92309
    else
      mecho %self.name% ������%self.g% ���������!
      mload mob 92310
    end
  break
  default    
    mecho %self.name% ������%self.g% ����, ������� ��������� ����� �������!
    if %self.hitp% < 2000
      dg_cast '�������'
    else
      set target %random.pc%
      dg_cast '���� ����' %target.name%
    end
  break
done
~
#92312
������ ���� ����~
2 e 100
~
wait 2s
if !%random.pc%
  halt
end
set actor %random.pc%
foreach next %actor.pc%
  if %next.fighting%
    eval volhv 92304+%random.4%
    if %exist.mob(%volhv%)%
      calcuid volhv %volhv% mob
      wait 2s
      if !(%volhv.realroom% == %self.vnum%)
        wecho &M���������� ����������� ��������� � �������!&n
        wecho %volhv.name% ������%actor.u% �� �����������.
        wteleport %volhv% %self.vnum%
        wait 1s
        wecho ����������� �������� ��������! 
      end
    end
    halt
  end
done
wait 10s
halt
~
#92313
����������� ������~
0 k 100
~
if %self.position% < 7
  halt
end
if %random.9% == 1
  dg_cast '����� ���'
end
if %random.100% == 1
  mtransform 92302  
end
~
#92314
����� � ������ �����~
0 q 100
~
wait 1
mecho ������ ����� ��������� �� ���!
say ����� �����-�� ������� �� ��� ������.
say � ��� ��� ��� ��������?
wait 1s
say ������ �� ��������, ��� ��� �� ���� ���� �������� ������� �� ���� ������.
say ��� ��� ��� ���� ������ ��������, ���������� �������������� � ���� ������.
mtransform 92321
mecho ____���������� ������� ���������� �� ������!
mload mob 92322
mload mob 92322
mload mob 92322
mload mob 92322
wait 20t
~
#92315
����������� ������ �����~
0 k 100
~
if %self.position% < 7
  halt
end
if %random.20% < 5 && %world.curmobs(92322)%<1
  mecho ������-����� ������ ������� �� ����!
  mecho ���������� ������� �������� �� ������!
  mload mob 92322
  mload mob 92322
end
~
#92316
���� ������� ������ �����~
0 j 100
~
if %object.vnum% > 91201 && %object.vnum% < 91207 
  mecho ����� ������, ������ ����� ����, ������� � ������ �����!
  mecho �������-����� ����� �������� ������ �����!
  mecho ������-����� ������� �������� �� ����!    
  wait 1s
  say ��������! ��� ������ �� ��������� ������!
  say ���� ������������� ����� ������ ����� �������!
  mtransform 92320
  detach  92315 %self.id%
  attach  92317 %self.id%
end
~
#92317
����������� ������ ����� (2)~
0 k 100
~
if %random.22% < 4 && %world.curmobs(92322)%<1
  mecho ������-����� ������ ������� �� ����!
  mecho ���������� ������� �������� �� ������!
  mload mob 92322
  mload mob 92322
end
~
#92318
������ ����� ����~
0 f 100
~
mecho ����� ������ ������� ������!
mecho ������ ����� ����!
mecho ������� ����� ��������� �� �������� ���������!
mecho ������� ������ ����� ���� ������ ������ �����!
mload mob 92323
calcuid perun 92323 mob
exec 92319 %perun.id%  
if %world.curobjs(92304)% < 3 && %random.8% == 1
  mload obj 92304    
elseif %world.curobjs(92305)% < 3 && %random.7% == 1
  mload obj 92305    
elseif %world.curobjs(92303)% < 3 && %random.6% == 1
  mload obj 92303    
end
~
#92319
������� ������~
0 z 100
~
wait 3s
mecho ����� ������ ��� ��������.
���
wait 2s
say ���� �������� �� ���� ������ ����� ������. 
say ����� ������.
wait 2s
mecho ����� ������� � ����� � ������ �� ���� �������.
mecho �������� ���� ���������� � ����!
wait 1s 
mecho �� ������� �� ������ ����� ��� ������� ������. 
mecho ���� ���� � ��� - ��� ����� ����.
mecho �� ��� ����� ������ - ��� ������ �����.
mload mob 92324
mload mob 92325
mload mob 92326
wait 2s
���� 
wait 2s
say �� �������, ��������, � ��������� �����.
say �� ������� � ���� ��������.
say ��������� � ���� �������� � � ��������� ������ �����.
say ����������� �� ������ ������, � ������-�� ���� �����.
say ��������� �� ���� ���������, �� ��������� �����-�������.
wait 1s
mecho ����� �������� �����.
mecho ������ ���������� � ����� ��������� � ������ �����.
mteleport ����_��� 92299
mteleport ����_��� 92299
mteleport ������_��� 92299
wait 2s
mecho ����� ���� � ����� ��������� �������. 
mload obj 92300
set actor %random.pc%
wait 1s
say ���� ������%actor.u% �� ���, %actor.name%.
say ������ ��� ������� ���� ��������.
���� ���� %actor.name%
drop �������
say ������ ��� ������� � ����-���, � ����� ��� ���� �������.
mecho ����� ������� � �������� ��������� � ������� � �������.
wait 1s
mteleport �����_��� 92299 
calcuid lada 91614 mob
attach 92320 %lada.id%
~
#92320
���� ���� ������� ���������~
0 j 100
~
if (%object.vnum% != 92300)
  return 0
  halt
end
wait 1
mpurge %object%
eval maxskl %actor.remort%*5+101
if (%maxskl% > 141)
  set maxskl 141
end
wait 1s
mecho ���� ���������� �� �������, � ������� ��� � ���� �������� ����.
wait 2s
mecho ��� ����� ��������� ���������� � ����� � ������� � �������� ����.
wait 5s
mecho �� ��� �������� ���� ����� ����, ����, ������.
mteleport ����_��� 91643
mteleport ����_��� 91643
mteleport ������_��� 91643
wait 2s
��� .%actor.name%
wait 1s
say �������, %actor.iname%, ��� �����%actor.q% ������ ������� ����.
*�������* 
say � �������������, ������ ���� ��� �� ���� ����� ������.
if (%actor.level% < 21)
  %actor.exp(+1000000)%
  %send% %actor% �� ����� ������� �������
  detach 92320 %self.id%
end
wait 1s
switch %actor.class%
  *���� � ������
  case 0
    case 1
      case 6
        case 8
          if !%actor.skill(������)%
            mskillturn %actor% ������ set
          end
          if !%actor.skill(��������)%
            mskillturn %actor% �������� set
          end
          if !%actor.skill(����)%
            mskillturn %actor% ���� set
          end
          if %actor.skill(������)% < %maxskl%
            mskilladd %actor% ������ 10
          elseif %actor.skill(��������)% < %maxskl%
            mskilladd %actor%  �������� 10
          elseif %actor.skill(����)% < %maxskl%
            mskilladd %actor% ���� 10
          end
        break
      break
    break
  break
  case 7
    if !%actor.skill(�����)%
      mskillturn %actor% ����� set
    end
    if %actor.skill(�����)% < %maxskl%
      mskilladd %actor% ����� 10
    end
  break
  *����
  case 2
    if !%actor.skill(��������)%
      mskillturn %actor% �������� set
    end
    if !%actor.skill(������)%
      mskillturn %actor% ������ set
    end
    if !%actor.skill(�������)%
      mskillturn %actor% ������� set
    end
    if %actor.skill(��������)% < %maxskl%
      mskilladd %actor% �������� 10
    elseif %actor.skill(������)% < %maxskl%
      mskilladd %actor% ������ 10
    elseif %actor.skill(�������)% < %maxskl%
      mskilladd %actor% ������� 10
    end
  break
  *������
  case 3
    if !%actor.skill(�����������)%
      mskillturn %actor% ����������� set
    end
    if !%actor.skill(��������)%
      mskillturn %actor% �������� set
    end
    if !%actor.skill(������)%
      mskillturn %actor% ������ set
    end
    if %actor.skill(�����������)% < %maxskl%
      mskilladd %actor% ����������� 10
    elseif %actor.skill(��������)% < %maxskl%
      mskilladd %actor% �������� 10
    elseif %actor.skill(������)% < %maxskl%
      mskilladd %actor% ������ 10 
    end
  break
  *�����
  case 4
    if !%actor.skill(��������)%
      mskillturn %actor% �������� set
    end
    if !%actor.skill(������)%
      mskillturn %actor% ������ set
    end
    if !%actor.skill(�������)%
      mskillturn %actor% ������� set
    end
    if %actor.skill(��������)% < %maxskl%
      mskilladd %actor% �������� 10
    elseif %actor.skill(������)% < %maxskl%
      mskilladd %actor% ������ 10
    elseif %actor.skill(�������)% < %maxskl%
      mskilladd %actor% ������� 10 
    end
  break
  *����
  case 5
    if !%actor.skill(�������)%
      mskillturn %actor% ������� set
    end
    if !%actor.skill(������)%
      mskillturn %actor% ������ set
    end
    if !%actor.skill(����)%
      mskillturn %actor% ���� set
    end
    if %actor.skill(�������)% < %maxskl%
      mskilladd %actor% ������� 10
    elseif %actor.skill(������)% < %maxskl%
      mskilladd %actor% ������ 10
    elseif %actor.skill(����)% < %maxskl%
      mskilladd %actor% ���� 10 
    end
  break  
  *������
  case 9
    if !%actor.skill(����)%
      mskillturn %actor% ���� set
    end
    if !%actor.skill(�����)%
      mskillturn %actor% ����� set
    end
    if !%actor.skill(������)%
      mskillturn %actor% ������ set
    end
    if %actor.skill(����)% < %maxskl%
      mskilladd %actor% ���� 10
    elseif %actor.skill(�����)% < %maxskl%
      mskilladd %actor% ����� 10
    elseif %actor.skill(������)% < %maxskl%
      mskilladd %actor% ������ 10 
    end
  break
  *�������
  case 10
    if !%actor.skill(�����)%
      mskillturn %actor% ����� set
    end
    if !%actor.skill(����)%       
      mskillturn %actor% ���� set
    end
    if !%actor.skill(��������)%
      mskillturn %actor% �������� set
    end
    if %actor.skill(�����)% < %maxskl%
      mskilladd %actor% ����� 10
    elseif %actor.skill(����)% < %maxskl%
      mskilladd %actor% ���� 10
    elseif %actor.skill(��������)% < %maxskl%
      mskilladd %actor% �������� 10 
    end
  break
  *������
  case 11
    if !%actor.skill(��������)%
      mskillturn %actor% �������� set
    end
    if !%actor.skill(�������� �����)%
      mskillturn %actor% ��������.����� set
    end
    if !%actor.skill(��������)%
      mskillturn %actor% �������� set
    end
    if %actor.skill(��������)% < %maxskl%
      mskilladd %actor% �������� 10
    elseif %actor.skill(�����)% < %maxskl%
      mskilladd %actor% ����� 10 
    elseif %actor.skill(��������)% < %maxskl%
      mskilladd %actor% ��������.����� 10 
    end
  break
  *�����
  case 12
    if !%actor.skill(�������)%
      mskillturn %actor% ������� set
    end
    if !%actor.skill(�������)%
      mskillturn %actor% ������� set
    end
    if !%actor.skill(�������)%
      mskillturn %actor% ������� set
    end
    if %actor.skill(�������)% < %maxskl%
      mskilladd %actor% ������� 10
    elseif %actor.skill(�������)% < %maxskl%
      mskilladd %actor% ������� 10
    elseif %actor.skill(�������)% < %maxskl%
      mskilladd %actor% ������� 10 
    end
  break
  *�����
  case 13
    if !%actor.skill(������)%
      mskillturn %actor% ������ set
    end
    if !%actor.skill(����)%
      mskillturn %actor% ���� set
    end
    if !%actor.skill(��������)%
      mskillturn %actor% �������� set
    end
    if %actor.skill(������)% < %maxskl%
      mskilladd %actor% ������ 10
    elseif %actor.skill(����)% < %maxskl%
      mskilladd %actor% ���� 10
    elseif %actor.skill(��������)% < %maxskl%
      mskilladd %actor% �������� 10 
    end
  break
done
wait 2s
say � ���� ��� �� ������� ����.
switch %random.4%
  case 1
    if !%world.curobjs(92726)%
      mload obj 92726
      ���� all .%actor.name%
      detach 92320 %self.id%
    end
  break
  case 2
    if !%world.curobjs(92718)%
      mload obj 92718
      ���� all .%actor.name%
      detach 92320 %self.id%
    end
  break
  default
    if %actor.level% > 25
      %actor.exp(+2000000)%
    end
  break
done
detach 92320 %self.id% 
~
#92321
���� ������~
0 f 100
~
if %world.curobjs(92301)% < 2 && %random.4% == 1
  mload obj 92301    
end
~
#92322
���� ������~
0 f 100
~
if %world.curobjs(92302)% < 2 && %random.4% == 1
  mload obj 92302    
end
~
#92323
���� �����~
0 f 100
~
if %world.curobjs(92303)% < 2 && %random.11% == 1
  mload obj 92303    
end
~
$~
