#68400
���������� �� �������~
2 e 35
~
wecho _� ������� ������ ���-�� ������ �����������.
wecho _���������� ����� �����.
wecho _�� ������ ���� ������ ��� ����� ��������.
~
#68401
�������� ������~
1 c 4
�������~
if !%arg.contains(������)% 
  osend %actor.name% ���� �� ������ �������?
else
  if %actor.stradd% > 30 
    osend %actor% _�� ������ ������ ��������� � ����� ������
    osend %actor% _� ��������� ������ �� ������� ������ � �������
    osend %actor% _� ������� ��� � �������.
    oechoaround %actor% _%iactor.name% ������� ������ ������ ������ � � �����
    oechoaround %actor% _������ ������%actor.g% ��� ����� � �������.
    wait 1s
    oecho _����� �����, ��� ������ ������ ������ ������������
    oecho _� ����� �����-�� ����� �� ��� ���������� ������ ����!
    oload mob 68400 
    calcuid snike 68400 mob 
    exec 68409 %snike.id% 
    wait 1
    %purge% %self%
  else
    osend %actor.name% _�� ���������� ������� ������, �� � ��� �� ������� �� ��� ���.
    oechoaround %actor% _%actor.iname% �������%actor.u% ������� ������
    oechoaround %actor% _�� ����� � %actor.rname% ��� ����� ������� ���� ���.
  end
end
~
#68402
����� ��������� ����~
0 f 100
~
switch %random.10%
  case 1
    if %world.curobjs(68402)% < 3 
      msend %actor% _������������, �� ������� ������� � ���������� ����.
      mechoaround %actor% _%actor.name% ������%actor.g% ������� ���������� ����.
      mload obj 68402
    end
  break
  case 2
    if %world.curobjs(68403)% < 3 
      msend %actor.name% ������� �������, �� ������� �� ����� ���� �������� ������.
      mechoaround %actor.name% _������� ������������ %actor.name% ������%actor.g%
      mechoaround %actor.name% _�������� ������.
      mload obj 68403
    end
  break          
  case 3
    if %world.curobjs(68404)% < 3 
      msend %actor% _���������� ������������, �� ������� ���� �� ����� ����.
      mechoaround %actor% _����� ������� � ������ ���������%actor.g% ���� �� �����.
      mload obj 68404
    end
  break
  case 4
    if %world.curobjs(68405)% < 3 
      msend %actor% _�� ������ ������� ������������ ����� ���� � ������� ������.
      mechoaround %actor% _%actor.name% ������%actor.g% �����-�� ������.
      mload obj 68405
    end
  break 
  default
    msend %actor.name% _�� ������ ���������� ����� ����, �� � ��� �� ���� �� �����.
    mechoaround %actor% _%actor.name% ����� ���������� ����� �������� ����
    mechoaround %actor% _�� �� ����%actor.q%.
  break
done
~
#68403
������� ������� � ������ ������ �����~
2 e 25
~
wsend %actor% _��������� ������ ������������ ��� ������ �����.
wsend %actor% _� ���-��� ������ ��� ����� �����.
wsend %actor% _����� ��� ����� � ����� ������ �������� ������?
~
#68404
����� ��-�� ����� � ������ ������ �����~
2 e 45
~
switch %random.3%
  case 1
    wecho _��-�� �����, ������������� � ����� �����, ��������� �������� �����.
  break
  case 2
    wecho _������� ���������� ��������� ��-�� �����, ������������� � ����� �����..
  break
  case 3
    wecho _��-�� ����� �������� ���������� ������ �������������� ������� ������.
  break
done
~
#68405
������ ������ ������ � ������ ������ �����~
2 c 100
�����~
*������ ������ � �������� ������
if !%arg.contains(������)%
  wsend %actor% _��� �� ������ �����?
else    
  if %actor.skill(�����)% >79
    wsend %actor% _������ ������ ���� �� �������� ������ ������ � ������ �����.
    wechoaround %actor% _%actor.iname% ������ ������ ���� ������%actor.q% 
    wechoaround %actor% _������ ������ �� ������ �����.
    switch %random.10%
      case 1
        if %world.curobjs(68406)% = 0  
          wecho _���-�� ������ ����� �� �������� ���.
          wload obj 68406
        end
      break
      case 2
        if %world.curobjs(68407)% = 0  
          wecho _���-�� ������ ����� �� �������� ���.
          wload obj 68407
        end
      break 
    done 
    detach 68405 %self.id%
  else
    wsend %actor% _�� ����������� � �� ����� ���� ����� ������ ������.
    wsend %actor% _�� ��-�� ���������� ����� ������ ��������� ���� ����.
    wechoaround %actor% _���������� ������������ %actor.name% �������%actor.g% 
    wechoaround %actor% _������ ������.
    wechoaround %actor% _�� ��-�� ���������� ����� � ����� �����, � ������
    wechoaround %actor% _���������%actor.g% �� ����, �������� ����.
    wdamage %actor% 100
  end
