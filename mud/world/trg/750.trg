#75000
�������� �������� ��������~
0 g 100
~
switch %actor.sex%
  case 1
    ��� %actor.iname%
    wait 10
    if %actor.eq(6)%
      � ��� � ��, %actor.iname%, ��� �������� �����...
      � � ����� ���� � ����� �������!
      � ����� �� ��������� - ��� ���� ���� ���������.
      if %direction% == west
        wait 1
        msend %actor% ��������� ������� ��������, �� �������� ����.
        mechoaround %actor% ��������� ������� ��������, ~~%actor.iname% ������� ����.
        mteleport %actor% 75044
        mechoaround %actor% ~~%actor.iname% ����� �� �����, ���������.
      end
    end
  break
  case 2
    ��� %actor.iname%
    wait 10
    if !%actor.eq(6)%
      � ��� � ��, %actor.iname%, ��� �������� �����...
      � � ����� ���� � ����������� �������� �������!
      � ����� �� ��������� - ��� ���� ���� ���������.
      if %direction% == west
        wait 1
        msend %actor% ��������� ������� ��������, �� �������� ����.
        mechoaround %actor% ��������� ������� ��������, %actor.iname% �������� ����.
        mteleport %actor% 75044
        mechoaround %actor% %actor.iname% ����� �� �����, ���������.
      end
    end
  break
  default
    ��� %actor.name%
    wait 10
    :������� ����������
  done
~
#75001
����� �������� ��������~
0 g 100
~
switch %actor.sex%
  case 1
    ��� %actor.iname%
    wait 1
    if %actor.eq(6)%
      � ��� � ��, %actor.iname%, ��� �������� �����...
      � � ����� ���� � ����� �������!
      � ����� �� ��������� - ��� ���� ���� ���������.
      if %direction% == south
        wait 1
        msend %actor% ��������� ������� ��������, �� �������� ����.
        mechoaround %actor% ��������� ������� ��������, ~~%actor.iname% ������� ����.
        mteleport %actor% 75046
        mechoaround %actor% ~~%actor.iname% ����� �� �����, ���������.
      end
    end
  break
  case 2
    ��� %actor.iname%
    wait 1
    if !%actor.eq(6)%
      � ��� � ��, %actor.iname%, ��� �������� �����...
      � � ����� ���� � ����������� �������� �������!
      � ����� �� ��������� - ��� ���� ���� ���������.
      if %direction% == south
        wait 1
        msend %actor% ��������� ������� ��������, �� �������� ����.
        mechoaround %actor% ��������� ������� ��������, %actor.iname% �������� ����.
        mteleport %actor% 75046
        mechoaround %actor% %actor.iname% ����� �� �����, ���������.
      end
    end
  break
  default
    ��� %actor.name%
    wait 1
    :������� ����������
  done
~
#75002
������� �����~
1 c 3
������~
if %arg% != �������
  osend %actor% ��� ��� �� ������ ���������?
else                  
  osend %actor% �� ������� �������. ���-����!
  oechoaround %actor%  %actor.iname% � ��������� ������%actor.g% �������.
  eval lizalki %lizalki%-1 
  global lizalki
  if %lizalki% == 0
    osend %actor% �� ����� ������� � �� ������� ��������� ������ �������.
    oechoaround %actor%  %actor.iname% ����%actor.g% ������� � �� ������� ��������%actor.g% ������ �������.
    oload obj 75009
    opurge %self%
  end
end
~
#75003
������� ��������~
1 n 100
~
set lizalki 6
global lizalki
~
#75004
����� ����� � �������~
1 gt 5
~
wait 1
osend %actor% _������� ����� ���������� ������ ��� ����� � ...
oechoaround %actor% ������� ����� ���������� ������ %actor.vname% ����� � ...
~
#75005
������� ������, ���� - �� ��������~
0 m 1
~
wait 1
emot ����������%self.g% ������
eval target 0
switch %amount%
  * ��������
  case 4200
    eval target 18244
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
#75006
������� ������, ���� - � �������~
0 m 1
~
wait 1
emot ����������%self.g% ������
eval target 0
switch %amount%
  * �������
  case 6100
    eval target 27031
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
#75007
������� ������, ����������� ������������~
0 q 100
~
msend %actor% _������� ���������� ���:
msend %actor% ___- ���� ��������� ���� �� ��������-�����.
msend %actor% ___- 4200 ���, � �� ���.
msend %actor% ___- � ��������� ��� � ������� ���������, ������.
msend %actor% ___- ������ ������� �� ������, ��� �� �����, ��� �� � �������
msend %actor% ___  ��� � ������������ ����� ����� �������.
~
#75008
������� ������, ����������� �����~
0 q 100
~
msend %actor%  ������� ���������� ���:
msend %actor% ___- ���� ��������� ���� � �������� �������.
msend %actor% ___- 6100 ���, � �� ���.
msend %actor% ___- � ��������� ��� �� �������� ���������, ������.
msend %actor% ___- ������ ������� �� ������, ��� �� �����, ��� �� � �������
msend %actor% _____��� � ������������ ����� ����� �������.
~
$~
