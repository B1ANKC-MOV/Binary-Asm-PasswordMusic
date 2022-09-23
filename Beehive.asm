org 0x8400
jmp start
max dw 0	

color 
		 db 0,255,245,247,
         db 1,254,67,101,		
         db 2,252,157,154,	
         db 3,249,205,173
         db 4,244,208,0
         db 5,0,0,0	
		 ;界面用到的颜色参数
;开机锁屏界面↓
data1:	
	db 0,0,0,0,0,0,0,0,0,0,0,0,1,1,2           
	db 1,1,1,1,1,1,1,1,1,1,1,1,1,1,2
	db 1,1,1,1,1,1,1,1,1,1,1,1,1,1,2
	db 0,1,1,1,0,1,1,1,0,1,1,0,1,1,2
	db 0,1,1,1,0,0,1,1,0,1,1,0,1,1,2
	db 0,1,1,1,0,0,1,1,0,1,1,1,1,0,2
	db 1,1,1,1,1,0,1,1,1,1,1,1,1,1,2
	db 1,1,1,1,1,0,1,1,1,1,1,1,1,1,2
	db 0,1,1,1,0,1,1,1,0,1,1,0,0,0,2
	db 0,1,1,1,0,1,1,1,1,1,1,1,1,1,2
	db 0,1,1,1,1,1,1,1,1,1,1,1,1,1,2
	db 0,1,1,1,1,1,1,1,0,1,1,0,0,1,2
	db 1,1,1,1,1,1,1,1,0,1,1,0,1,1,2
	db 1,1,1,0,0,1,1,1,1,1,1,1,1,1,2
	db 0,0,0,0,0,1,1,1,1,1,1,1,1,1,3	
;瑶

x1   dw 0		
y1   dw 0		
x2   dw 0	
y2   dw 0
m    dw 0
n    dw 0
;画横竖线条--->[框]用到的变量	


b_x1   dw 55	
b_y1   dw 25	
b_x2   dw 257	
b_y2   dw 28

b_x3   dw 55	
b_y3   dw 177	
b_x4   dw 257	
b_y4   dw 180

b_x5   dw 55	
b_y5   dw 25	
b_x6   dw 58	
b_y6   dw 177

b_x7   dw 257	
b_y7   dw 25	
b_x8   dw 260	
b_y8   dw 180

b_x9   dw 58	
b_y9   dw 28	
b_x10   dw 257	
b_y10   dw 30

b_x11   dw 58	
b_y11   dw 175	
b_x12   dw 257	
b_y12   dw 177

b_x13   dw 58	
b_y13   dw 28	
b_x14   dw 60	
b_y14   dw 177

b_x15   dw 255	
b_y15   dw 28	
b_x16   dw 257	
b_y16   dw 177

b_x17   dw 85	
b_y17   dw 80	
b_x18   dw 230	
b_y18   dw 100
;一些静态变量，固定不变的数据


;解锁后的系统桌面↓
b_x21   dw 0	
b_y21   dw 180	
b_x22   dw 320	
b_y22   dw 200

b_x23   dw 0	
b_y23   dw 180	
b_x24   dw 40	
b_y24   dw 200

b_x25   dw 10	
b_y25   dw 10	
b_x26   dw 30	
b_y26   dw 30

b_x27   dw 10	
b_y27   dw 40	
b_x28   dw 30	
b_y28   dw 60

b_x19   dw 10	
b_y19   dw 70	
b_x120   dw 30	
b_y120   dw 90

b_x121   dw 10	
b_y121   dw 100	
b_x122   dw 30	
b_y122   dw 120
c db 0
;仍旧存放一些静态变量，固定不变的数据


;界面绘画结束←


;下面进行输入操作的参数编码设计↓


beginlocation dw 1166
writelocation dw 1166
location dw 0
;键盘起始位置设定↑

alpha 	db 'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'
		db '0','1','2','3','4','5','6','7','8','9',' ',' ','!','?'
;键盘输入---小写字母+一些符号存放↑

alphA 	db 'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'
		db '0','1','2','3','4','5','6','7','8','9',' ',' ','!','?'
