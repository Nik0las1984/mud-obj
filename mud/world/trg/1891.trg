* BRusMUD trigger file v1.0
#189100
����� ����~
2 f0 100
~
calcuid m189124 189124 mob
attach 189101 %m189124.id%
attach 189102 %m189124.id%


~
#189101
������ � ����~
0 r0 100
~
context 1892
wait 2s
�� ������ ������
if (%actor.name%==%quest1892.name%)
  ����������� ��������� �� %actor.vname%
  � ������...
  halt
end  
�� ����������


~
#189102
������ ���~
0 d0 0
��� ���� �������~
context 1892
if (%actor.name%!=%quest1892.name%)
  %send% %actor%  ���� �� ����������!
  halt
end 
if !%speech.contains(���)%
  � ������ �� �������� ���� ������� ������������?
  halt
end
wait 1s
� ���, � �������� ����� �����?
���
� �� �����, �����...
%load% obj 189105
���� �������� .%actor.name%
detach 189102 %self.id%


~
$
$
