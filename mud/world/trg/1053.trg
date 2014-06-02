#105300
����� ����~
2 f 100
~
*����� ���� | Rooms | Zone Reset | 100
%echo% &G����� ����&n
~
#105301
����������� ����������~
0 h 100
~
*����������� ���������� | Mobiles | Great PC | 100
wait 3
if (%direction% != north)
  halt
end
eval temp %self.gold(0)%
say ������������, ����� �������!
say �� ���� �������������� ��� � ������ ������ ��������� ����
say � ��������� ���� ��� ���������� ��������� ����������� ���������
say ����� ������� �� �� ����� ���������� ��� �� ����
����
wait 1s
%echo% %self.iname% �� ������� ������������.
wait 1s
say ��������-��, � �� ��� �� ����� ������� ��� �� �������?
say ������ �� ��������� ������� ���� ���� �� ����������� ����������
say ������ ��� �������� ���� ��� � �������
�����
wait 1s
������
~
#105302
�������� �� �����������~
0 d 100
*~
*�������� �� ����������� | Mobiles | Speech | 100 | *
wait 3
switch %speech%
  case ��
    case ���
      case ����
        say ��� �� �� ����� �� �������?
        say ��� ������ ���������� �, �� ������� �� �����
        �����
        say ������, ���� �� �� �����, ��������� ��� ���������
        say ��� ������ ��� - �� ���� � ������� �����
        wait 1s
        say ����� �������� �������� ������ � �������!
      break
      case ���
        case �� ���
          say ��� �� �� ����� �������?
          say ������ ��, ��������, ��� ����� ������?
          ����
          say ������ ����� ������� ������� ���� �� �����������
          say �� �� ������ ��������� ����� �����
          say ��� ����� � ����� ���� ������ �� ������
          say ���� ����� ��� ��������� �� �������� � �� ��������� ������
          wait 1s
          ���� .%actor.name% �� �� ���� ����� ��� � ���� ��� ��������
        break
        default
          say ���-��� �� �������?
          ���� .%actor.name%
          halt
        break
      done
      attach 105303 %self%
      detach 105301 %self%
      detach 105302 %self%
~
#105303
���� ��� ����������~
0 m 2
~
*���� ��� ���������� | Mobiles | Bribe | 2
wait 3
%echo% %self.iname% ��������� ������� ���� �� ����.
if (%self.gold% >= 2000)
  eval temp %self.gold(0)%
  say ��� � �����
  wait 1s
  %echo% %self.iname% ���-�� ��������� �� ��� ���������.
  calcuid strazh 105301 mob
  %force% %strazh% ������ ����, ���������� �����!
  while (%exist.mob(105301)%)
    calcuid strazh 105301 mob
    exec 105304 %strazh%
  done
else
  say �������� ���-��
  �����
  halt
end
detach 105303 %self%
~
#105304
����� ����������~
0 z 100
~
*����� ���������� | Mobiles | Auto | 100
%echo% %self.iname% ����������, �������� ������ �� ������.
mtransform 105303
wait 5s
�����
wait 5s
mtransform 105301
%echo% %self.iname% ����������, �������� ������ �� ������.
calcuid smotritel 105300 mob
attach 105301 %smotritel%
attach 105302 %smotritel%
~
#105305
����������� ���������~
0 r 100
~
*����������� ��������� | Mobiles | Great-All PC | 100
wait 5
say ������������
say ���������� �����?
say ��������, ������� ����������������� �����
say ����� ������� ��� �� �����
�����
~
#105306
���� ��� ���������~
0 m 1
~
*���� ��� ��������� | Mobiles | Bribe | 1
wait 3
if (%amount% >= 500)
  say ��! � � �� �������� ��� ���-�� ���������� �� ����� ����
  say ������ ������ ��� �� 250 ����� �� �����
  say ��������� �����, ���������, ������ ��� �����
  say ��� ���� ���-�� �������� ����� ������� � ���
  say �������� ����� ����� ���, ��� ��
  calcuid lodki 105301 obj
  exec 105307 %lodki%
  exec 105307 %lodki%
elseif (%amount% >= 250)
  say � �� ��� �������
  say ����� �� ����������� �� �������
  �����
  say �������� ��� �� �����
  calcuid lodki 105301 obj
  exec 105307 %lodki%
else
  say �������� ���-��
  �����
  ���� %amount% ��� .%actor.name%
  halt
end
%echo% %self.iname% ������ ����� � ������� �����
~
#105307
���� �����~
1 z 100
~
*���� ����� | Objects | Auto | 100
%load% obj 105300
~
#105308
��������� ���������� ��� ����~
2 g 100
~
*��������� ���������� ��� ���� | Rooms | Enter | 100
if (!%direction%)
  halt
end
wait 3
foreach victim %self.char%
  if (%victim.realroom% == %self.vnum%)
    %send% %victim% &R���������� ����� ������� ������ ��� ��� ����.&n
    %echoaround% %victim% ���������� ����� ������� ������ %victim.vname% ��� ����.
    wat 105395 %echo% ���-�� �������� ����, ���������� � ���� ���� ����.
    %teleport% %victim% 105395 horse
  end
