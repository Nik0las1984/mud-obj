#58300
�������� ���� ������� 58304~
2 c 100
����~
charuid char ������
eval temp %char.dispel%
~
#58301
�������� ���� ������� 58300~
1 c 2
���������~
%echo% 1
~
#58302
�������� ���� ���� 58300~
0 j 100
~
%echo% 0 %object.val0%
%echo% 1 %object.val1%
%echo% 2 %object.val2%
%echo% 3 %object.val3%
~
#58303
�������� ��� (�����)~
1 ab 100
~
switch %world.curmobs(58301)%
  case 0
    %load% mob 58301
    %echo% _������� �������� ��� �������� ����. 
    %echo% _������� �������� ��� ������� �� ���� ������. 
  break
  case 1
    calcuid doggy 58301 mob
    if (%self.room% != %doggy.realroom%)
      %echoaround% %doggy% _������� �������� ��� ����� �������������.
      %echoaround% %doggy% _������� �������� ��� ������� ������� � ����-�� ������. 
      %purge% %doggy%
      %load% mob 58301
      %echo% _������� �������� ��� �������� ����. 
      %echo% _������� �������� ��� ������� �� ���� ������. 
    else
      switch %random.80%
        case 1
          %echo% _������� �������� ��� ��� � ������� ����� �� ����.
          %echo% _������� �������� ��� ������� � ������� �������.
        break
        case 2
          eval rndchar %random.pc%
          if (%rndchar.canbeseen%)
            %send% %rndchar% _������� �������� ��� ���������� �� ���!
            %echoaround% %rndchar% _������� �������� ��� ���������� �� %rndchar.vname%.
            %send% %rndchar% _������� ��� �� �������, ��������� �������� ��� �������� ��� ���������.
            %echoaround% %rndchar% _������� %rndchar.vname% �� �������, ��������� �������� ��� ������ � ��������.
            %echoaround% %rndchar% _%rndchar.name% ����%rndchar.q% ������� ���������.
          end
        break
        case 3
          %echo% _������� �������� ��� �������� ������-�� ������� ����� � ���� �����.
          %echo% _������� �������� ��� ����� �������� � ���� �������� '�������'.
          %echo% _������ ������������, ��� �������� �������� ������� � ������.
        break
        case 4
          %echo% _������� �������� ��� ����� ������ ���� �� �����, ��� �� �� ������ ��� ���.
        break
        default
        break
      done
    end
  break
  default
    while (%world.curmobs(58301)% > 0)
      calcuid doggy 58301 mob
      %echoaround% %doggy% _������� �������� ��� ����� �������������. 
      %echoaround% %doggy% _������� �������� ��� �������� � ����-�� ������. 
      %purge% %doggy%
    done
  break
done
~
#58304
���-���� ��� (�����)~
1 c 1
�����~
if (%arg.contains(���)%)
  attach 58303 %self.id%
  %echo% _������ ������ ����-�� ������������� �������.
  wait 1s
  %load% mob 58301
  %echo% _������� �������� ��� �������� ����. 
  %echo% _������� �������� ��� ������� � ���� ������.
end
if (%arg.contains(����)%)
  detach 58303 %self.id%
  while (%world.curmobs(58301)% > 0)
    calcuid doggy 58301 mob
    %echoaround% %doggy% _'�����!' - ������ �������� ��������� ��� ������.
    %echoaround% %doggy% _������� �������� ��� �������� � ����-�� ������. 
    %purge% %doggy%
  done
end
~
#58305
����� (�����)~
1 j 100
~
if %actor.realroom%
  eval temp %actor.hitp(5555)% %actor.move(555)%
else
  %echo% ���-�� ���������.
end
~
#58306
���������� ������ (�����)~
1 c 1
����~
if (%arg.contains(����)%)
  if (%exist.mob(58302)%)
    calcuid kupal 58302 mob
    %echoaround% %kupal% ������ ������ �� ��������.
    %purge% %kupal%
  end
elseif (%arg.contains(����-)%)
  if (%exist.mob(58302)%)
    calcuid kupal 58302 mob
    %purge% %kupal%
  end
elseif (%arg.contains(���)%)
  if (!%exist.mob(58302)%)
    %load% mob 58302
    %echo% ������ �������� ��-�� ���������.
  end
elseif (%arg.contains(����+)%)
  if (!%exist.mob(58302)%)
    %load% mob 58302
  end
