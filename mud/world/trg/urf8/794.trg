#79400
репоп~
2 f 100
*~
context 794
unset pman
calcuid pit65 79447 room
detach 79440 %pit65.id%
detach 79441 %pit65.id%
detach 79442 %pit65.id%
calcuid e1room 79413 room
detach 79416 %e1room.id%
calcuid ots45 79449 mob
detach 79446 %ots45.id%
wdoor  79446 west purge
wait 2
calcuid loadem 67633 room
attach 79450 %loadem.id%
exec 79450 %loadem.id%
wait 1
calcuid konung 79447 mob
attach 79430 %konung.id%
attach 79431 %konung.id%
attach 79432 %konung.id%
~
#79401
заходимккупцу~
0 bq 100
*~
wait 1
if %random.100%<=15
  mecho Купец мельком взглянул на Вас и опять уткнулся в кувшин с пивом.
  mecho По его недовольному виду можно догадаться, что торговля не ладится.
end
~
#79402
спрашиваемкупувчемдело~
0 c 100
спросить~
context 794
if (%actor.vnum% != -1)
  эм окинул Вас с головы до ног.
  say Нет, боюсь не по силам тебе мне помочь.
  вздох
  halt
end
*if ((%actor.quested(79402)% == 1) || !%actor.rentable% )
if !%actor.rentable%
  say Оставь, друже, меня в покое.
  эм отхлебнул из кружки.
  halt
end
wait 5
if !%arg.contains(купца)%
  msend %actor% Кого вопрошаешь то?
  return 1
  halt
end
wait 1
if !((%actor.class% == 2) || (%actor.class% == 2) || (%actor.class% == 3) || (%actor.class% == 4) || (%actor.class% == 5) || (%actor.class% == 9) || (%actor.class% == 10) || (%actor.class% == 11) || (%actor.class% == 12))
  г Чего уставился, чаровник, не нужны мне твои фокусы, поди прочь!
  halt
end
set pman %actor.id%
worlds pman
wait 20
msend %actor% Вы подсели к купцу, заказали кувшинчик пива и завели с ним разговор о жизни.
mechoaround %actor% %actor.name% подсел%actor.g% к купцу, и, заказав кувшинчик пива, завел%actor.g% с ним разговор.
msend %actor% Что-то в Вашей внешности и манерах тронуло сурового путешественника, и он стал рассказывать о своей жизни.
wait 20
г Понимаешь, я уже пять лет вожу товары из Киева на север. 
г Люди покупают охотно, ведь кроме меня там наших купцов не так много осталось. 
г Все захватили проклятые готы. У них нынче даже слобода своя есть в Великом
wait 20
mecho Купец сделал огромный глоток пива, вытер рукавом пену и продолжил.
wait 20
г Задавили проклятые иноземцы, сами ломят цены десятикратные, нас, честных торговцев, 
г на север не пускают. Кого из русичей подкупили, кого и потопили. А куда деваться, 
г если по всему северу у них шпионы да наемники.
wait 20
mecho Купец сплюнул и зло грохнул кружкой по столу.
wait 20
г Я держался, последним был кто водил лодью с товарами из Киева в северные земли. 
г Торговая лодья - корабль небольшой, много охраны взять не может, но был у меня 
г охранником великий воин Кайрат. И от любых нападений мы с ним без труда отбивались.
wait 10
г Так и ходили бы дальше назло готам, но эти твари подослали к нему 
г шпионку-отравительницу. Отравить она Кайрата не смогла, а совсем наоборот, случилась 
г у них любовь да свадьба. Только мне с того не легче, цели своей враги добились. 
г В походы ходить он со мной перестал и вернулся в родные степи вместе с молодой женой.
wait 25
mecho Купец пристрастно оглядел Ваше оружие и шрамы на портрете.
wait 10
дум
wait 15
г Послушай, вой, вижу, ты знаешь с какой стороны у шарикена дырка, давай ко мне на лодью охранником?
~
#79403
гдавай~
0 d 100
давай~
context 794
wait 3
if %actor.id% != %pman.id%
  хмур .%actor.name%
  г Ты не знаешь, что в чужие разговоры встревать нехорошо?
  г Поди прочь, невежа!
  halt
