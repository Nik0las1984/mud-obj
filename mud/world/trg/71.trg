#7100
� ������� �����������~
0 q 100
~
say  � �� ��� ����� ������? 
say � �� ����� ���� 5 ���, � �� �� ������ �� ����!
emot ������ �������� ����� �� ���
wait 1
~
#7102
���� 5 ��� �����������~
0 m 1
~
if (%amount% < 5)
  say ������� ��, ���� ��� ������!
  say ������ �������, ��� ������ �� �������.
  ���
  ���� %amount% ��� %actor.name%
  halt
end
say �� �����, �������, ��� ��...
run 7103 %self.id%
~
#7103
�������� ����������� ~
0 b 5
~
�����
mecho _������ ����������� ����� ������� �����.
�����
%self.wait(70)%
wait 7s
�����
������
~
#7104
������ � ����������~
0 q 40
~
msend %actor% _���������� ������� ��� � ����� � ���� ��������.
mechoaround %actor% _���������� ������� %actor.vname% � ����� � ��� ��������.
mkill %actor%
~
#7105
������ � ��������~
0 q 70
~
say � �� ����� ��� ������? 
say ��� ���� ��� ��������, ������ ���������!
���
~
#7106
� �������~
0 b 2
~
����� ��-��
wait 2
����� ��-��
~
#7107
������� ����������� (���� �� ������)~
0 n 100
~
wait 9s
�
wait 10s
� 
wait 9s
� 
wait 6s
�
wait 11s
�
wait 6s
�
wait 12s
�
wait 8s
�
wait 7s
�
wait 14s
�
wait 9s
�
wait 7s
�
wait 12s
�
wait 6s
�
wait 8s
�
wait 12s
�
wait 6s
�
wait 8s
�
wait 11s
�
wait 8s
�
wait 9s
�
wait 10s
�
wait 6s
�
wait 9s
�
wait 11s
�
wait 8s
�
wait 5s
�
wait 6s
�����
attach 7109 %self.id%
detach 7107 %self.id%
~
#7108
������ �� �����������~
0 l 100
~
����� ������! �������!!!
attach 7109 %self.id%
detach 7107 %self.id%
detach 7108 %self.id%
~
#7109
���������� ������ �� ����~
0 b 100
~
eval direction %random.4%
if (%direction% == 1)
  north
elseif (%direction% == 2)
  east
elseif (%direction% == 3)
  south
elseif (%direction% == 4)
  west
end
~
$~
