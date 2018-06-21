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
Listen 8100<br/>
<VirtualHost *:8100><br/>
⋅⋅⋅DocumentRoot "/Users/vgryshch/mywork/10_matcha/macha/matcha-web/src/php"<br/>
⋅⋅⋅<Directory "/Users/vgryshch/mywork/10_matcha/macha/matcha-web/src/php"><br/>
⋅⋅⋅⋅⋅⋅AllowOverride All<br/>
⋅⋅⋅⋅⋅⋅Options Indexes FollowSymLinks<br/>
⋅⋅⋅⋅⋅⋅Require all granted<br/>
⋅⋅⋅</Directory><br/>
</VirtualHost><br/>

### Realization
1.Registration and Signing-in <br/>
2.User profile <br/>
◦ The gender <br/>
◦ Sexual preferences. <br/>
◦ A biography <br/>
◦ A list of interests with tags <br/>
◦ Pictures <br/>
3.Browsing <br/>
◦ The list can be sortable by age, localization, “fame rating” and common tags<br/>
◦ The list can be filterable by age, localization, “fame rating” and common tags<br/>

4.Research <br/>
The user can  run an advanced research selecting one or a few criterias such
as: <br/>
⋅⋅⋅◦ A age gap<br/>
⋅⋅⋅◦ A “fame rating” gap<br/>
⋅⋅⋅◦ A location<br/>
⋅⋅⋅◦ One or multiple interests tags<br/>

5. Profile of other users <br/>
◦ User can like or dislike other users <br/>
◦ User can block adn report other users <br/>

6. Chat <br/>
◦ When two users are connected, they can to “chat” in real time<br/>

7. Notifications <br/>
◦ The user received a “like”<br/>
◦ The user’s profile has been checked<br/>
◦ The user received a message<br/>
◦ A “liked” user “liked” back<br/>
◦ A connected user “unliked” you<br/>

### User SingIn && SingUp
![User auth](http://g.recordit.co/09Vso5agha.gif)

### Real-time chat webscoket
![chat](https://media.giphy.com/media/X7hOTHPSUzyf3hlqRu/giphy.gif)

### Users search
![search](https://media.giphy.com/media/1inplzYExMY5K81Fhy/giphy.gif)

### Global map of users
![map](https://media.giphy.com/media/vgzADvCV3VVkaSJaqL/giphy.gif)