;键盘输入---大写字母+一些符号存放↑

judge 	db 0x1e,0x30,0x2e,0x20,0x12,0x21,0x22,0x23,0x17,0x24,0x25,0x26,0x32,0x31
		db 0x18,0x19,0x10,0x13,0x1f,0x14,0x16,0x2f,0x11,0x2d,0x15,0x2c
		db 0x52,0x4f,0x50,0x51,0x4b,0x4c,0x4d,0x47,0x48,0x49,0x39,0x0e,0x1c,0x01



title	 	db ' Please Enter Your Password: '
password	 	db 'Bee200'
passwordnum	dw 0
passjudge	db '00000000000000000000000000000'
passright		db ' welcome, <Bee>                   '
passwrong	db '【Warning】the password is wrong!'
;密码输入后的校对↑及打印结果


myvoice: 	db 3,3,3,3,3,3,3,5,1,2,3,4,4,4,4,4,3,3,3,5,5,4,2,1,7,1,3,2,1,1,1,1,3,2,1,2,2,2,4,3,2,8	
;开机音乐↑，是<春节序曲>的谱子，但很有可能听不出来
voicelocation: db 0	
shift db 0
caps db 0
;开机音乐的一些相关参数↑


;进入13h号320*200 256色的图形模式↓
start:	
	mov dx,0x20 		 ;键盘中断结束
	mov al,0x61
	out dx,al	
	mov ah,00h
	mov al,13h
	int 10h
	mov ax,0x0a000		 ;往0xa0000开始的显存中放入点数据

	mov si,color
	mov es,ax
	mov ax,0
	mov ds,ax

	mov   bx, 0
	call  dis
	mov   ax,[ds:b_x1]
	mov   [ds:x1],ax
	mov   ax,[ds:b_y1]
	mov   [ds:y1],ax
	mov   ax,[ds:b_x2]
	mov   [ds:x2],ax
	mov   ax,[ds:b_y2]
	mov   [ds:y2],ax
	mov	  byte[ds:c],1	
	call  drawline1

	mov   ax,[ds:b_x3]
	mov   [ds:x1],ax
	mov   ax,[ds:b_y3]
	mov   [ds:y1],ax
	mov   ax,[ds:b_x4]
	mov   [ds:x2],ax
	mov   ax,[ds:b_y4]
	mov   [ds:y2],ax
	mov   byte[ds:c],1
	call  drawline1

	mov   ax,[ds:b_x5]
	mov   [ds:x1],ax
	mov   ax,[ds:b_y5]
	mov   [ds:y1],ax
	mov   ax,[ds:b_x6]
	mov   [ds:x2],ax
	mov   ax,[ds:b_y6]
	mov   [ds:y2],ax
	mov   byte[ds:c],1
	call  drawline1

	mov   ax,[ds:b_x7]
	mov   [ds:x1],ax
	mov   ax,[ds:b_y7]
	mov   [ds:y1],ax
	mov   ax,[ds:b_x8]
	mov   [ds:x2],ax
	mov   ax,[ds:b_y8]
	mov   [ds:y2],ax
	mov   byte[ds:c],1
	call  drawline1
	
	mov   ax,[ds:b_x9]
	mov   [ds:x1],ax
	mov   ax,[ds:b_y9]
	mov   [ds:y1],ax
	mov   ax,[ds:b_x10]
	mov   [ds:x2],ax
	mov   ax,[ds:b_y10]
	mov   [ds:y2],ax
	mov   byte[ds:c],2
	call  drawline1

	mov   ax,[ds:b_x11]
	mov   [ds:x1],ax
	mov   ax,[ds:b_y11]
	mov   [ds:y1],ax
	mov   ax,[ds:b_x12]
	mov   [ds:x2],ax
	mov   ax,[ds:b_y12]
	mov   [ds:y2],ax
	mov   byte[ds:c],2
	call  drawline1

	mov   ax,[ds:b_x13]
	mov   [ds:x1],ax
	mov   ax,[ds:b_y13]
	mov   [ds:y1],ax
	mov   ax,[ds:b_x14]
	mov   [ds:x2],ax
	mov   ax,[ds:b_y14]
	mov   [ds:y2],ax
	mov   byte[ds:c],2
	call  drawline1

	mov   ax,[ds:b_x15]
	mov   [ds:x1],ax
	mov   ax,[ds:b_y15]
	mov   [ds:y1],ax
	mov   ax,[ds:b_x16]
	mov   [ds:x2],ax
	mov   ax,[ds:b_y16]
	mov   [ds:y2],ax
	mov   byte[ds:c],2
	call  drawline1

	mov   ax,[ds:b_x17]
	mov   [ds:x1],ax
	mov   ax,[ds:b_y17]
	mov   [ds:y1],ax
	mov   ax,[ds:b_x18]
	mov   [ds:x2],ax
	mov   ax,[ds:b_y18]
	mov   [ds:y2],ax
	mov   byte[ds:c],4
	call  drawline1