end
~
#68406
����� ������������ ������~
0 r 100
~
wait 10
�����
mecho _�����:
mecho _- ������ ���� ��������.
mecho _- ���� ����������, �� �������� ����� ������ ���� �� ���� ������.
mecho _- ���������� ����� ����������� ���� ��������, ������ ���� �������.
���
wait 10
mecho _- ��� ���� �����, ���� ��������� ���� �� ���, ����!
mecho _- ��� ������� ����� ������ �����!
mecho _- � ����� ����� �������� ���������� ���� � �������� ����� ��� ������� �����.
wait 1s
����
mecho _- ������, ����� ����, ��� � ��� ��� �������, ��� ������� ������ �����.
mecho _- ���� �� �� �� ������� �������.
mecho _- ����� � �����, �� �� �������� ��� � ��������� �������.
������ %actor.name%
attach 68407 %self%
~
#68407
����� ���� ����� ������~
0 d 0
�� ��������� ������ ������~
detach 68406 %self.id%
set quest_monk %actor%
global quest_monk
wait 10
mecho _�����:
mecho _- ��� � ������.
mecho _- ����� ������, ��� ���� ��������� �������.
wait 10
mecho _- ��� � ������ �����, ������ ��� ����� ������ ����.
mecho _- �� ��� ��������, ���� ������ �� � ������ ��� ��������.
mecho _- ��� �������� � ���� �����������.
mecho _- �� �� ��������� � � ����.
mecho _- ����� � �� ���, �� ���� ���������� � �� �������.
wait 10
mecho _- ���� � �� ������ ��������� ���� ��������. 
mecho _- � �������� �� ������� �������. �� ���, ��� � ��������.
wait 10
mecho _- ������, ��������� �������.
detach 68407 %self.id%
end
~
#68408
����� ��������� �����~
0 r 100
~
wait 10
if (%quest_monk.id% == %actor.id%)
  if !%exist.mob(68403)%
    if !%exist.mob(68402)%
      if !%exist.mob(68401)%
        wait 10
        mecho _�����:
        mecho _- ��� �������!
        mecho _- ������ ���� ��� ���������, ��� �� ���� ������� �������%actor.g%!
        mecho _- ����� �� ���� � ������� ��� �������� ��������������.
        switch %random.10%
          case 1
            if %world.curobjs(68416)% < 2 
              mload obj 68416 
              ���� ����� %actor.name%
            end
          break
          case 2
            if %world.curobjs(68417)% < 2 
              mload obj 68417
              ���� ����� %actor.name%
            end
          break
          case 3
            if %world.curobjs(68418)% < 2 
              mload obj 68418
              ���� ����� %actor.name%
            end
          break
          default
            mload obj 68419
            ���� ����� %actor.name%
          break
        done 
        detach 68408 %self.id%
      else
        wait 10
        mecho _- ��� �� ��� ���������%actor.u% � ���������� �����?
        mecho _- �������, ��� ��� ��� ��� ������ ���� ������������� ������!
      end
    end
  end
end
~
#68409
���� �������� �� ������~
0 z 100
~
wait 10
mload obj 68478
mecho _����:
mecho _- ������!
mecho _- �� ���-�-�� �� �������-�!
mecho _- �� �-�-�� ��� ��� ���-�-�-��?!
mecho _- �������� ���� ����� ������� �� ��������!
mecho _- ���������-�-�-�-��!
����� %random.pc%
~
#68410
����� ������� ��������� ����~
0 f 100
~
switch %random.5%
  case 3
    if %world.curobjs(68420)% < 3 
      mload obj 68420
    end
  break
  case 4
    if %world.curobjs(68421)% < 3
      mload obj 68421
    end
  break
