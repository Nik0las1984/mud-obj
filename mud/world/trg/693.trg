#69300
�������������~
2 cz 0
������~
%send% %actor% _���� �������� ��������...
%echoaround% %actor% _���� %actor.vname% ��������� ����� ������ ��������� ���� �����...
wait 2s
%send% %actor% _� ���������� �������� ������, ������� � ������������� ���...
%echoaround% %actor% � ����� ������� ������������ � ���������� �������...
wait 3s
wteleport %actor% 69360
%echoaround% %actor% _������� �������� ������ ����� �������� ����� %actor.vname%.
~
#69301
����������������~
0 d 0
�����~
wait 1s
�� ������, ������ ����� � ����� ������������.
wait 4s
mecho - ������ ������, ��� ������ � ���� ���� ��� ���� ������ ������.
mecho - ��� ����- �����, ��� ���� - ������, ����� ���� - ����, ����� ���� - ���� �����.
mecho - � ����������� ����� ���� ������ � ����������� ������� ������������.
mecho - ����������� ����� � ������ �� ��������.
mecho - �� ��������� ��� ��� �� ��������� �� �������� ������ �������.
mecho - � ��� ���� ����������� �� ������ ����������� ����.
mecho - ������� � �������� ��������� ��� ������ �������.
mecho - � ��������� ����� ��� ����
mecho - �����, ����� ������ ������� ����� 
mecho - ���, ��� ����� ������� ����� �������� ������ ������ - ������ ������.
���
wait 1s
mecho - �������� ��� ������ ����� ������ �� ������ -
mecho - ����� � ������� �� ������ ������� ��������,
mecho - ����������� ������� �������� ������ ��������.
mecho - � �������� ����� ������ �������.
mecho - � ������ �������� ����� ������.
mecho - � ������ ����� � ��� ���������.
wait 1s
mecho - ���� �������� ���
if %actor.sex% == 1 
  mecho - ������� � ���� ����� - ����� �������.
else
  mecho - ������� � ���� ����� - ������ ������.
end
������
detach 69304 %self.id%
attach 69304 %self.id%
~
#69302
�������������������~
0 r 100
~
wait 1s
mecho - ���������� ������ ���������.
mecho - ������, ������� - ������ ������...
mecho - ���� � ����� ����, ������ ��� �������.
mecho - �� ���� � ��� ����� ������ ���� ���������.
���
mecho - �� ������� �� �������� � ���� �����, �� � ������ ����?
~
#69303
�����������~
0 d 3
���� �������~
mecho _��������� �����-������, ������ � ������ ���� � �������� ��� �� ��� �������.
* * * * *������ ���� ������
wait 1s 
mecho - ���� ��������, ����� �������
mecho - ����� ������ �������:
mecho - �������, �������,
mecho - ��������� ������!
wait 3s
mload mob 69315
mload mob 69315
mload mob 69315
mecho _��������� �� �����-������ ������� �����.
wait 20s
mecho - �������, ������
mecho - ���������, �������!
*(����� �������)
wait 20s 
mload mob 69316
mload mob 69316
mload mob 69316
mecho _��������� ����� ������ ������ � ��������� �� ��� �������� �������!
wait 20s 
mecho - �������, �������,
mecho - ���������, ����������!
wait 1s
*(����� ���������)
mload mob 69317
mload mob 69317
mload mob 69317
mecho _�� ���� ������ ��������� ���� ��������� - �� � ��� �� � ���� �� �������������!
wait 3s 
mecho - �������, ���������
mecho - ���������, ������ ����������!
wait 20s
*(����� ������)
mload mob 69318
mload mob 69318
mload mob 69318 
mecho _��������� ����� ������ ����������, ������ ����� ���� �������.
wait 20s
mecho - �������, ����� ����������
mecho - ���������, ����������!
wait 1s
*(����� ����������)
mload mob 69319
mload mob 69319
mload mob 69319
mecho _������ ������� �������� ����������, �������� ����� ����� ����� �����.
�� %actor.name%
detach 69303 %self.id% 
~
#69304
����������~
0 d 0
������ ��~
*makeuid quest693 %actor.id%
*global  quest693
calcuid trigroom 69315 room 
calcuid froom 69386 room 
*calcuid froom 69386 room 
set quest693 %actor%
remote quest693 %froom.id%
remote quest693 %trigroom.id%
mecho - ����� ���!
mecho - ������� ���� ��� ����� ����������!
wait 1s
mecho - ������!
�� ����������
wait 3s
mecho - ���� ��� ���� ����� � ������ �����.
mecho - ������� ���� ����� ������ ���� ������� ��� ���������� ����� ���� �� ����� �����.
���
wait 1s
mecho - � ������ �� ������� �� ���-������, � �� ������� ������.
mecho - ����� ��� ����� ��������� ���.
mecho - � �� ���� ������ ��� ������, �� � ���� ������ ��� �������.
mecho - �� ������ ������, ���� ������ �����.
mecho - ������� ��� ������ �� ����, ������ ��������.
mecho - ����� ��� ������ � ��� ���.
mecho - ����� ���� ����� ��, ����� ���� ���...
���
wait 3s 
mecho - �� ������, ����� ������ �������, ����!
mecho - ������ ��� ���.. ����� ���� ����������.
mload obj 69307
���� ���� %actor.name%
mecho - � � ������� ��� ��� �����...
wait 1s
�� ������ ���������� �� ���������� ������ � ����������� � ��������
*calcuid mob 69327 mob
detach 69301 %self.id%
detach 69302 %self.id%
detach 69304 %self.id%
*attach 69316 %self.id%
*attach 69310 %mob.id%
*detach 69304 %mob.id%
~
#69305
��������������������~
0 r 100
~
�� ������ ������, ������� ����
wait 2s
mecho - ����������, ��������.
wait 1s
mecho - �� ������ � ������� �����, �� ���� ����, ������ ����������.
wait 1s
mecho - �� ���� ������ - ������������! ������ ������!
mecho - ���� ����� ���� �. ���������� ������������� - ��� � ����.
�� ����������� ������ ������ �� ��������� ���������� �������� ����.
wait 3s
mecho - �� ���� ����� �� ������ ����, � ���� ����� ����� ���, �� ��� ���� ���.
mecho - �� ����!
mecho - ������ ����� ���������� ����� ������� ��������. 
mecho - � ������� ������� �� ������� ���� �������� ������ - � ��� ������ ������� �����.
mecho - ����� ��������� ������� ����� ����� ���������.
mecho - � ���� ���� ���� �� ����������� ���� �� ������� �������.
���
detach 69305 %self.id%
~
#69306
������������������~
2 c 0
�������~
if !%arg.contains(����)%
  wsend %actor.name% ��� ���������?
  halt
