#88800
����� ����~
0 f 100
~
mecho _���� ����������� �� ������� �����.
if ((%world.curobjs(88822)% < 1) && (%random.100% < 5))
  mload obj 88822
end
~
#88801
������� ����~
0 f 100
~
if ((%world.curobjs(88823)% < 1) && (%random.100% < 6))
  mload obj 88823
end
~
#88802
������ ������� ����~
0 f 100
~
return 0
mecho _������� � ��������� ��� ������� ������ � �����.
if ((%world.curobjs(88824)% < 3) && (%random.100% < 14))
  mload obj 88824
end
~
#88803
������� ������� ����~
0 f 100
~
if ((%world.curobjs(88825)% < 3) && (%random.100% < 14))
  mload obj 88825
end
~
#88804
���� ������~
0 f 100
~
if ((%world.curobjs(88826)% < 4) && (%random.100% < 15))
  mload obj 88826
end
~
#88805
���� ����~
0 f 100
~
mecho _���� ������, ��������� ������� ������, ���� &y����&n ��������� � ������.
foreach pokomu %self.pc%
  eval damag %pokomu.hitp%/5 + 50
  msend %pokomu% _&y�����&n ������ ��� � ��� � ����� �� ����.&n
  mdamage %pokomu% %damag%
  if (%random.100% < 34)
    msend %pokomu% _&r�� ����������, ��� ������� �� ��������� � ���� ����.&n
    mechoaround %pokomu% _%pokomu.name% ��������%pokomu.a% ������� ���� !
    dg_affect %pokomu.name% ���� �� -5 800
    dg_affect %pokomu.name% �� �� 30 800
  end
done
if ((%world.curobjs(88827)% < 1) && (%random.100% < 11))
  mload obj 88827
end
~
#88806
����� ������~
0 f 100
~
if ((%world.curobjs(88828)% < 2) && (%random.100% < 11))
  mload obj 88828
end
~
#88807
���� ��������� �������~
0 k 50
~
wait 5s 
set vkogo %random.pc% 
if ((%vkogo%) && (%self.position% >= 7))
  eval damag %vkogo.hitp%/3 + 150
  msend %vkogo% _&R��� ������� �������� ������ � ������� ��� � ��� !&n
  mechoaround %vkogo% _��� ������� �������� ������ � ������� ��� � %vkogo.vname% !
  mdamage %vkogo% %damag%
end
return 1
~
#88808
���� ���� ������ ����~
2 h 100
~
if (%object.type% != 19) 
  halt
end
wait 1
if (%random.100% <= 51)
  wecho _����� ��� �������� �� ����������...
  foreach yemob %self.npc%
    if (%yemob.vnum% == 88820)
      wecho _������ ����� ��������� ������� %object.vname%.
      wpurge %object%       
      halt
    end
  done
  wait 1s
  wecho _...�� ����� �� ��������� ��������, ������� �� ����� �� ����������������.
else 
  wait 1s
  wecho _����� ���� ����, ������������ ������� ���, ��������� ��-�� ���� !
  eval gryzt %random.pc% 
  wload mob 88826
  calcuid rats 88826 mob
  wforce %rats% mkill %gryzt%
  detach 88808 %self.id%
end
~
#88809
���� ���������~
2 e 100
~
wait 1
wait %random.5%s
switch %random.2%
  case 1
    if (%world.curmobs(88829)% < 12)
      wecho _���� �� ����� ������ ���������� � ������� ��������.
      wload mob 88829
    end
  break
  case 2
    if (%world.curmobs(88828)% < 12)
      wecho _������ ������� ������ ���������� ������ ������������ � �������� ��������.
      wload mob 88828
    end
  break
done
detach 88809 %self.id%
~
#88810
���������� ����� ���������~
2 c 1
�������� ������� �����������~
wait 1
if !%exist.obj(88832)%
  detach 88810 %self.id%
  halt
end
if (!%arg.contains(�����)% && !%arg.contains(�����)%)
  wsend %actor% _��� �������-�� �����?
  return 0
  halt
