#87700
������� ����~
0 c 1
�������~
wait 1
if (!%arg.contains(����)% || ( %actor.vnum% != -1 ))
  msend %actor% _���� �������-��?
  halt
end
wait 2s
�����
wait 3s
� �� �� �������� ����. ������� ��� ���������... 
wait 1s
%echo% ���� � ����������� ������ �������� �� ����.
wait 2s
� ���� � ���� ���� ��������-������� ���� � ��� ���� - ����-������� � �������-�������, �������� �� ������...
wait 1s
� ����� ��� ������ �� ������ ��������� � ��������� ����������� �� ����.
� ����� ������� �����, ��������� ������ � ���� �������� ����...
� � ��� ��� ���� ��� �� ���� � �� ���� ��� ��� ����.   
wait 2s
if %actor.sex% == 1
  say �� ���������� �� �� ������ �������, ����������� ��� ����������� �� ����� ���������
else
  say �� ���������� �� �� ������ ������, ����������� ��� ����������� �� ����� ���������
end 
mecho _- �� �������, ���������� ���� ��������?!
attach 87701 %self.id%
detach 87700 %self.id%
~
#87701
������� �� ����~
0 d 1
�� ��� ��� ������� ��������~
wait 1
if %actor.vnum% != -1
  halt
end
context 877
set hero877 %actor%
worlds hero877
wait 2s
%echo% ���� ���� ������� ����������. 
wait 2s
� ��, ������ ������� �������� ��� ����!
� ��� ���� ������, ��� ������� ��� ������...
wait 1s
� ������ ��� ����� ������� ���� � ����������� � ����, ���� �������.
wait 1s
mecho ��� ����, ��-�-�-�� �������� ��-���������! 
wait 3
mecho ����� ���������� ���� �����.
wait 2
mecho ����� ���� ��������� ����, �� ����� ��������! 
mecho ����� ����� �������, � ������ ���� ������� �� ���������!
mload mob 87701
wait 5
� � ������ ����!
detach 87701 %self.id%
~
#87702
������~
0 c 1
�� ��� ���� ����� ������ ������� ��������~
context 877
wait 1
if %actor.vnum% != -1
  halt
end
if (%actor% != %hero877%)
  msend %actor% ������ ���� ������ �������, �� � ������� ������.
  return 1
  halt
end
foreach vict %self.pc%
  if !%vict.rentable%
    mecho ������ ���� ������ �������, �� � ������� �� %vicr.rname% ������.
    return 1
    halt
  end
done
return 0
%actor.wait(5)%
wait 2s 
msend %actor.name% �������� �� ������� ����, �� ������� � ����-������. 
mechoaround %actor%_ ������� %actor.iname% ������� ����, ������ ��� - ��� ���������� �� ���� � ������ � ���� ������. 
wait 4
%echo% ����� �� �����... 
wait 7
%echo% ����� ������ �����������...
wait 9 
%echo% �� �� ����� ���� ��������. 
wait 8
%echo% ����� �� �������, �� ������� �� �� ���������� ����.
mat 87701 mecho ���-�� ������� ���� �� ������ ����.
mteleport all 87701
mteleport %self% 87701
*�������� ������� ������� 
calcuid pered_steklom 87701 room
exec 87703 %pered_steklom.id%  
detach 87702 %self.id%
~
#87703
����� �������~
2 z 100
~
wait 1
context 877
%hero877.wait(3)%
wload mob 87738
wload mob 87739
%echo% �� ������ ��������� ��� ������ � ������ ����������� � ���.
wait 3
%echo% - ����������, %hero877.name%! �� ���� ���� �������? - �������� ������.
wait 2 
wforce %hero877% say ��������-������� ���� ������, �� � ��� ����. 
wait 4
%echo% ������ �������� � ��������, ��������� �� �����, ������������ � ���� �� ����. 
wait 3
%echo% - ��, %hero877.name%, �������� ���� �� ����� �����, �� �� ��� ����� ���� �� �����.
%echo% - �����-�� �������� �� ��� ���� ����������, � � ��� ��� �������� ���.
%echo% - �� ��� ���� ����� �����, ������ ������ �� �����. 
calcuid podsteklom 87704 room 
attach 87704 %podsteklom.id%
~
#87704
��� �������~
2 c 1
����� ������� ����������� ����������~
wait 1
if %actor.vnum% != -1
  halt
end
if !%arg.contains(������)% && !%arg.contains(�����)% && !%arg.contains(�� ����)%
  wsend %actor% _������-������, ������ ����?
  halt
end
switch %actor.realroom%
  case 87704
    set targetroom 87733
  break
  case 87733
    set targetroom 87734
    set downroom 87704
  break
  case 87734
    set targetroom 87707
    set downroom 87733
  break
done
eval chanse %random.5%*(%actor.dex%+%actor.str%)
if %chanse% > 200
  switch %random.3%
    case 1
      wait 1  
      wsend %actor% _���������� �� ����� ���������� �� ������ � ������� �� ���������� ����.
      wait 1
      wsend %actor% _���� ���� ��������������, �� �� ������ ������ ������ ���� ��� ���� � ����!
      wait 1
      wsend %actor% _������ ����� ���� ����! 
      eval dmg %actor.hitp%/7
      wdamage %actor% %dmg%
      wsend %actor% _�� �� ������ ������������ ��� ���� � ����.
      wteleport %actor.name% %targetroom%
      halt
    break
    case 2
      wait 1 
      wsend %actor% _��������� �� ����� ���������� �� ������ � ������� �� ���������� ����.
      wait 1
      wsend %actor% _���� ���� ��������������, �� �� ������ ������ ������ ���� ��� ���� � ����!
      wait 1
      wsend %actor% _������ ����� ���� ����! 
      eval dmg %actor.hitp%/7 
      wdamage %actor% %dmg% 
      wsend %actor% _���� ������������ ����������, ���� �������� �����, �� ����������� ��� ���� �� ��������� ������� � ������!
      eval dmg %actor.hitp%/8
      wdamage %actor% %dmg%
      wsend %actor% _� �������� �� �����, �� ������� ��� ���� � ����.
      wteleport %actor.name% %targetroom%
      halt
    break
    case 3
      wait 1 
      wsend %actor% _��������� �� ����� ���������� �� ������ � ������� �� ���������� ����.
      wait 1
      wsend %actor% _���� ���� ��������������, �� �� ������ ������ ������ ���� ��� ���� � ����!
      wait 1
      wsend %actor% _������ ����� ���� ����! 
      eval dmg %actor.hitp%/7 
      wdamage %actor% %dmg% 
      wsend %actor% _���� ������������ ����������, ���� �������� �����, � �� ������� ���������� ����!
      if %downroom%
        wteleport %actor% %downroom%
        wechoaround %actor% %actor.name% ������� ������%actor.u% ������!
        %actor.position(2)%
      end
      wdamage %actor% 100
      halt
    break 
  done
