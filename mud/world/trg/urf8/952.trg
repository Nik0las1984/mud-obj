#95200
трясем кедр~
1 c 100
трясти~
if !%arg.contains(кедр)%  
  osend %actor% _Что Вы хотите так мощно потрясти?
  halt
end
if %actor.str% > 24
  wait 5
  osend %actor% Вы вцепились в кедр своей мощной хваткой и чуть не вырвали его с корнем!
  oechoaround %actor% %actor.iname% вцепил%actor.u% в кедр и начал%actor.g% его лихо раскачивать.
  oecho Ветви кедра подозрительно зашевелились.
  wait 10
  oecho _И наступали тишина...
  wait 10
  oecho _Неожиданно с самой макушки кедра, что-то с грохотом шмякнулось о землю.
  oload mob 95200
  detach 95200 %self.id%
else
  osend %actor% Вы вцепились в кедр обоими руками, но не смогли его покачнуть.
  oechoaround %actor% %actor.iname% вцепил%actor.u% в кедр, но не смог%actor.q% его покачнуть.
end
~
#95201
залоадился кедровый змей~
0 n 100
~
wait 5
mecho _Кедровый змей:
mecho  - Ну блин и герои пошли!
mecho _- Только и норовят, как тебя в грязь втоптать.
mecho _- Да труп бездыханный полутить.
wait 5
mecho _- Чего тебе надо от меня и моего кедра!?
attach 95202 %self.id%
detach 95201 %self.id%
~
#95202
говорим со змеем~
0 d 0
шишка шишку~
wait 3
mecho _Кедровый змей:
mecho _- А!
mecho _- Это мои шишки!
думать
wait 10
switch %random.2%
  case 1
    mecho _- Ладно, вот тебе одна из моих шишек.
    mload obj 95201
    бросить шишка
    mecho _- Только смотри, больше ни одной не получишь!
  break
  case 2
    mecho _- Ну уж нет!
    mecho _- Я свои шишки ни кому не отдам!
    mecho _- Смерть тебе, попрошайка!
    dg_cast 'гнев богов' %actor.iname%
  break
done
detach 95202 %self.id%
~
#95203
РЕПОП~
2 f 100
~
* Репопим триггер на высоком кедре
if %exist.obj(95200)%
  calcuid fromid 95200 obj
  attach 95200 %fromid.id%
end
* Репопим триггеры на кедровом змее 
if %exist.mob(95200)%
  calcuid fromid 95200 mob
  attach 95201 %fromid.id%
  detach 95202 %fromid.id%
end
* Репопим триггер у лесного домика
calcuid fromid 95274 room
attach 95204 %fromid.id%
if %exist.mob(95201)%
  * Репопим триггер на лесном человеке (квестовом)
  calcuid fromid 95201 mob
  attach 95205 %fromid.id%
  attach 95206 %fromid.id%
  attach 95209 %fromid.id%
  attach 95211 %fromid.id%
  detach 95207 %fromid.id%
  detach 95208 %fromid.id%
end
* Репоп трига на худом дозорном
calcuid fromid 95214 mob
attach 95213 %fromid.id% 
* Репоп тригов на главном страже и закрытие ворот
calcuid fromid 95216 mob
attach 95219 %fromid.id% 
attach 95221 %fromid.id% 
wdoor 95250 south purge room 95253
wdoor 95253 north purge room 95250
* Репоп трига на раненом страже
calcuid fromid 95217 mob
attach 95220 %fromid.id% 
* Репоп трига на историке
calcuid fromid 95218 mob
attach 95223 %fromid.id% 
* Репоп трига на статуе
calcuid fromid 95236 obj
attach 95224 %fromid.id% 
* Репоп тригов на хранителе храма
calcuid fromid 95222 mob
attach 95225 %fromid.id%
attach 95226 %fromid.id%
* Репоп тригов на страже внутренних ворот
calcuid fromid 95221 mob
attach 95227 %fromid.id%
attach 95228 %fromid.id%
* Репоп тригов на кузнеце
calcuid fromid 95219 mob
attach 95229 %fromid.id%
attach 95230 %fromid.id% 
detach 95231 %fromid.id% 
* Репоп тригов на старейшине
calcuid fromid 95223 mob
attach 95234 %fromid.id%
attach 95235 %fromid.id%
* Удаляем двери в лесной домик
wdoor 95277 east purge room 95274 
wdoor 95274 west purge room 95277 
* Квестовые переменные
set quest1 0
set quest2 0
set quest3 0
global quest1
global quest2
global quest3
~
#95204
стучимся в дверь лесного домика~
2 c 1
стучать~
wait 1
if !%arg.contains(дверь)%  
  wsend %actor% _Еще по голове себе постучи!
  halt
