#62600
����������~
2 c 0
������~
if (%actor.vnum% != -1)
  halt
end
if !%arg.contains(����������)% 
  wsend %actor% _��� �� ������ ������?
  halt
end
wsend %actor% _�� ��������� �������� �� ����������.
wechoaround %actor% _~~%actor.name% ��������� �������%actor.g% �� ������ ����������.
wecho _�������� ���� ������� ������, �� ������ �� ���������.
detach 62601 %world.room(62603)%                    
*����������� ������� � ��������� �������
~
#62601
�������~
2 e 100
~
*���� � ���������� ������� �� �������� �������, ��:
wait 2
%actor.wait(2)%
wecho _��� ������ �� ����� � ������� ��-�� ������ �������� ��� ���������� �����.
wecho _�� ���������� ����������...
wecho _...�� � ����� ������������ ������������ ������� ����� ����� ��� �� �������� ����.
wecho &R ��������� ����� ��������� � ���� ����! &n                                       
foreach victim %self.char%
  wdamage %victim% 200
done
~
#62602
�������~
0 r 50
~
wait 1
say ��, ���-�� � ���� �� ��������, ������� ��� ��?
say � �������, ��� ��� �����, ����� ��������� ��� ������%actor.q%.
~
#62603
�������~
2 b 20
~
if !%self.npc%
  halt
end
eval dmg %random.100%+50
set target %random.pc% 
if !%target%
  halt
end
wsend %target%  ���������� ��� � ����� �������� ����������� ���!
wechoaround %target%  ���������� � ����� %target.rname% �������� ����������� ���!
wecho ������ ������ ����� �������. 
wsend %target%  �� ��� ������! 
wdamage %target% %dmg%
~
#62604
�������~
2 c 1
������~
if (%actor.vnum% != -1)
  halt
end
if !%arg.contains(��������)% 
  wsend %actor% _��� �� ������ ������?
  halt
end
wsend %actor% _�� �������� �������� �� ���� �� ���������.
wechoaround %actor.name% _%actor.name% �������%actor.g% �������� �� ���� �� ��������� �� ���� �������.
wecho _����� ������ ����������� � ������� ������ �� �����.
wdoor 62607 w room 62642
wait 5s
wecho _����� ������ ����������� � ��������� ������ �� �����.
wdoor 62607 w purge
~
#62605
�����~
0 r 100
~
wait 1s
say ��, �� ����� �� �� �����! ��� �� ���� �����?! �������� � ������, �����!
��� 
wait 2s
���
say ����... � ������� �� ���� ���� ���� �������.
say ��� �� ����%actor.q% ���� ���������, ��, �������, ��������� ��� ��� ������ ����.
wait 2
say ����, ��� �� ��������� - ������ ��� ������?
~
#62606
�����~
1 c 2
���������~
if (%actor.vnum% != -1)
  halt
end
if !%arg.contains(�������)%
  osend %actor% _��� �� ������ ���������?
  halt
end 
if (%actor.realroom% != 62654)
  osend %actor% _�� ��������� ������� �����������... �� ������ �� ���������!
  halt
end
osend %actor% _�� �������� ������� ����������� �� ��������� � ��������� ��. 
oechoaround %actor% _%actor.name% ������� ������� ����������� �� ��������� � ��������%actor.g% ��.
oecho _����������� ���� ����������� � �������. 
set quest ok
global quest
remote quest %world.mob(62620)% 
odoor 62651 n purge
odoor 62656 w purge
odoor 62655 e purge
odoor 62654 w purge
odoor 62654 e purge
odoor 62653 s purge
odoor 62651 n room 62653
odoor 62651 n flags ab
odoor 62656 w room 62654
odoor 62656 w flags abc
odoor 62656 w key 62620
odoor 62655 e room 62654
odoor 62655 e flags abc
odoor 62655 e key 62620
odoor 62654 w room 62655
odoor 62654 w flags abc
odoor 62654 w key 62620
odoor 62654 e room 62656
odoor 62654 e flags abc
odoor 62654 e key 62620
odoor 62653 s room 62651
odoor 62653 s flags ab
opurge ������� 
~
#62607
�������~
2 c 2
��������~
if !%arg.contains(�������)%
  wsend %actor% _�� ������ ��������� ���������� ���� ������� - ����� ��� �������?
  wechoaround %actor% _%actor.name% �����%actor.g% ��������� ������ �� ��������.
  halt
