#92200
���� - ������������ ���������� ��������-������~
0 ab 100
~
if %world.curmobs(92213)% < 4
  mecho _________���� ������ ������� �����!
  mload  mob 92213
end
~
#92201
����� - ������������ ���������� �������� ��������~
0 ab 100
~
if %world.curmobs(92204)% < 1
  mecho _________����� ������ ��������� �������!
  mload  mob 92204
elseif %world.curmobs(92205)% < 1
  mecho _________����� ������ ��������� �������!
  mload  mob 92205
elseif %world.curmobs(92206)% < 1
  mecho _________����� ������ ��������� �������!
  mload  mob 92206
end
~
#92202
����� - ������������ ���������� ������ ������~
0 ab 100
~
if %world.curmobs(92207)% < 1
  mecho _________����� ������� ������ ������!
  mload  mob 92207
elseif %world.curmobs(92208)% < 1
  mecho _________����� ������� ������ ������!
  mload  mob 92208
elseif %world.curmobs(92209)% < 1
  mecho _________����� ������� ������ ������!
  mload  mob 92209
end
~
#92203
����� - ������������ ���������� ��������~
0 ab 100
~
if %world.curmobs(92210)% < 1
  mecho _________����� ������ ����!
  mload  mob 92210
elseif %world.curmobs(92211)% < 1
  mecho _________����� ������ �������!
  mload  mob 92211
elseif %world.curmobs(92212)% < 1
  mecho _________����� ������ �������!
  mload  mob 92212
end
~
#92204
����� ���������� ������� �����~
0 ab 100
~
wait 1s
mload obj 92200
mload obj 92201  
��� ���
��� ���
��� ���
wait 1s
detach 92204 %self.id%
~
#92205
����������� �������-�����~
0 k 100
~
if %random.2% == 1
  set target %random.pc%
  foreach next %self.pc%
    eval hit %next.hitp%
    if %next.affect(��������������.����)%
      eval hit %hit% / 2
    end
    if %next.affect(�������� ���)%
      eval hit %hit% * 23 / 20
    end
    if %next.affect(������� ���)%
      eval hit %hit% * 14 / 10
    end
    if %next.affect(��������� ���)%
      eval hit %hit% * 14 / 10
    end
    if %next.affect(���������)%
      eval hit %hit% * 2
    end
    if (!%next.affect(��������� ���)%)  && %next.affect(������� ���)% && %next.affect(�������� ���)%
      if %next.position% < 5
        eval hit %hit%/2
      elseif %next.position% < 6
        eval hit %hit%*2/3
      elseif %next.position% < 7
        eval hit %hit%*3/4
      end
    end
    if  %next.affect(����������)% ||  %next.affect(���������� ����������)% 
      eval hit %hit%*3/4
    end
    if %next.affect(������ �����)%
      set hit 30000
      if %random.3% == 1
        dg_cast '��� ����' %next.name%
      end
    end
    if %hit% < %target.hitp%
      makeuid target %next.id%
    end
  done
  mecho ������ ���� ������� �� %target.vname% ���� ������ ������!
  dg_cast '�����' %target.name%
  wait 1s
  ���� %target.name%
  wait 4s
end
~
#92206
����������� ������~
0 k 100
~
dg cast '���� ���'
~
#92207
����� �������������~
2 e 100
~
if %random.4% == 1
  wait 3s
  halt
end
eval wait %random.10%
wait %wait%s
eval mobvnum %random.4% +92199
if %mobvnum% == 92201
  halt
end
if !%world.curmobs(%mobvnum%)%
  wait 7s
  halt
end 
calcuid attaker %mobvnum% mob   
wteleport %attaker% %self.vnum%
wecho ����� ������ �������� � �������!
wecho �� ������� ������� �������!
wecho %attaker.name% �������� �� �������!
eval tnum %mobvnum%+8
exec %tnum% %attaker.id%
wait 1s
wecho ������ �������� � �����!
eval wait %random.30%+20
wait %wait%s
halt
~
#92208
������� ����� ������~
0 z 100
~
*����� ���� ������ ����
if !%random.pc% 
  exec 92212 %self.id%
  halt