elseif (%arg.contains(����)%)
  if (%exist.mob(58302)%)
    calcuid kupal 58302 mob
    %echoaround% %kupal% ������ ������ �� ��������.
    %purge% %kupal%
  end
  %load% mob 58302
  %echo% ������ �������� ��-�� ���������.
elseif (%exist.mob(58302)%)
  calcuid kupal 58302 mob
  *%echo% �������: %arg%
  %force% %kupal% %arg%
end
~
#58307
�������� ���� (�����)~
1 c 1
��~
charuid victim %arg%
if ((!%victim.realroom%) || (!%exist.mob(58302)%))
  halt
end
calcuid klon 58302 mob
eval victinm %victim.iname%
eval victrnm %victim.rname%
while (%victinm.strlen% < 10)
  eval victinm %victinm%_
done
while (%victrnm.strlen% < 10)
  eval victrnm %victrnm%_
done
if (%victim.sex% == 1)
  eval victsex �
else
  eval victsex �
end
switch %victim.class%
  case 0
    eval victclass ����
  break
  case 1
    eval victclass ����
  break
  case 2
    eval victclass ����
  break
  case 3
    eval victclass ����
  break
  case 4
    eval victclass ����
  break
  case 5
    eval victclass ����
  break
  case 6
    eval victclass ����
  break
  case 7
    eval victclass ����
  break
  case 8
    eval victclass ����
  break
  case 9
    eval victclass ����
  break
  case 10
    eval victclass ����
  break
  case 11
    eval victclass ����
  break
  case 12
    eval victclass ����
  break
  case 13
    eval victclass ����
  break
done
if (%victim.clan% != null)
  eval victclan %victim.clan%
else
  eval victclan ���
end
if (%victclan.strlen% < 3)
  eval victclan _%victclan%
end
if (%victim.level% < 10)
  eval victlvl 0%victim.level%
else
  eval victlvl %victim.level%
end
eval victhp %victim.hitp%
eval victmhp %victim.maxhitp%
while (%victhp.strlen% < 4)
  eval victhp _%victhp%
done
while (%victmhp.strlen% < 4)
  eval victmhp _%victmhp%
done
%force% %klon% tell .������ <> %victinm%|%victrnm%|%victlvl%|%victhp%|%victmhp%|%victsex%|%victclass%|%victclan%|%victim.realroom%
~
#58308
������������ ����� (�����)~
1 c 1
���~
if ((%cmd% != ���) && (%cmd% != ����) && (%cmd% != �����))
  return 0
  halt
end
if (!%arg%)
  %echo% &K������ ������� ��������� ���� %self.vname%&K.&n
else
  eval victim %arg%
  if ((%victim.iname%) && (%victim.level%) && (%victim.vnum% == -1))
    if (%victim.realroom% == %self.room%)
      %send% %victim% &K������ ������� ��������� ���� %self.vname%&K ����� ����.&n
      %echoaround% %victim% &K������ ������� ��������� ���� %self.vname%&K ����� %victim.tname%.
    end
  end
end
~
#58309
������������ ������-������-����� (�����)~
1 c 1
���~
if (%cmd% != ���)
  return 0
  halt
end
if (%arg.words% < 3)
  %send% %actor% �������� ����������, �������.
  halt
end
switch %arg.words(1)%
  case -����������
    set swch clear
    set type spell
  break
  case +����������
    set swch set
    set type spell
  break
  case -�����������
    set swch clear
    set type feat
  break
  case +�����������
    set swch set
    set type feat
  break
  case -������
    set swch clear
    set type skill
  break
  case +������
    set swch set
    set type skill
  break
  default
    %send% %actor% ���-�� ����� ����������, ���� +-����������, +-������ ��� +-�����������.
    halt
  break
done
eval vict %arg.words(2)%
if (%vict.vnum% != -1)
  %send% %actor% ���� �� �������, ����� ������ � ���� � ���� ������������.
  halt
end
%send% %actor% �������� %swch% %type% %arg.words(3)% ��� %vict.rname%.
%echoaround% %actor% %actor.iname% ������� �����.
%send% %vict.id% ������ �� ����� ������ ������������.
%echoaround% %vict.id% ������ %vict.rname% �� ��� ������� � ������������� �����.
o%type%turn %vict.id% %arg.words(3)% %swch%
~
#58310
���� ����������� ����~
0 c 100
���~
���� .%actor.name%
dg_affect ����� ��������� ���������_����� 1 10000
~
#58311
(m58310) ������~
0 b 30
~
*(m58310) ������ : Mobiles : Random : 20
if %hero.name%
  halt
