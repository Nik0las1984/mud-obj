#31200
� ������ �������~
2 c 1
�������~
if (!%arg.contains(� ����)%
  return 0
  halt
end
wait 1
wsend %actor% ������ ����� ���� ���������, ��������� ��� ������ ������ �����������.
wteleport %actor% 31238
~
#31201
����� � ������~
0 r 100
~
wait 1
msend %actor% ����� ������ : '���� ������ �����, �� �� ��������� �������, ��� ����� �� ���.'
msend %actor% ����� ������ : '������� � ������� � ���� ������� ������� ���� �� ��������� �����.., ��� ��� �� 50'
~
#31202
���������� ���������~
0 q 100
~
wait 1
if (%actor.clan%==��)
  if (%actor.clanrank% >= 8)
    msend %actor% ��� ���� ���, �������� ��������� � �������.
    mechoaround %actor% ��� ���� %actor.rname%, �������� ��������� � �������.
  else 
    eval rand %random.3%
    if %rand%==1
      ���� %actor.name% "������ ��� ����, %actor.name%!"
      mechoaround %actor% �������� �������������� %actor.rname%.
    elseif %rand%==2
      ������ %actor.name% 
    else
      ������ %actor.name%
    end
  end
else
  msend %actor% �������� ����� ��������� �� ���.
  mechoaround %actor% �������� ����� ��������� �� %actor.vname%.
end
~
#31203
����� �������� � ������~
2 c 1
������~
if (!%arg.contains(������ �����)% || ( %actor.name% != ������ ))
  return 0
  halt
end
wait 1
wsend %actor% �� ������ �� ������ ����� ������, � ��������� �����, �������� ������, �������� � �������.
wteleport %actor% 31255
~
#31204
������ ��������~
0 n 100
~
wait 1
switch %random.4%
  case 1
    wait 2s
    ������� ������� ����� ����� ���������� ������������ �������� � ������ �������
    wait 1s
    � ���-����-�����! 
    wait 2s
    ����
    wait 3s
  break
  case 2
    wait 2s
    ��� ���������� ��������� � ����� ��������:
    wait 1s
    � ����� �� ������? ������..  � ������... ���?
    wait 2s
  break
  case 3
    wait 2s
    ��� ������� ������ �����
    wait 1s
    ��� ��������� �������� ���� �� ���� ���! � ���������, ���� ������ ������ ���, �� �������� ��� �� ��������� �����.
  break
  case 4
    wait 2s
    ��� ����������� ��������� �� ��� � ������ ��� � �����.
    wait 2s
  break
done
mecho ������� ������� ����� ����� ������ � �������, ������� ��� � �����������.
wait 1
mpurge %self%
~
#31205
�������� �������~
1 gh 100
~
wait 1
if (%actor.clan% == ��)
  halt
end
osend %actor.name% �������� ����� ������ %self.iname% �����%self.q%...
wait 1
%purge% %self% 
~
#31206
�������� ��������~
2 z 100
~
wload mob 31211
~
#31207
��� ������ �������~
2 c 100
���~
wait 1
if ( %actor.clanrank% >= 2 )
  wait 1
  wsend %actor% ���� ����� ����������.
  wsend %actor% ����� ������ ������ ��� : '������ ����� �� ���������� ����� ������� � ���� ���!'
  wsend %actor% ����� ��������� ����� ���� �����.
  halt
end
wechoaround %actor% %actor.name% ��%actor.y% �� �����.
wteleport %actor% 31225
wechoaround %actor% %actor.name% ����%actor.y% � �������.
~
#31208
������ � ����~
0 c 0
�������~
wait 1
if ((%actor.clan%==��) && (%self.leader% == %actor%))
  mechoaround %actor% %actor.name% ������%actor.g% �����.
  msend %actor% �� ������ ������� �����.
  mload obj 31233              
  ���� ������� %actor.iname%
  msend %actor% �������� ���� �������, ��������� ������ � ������.
  mechoaround %actor% �������� ���� �������, ��������� ������ � ������.
  wait 1 
  mpurge %self%
else
  mechoaround %actor% %actor.name% ������%actor.g% ����� � ��������, ��� ������ ��
  ����������.    
  mechoaround %actor% �������� ���� ��������� �� %actor.vname% � ������: '����
  ��������%actor.u% �� ����������?'
  msend %actor% �������� ���� ��������� �� ��� � ������: '���� ��������%actor.u% ��
  ����������?'
end
~
#31209
������� � �������~
1 c 3
���������~
wait 1
if (%actor.clan%==��)
  osend %actor% B� ��������� � ����-�������.
  oechoaround %actor% �������� ������� �����! �� ��� %actor.rname% �������� �������� ������� � �����.
  osend %actor% �������� ������� �����! ������� �������� �� ����� ��� � �����.
  oecho � ������ �� �������� �������� �������� ����.
  oload mob 31203
  oforce %actor% �������� ����      
  wait 1 
  opurge %self%
else
  oechoaround %actor% %actor.iname% �������%actor.u% ��������� � ����-�������, �� � ���� ������ �� ����������.
  osend %actor% B� ���������� ��������� � ����-�������, �� � ��� ������ �� ����������.
end
~
#31210
���� ������ ������~
0 m 1
~
wait 1
if (%amount% < 50)
  msend %actor% �� �� ����� ������ ���� ������ �� ������, �� �� ����� ��� � �������
  ����������.
  msend %actor% ��� ��, ��� �� ������. ����� 50 ��� � ���� ������.
else
  msend %actor% ����� ������������! ������� � ������� � ���-�� ������.
  msend %actor% ����� ������ : '��� ����� ���� �������! ������� � ���� � ���� ��� ��������
  � ����.'
  mload obj 31233
  ���� ������� %actor.name% 
end
~
#31211
�������� � ������ �������~
2 c 1
��������~
if (%arg.contains(��������)%  || ( %actor.name% == ������ ))
  wdoor 31255 south room 31238
  wait 30s 
  mdoor 31255 south purge
end
~
#31212
�������� ��������� ������~
0 qr 100
~
wait 1
if (%actor.clan%==��)||(%actor.haveobj(31244)%)
  halt
else
  ������� �������! ����� � �������� !
  halt
end
~
#31213
����� ��������� ������~
2 c 1
�������� ������ ���������~
if !%arg.contains(�����)%
  wsend %actor% ��� �� ������ ������?
  halt
end
wsend %actor% _�� ������ �� ����� ��������� ������� �� ���� �����.
wait 2
wsend %actor% ����� �������� ��� ������� ������.
wechoaround %actor% %actor.name% �����%actor.y% � �����, ���-�� ��� ������%actor.g%.
wait 1
wecho ���� �� ������� ������ ������� � ������� ������ ������ � �������.
wait 1
wdoor 31255 n room 31238
wdoor 31238 s room 31255
wait 30s 
wdoor 31255 n purge
wdoor 31238 s purge
wecho ���� �� ������� �������� �� ���� �����.
~
#31214
������ �����~
0 j 100
~
wait 1
set str %object.name%
set food %str.car%.%str.cdr%
if (%object.type% != 19) || (!%food.contains(���)% && !%food.contains(���)% &&
  !%food.contains(�����)% && !%food.contains(�����)%))
  wait 1
  mecho ����� � ������ ��������� ��� � �����.
  drop %food%
  halt
