#68800
����� ������� � �������~
0 r 100
~
wait 5
msend %actor%  ����� ����������� ��������� �� ���.
msend %actor%  - ��, ��!
msend %actor%  - � ��-��, ������.
msend %actor% _- � ���� � ���� ���� ����...
msend %actor% _- ������ ������������.
msend %actor% _- �� ������� ����� �����, �����������.
msend %actor% _- ���� ����� ����� ���������� � ���� ����������.
wait 10
msend %actor% _- �� ���, ������� �������������?
~
#68801
����� ������ �����~
0 d 0
�� ������ ������ ���������~
wait 10          
detach 68800 %self.id%
set quester %actor%
global quester
msend %actor%  ����� �����������.
msend %actor% _- � ����, ��� �� �����������.
msend %actor% _- �����, ������ ������ ���� �� �����������.
wait 10
msend %actor% _- ��� ��� ������, ��� ���� ��������� �������.
msend %actor% _- � �������� ���� �������.
msend %actor% _- � ���� ���� ��������� ����, ������� ����� ����� �������.
msend %actor%  - ���� �� ��������� ��� ���, � ����� ���������� ����.
wait 10
msend %actor% _- �����, ��� ���, ��� ���� ����� �����.
msend %actor% _- ��� ��.  
detach 68801 %self.id%
~
#68802
����� ��������� ����~
0 j 100
~
wait 1
if %actor% != %quester%
  msend %actor%  - ������!
  msend %actor%  - � �� ����� ����.
  msend %actor%  - ����� �� ����� ��� ��� �����?
  msend %actor%  - ���������� ���� ������?!
  ���� %object.name%
  halt
end
if %object.vnum% != 68807
  msend %actor%  - �� ��� ����� ��� ��� �����?
  msend %actor%  - ���� �, ��-������, ������ �� ����?!
  ���� %object.name%
  halt
end
wait 1 
mpurge %object%
msend %actor%  ����� ����������� ��������� �� ���.
say ��� ���������!
mecho _- �� ������ � �� ���� ����� �����.
mecho _- ��� ���� ���� �������, �� ����� �������� ����.
switch %random.5%
  case 1
    if %world.curobjs(68808)% < 10 
      msend %actor%  - ��� ���� �������, ������� � ������ ���� � �����.
      msend %actor%  - � ������� �� ������ ����� ��������� ����, �� �������� � �������.
      msend %actor%  - ����� ��� �������� ���� �����.
      mload obj 68808    
      ���� ������ %actor.name%
    end
  break
  case 2
    if %world.curobjs(68809)% < 10
      msend %actor%  - ���, �����-�� ���� ������.
      msend %actor%  - � ��� ������� ����� ����� ����������,
      msend %actor%  - �� ����� ��� ���� �� ��������� ����.
      mload obj 68809    
      ���� ���� %actor.name%
    end
    case 3
      if %world.curobjs(68810)% < 10
        msend %actor%  - ��� ���� ��� ����.
        msend %actor%  - ��� ���� ������� ���� � ����� � ������� �������������� ���� ������ �����.
        mload obj 68810    
        ���� ���� %actor.name%
      end
    break
    default
      msend %actor%  - ���, ����� ���� ������� ���.
      msend %actor%  ����� ��� ��� ��������� ������ ���.
      msend %actor%  ��� ��������� 500 ���.
      %actor.gold(+500)%
      mechoaround %actor%  ����� ��� ��������� ����� ��� %actor.dname%.
    done
~
#68803
������������ ������~
2 e 25
~
wait 1
wecho _������ ������� ���������� � ������� ����������.
~
#68804
������� �������~
1 h 100
~
wait 10
oechoaround %actor%  %actor.iname% ���������%actor.g% �������, � ��� ������ ����� �� �����.
osend %actor% _�� ���������� ������� � ��� ������ ����� �� �����.
switch %random.2%
  case 1
    oecho _�� ������� ������ ������� � ������������ ��������.
  break
  case 2
    oecho _�� ������� ������ ������� � ������������ ����������� ������������ ����.
  break
