* BRusMUD trigger file v1.0
#90100
Tree <����� � �������>~
2 e0 100
0~
calcuid BadGuy 90022 mob
attach  90101 %BadGuy.id%
exec    90101 %BadGuy.id%
return  1
calcuid room  90051 room
detach  90100 %self.id%





~
#90101
Tree <��������� ������� �������>~
0 a0 100
0~
return 0
while  1
       wait 1
       if !%self.fighting%
         switch %random.8%
         case 1
         mecho   - ��, ��, ������ �������, - �������� ���������  � �������� � ������� ������.
         masound - ��, ��, ������ �������, - ����������� �� �������� �������.
         break
         case 2
         mecho   - �� �������� �����, ������ ����� ? - �������� ���������, � �������� � �������
         mecho   ������, ������� ������ ������� ���� � ������. ������ ������ ��������.
         masound - �� �������� �����, ������ ����� ? - ����������� �� �������� �������. �����
         masound �������� ���-�� ����� ����.
         break
         case 3
         mecho   - �� ��, ����� ������, ������-�� ��� ������ ! - ���������� ��������� � ����
         mecho   ������� � ���. ������ �������� � ������ � ����.
         masound - �� ��, ����� ������, ������-�� ��� ������ ! - ����������� �� �������� �������.
         break
         done
       end
       wait 4s
done








~
#90102
Tree <��������� ����>~
0 f0 100
~
mload obj 90106
if %world.curobjs(90103)% < 10 && %random.10% < 2
   mload obj 90103
end
if %world.curobjs(90104)% < 10 && %random.10% < 2
   mload obj 90104
end
if %world.curobjs(90105)% < 10 && %random.10% < 2
   mload obj 90105
end
calcuid Baron 90020 mob
attach  90103 %Baron.id%





~
#90103
Tree <������ ������� ���� ������>~
0 j0 100
0~
if %object.vnum% != 90106
   return 0
   halt
end
return 1
wait   1
if %actor.sex% == 2
   mecho - ������� ����, ���������� ����.
else
   mecho - ������������� ����, ������������ ������.
end
mecho - ��� � �����-�� ����������� �������, � ��� ����� ������������ ����������
mecho ������.
mecho - ����� ��� �������, �������� �������� �� ������ � ��������.
mecho - ��� ��������� � ���������. ������ ���� �������-���-����� � ���������,
mecho �� ������ �����������. ������� ��� ��� ��, ������ ����� ��� ��������, ��
mecho � ��� �� ���� ����� ���������. ��������� �������, � ����, ����������� �����
mecho ����������� ��������� � ������ �������, ���� �� ���� ��� ����� 30 ���.
mecho - ����� �� ������� ������ ���� �� ������������ ����, ���� ������ � ���� ���
mecho � ������ � ������.
mecho - ������ ����� �� ��������� � ���������� �����, ��� �������� � ���� ��������
mecho 2 ��������, ������� ���-����� ������ �� ����� ����������� ����������.
mecho - �������� ��� �����, �� ���� ����� �����������. ������� ����� ������ �
mecho ����������� �������, ���� ������ - ��� � ���������.
mecho - � ������ ���� � �����, � �� �� ��������� �� �������.
mdoor  90050 west flags a
mdoor  90050 west room  90054
mdoor  90054 east flags a
mdoor  90054 east room 90050
follow %actor.name%
detach 90103 %self.id%





~
#90104
Tree <PC ����� � ���������>~
0 q0 100
0~
wait 1
mecho - ������, �������, ���� ������� ? - ���������� �������.
attach 90105 %self.id%








~
#90105
Tree <� �������� �� ���������>~
0 d0 0
�������� ������� ����~
if !%speech.contains(�������)%
   return 0
   halt
end
wait  1
mecho �� ���������� �������� ���������� ������������ ������ �������.
mecho - ��-��-��, ������ �� �� ����, - �������� �������� ��, - �����
mecho - ����� �� ����! ������� ����� �������� ������ �� �����.
makeuid Hero %actor.id%
global  Hero
calcuid velik 90024 mob 
attach  90106 %velik.id%
detach  90104 %velik.id%
detach  90105 %velik.id%