end
mecho ����� � ������������� ������� %object.vname%.
wait 1
mpurge %object%
wait 2s
mecho ����� ������� ������� � ������� �������� ������� ��������� �� ��������.
~
#31215
�������� �����~
0 n 100
~
set exit 1
global exit
~
#31216
����� ���� ����~
0 c 100
����~
wait 1
if (%actor.clan%==��)
  if (%actor.clanrank%>=8)
    mload obj 31244
    ���� ���� %actor.iname%
  end
end
~
#31217
������ �����~
0 c 1
��������� ������~
if ((%cmd% == ���������) && !%arg.contains(�����)%)
  msend %actor% �� ��������� ����. ������ - � �������!
  halt
end
wait 1
if (%cmd% == ���������)
  mechoaround %actor% %actor.name% ������� ��������%actor.g% ����������� �� �����.
  msend %actor% �� ������� ��������� �������������� �� �����.
  wait 1s
  switch %random.5%
    case 1
      msend %actor% ���������� �������� ������� ������� � �������� ������� ��� ��� ����.
      mechoaround %actor% ���������� �������� ������� ������� � ����� �������� ��� ����
      %actor.rname%.
    break
  done
end
~
#31218
����� ����!~
2 e 100
~
wait 1
if ((%actor.name% == ������) && (%exit% == 1))
  set exit 0
  global exit
  msend %actor% � ��� �������� ����-����� ����� � �������� �������� ������ ��� ������� �����
  ��������-���������. 
  wait 1s
  msend %actor% � �� ����� ����� ���������, ���� �� �����, ���-�� ������ �����!
