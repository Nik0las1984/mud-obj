#3700
������� ����� - ������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != ������) && (%actor.name% != �����) && (%actor.name% != ������))
  osend %actor% _��� ��������� &K�����&n �� &W����&n � ����� �� � ���! 
  return 0
  halt
else
  wait 1
  oecho _&r���&n ����� ���������� ��������.
end
~
#3701
������� ����� - ������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != ������
  osend %actor%  _������������ �� ����� ����� � �������� ������ ���. 
  return 0
  halt
else
  wait 1
  oecho _����� ��������� ������ � ������� � �����.
end
~
#3702
������� ���� - ��������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != ��������
  osend %actor% _���� ������� ���� ���� ����� � �� �� ������ �������� ��.
  return 0
  halt
else
  wait 1
end
~
#3703
������� ���� - �����~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != �����
  osend %actor% &K����� ������ �������&n ��������� ������� ������ ����������� ������� � ���� ����-���� ����� �������.
  return 0
  halt
else
  wait 1
  oecho ��������� ������������ ��� �������� �� &K����� ������ �������&n � ����������� � ������ �������.
end
~
#3704
������� ���� - �������� (����. ���. ����)~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.level% == -1))
  halt
end
if %actor.name% != �������� && %actor.name% != ����
  otransform 3704
  osend %actor% &R�&Y�&G�&C�&B� &M�&R�&Y� &G�&G�&B�&M�&R�&Y�&n ��������� �� ����� ���!
  return 0
  halt
else
  wait 1
  oecho �� &R�&Y�&G�&C�&B� &M�&R�&Y� &G�&G�&B�&M�&R�&Y�&n ���������� �������� ����!
end
~
#3705
������� ���� - �����~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != �����) && (%actor.name% != ������))
  osend %actor% _������� ������ ������������ � ��� ����� ������� � ���� �� �����.
  return 0
  halt
end
set owner %self.worn_by%
if ((%owner.name% == ����� ) || (%owner.name% == ������ ))
  halt
end
osend %actor% ������� ������ ����� ������������ ���������� ����.
oechoaround %actor% ������� ������ ����� ������������ ���������� ����.
~
#3706
������� ���� -- ��������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if ((%actor.name% != ��������) && (%actor.name% != ������) && (%actor.name% != �������))
  otransform 3706
  osend %actor%  ����� �� ����� ������� ���������� ����� ����-������� ����� � ������ �������� ������.
  osend %actor%  �� �������� ��������� ����.
  return 0
  halt
end
set char %self.worn_by%
if (%random.1000% <= 40 || (!%char% && %random.1000% <= 40))
  wait 1
  oecho _&W����� �� ����� &K������ ������� &n�������� ������������, ���������
  oecho ___������� &G�������&n ����� � ���������� ������� ��� ������ ������� ���������.
end
~
#3707
������� ����� - ��������~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != �������� && %actor.name% != ������ && %actor.name% != ������
  otransform 3707
  osend %actor% _����� ���������� ����� ��������� � ������� �� ����� ���.
  return 0
  halt
end
set char %self.worn_by%
if (%random.1000% <= 40 || (!%char% && %random.1000% <= 40))
  wait 1
  oecho _�������� �� ����� ���������� ������� ���� � ��������� ���� �������.
end
~
#3708
������� ���� - ������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if %actor.name% != ������
  otransform 3708
  osend %actor% ����������� &c�������&n ������������ � � ��� �� ������� �������� �������! � ����� �� ���������!
  return 0
  halt
else
  wait 1
  if %random.num(10)% > 8
    osend %actor% &c������� ���������� �������&n �������� � ����� ������.
    oechoaround %actor% ��������� %actor.rname% � ������� ���������� ������� �������� ��� �������.
  else
    set selfnum 0
    set num 0
    foreach i %self.pc%
      eval num %num%+1
    done
    set ranofself %random.num(%num%)%
    foreach n %self.pc%
      eval selfnum %selfnum%+1
      if %ranofself% == %selfnum%
        set char %n%
      break
    end
  done
  if %char.name% != %actor.name%
    oechoaround %char% %char.iname% ��������%char.g% ��������� ������ � &c������� ���������� �������&n, ������� �����-�� ����� � ����� %actor.name%.
    osend %char% ��� ������, ���������� � &c������� ���������� �������&n %actor.rname%, ������� ���!
  else
    oechoaround %actor% %actor.iname% �����%actor.g% ��������������� ����� &c������� ���������� ��������&n.
    osend %actor% �� ������ ��������������� ����� &c������� ���������� ��������&n.
  end
end
end
~
#3709
������� ����� - ������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if ( %actor.name% != ������)
  otransform 3709
  osend %actor% _����� ���� ������������� � ��� ����� ������� � ����� �� �����.
  return 0
  halt
end
~
#3710
������� ���� - �������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if %actor.name% != ������� && %actor.name% != ������ && %actor.name% != �����
  otransform 3710
  osend %actor% �� ���������� ����� &R�������&n-&M����������&n ����, ���� �������� �� ���� ������� &R�����&n � �� ��� �� ��������� ���� � ������.
  oechoaround %actor% %actor.name% �������%actor.u% ����� &R�������&n-&M�������&n ����, ���� ������� ��������� ������� &R������&n � ������� %actor.rname%.
  return 0
  halt
else 
  wait 1
  oecho &R�������&n-&M����������&n ���� ������ �������� ���� ����� � ����������� �������� �� ���� ���� ������������ ��� ����� : &Y����&n
~
#3711
������� ����� - �������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if (( %actor.name% != ������ ) && (%actor.clan% != �� ))
  otransform 3711
  osend %actor% _���� ���� ��� ������ ������ ������ ������ ����� � �������� ������������ �������.
  return 0
  halt
else
  *set char %self.worn_by%
  *if (%random.1000% <= 120 || (!%char% && %random.1000% <= 40))
  wait 1
  oecho &Y����������� �������&n �� ����� &K������ &W�������&n.
end
~
#3712
������� �����  - ������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if ( %actor.name% != ������)
  otransform 3712
  osend %actor% _���� ����������� �� ����� ���, ������ � ����� ������.
  return 0
  halt
end
set char %self.worn_by%
if ((%random.1000% <= 450) || (!%char% && %random.1000% <= 450))
  wait 1
  switch %random.7%
    case 1
      set word �����
    break
    case 2
      set word �����
    break
    case 3
      set word ������
    break
    case 4
      set word ����
    break
    case 5
      set word ������
    break
    case 6
      set word ��������
    break
    default
      set word ����
    done
    oechoaround %actor% _���� ������������� � �������� ������ ������� �� %word%.
    osend %actor% _���� ������������� � �������� ������ ��� �� %word%.
  end
~
#3713
������� ����� - �������~
1 gjlp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if %actor% && ((%actor.name% != �������) && (%actor.name% != �����) && (%actor.name% != �����) && (%actor.name% != ����))
  osend %actor%  __���� � ���� &Y�������&n �� �������� &W����� ������&n � ��������: "������� ��
  osend %actor%  _������: ��� ������, ����� ���, �������."
  oechoaround %actor%  �� &Y�������&n ����� &W����� ������&n � ��������: '������� �� ������: ��� ������, ����� ���, �������.'
  return 0
  halt
end
set master %self.worn_by%
wait 1
*����������� ������ ��� ������ �����
if (%self.carried_by% && %actor% && !%master%)
  osend %actor% &Y�������&n ������������, ������ ���������� ��������
  osend %actor% __(� ��� ��� ������� &W��������� ������&n) ��������� ��� � ���.
  oechoaround %actor% &Y�������&n ������������, ������ ���������� ��������
  oechoaround %actor%   (� ��� ��� ������� &W��������� ������&n) ��������� � ��� %actor.dname%.
  halt
end
*��� ������ �����
if (!%self.worn_by% && %actor% && %self.carried_by% && %master%)
  oecho _&Y�������&n ���������� ��������.
  halt
end
*��� ��������� ����� � �� ����
oecho _&W��������� ������&n �������� �� &Y�������&n � ������ �������� ��������� �����!
~
#3714
������� ����� - �����~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != �����) && (%actor.name% != ����) && (%actor.name% != �����) && (%actor.name% != ����))
  osend %actor% ����� �������� � ��� ����� �������� ��������� ���� � �������� �� �����.
  return 0
  halt
else
  wait 1
end
~
#3715
������� ����� -- ��������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.level% == -1))
  halt
end
if ( %actor.name% != ��������)
  otransform 3715
  osend %actor% _���� ���������, ������ �������, � ��������� �� ����� ���.
  return 0
  halt
end
wait 1
set owner %self.worn_by%
if (%owner.name% == �������� )
  halt