else
  %send% %actor% _���� �������������, �� ���������� ����.
  %echoaround% %actor% _%actor.name% ��������%actor.q% ����.
  wait 1s
  wecho _������-�� �����, ������ �� ������� ����� ���������� ���.
  wecho _�� ���������� �� ����� ������� �������, ������� ��������.
  wecho _�� ��� ������ ��������� ����� �� �������.
  wait 1s
  wecho _�� ����� �������� ������� ���� �������� � ���������� ������-�� ����� ��������� ����.
  wecho _� ��� ������... ������ ������ �� ����..
  wait 2s
  *calcuid znobeya 69321 mob
  *wteleport %znobeya% 69353
  wload mob 69334
  detach 69306 %self.id%
end
~
#69307
���������������~
2 c 0
�������~
if !%arg.contains(����)%
  wsend %actor.name% ��� ���������?
  halt
else
  %send% %actor% �� ���������� ������� ���� �� ���� ������ ���� ������.
  %echoaround% %actor% _%actor.name% ����� � � ��������� �����%actor.q% ������� ����, �� ������.
  wait 1s
  wecho _����� �� ���� ����� ��������� ���� ������ ����� ��������� � ������ � ����� � ����� �����.
  wload obj 69310
  detach 69307 %self.id%
end
~
#69308
������������������~
2 c 0
�������~
if !%arg.contains(����)%
  wsend %actor.name% ��� ���������?
  halt
else
  %send% %actor% _���� �������������, �� ���������� ����.
  %echoaround% %actor% _%actor.name% ��������%actor.q% ����.
  wait 1s
  wecho _������-�� �����, ������ �� ������� ����� ���������� ���.
  wecho _�� ���������� �� ����� ������� �������, ������� ��������.
  wecho _�� ��� ������ ��������� ����� �� �������.
  wait 1s
  wecho _�� ����� �������� ������� ���� �������� � ���������� ������-�� ����� ��������� ����.
  wecho _� ��� ������... ������ ������ �� ����..
  wait 2s
  *calcuid znobeya 69321 mob
  *wteleport %znobeya% 69353
  wload mob 69335
  detach 69308 %self.id%
end
~
#69309
�������������������~
2 c 0
�������~
if !%arg.contains(����)%
  wsend %actor.name% ��� ���������?
  halt
else
  %send% %actor% _���� �������������, �� ���������� ����.
  %echoaround% %actor% _%actor.name% ��������%actor.q% ����.
  wait 1s
  wecho _������-�� �����, ������ �� ������� ����� ���������� ���.
  wecho _�� ���������� �� ����� ������� �������, ������� ��������.
  wecho _�� ��� ������ ��������� ����� �� �������.
  wait 1s
  wecho _�� ����� �������� ������� ���� �������� � ���������� ������-�� ����� ��������� ����.
  wecho _� ��� ������... ������ ������ �� ����..
  wait 2s
  *calcuid znobeya 69321 mob
  *wteleport %znobeya% 69353
  wload mob 69324
  detach 69309 %self.id%