end
mteleport ��������1 %self.realroom%
mteleport ��������2 %self.realroom%
mteleport ��������3 %self.realroom%
mecho �������� ������� ��������� �� �������!
set target1 %random.pc%
set tnum 1
eval mode %random.100%
set target2 0
set target3 0
foreach next %self.pc%
  *���������� �������� �������� ���� ���� �������� ��� ���������������
  if %mode%>50 
    eval hit %next.hitp%
    if %next.affect(��������������.����)%
      eval hit %hit% / 2
    end
    if %next.affect(�������� ���)%
      eval hit %hit% * 23 / 20
    end
    if %next.affect(������� ���)%
      eval hit %hit% * 14 / 10
    end
    if %next.affect(��������� ���)%
      eval hit %hit% * 14 / 10
    end
    if %next.affect(���������)%
      eval hit %hit% * 2
    end
    if (!%next.affect(��������� ���)%)  && %next.affect(������� ���)% && %next.affect(�������� ���)%
      if %next.position% < 5
        eval hit %hit%/2
      elseif %next.position% < 6
        eval hit %hit%*2/3
      elseif %next.position% < 7
        eval hit %hit%*3/4
      end
    end
    if  %next.affect(����������)% ||  %next.affect(���������� ����������)% 
      eval hit %hit%*3/4
    end
    if %next.affect(������ �����)%
      set hit 30000
    end
  end
  *���������� ���� ��������������� ��������
  if %mode%<11 
    if %next.class% == 5
      makeuid target1 %next.id%
    end
  elseif %mode%<31
    if %next.leader%
      set target1 %next.leader%
    end
  elseif %mode%<51
    if %next.class% == 0
      set target3 %target2%
      set target2 %target1%
      makeuid target1 %next.id%
    end
  elseif %mode%<76
    if %target1.hitp% < %hit%
      makeuid target1 %next.id%
    end
  else
    if %target1.hitp% < %hit%
      set target3 %target2%
      set target2 %target1%
      makeuid target1 %next.id%
    end
  end
done
*���������� ��������������� �����
if !%target3%
  set target3 %target1%
end
if !%target2%
  set target2 %target1%
end
if (%world.curmobs(92204)%>0)
  calcuid drak1 92204 mob
  set draktarget1 %target1.id%
  remote draktarget1 %drak1.id%
  exec 92217 %drak1.id%
end
if (%world.curmobs(92205)%>0)
  calcuid drak2 92205 mob
  set draktarget2 %target2.id%
  remote draktarget2 %drak2.id%
  exec 92218 %drak2.id%
end
if (%world.curmobs(92206)%>0)
  calcuid drak3 92206 mob
  set draktarget3 %target3.id%
  remote draktarget3 %drak3.id%
  exec 92219 %drak3.id%
end
*����� ���� �������� ��� ���������������
wait 1s
if %mode%>10
  exec 92212 %self.id%
end
~
#92209
����� �������� ����� �������~
0 ab 100
~
if %random.5% == 1
  eval wait %random.30%
  wait %wait%s
  mload obj 92202
  mload obj 92201
  mload obj 92207 
  ��� ���
  ��� ���
  wait 1s
  detach 92209 %self.id%
end
~
#92210
������� ����� ������~
0 z 100
~
if !%random.pc%
  exec 92214 %self.id%
  halt
end
if %exist.mob(92210)%
  mforce �������1 ���
  mteleport �������1 %self.realroom%
end
if %exist.mob(92211)%
  mforce ������1 ���
  mteleport ������1 %self.realroom%
end
if %exist.mob(92212)%
  mforce ������2 ���
  mteleport ������2 %self.realroom%
end
mecho �������� ��������� �� �������!
set target1 %random.pc%
set tnum 1
eval mode %random.100%
set target2 0
set target3 0
foreach next %self.pc%
  eval hit %next.hitp%
  if %next.affect(��������������.����)%
    eval hit %hit% / 2
  end
  if %next.affect(�������� ���)%
    eval hit %hit% * 23 / 20
  end
  if %next.affect(������� ���)%
    eval hit %hit% * 14 / 10
  end
  if %next.affect(��������� ���)%
    eval hit %hit% * 14 / 10
  end
  if %next.affect(���������)%
    eval hit %hit% * 2
  end
  if (!%next.affect(��������� ���)%)  && %next.affect(������� ���)% && %next.affect(�������� ���)%
    if %next.position% < 5
      eval hit %hit%/2
    elseif %next.position% < 6
      eval hit %hit%*2/3
    elseif %next.position% < 7
      eval hit %hit%*3/4
    end
  end
  if  %next.affect(����������)% ||  %next.affect(���������� ����������)% 
    eval hit %hit%*3/4
  end
  if %next.affect(������ �����)%
    set hit 30000
  end
  if %mode%<11
    if %next.class% == 5
      makeuid target1 %next.id%
    end
  elseif %mode%<21
    if %next.leader%
      set target1 %next.leader%
    end
  elseif %mode%<36
    if %next.class% == 0 && !%next.affect(������ �����)%
      makeuid target1 %next.id%
    end
  elseif %mode%<51
    if %target1.hitp% < %hit%
      makeuid target1 %next.id%
    end
  else
    if %target1.hitp% < %hit%
      set target3 %target2%
      set target2 %target1%
      makeuid target1 %next.id%
    end
  end
done
if !%target3%
  set target3 %target1%
end
if !%target2%
  set target2 %target1%