end
wsend %actor% _�� ������ �������� ������� ��������� ����� �������. 
wechoaround %actor% _%actor.name% �����%actor.g% �������� ������� ��������� ����� �������.
wsend %actor% _����� �� ��� �� ������ ��������� ������.            
wload obj 62626
detach 62607 %self.id%
~
#62608
����� �����~
0 f 100
~
mload obj 62622
detach 62610 %world.mob(62620)% 
attach 62611 %world.mob(62620)%
~
#62609
����� ����~
2 f 100
~
*������� ���� � ������ ������� � ��������� ���������.
detach 62607 %world.room(62667)%
attach 62607 %world.room(62667)%
*�������� ������� � ���������
detach 62601 %world.room(62603)%
attach 62601 %world.room(62603)% 
*������� ������ �� ����� � ������� � �������� 
wdoor 62607 w purge
*��������������� ����� � �����������
wdoor 62651 n purge
wdoor 62656 w purge
wdoor 62655 e purge
wdoor 62654 w purge
wdoor 62654 e purge
wdoor 62653 s purge
wdoor 62651 n room 62653
wdoor 62651 n flags abcd
wdoor 62656 w room 62654
wdoor 62656 w flags abcd
wdoor 62655 e room 62654
wdoor 62655 e flags abcd
wdoor 62654 w room 62655
wdoor 62654 w flags abcd
wdoor 62654 e room 62656
wdoor 62654 e flags abcd
wdoor 62653 s room 62651
wdoor 62653 s flags abcd
*��� ���� ������� ���� ���������, ������� ������ ����� �������
calcuid guard 62057 mob
detach 62612 %guard.id%
detach 62613 %guard.id%
detach 62614 %guard.id%
attach 62612 %guard.id
attach 62613 %guard.id
attach 62614 %guard.id
~
#62610
����� �/��� ������� %)~
0 d 1
������ ������~
if (%actor.vnum% != -1)
  halt
end
wait 1
switch %speech%
  case ������
    if %world.curobjs(62619)% >= 1
      halt
    end
    detach 62605 %self.id%  
    eval questor626 %actor.id%
    say ���������� �����!
    mecho - ������ ���� �����������.
    mecho - ��� ������� ����������� � ������������ � ������� �������, ������� ��������� ������� ��.
    mecho - ����� ������� ������ � ������ ���-�� � �������� �����������.
    mecho - �� � ������� �������� ������� � ����� ������������, ���� ��� ������������ ����������� �������� ����� ����� �� �����.
    mecho - � �� ���� ��������� �� ��� ������� � ������ ��� ��������.
    mecho - ���� ������� ��� ������ - �, �������, ������� ���� ��������� ����� � ���� ����������.
    mload obj 62619
    wait 1s
    give ���� %actor.name%
    say ��� ���� ���� - ���� ����� � �������� ���� �����!
  break
  case ������
    say ��� �, �� ���%actor.g% ������%actor.g%!
    exec 62616 %world.room(62652)%
    stand
    kill %actor.name%
    foreach helpervnum 62617 62618 62619 62621 62622
      unset helper
      calcuid helper %helpervnum% mob
      if (%helper% && (%helper.position% != 7))
        mteleport %helper% 62652
        mecho _%helper.name% ������ �� ��� ����� �������.
        mforce %helper.name% kill %actor.name%
      end
    done
    detach 62610 %self.id%
  break
done  
~
#62611
������� �� ����� � �����~
0 d 0
������ ������� ���������~
if (%quest% != ok)
  say �� ������-�� �� �������%actor.u%, �������... 
  say �� ���� � ��� � ����� �� �� ���������� ���������
  say � � ����� ���������� ��������� ������ �� ���� � ����� �� �����.
  say ���-�� ��� ������ �������.
  halt
end  
*��� ������� �� �����
say ��.. ��, ������� �� ��������%actor.g%!
wait 1s
say �� ����� �� ����.
���
wait 1s 
if     (%actor.class% == 0)
  mspellturn %actor% ������.������� set