end
~
#31219
����� ������~
2 g 100
~
wait 1
if %actor.vnum% == 31221
  wforce %actor% drop all
  wforce %actor% south
end
~
#31220
���� �����~
0 b 18
~
get all
set victim %random.pc%
switch %random.3%
  case 1
    ����
  break
  case 2
    � ��������� ���... � �� ������...
  break
  case 3
    if %victim%
      say ����� ��� ������, ������!
      say ����, ��, ���� �����!
      emot �������� ������ �� ����� %victim.rname%
    end
  break
done
if %random.10% != 7
  halt
end
while %self.realroom% != 31250
  switch
  case 31228
    north
  break
  case 31218
    case 31217
      case 31246
        case 31222
          east
        break
        case 31223
          case 31248
            case 31220
              case 31216
                case 31221
                  case 31203
                    west
                  break
                  case 31224
                    west
                    case 31207
                      west
                    break
                    case 31226
                      east
                      case 31205
                        east
                      break
                      case 31225
                        west
                        case 31210
                          west
                        break
                        case 31249
                          east
                          case 31245
                            east
                            case 31244
                              south
                              case 31243
                                up
                                case 31206
                                  east
                                break
                                case 31247
                                  south
                                  case 31219
                                    south
                                    case 31215
                                      ������� �����
                                      south
                                      ������� �����
                                      case 31214
                                        down
                                      break
                                      case 31227
                                        west
                                        case 31212
                                          west
                                          case 31204
                                            north
                                            case 31213
                                              west
                                            break
                                            case 31229
                                              south
                                              case 31200
                                                south
                                                case 31201
                                                  south
                                                  case 31202
                                                    south
                                                    case 31208
                                                      south
                                                      case 31209
                                                        west
                                                        case 31211
                                                          north
                                                        done
                                                        wait 2
                                                      done
                                                      south
                                                      west
                                                      west
~
#31221
������� �� ��������~
0 z 100
~
while %self.realroom% != 31250
  switch
  case 31228
    north
  break
  case 31218
    case 31217
      case 31246
        case 31222
          east
        break
        case 31223
          case 31248
            case 31220
              case 31216
                case 31221
                  case 31203
                    west
                  break
                  case 31224
                    west
                    case 31207
                      west
                    break
                    case 31226
                      east
                      case 31205
                        east
                      break
                      case 31225
                        west
                        case 31210
                          west
                        break
                        case 31249
                          east
                          case 31245
                            east
                            case 31244
                              south
                              case 31243
                                up
                                case 31206
                                  east
                                break
                                case 31247
                                  south
                                  case 31219
                                    south
                                    case 31215
                                      ������� �����
                                      south
                                      ������� �����
                                      case 31214
                                        down
                                      break
                                      case 31227
                                        west
                                        case 31212
                                          west
                                          case 31204
                                            north
                                            case 31213
                                              west
                                            break
                                            case 31229
                                              south
                                              case 31200
                                                south
                                                case 31201
                                                  south
                                                  case 31202
                                                    south
                                                    case 31208
                                                      south
                                                      case 31209
                                                        west
                                                        case 31211
                                                          north
                                                        done
                                                        wait 1s
                                                      done
~
#31222
�� ������ �����~
2 g 100
~
if %actor.vnum%  == 31221
  return 0
  halt
end
~
#31223
���� � �����~
2 c 1
���������~
if (!%arg.contains(� �����)% || ( %actor.name% != �������� ))
  return 0
  halt
end
wait 1
wsend %actor% �� �������� �������� ����� �������� ������ � ��������� ����� �� �������� ��������
wteleport %actor% 31253
~
#31224
����� �� �����~
2 c 1
����������~
if !%arg.contains(� �����)%
  return 0
  halt
end
wait 1
wsend %actor% �� ���������� ���� �� �������� � ���� ������������ � �������� ������.
wteleport %actor% 31211
set exit 1
global exit
calcuid panther 31222 mob
remote exit %panther.id%
~
#31225
������� �������~
0 c 1
��������� ������~
if ((%cmd% == ���������) && !%arg.contains(�������)%)
  return 0
  halt