end
mecho ����� ����� ������!
if %exist.mob(92210)%
  calcuid drak1 92210 mob
  set draktarget1 %target1.id%
  remote draktarget1 %drak1.id%
  exec 92217 %drak1.id%
end
if %exist.mob(92211)%
  calcuid drak2 92211 mob
  set draktarget2 %target2.id%
  remote draktarget2 %drak2.id%
  exec 92218 %drak2.id%
end
if %exist.mob(92212)%
  calcuid drak3 92212 mob
  set draktarget3 %target3.id%
  remote draktarget3 %drak3.id%
  exec 92219 %drak3.id%
end
wait 1s
if %mode%>20
  exec 92214 %self.id%
end
~
#92211
������� ����� ������~
0 z 100
~
if !%random.pc%
  exec 92215 %self.id%
  halt
end
if (%exist.mob(92207)%)
  calcuid helldogone 92207 mob
  eval tmp %helldogone.position(8)%
  mteleport %helldogone% %self.realroom%
end
if (%exist.mob(92208)%)
  calcuid helldogtwo 92208 mob
  eval tmp %helldogtwo.position(8)%
  mteleport %helldogtwo% %self.realroom%
end
if (%exist.mob(92209)%)
  calcuid helldogtri 92209 mob
  eval tmp %helldogtri.position(8)%
  mteleport %helldogtri% %self.realroom%
end
mecho ������ ������ ��������� �� �������!
set target1 %random.pc%
set tnum 1
eval mode %random.100%
set target2 0
set target3 0
foreach next %self.pc%
  eval hit %next.hitp%
  if %next.affect(��������������.����)%
    eval hit %hit% * 2
  end
  if %next.affect(�������� ���)%
    eval hit %hit% * 23 / 20
  end
  if %next.affect(������� ���)%
    eval hit %hit% * 14 / 10
  end
  if %next.affect(��������� ���)%
    eval hit %hit% * 14 / 10
  end
  if %next.affect(���������)%
    eval hit %hit% / 2
  end
  if (!%next.affect(��������� ���)%)  && %next.affect(������� ���)% && %next.affect(�������� ���)%
    if %next.position% < 5
      eval hit %hit%/2
    elseif %next.position% < 6
      eval hit %hit%*2/3
    elseif %next.position% < 7
      eval hit %hit%*3/4
    end
  end
  if  %next.affect(����������)% ||  %next.affect(���������� ����������)% 
    eval hit %hit%*3/4
  end
  if %next.affect(������ �����)%
    set hit 30000
  end
  if %mode%<41
    if %next.class% == 5
      makeuid target1 %next.id%
    end
  elseif %mode%<71
    if %next.leader%
      set target1 %next.leader%
    end
  else
    if %target1.hitp% < %hit%
      set target3 %target2%
      set target2 %target1%
      makeuid target1 %next.id%
    end
  end
done
if !%target3%
  set target3 %target1%
end
if !%target2%
  set target2 %target1%
end
mecho ����� ����� ������! 
calcuid drak1 92207 mob
calcuid drak2 92208 mob
calcuid drak3 92209 mob
set draktarget1 %target1.id%
set draktarget2 %target2.id%
set draktarget3 %target3.id%
remote draktarget1 %drak1.id%
remote draktarget2 %drak2.id%
remote draktarget3 %drak3.id%
exec 92217 %drak1.id%
exec 92218 %drak2.id%
exec 92219 %drak3.id%
wait 1s
if %mode%>10
  exec 92215 %self.id%
end
~
#92212
����� ������~
0 z 100
~
if %self.realroom% != 92228 && %self.realroom% != 92226 && %self.realroom% != 92223
  eval room %random.3%
  mecho ����� ���� ������ �������� � ����� ����.
  mecho ����� ������� ������ ��������.
  switch %room%
    case 1
      mteleport �����_��� 92228
    break
    case 2
      mteleport �����_��� 92226
    break
    case 3
      mteleport �����_��� 92223
    break
  done
end
~
#92213
�������������� �������� ��� ����~
0 z 100
~
foreach next %self.pc%
  eval hit %next.hitp%
  if %next.affect(��������������.����)%
    eval hit %hit% * 2
  end
  if %next.affect(�������� ���)%
    eval hit %hit% * 23 / 20
  end
  if %next.affect(������� ���)%
    eval hit %hit% * 14 / 10
  end
  if %next.affect(��������� ���)%
    eval hit %hit% * 14 / 10
  end
  if %next.affect(���������)%
    eval hit %hit% / 2
  end
  if (!%next.affect(��������� ���)%)  && %next.affect(������� ���)% && %next.affect(�������� ���)%
    if %next.position% < 5
      eval hit %hit%/2
    elseif %next.position% < 6
      eval hit %hit%*2/3
    elseif %next.position% < 7
      eval hit %hit%*3/4
    end
  end
  if  %next.affect(����������)% ||  %next.affect(���������� ����������)% 
    eval hit %hit%*3/4
  end
  if %next.affect(������ �����)%
    set hit 30000
  end
  if %target1.hitp% < %hit%
    makeuid target1 %next.id%
  end