done
~
#68411
������� ����� ����� �������~
0 r 100
~
msend %actor% - ����!
msend %actor% - �� �� ������ ������ �� �����.
msend %actor% - ������ ��������� �� ����������� �����.
msend %actor% - ���� ��� ����������, �� ����� ����������� ���������!
~
#68412
����� �������� ������� ����~
0 f 100
~
mechoaround %actor%  ������� ������ ��� ����� �������� ����� � �����.
mechoaround %actor%  ���� %actor.rname% �������� ��� ���� �����������.
calcuid mag 68448 room
detach 68404 %mag.id%
~
#68413
��������� ������������ ������~
0 r 100
~
if (%quest_beggar.name% == %nil%) && (%exist.mob(68429)%)
  wait 10
  �������
  mecho _���������:
  mecho _- ������ ���� ������.
  mecho _- �� ������� ������� � ���� ����������� ������?
  mecho _- ��. ��. ������ � ���� ����� �� �����.
  wait 10
  ����
  mecho _- ����, ��� �� ���� �� ���� ����%actor.y%.
  mecho _- �����, �� ����������� �� �� ������ ���?
  ������ %actor.name%
end
~
#68414
��������� ���� �����~
0 d 0
�� ������ ������ ���������~
if (%quest_beggar.name% == %nil%) && (%exist.mob(68429)%)
  wait 10
  set quest_beggar %actor%
  global quest_beggar
  detach 68413 %self.id%
  mecho _���������:
  mecho _- �������!
  mecho _- ��� ��� ������.
  mecho _- �������, ����� � ��� ����, � ������, �� ���� ����� �������� ���.
  mecho _- � ������, ��� ���� � �� ������� ��� 500 ���, �� �� ������ ����� ����.
  mecho _- ��� ������� ������� �� ����.
  �������
  wait 10
  mecho _- �����, � ��������� ������ �� ����� ������, �� ������ ������� ����� ��������
  mecho _- � ����� ������.
  wait 10
  mecho _- ��� � �������, �� ���� �� ������� ������.
  wait 10
  mecho _- ����� � ����� ������ ��� �� ����� � �������, ��� �� ���������
  mecho _- ��������� � ����� � ���, ��� ������ �����.
  mecho _- �������� �� ������� ��� ���.
  wait 10
  mecho _- �����, ���� �� ������ ���, �� �������� ������� ������ ����� ������. 
  detach 68414 %self.id%
end
~
#68415
��������� ��������� �����~
0 q 100
~
if (!%exist.mob(68429)%) && (%quest_beggar.iname% == %actor.iname%) 
  wait 10
  mecho _���������:
  mecho _- �������!
  mecho _- ����� � �������� ���� ������ ���������� �� ������ ����� ���������!
  mecho _- ������� ������.
  wait 10
  switch %random.10%
    * ���� �������
    case 1
      if %world.curobjs(68428)% < 3
        mecho _- �����, �� ��������%actor.g% ��������� �������.
        mecho _- ���, �����. ��� ���, ��� � ���� ����.
        mload obj 68428
        ���� ����� %actor.name%
      end
    break 
    * ���� �������
    case 2
      if %world.curobjs(68429)% < 3
        mecho _- �����, �� ��������%actor.g% ��������� �������.
        mecho _- ���, �����. ��� ���, ��� � ���� ����.
        mload obj 68429
        ���� ����� %actor.name%
      end
    break
    * ���� ����
    case 3
      if %world.curobjs(68430)% < 3
        mecho _- �����, �� ��������%actor.g% ��������� �������.
        mecho _- ���, �����. ��� ���, ��� � ���� ����.
        mload obj 68430
        ���� ���� %actor.name%
      end
    break
    * ���� ��������
    default
      mecho _- �����, �� ��������%actor.g% ��������� �������.
      mecho _- ���, �����. ��� ���, ��� � ���� ����.
      mload obj 68431
      ���� �������� %actor.name%
    break 
  done 
  detach 68415 %self.id%
end
~
#68416
����� � ���� ��� ����~
1 c 100
�����~
if !%arg.contains(����)%
  osend %actor.name% ���� ����� ��?