end
wait 5
wsend %actor% _Вы любезно брякнули ногой по двери.
wechoaround %actor% _%actor.iname% аккуратно брякнул%actor.g% ногой в дверь.
wait 1
wecho _Тук! Тук!
switch %random.4%
  case 1
    wecho _За дверью послышались какие-то шорохи...
    wait 5
    wecho _Голос из-за двери:
    wecho _- Чего тебе надо, какого хрена сюда занесло?!
    wecho _- Ща как дам в рыло!
    wecho _- Знаю я вас героев!
    wait 15
    set char %actor%
    *set char %random.pc%
    wecho _Внезапно дверь немного приоткрылась 
    wecho _и из-за нее показалась исполинских размеров волосатая рука.
    wsend %char% _Которая с силой вцепилась Вам в горло.
    wsend %char% _От такой хватки, вы на мгновение потеряли сознание.
    %char.wait(3)%
    wechoaround %char% _Которая в ту же секунду схватила %char.vname% за горло
    if %char.sex% == 1 
      wechoaround %char% _И стремительно исчезла с ним за дверью!
    else
      wechoaround %char% _И стремительно исчезла с ней за дверью!
    end
    wat 95277 wload mob 95201
    set quester %char%
    global quester
    wteleport %char% 95277
    wait 15
    wecho _Из-за двери послышалась какая-то возня и невнятные крики.
    wecho _Но буквально через несколько секунд все утихло...
    wait 15
    wecho Кровушка стынет от чьего-то предсмертного крика!
    detach 95204 %self.id%
  break
  case 2
    wecho _Видно хозяева спят и не желают открывать Вам двери.
  break
  case 3
    wecho _За дверью послышался звук стаканов. Видно им не до Вас сейчас.
  break
  case 4
    wecho _Голос из-за двери:
    wecho _- Вали отсюда!
  break
done
~
#95205
игрока затащили в лесной домик~
0 n 100
~
wait 5
mecho _Лесной человек:
mecho _- Ну что за жизнь!
mecho _- Чего тебе здесь надо?
wait 3
mecho _- Хотя нет, молчи! 
mecho _- Давай я сам угадаю.
думать
wait 2s
mecho  - Наверное, ты хочешь попасть к новому храму этих наемников.
mecho _- Теперь только я знаю, как к нему попасть.
mecho _- Я правильно угадал?
attach 95207 %self.id%
~
#95206
дали кедровую шишку или шкуру белки~
0 j 100
~
* Дали мобу кедровую шишку
if (%object.vnum% == 95201) && (%quester.id% == %actor.id%)
  set quest2 1
  global quest2
  wait 1
  mpurge %object%
  mecho _Лесной человек:
  mecho _- Какая хорошая шишка!
  mecho _- Большая!
  mecho _- Отложу я ее на черный день.
  exec 95211 %self.id%
else
  mecho _Лесной человек явно чем-то не доволен.
  бросить %object.iname%
end
* Дали мобу беличью шкуру
if (%object.vnum% == 95212) && (%quester.id% == %actor.id%)
  set quest3 1
  global quest3
  wait 1
  mpurge %object%
  mecho _Лесной человек:
  mecho _- Да, славная шкурка.
  mecho _- Зимой она мне хорошо поможет.
  радов
  exec 95211 %self.id%
else
  mecho _Лесной человек явно чем-то не доволен.
  бросить %object.iname%
end
~
#95207
говорим с лесным человеком_1~
0 d 0
да~
wait 10
mecho _Лесной человек:
mecho _- Ну все вы только и умеете, что говорить "да" да "помогу".
mecho  - На другое ваши геройские головы и не способны небось.
wait 10
mecho _- Ну да ладно.
mecho _- Думаю, я смогу тебе помочь.
думать
wait 15
mecho _- Но вот за это, как ты наверно уже понял%actor.g%, нужно будет мне услугу оказать.
ржа
wait 15
mecho  - Есть у меня пара заданий для тебя.
mecho _- Так будем сотрудничать?
attach 95208 %self.id%
detach 95207 %self.id%
~
#95208
говорим с лесным человеком_2~
0 d 0
да хорошо будем~
set quester %actor%
global quester
wait 5
if %speech% == да
  mecho _Лесной человек:
  mecho _- Опять это слово "да".
  плакать