end
switch %random.5%
  case 1
    say ...��� ��...
  break
  case 2
    say ...��� �� ��� ����������...
  break
  case 3
    say ...��� ���� ���������...
  break
  case 4
    say ...������ �����...
  break
  case 5
    say ...�� ��� �...
  break
done
wait 1s
switch %random.5%
  case 1
    say ...������� ��������...
  break
  case 2
    say ...����� �� ���...
  break
  case 3
    say ...� ������ �� ������...
  break
  case 4
    say ...������ �� ����� ���...
  break
  case 5
    say ...���� �������...
  break
done
wait 1s
switch %random.5%
  case 1
    say ...���� ����...
  break
  case 2
    say ...����� ������...
  break
  case 3
    say ...��� ������� �� ����...
  break
  case 4
    say ...������� ������, ����...
  break
  case 5
    say ...��� �� �������� ����...
  break
done
~
#58312
(m58310) ������� �� ����~
0 d 0
������ ��������~
*(m58310) ������� �� ���� : Mobiles : Speech : 0 : ������ ��������
if (%actor.vnum% != -1)
  halt
end
*detach 58311 %self.id%
wait 3
if (%actor.getquest(2012%znum%)% == %time.year%)
  ��� .%actor.name%
  tell %actor.name% �� ���� � ����� ������� ���� ������ ���!
  tell %actor.name% ���� �����, �� ��������� ���...
  halt
end
if (%actor.level% < 20)
  ��� .%actor.name%
  tell %actor.name% ���%actor.g% �� ��� ����� ������ ���!
  tell %actor.name% �������� ��� �������...
  halt
end
set hero %actor.id%
set quester %self.id%
set firesdown 0
set itemsup 0
global hero
global quester
global firesdown
global itemsup
set i %hero.name%
%echoaround% %actor% %self.iname% ����� ���-�� ������������ %actor.dname%...
tell %i% %ziname% ��������� � ����!
tell %i% ��������� ����� ������� ������, ��������� ������ �����,
tell %i% ������� � ����������, �� ���� - ���������, �����������,
tell %i% ���������� � �����������. ���� �� ��������� ���� ���,
tell %i% �� �������� %zdname% ���� ���������.
tell %i% ���� �������, ������� ������ ������ �� �����...
wait 3
tell %i% ������� ����� ��� ���� � ������ �� �������� ��, �����
tell %i% ��������� ��������� �����������. ����� ������� �� ���,
tell %i% ����� ������ ��� ����� ������.
attach 58321 %self.id%
exec 58321 %self.id%
calcuid here %self.realroom% room
attach 58313 %here.id%
remote znum %here.id%
remote norooms %here.id%
remote lastnum %here.id%
remote hero %here.id%
remote quester %here.id%
exec 58313 %here.id%
wait 2s
detach 58313 %here.id%
detach 58312 %self.id%
~
#58313
(t58312) ����������� �����~
2 z 100
~
*(t58312) ����������� ����� : Rooms : Auto : 100
eval amount (%lastnum%-%norooms.words%)/10
remote amount %quester.id%
set n 0
while (%n% < %amount%)
  eval tnum %random.num(%lastnum%)%-1
  if %tnum% < 10
    set tnum 0%tnum%
  end
  while %norooms.contains(%tnum%)%
    eval tnum %random.num(%lastnum%)%-1
    if %tnum% < 10
      set tnum 0%tnum%
    end
  done
  set rnum %znum%%tnum%
  set norooms %norooms% %tnum%
  eval onum 58314+%random.3%
  wat %rnum% wload obj %onum%
  calcuid tobj %onum% obj
  remote hero %tobj.id%
  remote quester %tobj.id%
  eval n %n%+1
  *
  set light%n% %tobj.id%
  remote light%n% %quester.id%
  *
