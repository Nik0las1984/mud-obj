#35800
��������� ��������~
0 e 0
��� � ������ �� ���.~
wait 1
eval int %actor.int%+%actor.intadd%
if (%int% > 30)
  msend %actor% ������ ����� ������� �� ������������� ������������� ���������, �� ������ ��� ��������.
  halt
end
msend %actor% �� ��������� �������� ���������� ������ � ������������ � ��� � ���������������� �����������.
wait 1
����� .%actor.name%
mdamage %actor% 50
mkill %actor%
detach 35800 %self.id%
~
#35801
����������~
0 b 100
~
if ((%weather.sunlight% == �������) || (%weather.sunlight% == �����))
  ���� ��-��-�����!
end
~
#35802
���������� ������������~
0 q 100
~
wait 1s 
say ������ ����.
wait 2 
���
say �������� ���� ��, ���������������. ��� ���, ������, � ����� ��� ��� �����...
wait 2 
say �� �������, � ������ ���.
wait 2 
say ��� ������� �� � ����� �����?
���� .%actor.name%
say ��� �������� ��� ����� ������ �����?
attach 35803 %self.id%
attach 35804 %self.id%
detach 35802 %self.id%
~
#35803
�������� ���~
0 d 1
������ ���~
wait 1
���
say ��� �, ������ - ����� ����� ��������. ���� ���������� �� ����� ������.
mecho _- ��� ������� ������, � ���� � ��� ������� - ������ ���.
attach 35805 %self.id%
mecho _- � ��� ���� ��� �����������.
detach 35803 %self.id%
~
#35804
����� ����~
0 d 1
��� �����~
wait 1
���
say ����� ���� �� � ��� �������. ����� ���� ��� ��� ������?
���
wait 5
say �������� ���� �������, �� ��������� ���� ����� � ��� �������.
attach 35805 %self.id%
*detach 35803 %self.id%
detach 35804 %self.id%
~
#35805
������� � ���������~
0 d 1
�� ������ ��������~
wait 1
if (%actor.vnum% != -1)
  halt
end
set quester35801 %actor.id%
global quester35801
if (%exist.mob(35803)%)
  calcuid witch 35803 mob
  attach 35806 %witch.id%
  remote quester35801 %witch.id%
end
if (%exist.mob(35809)%)
  calcuid ������ 35809 mob
  remote quester35801 %������.id%
end
���
wait 1s 
say 
say ���� ��� ������ � ��� - ������, ������ � �����, ������� ������� �� ��������. 
mecho _- ���� � ����� ���� ������, ������ �������� ������. � ����� � ��� ���������, ��
mecho _- �������� ��� �������, ��� ���� ���������. � ��� � ��� �����������, � ������
mecho _- ����� ����� � ��� �������. ������, ������ ��� ���!
wait 1s 
say ��� ��� ������ ��� ��������-�� ����? ��� �������, �������, ���� � �����, �����
mecho _- �� ����� ������ ������, � ������ �� �������� ���� ������.
���
wait 1s 
say ������ � ��� ��������, ������� ������� ���, ����� ���� ���������� ������. 
mecho _- ���... ��� ����� ������, � �� ������ ��� ������ � ��� ������ ����.
����
detach 35805 %self.id%
~
#35806
��� ������������~
0 gq 100
~
wait 1s 
say ��� � ���� ��� � ������!
��� .%actor.name%
wait 2s 
����
say ����� ���������?
���� .%actor.name%
attach 35807 %self.id%
detach 35806 %self.id%
~
#35807
������� � ���� � �������~
0 d 0
����� ����� ��������� ���~
if (%actor.id% != %quester35801%)
  halt
end
if !%speech.contains(������)%
  wait 1
  say ����-���� ����?
  halt
end
wait 1s 
say ��� ���� ���� ������ �������?
������
say ����������� � ��� ������ ������, ��� ������� � ����.
����
wait 1s 
say � ���� ��� ������� ��������?
����
say ����� ������� ��� �� ���� ������?
���
wait 1s 
����� ��� ��� �� ��� ������� ������?
����� ����� ��� ������ �� � ���� ����� � ��������, ��� ������� ���� ��������, �� ���������...
����
����� �� ������������.
wait 1s
����� �� ��� ������ ��� �� - ����� ��� ����� �����������. ����� ������� ������.
����� ������� ���, ��� ���������� ��� ����� �� ������ ������.
attach 35808 %self.id%
detach 35807 %self.id%
~
#35808
����������� � ����~
0 d 1
�� ������~
wait 1
���
say ���. �� ��� ���� ����� - ������ ����� �������.
mecho ������� ������, �������� ������ � ���� �������.
���
��� ��������� ����-�� ������.
calcuid swampghost 35809 mob
attach 35809 %swampghost.id%
remote quester35801 %swampghost.id%
detach 35808 %self.id%
~
#35809
������� � ��������~
0 d 0
����� ����� ��������� ���~
wait 1
if (%actor.id% != %quester35801%)
  halt
end
if !%speech.contains(����)%
  say ���� ������? ���� �������?!
  say ���������� ��-��������, ���� ������ �� ������ �� �����!
  ���
  halt
end
wait 1
msend %actor% �� ����������� �� ������� ������� ���������� �����.
wait 2s 
���
wait 3s 
say ������ �� ����, � ���� �� - �� ������.
���
wait 3s 
say ����� ���... ��������� �� ��� ������ ��������. 
mecho  - ����� � ������� - ����� �� � ���-��, ��� ���� �����, ��� ��� ����...
if (%world.curmobs(35814)%>0)
  calcuid waterghost 35814 mob
  detach 35818 %waterghost.id%
  attach 35810 %waterghost.id%
  attach 35811 %waterghost.id%
  remote quester35801 %waterghost.id%
