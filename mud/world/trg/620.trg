#62000
� ���������� (������� �� ������� �������)~
0 p 100
*~
*if (%cmd.mudcommand% == �������) || (%cmd.mudcommand% == �����) 
*   (%cmd.mudcommand% == ���������) || (%cmd.mudcommand% == �����) 
*   (%cmd.mudcommand% == ��������) || (%cmd.mudcommand% == ��������) 
*   (%cmd.mudcommand% == �����) || (%cmd.mudcommand% == �������) 
*   (%cmd.mudcommand% == �����������) || (%cmd.mudcommand% == ��������) 
*   (%cmd.mudcommand% == kill ) || (%cmd.mudcommand% == backstab ) 
*   (%cmd.mudcommand% == kick ) || (%cmd.mudcommand% == bash ) 
*   (%cmd.mudcommand% == murder )
*return 1
* ����� ����� ������ ����� ������� �������?? �������, ���������
* ��� �������� � act �� damage ���� �������� ��� �� ���� ���������
msend %damager%  ���� ������ �� ���������� �� ������, ��� �������� ������� �� ��� � �������� �� ����.
msend %damager% _�������� �������� ��� �� ����� ��� ������ �������� ����� ������ �����. 
mechoaround %damager% _%damager.name% �������%damager.u% �������%damager.u% �� ������.
mechoaround %damager% �������� �������� %damager.vname% �� �����, ���������� ��� ������� ������ ������. 
if (%damager.hitp% > 100)
  mdamage %damager% 100
else
  mdamage %damager% %damager.hitp%
end
mteleport %damager% 62022
%damager.position(6)%
%damager.wait(6)%
mechoaround %damager% _%damager.name% �������%damager.g% �� ������ ����� ������������ � ������%damager.u% � ������� ����.
return 1
~
#62001
� ������� ������~
0 m 100
100~
if (%actor.vnum% != -1)
  halt
end
if (%actor.religion% == 1)
  emot ���-�� ���������� ��������� � ����������
  halt
end
msend %actor% _�� �������� ������ �����.
mechoaround %actor% %actor.name% ������%actor.q% ������ �����.
say �� ������� ���� ����, � �� ����� ���� �����...
����
dg_cast '��������' %actor.name% 
~
#62002
� ��������~
0 m 100
~
if (%actor.vnum% != -1)
  halt
end
if (%actor.religion% == 0)
  ����
  emot ���������� � �������� ���������
  halt
end
say � �������� �� ���, %actor.name%.
say �� ������� ������� ��� �������...
dg_cast '������ �� ����' %actor.name%
~
#62003
���� � �������������~
0 q 70
~
wait 1
if (%direction% == south)                    
  mecho ������������� �������� ������: "��������! 
  mecho - � ����� ����� �� �������� �� ���������, �� ���� ������� ������."
  emot ����������� ������������ � ���
  mecho ������������� �������� ������: "��������, �� ������� ��������� ��������� �����������...
  mecho - ������ � ����� �������������� ���������? ��? ����� ������ - � ��� ������ �������. 
  mecho - ��� �� �� ������ ���������� ������ �������� ����������?
  mecho - ���� ��� - ����� 100 ���, ���������-�� � ������� ������� - ���� ������ ��������..."
else
  wait 30s 
  close ������
  lock ������
end
~
#62004
�������� - ���� �� ��� �� �����~
2 z 0
~
eval char %random.pc%
if %char%
  global char
  remote char %world.mob(62012)%
  rdelete char %self.id%
end
~
#62005
���� ������ �������������~
0 m 1
~
rdelete char %self.id%
if %amount% < 100
  say �� ����� ������ ��� � ������ ������ ����!
  ���
  give %amount% ��� .%actor.name%
  halt
end
exec 62004 %world.room(62012)%
exec 62004 %world.room(62013)%
exec 62004 %world.room(62010)%
exec 62004 %world.room(62008)%
wait 2s
if %char%
  say ������ �����, �� ���������-�� ��� ��� ����...
  say �������� ��� �������� �������.
  give %amount% ��� .%actor.name%
  halt
end
exec 62013 %world.room(62012)%
exec 62013 %world.room(62013)%
exec 62013 %world.room(62010)%
exec 62013 %world.room(62008)%    
mload obj 62016
���� ���� %actor.name%
wait 40s
~
#62006
� ��������� ����������~
0 k 60
~
if (%actor.vnum% == -1)
  set target %actor%
else
  set target %actor.leader%
end
if (!%target% || (%target.clan% == ��) || (%target.vnum% != -1))
  halt
end
if ((%actor.vnum% != -1) || (%actor.hitp% < 160))
  mechoaround %target% _%target.name% �������%actor.g% �������� �� ����������� �����.
  mechoaround %target% _��������� �������� �������������� ���� � ��������� �����.
  msend %target%  �� �������� �������� �� ����������� ����� ���������� ���������. 
  mteleport %target% 62060
  %actor.position(6)%
  %actor.wait(4)%
  msend %target%  �� �������� � �����-�� ����������.
  eval buffer %target.loadroom(62060)%