end
wait 15
detach 79401 %self.id%
detach 79402 %self.id%
say Долгие проводы - лишние слезы. Идем сейчас же на лодью!
wait 15
msend %actor% Не успели Вы почесать репу, как взошли на борт купеческой лодьи.
wait 15
mechoaround %actor% Вдруг, купец вскочил, и быстрыми шагами направился к выходу из трактира. %actor.iname% последовал%actor.g% за ним.
mteleport %actor% 79400
calcuid r1 79400 room
exec 79404 %r1.id%
wait 5
msend %actor% Купец махнул рукой кормчему.
msend %actor% Лодья, подгоняемая попутным ветром, быстро оставила за кормой Киевскую пристань.
wait 1
mpurge %self%
~
#79404
началиплыть~
2 z 100
*~
context 794
wait 3
%pman.wait(7)%
wait 2s
wecho На сколько хватает глаз, протянулся по левому берегу камышовый лес.
wecho Высок стоит камыш, крепок, владения свои стережет, птиц да зверей болотных.
wecho Тут кораблю хода нет.
wait 2s
wecho Холмы, покрытые кустарником колючим да деревом низким, по правому берегу видны.
wecho Вздымаются берега, уже не такие пологие они, кручинятся вверх, валунами ощетинившись.
wait 25s
calcuid q1 79400 room
exec 79405 %q1.id%
~
#79405
подплываемкборисову~
2 z 100
*~
context 794
wait 1
%pman.wait(7)%
wait 5
wsend %actor% Семь дней и семь ночей шла лодья купца Емельяна вверх по Днепру.
wsend %actor% Затем по реке Березине, что впадает в Днепр севернее Любеча.
wsend %actor% Позади остались Киевское, Черниговское и Пинское княжества.
wsend %actor% Уже почти пересек корабль Минское княжество.
wsend %actor% Сегодня должен остаться позади город Борисов.
wait 7s
%teleport% %pman% 79409
calcuid g1 79409 mob
exec 79406 %g1.id%
~
#79406
худойорет~
0 z 100
*~
wait 1s
крич Мимо тещиного дома 
крич Я без шуток не хожу:
крич То ей "хвост" в забор просуну,
крич Или "тыкву" покажу!
wait 2s
calcuid g2 79411 mob
exec 79407 %g2.id%
~
#79407
тонкийорет~
0 z 100
*~
wait 1s
крич Над рекой склонилась ива,
крич Девки стали песни петь. 
крич Мы "гуляли" так красиво:
крич Весь посад пришел смотреть.
wait 1s
calcuid g3 79410 mob
exec 79408 %g3.id%
~
#79408
жилистыйорет~
0 z 100
*~
wait 2s
крич Шел по лесу старый дед,
крич Делал сам себе "обед".
крич Возле каждого куста
крич "Лук" он вкладывал в уста.
wait 2s
calcuid g4 79408 mob
exec 79409 %g4.id%
~
#79409
тощийорет~
0 z 100
*~
wait 1s
крич Из-за леса из-за гор
крич Показал мужик топор,
крич Да не просто показал,
крич Его к "шее" привязал.
wait 1s
calcuid g2 79411 mob
exec 79410 %g2.id%
~
#79410
тонкийорет~
0 z 100
*~
wait 1s
крич По деревне ходют утки,
крич Серенькие крякают.
крич Свою милую "целую", 
крич Только серьги звякают.
wait 1s
calcuid g1 79409 mob
exec 79411 %g1.id%
~
#79411
худойорет~
0 z 100
*~
wait 1s
крич По деревне шел Иван, 
крич Был мороз трескучий.
крич У Ивана "шарф" стоял,
крич Так, на всякий случай.
wait 1s
calcuid g5 79412 mob
exec 79412 %g5.id%
~
#79412
рулевойорет~
0 z 100
*~
context 794
wait 1s
крич ЭГЕГЕЙ, Потапыч, пошли гонца к волоку, пусть нас ждут через два дня!
wait 10s
%teleport% %pman% 79402
calcuid q1 79402 room
exec 79413 %q1.id%
~
#79413
высадканаволоку~
2 z 100
*~
context 794
wait 2
%pman.wait(13)%
wait 20
wecho _Ветер стих, целый день пути на веслах вверх по реке Березине и лодья сворачивает в 
wecho _небольшую болотистую протоку. Очень медленно и аккуратно вы пробирались по узкой протоке, 
wecho _постоянно ощупывая глубину шестами. Еще один день по протоке и вы выходите к волоку, где 
wecho _вас уже ждут деревенские мужики с конями-тяжеловозами и круглыми бревнами-катками.
wait 7s
%teleport% %pman% 79411
wait 2s
wsend %actor% _Лишь только вы с помощью коней и такой-то матери выволокли лодью на берег, как из 
wsend %actor% _ближайшей рощи раздался жуткий рев, и на вас поперли из лесу дикие звери. Мужики 
wsend %actor% _побросали веревки и коней и в ужасе разбежались.
wait 4s
calcuid em 79415 mob
exec 79414 %em.id%
~
#79414
емельянботает~
0 z 100
*~
wait 10
say Вот что, друже, давай-ка, отрабатывай харчи!
say Покажи мне, что не зря я тебя взял в охрану. 
say Иди сейчас же и разберись, что тут происходит!
~
#79415
ройсдох~
0 f 100
*~
calcuid e1 79413 room
attach 79416 %e1.id%
~
#79416
прислоняемсяксосне~
2 c 100
прислониться~
context 794
if !(%arg.contains(к ели)% || %arg.contains(к сосне)%)
  wsend %actor% _Чаго? Куды? Зачем? Ась?!..
  return 0
  halt 
