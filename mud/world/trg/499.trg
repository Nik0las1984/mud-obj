#49900
�����������~
2 e 100
~
wait 1
wsend %actor% ����� ������ ����:
wsend %actor% - ������ ����, %actor.name%!
wsend %actor% - � ���� ��������� ���� � ����� �������, ����������� �����������.
wsend %actor% - ��������� ��� 1050 ��� - � ��������� ��� � ��������� ���.
~
#49901
���� ��������� � ��������� ���������~
2 d 1
�� ������� ���~
wait 1
wsend %actor% ����� ������ ����:
*wsend %actor% - H� ��� � ���������� ������� ����� ��� 200 ���.
wsend %actor% - � ������� ����� �������, �������� ������, ������� ��������� ��������� ��� ��� ������ ������, ��� ��� ����� 1050 ���.
~
#49902
���������� � ����~
2 z 0
~
wait 1
switch %amount%
  *case 200
  *wecho ����� ����� ������ ����������, ������� ������ � ����� �������� ����.
  *wechoaround %actor% %actor.name% ����� � ��������� �����������.
  *wsend %actor% ��� ���������� �������� � �� �� ��� �������� ��������.
  *wteleport %actor% 90047 horse
  *wat 90047 wechoaround %actor% %actor.name% ������%actor.u% ��� � ������ ����.
  *break
  case 1050
    wecho ����� ����� ������ ����������, ������� ������ � ����� �������� ����.
    wechoaround %actor% %actor.name% ����� � ��������� �����������.
    wsend %actor% ��� ���������� �������� � �� �� ��� �������� ��������.
    eval rand 27000+%random.60%
    wteleport %actor% %rand% horse
    wat %rand% wechoaround %actor% %actor.name% ������%actor.u% ��� � ������ ����.
    unset rand
  break
  default
    wsend %actor% ����� ������ ����:
    wsend %actor% - ������� �� ������, �� � �� ����, ���� ���� ����������� �� ����� �����. 
    wsend %actor% - H� ���� �� �����... ���� ��� �������.
  break	
done
~
#49903
������ ������������� ��������~
0 m 0
~
calcuid roomrun 49934 room
run 49902 %roomrun.id%
~
#49904
���� ����~
0 z 100
~
mecho ������������ ��������, ������ ����������� � ������.
mpurge %self%
~
#49905
� ������� ������� ����~
0 z 100
~
wait 1
if %actor.vnum% == 34632
  mshou �������� ��� �����! ���� � �����....
end
wait 1
if %actor.vnum% == 34631
  mshou  �������! ���� � ���������! ������...
end
~
#49906
���� ��������~
2 g 100
~
wait 1
if %actor.vnum% == 34632
  calcuid ug34632r 34632 mob
  while  %ug34632r%
    exec 34607 %ug34632r.id%
    eval ug34632r 
    calcuid ug34632r  34632 mob
  done
  wecho ���� ���������� � ������ �������.
end
wait 1
if %actor.vnum% == 34631
  calcuid ug34631r 34631 mob
  while  %ug34631r%
    exec 34607 %ug34631r.id%
    eval ug34631r 
    calcuid ug34631r  34631 mob
  done
  wecho ���� ���������� � ������ �������.
end
wait 1
if %actor.vnum% == 34630
  calcuid ug34630r 34630 mob
  while  %ug34630r%
    exec 34607 %ug34630r.id%
    eval ug34630r 
    calcuid ug34630r  34630 mob
  done
  wecho ���� ���������� � ������ �������.
end
wait 1
if %actor.vnum% == 34629
  calcuid ug34629r 34629 mob
  while  %ug34629r%
    exec 34607 %ug34629r.id%
    eval ug34629r 
    calcuid ug34629r  34629 mob
  done
end
~
#49907
�������� ������������� � ������ ������� (������)~
0 ab 100
~
detach 49907 %self.id%
halt
if ( (%reddragonraid915% == 1) || (%whitedragonraid915% == 1) )
  mshou ���� ������� �������� � ����! ����� ������ ����������� ����� ����� � ��� �� �������!
  wait 1
  mshou ��-��� ����� �������, �� ����� ����� ��������� ����� ����� �� ���� ������.
  switch %random.2%
    case 1
      wait 120s
    break
    case 2
      default
        wait 250s
      done
    end