end 
* II �������
if %chanse% > 150
  switch %random.4%
    case 1
      wait 1  
      wsend %actor% _���������� �� ����� ���������� �� ������ � ������� �� ���������� ����.
      wait 1
      wsend %actor% _���� ���� ��������������, �� �� ������ ������ ������ ���� ��� ���� � ����!
      wait 1
      wsend %actor% _������ ����� ���� ����! 
      eval dmg %actor.hitp%/6
      wdamage %actor% %dmg%
      wsend %actor% _�� �� ������ ������������ ��� ���� � ����.
      wteleport %actor.name% %targetroom%
      halt
    break
    case 2
      wait 1 
      wsend %actor% _��������� �� ����� ���������� �� ������ � ������� �� ���������� ����.
      wait 1
      wsend %actor% _���� ���� ��������������, �� �� ������ ������ ������ ���� ��� ���� � ����!
      wait 1
      wsend %actor% _������ ����� ���� ����! 
      eval dmg %actor.hitp%/7 
      wdamage %actor% %dmg% 
      wsend %actor% _���� ������������ ����������, ���� �������� �����, �� ����������� ��� ���� �� ��������� ������� � ������!
      eval dmg %actor.hitp%/8
      wdamage %actor% %dmg%
      wsend %actor% _� �������� �� �����, �� ������� ��� ���� � ����.
      wteleport %actor.name% %targetroom%
      halt
    break
    case 3
      wait 1 
      wsend %actor% _���������� �� ����� ���������� �� ������ � ������� �� ���������� ����.
      wait 1
      wsend %actor% _���� ���� ��������������, �� �� ������ ������ ������ ���� ��� ���� � ����!
      wait 1
      wsend %actor% _������ ����� ���� ����! 
      eval dmg %actor.hitp%/7 
      wdamage %actor% %dmg% 
      wsend %actor% _���� ������������ ����������, ���� �������� �����, � �� ������� ���������� ����!
      wdamage %actor% 100
      halt
    break
    case 4
      wait 1 
      wsend %actor% _���������� �� ����� ���������� �� ������ � ������� �� ���������� ����.
      wait 1
      wsend %actor% _���� ���� ��������������, �� �� ������ ������ ������ ���� ��� ���� � ����! 
      wait 1
      wsend %actor% _������ ���� ���� �� �����������!
      wait 1
      wsend %actor% _ - ���, �� �������,- ������� ��, ���������� ������� ����. 
      if %downroom%
        wteleport %actor% %downroom%
        wechoaround %actor% %actor.name% ������� ������%actor.u% ������!
        %actor.position(2)%
      end
      halt
    break  
  done
  halt
end  
* III �������
if %chanse% > 100
  switch %random.3% 
    case 1
      wait 1  
      wsend %actor% _���������� �� ����� ���������� �� ������ � ������� �� ���������� ����.
      wait 1
      wsend %actor% _������ ����� ���� ����! 
      eval dmg %actor.hitp%/7
      wdamage %actor% %dmg% 
      wait 1
      wsend %actor% _�� � ����� ���������� ����, �� ������� ���������� ������!
      wsend %actor% _����� ��� ��������.
      wdamage %actor% 100  
      halt
    break
    case 2
      wait 1 
      wsend %actor% _��������� �� ����� ���������� �� ������ � ������� �� ���������� ����.
      wait 1
      wsend %actor%  ���� ���� ��������������, �� �� ������ ������ ������ ���� ��� ���� � ����!
      wait 1
      wsend %actor% _������ ��������� ��� ������ �������� � ��� ������� ������ ����� ���!
      eval dmg %actor.hitp%/7 
      wdamage %actor% %dmg% 
      wsend %actor% _���� ������������ ����������, ���� �������� �����, � �� ������� ���������� ����!
      if %downroom%
        wteleport %actor% %downroom%
        wechoaround %actor% %actor.name% ������� ������%actor.u% ������!
        %actor.position(2)%
      end
      wdamage %actor% 100
      halt
    break 
    case 3
      wait 1 
      wsend %actor% _���������� �� ����� ���������� �� ������ � ������� �� ���������� ����. 
      wait 1
      wsend %actor% _������ ����� ���� ����! 
      eval dmg %actor.hitp%/7 
      wdamage %actor% %dmg% 
      wait 1
      wsend %actor% _���� ���� ��������������, �� �� ������ ������ ������ ���� ��� ���� � ����!
      wait 1
      wsend %actor% _������ ����� ���� ����! 
      eval dmg %actor.hitp%/7 
      wdamage %actor% %dmg% 
      wsend %actor% _���� ������������ ����������, ���� �������� �����, �� ����������� ��� ���� �� ��������� ������� � ������!
      eval dmg %actor.hitp%/8
      wdamage %actor% %dmg%
      wsend %actor% _� �������� �� �����, �� ������� ��� ���� � ����.
      wait 1
      wsend %actor% _������ ����� ���� ����! 
      eval dmg %actor.hitp%/7 
      wdamage %actor% %dmg% 
      wsend %actor% _���� ������������ ����������, ���� �������� �����, � �� ������� ���������� ����!
      wdamage %actor% 100
      halt
    break 
    case 4
      wait 1 
      wsend %actor% _��������� �� ����� ���������� �� ������ � ������� �� ���������� ����.
      wait 1
      wsend %actor% _���� ���� ��������������, �� �� ������ ������ ������ ���� ��� ���� � ����!
      wait 1
      wsend %actor% _������ ����� ���� ����! 
      eval dmg %actor.hitp%/7 
      wdamage %actor% %dmg% 
      wsend %actor% _���� ������������ ����������, ���� �������� �����, �� ����������� ��� ���� �� ��������� ������� � ������!
      eval dmg %actor.hitp%/8
      wdamage %actor% %dmg%
      wsend %actor% _� �������� �� �����, �� ������� ��� ���� � ����.
      wteleport %actor.name% %targetroom%
    break
  done 
  halt