end
~
#62007
������� "��" � ����������~
0 d 0
�� ������ ������ ����� ����� ���� �����~
rdelete char %self.id%
exec 62004 %world.room(62012)%
exec 62004 %world.room(62013)%
exec 62004 %world.room(62010)%
exec 62004 %world.room(62008)%
wait 1s
if %char%
  say ������ �����, �� ���������-�� ��� ��� ����...
  say �������� ��� �������� �������.
  halt
end
eval enemy %speech%
global enemy
remote enemy %world.room(62008)%
switch %speech%
  case ��
    mecho ������������� �������� ������: "����������...
    mecho - ����:
    mecho - �� 250 ��� ������ �� �������� � ������� �������-���������.
    mecho - �� 500 - ����������� � ������� �������� - ��������
    mecho - �� 700 - ������ ���� ����� ����� - ������ � �������
    mecho - �� 900 - � ������ ��������� ������, ������� � �������
    mecho - ������ ������ � ������� ������� �������� ���� �� ����� ���������.
    mecho - �� 1200 ��� ���������� ��, �����, � ����� ����� ���������.
    mecho - �� � �� 2000 ������� � ��������� �� ��������� ����� �����������, � ����� �������� ����������."
    wait 3
    say ����� - � ��� ������ �������?
    halt
  break
  case ������
    if (%actor.gold% < 250)
      say � ���� �� ����, �� ��������.
      halt
    end
    %actor.gold(-250)%
  break 
  case ������
    if (%actor.gold% < 500)
      say � ���� �� ����, �� ��������.
      halt
    end
    %actor.gold(-500)%
  break
  case �����
    if (%actor.gold% < 700)
      say � ���� �� ����, �� ��������.
      halt
    end
    %actor.gold(-700)%
  break
  case  �����
    if (%actor.gold% < 900)
      say � ���� �� ����, �� ��������.
      halt
    end
    %actor.gold(-900)%
  break
  case  ����
    if (%actor.gold% < 1200)
      say � ���� �� ����, �� ��������.
      halt
    end
    %actor.gold(-1200)%
  break
  case  �����
    if (%actor.gold% < 2000)
      say � ���� �� ����, �� ��������.
      halt
    end
    %actor.gold(-2000)%
  break 
  default
    say ��... ��� � ���� �����-��... 
    halt
  done
  emot ������ ���-�� ������ � ��� ������ ����-�� ������
  exec 62013 %world.room(62012)%
  exec 62013 %world.room(62013)%
  exec 62013 %world.room(62010)%
  exec 62013 %world.room(62008)%
  wait 3
  say �������... ��� ������ - ������ ���� �� ���������.
  mload obj 62016
  ���� ���� %actor.name%
  run 62014 %world.room(62008)%
~
#62008
����� ���������~
0 f 100
~
mload obj 62017
~
#62009
� ��������� ���������� �2~
0 q 100
~
if (%actor.clan% == ��)
  if (%random.3% == 2)
    msend %actor% %self.name% ��������� ����� ���� � ����������� �������.
    mechoaround %actor%  %self.name% ��������� ����� %actor.tname% � ����������� �������.
    ���� %actor.name%
  end
else
  if %random.5% == 2
    msend %actor% %self.name% ����� ������� ��� � ��� �� ������.
    mechoaround %actor% %self.name% ����� ������� %actor.vname% � ��� �� ������.
  end
  if %actor.level% > 24
    if (%actor.vname% == %char1%) || (%actor.vname% == %char2%) || (%actor.vname% == %char3%) || (%actor.vname% == %char4%) || (%actor.vname% == %char5%)
      halt
    end
    eval num %num%+1
    global num
    switch %num%
      case 1
        eval char1 %actor.vname%
        global char1
      break
      case 2
        eval char2 %actor.vname%
        global char2
      break
      case 3
        eval char3 %actor.vname%
        global char3
      break
      case 4
        eval char4 %actor.vname%
        global char4
      break
      default
        eval char5 %actor.vname%
        global char5
        eval num 0
        global num
      done
    end
  end
~
#62010
����������� � ����������~
0 n 0
~
eval num 0
global num
~
#62011
����������� ���������~
0 d 0
��������~
if (%actor.clan% != ��)
  msend %actor% %self.name% ������������ �������� �� ���.
  mechoaround %actor% %self.name% ������������ ��������� �� %actor.vname%.
  ����
  ���� .%actor.name%
  eval damage %actor.hitp%/10
  mdamage %actor% %damage%
  halt
end
emot ��������� �� ������ ������
mechoaround %actor% _%self.name% ���-�� ������ %actor.dname%.
msend %actor% _%self.name% �������:
msend %actor% � ����� � ������ ��������� �������������� �����:
if %char1%
  msend %actor% %char1%
