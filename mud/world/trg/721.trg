#72100
����� � ���������~
0 q 100
~
wait 1
����
emot ������� ��� � ��� �� ������  � ���-�� ��������� ��� ���
say ���� ��� �� ��� ����� - ������� 70 ���. 
say �� ����, ������ � ��������.
~
#72101
���� 70 ��� ���������~
0 m 1
~
wait 1
if %amount% < 70 
say �������� �����!
give %amount% ��� .%actor.name%
halt
end
wait 2
���
say �� - ��������� �� �����.
foreach target %self.pc%
msend %target% �� ��������� �� �����.
msend %target% ��������������� � ��������, �������� ������ � ���������� �������� ������ �����.
mteleport %target% 72105 horse
done
mechoaround %target% ������ ����������� ����� �������� � ������.
~
$~