end
wait 15
mecho _- Ладно.
mecho  - Во-первых, принеси мне кедровую шишку.
mecho _- Жуть как хочу орехов кедровых откушать.
mecho  - Но с тех пор, как там змей поселился, даже подходить страшно.
дрожать
wait 15
mecho _- Во вторых, добудь мне шкуру дикой белки, что на просеке старой обитает.
mecho _- А то зима здесь длинная, а мерзнуть мне уже надоело изрядно.
wait 15
mecho _- Ну и на последок, я думаю, займись своим любимым делом.
mecho _- Найди, обитающую в здешних краях банду, да истреби ее.
mecho _- Чтобы знали, как на меня в лесу нападать, когда я там прогуливаюсь.
wait 20
mecho _- Ну все, иди от сель.
mecho _- Как все сделаешь, приходи...
mecho _- Только стучи погромче, а то я глуховат немного.
mecho _Лесной человек схватил Вас за шиворот и приоткрыв дверь выкинул на улицу.
mat 95274 mecho _Дверь немного приоткрылась и из образовавшегося проема кубарем вылетел%actor.g% %actor.iname%.
mteleport %actor% 95274
mdoor 95277 east room 95274 
mdoor 95274 west room 95277  
detach 95208 %self.id%
~
#95209
зашли к лесному человеку~
0 r 100
~
if (!%exist.mob(95204)%) && (%actor.id% == %quester.id%) && (%quest1% == 0)
  set quest1 1
  global quest1
  wait 15
  mecho _Лесной человек:
  mecho _- А. Это снова ты.
  mecho _- Уже знаю, что разбойники эти мертвы.
  mecho _- Говорят на них напали звери лесные.
  mecho _- Но мы то знаем, что это были за звери.
  хих
  exec 95211 %self.id%
  detach 95209 %self.id%
end
~
#95210
убили большую белку~
0 f 100
~
if %world.curobjs(81012)% == 0
  mload obj 95212
end
~
#95211
завершение квеста~
0 z 100
~
if (%quest1% == 1) && (%quest2% == 1) && (%quest3% == 1)
  wait 10
  mecho _Лесной человек:
  mecho _- Ладно! Ладно!
  mecho _- Убедил%actor.g% ты меня.
  wait 10
  mecho _- Помогу я вам добраться до нового храма наемников.
  wait 10
  mecho _Лесной человек быстро собрался и Вы двинулись в путь.
  mat 95249 mecho Кто-то еще вышел к храму.
  mteleport all 95249
  detach 95211 %self.id%
end
~
#95212
убили кедрового змея~
0 f 100
~
mload obj 95201
~
#95213
зашли к худому дозорному~
0 q 100
~
wait 5
msend %actor% _Худой дозорный тоскливо посмотрел на Вас.
mechoaround %actor% _Худой дозорный тоскливо посмотрел на %actor.vname%.
wait 3s
mecho _Худой дозорный:
mecho _- Тоже пришел потешаться на до мной?!
mecho _- Так знай, никто не сможет справиться с этим чудищем!
mecho _- Вот, тебе ключ от той двери, если не веришь, то сам%actor.g% убедись.
mload obj 95213
дать ключ %actor.iname%
wait 15
mecho _- И скажи главному стражу, что даже он не справится с ним!
mecho _- Я не собираюсь отвечать за всех.
wait 10
msend %actor% _Худой дозорный отвернулся от Вас.
mechoaround %actor% _Худой дозорный отвернулся от %actor.rname%.
detach 95213 %self.id%
~
#95214
убили большого орла~
0 f 100
~
mload obj 95232
~
#95215
дали что-то худому дозорному~
0 j 100
~
wait 1
if %object.vnum% == 95232
  mpurge %object%
  wait 15
  mecho _Худой дозорный:
  mecho _- Неужели тебе ужалось победить это существо?!
  mecho _- Но мне это перо совсем не нужно.
  wait 15
  mecho _- Хотя...
  mecho _По блеску в глазах дозорного, Вы поняли, что эту победу он решил присвоить себе.
  wait 5
  msend %actor% _С диким криком худой дозорный набросился на Вас!
  attack %actor.iname%
  mechoaround %actor% _С дикими криком худой дозорный накинулся на %actor.rname%!