end
oecho ���� ����������� ������������ ������ � ��� ����� ������ �� ����.
~
#3716
������� ����� - ������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if ((%actor.name% != ������) && (%actor.name% != ��������) && (%actor.name% != �������))
  otransform 3716
  osend %actor% �� ���������� ����� �����, �� ��� �����������, ������������� � ������, ��� ��������.
  return 0
  halt
end
wait 1
set owner %self.worn_by%
if (%owner.name% == �������� )
  halt
end
oecho ����� ���������� � ������ ���������.
~
#3717
������� ���� - ������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if ( %actor.name% != ������)
  otransform 3717
  osend %actor% _�� ���������� ����� ����� �� ������������.
  return 0
  halt
end
set char %self.carried_by%
wait 1
if (%char% && %self.worn_by%)
  oechoaround %actor%   %actor.name% �������� �������%actor.g% � �������.
  osend %actor% �� ������ ���������������...
end
~
#3718
������� ����� - ��������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if ( %actor.name% != ��������)
  otransform 3718
  osend %actor% _�� ������ ����� ����� ������� ������� ���������, �� ������� ��������,
  osend %actor% ___��� ������� � ���� �� ������, � ������ �� ������� ����� �����.
  oechoaround %actor% %actor.name% �������%actor.u% �������� ����� ������� �������, �� ������� ���������%actor.g%.
  return 0
  halt
end
~
#3719
������� ���� - ������~
1 gjp 100
~
if ((%actor.level% > 30)  (%actor.vnum% == -1))
  halt
end
if %actor.name% != ������ && %actor.name% != ������ && %actor.name% != ����� && %actor.name% != �����
  osend %actor% ���������� ������ �� ���� ������� ������ ������� � �������� ��� � ����.
  oechoaround %actor% ���������� ������ �� ���� ������� ������ ������� �� %actor.vname%.
  return 0
  halt
else
  wait 1
  oecho ���������� ������ �� ���� ������� ��������� &W������� ������ �����&n.
end
~
#3720
������� ���� -- ������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if (%actor.name% != ������)
  if %actor.clan% != �� && %actor.clan% != �� && %actor.clan% != ��
    otransform 3720
    osend %actor% �� &W������� �������&n ������� ������� ��������� �������, �� � ������ ����������� �� ����!
    oechoaround %actor% %actor.name% ��������%actor.u% �� &W������� �������&n, �������� ������%actor.g% ���-�� ��������.
    return 0
    halt
  end
else
  wait 1
  osend %actor% &W������ �������&n ����� ��� �������� ������.
  oechoaround %actor% &W������ ������� &n����� ��� ������� �������, ��� ����� �������.
end
~
#3721
������� ����� -- ��������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if ( %actor.name% != ��������)
  otransform 3721
  osend %actor% _�� ���������� �������� ������� �� ������� �����, �� ��� ����������� � ��� � ����� �� ������ �������.
  return 0
  halt
end
~
#3722
������� ����� -- ����~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if ( %actor.name% != ����)
  otransform 3722
  osend %actor% _�� ������� �������� ������� � ���������� ������� ������.
  osend %actor% __�� ��������� ��������� ����.
  return 0
  halt
end
~
#3723
������� �����  -- �������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if ((%actor.name% != ��������) && (%actor.name% != �������) && (%actor.name% != �����) && (%actor.clan% != ���))
  otransform 3723
  osend %actor% _���� ������� �� ��������� ��� ����� ����� ����� ���������� ��������.
  return 0
  halt
end
~
#3724
������� ����� -- ����~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if ( %actor.name% != ����)
  otransform 3724
  osend %actor% _��������� �������, �� ������� ����������������� ������������ ������.
  osend %actor% _��������� ������� �� �� �����, �� ������� ��������� ����� � �������.
  osend %actor% _�� �� �����.
  return 0
  halt
end
set char %self.worn_by%
if (%random.1000% <= 40 || (!%char% && %random.1000% <= 40))
  wait 1
  oecho _��������� ������ ����� ����� ��� �� ������� �� �������� �������.
end
~
#3725
������� ����� -- ����~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if ((%actor.name% != ����) && (%actor.name% != ������) && (%actor.clan% != ���))
  otransform 3725
  osend %actor% _������ ������ ������ ������ ��� �� �����.
  return 0
  halt
end
~
#3726
������� ����� -- ������~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ������ && %actor.name% != ������ && %actor.name% != ����� && %actor.name% != ����� && %actor.clan% != ��
  otransform 3726
  osend %actor% �� ���������� ��������� � ������ ����, �� � ��� ����������� ������ � �� ���� �� ���������� �� ���.
  return 0
  halt
end
set char %self.worn_by%
if (%random.1000% <= 40 || (!%char% && %random.1000% <= 40))
  wait 1
  oecho %actor.name% ��������%actor.g% � ������ ����, ������� �������%actor.u% ���, � �������%actor.w% ��������%actor.g% �������.
end
~
#3727
������� ����� -- �����~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if ((%actor.name% != �����) && (%actor.name% != ������) && (%actor.name% != ����) && (%actor.name% != �����) && (%actor.name% != �������))
  otransform 3727
  osend %actor% &G������� ������&n �������� �� �����, ������ ������� ��� � ������: "�� ����, �� �����!"
  return 0
  halt
end
~
#3728
������� ����� --  ������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if (%actor.name% != ������)
  otransform 3728
  osend %actor% _�������� ������ ������� ������ ���� �� ������� ��� ����.
  return 0
  halt
end
~
#3729
������� ����� -- �����~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if %actor.name% != ����� && %actor.name% != ����� && %actor.name% != ������ && %actor.name% != ������
  otransform 3729
  osend %actor% _������ ���������� ��������� � ������ ��� �� ����.
  osend %actor% __�� ����� ��������� &K��ڸ��� ����� � &R��������.&n
  return 0
  halt
end
set char %self.worn_by%
set char2 %self.carried_by%
if (%random.1000% <= 40 || (!%char% && %random.1000% <= 40) || (!%char% && !%char2%))
  wait 1
  oecho _������ ���������� ���������,������ ����������� � ���������.
end
~
#3730
������� ���� - �����~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ����� 
  otransform 3730
  osend %actor% ��������� �� &Y��&y���&Y��� &Y��&y��&n &b��&B��&c�&C� �&c�&b��&B���&n �� ������ ��� ������� ��� �� �� ����� �� �������.
  oechoaround %actor% ��������� �� &Y��&y���&Y��� &Y��&y��&n &b��&B��&c�&C� �&c�&b��&B���&n %actor.iname% �����%actor.g% ��� ������� ��� �� � ���������.
  return 0
  halt
else
  wait 1
  oecho �������� ���� �� &Y��&y���&Y��� &Y��&y���&n &b��&B��&c�&C� �&c�&b��&B���&n ��������� ����� ��������!
end
~
#3731
������� ���� - �����~
1 jp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ����� 
  otransform 3731
  oechoaround %actor% ������� ���������� ���� ������� � ��� ���������� ���� ���� ������� %actor.vname%.
  osend %actor% ������� ���������� ���� ������� � ��� ���������� ���� ���� ������� ���.
  return 0
  halt
else
  wait 1
  osend %actor% ����� �������� �� ����, ������� ���� ������ ��� � ������� �������.
  oechoaround %actor% ����� �������� �� ����, ������� ���� ������ %actor.rname% � ������� �������.
end
~
#3732
������� ���� - �����~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ����� 
  otransform 3732
  oechoaround %actor% ������ ������������ �� ��� %actor.rname%.
  osend %actor% ������� ������������ � ��� �� ���.
  return 0
  halt
else
  wait 1
  osend %actor% �������� � ������������ ������ ����������� ���������� ���. �� ������������� �����������.
  oechoaround %actor% �������� � ������������ ������, ������������ �� ������� �����, ������ ���������� ���.
end
~
#3733
������� ���� - ������~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ������� && %actor.name% != ������ && %actor.name% != ���� && %actor.name% != �������
  otransform 3733
  oechoaround %actor% %actor.name% �������%actor.g% ���� � �������� &W�&n��&K���&r�&R� �&r�&K���&n�&W�&n, �� � &R������ &n��������%actor.g% ��.
  osend %actor% �� �������� ���� � &W�&n��&K���&r�&R� �&r�&K���&n�&W�&n, �� � ������ ��������� ��.
  return 0
  halt
else
  wait 1
  osend %actor% &W�&n��&K���&r�&R� �&r�&K���&n�&W�&n �������� � ��� �� ����.
  oechoaround %actor% �� ��������, ��� ���� ������ ����� ������� �� &W�&n��&K���&r�&R� �&r�&K���&n�&W�&n.
