# Part1: WebServer
建立Web服务器的几个步骤
1. 首先HTTP是基于TCP进行传输的，因此Web服务器首先是一个TCP服务器，通关TCP与客户端建立链接。
2. 一旦链接建立后，需要决定用何种方式进行交流，Web服务器使用HTTP协议定义的格式进行交流。

这两个过程可以类比成打电话，首先拨通对方的电话，然后选择一种双方都能听懂的语言进行交流（粤语，普通话等）。

# Part2: WSGIServer
概念：
1. WebServer
2. Web Framework
3. WSGI

通常情况下WebServer主要的职责是监听客户端链接，并且收发HTTP协议包，具体业务逻辑交给Web framework来处理。
由于同一个WebServer可能使用不同的web framework，反之亦然。因此WebServer和Web framework交互需要遵循一定
的接口规则，这个规范在python是WSGI。在WSGI中Web framework被称为application。

参考链接：
1. [WSGI简介](http://blog.csdn.net/on_1y/article/details/18803563)