else 
  wait 15
  osend %actor% ����� ��� ������� ����� �� ������� � ����� ����!
  osend %actor% ����� �� ������� ����� �� ����, ����� �����
  osend %actor% ����� ����� ���-�� ���������� ���������, ��������� �
  osend %actor% ������ ������� �� ���!
  osend %actor% �� ����� ���� �� ��������� �������� �� ����.
  odamage %actor% 100
  oechoaround %actor% _�� ����� ����� %actor.iname% ������%actor.g% ��� ����.
  oechoaround %actor% _����� ���� ������ �� ����, ��� ��������� ��� ����
  oechoaround %actor% _����������� �������� �����: �� �� �������, �� �������!
  oechoaround %actor% _����� ���� %actor.iname% �����%actor.g% ��������������
  oechoaround %actor% _������� � � ������ �������%actor.g% �� ����!
  oechoaround %actor% _����� �� ��� ������� �����-�� ������������ ��������! 
  oload mob 68439 
  detach 68416 %self.id%
end
~
#68417
����� ����� �������� ����~
0 n 100
~
wait 10 
mecho _����� ����:
mecho _- ���� �� �����-�-�� � ��� ���?
mecho _- �����-�-�� ���� �����?
mecho _- ��� ��� ����� ���� ����!
~
#68418
����� ������ �������� ����~
0 f 50
~
msend %actor% �� ����� ����� ����� � ����� ������ �������� ����.  
mechoaround %actor% %actor.iname% ����� ����%actor.g% ����� � ����� ����.
mload obj 68437
~
#68419
������� ������������~
0 r 100
~
wait 10
msend %actor% ������� ���������� ����� ����.
msend %actor% -������ ���� %actor.iname%.
msend %actor% -� � ������� ������� � ������� ����� � ���� ��� ������������ �����
msend %actor% -���� �� ��������� ��� ���� �����, � � �������� �� �������.
~
#68420
������� ������ ���� �� ����~
0 j 100
~
if %object.vnum% == 68437
  wait 1
  mpurge %object%
  msend %actor% - ����� ������� �����.
  msend %actor% - � �������� ���-������ �������, �� �� ���� �� ������.
  msend %actor% - ���� � ��������.
  mecho _������� �������� ������������ �����.
  wait 2s
  switch %random.9%
    case 1
      if %world.curobjs(68438)% < 3 
        msend %actor% - ���, ����� ��� � ���� ������! 
        mload obj 68438
        ���� ����� %actor.iname%
      end
    break  
    case 2
      if %world.curobjs(68439)% < 3 
        msend %actor% - ���, ����� ��� � ���� ������! 
        mload obj 68439
        ���� ����� %actor.iname%
      end
    break          
    case 3
      if %world.curobjs(68440)% < 3 
        msend %actor% - ���, ����� ��� � ���� ������! 
        mload obj 68440
        ���� ����� %actor.iname%
      end
    break
    default
      �������
      msend %actor% - ������, � �� ���� �� ���� �������.
      msend %actor% - ������ ����� ��������.
      ������� %actor.iname%
    break
  done
  halt
end  
msend %actor% - �� ��� ��� ��� �����?
msend %actor% - � � ���� �� �������.
���� %object.iname% %actor.iname%
~
#68421
������� ��������� ������� � ����~
0 r 100
~
wait 15
������� %actor.iname% 
mecho _���������:
mecho _- ���������� ������.
mecho _- ���� ����������, ���� �� ������������ ������.
mecho _- ��� ������� ������� ����.
mecho _- ������� � ����� ���� � ���� �����������!
wait 10
mecho _- ������ ���������!
mecho _- ��� �������� ��� �� ����, ��� � ����� ����� � ���� ������!
mecho _- ���� �� ��������� ���� � ���������� ���, ����� ��� ��� ���.
mecho _- ��� ���� ����� ���� ����������, ���� ������, ��� � ��� �������!
~
#68422
������� ��������� ��������� ���~
0 j 100
~
if %object.vnum% == 68432
  wait 15 
  mecho _���������:
  mecho _- ��� ������� ����.
  mecho _- �� ��������%actor.g% ��������� �������.
  switch %random.8%
    case 1
      if %world.curobjs(68434)% < 3 
        mecho _������� ��������� ���� ���� ������.
        mload obj 68434
        ���� ������ %actor.iname%  
      end
    break                      
    case 2
      if %world.curobjs(68433)% < 3 
        mecho _��������� ���� ���� ���� � �������.
        mload obj 68433
        ���� ���� %actor.iname%
      end
    break
    default
      mecho _��������� ���� ��������� ����� ��� �� ������ ������.
      mload obj 68435
      ���� ���� %actor.iname%
    break
  done 
  detach 68421 %self.id%
  detach 68422 %self.id%
