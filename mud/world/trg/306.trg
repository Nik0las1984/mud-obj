#30600
����� � ������� � ������-�����~
0 q 100
~
if %actor.religion% == 1
  wait 1       
  ����� ����� ���������� �� ����� ����������� ���������!
else
  wait 1       
  ����� ��������� ����� �� �����! ��������!
  mecho _����� ������� ���������� ��� ����� ���.
  wait 5s       
  eval nesluh %random.pc%
  ����� ��� �� ���� �� ��������%nesluh.u%! ������ ����!
  ���� ���
  kill %nesluh.name%
end
~
#30601
����� � ������� �������~
0 r 100
~
eval victim %random.pc%
msend       %victim% _������ ������ ����������� �� ������� � �����, ������� ���.
mechoaround %victim% _������ ������ ����������� �� ������� � �����, ������� %victim.rname%. 
wait 1s
��
say ��! �� ����� ��� �����?
wait 1s
say �����... �� ����� ���� ��������� ������!!!
���
mkill %victim%
~
#30602
����� � ������� ������~
0 r 100
~
wait 1
����� ���, ��� ���� ��������� ���������!
mkill %actor% 
exec 30609 %world.room(30600)% 
mecho _��������� ������� ������� ��������� ����.
mload mob 30642
mload mob 30642
detach 30602 %self.id%
~
#30603
����� � �������~
0 q 100
~
if (%actor.religion% != 1)
  halt
end
wait 2s
�����
emot ������ ���������
wait 1s
mecho _������ ������ �������� � ��������:
mecho - ��� � ����� ���������...
wait 2
mecho - �� �������, �������, ��� ����� ���� � �����,
mecho - ���� �������� �������������, � ������� �������� �������?
mecho - �� ��� ���� ���� �����, �������, ��� ����� ������ � ���� ���������... 
emot �������� �������
~
#30604
������ ������ � ������� (���������)~
0 d 0
"� ��� ����?" "��� ���������?" ~
if (%actor.religion% != 1)
  halt
end
if %questor306%
  halt
end
makeuid questor306 %actor.id%
global questor306
if (%exist.mob(30621)%)
  calcuid riznichiy 30621 mob
  remote questor306 %riznichiy.id%
end
if (%exist.mob(30649)%)
  calcuid riznichiy2 30649 mob
  remote questor306 %riznichiy2.id%
end
wait 2s 
say �������� ���� �������� � �������...
�����
wait 2
mecho - �� ������ ���������, �� � ������ ��������.
mecho - �� ����� ���� � ����� ��� ����.
wait 1
mecho - � ������� - ���������� ������� - �������� ������ ����������� �� ������� ������!
mecho - � ��� �� ����� �� ����� ������� �����������!
wait 1s
mecho - ��� �� ����� ����? ���� ������ ��� � ������ ����� � ���� �����...
mecho - � ��� � ����� �������� ������ ���� ����� - ���� ������.
wait 3
mecho - ����, ��� ������ ���� ���� ���������, � ����� ����������.
mecho - �� � � ���� ������... ��� � ������������ �����������, �� ��� ��������.
if (%exist.mob(30614)%)
  calcuid diak 30614 mob
  attach 30605 %diak.id%
  attach 30606 %diak.id%
end
attach 30617 %self.id%
~
#30605
� ����������� (���������)~
0 q 100
~
if (%actor.religion% != 1)
  halt
end 
wait 1s
emot ��������� �� ���
say �� ������, �� �� ������� ����, %actor.name%!
say � ��� ������? ����� ����?
~
#30606
��������� �����������~
0 d 0
"���� ���" "��� ����"~
if (%actor.religion% != 1)
  halt
end
if (%actor.vnum% != -1)
  halt
end 
wait 1s
say ��... ��.. ������ �, �������� � ������� ��������.
wait 2
mecho - �� �������, ����� � ����� ��������� ����, ����� ������� � ��� �����...
mecho - � ����� � �������!
������
wait 1s
say � ��������� ����� ������ ���������� �� ���������...
say �������� ���������� ��� ������ - ����� � ������� ����
if (%exist.mob(30621)%)
  calcuid riznichiy 30621 mob
  detach 30607 %riznichiy%
  attach 30610 %riznichiy%
