@echo off

Rem @��Ҫ��װpython3
echo "==> ��ʼ��⻷������..."
echo "==> ���� python3 ����"
py -3 --version
set "err=%errorlevel%"
if "%err%" == "0" goto install
if "%err%" == "1" goto install_Python
:install_Python
  echo "[ERROR] δ��⵽python3 �����ذ�װ https://www.python.org/ftp/python/3.7.3/python-3.7.3-amd64.exe"
  echo ">>> ׼���˳�......"
  Pause
  exit

:error
  echo "[ERROR] ��װʧ��"
  echo ">>> ׼���˳�......"
  Pause
  exit

Rem @˳��װ�¼ǰ�
:install
  echo "==>python3 ���ɹ� ��ʼ��װ������"
  echo "==>check opencv..."
  py -3 -m pip show opencv_python
  set "err=%errorlevel%"
  if "%err%" == "1" goto install_opencv
  echo "==>opencv-python�Ѱ�װ"
:check_numpy  
  echo "==>check numpy..."
  py -3 -m pip show numpy
  set "err=%errorlevel%"
  if "%err%" == "1" py -3 -m pip install numpy
  echo "==>numpy�Ѱ�װ"
:check_imutils
  echo "==>check imutils..."
  py -3 -m pip show imutils
  set "err=%errorlevel%"
  if "%err%" == "1" py -3 -m pip install imutils
  echo "==>imutils�Ѱ�װ"
:check_pywin32
  echo "==>check pywin32..."
  py -3 -m pip show pywin32
  set "err=%errorlevel%"
  if "%err%" == "1" py -3 -m pip install pywin32
  echo "==>pywin32�Ѱ�װ"
:check_pywinauto
  echo "==>check pywinauto..."
  py -3 -m pip show pywinauto
  set "err=%errorlevel%"
  if "%err%" == "1" py -3 -m pip install pywinauto
  echo "==>pywinauto�Ѱ�װ"
:check_psutil
  echo "==>check psutil..."
  py -3 -m pip show psutil
  set "err=%errorlevel%"
  if "%err%" == "1" py -3 -m pip install psutil
  echo "==>psutil�Ѱ�װ"
:check_pillow
  echo "==>check pillow..."
  py -3 -m pip show pillow
  set "err=%errorlevel%"
  if "%err%" == "1" py -3 -m pip install pillow
  echo "==>pillow�Ѱ�װ"
  echo "==>��������װ���"
  Pause
  exit

Rem @opencv_python��python3����Ҫ�Լ����ذ��ļ���װ
Rem @���ʧ�����������غ�װ
:install_opencv
  echo "==>δ��װopencv-python ��ʼ����..."
  ::if exist %~dp0opencv_python-4.1.0-cp37-cp37m-win_amd64.whl goto cv2_download_done 
  curl -O https://download.lfd.uci.edu/pythonlibs/t4jqbe6o/opencv_python-4.1.0-cp37-cp37m-win_amd64.whl
:cv2_download_done
  echo "==>��װopencv-python..."
  py -3 -m pip install opencv_python-4.1.0-cp37-cp37m-win_amd64.whl
  py -3 -m pip show opencv_python
  set "err=%errorlevel%"
  if "%err%" == "1" goto error
  echo "==>opencv-python�Ѱ�װ"
  goto :check_numpy
