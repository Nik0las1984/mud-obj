#71300
арена~
2 c 100
битва~
wait 1 s
wecho _Вы идете на арену!
wecho _Там Вы можете опробовать свои силы с битве со своими же ратниками.
wecho _Там нет настоящей смерти, может быть моральная, но не более.
wecho _Чтобы узнать дополнительную информацию скажите чучелу "арена".
wecho _Желаем Вам удачи!
wteleport %actor.name% 71317
~
#71301
лечиться~
0 d 1
арена~
wait 1 s
ск %actor.name% Ну, значит, слушай...
ск %actor.name% На востоке начинается арена, там ты можешь драться сколько влезет.
ск %actor.name% Но чтобы выйти с арены найди выход с ристалища и набери там...
ск %actor.name% "выйти" - вот и все!
ск %actor.name% Удачи тебе в битве...
улыб %actor.name%
~
#71302
арена (выход)~
2 c 100
выйти~
wait 1 s
wecho _Вот Вы и вышли с арены.
wteleport %actor.name% 71316
~
#71303
взяли шмот~
1 g 100
~
wait 1
if %actor.clan% == рд
  halt
endif
%purge% %self%
~
#71304
Продажа свистков~
0 m 1
~
wait 1
if ( %amount% < 100 )
say Маловато будет! 
give %amount% кун %actor.name%
halt
end
if ( %world.curobjs(71324)% > 100 )
фиг %actor.name%
give %amount% кун %actor.name%
halt
end
mload obj 71324
дать свисток %actor.name%
улы
~
#71305
Распрощаться с сивкой~
0 c 1
распрощаться~
if ( %actor.clan% != рд )
halt
end
wait 2
%force% %actor% проща сивка
%force% %actor% рыдать сивка
mload obj 71324
give свисток %actor.name%
рыдать
%echo% Сивка-бурка мощно дыхнул перегаром, и улетел на поправку.
wait 1
%purge% %self%
~
#71306
вызов сивки~
1 c 2
свистнуть~
wait 1
if !%arg.contains(свисток)%
%send% %actor% Во что вы хотите свистнуть?
halt
end
if ( %actor.clan% != рд )
%send% %actor% Вы покраснели от натуги, дуя в свисток, но так и не сумели извлечь из него ни единого звука.
%echoaround% %actor% %actor.name% покраснел%actor.g% от натуги, дуя в свисток, но так и не сумел%actor.g% извлечь из него ни единого звука.
halt
end
%send% %actor% Вы легонько дунули в свисток - послышался тонкий протяжный свист.
%echoaround% %actor% %actor.name% легонько дунул%actor.g% в свисток - послышался тонкий протяжный свист.
if ( %world.curmob(71312)% <  15 )
%echo% Послышалось слегка осоловелое конское ржание и резко потянуло запахом перегара.
%echo% Сивка-бурка вещая каурка явился на зов хозяина.
%load% mob 71312
wait 1
%purge% %self%
else
%echo% Откуда-то прилетел окончательно укуренный сивка-бурка. 
%echoaround% %actor% Сивка-бурка оглядел %actor.vname% с ног до головы.
%send% %actor% Сивка-бурка оглядел Вас с ног до головы.
wait 2
%echo% Сивка-бурка завизжал от ужаса и вылетел в трубу.
end
~
$~