~
#90106
Tree <� ���� �������>~
0 d0 0
���� ������� ����~
if (!%speech.contains(�������)% && !%speech.contains(����)%) || (%actor.id% != %Hero.id%)
   halt
end
calcuid second 90025 mob
if %second%
   calcuid room 90056 room
   attach  90107 %room.id%
   exec    90107 %room.id%
   detach  90107 %room.id%
   if (%second.room% == %self.room%)
      wait 1
      attach  90108 %self.id%
      mecho - ��� !- ����������� ������� ������� � �������� �� �����.
      mecho ������ �� ���������, ���� �� ���� ��������� � ����������
      mecho ��������, ������ ��������� ������.
      mecho - �� ����� ���, - �������� ������, � ��������� �����������
      mecho ������� ������ �� �����.- �� ����� ����������, - ����������
      mecho ���, ������� �������.
   end
end
detach  90106 %self.id%



~
#90107
Tree <������������� ������ ��������>~
2 z0 100
100~
wteleport �����.������� 90056
return    0



~
#90108
Tree <� ��������>~
0 d0 0
�������� �������~
if %actor.id% != %Hero.id%
   halt
end
mkill   �����
detach  90108 %self.id%








~
#90109
Tree <�������� ������>~
2 c0 1
�������� �������� ��������~
if !%arg.contains(������)% && !%arg.contains(������)%
   return 0
   halt
end
wecho ������� � �������� ����� �� �����, �������� ������.
wdoor   90057 west purge
wdoor   90057 west room 90058
wdoor   90058 east purge
wdoor   90058 east room 90057
calcuid room 90057 room
detach  90109 %room.id%





~
#90110
Tree <PC ����� �� ����>~
2 e0 100
0~
wait  1
wecho  -������, �����, ������ ������ ������ ��� ������ ��������� ������� ! -
wecho  ���������� ����� ���-������.
wload   mob 90026
calcuid Tengis 90026 mob
set     Target %random.pc%
if %Tengis% && %Target%
   wecho  �� ���� ��������� ����������� ���������� ���� ������ � ������, ������������
   wecho  ���������� ������.
   wecho  ������ � ������ "��������" �� ������ ��������� ���������� � ������� ������,
   wecho  �������� ����� �����...
   wait   3s
   wforce %Tengis% attack %Target.name%
end
detach  90110 %self.id%





~
#90111
Tree <������� ��������>~
0 f0 100
~
if %world.curobjs(90107)% < 10 && %random.10% < 2
   mload obj 90107
end
mecho   -������, ���� ��,-��������� ������� ���-�����.
mload   mob 90027
calcuid Narbek 90027 mob
set     Target %random.pc%
return  0
if %Narbek% && %Target%
   mecho  �� ����� ��������� ��������� ����, �� ���� ��� � ������ �����.
   mecho  - � ���� ����... - ������� ��, ������ ������������� ���� �����,
   mecho  � ����� ������ ������� "��������"
   mforce %Narbek% attack %Target.name%
end





~
#90112
Tree <������� ��������>~
0 f0 100
~
if %world.curobjs(90108)% < 10 && %random.10% < 2
   mload obj 90108
end
if %world.curobjs(90109)% < 10 && %random.10% < 2
   mload obj 90109
end
mdoor 90058 west flags a
mdoor 90058 west room  90059





~
#90113
Tree <PC ����� � �����>~
2 e0 100
0~
if %started%
   halt
end
wait  1
set   started 1
while 1
      set     IbnNalim 0
      calcuid IbnNalim 90028 mob
      if !(%IbnNalim%)
         break
      end
      if !%IbnNalim.fighting%
         wait   1
         switch %random.4%
         case 1
         wecho   -������, ����� ������ ����, ��, - ���������� ��������� �����, � �����
         wecho   ������������.
         wasound -������, ����� ������ ����, ��, - ���������� ��������� �����, � �����
         wasound ������������.
         break
         case 2
         wecho   -� ����� ���� � ���� �����, ��, ������ ��� ����� ������. - �������� ��������
         wecho   ����.
         wasound -� ����� ���� � ���� �����, ��, ������ ��� ����� ������. - �������� ��������
         wasound ����.
         break
         done
      end
      wait 6s
