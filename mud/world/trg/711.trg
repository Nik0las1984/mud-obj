#71100
���������~
0 q 100
~
if (%actor.clan%==���)
�������� .%actor.name%
say ����! ����! ����! ������ ���� ��������� ���������� ������!
endif
if (%actor.clan%==��)
�������� .%actor.name%
say ����! ����! ����! ������ ���� ������� �����!
endif
~
#71101
������������-������-���������~
2 f 0
~
wload obj 71101
//�������� ���������.
~
#71102
�������-���������~
2 c 0
������� ������ ���������~
wait 1
if !%arg.contains(���������)%
wsend %actor% ���� ������?
halt
end
eval fullstr %actor.str%+%actor.stradd%
if %fullstr% < 24
wsend %actor% ��� �� ������ ������� ������� ��� ������ ����������
halt
end
detach 71101 %self.id%
wait 1
wpurge arrow711
wsend %actor% �� �������� ��������� � ������ ������ ��� ��������, ���� ��� � ������� �� ���������.
wechoaround %actor% %actor.name% �������%actor.g% ��������� � ����� ������, ������%actor.g% ���.
eval fulldex %actor.dex%+%actor.dexadd%
if %fulldex% < 20
wsend %actor% ...�� �� �� ������ ���������� � �� ������ ����� �� ���!
wechoaround %actor% ...�� ����������� ��-��� ��������� ��������� %actor.name% �� �����%actor.g%.
wdamage %actor% 150
end
wload obj 71102
detach 71102 %self.id%
~
$~