end 
*IV �������
wsend %actor% _���������� �� ����� ���������� �� ������ � ������� �� ���������� ����.
wait 1
wsend %actor% _���� ���� ��������������, �� �� ������ ������ ������ ���� ��� ���� � ����! 
wait 1
wsend %actor% _������ ���� ���� �� �����������!
wait 1
wsend %actor% _ - ���, �� �������,- ������� ��, ���������� ������� ����. 
if %downroom%
  wteleport %actor% %downroom%
  wechoaround %actor% %actor.name% ������� ������%actor.u% ������!
  %actor.position(2)%
  
  
  
end
~
#87705
� ������ ���������� �����~
0 r 100
~
wait 1
���
wait 1
� ���������� ���, ����� �������!
� ����� �������� - ������ �� �� ��������.
� ���, ������ ��� �� �������� �� ������� ������ ���� ������ ���������� �����!
detach 87705 %self.id%
~
#87706
��� �� ������� ���������� �����~
0 l 100
~
� ��, �� ������ �!
wait 1
%echo% ����� ������ ������ ������ ��� ���� ���� �� ���������� �������!!!
mdoor 87710 e purge
mdoor 87710 e room 87711
wait 2
mecho \&W _������ �������� �� ��������� ��������. &n
mload mob 87703
mload mob 87703
mload mob 87703
wait 1
mecho \&W _������� ������ �����, ������� ���� � �������� �� ������ ������!&n
detach 87706 %self.id%
~
#87707
������ ������� ������������~
0 r 100
~
wait 2
if %actor.sex% == 1
  � ����������, ������ �������, %actor.name%.
else
  � ����������, ������ ������, %actor.name%.
end 
� ��� �� �� ���� �����%actor.g%: ����� ������ ��� �������?
attach 87708 %self.id% 
detach 87707 %self.id%
~
#87708
������ ������� ������ �����~
0 d 1
������~
wait 2
if %actor.vnum% != -1
  halt
end
msend %actor.name%_ � �� ���������� ������ ������, ����� ����� ���������.
mechoaround %actor% _%actor.name% ������%actor.u% ������������ ������ ������, ����� �� ����� ���������.
wait 2  
mecho ���� ������ ����������� �� ���� �������.
wait 1 
� �� ����, ���� ����� ���� ��������-������...
� �� �������� ����� ��� ������� ��������, ����� ��� ���� ������.
wait 2
mload obj 87700
� ���� �� ���������, �� �� ������������ ������� �����, ������ ��� ���. 
wait 1
���� ��� .%actor.name%
wait 2
� ������ �����, �� ���� ����-������ �� ������� ������ ������.
mecho ������ ���, ������� �������� � ������ � �������.
wait 1
mpurge %self%
detach 87708 %self.id%
~
#87709
������� ������ �����~
1 h 100
~
wait 1
oecho �����, �����, ���������� � ������ ��������� �����. 
otransform 87701
wait 2s  
oecho �� ����������� �� ���. 
wait 1
foreach victim %self.pc% 
  if (( %victim.realroom% > 87704 ) && ( %victim.realroom% < 87799 ))
    oteleport %victim% 87754 horse
  end
done
calcuid prum 87754 room
exec 87710 %prum.id%
wait 1 
opurge %self%  
~
#87710
���� �� ������� �������~
2 z 100
~
wait 2s
wecho ��� ��, ���...
wait 5s
wecho ����� ������ �����������...
wait 3s
wecho �� �� ����� ���� ��������...
wait 5s
wecho ������� �� ������� � ������� ������� �������.
wecho ������, ����������� �������� � �����.
wait 3s 
foreach victim %self.pc% 
  wteleport %victim% 87784 horse
done
~
#87711
������� ����������� �����~
1 h 100
~
wait 1
oecho ���������� �����, �����, ����������� � ������ ���������� �����. 
otransform 87703
wait 2s  
oecho �� ����������� �� ���. 
wait 1
foreach victim %self.pc% 
  if (( %victim.realroom% > 87704 ) && ( %victim.realroom% < 87799 ))
    oteleport %victim% 87755 horse
  end
done
calcuid prum 87755 room
exec 87712 %prum.id%
wait 1 
opurge %self% 
~
#87712
���� �� ������������ �������~
2 z 100
~
wait 2s
wecho ��� ��, ���...
wait 5s
wecho ����� ������ �����������...
wait 3s
wecho �� �� ����� ���� ��������...
wait 5s
wecho ������� �� ������� � ������� ����������� �������.
wecho ������, ����������� �������� � �����. 
wait 3s 
wteleport all 87727 horse
~
#87713
������� ������� �����~
1 h 100
~
wait 1
oecho �����, �����, ���������� � ������ ��������� �����. 
otransform 87705
wait 2s  
oecho �� ����������� �� ���. 
wait 1
foreach victim %self.pc% 
  if (( %victim.realroom% > 87704 ) && ( %victim.realroom% < 87799 ))
    oteleport %victim% 87756 horse
  end