elseif (%actor.class% == 1)
  mskillturn %actor% ��������� set
elseif (%actor.class% == 2)
  mskillturn %actor% ��������� set
elseif (%actor.class% == 3)
  mskillturn %actor% ��������� set
elseif (%actor.class% == 4)
  mskillturn %actor% ��������� set
elseif (%actor.class% == 5)
  mskillturn %actor% ��������� set
elseif (%actor.class% == 6)
  mskillturn %actor% ��������� set
elseif (%actor.class% == 7)
  mskillturn %actor% ��������� set
elseif (%actor.class% == 8)
  mskillturn %actor% ��������� set
elseif (%actor.class% == 9)
  mskillturn %actor% ��������� set
elseif (%actor.class% == 10)
  mskillturn %actor% ��������� set
elseif (%actor.class% == 11)
  mskillturn %actor% ��������� set
elseif (%actor.class% == 12)
  mskillturn %actor% ��������� set
elseif (%actor.class% == 13)
  mskillturn %actor% ��������� set
end
say �� ��� � ���, � ������ - ����������! 
detach 62611 %self.id%
~
#62612
����������� � ���������~
0 q 40
~
emot ��������� �� ��� � ������ ��������
���
~
#62613
������� ��������� :-] (������ ��-������������)~
0 c 1
�������~
if !%arg.contains(��������)%
  return 0
  halt
end
����� 
wait 1s
say ��� ����� ��� � ����� ��������. 
say ���� � ����� ��� ����� ������� ����, � �� � ������� � �����.
wait 2
say � ��� ��-�� ��������� �����. �������� � ���� ������ ������, � ��� �� ���� ������.
say ���� �� ������ �� ������ �� ������� ������� ��� ���������.
����
~
#62614
���� ������ �����~
0 j 100
~
wait 1
if %object.vnum% != 62627
  say � ��� ���� ���� � ������, ��� ��� ����������!
  drop %object.name%
  ����� %actor.name%
  halt
end
say �� ����� ������ ����� �����!
mecho - �� ��� � ������ ������-����� ����!
��� 
say �� �������� �������...
mecho - ���, ����� ���. 
switch %random.4%
  case 1
    if (%world.curobjs(62628)% < 10)
      mload obj 62628
      give ����� %actor.name%
    break
  end
  mload obj 62632 
  give ������ %actor.name%
break 
case 2
  if (%world.curobjs(62629)% < 10)
    mload obj 62629
    give ����� %actor.name%
  break
end
mload obj 62632 
give ������ %actor.name%
break
case 3
  if (%world.curobjs(62630)% < 10)
    mload obj 62630
    give ����� %actor.name%
  break
end
mload obj 62632 
give ������ %actor.name%
break 
case 4
  mload obj 62631
  give ������ %actor.name%
break
default
done
���� %actor.name%
mpurge %object% 
detach 62612 %self.id%
detach 62613 %self.id%
*detach 62614 %self.id%
~
#62615
����� �����~
0 f 100
~
mload obj 62627
~
#62616
���� �����~
2 z 0
~
wzoneecho 62652 &Y "�� ���, ��� ����!!!" - ������ ������-����. &n
~
#62617
����� � �����~
2 c 0
����� ������� ~
if (%self.vnum% == 62613)
  if !%arg.contains(����)%
    wsend %actor% _���� �����?
    halt
  end
  wsend %actor% _�� ��������� ����� ���� ����� � ������������ � ����.
  wechoaround %actor% _~~%actor.name% � ��������� �������%actor.q% ����� ���� ����� � �������%actor.u% � ����.
  wteleport %actor% 62602
  wechoaround %actor% _~~%actor.name% �����%actor.q% � �����.
else
  if !%arg.contains(������)%
    wsend %actor% _���� �����?
    halt
  end
  wsend %actor% _�� ��������� ����� ���� ����� � ��������� �� ���.
  wechoaround %actor% _~~%actor.name% �����%actor.q% �� �����.
  wteleport %actor% 62613 
  wechoaround %actor% _~~%actor.name% �����%actor.q% �� �����.