end
~
#69310
�����������������~
0 r 100
~
wait 1s
mecho - �� ������� ������� ��, ���� ������ ����.
mecho - �� ����� ����� �����
�� ������� �������
wait 1s
mecho - � ���� ������� ������ ���� ������ ��������
mecho - �������� � ���� � ������ ��������
mecho - ���������� ����...
wait 1s
mecho - �� ���...
mecho - �������� � ��� ������� ����, ����� ����� ���� ��������...
mecho - ���� ������� �� � ����� �� ��������.
mecho - ����� ����� ���� ������ �� �������� �����, ��� �������� ����� �������
mecho - � ������� ������� ������� ����� ��������:
mecho - ��� �� ������ �� ������, �� �� �������� ����� ����� ������� �������!
wait 1s
mecho _�������� ���������� � ����� � ������� �����.
mpurge ��������
~
#69311
��������������������~
0 j 100
~
if %object.vnum% == 69316
  wait 1
  %purge% %object%
  mecho - ��, ��� ��� - ��� �������! �� ������� �������...
  ��� %actor.name%
  switch %random.9%
    case 1
      if ( ( %random.1000% < 201 ) && ( %world.curobjs(69321)% < 5 ) )
        mload obj 69321
        mecho  - ������� � ���� ������ ������.
        wait 1s
        ���� ��� %actor.name% 
        � ���, �����.
      else
        wait 1s
        mecho - �� ����������� ��� ������ - � ����� �����������.
        ���
        ���
        halt
      end 
    break
    case 2
      if ( ( %random.1000% < 201 ) && ( %world.curobjs(69322)% < 5 ) )
        mload obj 69322
        mecho  - ������� � ���� ������ ������.
        wait 1s
        ���� ��� %actor.name% 
        � ���, �����.
      else
        wait 1s
        mecho - �� ����������� ��� ������ - � ����� �����������.
        ���
        ���
        halt
      end 
    break
    case 3
      if ( ( %random.1000% < 201 ) && ( %world.curobjs(69323)% < 5 ) )
        mload obj 69323
        mecho  - ������� � ���� ������ ������.
        wait 1s
        ���� ��� %actor.name% 
        � ���, �����.
      else
        wait 1s
        mecho - �� ����������� ��� ������ - � ����� �����������.
        ���
        ���
        halt
      end 
    break
    case 4
      if ( ( %random.1000% < 201 ) && ( %world.curobjs(69325)% < 5 ) )
        mload obj 69325
        mecho  - ������� � ���� ������ ������.
        wait 1s
        ���� ��� %actor.name% 
        � ���, �����.
      else
        wait 1s
        mecho - �� ����������� ��� ������ - � ����� �����������.
        ���
        ���
        halt
      end 
    break
    case 5
      if ( ( %random.1000% < 201 ) && ( %world.curobjs(69326)% < 6 ) )
        mload obj 69326
        mecho  - ������� � ���� ������ ������.
        wait 1s
        ���� ��� %actor.name% 
        � ���, �����.
      else
        wait 1s
        mecho - �� ����������� ��� ������ - � ����� �����������.
        ���
        ���
        halt
      end 
    break
    case 6
      if ( ( %random.1000% < 201 ) && ( %world.curobjs(69327)% < 5 ) )
        mload obj 69327
        mecho  - ������� � ���� ������ ������.
        wait 1s
        ���� ��� %actor.name% 
        � ���, �����.
      else
        wait 1s
        mecho - �� ����������� ��� ������ - � ����� �����������.
        ���
        ���
        halt
      end 
    break
    case 7
      if ( ( %random.1000% < 201 ) && ( %world.curobjs(69330)% < 5 ) )
        mload obj 69330
        mecho  - ������� � ���� ������ ������.
        wait 1s
        ���� ��� %actor.name% 
        � ���, �����.
      else
        wait 1s
        mecho - �� ����������� ��� ������ - � ����� �����������.
        ���
        ���
        halt
      end 
    break
    case 8
      if ( ( %random.1000% < 201 ) && ( %world.curobjs(69331)% < 5 ) )
        mload obj 69331
        mecho  - ������� � ���� ������ ������.
        wait 1s
        ���� ��� %actor.name% 
        � ���, �����. 
      else
        wait 1s
        mecho - �� ����������� ��� ������ - � ����� �����������.
        ���
        ���
        halt
      end 
    break
    default 
      wait 1s
      mecho - �� ����������� ��� ������ - � ����� �����������.
      ���
      ���
      halt
    break 
  done
else
  mecho  - ��� �� �� ��� � ������! �� ��������� �� ����������� ��������!
  wait 1s
  ���� %actor.name%
end
~
#69312
��������������~
2 cz 0
������~
%send% %actor% _���� �������� ��������...
%echoaround% %actor% _���� %actor.vname% ��������� ����� ������ ��������� ���� �����...
wait 2s
%send% %actor% _� ���������� �������� ������, ������� � ������������� ���...
%echoaround% %actor% � ����� ������� ������������ � ���������� �������...
wait 3s
wteleport %actor% 69352
%echoaround% %actor% _������� �������� ������ ����� �������� ����� %actor.vname%.
~
#69313
����������~
2 cz 0
������~
%send% %actor% _���� �������� ��������...
%echoaround% %actor% _���� %actor.vname% ��������� ����� ������ ��������� ���� �����...
wait 2s
%send% %actor% _� ���������� �������� ������, ������� � ������������� ���...
%echoaround% %actor% � ����� ������� ������������ � ���������� �������...
wait 3s
wteleport %actor% 69390
%echoaround% %actor% _������� �������� ������ ����� �������� ����� %actor.vname%.
~
#69314
�������������~
2 cz 0
������~
%send% %actor% _���� �������� ��������...
%echoaround% %actor% _���� %actor.vname% ��������� ����� ������ ��������� ���� �����...
wait 2s
%send% %actor% _� ���������� �������� ������, ������� � ������������� ���...
%echoaround% %actor% � ����� ������� ������������ � ���������� �������...
wait 3s
wteleport %actor% 69384
%echoaround% %actor% _������� �������� ������ ����� �������� ����� %actor.vname%.
~
#69315
��������~
0 f 100
~
if %random.100% < 15 
  *������
  mload obj 69336
elseif %random.100% < 10 
  *������
  mload obj 69335
