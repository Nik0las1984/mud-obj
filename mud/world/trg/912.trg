#91200
<912 Enter command>~
2 c 0
����� ������� ������~
if (%actor.vnum% != -1)
  halt
end
if !%arg.contains(���)%
  return 0
  halt
end
if !%actor.rentable%
  wsend %actor% &R� ����� � ������� ���������� ��������� �������� ����������.&n
  halt
end
wait 1
wsend %actor% ����� �� ��������, �� ������������ � ���...
wechoaround %actor% %actor.name% �����%actor.g% �� ����������� � �����%actor.q% � ���...
wteleport %actor% 91200
wechoaround %actor% %actor.name% �������%actor.q% � ���...
~
#91201
<912 Send enter message>~
2 z 100
~
return 0
wechoaround %actor% %actor.name% �������%actor.q% � ���...
~
#91202
<912 Enter command>~
2 c 0
����� ������� ������~
if (%actor.vnum% != -1)
  halt
end
if !%arg.contains(���)%
  return 0
  halt
end
wait 1
wsend %actor%       ����� �� ��������, �� ������������ � ���...
wechoaround %actor% %actor.name% �����%actor.g% �� ����������� � �����%actor.q% � ���...
wteleport %actor% 91204
calcuid   trgroom 91204 room
attach    91203 %trgroom.id%
run       91203 %trgroom.id%
~
#91203
<912 Send enter message>~
2 z 100
~
return 0
wechoaround %actor% %actor.name% �������%actor.q% � ������...
~
#91204
<912 Load Gorinya>~
0 n 100
~
if (%world.curobjs(91207)% < 4) && (%random.50% <= 12)
  mload obj 91207
elseif (%world.curobjs(91208)% < 4) && (%random.50% <= 12)
  mload obj 91208
elseif (%world.curobjs(91213)% < 4) && (%random.50% <= 12)
  mload obj 91213
end
wear ����
~
#91205
<912 Gorinya killed>~
0 f 100
~
if (%world.curobjs(91217)% < 7) && (%random.100% <= 10)
  mload obj 91217
elseif (%world.curobjs(91219)% < 7) && (%random.100% <= 10)
  mload obj 91219
end
calcuid questroom 91241 room
attach  91212 %questroom.id%
run     91212 %questroom.id%
~
#91206
<912 Gorinya keeper killed>~
0 f 100
~
if (%world.curobjs(91218)% < 4) && (%random.3% == 1)
  mload obj 91218
end
if (%world.curobjs(91220)% < 4) && (%random.3% == 1)
  mload obj 91220
end
~
#91207
<912 Three headed zmey killed>~
0 f 100
~
if (%world.curobjs(91221)% < 4) && (%random.33% <= 2)
  mload obj 91221
elseif (%world.curobjs(91222)% < 4) && (%random.33% <= 2)
  mload obj 91222
end
~
#91208
<912 Sirin killed>~
0 f 100
~
if (%world.curobjs(91223)% < 4) && (%random.100% < 20)
  mload obj 91223
end
~
#91209
<912 Gryphon killed>~
0 f 100
~
if (%world.curobjs(91214)% < 10) && (%random.20% <= 4)
  mload obj 91214
end
~
#91210
<912 Zone reset>~
2 f 100
~
calcuid questroom 91241 room
attach  91211 %questroom.id%
detach  91213 %questroom.id%
detach  91214 %questroom.id%
detach  91215 %questroom.id%
run     91211 %questroom.id%
~
#91211
<912 Zreset quest room>~
2 z 100
~
if %exist.mob(91211)%
  calcuid perun 91211 mob
  %purge% %perun%
end
detach 91216 %self.id%
~
#91212
<912 Load valun>~
2 z 100
~
wload   obj 91200
attach 91213 %self.id%
~
#91213
<912 Command PUSH VALUN>~
2 c 0
������� ������� �������� �������~
if %actor.vnum% != -1
  halt
end
if !%arg.contains(�����)%
  return 1
  halt
end
wait 1
if %actor.str% < 25
  wsend %actor% ������� �������...
  wechoaround %actor% %actor.name% �������%actor.u% �������� �����...
  halt