;获取打点矩阵信息↓	
	mov si, data1
	mov bx, 12945
	mov al, 0
draw1:			
	mov ah, [ds:si]	;取出打点矩阵
	cmp ah, 0
	je draw2	;等于0就跳到drawe2——即打空点
	cmp ah,1
	je draw3	;等于1就跳到draw3——即打点
	cmp ah,2
	je draw4	;等于2就跳到draw4——换行
	jmp quit		
draw2:			
	mov byte [es:bx], 0
	jmp quit
draw3:			
	mov byte [es:bx], 2
	jmp quit
draw4:			
	add bx,305
quit:				;判断取出数据是否为3
	inc si
	inc al
	inc bx			;打完一次点减一
	mov ah, [ds:si]
	cmp ah, 3		;如果为3则表示打点结束
	jne draw1	;如果不是则重新跳到draw1开始比较

newwindows:
	cli
	mov word[ds:0x24],int_join
	mov word[ds:0x26],0
	sti
	jmp $
int_join:
	mov dx,0x60		;读取键盘缓冲区数据
	in al,dx
	cmp al,0x1c		;用 'Shfit' 键来作为大小写切换摁键
	je passstart
	jmp join_end	
join_end:	
	mov dx,0x20		;键盘中断结束
	mov al,0x61
	out dx,al
	jmp newwindows	
	ret
	

;输入以及密码判定部分↓
passstart:	
	mov dx,0x20 		 ;键盘中断结束
	mov al,0x61
	out dx,al

	mov ax,0xb800
	mov es,ax
	mov ah, 00h		;显示器模式
   	mov al, 03h		;显示文字(80*25*16)
   	int 10h
	mov ax,0
	mov ds,ax

	mov si,0
 refresh1:	
    mov byte[es:si],' '
	mov byte[es:si+1],0x0a
	add si,2
	cmp si,80
	jb refresh1

	mov bx,0
	mov si,1000
 Title:	mov cl,[ds:title+bx]
		mov byte[es:si],cl
		mov byte[es:si+1],0x0b
		add bx,1
		add si,2
		cmp bx,29		;设定输入提醒语句字长
		jb Title

	cli
	mov word[ds:0x24],int_key
	mov word[ds:0x26],0

	sti	
	mov si,0
	mov bx,0
	jmp $


int_key:
	mov dx,0x60		;读取键盘缓冲区数据
	in al,dx
	cmp al,0x2a		;用 'SHIFT' 键来作为大小写切换摁键
	je flag			;跳转到flag切换大小写


change:	in al,dx               ;change块用来判定是大写还是小写
		mov bx,[ds:max]	       ;用max来判定，0为小写，1为大写
		cmp bx,0		       ;如果小写跳到a0写小写，大写跳到a1写大写
		je a0
		cmp bx,1
		je a1
;小写键盘的输入↓
a0:	mov bx,[ds:location]
	mov cl,[ds:alpha+bx]
	cmp al,[ds:judge+bx]
	jne bxx
	cmp al,0x0e
	je Backspace       	;如果是回退档的话退格
	cmp al,0x1c
	je Enter       		;如果是回车键的话与密码进行判定
	cmp al,0x01
	je Esc				;如果是退出键的话就退出

	mov si,[ds:passwordnum]		;此处用于密码信息输入，为后续判定做铺垫
	mov byte[ds:passjudge+si],cl	
	add si,1
	mov word[ds:passwordnum],si	;信息输入暂时结束
	mov si,[ds:writelocation]
	mov byte[es:si],cl
	mov byte[es:si+1],0x0c
	add si,2
	mov word[ds:writelocation],si
	jmp End1