end 
~
#62618
����� �� �������~
2 c 0
����� �������~
if !%arg.contains(������)%
  wsend %actor% _���� �� ������ �������?
  halt
end 
if (!%arg.contains(������)% && !%arg.contains(������)% && !%arg.contains(�������)%)
  wsend %actor% _�� ����� ������� ����� �������? �� ��� ���� ����� ���!
  halt
end
if ( %arg.contains(������)% || %arg.contains(�������)%)
  wsend %actor% _�� ���������� �� ������� � ������� ������.
  wechoaround %actor% _~~%actor.name% �����%actor.q% ����� �� �������.
  wsend %actor% _�������� ������� ����������.
  wechoaround %actor%  ������� ���������� �  %actor.name% ������%actor.q% �� �����.
  eval damage %actor.hitp%/3
  wdamage %actor% %damage%
  wsend %actor% _�� ������ ��������
  wecho _������ �� ������� ���������� ����� � ���� ���������� ����� �������.     
end 
if %arg.contains(������)% 
  wsend %actor% _�� ���������� �� ������ ������� � ������� ������.
  wechoaround %actor%   %actor.name% �����%actor.q% ����� �� �������.
  wteleport %actor% 62679
  wecho %actor.name% �����%actor.u% ���-�� � ������� ��� ��������.
  wechoaround %actor%    %actor.name% �����%actor.q% ���� �� �������.
end
~
#62619
������ ����~
0 f 100
~
mload obj 62643
mload obj 62606
~
#62620
��� �� ������~
0 k 10
~
eval victim %random.pc%
if (!%victim%)
  halt
end
mechoaround %victim% _�������� ���������� ����� �������� %victim.vname% ����!
msend %victim% _�������� ���������� ����� ������ ��� � ������ ���� � ������!
mteleport %victim% 62620
eval damage %victim.hitp%/5
mdamage %victim% %damage%
msend %victim% �� ������ ���������! 
mechoaround %victim% _%victim.iname% �������%victim.u% ������-�� ��-��� ������� ���� � ������%victim.g% �� ���!
%victim.position(6)%
%victim.wait(1)%
~
#62621
� �������~
0 j 100
~
wait 1
switch %object.vnum%
  case 62643
    mpurge %object%
    emot ����� ��������� �� ���
    stand
    �����
    mecho ������ ��������� ������ � ����� � ����� ������������� ������ � �����.
    wait 1s
    mecho ������ ����� ��������� ����� �� ����� � ����� � ���� - ����������.
    wait 2s
    mload obj 62652 
    give ����� %actor.name%
  break
  case 62642
    mpurge %object%
    ���
    say ��� ��� ���� �� �������!
    say ����, �������� ���������!
    stand
    emot ����� ��� � ����          
    wait 1s
    emot ������ ����������� ��� �� ���������� � �������� ������� � ������������ ��� �������
    emot ����� ������� ������ � ������� � ������ - ��� ������
    rest
    if ((%random.100% < 90) && (%world.curobj(62649)% < 25))
      mload obj 62649
      emot ����� ������ � ���������� ������
      wait 2s
      emot �������� ������ � �������� �������� ������������ �������� ����� ���
      ���
      give �������.������ %actor.name%
      say ���! ��� ����� ����� - ����� � ���� ������ ������ �����!
      say � ������� - ����� � ����������, �����, �� ��� ���� �����������.
      emot ���������� ��������, ��� ����� ��� ��� �������� ��� ������
      ����
      say �� ��� - �������%actor.g%, ���� �����%actor.g%? ������ ����������!
      �����
    else
      emot �������� ������������ ���������� ����������� ���
      ���
      say �� ��������� �� ����� ������ �������!
      emot ������ ����������� ��� � ����� ������
    end
  break
  default
    say ��� ��� �� �����, ������ ��� �����.
    give %object.name% %actor.name%
  break