done
calcuid prum 87756 room
exec 87714 %prum.id%
wait 1 
opurge %self%    
~
#87714
���� �� �������� �������~
2 z 100
~
wait 2s
wecho ��� ��, ���...
wait 5s
wecho ����� ������ �����������...
wait 3s
wecho �� �� ����� ���� ��������...
wait 5s
wecho ������� �� ������� � ������� �������� �������.
wecho ������, ����������� �������� � �����.
wait 3s 
wteleport all 87736 horse
~
#87715
����������� ������� ������������~
0 r 100
~
wait 2
if %actor.sex% == 1
  � ����������, ������ �������, %actor.name%.
else
  � ����������, ������ ������, %actor.name%.
end 
if %exist.mob(87707)%
  say ����� ������, � �� ������ ���� ������ ����� � ������� ����!
  dg_cast '���� �����' %actor%
  halt
end
� ��� �� �� ���� �����%actor.g%: ����� ������ ��� �������?
attach 87716 %self.id%
detach 87715 %self.id%
~
#87716
����������� ������� ������~
0 d 1
������~
wait 2
msend %actor.name%_ � �� ���������� ���������� �������, ����� ����� ���������.
mechoaround %actor% _%actor.name% �������� ������������ ���������� �������, ����� �� ����� ���������.
wait 1s
mecho ������� ����� �����������.
wait 3s
� ��� ��� ��� ���� � ���� ����� � ���������.
� ���� ������ ���� � ���� - �� ����� ���������� � ������� ����, �������.
� ������� ��� ��� ����� � �������� � ����� ����� �������.
� ������ ����� ��� ��� � ���� �� �������. 
wait 2s
� ��� �� �� ����� � ���� ������� ���������, �� �������� �� ������� �������?!
wait 2s
mecho ������� ������ ����� � ��������� �� ���.
attach 87717 %self.id%
detach 87716 %self.id%
~
#87717
������� ������� �������~
0 d 1
������ ������� ���~
wait 1s 
mload obj 87706
� ��� ���� �� �����. ��� � ������!
���� ���� .%actor.name% 
attach 87718 %self.id%
detach 87717 %self.id%
~
#87718
����������� ������� ���� �����~
0 q 100
~
wait 1
if (%exist.mob(87710)% || %exist.mob(87711)%)
  halt
end
wait 1s
mecho ������� ������� ������ ��� ������-�����������.
wait 2s
� �� ���������� �������� �� ����� �������!!!   
mload obj 87702
wait 1s
� ������� ����, %actor.name%! �� ������ � ������ ���� �� ����.
mecho _- ��� ������ ���������� �����.
mecho _- ������ ��� ����� ����� � ������ �� ��� ������.
mecho _- ��� ������� ���� �� �������� �������, ��� ������� ��� ������ - ����� ����������.
mecho _- ����� ��� ������� ����.
wait 1s
���� ��� %actor.name% 
switch %random.10%
  case 1
    if %world.curobjs(87708)% < 4
      mload obj 87708    
      wait 2s
      mecho ������� ����� ������������.
      � �� ��...
      �� %actor.name% 
      � ����� ���� ��� ������ �� ���������� �������. ������� �� ������ ������� ����.
      wait 1s
      ���� ��� .%actor.name%       
    else 
      mload obj 87757    
      wait 2s
      mecho ������� ����� ������������.
      � ��, ���� �� ������...
      �� %actor.name% 
      � ����� �� � ����, �� � ���������� �� ������ ����������.
      wait 1s
      ���� ����� %actor.name%    
    end 
  break 
  case 2
    if %world.curobjs(87710)% < 4
      mload obj 87709
      wait 2s
      mecho ������� ����� ������������.
      � ������...
      �� %actor.name% 
      � ����� ���� ��� ������ �� ���������� �������. �� ������������� ����� ������� ����� ������!
      wait 1s
      ���� ��� %actor.name%   
    else
      mload obj 87757    
      wait 2s
      mecho ������� ����� ������������.
      � ��, ���� �� ������...
      �� %actor.name% 
      � ����� �� � ����, �� � ���������� �� ������ ����������.
      wait 1s
      ���� ����� %actor.name%    
    end
  break
  case 3
    if %world.curobjs(87712)% < 3
      mload obj 87712    
      wait 2s
      mecho ������� ����� ������������.
      � ������-��... �������!
      �� %actor.name% 
      � ����� ���� ��� ��������� ��������. ������, �� ������� - ������� ������� ������ ����.
      ���
      wait 1s
      ���� ��� %actor.name%   
    else
      mload obj 87757    
      wait 2s
      mecho ������� ����� ������������.
      � ��, ���� �� ������...
      �� %actor.name% 
      � ����� �� � ����, �� � ���������� �� ������ ����������.
      wait 1s
      ���� ����� %actor.name%    
    end
  break   
  default 
    mload obj 87757    
    wait 2s
    mecho ������� ����� ������������.
    � ��, ���� �� ������...
    �� %actor.name% 
    � ����� �� � ����, �� � ���������� �� ������ ����������.
    wait 1s
    ���� ����� %actor.name%    
  done 
  mecho ������ ���, ������� �������� � ������ � �������.
  wait 1
  mpurge %self%
  detach 87718 %self.id%
~
#87719
������� ������� ������������~
0 r 100
~
wait 2
if %actor.sex% == 1
  � ����������, ������ �������, %actor.name%.
else
  � ����������, ������ ������, %actor.name%.
end 
if %exist.mob(87708)%
  say ����� ������, � �� ������ ���� ������ ����� � ������� ����!
  dg_cast '���� �����' %actor%
  halt