end
wsend %actor% _�� ��� ���� ���� �������� �� ������ � ������� �� �� ������ �������.
wechoaround %actor% _%actor.name% ��� ���� ���� �������%actor.g% �� ������ � ������%actor.g% �� �� ������ �������.
calcuid gorkakostey 88832 obj
wpurge %gorkakostey.id%
wait 1
wecho _� ����������� ����� ������ ��� ���������� ����� ����������.
calcuid prizraki55 88855 room
detach 88809 %prizraki55.id%
calcuid prizraki56 88856 room
detach 88809 %prizraki56.id%
wait 1
calcuid prizraki57 88857 room
detach 88809 %prizraki57.id%
calcuid prizraki58 88858 room
detach 88809 %prizraki58.id%
detach 88810 %self.id%
~
#88811
����� ����~
2 f 100
~
calcuid prizr55 88855 room
attach 88809 %prizr55.id%
calcuid prizr56 88856 room
attach 88809 %prizr56.id%
calcuid prizr57 88857 room
attach 88809 %prizr57.id%
wait 2
calcuid prizr58 88858 room
attach 88809 %prizr58.id%
calcuid gorka 88860 room
attach 88810 %gorka.id%
calcuid staya91 88891 room
attach 88808 %staya91.id%
wait 2
calcuid staya23 88823 room
attach 88808 %staya23.id%
calcuid staya29 88829 room
attach 88808 %staya29.id%
calcuid staya37 88837 room
attach 88808 %staya37.id%
wait 2
calcuid staya45 88845 room
attach 88808 %staya45.id%
calcuid staya48 88848 room
attach 88808 %staya48.id%
calcuid staya51 88851 room
attach 88808 %staya51.id%
wait 2
calcuid staya53 88853 room
attach 88808 %staya53.id%
wait 2
calcuid osyp 88893 room
attach 88813 %osyp.id%
~
#88812
���� ������� �����~
1 at 100
~
wait 1
%echo% _���� ������������ � ��������� � ����.
%load% mob 88835
wait 1
%purge% %self%
~
#88813
� �����~
2 e 100
~
wait 1
wecho _��������� ������ ��������� � ����� ����� � �������� ���� !
wait 2
foreach kpokomu %self.all%
  eval kdamag %kpokomu.hitp%/2 + 300
  wsend %kpokomu% _&R����� ������ ������� ���.&n
  wechoaround %kpokomu% _����� ������ ������� %kpokomu.vname%.
  wdamage %kpokomu% %kdamag%
done
wait 3s
if ((%random.100% < 34) && (%world.curobjs(88833)% < 1))
  wecho _����� ����� ���� ���-�� &M��������&n.
  wload obj 88833
else
  wecho _����� ����� ���� ���-�� &Y��������&n.
  wload obj 88834
end
detach 88813 %self.id%
~
#88814
����� � ��������~
0 r 100
~
wait 1
switch %random.5%
  case 1
    � ����� ���������, ������ �������!
    � ����, ������ ����������, ������ � ��������� ����� ������!
    � ���ģ� � ��� ����� ������� ��� ��� �������!
    ���
  break
  case 2
    � ��, ������� ���� � ���� ������.
    � �� ���� ��������� � ��������� � �������� ������� ���� ������� ����� � ���.
    �� ������������� ������ �����
  break
  case 3
    � �� ��� �� ��� ���������, ��� ��� ������ ����� ������.
    � ��� ����� ��� �����: ������ ����������� �����.
    � � ��� ��������� ������� ��������������.
    ���
  break
  case 4
    � �������� ������� ������������� ���� ��� �����.
    � �� � ����������� ���� ������� ������.
    � � ����� ������� ��� ��������, ��������, �����������, ����������?
    ���
  break
  case 5
    � ����� ��� ������ ���� ����� �� ��������.
    � ���� �� �� ����� � �� �������, �� �������.
    � ��� ������, � ��� �������.
    ���
  break
done
~
#88815
����� � ��������~
0 r 100
~
wait 1
switch %random.5%
  case 1
    � ������� ����������� ����� ��� � ��������:
    � ������� �������� ������� ��� ���������������� ������.
    � ������������, ������ ��������� �����.
    ������
  break
  case 2
    � �� �������, ��� ����� ���-�� ������� ��������, ��������, ����,
    � ����� �� ����� ���������� ����.
    � ����� ��� � � �������, ��� �� �������. � ����� ����.
    �� �������� ������ ���������
  break
  case 3
    � ������������ ������� ��� ������� ֣����� �������������� - � ����� ���� -
    � ������������� ����������� ���������� �� ����� ����, ��� ���������� ����
    � ����� ������ �������� � ���� �����֣���� � �������������� ����� ����������.
    � �� ������������ �������� ޣ��������.
    ���
  break
  case 4
    � � ���� ��, ������,
    � ����� ����?!
    � ��� ���������� � �����
    � ���� �� �����?
    � ��� ��� ���� ������ ���� -
    � ���� �� �����?
    ����
  break
  case 5
    � ������� ������������� � ��� �� ������.
    � ���, ���������� ����������� �������.
    �� ��������� ��������� ���
  break