end
wsend %actor% Попытавшись облокотиться о ель, Вы провалились сквозь нее! Ель оказалась обычным мороком!
%teleport% %pman% 79416
if (%exist.mob(79421)%)
  calcuid f1 79421 mob
  exec 79420 %f1.id%
end
~
#79417
волхвсдох~
0 f 100
*~
mload obj 79404
~
#79418
даемкупцупергамент~
0 j 100
*~
context 794
if %object.vnum% != 79404
  return 0
  дум
  wait 1s
  вопрос .%actor.name%
  halt
end
wait 1
mpurge %object%
wait 5
wait 10
mecho Емельян прочитал пергамент и с улыбкой хлопнул Вас по плечу.
wait 10
say Ай, молодца! Этот волхв давно мне делает пакости, да все никак не могли найти где он прячется. 
say Теперь проблем в торговле будет меньше. Но ты не расслабляйся, впереди северные земли, 
say где влияние готов гораздо выше. Главные неприятности впереди.
wait 10
взд
wait 10
say Пойду соберу мужичье, надо скорей пройти волок!
if !%actor.quested(79403)%
  %actor.setquest(79403)%
  %actor.exp(+200000)%
  wait 5
  msend %actor% Вы заметили, что Ваш опыт увеличился.
end
wait 20
%pman.wait(5)%
%teleport% %pman% 79417
wait 20
calcuid a1 79417 room
exec 79419 %a1.id%
~
#79419
отплываем~
2 z 100
~
wait 10
wecho _Вы быстро прошли остаток волока и спустили лодью в приток Западной Двины. 
wecho _Подгоняемые быстрым течением и попутным ветром, вы спустя пару дней вошли в 
wecho _полноводную и широкую Двину.
wait 7s
calcuid qt1 79417 room
exec 79421 %qt1.id%
~
#79420
волхвкаститфаер~
0 z 100
~
context 794
wait 5
ко !огне шар! .%pman.name%
~
#79421
началосечисполоцанами~
2 z 100
*~
context 794
wait 5
wsend %actor% _Лишь только миновали вы город Полоцк, как с правого берега реки к вам наперерез выскочил
wsend %actor% _корявый струг. Хоть и скроен кое-как, но уж больно много на нем гребцов.
wsend %actor% _Да и ветер как раз стих.
wait 15
wsend %actor% _Струг настиг ваш корабль и завязалась быстротечная речная сеча.
wait 2s
%teleport% %pman% 79422
wait 3
calcuid qtx 79426 room
attach 79422 %qtx.id%
~
#79422
дамагаем~
2 ez 100
*~
context 794
wait 7s 
wsend %pman% Меткая стрела "пастушка" вонзилась Вам прямо в филейную часть.
wdamage %pman% 110
exec 79449 %self.id%
~
#79423
вожакпомер~
0 f 100
*~
mload obj 79408
calcuid qtx 79426 room
detach 79422 %qtx.id%
~
#79424
даемкупцупергамент2~
0 j 100
*~
if %object.vnum% != 79408
  return 0
  дум
  wait 1s
  вопрос .%actor.name%
  halt