end
~
#3734
������� ���� - �����~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if %actor.name% != ����� && %actor.name% != ���� && %actor.name% != ������
  otransform 3734
  oechoaround %actor% ���� &Y��������� &K��������&n ���������� ������� %actor.rname% �� �����!
  osend %actor% ���� &Y��������� &K��������&n ���������� ������� ��� �� �����!
  return 0
  halt
else
  wait 1
  osend %actor% ���� &Y��������� &K��������&n ��������� ����� ����������.
  oechoaround %actor% ���� &Y��������� &K��������&n ��������� � ��� ������.
end
~
#3735
������� ���� - ��������~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != �������� && %actor.name% != ������� && %actor.name% != ������ && %actor.name% != �����
  otransform 3735
  oecho �� �� ������ ����� �������.
  return 0
  halt
else
  wait 1
end
~
#3736
������� ���� -- ������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if ((%actor.name% != ������) && (%actor.name% != ������))
  otransform 3736
  osend %actor% _�� ���������� ����� &W����� &W�� &Y���&R���&Y���&R� �&Y���&R���&Y���&n, �� ���� �� ������� ����.
  osend %actor% _��� ���� �� �������� ������� &R"&Y��� ������� - ������&R"&n
  return 0
  halt
end
osend %actor% � ����� ����� �� ����� ���������� ָ���� �������� &Y"������! ��������!"&n
oechoaround %actor% �� ��������, ��� � ����� ������ &W����� &W�� &Y���&R���&Y���&R� �&Y���&R���&Y���&n ����������� Ը���� ������.
~
#3737
������� ���� - �����~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ����� && %actor.name% != ����� && %actor.name% != ���� && %actor.name% != ����� && %actor.name% != ����� && %actor.name% != �����
  otransform 3737
  oechoaround %actor% &W�������� ������� �������� ����, &R���������� ���� &W������������� ������� �������� �������.&n
  osend %actor% &R�������� ������� ���������� ���� ���.&n
  return 0
  halt
else
  wait 1
  oecho &W�������� ������� ������� ����������, ������� ���������� �� ����� � �������!&n
end
~
#3738
������� ���� - �����~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ����� && %actor.name% != ������ && %actor.name% != �����
  otransform 3738
  oechoaround %actor% %actor.name% �������%actor.u% ����������� �� &C������� &M����&n �� ���� ���%actor.g% �� ����%actor.g% &C�����&n.
  osend %actor% &C����� &n� &M������ &n�������� � ���� ������, ��������� ��� � &C��������� ������� �����&n...
  return 0
  halt
else
  wait 1
  oecho &C������� �������� &M����&n ���� ����������� � ��������� &W������������ ������&n...
end
~
#3739
������� ���� - �����~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if (%actor.name% != �����)
  otransform 3739
  osend %actor% �� ������ ���� � ���������, ���������� ����� ���������� ������. ��� ������!
  oechoaround %actor% %actor.name% �����%actor.g% ���� � ���������, ���������� ����� ���������� ������.
  return 0
  halt
end
set char %self.worn_by%
set char2 %self.carried_by%
if (!%char% && !%char2%)
  wait 1
  oecho %actor.name% �����%actor.g% ������ ������� ����� ���������, ����������� �� ����������.
end
~
#3740
������� ���� - ����~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ���� && %actor.name% != ����� && %actor.name% != ����� && %actor.name% != ������
  otransform 3740
  oechoaround %actor% %actor.name% �������%actor.u% ����� %self.vname%, �� ����� �� ������%actor.g%!
  osend %actor% ����� ����� ������ ��� ������ �����? ���, ����������...
  return 0
  halt
else
  wait 1
  eval 3740num %random.3%
  *oecho ��������� ����� �����: %3740num%
  if %3740num% == 1
    set 3740itemname &c������ � ��������&n
  elseif %3740num% == 2
    set 3740itemname &y�������� �� ������&n
  elseif %3740num% == 3
    set 3740itemname &W������������� �����&n
  end
  osend %actor% �������� �� &W���� &y������������ &W���� &n������ %3740itemname%. �������, ����� �� ������� ���������� ����.
  oechoaround %actor% �� ���� ��� ���� %3740itemname%, ��� �� �������� �� ������� ������, ���������� � &W���� &y������������ &W����&n!
end
~
#3741
������� ����� -- ������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if ((%actor.name% != ������) && (%actor.name% != ������))
  otransform 3741
  osend %actor% _�� ������ ��������� �� ����������� ����� � ��������� ������.
  return 0
  halt
end
wait 1
if !%self.worn_by%
  oecho _%actor.name% ������ ������ �� ������� � ������������ � �����.
end
~
#3742
������� ���� - ������~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ������ && %actor.name% != �������� && %actor.name% != ���� && %actor.name% != �������
  otransform 3742
  oechoaround %actor% %actor.name% �������%actor.u% ��������� ��������� ������, �� ����� ������� ��� �� ���.
  oforce %actor% say ��!
  return 0
  halt
elseif %actor.name% == ����
  wait 1
  oechoaround %actor% %actor.name% ������%actor.q% ��-�� ������ �����-�� &K�������������� ��������&n � �����%actor.q% ���-�� � ��� ����������...
  osend %actor% &G��&g���&G�� &c���&C����&c���&K ��&W���&n���� �&W���&K��&n ������: '�� ������ ����, �������� ���� �!'.
else
  wait 1
  oecho &G��&g���&G�� &c���&C����&c��� &K��&W���&n���� �&W���&K��&n ������ "��!".. ��� ��� ������ ����������?..
end
~
#3743
������� ���� - ������~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ������ && %actor.name% != ������ && %actor.name% != ������ 
  otransform 3743
  oechoaround %actor% %actor.name% �������%actor.g% ����� &K����� �� ��������� ���������&n, �� ����� ���������%actor.g%.
  osend %actor% �� �������� ����� &K����� �� ��������� ���������&n, �� ����� ��������, ��� ����� ����� ���� - �� ������!
  return 0
  halt
else
  wait 1
  osend %actor% &K����� �� ��������� ���������&n �������� �������� ��� �����.
  oechoaround %actor% &K����� �� ��������� ���������&n �������� ��������, �� ������� ������������ ������.
end
~
#3744
������� ���� - ����~
1 g 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ������ && %actor.name% != ���� && %actor.name% != ������ && %actor.name% != ������ 
  otransform 3744
  oechoaround %actor% %actor.name% ��������%actor.g% ���� � &K����� &n� &g����������&n, �� ����� ���������%actor.g%.
  osend %actor% �� ��������� ���� � &K����� &n� &g����������&n, �� ������� �� ��������� ��� ����� �����.
  return 0
  halt
else
  wait 1
  oecho &K����� &n� &g����������&n ��������� � ���� ������������ ��������.
end
~
#3745
������� ���� - ������~
1 g 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ������  
  otransform 3745
  oechoaround %actor% %actor.name% �������%actor.g% ������� �����, �� �� ����%actor.g%.
  osend %actor% �� ���������� ������� �����, �� �� ������.
  return 0
  halt
else
  wait 1
  oecho &Y������� ����&n �� ������ ���������.
end
~
#3746
������� ���� - ��������~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != �������� && %actor.name% != ���� && %actor.name% != ������ && %actor.name% != ��������
  otransform 3746
  oecho ��������� ����� ����� ��������� ��������� ��������.
  return 0
  halt
else
  wait 1
  oecho &K�����&n �����������, ������� � � ��� ��������� �� ����� ��������� &c������� ��������&n.
end
~
#3747
������� ���� - ����~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != �������� && %actor.name% != ������ && %actor.name% != ����� && %actor.name% != ����� && %actor.name% != ������ 
  otransform 3747
  oecho ������ ���� �� ����� �������� ��� ����� �������.
  return 0
  halt
else
  wait 1
end
~
#3748
������� ���� - ������~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ������ && %actor.name% != �������
  otransform 3748
  oecho _&K�������� ������ &W�������&n ���� ������ ���������.
  return 0
  halt
else
  wait 1
end
~
#3749
������� ���� - ������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if %actor.name% != ������ && %actor.clan% != ���
  otransform 3749
  osend %actor% �� ���������� ������� ��������� ����, �� ��� ���������� � �������.
  return 0
  halt
end
wait 1
oecho &W��������� ����&n �������.
end
~
#3750
������� ���� - �����~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != �����
  otransform 3750
  osend %actor% ������ ����������� �� ����� ��� � ������� �������� �����:"���� �����! ����������! � ��� ��� ���� ����!"
  return 0
  halt
else
  wait 1
  osend %actor% &y������&n �������� ������� �������.
