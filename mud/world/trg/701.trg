#70100
����� � ������~
0 r 100
~
������� ��������.������
�������� ��������.������
wait 5
if %self.fighting%
  halt
end
������
wait 20
if %self.fighting%
  halt
end
say ���������� ������, ������ �� ��������! �� ����� � ���� ����� ������. 
wait 20
if %self.fighting%
  halt
end
say �� ���������, ��� ���� � ��� ���� � �����, �� �� ���� ������� ����.
say � �� �� �������� ���, ���� ����������� ���� � ���.
wait 20
if %self.fighting%
  halt
end
say ��� ��� ������ ������� ���� - �� ���� �� ������ �� �����.
wait 20
if %self.fighting%
  halt
end
say �������� ���� ��������� ��.
wait 2
if %self.fighting%
  halt
end
mecho ����� ���������� � ���� ������ � ����� ����������.
���
wait 18
if %self.fighting%
  halt
end
say � ����� � ���� �����������, � ������ �������� ��� ��� ������...
wait 20
if %self.fighting%
  halt
end
say �� � �� ����� ��� � ����� ��������, ������ ��� ���� ���� ���...
~
#70101
������� ��������~
2 e 100
~
eval temp %actor%
wait 1s
wechoaround %temp.name% ��������� ������� �������� ��� ������ � %actor.rname%.
wsend %temp.name% ��������� ������� �������� � ��� ��� ������.
~
#70102
������� �������~
2 c 1
�������~
wait 1
if %arg%==�������
  wsend %actor% �� ��������� � ���������� �������� ������ �� ��������.
  wait 1
  if (%random.5% == 1)
    wsend %actor% ���� �������� �����, � �� ������ ��� �������.               
    wload obj 70107
    wforce %actor% ����� �������
  else
    wsend %actor% ���� �� �������� ������� �������, ��� �����������.
  end
else
  wsend %actor% ���� �� ������ ������� ?
end
return 0
~
#70103
������� �������~
2 h 100
~
wait 1
if ((%actor.realroom% == 70138) && (%object.vnum% == 70107))
  %send% %actor% ����������� �������, ������� �������� � ����� ����.
  wecho �������, ������ �������, �������� � ������ � ����� �� ��� ����.
  wait 10
  wecho ������ ������� ����� ����� ��������.
  wecho ������ ������� ����� ������ : '��������� ��������'
  wecho ������ ������� ����� ������ : '������ ���� �� ���� ��������'
  wecho ������ ������� ����� ������ : '� � ����� ��� ���� ���-������ � ���'
  *������ ���������� ������ ������� � �����������
  calcuid muraveinik 70124 room
  detach 70101 %muraveinik.id%
  detach 70102 %muraveinik.id%
  attach 70115 %muraveinik.id%
  exec 70115 %muraveinik.id%
  * ������ ���� ����������� ������
  detach 70103 %self.id%
end
~
#70104
����� � ������ ���~
0 q 100
~
wait 1
mecho ������ �������� ����������� ���������� �� ���.
���
� ������� ���, ������ �� ��� � ��������� ��� ���.
� ������, �������� ���, �� ����� �� ���� � �����.
� � ����� ���� ��������� ����� ������� ��� ���� ����
� ���� �������, �� �� ��� ������.
� ���� �� �� ���� � ���� ���������, ����� �� �������
� �� ����. � ���, ��� � ��� �� ����������.
wait 10s
���
wait 5s
if %self.fighting% 
  * ��� �� ������ �������� �� ��������, ���� ��� ��������
  dg_cast '��� �����'
  detach 70104 %self.id%
  halt