end
� ��� �� �� ���� �����%actor.g%: ����� ������ ��� �������?
attach 87720 %self.id% 
detach 87719 %self.id%
~
#87720
������� ������� �������~
0 d 1
������~
wait 2
msend %actor.name%_ � �� ���������� ������� �������, ����� ����� ���������.
mechoaround %actor% _%actor.name% �������� ������������ ������� �������, ����� �� ����� ���������.
wait 2s
mecho ���� ������� ���������� ���� ������������.
say ��������, ������ �������...
mecho _- ��� ��� ��� ���� � ����� � ������.
mecho _- ���� �������� ����, � ���������� ���������� ������� ����.
mecho _- ��� � ��������� �����-�����������.
mecho _- �������� � � ������ �����, � ��� ����� ����� � ������ ����������?
mecho _- � ��� � ���� - ������ � �� ��������...
wait 3s 
say �� ������� �����, ���������� ���������� ���� �������...
mecho _- � ������ ������ ������, ����������� � ������, ���������� ���� �����!
mecho _- �� ���, ��� ��� � ������ ���� ����, � �� ����� ������ ����� �������!
mecho _- �� ���� �� �� ���� ������� ���� �����, �� ������� � �������� �������... �...
wait 3s
mecho ������� ��� ������� �� ���, ��� ����� ������� - �������� �� �� ������ �� � �����.
attach 87721 %self.id%
detach 87720 %self.id% 
~
#87721
������� ������� �������~
0 d 1
�������� �� ������� ��������~
wait 1
say ��� � �����, ������������� �������!
mecho ������� �������� � ������.
��
mload obj 87763
give ���� .%actor.name%
attach 87736 %self.id%
detach 87721 %self.id%
~
#87722
��������~
2 e 100
~
wait 1s
wecho ������� ���� ���������, ����� ����� � �������� ������� � ���!
foreach target %self.pc%
  eval dmg %target.hitp%/3
  wdamage %target% %dmg%    
done 
wait 2s
foreach target %self.pc%
  eval dmg %target.hitp%/6
  wdamage %target% %dmg%    
done  
wait 2s
wecho �� � ����� ������� ������ ��� ����, �� ��������� �����.
foreach target %self.pc%
  wforce %target% �����
done
~
#87723
������� ����� ��������~
0 c 1
�� ��� ���� ����� ������ ������� ��������~
* �������� �� ������� ������ ���� ��� 
if %actor.vnum% != -1
  halt
end 
return 0
if %actor.realroom% != 87779
  halt
end
wait 1s
mecho ���� �������� ������, ����� �� ����.
wait 1s
msend %actor% ���� ��������� � ��� � ���������! 
tell %actor.name% ��������� �� c�����%actor.g%, %actor.name%, ��� �������%actor.g% �� ����, ������� ������ ������!
msend %actor% ���� ��������� � �������, ������ ����� ��������� � ����!
mechoaround %actor% ����������� ���� � ������� ��������� %actor% �� ����� ����� ��� ������� ��������� � ������� �� ����. 
mteleport %actor% 87780 horse
wait 1s
msend %actor% ��������� ����� ������� ���������, ����� �������� ������ ��� ���������. 
mforse %actor% south
detach 87723 %self.id% 
~
#87724
� �������� ������~
0 q 100
~
wait 2s
mecho �����, ����� ���� ������������ ���������, ��������� ���������.
mecho ����� ����������� ������� ��� � ����� � ������ � ���!
mecho ���� ��� ���� ��������, � ������ ��� ������ ������, ����� ���� �������� �� �����.
foreach target %self.pc%
  eval dmg %target.hitp%/6
  wdamage %target% %dmg%    
done
wait 2s
mforce %actor% ������
mecho ������, ��� �� �� ������� ��� ���, ����� �������� ������ ������.
wait 3s
if %actor.sex% == 1
  � ������ ����, ������ �������.
else
  � ������ ����, ������ ������.
end
mforce %actor% ������
mecho _- ������ ����� � ���� ��� ���������� ���� � ���������� ������.
mecho _- ������ ������ ���� ���� � ������...
mecho _- ���� � �������� ����� ���� ������.
mecho _- ��, ���� � �� ����%actor.u% ������ ��� ������� ��� �����!
wait 1s
mecho ������� ����� ����������.  
attach 87725 %self.id%  
detach 87724 %self.id%
~
#87725
����� ��������~
0 d 1
�� �������� �������� ��������~
wait 1s
� �� �� �������, � ������� ��������� ���� ���������
mecho _- ��� ���� ������� ���������� � ������...
mecho _- ������, � �������� ��� ������ ������.
mecho _- ���� � ���� �� ����, ��� �� �������� ��������.
mecho ������� ����� ������� ���������.
wait 1s
� ��� ��� ������ �����������:
mecho _- ��� ���������� � ������, �� �������� ���� ������, � ������� � ������� ���� �����������.
mecho _- ������, ��� �� ������ ������ ������, ��� ���� ����� �� ������.
mecho _- ����� ������ ������, � ������� ��� ��� ��� ���������� �������.
mecho _- ��� ������ ��� ���-��� ���������, � ��� ����� - ������� �������, � ����� �� ������ ���� ���� � ���� � �� ������ ������!
mload obj 87732
���� ����� %actor.name% 
calcuid goldkon 87712 mob
attach 87738 %goldkon.id%
detach 87725 %self.id%
~
#87726
�� �����~
2 e 100
~
wait 2
wecho �������� �� ����� ������ �����.
wecho ������� ����� ����� ��������� �� �������.
wecho ���� ����� ������������ �����, ���� ��� ����� �� ������ �����!
if %self.west%
  wdoor 87762 e purge
  wdoor 87763 w purge
  wait 2s
  wdoor 87763 e room 87764
  wdoor 87764 w room 87763
else
  wdoor 87763 e purge
  wdoor 87764 w purge
  wait 2s
  wdoor 87763 w room 87762
  wdoor 87762 e room 87763
end
~
#87727
������� ������~
1 c 4
�������~
wait 1
if !%arg.contains(������)%
  osend %actor% ��� �� ������ �������?
  halt