end
wait 1
mpurge %object%
wait 2s
эм начал читать пергамент
wait 10
say Оказывается, у Полоцка на нас все время нападали стражники переодетые ушкуйниками!
say Вот почему глава Полоцкой стражи ничего не предпринимал для их поимки.
say Так держать, глядишь и доберемся с тобой до Ладоги!
if !%actor.quested(79404)%
  %actor.setquest(79404)%
  %actor.exp(+250000)%
  wait 14
  msend %actor% Вы заметили, что Ваш опыт увеличился.
end
wait 1s
mteleport %actor% 79430
wait 20
calcuid ao1 79430 room
exec 79425 %ao1.id%
~
#79425
утопилистругиотплыли~
2 z 100
*~
context 794
wait 2
%pman.wait(3)%
wsend %pman% _Как только струг был пущен на дно, парус лодьи наполнился попутным ветром, и лодка
wsend %pman% _быстро заскользила вниз по Двине. Два гребца погибли в бою, и если ветер стихнет, то и
wsend %pman% _помошнику с купцом придется сесть на весла. До устья Двины и выхода в Балтийское море
wsend %pman% _осталось всего дней десять пути.
wait 10s
%pman.wait(7)%
wsend %pman% _Благополучно выйдя в море, лодья взяла курс прямо на середину Рижского залива.
wsend %pman% _В широком заливе выследить одинокий корабль почти невозможно. Но в конце залива
wsend %pman% _придется повернуть ближе к материку, в пролив между островом Эзель и ливскими землями.
Wait 5s
wsend %pman% _Только лодья подошла к восточной оконечности острова Эзель, как ей наперерез, прямо из
wsend %pman% _скал, вынырнула шняка с варяжским рисунком на парусе. И вроде парус у лодьи больше, и
wsend %pman% _гребцы стараются изо всех сил, да только вода стала густой, словно каша, а воздух -
wsend %pman% _плотным как кисель.
Wait 30
wsend %pman% _Купец Емельян в отчаянии рвет волосы на ж...ивоте. Надо было брать мага, сейчас бы
wsend %pman% _развеял вражеское заклинание, и лодья ушла без боя. Если бы, да кабы, ...,
wsend %pman% _шняка догнала вас и в левый борт со стуком вонзились абордажные кошки.
Wait 30
%teleport% %pman% 79433
~
#79426
уплываемнафиг~
2 c 100
грести~
context 794
set str берег
if %arg% == %str%
  wsend %actor% Йа йа, натюрлих, грести берег, велика и могуча русская языка.
  return 0
  halt 
end
if !%arg.contains(к берегу)%
  %actor.wait(3)%
  wsend %actor% Ты собираешся грести в открытое море? Через три дня мотания по волнам умрешь от голода, и появится:
  wsend %actor% &RR.I.P. Добро пожаловать!&n
  wsend %actor% _
  wsend %actor% 0) Отсоединиться.
  wsend %actor% 1) Начать игру.
  wsend %actor% 2) Ввести описание Вашего персонажа.
  wsend %actor% 3) Узнать историю.
  wsend %actor% 4) Изменить пароль.
  wsend %actor% 5) Удалить персонаж.
  wsend %actor% _
  wsend %actor% Чего Ваша душа желает ?
  wsend %actor% _
  wsend %actor% _
  wsend %actor% _
  wsend %actor% _
  wait 3s
  wsend %actor% А теперь еще раз спокойно подумай, куда ты хочешь грести.
  halt 