end
if %char2%
  msend %actor% %char2%
end
if %char3%
  msend %actor% %char3%
end
if %char4%
  msend %actor% %char4%
end
if %char5%
  msend %actor% � ��� %char5%.
end
~
#62012
� ��������� ���������� �2 - (����)~
0 g 100
~
if (%actor.vnum% == 62033) || (%actor.vnum% == 62032)
  if (%random.3% == 2)
    kill %actor.name%
  end
  halt
end
if (%actor.vnum% != -1)
  halt
end
if (%actor.clan% == �������.��������)
  if (%random.char.3% == 2)
    msend %actor% %self.name% ��������� ����� ���� � ����������� �������.
    mechoaround %actor% %self.name% ��������� ����� %actor.tname% � ����������� �������.
    ���� %actor.name%
  end
else
  if %random.5% == 2
    msend %actor% %self.name% ����� ������� ��� � ��� �� ������.
    mechoaround %actor% %self.name% ����� ������� %actor.vname% � ��� �� ������.
  end
  if %actor.level% > 24
    if (%actor.vname% == %char1%) || (%actor.vname% == %char2%) || (%actor.vname% == %char3%) || (%actor.vname% == %char4%) || (%actor.vname% == %char5%)
      halt
    end
    eval num %num%+1
    global num
    switch %num%
      case 1
        eval char1 %actor.vname%
        global char1
      break
      case 2
        eval char2 %actor.vname%
        global char2
      break
      case 3
        eval char3 %actor.vname%
        global char3
      break
      case 4
        eval char4 %actor.vname%
        global char4
      break
      default
        eval char5 %actor.vname%
        global char5
        eval num 0
        global num
      done
    end
  end
~
#62013
������� ����� � ���������~
2 z 0
~
foreach victim %self.npc%
  wpurge %victim%
done
~
#62014
�������� ����-����������~
2 z 0
~
switch %enemy%
  case ������
    wload mob 62042
  break
  case ������
    wload mob 62043
  break
  case �����
    wload mob 62045
    wload mob 62044
  break
  case �����
    wload mob 62047
    wload mob 62046
    wload mob 62048
  break
  case ����
    wload mob 62056
  break
  case �����
    wload mob 62049
  break
  default
    halt
  done
~
#62015
���� ����������~
0 m 50
~
wait 5
eval victim %random.pc%
if %victim% == %actor%
  ��� %actor.name%
  emot ������: 
else
  emot ��������� �� %victim.name% � ������:
end
wait 2s
eval sing %random.9%
if %sing% > 8
  mecho _����� ������� ���� ������.
  mecho _����� ��-��� ������ ���� ������.
  mecho _�������� ����� � ��������� � ����.
  mecho _������ ���� ������ ����� �� �����.
  mecho _����! - ������� ������, � ����� ������.
  mecho  ������ ����� � ����� - � ����� �����,
  mecho _������ ��� ������, � ����� - ����,
  mecho _������ ���� � ����, � ����� �����.
elseif %sing% > 7
  mecho _��� ������� ������ �������,
  mecho _��������� ����� ���������.
  mecho _� ����� ���� �� ����� ������,
  mecho _��� �������� ������� � ������.
  mecho _���� ��� ���� ��������
  mecho _�� ���, ����� �� ������� �������!
elseif %sing% > 6
  mecho _������ ������ ����� ��������,
  mecho _���� ��������, � ���� ���������.
  mecho _����� ���������� - ���� ���������.
  mecho _��� ���������, ����� �����������.
  mecho _������� - � �����, ������ - ��-��� �����.
  mecho _����� � ������ ������� ������.
elseif %sing% > 5
  mecho _��� ����� �� ����: ���� �� �����,
  mecho _���, ��������, �� ������, �� ����,
  mecho _���� ��� ���� ������� ���������,
  mecho _������� ���������.
  mecho _���������� �� ����������
  mecho _��� ���� �����, ���, �������� ����,
  mecho _���� ��� �� ���� �������,
  mecho _�� ����� ��������,
  mecho _� ������ �������,
  mecho _�� ����� ��������.
elseif %sing% > 4
  mecho _��� ��, �����, ���� ����� -
  mecho _��� ����� ������� �����?
  mecho _� ��� ������ �� ������,
  mecho _� ������ ��� �����.
elseif %sing% > 3
  mecho _���������-�� ��� �������!
  mecho _��� ������ �� �������
  mecho _����� ����, �� ������
  mecho _(� ���� �� �� ������
  mecho _�� ������� �� �� ������)
  mecho _�� ������� ������ - �� �������,
  mecho _�� ������� �� - ��������,
  mecho _���� ����� �� �������,
  mecho _��� ��� �� ���� �����.
elseif %sing% > 2
  mecho _...� ��� �� ��� ��������� ����
  mecho _���� ���� ������� ������ �����:
  mecho _��� ���� �����, ����� ������ �����.
  mecho _���-�� ��� �� ������� ���,
  mecho _������ �������, �� ��������,
  mecho _�� ��������, ����� ���������,
  mecho _������ �� ����, ����� ���� �� ����,
  mecho _� � �� ���� ������� ����.