bxx:	add bx,1
		cmp bx,40
		je End1
		mov word[ds:location],bx
		jmp a0
;大写键盘的输入↓
a1:	mov bx,[ds:location]
	mov cl,[ds:alphA+bx]
	cmp al,[ds:judge+bx]
	jne Bxx
	cmp al,0x0e
	je Backspace		;如果是回退档的话退格
	cmp al,0x1c
	je Enter       		;如果是回车键的话与密码进行判定
	cmp al,0x01
	je Esc				;如果是退出键的话就退出

	mov si,[ds:passwordnum]		;此处用于密码信息输入，为后续判定做铺垫
	mov byte[ds:passjudge+si],cl	
	add si,1
	mov word[ds:passwordnum],si	;信息输入暂时结束
	mov si,[ds:writelocation]
	mov byte[es:si],cl
	mov byte[es:si+1],0x0a
	add si,2
	mov word[ds:writelocation],si
	jmp End1
Bxx:	add bx,1
		cmp bx,40
		je End1
		mov word[ds:location],bx
		jmp a1
;特殊键位的处理↓
Backspace:
	mov si,[ds:writelocation]
	cmp si,[ds:beginlocation]
	jbe End1
	mov bx,[ds:passwordnum]		;退格后判定的数组中也应该删减
	sub bx,1
	mov byte[ds:passjudge+bx],'0'
	mov word[ds:passwordnum],bx	;删减完毕
	sub si,2
	mov byte[es:si],cl
	mov byte[es:si+1],0x0a
	mov word[ds:writelocation],si
	jmp End1
Esc:
	mov si,[ds:beginlocation]		;按下回车后刷新输入的密码
	mov si,[ds:beginlocation]	
	mov word[ds:writelocation],si	;刷新结束
	mov bx,0
	mov ax,[ds:passwordnum]
	mov word[ds:passwordnum],0
	mov bx,0
	mov word[ds:location],bx
	mov dx,0x20 					;键盘中断结束
	mov al,0x61
	out dx,al	
	jmp start

Enter:
	mov si,[ds:beginlocation]	;回车后刷新输入的密码
	refresh2: mov byte[es:si],' '
	mov byte[es:si+1],0x0a
	add si,2
	cmp si,[ds:writelocation]
	jb refresh2
	mov si,[ds:beginlocation]	
	mov word[ds:writelocation],si	;刷新结束
	mov bx,0
	mov ax,[ds:passwordnum]
	mov si,1328
 play: mov cl,[ds:passjudge+bx];循环判定与内设密码是否一致
	mov byte[ds:passjudge+bx],'0'
	cmp cl,[ds:password+bx]
	jne print_wrong			;只要有一位不一样，直接错误	
	add bx,1
	cmp bx,ax
	jb play
	cmp ax,6				;设定密码为6位
	jne print_wrong
	mov word[ds:passwordnum],0
print_right:				;若密码正确
	mov bx,0
 right:	mov cl,[ds:passright+bx]
	mov byte[es:si],cl
	mov byte[es:si+1],0x0a
	add bx,1
	add si,2
	cmp bx,24				;固定欢迎语句字长
	jb right
	call windowsdelay
	jmp windowsstart
print_wrong:				;若密码错误
	mov word[ds:passwordnum],0
	mov bx,0
 wrong:	mov cl,[ds:passwrong+bx]
	mov byte[es:si],cl
	mov byte[es:si+1],0x0c
	add bx,1
	add si,2
	cmp bx,24				;固定报错语句字长
	jb wrong
	jmp End1
End1:	mov bx,0
		mov word[ds:location],bx
		mov dx,0x20 			;键盘中断结束
		mov al,0x61
		out dx,al			

		iret
	