end
~
#30607
������ ��������� ��� ������~
0 c 1
������ �������� �������� ���������� ���������� �������~
if !%arg.contains(��������)% 
  msend %actor% _�� ������ ������ ����������� ���������... ���� ��� �������!
  mechoaround %actor% _%actor.name% ��������%actor.q% ���� ������� - ���� � ���!
  halt
end
if (%actor.vnum% != -1)
  halt
end
wait 1s
����
say ��� �� ����, ��� ��� ��?!
say �� ��� �� ����, ���� ��� �������?!!
stand 
kill %actor.name%
exec 30608 %world.room(30600)%
mecho _��������� ������� ������� ��������� ����.
mload mob 30642
mload mob 30642
detach 30607 %self.id%
~
#30608
���� ��������~
2 z 0
~
wzoneecho 30600 &Y "�� ������, ������!!!" - ������ ��������. &n
~
#30609
���� ������~
2 z 0
~
wzoneecho 30600 &Y "�� ������, ������!!!" - ������ ������ ������. &n
~
#30610
������ ���������~
0 c 1
������ �������� �������� ���������� ���������� �������~
if (%actor.religion% != 1)
  halt
end
if (%actor.vnum% != -1)
  halt
end
if !%arg.contains(��������)% 
  msend %actor% _�� ������ ������ ����������� ���������... ���� ��� �������!
  mechoaround %actor% _%actor.name% ��������%actor.q% ���� ������� - ���� � ���!
  halt
end 
mforce %actor% ����� %self.name%
mforce %actor% say ��, � �����, ���-�� ������?! � ��, ������!
wait 1s
���
���
wait 2
say �����, �����... ��, � ����, ������� �������...
say �� � ��� � �� �������, ��� �ӣ
emot ����������� � ������
wait 5
say ��� ��� � �����... ����� � ��������� ������� ���������, ��� �� ������ �������.
say ��� ���� �� �����. 
mload obj 30623
give ���� %actor.name%
wait 1
say ��� �� ������� ����, ��� �� ��� ���� ������� �������
wait 10s
emot �������� �����������, ������� � ���� ���-�� ������� �� �������, � ����������� � ���� ��������
*calcuid mainrobber 30643 mob
*detach 30616 %mainrobber.id%
*attach 30616 %mainrobber.id%
detach 30610 %self.id%
~
#30611
����� ���� 306~
2 f 100
~
calcuid riznichiy 30621 mob
calcuid riznichiy2 30649 mob
calcuid igumen 30613 mob
calcuid diakon 30614 mob
calcuid razb1 30643 mob
rdelete questor306 %riznichiy.id%
rdelete questor306 %igumen.id%
rdelete kovcheg %igumen.id%
detach 30607 %riznichiy.id%
detach 30610 %riznichiy.id%
detach 30620 %riznichiy2.id%
attach 30620 %riznichiy2.id%
attach 30607 %riznichiy.id%
detach 30605 %diakon.id%
detach 30606 %diakon.id%
detach 30603 %igumen.id%
attach 30603 %igumen.id%
detach 30604 %igumen.id%
attach 30604 %igumen.id%
detach 30617 %igumen.id%
detach 30612 %razb1.id% 
attach 30612 %razb1.id% 
calcuid ushkuynik 30644 mob
wteleport %ushkuynik% 30688 
calcuid angel 30647 mob
wteleport %angel% 30688
calcuid ushkuynik 30645 mob
wteleport %ushkuynik% 30688
*calcuid ushkuynik 30646 mob
*wteleport %ushkuynik% 30688
wteleport %riznichiy% 30636       
wteleport %riznichiy2% 30688       
calcuid kelar 30622 mob
detach 30602 %kelar.id%
attach 30602 %kelar.id%
rdelete prikaz %igumen.id%
~
#30612
����� � ������ ����������~
0 q 100
~
wait 1
say ��, ��� �� ��� ����� ��� �� � ���� ����?
say ��� �� ���, ����� �����... ������ ������ - ������ �����!
say � ��� ������� ����� �����, ��� �������� ��������! 
detach 30612 %self.id%
~
#30613
��������� ������~
1 g 100
~
if  ((%actor.vnum% != -1) || (%actor.realroom% < 30600) || (%actor.realroom% > 30699))
  osend %actor% ������ �������� ����� ������, ����������� ��� ��������� ����.
  return 0
  halt                   