end
%teleport% %pman% 79442
wait 20
%actor.wait(1)%
wsend %actor% _Вы уселись на весла и мощными гребками погнали лодку к небольшому фиорду,
wsend %actor% _откуда, как Вам показалось, выскочил вражеский корабль.
wait 40
calcuid f2 79440 mob
exec 79427 %f2.id%
~
#79427
агримемелю~
0 z 100
~
wait 3
calcuid e12 79442 mob
ко !гнев богов! %e12.name%
~
#79428
емелясдох~
0 f 100
*~
context 794
calcuid kon10 13341 room
%teleport% %pman% 13341
attach 79429 %kon10.id%
exec 79429 %kon10.id%
~
#79429
залажаликвест~
2 z 100
*~
context 794
wait 3
wsend %pman% _После смерти купца, едва избежав рабства, Вы долго скитались по морю,
wsend %pman% _и уже совсем отчаявшись склонились перед неизбежной смертью.
wsend %pman% _Но, к счастью, Ваше, уже истощенное тело случайно выбросило на берег.
eval nHit %pman.hitp%+1
wdamage %pman% %nHit%
~
#79430
заходимкконунгу~
0 q 100
*~
wait 1s
say Что, малышня, приш%actor.y% убить меня?
оскал
wait 25
say Да плевал я на этих готов, вонючие торгаши, захотели купить меня за 30 кун.
плю
wait 25
say Меня, водившего флот из 40 драккаров за 3 северных моря!
wait 10
рыч
wait 1s
say Заплати мне 1000 и я отдам тебе их грамоту.
detach 79430 %self.id%
~
#79431
даембабкиконунгу~
0 m 100
*~
context 794
wait 1
if %amount% < 1000 then
  wait 10
  say Ах ты жадюга!
  убить .%pman.name%
  detach 79430 %self.id%
  halt
end
wait 1
ул
wait 3
mload obj 79410
дать все .%pman.name%
detach 79430 %self.id%
detach 79432 %self.id%
detach 79431 %self.id%
~
#79432
конунгпомер~
0 f 100
*~
mload obj 79410
~
#79433
даемпергаменткупцу~
0 j 100
*~
if %object.vnum% != 79410
  return 0
  дум
  wait 1s
  вопрос .%actor.name%
  halt
end
context 794
wait 1
mpurge %object%
wait 5
wait 20
say Варяги - опасные противники на море. Хорошо, что мы нашли их лагерь.
say Больше они нас не побеспокоят. Спасибо тебе, ты избавил%actor.g% меня еще от одной проблемы.
wait 10
if !%actor.quested(79405)%
  %actor.setquest(79405)%
  %actor.exp(+250000)%
  wait 5
  msend %actor% Вы заметили, что Ваш опыт увеличился.
end
%pman.wait(12)%
wait 1s
msend %actor% На той же варяжской лодке Вы погребли к лодье, чтобы отправиться дальше.
wait 5s
mteleport %actor% 79429
msend %actor% _Оставалась еще четверть пути - через весь Финский залив и Неву в Ладогу. Пока вы плыли к лодье,
msend %actor% _Емельян рассказал, что оставшийся путь самый безопасный. По Финскому заливу лодья пройдет вдали
msend %actor% _от берега, а Неву и восток залива полностью контролирует могучее Новгородское княжество
msend %actor% _и нападения в этих землях крайне редки.
wait 20
calcuid a17 79429 room
exec 79434 %a17.id%
~
#79434
плывемкостровуотшельников~
2 z 100
*~
context 794
wait 3s
wsend %actor% _Как обещал купец, так все и вышло. Седьмица пути по заливу была на редкость скучной - берега
wsend %actor% _не видно, ветер попутный, но не сильный, светило солнце. Да и когда вошли в Неву, веселее
wsend %actor% _не стало, пришлось сесть на весла и грести против течения. Слава Богу, вот уже и Ладога
wsend %actor% _рядом. Лишь перед самым городом вы остановились на маленьком островке, чтобы помыться,
wsend %actor% _постираться, привести в порядок корабль, и затем нарядными и красивыми войти в город.
wait 5s
%teleport% %pman% 79445
calcuid emel56 79448 mob
exec 79435 %emel56.id%
~
#79435
емелягритподождать~
0 z 100
*~
wait 20
say Поброди по острову, зайди к отшельнику.
say У тебя есть еще пара часов, пока мы отдыхаем и приводим себя в порядок.
wait 240s
attach 79436 %self.id%
~
#79436
плывемвладогу!~
0 r 100
*~
context 794
wait 10
wsend %actor% Быстро собравшись и отчалив, Вы вмиг добрались до Ладоги.
calcuid last12 79450 room
attach 79447 %last12.id%
exec 79447 %last12.id%
%teleport% %pman% 79450
detach 79436 %self.id%
~
#79437
отшельниггрит~
0 r 100
*~
if %pman.quested(79401)%
  say Оставь, друже, меня в покое.
  эм отхлебнул из кружки.
  halt