done
mecho ���� ���� ������ ������ � ����� ����.
mecho ���� ������� ������ ������.
gd_cast '���� ���' %target1.name%
���� %target1.name%
~
#92214
����� ������~
0 z 100
~
if %self.realroom% != 92227 && %self.realroom% != 92225 && %self.realroom% != 92224
  eval room %random.3%
  mecho ����� ���� ������ �������� � ����� ����.
  mecho ����� ������� ������ ��������.
  switch %room%
    case 1
      mteleport �����_��� 92227
    break
    case 2
      mteleport �����_��� 92225
    break
    case 3
      mteleport �����_��� 92224
    break
  done
end
~
#92215
����� ������~
0 z 100
~
if %self.realroom% != 92218 && %self.realroom% != 92219 && %self.realroom% != 92220
  eval room %random.3%
  mecho ����� ���� ������ �������� � ����� ����.
  mecho ����� ������� ������ ��������.
  switch %room%
    case 1
      mteleport �����_��� 92218
    break
    case 2
      mteleport �����_��� 92219
    break
    case 3
      mteleport �����_��� 92220
    break
  done
end
~
#92216
���������� �������������~
0 k 100
~
dg_cast '�� ���'
if %random.3% == 1
  eval target %random.pc% 
  dg_cast '�� ���' %target.name%
  unset target
end
if %random.50% == 1
  mecho %self.name% �������� ����������� ����������.
  eval target %random.pc% 
  dg_cast '����� �����' %target.name%
  unset target
end
if %self.hitp% < 1000 && %random.3%==1
  if %random.4% == 1
    eval tnum %self.vnum% + 12
    exec %tnum% %self.id%
  else
    mecho %self.name% ���� ������ ��������� � ����� ����.
    mecho %self.name% ������� ������ ���������.
    dg_cast '�����'
  end
end
~
#92217
����� ������� 1~
0 z 100
~
mkill %draktarget1%  
dg_cast '��� ���' %draktarget1.name%
wait 2s
unset %draktarget1%
~
#92218
����� ������� 2~
0 z 100
~
mkill %draktarget2%  
dg_cast '��� ���' %draktarget2.name%
wait 2s
unset %draktarget2%
~
#92219
����� ������� 3~
0 z 100
~
mkill %draktarget3%  
dg_cast '��� ���' %draktarget3.name%
wait 2s
unset %draktarget3%
~
#92220
����� ���������� �����-������~
0 ab 100
~
if %random.5% == 1
  eval wait %random.30%
  wait %wait%s
  mload obj 92202
  mload obj 92201
  mload obj 92203
  mload obj 92204
  ��� ���  
  ��� ���
  ��� �����
  ��� ����
  wait 1s
  detach 92220 %self.id%
end
~
#92221
����� ���������� ��������~
0 ab 100
~
if !%self.haveobj(92202)%
  mload obj 92202
  mload obj 92201
  mload obj 92205
  ��� ���
  ��� ���
  ��� ������
end
if !%self.haveobj(92206)%
  mload obj 92206
  ��� �����
end
end        
~
#92222
����������� ������ (������� ������� 80%, ������ ������� 20%)~
0 k 100
~
eval mode %random.20%
if %mode% > 3
  halt
end
set target1 %random.pc%
foreach next %self.pc%
  eval hit %next.hitp%
  if %next.affect(��������������.����)%
    eval hit %hit% / 2
  end
  if %next.affect(�������� ���)%
    eval hit %hit% * 23 / 20
  end
  if %next.affect(������� ���)%
    eval hit %hit% * 14 / 10
  end
  if %next.affect(��������� ���)%
    eval hit %hit% * 14 / 10
  end
  if %next.affect(���������)%
    eval hit %hit% * 2
  end
  if (!%next.affect(��������� ���)%)  && %next.affect(������� ���)% && %next.affect(�������� ���)%
    if %next.position% < 5
      eval hit %hit%/2
    elseif %next.position% < 6
      eval hit %hit%*2/3
    elseif %next.position% < 7
      eval hit %hit%*3/4
    end
  end
  if  %next.affect(����������)% ||  %next.affect(���������� ����������)% 
    eval hit %hit%*3/4
  end
  if %next.affect(������ �����)%
    set hit 30000
  end
  if %mode% == 1
    if %target1.hitp% < %hit%
      makeuid target1 %next.id%
    end
  else
    if %target1.hitp% < %hit%  && %target1.class% == 0
      makeuid target1 %next.id%
    end 
  end
