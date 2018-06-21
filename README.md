# Matcha

### Code
1. Client used clear Javascript/ReactJs
2. Back-end php/slim
3. HTML/CSS materializecss

### Install
1. npm i 
2. run websocket server ./src/php/app/ChatServer php ChatServer.php
3. run localhost:8100 for php
##### Config example for MAMP
Listen 8100
<VirtualHost *:8100>
	DocumentRoot "/Users/vgryshch/mywork/10_matcha/macha/matcha-web/src/php"
	<Directory "/Users/vgryshch/mywork/10_matcha/macha/matcha-web/src/php">
		AllowOverride All
		Options Indexes FollowSymLinks
		Require all granted
	</Directory>
</VirtualHost>

### User SingIn && SingUp
![User auth](http://g.recordit.co/09Vso5agha.gif)

### Real-time chat webscoket
![chat](https://media.giphy.com/media/X7hOTHPSUzyf3hlqRu/giphy.gif)

### Users search
![search](https://media.giphy.com/media/1inplzYExMY5K81Fhy/giphy.gif)

### Global map of users
![map](https://media.giphy.com/media/vgzADvCV3VVkaSJaqL/giphy.gif)