~
#49908
�������� ������������� � ������ (�������� �������)~
0 ab 100
~
detach 49908 %self.id%
halt
if (%reddragonraid915% == 1)
  wait 5s
  mshou �� ������ ������ � ����� ��� �����! ������, �������� ����! ��� ��� ����� ������� - �� �����!
  switch %random.2%
    case 1
      wait 60s
    break
    case 2
      default
        wait 150s
      done
    end
~
#49909
�������� ������������� � ������ (������ �������)~
0 ab 100
~
detach 49909 %self.id%
if (%whitedragonraid915% == 1)
  wait 5s
  mshou �� ������ ������ � ����� ��� �����! ������, �������� ����! ��� ��� ����� ������� - �� �����!
  switch %random.2%
    case 1
      wait 60s
    break
    case 2
      default
        wait 150s
      done
    end
~
#49910
���������������� ����� ����� ������ (!!!)~
2 abf 100
~
if (%whitedragonraid915% == 0) && (%reddragonraid915% == 0) && (%posessedraid814% == 0)
  unset raid499
end
~
#49911
���� ����� �������~
0 j 100
~
wait 1
If (%object.vnum%==721)
  If (%object.val1%>5)
    Say �������� �������!
    If  !(%self.haveobj(60064)%)
      Mload obj 60064
    Else 
      Say ��... ������� � ���� ��� ����. ������ �� ����� ����.
    End
  Else
    Say ��... ����� ������� ������� ��� ��� ��������.
  end 
End
If (%object.vnum%==756)
  If (%object.val1%>5)
    Say ������������� ������! � ����� ��� ��� ����������!
    If  !(%self.haveobj(60070)%)
      mload obj 60070
    Else 
      Say � ���� ��� ���� ������, � ������ ��� � �� ����.
    End
  Else
    Say ���! ��� ����� ������� ��������! ����� �� ��������.
  end 
End
If (%object.vnum%==700)
  If (%object.val1%>5)
    Say ��-�! ������������� �����!
    If  !(%self.haveobj(60060)%)
      Mload obj 60060
    Else 
      Say � ���� ��� ���� ����! ��� ������ �� �����!
    End
  Else
    Say ��-�-��! ���� ������ ��������� � ��������. ����� �� �������!
  end 
End    
mpurge %object%
if (%self.haveobj(60064)% && %self.haveobj(60070)%)
  say �������! ������ � ������� ������ � ������� ��������!
  say � ��� ������� � �������� ��� � ������
  mecho ������� ���-�� ��������� ��� ������������� � �������� �� � �����.
  ���� ���
  mat 24028 mecho ���-�� �������� ����� � ������ ������ ����.
  mteleport all 24028
end
if (%self.haveobj(60064)% && %self.haveobj(60060)%)
  say �������! ������ � ������� ������ � ������� ��������!
  say � ��� ������� � �������� ��� � ������� ��������
  mecho ������� ���-�� ��������� ��� ������������� � �������� �� � �����.
  ���� ���
  mat 60015 mecho ���-�� �������� ����� � ������ ������ ����.
  mteleport all 60015
end   
if (%self.haveobj(60070)% && %self.haveobj(60060)%)
  say �������! ������ � ������� ������ � ������� ��������!
  say � ��� ������� � �������� ��� � ���� ������
  mecho ������� ���-�� ��������� ��� ������������� � �������� �� � �����.
  ���� ���
  mat 72035 mecho ���-�� �������� ����� � ������ ������ ����.
  mteleport all 72035
end
~
#49912
����������� �������~
0 r 100
~
wait 1
msend %actor% ������� ������� ����:
msend %actor% - �� ������� ���� ������� �� ������� ���, %actor.name%!
msend %actor% - ����, ��� �� ������ ��� �� ���� ���%actor.y%! ���� ���� ������!
msend %actor% - ���� �� ���� ��� ������� ��� ��� ������ �����
msend %actor% - � ������ ���� ����� ��������� �� ������� �������� ������.
~
#49913
���� ������ �������~
0 m 1
~
if (%amount% < 200)
  say �� ����� ����� ���%actor.g% ����� ���������. � � �� ������!
  halt