flag:	mov bx,[ds:max]		;max作为大小写切换的判定,0为小写，1为大写
	cmp bx,1				;如果为1，则flag0切换为0
	je flag0				
				
	cmp bx,0				;如果为0，则flag1切换为1
	je flag1

flag0:	mov bx,0
	mov word[ds:max],bx
	jmp change				;change块用来判定是大写还是小写
	
flag1:	mov bx,1
	mov word[ds:max],bx	
	jmp change


;颜色赋值区
dis:
	mov 	dx,0x3c8
	mov	al,[si]
	out	dx,al

	mov 	dx,0x3c9
	mov	al,[si+1]
	out	dx,al

	mov	al,[si+2]
	out	dx,al

	mov	al,[si+3]
	out	dx,al

	add si,4
	add bx,4
	cmp bx,20
	jna dis	

	ret

drawline1:		;画线函数
	mov	ax,[ds:y1]
	mov	bx,320
	mul	bx
	mov	cx, ax
	add	ax,[ds:x1]
	add	cx, [ds:x2]
	mov	bx,ax
	mov	ax,0
x:
	mov 	al,[ds:c]
	mov 	byte[es:bx],al
	inc	bx
	cmp 	bx,cx
	jb 	x

	
	mov	ax,[ds:y1]
	inc 	ax
	mov	word[ds:y1], ax
	
	cmp	ax,[ds:y2]
	jb	drawline1
	ret
;登录成功后的桌面界面↓
%include "Beehivedata.asm"
windowsstart:
	mov bx,0
	mov word[ds:location],bx
	mov dx,0x20 		 ;键盘中断结束
	mov al,0x61
	out dx,al		
	mov ah,00h
	mov al,13h
	int 10h
	mov ax,0x0a000
	;往显存（0xa0000开始）中放入点数据

	mov si,color
	mov es,ax
	mov ax,0
	mov ds,ax

	mov bx, 0
	call dis
	mov   ax,[ds:b_x21]
	mov   [ds:x1],ax
	mov   ax,[ds:b_y21]
	mov   [ds:y1],ax
	mov   ax,[ds:b_x22]
	mov   [ds:x2],ax
	mov   ax,[ds:b_y22]
	mov   [ds:y2],ax
	mov byte[ds:c],3	
	call drawline1

	mov   ax,[ds:b_x23]
	mov   [ds:x1],ax
	mov   ax,[ds:b_y23]
	mov   [ds:y1],ax
	mov   ax,[ds:b_x24]
	mov   [ds:x2],ax
	mov   ax,[ds:b_y24]
	mov   [ds:y2],ax
	mov byte[ds:c],2
	call drawline1

	mov   ax,[ds:b_x25]
	mov   [ds:x1],ax
	mov   ax,[ds:b_y25]
	mov   [ds:y1],ax
	mov   ax,[ds:b_x26]
	mov   [ds:x2],ax
	mov   ax,[ds:b_y26]
	mov   [ds:y2],ax
	mov   byte[ds:c],4
	call  drawline1

	mov   ax,[ds:b_x27]
	mov   [ds:x1],ax
	mov   ax,[ds:b_y27]
	mov   [ds:y1],ax
	mov   ax,[ds:b_x28]
	mov   [ds:x2],ax
	mov   ax,[ds:b_y28]
	mov   [ds:y2],ax
	mov   byte[ds:c],4
	call drawline1

	mov   ax,[ds:b_x19]
	mov   [ds:x1],ax
	mov   ax,[ds:b_y19]
	mov   [ds:y1],ax
	mov   ax,[ds:b_x120]
	mov   [ds:x2],ax
	mov   ax,[ds:b_y120]
	mov   [ds:y2],ax
	mov	  byte[ds:c],4
	call  drawline1

	mov   ax,[ds:b_x121]
	mov   [ds:x1],ax
	mov   ax,[ds:b_y121]
	mov   [ds:y1],ax
	mov   ax,[ds:b_x122]
	mov   [ds:x2],ax
	mov   ax,[ds:b_y122]
	mov   [ds:y2],ax
	mov   byte[ds:c],4
	call  drawline1

