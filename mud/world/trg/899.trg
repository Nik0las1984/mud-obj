#89900
����� �����������~
0 c 1
�� ��� ���� ����� ������ ������� �������� ��������� ����������~
wait 1
return 0
if !%arg.contains(�����)%
  halt
end
msend %actor.name%  �� ����������� ���������� ������.
mechoaround %actor% _%actor.name% �������%actor.u% � ������, ����� �� ������.
wait 1s
say ���� ��������?
wait 2s
emot ����� ����������
wait 1s
say ����� ������ ������? 
attach 89901 %self.id%
detach 89900 %self.id%
~
#89901
����� ���� �����~
0 d 0
�� ���� ���~
if %actor.vnum% != -1
  halt
end
set questor899 %actor%
global  questor899
wait 1s
mecho - ��! �� ���� ����, ...���� ������?! - ������������ �����.
wait 1s
���� %actor.name%.
wait 2s
mechoaround %actor% _�������� ��������, ����� ���������� � ������ ���� %actor.rname%, � � ���-�� �������� ���������.
msend %actor% �����������, ����� ���������� � ������ ��� ������ ���������:
msend %actor% - ��� ����� ����... ������ �������� ����� ���������...
msend %actor% - �� ��� ���, ��� �������� ���, ��� ����� ����� ����������.
msend %actor% - ���� �� �������� - �������-��, ����� ��� ������, � ���� ���� �� ��������.
msend %actor% ����� ���� ����������� ���, � ��� �� ���������.
wait 2s
msend %actor% - �����, ���� �� �������, ������� ���� ���� ������� �� ���� ���.
msend %actor% - ��� � ����� ������� � ���� ��� ��������.
msend %actor% - � �� ��� ����������, �� �� ������� ���� �� ������ ������ �� �������.
msend %actor% - ��, � ����� ����� - �� �� �������, �� ��������� � ��� ��������... 
wait 1s
msend %actor% - � �� ���� ���� �� ������, ����������� ����. 
calcuid horseman 89918 mob
remote questor899 %horseman.id%  
attach 89916 %self.id%
detach 89901 %self.id%
~
#89902
������� ������������~
0 q 100
~
wait 1
%actor.wait(10)%
mecho �������, �� �����, ��������� �� ���.
wait 1s
%echo% ������� ����� ���� ����������. 
wait 1s
%echo% ������ ���� ��������� ���� � �������� ���, ��������� �� � ������ �����.
foreach target %self.pc%
  eval dmg %target.hitp%/3
  mdamage %target% %dmg%
done
wait 2s
%echo% ������� ������ ���������. 
calcuid komandir 89920 mob
exec 89909 %komandir.id%
wait 4s
� ����, ��� �����? ������ �� � �����?
wait 2s
����
wait 3s
� �����, ��� � ���� ���... 
wait 2s
�����
wait 2s
� ������� ��� ��� ��, � �� ����� � �����, �������� ������?
wait 2s
� �������� �� ������� �� ������� ������?
exec 89910 %komandir.id%
wait 3s
����
wait 1s
� � �� ������ �� �������� ���� ���, � ������� ����� ��� �������� ������!
���� officer899
wait 2s
%echo% ������� � ���-�� ���������, ������� ����������� �� ���.
wait 3s
%echo% - �����, - ������� ������ � ������-�� �������, - ������ ������ �������?
wait 1s
%echo% ������� � �������� ��������� �� ���.
wait 1s
� ��� ����� ������ ���, ���� �� ������ �� �����?
attach 89911 %self.id%
~
#89903
����� ���������~
0 q 100
~
wait 1
if %self.fighting%
  halt
end
wait 1s
if %actor.id% != %questor899.id%  
  halt
end
wait 1s
emot � �������� ������������ ���������� � ������ �������
wait 3s
%echo% _����, ��� �� �� �������, ����� ���������� ������� �� �����.
wait 2s
%echo% - �� ��� �� ����? ����� ��� ������... - ���������� ����� ���� ��� ���.
wait 1s
%echo% �������� ������ ��������� ��������, � ��� ������ �������� ������ �����.
wait 2s
mecho - �� ��� ����-��!? ������ ��� ������, ����������� ���������� ������� ������ ���� ���������� �����, �� ����������� �����, ������������ ������ ������� �������������������! - �������� ������ �����
~
#89904
���� ������~
0 l 100
~
if ( %actor.id% == %questor899.id% )
  if ( %self.hitp% < 350 )
    say �� �����, ��������!
    mload mob 89918
    wait 1
    mpurge %self%
  end