done
if !%self.attackers% && %self.fighting%
  mecho ������ ������� �� ��� � ��������� �� ����!
  mteleport ������_��� 92299
  wait 2s
  mteleport ������_��� %target1.realroom%
  mecho � ���� �������� ������ �� �������� ������!
  wait 1s
  dg_cast '�����' .%target1.name%
else
  dg_cast '�����' .%target1.name%
  ���� .%target1.name%
end
~
#92223
����������� ���� (������� ����� 80%, ������ ������� 20%)~
0 k 100
~
eval mode %random.20%
if %mode% > 3
  halt
end
set target1 %random.pc%
foreach next %self.pc%
  eval hit %next.hitp%
  if %next.affect(��������������.����)%
    eval hit %hit% / 2
  end
  if %next.affect(�������� ���)%
    eval hit %hit% * 23 / 20
  end
  if %next.affect(������� ���)%
    eval hit %hit% * 14 / 10
  end
  if %next.affect(��������� ���)%
    eval hit %hit% * 14 / 10
  end
  if %next.affect(���������)%
    eval hit %hit% * 2
  end
  if (!%next.affect(��������� ���)%)  && %next.affect(������� ���)% && %next.affect(�������� ���)%
    if %next.position% < 5
      eval hit %hit%/2
    elseif %next.position% < 6
      eval hit %hit%*2/3
    elseif %next.position% < 7
      eval hit %hit%*3/4
    end
  end
  if  %next.affect(����������)% ||  %next.affect(���������� ����������)% 
    eval hit %hit%*3/4
  end
  if %next.affect(������ �����)%
    set hit 30000
  end
  if %mode% == 1
    if %target1.hitp% < %hit%
      makeuid target1 %next.id%
    end
  else
    if %target1.hitp% < %hit%  && (%target1.class% == 1 || %target1.class% == 6 || %target1.class% == 7)
      makeuid target1 %next.id%
    end 
  end
done
set i 0
foreach j %self.attackers%
done
if !%self.attackers% && %self.fighting%
  mecho ���� ������� �� ��� � ��������� �� ����!
  mteleport ����_��� 92299
  wait 2s
  mteleport ����_��� %target1.realroom%
  mecho � ���� �������� ������ �� �������� ����!
  wait 1s
  dg_cast '�����' .%target1.name%
else
  dg_cast '�����' .%target1.name%
  ���� .%target1.name%
end
~
#92224
����������� �����~
0 k 100
~
if %world.curmobs(92214)%
  calcuid zaber 92214 mob
end
if %world.curmobs(92215)%
  calcuid krou 92215 mob
end
if %self.hitp% < 1400 && %random.8% == 1
  mecho ���� ��������� ������������ �����.
  mecho ���� ���� ������� ����� � ����� ����.
  mecho ���� ������ ������� �����.
  dg_cast '�������'
  mecho ���� ���� ����� � ����� ����.
  halt
end
if (%zaber.hitp% >500 && %krou.hitp% > 500) || %random.4% == 1
  halt
end
if %zaber.hitp% < %crou.hitp%
  if %zaber%  
    exec 92225 %zaber.id%
  end
else
  if %crou%  
    exec 92226 %crou.id%
  end
end
~
#92225
����� � ������� ������~
0 z 100
~
if %world.curmobs(92216)%
  calcuid mirt 92216 mob
end
calcuid room %self.realroom% room
mecho ���� ��������� ������������ �����.
mecho ���� ���� ������ �������� � ����� ����.
mecho ���� ������� ������ ��������.
mteleport ������_��� 92299
mecho ���� ���� ����� � ����� ����.
dg_cast '�����'
dg_cast '��� ���'
dg_cast '��� ���'
dg_cast '�� ���'
dg_cast '��� ����'
���
eval wait %random.5% + 4
wait %wait%s
if %world.curmobs(92216)% == 1
  mat %mirt.realroom% mecho ����� ������ �������� �  �������!
  mteleport ������_��� %mirt.realroom%
  mecho ������ �������� �� �������!
  wait 1s
  mecho ������ �������� � ����������� �  �������.
else
  mat %room.vnum% mecho ����� ������ �������� �  �������!
  mteleport ������_��� %room.vnum%
  mecho ������ �������� �� �������!
  wait 1s
  mecho ������ �������� � ����������� �  �������.
end
~
#92226
����� � ������� ����~
0 z 100
~
if %world.curmobs(92216)%
  calcuid mirt 92216 mob