end
if ((%cmd% == ������) && !%arg.contains(� ��������)%)
  return 0
  halt
end
wait 1
if (%cmd% == ���������)
  mechoaround %actor% %actor.name% ������� ��������%actor.g% �������.
  msend %actor% �� ��������� ������� �� ����������� �������.
  wait 1s
  switch %random.5%
    case 1
      msend %actor% ������� �������� �������� � �������� ��������� � ���� ����.
      mechoaround %actor% ������� �������� �������� � �������� ��������� � ����
      %actor.rname%.
    break
    case 2
      mecho ������� ���������� �� ������������, ���������� �������� ������ ��� ������.
    break
    case 3
      msend %actor% ������� ��������� �� ����� � �������� ������ ���� ���� ������� ������.
      mechoaround %actor% ������� ��������� �� ����� � �������� ������ ���� %actor.rname%
      ������.
    break
    case 4
      msend %actor% ������� ������� ������� ����� � ���� ����, ���� �� ��������� �� �����.
      mechoaround %actor% ������� ������� ������� � ���� %actor.rname%.
    break
    case 5
      msend %actor% ������� ������� ���� ���� ������, ���������� ������ ��� ��� �����.
      mechoaround %actor% ������� ������� ���� %actor.rname% ������, ���������� ��� ���
      �����.
    break
  done
end
if (%cmd% == ������)
  mechoaround %actor% %actor.name% ������%actor.u% ������ � ��������.
  msend %actor% �� ��������� ������ � �������� �������.
  wait 1s
  switch %random.4%
    case 1
      msend %actor% ������� ������ �� �������� ����, � ������� ������, ������� ������� ����
      ����.
      mechoaround %actor% ������� ������ �� �������� ����, � ������� ������, �������
      ������� ���� %actor.rname%.
    break
    case 2
      mecho ������� � ���������� ����� ��������� � �������.
    break
    case 3
      msend %actor% ������� ������ ������� � ����� ���� ����.
      mechoaround %actor% ������� ������ ������� � ����� ���� %actor.rname%.
    break
    case 4
      msend %actor% ������� �������� �� �����, ������������ �� ����� ����.
      mechoaround %actor% ������� �������� �� �����, ������������ �� ���� %actor.rname%.
    break
  done
end
~
#31226
������ �������~
0 j 100
~
wait 1
set str %object.name%
set food %str.car%.%str.cdr%
if (%object.type% != 19) || (!%food.contains(���)% && !%food.contains(���)% &&
  !%food.contains(�����)% && !%food.contains(�����)%))
  wait 1
  mecho ������� �������� �������.
  drop %food%
  halt
end
mecho ������� � ��������� ������ %object.vname%.
wait 1
mpurge %object%
wait 2s
mecho ������� ���������� � �������� ���������� �������.
~
#31227
���� ������~
2 c 1
������� ����������~
wait 1
if %cmd% == �������
  if !%arg.contains(�����)%
    wsend %actor%  ��� �� ������ �������?
    halt
  end
  if %exist.obj(31277)%
    wsend %actor%  ����� ��� ����� �����!
    halt
  end
  wsend %actor% �� �������� �����.
  wechoaround %actor% %actor.name% �������� �����.
  wload obj 31277
  halt
end
if %cmd% == ����������
  if !%arg.contains(�����)%
    wsend %actor%  ��� �� ������ ����������? �������? :)
    halt
  end
  if !%exist.obj(31277)%
    wsend %actor% ������ ��� ������������ ����� - ���� �� ��������� �����. :)
    halt
  end
  wsend %actor% �� ���������� ��������� ������� � �����.
  wsend %actor% ����� �������� � ����� �����.
  calcuid flame 31277 obj
  wpurge %flame%
  wload obj 31277