end
~
#89905
����� ������~
0 n 100
~
wait 1s
emot ���� �������� �����
wait 2s
say ��� �����, ������ �� ������ �� �����.
wait 1s
����
wait 1s
%echo% - ���, ���� ��� ����-��? - ��������� �����.
attach 89906 %self.id%    
~
#89906
����� ���������~
0 d 0
���~
wait 1
if %actor.vnum% != -1
  halt
end
*if %actor.id% != %questor899.id%
*halt
*end
wait 1s
mecho ������ �� �����������.
wait 2s
say ��, �����, ��, ������... - ����������� �����, ��������� ������ �������� ���.
mecho _- �� �������, ��� ������, ��� ������������� ������ ������... - ����� ����� ������.
wait 3s
say ��� �� ���������� ���� ����� ���. �� ������ ����������� �� ���...
mecho _- ��������� ���������! ��� ���� �� ���, ���� �������� ��� �������.
mecho _- �������, ��� ����� ������ ������ �� �� �������...
wait 1s
mecho ��� �����, ����� ��� � ��� ��������� �������, �������� ���������. 
calcuid iogann 89905 mob 
attach 89907 %iogann.id%
set questor89901 %actor%
global questor89901
remote questor89901 %iogann.id%
detach 89903 %self.id%
detach 89904 %self.id%
detach 89905 %self.id%
detach 89906 %self.id%
~
#89907
������ � �������~
0 q 100
~
wait 1s
%echo% ������ ����� ��������� �� ���, �� ���� �� ��� ��������� ����������.
wait 1s
%echo% - �������� ���� ��� ������, ��� ��� �����?! - ������ ��������� �������� ��� ������.
attach 89908 %self.id% 
~
#89908
������� ��� � �������~
0 d 1
���~
wait 1
if ((%actor.vnum% != -1) || (%actor.id% != %questor89901.id%))
  halt
end
wait 1s
%echo% ������ ������ �������� ����� - ���?! �� ��� �� ���%actor.w%?! ������ �� ���� � ���� ������!
%echo% - ������ ���� ����� ��������, � ����, ��� �� ���� �������!
wait 2s 
%echo% - ��� ���, ������� � ���� � ���� �����, ������� ������ �� ���� ������... 
wait 2s
mkill %actor%
wait 1s
%echo% - �� ��� �����!!!
�����
set questor89902 %actor%
global questor89902
if (%exist.mob(89906)%)
  calcuid qlegat 89906 mob
  remote questor89902 %qlegat.id%
end
attach 89924 %self.id% 
detach 89907 %self.id% 
detach 89908 %self.id%
~
#89909
�������� ��������� �����~
0 z 100
~
wait 1s
������� �����
������ �����
~
#89910
����� ���������~
0 z 100
~
wait 2s
� ���������������, ���� ����.
~
#89911
������� ��������~
0 d 0
���� ����� ��~
if %actor.vnum% != -1
  halt
end
set hero899 %actor%
global  hero899
if %exist.mob(89905)%
  calcuid iogann 89905 mob
  attach 89934 %iogann.id%