end
wait 1
msend %actor% - ������� ������� ����:
msend %actor% - ���� � ������ ������ - ������� ��� ������� � ������
msend %actor% - ���� �������� ������� � ����� ��, ����� ��������� ���� � ������� ��������.
msend %actor% - � �������� � ������ ������� - ��� ��� ������ � ����.
~
#49914
���������� �����~
0 qr 50
~
wait 1
context 915
if %target1%
  set target2 %actor%
  worlds target2
elseif %target2%
  set target3 %actor%
  worlds target3
elseif %target3%
  set target4 %actor%
  worlds target4
elseif %target4%
  set target5 %actor%
  worlds target5
else %target2%
  set target1 %actor%
  worlds target1
end
if %actor.id% == %agressor.id%
  halt
end
context 0
wait 1
��
follow .%actor.name%
set victim %actor%
global victim
~
#49915
������� �������~
0 k 70
~
if %actor.vnum% != -1
  set agressor %actor.leader%
  global agressor
else
  set agressor %actor%
  global agressor
end
wait 4
follow �
flee
flee
~
#49916
������ ���������~
0 b 9
~
switch %random.5%
  case 1
    if %victim.sex% == 1
      say ��������, ����� �������, �� ��������, ����� �������! 
    else
      say ��������, ����� �������, �� ��������, ����� �������!
    end
  break
  case 2
    say �� �������������! � �����-�� ����������� ���� ����!
  break
  case 3
    say �� �� ��������! ��� ����� ����! ��� 100 ������� ��������!
  break
  case 4
    emot ������������� ��������� �� ��� � ����������� ��������
  break
  case 5
    say �� �� ������, ���� ��� ���������� ����� �� ���, ��� ������������ ������ �������?
    ������
  break
done
����� ��� �����
����� ��� �����
����� ��� �����
����� ��� ����
����� ��� ����
����� ��� �����
��� ��� �����
~
#49917
�� ���� � ������� ��������~
0 q 100
~
wait 1
���
say ���������, ���� ������, ���� � ������� �������� ��������� ������� ������!
emot ����������� ��������� ��� ������
~
#49918
���� ������� ������ ����~
0 j 100
~
wait 1
if %object.vnum% == 91517
  wait 1
  say ��...!
  say �� �������, ���������� � ������� �������.
  say ��� ���� � �������.
  switch %random.6%
    case 2
      mload obj 1170
      give ������ %actor.name%
      shou �� ������ ��� �����, ��������� � %actor.name% ������� �������!
    break
    case 3
      mload obj 1171
      give ������ %actor.name%
      shou �� ������ ��� �����, ��������� � %actor.name% ���������� �������!
    break
    case 4
      mload obj 1172
      give ������ %actor.name%
      shou �� ������ ��� �����, ��������� � %actor.name% ��������� �������!
    break
    default
      eval buffer %self.gold(+5000)%
      give 5000 ��� %actor.name%
      shou �� ������ ��� �����, ��������� � %actor.name% �������!
    done
    mpurge %object%
    halt
  elseif %object.vnum%  == 91522
    remote actor %self.id%
    exec 91536 %self.id%
    wait 1s
    halt
  end
  say ����� �� ��� ��� ������%actor.q%?
  ������� %object.name%
  halt
~
#49919
���� � ����� ������� �������������~
0 q 100
~
wait 1
if %actor.quested(49950)%
  halt
