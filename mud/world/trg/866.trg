#86600
������~
2 e 100
~
wait 5s
wportal 86659 2
wecho  &y��������� �������� ������ ������ ���� �������� � ������������ ����.&n
~
#86601
����� � ����~
2 c 0
����� �������� ������~
if !(%arg.contains(����)%) 
  wsend       %actor% _���� ��� �� ������ ��������?
  wechoaround %actor% _%actor.name% �����%actor.g% ������� ������ ����.
  return 0
  halt
end
wsend       %actor% _�� ��������� ������������ � ����� ���� � �����.
wechoaround %actor% _%actor.name% ������%actor.q% ����� ����� ���� � ����� ������ ��������.
wteleport %actor% 86611
wat 86611 wechoaround %actor% _%actor.name% ������%actor.q% ���� �������.
~
#86602
����� � ���� �������~
2 c 0
����� �������� ������~
if !(%arg.contains(����)%) 
  wsend       %actor% _���� ��� �� ������ ��������?
  wechoaround %actor% _%actor.name% �����%actor.g% ������� ������ ����.
  return 0
  halt
end
wsend       %actor% _�� ��������� ������������ � ����� ���� � �����.
wechoaround %actor% _%actor.name% �����%actor.q% ����� ����� ���� � ����� �� ��������.
wteleport %actor% 86607
wat 86607 wechoaround %actor% _%actor.name% ������%actor.q% ���� �� ��������.
~
#86603
����� �� ���������~
2 e 100
~
wait 3s
foreach victim %self.pc%
  wecho _&r�� � ����� ����� ��������� �� ���������, �� �������� ����.&n
  wteleport %victim% 86672
done
end
~
#86604
��������� �����~
2 c 0
��������� ���������~
if !%arg.contains(�����)%
  wsend   %actor% _��� �� ������ ��� ���������?
  return 0
  halt
end
wait 1
wsend       %actor% _�� ������ ���������� ������ �� ������ ���������� �����.
wechoaround %actor% _%actor.name% �����%actor.g% ���������� ���������� ����� �� ������.
wait 3s
wecho       _����� � �������� ����������, ������� ����� ������.
wdoor  86630 north flags a
wdoor  86630 north room  86631
wdoor  86631 south flags a
wdoor  86631 south room  86630
detach 86604 %self.id%
~
#86605
������� � ������ ����~
2 c 0
���������� ������� �����~
if !(%arg.contains(����)%) 
  wsend       %actor% _���� ��� �� ������ �������?
  wechoaround %actor% _%actor.name% �����%actor.g% ������� �� �����. �������, ���� �� ����-�� ���������...
  return 0
  halt
end
wsend       %actor% _\&R�� ����� ��������� ������ ����, �� ������ ����, �� �������� ������ ����, ���������� �� ���.\&n
wechoaround %actor% _\&R%actor.name% ����%actor.g% ��������� ������ ����, �� ������ ����, �� �������� ������ ����, ����������.\&n
wdamage %actor% 125
detach 86605 %self.id%
~
#86606
����� ������ ������~
2 e 100
~
wait 3s
eval victim %random.pc%
wecho _&r�������� �����, ������������, �������� ����� �� ���!&n
if %victim%
  wdamage %victim% 285
end
detach 86606 %self.id%
~
#86607
����� �� �����~
2 e 100
~
wait 1s
wecho _&M�����-�� ����� �������� �������� �� �����.&n
wload mob 86618
detach 86607 %self.id%
end
~
#86608
������ ��������~
2 e 100
~
if %random.10% <= 6
  wait 2s
  wecho _&g���������� ������ �������� ��-��� ����� !&n
  wload mob 86604
  detach 86608 %self.id%
else
  detach 86608 %self.id%
~
#86609
������ �������~
0 n 100
~
eval victim %random.pc%
if %victim%
  mkill %victim%
end
~
#86610
������ ���~
0 f 100
~
if (%world.curobjs(86604)% < 6) && (%random.100% <= 20)
  mload obj 86604
end
~
#86611
������ �������~
2 e 100
~
wait 1s
wecho _&M�� ��������� ��� ���������� ����� �������� �������� �� ������� ������������...&n
wload mob 86605
detach 86611 %self.id%
end
~
#86612
������� �������~
2 c 0
������� ��������� ����������~
if !%arg.contains(�������)%
  wsend       %actor% _� ��� �� �� ������ ����� ���������?
  return 0
  halt