end
~
#3751
������� ���� - �����~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ����� && %actor.name% != ����� && %actor.name% != �������� && %actor.name% != ������ 
  otransform 3751
  oechoaround %actor% �� &Y���� &n������ ����� � ������� ����������� ������� &G������� ���&n � &R������ ������&n %actor.vname% �� ����.
  osend %actor% �� &Y���� &n������ ����� � ������� ����������� ������� &G������� ���&n � &R������ ������&n ��� �� ����.
  return 0
  halt
else
  wait 1
  oecho �� &Y����&n, ������������� ����� �������, �������� ���������� &G������� ���&n � ����� ���������.
end
~
#3752
������� ���� - �����~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != �����) && (%actor.name% != ������) && (%actor.name% != ������) && (%actor.name% != ������))
  otransform 3752
  osend %actor% &m����������� &M�������� &n������� � ��� � �����.
  return 0
  halt
else
  wait 1
  switch %random.2%
    case 1
      oecho �� &W���������� &M�������� &W������� &m������� � &r�������&n.
    break
    case 2
      oecho �� &W���������� &M�������� &W����� ������ &y�������� &y��������&n.
    break
  done
end
~
#3753
������� ���� - �������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != �������) && (%actor.name% != �����) && (%actor.name% != �������))
  otransform 3753
  osend %actor% &K���������&n ����� &W������� ������&n ��������� �� ����� ��� � � ������� &Y���������&n ������� �� �����.
  return 0
  halt
else
  wait 1
  oecho &W�����&n ����������� � ������, ��������� ������� ������ &K������&n ��� ������.
end
~
#3754
������� ����� - �����~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != �����) && (%actor.name% != ������) && (%actor.name% != ������) && (%actor.name% != ������) && (%actor.name% != �����))
  otransform 3754
  osend %actor% �� �� ������ ������� ����� �������.
  return 0
  halt
else
  wait 1
  oecho __� &K�����&n ���-�� ��������.
end
~
#3755
������� ���� - ����~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != ������) && (%actor.name% != ������) && (%actor.name% != ����))
  otransform 3755
  osend %actor% &W���� &Y�������� ����&n �������� �� ����� ��� � ����� ������ �� �����.
  return 0
  halt
else
  wait 1
end
~
#3756
������� ���� - ������~
1 gjp 100
~
if (%actor.level% > 30) && (%actor.vnum% == -1)
  halt
end
if ((%actor.name% != ������) && (%actor.name% != ������))
  otransform 3756
  osend %actor% �� �������� ����� ����������� ����� ������ �����, ��� �� �������� ��������� ����.
  return 0
  halt
else
  wait 1
end
~
#3757
������� ���� - ������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != ������) && (%actor.name% != ����������) && (%actor.name% != �����) && (%actor.name% != ������) && (%actor.name% != �����) && (%actor.name% != �������) && (%actor.name% != ��������))
  otransform 3757
  osend %actor% ��� &W��������&n ����������� &C�������&n ��� ������� ����� �����.
  return 0
  halt
else
  wait 1
  oecho ����� � ��� � &K�����&n ��������� &R�����&n: ������ �� � &y�������� &Y����&n!
  oecho ������ &G������&n �� &y�����&n, &r�����&n �� &Y�������&n.
  oecho ��� �������� &Y������ &y�����&n � �� ��������� &W��������&n ������� � ��������� � &R����&n!
end
~
#3758
������� ���� - �������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != �������) && (%actor.name% != �����) && (%actor.name% != �����) && (%actor.name% != ��������) && (%actor.name% != ������) && (%actor.name% != �������))
  osend %actor% ��&Y�&y�&g�&G�&n, ����������� �� &K�&n�&W�&n�&K�&n�&W�&n, ����� &r����������&n � &K�������&n ��� ����.
  return 0
  halt
end
~
#3759
������� ����� - �����~
1 gjp 100
~
say My trigger commandlist is not complete!
~
#3760
������� ���� - ������~
1 gjp 100
~

~
#3761
������� ����� - ������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != ������) && (%actor.name% != �����) && (%actor.name% != ��������))
  otransform 3761
  osend %actor% �� ���������� ������� &K�������&n, �� �������� ������� ��, ������ ��� &g�������&n.
  return 0
  halt
end
~
#3762
������� ����� - �������~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if ((%actor.name% != �������) && (%actor.name% != �����) && (%actor.name% != ������) && (%actor.name% != ��������) && (%actor.name%!=�������) && (%actor.name%!=�����))
  otransform 3762
  osend %actor% � %self.dname% ���-�� &R���������&n � �� ��������� &W��������� ����&n.
  return 0
  halt
else
  wait 1
  oechoaround %actor% �� %self.rname% %actor.rname% ���������� ���� &r�������� &g�������&n.
  osend %actor% �� ������� �������� �������� � �� %self.rname% ���������� ���� �������� �������.
end
~
#3763
������� ����� - �������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != ������� && %actor.name% != ����� && %actor.name% != ����� && %actor.name% != ������
  osend %actor% &R���� &W�����, &K��&M!&C!&B!&n
  return 0
  halt
end
~
#3764
������� ����� - ������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != ������) && (%actor.name% != �����) && (%actor.name% != ������) && (%actor.name% != ������))
  otransform 3764
  osend %actor% &Y���� &K���������� &R�������&n ������ �� ����� ���.
  return 0
  halt
end
~
#3765
������� ���� - �����~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ����� && %actor.name% != ������ && %actor.name% != ����� 
  otransform 3765
  oechoaround %actor% ����� &K������ ��������� &C��������� &n������ � � ��� �� ��� %actor.vname% �������� ��������� ����� �������.
  osend %actor% ����� &K������ &n��������� &C��������� &n������ � � ��� �� ��� ��� �������� ��������� ����� �������.
  return 0
  halt
else
  wait 1
  oecho ������ �������� &W��������� ������ &K������ &n�������� &C�����������&n ������.
end
~
#3766
������� ���� - ������~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ������ && %actor.name% != �������
  otransform 3766
  oechoaround %actor% %actor.name% �������%actor.u% ����� &W����� &K������� �����&n, �� �� ������� �� ����, � ����� ��������� ������ ��������� �� �����.
  osend %actor% �� ���������� ����� &W����� &K������� �����&n, �� ��� ������� �� ����, � ����� ��������� ������ ��������� �� �����.
  return 0
  halt
else
  wait 1
  switch %random.3%
    case 1
      osend %actor% ���������� &K����� &n������������ � &W�����&n � ������� ��� �� �����, � ������� ����� &Y�����&n.
      oechoaround %actor% ���������� &K����� &n������������ � &W�����&n � ������� ������� �� �����, � ������� ����� &Y�����&n.
    break
    case 2
      osend %actor% &Y�����&n �� ����� &K�����&n ������� &y�����&n � ������ � ��������� ��������� �� ��� &y�����&n, ���� � ��� �� �����.
      oechoaround %actor% �� ������������� ��� ���-�� ������� ��� �� &B������&n � ������� &Y������� ������������ �����&n.
      oechoaround %actor% ��� &K������&n ���� ������� &g�������� �����&n � ����� &C��������&n ��, ���� � &K%actor.rname%&n �� �����.
    break
    case 3
      osend %actor% &K�����&n � ����� ����� ���������� &R������� ����&n � �������� ���������.
      oechoaround %actor% &K������ &W�����&n %actor.rname% ������ &B������ ���������&n ����� � ��� �� ������. &R�����&n � �������� � ���� &Y�����&n, &m�&M�&Y�&G�&C�&R�&n ����������� � ����� &W���������&n.
      oechoaround %actor% ��� �������... &R�����&n - &K������&n, &K����&n - &R�������&n. ������������ &K�������&n.
    break
  done
end
~
#3767
������� ����� - �����~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if %actor.name% != ����� && %actor.name% != ������ && %actor.name% != ��������
  otransform 3767
  osend %actor% �� ���������� ������� �������, �� ����� �������� ����� �� ������ ������.
  osend %actor% �� ��������� ����... &R������&n ��!
  return 0
  halt
else
  wait 1
  osend %actor% �������� �� ������� &y��&Y���&y��&n �� ����� � �� ��� ������ &W�&n�&K�&n�&W�&n�&K�&n &C��&c��&g��&G��&g��&c� �&C��&B��&b��&n.
  osend %actor% �� �������� �������� &G��������&n, &W������&n, &r������&n � ����������� �� �� ��������.
  oechoaround %actor% ����� ���������� � ������ ���� �������, ������ ����� &G����������&n, &W��������&n, &r��������&n. �� ����� ����������, ��� �� �������� &C��&c��&g��&G��&g��&c��&C�&n � ����������� �� �� ����� ������������ ��������.