done
unset lastnum
unset norooms
unset znum
unset hero
unset quester
detach 58313 %self.id%
~
#58314
(m58310) ���� ��������~
0 n 100
~
*(m58310) ���� �������� : Mobiles : Load : 100
wait 3
set lroom %self.realroom%
eval znum %lroom%/100
switch %znum%
  case 40
    set ziname ������ �������
    set zdname ������ �������
    set lastnum 72
    set norooms 58 59 65 66 67 68 69
  break
  case 50
    set ziname ������ �������
    set zdname ������ �������
    set lastnum 55
    set norooms 55
  break
  case 60
    set ziname ������� �������
    set zdname ������� �������
    set lastnum 54
    set norooms 50
  break
  case 70
    set ziname ������ �����
    set zdname ������� �����
    set lastnum 68
    set norooms 68
  break
  case 80
    set ziname ������� ������� ����
    set zdname ������� ������� ����
    set lastnum 89
    set norooms 89
  break
  case 90
    set ziname ������� �������� ����
    set zdname ������� �������� ����
    set lastnum 56
    set norooms 56
  break
  case 660
    set ziname ������
    set zdname �������
    set lastnum 94
    set norooms 94
  break
  case 600
    set ziname ������� ��������
    set zdname �������� ���������
    set lastnum 92
    set norooms 39 40
  break
  case 182
    set ziname ��������
    set zdname ���������
    set lastnum 76
    set norooms 16
  break
  case 636
    set ziname ��������
    set zdname ���������
    set lastnum 75
    set norooms 56 57 58 59 60 61 62 63 64 65 66 67
  break
  case 344
    set ziname �����
    set zdname ������
    set lastnum 64
    set norooms 64
  break
  case 135
    set ziname �����������
    set zdname �����������
    set lastnum 97
    set norooms 97
  break
  case 499
    set ziname �������� ����
    set zdname �����
    set lastnum 98
    set norooms 98
  break
  case 270
    set ziname �������
    set zdname �������
    set lastnum 79
    set norooms 69 71 
  break
  case 630
    set ziname �����
    set zdname ������
    set lastnum 96
    set norooms 04 05 14 15 17 19 20 21 43 44 57 62 67 68 69 70 71 78 79 80 83 84 85 86 89
  break
  case 302
    set ziname ������
    set zdname ������
    set lastnum 95
    set norooms 00 01 02 03 04 05 06 07 08 09 10 18 19 20 21 46 48 53 88 89 91
  break
  case 690
    set ziname �����
    set zdname ������
    set lastnum 99
    set norooms 00 02 06 12 14 20 42 43 47 54 55 56 57 59 60 62 86 93 97
  break
  case 770
    set ziname ������
    set zdname �������
    set lastnum 91
    set norooms 91
  break
  case 760
    set ziname �����
    set zdname ������
    set lastnum 98
    set norooms 01 29 36
  break
  case 250
    set ziname �����������
    set zdname �����������
    set lastnum 94
    set norooms 05 06 07 08 09 10 11 12 13 14 15 16 17 18 20 43 44 49 55 56 57 58 59 60 61
  break
  case 720
    set ziname ������
    set zdname �������
    set lastnum 58
    set norooms 00
  break
  case 750
    set ziname �����
    set zdname ������
    set lastnum 99
    set norooms 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 52
  break
  case 640
    set ziname �������
    set zdname �������
    set lastnum 71
    set norooms 00 43 52 58
  break
  case 350
    set ziname �����
    set zdname �����
    set lastnum 72
    set norooms 45 47 48 49 50 51 52
  break
  case 730
    set ziname ������
    set zdname ������
    set lastnum 98
    set norooms 00 01 02 14 23 26 27 28 55 63 64 65 66 67
  break
  case 851
    set ziname ������
    set zdname �������
    set lastnum 97
    set norooms 73 76 79 81 94 95
  break
  case 602
    set ziname �����
    set zdname �����
    set lastnum 97
    set norooms 16 85 87 92
  break
  case 240
    set ziname ������
    set zdname ������
    set lastnum 79
    set norooms 08 09 10
  break
  case 620
    set ziname ������
    set zdname ������
    set lastnum 95
    set norooms 54 59 73 74 76
  break
  case 324
    set ziname �����
    set zdname ������
    set lastnum 86
    set norooms 36 70 75 76
  break
  case 680
    set ziname ��������
    set zdname ���������
    set lastnum 95
    set norooms 01 12 44 82 92
  break
  default
    log ������-�� ���������� � %lroom%!
    detach 58314 %self%
  break