end
*������
mload obj 69334
mload obj 69334
mload obj 69334
~
#69316
�����������~
0 r 100
~
*mecho ������ �������� 16 ����
*mecho %actor.name% == %quest693.name%
if %actor.name% == %quest693.name%
  wait 1s
  ��
  wait 1s
  mecho  _���� � ���� ��� ������ ��� ������-�������� � ������� ����� ����� ��������
  mecho  _�� �������� ����� ��� �� ������� ������ �����
  mecho  _��� �������� �������� ����� �������
  mecho  _� ���������� ������ � ��� � ���� �����-������
  wait 1s
  mecho  _� ��� � ������� ����..
  eval max 100+%actor.remort%*5
  *eval nGold 10000
  switch %actor.class%
    *������
    case 0
      if ( ( %random.1000% < 301 ) && ( %world.curobjs(69342)% < 3 ) )
        mload obj 69342
        ���� all %actor.name%
      else
        %self.gold(+5000)%
        ���� 5000 ��� %actor.name%
      end
    break
    *������
    case 1
      if ( ( %random.1000% < 301 ) && ( %world.curobjs(69343)% < 3 ) )
        mload obj 69343
        ���� all %actor.name%
      else
        %self.gold(+5000)%
        ���� 5000 ��� %actor.name%
      end 
    break
    *����
    case 2
      if (%actor.skill(����������)% < %max%) 
        eval lvskl %actor.skill(����������)%+4
        if %lvskl% > %max%
          eval addskl %max%-%actor.skill(����������)%
        else
          set addskl 5
        end
        mskilladd .%actor.name% ���������� %addskl%
      else
        %self.gold(+5000)%
        ���� 5000 ��� %actor.name% 
      end
    break
    *��������
    case 3
      if (%actor.skill(�����������)% < %max%) 
        eval lvskl %actor.skill(�����������)%+4
        if %lvskl% > %max%
          eval addskl %max%-%actor.skill(����������� �����)%
        else
          set addskl 5
        end
        mskilladd .%actor.name% �����������.����� %addskl%
      else
        %self.gold(+5000)%
        ���� 5000 ��� %actor.name% 
      end
    break
    *�������
    case 4
      �� �������� �������, � ���-�� ���������
      wait 1s
      �� ������������ �� �� �����
      wait 1s
      � ��� �����%actor.q% �� ������ �� ���, ������?!
      � ���� ���� ��������� - �����, ���� ��%actor.q%!
      wait 1s
      � �� ������ ������ - ����� �� ����!
      wait 1s
      mecho _�������� �� ���������� ������ - ������� ����� �������� ������.
      %send% %actor% _����� ������� ����� ����� ��� ����� - ����� ������ �� ��� ���� ��������.
      %echoaround% %actor% _����� ������� ����� ����� ��� ����� - ����� ������ �� ���� %actor.rname% ��������.
      eval nHit %actor.hitp%+11
      mdamage %actor% %nHit%
    break
    *����
    case 5
      if (%actor.skill(���������� �����)% < %max%) 
        eval lvskl %actor.skill(���������� �����)%+4
        if %lvskl% > %max%
          eval addskl %max%-%actor.skill(���������� �����)%
        else
          set addskl 5
        end
        mskilladd .%actor.name% ����������.����� %addskl%
      else
        %self.gold(+5000)%
        ���� 5000 ��� %actor.name% 
      end
    break
    *��������
    case 6
      if %random.100% < 8 && %world.curobjs(69345)% < 3
        mload obj 69345
        ���� all %actor.name%
      else
        %self.gold(+5000)%
        ���� 5000 ��� %actor.name%
      end 
    break
    *����������
    case 7
      if %random.100% < 8 && %world.curobjs(69344)% < 3
        *�����
        mload obj 69344
        ���� all %actor.name%
      else
        %self.gold(+5000)%
        ���� 5000 ��� %actor.name%
      end
    break
    *������
    case 8
      if %random.100% < 10 && %world.curobjs(69346)% < 3
        *�����
        mload obj 69346
        ���� all %actor.name%
      else
        %self.gold(+10000)%
        ���� 10000 ��� %actor.name%
      end
    break
    *������
    case 9
      if (%actor.skill(������ �����)% < %max%) 
        eval lvskl %actor.skill(������ �����)%+4
        if %lvskl% > %max%
          eval addskl %max%-%actor.skill(������ �����)%
        else
          set addskl 5
        end
        mskilladd .%actor.name% ������.����� %addskl%
      else
        %self.gold(+3000)%
        ���� 3000 ��� %actor.name% 
      end
    break
    *����
    case 10
      if (%actor.skill(����������)% < %max%) 
        eval lvskl %actor.skill(����������)%+4
        if %lvskl% > %max%
          eval addskl %max%-%actor.skill(����������)%
        else
          set addskl 5
        end
        mskilladd .%actor.name% ���������� %addskl%
      else
        %self.gold(+3000)%
        ���� 3000 ��� %actor.name% 
      end
    break
    *������
    case 11
      if (%actor.skill(��������)% < %max%)
        eval lvskl %actor.skill(��������)%+4
        if %lvskl% > %max%
          eval addskl %max%-%actor.skill(��������)%
        else
          set addskl 5
        end
        mskilladd .%actor.name% �������� %addskl%
      else
        %self.gold(+3000)%
        ���� 3000 ��� %actor.name%
      end
    break
    *�����
    case 12
      if (%quest694.skill(����������)% < %max%)
        eval lvskl %actor.skill(����������)%+4
        if %lvskl% > %max%
          eval addskl %max%-%actor.skill(����������)%
        else
          set addskl 5
        end
        mskilladd .%actor.name% ���������� %addskl%
      else
        %self.gold(+5000)%
        ���� 5000 ��� %quest694.name%
      end
    break
    *�����
    case 13
      if ( ( %random.1000% < 301 ) && ( %world.curobjs(69354)% < 3 ) )
        *�����
        mload obj 69354
        ���� all %actor.name%
      else
        %self.gold(+10000)%
        ���� 10000 ��� %actor.name%
      end
    break
    default
      %self.gold(+10000)%
      ���� 10000 ��� %actor.name%
    break
  done
  ���� ��� %actor.name%
  detach 69316 %self%
