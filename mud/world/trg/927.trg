#92700
����������� �����~
0 k 100
~
dg_cast '���� ���' 
dg_cast '���� ���'
dg_cast '���� ���'
~
#92701
���� �����~
0 f 100
~
if %random.5%==1 &&  %world.curobjs(92703)% < 5
  mload obj 92703
elseif %random.6%==1 &&  %world.curobjs(92702)% < 5
  mload obj 92702
elseif %random.7%==1 &&  %world.curobjs(92701)% < 5
  mload obj 92701
elseif %random.8%==1 &&  %world.curobjs(92700)% < 5
  mload obj 92700  
else 
  mload obj 92711
end
~
#92702
���� ����~
0 f 100
~
if %random.10%==1 &&  %world.curobjs(92706)% < 10
  mload obj 92706
end
~
#92703
���� ����������~
0 f 100
~
if  %random.100% < 5 && %world.curobjs(92709)% < 3
  mload obj 92709
end
~
#92704
����� - ��  �������� �����  ����   :)~
1 j 100
~
if %actor.vnum% != 92705    
  osend %actor% �� � ������� ������ ������� ��� ���������.
  oechoaround %actor% %actor.name% � ������� ������ �����%actor.q% ��� ���������.
  osend %actor% ���������� ��� ��������, � �� �� ������ ��� ��������.
  osend %actor% �������� ������ ��������� ��� �������.
  oechoaround %actor% ��� ��������� ����� ����� �������� � �������� %actor.vname%.
  if %actor.affect(������ �����)%
    dg_affect %actor.name% ���� ������_����� -1 0
  end
  %actor.wait(2)%
  return 0
  wait 1
  odamage %actor.name% 10000
end                                                   
~
#92705
�������� �����������~
0 k 100
~
wait 3s
if  %random.2% == 1
  say � �� ����� ��� ���� ��������...
  wait 1s
  mecho __�������� ������� ������� �������� ���.
  wait 1s
  mecho __�������� ������� �� ����� �������� ��������� ���!
  mload obj 92710  
  set pos 16
  while %pos% < 19
    if %self.eq(%pos%)%
      set wp %self.eq(%pos%)%
      ��� %wp%
    end
    eval pos %pos%+1
  done
  ��� ���
  ��� ���_92710
  wait 2s
  detach 92705 %self.id%
end
~
#92706
���� �������� ������  ���������~
0 j 100
~
if %object.vnum% == 92635
  wait 1
  mpurge %object%
  say �������� ������?
  wait 2s
  say ��������� � ��� �� ��������.
  ���� �����
  wait 1s    
  say ���� ������ �� � ��������������� �������, ������� � ��� � ������� ���������.
  mat 92700 ���-�� �������� ����� � ������ ������ ����.
  mteleport all 92700
end
~
#92707
����� ���� (�������-����� �������)  ��� ����  ������~
1 g 100
~
if %self.vnum% != 92711
  detach 92707 %self.id% 
  halt
end
eval num 92711+%random.3%
if %random.7% == 1 && %world.curobjs(%num%)% < 1             
  osend %actor% �������� ��� ������������.                      
  otransform %num%
  halt
elseif %random.10% < 5
  oecho �������� ��� ���������, ����� ��� ��������.
  eval dam 30+%actor.level%*%random.10%+%actor.level%*%random.15% 
  if %dam%>%actor.maxhitp%
    eval dam %actor.maxhitp%
  end
  odamage %actor% %dam%    
  foreach targ %actor.all%
    eval dam %dam%-30
    if %dam%<1
      halt
    end
    odamage %targ% %dam%
    osend %targ% �������� ����� ������� ���!
  done               
  wait 1
  opurge %self%
else  
  oecho �������� ��� ������� ����� � �����.
  oecho � ������ ��������� �����: "� ���� �� �� ��������� ?"
  wait 1
  opurge %self%
end
~
#92708
����� ��� ���������~
1 g 100
~
osend %actor% ��� ��������� ��������  ����������� ��������� ���.
wait 1s
osend %actor% � ������ � ��� ��������� ���������� �����:
osend %actor% ����� �������� ��� ����������� ������ � �����,
osend %actor% � ��������� ��� ��� ����� ��������� ���������...
~
#92709
���  ��������� ����  (14 -  ���������)~
1 b 100
~
wait 2s 
if %self.vnum% == 92718
  if !%self.worn_by%
    halt
  end
  set char %self.worn_by%
  set i 0  
  set num 0
  while %i% < 16
    eval i %i%+1
    set item %char.eq(%i%)%  
    if %item.vnum% > 92711  && %item.vnum% < 92729
      eval num %num%+1
    end
  done
  if %num%>13
    otransform 92719
  end
else
  if %self.worn_by%
    set char %self.worn_by%
    set i 0  
    set num 0
    while %i% < 16
      eval i %i%+1
      set item %char.eq(%i%)%  
      if %item.vnum% > 92711  && %item.vnum% < 92729
        eval num %num%+1
      end
    done
    if %num%>13
      halt
    end 
  end
  otransform 92718  
end
~
#92710
���  ��������� ����  (14 ������ -  ������)~
1 b 100
~
wait 2s 
if %self.vnum% == 92726
  if !%self.worn_by%
    halt
  end
  set char %self.worn_by%
  set i 0  
  set num 0
  while %i% < 16
    eval i %i%+1
    set item %char.eq(%i%)%  
    if %item.vnum% > 92711  && %item.vnum% < 92729
      eval num %num%+1
    end
  done
  if %num%>13
    otransform 92727
  end
else
  if %self.worn_by%
    set char %self.worn_by%
    set i 0  
    set num 0
    while %i% < 16
      eval i %i%+1
      set item %char.eq(%i%)%  
      if %item.vnum% > 92711  && %item.vnum% < 92729
        eval num %num%+1
      end
    done
    if %num% > 13
      halt
    end  
  end
  otransform 92726  
end
~
$~
