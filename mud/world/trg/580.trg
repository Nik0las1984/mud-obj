#58000
�����~
1 ghj 100
~
wait 1
if %actor.vnum% != -1
  halt
end
if %actor.clan% == ��
  halt
end
wait 1
osend %actor% %self.iname% ��������%self.u% � ������ ����, ���� ���������� ����� ���.
wait 1
%purge% %self%
~
#58001
������ �� �����~
0 m 0
~
wait 1
��� %actor.name%
halt
switch %amount%
  case 20
    mecho ������� ������� ������.
    dg_cast '������ ���������' %actor.name%
  break
  case 30
    mecho ������� �������� ���������� �� �����.
    dg_cast '��������' %actor.name%
  break
  case 40
    mecho ������� ��������� � ���� � ���-�� �����������.
    dg_cast '�����������' %actor.name%
  break
  case 50
    mecho ������� ������� ������.
    dg_cast '������' %actor.name%
  break
  case 60
    mecho ������� ������� ������.
    dg_cast '�������������' %actor.name%
  break
  case 70
    mecho ������� ���������� ��� ���� �����.
    dg_cast '����' %actor.name%
  break
  case 80
    mecho ������� �������� ������.
    dg_cast '�����' %actor.name%
    case 350
      mecho ������� ����� � ������� ����� ���������� ������ ���������� ���� ��� ���...
      dg_cast '����' .%actor.name%
      dg_cast '��������' .%actor.name%
      dg_cast '�����������' .%actor.name%
      dg_cast '������' .%actor.name%
      dg_cast '�������' .%actor.name%
      dg_cast '����� �����' .%actor.name%
      dg_cast '�����' .%actor.name%
    break
    default
      msend %actor% ��������, �� � �� ���� ��� �� ������ �� ���� �� ��� ������.
      msend %actor% ��� ��� � ���� ������� ��� ���:
      msend %actor% _�� 20 ��� - ������� ���� �����.
      msend %actor% _�� 30 ��� - ��� ����� � �����.
      msend %actor% _�� 40 ��� - ���������� ������.
      msend %actor% _�� 50 ��� - �� ������� ����� �������.
      msend %actor% _�� 60 ��� - ���� ���� ������ ��������.
      msend %actor% _�� 70 ��� - ������� �� ������� �������.
      msend %actor% _�� 80 ��� - ������� ������,��� ����� � ����.
      msend %actor.name% �� 350 ��� - �������� ��� � �����...
    done
~
#58002
����� � �������~
0 q 0
~
wait 1
����
halt
msend %actor% ��� ����� �������� �������� ��� � ����� ����������.
msend %actor% ��� ��� � ���� ������� ��� ���:
msend %actor% _�� 20 ��� - ������� ���� �����.
msend %actor% _�� 30 ��� - ��� ����� � �����.
msend %actor% _�� 40 ��� - ���������� ������.
msend %actor% _�� 50 ��� - �� ������� ����� �������.
msend %actor% _�� 60 ��� - ���� ���� ������ ��������.
msend %actor% _�� 70 ��� - ������� �� ������� �������.
msend %actor% _�� 80 ��� - ������� ������,��� ����� � ����.
~
#58003
�������� �������~
1 c 2
������~
if %actor.clan% != ��
  osend %actor% %self.iname% ��������%self.u% � ������ ����, ���� ���������� ����� ���.
  wait 1
  opurge %self%
  halt
end
if %arg.contains(��������)%
  osend %actor% _�� ������ �������� ������ ������� ��������...
  if %world.curmobs(58017)% < 50
    oechoaround %actor% _%actor.iname% �����%actor.g% �������� ������ ������� ��������...
    oecho �������� ������� ����� ����� � ����� ���� �������� ���������� �������!
    oload mob 58017 
    oforce %actor% ����� �������
  else
    osend %actor% ...� ������ �� ���������!
    halt
  end
  wait 1
  opurge %self%
end
~
#58004
�������� �������~
0 c 1
����~
wait 1
msend %actor% _\&Y_�� ��������� ������� ������� � ��� ��������� �������...&n
mpurge %self%
~
#58005
������� ������������~
0 b 20
*~
���� \&C������������ ���� ����� �������.\&w
~
#58006
�������� �������~
0 c 1
��������~
if %actor.clan%!= ��
  eval hitpmin %actor.hitp%*3/15
  mdamage %actor% %hitpmin% 
  msend %actor% _\&R������� �� ������� ������ ��� ����� ��������...&n
  msend %actor% _\&R�������� ��������� �������� �� ������� � �������...&n
  wait 1
  mpurge %self%
