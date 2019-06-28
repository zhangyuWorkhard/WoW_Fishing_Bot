@echo off

Rem @需要安装python3
echo "==> 开始检测环境依赖..."
echo "==> 测试 python3 命令"
py -3 --version
set "err=%errorlevel%"
if "%err%" == "0" goto install
if "%err%" == "1" goto install_Python
:install_Python
  echo "[ERROR] 未检测到python3 请下载安装 https://www.python.org/ftp/python/3.7.3/python-3.7.3-amd64.exe"
  echo ">>> 准备退出......"
  Pause
  exit

:error
  echo "[ERROR] 安装失败"
  echo ">>> 准备退出......"
  Pause
  exit

Rem @顺序安装下记包
:install
  echo "==>python3 检测成功 开始安装依赖包"
  echo "==>check opencv..."
  py -3 -m pip show opencv_python
  set "err=%errorlevel%"
  if "%err%" == "1" goto install_opencv
  echo "==>opencv-python已安装"
:check_numpy  
  echo "==>check numpy..."
  py -3 -m pip show numpy
  set "err=%errorlevel%"
  if "%err%" == "1" py -3 -m pip install numpy
  echo "==>numpy已安装"
:check_imutils
  echo "==>check imutils..."
  py -3 -m pip show imutils
  set "err=%errorlevel%"
  if "%err%" == "1" py -3 -m pip install imutils
  echo "==>imutils已安装"
:check_pywin32
  echo "==>check pywin32..."
  py -3 -m pip show pywin32
  set "err=%errorlevel%"
  if "%err%" == "1" py -3 -m pip install pywin32
  echo "==>pywin32已安装"
:check_pywinauto
  echo "==>check pywinauto..."
  py -3 -m pip show pywinauto
  set "err=%errorlevel%"
  if "%err%" == "1" py -3 -m pip install pywinauto
  echo "==>pywinauto已安装"
:check_psutil
  echo "==>check psutil..."
  py -3 -m pip show psutil
  set "err=%errorlevel%"
  if "%err%" == "1" py -3 -m pip install psutil
  echo "==>psutil已安装"
:check_pillow
  echo "==>check pillow..."
  py -3 -m pip show pillow
  set "err=%errorlevel%"
  if "%err%" == "1" py -3 -m pip install pillow
  echo "==>pillow已安装"
  echo "==>依赖包安装完毕"
  Pause
  exit

Rem @opencv_python在python3中需要自己下载包文件后安装
Rem @如果失败请自行下载后安装
:install_opencv
  echo "==>未安装opencv-python 开始下载..."
  ::if exist %~dp0opencv_python-4.1.0-cp37-cp37m-win_amd64.whl goto cv2_download_done 
  curl -O https://download.lfd.uci.edu/pythonlibs/t4jqbe6o/opencv_python-4.1.0-cp37-cp37m-win_amd64.whl
:cv2_download_done
  echo "==>安装opencv-python..."
  py -3 -m pip install opencv_python-4.1.0-cp37-cp37m-win_amd64.whl
  py -3 -m pip show opencv_python
  set "err=%errorlevel%"
  if "%err%" == "1" goto error
  echo "==>opencv-python已安装"
  goto :check_numpy