elseif %sing% > 1
  mecho _� �������� �������
  mecho _� �����-�� ����������
  mecho _������ - ��� � ������,
  mecho _��� ��������, �� �������...
  mecho _�����, ������ �� ������
  mecho _��������� ��� ������, -
  mecho _� ������ ������� ��� ������!
  mecho _���� ��������� �� ������ ���.�.
  mecho _����� �������� ������ �� �����,
  mecho _������ � ������ ���� �������.
  mecho _�������� ������ �� ������,
  mecho ��������� ��� ������.
  wait 2
  ��������
else
  mecho _��, �����, ������, ��� �������� �� �����,
  mecho _�����-�� �, ����� ��������� � ������ ����,
  mecho _� ������ ���� ���������, � ��������.
  mecho _��� �������� ��� ���� �� ���������,
  mecho _�� � ������� �������� �������,
  mecho _������� ��� ������� �� �������;
  mecho _������� ���� ����� � �������,
  mecho _������� ���� ����� ������ ������,
  mecho _��� ��� �� �����, ���������.
  mecho _��� � ���-�� ��� �������� �����,
  mecho _������� ���� ������� ����������!
  wait 4s
  mecho _�� ������ � �, �����, ���������:
  mecho _�� ����� � �� ����� ����������,
  mecho _�� ���������� ����� � ���������;
  mecho _��� � ������ � ���, ������, �������,
  mecho _�� ��� ��� ���� ���� ��������,-
  mecho _��� � ����� ����� �� �������,
  mecho _� � ���� ����� ������� �� �����:
  mecho _�� ������� ��� ����� ����,
  mecho _������� ��� �������� ��� �����;
  mecho ������� ���� ����� � ����� ����,
  mecho _������� ���� ����� �� ������;
  mecho _�� ������ ����, �����, ���� �����.
  mecho _��� ���-�� ���, ��������, �����,
  mecho _������� ���� ������� ����������!
  wait 4s
  mecho _������� ���� ����� � ���������,
  mecho _������� ���� ����� ������� ������:
  mecho _��� ���-�� ���, ��������, ����,
  mecho _������� ���� ������� ����������!
  mecho _� �� ������� ����� ����������.
  mecho _�� ������� �� ������ ����������.
  mecho _��� ������� ����� ���� �������,
  mecho _��� �� ���-�� � ��� ��� ���������:
  mecho _� ������ ��� � ��� �������,
  mecho _� �������� ��� � ����� �������.
end 
wait 1s
emot ��������� ���� � �����������
say ��� � ����� �����, ��� �� ������ �������
say ����� ���� - �� ����� �����
say ��������� �� �����, ������� ��� � ��������.
~
#62016
����� ����������~
0 l 30
~
makeuid killer %actor.id%
if ( %actor.vnum% != -1 )
  makeuid killer %actor.leader%
end
if (%killer.sex% == 1)
  mshou ��������! ������� ���� ������-������� - %killer.name%. �����...
elseif (%killer.sex% == 2)
  mshou ��������! ������� ���� �������� - %killer.name%. �����...
else
  mshou ������....
end
mdamage %self% %self.hitp%
~
#62017
������ ��������� ������ �����~
0 s 45
~
wait 1
foreach victim %self.npc%
  if (%victim.vnum% == 62033) || (%victim.vnum% == 62032)
    kill %victim.name%
    halt
  end
done
~
#62018
���� ������� �������~
0 j 100
~
wait 1
if !(%object.vnum% == 62045)
  say ��� ��� �����?
  drop %object.name%
  halt
end
wait 3
emot ���������� ������ ����
emot ����������� ���������� ������� � ������� ������ ������
emot ���-�� ���������� ���������
wait 1s
say �� ��� �... ��� ����� �� �����. �����
mload obj 62046
give ���� %actor.name%
mpurge %object%
~
#62019
�����~
0 c 0
�����~
say ����, �����, ��� ����� �������?
wait 1s
���� %actor.name%
eval obrok %self.gold%
give %obrok% ��� %actor.name% 
�����
~
#62020
����� � ��������~
0 m 50
~
eval sluh %random.12%                                         
msend %actor% �������� ������ ���:
if (%sluh% > 11 )
  msend %actor% - ������ � ������� ������ �� ����� ���� ������ - ������� � ��������� ����� ���������� ������� ��������� ������ �����.
  msend %actor% - �����-�� �� ���� � ������� ������ � ����������� ������.
  msend %actor% - ����� ������ ��� � ������, ���� ���� ��� ���� �� ��� ������� - ����-�� ��������� ������� ���� � ������� ��������.
  halt