;获取data		
	mov  si, font1	;新
	mov  bx, 3852
	mov  al, 0
	call appcolor

	mov  si, font2	;春
	mov  bx, 13452
	mov  al, 0
	call appcolor

	mov  si, font3	;快
	mov  bx, 23052
	mov  al, 0
	call appcolor

	mov  si, font4	;乐
	mov  bx, 32652
	mov  al, 0
	call appcolor

	mov si, windows1	;LOGO
	mov bx, 58252
	mov al, 0
	call appcolor

	mov si, beehive		;水印
	mov bx, 21560
	mov al, 0
	call appcolor2

	jmp musicstart
	ret
appcolor:		
	mov ah, [ds:si]	;取出矩阵
	cmp ah,6		;如果是6就换行
	je appcolor1
	mov byte [es:bx], ah
	jmp quit2		
appcolor1:
	add bx,305
quit2:
	inc si
	inc al
	inc bx
	mov ah, [ds:si]
	cmp ah, 7		;若果为7表示绘画结束
	jne appcolor	
	ret
;系统菜单LOGO↓
appcolor2:			;取出矩阵
	mov ah, [ds:si]
	cmp ah,6		;如果是6就换行
	je appcolor21
	mov byte [es:bx], ah
	jmp quit21
appcolor21:
	add bx,218
quit21:
	inc si
	inc al
	inc bx
	mov ah, [ds:si]
	cmp ah, 7		;若果为7表示绘画结束
	jne appcolor2
	ret	
	
;开机音乐↓可不看，非重点，仅作为彩蛋,且时常失灵
musicstart:	
	;sti
	mov bx,0
	mov word[ds:location],bx
	mov dx,0x20 		 ;键盘中断结束
	mov al,0x61
	out dx,al	
	mov ax,0xb800        ;指向文本模式的显示缓冲区
   	mov es,ax

	mov ax,0
	mov ds,ax
	mov bx,1
	
	mov si,myvoice
	jmp beginvoice
	
	sti
	mov si,0
	mov bx,0
	jmp $
	
beginvoice:
	mov al, [ds:si]
k0:	
	cmp al,0
	JNE k1
	mov bx,500
	call sound
	jmp music_end

k1:	
	cmp al,1
	JNE k2
	mov bx,4587
	call sound
	jmp music_end
	
k2:
	cmp al,2
	JNE k3
	mov bx,4087
	call sound
	jmp music_end
	
k3:
	cmp al,3
	JNE k4
	mov bx,3640
	call sound
	jmp music_end
	
k4:
	cmp al,4
	JNE k5
	mov bx,3436
	call sound
	jmp music_end
	
k5:
	cmp al,5
	JNE k6
	mov bx,3061
	call sound
	jmp music_end
	
k6:
	cmp al,6
	JNE k7
	mov bx,2727
	call sound
	jmp music_end
	
k7:
	cmp al,7
	JNE music_end
	mov bx,2429
	call sound
	jmp music_end
	
music_end:
	;mov dx,0x20	;键盘中断结束
	;mov al,0x61
	;out dx,al          ;中断结束
	inc si
	cmp al,8
	JNE beginvoice

	iret
	
delay:  
	mov cx,300
xdelay1:	cmp cx,0
	je x5
	push cx
	mov cx,60000
x4:	dec cx
	jnz x4
	pop cx
	dec cx
	jmp xdelay1
x5:
	ret
	
small_delay:
	mov cx,0xffff
x0:	dec cx
	jnz x0
	ret
	
sound:
	mov al,0xB6
	out 43H,al
	call small_delay
	mov ax,bx
	out 42H,al
	call small_delay
	mov al,ah
	out 42H,al
	call small_delay
	
	in al,61H;打开
	or al,0x03
	out 61H,al
	call small_delay
	call small_delay
	call small_delay
	call small_delay
	call small_delay

	in al,61H;关闭
	and al,0xFD
	out 61H,al
	ret
	
	
windowsdelay:				
xx2:	push dx
	mov dx, 200				
xx3:	push cx
	mov cx, 60000
xx4:	dec cx
	jnz xx4
	pop cx
	dec dx
	jnz xx3
	pop dx
	ret