done
detach  90113 %self.id%





~
#90114
Tree <PC ����� � ������ ������� �����>~
2 e0 100
~
wait 1
wecho - ������ ����, �� ���� ��� ����, ����� � ����...
wecho - ����� ������� ! - �������� �������� ���-�����.
wload   mob 90029
calcuid monstr 90029 mob
if %monstr%
   wecho �� ������, ����� � ������� ����������� ���-������ ��-�� ��� ��������, �
   wecho ��������� "����� �������" ��������� �� �������� ����������� � ����������.
   wecho � ���������� � ������� ��� �������� � ���� �������.
   wait   3s
   set    Target %random.pc%
   wforce %monstr% attack %Target.name%
end
wdoor   90061 west flags a
wdoor   90061 west room  90060
calcuid wizard 90028 mob
detach  90113  %wizard.id%
detach  90114  %self.id%



~
#90115
Tree <��������� ��������>~
0 f0 100
~
if %world.curobjs(90110)% < 10 && %random.10% < 2
   mload obj 90110
end
if %world.curobjs(90111)% < 10 && %random.10% < 2
   mload obj 90111
end
if %world.curobjs(90112)% < 10 && %random.10% < 2
   mload obj 90112
end
if %world.curobjs(90113)% < 10 && %random.10% < 2
   mload obj 90113
end
if !%actor% || %actor.vnum% != -1
   halt
end
calcuid Girl 90030 mob
if %Girl%
   if %actor.sex% == 2
       mecho - ������� ����, �������, ��� ��� ���� �������� � ������
       mecho �� �������.
   else
       mecho -��, �������, ��� ������� ����.
   end
   mexp   %actor% 50000
   mecho ������������ �������� ������ ����������� ���� ��� � �������� �� �����...
   mpurge %Girl%
end
calcuid Older 90020 mob
if %Older% && %Older.room% == %actor.room%
   mpurge %Older%
   mecho  ������ �����������. �� ��� ����� �������� �������� ������� �������
   mecho  � ������� ������.
   mload  mob 90031
end
return  0
wait 1
calcuid Baron 90031 mob
if %actor% && %Baron%
   switch %actor.class%
   case 0
   break
   case 1
     if %random.20% == 1
       mecho ������� ������� ������: ����� �� ������ ��� �����.
       mecho ����� ��� � �� ����� ����, �� � ���� ������ ������ ���.
       mload obj 529
       ���� ���� %actor.name%
     end
   break
   case 2
   if %actor.skill(����������� ������)% < 100
      mskilladd %actor.name% ���������.���� %random.3%
      ��� %actor.name%
      mecho ����� ������: � ����� ����, %actor.name%, ����� ������� ���������� ������ ������.
      �����
   end
   break
   case 3
   break
   case 4
   if %actor.skill(��������)% < 100
      mskilladd %actor.name% �������� %random.3%
      ��� %actor.name%
      mecho ����� ������: � ����� ����, %actor.name%, �����, ����� ������� �������� ����.
      �����
   end
   break
   case 5
     mecho ������� ������� ������: ����� �� ������ ������� �����.
     %actor.gold(+15000)%
   break
   case 6
   break
   case 7
   break
   case 8
   break
   case 9
   break
   case 10
   break
   case 11
   break
   case 12
   break
   case 13
   break
   default
   break
   done
*   if %gold%
*      %actor.gold(%gold%)%
*   end

end





~
#90116
Tree <��������� ����� � ���� 901>~
2 g0 100
0~
if %actor.vnum% != 90007
   halt
end
wait    1
calcuid room   90073 room   
attach  90121  %room.id%
calcuid room   90093 room
attach  90140  %room.id%
attach  90117 %actor.id%
exec    90117 %actor.id%
detach  90117 %actor.id%
attach  90118 %actor.id%
detach  90016 %self.id%





~
#90117
Tree <������������� ���������>~
0 z0 100
0~
mtransform 90037
return     0





~
#90118
Tree <� ���>~
0 d0 1
���� ��� ������� ����~
if %actor.id% != %Keeper.id%
   halt