end
~
#31228
����� �����~
1 nz 100
~
oecho &r����� ���� ��������� � ������, �������� ������� � ������ ����� ��� �������.&n
wait 20s
oecho &r����� ������� �������� ������ � ������.&n
wait 40s
oecho &r�� ������ ������� ������� ����� �����.&n
wait 40s
oecho &r��������� �� ������ ����� ����� ������� ����.&n
wait 30s
oecho &r����� � ������ ������������, �������� ������� ����.&n
wait 45s
oecho &r����� � ������ ����-���� �������.&n
wait 50s
oecho &r������� ������ � ������� ������� ����������� �� ��������� ��������.&n
wait 40s
oecho &r����� � ������ �������� �������� �������.&n
wait 50s
oecho &r����� ������� ���������� �� ������� ���� � �������� � �������.&n
wait 50s
oecho &r����� ��������, � ��� ����� �� �������� �������.&n
wait 45s
oecho &r���� � ������ �����������, ���������� � ����.&n
wait 50s
oecho &r����� ����� ����.&n
wait 50s
oecho &r���� ���� ����� � ���������� ����� ������.&n
wait 50s
oecho &r����� �����.&n
wait 1
opurge %self%
~
#31229
������� ���������~
0 q 100
~
wait 1
if ((%actor.name% == ��������) && (%exit% == 1))
  set exit 0
  global exit
  �������
  ��� �������
  wait 2s
  emot �������� �� ����� �� �������
end
~
#31230
�������� �������~
0 n 100
~
set exit 1
global exit
~
#31231
����� ����� ��������� ��������~
2 b 5
~
if ((%world.curmobs(31211)% > 0) || (%weather.sunlight% != ����))
  halt
end
switch %random.9%
  case 1
    exec 31206 %target1.id%
  break
  case 2
    exec 31206 %target2.id%
  break
  case 3
    exec 31206 %target3.id%
  break
  case 4
    exec 31206 %target4.id%
  break
  case 5
    exec 31206 %target5.id%
  break
  case 6
    exec 31206 %target6.id%
  break
  case 7
    exec 31206 %target7.id%
  break
  case 8
    exec 31206 %target8.id%
  break
  case 9
    exec 31206 %target9.id%
  break
done
~
#31232
��������~
2 f 100
~
calcuid target1 31223 room
global target1
calcuid target2 31211 room
global target2
calcuid target3 31287 room
global target3
wait 1
calcuid target4 31206 room
global target4
calcuid target5 31213 room
global target5
calcuid target6 31290 room
global target6
wait 1
calcuid target7 31204 room
global target7
calcuid target8 31262 room
global target8
calcuid target9 31263 room
global target9
~
#31233
������� �� �����~
2 c 100
���������~
if (%arg% == ����)
  %send% %actor% �� ��������� ����.
  calcuid rom 31229 room
end
if (%arg% == ������)
  %send% %actor% �� ��������� �����.
  calcuid rom 34400 room
end
if (%arg% == ������)
  %send% %actor% �� ��������� ������.
  calcuid rom 34400 room
end
if (%arg% == �������)
  %send% %actor% �� ��������� �������.
  calcuid rom 34400 room
end
foreach char %rom.char%
  %send% %actor% ����� �� ����� �� ������� %char.name%.
done
~
#31234
���������� � ���~
2 c 4
���������~
wait 1
if (%arg% == ���)
  %send% %actor% �� ��������� ��������� � ����� � ���.
  %teleport% %actor.name% 31239
  halt
else
  %send% %actor% ���� ���������� �����?
  halt
end
~
#31235
����� ����� ������!~
0 bz 4
~
mecho ����� ���������� � �������� ��������� �� ��������� �� ��� � ���������.
~
#31236
�������� � �������~
2 cz 0
��������~
if ((%cmd% == ��������) && !%arg.contains(�������)%)
  mechoaround %actor% %actor.name% �������%actor.u% ������� �� ���������� �����.
  msend %actor% �� �������� ������� �� ���������� �����.
  wait 1s
  switch %random.4%
    case 1
      msend %actor% ������� ������� ��� ������� ��������.
      mechoaround %actor% ������� ������� ������� �������� %actor.rname%.
    break
    case 2
      mecho ������� ��������� ��� ��� � ������ ��������.
    break
  done
end
~
#31237
����������������� �����~
0 b 8
~
get all
set victim %random.pc%
switch %random.3%
  case 1
    emot �������� ������� : ���-���!
  break
  case 2
    mecho ����� ������� �� ����, ���������� ������ ���� � ���� �������� ������ � ����� ���.
  break
  case 3
    if %victim%
      emot �������� � ����� %victim.rname%, ������� � ������� �������
    end
  break
done
~
#31238
������� �����~
0 d 1
��!~
�����
���� ���
�������
~
$~