end
if %actor.quested(49911)%
  msend %actor% ������ ��������� �� ���.
  mechoaround %actor% ��������� �� %actor.vname%.
  ��
  wait 1s
  say ������ ����, %actor.name%!
  mecho _- �� ��� ��... ������� �������� �� ����, � ���� ��� - �������� � ������� ���� � �������.
  mecho _- ���� ���� ��� � ����� ��������� ������, ��� � ���� ��������, ����� �������� �������
  mecho _- � ���������� ������������...
  mecho _- � ���� - �����... ������� ���� ���� � ���������, �� �� �� ������ �����.
  wait 1s
  msend %actor% ������ ������ ��� ��� ��������� ����������� �� ���������� ���������.
  mechoaround %actor% ������ ������ ��� %actor.vname% ��������� ����������� �� ���������� ���������.
  mskillturn %actor% ������ set
  %actor.setquest(49950)%
  %actor.unsetquest(49911)%
  halt
end
mechoaround %actor% ������� ��� ������ ����������� ��������� �� %actor.vname%.
msend %actor% ������� ��� ������ ����������� ��������� �� ���.
say �����%actor.g% ����.
say ����� ���������%actor.g%?
������ .%actor.name%
~
#49920
�������� � ������ �������������~
0 d 1
*~
wait 1
if %speech.contains(����)% || %speech.contains(�����)% || %speech.contains(���)% || %speech.contains(�����)%
  say � ��� �������������� � ���� ���������� �� �����!
  say ��, ������!
  mecho ������ �� �������� ��������� ��������� ����������� �������� � ���������.
  say ��������-�� ������ ������.
  wait 2
  ���� .%actor.name%
  mechoaround %actor% ��������� �������� %actor.rname% � ����������� �� ����� �������.
  msend %actor% ��������� �������� ��� �, ����� ����, ���������� �� �����.
  *mteleport %actor% 49957
  %actor.position(6)%
  %actor.wait(3)%
  %actor.hitp(3)%
  halt
end
if %speech.contains(������)% && !%speech.contains(�����)%
  say ��... �� ��, ��� ������� �������� �������������, �� ��������.
  say ��-�� ���� ������?
  halt
end
if %speech.contains(�������� � �������)% || %speech.contains(�����)% || %speech.contains(����� ��������)%
  if %actor.class% != 11
    say �������, �� � ���� �������� � ������ ������� ��� ���� - ���� �� ��� �� ��� ���� � �������� ������.
    mecho _- ������ ����� � ��������, ��� � ����������.
    halt
  end
  eval cens 25 - %actor.remort% / 2
  if %actor.level% < %cens%
    say ���� ����, �������, � ��� � ������� ����. 
    say ����� � ���� � ������, �� ����� � ������� ������ - ���������� ������.
    halt
  end
  say � ������� ������� ��������? �������� ���������?
  mecho _- �� ��� ��, ������� ���� ��������� � ���� �������.
  mecho _- ������ ������� � ��� �������, ��� ��������� - ������ �� ����� ����������� - ��� ���� �� ���� �� ������.
  mecho _- ����� ������������ �� ���� �� ������� ������������
  *mecho  - �� ������ ���� ��������� �� ������� ������ � ���� ����.
  mecho _- ������� ���: ������� � �������� � ���� �������� ��������, � �� � ���� �� ��� �������������.
  mecho  - ���� ��������� ��� �� ���� - ���� ���� ��������, � ���, ��� ����, � ��������.
  %actor.setquest(49900)%
  wait 2s
  ���
  say ������.
end
~
#49921
������ ������ ������������ (�����)~
0 q 100
~
wait 1
if !%actor.quested(49900)% || %actor.quested(49901)% || %actor.quested(49911)%
  halt
end
%actor.setquest(49901)%
wait 1s
emot ������� ���� ���� � ���������� � ���
say �����%actor.g% ����, %actor.name%!
mecho _- ������� ��� �������� ������ ������ ����.
wait 2
���
say ��� �� - ��� � ���� ���� ��������������, ���� �������� ��� � ����� ����.
mecho _- ������ � ������ �������, � ������-�������, ���� �������, �� ������ ������� ��������.
mecho _- �� ������� ������, � �������� ����! ���� � ����� ������� ������ ������� - � ��� � ��� �����?
�����
wait 3
say ���� � ���� ����������, ��� ��� - ��� ��������� ���, �����.
mecho _- ���� � ���� ����� �� ��������, � ������� ������ ���������.
mecho _- � ������ ��� ��������� �� ����, ����� �� � ����� ���� ������.
mecho _- ���-�� �� �������� �������� �� �������, �� �� � ���� ���-�� � �������� ���.
wait 2
say ����� ��� ����, ����� ������, ��� ����� � ���������!
wait 2s
say ��, ��� ���... ��� ��� � ������ ��������, � ����������� �����, ��� � ������ �� ����� ���������.
emot ������� ����� �����
~
#49922
����� � ����������~
0 q 100
~
wait 1
if !%actor.quested(49901)% || %actor.quested(49902)%
  halt