end
*mat 89941 mload mob 89906
wait 1s
����
wait 1s
� � ���������� ������� ������������ ��� ������� �����.
� �� ��� ����� �� ����������. �� ��� �� �����.
� � ����� ��, ��� ���� � ���� ����������...
wait 3s
� ...��� �� ������ �� ��� �� ���� ���� ������.
� �������� �� ���, �� ������� ������� ������...
wait 1s
%echo% ������� ����������� ��������� � �������.
wait 2s
� ���... ��... �� ������, ���� � ��������. ���� ���� ������� �� ���� ����� �����.
wait 1s
%echo% ��������� ������ �������������.
wait 4s
� ��� ���, ��� �� ������, �� �������� � ���� ������ ������������ ������������.
� ������� ��������� �������...
� � ������� ����� ������� ������, ����������� �������� ����������� �������.
� � ����� ��� ������� ������ ��������!
%echo% ������� � ������� ������� ����� �� �����.
wait 4s
mechoaround %actor% _������� ������ �������� %actor.dname% ������������.
msend %actor% ������� ������ �������� ��� ������� �������.
msend %actor% _- ������ ���� �����������, �����. 
msend %actor% _- ���������� ������ � ������ ����� �� ��������, 
msend %actor% _- ��� ������ ������ �� ����... ����� � ���� �? ���������� ��� �����������,
msend %actor% _- ��� �� ����� ��������� ��� ������ ����. ���� �� ������� �� ������, ��
msend %actor% _- ������� �� �� �� �����. ���� �� ������� ���� ������� ������, �� �����
msend %actor% _- ������� ���� ��� �������... � ���������� ���... 
msend %actor% _- �� ��� ���, � ��� ������� ����� ������ �������� ����� ��-��� �����...
wait 2s
msend %actor% ������ ������� ������� ��� � ���������:
wait 2s
msend %actor% _- ����, ��� ��������� ����, ��� ����� �-��-��-����-��� �������������� ������ ������, ����� ��������������,
msend %actor% _- ������� � �� ��� ����������� ����.
wait 2s   
msend %actor% _- ���� ����������� � ���� �����, ���� ���� ������� �����������! 
wait 2s
� ������ ��������, � �� �������� � ���� ���� ������� ������...
mecho ������� ������ ������.
wait 2s
� ����� ��� �����, �����... 
if %exist.mob(89920)%
  calcuid komandir 89920 mob
  exec 89912 %komandir.id%  
end
if %exist.mob(89906)%
  calcuid legat 89906 mob
  remote hero899 %legat.id%
  attach 89913 %legat.id%
  detach 89915 %legat.id%
end
attach 89920 %self.id%
detach 89902 %self.id%
detach 89911 %self.id% 
~
#89912
�������� ��������� �����~
0 z 100
~
wait 2s
����� ���
���� ���
~
#89913
������ � ������ � ������� �� ��������~
0 q 100
~
wait 1
if %actor.id% != %hero899.id%
  halt
end
wait 2s                          
%echo% ����� �������� ����������� ������������ ���.
wait 2s
mecho ���-�� ������� ������ �� ������������ �������� �����, 
mecho ___������ ����� ����� �������� ������ ������ � �������� �����������, ��� � ��� �� ���. 
wait 3s
%echo% ���� ������ ���������� � ������� �������.
wait 1s
� � ��� � �����...
wait 1s
� �������� ��������,...
wait 1s
� ...��� � ���� ���������� ������� ������ �� ��� ����������...
wait 2s 
� ������� �� �� ������� ������ ����� ������ ������?!
wait 1s
%echo% ����� ������� ������������. �� ������������, ��� ����� �������� �� ����� ����.
wait 2s
mkill %actor%
attach 89914 %self.id%
detach 89913 %self.id%
~
#89914
������ ������~
0 f 100
~
mecho &K������ ��� ���������� ��� ������ ������. &n
mecho ������ ���� �� �������, �� ������� ��������� ����� � ��������� �� ������ ���� � ����� ������, ���������� ������ �����!
mecho �� ��� ����� ������� ��������� �����: 
mecho _&c- ������ ������� � �����?! ����� �� ����...&n
mecho _&c- ���-��-����-��-�����-����!!!&n
mat 89984 mload mob 89921
eval chanse %world.curobjs(89906)%+25
if (%random.29% > %chanse%) || ( %random.100% == 53 ))
  mload obj 89906
end
eval chanse %world.curobjs(89909)%+25
if (%random.29% > %chanse%) || ( %random.100% == 53 ))
  mload obj 89909
end
eval chanse %world.curobjs(89910)%+25
if (%random.28% > %chanse%) || ( %random.100% == 53 ))
  mload obj 89910
end
~
#89915
�������� ������ ������ �� �������~
0 q 100
~
wait 1
if %actor.id% != %questor89902.id%
  halt
