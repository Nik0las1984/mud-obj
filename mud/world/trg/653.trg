#65300
��������������~
0 r 100
~
wait 1
�����
wait 1
say ������ ����, %actor.name%
say ��� ������ � ���� ������������! ������ � ������ ���������.
���  
end   
detach 65300 %self.id%
~
#65301
���� ������ �������~
0 j 100
~
wait 1
if ( %object.vnum% != 65400 )
  say �� ��, ���?! �����������!?
  emot ������ ����������
  drop %object.name%
  halt
end
wait 1
mpurge %object%
wait 2s
say �, ��� ��� - ��! ��� ��� �������!
say ��� �, ���� � ����� ����������. 
mechoaround %actor%  ������ ���� �������� ����������� %actor.rname%.
if (%actor.level% > 23) && (%actor.level% < 27)
  msend %actor%  ������ ��� ������ ���� ��� �����������, ��� ��� �������� ��� 5000 ����� �����.
  %actor.exp(+5000)%
else
  msend %actor% ������ ���� ��� ������ �����������, �� ������ "��������" ��� �� ������! 
  if %world.curobjs(65301)% < 12
    mload obj 65301
    ���� ����� %actor.name%
  end
end
wait 1
if (%random.100% <= 2)
  mload obj 103
  say ��, ��� � �������� ������ �� ���� ������!
  say � � ����� ��� ��� ������ ������...
  wait 10
  say ��� �� �� ��� � ����� ����� ����, �� ���...
  wait 10
  say ����� �� ������������ ����� ������� �� ������, ������� ������...
  ���� ��� %actor.name%
end
mecho ������ �������� ������������� ���� ������.
mload mob 65302
wait 1
mpurge %self%
~
$~