end
wait 1
if %actor.sex% == 2
   mecho - �, ��� �������������, � ������� ����, - ������� ���������.
else
   mecho - �, �������� ������, ��� ���������, � ������ ����� ���� ����� ��������, -
   mecho ��������� ��������� ���������.
end
mtransform 90038
�����
attach     90119 %self.id%
detach     90118 %self.id%





~
#90119
Tree <� �����>~
0 d0 1
������ ����� ������ ������~
if %actor.id% != %Keeper.id%
   halt
end
wait 1
if %actor.sex% == 2
   mecho - � ������, - ������� ���������� ���������.
else
   mecho - ������, � ���������� ������,- �� ����� � ��� �����������
   mecho ������� ������� ���������.
end
mtransform 90037
������
attach     90118  %self.id%
detach     90119  %self.id%





~
#90120
Tree <START ZONE 901>~
2 f0 100
0~
calcuid sorceress 90036 mob
detach  90129     %sorceress.id%

calcuid room   90051 room
attach  90100  %room.id%
calcuid room   90057 room
attach  90109  %room.id%
calcuid room   90058 room
attach  90110  %room.id%
calcuid room   90059 room
attach  90113  %room.id%
calcuid room   90061 room
attach  90114  %room.id%
calcuid room   90048 room
attach  90116  %room.id%
calcuid room   90073 room
detach  90121  %room.id%
calcuid room   90093 room
detach 90140  %room.id%

wdoor   90050 west purge
wdoor   90054 east purge
wdoor   90057 west flags abc
wdoor   90058 east flags abc
wdoor   90076 east  purge
wdoor   90079 west  purge
wdoor   90083 down  flag  abc
wdoor   90058 west  purge
wdoor   90061 west  purge





~
#90121
Tree <��������� ����� � ���>~
2 g0 100
0~
if (%actor.vnum% != 90037)
   halt
end
wait   1
attach 90122 %actor.id%
exec   90122 %actor.id%
detach 90122 %actor.id%
wteleport ��������� 90069
wecho �������� ��-�� ������ �������� ������ ����������. ���� �� ��� ���������� ����������
wecho ��������� � ��������� � ���, � ��������� ����������� �� ���.
wload  mob 90032
wload  mob 90032
wload  mob 90032
detach 90121 %self.id%



~
#90122
Tree <������������� � ������������ ���������>~
0 z0 0
100~
mtransform 90038
return     0
detach     90118 %self.id%
attach     90119 %self.id%





~
#90123
Tree <������� ���������>~
0 n0 100
0~
attach 90126  %self.id%
set    target %random.pc%
attack %target.name%








~
#90124
Tree <������ �����>~
0 f0 100
0~
if %world.curobjs(90116)% < 10 && %random.10% < 2
   mload obj 90116
end
if %world.curobjs(90117)% < 10 && %random.10% < 2
   mload obj 90117
end
mload  mob 90034
return 0





~
#90125
Tree <������� �����>~
0 n0 100
0~
mecho .�������� �� ������ ��������� �������� ���� ��������.
wait  1
set   next %self.people%
while %next%
      if %next.vnum% == 90032
         mecho  ��� ���� �������� ��������� �������� "��, �������!" � ������� � ������.
         makeuid oborvanec %next.id%
         set     next %next.next_in_room%
         mpurge  %oborvanec%
      else
          set next %next.next_in_room%
      end
done
calcuid princess 90037 mob
if !%princess%
   calcuid princess 90038 mob
   attach  90117 %princess.id%
   exec    90117 %princess.id%
   attach  90118 %princess.id%
   detach  90119 %princess.id%
   detach  90117 %princess.id%
end
if %princess%
   mecho  -���� ! - �������� ��������� �������� � ��������� � ���������.
   follow ���������
else
   set    princess %random.pc%
   follow %princess.name%
end
attach  90127 %self.id%
attach  90128 %self.id%
calcuid sorceress 90036 mob
attach  90129 %sorceress.id%
exec    90128 %self.id%
mdoor   90076 east flags a
mdoor   90076 east room  90079
mdoor   90079 west flags a
mdoor   90079 west room  90076
return 0





