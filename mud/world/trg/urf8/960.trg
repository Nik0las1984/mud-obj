#96000
Входим к волхву~
0 q 100
~
wait 1
%echo% На капище Вы увидели старого белобородого волхва.
%echo% Он не переставая перебирает какие-то руны, и что-то яростно, но еле слышно бормочет.
%echo% Вам показалось, что периодически в его шепоте слышны нотки отчаянья.
~
#96001
помогаем волхву~
0 d 100
помогу~
wait 1
эм заметно вздрогнул, услышав Ваш голос
%echo% Кто вы..., - начал было волхв, но потом похоже пришел в себя, и заговорил по-волховски.
г Уйди от сюда, человече, занят я.
attach 96002 %self.id%
detach 96000 %self.id%
detach 96001 %self.id%
~
#96002
помогаем волхву 2~
0 d 100
помогу~
wait 1
взд
г Говорю же тебе, уходи, ты ничем не сможешь мне помочь.
эм погрузился в думы думные
wait 2s
г ...А впрочем... ты еще тут?
wait 1s 
г Ну слушай, все равно уже, похоже, ничего нельзя сделать.
пож
wait 1
г Волхв я, как ты наверное уже успел заметить.
г И не самый худший, смею заверить.
эм печально улыбнулся
wait 1
г Так вот...
г Все знания, полученные мной не за одну сотню лет, говорят, что мы все умрем вскоре.
г Звезды, руны, деревья - все указывает на то, что движется беда, коих давно свет не видывал,
г И которая разрушит все живое. Не только на Руси-матушке, но и в других землях.
взд 
г И только боги смогут повернуть это вспять.
attach 96003 %self.id%
detach 96002 %self.id%
~
#96003
помогаем волхву 3~
0 d 100
помогу~
wait 1
makeuid questor960 %actor.id%
global questor960
calcuid yaga 96102 mob
remote questor960 %yaga.id%
г Тьфу на тебя. Что за дурень мне попался?
г Заладил, "помогу" да "помогу".
г Говорю же тебе, боги в этом замешены, и только им под силу остановить надвигающуюся беду.
г Пожили мы славно, видимо теперь время помирать.
wait 2s
г А впрочем...
г Хотя...
эм замер в нерешительности
wait 1s
г Можно попробовать разузнать, что именно там происходит.
г Может получится изменить что...
г Вот только, сколько я не пытался, не получается у меня никак узнать,
г Молчат боги, не отвечают мне, смертному.
wait 1s
эм задумчиво Вас осмотрел
пож
г Коли хочет перед смертью полезное что-нибудь сделать.
г Сходи-ка в лес дремучий, где Баба-Яга живет, с духами да богами знакомство ведущая.
г Может смилостивится, и скажет что случилось-то, там, наверху.
г Глядишь, может мы, смертные, сделать полезное что-нибудь сумеем. 
г Иди же, иди, немного времени у нас осталось.
эм медленно подошел к окну и начал печально смотреть на небо
attach 96014 %self.id%
detach 96003 %self.id%
~
#96004
Лоад квестового амулета~
0 f 100
~
if (%world.curmobs(96020)% +  %world.curmobs(96021)% +  %world.curmobs(96022)%) < 2
  %load% obj 96000
end
~
#96005
Заходим к охотнику~
0 q 100
~
wait 1
эм удивленно поднялся при виде вас.
г Эх, а вы тут откель?
wait 1
%echo% Вы рассказали охотнику цель своего путешествия.
wait 1
г Уходи, мил человек, не надо блуждать тут.
г Странные тут места, зачарованные. Духи разные бродят днем и ночью.
г Все жители да охотники давно отсюда со всем скарбом уехали.
г Один я, вот, остался.
взд
wait 1s
г Да и то, если бы не Юнька, меня бы тут тоже давно не было.
wait 1s
%echo% Видя, что вы не понимаете, о чем идет речь, охотник пояснил:
г Дочка это моя, красавица...
взд
г Однажды ночью....
эм внезапно замялся
г В общем захворала она тяжко, и ведунья местная сказала, что только амулет силы магической, 
г Кои некоторые духи нечистые носят при себе, помочь сможет.
wait 1s
г Вот уже невесть сколько дней, живу я тут, за духами охочусь, амулет этот ищу.
г Да только все без проку...
взд
г Найти бы его, и к Юньке моей родненькой...
~
#96006
Даем амулет охотнику~
0 j 100
~
wait 1
if %object.vnum% != 96000
  печал
  г зачем мне это?
  брос все