end
wsend %actor%       �� ������������� � ��������� �������� �����...
wechoaround %actor% %actor.name% ����������%actor.u% � ��������%actor.g% �������� ����� � �����...
wecho               ������ ����� ��������� ����������� ���� � ����������� ��������...
calcuid stone 91200 obj
wpurge %stone%
wload    obj 91201
attach   91214 %self.id%
detach   91213 %self.id%
~
#91214
<912 Use DEAD water>~
2 c 0
���� ������� ��������~
if %actor.vnum% != -1
  halt
end
if !%arg.contains(�������)% && !%arg.contains(�������)%
  return 1
  halt
end
wait 1
if !%actor.haveobj(91000)%
  wsend %actor% � ��� ����� ��� !
  halt
end
wsend %actor% �� �������� ���� ������ ������� �����...
wechoaround   %actor% %actor.name% �������%actor.g% ���� ������ ������� �����...
wpurge  ���.�����.���
attach  91215 %self.id%
detach  91214 %self.id%
~
#91215
<912 Use LIVE water>~
2 c 0
���� ������� ��������~
if (%actor.vnum% != -1)
  halt
end
eval skl 86+%actor.remort%*5
calcuid operun 91201 obj
if ((!%arg.contains(�����)%) && (!%arg.contains(�����)%))
  return 0
  halt
end
wait 1
if (!%actor.haveobj(91100)%)
  wsend %actor% � ��� ����� ��� !
  halt
end
calcuid zhivaja 91100 obj
wsend %actor%       �� �������� ���� ������ ����� �����...
wechoaround %actor% %actor.iname% �������%actor.g% ���� ������ ����� �����...
wpurge %zhivaja%
wpurge %operun%
wload   mob 91211
wecho   ������� ��� ����� � ���������, �������� �������� �� ������� ��� �����.
wecho   - ������� ����, %actor.iname%, ��� ��������%actor.g% ���� �� ������� ���.
eval  AddExp 0
eval lvl 28 - (%actor.remort%/3)
eval rnd 12+%actor.remort%*2
if (%actor.level% < %lvl%)
  wecho   - H� �� ������� ���%actor.a%, ���� � ����-�� ������ ����, ������� ��� ������� �������.
  set     AddExp 500000
  set AddExp  %actor.exp(+%AddExp%)%
  eval tmp %actor.setquest(912)%
  *     wpurge %operun%
  detach 91215 %self.id%
  halt
end
switch %random.5%
  case 1
    if (%world.curobjs(91202)% < 2)
      wload   obj 91202
      wforce �������.����� ����� ����.���
      wforce �������.����� ����  ����.��� .%actor.name%
    else
      eval AddExp 1000000
    end
  break
  case 2
    if (%world.curobjs(91203)% < 2)
      wload   obj 91203
      wforce �������.����� ����� ����.������
      wforce �������.����� ����  ����.������ .%actor.name%
    else
      eval AddExp 1000000
    end
  break
  case 3
    if (%world.curobjs(91204)% < 2)
      wload   obj 91204
      wforce �������.����� ����� �������.������
      wforce �������.����� ����  �������.������ .%actor.name%
    else
      eval AddExp 1000000
    end
  break
  case 4
    if (%world.curobjs(91205)% < 2)
      wload   obj 91205
      wforce �������.����� ����� ����.������
      wforce �������.����� ����  ����.���� .%actor.name%
    else
      eval AddExp 1000000
    end
  break
  case 5
    if (%world.curobjs(91206)% < 2)
      wload   obj 91206
      wforce �������.����� ����� ����.������
      wforce �������.����� ����  ����.������ .%actor.name%
    else
      eval AddExp 1000000
    end
  break
  default
  break