end
wait 1s 
osend %actor% �� ������� �������, �� ������ ���������� - �������, � ���� �� ������� ���!
oechoaround %actor% %actor% ������%actor.g% �������, �� ��� �������, ��� �������%actor.g% ���!
wait 2s
oecho �������� ��������� ����, ������ ��������� ��������� �������.
oecho - �� ����� ������� - ��� �� ��������! - ������� ������� ������ ������. 
oload mob 87722
wait 2s 
oecho ������ ���������� ���� � ������.
oecho � ��� ���� ����������� ����.
oload mob 87723
oload mob 87723
oload obj 87727
oforce %actor% ����� ����� 
detach 87727 %self.id%
~
#87728
������� �����~
1 c 4
�������~
wait 1
if !%arg.contains(�����)%
  osend %actor% ��� �� ������ �������?
  halt
end
wait 1s
osend %actor% �� ������� �����, �� ������ ���������� - �������, � ���� �� ������� ��!
oechoaround %actor% %actor% ������%actor.g% �����, �� ��� �������, ��� �������%actor.g% ��!
wait 2s
oecho �������� ��������� ����, ������ ��������� ��������� �������.
oecho - �� ����� ������� - ��� �� ��������! - ������� ������� ������ ������. 
oload mob 87720
wait 2s 
oecho ������ ���������� ���� � ������.
oecho � ��� ���� ����������� ����.
oload mob 87721
oload mob 87721
oload obj 87729
oforce %actor% ����� ����   
detach 87728 %self.id%
~
#87729
������� �����~
1 c 4
�������~
wait 1
if !%arg.contains(�����)%
  osend %actor% ��� �� ������ �������?
  halt
end
wait 1s
osend %actor% �� ������� �����, �� ������ ���������� - �������, � ���� �� ������� ��!
oechoaround %actor% %actor% ������%actor.g% �����, �� ��� �������, ��� �������%actor.g% ��!
wait 2s
oecho �������� ��������� ����, ������ ��������� ��������� �������.
oecho - �� ����� ������� - ��� �� ��������! - ������� ������� ������ ������� ��������. 
oload mob 87724
wait 2s 
oecho ������-�� ���������� ������.
oecho � ���� ������ ��������� �� ������ ���������.
oload mob 87729
oload mob 87729
oload obj 87728
oforce %actor% ����� ���� 
detach 87729 %self.id%
~
#87730
������� �������~
1 c 4
�������~
wait 1
if !%arg.contains(�����)%
  osend %actor% ��� �� ������ �������?
  halt
end
wait 1s
osend %actor% �� ������� �������, �� ������ ���������� - �������, � ���� �� ������� ��!
oechoaround %actor% %actor% ������%actor.g% �����, �� ��� �������, ��� �������%actor.g% ��!
wait 2s
oecho �������� ��������� ����, ������ ��������� ��������� �������.
oecho - ��� ��� ��� �� �������!? - ������� ������� ������ ��������� ��������. 
oload mob 87726
wait 2s 
oecho ������ ���������� �������� �����.
oecho � ��� ������� ������ ����������� ����.
oload mob 87727
oload mob 87727
oload obj 87731
oforce %actor% ����� ����  
detach 87730 %self.id%
~
#87731
������� ������~
1 c 4
�������~
wait 1
if !%arg.contains(������)%
  osend %actor% ��� �� ������ �������?
  halt
end
wait 1s
osend %actor% �� ������� ������, �� ������ ���������� - �������, � ���� �� �������� ���!
oechoaround %actor% %actor% ������%actor.g% ������, �� ��� �������, ��� �������%actor.g% ���!
wait 2s
oecho �������� ��������� ����, ������ ��������� ��������� �������.
oecho - ������ ����-�� ������ ������! - ������� ������� ������ ������� ��������. 
oload mob 87725
wait 2s 
oecho ���������� ����� ������ ���.
oecho �� ������� ���������� ��� �������� �����.
oload mob 87728
oload mob 87728
oload obj 87730
oforce %actor% ����� ������   
detach 87731 %self.id%
~
#87732
������ � ��������~
0 r 100
~
wait 1s
mecho ��������-������� ���������� ������, ������ ���.
� �� ��� �� �� ���� ���������?!
if %exist.mob(87709)%
  say ����� ������, � �� ������ ���� ������ ����� � ������� ����!
  dg_cast '���� �����' %actor%
  halt
end
wait 3s
mecho �������� ��������� ���������� �� �������.
� ��� ������ �����, ������ ���������.
� ���� ������ � ������, ����� �� ������� �����.
� � ���� ���� ���������� ��� �����������!   
mload obj 87733
���� ����� %actor.name% 
wait 1s
� ������ ��!!!
detach 87732 %self.id%
~
#87733
���� �� �����~
2 c 1
�� ��� ���� dr dri drin drink~
if !%arg.contains(����)%
  wsend %actor% �� ���� ����?
  return 1
  halt
end
wait 1s
wsend %actor% �� ���������� �� �����, �� ����� ������ ���������...  
wechoaround %actor% %actor% ��������� �� �����.  
wecho ���������� ����� ����� �����, � ������ ����������� �� ������������ ������.
wecho � ������ �������� ������������ ������!
wload mob 87730
detach 87733 %self.id%
~
#87734
����� ��������~
0 n 100
~
mecho ������� ����� ������ ���� � �������� ������� �� ���!
set target %random.pc%
mkill %target%
~
#87735
����� ����������~
2 z 0
~
* �������� �� ����\����, � ����� �� ��� �������
wait 1 
if ( %time.hour% > 5 ) && ( %time.hour% < 20 )
  halt
end
if %exist.mob(87710)% || %exist.mob(87711)%
  halt
