#31800
�����������~
0 q 100
~
msend %actor% ������ ����.
msend %actor% �� ����� �� ��������� - ����� ��� ������ ����������
msend %actor% ������ � �������. �� ����, ��������� �� ����� ���
msend %actor% �������� � ���������. ��� ������ ���� ������ � ��
msend %actor% ��������. ���� ��������� ����� �� ���������,
msend %actor% �� ��������� ���.
msend %actor% ������ � ��������� �� ��������� �� �������� � �����������
msend %actor% �����, ���� ������������ �������� � ���, �� ��������
msend %actor% ����������� �� ������ � �����.
~
#31801
�� ���� �������� �������~
0 b 20
*~
foreach victim %self.pc%
  mforce %victim% �����
  mforce %victim% stand
  if (%self.realroom% == 31800)
    mforce %victim% north
  else
    mforce %victim% south
  end
  msend %victim% �������� ������� ���� �������� ��� �����.
  %victim.wait(3)%
done
~
$~
