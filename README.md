# docker
docker相关文件�

sh 无密码登录要使用公钥与私钥。linux下可以用用ssh-keygen生成公钥/私钥对,服务器为centos，客户端为ubuntu
centos的ip地址192.168.1.240
1.在ubuntu下生成公钥/私钥对。
[chenlb@A ~]$ ssh-keygen -t rsa -P ''
-P表示密码，-P '' 就表示空密码，也可以不用-P参数，这样就要三车回车，用-P就一次回车。
它在/home/用户目录下生成.ssh目录，.ssh下有id_rsa（这个是私钥）和id_rsa.pub（这个是公钥）。
2.把ubuntu的id_rsa.pub的内容复制centos下用户家目录下的.ssh/authorized_keys文件里
如：想无密码登录root用户就复制到/root/.ssh/authorized_keys
想无密码登录其他用户就复制到/home/用户/.ssh/authorized_keys