else
  wait 10 
  case 1
    mecho _���������:
    mecho _- ��. ��� �� ���.
    mecho _- ��� �� ����� ����� ����, ������ ����.
    ���� %object.iname% %actor.iname%
  end
~
#68423
����� ������ ������������~
0 r 100
~
wait 15
mecho _����� ������:
mecho _- ������ ���� %actor.iname%!
mecho _- ����� �� ��� � ��� �� �������.
mecho _- � ��� � �������, �� �� ����� �� ������������.
mecho _- ���� � ��� ��� �������.
wait 20
mecho _- ������� �������� ����� ���� ������ ���������� � ������.
mecho _- �����, ��� ������ ��� �����.
mecho _- �� ���� ����� �� ���������.
wait 15
mecho _- ����� �� ������� ������ ���?
~
#68424
����� ������ ���� �����~
0 d 0
�� ������ ������ ���������~
wait 15
detach 68423 %self.id% 
set quester %actor%
global quester
mecho _����� ������:
mecho _- �� ���� ������� �����������!
mecho _- � ���� ��� � ����� ������.
wait 15
mecho _- ��� � ��� ������� �����, ������ ��������� ���� �����.
mecho _- ������� ��� ��� �� ��������� ��� ������.
mecho _- ��� ������ ���� ���� �� ����.
mecho  - �� ������ ���� ����� �� ������, �� � ���� � ����!
mecho _- �� �� ����� ��� ��� �� ����� �� ��������.
wait 15
mecho _- �� ������! ��� ������ ��������� �����!
mecho _- ��� ��, �������, ��� ��� ��������� ������!
mecho _- ����� ����������.
������
mecho _- ��������� � ���� � ���, ��� ����� ��.
mecho _- � ���� ������������� �� �������� ���� �����.
detach 68424 %self.id%
~
#68425
����� ��������� ����� � ���������������~
0 r 100
~
wait 10
if (%quester.id% == %actor.id%)
  if !%exist.mob(68435)% && !%exist.mob(68436)% && !%exist.mob(68437)% && !%exist.mob(68438)%
    mecho ����� ������:
    mecho - �� �� �������� � ����� ��������!
    mecho - ��� �� ���� ����� �������!
    ��������
    mecho - ������ � ��� ��� ����� ������!
    ���
    mecho ����� ����� ������ ����� ������� ���� ���� � ���������� � ������� ����!
    wait 2s
    mecho ����� ��������� ������ �� ���� �� ��� � ���� �������!
    mecho �� ��� ����� ������� �������� ����� � ��������� ����� �������
    mecho ���� ���� �������� �������� �������� ������� �����!
    mload mob 68434
    wait 1
    mpurge %self%
  end
end
~
#68426
��������� ��� �������~
0 n 100
~
wait 10
if (%exist.mob(68433)%)
  calcuid glava 68433 mob
  mpurge %glava%
end
mecho _��������� ���:
mecho _- �� ��� �� ������� ��� � �����������! 
mecho _- �� ���������� �� ������ �������.
mecho _- �� � ����� � �������� ��� ������!
wait 15
mecho _- ��������� ��� ����� ���������� ����!
mecho _�� ��������� ��� ��������� ������ ������.
mecho _����� �� ��� ����������, ���� ���� ��������� ��� �������� ��������.
wait 10
mecho _- ������ ���! ������ ����, ���� ���������, ��� ����!
mload mob 68418
mload mob 68418 
wait 5
���� ���
mecho _��� ���-�� �������� � ���������� ������� �� �����!
*mecho _����� ������� ���������� ������!
foreach smob %self.npc%
  if (%smob.vnum% == 68418)
    dg_cast '���� ����' %smob%
  end
done
dg_cast '���� ����'
~
#68427
���� �������~
0 n 100
~
������ ��� 
mecho _���� ���������: �� ������! � �������� ����, ���� �������!
~
#68428
������������� ��� ������������~
0 r 100
~
wait 5
msend %actor% - ������ ��������.
msend %actor% - � ������� - ������������� ���.
msend %actor% - � ���� �� ����� � ������� � ������ �������� ������
msend %actor% - ���������� ������������.
msend %actor% - ���� �� ������� ���������
msend %actor% - �� � ����� ������� ���� ��������� �������� �������.
~
#68429
������������� ��� ����� ������~
0 j 100
~
wait 1
if ((%object.vnum& >= 700) && (%object.vnum& <= 799))
  wait 1
  mpurge %object%