elseif (%sluh% > 10 )
  msend %actor% - ����� ��������� �� ������� �������� � ����� ��������, ��� ����� �������, �� ��� � ������ �������.
  msend %actor% - �������, ������ ���������� �������-�������, ��� � ����������� ������ �� ��������� �����, ����� ����.
  msend %actor% - ������ ���� - ����� ����� �����, ��� � ������ �� �����.
  halt
elseif (%sluh% > 9 )
  msend %actor% - ������ ���, �����, ������ ������������.
  msend %actor% - ���� ����� ���� �� ��������� ����� - ��� ��� � ����.
  halt
elseif (%sluh% > 8 )
  msend %actor% - ���� ������ - �������� �����... ���� �� ����, �� ��������� �� �������.
  msend %actor% - �� � ����� � ���� � ����� �������� �������.
  msend %actor% - �� ��� � ������� �� ������� ��� - ������� �����-��, �����...
  halt
elseif (%sluh% > 7 )
  msend %actor% - ����� ��� ��������� � ��������� ���� �� �� �����.
  msend %actor% - �� ��� ���� ����� �� ���������.
  msend %actor% - �������� ��� ������ - ������� ������� - �������, ���, ������ ��������.
  msend %actor% - � ����� ������ �������� ������-�� ������, ����� � ��������� ���������� ��
  msend %actor%  ��� ��� ��������� �� ������� ���� ����� ���������� � ����� � ������
  msend %actor% _�������� �� �� ������ �� ������ ���������.
  halt
elseif (%sluh% > 6 )
  msend %actor% - ����� ����� ����� ����� �� �������.
  msend %actor% - ��� ��� ���� ����� - ��� ������ �� ��������� ������� ������.
  msend %actor% - ������ ��� � �������� ���������... �� � ��� ���������? �������� ������?
  ���
  msend %actor% - ������-�� �����, �� ���� �����, � ������� ��� ������� ������.
  halt
elseif (%sluh% > 5 )
  msend %actor% - ������ ��������� - ����� ���������.
  msend %actor% - ������ ��� ����� � ���� - ��� ��������� � �������.
  msend %actor% - � �������� ���� ���� ��� �� ��� - ��� � � ���� �������� �������.
  halt
elseif (%sluh% > 4 )
  msend %actor% - ������� ������-���������� ����� � ������.
  msend %actor% - ������ - ����� ����.
  msend %actor% - �� ���� �� ��� ������� ������� ��� ��� ������� ������� �� ��������.
  msend %actor% - ������ ���������, ���� ���������, - � �� ����� ��� �� ����� ������� ������.
  ���� 
  halt
elseif (%sluh% > 3 )
  msend %actor% - ���������� � ������...
  �����                                                                      
  msend %actor% - ����� �� ����� �� ������ ������� - �� ������� �����, � ��� ������.
  msend %actor% - � �� ��� ����� ���� �������, � �� ���� � ������ ������ �����.
  msend %actor% - ��� ��� ���������� ����� ����� ���.
  halt
elseif (%sluh% > 2 )
  msend %actor% - ������� ����� �����-�� ���������, �������, ��������� ����� �� �������� ������� �������.
  msend %actor% - �� ��������� � ��� � ����� ������ - ��� ����� ����� �����.
  halt
elseif (%sluh% > 1 )
  msend %actor% - �������, �����-�� ������ � ������ �������!
  msend %actor% - ������ ����� �� ������ �� �������, ���� �� ���������� ������, ���������, ���� � ���� ����.
  halt
else
  msend %actor% - ��� ��������� ������ �� ������ �������� � ���� ������� ����� �������...
  msend %actor% - �������, �� ��������� �� ��������� �����, ���� ��������.
  msend %actor% - �� ���� ��, ��� �� ������ ��������� - � ��� �����-��, ��������� �������, � �� ������� - ���� �� �������... 
end
~
#62021
�������� � ����������� �1~
0 n 100
~
wait 2
follow ���������
~
#62022
�������� � ����������� �2~
0 n 100
~
wait 2
follow ������
~
#62023
����� �����~
0 k 20
~
emot ������� �������� �����
mecho _� ��� �������� ���������� �� �����.
foreach target %self.pc%
  if (%random.3% != 2) 
    dg_cast '�����' %target.name%
  end
done
~
#62024
������ � ��������� �����~
0 k 22
~
switch %random.3%
  case 3
    eval victim %random.char%
    msend %victim%  ��������� ���� ����� ��� ��������� ������� ������ � ������ �������� �� �����!
    mechoaround %victim% _������ ���� ���������� ����� ������� %victim.vname%!
    dg_cast '����' %victim.name%
    dg_cast '����' %victim.name%
    dg_cast '����' %victim.name%
  break
  case 4
    eval victim %random.char%
    mecho _����������� ����� %victim.dname% ����, �� �������� ������� �������%victim.g% ����-�� � �������.
    mechoaround %victim% _�� �������� ����-�� � ������� �� �������� ����� ����� ������������.
    switch %random.4%
      case 1
        eval room 62012
      break
      case 2
        eval room 62008
      break
      case 3
        eval room 62013
      break
      case 4
        eval room 62010
      break
    done 
    %victim.wait(10)% 
    *mteleport %victim% %room%
  break
  case 5
    * mass trip
    mecho _�������� ���� ����������� ������ ���������� �� �����, ������� �������� ��� �� �����.
    foreach victim %self.char%
      if (%random.3% == 2)
        mecho _���� ����������� ����� ������ %victim.name%, ������ �� �����.
        mechoaround %victim% _���� ����������� ����� ������ ��� � �� ������� �� �����!
        %victim.position(6)%
        %victim.wait(2)%
      end
    done
  done