done
~
#68805
�����~
2 f 100
~
calcuid fromob 68824 mob
attach 68800 %fromob.id%
attach 68801 %fromob.id%
calcuid fromob 68818 mob
attach 68806 %fromob.id%
attach 68807 %fromob.id%
calcuid fromob 68803 mob
attach 68809 %fromob.id%
attach 68810 %fromob.id%
~
#68806
��������� ������������~
0 r 100
~
wait 10
msend %actor%  ��������� ���������� � ���.
if %actor.sex% == 2
  msend %actor%  - ������, ���������������.
  msend %actor%  - �� ������� �� ���������� ������� ���?
  msend %actor%  - ��������� �� ������� � ����� ������?
  msend %actor%  - �� ���, �� ��������?
else
  msend %actor%  - ������, ��������������.
  msend %actor%  - �� ������� �� ���������� ������� ���?
  msend %actor%  - ��������� �� ������� � ����� ������?
  msend %actor%  - �� ���, �� ��������?
end
~
#68807
��������� ���� �������~
0 d 0
�� ������ ������~
wait 1
detach 68806 %self.id%
msend %actor%  ��������� ���������.
msend %actor% _- ��� � �������.
msend %actor% _- ��� ���� �������.  
mload obj 68817
���� ��� %actor.iname%
msend %actor% _- ������ ��� ������ � ��� �������.
msend %actor% _- �� �� ���� � �������� �� ������.
msend %actor% _- � ����������!
detach 68807 %self.id%
~
#68808
����� ��������� ������� � ���� ������~
0 j 100
~
if %object.iname% == ��������� �������
  wait 1
  mpurge %object%
  msend %actor%  ������� ����� ������.
  msend %actor% _- �������!
  msend %actor% _- ��� ��� �������.
  msend %actor%  - � �� ����� ������, ��� ���� ������ ���� ������ �� ������ ����.
  msend %actor% _- ������� ���� �� ������.
  wait 6
  msend %actor% _����� ��������� � ������ ���� � ��� ��� �������� ������.
  msend %actor% _- �� ��������� ����� ���� ������.
  msend %actor% _- ��� ��� ���������� - ������ ����.
  mechoaround %actor%  ����� ��������� � ������ ���� � ��� %actor.dname% �������� ������.
  mload obj 68813
  ���� ��� .%actor.iname%
else  
  wait 5
  msend %actor% _- ��. ��� ��� �� �����.
  msend %actor% _- ������� ������ ��� ����!
  ���� %object.iname% .%actor.iname%
end
~
#68809
������� ������������~
0 r 100
~
wait 10
msend %actor%  ������� ���������� � ���.
if %actor.sex% == 2
  msend %actor%  - ������ ����, ���������.
else
  msend %actor%  - ������ ����, ��������.
end
msend %actor%  - ��� ������ ����� ������� �����.
msend %actor%  - ����, �� ����� �����%actor.g% � ������.
msend %actor%  - �� ��� ��, �� ������ ��� � ��������� ������.
msend %actor%  - �������� �� �� ������� ��������?
~
#68810
������� ���� �������~
0 d 0
�� ������ ������ ���������~
wait 5 
detach 68809 %self.id%
msend %actor%  ������� ������.
msend %actor% _- ��� � �������.
msend %actor%  - �������, �������� ����� �� ������, � ������� ���� �������.
msend %actor% _- � ����� ������� � ������, ���� �� ��� ������.
msend %actor% _- �� ��� ������ �������� ������.
wait 10
msend %actor%  - ����������, ��� ��� ���-�� ����-�� ������� � ����� �������� ����.
msend %actor% _- ���� �� ������� ���, � �� ������ �� ��������.
detach 68810 %self.id%
~
#68811
������� ���� �������~
0 j 100
~
if %object.vnum% != 68818
  msend %actor%  - ��� �� ��� ����!
  msend %actor%  - ��� ��� �� �����.
  ���� %object.iname%
  halt
end
wait 1
mpurge %object%
msend %actor%  ������� �����������.
msend %actor%  - �� ��� �� ����%actor.q% ����� ���!
msend %actor%  - � � ��� � �� ��������.
msend %actor%  - � �� ����� �����, ��� ������ ���, �� �� ��������%actor.g% �������. 
wait 5
if !%exist.obj(68807)%
  msend %actor% ������� ��� ��� ��������� �����.
  msend %actor% ...�� ��� - ��� �� ����� ��� ��������� ������ ���� ������� :(
else
  �� ����
  ���� ���� %actor.iname%
  msend %actor%  - ���, �����, ��� ������ �������.
  msend %actor%  - ����� �� ������� ����.
end
~
$~