~
#90126
Tree <��������� �����>~
0 f0 100
0~
if %world.curobjs(90114)% < 10 && %random.10% == 1
   mload obj 90114
end
if %world.curobjs(90115)% < 10 && %random.10% == 1
   mload obj 90115
end








~
#90127
Tree <���������� ������>~
0 p0 100
0~
if %damager.vnum% == -1
   if %damager.sex% == 2
      mecho - �� ����, �������, � ���� �������. - ��������%self.u% %self.name%.
   else
      mecho - ���� �� ��� ��� ���� �������, � ��������� ����, � �� ��������
      mecho ���� �������. - �������%self.g% %self.name%.
   end
   return 1
   halt
end
return 0








~
#90128
Tree <Prince goes>~
0 a0 100
0~
return 0
while 1
      wait 10s
      switch %random.8%
      case 1
      mecho - ������ ����-�-�, - ��������%self.g% %self.name%.
      break
      case 2
      set  pc %random.pc%
      if %pc.sex% == 2
          mecho - ��������, ��� ��������-�-� ! - �������%self.g% %self.name%.
      else
          mecho - ��������, ���� ��������-�-� ! - �������%self.g% %self.name%.
      end
      break
      case 3
      mecho - �-�-�, ���������� ����-�-� ! - ��������%self.g% %self.name%.
      break
      case 4
      mecho - ������ �� �����-�-� ! - �������%self.g% %self.name%.
      break
      case 5
      mecho - � ����� ����-�-� ! - ��������%self.g% %self.name%.
      break
      done
done








~
#90129
Tree <����� ����� � ���>~
0 h0 100
0~
if %actor.vnum% != 90034
   halt
end
wait 1
mecho - ������ ������� ! - ���������� %self.name% � ������ �����
mecho _�� ���� ��������� ������.
mecho - �, ���� ���-������ �� ���������� ����� ����� �������� ��������,
mecho ���� ��� ���� �� �������, � �� ������ �� �������� ��� ����� �����.
set   menno 0
set   pc    %self.people%
while %pc%
      if %pc.vnum% == -1
         if %pc.sex% == 1
            if !%menno%
               mecho ��� ���������������� ��������� �� ������� � ���� (�������� ���� �������
               mecho ������������), ����� ������ �������������� ������ ��
               set menno 1
            end
            mecho _%pc.rname%
            msend %pc.name% (� ������, ������, -�������� ��, ������ ������� ��� ���������� ���������)
         end
      end
      set pc %pc.next_in_room%
done
attach 90130 %self.id%



~
#90130
Tree <� ��������>~
0 d0 1
����� �������� ���~
if %actor.vnum% != -1
   halt
end
wait  1
mecho - ��� � ������� ! - ��������� � ������ ���.
mecho - ������ ���� ������ ! ���� �� ��� ������� - �� ����� ������ ���� �� ������.
mload obj 90118
give  ������ %actor.name%
wait  2s
set   pc %self.people%
while %pc%
      set next_pc %pc.next_in_room%
      if %pc.vnum% == -1
          mteleport %pc% 90081
          if %pc.realroom% == 90081
             msend %pc% �� ��������� �� ������, ������� � ������ ������.
          end
      end
      if %next_pc%
         makeuid pc %next_pc.id%
      else
         set pc 0
      end
done
detach 90129 %self.id%
detach 90130 %self.id%





~
#90131
Tree <������ ���� ����������� ���������>~
0 h0 100
0~
if %actor.vnum% != -1 || %answer% || %self.fighting%
   halt
end
wait 1
attach 90132 %self.id%
while 1
      if !%self.fighting%
         switch %random.3%
         case 1
         mecho - �������, ��������� ����������, ���� ����, ������ "�", ������ "�", -
         mecho �������� ���������� ���� � ������� ���������.
         set    answer �������
         global answer
         break
         case 2
         mecho - ������� �������� ������ � ����������, ���� ����, ������ "�", ������� "�", -
         mecho ����������� ������ � ������.
         set    answer �������
         global answer
         break
         case 3
         mecho - ������� �������, ����� ����, ������ "�", ����� "�", -
         mecho ������������ �������� � ����� ������� ������� � �������.
         set    answer ������
         global answer
         break
         done
      end
      wait  20s