end
wait 1s
msend %actor.name%  �� �������� ������ �� ������ �������.
mechoaround %actor%_ %actor.iname% ������� ������ �� ������ �������.
wait 1s
%echo% ����� ���������� �������� �� ���.
wait 2s
%echo% ����� � ��������� ������� ����� ����� �� ����� ������.
wait 1s
�����
wait 1s
%echo% - �-�-�-�-�, ������ ������ ����� ����� ������! - ����� �������������� ����� ����.
wait 1s  
%echo% (� �������) - ��� �������, ����� ��� ������� ������ ��� ���� ��������. 
wait 1s
%echo% - ������, ��� �� ������ ����� �������...
wait 1s
���
wait 1s
%echo% - �� ������� �� �� �� ����, ��������� � ������������ ����� ����� ������ �����?
wait 1s 
%echo% (� �������) - �� ��� �������, �� ������� ����, � ���� ������...
wait 1s
���� 
attach 89917 %self.id%  
detach 89915 %self.id%
~
#89916
��� ������~
0 j 100
~
wait 1
if %object.vnum% != 89904
  ���� all
  halt
end
wait 1
mpurge %object%
wait 1s
say ��... ��� ���! �� ������� ���!
wait 1s
if %actor.id% != %questor899.id%
  say ������� ��� ������%actor.g%.
  halt
end
if (%actor.class% == 9) && (!%actor.spelltype(����������)%)
  � ��, %actor.name%, ������ �����, ��� ������ ����� ��������... 
  mspellturn %actor% ���������� set 
  halt
end
switch %random.2%
  case 1
    eval chance %world.curobjs(89922)%+2
    if ((%random.12% > %chance%) || ( %random.100% == 68 ))
      say ���� ������� ��� �������� �� ������ �������� ������.
      mload obj 89922
      ���� ���� .%actor.name%
    elseif %random.100% == 45
      say ���� ������� ��� �������� �� ������ �������� ������.
      mload obj 89922
      ���� ���� .%actor.name%
    else
      say ��� ��������� ������� ���� �� ������.
      %actor.gold(+2000)%
    end
  break
  case 2
    eval chance %world.curobjs(89921)%+2
    if ((%random.12% > %chance%) || ( %random.100% == 68 ))
      say ���� ������� ��� �������� �� ������ �������� ������.
      mload obj 89921
      ���� ���� .%actor.name%
    elseif %random.100% == 45
      say ���� ������� ��� �������� �� ������ �������� ������.
      mload obj 89921
      ���� ���� .%actor.name%
    else
      say ��� ��������� ������� ���� �� ������.
      %actor.gold(+2000)%
    end
  break
done
~
#89917
����� ��������~
0 d 0
�� �������� ������~
wait 1
if %actor.vnum% != -1
  halt
end
if (%actor.id% != %questor89902.id% )
  halt
end
set questor89903 %actor%
global questor89903
if (%exist.mob(89902)%)
  calcuid magistr 89902 mob
  remote questor89903 %magistr.id%
end
wait 2s
� � ��� � ����!
� ������ ��, � ��������� ��������� ����� �������� ������, � ������ ������ ����� ���...
wait 2s
� ... � ������������ �����. �� �� �������� ������� ���... � �����-�� �������, ���������� ����� ������.
� �������, ���� ���-������ ��������� �� � ���� ������, ��� �������� ����.
wait 1s
���
wait 1s
� ��� �������� ������ �� �������� - ����� ���� �� ������� � ����������!
� ������� ���-�� ��������, ���� ��� ��� ������� � ������� ��������� ��� � �����.
wait 1s
%echo% ����� �������� ������� �������.
wait 1s 
� �� ��� ����� ����� ��������� ����!!!
� ��� ����� ������ ��������, ��� ������ ���� ��� ����� ����������� ��������.
� ������������� ��� �� ����� ����� ������... � �������� ��������, �����������.
wait 1s
emot � �������� ������� �� �������
wait 1s
� ��� ��, ��� ���� ��������!
attach 89922 %self.id%
detach 89917 %self.id%
~
#89918
������ ���� ������~
0 f 100
~
if %exist.mob(89902)%
  mload obj 89918
  mecho ������ ������� ���� ������ ��������� ��������������� ���� � ����������� �������� � ��.
  mecho �� ����� �������� ���� ������� � ������ ���������.
else
  mecho ������ ������� ���� ������ ��������� ��������������� ���� � ����������� �������� � ��.