~
#62025
���� ������ �����~
0 j 100
~
wait 1
if !(%object.vnum% == 62062)
  say �� ��������.. ����� �� ��� ��� ���?
  drop %object.name%
  halt
end
wait 1
mpurge %object%
wait 3
���
say �! ��� ���� ������.. � �������, ������ �������...
if %world.curobjs(62039)% < 4
  emot ���� � ���� ������
  mload obj 62039
  give ������ %actor.name%
else
  msend %actor% ��� ��� ��������� �������� ��������� �����.... - � ��� ������ � ����� ���������� ������?
  mechoaround %actor% ��������� ����� ��� ��������� ����� %actor.dname%.
end
say ��������. ��� � �������.. ��� ������ ���� ���� ������ ����, ��������?
~
#62026
������� � �������~
2 cz 0
�������~
if !%arg.contains(����)% && !%arg.contains(������)% 
  wsend %actor% _��� �� ������ �������?
  halt
end
wsend %actor% _�� ������� � ������� ����. 
wechoaround %actor% _%actor.name% ������%actor.g% �� ������� �������� ����.
wzoneecho 62027 &Y ���� !!! - ���������� ���� �������� ��������. &n
~
#62027
����� �����~
0 f 100
~
mload obj 50058
~
#62028
���������� ������� �� ������~
0 q 100
~
wait 1
if %actor.name% == ������
  ����� .������
  switch %random.4%
    case 4
      n
      flee
      n
      e
      e
      m
      w
    break
    case 3
      e
      e
      flee
      n
      n
      w
      w
    break
    case 2
      flee
      s
      s
      w
      w
      flee
      s
      s
      e
    break
    case 1
      w
      w
      n
      n
      w
      w
      s
    break
  done
  ������� �������! ������� ������ �� ���� ��� ������!!