end
mecho ��� ���� ��� ��������� ��������� � ��������.
say ����, �����, ������ �������?
say ������ �������, �� ����, ������� ����� �������!
%actor.setquest(49902)%
~
#49923
�������� � �����������~
0 d 1
������ ����������� ������ �� ��������~
if %self.fighting% || !%actor.quested(49902)% ||  %actor.quested(49903)%
  halt
end
%actor.setquest(49903)%
wait 2
say ��, � ����� ������. ����� ���������!
����
say �������� � ������ ��������, ������� �����, � �������� �����!
mecho _- � ��� � �������� ���� �����, �� ������� �� �������.
mecho _- � ��������� �� ��� - ����� ����, ��� ������ �� ������ ��������!
wait 2s
say ��� � ���� � ������, ��� ����� ������, �����-�� �� ��� ���.
mecho _- � ������ ������ �� ������ �������...
mecho _- ������� �, �� ���� - �������� � ��������, ����� �� ���� ���������, ������ ������?
wait 2
say ������� ���� ����� ��������� � ������� � ����� �����, ��� � ��� ���.
~
#49924
���� � ������� ����� ��������� � �����������~
0 q 100
~
wait 1
if !%actor.quested(49903)% || %actor.quested(49904)% || %self.fighting%
  halt
end
%actor.setquest(49904)%
��� .%actor.name%
say �-�, ��� � ����� � ��� ������� �� �������.
say ���, ������ �����, ��� � ���� ��������?
~
#49925
������ � ��������~
0 d 1
������� ������ �������� ������ ����� �������~
if !%actor.quested(49904)% || %self.fighting%
  halt
end
switch %speech%
  case �������
    case ������
      if %actor.quested(49907)%
        wait 1s
        ����
        say ������ ����� �������.
        halt
      end
      say ��, ��� ���� �������%actor.g%!
      mkill %actor%
    break
    case ������
      case ��������
        if %actor.quested(49905)%
          halt
        end
        %actor.setquest(49905)%
        wait 2
        say ��� � � ��� �����, ��� ������ ����� ������� ����������.
        ���
        wait 2s
        say ������ ��� - ���� �, ��� ���� �����. 
        mecho _- ����, �� ������� �����, ��� ��� ���� ��� �����:
        mecho _- ��������� ��� ������, � ������ ������.
        mecho _- �� �������� �����, ���� � ���� �������� ����� ����� �������.
        mecho _- ��� �������� ������?
        ������ .%actor.name%
      break
      case �����
        case �������
          if !%actor.quested(49905)% || %actor.quested(49906)%
            halt
          end
          %actor.setquest(49906)%
          wait 2
          say ��, ����� ���������� �������, ���� �� ��� - ������ ����� ���.
        break
      done
~
#49926
����� ������� � �������~
0 m 1
~
if !%actor.quested(49906)% || %actor.quested(49907)%
  wait 2s
  ������ .%actor.name%
  say ����� ����, �� � �� ������� �������.
  ���
  say ���� ������� �� ������.
  halt
end
if %amount% < 10000
  ����
  say �� �� ���... 
  mecho _- ������ ����, ������ ���, � ����� � ������.
  mecho _- ������ ����� ��� �������� - � �� ����� ������!
  give %amount% ��� %actor.name%
  halt