end
~
#89919
������ ��������~
0 f 100
~
%echo% ������� ���� - � ������ �������� �������� � �������!
mload obj 89928
~
#89920
������� ������ �������~
0 j 100
~
wait 1s
if %object.vnum% != 89918
  ���
  wait 1s
  � �� ������ ��� ������!
  ��� ���
  halt
end
wait 1  
mpurge %object%
%echo% ������� � ��������� �������� �����.
%echo% ���� �������� ������ ������� ��� ����.
say �����������... � ������ �������������� ������ � �������..
switch %random.5%
  case 1
    eval chanse %world.curobjs(89919)%+15
    if (( %random.20% > %chanse% ) || ( %random.1000% <= 10 ))
      mload obj 89919 
      � ����� ���� � ����� �����!
      ���� ��� %actor.name%
    else
      say ������� ������ ������ ������ ����������!
      mload obj 89929
      give ��� .%actor.name%
    end
  break
  case 2
    eval chanse %world.curobjs(89920)%+15
    if (( %random.17% > %chanse% ) || ( %random.1000% <= 10 ))
      mload obj 89920 
      � ����� %actor.iname%, �������� ������, ����, ����... � ���� �� ���.
      ���� ��� %actor.name% 
    else
      say ������� ������ ������ ������ ����������!
      mload obj 89929
      give ��� .%actor.name%
    end
  break
break
case 3
  eval chanse %world.curobjs(89923)%+15
  if (( %random.20% > %chanse% ) || ( %random.1000% <= 10 ))
    mload obj 89923 
    � ��� ��� �� � ������ ���� �������� �����, �� ��� ��� ������, ��� ���� �� ���-������ �� ��� ��� ������.
    ���� ���� %actor.name%
  else
    say ������� ������ ������ ������ ����������!
    mload obj 89929
    give ��� .%actor.name%
  end
break
case 4
  eval chanse %world.curobjs(89924)%+15
  if (( %random.19% > %chanse% ) || ( %random.1000% <= 10 ))
    mload obj 89924 
    � ����� ���� ���� ������������ ��������!
    ���� ���� %actor.name%
  else
    say ������� ������ ������ ������ ����������!
    mload obj 89929
    give ��� .%actor.name%
  end
break
default
  mload obj 89929 
  � ��� ����� ���� ����� �����?!
  ���� ������ %actor.name% 
end
done
if %actor.align% < 100
  %actor.align(+20)%
end
~
#89921
������~
2 c 1
�����������~
eval sumsize %actor.size%+%actor.sizeadd%
if ( %sumsize% <= 63 )
  wsend %actor% ��� ������ ����������� ��� ������ ������, �� ������ �� ���������.
  halt
end
%echo% ������� ���������� �������� ���� �� ���������!
%echo% ����� ��������� ��� ������ ������ � �� ������� ����-�� ����.
wteleport %actor% 89940 horse
foreach victim %actor.group% 
  if %victim.realroom% == 89983
    eval dmg %victim.hitp%/5
    wdamage %victim% %dmg%
    wteleport %victim% 89940 horse
  end
done
detach 89921 %self.id%
~
#89922
����� ������ �������~
0 j 100
~
wait 1
if %actor.vnum% != -1
  ���� %object.name%
  halt
end
if %object.vnum% != 89928
  ���
  wait 1s
  � ��� �������� ���� � �����, ������!
  ��� ���
  halt
