#42700
����� �����������~
0 q 100
~
wait 1
say  ������ ����, %actor.name%!
~
#42701
����� ����~
0 j 100
~
wait 1
switch %object.name%
  case ���� ����
    if %object.vnum% == 42707
      say  ��� �� ������ �������� ��� � ����� �������� ����, ���� ����������!
      ���� ���� �����
      msend %actor.name% ����������� ���� ��� �� ������ � ����� � ������.
      mechoaround %actor% ����������� ���� %actor.rname% �� ������ � ����� � ������.
      msend %actor.name% ����������� ������ ��� �������� �����.
      mechoaround %actor% ����������� ������ %actor.rname% �������� �����.
      msend %actor.name% ���, �� ������ ��������.
      mdamage %actor% 50
      if %actor.hitp%>0
        mteleport  %actor.name% 42708
        mechoaround %actor% %actor.rname% ���������� ���� � ������.
      end
      mecho ���, �� ������ ��������.
      ���� ����.���� �����
    else
      say  �!  ������! ����� ������ ����� ��� ��������.
      mpurge %object%
      mload obj 42707
      ���� ����.���� �����
      %self.gold(+10)%
      ���� 10 ��� .%actor.name%
      say ������, �� ������������.
    end
  break
  case ������ �������
    say  �������, %actor.name%! �� ������ ���������%actor.g%.
    %self.gold(+100)%
    ���� 100 ��� .%actor.name%
    mpurge %object%
  break
  case ���� ������
    say � ����, ����! �� ���� ����� �������� ������!
    mpurge %object%
    msend %actor.name% ����������� ������ ��� �������� �����.
    mechoaround %actor% ����������� ������ %actor.rname% �������� �����.
    mdamage %actor% 50
    if %actor.hitp%>0
      mteleport  %actor.name% 42708
      mechoaround %actor% %actor.rname% ���������� ���� � ������.
    end
  break
  case �������� ������
    ����� .%actor.name%
    say �������-�� ��� ����� �������! ��� � �������, ����� ��� �������.
    say ������� ����, %actor.name%, � ���� ����� ���������� �����.
    %self.gold(+200)%
    ���� 200 ��� .%actor.name%
    mpurge %object%
  break
  default
    say  ����� ��� ���? 
    eval getobject %object.name%
    ����� %getobject.car%.%getobject.cdr%
  break
done
~
#42702
��� ����� ����~
0 i 100
~
wait 1
if %actor.vnum% == 42702
  ����� ����
end
~
#42703
��������� ������ �����~
0 d 1
�� ������ �����~
if %actor.vnum% != -1
  halt
end
wait 1
if %self.haveobj(42701)%
  say ������, %actor.name%. ��� ���� �����.
  ���� ����� %actor.name%
  say ������ ��� ��������.
else
  say ���� ��� ���� ������ ������, %actor.name%. ������� �������.
end
~
#42704
������� ������ �����~
0 j 100
~
wait 1
switch %object.name%
  case ����� �����
    say  ������, ������, %actor.name%! ����� ��� ����� ������!
    mecho ������� ������� ����� � ������ � ��������� ������ ����� ��� ����.
    mpurge %object%
    wait 3 s
    mload obj 42702
    say  ���! ��� ��� ������, �������.
    ���� ����� .%actor.name%
    say  ������ ��� � �����.
  break
  default
    say  ����� ��� ���? 
    eval getobject %object.name%
    ����� %getobject.car%.%getobject.cdr%
  break
done
~
#42705
��������� ���� ��������~
0 j 100
~
wait 1
switch %object.vnum%
  case 42702
    say  ������, %actor.name%. �� ������ ���������%actor.g%.
    oecho ��������� ����� ���-�� �������� �� ������� �������.
    mpurge %object%
    wait 1s
    mload obj 42705
    ���� ������ .%actor.name%
    say  ������ ���� � ������������ �� ��������.
  break
  default
    say ����� ��� ���? 
    eval getobject %object.name%
    ����� %getobject.car%.%getobject.cdr%
  break
done
~
#42706
����~
2 g 50
~
wait 1
wsend %actor.name% � ������ "������" �� ���������� � ����.
wechoaround %actor% � ������ %actor.name% ���������%actor.g% � ����.
eval  newhit %actor.hitp% - 5
if %actor.hitp% > 50
  wteleport  %actor% 42704
  wat 42704 wechoaround %actor% %actor.name% ���� �� ����.
  eval buffer %actor.hitp(-50)%
else  
  wsend %actor% ���.. ������ � ��� �� �������.
  wdamage %actor% %newhit%
  wteleport  %actor% 42704
  wat 42704 wechoaround %actor% %actor.name% ���� �� ����.
end
~
#42707
���� �����~
0 q 100
~
wait 1
if (%actor.haveobj(42701)%) || (%actor.haveobj(42702)%)
  ����� %actor.name%
end
~
#42708
��������� �����~
0 q 100
~
wait 1
if %self.haveobj(42701)%
  say � ���� ���� ��� ���� ������, %actor.name%.
  say �����%actor.g% �� �� ���� ���� ������� � ���������� ��������?
end
~
#42709
������� �����~
2 e 100
~
wait 1
wecho ���-���-����!
~
#42710
���� ����� � ������~
0 f 100
~
if (%random.1000% < 250) && (%world.curobjs(401)% < 1)
  mload obj 401
end
~
$~