end
flee
~
#62029
����������� � �������~
0 n 100
~
eval skinok 0
eval goldok 0
eval kost 0
global skinok
global goldok
global kost
~
#62030
�������� ������� ���������~
0 j 100
~
wait 1
switch %object.vnum%
  case 95440
    case 95445
      case 95413
        case 95417
          case 95418
            case 95419
              case 95429
                case 95433
                  case 95434
                    wait 1
                    mpurge %object%
                    say ��... ���������� ����.
                    mecho _- �������, � ����� ����� �� ����������... ���� ��� ����� ��������.
                    mecho _- ��� �� ���� �������������?
                  break
                  default
                    ���
                    say ���, ��� ��� �� �����.
                    give all %actor.name%
                    halt
                  done
                  switch %random.12%
                    case 1
                      eval chanse %world.curobjs(95430)%+15
                      if (( %random.19% > %chanse% ) || ( %random.100% == 53 ))
                        mload obj 95430
                      else
                        eval bonus 100+%random.300%
                        %self.gold(+%bonus%)%
                        give %bonus% ��� .%actor.name%
                      end
                    break
                    case 2
                      eval chanse %world.curobjs(95441)%+15
                      if (( %random.19% > %chanse% ) || ( %random.100% == 53 ))
                        mload obj 95441
                      else
                        eval bonus 100+%random.300%
                        %self.gold(+%bonus%)%
                        give %bonus% ��� .%actor.name%
                      end
                    break
                    case 3
                      eval chanse %world.curobjs(95406)%+15
                      if (( %random.18% > %chanse% ) || ( %random.100% == 53 ))
                        mload obj 95406
                      else
                        eval bonus 100+%random.300%
                        %self.gold(+%bonus%)%
                        give %bonus% ��� .%actor.name%
                      end
                    break
                    case 4
                      eval chanse %world.curobjs(95407)%+15
                      if (( %random.18% > %chanse% ) || ( %random.100% == 53 ))
                        mload obj 95407
                      else
                        eval bonus 100+%random.300%
                        %self.gold(+%bonus%)%
                        give %bonus% ��� .%actor.name%
                      end
                    break
                    case 5
                      eval chanse %world.curobjs(95443)%+15
                      if (( %random.20% > %chanse% ) || ( %random.100% == 53 ))
                        mload obj 95443
                      else
                        eval bonus 100+%random.300%
                        %self.gold(+%bonus%)%
                        give %bonus% ��� .%actor.name%
                      end
                    break
                    case 6
                      eval chanse %world.curobjs(95450)%+10
                      if (( %random.15% > %chanse% ) || ( %random.100% == 53 ))
                        mload obj 95450
                      else
                        eval bonus 100+%random.300%
                        %self.gold(+%bonus%)%
                        give %bonus% ��� .%actor.name%
                      end
                    break
                    case 7
                      eval chanse %world.curobjs(95452)%+15
                      if (( %random.19% > %chanse% ) || ( %random.100% == 53 ))
                        mload obj 95452
                      else
                        eval bonus 100+%random.300%
                        %self.gold(+%bonus%)%
                        give %bonus% ��� .%actor.name%
                      end
                    break
                    case 8
                      eval chanse %world.curobjs(95453)%+15
                      if (( %random.20% > %chanse% ) || ( %random.100% == 53 ))
                        mload obj 95453
                      else
                        eval bonus 100+%random.300%
                        %self.gold(+%bonus%)%
                        give %bonus% ��� .%actor.name%
                      end
                    break
                    case 9
                      eval chanse %world.curobjs(95454)%+15
                      if (( %random.18% > %chanse% ) || ( %random.100% == 53 ))
                        mload obj 95454
                      else
                        eval bonus 100+%random.300%
                        %self.gold(+%bonus%)%
                        give %bonus% ��� .%actor.name%
                      end
                    break
                    case 10
                      eval chanse %world.curobjs(95402)%+25
                      if (( %random.30% > %chanse% ) || ( %random.100% == 53 ))
                        mload obj 95402
                      else
                        eval bonus 100+%random.300%
                        %self.gold(+%bonus%)%
                        give %bonus% ��� .%actor.name%
                      end
                    break
                    case 11
                      eval chanse %world.curobjs(95403)%+15
                      if (( %random.19% > %chanse% ) || ( %random.100% == 53 ))
                        mload obj 95403
                      else
                        eval bonus 100+%random.300%
                        %self.gold(+%bonus%)%
                        give %bonus% ��� .%actor.name%
                      end
                    break
                    case 12
                      eval chanse %world.curobjs(95486)%+15
                      if (( %random.19% > %chanse% ) || ( %random.100% == 53 ))
                        mload obj 95486
                      else
                        eval bonus 100+%random.300%
                        %self.gold(+%bonus%)%
                        give %bonus% ��� .%actor.name%
                      end
                    break
                  done
                  wait 1s
                  ���
                  say �����, ��� ��������� �������.
                  give all .%actor.name%
~
#62031
������ ������ ��������~
0 m 1
~
wait 1
if !%kost%
  ���
  wait 1s
  say �� � ����� �� � ����� ������ �� ������������, ��� �� ��� �� �� �������?
  say ���, ��� �� �� ��� - ��� ����� ������, ����� � � ������� ���� ������.
  give %amount% ��� %actor.name%
  halt
end
emot ���������� ������
wait 1s
if %amount% != %kost%
  say ��� ��, � ������ ����� ������.
  say ����� %kost% ��� - �� ������, �� ������.
  halt