end
if (%actor.affect(���������)% == 1)
  oecho ������ �������� ����������� �������, � �������� �����.
  detach 30613 %self.id%
  halt
end 
wait 1
set target %actor%
global target
if %exist.mob(30647)% 
  calcuid angel 30647 mob
  remote target %angel.id% 
  oteleport %angel% %self.room%
  exec 30614 %angel.id%
  %actor.wait(1)%
end
~
#30614
����� �������~
0 z 100
~
mecho _�������� ��� ������ ������ ����������� ������, � � ����� �� ����� �������� �����!
say �� ������%actor.g%, %target.name%! 
say ��� �� ������%actor.g% ������������ � �������!
dg_cast '���� ��' .%target.name%
dg_cast '���� ���'.%target.name%
mkill %target%
~
#30615
�������� ������~
0 f 100
~
return 0
mecho �������� ����� ������� �������� �� ���.
if ((%random.12% == 5) && (%world.curobjs(30625)% < 1)) 
  mload obj 30625
end
if %random.100% <= 15
  mload obj 595
end
~
#30616
���� ������� ����������~
0 f 100
~
mload obj 30624  
mload obj 30626
~
#30617
���� ������� �������~
0 j 100
~
if (%actor.vnum% != -1)
  halt
end
if (%actor.religion% != 1) 
  halt
end
wait 2 
switch %object.vnum%
  case 30624
    if (%actor.id% == %questor306.id%)
      say �� ����� ���!
      say ��.. ��� �������� �������... �� ���� �� ������� � ���� ��������...
      say ��� � ������ ��� � ���?
      eval kovcheg 1
      global kovcheg
    else 
      say �� ���%actor.y% �������?
      say � ���� � ������ �� ������, �� ��� �� ����� �������.
      mload obj 30628
      give ������ %actor.name%
      mpurge %object%
      detach 30617 %self.id%
    end 
    detach 30603 %self.id%
    mpurge %object%
  break
  case 30626
    if (%kovcheg% != 1)
      drop %object.name%
      halt
    end
    wait 1
    say ��-�� ��� ���... 
    say ��� �� ������ ���������!
    attach 30619 %world.mob(30621)% 
    wait 2
    say �� ��, ���������!
    say � ��-��, ������� �� ��� ���!
    mpurge %object%
  break 
  default 
    wait 1s
    set objectname %object.name%
    if %objectname.contains(���� ���������)%
      if (( %prikaz% != 1) || (%actor.id% != %questor306.id%))
        say ��� ������%actor.g% ��, %actor.name%, ����� ��������� � ��������� �������?!
        say ������!
        if !%actor.rentable%
          mkill %actor%
        else
          msend %actor% ��� �� ������������ ������ ������� ��� � �������.
          mechoaround %actor% ������ �� �������� ��������� ����� ������� � ������� %actor.rname%!
          mteleport %actor% 30654
        end
        detach 30617 %self.id%
        mpurge %object%
      else 
        wait 1
        say ��� ���, ������, ��� �����!
        say ��������, ��� ����� �� ����, �������� � ����� ���������?!
        wait 2
        say �� ��, ���� ����������!
        wait 1s
        say �� ���� ���� ��������%actor.g% �� �������.
        mpurge %object%
        exec 30618 %self.id% 
        halt
      end
    else
      say ��.. ����� ��� ���?
      give %object.name% %actor.name%
      halt
    end 
  done
