# Binary-Asm-PasswordMusic
微机系统与接口技术/微机原理课设  
# 思路简述
根据本学期所学的内容，准备设计一个开机系统，其中涉及的功能和知识包括：  
### ①开机锁屏页面绘制(汇编语言绘制界面)，按下enter键进入密码输入界面  
### ②输入密码开机解锁，其中包括:  
1.	按下键盘上的字母按键和数字按键后，能显示对应按键的内容  
2.	区分大小写，使用shift键切换大小写  
3.	按下enter键后进行密码判定  
4.	若按下backspace键则对已输入数组进行删改  
5.	若输入密码不正确则输出错误警告并清空已输入字符串  
6.	若判定成功则跳转开机解锁桌面  
### ③开机解锁桌面的绘制(其中包括开机音乐的播放)，按下esc键后返回初始化页面(开机锁屏页面)  
## 打点矩阵/静态参数设计
![image](https://user-images.githubusercontent.com/66285048/191902315-5b33ebab-3b5f-4ab8-8262-93d9db7942a3.png)  
## 密码输入模块参数设计
![image](https://user-images.githubusercontent.com/66285048/191902538-efd3e5fb-9897-4f9a-b50f-630e1373fa80.png)  
## 开机音乐模块参数设计
![image](https://user-images.githubusercontent.com/66285048/191902581-beb5134a-dc39-4fc8-b63f-1612bc049a3c.png)  
# 界面效果
开机锁屏界面  
![image](https://user-images.githubusercontent.com/66285048/191902775-b35ab2bc-3709-4e86-be5b-421796d7a902.png)  
按下Enter键后进入密码输入界面  
![image](https://user-images.githubusercontent.com/66285048/191902852-b213a83d-0438-45a7-b73c-5ba408cedcd0.png)  
密码输入错误时  
![image](https://user-images.githubusercontent.com/66285048/191902891-f39a0f08-3597-40dd-a437-bf511f115c42.png)  
密码输入正确时  
![image](https://user-images.githubusercontent.com/66285048/191902921-d9d7f0e1-8600-4544-bb18-b921fec4e9f8.png)  
![image](https://user-images.githubusercontent.com/66285048/191902938-4be5abf4-9465-401e-9a9e-0bbb27a13d2a.png)  
开机解锁桌面  
![image](https://user-images.githubusercontent.com/66285048/191902970-79678db6-acf2-4d34-95fc-0ab2a70b0eaa.png)  