end
~
#3768
������� ���� - ����~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ���� && %actor.name% != ����� && %actor.name% != ������ 
  otransform 3768
  oechoaround %actor% %actor.name% �������%actor.u% ��������� &r�������� ��������&n, �� ���� ���� �� ������%actor.g%!
  osend %actor% ���� ������� �� ����, �� ���� ����� &R������� ����������� ���&n, ��������� �� &r��������� �������&n. �������, ����� ������ �� �����.
  return 0
  halt
else
  wait 1
  oecho �������� �� &r�������� ����� &n��� ������ ������� ������� - ���-�� ������ �� ����, �������� � ����� ���� ����� ������ ��������!
end
~
#3769
������� ���� - �����~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ����� && %actor.name% != ������� 
  otransform 3769
  oechoaround %actor% %actor.name% �������%actor.u% ����� � &c���&C��&c���&n, �� &R�������&n, ����������� �� ���, ������ %actor.vname% �����!
  osend %actor% &R������� &r����������� �� &c���&C��&c��� &r������ ��� ������ ������ � �������� ���������� ��� ����!&n
  return 0
  halt
else
  wait 1
  osend %actor% &K������ ������� ��������� �� &c���&C���&c��&K, ��������� ���� ���� &W���������� �������&K.&n
  oechoaround %actor% &K������ ������� ��������� �� &c���&C���&c��&K, ��������� ���� ������ &W���������� �������&K, ����� ��� &Y������� ����������&K.&n
end
~
#3770
������� ���� - �������~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ������� && %actor.name% != ������ && %actor.name% != ��������� && %actor.name% != ������� && %actor.name% != ������ && %actor.name% != ������� 
  otransform 3770
  oechoaround %actor% %actor.name% �������%actor.u% ����� &c�&C�&c�&C�&n-&y�&Y�&y�&Y�&Y�&y�&W ���� �������&n �� ��������%actor.g% �������.
  osend %actor% &R������� ����� ������������ ������� ����������!!!&n
  return 0
  halt
else
  wait 1
  oecho ����� ��� ������� ���������� �� ��������� &c�&C�&c�&C�&n-&y�&Y�&y�&Y�&Y�&y�&n ������.
end
~
#3771
������� ����� �����~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != ������ ) && (%actor.name% != ����� ) && (%actor.name% != ������ ) && (%actor.name% != �������� ) && (%actor.name% != �������� ) && (%actor.name% != ������ ))
  otransform 3771
  osend %actor% �������� ���� � ���� � ������� ������ ������� ��������, �� ������� ��������� ������ ���� &R�������&n. �� ��� ��� �� ��������.
  return 0
  halt
else
  wait 1
  oecho �������� �� &C��&c�� &y� �&Y��&y��&c�� &C��&c��&y�� &R������� ��������&n �������� &K����� �����&n � ��, ������� ���, � ��� �� ����������.
end
~
#3772
������� ���� - �������~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ������� && %actor.name% != �������� && %actor.name% != �����
  otransform 3772
  oechoaround %actor% &R��� ������ %actor.name% ���������%actor.g% ������ �������, ����, ���������� �� ����, ������ ������� %actor.vname% � ������, ����� � �������, %actor.name% �������%actor.u% � ���!&n
  osend %actor% &R��� ������ �� ���������� ������ �������, ����, ���������� �� ����, ������ ������� ��� � ������, ����� � �������, ���� ���� �����������!&n
  return 0
  halt
else
  wait 1
  oecho &W�� ������ ���������� &G����� � ��������� ��������&n, &y�� ����������� ������ &R������ � ����� ������&n.
end
~
#3773
������� ����� - ����~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ������� && %actor.name% != �������
  otransform 3773
  osend %actor% &Y����� &y�����&n ������ ������ ��� �� �����.
  return 0
  halt
else
  wait 1
  oecho &Y����� &y�����&n ����� ����������.
end
~
#3774
������� ���� - �������~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ������� && %actor.name% != ������� && %actor.name% != �������
  otransform 3774
  osend %actor% �������� ���� � &r����&n, �� ��� �� ��������� �� � &R�����&n. ������ ������� ��� ������!
  return 0
  halt
else
  wait 1
  oecho ��������� &m������ &r�����&n ����� �� &K�����&n.
end
~
#3775
������� ����� - �����~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ����� && %actor.name% != ����� && %actor.name% != �����
  otransform 3775
  osend %actor% ����� ������ ����� &W������&n? � �� ������ �� �����!
  return 0
else
  wait 1
  oecho &W������ ������� ��������&n �������� &W����� ������&n.
end
~
#3776
������� ���� - ������~
1 fgjlp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
switch %random.8%
  case 1
    set word &G�������&n
  break
  case 2
    set word &R�������&n
  break
  case 3
    set word &B�����&n
  break
  case 4
    set word &W�����&n
  break
  case 5
    set word &Y������&n
  break
  case 6
    set word &C�������&n
  break
  case 7
    set word &K�����&n
  break
  case 8
    set word &M���������&n
  done
  if ((%actor.name% != ������) && (%actor.name% != �����) && (%actor.name% != ������) && (%actor.name% != ������) && (%actor.name% != �������))
    otransform 3776
    osend %actor% &W�� &M�&G�&B�&Y�&C� &W� &B�������� �������� &W�������� &B������ ����������&n %word% ��ԣ���.
    osend %actor% &W������ ��� �� �����, ��ԣ��� &M��������� &W� �� ��������� &B�������� &W����� ������� � &M�&G�&B�&Y�&C�&n.
    oechoaround %actor% &W�� &M�&G�&B�&Y�&C� &W� &B�������� �������� &W�������� &B������ ����������&n %word% ��ԣ���.
    oechoaround %actor% &W������ %actor.vname% �� �����, ��ԣ��� &M��������� &W� �� ��������� &B�������� ����� ������� � &M�&G�&B�&Y�&C�&n.
    return 0
    halt
  end
  set master %self.worn_by%
  wait 1
  *����� �����
  if (%self.carried_by% && %actor% && !%master%)
    osend %actor% %word% ��ԣ��� &W������� ������ �� &M�&G�&B�&Y�&C� &W�&n �������� ���������� ������ ���.
    oechoaround %actor% %word% ��ԣ��� &W������� ������ �� &M�&G�&B�&Y�&C� &W�&n �������� ���������� ������ %actor.vname%.
    halt
  end
  *����� �����
  if (!%self.worn_by% && %actor% && %self.carried_by% && %master%)
    oecho &W�� &M�&G�&B�&Y�&C� &W� &B�������� �������� &W��������� &R�������� ��������&n.
    halt
  end
  *����� �����-���
  osend %actor% &W�� &M�&G�&B�&Y�&C� &W� &B�������� �������� &W�������� %word% ��ԣ���&n &W�, &B������ ���������&n, &W��������� ��� ��� ������&n.
  osend %actor% &W�� ��������� ��ԣ��� � ������� ��������� ��� �������&n.
  oechoaround %actor% &W�� &M�&G�&B�&Y�&C� &W� &B�������� �������� &W�������� %word% ��ԣ��� &W�, &B������ ���������&n, &W��������� ���-�� �� ��� %actor.dname%&n.
  oechoaround %actor% &W%actor.name% ������� ��������%actor.g% ��ԣ��� � ��������%actor.g% ��� �������&n.
~
#3777
������� ���� - ����� (����� �����)~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
*������ ������������ �����: ����� ������� ������� ������, ������ ��������: ����� ������
if %actor.name% != ����� && %actor.name% != ������ && %actor.name% != ��������
  otransform 3777
  oechoaround %actor% %actor.name% �������%actor.u% ����� &y��&Y�� &c���&C���� &g����&G����&n, �� ����������%actor.g%.
  osend %actor% �� ���������� ����� &y��&Y�� &c���&C���� &g����&G����&n, �� ���� ���� ��� ������ ������ ������.
  return 0
  halt
else
  wait 1
  oecho &W�������� ��� ���������� ���� &b����&B��� &b��&B��&W, �������� � ����� &c����&C����� &c��&C��.&n
end
~
#3778
������� ����� - �������~
1 gp 100
~
* ����� ���� ��������� �� ������ ������� (������ �����)
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if (%actor.name% != ������� && %actor.name% != ����� && %actor.name% != �������� && %actor.name% != �������� && %actor.name% !=����� && %actor.name% != ������)
  otransform 3778
  oechoaround %actor% %actor.name% �������%actor.u% ������� &K������� ��������� �����&n, �� �� ������ ������������� � ��%actor.g%, ���������, ������%actor.g% ��.
  osend %actor% �� ���������� ����� &K������� ��������� �����&n, �� �� ������ ������������� � ��� �������� �� �������.
  return 0
  halt
else
  wait 1
  %send% %actor% &K������� ��������� �����&n ��������� �� ���� � ����� �����.
  %echoaround% %actor% &K������� ��������� �����&n ��������� �� ���� � ����� %actor.rname%.
