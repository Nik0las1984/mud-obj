* BRusMUD trigger file v1.0
#35600
~
0 h0 0
~
if !(%exist.mob(35623)%)
   halt
end
wait 1
msend %actor% - �����������, ���� ������!
msend %actor% - ����� ��� ������� ���� ���� � ������.
msend %actor% - � ��� �� ����, �������. �� ���� ������ �� ������ ���� � �����
msend %actor% - ����� �������� ������. ���� ���� ������ ������ ������ �����. 
attach 35601 %self.id%
end













~
#35601
~
0 0 0
~













~
$
$