end
wait 10
mecho Отшельник опрокинул кружку белого вина и молвил хорошо поставленным, но слегка хрипловатым голосом...
г Господь внял моим молитвам и прислал героя. Какой ни есть, а дело у меня сложное, сгодишься.
wait 5
ул
wait 5
г Наконец я вышел из под опеки творца и стал сам себе хозяин.
wait 25
г Не понял%actor.g%? 
взд
wait 5
г Ну и шут с тобой. 
wait 25
г Короче. На острове белка. Мне мешает. Убей. Принеси мне труп. Понял%actor.g%, дерево?
mdoor  79446 west room 79448
attach 79438 %self.id%
detach 79437 %self.id%
~
#79438
нашел?~
0 r 100
*~
context 794
wait 10
г Наш%actor.y% белку?
вопр .%pman.name%
attach 79439 %self.id%
detach 79438 %self.id%
~
#79439
нет~
0 d 0
нет~
wait 1s
взд
wait 1s
г Вот и я не нашел. 
wait 10
взд
wait 20
г Ладно, давай выпьем, нечасто у меня компания бывает. Бери кружку, наливай вино из бутыли!
calcuid pit65 79447 room
attach 79440 %pit65.id%
detach 79439 %self.id%
~
#79440
пьемизкружчки1~
2 c 1
пи пит пить пить!~
if !%arg.contains(ч)%
  halt
end
*Есть ли объект в инвентаре
if !%actor.haveobj(79415)%
  %send% %actor% Вы не смогли это найти!
  halt
end
calcuid qqqq 79415 obj
*Если емкость не пустая
if (%qqqq.val1% > 0)
  %send% %actor% Вы выпили треть кружки. Емае, вот это табуретовка!
  %send% %actor% Из глаз хлынули слезы, взор помутился.
  calcuid pit65 79447 room
  attach 79441 %pit65.id%
  detach 79440 %pit65.id%
else
  *Если пустая
  %send% %actor% Пусто.
end
~
#79441
пьемизкружчки2~
2 c 1
пи пит пить пить!~
if !%arg.contains(ч)%
  halt
end
*Есть ли объект в инвентаре
if !%actor.haveobj(79415)%
  %send% %actor% Вы не смогли это найти!
  halt
end
calcuid qqqq 79415 obj
*Если емкость не пустая
if (%qqqq.val1% > 0)
  %send% %actor% Еще глоток и Вы уже сидите на полу, держась свободной рукой за край стола.
  %actor.position(6)%
  %actor.wait(1)%
  calcuid pit65 79447 room
  attach 79442 %pit65.id%
  detach 79441 %pit65.id%
else
  *Если пустая
  %send% %actor% Пусто.
end
~
#79442
пьемизкружчки3~
2 c 1
пи пит пить пить!~
if !%arg.contains(ч)%
  halt
end
*Есть ли объект в инвентаре
if !%actor.haveobj(79415)%
  %send% %actor% Вы не смогли это найти!
  halt
end
calcuid qqqq 79415 obj
*Если емкость не пустая
if %qqqq.val1%>0
  %send% %actor% Вы допили остатки водки, будто молотом по затылку.
  %send% %actor% Но вдруг перед глазами прояснилось. БЕЛКА!!!
  wload mob 79450   
  calcuid pit65 79447 room
  detach 79442 %pit65.id%
