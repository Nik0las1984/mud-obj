#71900
���� � ����� �������~
0 r 100
*~
wait 10
���
� ������ ���� %actor.iname%.
wait 20
� ���� ����� ��, �� �����.
� �� ������ ������� �������, ������ � ������������ ��������� ����������.
� ������� ����� ����� ������� ������ ���� ����� � ��������� �������� �
� ����� ���� ������ ��������, �� �������� ��� �������.
� ����� �� ��� ������, � � � ���� ������� ����������� ���� ��� �����.
detach 71900 %self.id%
~
#71901
���� ������ ���� �������~
0 j 100
*~
switch %object.vnum%
  case 71901
    wait 10
    mpurge %object%
    � �������, ���������� ����, �� ����� ���, � � ������� ���� �� ���.
    ���
    ��
    wait 20
    switch %random.80%
    break
    case 1
      mecho _���� ������ ���� � ���� ���� � �������� ��� ���.
      wait 20
      mload obj 71910
      ���� ���� %actor.iname%
      � ��� ���������� ��� � ���� ���-����, ��, �������.
    break
    case 2
      mecho _���� ������ ���� � ���� �������� � �������� �� ���.
      wait 20
      mload obj 71907
      ���� �������� %actor.iname%
      � ��� ���������� ��� � ���� ���-����, ��, �������.
    break
    case 3
      mecho _���� ������ ������ ������ � �������� �� ���.
      wait 20
      mload obj 71908
      ���� ������ %actor.iname%
      � ��� ���������� ��� � ���� ���-����, ��, �������.
    break
    case 4
      mecho _���� ������ ������ ������ � �������� �� ���.
      wait 20
      mload obj 71906
      ���� ������ %actor.iname%
      � ��� ���������� ��� � ���� ���-����, ��, �������.
    break
    case 5
      mecho _���� ������ ������ ������ � �������� �� ���.
      wait 20
      mload obj 71905
      ���� ������ %actor.iname%
      � ��� ���������� ��� � ���� ���-����, ��, �������.
    break
    case 6
      mecho _���� ������ ���� ������ � �������� �� ���.
      wait 20
      mload obj 71911
      ���� ������ %actor.iname%
      � ��� ���������� ��� � ���� ���-����, ��, �������.
    break
    case 7
      mecho _���� ������ ���� ���� � �������� ��� ���.
      wait 1s
      mload obj 71909
      ���� ���� %actor.iname%
      � ��� ���������� ��� � ���� ���-����, ��, �������.
    break
    case 8
      mecho _���� ������ ������ ������� � �������� �� ���.
      wait 20
      mload obj 71912
      ���� ������� %actor.iname%
      � ��� ���������� ��� � ���� ���-����, ��, �������.
    break
    default 
      wait 20
      mload obj 71914
      ���� ��������� %actor.iname%
      � ��� ������, ��� ���� ����������!. 
    break 
  done
  default
    ���
    ���� %object.name%
  break
done   
~
#71902
�������� �������~
0 n 100
*~
if (%world.curobjs(71900)% < 6) && (%random.1000% <= 150)
  mload obj 71900
end
~
#71903
����� ����~
0 f 100
*~
if (%world.curobjs(71913)% < 6) && (%random.1000% <= 30)
  mload obj 71913
end
~
#71904
������� ����~
0 f 100
*~
mload obj 71901
end
~
$~