done
global ziname
global zdname
global znum
global lroom
global lastnum
global norooms
attach 58311 %self%
attach 58312 %self%
detach 58314 %self%
~
#58315
(o58315-17) ����� ����~
1 c 4
��������~
*(o58315-17) ����� ���� : Objects : Command : 4 : ��������
if (%actor% != %hero%)
  %send% %actor% ����� ��� ���?
  halt
end
if (!%arg.contains(�����)% && !%arg.contains(������)%)
  %send% %actor% ���� ������-�� �����, �������?
  halt
end
if %arg.contains(������)%
  %send% %actor% �������-�� ��� ����� ��� ���� ��������!
  log %actor.iname% ������� ������ �������! :)
  halt
end
if !%self.effect(�����)%
  %send% %actor% ������ �� ������! ��� �� �� ���...
  halt
end
eval temp %self.effect(-�����)%
%send% %actor% ���������� �����, �� �������� ��������� ����� %self.rname%.
%echoaround% %actor% ������ ���� �������� ������-�������, %actor.iname% �������%actor.g% ����� %self.rname%.
eval firesdown %quester.global(firesdown)%+1
remote firesdown %quester.id%
if (%firesdown% >= %quester.global(amount)%)
  %echo% %self.iname% ����� ��������%self.g% � �������%self.u% � ������� ������ ����.
  %send% %actor% ����� ��� �������� ����������� � ���, ����� ������ ������.
  %echoaround% %actor% ����� ��� �������� ����������� � %actor.dname%, ��%actor.g% ����%actor.g% ����������.
  %load% mob 58312
  calcuid cloud 58312 mob
  remote quester %cloud.id%
  remote cloud %quester.id%
  %force% %cloud.id% mkill %actor%
else
  wait 1s
  %echo% %self.iname% ����� ��������%self.g% � �������%self.u% � ������� ������ ����.
end
%purge% %self%
~
#58316
(m58311-12) ������ ������~
0 f 100
~
*(m58311-12) ������ ������ : Mobiles : Death : 100
switch %self.vnum%
  case 58312
    %echo% ������������ ������ ������ ���� ����� ������ ����� ����� ���������!
    %load% mob 58311
    calcuid thing 58311 mob
    remote quester %thing.id%
    %echo% %thing.iname% ��������: '��������!'
    %force% %thing% mkill %actor%
  break
  case 58311
    attach 58317 %quester.id%
  break
  default
    halt
  break
done
~
#58317
(m58310) ����� � �������~
0 q 100
~
*(m58310) ����� � ������� : Mobiles : Great PC : 100
if (%actor% != %hero%)
  halt
end
wait 3
���� .%actor.name%
tell %hero.name% � ��������, ��� ������ ������ ��� �� �����������
tell %hero.name% ������ �� �������%actor.g% ��� ���� %zdname%...
tell %hero.name% �� ���� ����� ��� ����� ��� ����! ������ �����
tell %hero.name% ������ �����, ��������� �����.
tell %hero.name% ��� ��� �������, ��� ���� �����, ������� �������,
tell %hero.name% ����� ���������� �� ������� � �������� ��Σ�.
tell %hero.name% �����-�� ���������� ��� ����� �����������: �����
tell %hero.name% ������� � �����, ���� ����� ������� � �������
tell %hero.name% ������. �� � ���� ����������, ������� ��!
calcuid here %self.realroom% room
attach 58318 %here.id%
remote znum %here.id%
remote norooms %here.id%
remote lastnum %here.id%
remote hero %here.id%
remote quester %here.id%
exec 58318 %here.id%
wait 2s
detach 58318 %here.id%
detach 58317 %self.id%
~
#58318
(t58317) ������������ �����~
2 z 100
~
*(t58317) ������������ ����� : Rooms : Auto : 100
set list 58310 58311 58312 58312 58313 58314
set i 1
while (%i% <= 6)
  set vnum %list.words(%i%)%
  eval tnum %random.num(%lastnum%)%-1
  if %tnum% < 10
    set tnum 0%tnum%
  end
  while %norooms.contains(%tnum%)%
    eval tnum %random.num(%lastnum%)%-1
    if %tnum% < 10
      set tnum 0%tnum%
    end
  done
  set rnum %znum%%tnum%
  set norooms %norooms% %tnum%
  wat %rnum% wload obj %vnum%
  calcuid tobj %vnum% obj
  remote hero %tobj.id%
  remote quester %tobj.id%
  *
  set item%i% %tobj.id%
  remote item%i% %quester.id%
  *
  eval i %i%+1