end
wait 1
mpurge %object%
wait 1s
mecho ����� � ��������������� ��������� �� ������.
mecho ������� ������ �������� ��� ����.
wait 1s
say ������� ������������, �������� ������!
switch %random.5%
  case 1
    eval chanse %world.curobjs(89925)%+10
    if (( %random.15% > %chanse% ) || ( %random.100% == 53 ))
      wait 2s
      mload obj 89925 
      � ���, �������� �������� ����, ���������� ������, �� �� ��� ��� ������.
      ���� ��� %actor.name%
    else
      say ������! ��� ����� ���� �����...
      mload obj 89929
      give ��� .%actor.name%
    end
  break
  case 2
    eval chanse %world.curobjs(89926)%+10
    if (( %random.15% > %chanse% ) || ( %random.100% == 53 ))
      wait 2s
      mload obj 89926 
      � ���, �������� �� ������ ��������, �� ���-��� ��������� �� ��� ����� � ��������!
      ���� ��� %actor.name% 
    else
      say ������! ��� ����� ���� �����...
      mload obj 89929
      give ��� .%actor.name%
    end
  break
  case 3
    eval chanse %world.curobjs(89927)%+10
    if (( %random.15% > %chanse% ) || ( %random.100% == 53 ))
      wait 2s
      mload obj 89927 
      � ��� �� � �������� ������� �� ������, �� ������ ��� ��� �������, � ������� ����� ����� ��.
      ���� ��� %actor.name% 
    else
      say ������! ��� ����� ���� �����...
      mload obj 89929
      give ��� .%actor.name%
    end
  break
  case 4
    eval chanse %world.curobjs(89930)%+10
    if (( %random.15% > %chanse% ) || ( %random.100% == 53 ))
      wait 2s
      mload obj 89930
      � ��� �� � �������� ������� �� ������, �� ������ ��� ��� �������, � ������� ����� ����� ��.
      ���� ��� %actor.name% 
    else
      say ������! ��� ����� ���� �����...
      mload obj 89929
      give ��� .%actor.name%
    end
  break
  default
    wait 2s
    mload obj 89929 
    � ������ ��������� - ������ �������, ������ ����� ������� �����!
    ���� ��� %actor.name% 
  done
  if %actor.align% > 300
    %actor.align(-20)%
  end
~
#89923
�����������~
2 c 1
������������� ����� �����������~
wait 1
wsend %actor% �� ��������� �������� ����������� �� ������.
wechoaround %actor% %actor.name% ������%actor.u% �������� ���������%actor.u% �� ������.
wait 2s
wsend %actor% ���-�� �� �������� ���� �� ������, ��� ��������!
wait 2s 
wsend %actor% ����� ��������� ���, � ������ ��������� �������.
wait 1s
wsend %actor% ������ ��������� ������ �� ���� ���������, ���� �� ������� ����! 
eval dmg %actor.hitp%/4
wdamage %actor% %dmg%
wteleport %actor% 89983 horse
wechoaround %actor% ���-�� �������� �� ������ ���� � ����.
~
#89924
������ ������~
0 f 100
~
mload obj 89904
mload obj 89916  
if %exist.mob(89906)%
  calcuid legat 89906 mob
  attach 89915 %legat.id%
end
~
#89925
����� ����~
2 f 100
~
calcuid magistr 89902 mob
detach 89902 %magistr.id%
detach 89911 %magistr.id%
detach 89920 %magistr.id%
attach 89902 %magistr.id%
rdelete hero899 %magistr.id%
wait 2
calcuid iogann 89905 mob
detach 89907 %iogann.id%
detach 89908 %iogann.id%
detach 89924 %iogann.id%
detach 89934 %iogann.id%
rdelete questor89901 %iogann.id%
rdelete questor89902 %iogann.id%
wait 2
calcuid legat 89906 mob
detach 89913 %legat.id%
*detach 89914 %legat.id%
detach 89915 %legat.id%
detach 89917 %legat.id%
detach 89922 %legat.id%
rdelete questor89902 %legat.id%
rdelete hero899 %legat.id%
wait 2
calcuid cook 89915 mob
detach 89900 %cook.id%
detach 89901 %cook.id%
detach 89916 %cook.id%
attach 89900 %cook.id%
rdelete questor899 %cook.id%
wait 2
calcuid groom 89918 mob
detach 89903 %groom.id%
detach 89904 %groom.id%
detach 89905 %groom.id%
detach 89905 %groom.id%
attach 89903 %groom.id%
attach 89904 %groom.id%
attach 89905 %groom.id%
rdelete questor899 %groom.id%
rdelete questor89901 %groom.id%
wait 2
calcuid room1 89983 room
attach 89921 %room1.id%
~
#89926
������ ���� ������~
0 k 25
~
set target %random.pc%
if %target%
  msend %target% _������ ������, ����� ����� ���� ���!
  mechoaround %target% _������ ������, ����� ����� ���� %target.vname%!
  %actor.wait(1)%
  eval dmg %random.100%
  mdamage %target% %dmg%