end
wsend       %actor% _�� ������ ��������� ������� ������ ����� �������� ��������...
wechoaround %actor% _%actor.name% ����%actor.g% ��������� ������������� ������ ����� �������� ��������...
wait 2s
wecho _�������� ������� �������� �������� ����� � ���� ���� ��������������.
wecho _����������� �� ����������� ��������� ����� ��������� ���������� ���������.
wait 1s
wecho _������� ������� ������ �������� ��������� �� ������!
wload mob 86613
calcuid fol 86621 room
attach 86613 %fol.id%
detach 86612 %fol.id%
end
~
#86613
������� ������� ������~
2 c 0
������� ��������� ����������~
if !%arg.contains(�������)%
  wsend       %actor% _� ��� �� �� ������ ����� ���������?
  return 0
  halt
end
if %random.100% <= 85
  wsend       %actor% _�� ������ ������� ����� �� �������� ��������.
  wechoaround %actor% _%actor.name% �����%actor.g% ������� ����� �� �������� ��������.
  wait 2s
  wecho _����������, �� ��������� ������� �������� �������� � ������ ���� ��������������.
  wecho _����������� �� ����������� ��������� ����� ��������� ���������� ���������.
  wait 1s
  wecho _������� �� ������������ ������������ �������� ������ ������� �������, �������� � �����-�� �������...
  wait 1s
  wload mob 86609
  wload mob 86606
  detach 86613 %self.id%
else 
  wsend       %actor% _�� ������ ������� ����� �� �������� ��������.
  wechoaround %actor% _%actor.name% �����%actor.g% ������� ����� �� �������� ��������.
  wait 2s
  wecho _������� �������, �� �������� ����������� � ���� ������, ���������� � ����.
  calcuid book 86605 obj
  wpurge %book%
  detach 86613 %self.id%
end
~
#86614
������� �������~
0 n 100
~
mecho _������� ����������� ������� � ��������.
mkill ��������
wait 1s
�����
end
~
#86615
������� ������ ���~
0 f 100
~
mload obj 86601
if (%world.curobjs(86614)% < 4) && (%random.100% <= 20)
  mload obj 86614
end
~
#86616
� ���������~
2 e 100
~
wait 2s
wecho _&K������ ��������� � ���������� �������� �������� � �������...&n
wload mob 86610 
detach 86616 %self.id%
end
~
#86617
������ �������~
0 f 100
~
if (%world.curobjs(86625)% < 5) && (%random.100% <= 20)
  mload obj 86625
end
eval rnd %random.100%
if %rnd% <= 15
  mecho _\&R���������� ������ ������ ������, ������ ������� �� ������� !\&n
  mload mob 86610
elseif (( %rnd% <= 30 ) && ( %world.curobjs(400)% < 1 ))
  mload obj 400
end
~
#86618
����� ������~
0 ab 40
~
if !%self.fighting%
  eval son %random.2%
  if %son% > 1
    ����
    masound _���-�� ��������� ���� ������� �� �������� ���������.
    calcuid troom 86697 room
    exec 86619 %troom%
  elseif %son% > 0
    ����
  end
end
~
#86619
������� �� �����~
2 z 100
~
wait 1s
wecho _&r������, ��� ����, ���������� ���������� ������ �� �����-�� �������� �����.&n
foreach victim %self.char%
  wdamage %victim% 85
done
end
~
#86620
������ � ��������~
0 r 100
~
wait 1s
��� .��������
��� ���������� ��������! � ����� �� �� ����� ��� �����!
if %exist.mob(86624)%
  calcuid son 86624 mob
  detach 86618 %son.id%
  exec 86626 %world.mob(86624)%
end
detach 86620 %self.id%
~
#86621
������ �������~
0 n 100
~
eval temp %random.pc%
if (%temp.canbeseen%)
  mkill %random.pc%
end
~
#86622
������ ��������~
2 ab 100
~
eval victim %random.pc%
if %victim%
  wecho _&R������ ������ ������ ����� � ��� !&n
  wdamage %victim% 165
end
done
end
~
#86623
������ ���~
0 f 100
~
if (%world.curobjs(86602)% < 3) && (%random.100% <= 15)
  mload obj 86602