end
%actor.setquest(49907)%
wait 2
���
say �� �����
mload obj 49959
give questitem49901 .%actor.name%
mecho _������� ������ ����� ������� ������ ��������� ������, � ����� �����, ����� ���� ������� �� ����.
wait 1
mpurge %self%
~
#49927
����� ������ ��� ������ �������~
0 j 100
~
wait 1
switch %object.vnum%
  *������
  case 49960
    wait 1
    mpurge %object%
    if !%actor.quested(49901)%
      halt
    end
    say ��� ���, � ������ �� ������? 
    say ����� �������, ������... 
    if %random.1000% <= 200
      say �� ��� ������ - ��� � �������, ������ ����...
    else
      *���������
      say ������� � � ������� - ������ ���������.
      say �������� � �� ���� ���� ���������.
      %actor.setquest(49911)%
      %actor.unsetquest(49901)%
      %actor.unsetquest(49902)%
      %actor.unsetquest(49903)%
      %actor.unsetquest(49904)%
      %actor.unsetquest(49905)%
      %actor.unsetquest(49906)%
      %actor.unsetquest(49907)%
    end
  break
  *������
  case 49959
    wait 1
    mpurge %object%
    if !%actor.quested(49901)%
      halt
    end
    %actor.setquest(49909)%
    say �� �������, ���������, ������ �������!
    say ����� ������, ��� �����?
  break
done
~
#49928
�������� � �������� ����� ����� �������~
0 d 1
��������� ����� ��� ������� ~
if !%actor.quested(49909)%
  halt
end
wait 2s
switch %speech%
  case ���������
    case �����
      say �� ������, �� ������! ��������� � �� ���� �������!
      say ������ �� ��� ����������, ����, ����� �� ���� ����������!
    break
    case ���
      case �������
        %actor.setquest(49910)%
        say ��� ��� ���, ������ ��� � �� ���������� �����.
        mecho _- ������� ���� ����� �� ��� ������ �������,
        mecho _- ��� �������� ���� ���������, ������� ���������.
        mecho _- ���, ������ �� ���� � �������������� 
        wait 1s
        *������ �������������� ���� ������, ���� ��� ������� �� ������
        switch %random.7%
          case 1
            case 2
              mload obj 906
              give ��� .%actor.name%
            break
            case 3
              mload obj 908
              give ��� .%actor.name%
            break
            default
              %self.gold(3000)%
              give 3000 ��� .%actor.name%
            done
          break
        done
        %actor.setquest(49911)%
        %actor.unsetquest(49901)%
        %actor.unsetquest(49902)%
        %actor.unsetquest(49903)%
        %actor.unsetquest(49904)%
        %actor.unsetquest(49905)%
        %actor.unsetquest(49906)%
        %actor.unsetquest(49907)%
        %actor.unsetquest(49909)%
~
#49929
�������� ��������~
0 l 75
~
%self.hitp(%self.maxhitp%)%
~
#49930
�������� � �������� �������� (����� �� ���������� � �����)~
0 q 100
~
wait 1
if !%actor.quested(49900)% || %actor.quested(49914)% || %actor.quested(49913)%
  halt