done








~
#90132
Tree <������� ���-�� ���������>~
0 d0 0
*~
if %actor.vnum% != -1
   halt
end
wait 1
if (%speech%==%answer%)
   set okquest 1
else
   set okquest 0
end
mecho   ������ ���� ��������� ������ �����.
set     pc  %actor.people%
calcuid amuletObj 90118 obj
set     amulet 0
while %amuletObj% && %pc% && !%amulet%
      if %pc.vnum%==-1
         if %pc.eq(3)%==%amuletObj% || %pc.eq(4)%==%amuletObj%
            set amulet 1
         end
      end
      set pc %pc.next_in_room%
done
if !%amulet%
   mecho  -��� ������� ! - �������� �� ��������� �������.
   stand
   set    target %random.pc%
   attack %target.name%
   detach 90131  %self.id%
   detach 90132  %self.id%
   halt
end
if !%okquest%
   mecho - ��, �������� ����� �����, ������ �� ����� ! - ���������� �����������
   mecho ��, � ����� �������� � ���������.
   halt
end
if %actor.sex% == 2
   mecho - ����� ��������� ����������, - ������ ��������, ������� %actor.vname% ����������
   mecho ��������, - � �������, � ����-��.
else
   mecho - ���������, - ��������� ����������� ��, - ����� ����� ������� ����.
end
wait  1s
mecho - ������� ��, - ��������� ������ ���� � ������ ��������.
mdoor  90083 down  purge
mdoor  90083 flags a
mdoor  90083 down  room 90084
detach 90131 %self.id%
detach 90132 %self.id%





~
#90133
Tree <���� �� ����� ������� �� PC>~
0 q0 100
0~
if %actor.vnum% != -1
   halt
end
set pc  %actor.people%
calcuid amuletObj 90118 obj
set     amulet 0
while %pc% && !%amulet%
      if %pc.vnum%==-1
         if (%pc.eq(3)%==%amuletObj%) || (%pc.eq(4)%==%amuletObj%)
            set amulet 1
         end
      end
      set pc %pc.next_in_room%
done
if !%amulet%
   wait   1
   mecho  - ��� ������� ! - �������%self.g% %self.name%.
   stand
   set    target %random.pc%
   attack %target.name%
   halt
end








~
#90134
Tree <�������� �����>~
0 f0 100
0~
calcuid prince 90034 mob
if !%prince%
   halt
end
attach  90135 %prince.id%
exec    90135 %prince.id%
detach  90135 %prince.id%
if %actor.vnum% != -1
   halt
end
calcuid sorceress 90036 mob
attach  90136 %sorceress.id%
makeuid Killer %actor.id%
remote  Killer %sorceress.id%





~
#90135
Tree <������������� ������ �������>~
0 z0 0
*~
mtransform 90035
follow     me
return     0





~
#90136
Tree <��������� � ���������>~
0 q0 100
*~
if %actor.name% != %Killer.name%
   halt
end
wait   1
mecho  - � ����� ���������� ����, %actor.name% ! - ���������� ��������� ���.
if %actor.sex% == 1
   msend %actor% ��� ��������� � ��� �� ��� � ���� ���� �����������. �� ������ ��...
   msend %actor% (��� ���� ������ - �� ������ ��������� ����. � ����� ���, ��������,
   msend %actor% ����� ��������� �������, ���, ����� �������, ������)
end
wait 2
mecho ��� ������ ����������, ��������� �� %actor.rname% � ������� � ������ ���������� �������� ����������.
wait 1
switch %actor.class%
*������
  case 1
   if %actor.skill(���������)% < 100
      mskilladd %actor.name% ��������� %random.3%
   else 
      ��� %actor.name%
      mecho ��� ����� �� %actor.rname% �������: "H��������, ��� ���������� ������, ��� ���� ����� ����� �� ������������ ������!"
      �����
   end
  break