end              
calcuid caricamur 70102 mob
attach 70105 %caricamur.id%
exec 70105 %caricamur.id%
* ���� �� ���������, ��������� �� ������ ��� ���.
* ���� ���, ���� ������� � ����� 70105
wait 1s              
* ��� �� �� ���� �� ���� ������
* if !%self.fighting%
mecho ������ �������� �������� � �����������.
mpurge %caricamur%
* else
*  detach 70104 %caricamur% 
* end
~
#70105
����������� ������~
0 z 0
~
mecho ������ �������� ������������� ���������� �� ���.
wait 1
� ���� ������. ������ ������ - �������� �� ���.
mecho ������-�� ��-��� ����� ����� ��������� �������.
mecho ��������� ������� ������� ������� ��������� �� �����.
mecho ��������� ������� ������ ����.
wait 1
mecho ������ ������ �� ������ ��� ����� �������� ������.
mecho �� ����� ������� �� ��������� ��������.
* �������� ������ ����� � �� �������� 
* ���� ��� ������� �� �������� �� ����� ���� self.char
mat 70151 mecho ���-�� �������� ����� � ������ ������ ����.
mteleport all 70151
detach 70105 %self.id%
~
#70106
������ ������ ��������~
0 f 0
~
mload obj 70108
~
#70107
���� �������� ������~
0 j 100
~
wait 1
if %object.vnum%==70108
  mpurge %object%
  ���
  � �� ��� ��, ��� � ��������� � �� ����...
  � ����� ������ ���-�� � ?
  wait 1
  ����
  � ������ �������� ��� � ���� ����� ����������.
  * � ���������� 10� ���
  mload obj 70109
  ���� ��� %actor.name%
  detach 70107 %self.id%
else
  � ��������� ���� ������ ? ����� ��� ��� ?
  ������� %object.name%
end
~
#70108
���_������ �������~
0 l 100
1500~
* ��������� �������� �������� � ��������
if (%random.12%==1)
  mecho ��������� ������ �������� �����, �������� ����� ������.
  if (%random.3%==1)
    mecho �� ����� ������ ��� ����� ������.
    mload mob 70107
  else
    mecho �� ����� ������ ��� ����� ������.
    mload mob 70106
  end
end
~
#70109
������ ����������� �������~
0 f 100
~
calcuid room %self.vnum% room
set charhere %room.people%
while %charhere%
  set todelet %charhere%
  if %todelet.vnum% == 70106
    purge %todelet%
  end
  if %todelet.vnum% == 70107
    purge %todelet%
  end
  set charhere %charhere.next_in_room%
done
calcuid room 70150 room
attach 70116 %room.id%
run 70116 %room.id%
~
#70110
��������� �� ������~
2 z 100
~
wait 120s
if %exist.mob(70101)%
  * wecho ������� ���������� �� ���� ������.
  * wload mob 70103
  * wload mob 70103
  wload mob 70104
  wload mob 70104
  * wload mob 70105
  * wload mob 70105
  * wload mob 70105
  wload mob 70102
  wecho ������ �������� ����� ��-�� ����� ������.
  wecho ������ �������� ������� : '�����, �� ����� �������� ���� ��� ?'
  wait 1
  wecho ������ ������� ����� ��������� �� ������ ��������.
  wecho ������ ������� ����� ������ : '��� �� ��������� ���� ����'
  wecho ������ ������� ����� ������ : '� ����� ���� ��� � ���� ����'
  wait 1
  wecho ������ �������� ������� : '������ �� ���������!'
  wecho �a���� �������� ������� : '������ ���� ���!'
  wait 1
  wecho ������ ������� ����� ������ : '���, �� ������ ������ !!!'
  * foreach murav %self.npc%
  *  if %murav.id%==70103
  *   wforce %murav% ���� ����.�����.����
  *  else
  *   if %murav.id%==70104
  *    wforce %murav% ���� ����.�����.����
  *   else
  *    if %murav.id%==70105
  *     wforce %murav% ���� ����.�����.����
  *    end
  *   end
  *  end
  * done
  calcuid vedun 70101 mob
  wforce %vedun% ���� ������
  * ������ ������ �� ������, ��� ����� �������� �� ����� ���
  attach 70111 %vedun.id%
end 
~
#70111
������� ������� ������~
0 k 0
~
* ���� ������� �������, �� �� �� �������� ���, ������� ������ ��� ����
* ���� �� ������, ���� �� �� �����, 
foreach murav %self.npc%
  * ������� ���� ��������� ������� and, �� � �� ���� ���� ���
  * ������ ��� � ��� �� �������� ������� �����.
  * �� ���� ������ �������� �� �����������. ��� � ��� ������ :)  
  if %murav.id%==70103
    wforce %murav% ���� ����.�����.����
  else
    if %murav.id%==70104
      wforce %murav% ���� ����.�����.����
    else
      if %murav.id%==70105
        wforce %murav% ���� ����.�����.����
      else
        if %murav.id%==70102
          wforce %murav% ���� ����.�����.����
        end
      end
    end
  end