done
~
#88817
���������~
0 q 100
~
wait 1
mecho _��������� �������� �����
mkill %actor%
~
#88818
���� �������� ������ ��� ���~
2 e 100
~
switch %actor.class%
  case 2
    case 3
      case 5
        case 9
          case 10
            case 11
              halt
            break
            default
              if %exist.mob(88815)%
                wait 3s
                wecho _����� ����� ���� �������� ������� ������� - ���, �������� ������������� ������.
                wecho _���������� ��� � ���������� �������� �� ��� � ������ :
                wecho _- �� ����� �����, �� � ��� �� ����� ������! ��������� � ��������!
                wload mob 88840
                *��� ������ ����� "���� ���������" - � ��� �� ��� �������?
                *���� �� ����� �� ����� ������ ���� ���������������.
                calcuid rab 88815 mob
                wpurge %rab%
              end
            break
          done
~
#88819
�������� ������ ��� ����~
0 f 100
~
return 0
mecho _����� ������ �������������� ���� ���� ������������ � �� ��� ��������� ������.
mecho _������, � ���� ���� ��� ����� �����, ��� ���� � ����.
~
#88820
������� ���� ������~
0 n 100
~
eval pokomu %random.pc%
if !%pokomu%
  halt
end 
switch %random.5%
  case 1
    msend %pokomu% _&R��� ������ �� ��� ���� ������� !&n
    mechoaround %pokomu% _��� ������ �� %pokomu.vname% ���� ������� !
    dg_cast '���� �������' %pokomu.name%
  break
  case 2
    msend %pokomu% _&R��� ������ �� ��� ���������� !&n
    mechoaround %pokomu% _��� ������ �� %pokomu.vname% ���������� !
    dg_cast '����������' %pokomu.name%
  break
  case 3
    msend %pokomu% _&R��� ������ �� ��� ��� !&n
    mechoaround %pokomu% _��� ������ �� %pokomu.vname% ��� !
    dg_cast '���' %pokomu.name%
  break
  case 4
    msend %pokomu% _&R��� ������ �� ��� ��� ����� !&n
    mechoaround %pokomu% _��� ������ �� %pokomu.vname% ��� ����� !
    dg_cast '��� �����' %pokomu.name%
  break
  case 5
    msend %pokomu% _&R��� ������ �� ��� ���� ����� !&n
    mechoaround %pokomu% _��� ������ �� %pokomu.vname% ���� ����� !
    dg_cast '���� �����' %pokomu.name%
  break
done
~
#88821
��������~
1 b 1
~
eval ukogo %self.worn_by%
if !%ukogo%
  halt
end
switch %random.6%
  case 1
    set kuda ��_�����
  break
  case 2
    set kuda ��_������
  break
  case 3
    set kuda ��_��
  break
  case 4
    set kuda ��_�����
  break
  case 5
    set kuda ����
  break
  case 6
    switch %random.6%
      case 1
        set kuda �_�������_�����_�����_����_���������
      break
      case 2
        set kuda �_�������_�����_�����_���������_����
      break
      case 3
        set kuda �_�������_��������_�������_�_����������_�������
      break
      case 4
        set kuda �_�������_�����_�_�����_������
      break
      case 5
        set kuda �_�������_����������_��������,_���_������_����_����������
      break
      case 6
        set kuda �_�������_������_�_��������
      break
    done
  break
done
osend %ukogo% _�������� ����� ����������� � ����� ����� � ������� %kuda%.
oechoaround %ukogo% _�������� � ����� %ukogo.rname% ����� ����������� � ������� %kuda%.
~
#88822
����~
1 j 100
~
wait 1
oecho _������ ���� �������� ������ ��������.
return 1
~
#88823
������ ������~
1 b 5
~
wait 1
switch %random.4%
  case 1
    oecho _������ ����������� &M�������&n �������.
  break
  case 2
    oecho _������ �������� &W�����&n ����� !
  break
  case 3
    oecho _������ ���������� ����� ��������� &G��������&n.
  break
  case 4
    oecho _������ ����� ������������ ������� �� &C��������&n �� &m�����������&n.
  break
done
~
#88824
���� ������~
0 n 100
~
eval kogo %random.pc%
if %kogo.name%
  msend %kogo% _&y���� ������ ������ ��� !&n
  mechoaround %kogo% _���� ������ ������ %kogo.vname% !
  dg_cast '����' %kogo%
end
~
#88825
������ �������~
0 f 100
~
mecho �� ������� ������ ���������� ��������� �����-�� ������.
mload obj 73206
end
~
$~