end
~
#3779
������� ���� - �����~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ������ && %actor.name% != ������ && %actor.name% != �������� && %actor.name% != ����� && %actor.name% != ����� && %actor.name% != ���� && %actor.name% != �������
  otransform 3779
  oecho &W��������! &n�&n�&c���&n��&W� &n��&c��&n� &W������ ��������� ��� ������!&n 
  return 0
  halt
else
  wait 1 
  oecho &W��������! &n�&n�&c���&n��&W� &n��&c��&n� &W������ ��������� ��� ������!&n 
end
~
#3780
������� ����� - ������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if ((%actor.name% != ������) && (%actor.name% != ����������) && (%actor.name% != ���������) && (%actor.name% != ������) && (%actor.clan% != ��))
  otransform 3780
  osend %actor% &Y�&W�&Y�&W�&Y� &W� &Y�&W�&Y�&W�&Y�&n �������� ������� ������� � �� ������ �� �����������.
  return 0
  halt
end
~
#3781
������� ����� - ���������~
1 gjp 100
~
if %actor.level% > 30 && %actor.vnum% == -1
  halt
end
if %actor.name% != ��������� && %actor.name% != ���� && %actor.name% != �����
  otransform 3781
  osend %actor% &R��������&n �� �������� ����� ����, ��������� �������� � ������������� ������ ��� �� �����.
  %echoaround% %actor% &R��������&n �� �������� ����� ����, ��������� �������� � ������ %actor.rname% �� �����.
  return 0
  halt
else
  wait 1
  oecho &R��������&n ���������� � ������������ ��������, ������������ ������.
end
* ����� ������� �� ������ � ��������� ������. � ������ �������� ���������� � �������.
~
#3782
������� ����� - �������~
1 gp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if %actor.name% != �������
  otransform 3782
  osend %actor% &y����&n �������, �������� � ��������� &R�������&n ��� �� ����.
  return 0
  halt
else
  wait 1
  %echoaround% %actor% &y����� ����&n �������� � ����� ��������, ��������� ��� �������.
  osend %actor% &y����� ����&n �������� � ����� �����, ��������� �������.
  halt
end
~
#3783
������� ���� -- �������~
1 gjpr 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if ((%actor.name% != �������) && (%actor.name% != �����) && (%actor.name% != ������) && (%actor.name% != �����) && (%actor.name% != ������))
  otransform 3783
  osend %actor% �� &Y��&y��&g� �&G��&C� �&c��&B��&b��&K��&n ��������� ���� �, ������ ��� �� �����, ��������� �����.
  return 0
  halt
end
~
#3784
������� ����� -- �������~
1 gjpr 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != �������) && (%actor.name% != ��������) && (%actor.name% != �����) && (%actor.name% != �������) && (%actor.name% != ������))
  otransform 3784
  osend %actor% ��� ������ �� ��������� ���� � ������������ �����, ��� �������� ������� ��������, ������� �����������, � ���� �������� &W����� ������� ����&n � &W�&R�&Y�&W�&R�&Y�&W�&R�&Y�&W�&R� &r�������� &R�&Y�&R�&Y�&R�&Y�&R�&n.
  return 0
  halt
else
  wait 1
  switch %random.5%
    case 1
      oecho ����������� ���� ����������, ��� ����� &c��&g��&c� �&g��&c��&g��&c� �&g��&c���&g��&n ���������� �� ������.
    break
    case 2
      oechoaround %actor% &G�&K��&G�&n �� ����� %actor.rname% ���������� ����������, ����� �� ��� ��� ��������.
      osend %actor% &G�&K��&G�&n �� ����� ����� ���������� ���������� ����������� ����-��.
    break
    case 3
      oechoaround %actor% &G�&K��&G�&n �� ����������� ����� ����� ��������� �� ���, � �� ������������� ������� ������������: � �� ���� �� ������???
      osend %actor% &G�&K��&G�&n �� ����������� ����� ���������� ��������� �� ����-��.
    break
  done
end
~
#3785
������� ���� - �������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if ((%actor.name% != ������) && (%actor.name% != ��������) && (%actor.name% != �����) && (%actor.name% != �������))
  otransform 3785
  osend %actor% �� ���������� ������� ����� &W����&n, �� �� ��� �������� ������ &R����������� &K����&n � �� � ����� �����������.
  return 0
  halt
else
  switch %random.3%
    case 1
      oecho ��������� &r��������&n ������ ��������� � &R���&r��&R���&r��&R���&n &W���� &K��������&n.
    break
    case 2
      oecho �� &R���&r��&R���&r��&R��� &W���� &K��������&n �������� ��������� &r�������&n ����.
    break
    case 3
      oecho �� &R���&r��&R���&r��&R��� &W���� &K��������&n ���������� ���� ������� &K����&n.
    break
  done
end
~
#3786
������� ����� - ������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if ((%actor.name% != ������) &&& (%actor.name% != ������) && (%actor.name% != �����))
  otransform 3786
  osend %actor% &R������&n ���������, ����������� � ��������� - " �� ����� ����, ��������! ��� ������ ��a����� ��������! "
  return 0
  halt
end
~
#3787
������� ����� - �������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if ((%actor.name% != �������) && (%actor.name% != �����) && (%actor.name% != �����))
  otransform 3787
  osend %actor% �� ��������� � ��� ��������� &R�������&n, ������� �� ��������� ��� ����� ����� ����.
  return 0
  halt
end
~
#3788
������� ����� - ��������~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if ((%actor.name% != ��������) && (%actor.name% != ������) && (%actor.name% != �������) && (%actor.name% != ����) && (%actor.name% != �������) && (%actor.name% != �������) && (%actor.name% != �����))
  otransform 3788
  oecho �� ������� ���������� ����, ��������� � ����, � ��� �� ���������� �������.
  return 0
  halt
end
~
#3789
������� ����� - �����~
1 gjp 100
~
if ((%actor.level% > 30) && (%actor.vnum% == -1))
  halt
end
if ((%actor.name% != �����) && (%actor.name% != �������) && (%actor.name% != �������) && (%actor.name% != ��������) && (%actor.name% != �������) && (%actor.name% != �������) && (%actor.name% != ��������))
  otransform 3789
  &W���&K�� �&W���&K��� &c���&C���&c�� �&C���&n �������� ��� ����� ������� � �� ��������� ����.
  return 0
  halt
else
  switch %random.3%
    case 1
      oecho %actor.name% ������ &W�����&n � ����� ������� �� �� �������, �� �������������, ��� ��� ������ ��������, ��������� ���� ����, �������� �������������� � �� ����������� ��������.
    break
    case 2
      oecho &W�����&n &R���������&n � ����� ���� ������� ����������� ��������: ��� �������� ����, ��� ��������� ���� ������� �� ����� ������� � �� ������ ��������� ������� ���� ��� ����� ���� ������ ������.
    break
    case 3
      oecho ���������� &W�����&n ������������ � �������� ��� &C����&n, �� ������� %actor.name% ���� ������� ���������� � ����, �������� ������� �� ������������� �� ����������.
    break
  done
end
~
#3790
������� ����� - ������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != ������ ) && (%actor.name% != ���� ) && (%actor.name% != ����� ) && (%actor.name% != �����))
  otransform 3790
  osend %actor% �� &R���&n ������, �� &R���&n � ���� � &Y�����&n!
  return 0
  halt
else
  wait 1
  oecho &c��&C���&c��&n �� ������� ������ ����� &R��&Y��&M��&R��&Y��&M�� &R��&Y��&M��&n, � � ������� �������� &G�������&n ����� &R�������&n.
end
~
#3791
������� ���� ������~
1 gj 100
~
wait 2s
oecho � &K������� &K���&r��� &R��&r���&K���&n ��������� &R��&r��&R� �&r��&R��&n - &c��&C��&c� �&C��&c��&C��&c�.&n
~
#3792
������� ���� - ������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != ������ )
  otransform 3792
  osend %actor% &Y���������� &B�� ����� &R����&n �������� � �������.
  return 0
  halt
else
  wait 1
  oecho �� &Y����������� &B�� ����� &R����&n ����������� �������� ������.
end
~
#3793
������� ���� - �����~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != ������� ) && (%actor.name% != ������ ) && (%actor.name% != ����� ) && (%actor.name% != ����� ))
  otransform 3793
  osend %actor% &K����&n �����������, �� ���� ������� ������� &R������� ����&n � ������� ��� �� ����... "����� �� ������ ���� � &W�������������� ��������&n" - �������� ��.
  return 0
  halt
else
  wait 1
  oecho &R������������ �����&n &Y���������&n � �������� ��������� ������� &K�� ����&n.