else
  mpurge %object%
  mecho _Худой дозорный:
  mecho _- Хорошая вещичка.
  mecho _- Оставлю уж я ее себе.
end
~
#95216
убили худого дозорного~
0 f 100
~
if (!%exist.mob(95215)%) && (%world.gameobjs(95232)% == 0)
  mload obj 95232
end
~
#95217
бой с большим орлом_1~
0 k 5
~
set char %random.pc%
msend %char% Сильнейшим ударом крыла большой орел завалил Вас на землю!
%char.position(6)%
%char.wait(6)%
mechoaround %char% Сильнейшим ударом крыла большой орел завалил %char.vname% на землю!
~
#95218
бой с большим орлом_2~
0 k 5
~
mecho _Большой орел взмахнул крыльями из которых полетели мелкие стальные иглы!
foreach char %self.char%
  if %random.2% == 1
    msend %char% _В Вас попала одна из игл, вылетевшая из крыла орла!
    mechoaround %actor% _Одна из игл, выпущенная орлом, угодила прямо в %actor.vname%!
    mdamage %char% 150
  end
done
~
#95219
зашли к главному стражу~
0 r 100
~
wait 5
mecho _Главный страж:
mecho _- Так!
mecho _- А ну стой малявка!
wait 5
msend %actor% _Главный страж внимательно посмотрел на Вас.
mechoaround %actor% _Главный страж внимательно осмотрел %actor.rname%.
wait 15
mecho _- А ну хватит на меня пялить свои глазенки!
mecho _- А то, ща как врежу!
wait 10
msend %actor% _Мощным ударом главный страж попортил Вам лицо!
mdamage %actor% 400
mechoaround %actor% Мощным ударом главный страж врезал по лицу %actor.rname%!
рычать %actor.iname%
wait 15
mecho _- А ты что, надеешься, что я тебя, такую малявку, внутрь пропущу?!
mecho _- Забудь про это!
ржать
wait 10
mecho _- Тебе придется меня сильно удивить, чтобы я передумал.
mecho _- Иди от сюда, не мельтеши под ногами.
detach 95219 %self.id%
~
#95220
зашли к раненому стражу~
0 q 100
~
wait 5
mecho _Раненый страж:
mecho _- Ох!
mecho _- Не ходи наверх!
mecho _- Прилетел туда зверь какой-то!
mecho _- А может и не зверь это вовсе...
mecho _Раненый страж судорожно закашлял.
detach 95220 %self.id% 
~
#95221
дали стальное перо главному стражу~
0 j 100
~
wait 1
if %object.vnum% == 95232
  mpurge %object%
  msend %actor% _Главный страж удивленно посмотрел на Вас.
  mechoaround %actor% _Главный страж удивленно посмотрел на %actor.vname%.
  wait 15
  mecho _Главный страж:
  mecho _- Не ожидал... не ожидал.
  mecho _- Мои лучшие воины не смогли с ним справиться, а ты...
  mecho _- Как же ты смог%actor.q%?!
  wait 15
  mecho _- Да это не важно!
  wait 15
  mecho _- Признаюсь, тебе удалось меня удивить.
  mecho _- И как я и говорил, я пропущу тебя.
  mecho _- Вот тебе разрешение на вход во внутренний храм.
  mload obj 95238
  дать разреш %actor.iname%
  mecho _- Отдашь его хранителю... и лучше не спорь с ним.
  wait 10
  mecho _- Но не думай, что теперь тебе все дозволено!
  mecho _- Мы будем приглядывать за тобой...
  wait 20
  mecho _Главный страж навалился на длинный рычаг, торчащий из стены.
  mecho _Все вокруг загрохотало и створки ворот медленно распахнулись.
  mdoor 95250 south room 95253
  mdoor 95253 north room 95250
  detach 95221 %self.id%
else
  mecho _Главный страж: 
  mecho _- Я не думаю, что ЭТО поможет тебе попасть внутрь.
  бросить %object.iname%