end
~
#69317
��������������~
0 n 100
~
if %random.1000% < 50 && %world.curobjs(69324)% < 5
  mload obj 69324
end
~
#69318
������������~
2 c 0
����������~
%send% %actor% _���� �������� �������� ����������, ���������� ������������ �� ������� ���.
%echoaround% %actor% _���� %actor.vname% ����� ������ ��������� ���� ����� � ����� ������� ������� ������.
wteleport %actor.name% 69367
%echoaround% %actor% _������� �������� ������ ����� �������� ����� %actor.vname%.
~
#69319
����������~
0 f 100
~
if %random.1000% < 201 && %world.curobjs(69301)% < 4
  *����
  mload obj 69301
elseif %random.1000% < 201 && %world.curobjs(69303)% < 4
  *������
  mload obj 69303
elseif %random.1000% < 201 && %world.curobjs(69304)% < 4
  *�������
  mload obj 69304
elseif %random.1000% < 201 && %world.curobjs(69305)% < 4
  *���
  mload obj 69305
elseif %random.1000% < 201 && %world.curobjs(69300)% < 4
  *�����
  mload obj 69300
end
mecho _����������� ���� ����-������ �� ������ �������� �������� ����.
mecho _�������� ��� ������� �� ��� ������� 
mecho _���� �������� ������� ���� �����-������� ������������ � ������� ����������.
mload mob 69336
mload mob 69336
mload mob 69336
mload mob 69336
mload mob 69336
mload mob 69336
mload mob 69336
mload mob 69336
mload obj 69338
~
#69320
��������� ������~
2 c 0
�������~
*wecho %actor.name% == %quest693.name%
if !%arg.contains(������)%
  wsend %actor.name% ��� ���������?
else
  if %actor.haveobj(69309)% && %actor.haveobj(69310)%
    %send% %actor% _�� �������� �������� ������ � ����� � ������� � ��������� ��� �������.
    if %actor.sex% == 1 
      %echoaround% %actor% %actor.name% ������ �������� ������ � ����� � �������, � ��������� ��� �������.
    else
      %echoaround% %actor% %actor.name% �������� �������� ������ � ����� � �������, � ��������� ��� �������.
    end
    wait 1s
    %send% %actor% _�� ������� ������� ����� � ������� ������.
    %echoaround% %actor% %actor.name% �����%actor.q% ������� ����� � ������� ������.
    wait 1s
    wecho &R_��������� ���� ����������� �����.&n
    wait 2s
    wecho &R_���������� ���� ����� ��������, ������ �������.&n
    wait 1s
    wecho _&R���������� ������ �� ��� ������ �������.&n
    wait 1s
    wecho _� �������� ����� � ���� �����.
    wecho _���������� ������ �� ����, ����� ������ � ����� ���, ������ �������.
    wecho _� ������� ������ ���� ���� ������������ �� ����� ������.
    wecho _������ ����� ��������� ����-������ � ����� �������� ����� �� ������, ����� �� ������.
    wait 1s
    wecho _����� ���������� ����� ������������ � ����� ��� ����������� �������� ��� ��� ����.
    wait 5s
    wat 69300 wecho ���-�� �������� ����� � ������ ������ ����.
    wteleport all 69300
    wait 1s
    calcuid zn 69314 mob
    attach 69316 %zn.id%
    remote quest693 %zn.id%
  else 
    wsend %actor.name% ����-�� �� �������
  end
end
~
#69321
��������������32~
2 c 1
������� �����~
if !%arg.contains(��������)%
  wsend %actor.name% ����� ������ �����?
  halt
else
  wait 1s
  wecho _�������� �����, ���������� - ������� ����������... � ����� �� ��� ��������-���������.
  calcuid vixrivik 69333 mob
  wteleport %vixrivik% 69332
  wait 1s
  wforce ����� ��
  wforce ������ � �� ��� ������� ��� �������?
  wforce ������ ������
  detach 69321 %self%
end
~
#69322
�������~
2 c 0
���� ��� ��~
if !%arg.contains(���)%
  halt
else
  %send% %actor% &R���� ������ ������, �� �������������, ��� ����� ���������� ������ � ��������.&n
  %echoaround% %actor% %actor.name% ����%actor.q% ������� � ���%actor.q% ��������.
  detach 69324 %self.id%
  attach 69324 %self.id%
  exec 69324 %self.id%
  eval nHit %actor.hitp%+5
  wdamage %actor% %nHit%
end
~
#69323
�����������~
2 c 0
���� ��� ��~
if !%arg.contains(�)%
  halt