else
  *Если пустая
  %send% %actor% Пусто.
end
~
#79443
белкадамрет~
0 k 100
*~
calcuid pit65 79447 room
exec 79444 %pit65.id%
wait 1
mpurge %self%
~
#79444
бьемсябашкой~
2 z 100
*~
context 794
wait 10
%pman.wait(6)%
wsend %actor% Выхватив оружие, Вы бросились на белку, но, проскочив сквозь нее...
wsend %actor% &RВы врезались головой в угол стола и упали без сознания.&n
wdamage %actor% 250
%actor.position(5)%
wait 3s
wecho Прошло время.
wait 3s
if (%exist.mob(79449)%)
  calcuid ots45 79449 mob
  exec 79445 %ots45.id%
end
~
#79445
стариккряхтит~
0 z 100
*~
wait 20
эм держась двумя руками за голову прокряхтел
wait 25
г Ну что, видел%actor.g% белку? И откуда только это мерзкое животное берется?
attach 79446 %self.id%
~
#79446
гримотпьянства~
0 d 100
*~
if (%speech.contains(от)%) && ((%speech.contains(водки)%) || (%speech.contains(пьянки)%) || (%speech.contains(пьянства)%))
  wait 10
  эм с удивлением посмотрел на Вас
  wait 10
  г Ведь и правда, похоже, допился я до чертиков-белочек.
  wait 10
  г Все, завязываю, начинаю я с сегодняшнего дня аскезу и послушание.
  wait 10
  г А тебя за помощь научу умению на Руси главному!
  %pman.setquest(79401)% 
  eval maxskl %actor.remort%*5+90
  if %actor.skill(опохмелиться)% < %maxskl%
    mskilladd %actor.name% опохмелиться 10
  else
    дум %actor.name%
    г Извини, я уже ничему новому тебя не научу...
    вздох
  end
  wait 15
  if !%actor.quested(79406)%
    %actor.setquest(79406)%
    %actor.exp(+250000)%
    msend %actor% Вы заметили, что Ваш опыт увеличился.
  end
  detach 79446 %self.id%
else
  wait 5
  г Отчего-отчего?
end
~
#79447
лоадемеливЛадоге~
2 e 100
*~
wait 10
wload mob 79451
calcuid laste 79451 mob
exec 79448 %laste.id%
~
#79448
купецгрит~
0 z 100
*~
context 794
wait 2s
say Спасибо, выручил%pman.g% ты меня! 
wait 10
say Теперь вряд ли кого удастся нанять готским купцам, чтобы делать мне гадости.
say Я смогу спокойно путешествовать даже без охраны. 
wait 10
%self.gold(+5000)%
give 5000 кун .%pman.name%
if !%pman.quested(79400)%
  switch %actor.class%
    *тать
    case 2
      if (%world.curobjs(79419)% < 5) && (%random.1000% <= 300)
        mload obj 79419
        say Прими за свои труды это в подарок.
        дать все .%pman.name%
      end
    break
    *богатырь
    case 3
      if (%world.curobjs(79420)% < 5) && (%random.1000% <= 300)
        mload obj 79420
        say Прими за свои труды это в подарок.
        дать все .%pman.name%
      end
    break
    *наемник
    case 4
      if (%world.curobjs(79421)% < 5) && (%random.1000% <= 300)
        mload obj 79421
        say Прими за свои труды это в подарок.
        дать все .%pman.name%
      end
    break
    *друж
    case 5
      if (%world.curobjs(79422)% < 5) && (%random.1000% <= 300)
        mload obj 79422
        say Прими за свои труды это в подарок.
        дать все .%pman.name%
      end
    break
    *витязь
    case 9
      if (%world.curobjs(79418)% < 5) && (%random.1000% <= 300)
        mload obj 79418
        say Прими за свои труды это в подарок.
        дать все .%pman.name%
      end
    break
    *охот
    case 10
      if (%world.curobjs(79423)% < 5) && (%random.1000% <= 300)
        mload obj 79423
        say Прими за свои труды это в подарок.
        дать все .%pman.name%
      end
    break
    *кузнец
    case 11
      if (%world.curobjs(79424)% < 5) && (%random.1000% <= 300)
        mload obj 79424
        say Прими за свои труды это в подарок.
        дать все .%pman.name%
      end
    break
    *купец
    case 12
      if (%world.curobjs(79417)% < 5) && (%random.1000% <= 300)
        mload obj 79417
        say Прими за свои труды это в подарок.
        дать все .%pman.name%
      end
    break
  done