end
~
#95222
закрываются ворота храма~
2 e 100
~
wait 2s
wecho _Гулкий звук прокатился по залу и створки ворот медленно сомкнулись.
wdoor 95250 south purge room 95253
wdoor 95253 north purge room 95250
~
#95223
зашли к историку~
0 q 100
~
wait 3
mecho _Историк:
mecho _- Ну заходи, не бойся.
mecho _- Здесь показана вся история храма наемников!
mecho _- Вот те статуи...
mecho _Историк указал на несколько статуй, стоящих у него за спиной.
mecho _- Это наши самые известные воины, прославившие своих учителей.
wait 5
mecho _Историк тихо прокашлялся.
wait 15 
mecho _- Уж извини, не могу я тебе все рассказать.
mecho _- Приболел немного.
detach 95223 %self.id%
~
#95224
двигаем статую~
1 c 100
двигать~
if !%arg.contains(статуя)%
  osend %actor% _Что будем двигать то?
  halt
end
osend %actor% _Вы приложили массу усилий и сдвинули статую в сторону.
osend %actor% _На том месте, где она стояла Вы увидели небольшой проем.
osend %actor% _В котором лежит какой-то мешочек.
oechoaround %actior% %actor.iname% сдвинул%actor.g% статую в сторону.
oload obj 95237
detach 95224 %self.id%
~
#95225
зашли к хранителю храма~
0 q 100
~
wait 3
msend %actor% _Хранитель храма с презрением посмотрел на Вас.
mechoaround %actor% _Хранитель храма с презрением посмотрел на %actor.vname%.
wait 15
mecho _Хранитель храма:
mecho _- Что ты здесь делаешь... смертный!
mecho _- Как ты смеешь приближаться к вратам Храма без разрешения!
mecho  - Говори, что тебе здесь надо или уходи.
detach 95225 %self.id%
~
#95226
дали что-то хранителю~
0 j 100
~
wait 1
if %object.vnum% == 95238
  mpurge %object%
  wait 10
  хох
  mecho _Хранитель храма:
  mecho  - И ты подумал%actor.g%, что этот жалкий клочок бересты поможет тебе попасть внутрь?
  mecho _Хранитель дико рассмеялся и разорвал разрешение на мелкие клочки.
  wait 15
  mecho  - Вали отсюда малявка, пока мне не пришлось порубить тебя на куски!
  calcuid fromid 95221 mob
  exec 95227 %fromid.id%
  halt
end
if %object.vnum% == 95239
  mpurge %object% 
  думать
  wait 10
  mecho _Хранитель храма:
  mecho  - Не знаю, как ты узнал%actor.g% о том, что я давно желал заполучить этот меч.
  mecho _- Но это хороший знак усердия с твоей стороны.
  wait 15
  mecho _- Вот тебе ключ от этих ворот.
  mload obj 95240
  дать ключ %actor.iname%
  mecho _- Сам%actor.g% их открывай, мне лень...
  halt
end
mecho _Хранитель храма:
mecho _- Зачем мне это?
бросить %object.iname%
~
#95227
говорит страж внутренних ворот~
0 z 100
~
wait 10
mecho _Страж ворот:
mecho _- Эй... тиха... не кричи.
wait 2s
mecho _Страж ворот дождался пока хранитель Храма отвернется и продолжил:
mecho _- Ты хочешь попасть внутрь?
mecho _- Я знаю как это сделать, но...
wait 2s
mecho _- Но, за этот секрет надо будет заплатить.
mecho _- Думаю 5000 кун будет достаточно.
ул
detach 95227 %self.id%
~
#95228
дали стражу внутренних ворот куны~
0 m 100
~
wait 10
if %amount% < 5000
  mecho _Страж ворот:
  mecho _- Маловато будет.
  дать %amount% кун %actor.iname%
  halt
end
mecho _Страж ворот:
mecho _- Хранитель давно мечтает о мече, что кузнец наш выковал.
mecho  - Да только тот ни как не хочет его прода...
mecho _Страж ворот резко прервался.
calcuid fromid 95219 mob
detach 95230 %fromid.id%
attach 95231 %fromid.id%
detach 95228 %self.id%
~
#95229
зашли к кузнецу~
0 q 100
~
wait 5
mecho _Кузнец:
mecho _- О, славный воин!
mecho _- Хочешь что-то купить?
~
#95230
сказали кузнецу "меч" но при этом еще не говорили со стражем~
0 d 0
меч~
wait 5
mecho _Кузнец:
mecho _- А... 
mecho _- Я давно уже мечи не делаю.
mecho _- Вот, может, лучше ножичек купи!
~
#95231
сказали кузнецу "меч" и поговорили со стражем~
0 d 0
меч~
wait 10
mecho _Кузнец:
switch %random.2%
  case 1
    mecho _- Ладно, я уже намаялся с этим мечем.
    mecho _- Вот держи его бесплатно, только убери его от меня подальше.
    mload obj 95239
    дать меч %actor.iname%
    mecho _- Он и так принес мне кучу проблем.
  break
  case 2
    mecho  - Нет у меня никакого меча и никогда не было!
    mecho _- И больше не спрашивай!
  break