done
~
#105309
��������� �� ����������~
2 c 0
��������� �� ����������~
*��������� �� ���������� | Rooms | Command | 0 | ��������� �� ����������
if (%actor.vnum% != -1)
  halt
end
if (%actor.move% < 30)
  %send% %actor% �� ������� ������ ����� ������� ��� !
  halt
end
%send% %actor% �� ������ ������ ������ � ������, ������� ��������� ������.
%echoaround% %actor% %actor.iname% �����%actor.g% ������ ������ � ������, ������� ��������� ������.
eval temp %actor.move(-30)%
wait 3
eval chance %random.5%
if (%chance% == 5)
  %send% %actor% ������ ������ �� ������ ����� �� �������� �� ����������.
  %echoaround% %actor% %actor.iname% ������%actor.g% �� ���� ���-�� ������.
  eval direct %random.4%
  switch %direct%
    case 1
      eval vnum 105356
      eval fro ���
    break
    case 2
      eval vnum 105360
      eval fro ������
    break
    case 3
      eval vnum 105363
      eval fro ������
    break
    case 4
      eval vnum 105358
      eval fro �������
    break
  done
  wat %vnum% %echo% %actor.iname% �������%actor.u% � ���� ����� � ����, �������� � %fro%.
  %teleport% %actor% %vnum% horse
else
  %send% %actor% ������� ��������, �� ���������� ������� �� ���.
  %echoaround% %actor% ������� ��������, %actor.iname% �������%actor.u% ������� �� ���.
end
~
#105310
����� � �����~
2 g 100
~
*����� � ����� | Rooms | Enter | 100
if (!%exist.mob(105304)%)
  wait 2s
  %load% mob 105304
else
  wait 1s
  calcuid vitya 105304 mob
  %send% %actor% %vitya.iname% � �������� �������� �� ���.
  %echoaround% %actor% %vitya.iname% � �������� �������� �� %actor.vname%.
end
~
#105311
���� ������~
0 n 100
~
*���� ������ | Mobiles | Load | 100
%echo% ������������ ���� �������� ��-�� �����, ������ ���������� �� ����.
wait 2
eval victim %random.pc%
if (!%victim%)
  %echo% ������������ ���� �������� �� ������.
  %purge% %self%
end
eval hitpts %victim.hitp%+2
����� ����� �� �����, ���������!
wait 2
%echo% ���������� �� ���� �� ���� ������� ����� ������� � ���� �������.
%send% %victim% &R������� ����� ��� ����� � ���!&n
%echoaround% %victim% ������� ����� %victim.dname% ����� � ���!
%damage% %victim% %hitpts%
wait 2
%echo% ������������ ���� �� ���������� �������, ������ ����������.
%echo% ���� ����������, �� �� ����� �������� ������ �������.
wait 2s
if (%victim.hitp% < %victim.maxhitp%)
  %echo% %self.iname% ������ %victim.dname% ������ ������.
  dg_cast '���������' %victim%
end
say �� ������, ������?
���� .%victim.iname%
say ����� �������� �� ����� ������� �����������
wait 2
say � ���� ����� ������ �����, �� ��� ���������� � ��������
say ���� �� ��� ����� ����, ����� �� ����� ������
say � ���, ���������, ������� ������, ��������� �������
�����
wait 2
say ��� ���� ��� �������� ���� �� ��������
say �� ��������� �� ���� ���� ������
say �� � � ��� ������������ �� ����������
������
attach 105312 %self.id%
~
#105312
������� ������~
0 d 100
*~
*������� ������ | Mobiles | Speech | 100 | *
say �� ������ �������
~
#105313
�������� �� ����~
2 e 40
~
*�������� �� ���� | Rooms | Enter PC | 40
wait 1
%echo% ��������� ����� ������ ��������� ��� �����. ������!
wait 5
eval amount %random.10%+2
while (%amount% > 0)
  if (%random.3% == 1)
    switch %random.3%
      case 1
        %echo% ������ ��������� � ����, ����� ��������� ������.
      break
      case 2
        %echo% ������ ��������� ������� ������, � ��� �� ������ ������.
      break
      case 3
        %echo% ������ ���������� � ����, �� ������� �� ��� ���� �������.
      break
    done
  else
    eval victim %random.char%
    if (%victim%)
      if (%victim.hitp% > %victim.maxhitp%)
        eval vdamage %victim.hitp%/12
      else
        eval vdamage %victim.maxhitp%/12
      end
      %send% %victim% &R���� �� ����� ������ � ���!&n
      %echoaround% %victim% ���� �� ����� ��������� ����� � %victim.vname%!
      %damage% %victim% %vdamage%
    else
      %echo% ������ ���� ��� ����, ������ �� �����.
    end
  end
  eval amount %amount% - 1
done
~
$~