else
  mechoaround %actor% _\&G%actor.iname% ����� ������� ������� � ������� ������ ������ !!!\&n
  msend %actor% _\&W������� ������ ������ ������ ��� !!!\&n
  halt
end
~
#58007
������� �������~
0 c 1
����������~
if %actor.clan%!= ��
  eval hitpmin %actor.hitp%*3/15
  mdamage %actor% %hitpmin% 
  msend %actor% _\&R������� �� ������� ������ ��� ����� ��������...
  msend %actor% _�������� ��������� �������� �� ������� � �������...\&w
  wait 1
  mpurge %self%   
else
  mechoaround %actor% _\&B%actor.iname% �������� ������� �� ����� � ��� ��������� �� �������� ������ !!!\&w
  msend %actor% _\&B������� ����� ����� ����� ����� �������� ��� �� �������������!!!\&w
  rest
  wait 1s
  ���
end
~
#58008
������� �������~
1 c 2
����������~
if %arg.contains(�������)%
  eval orelresh %random.10%
  if %orelresh% < 5 
    osend %actor% _\&C�� ���������� ������ ������� � ������._\&n
    osend %actor% _\&C�������������� ��������� ��� ��� ����� �� �����._\&n
    osend %actor% _\&G������ "�����". _\&n
    oechoaround %actor%  _\&C%actor.name% ���������%actor.g% ������ ������� � ������._\&n
    oechoaround %actor%  _\&G������� ����� �� ����� � ������ "�����"._\&n
    oechoaround %actor%  _\&Y%actor.name% ��������� �����%actor.g% ������ �� ����� ������ �������._\&n
    wait 2s
  elseif %orelresh% > 5 
    osend %actor% _\&C�� ���������� ������ ������� � ������._\&n
    osend %actor% _\&C�������������� ��������� ��� ��� ����� �� �����._\&n
    osend %actor% _\&G����� "����"._\&n
    oechoaround %actor%  _\&C%actor.name% ���������%actor.g% ������ ������� � ������._\&n
    oechoaround %actor%  _\&G������� ����� �� ����� � ����� "����"._\&n
    oechoaround %actor%  _\&Y%actor.name% ��������� �����%actor.g% ������ �� ����� ������ �������._\&n
    wait 2s
  end
end    
~
#58009
������� ������� 1~
0 c 1
�������~
mload obj 58034
���� ���� %actor.name%
wait 1
mpurge %self%
~
#58010
����������~
2 d 100
����������~
wait 1
wforce �������.������  say ������ ������
if (%actor.bank%<780)
  wforce �������.������ say ��� �� ��� ����� ������... � ��� � ���� ���������� ���?
  halt
end
wload obj 58010
wload obj 58011
wload obj 58012
wload obj 58013
wload obj 58016
wload obj 58017
wload obj 58018
wload obj 58019
wload obj 58020
wload obj 58021
wload obj 58022
wecho ������ ������ �� ��� ���� ����������...
wforce %actor.name% ����� ����
wforce %actor.name% ����� ����
wforce %actor.name% ����� �����
wforce %actor.name% ����� ����
wforce %actor.name% ����� ����
wforce %actor.name% ����� ����
wforce %actor.name% ����� ����
wforce %actor.name% ����� �����
wforce %actor.name% ����� �����
wforce %actor.name% ����� ������
wforce %actor.name% ����� �����
wforce %actor.name% ����� ����
eval buf %actor.bank(-780)%
wforce %actor.name% ����� ���
wforce %actor.name% ����� ���� ����
~
#58011
�������~
2 c 1
�������~
wechoaround %actor% \&W%actor.name% ������%actor.g% ���� � �����%actor.q%!\&w
wsend %actor.name% \&W�� ������ ��������� �������! \&w
wteleport %actor% 58043
~
#58012
������~
2 c 1
������~
wait 1
if !%actor.rentable%
  wsend %actor.name% \&R������ ������� ����� � ���� ������, � ����� ����� ������� ������.\&w
  halt
end
wechoaround %actor% \&W%actor.name% �����%actor.a% ������������ ���� � �����%actor.q%!\&w
wsend %actor.name% \&W�� ������ ������ ������� � ����� �� �����! \&w
switch %random.4%
  case 1
    wteleport %actor% 58001
    wechoaround %actor% %actor.name% ���%actor.y% �� �����.
  break
  case 2
    wteleport %actor% 58013
    wechoaround %actor% %actor.name% ���%actor.y% �� �����.
  break
  case 3
    wteleport %actor% 58036
    wechoaround %actor% %actor.name% ���%actor.y% �� �����.
  break
  case 4
    wteleport %actor% 58004
    wechoaround %actor% %actor.name% ���%actor.y% �� �����.
  break
done
~
$~