else
  г О, Боже! Это же тот самый амулет!
  г Спасибо тебе, добрый человек.
  г Все, пора мне теперь домой идти, к дочурке моей.
  %purge% %object%
  wait 1s
  эм начал торопливо собирать вещи
  wait 1s
  эм вдруг остановился и задумчиво посмотрел на вас
  wait 1
  г Раз ты смог одолеть духов местных, то возможно и у Бабы-Яги не помрешь.
  дум
  г Хотя это вряд ли.
  взд
  wait 1s
  г В любом случае, раз помог ты мне, то и я тебе как-то отблагодарить обязан.
  г Вот, держи.
  %load% obj 96010
  дать бут.сам .%actor.name%
  г Дай ее старичку-лесовичку, что живет не подалеку.
  г В этой глуши с таким товаром плохо, ему понравится.
  г Может он чем и поможет в твоих поисках.
  wait 1s
  %echo% Попрощавшись с вами, Выршань продолжил собирать свои пожитки.
  detach 96005 %self.id%
  detach 96006 %self.id%
end 
~
#96007
Приходим к лесовику~
0 q 100
~
wait 1
г Чего надобно? Идите, идите отсюда своей дорогой.
г Занят я, не досуг мне с кем попало болтать.
~
#96008
Даем самогонку лесовику~
0 j 100
~
wait 1
if %object.vnum% != 96010
  хмур
  г И на черта оно мне?
  г Тьфу! Ходят тут всякие, мусор всякий так и наровят всучить.
  брос все
else
  wait 1s
  эм лицо старичка-лесовичка расплылось в радостной улыбке
  г Ых, вот удружил так удружил, тут да, тут с таким добром плохо
  эм немного замявшись, старичок таки не выдержал, и сделал пару крепких глотков из бутылки
  пить бутыл
  %purge% %object%
  г Эх, хороша!
  wait 1s
  г Ладно, думаю не просто так ты самогоном хорошим раздариваться начал, говори, чего хотел то?
  wait 1s
  %echo% Вы рассказали старичку-лесовичку о цели ваших поисков.
  wait 1s
  ик
  г Ишь, чего захотел, к самой Бабе-Яге в гости придти.
  пож
  г Впрочем каждый сам волен выбирать как ему умереть.
  г Покажу я тебе в какую сторону идти, а вот стоит ли туда вообще идти - решать тебе.
  эм звонко прищелкнул пальцами, и из темного угла избушки внезапно выскочило что-то мелкое и прошмыгнуло в дверь
  wait 1s
  г Так вот, выйдешь из дома и иди на север, в глубь леса, там найдешь проход дальше, к Бабе-Яге.
  г Вот только не думаю, что она так легко пустит тебя к себе
  ухм
  %door% 96017 north room 96100
  %door% 96100 south room 96017
  detach 96007 %self.id%
  detach 96008 %self.id%
end
~
#96009
смерть двоедушника~
0 f 100
~
if (%random.100% <= 15) && (%world.curobjs(96005)% < %world.maxobj(96005)%)
  mload obj 96005
end
~
#96010
смерть богинки~
0 f 100
~
if (%random.100% <= 15) && (%world.curobjs(96006)% < %world.maxobj(96006)%)
  mload obj 96006 
end
~
#96011
Ежик колется~
0 u 100
~
wait 1
%send% %actor.name% Во время боя вы сильно укололись об ежика!
dg affect %actor% телосложение плач -5 1000 2
%echoaround% %actor% %actor.name% сильно уколол%actor.u% об ежика!
~
#96012
репоп зоны~
2 f 100
~
wdoor 96017 north purge
wdoor 96100 south purge
~
#96013
Удельница призывает~
0 v 2
~
%echo% Удельница высоко подняла руки и громко закричала, созывая соратников.
%echo% Но только какой-то маленький хлипенький дух пришел ей на помощь!
%load% mob 96023
wait 3s
%echo% Из оврагов показался еще какой-то уродливый дух, спешащий к своей хозяйке.
%load% mob 96024
detach 96013 %self.id%
~
#96014
Награда волхва~
0 q 100
~
wait 1s
if %actor.id% == %questor963.id%
  %echo% Вы рассказали волхву то, что узнали от Велеса.
  wait 1s
  взд
  г Вот оно что... Теперь много становится понятным.
  эм погрузился в размышления
  wait 1s
  г Ах, да. Вот возьмите за службу, и идите.
  г Мне надо подумать.
  дать 30000 кун .%actor.name%
  detach 96014 %self.id%
end
~
$~