else
  *���� �� ������ � ���������
  if !%actor.haveobj(69307)%
    %send% %actor% �� �� ������ ��� �����!
  else
    calcuid tmp 69307 obj
    *���� ������� �� ������
    if %tmp.val1%>0
      %send% %actor% &R���� ������ ������, �� �������������, ��� ����� ���������� ������ � ��������.&n
      %echoaround% %actor% %actor.name% �����%actor.g% �� ������� � ����%actor.g% ��������.
      eval nHit %actor.hitp%+5
      wdamage %actor% %nHit%
      *���� ����� �� ����� ������� ��������� � ������
      if %actor.id% != %quest693.id%
        *���� ����� �� ������� �������� �������� ��������� � �������
        *wecho �� �������� 
        detach 69326 %self.id%
        attach 69326 %self.id%
        exec 69326 %self.id%
        halt
      end
      *wait 5s
      wait 5s
      wecho &C_���������� ������� ���� ������ - ������� �������� ������� ������...&n
      wait 1s
      wecho &C_�����������, �� ������, ��� ����������� ����� �������� �������.&n
      wait 1s 
      wat 69317 wecho ���-�� �������� ����� � ������ ������ ����.
      wteleport all 69317
      *eval nMaxHit %actor.maxhitp%
      calcuid nTroom 69317 room
      detach 69327 %nTroom.id%
      attach 69327 %nTroom.id%
      exec 69327 %nTroom.id% 
      *end
    else
      *���� ������
      %send% %actor% �����.
    end
  end
end
~
#69324
������������������������~
2 bz 100
~
wait 15s
foreach i %self.pc%
  *wecho ��������� %i.name% ����� %i.hitp%
  if (%i.hitp% <= 1)
    wecho _���������� ����� ������ ������ � ������ �������� ��������-����������.
    *wload mob 69329
    calcuid zveruschka 69329 mob
    wteleport %zveruschka% 69313
    wforce ������ � !���! .%i.name%
    wait 1s
    wforce ������ � ������� ���� �������� ����������!
    wforce ������ � �� �� ����� ������ ������� ����...
    wait 1s
    wforce ������ �� .%i.name%
    wait 8s
    wecho _��������-���������� ������ ���� � ���� � ����������� � ������.
    wteleport %zveruschka% 69316
  end
done
~
#69325
���������������������~
1 c 2
����~
if !%arg.contains(�)%||%actor.room% == 69315
  halt
else
  %send% %actor% _�� ���������� ������ �� �����, �� ���� ���� ������� ����������.
end
~
#69326
�����������������������~
2 bz 100
~
*wecho ������ �������� ���������
wait 15s
foreach i %self.pc%
  *wecho ��������� %i.name% ����� %i.hitp%
  if (%i.hitp% <= 1)
    wecho _���������� ����� ������ ������ � ������ �������� ��������-����������.
    *wload mob 69329
    calcuid zveruschka 69329 mob
    wteleport %zveruschka% 69315
    wforce ������ � !���! .%i.name%
    wait 1s
    wforce ������ � ������� ���� �������� ����������!
    wforce ������ � �� �� ����� ������ ������� ����...
    wait 1s
    wforce ������ �� .%i.name%
    wait 8s
    wecho _��������-���������� ������ ���� � ���� � ����������� � ������.
    wteleport %zveruschka% 69316
  end
done
~
#69327
�������������������������������~
2 bz 100
~
wait 10s
foreach i %self.pc%
  *wecho ��������� %i.name% ����� %i.hitp%
  if (%i.hitp% <= 1)
    wecho _���������� ����� ������ ������ � ������ �������� ��������-����������.
    *wload mob 69329
    calcuid zveruschka 69329 mob
    wteleport %zveruschka% 69317
    wforce ������ � !���! .%i.name%
    wait 1s
    wforce ������ � �� ����� ������ ������� ����...
    wait 1s
    wforce ������ �� .%i.name%
    wait 2s
    wecho _��������-���������� ������ ���� � ���� � ����������� � ������.
    wteleport %zveruschka% 69316
  end
done
~
#69328
��������������76~
2 c 1
������� �����~
if !%arg.contains(��������)%
  wsend %actor.name% ����� ������ �����?
  halt
else
  *wload mob 69333
  wait 1s
  wecho _�������� �����, ���������� - ������� ����������... � ����� �� ��� ��������-���������.
  calcuid vixrivik 69333 mob
  wteleport %vixrivik% 69376
  wait 1s
  wforce ���� ��
  wforce ���� � �� ��� ������� ��� �������?
  wforce ���� ������
  detach 69328 %self.id%
end
~
#69329
�����������~
2 c 1
������� �����~
if !%arg.contains(�������)%
  wsend %actor.name% ��� ������?
  halt
else
  %send% %actor% _������� ����� ����� ������ ��� � ����� � ����������, �� ���������� ������ ���� ����� ������.
  %echoaround% %actor% _������� ����� ����� ������ � ����� %actor.vname% � ���������� ���� ������ %actor.name% ���%actor.q% �� ������.
  wait 2s
  wecho _&C������� ������� ����� � ����� ����� � ��� ����������...&n
  wait 5s
  wat 85217 wecho ���-�� �������� ����� � ������ ������ ����.
  wteleport all 85217
end
~
#69330
����������~
0 f 100
~
if %random.1000% < 201 && %world.curobjs(69328)% < 6
  mload obj 69328
end
~
#69331
��������������������~
0 q 100
~
wait 1s
mecho - ��, ������ ������ ��
mecho - �� �� ������ �� �� ��� �����?
wait 2s
mecho - ��� � ������� ��...
wait 1s
mecho - ��������� - ����������...
wait 2s
*��������� �������� - ���������
if (%actor.class% == 13)
  if %random.1000% < 101 && %world.curobjs(69354)% < 3
    mecho - ���� �������� ��...
    mecho - ���� �� ����� ����������� �������, �� �� ������ ��� �������� ������ ��.
    mecho - ��� ������ ��� �����. ��� ������� ���� ������.
    mecho - �� �������� � ����� �������� �������!
    mload obj 69354
    ���� ��� %actor.name%
  end
  detach 69331 %self.id%