end
~
#3794
������� ����� - ������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != ������� ) && (%actor.name% != ������ ) && (%actor.name% != ���� ) && (%actor.name% != �����) && (%actor.name% != ������))
  otransform 3794
  osend %actor% &W��&n��&K�� &n��&W��&n, �������� �� &R�����&n, ���� ���� �� ������� ��� &G�������&n, � �� ����� ������� �� &K������&n.
  return 0
  halt
end
~
#3795
������� ����� - ������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != ������ ) && (%actor.name% != ������� ))
  otransform 3795
  osend %actor% &r�� ����� ����� �����, ����� ��� ���-�� �����������!&n
  return 0
  halt
else
  wait 1
  oecho �� &G��&g��&G� �&g�� &G��&g�&G��&n ���������� &K�������� ������&n.
end
~
#3796
������� ���� - ������~
1 gjp 100
~
if (%actor.level% > 30 ) && (%actor.vnum% == -1 )
  halt
end
if ((%actor.name% != ������ ) && (%actor.name% != ����� ) && (%actor.name% != ������ ) && (%actor.name% != ����� ) && (%actor.name% != ������ ) && (%actor.name% != ����� ) && (%actor.name% != ����� ) && (%actor.name% != ������ ))
  otransform 3796
  osend %actor% �� ����������� ������� &b����&K-&r���������� &b�����&n, �� ��� ��������� ��� �� ��� ����.
  return 0
  halt
else
  wait 1
  osend %actor% �� ������ �������� ��� ������ � &b����&K-&r���������� &b�����.&n.
  oechoaround %actor% %actor.iname% �����%actor.g% �������� ��� ������ � &b����&K-&r���������� &b�����&n.
end
~
#3797
����-������� #2~
1 b 5
~
*&R�������: ���������� ����� ��� ������ ������ � �������&n
eval objname %self.name%
eval owner %self.carried_by%
if !%owner%
  halt