done
detach 95231 %self.id%
~
#95232
смерть кузнеца~
0 f 100
~
if %world.gameobjs(95239)% == 0
  mload obj 95239
end
~
#95233
смерть хранителя храма~
0 f 100
~
if %world.curobjs(95240)% == 0
  mload obj 95240
end
if (%random.100% <= 5)
  mload obj 103
end
~
#95234
зашли к старейшинам~
0 r 100
~
wait 15
mecho _Седой старейшина:
mecho _- Приветствуем тех, что смог выдержать все невзгоды и дойти до этого места.
mecho _Седой старейшина жестом поприветствовал Вас.
wait 1s
mecho  Высокий, рыжеволосый человек с явной неохотой последовал за ним.
wait 2s
mecho _Величественный воин:
mecho _- Я приветствуют Вас.
mecho _- Вы не побоялись пройти через очень опасный лес.
mecho _- Немногие это смогли бы повторить.
mecho _Величественный воин жестом поприветствовал Вас.
wait 1s
mecho _Седой старейшина задумался и отошел в сторону.
wait 2s
mecho _Высокий старейшина:
mecho _- А что Вам здесь надо?
mecho _- Зачем Вы беспокоите нас.
mecho _- Небось со всякой ерундой ведь приперлись!
wait 2s
mecho _Величественный воин:
mecho _- Возможно, кто-то из Вас хочет учиться у нас?
mecho _- Если да, то кто же?
detach 95234 %self.id%
~
#95235
говорим со старейшинами и получаем награду~
0 d 0
я~
eval skl %actor.remort%*5+81
* Если персонаж меньше 28 уровня, то даем только опыт
if %actor.level% < 28
  msend %actor% _Величественный воин осмотрел Вас с головы до пят.
  mechoaround %actor% _Величественный воин осмотрел %actor.vname% с головы до пят.
  mecho _Величественный воин задумался и отошел в сторону к другим старейшинам.
  wait 20
  mecho _Седой старейшина:
  mecho _- Мы посовещались, и решили, что ты еще не дорос%actor.q% чтобы обучаться у нас.
  mecho _- Приходи, когда станешь немного поопытнее.
  mecho _- Но кое-чему все же мы тебя сможем обучить.
  msend %actor% _Прослушав пару уроков и проведя тренировки, Вы стали немного опытнее.
  %actor.exp(+2500000)%
