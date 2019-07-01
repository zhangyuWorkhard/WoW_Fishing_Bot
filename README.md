#####################################
  
1、安装Python 3.6以上版本
  
2、运行install.cmd 安装依赖包
  
3、main.py中修改魔兽路径

4、鼠标滚轮键（压下）设置为钓鱼快捷键

5、按照下面的步骤移动好视角

6、py -3 main.py 

ps：某些地图水是透明的，水草等会造成识别的干扰。可以在screen.py中的generate_window函数中调整识别的颜色范围。
通常将low_range的亮度上限提高可以排除掉水中的杂物。
例：lower_range = [38,0,100] # H, S, V
具体颜色调整参考 https://baike.baidu.com/item/HSV/547122



# WoW_Fishing_Bot

### Description:
  A fishing bot for World of Warcraft that will automate casting, finding your bobber, and clicking the bobber when a fish is on.


### Setup:
  #### 1. Change WoW Settings
  
  * Change to windowed mode.
      - I have found that windowed mode generally works better for whatever reason.
  * Lower graphics settings to 1
      - Finding the bobber works by filtering out parts of the video feed. The less clutter, the better.
  * Make sure liquid detail is set to 'Low'
      - Filtering works better when set to low as it tends to make the water surface more opaque (less clutter underwater).
  * Change your key bindings so that fishing is bound to clicking your mouse scroll wheel.
  
![WoW Settings](https://github.com/raidensan91/WoW_Fishing_Bot/blob/master/var/Settings.PNG)

  #### 2. Remove WoW Interface
  
  * The WoW interface can be removed in-game by pressing 'ALT + Z'.
      - This removes more clutter so that the program has an easier time recognizing the bobber.
##### Enabled:
![UI Enabled](https://github.com/raidensan91/WoW_Fishing_Bot/blob/master/var/UI_Enabled.PNG)
##### Disabled:
![UI Disabled](https://github.com/raidensan91/WoW_Fishing_Bot/blob/master/var/UI_Disabled.PNG)

  #### 3. Change Camera Angle
  
  * The bot utilizes the bottom 3/5 of the active game window to monitor for the bobber. Angle your screen as shown for best results:
  
![Camera Angle](https://github.com/raidensan91/WoW_Fishing_Bot/blob/master/var/Camera_Angle.PNG)