end
wait 2s
wecho � ��� ����� ����� ��� ������,
wait 2s
wecho ������ ������ ���� ����� ���� �����.   
wait 2s
wecho � �� ������� ����, ����� � ���� �����.   
wload mob 87737
~
#87736
������� ������� ���� �����~
0 q 100
~
wait 1
if %exist.mob(87719)%
  halt
end
wait 1s
mecho ������� �������� ������� ���������� ������������, ������ ��� ������-�����������.
wait 1s
� �� ������ ���� �����! �� �������! 
wait 1s
� ������ ���� �����, �� �������� ���� � ���������� �������, ��� ������� ��������-�������.
mload obj 87704
���� ����.��� %actor.name%
switch %random.3% 
  case 1
    if %world.curobjs(87746)% < 4
      mload obj 87746
      � �� ������ ������ ����� �� ���� ���� ���.
      ���� ���.���� %actor.name% 
    else 
      mload obj 87759
      � ���� ����� ������ ������� �� ������� ��������.
      ���� �����.���� %actor.name%  
    end
  break  
  case 2
    if %world.curobjs(87747)% < 4
      mload obj 87746
      � �� ������ ������ ����� �� ���� ���� ����.
      ���� ����.���� %actor.name% 
    else 
      mload obj 87759
      � ���� ����� ������ ������� �� ������� ��������.
      ���� �����.���� %actor.name%  
    end
  break
  default
    mload obj 87759
    � ���� ����� ������ ������� �� ������� ��������.
    ���� �����.���� %actor.name%  
  break
done
mecho ������ ���, ������� �������� � ������ � �������.
wait 1
mpurge %self%
detach 87736 %self.id%
~
#87737
���� ������� ������~
0 j 100
~
wait 1
if %object.vnum% != 87732
  drop %object.name% 
  halt
end
wait 1
mpurge %object%
wait 1s
mecho ������ ����� ��� �������� ��������� �� �������.
wait 2s
mecho ������ ����� ���������� �� �� ����.
wait 1s
mecho ���� ������������ ��������� �� ��� ������������ ����.
wait 1s
�����
wait 2s 
mecho ��������� ����� ������� ��� � ������ �� ���.
wait 1s
� �������� ������������ � ���� �������...
� ������� ���� %actor.name%, ��� ������ ��� �����.
* ������� ������� �������
while  %exist.mob(87716)%
  calcuid agromob 87716 mob
  mteleport %agromob% 87776
  mpurge %agromob%
  wait 2
done
wait 2s
say � ������� ������� ���� �������? ��-��...
mecho _- ����� ��, �������.
mecho _- ���� ������������� ����, ��� ���� � ������� �����.
mecho _- ���� ���� ���� ��� ������� �� �����, ������.
wait 1s
mecho ��������� ����� ������������ ��������.
wait 1s
mecho ���������� ������ ���������� �����.
wait 1s
mecho ��-�� ���� ������ ��������� �������� �����.
mload mob 87732
say ��, ��� ��... � ��� ����� ������� ������ ����� �����.
wait 1
mpurge %self%
~
#87738
������� ������� ����� ��������~
0 c 1
�� ��� ���� ����� ������ ������� ��������~
* �������� �� ������� ������ ���� ��� 
if %actor.realroom% != 87780
  msend %actor% ����������� ���� ������ � �������.
  return 1
  halt
end
return 0
wait 1s
mecho ���� �������� ������, ����� �� ����.
wait 1s
mteleport %actor% 87760 horse
wait 1s
msend %actor% ��������� ����� ������� ���������, ����� �������� ������ ��� ���������. 
detach 87738 %self.id%
~
#87739
����� ���� ���������~
0 f 100
~
if (%world.curobjs(87734)% < 3) && (%random.10% <=2)  
  mload obj 87734
elseif (%world.curobjs(87721)% < 3) && (%random.10% <=2) 
  mload obj 87721