*���
  case 2
   if %actor.skill(�������� ������)% < 100
      mskilladd %actor.name% �����.����� %random.3%
   else 
      ��� %actor.name%
      mecho ��� �������: � ����� ����, %actor.name%, ����� ������� ���������� ������ ������.
      �����
   end
  break
*��������
  case 3
   if %actor.skill(����������� �����)% < 100
      mskilladd %actor.name% �����������.����� %random.3%
   else 
      ��� %actor.name%
      mecho ��� ����� �� %actor.rname% �������: "H��������, ��� ���������� ������, ��� ���� ����� ����� �� ������������ ������!"
      �����
   end
  break
*�������
  case 4
   if %actor.skill(�������� ������)% < 100
      mskilladd %actor.name% �����.����� %random.3%
   else 
      ��� %actor.name%
      mecho ��� �������: � ����� ����, %actor.name%, ����� ������� ���������� ������ ������.
      �����
   end
  break
*����
  case 5
   if %actor.skill(���������� �����)% < 100
      mskilladd %actor.name% ����������.����� %random.3%
   else 
      ��� %actor.name%
      mecho ��� ����� �� %actor.rname% �������: "H��������, ��� ���������� ������, ��� ���� ����� ����� �� ������������ ������!"
      �����
   end
  break
*������
  case 9
   if %actor.skill(������ �����)% < 100
      mskilladd %actor.name% ������.����� %random.3%
   else 
      ��� %actor.name%
      mecho ��� ����� �� %actor.rname% �������: "H��������, ��� ���������� ������, ��� ���� ����� ����� �� ������������ ������!"
      �����
   end
  break
*�������
  case 10
   if %actor.skill(����)% < 100
      mskilladd %actor.name% ���� %random.3%
   else 
      ��� %actor.name%
      mecho ��� ����� �� %actor.rname% �������: "H��������, ��� ���������� ������, ��� ���� ����� ����� �� ������������ ������!"
      �����
   end
  break
*������
  case 11
   if %actor.skill(��������)% < 100
      mskilladd %actor.name% �������� %random.3%
   else 
      ��� %actor.name%
      mecho ��� ����� �� %actor.rname% �������: "H��������, ��� ���������� ������, ��� ���� ����� ����� �� ������������ ������!"
      �����
   end
  break
*�����
  case 12
   if %actor.skill(�������)% < 100
      mskilladd %actor.name% ������� %random.3%
      Say �������� �������� �������� ----- %actor.class%
   else 
      ��� %actor.name%
      mecho ��� ����� �� %actor.rname% �������: "H��������, ��� ���������� ������, ��� ���� ����� ����� �� ������������ ������!"
      �����
   end
  break
  default
   ���
   wait 3
   say ���-�� ��� ��������� �, ��� ���� ������, �� ���������� ������....
   �����
  break
done   

detach 90136 %self.id%








~
#90137
Tree <���� ���� � ��������>~
0 f0 100
0~
if (%world.curobjs(90119)% < 10) && (%random.10% < 2)
   mload obj 90119
end








~
#90138
Tree <���� ���� � �������>~
0 f0 100
0~
if (%world.curobjs(90120)% < 10) && (%random.10% < 2)
   mload obj 90120
end








~
#90140
Tree <��������� ������ � ��������� ������� ����>~
2 g0 100
0~
if %actor.vnum% != 90037
   halt
end
wait    1
wforce  %actor% follow me
wpurge  %actor%
switch %random.10%
case 1
 if %world.curobjs(544)%==0
  wecho ����� �� ������ ��� �����.
  wload obj 544
 end
 break
* �������� ������
case 2
 if %world.curobjs(545)%==0
  wecho ����� �� ������ ��� �����.
  wload obj 545
 end
 break
* ����
case 3
 if %world.curobjs(546)%==0
  wecho ����� �� ������ ��� �����.
  wload obj 546
 end
 break
 default
wecho �� ����� ����� ��� ������ ������ ����� ���������� �������: �������.
wecho ���� �� ������, �� �� �����, ���� �� ������ ����, �������� ��.
  wait 1s
wecho ������ �� �� ���� �������� �������� ������ ���-�� �����.
  wload obj 101
  wload obj 102
  wload obj 103
 end
 break
done





~
$
$