end
~
#69332
��������������~
0 f 100
~
if %random.1000% < 101 && %world.curobjs(69348)% < 6
  mload obj 69348
end
~
#69333
����������������~
0 f 100
~
if %random.1000% < 101 && %world.curobjs(69349)% < 8
  mload obj 69349
end
~
#69334
���������~
0 f 100
~
if %world.curobjs(69309)% == 0
  mload obj 69309
end
if %random.1000% < 101 && %world.curobjs(69347)% < 6
  mload obj 69347
end
~
#69335
������������������~
2 cz 0
�������~
calcuid nNroom 69395 room
detach 69339 %nNroom.id%
attach 69339 %nNroom.id%
exec 69339 %nNroom.id% 
%send% %actor% _���� �������� ��������...
%echoaround% %actor% _���� %actor.rname% ��������� ����� ������ ��������� ���� �����...
wait 2s
%send% %actor% _� ���������� �������� ������, ������� � ������������� ���...
%echoaround% %actor% � ����� ������� ������������ � ���������� �������...
wait 3s
wteleport %actor% 69395
%echoaround% %actor% _������� �������� ������ ����� �������� ����� %actor.rname%.
~
#69336
�������������������~
2 cz 0
�������~
%send% %actor% _���� �������� ��������...
%echoaround% %actor% _���� %actor.rname% ��������� ����� ������ ��������� ���� �����...
wait 2s
%send% %actor% _� ���������� �������� ������, ������� � ������������� ���...
%echoaround% %actor% � ����� ������� ������������ � ���������� �������...
wait 3s
wteleport %actor% 69395
%echoaround% %actor% _������� �������� ������ ����� �������� ����� %actor.rname%.
~
#69337
���������������~
2 cz 0
�������~
%send% %actor% _���� �������� ��������...
%echoaround% %actor% _���� %actor.rname% ��������� ����� ������ ��������� ���� �����...
wait 2s
%send% %actor% _� ���������� �������� ������, ������� � ������������� ���...
%echoaround% %actor% � ����� ������� ������������ � ���������� �������...
wait 3s
wteleport %actor% 69395
%echoaround% %actor% _������� �������� ������ ����� �������� ����� %actor.rname%.
~
#69338
������������������~
2 cz 0
�������~
%send% %actor% _���� �������� ��������...
%echoaround% %actor% _���� %actor.rname% ��������� ����� ������ ��������� ���� �����...
wait 2s
%send% %actor% _� ���������� �������� ������, ������� � ������������� ���...
%echoaround% %actor% � ����� ������� ������������ � ���������� �������...
wait 3s
wteleport %actor% 69395
%echoaround% %actor% _������� �������� ������ ����� �������� ����� %actor.rname%.
~
#69339
������95~
2 z 0
~
if %random.1000% < 201 && %world.curobjs(69358)% < 4
  wait 1s
  %send% %actor% _�����, ����� ������ ����� �� �������� ���-�� ���������.
  wait 1s
  wload obj 69358
end
~
#69340
������96~
2 z 0
~
if %random.1000% < 201 && %world.curobjs(69357)% < 4
  wait 1s
  %send% %actor% _�����, ����� ������ ����� �� �������� ���-�� ���������.
  wait 1s
  wload obj 69357
end
~
#69341
������97~
2 z 0
~
if %random.1000% < 201 && %world.curobjs(69356)% < 4
  wait 1s
  %send% %actor% _�����, ����� ������ �����, �� �������� ���-�� ���������.
  wait 1s
  wload obj 69356
end
~
#69342
������94~
2 z 0
~
if %random.1000% < 201 && %world.curobjs(69355)% < 4
  wait 1s
  %send% %actor% _�����, ����� ������ �����, �� �������� ��������� �������.
  wait 1s
  wload obj 69355
end
~
#69343
���������~
2 f 100
~
*��������
calcuid nZmob1 69314 mob
detach 69316 %nZmob1.id%
attach 69302 %nZmob1.id%
attach 69301 %nZmob1.id%
*������
calcuid nZmob2 69302 mob
attach 69303 %nZmob2.id%
wait 1
*����
calcuid nZroom1 69365 room
attach 69306 %nZroom1.id% 
calcuid nZroom2 69366 room
attach 69307 %nZroom2.id% 
wait 1
calcuid nZroom3 69359 room
attach 69308 %nZroom3.id% 
calcuid nZroom4 69353 room
attach 69309 %nZroom4.id% 
wait 1
*������
calcuid nZmob3 69310 mob
attach 69331 %nZmob3%
*calcuid pech 69314 mob
*attach 69303 %pech.id% �� �� ������ ���� �������
*��������
wait 1
calcuid rVixroom 69332 room
attach 69321 %rVixroom%
calcuid rVixroom1 69376 room
attach 69328 %rVixroom1%
wait 1
*����������� ������������
calcuid rkv 69302 room
attach 69357 %rkv%
~
#69344
������������~
2 c 0
������~
%send% %actor% _���� �������� ��������...
%echoaround% %actor% _���� %actor.rname% ��������� ����� ������ ��������� ���� �����...
wait 2s
%send% %actor% _� ���������� �������� ������, ������� � ������������� ���...
%echoaround% %actor% � ����� ������� ������������ � ���������� �������...
wait 3s
wteleport %actor% 69394
%echoaround% %actor% _������� �������� ������ ����� �������� ����� %actor.rname%.
~
#69345
�����������~
0 n 100
~
if %random.1000% < 350 
  mload obj 69337
  ���� ���
end
~
#69346
���������~
0 r 100
*~
wait 2
if %actor.canbeseen%
  dg_cast '������' %actor.name%!
  dg_cast '����' %actor.name%!
  dg_cast '�������������' %actor.name%!
  dg_cast '��������' %actor.name%!
  dg_cast '���������' %actor.name%!
  dg_cast '�������' %actor.name%!
  dg_cast '�� ��' %actor.name%!
  dg_cast '�� ��' %actor.name%!
  dg_cast '�� ��' %actor.name%!
  dg_cast '�� ��' %actor.name%!
end
~
#69347
�����������~
0 f 100
*~
if %random.1000% < 201 && %world.curobjs(69341)% < 2
  mload obj 69341
  halt
end
if %random.1000% < 201 && %world.curobjs(69339)% < 6
  mload obj 69339
  halt
end
~
#69348
�������������~
0 f 100
~
if %random.1000% < 500 && %world.curobjs(69316)% < 12
  *�����-�������!
  mload obj 69316
end
if %random.1000% < 201 && %world.curobjs(69318)% < 5
  mload obj 69318
  halt
end
if %random.1000% < 201 && %world.curobjs(69351)% < 5
  mload obj 69351
  halt
end
~
#69349
�����������~
0 f 100
~
if %random.1000% < 500 && %world.curobjs(69316)% < 12
  *����� �������!
  mload obj 69316
end
if %random.1000% < 201 && %world.curobjs(69302)% < 5
  mload obj 69302
  halt
end
if %random.1000% < 201 && %world.curobjs(69352)% < 5
  mload obj 69352
  halt
end
if %random.1000% < 201 && %world.curobjs(69319)% < 5
  mload obj 69319
  halt
end
~
#69350
������������~
0 f 100
~
if %random.1000% < 201 && %world.curobjs(69320)% < 5
  mload obj 69320
  halt
end
if %random.1000% < 201 && %world.curobjs(69329)% < 5
  mload obj 69329
  halt
end
~
#69351
���������~
0 f 100
~
if %random.1000% < 201 && %world.curobjs(69317)% < 5
  mload obj 69317
end
~
#69352
��������~
0 f 100
~
if %random.1000% < 201 && %world.curobjs(69350)% < 4
  mload obj 69350
end
~
#69353
��������������1~
0 r 100
~
if %actor.class% == 4
  %actor.wait(3)%
  mecho _ 
  mecho �������� ������� ������ ���.
  ���� %actor.name% ��� ���� ���� �����?
  ���� %actor.name% �� ����� �� ����� ������� ����� ���, ��� ����� ��� ����� ���������...
  ���� %actor.name% �����, ������...
end
~
#69354
��������������2~
0 r 100
~
if %actor.class% == 4
  %actor.wait(5)%
  wait 1s
  mecho &r_����� ��������� ���� ����� ���������.&n
  ���� %actor.name% ����� ���������?
  ���� %actor.name% �� ����� �� ����� ������� ����� ���, ��� ����� ��� ����� ���������...
  ���� %actor.name% ����� �� ��������, ������...
end
~
#69355
��������������3~
0 r 100
~
*��������� ��������������
if %actor.class% == 4
  %actor.wait(10)%
  wait 1s
  %send% %actor% &R_�����, ������!
  %send% %actor% &R_�������� ��� ��������, �����... - ������������ �����.
  %send% %actor% &R_�� ����� �� ����� ������� ����� ���, ��� ����� ��� ����� ���������...
  wait 1s
  mecho &C_����������� ����� �������, ������� ���� �������!&n
  %send% %actor% &C_� ������ ��������� ������� �������� ������ ���, ����� ���������� - ����� �������.&n
  %echoaround% %actor% &C_� ������ ��������� ������� �������� ������ %actor.rname%, ����� ���������� - ����� �������.&n
  eval nHit %actor.hitp%-1
  mdamage %actor% %nHit%
end
~
#69356
������������~
0 r 100
~
*���� ��������������� �� �������
if %actor.class% == 4
  wait 1s
  %send% %actor% &R_���� ���� ���������, ������... - ��� ������ ����������� �����.
  %send% %actor% &R_�� ���� �� �� ����� ����, ��� �������� ����!
  wait 1s
  mecho _�������� �� ���������� ������ - ����� ������� ��������!
  %send% %actor% _� ���������� ���� �������� ������ �������� ��� ������.
  mdamage %actor% 100 Hit
  %echoaround% %actor% _� ���������� ���� �������� ������ �������� ������ %actor.rname%.
  mteleport %actor% 85271
end
~
#69357
�������������������8502~
2 e 100
~
if !%actor.quested(85021)%
  halt
end
*
if %actor.quested(85025)%
  halt
end
if %exist.mob(69314)%
  *������ ���� ���� ����� � ��������
  calcuid m2 69314 mob
  attach 69358 %m2% 
  exec 69358 %m2% 
  detach 69358 %m2% 
end
detach 69357 %self%
~
#69358
���������~
0 z 0
~
mload obj 85134
~
$~