end
switch %object.vnum%
  case 700
    mecho _��� �����. ���� ����� �� ���� ���� ������� �� ����� � ������!
    mload obj 68450
    ���� ����� %actor.iname%
  break  
  
  case 701
    mecho _��� �����. ���� ����� ��������� ���� ���������.!
    mload obj 68447
    ���� ����� %actor.iname%
  break 
  
  case 705
    mecho _��� �����. ���� ����� �� ���� ���� ������� �� ����� � ������!
    mload obj 68450
    ���� ����� %actor.iname%
  break 
  
  case 751
    mecho _��� �����. ���� ����� ������� ���� �� ��������!
    mload obj 68448
    ���� ����� %actor.iname%
  break 
  
  case 752
    mecho _��� �����. ���� ����� ������� ����, ���� �� ���������.
    mload obj 68449
    ���� ����� %actor.iname%
  break 
  
  case 754
    mecho _��� �����. ���� ����� ������� ����.
    mload obj 68451
    ���� ����� %actor.iname%
  break  
  
  case 755
    mecho _��� �����. ���� ����� �������� ���� ������!
    mload obj 68452
    ���� ����� %actor.iname%
  break  
  
  case 756
    mecho _��� �����. ���� ����� ������� ���� � ������� ������.
    mload obj 68453
    ���� ����� %actor.iname%
  break   
  
  case 757
    mecho _��� �����. ���� ����� �������� ���� �������� �� ���� ������ �����!
    mload obj 68454
    ���� ����� %actor.iname%
  break            
  
  case 758
    mecho _��� �����. ���� ����� ������� ���� ���������� ��������.
    mload obj 68455
    ���� ����� %actor.iname%
  break  
  
  case 721
    mecho _��� �����. ���� ����� ������ � ���� ��������� �����!
    mload obj 68456
    ���� ����� %actor.iname%
  break 
  
  case 722
    mecho _��� �����. ���� ����� ������� ����, ���� �� ���������.
    mload obj 68449
    ���� ����� %actor.iname%
  break   
  
  case 724
    mecho _��� �����. ���� ����� ������� ���� �� ��������!
    mload obj 68448
    ���� ����� %actor.iname%
  break 
done
drop all
~
#68430
������ ���������� ����~
1 c 100
��������~
if (!%arg.contains(���)%) && (!%arg.contains(����)%) 
  osend %actor% _��� � ���� �� ������ �������? 
  halt
end
eval weapon %actor.eq(16)%
if !(%weapon.vnum% == 68444) 
  osend %actor% �� �� ������ ������� ��� ����!
else
  wait 10
  osend %actor% _�� � ����� �������� ���������� ��� � ������� �� ���������� �����!
  oechoaround %actor% _%actor.iname% � ����� �������%actor.g% ��� � ������� �����.
  osend %actor% _� �� �� ������� ���� ���������� ������.
  switch %random.10%
    case 1
      if %world.curobjs(68445)% < 2
        oecho _�� �������, ��� ��� ������ �����, ���-�� ������ ������.
        oload obj 68445
      end
    break
    case 2
      if %world.curobjs(68446)% < 2 
        oecho _�� �������, ��� ��� ������ �����, ���-�� ������ ������.
        oload obj 68446
      end
    break
  done          
  oload obj 68443