end
eval goldok 1
global goldok
say ������, ����� ���� ���� ��������.
~
#62032
������� ������ ��������~
0 j 100
~
wait 1
*��� ���� ��������� ��������� ���� ���� ����� �������
switch %object.vnum%
  case 95416
    case 95415
      case 95423
        case 95421
          case 95426
            case 95469
              case 95444
              break
              default
                wait 1s
                say �����, �� ����� � ������ �� ����� �������.
                give all %actor.name%
                halt
              done
              *����� ��� �� ������ - ���������� ���� � ����������
              if !%skinok%
                eval kost 200+%random.300%
                eval skinok %object.vnum%
                global kost
                global skinok
                eval goldok 0
                global goldok
                emot ����������� �������� %object.vname%
                wait 2s
                say ���.. ��.
                say ������� ��������. 
                say � �������� ����������� ���������� � ���.
                say ����� �������� - %kost% ���.
                give all %actor.name%
                halt
              end
              *����� ���� ������, �� ������ �� ��������
              if !%goldok%
                say �������� ������, �� ��� ����� ������� ����, ��� ��� ������� ��� ������ ����������.
                give all %actor.name%
                halt
              end
              *���� �� �� �����
              if %object.vnum% != %skinok%
                wait 2s
                say � ��� ��� ������� � ������ ���������.
                say �� ���� � ���� ������.
                *eval skinok 0
                *eval goldok 0
                *eval kost 0
                *global skinok
                *global goldok
                *global kost
                give all %actor.name%
                halt
              end
              wait 1
              set shkura %skinok%
              eval skinok 0
              global skinok
              mpurge %object%
              say ������, ���������...
              emot ���� �����, � ������� ������������
              mecho  ������ � ���������� �������� ������.
              eval pause 5+%random.5%
              wait %pause%s
              switch %shkura%
                case 95416
                  case 95415
                    eval chanse %world.curobjs(95427)%+8
                    if (( %random.13% > %chanse% ) || ( %random.1000% <= 10 ))
                      mload obj 95427
                      say ���, ������� ���-�� ����������.
                      give all %actor.name%
                      rdelete goldok %self.id%
                      halt
                    end
                    eval chanse %world.curobjs(95432)%+8
                    if (( %random.15% > %chanse% ) || ( %random.1000% <= 10 ))
                      mload obj 95432
                      say ���, ������� ���-�� ����������.
                      give all %actor.name%
                      rdelete goldok %self.id%
                      halt
                    end
                  break
                  case 95423
                    eval chanse %world.curobjs(95451)%+8
                    if (( %random.14% > %chanse% ) || ( %random.1000% <= 10 ))
                      mload obj 95451
                      say ���, ������� ���-�� ����������.
                      give all %actor.name%
                      rdelete goldok %self.id%
                      halt
                    end
                    eval chanse %world.curobjs(95485)%+8
                    if (( %random.13% > %chanse% ) || ( %random.1000% <= 10 ))
                      mload obj 95485
                      say ���, ������� ���-�� ����������.
                      give all %actor.name%
                      rdelete goldok %self.id%
                      halt
                    end
                    case 95421
                      eval chanse %world.curobjs(95409)%+8
                      if (( %random.13% > %chanse% ) || ( %random.1000% <= 10 ))
                        mload obj 95409
                        say ���, ������� ���-�� ����������.
                        give all %actor.name%
                        rdelete goldok %self.id%
                        halt
                      end
                    break
                    case 95426
                      eval chanse %world.curobjs(95432)%+8
                      if (( %random.14% > %chanse% ) || ( %random.1000% <= 10 ))
                        mload obj 95432
                        say ���, ������� ���-�� ����������.
                        give all %actor.name%
                        rdelete goldok %self.id%
                        halt
                      end
                      eval chanse %world.curobjs(95458)%+8
                      if (( %random.13% > %chanse% ) || ( %random.1000% <= 10 ))
                        mload obj 95458
                        say ���, ������� ���-�� ����������.
                        give all %actor.name%
                        rdelete goldok %self.id%
                        halt
                      end
                    break
                    case 95469
                      case 95444
                        eval chanse %world.curobjs(95483)%+8
                        if (( %random.13% > %chanse% ) || ( %random.1000% <= 10 ))
                          mload obj 95483
                          say ���, ������� ���-�� ����������.
                          give all %actor.name%
                          rdelete goldok %self.id%
                          halt
                        end
                        eval chanse %world.curobjs(95484)%+8
                        if (( %random.13% > %chanse% ) || ( %random.1000% <= 10 ))
                          mload obj 95484
                          say ���, ������� ���-�� ����������.
                          give all %actor.name%
                          rdelete goldok %self.id%
                          halt
                        end
                      break
                      default
                      done
                      say ��� �����, ����� ���� ������� ������ ���������.
                      say ������ ������� �� �����...
                      say � ����� �������� ��������� ������, ��������� - � ���� ������������ �������.
                      eval geld %kost%/2
                      give %geld% ��� .%actor.name%
~
#62033
���� � ��������~
0 q 100
~
wait 1s
emot ����������� ����� ����
say ��� ��, ���� � ��� ���� ���-�� ����������, ������� ��� ����������.
say ���� �� ����, ���� ���� �� ��� ���������?
~
#62034
������� ������~
0 m 1
~
wait 1
emot ����������%self.g% ������
eval target 0
switch %amount%
  * ������
  case 4300
    eval target 66034
  break
  * �����
  case 7900
    eval target 77007+%random.30%
  break
  * �����
  case 5500
    eval target 34410
  break
  default
    ���
    say � ���� �� �� �� ��� ������ ������?
    give %amount% ��� .%actor.name%
    halt
  done
  ���
  emot ������%self.g% ��������� �������� ������
  mechoaround %actor% %actor.name% �����%actor.q% � ������ ����.
  msend %actor% � ��� ����������� ������, � �� ��� �� �������� ��������...
  msend %actor% 
  mteleport %actor% %target% horse
  mechoaround %actor% %actor.name% ������%actor.u% ����� � ������ ����.
~
#62035
���� � ������~
0 q 100
~
wait 1
if (%actor.religion% == 1)
  mecho ������ ����� ������������� ��������� �� ���.
  ����
  halt
end
���� .%actor.name%
say ����������, ������. ��� ���� ����� ������ �������� ���������.
say � ���� �������� �� ���� �����, ���� ������������� �� ���� �������������.
~
#62036
���� � ��������~
0 q 100
~
wait 1
if (%actor.religion% == 0)
  mecho �������� ������������� ��������� �� ���.
  �����
  halt
end
�������� .%actor.name%
say �� ������ ���, �������! �� ������ �������� ���� ������������� �� ����� ������.
~
$~