end
calcuid room %self.realroom% room
mecho ���� ��������� ������������ �����.
mecho ���� ���� ������ �������� � ����� ����.
mecho ���� ������� ������ ��������.
mteleport ����_��� 92299
mecho ���� ���� ����� � ����� ����.
dg_cast '�����'
dg_cast '��� ���'
dg_cast '��� ���'
dg_cast '�� ���'
dg_cast '��� ����'
���
eval wait %random.5% + 4
wait %wait%s
if %world.curmobs(92216)%
  mat %mirt.realroom% mecho ����� ������ �������� �  �������!
  mteleport ����_��� %mirt.realroom%
  mecho ���� �������� �� �������!
  wait 1s
  mecho ������ �������� � ����������� �  �������.
else
  mat %room.vnum% mecho ����� ������ �������� �  �������!
  mteleport ����_��� %room.vnum%
  mecho ���� �������� �� �������!
  wait 1s
  mecho ������ �������� � ����������� �  �������.
end
~
#92227
����������� ������~
0 k 100
~
if %world.curmobs(92219)%
  calcuid kiton 92219 mob
end
if %world.curmobs(92220)%
  calcuid terside 92220 mob
end
if %self.hitp% < 1400 && %random.8% == 1
  mecho ����� ��������� ������������ �����.
  mecho ����� ���� ������� ����� � ����� ����.
  mecho ����� ������ ������� �����.
  dg_cast '�������'
  mecho ����� ���� ����� � ����� ����.
  halt
end
if (%kiton.hitp% >500 && %terside.hitp% > 500) || %random.4% == 1
  halt
end
if %kiton.hitp% < %terside.hitp%
  exec 92228 %kiton.id%
else
  exec 92229 %terside.id%
end
~
#92228
����� � ������� ������~
0 z 100
~
if %world.curmobs(92218)%
  calcuid myrat 92218 mob
end
calcuid room %self.realroom% room
mecho ����� ��������� ������������ �����.
mecho ����� ���� ������ �������� � ����� ����.
mecho ����� ������� ������ ��������.
mteleport �����_��� 92299
mecho ����� ���� ����� � ����� ����.
dg_cast '�����'
dg_cast '��� ���'
dg_cast '��� ���'
dg_cast '�� ���'
dg_cast '��� ����'
���
eval wait %random.5% + 4
wait %wait%s
if %world.curmobs(92218)%
  mat %myrat.realroom% mecho ����� ������ �������� �  �������!
  mteleport �����_��� %myrat.realroom%
  mecho ����� �������� �� �������!
  wait 1s
  mecho ������ �������� � ����������� �  �������.
else
  mat %room.vnum% mecho ����� ������ �������� �  �������!
  mteleport �����_��� %room.vnum%
  mecho ����� �������� �� �������!
  wait 1s
  mecho ������ �������� � ����������� �  �������.
end
~
#92229
����� � ������� ��������~
0 z 100
~
if %world.curmobs(92218)%
  calcuid myrat 92218 mob
end
calcuid room %self.realroom% room
mecho ����� ��������� ������������ �����.
mecho ����� ���� ������ �������� � ����� ����.
mecho ����� ������� ������ ��������.
mteleport �������_��� 92299
mecho ����� ���� ����� � ����� ����.
dg_cast '�����'
dg_cast '��� ���'
dg_cast '��� ���'
dg_cast '�� ���'
dg_cast '��� ����'
���
eval wait %random.5% + 4
wait %wait%s
if %world.curmobs(92218)%
  mat %myrat.realroom% mecho ����� ������ �������� �  �������!
  mteleport �������_��� %myrat.realroom%
  mecho ������� �������� �� �������!
  wait 1s
  mecho ������ �������� � ����������� �  �������.
else
  mat %room.vnum% mecho ����� ������ �������� �  �������!
  mteleport �������_��� %room.vnum%
  mecho ������� �������� �� �������!
  wait 1s
  mecho ������ �������� � ����������� �  �������.
end
~
#92230
����������� ������ (������� ����� 80%, ������ ������� 20%)~
0 k 100
~
eval mode %random.20%
if %mode% > 3
  halt
end
set target1 %random.pc%
foreach next %self.pc%
  eval hit %next.hitp%
  if %next.affect(��������������.����)%
    eval hit %hit% / 2
  end
  if %next.affect(�������� ���)%
    eval hit %hit% * 23 / 20
  end
  if %next.affect(������� ���)%
    eval hit %hit% * 14 / 10
  end
  if %next.affect(��������� ���)%
    eval hit %hit% * 14 / 10
  end
  if %next.affect(���������)%
    eval hit %hit% * 2
  end
  if (!%next.affect(��������� ���)%)  && %next.affect(������� ���)% && %next.affect(�������� ���)%
    if %next.position% < 5
      eval hit %hit%/2
    elseif %next.position% < 6
      eval hit %hit%*2/3
    elseif %next.position% < 7
      eval hit %hit%*3/4
    end
  end
  if  %next.affect(����������)% ||  %next.affect(���������� ����������)% 
    eval hit %hit%*3/4
  end
  if %next.affect(������ �����)%
    set hit 30000
  end
  if %mode% == 1
    if %target1.hitp% < %hit%
      makeuid target1 %next.id%
    end
  else
    if %target1.hitp% < %hit%  && (%target1.class% == 1 || %target1.class% == 6 || %target1.class% == 7)
      makeuid target1 %next.id%
    end 
  end