done
~
#70112
������ ������~
0 f 0
~
*������ �������� ���� ��� ����
* ��������� ���� ���� ���� ��� ������� ������� :( - ���� ���������
* �������� ��� ������� �������� ���� ��� ���� ������, ���� �� ��� ������
* ������ ��� ��� (���� 70113):
* �������� �� ��������� ������ �� ���. ���� ����� - �����
* ���� �������� ��������� � ���� ����� ������ � ��������� ����, ����� ����
* �����������. �� ������� ���� ��� ������� �����    
calcuid muravatt 70138 room
attach 70117 %muravatt.id%
run 70117 %muravatt.id%
~
#70113
����� ������ �� �������~
0 p 0
~
* �� ����� ��� � �������
if %self.realroom%==70138
  if %actor.vnum%==-1
    * ���� ������� ����� - �� ���� �������� ��������� � ���� ���
    foreach murav %self.npc%
      if %murav.id%==70103
        wforce %murav% ���������
        wforce %murav% ���� .%actor.iname%
      else
        if %murav.id%==70104
          wforce %murav% ���������
          wforce %murav% ���� .%actor.iname%
        else
          if %murav.id%==70105
            wforce %murav% ���������
            wforce %murav% ���� .%actor.iname%
          else
            if %murav.id%==70102
              wforce %murav% ���������
              wecho ������ �������� ��������� �������� �������.
              wecho ������ �������� ������� : '�� ��� ��������, �� ��������'
              wforce %murav% ���� .%actor.iname%
            end
          end
        end
      end
    done              
  end
  * ������� ���� ������ �� ���� ��������
  calcuid myravatt 70138 room
  attach 70114 %muravatt%
  run 70114 %muravatt%
end
~
#70114
������ �������� ����� ������~
2 z 0
~
* ������� ���� 70113 �� ���� ��������, !��! 70113 � �������� ���� ����
foreach murav %self.npc%
  if %murav.id%==70103
    detach 70113 %murav%
  else
    if %murav.id%==70104
      detach 70113 %murav%
    else
      if %murav.id%==70105
        detach 70113 %murav%
      else
        if %murav.id%==70102
          detach 70113 %murav%
        end
      end
    end
  end
done
* ������ ���� ����� �������� �� ������
calcuid vedun 70101 mob
detach 70111 %vedun%
~
#70115
������_������_���~
2 z 100
~
if !%exist.mob(70102)%
  wload mob 70102
  calcuid caricamur 70102 mob
  attach 70104 %caricamur.id%
else
  wecho ������ �������� ����������.
end
calcuid muraveinik 70124 room
detach 70115 %muraveinik.id%
~
#70116
����� ������ �������~
2 z 100
~
wait 1
wecho �� ��� ������� ����� ������ ��������:
wecho - �������, ���.
wecho - ������ �� ������ �������� ������.
eval buffer %actor.exp(+10000)%
wsend %actor% - ����, ��������� �������, ���� ���� ��� ������.
wait 1
wecho ��� ����������� � �� ������� �������� ����������.
wecho �� ����� ������� � ����.
wat 70124 wecho ���-�� �������� ����� � ������ ������ ����.
wteleport all 70124
calcuid muravatt 70138 room
attach 70110 %muravatt.id%
run 70110 %muravatt.id%
detach 70116 %self.id%
~
#70117
����� ������ ������~
2 z 100
~
wait 1
foreach murav %self.npc%
  if %murav.vnum%==70103
    wpurge %murav%
    wecho �������-�������� ������.
  else
    if %murav.vnum%==70104
      wpurge %murav%
      wecho �������-�������� ������.
    else
      if %murav.vnum%==70105
        wpurge %murav%
        wecho �������-������� ������.
      else
        if %murav.vnum%==70102
          wecho ������ �������� ������� :
          wecho - ������ � ���� ���� ���, � �����������.
          wecho - ��� ���� ������ ��� ������, ��� �������.
          wecho - �� �������� ����������� ���� !
          wecho ������ �������� ������������ � �������.
          wpurge %murav%
        end
      end
    end
  end
done
wecho ������� ���� ����� �� ������� ������� ������.
wload obj 70106
detach 70117 %muravatt.id%
~
#70118
����� ����~
2 f 100
~
calcuid room 70124 room
attach 70101 %room.id%
attach 70102 %room.id%
calcuid room 70138 room
attach 70103 %room.id%
~
#70119
������� �������~
1 h 100
~
if %actor.realroom% != 70138
  wait 1
  oecho ������������ �������, ������� ������������, ��������� ������� � ������.
end
wait 1
opurge %self%
~
$~
