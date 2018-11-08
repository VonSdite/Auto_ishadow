# 最近暂时不更新了

# 版本: v2.0.2
**该项目仅供个人学习，请勿用于非法用途**

## 使用

- **双击** Main/Auto.bat 即可使用 

- **为了便捷使用，可将创建该批处理快捷方式到桌面**

![bat截图](pic2_README.png)

**注：**
记得shadowsocks.exe要启动系统代理

![启动系统代理](pic1_README.png)

## 使用注意

 - 仅适用windows环境

 - 代码适用需要配置python3.0以上的版本, [python下载地址](https://www.python.org/downloads/windows/)

 - python需要用到requests模块

     - 下载requests模块的方法如下:
     
在cmd输入以下即可:
         
> pip install requests
        

## 实现原因

**因为[http://ss.ishadowx.com/](http://ss.ishadowx.com/)上的密码每6小时会更换(0点, 6点, 12点, 18点)并重启服务器,导致每次都要重新打开网页去找密码,所以做了以下程序,每次只需启动程序就会重新获取密码,并会自动打开shadowsocks,方便了使用**  

**从而实现需要科学上网时, 运行该项目代码即可科学上网** 


## 实现代码:

 - 代码分两部分: 
     - 第一部分api_shadowsocks.py为设计的api接口类

     - 第二部分run_shadowsocks.py是使用实例
     
 - api_shadowsocks
     - 主要函数 setShadowSocks(self, pattern):
     
         - 用于爬取 [http://ss.ishadowx.com/](http://ss.ishadowx.com/) 上的服务器,密码,端口,加密方式,并将其设置到shadowsocks.exe的配置文件中
         
     - 函数getHtml(self), 用于获取页面的内容
     
     - 函数printItem(self, pattern), 显示爬取的服务器,密码,端口,加密方式
         
## 实现思想(api_shadowsocks.py)
 - 爬取页面上的密码,服务器,端口,加密方式

 - 将爬取的信息设置到shadowsocks可执行程序的配置文件gui-config.json中

 - 判断shadowsocks.exe进程是否存在(因为一个目录下的shadowsocks.exe只能打开一个), 若存在, 则关闭.
 
 - 打开可执行程序shadowsocks.exe即可(记得启动系统代理)

![启动系统代理](pic1_README.png)

## 注意

- 用该脚本实际上翻墙**可能效果不佳**，毕竟爬取的是免费的服务器设置上去。

- https://ss.ishadowx.com 是会跳转到 https://go.ishadowx.net/ 的，用该网址的原因是，这个网址一般都不会变！！