end
~
#68431
������� ��������� ���~
0 f 100
~
msend %actor% _���������� ������ �� �������� ���������� ���� � ������ ����!
mechoaround %actor% _%actor.iname% ������ ������ ��������� ���������� ����!
switch %random.8%
  case 1
    if %world.curobjs(68470)% < 2 
      mload obj 68470
    end
  break 
  if %world.curobjs(68471)% < 2 
    mload obj 68471
  end 
  case 3
    if %world.curobjs(68472)% < 2 
      mload obj 68472
    end
  break 
  case 4
    if %world.curobjs(68473)% < 2 
      mload obj 68473
    end
  break 
  case 5
    if %world.curobjs(68474)% < 2 
      mload obj 68474
    end
  break 
  case 6
    if %world.curobjs(68475)% < 2 
      mload obj 68475
    end
  break 
  case 7
    if %world.curobjs(68476% < 2 
      mload obj 68476
    end
  break 
  case 8
    if %world.curobjs(68477% < 2 
      mload obj 68477
    end
  break
done
~
#68432
������� �������� ����~
0 f 100
~
mecho _����� ������� ���� ����������: "� ������� ���� ������... ����."
~
#68433
������� � ������� �����~
0 r 100
~
wait 10
mecho _������ �����:
mecho _- �! �������� �����������!
mecho _- ��� ������.
mecho _- � ����� - ����� � ����� ������.
mecho _- � ����� ������ ���, ��� ����� ���������� ������� �� ���.
mecho _- �� �����, ���� ����� �� ������!
mecho _- ����� ������� ����� - ��� ���� ����� ����������� �����!
mecho _- ���� �� �������� ����, ������� ��� � � � ���� �� �����.
mecho _- �� ���, ������������?
~
#68434
������ ����� ���������� ������~
0 d 0
�� ������~
detach 68433 %self.id%
set merc_get 1
global merc_get
wait 10 
mecho _������ �����: 
mecho _- �������. ��� ������� �����, � ������.
mecho _- �� ������-������.
mecho _- �� ���� ���������, ��� ����� ������� ���������� 
mecho _- ������ �������� ���������� ���� �� ������ ������.
detach 68434 %self.id%
~
#68435
������ ����� ��������� ����~
0 j 100
~
wait 5
if %object.vnum% == 68457  
  mpurge %object%
  mecho _������ �����:
  mecho _- �-�-� ��!
  mecho _- ����� ���������� ������!
  mecho _- �� ��� � ���� ���... ����.
  mecho _- ����� 1000 ��� ������������ ����.
  wait 1s
  msend %actor% _����� �������� ���� ������ � ��� ��� 1000 ���.
  mechoaround %actor% _����� �������� ���� ������ � ��� %actor.dname% ����� ���.
  %actor.golg(+1000)%
else
  mecho _������ �����:
  mecho _- �� ��� ���� ��� ��� �����?
  mecho _- �� ���� ������� ������� �����!
  mecho _- ������� �� �������.
  ���� %object.iname% %actor.iname%
end
~
#68436
������� ����������� ����~
0 f 50
~
if %merc_get% == 1
  msend %actor% _������ ������ �� ������ � ���� �������� ���.
  mechoaround %actor% _������ ������ %actor.iname% �����%actor.g% � ���� �������� ���.
end
~
#68437
�����~
2 f 100
~
*������� ����� �� ������
calcuid fromid 68404 mob
attach 68406 %fromid.id%
attach 68406 %fromid.id%
attach 68406 %fromid.id%  
*������� ����� �� ���������
calcuid fromid 68420 mob
attach 68413 %fromid.id%
attach 68414 %fromid.id%
attach 68415 %fromid.id%
*������� ����� �� ����� ������ 
calcuid fromid 68433 mob
attach 68423 %fromid.id%
attach 68424 %fromid.id%
attach 68425 %fromid.id%
*������� �������� �� ������ �����
calcuid fromid 68428 mob
attach 68433 %fromid.id%
attach 68434 %fromid.id%
attach 68435 %fromid.id%       
*������� �������� �� ������� ����������
calcuid fromid 68427 mob
attach 68421 %fromid.id%
attach 68422 %fromid.id% 
*������� ����� � ������ ������������
calcuid fromid 68448 room
attach 68404 %fromid.id% 
*������� �������� �� ������������ ������� � ������ ������������
calcuid fromid 68447 room
attach 68405 %fromid.id% 
*������� �������� �� ���� (����� �������� ����)
calcuid fromid 68436 obj
attach 68416 %fromid.id%  
~
#68438
������� ���������� ����~
1 n 100
~
wait 5
if (%exist.obj(68442)%)
  calcuid stol 68442 obj
  opurge %stol%
end
~
#68439
������� ����� ������ ��� �������� ����������~
1 n 100
~
wait 5
if (%exist.obj(68401)%)
  calcuid tree 68401 obj
  opurge %tree%
end
~
#68440
����� ������ ��������� �����~
0 f 100
~
msend %actor% _����� ������ ���������� �����, ����� �������� ����!
mechoaround %actor% _����� ����� %actor.rname% ���� ��������� ����!
switch %random.5%
  case 1
    if %world.curobjs(68479)% < 5 
      mload obj 68479
    end
  break
  case 2
    if %world.curobjs(68480)% < 5 
      mload obj 68480
    end
  break
  default
    if %world.curobjs(68435)% < 10 
      mload obj 68435
    end
  break
done
~
$~