~
#30618
������� � �������~
0 z 0
~
eval object1 30628 + %random.3%
eval object2 30631 + %random.3%
eval object3 30634 + %random.3%
if %world.curobjs(%object1%)% < 3 && %random.4% == 1
  mload obj %object1%
elseif %world.curobjs(%object2%)% < 3 && %random.3% == 1
  mload obj %object2%
elseif %world.curobjs(%object3%)% < 3 && %random.3% == 1
  mload obj %object3%
elseif %world.curobjs(30638)% < 3 && %random.2% == 1
  mload obj 30638
else
  %self.gold(+7000)%
  say ��� ���� �������.
  ���� 7000 ��� %actor.name%
  halt
end
wait 1
say ��� ���� �������.
���� ��� %actor.name%
~
#30619
������� ���� � �������~
0 d 0
"���� �� ����" ����� ������~
*if (%actor.id% != %questor306.id%)
*halt
*end
*����� �����������, ��� ���� � ���� ��� ���������, �� ������������ � ���������� :(
*������� � ����� ���� �� ��������.. �������� ������������  
mecho _��� ���� ��� �������� ��������� � �������� 
wait 2s
say ���� � �����? �� � �����?
mforce %actor% say � ������� ����, ������!
wait 1s
say ���? � �������.. ? �� ��� � ��� �������?
wait 4
emot ����� ������ � ���������� ��� ��������� ��� ������� ���� �� ��� ������ �������
wait 2s
emot �����, ��� ������� ����������, � ������� ������
wait 2
*follow %actor.name%
*mteleport %self% 30688
*calcuid riznichiy2 30649 mob
*mteleport %riznichiy2% 30636  
*exec 30621 %world.mob(30649)%
wait 3s
mechoaround %actor% ������ ��������� �� %actor.vname%
emot �����, ��� �������� �� �������� � ����� �� ���!        
dg cast '����' %actor.name%
kill %actor.name%
set prikaz 1  
global prikaz
calcuid igumen 30613 mob
remote prikaz %igumen.id%
detach 30619 %self.id%
~
#30620
�������� �������~
0 z 100
~
*wait 1
*if (%self.realroom% == 30619)
mechoaround %questor306% ������ ��������� �� %questor306.vname%
emot �����, ��� �������� �� �������� � ����� �� ���!        
dg_cast '����' %questor306.name%
kill %questor306.name%
eval prikaz 1  
global prikaz
remote prikaz %world.mob(30613)%
~
#30621
�������� �2 ������� �� ���������~
0 n 0
~
follow %questor306.name%
~
#30622
������ �������� 30620~
2 g 100
~
wait 1
if !(%actor.vnum% == 30649)
  halt
end
exec 30620 %actor.id%
~
#30623
������ �������� 30620~
2 g 30
~
wait 1
if !(%actor.vnum% == 30649)
  halt
end
exec 30620 %actor.id%
~
#30624
������� � ����������~
0 q 80
~
wait 1
msend %actor% _������� ������, %actor.name%!
if %self.realroom% == 30600
  msend %actor% _����� ���� �� �������� ��� �������� � ���� �� ����� ����� ����������.
else
  msend %actor% _�� �������� ��� ����� � ������� ���� �� ������ ������.
end 
~
#30625
������ � ����������~
0 m 1
~
wait 1
if %amount% < 50
  say �������� �����!
  give %amount% ��� %actor.name%
  halt
end
wait 1
msend %actor% _�� ������� � ����� � �������� �������� ������.
mechoaround %actor% _%actor.name% ����%actor.u% � ����� � �������� �������� ������.
if (%self.realroom% == 30600)
  mteleport %actor% 30282
else
  mteleport %actor% 30600
end 
mechoaround %actor% _���-�� ������� ���� �� �����.
~
#30626
������ ����~
0 f 100
~
if (%world.curobjs(214)% < 50) && (%random.100% <= 20)
  mload obj 214
end
~
$~