end
%pman.setquest(79400)% 
if (%actor.vnum% != -1)
  halt
else
  say Да, кстати, есть у меня здесь один знакомый, подготовивший не одного воина для
  say подвигов ратных. 
  wait 10
  say Коли желаешь стать мастером в каком-либо виде оружия - ты говори, не стесняйся, а я
  say договорюсь о твоем обучении.
  attach 79452 %self.id%
end
~
#79449
доптр~
2 z 100
*~
exec 79422 %self.id%
~
#79450
грузимЕмелюквестера~
2 z 100
*~
wload mob 79400
~
#79452
выбираеммастерскоеоружие~
0 d 100
*~
context 794
if %actor% != %pman%
  say Гм, тебе-то что нужно? Знать тебя не знаю.
  halt
end
wait 1
if (%speech.contains(мастер)% && (%speech.contains(меча)% && %pman.can_get_feat(мастер меча)%)
  set feat 0
elseif (%speech.contains(мастер)% && (%speech.contains(кулачного)% && %pman.can_get_feat(мастер кулачного)%)
  set feat 1
elseif (%speech.contains(мастер)% && (%speech.contains(палицы)% && %pman.can_get_feat(мастер палицы)%)
  set feat 2
elseif (%speech.contains(мастер)% && (%speech.contains(ножа)% && %pman.can_get_feat(мастер ножа)%)
  set feat 3
elseif (%speech.contains(мастер)% && (%speech.contains(необыч)% && %pman.can_get_feat(мастер необыч)%)
  set feat 4
elseif (%speech.contains(мастер)% && (%speech.contains(кинжал)% && %pman.can_get_feat(мастер кинжал)%)
  set feat 5
elseif (%speech.contains(мастер)% && (%speech.contains(копья)% && %pman.can_get_feat(мастер копья)%)
  set feat 6
elseif (%speech.contains(мастер)% && (%speech.contains(лучник)% && %pman.can_get_feat(мастер-лучник)%)
  set feat 7
elseif (%speech.contains(мастер)% && (%speech.contains(секиры)% && %pman.can_get_feat(мастер секиры)%)
  set feat 8
elseif (%speech.contains(мастер)% && (%speech.contains(двуручник)% && %pman.can_get_feat(мастер двуручник)%)
  set feat 9
else
  set feat -1
  эм внимательно осмотрел Вас
  г Неет, это явно не твое оружие.
  г Не стоит беспокоить учителя понапрасну.
  halt
end
msend %pman% _Купец провел Вас через город, какими-то закоулками и узкими двориками.
msend %pman% _Через час беготни он оставил Вас у небольшого ветхого домика, к которому вскоре подошел
msend %pman% _седой старик. Проведя два дня в напряженных тренировках, Вы стали мастером в любимом
msend %pman% _оружии.
switch %feat%
  case 0
    mfeatturn %pman% мастер.меча set
  break
  case 1
    mfeatturn %pman% мастер.кулачного set
  break
  case 2
    mfeatturn %pman% мастер.палиц set
  break
  case 3
    mfeatturn %pman% мастер.ножа set
  break
  case 4
    mfeatturn %pman% мастер.необыч set
  break
  case 5
    mfeatturn %pman% мастер.кинжал set
  break
  case 6
    mfeatturn %pman% мастер.копья set
  break
  case 7
    mfeatturn %pman% мастер-лучник set
  break
  case 8
    mfeatturn %pman% мастер.секиры set
  break
  case 9
    mfeatturn %pman% мастер.двуручника set
  break
done
eval temp %pman.setquest(79402)%
detach 79452 %self.id%
~
#79453
призагрузке~
0 n 100
~
wait 3
mecho В корчму зашел какой-то мужик, и, заказав кружку пива, сел за свободный столик.
~
$~