done
set i 0
foreach j %self.attakers%
done
if !%self.attackers% && %self.fighting%
  mecho ����� ������� �� ��� � ��������� �� ����!
  mteleport �����_��� 92299
  wait 2s
  mteleport �����_��� %target1.realroom%
  mecho � ���� �������� ������ �� �������� ������!
  wait 1s
  dg_cast '�����' .%target1.name%
else
  dg_cast '�����' .%target1.name%
  ���� .%target1.name%
end
~
#92231
���������� ����~
0 k 100
~
if %self.position% < 7
  halt
end
if %random.9% == 1
  dg_cast '����� ���'
end
if %random.100% == 1
  mtransform 92227  
end
~
#92232
����������� �������-�������� ������ �����~
0 k 100
~
if %world.curmobs(92227)%
  calcuid ryta 92227 mob
end
if %ryta.hitp% < 1000
  mtransform 92225
  attach 92233 %self.id%
  detach 92232 %self.id%
end
~
#92233
����������� �������-�������� ������� ������~
0 k 100
~
if %world.curmobs(92227)%
  calcuid ryta 92227 mob
end
if %ryta.hitp% > 2000
  mtransform 92224
  attach 92232 %self.id%
  detach 92233 %self.id%
end
~
#92234
����������� ������-�������� ������ �����~
0 k 100
~
if %world.curmobs(92227)%
  calcuid ryta 92227 mob
end
if %ryta.hitp% < 1000
  mtransform 92223
  attach 92235 %self.id%
  detach 92234 %self.id%
end
~
#92235
����������� ������-�������� ������� ������~
0 k 100
~
if %world.curmobs(92227)%
  calcuid ryta 92227 mob
end
if %ryta.hitp% > 2000
  mtransform 92222
  attach 92234 %self.id%
  detach 92235 %self.id%
end
~
#92236
��������� �����~
2 c 1
���������~
if !%arg.contains(�����)%
  wsend %actor% � ��� �� �� ��� ����������� ������������?
  halt
end
if ((%actor.class% != 2) && !%actor.haveobj(92103)%)
  wsend %actor% �� �������� ���� ������� ������������ �� ������?
  wechoaround %actor% %actor.name% ���������%actor.g% �� �����, ��� ����� �� ����� ������!
  halt
end
if %actor.level% < 29 
  wsend %actor% ����������� �������� ����� �� ������ �� ������ ������.   
  wechoaround %actor% %actor.name% ��������%actor.g% ����� � ��������� ������� �������!
  halt
end 
if %actor.skill(��������)% > 100  %actor.intadd% > 20
  wsend %actor% ������ ��������, ������ � ������ �����, �� ����...
  wsend %actor% ������ ���� ����������� ���������� �� ��������.
  wsend %actor% �� ����� ��������� ��������, � ����� � �������� ������������!
  wechoaround %actor% %actor.name% ��������%actor.g% �����, � ^%actor.name% ������ ��������� �������!
  wechoaround %actor% %actor.name% ��������� ��������� �������%actor.u% �� ��������.
  wechoaround %actor% %actor.name% �����%actor.g% ��������� �������� � �����.
  wechoaround %actor% ����� ������� � ����� � �������� ������������!    
  wdoor 92256 west purge  
  wdoor 92256 west room 92300
  attach 92253 %self.id%
  detach 92236 %self.id%
elseif %actor.haveobj(92103)%
  wsend %actor% �� ������� �������� ������-����� � ��������� ��� �����.
  wechoaround %actor% %actor.name% �����%actor.g% � ��������� ��� ����� �����-�� �����.
  wecho � �������� �������� ����� ����������� � �����.
  wdoor 92256 west purge  
  wdoor 92256 west room 92300
  attach 92253 %self.id%
  detach 92236 %self.id%
else
  wsend %actor% �� ��������� ����� � ������ - ��� ������� � ��� ������� ��������.
  wsend %actor% ���� �� � ����� ������ ����� - ��������� ������ ����� ���������.
  wsend %actor% ����� ��� �� ���� ����� �� ������.
  wechoaround %actor% %actor.name% ��������%actor.g% �����, � ������������� ��������%actor.g%!
end
~
#92243
����� � ������� �������~
0 z 100
~
if %world.curmobs(92221)%
  calcuid andora 92221 mob
