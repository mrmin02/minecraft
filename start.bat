@echo off
title ����ũ����Ʈ 1.18.1 Craft ��Ŷ
:main
set mc_file_path=C:\Users\minseok\Desktop\server123
cls
echo �Ȧ�������������������������������������������������������������
echo ��
echo �� ��� : %path%
echo ��
echo ��     ����ũ����Ʈ 1.18.1 Craft ��Ŷ
echo �� 
echo ��   1. ���� �����ϱ�
echo �� 
echo ��   2. ���� �߻� �� �ذ���
echo ��
echo ��   3. IP Ȯ���ϱ�
echo ��
echo ��   4. ������ ���� �����
echo ��
echo ��   5. ��Ŷ ���� 
echo ��
echo �� 
echo �Ʀ�������������������������������������������������������������


set/p a=��ȣ�� ���� �� Enter :
if %a%==1 goto a
if %a%==2 goto b
if %a%==3 goto c
if %a%==4 goto z
if %a%==5 goto d

:a
cls
echo �Ȧ�������������������������������������������������������������
echo ��
echo ��     ����ũ����Ʈ 1.18.1 Craft ��Ŷ
echo �� 
echo ��   1. ���� �����ϱ� - 1GB
echo �� 
echo ��   2. ���� �����ϱ� - 2GB (����)
echo ��
echo ��   3. ���� �����ϱ� - 4GB
echo ��
echo ��   4. ���� �����ϱ� - 8GB
echo ��
echo ��   5. ���� �����ϱ� - 16GB
echo ��
echo �� 
echo �Ʀ�������������������������������������������������������������

set/p a=��ȣ�� ���� �� Enter :

if %a%==1 goto aa
if %a%==2 goto bb
if %a%==3 goto cc
if %a%==4 goto dd
if %a%==5 goto ddd

:aa
cls
echo �Ȧ�������������������������������������������������������������
echo ��
echo ��      �׵����� ����ũ����Ʈ ���������� �̿����ּż� �����մϴ�
echo ��
echo ��      �׵����� �����Ⱑ ������ �̿��� ���ϸ� �ڵ�����
echo ��      Ž���ϰ� �ֽ��ϴ�. ��ø� ��ٷ��ּ��� 
echo ��
echo �� * ������� : ��������� stop�Դϴ�!!
echo ��
echo �Ʀ�������������������������������������������������������������
cd %mc_file_path%
java -Xms1G -Xmx1G -jar craftbukkit-1.18.1.jar
pause

cls
goto main

:bb
cls
echo �Ȧ�������������������������������������������������������������
echo ��
echo ��      �׵����� ����ũ����Ʈ ���������� �̿����ּż� �����մϴ�
echo ��
echo ��      �׵����� �����Ⱑ ������ �̿��� ���ϸ� �ڵ�����
echo ��      Ž���ϰ� �ֽ��ϴ�. ��ø� ��ٷ��ּ��� 
echo ��
echo �� * ������� : ��������� stop�Դϴ�!!
echo ��
echo �Ʀ�������������������������������������������������������������
cd %mc_file_path%
java -Xms1G -Xmx2G -jar craftbukkit-1.18.1.jar
pause

cls
goto main

:cc
cls
echo �Ȧ�������������������������������������������������������������
echo ��
echo ��      �׵����� ����ũ����Ʈ ���������� �̿����ּż� �����մϴ�
echo ��
echo ��      �׵����� �����Ⱑ ������ �̿��� ���ϸ� �ڵ�����
echo ��      Ž���ϰ� �ֽ��ϴ�. ��ø� ��ٷ��ּ��� 
echo ��
echo �� * ������� : ��������� stop�Դϴ�!!
echo ��
echo �Ʀ�������������������������������������������������������������
cd %mc_file_path%
java -Xms1G -Xmx4G -jar craftbukkit-1.18.1.jar
pause

cls
goto main

:dd
cls
echo �Ȧ�������������������������������������������������������������
echo ��
echo ��      �׵����� ����ũ����Ʈ ���������� �̿����ּż� �����մϴ�
echo ��
echo ��      �׵����� �����Ⱑ ������ �̿��� ���ϸ� �ڵ�����
echo ��      Ž���ϰ� �ֽ��ϴ�. ��ø� ��ٷ��ּ��� 
echo ��
echo �� * ������� : ��������� stop�Դϴ�!!
echo ��
echo �Ʀ�������������������������������������������������������������
cd %mc_file_path%
java -Xms2G -Xmx8G -jar craftbukkit-1.18.1.jar
pause

:ddd
cls
echo �Ȧ�������������������������������������������������������������
echo ��
echo ��      �׵����� ����ũ����Ʈ ���������� �̿����ּż� �����մϴ�
echo ��
echo ��      �׵����� �����Ⱑ ������ �̿��� ���ϸ� �ڵ�����
echo ��      Ž���ϰ� �ֽ��ϴ�. ��ø� ��ٷ��ּ��� 
echo ��
echo �� * ������� : ��������� stop�Դϴ�!!
echo ��
echo �Ʀ�������������������������������������������������������������
cd %mc_file_path%
java -Xms4G -Xmx16G -jar craftbukkit-1.18.1.jar
pause

cls
goto main

:b
cls
goto main

:c
cls
goto main

:z
cls
goto main

:d
exit