end
~
#89927
����� ������~
0 f 100
~
eval chanse %world.curobjs(89900)%+25
if (( %random.32% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 89900
end
eval chanse %world.curobjs(89901)%+25
if (( %random.31% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 89901
end
eval chanse %world.curobjs(89902)%+25
if (( %random.30% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 89902
end
eval chanse %world.curobjs(89908)%+25
if (( %random.31% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 89908
end
~
#89928
����� �������~
0 f 100
~
eval chanse %world.curobjs(89912)%+25
if (( %random.32% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 89912
end
eval chanse %world.curobjs(89914)%+25
if (( %random.28% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 89914
end
~
#89929
����� �����������~
0 f 100
~
eval chanse %world.curobjs(89903)%+25
if (( %random.35% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 89903
end
eval chanse %world.curobjs(89938)%+25
if (( %random.31% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 89938
end
~
#89930
����� �����������~
0 f 100
~
eval chanse %world.curobjs(89905)%+25
if (( %random.33% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 89905
end
eval chanse %world.curobjs(89939)%+15
if (( %random.20% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 89939
end
eval chanse %world.curobjs(89935)%+15
if (( %random.17% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 89935
end
~
#89931
����� ������~
0 f 100
~
if %random.100% < 10
  mload obj 89937
end
~
#89932
����� ������~
2 b 7
~
switch %random.8%
  case 1
    wzoneecho 89900 �������� ������� ������.
  break
  case 2
    wzoneecho 89900 ������-�� ��������� ���� �������� � ���������� �����.
  break
  case 3
    wzoneecho 89900 �������� �������� �������� ������ �� �����.
  break
  case 4
    wzoneecho 89900 ����� ����� ������ ����� ������.
  break
  case 5
    wzoneecho 89900 ������-�� ����������� ���������� ����.
  break
  case 6
    wzoneecho 89900 �� �������� ������� ���������� �����.
  break
  case 7
    wzoneecho 89900 ������� ���� ������������ ���� ���.
  break
  case 8
    wzoneecho 89900 �������� ���������� ������� ���� � �����.
  break
done
~
#89933
�������� ���� �� ������~
0 z 1
~
say ��� ������ �������!
~
#89934
������ ������ (����� ��������)~
0 f 100
~
mload obj 89916
~
#89935
������ ���� � ����. �������~
0 q 56
~
wait 1
if %self.fighting%
  halt
end
mecho _%self.name% ��������� �� ���.
say ��� ����?! � ��� �� ����!
stand
set target %random.pc%
kill .%target.name%
~
#89936
������ ��� � ������������~
0 qt 63
~
wait 1
if %self.fighting%
  halt
end
mecho _%self.name% ��������� �� ���.
���
����� ��������!!! �� ����� ������� - ��� ��!!!
set target %random.pc%
mkill %target%
~
#89937
������ ���� � ����������~
0 qt 100
~
wait 1
if %self.fighting%
  halt
end
mecho _%self.name% ��������� �� ���.
����� ���������! �� ���, ������-������!!!
mkill %actor.name%
set target %random.pc%
mkill %target%
~
#89938
���� ������~
0 n 100
~
eval chanse %world.curobjs(89940)%+22
if (( %random.30% > %chanse% ) || ( %random.100% == 53 ))
  mload obj 89940
  wield ������
end
~
#89939
������� ���-����~
1 g 100
~
say My trigger commandlist is not complete!
wait 1
if %actor.vnum% != -1
  wait 1
  opurge %self%
end
~
#89940
�������� ���-�����~
0 n 100
~
mload obj 89941
wield ���
~
#89941
����� ��������� ������ ��������~
0 f 100
~
if (%random.100% < 11)
  mload obj 89944
end
~
#89942
�������� ������ ����� ���������~
0 z 100
~
msend %victim% �������� ������ ������� ���� ������� ��������� ��������!
mechoaround %victim% �������� ������ ������� ������� %victim.rname% ��������� ��������!
����� �������! �������!!! � ������ ���������!
mkill %victim%
~
#89943
������ ��� ��������� ������ ��������~
1 ps 100
~
if (%actor.vnum% != -1)
  return 0
  halt
end
if !%exist.mob(89920)%
  return 1
  detach 89943 %self.id%
  halt
end
return 0
wait 1
calcuid seargant 89920 mob
set victim %actor%
global victim
remote victim %seargant.id%
exec 89942 %seargant.id%
~
$~