done
unset lastnum
unset norooms
unset znum
unset hero
unset quester
detach 58318 %self.id%
~
#58319
(o58310-14) ����� ����~
1 g 100
~
*(o58310-14) ����� ���� : Objects : Get : 100
if (%actor% != %hero%)
  if (%self.sex% == 2)
    %send% %actor% �������� �������������� �� %self.vname%, �� ������ �������� ţ �����.
  else 
    %send% %actor% �������� �������������� �� %self.vname%, �� ������ �������� ��� �����.
  end
  return 0
  halt
end
return 1
eval itemsup %quester.global(itemsup)%+1
set item%itemsup% %self.id%
remote itemsup %quester.id%
if (%itemsup% >= 6)
  %send% %actor% '����� ������%actor.g% �ӣ ��� ���� ����,' - ���������� ���.
  attach 58320 %quester.id%
else
  %send% %actor% ����� �� ������, �� ������ �������: '����, �������, �����, ������, �����.'
end
~
#58320
(m58310) ����� ������~
0 q 100
~
*(m58310) ����� ������ : Mobiles : Great PC : 100
if ((%actor% != %hero%) || (%itemsup% < 6))
  halt
end
wait 3
detach 58321 %self.id%
tell %hero.name% ������� ��!
%send% %hero% %self.iname% ����� ��������� ����������� �����������, ����������� ����.
while (%itemsup% > 0)
  set tobj %self.global(item%itemsup%)%
  %purge% %tobj.id%
  eval itemsup %itemsup%-1
done
wait 3
%send% %hero% �������, ������������ ������, %self.iname% ����� �������� �����-�� ������ �����������.
%echoaround% %hero% %self.iname% ����� ��������� �������� �� ������ ������.
%send% %hero% ����� ����� ������, ���� ����� ��������, � ��� ����� ��� - &Y���������&n!!!
%echoaround% %hero% %self.iname% �������� &W������ �����&n!
%send% %hero% %self.iname% ������ ��-�� ������ ��������� ������ ����� � �������� ţ.
%echoaround% %hero% %self.iname% �������� ��������� ������ �����.
wait 3
tell %hero.name% ��� � ���������� ����� ����� �������, ������� ����, %hero.iname%!
%load% obj 10630
give all .%hero.name%
drop all
eval temp %hero.setquest(2012%znum% %time.year%)%
if (%self.realroom% != %lroom%)
  %echo% %self.iname% �������� ���� ������.
  %teleport% %self% %lroom%
  %echo% %self.iname% �������� ������ ���� ���.
end
unset hero
unset quester
unset firesdown
unset itemsup
set n 1
while (%n% <= 10)
  unset item%n%
  unset light%n%
  eval n %n%+1
done
unset cloud
unset thing
wait 120s
attach 58311 %self.id%
attach 58312 %self.id%
detach 58320 %self.id%
~
#58321
(m58310) �������� �������� �����~
0 z 100
~
*(m58310) �������� �������� ����� : Mobiles : Auto : 100
tell %hero.name% ������ ����������!
tell %hero.name% ��� ����� ���� ����� ��� �������� ������ ������� ���������
wait 600s
tell %hero.name% ���� ����� �����!
if (%self.realroom% != %lroom%)
  %echo% %self.iname% �������� ���� ������.
  %teleport% %self% %lroom%
  %echo% %self.iname% �������� ������ ���� ���.
end
unset hero
unset quester
unset firesdown
unset itemsup
set n 1
while (%n% <= 10)
  set titem %self.global(item%n%)%
  set tlight %self.global(light%n%)%
  unset item%n%
  unset light%n%
  if %titem.name%
    %purge% %titem%
  end
  if %tlight.name%
    %purge% %tlight%
  end
  eval n %n%+1
done
if (%cloud.name%)
  %force% %cloud% mecho %cloud.iname% ����� ����-�� �������.
  %purge% %cloud%
end
if (%thing.name%)
  %force% %thing% mecho %thing.iname% ����� ����-�� �������.
  %purge% %thing%
end
unset cloud
unset thing
attach 58311 %self.id%
attach 58312 %self.id%
detach 58317 %self.id%
detach 58320 %self.id%
detach 58321 %self.id%
~
$~