end
calcuid room %self.realroom% room
mecho ������ ���������� ������������ �����.
mecho ������ ����� ������ �������� � ����� ����.
mecho ������ �������� ������ ��������.
mteleport ������_��� 92299
mecho ������ ����� ����� � ����� ����.
dg_cast '�����'
dg_cast '�����'
dg_cast '��� ���'
dg_cast '��� ���'
dg_cast '�� ���'
dg_cast '��� ����'
���
��������
eval wait %random.7% + 7
wait %wait%s
if %world.curmobs(92227)% == 1
  mteleport ������_��� %andora.realroom%
else
  mteleport ������_��� %room.vnum%
end
set target1 %random.pc%
foreach next %self.pc%
  eval hit %next.hitp%
  if %next.affect(��������������.����)%
    eval hit %hit% / 2
  end
  if %next.affect(�������� ���)%
    eval hit %hit% * 23 / 20
  end
  if %next.affect(������� ���)%
    eval hit %hit% * 14 / 10
  end
  if %next.affect(��������� ���)%
    eval hit %hit% * 14 / 10
  end
  if %next.affect(���������)%
    eval hit %hit% * 2
  end
  if (!%next.affect(��������� ���)%)  && %next.affect(������� ���)%
    if %next.position% < 5
      eval hit %hit%/2
    elseif %next.position% < 6
      eval hit %hit%*2/3
    elseif %next.position% < 7
      eval hit %hit%*3/4
    end
  end
  if  %next.affect(����������)% ||  %next.affect(���������� ����������)% 
    eval hit %hit%*3/4
  end
  if %next.affect(������ �����)%
    set hit 30000
  end
  if %target1.hitp% < %hit%
    makeuid target1 %next.id%
  end
done
�������� .%target1.name%
~
#92244
����������� ������~
0 k 100
~
if %world.curmobs(92226)%
  calcuid biglon 92226 mob
else
  halt
end
if %self.hitp% < 1400 && %random.8% == 1
  mecho ������ ���������� ������������ �����.
  mecho ������ ����� ������� ����� � ����� ����.
  mecho ������ ������� ������� �����.
  dg_cast '�������'
  mecho ������ ����� ����� � ����� ����.
  halt
end
if (%biglon.hitp% >900 || %random.4% == 1)
  halt
end
exec 92243 %biglon.id%
~
#92245
���� �� ������� �������� ~
1 j 100
~
if %actor.vnum% < 92200 || %actor.vnum% > 92399
  wait 1s
  opurge %self%
end
~
#92246
���� ������������~
0 f 100
~
if %world.curobjs(92208)% < 2 && %random.12% == 1
  mload obj 92208          
end
~
#92247
���� ������~
0 f 100
~
if %world.curobjs(92209)% < 2 && %random.9% == 1
  mload obj 92209          
end
~
#92248
���� ������~
0 f 100
~
if %world.curobjs(92210)% < 2 && %random.4% == 1
  mload obj 92210          
end
~
#92249
���� �����~
0 f 100
~
if %world.curobjs(92211)% < 2 && %random.4% == 1
  mload obj 92211          
end
~
#92250
���� ��������~
0 f 100
~
if %world.curobjs(92212)% < 2 && %random.9% == 1
  mload obj 92212          
end
~
#92251
���� ���������~
0 f 100
~
if %world.curobjs(92213)% < 2 && %random.11% == 1
  mload obj 92213          
end
~
#92252
���� ���~
0 f 100
~
if %world.curobjs(92214)% < 2 && %random.3% == 1
  mload obj 92214          
end
~
#92253
����� ����~
2 f 100
~
wdoor 92256 west purge  
wdoor 92256 west flags abcd room 92300
attach 92236 %self.id%
detach 92253 %self.id%
~
#92254
�������~
0  0
~
set i 0
foreach chr %self.pc%
  eval i %i%+1
done
*����� ������ ����         
set target1 %random.pc%  
set target2 %target1%
set target3 %target1%
*��������� ������ �����, ���� ������� ������ �������������
foreach chr %self.pc%
  if %target1.hitp% < %chr.hitp%
    set target1 %chr%             
  end                                                        
done 
if %i% > 1                
  *����� ������ ���� ����� ����1
  while %target2% == %target1%
    set target2 %random.pc%
  done
  *��������� ������ �����, ���� ������� ������ ������������� ����� ����1
  
  foreach chr %self.pc%                                     
    if %target2.hitp% < %chr.hitp% && %chr% != %target1%
      set target2 %chr%             
    end
  done     
end
if %i% > 2           
  *����� ������ ���� ����� ����1 � ���� 2
  while %target3% == %target1% || %target3% == %target2%
    set target3 %random.pc%
  done                                 
  *�� � �������
  foreach chr %self.pc%
    if %target3.hitp% < %chr.hitp% && %chr% != %target1%  && %chr% != %target2%
      set target3 %chr%             
    end
  done
end
~
$~