else
  * ---------------------------------------------------------------------------------------
  * Учим персонажа умению/заклинанию или повышаем уровень умения
  mecho _Седой старейшина:
  mecho  - Мы посовещались, и решили немного подучить тебя, с учетом твоей профессии.
  mecho _- Но учти, занятия будут сложными и долгими!
  wait 10
  switch %actor.class%
    * -------------------------------------- Лекарь -----------------------------------------
    case 0
      if ((!%actor.skill(лечить)%) && (%actor.can_get_skill(лечить)%))
        msend %actor% Вы постигли умение "лечить".
        mskillturn %actor% лечить set
      elseif %actor.skill(лечить)% < %skl%
        msend %actor% Вы стали намного опытнее в умении "лечить".
        mskilladd %actor% лечить 10
      else
        msend %actor% _Вы стали немного опытнее.
        %actor.exp(+1000000)% 
      end   
    break
    * -------------------------------------- Колдун -----------------------------------------
    case 1
      if ((%random.1000% <= 30) && (%actor.can_get_spell(камнепад)%) && (!%actor.spelltype(камнепад)%))
        wspellturn %actor% камнепад set
        msend %actor% _Вы познали заклинание 'Камнепад'! 
      else
        msend %actor% _Вы стали немного опытнее. 
        %actor.exp(+1000000)%
      end
    break
    * --------------------------------------- Тать ------------------------------------------
    case 2
      if ((!%actor.skill(заколоть)%) && (%actor.can_get_skill(заколоть)%))
        msend %actor% Вы постигли умение "заколоть".
        mskillturn %actor% заколоть set
      elseif %actor.skill(заколоть)% < %skl%
        msend %actor% Вы стали намного опытнее в умении "заколоть".
        mskilladd %actor% заколоть 10
      else
        msend %actor% _Вы стали немного опытнее.
        %actor.exp(+1000000)% 
      end   
    break
    * -------------------------------------- Богатырь ---------------------------------------
    case 3
      if ((!%actor.skill(бог молот)%) && (%actor.can_get_skill(бог молот)%))
        msend %actor% Вы постигли умение "Богатырский молот".
        mskillturn %actor% бог.молот set
      elseif %actor.skill(бог молот)% < %skl%
        msend %actor% Вы стали намного опытнее в умении "Богатырский молот".
        mskilladd %actor% бог.молот 10
      else
        msend %actor% _Вы стали немного опытнее.
        %actor.exp(+1000000)% 
      end   
    break
    * --------------------------------------Наемник -----------------------------------------
    case 4
      if ((!%actor.skill(скрытый удар)%) && (%actor.can_get_skill(скрытый удар)%))
        msend %actor% Вы постигли умение "Скрытый удар".
        mskillturn %actor% скрытый.удар set
      elseif %actor.skill(скрытый удар)% < %skl%
        msend %actor% Вы стали намного опытнее в умении "Скрытый удар".
        mskilladd %actor% скрытый.удар 10
      else
        msend %actor% _Вы стали немного опытнее.
        %actor.exp(+1000000)% 
      end   
    break 
    * -------------------------------------- Дружинник --------------------------------------
    case 5
      if ((!%actor.skill(осторожный стиль)%) && (%actor.can_get_skill(осторожный стиль)%))
        msend %actor% Вы постигли умение "Осторожный стиль".
        mskillturn %actor% осторожный.стиль set
      elseif %actor.skill(осторожный стиль)% < %skl%
        msend %actor% Вы стали намного опытнее в умении "Осторожный стиль".
        mskilladd %actor% осторожный.стиль 10
      else
        msend %actor% _Вы стали немного опытнее.
        %actor.exp(+1000000)% 
      end   
    break
    * -------------------------------------- Кудесник ---------------------------------------
    case 6
      if ((%random.1000% <= 30) && (!%actor.spelltype(звук волна)%) && (%actor.can_get_spell(звук волна)%))
        wspellturn %actor% звук.волна set
        msend %actor% _Вы познали заклинание 'Звуковая волна'!
      else
        msend %actor% _Вы стали немного опытнее.
        %actor.exp(+1000000)%
      end
    break
    * -------------------------------------- Волшебник --------------------------------------
    case 7
      if ((%random.1000% <= 30) && (!%actor.spelltype(пылевая буря)%) && (%actor.can_get_spell(пылевая буря)%))
        wspellturn %actor% пыл.буря set
        msend %actor% _Вы познали заклинание 'Пылевая буря'! 
      else
        msend %actor% _Вы стали немного опытнее.
        %actor.exp(+1000000)%
      end
    break
    * ----------------------------------- Чернокнижник --------------------------------------
    case 8
      if ((%random.1000% <= 30) && (!%actor.spelltype(истощить энергию)%) && (%actor.can_get_spell(истощить энергию)%))
        wspellturn %actor% истощить.энергию set
        msend %actor% _Вы познали заклинание 'Истощить энергию'! 
      else
        msend %actor% _Вы стали немного опытнее.
        %actor.exp(+1000000)%
      end
    break
    * -------------------------------------- Витязь ------------------------------------------
    case 9
      if ((!%actor.skill(точный стиль)%) && (%actor.can_get_skill(точный стиль)%))
        msend %actor% Вы постигли умение "Точный стиль".
        mskillturn %actor% точный.стиль set
      elseif %actor.skill(точный стиль)% < %skl%
        msend %actor% Вы стали намного опытнее в умении "Точный стиль".
        mskilladd %actor% точный.стиль 10
      else
        msend %actor% _Вы стали немного опытнее.
        %actor.exp(+1000000)% 
      end   
    break
    * -------------------------------------- Охотник ----------------------------------------
    case 10
      if ((!%actor.skill(сбить)%) && (%actor.can_get_skill(сбить)%))
        msend %actor% Вы постигли умение "Сбить".
        mskillturn %actor% сбить set
      elseif %actor.skill(сбить)% < %skl%
        msend %actor% Вы стали намного опытнее в умении "Сбить".
        mskilladd %actor% сбить 10
      else
        msend %actor% _Вы стали немного опытнее.
        %actor.exp(+1000000)% 
      end   
    break
    * -------------------------------------- Кузнец -----------------------------------------
    case 11
      if ((!%actor.skill(оглушить)%) && (%actor.can_get_skill(оглушить)%))
        msend %actor% Вы постигли умение "Оглушить".
        mskillturn %actor% оглушить set
      elseif %actor.skill(оглушить)% < %skl%
        msend %actor% Вы стали намного опытнее в умении "Оглушить".
        mskilladd %actor% оглушить 10
      else
        msend %actor% _Вы стали немного опытнее.
        %actor.exp(+1000000)% 
      end   
    break
    * --------------------------------------- Купец -----------------------------------------
    case 12
      if ((!%actor.skill(метнуть)%) && (%actor.can_get_skill(метнуть)%))
        msend %actor% Вы постигли умение "Метнуть".
        mskillturn %actor% метнуть set
      elseif %actor.skill(метнуть)% < %skl%
        msend %actor% Вы стали намного опытнее в умении "Метнуть".
        mskilladd %actor% метнуть 10
      else
        msend %actor% _Вы стали немного опытнее.
        %actor.exp(+1000000)% 
      end   
    break
    * --------------------------------------- Волхв -----------------------------------------
    case 13
      if ((!%actor.skill(сглазить)%) && (%actor.can_get_skill(сглазить)%))
        msend %actor% Вы постигли умение "Сглазить".
        mskillturn %actor% сглазить set
      elseif %actor.skill(сглазить)% < %skl%
        msend %actor% Вы стали намного опытнее в умении "Сглазить".
        mskilladd %actor% сглазить 10
      else
        msend %actor% _Вы стали немного опытнее.
        %actor.exp(+1000000)% 
      end   
    break
  done