done
~
#62622
���� � ����������~
0 q 100
~
wait 2s
say ������� ����!
���
emot ��������� �� ��� � �������� ����
say ���� ��������?
~
#62623
�������� � �����������~
0 d 0
������ ����� ��������~
wait 1s
say ��, ��� �� ���!...
���
say ��� ����� ����� ����� ���� ����?
wait 3
say ��� ����? 
wait 2
say ���.. �����, �������, ������ ��� � ��� ����.
wait 2
say ������ ��� ����� ����, ��� � ���������� ������� ������.. � ��� � ���� ���� �� ����.
wait 2
say �� ��� ��������� �����, ��� ����� ����������� ������ ������ ���������� ������.
say ��... ���-�� ��� �����...
emot ������� ���������
wait 3
say ��! ��� ������ ��������, ������� ��� �������� �������!
say ����� ����� ������ ����� ����� �� �������!
���
~
#62624
���� ���������� ����������~
0 j 100
~
wait 1
switch %object.vnum%
  case 62645
    say �����... ��� ��� �������� ��������! 
    emot ������ %object.vname% � ������� � �����-�� ������� � �������� ����������
    mpurge %object%
    eval ing1 1
    global ing1
    if ((%ing1% != 1) || (%ing2% != 1) || (%ing3% != 1))
      halt
    end
  break 
  case 62646
    say ��! ������ �� ������, ������� �������� �������� ��� ��������.
    emot ������ %object.vname% � ������� � �����-�� ������� � �������� ����������
    mpurge %object%
    eval ing2 1
    global ing2
    if ((%ing1% != 1) || (%ing2% != 1) || (%ing3% != 1))
      halt
    end
  break
  case 62647
    if ((%object.val2% != 5) or ( %object.val1% < 10 ))
      say � � ������, ������� �����! ���! � ������ ������! � �� ��� ������?!!
      give %object.name% %actor.name%
      halt
    end
    emot ��������� �� ������
    say ��������������!!! ��... �-���� ��-��... ��!
    emot ��������� %object.vname% � ������� � �����-�� ������� � �������� ����������
    mpurge %object%
    eval ing3 1
    global ing3
    if ((%ing1% != 1) || (%ing2% != 1) || (%ing3% != 1))
      halt
    end
  break
  default
    say ��... ����� � �� ������ �����... �� �� ������ - ���� ��������.
    emot ������ %object.name% � ������ � �������� ����������
    mpurge %object%
    halt
  break