end
%actor.setquest(49914)%
wait 1s
say ����������-���������� %actor.name%!
mecho _- ������ ������� ��� � ����.
���
wait 2s
say ��� ��, ���� � ���� ������ ��� ����, ���������.
mecho _- ��� ������ ���� �� ������ ����, �� � �� ������� �����.
mecho _- ���� ��������� �� - � ����� �� ���� ����������.
wait 3s
say ������� ��������� �� �����, �� ���� ������ - ����� ����� ���� � ����� ����� �� ������!
mecho _- �� ������� ����� ��������� �� ��� ������ ����������, ����� �������� ���������.
mecho _- ��� ������ ����� �� ������, ������� ��� ��������, � ������� ���� ��������� �����.
mecho _- �������� �� �������, ������� � ������� ������������ ����������, � ���������...
mecho _- ��, � ������� - ����� ����� ���� �� ������!
mecho _- �� � ���� � ��� ���� ��� �� �����.
wait 2s
say ������� �� �������� ��� �����������, � ��� �������� �����.
mecho _- �� �� ������ ����������, ����� ����� �� �� �������. 
mecho _- �� ���� ������� ����� ��������, �� ��������� - ������ ������.
wait 1s
say �� ��� - ��������?
������ %actor.name%
~
#49950
���������� � �������~
2 z 100
~
wportal 27031 2
~
#49951
���������� � �����~
2 z 100
~
wportal 76083 2
~
#49952
���������� � ������~
2 z 100
~
wportal 66034 2
~
#49953
����� �������� � ��������� ���.����~
0 q 100
~
wait 1
msend %actor% ����� ������ ����:
msend %actor% - ������ ����, %actor.name%!
msend %actor% - � ���� ����������� ���� � ��������� ������, �����������, �� �������.
msend %actor% - � ������� �������� �� 1100 ���.
msend %actor% - � ������ - �������� ������, 3500 ���.
msend %actor% - ������ ��� � ����� �����������, �� ����� 5200 ��� �� �������.
~
#49954
����� ������ ����� ���� ������~
0 m 1
~
wait 1
emot ���������� ������ � ������� �� � ������
eval target 0
switch %amount%
  *�������
  case 1100
    eval target 27031
  break
  *�����
  case 5200
    eval target 76083
  break
  *������
  case 3500
    eval target 66034
  break
  default
    msend %actor% - ������� �� ������, �� � �� ����, ���� ���� ����������� �� ����� �����. 
    msend %actor% - H� ���� �� �����... ����, ��� �������.
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
#49996
�������!~
0 ab 9
~
wait 1
cast !summon! .����
cast !summon! .�����
cast !summon! .������
cast !summon! .�����
cast !summon! .�������
����
say �����-�������, ���������!
~
#49997
��������������� �����������~
0 n 100
~
mecho �������� ����������� �������� � �������.
wait 2
������
wait 600s
mecho �������� ����������� �������� ��������.
wait 1
mpurge %self%
~
#49998
�����������~
0 c 1
��� ���� �����~
wait 1
msend %actor% �������... &R��, �� ���%actor.g% ����� �����%actor.g%!!!&n
mechoaround %actor% %actor.name% �����%actor.q% � �����������.
switch %random.23%
  case 1
    mteleport %actor% 61663 horse
  break
  case 2
    mteleport %actor% 80662 horse
  break
  case 3
    mteleport %actor% 35174 horse
  break
  case 4
    mteleport %actor% 61304 horse
  break
  case 5
    mteleport %actor% 33545 horse
  break
  case 6
    mteleport %actor% 86126 horse
  break
  case 7
    mteleport %actor% 76580 horse
  break
  case 8
    mteleport %actor% 89900 horse
  break
  case 9
    mteleport %actor% 145000 horse
  break
  case 10
    mteleport %actor% 38383 horse
  break
  case 11
    mteleport %actor% 67232 horse
  break
  case 12
    mteleport %actor% 14525 horse
  break
  case 13
    mteleport %actor% 25531 horse
  break
  case 14
    mteleport %actor% 38573 horse
  break
  case 15
    mteleport %actor% 86621 horse
  break
  case 16
    mteleport %actor% 76338 horse
  break
  case 17
    mteleport %actor% 76108 horse
  break
  case 18
    mteleport %actor% 29233 horse
  break
  case 19
    mteleport %actor% 80887 horse
  break
  case 20
    mteleport %actor% 30300 horse
  break
  case 21
    mteleport %actor% 33550 horse
  break
  case 22
    mteleport %actor% 24843 horse
  break
  case 23
    mteleport %actor% 35447 horse
  break
done
log %actor.name% ����� � �����! :)
~
#49999
�������� ������� � 499 ����~
0 g 100
~
49900 - ����� � ������ ������ ������������� (�������� � ������ �������)
49901 - ����� � ������ ������ �� ������������� ����� (49900 �� ���������)
49902 - ������� ����� � ����������
49903 - ������� ��������� � �����������
49904 - ������� ������ � ������
49905 - ������� ������������ � �����
49906 - ������� �������� �������� ������
49907 - ������� ������� ������
49909 - ������� ���� ������
49910 - ������� ������ �������� ����
49911 - ���������� ������, ���� ������ �������� ���������� (����� 49901-49910 ��������� � ����� ������)
49912 - ����� � ������� ���������� (���� ��������� ��������)
~
$~
