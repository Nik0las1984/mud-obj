#13600
����� �� �����~
2 c 1
����� ���������� �����������~
wait 1
if %arg.contains(����)%
  wsend %actor% �� ������ ����������� �� �����.
  wechoaround %actor% ~~%actor.iname% �����~~%actor.q% ����������� �� �����.
  wteleport %actor% 13670
  wechoaround %actor% %actor.name% ���� � ��������� ����%actor.g% ����.
else
  wsend %actor% ���� ������?
end
~
#13601
ZoneReset~
2 f 100
~
attach 13600 %self%
~
$~