end
~
#87740
������ ���� ���������~
0 f 100
~
eval chanse %world.curobjs(87717)%+22
if (( %random.25% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 87717
end
~
#87741
���������� ���� ���������~
0 f 100
~
eval chanse %world.curobjs(87718)%+22
if (( %random.25% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 87718
end
~
#87742
������� ���� ���������~
0 f 100
~
eval chanse %world.curobjs(87719)%+22
if (( %random.25% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 87719
end
~
#87743
�������� ����������~
0 f 100
~
calcuid tower 87723 room
exec 87735 %tower.id%
eval chanse %world.curobjs(87735)%+22
if (( %random.25% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 87735
  halt
end
eval chanse %world.curobjs(87736)%+22
if (( %random.25% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 87736
end
~
#87744
���������� ����� ���������~
0 f 100
~
eval chanse %world.curobjs(87707)%+22
if (( %random.25% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 87707
  halt
end
~
#87745
���������� ���������~
0 f 100
~
eval chanse %world.curobjs(87738)%+25
if (( %random.28% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 87738
end
eval chanse %world.curobjs(87739)%+25
if (( %random.28% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 87739
end
eval chanse %world.curobjs(87740)%+20
if (( %random.25% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 87740
end
~
#87746
������ ���� ���������~
0 f 100
~
eval chanse %world.curobjs(87720)%+10
if (( %random.12% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 87720
  halt
end
~
#87747
������ ���������~
0 f 100
~
eval chanse %world.curobjs(87741)%+20
if (( %random.23% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 87741
end
eval chanse %world.curobjs(87742)%+20
if (( %random.24% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 87742
end
eval chanse %world.curobjs(87744)%+20
if (( %random.24% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 87744
end
~
#87748
������ ���������~
0 f 100
~
calcuid nast 87731 mob
attach 87754 %nast.id%
eval chanse %world.curobjs(87743)%+24
if (( %random.27% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 87743
  halt
end
eval chanse %world.curobjs(87745)%+25
if (( %random.28% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 87745
  halt
end
~
#87749
����� ������ ���������~
0 f 100
~
eval chanse %world.curobjs(87748)%+20
if %random.23% > %chanse% || %random.100% == 53
  mload obj 87748
end
~
#87750
����� ������ ���������~
0 f 100
~
eval chanse %world.curobjs(87760)%+26
if (( %random.28% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 87760
end
~
#87751
������� �������� ���������~
0 f 100
~
eval chanse %world.curobjs(87756)%+15
if (( %random.17% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 87756
end
~
#87752
������� �������� ���������~
0 f 100
~
eval chanse %world.curobjs(87761)%+24
if (( %random.28% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 87761
end
~
#87753
��������� �������� ���������~
0 f 100
~
eval chanse %world.curobjs(87751)%+24
if (( %random.27% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 87751
end
~
#87754
������� ������!~
0 q 100
~
wait 1
emot ��� ���� ��� �������� ���������� ������
wait 1s
say �������� �� ���� �� ����� ����� �����.
mecho _- ���� � ������ ��������� �����, �� ������ ������� ��� �� ���� ��������.
switch %random.5%
  case 1
    eval chanse %world.curobjs(87753)%+15
    if (( %random.17% > %chanse% ) || ( %random.100% == 53 ))
      mload obj 87753
    else
      mload obj 87759
    end
  break
  case 2
    eval chanse %world.curobjs(87754)%+15
    if (( %random.17% > %chanse% ) || ( %random.100% == 53 ))
      mload obj 87754
    else
      mload obj 87759
    end
  break
  case 3
    eval chanse %world.curobjs(87755)%+15
    if (( %random.17% > %chanse% ) || ( %random.100% == 53 ))
      mload obj 87755
    else
      mload obj 87759
    end
  break
  case 4
    eval chanse %world.curobjs(87756)%+15
    if (( %random.17% > %chanse% ) || ( %random.100% == 53 ))
      mload obj 87756
    else
      mload obj 87759
    end
  break
  case 5
    mload obj 87759
  break
  default
    mload obj 87759
  done
  wait 2s
  give all .%actor.name%
  say ������ ��� ��� �� ������ � ���������� ���� � ��������-�������!
  emot �������� � ������ � �������
  wait 1
  mpurge %self%
~
#87755
����������� � ��������~
0 n 100
~
get all.treasure877
~
#87756
����� �����~
0 f 100
~
calcuid tower 87723 room
exec 87735 %tower.id%
~
#87757
����������� � ������~
0 n 100
~
wait 1s 
emot ����� � ������� ������� ����.
if %random.100% < 35
  mload obj 575
  mecho ����� ������� ����� ���� ����� � ������� ���������, � ������ ������� � ����.
end
switch %random.5%
  case 1
    if %world.curobjs(87710)% < 4   
      mecho ����� ������� ����� ���� �������� ���, � ������ ������� � ����.
      mload obj 87710  
    else
      mecho ����� ������� ����� ���� ����� ������� �����, � ������ ������� � ����.
      mload obj 87758
    end 
  break   
  case 2
    if %world.curobjs(87713)% < 8   
      mecho ����� ������� ����� ���� �������� � ������� ������, � ������ ������� � ����.
      mload obj 87713  
    else
      mecho ����� ������� ����� ���� ����� ������� �����, � ������ ������� � ����.
      mload obj 87758
    end 
  break   
  case 3
    if %world.curobjs(87714)% < 5  
      mecho ����� ������� ����� ���� ������� ���������� ����, � ������ ������� � ����.
      mload obj 87714  
    else
      mecho ����� ������� ����� ���� ����� ������� �����, � ������ ������� � ����.
      mload obj 87758
    end 
  break
  case 4
    if %world.curobjs(87715)% < 4   
      mecho ����� ������� ����� ���� �������� �� ���������� ������, � ������ ������� � ����.
      mload obj 87715  
    else
      mecho ����� ������� ����� ���� ����� ������� �����, � ������ ������� � ����.
      mload obj 87758
    end 
  break 
  default 
    mecho ����� ������� ����� ���� ����� ������� �����, � ������ ������� � ����.
    mload obj 87758
  done 
  wait 1
  mpurge %self%
~
#87758
����� ����~
2 f 100
~
context 877
unset hero877
calcuid berg 87704 room
detach 87704 %berg.id%
wdoor 87710 e purge
wdoor 87710 e room 87711
wdoor 87710 e flags abcd
wdoor 87710 e name ������
wdoor 87710 e description ������
wdoor 87763 e purge
wdoor 87764 w purge
wdoor 87763 w room 87762
wdoor 87762 e room 87763
calcuid podval 87750 room
attach 87733 %podval.id%
wdoor 87707 d purge
wdoor 87702 u purge
calcuid obr 87707 room
attach 87759 %obr.id%
~
#87759
�������� �������~
2 c 1
������������ ������������ ���������~
wait 1
if !%arg.contains(�������)%
  wsend %actor% � ���� �� ������ ������������?
  halt
end
wsend %actor% �� ������������ � ���������� �������.
wechoaround %actor% %actor.name% ���������%actor.u% � ���������� �������.
wecho �������� ������� ����������, � ������ �����!
wecho �����-�����, � ���������� � ������ �������� ���������� ����.
wdoor 87707 d room 87702
wdoor 87702 u room 87707
wat 87702 wload obj 87768
wat 87702 wecho ������ ���������� ������� ����� ����������� ������ � �������� ����.
detach 87759 %self.id%
~
#87760
������� ������~
2 cg 1
������� �������~
wait 1
if !%arg.contains(�����)%
  wsend %actor% ��� �� ������ �������?
  halt
end
wait 1
wechoaround %actor% %actor.name% ������ ��� ���� ���� �� ���������� �������!!!
wsend %actor% �� ��� ���� ���� ������� �� ���������� ������!
wdoor 87710 e purge
wdoor 87710 e room 87711
wait 2
mecho &W_������ �������� �� ��������� ��������.&n
wload mob 87703
wload mob 87703
wload mob 87703
wait 1
detach 87706 %self.id%
~
$~