end
if (%world.curobjs(86612)% < 5) && (%random.100% <= 20)
  mload obj 86612
end
~
#86624
������� ������ ���~
0 f 100
~
if (%world.curobjs(86603)% < 4)
  if (%random.100% <= 20 )
    mload obj 86603
  end
end
~
#86625
������� ���~
0 f 100
~
if (%world.curobjs(86603)% < 2) && (%random.100% <= 15)
  mload obj 86607
end
~
#86626
������ ������ �� ������~
0 z 100
~
wait 3s
�����
���
������
��
detach 86626 %self.id%
end
~
#86627
����� ����� ���~
0 f 100
~
if (%world.curobjs(86609)% < 3)
  if (%random.100% <= 10 )
    mload obj 86609
  end
end
if (%world.curobjs(86627)% < 3)
  if (%random.100% <= 10 )
    mload obj 86627
  end
end
if ((%world.curobjs(406)% < 1 ) && (%random.1000% <= 200))
  mload obj 406
end
~
#86628
��������� ���~
0 f 100
~
if (%world.curobjs(86613)% < 4) && (%random.100% <= 25)
  mload obj 86613
end
~
#86629
�'��� ���~
0 f 100
~
if ((%world.curobjs(86615)% < 4) && (%random.100% <= 14))
  mload obj 86615
end
~
#86630
������� ���~
0 f 100
~
if (%world.curobjs(86617)% < 4 )
  if ( %random.100% <= 14)
    mload obj 86617
  end
end
~
#86631
�������� ����� ���~
0 f 100
~
if (%world.curobjs(86618)% < 5 )
  if ( %random.100% <= 12 )
    mload obj 86618
  end
end
~
#86632
�������� ����� ���~
0 f 100
~
if (%world.curobjs(86619)% < 5 )
  if (%random.100% <= 15 )
    mload obj 86619
  end
end
~
#86633
������� ����� ���~
0 f 100
~
if (%world.curobjs(86620)% < 6 )
  if (%random.100% <= 18 )
    mload obj 86620
  end
end
~
#86634
�������� ����� ���~
0 f 100
~
if (%world.curobjs(86621)% < 5) && (%random.100% <= 20)
  mload obj 86621
end
if (%world.curobjs(506)% < 1) && (%random.100% <= 15)
  mload obj 506
end
~
#86635
����� ������~
2 f 100
~
wdoor   86630 north purge
wdoor   86631 south purge
calcuid laz 86630 room
attach   86604 %laz.id%
calcuid okno 86605 room
detach 86605 %okno.id%
attach 86605 %okno.id%
calcuid balka 86613 room
detach 86606 %balka.id%
attach 86606 %balka.id%
calcuid ozero 86673 room
detach 86607 %ozero.id%
attach 86607 %ozero.id%
calcuid sor 86601 room
detach 86608 %sor.id%
attach 86608 %sor.id%
calcuid sor2 86602 room
detach 86608 %sor2.id%
attach 86608 %sor2.id%
calcuid sor3 86606 room
detach 86608 %sor3.id%
attach 86608 %sor3.id%
calcuid sor4 86603 room
detach 86608 %sor4.id%
attach 86608 %sor4.id%
calcuid sor5 86605 room
detach 86608 %sor5.id%
attach 86608 %sor5.id%
calcuid sor6 86604 room
detach 86608 %sor6.id%
attach 86608 %sor6.id%
calcuid stat 86624 room
detach 86611 %stat.id%
attach 86611 %stat.id%
calcuid foli 86621 room
detach 86613 %foli.id%
attach 86612 %foli.id%
calcuid sar 86641 room
detach 86616 %sar.id%
attach 86616 %sar.id%
calcuid sar2 86645 room
detach 86616 %sar2.id%
attach 86616 %sar2.id%
calcuid smerd 86600 mob
detach 86636 %smerd.id%
attach 86636 %smerd.id%
~
#86636
����� ��������~
0 r 100
~
����
wait 1s
� �� ������ ���� ���� ������, ������ �������� �������� ������!
����� %actor.name%
detach 86636 %self.id%
~
#86637
���� �����~
0 f 100
~
mload obj 86624
~
#86638
������ ����~
0 f 100
~
halt
*if ( %world.curobjs(1058)% < 1 ) && ( %random.6% ==  3 )
mload obj 1058
end
~
$~