end
switch %self.vnum%
  case 3739
    if (%owner.name% != �����)
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3741
    if ((%owner.name% != ������) && (%owner.name% != ������))
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3744
    if ((%owner.name% != ����) && (%owner.name% != ����) && (%owner.name% != ����) && (%owner.name% != ������))
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3745
    if (%owner.name% != ������)
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3746
    if ((%owner.name% != ��������) && (%owner.name% != ������) && (%owner.name% != ����) && (%owner.name% != ��������))
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3747
    if ((%owner.name% != ��������) && ((%owner.name% != �����) && (%owner.name% != ������) && (%owner.name% != �����) && (%owner.name% != ������))
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3748
    if (%owner.name% != ������) && (%owner.name% != �������)
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3749
    if ((%owner.name% != ������) && (%owner.clan% != ���))
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3750
    if (%owner.name% != �����)
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3752
    if ((%owner.name% != �����) && (%owner.name% != ������) && (%owner.name% != ������) && (%owner.name% != ������))
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3753
    if ((%owner.name% != �������) && (%owner.name% != �����) && (%owner.name% != �������))
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3754
    if ((%owner.name% != �����) && (%owner.name% != ������) && (%owner.name% != ������) && (%owner.name% != ������) && (%owner.name% != �����))
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3755
    if ((%owner.name% != ������) && (%owner.name% != ������) && (%owner.name% != ����))
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3756
    if ((%owner.name% != ������) && (%owner.name% != ������))
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3757
    if ((%owner.name% != ������) && (%owner.name% != �����) && (%owner.name% != ������) && (%owner.name% != ����������) && (%owner.name% != �����) && (%owner.name% != �������) && (%owner.name% != ��������))
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3758
    if ((%owner.name% != �������) && (%owner.name% != �����) && (%owner.name% != �����) && (%owner.name% != ��������) && (%owner.name% != ������) && (%owner.name% !
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3763
    if %owner.name% != ������� && %owner.name% != ����� && %owner.name% != ����� && %owner.name% != ������
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3764
    if ((%owner.name% != ������) && (%owner.name% != �����) && (%owner.name% != ������) && (%owner.name% != ������))
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3767
    if ((%owner.name% != ����� && %owner.name% != ������ && %owner.name% != ��������))
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3774
    if ((%owner.name% != �������) && (%owner.name% != �������) && (%owner.name% != �������))
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3780
    if ((%owner.name% != ������) && (%owner.name% != ����������) && (%owner.name% != ������) && (%owner.name% != ���������) && (%owner.clan% != ��))
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
done
~
#3798
������ �������� �����~
0 q 100
~
return 1
wait 1
if ((%actor.name% == ������) || (%actor.name% == �����))
  if (%world.curobjs(3700)% == 0)
    say �����, �����, �������!
    ����
    mload obj 3700
    ���� ��� .%actor.name%
    ����� .������
  end
elseif %actor.name% == ������
  if (%world.curobjs(3701)% == 0)
    say ���, %actor.name%! ��� ���� ����, �� �������.
    mload obj 3701
    ���� ���� .%actor.name%
  end
elseif %actor.name% == ��������
  if (%world.curobjs(3702)% == 0)
    say �, ��������... ��� ���� ����, �������, � �� ����������� �������� ������� ����������.
    mload obj 3702
    ���� ���� .%actor.name%
  end
elseif %actor.name% == �����
  if (%world.curobjs(3703)% == 0)
    emote �����
    say � ��� �� %actor.name%, ��� ����� ���� �����!
    mload obj 3703
    ���� ����� .%actor.name%
  end
elseif %actor.name% == ����
  if (%world.curobjs(3704)% == 0)
    ���
    mload obj 3704
    ���� ����� .%actor.name%
    ���� .�����
  end
elseif ((%actor.name% == �����) || (%actor.name% == ������))
  if (%world.curobjs(3705)% == 0)
    ������ .�����
    emot ������ ������ ������� � ����� �� ���������
    mload obj 3705
    ���� ������� .%actor.name%
  end
elseif ((%actor.name% == ��������) || (%actor.name% == ������))
  if (%world.curobjs(3706)% == 0)
    say �, %actor.name% �������������! ������� ���� �����, ��� ��� ��� ����� ������� ���������� � ������� �������.
    mload obj 3706
    ���� ��� .%actor.name%
  end
elseif %actor.name% == ��������
  if (%world.curobjs(3707)% == 0)
    ���
    emot ������������ ��������� ���
    mload obj 3707
    ���� ���� .%actor.name%
  end
elseif %actor.name% == ������
  if (%world.curobjs(3708)% == 0)
    mload obj 3708
    ���� ������� .%actor.name%
  end
elseif %actor.name% == ������
  if (%world.curobjs(3709)% == 0)
    mload obj 3709
    ������
    ���� ��� .%actor.name%
  end
elseif %actor.name% == ������� || %actor.name% == ������ || %actor.name% == �����
  if (%world.curobjs(3710)% == 0)
    mload obj 3710
    ����
    ���� ��� .%actor.name%
  end
elseif %actor.name% == ������
  if (%world.curobjs(3711)% == 0)
    mload obj 3711
    ���� ��� .%actor.name%
  end
elseif %actor.name% == ������
  if (%world.curobjs(3712)% == 0)
    mload obj 3712
    ���� ��� .%actor.name%
    emot ����� ���� ��������
  end
elseif ((%actor.name% == �������) || (%actor.name% == �����) || (%actor.name% == �����) || (%actor.name% == ����))
  if (%world.curobjs(3713)% == 0)
    mload obj 3713
    ���� ����� .%actor.name%
    ��� .%actor.name%
  end
elseif %actor.name% == �����
  if (%world.curobjs(3714)% == 0)
    mload obj 3714
    ���� ��� .%actor.name%
  end
elseif %actor.name% == ��������
  if (%world.curobjs(3715)% == 0)
    mload obj 3715
    ���� ���� .%actor.name%
  end
elseif %actor.name% == ��������
  if (%world.curobjs(3718)% == 0)
    mload obj 3718
    ���� ��� .%actor.name%
  end
elseif %actor.name% == ������ || %actor.name% == ������ || %actor.name% == �����
  if (%world.curobjs(3719)% == 0)
    mload obj 3719
    ���� ������ .%actor.name%
  end
elseif %actor.name% == ������
  if (%world.curobjs(3720)% == 0)
    mload obj 3720
    ���� ������ .%actor.name%
  end
elseif %actor.name% == ��������
  if (%world.curobjs(3721)% == 0)
    mload obj 3721
    ���� ����� .%actor.name%
  end
elseif %actor.name% == ����
  if (%world.curobjs(3722)% == 0)
    mload obj 3722
    ���� ������ .%actor.name%
  end
elseif %actor.name% == ��������
  if (%world.curobjs(3723)% == 0)
    mload obj 3723
    ���� ������ .%actor.name%
  end
elseif %actor.name% == ����
  if (%world.curobjs(3724)% == 0)
    mload obj 3724
    ���� ����� .%actor.name%
  end
elseif ((%actor.name% == ����) || (%actor.name% == ������))
  if (%world.curobjs(3725)% == 0)
    mload obj 3725
    ���� ����� .%actor.name%
  end
elseif %actor.name% == ������
  if (%world.curobjs(3726)% == 0)
    mload obj 3726
    ���� ���� .%actor.name%
  end
elseif %actor.name% == �����
  if (%world.curobjs(3727)% == 0)
    mload obj 3727
    ���� ��� .%actor.name%
  end
elseif %actor.name% == ������
  if (%world.curobjs(3728)% == 0)
    mload obj 3728
    ���� ���� .%actor.name%
  end
elseif ((%actor.name% == �����) || (%actor.name% == �����) || (%actor.name% == �����))
  if (%world.curobjs(3729)% == 0)
    mload obj 3729
    ���� ��� .%actor.name%
    halt
  end
elseif %actor.name% == �����
  if (%world.curobjs(3730)% == 0)
    mload obj 3730
    ���� ���� .%actor.name%
  end
elseif %actor.name% == ������
  if (%world.curobjs(3736)% == 0)
    mload obj 3736
    ���� ��� .%actor.name%
  end
elseif %actor.name% == �����
  if (%world.curobjs(3739)% == 0)
    mload obj 3739
    ���� ������ .%actor.name%
  end
elseif ((%actor.name% == ����) || (%actor.name% == ����) || (%actor.name% == ����) || (%actor.name% == ������))
  if (%world.curobjs(3744)% == 0)
    mload obj 3744
    ���� ����� .%actor.name%
    ��� .%actor.name%
  end
elseif %actor.name% == ������
  if (%world.curobjs(3741)% == 0)
    mload obj 3741
    ���� ����� .%actor.name%
    halt
  end
elseif %actor.name% == ������
  if (%world.curobjs(3745)% == 0)
    mload obj 3745
    ���� ����� .%actor.name%
    halt
  end
elseif ((%actor.name% == ��������) || (%actor.name% == ����) || (%actor.name% == ������) || (%actor.name% == ��������))
  if (%world.curobjs(3746)% == 0)
    mload obj 3746
    ���� ����� .%actor.name%
    halt
  end
elseif ((%actor.name% == ��������) || (%actor.name% == �����) || (%actor.name% == ������) || (%actor.name% == ������))
  if (%world.curobjs(3747)% == 0)
    mload obj 3747
    ���� ����� .%actor.name%
    halt
  end
elseif %actor.name% == ������ && %actor.name% == �������
  if (%world.curobjs(3748)% == 0)
    mload obj 3748
    ���� �������� .%actor.name%
  end
elseif %actor.name% == ������
  if (%world.curobjs(3749)% == 0)
    mload obj 3749
    ���� ���� .%actor.name%
  end
elseif %actor.name% == �����
  if (%world.curobjs(3750)% == 0)
    mload obj 3750
    ���� ����� .%actor.name%
  end
elseif ((%actor.name% == �����) || (%actor.name% == ������) || (%actor.name% == ������) || (%actor.name% == ������))
  if (%world.curobjs(3752)% == 0)
    say ������ ������.
    mload obj 3752
    ���� ������ .%actor.name%
  end
elseif ((%actor.name% == �������) || (%actor.name% == �����) || (%actor.name% == �������))
  if (%world.curobjs(3753)% == 0)
    ���
    mload obj 3753
    ���� ����� .%actor.name%
  end
end
~
#3799
����-�������~
1 b 5
~
eval objname %self.name%
eval owner %self.carried_by%
if !%owner%
  halt
end
switch %self.vnum%
  case 3700
    if ((%owner.name% != ������) && (%owner.name% != �����) && (%owner.name% != ������))
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3701
    if %owner.name% != ������
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3702
    if %owner.name% != ��������
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3703
    if %owner.name% != �����
      wait 1
      oforce %owner% ������� %objname.car%.%objname.cdr%
      halt
    end
  break
  case 3704
    ________if %owner.name% != ����
    oforce %owner% ������� %objname.car%.%objname.cdr%
    halt
  end
break
case 3705
  if ((%owner.name% != �����) && (%owner.name% != ������))
    oforce %owner% ������� %objname.car%.%objname.cdr%
    halt
  end
break
case 3706
  if ((%owner.name% != ��������) && (%owner.name% != ������) && (%owner.name% != �������))
    oforce %owner% ������� %objname.car%.%objname.cdr%
    halt
  end
break
case 3707
  if %owner.name% != ��������
    oforce %owner% ������� %objname.car%.%objname.cdr%
    halt
  end
break
case 3708
  if %owner.name% != ������
    oforce %owner% ������� %objname.car%.%objname.cdr%
    halt
  end
break
case 3709
  if %owner.name% != ������
    oforce %owner% ������� %objname.car%.%objname.cdr%
    halt
  end
break
case 3710
  if %owner.name% != ������� && %owner.name% != ������ && %owner.name% =! �����
    oforce %owner% ������� %objname.car%.%objname.cdr%
    halt
  end
break
case 3711
  if ((%owner.name% != ������) && (%actor.clan% != ��))
    oforce %owner% ������� %objname.car%.%objname.cdr%
    halt
  end
break
case 3712
  if %owner.name% != ������
    oforce %owner% ������� %objname.car%.%objname.cdr%
    halt
  end
break
case 3713
  if ((%owner.name% != �������) && (%owner.name% != �����) && (%owner.name% != �����) && (%owner.name% != ����))
    oforce %owner% ������� %objname.car%.%objname.cdr%
    halt
  end
break
case 3714
  if ((%owner.name% != �����) && (%owner.name% != ����) && (%owner.name% != �����) && (%owner.name% != ����))
    oforce %owner% ������� %objname.car%.%objname.cdr%
  end
  halt
break
case 3715
  if %owner.name% != ��������
    oforce %owner% ������� %objname.car%.%objname.cdr%
  end
  halt
break
case 3716
  if ((%owner.name% != ������) && (%owner.name% != �������) && (%owner.name% != ��������))
    oforce %owner% ������� %objname.car%.%objname.cdr%
  end
  halt
break
case 3717
  if %owner.name% != ������
    oforce %owner% ������� %objname.car%.%objname.cdr%
  end
  halt
break
case 3718
  if %owner.name% != ��������
    oforce %owner% ������� %objname.car%.%objname.cdr%
  end
  halt
break
case 3719
  if %owner.name% != ������ && %owner.name% != ������ && %owner.name% != �����
    oforce %owner% ������� %objname.car%.%objname.cdr%
  end
  halt
break
case 3720
  if ((%owner.name% != ������) && (%owner.clan% != ��) && (%owner.clan% != ��) && (%owner.clan% != ��))
    oforce %owner% ������� %objname.car%.%objname.cdr%
  end
  halt
break
case 3721
  if %owner.name% != ��������
    oforce %owner% ������� %objname.car%.%objname.cdr%
  end
  halt
break
case 3722
  if %owner.name% != ����
    oforce %owner% ������� %objname.car%.%objname.cdr%
  end
  halt
break
case 3723
  if ((%owner.name% != ��������) && (%owner.name% != �������) && (%owner.name% != �����) && (%owner.clan% != ���))
    oforce %owner% ������� %objname.car%.%objname.cdr%
  end
  halt
break
case 3724
  if %owner.name% != ����
    oforce %owner% ������� %objname.car%.%objname.cdr%
  end
  halt
break
case 3725
  if ((%owner.name% != ����) && (%owner.name% != ������) && (%actor.clan% != ���))
    oforce %owner% ������� %objname.car%.%objname.cdr%
  end
  halt
break
case 3726
  if ((%owner.name% != ������) && (%owner.name% != ������) && (%actor.clan% != ��))
    wait 1
    oforce %owner% ������� %objname.car%.%objname.cdr%
  end
  halt
break
case 3727
  if (%owner.name% != �����) && (%owner.name% != ������)
    oforce %owner% ������� %objname.car%.%objname.cdr%
  end
  halt
break
case 3728
  if (%owner.name% != ������)
    oforce %owner% ������� %objname.car%.%objname.cdr%
  end
  halt
break
case 3729
  if ((%owner.name% != �����) && (%owner.name% != �����) && (%owner.name% != �����))
    oforce %owner% ������� %objname.car%.%objname.cdr%
  end
  halt
break
case 3730
  if %owner.name% != �����
    oforce %owner% ������� %objname.car%.%objname.cdr%
  end
  halt
break
case 3736
  if ((%owner.name% != ������) && (%owner.name% != ������))
    oforce %owner% ������� %objname.car%.%objname.cdr%
    otransform 3736
  end
  halt
break
done
~
$~