done 
wait 1s
emot ���������� � ������ � �������� ���������
say ��! ������� ����� ����������!
wait 2s
emot ��������� ������ ������� ������ � �������
mload obj 62644
give ���� .%actor.name%
give ���� %actor.name%
set ing1 0
set ing2 0
set ing3 0
global ing1
global ing2
global ing3
~
#62625
� ����������~
0 j 100
~
wait 1
switch %object.vnum%
  case 62643
    say �������� ��������... �������� ��� �������.
    say ������ �� ��� ������� ������� ������.
    give ����� %actor.name%
  break
  case 62652
    say ������ ������! ��� ��� � ������� ������-������ ��������.
    emot ����� ��������� ����� � ������
    eval shar 1
    global shar
    mpurge %object%
  break
  case 62649
    say ����� ���������!
    if (%shar% != 1)
      say ����� �� � ��� ����� �������, �� ������ ������ ������� ����.
      give ������ %actor.name%
      halt
    end
    say ��� ��� � ���� ��� ���� ���-��� ����.
    emot ������ �� ������� ��������� ����� � ���� ��� �������� ��� � ����.
    emot �������� ����������� ������� �������.
    if (%random.100% < 80)
      emot ������ � ������� ��������� ����� � ��������� ������� �� �����
      emot ���� ��� �������� ��������, ������������ ��������� ����� ���� ����
      mload obj 62650 
      give ������ %actor.name%
      say ���, ������ �� ��������!
    else
      mecho ������� ������� � ������� ����������.
      ���
      say ��, �� �����....
    end
    mpurge %object%
    eval shar 0
    global shar
  break 
  case 62641
    say ������� ����! ���������� ��� ������ ������... � ��� ���� ���-������ ������
    ���
    emot ������ ������ � ����� ��� � ������
    eval platok 1
    global platok
    mpurge %object%
  break
  case 62650
    if (%platok% != 1)
      say ��... ��� ������ �������!
      say � ���� �� ��� ������ ���������� - ���� �� �� ����!
      give ������ %actor.name%
      halt
    end 
    say ���������� ������! � ��� ��� � ���� � ���� ���-��� ����.
    emot ������ �� ������� ������� ������ ������ � �������� �� ���� ���.
    if (%random.100% < 50)
      emot �������� �������� ������ � ������� �������
      emot �������� ��������, ������������ ��� ������ �������� �������� ����
      mload obj 62651
      give ������ %actor.name%
      say ��� �� ��� ������ ���������� ������� - ���� �� �� ����!
      say �� ��� �� � ������� �� ������ ��� - ��� �����.
    else
      emot ��������� ��������� ������ � �������� �������, �� ������� ������ ������� � ������ ��������
      ���
      emot � ����� ����� ����� �������� � ������, ��� ��� ����������� �������
      ���
      ���
      say ��� ���� ��������...
      �����
    end
    eval platok 0
    global platok
    mpurge %object%
  break
  case 62644
    emot ��������� ���� �������
    emot ���������� ����� �� �������
    say ��... ������� ����... ��� ��� ������ �������.
    emot ��������� �������� ������� �� ������� ������
    eval poison 1
    global poison
    mpurge %object%
  break
  case 62651
    if (%poison% != 1)
      say ������� ����! ��� �� ����� � ���� �������... 
      say �� �� ������ ������ - ��� �� � ���������� �����.. ��� � ���������!
      give ������ %actor.name%
      halt
    end
    say ��... ������� � ����� �� ����� ���� ����� ��������.
    say �� ����� � ��� ����� ��� �������... ���� � ���� ��� ���� ����� ����������.
    emot ������ � ������� ������ �����-�� �������
    emot ��������� ����� ����� �� ������ �������
    if ((%random.100% < 15) && (%world.curobjs(62640)% < 2))
      mecho _������ �������� ������������� ������� ������ � �����.
      say ��� ������ ����� ����� ������� ������� ����� �������.
      mload obj 62640
      give ������ %actor.name%
    else
      mecho _������ �������� �������� ������� � ������
      ����
      say ������ ��...
    end
    eval poison 0
    global poison
    mpurge %object%
  break
  default
    say ��� ������ ����, �� ������ - � �����?!
    give %object.name% %actor.name%
  break
done
~
#62626
����� ������~
1 g 100
~
halt
osend %actor% _��� ������ �� ��������� ������ �� ������, ������-�� ������ ������� ������������ ���.
oechoaround %actor% _��� ������ %actor.name% �������%actor.q% ������ �� ������, ������-�� ������ ������� ������������ ���.
oecho _�������� ��� ������: ��! ��� ��� ������! ������� ������ ��!
oload mob 62633
oforce ��������.��� kill %actor.name%
detach 62626 %self.id%
~
#62627
����� ����~
2 c 1
����� ������~
if !%arg.contains(����)%
  wsend %actor% _���� �����?
  halt
end
wsend %actor% _�� ���������� �� ������� � ������� ����.
wechoaround %actor% _%actor.name% �������%actor.u% � �����%actor.q% ����.
wteleport %actor% 62614
wechoaround %actor% _%actor.name% �������%actor.u% ������ �� �������.
~
#62628
������ ��������� � ������~
0 f 100
~
mload obj 62600
~
#62629
���������� �����~
0 f 100
~
mload obj 62647
~
#62630
������� ����~
0 f 100
~
mload obj 62620
~
#62680
������ �������~
2 c 1
����������, �������, ����������~
if char.class==2
  %send% �� ����, ������ ���������...
else
  %send% �� �� �� ���� ��� �� ���������� ����...
  halt
end
if !%arg.contains(�������)%
  %send% � ��� �� ���������� ����������� �������������?
  halt
else
  %send% �������, ���������... � �����?
end
if !%arg.contains(����������)%
  %send% ��, � ��� �� �� ����� ������� �� ������?
  halt
else
  %send% ������, ����� ������ ���������� �������.
end
~
#62681
���� ������-���������~
0 f 100
~
if (%world.curobjs(214)% < 50) && (%random.100% <= 15)
  mload obj 214
end
~
$~