done
switch %actor.class%
  *������
  case 0
    if ((!%actor.spelltype(������ �����)%) && (%actor.can_get_spell(������ �����)%) && (%random.100% < %rnd%))
      wspellturn %actor% ������.����� set
    else
      eval AddExp 1000000
    end
  break
  *������
  case 1
    if ((!%actor.spelltype(����������� ������)%) && (%actor.can_get_spell(����������� ������)%) && (%random.100% < %rnd%))
      wspellturn %actor% �����������.������ set
    elseif ((!%actor.spelltype(��� �����)%) && (%actor.can_get_spell(��� �����)%) && (%random.100% < %rnd%))
      wspellturn %actor% ���.����� set
    else
      eval AddExp 1000000
    end
  break
  *����
  case 2
    if     !%actor.skill(��������)%
      wskillturn %actor% �������� set
    elseif %actor.skill(��������)% < %skl%
      wskilladd %actor% �������� 5
    else
      eval  AddExp 1000000
    end
  break
  *��������
  case 3
    if    !%actor.skill(����������� �����)%
      wskillturn %actor% �����������.����� set
    elseif %actor.skill(����������� �����)% < %skl%
      wskilladd  %actor% �����������.����� 5
    elseif !%actor.skill(��������)%
      wskillturn %actor% �������� set
    elseif %actor.skill(��������)% < %skl%
      wskilladd  %actor% �������� 5
    else
      eval  AddExp 1000000
    end
  break
  *�������
  case 4
    if    !%actor.skill(������� ����)%
      wskillturn %actor% �������.���� set
    elseif %actor.skill(������� ����)% < %skl%
      wskilladd  %actor% �������.���� 5
    elseif %actor.skill(��������)% < %skl%
      wskilladd  %actor% �������� 5
    else
      eval  AddExp 1000000
    end
  break
  *���������
  case 5
    if    !%actor.skill(������� ������)%
      wskillturn %actor% �������.������ set
    elseif %actor.skill(������� ������)% < %skl%
      wskilladd  %actor% �������.������ 5
    elseif %actor.skill(�����������)% < %skl%
      wskilladd  %actor% ����������� 5
    else
      eval  AddExp 1000000
    end
  break
  *��������
  case 6
    if ((!%actor.spelltype(���������� �������)%) && (%actor.can_get_spell(���������� �������)%) && (%random.100% < %rnd%))
      wspellturn %actor% ����������.������� set
    else
      eval AddExp 1000000
    end
  break
  *���������
  case 7
    if ((!%actor.spelltype(�������� ����������)%) && (%actor.can_get_spell(�������� ����������)%) && (%random.100% < %rnd%))
      wspellturn %actor% ��������.���������� set
    else
      eval AddExp 1000000
    end
  break
  *������������
  case 8
    if ((!%actor.spelltype(���� ���)%) && (%actor.can_get_spell(���� ���)%) && (%random.100% < %rnd%))
      wspellturn %actor% ����.��� set
    else
      eval AddExp 1000000
    end
  break
  *������
  case 9
    if ((!%actor.spelltype(�������� ��������)%) && (%actor.can_get_spell(�������� ��������)%))
      wspellturn %actor% ��������.�������� set
    elseif    !%actor.skill(����������)%
      wskillturn %actor% ���������� set
    elseif %actor.skill(����������)% < %skl%
      wskilladd  %actor% ���������� 5
    else
      eval  AddExp 1000000
    end
  break
  *�������
  case 10
    if    !%actor.skill(��� �������)%
      wskillturn %actor% ���.������� set
    elseif %actor.skill(��� �������)% < %skl%
      wskilladd  %actor% ���.������� 5
    elseif %actor.skill(����������)%
      if %actor.skill(����������)% < %skl%
        wskilladd  %actor% ���������� 5
      else
        eval  AddExp 1000000
      end
    end
  break
  *������
  case 11
    if !%actor.skill(�������� �����)%
      wskillturn %actor% ��������.����� set
    elseif %actor.skill(����������)% < %skl%
      wskilladd  %actor% ���������� 5
    else
      eval  AddExp 1000000
    end
  break
  *�����
  case 12
    if    !%actor.skill(���������� �����)%
      wskillturn %actor% ����������.����� set
    elseif %actor.skill(���������� �����)% < %skl%
      wskilladd  %actor% ����������.����� 5
    else
      eval  AddExp 1000000
    end
  break
  *�����
  case 13
    if (!%actor.skill(��������)%)
      wskillturn %actor% �������� set
    elseif %actor.skill(��������)% < %skl%
      wskilladd %actor% �������� 5
    else
      eval  AddExp 1000000
    end
  break
  default 
  break
done
if %addexp%
  wsend %actor% �� �������� %addexp% ����� �����.
  eval tmp %actor.exp(+%AddExp%)%
end
eval tmp %actor.setquest(912)%
*   wpurge %operun%
attach 91216 %self.id%
exec 91216 %self.id%
detach 91215 %self.id%
~
#91216
��������� ������ ����� ������~
2 e 100
~
%portal% 80001 1
~
$~