end
detach 35809 %self.id%
~
#35810
���� ����� ��������~
0 f 100
~
mload obj 35811
if ((%world.curobjs(35817)% < 4) && (%random.100% < 16))
  mload obj 35817
end
~
#35811
������� �������~
0 q 100
~
if (%actor.id% != %quester35801%)
  halt
end
wait 1
emot ��������� ���������.
wait 2s
� �� �� �������! 
���
� �� ������ ���.
������
���
� �������� ����� ��� �����, ���� ���, ��� � ����� ���������. 
say �� ���� ���������.
���
� ���� ����� ��� ������. ��� ��, �����, ����� �����.
calcuid swampghost 35809 mob
attach 35812 %swampghost.id%
attach 35813 %swampghost.id%
detach 35811 %self.id%
attach 35812 %waterghost.id%
~
#35812
���� ����� ���������~
0 f 0
~
mload obj 35816 
mload obj 35812
if ((%world.curobjs(35820)% < 4) && (%random.100% < 21))
  mload obj 35821
  mload obj 35816 
end
~
#35813
����� ����� �������� � ������~
0 q 100
~
wait 1
if !%exist.mob(35814)%
  halt
end
foreach human %self.pc%
  if (%human.id% == %quester35801%)
    ��� �������� ��� � ������ �� ���.
    � ������ �, �� ���� �� ��������. 
    � �������� ������, ��� ������� ���� - ������ ������� ������ - ������ ���.
    � ������� ���� �������� - ���, � ������� ������������ - ���.
    ��� 
    ���
    mkill %actor%
    halt
  end
done
~
#35814
���� � �������� � ����~
2 e 100
~
wait 1
wecho ��� �� �������, ���������, ���� �����.
calcuid dom 35804 mob
calcuid cot 35824 mob
wecho ������, ��� ����� �� ������ �� ������, �������� ��� �� ��������� ������, �� �����.
wecho ������ �� � ������.
wpurge %dom%
wpurge %cot%
wat 35881 wload mob 35840
detach 35814 %self.id%
~
#35815
������ ����� ��������-�������~
0 j 100
~
wait 1
if (%object.vnum% != 35811)
  ���� ���
  halt
end
wait 1
mpurge %object%
wait 1s
emot ������� ������ �������� �� ������.
say ��� � ������. 
wait 1s
if (%actor.id% != %quester35801%)
  say ������������� �� ������.
  ����
  detach 35815 %self.id%
  halt
end
say ��� ���� �������
%self.gold(+5000)%
���� 5000 ��� .%actor.name%
*���������� ������ � ���� �����������
if (%world.curmobs(35800)%>0)
  calcuid krest1 35800 mob
  mechoaround %krest1% ���-�� ���������, ���������� � %krest1.name% �������� �������%krest1.u% �� �����.
  mechoaround %krest1% ��� ����������, ��� ���� ���������� ����������� ������� �� ������.
  eval damage %krest1.hitp%+11
  mdamage %krest1% %damage%
end
if (%world.curmobs(35836)%>0)
  calcuid krest1 35836 mob
  mechoaround %krest1% ���-�� ���������, ���������� � %krest1.name% �������� �������%krest1.u% �� �����.
  mechoaround %krest1% ��� ����������, ��� ���� ���������� ����������� ������� �� ������.
  eval damage %krest1.hitp%+11
  mdamage %krest1% %damage%
end
if (%world.curmobs(35837)%>0)
  calcuid krest1 35837 mob
  mechoaround %krest1% ���-�� ���������, ���������� � %krest1.name% �������� �������%krest1.u% �� �����.
  mechoaround %krest1% ��� ����������, ��� ���� ���������� ����������� ������� �� ������.
  eval damage %krest1.hitp%+11
  mdamage %krest1% %damage%
end
mat 35826 mload obj 35812
~
#35816
������ ����� �������-�������~
0 j 100
~
wait 1
if (%object.vnum% != 35816)
  ���� ���
  halt
end
wait 1
mpurge %object%
wait 1s
emot ������� ������ ������� �� ������.
say ��� � ������. 
wait 1s
if (%actor.id% != %quester35801%)
  say ������������� �� ������.
  ����
  detach 35816 %self.id%
  halt
end
say ��� ���� �������
%self.gold(+5000)%
���� 5000 ��� .%actor.name%
~
#35817
����� �����~
0 f 100
~
if ((%world.curobjs(35814)% < 4) && (%random.100% < 21))
  mload obj 35814
end
~
#35818
����� ��������~
0 f 100
~
if ((%world.curobjs(35817)% < 4) && (%random.100% < 25))
  mload obj 35817
end
~
#35819
����� ��������~
0 f 100
~
if ((%world.curobjs(35818)% < 4) && (%random.100% < 21))
  mload obj 35818
end
~
#35820
����� �������� �����~
0 f 100
~
if ((%world.curobjs(35819)% < 4) && (%random.100% < 16))
  mload obj 35819
end
~
#35821
����� ���������~
0 f 100
~
if ((%world.curobjs(35820)% < 4) && (%random.100% < 21))
  mload obj 35821
end
~
#35822
����� ��������� ��� �������~
0 f 100
~
if ((%world.curobjs(35821)% < 4) && (%random.100% < 16))
  mload obj 35821
end
~
#35823
������ ������������~
0 gq 100
~
��� .%actor.name%
��� ��� ��������, ��� �� � ��� ���������?
��� �� �� ��� �����?
��� .%actor.name%
wait 2s 
��� ����������� � ������ � ������ ��������� �� ���
detach 35823 %self.id%
~
#35824
����� ��������~
0 f 100
~
if ((%world.curobjs(35820)% < 4) && (%random.100% < 25))
  mload obj 35820
end
~
$~