end
msend %actor% _- Это все, что я могу для тебя сделать.
msend %actor% _- Ступай с миром.
msend %actor% _Седой старейшина взмахнул рукой и все вокруг закружилось.
mat 95100 mecho Кто-то появился здесь в клубах сизого дыма.
mteleport all 95100
detach 95235 %self.id%
~
#95236
лезем через колючий кустарник на юг~
2 c 100
лезть~
wait 1
if !%arg.contains(кусты)%  
  wsend %actor% _Через что вы хотите лезть?
  halt
end
wsend %actor% _Ловко изогнувшись Вы полезли через колючий кустарник.
wechoaround %actor%  Ловко изогнувшить %actor.name% полез%actor.q% через кусты.
if %random.3% == 2
  wsend %actor% _Споткнувшить об большой корень, Вы упали прямо на колючий куст!
  wsend %actor% _Шипы шильно изодрали вашу нежную кожу.
  wat 95266 wecho _Из кустов послышались звуки нецензурной брани и визги.
  wat 95269 wecho _Из кустов послышались звуки нецензурной брани и визги.
  if %actor.hitp% > 10 
    eval buf %actor.hitp(10)%
  end
end
wteleport %actor% 95269
~
#95237
лезем через колючий кустарник на север~
2 c 100
лезть~
if !%arg.contains(кусты)%  
  wsend %actor% _Через что вы хотите лезть?
  halt
end
wsend %actor% _Ловко изогнувшись Вы полезли через колючий кустарник.
wechoaround %actor% _Ловко изогнувшись %actor.iname% полез%actor.q% через кусты.
if %random.3% == 2
  wsend %actor% _Споткнувшить об большой корень, Вы упали прямо на колючий куст!
  wsend %actor% _Шипы сильно изодрали вашу нежную кожу.
  wat 95266 wecho _Из кустов послышались звуки нецензурной брани и визги.
  wat 95269 wecho _Из кустов послышались звуки нецензурной брани и визги.
  if %actor.hitp% > 10 
    eval buf %actor.hitp(10)%
  end
end
wteleport %actor% 95266
~
#95238
Умер главный бандюга~
0 f 100
~
if %random.10000% < 50
  mload obj 103
end
~
$~
