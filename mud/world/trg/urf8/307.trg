#30700
вошли на опушку леса~
2 e 100
~
wait 1
if !%actor.rentable%
  halt
end
if (%direction% == south)
  wait 2s
  wload mob 30700
  wecho _Внезапно деревья на опушке леса затрещали и из них вышел, пошатываясь косолапый медведь.
  wait 1s
  wecho _Медведь обвел опушку мутным, невидящим взглядом и кажется Вас заметил.
  wait 1s
  wforce пьяный говор Прывет тебе двуногый! Выручай, плохо мне! Жабры горят!
  wait 1s
  wecho  Медведь протяжно закашлял, показывая как ему плохо.
  wait 1s
  wforce пьяный говор Есть шо выпыть? Давай сюды!
  wait 1s
  wecho _Медведь мечтательно облизнулся и замер в ожидании спасительной выпивки.
  wait 20s
  wforce пьяный говор Ну ты жадына, а я ешо тебя в госты хотел позвать!
  wait 1s
  wforce пьяный говор Пойду в другом месте опохмелюсь!
  if %world.curmobs(30700)% == 0
    halt
  end
  calcuid misha 30700 mob
  wait 1
  wpurge %misha%
end
~
#30701
медведю дали контейнер~
0 j 100
~
wait 1
if !%actor.rentable%
  halt
end
if %object.type% != 17 
  wait 1s
  mecho _Медведь с недоумением уставился на %object.vname%, почесывая лапой затылок.
  wait 1s
  говор И как этым опохмеляться?
  halt
end
if %object.val1% < 1 
  wait 1s
  say Тут же пусто!
  буб
  halt
end
if ((%object.val2% == 1 ) || (%object.val2% == 2 ) || (%object.val2% == 3 ) || (%object.val2% == 5 ) || (%object.val2% == 7 ) || (%object.val2% == 8 ))
  wait 1s
  mecho _Медведь громко отхлебнул из %object.rname% и расплылся в широкой улыбке.
  wait 1s
  say Вот спасыба, так спасыба! Отныне ты желанный гость в нашем лесу!
  wait 1s
  say Пойду отнесу %object.vname% Лешему, а то с ним совсем плохо...
  wait 1s
  mecho  Медведь взял %object.vname% под мышку и прощально помахал всем лапой.
  wait 1s
  mecho _Медведь побрел обратно в лес, оставляя за собой поваленные деревья.
  mteleport self 30705
  mdoor 30701 north flags 0
  mdoor 30701 north room 30702
  wait 2s
  mpurge %self%
else
  wait 1s
  mecho _Медведь с недоумением уставился на %object.vname%, почесывая лапой затылок.
  wait 1s
  говор И как этым опохмеляться?
end
~
#30702
у лешего (приветствие)~
0 r 100
~
mecho _Лохматый Леший со скрипом приподнялся с вороха листьев.
wait 1s
say Короткой зимы и влажного лета тебе, путник!
wait 1s
г Ты спас меня и медведя, я уж думал помрем тут....
wait 1s
г Всю бражку мы давно выпили, а опохмелиться-то оказывается нечем.
wait 1s
mecho _Леший вздохнул и о чем-то задумался.
wait 2s
г Так и быть поведаю тебе свою историю!
wait 1s
г Был я когда-то хорошим лешим, много зверей жило в моем лесу,
г Пока не случилась беда...я стал выпивать!
wait 1s
г Половину зверей я тут же пропил, половина ушла на закуску...
wait 1s
г Оставшиеся зверье стало друг дружку избивать, зная ожидающую их судьбу!
wait 1s
г Лишь несколько белок, да еще кто-то уцелели, сбежав к моему соседу!
wait 1s
г Не мог%actor.q% бы ты помочь вернуть их?
calcuid vhod 30701 room
detach 30700 %vhod.id%
~
#30703
у лешего (выдача квеста1)~
0 d 1
да помогу~
if %questor307%
  halt
end
eval lev 10-%actor.remort%
if ((%actor.level% < %lev%) || (%actor.vnum% != -1))
  msend %actor% _Лохматый Леший внимательно осмотрел Вас с ног до головы.
  говор Нет, боюсь не по силам тебе... съедят тебя муравьи...
  вздох
  halt
end
makeuid questor307 %actor.id%
global questor307
wait 1s
mecho _Леший обрадовано потер ручки.
wait 1s
говор Прежде чем вернуть моих белок обратно!
wait 1s
говор Тебе придется спасти лес от черных муравьев, что поселились на западе моего леса.
говор Для этого надо убить их королеву. Иначе насекомые съедят все зверье.
wait 2s
говор Представь себе, эти мерзкие твари, разрослись до размеров медведя!
wait 2s
говор Когда мы с медведем еще держались на ногах, то повалили в лесу пару деревьев.
говор Чтобы насекомые не смогли добраться до нашей берлоги.
wait 2s
говор Вот тебе разрыв-трава, брось ее у завала и она разнесет его.
mload obj 30700
дат трава %actor.name%
wait 1s
говор Когда спасешь лес, приходи ко мне и потолкуем о спасении белок!
attach 30705 %self.id%
attach 30723 %self.id%
detach 30702 %self.id%
detach 30703 %self.id%
~
#30704
убираем тропу в лес~
2 e 100
~
if (%direction% == south)
  wait 5s
  wdoor 30701 north purge
  wecho Деревья на юге выпрямились, закрыв тропу в лес.
end
~
#30705
Леший причитает о своих зверюшках~
0 b 25
~
wait 1s
mecho _Вспомнив о своих зверях, Леший расплакался.
wait 1s
eval leshiy  %random.7%
if %leshiy% == 6
  говор Был у меня волк, безобразный и грязный.
  говор И еще он был очень злым и жестоким.
  говор Но звери не испытывали к нему ненависти и не били.
  wait 2s
  говор  Это потому, что Волк умер еще в раннем детстве.
  wait 1s
  говор Да...хорошо, когда Добро побеждает Зло.
elseif %leshiy% == 5
  говор Был у меня заяц злой и жестокий.
  говор И еще он был очень трусливый.
  говор Гадостей Заяц никому никогда не делал. Потому что боялся.
  wait 2s
  говор Hо другие звери его все равно сильно били.
  wait 2s
  говор Потому что Зло всегда должно быть наказано.
elseif %leshiy% == 4
  говор Был у меня дятел злой и жестокий.
  говор Он не бил зверей. Потому что у него не было рук.
  wait 1s
  говор Поэтому он вымещал свою злость на деревьях.
  говор Звери его не били. Потому что не могли дотянуться.
  wait 2s
  говор Однажды его придавило насмерть упавшее дерево.
  wait 1s
  говор Поговаривали, что оно отомстило.
  wait 2s
  говор После этого звери целый месяц боялись мочиться на деревья.
  говор Они мочились на Зайца.
  wait 1s
  говор Заяц простудился и умер.
  wait 1s
  говор Всем было ясно, что во всем виноват Дятел.
  wait 1s
  говор  Hо его не тронули. Поскольку не смогли выковырять из-под упавшего дерева.
  wait 2s
  говор  Да...Зло иногда остается безнаказанным.
elseif %leshiy% == 3
  говор Была у меня лиса, очень хитрая.
  говор Она могла запросто обхитрить кого угодно.
  говор Когда ей это удавалось, то ее не били.
  wait 2s
  говор Hо иногда ей не везло.
  wait 1s 
  говор И тогда ее били. Били всем лесом.
  wait 1s 
  говор И она уже не могла кого-нибудь обхитрить.
  говор Потому, что очень трудно кого-нибудь обхитрить, когда тебя бьют.
  wait 2s
  говор Однажды ее избили до смерти.
  wait 2s 
  говор Да...умный всегда на правду выйдет.
elseif %leshiy% == 2
  говор Был у меня козел не злой, не добрый.
  говор Он был просто козел.
  говор Он часто козлил.
  wait 1s
  говор Звери его боялись бить.
  wait 2s
  говор Но он своим козловством всех достал.
  говор И тогда его избили до смерти.
  wait 1s
  говор Потому что иначе он бы умер от старости. Когда-нибудь.
  wait 2s
  говор Когда Козел умер, Медведь сильно плакал.
  говор Потому что он втайне любил Козла.
  wait 2s
  говор Да...любовь зла, полюбишь и Козла.
elseif %leshiy% == 1
  говор Был у меня ежик маленький и колючий.
  говор Он кололся.
  говор Он не был злым, он кололся по своей природе.
  wait 2s
  говор  Из-за этого звери его били только в живот.
  wait 1s
  говор  Ежик этого не любил и стал бриться наголо.
  wait 1s
  говор И тогда его стали бить как всех.
  wait 2s
  говор Да...очень трудно быть не таким как все.
elseif %leshiy% == 0
  говор Когда мне стукнуло сотня лет, мой брат из далекой Америки подарил Скунса. 
  говор Скунс был почти таким, как Заяц.
  говор Hо только очень вонючим.
  wait 2s
  говор От него очень плохо пахло.
  говор Поэтому звери его били только положив в очень плотный мешок.
  wait 1s
  говор Тогда запах был не такой сильный.
  wait 2s
  говор Однажды у Скунса был день рождения.
  говор Он пригласил всех зверей, потому, что был жадным и любил подарки.
  wait 1s 
  говор И звери подарили ему новый мешок.
  wait 1s 
  говор И сильно избили до потери сознания.
  wait 2s
  говор И Скунс задохнулся в мешке.
  говор Так его и похоронили. В мешке.
  wait 1s 
  говор В Очень Дальнем Лесу.
  говор Потому что мертвый Скунс вонял еще сильнее.
  wait 2s
  говор Потом пришли жители Очень Дальнего Леса и всех сильно избили.
  говор Им не понравился запах мертвого Скунса.
  wait 2s 
  говор Да...с соседями надо жить в мире.
else
  говор Был у меня хомяк, очень жадный.
  говор И богатый.
  wait 1s 
  говор Если бы он делился своим богатством, звери бы били его не так сильно.
  wait 1s 
  говор Hо он был очень жадным.
  wait 1s 
  говор За это его били сильно. И ему все равно приходилось делиться.
  wait 1s 
  говор И он горько плакал.
  wait 2s 
  говор Да...богатые тоже плачут.
end
~
#30706
бросили травку у завала~
2 h 100
~
if %object.vnum% == 30700 then
  wait 1s
  wecho Стебель разрыв травы, упав на землю, начал мерцать.
  wait 1s
  wecho Мерцание стебля усилилось и из него пошел дым.
  wait 1s
  wecho Стебель взорвался, разметав завал из деревьев.
  wecho Пара которых упали прямо на Вас.
  foreach fchar %self.all%
    wdamage %fchar% 300
  done
  calcuid trava 30700 obj
  wpurge %trava%
  wdoor 30708 n room 30710
  wdoor 30710 s room 30708
end
~
#30707
гладим толстую тлю~
0 c 0
гладить~
if !(%arg.contains(тлю)%) 
  msend %actor% А кого это вы хотите так сильно погладить?
  return 0
  halt
end
msend %actor%  Вы залезли под брюхо толстой тли и начали ее гладить.
mechoaround %actor%  %actor.name% залез%actor.q% под брюхо толстой тли и начал%actor.g% ее гладить.
if !%self.fighting% 
  wait 1s
  mecho Толстая тля мелко задрожала и начала усиленно сглатывать.
  wait 1s
  mjunk all
  mload obj 30701
  брос капл
  wait 1s
  mecho Толстая тля уменьшилась, превратившись в худого заморыша.
  mload mob 30704
  wait 1
  mpurge %self%
end
~
#30708
Детеныш подбежал к толстой тле~
0 g 30
~
if %world.curmobs(30704)% > 20
  halt
end
wait 1
if ( %actor.vnum%==30703 )  
  wait 1
  mecho _Детеныш тли начал прыгать вокруг толстой тли, чего-то выпрашивая.
  wait 1s
  wait 1s
  mecho _Толстая тля мелко задрожала и начала усиленно сглатывать.
  wait 1s
  mjunk all
  mecho _Толстая тля выплюнула на землю огромную каплю травяного сока.
  wait 1s
  mecho _Детеныш тли с визгом набросился на каплю, вмиг поглотив ее.
  wait 1s
  mecho _Толстая тля уменьшилась, превратившись в худого заморыша.
  mload mob 30704
  wait 1
  mpurge %self%
end
~
#30709
худая тля превращается в толстую~
0 b 5
~
if  %world.curmobs(30702)% > 20 
  halt
end
if %self.fighting%
  halt
end
wait 1s
mecho  Вдруг худая тля перестала жевать и ее брюхо начало раздуваться.
wait 1s
mjunk all
mload mob 30702
mecho  Худая тля чуть присела на задние лапы, превратившись в толстую.
wait 1
mpurge %self%
end
~
#30710
огромный муравей мочится на вошедшего~
0 q 50
~
if (!%self.fighting%)
  wait 1s
  mecho _Огромный муравей поднял короткие усики и к чему-то принюхался.
  wait 1s
  msend       %actor% _Огромный муравей помочился на Вас, приняв за не отмеченное на тропе дерево.
  mechoaround %actor% _Огромный муравей помочился на %actor.vname%, приняв за не отмеченное на тропе дерево.
  wait 1s
  msend       %actor% _Огромный муравей снова принюхался к Вам и, довольно потрескивая челюстями, отправился дальше.
  mechoaround %actor% _Огромный муравей снова принюхался к %actor.dname% и, довольно потрескивая челюстями, отправился дальше.
end
~
#30711
убили муравья раба~
0 f 100
~
if (%world.curobjs(30702)% < 20) &&  (%random.3% == 2)
  mload obj 30702
end
~
#30712
тля рождает детеныша~
0 b 15
~
if  %self.fighting%
  halt
end
if ( %world.curmobs(30703)% > 20 )
  halt
end
if ( %world.curmobs(30702)% > 20 )
  halt
end
if ( %world.curmobs(30704)% > 20 )
  halt
end
wait 1s
mecho  Тля присела на задние лапы и начала тужиться. 
wait 1s
mecho  С диким криком тля родила маленького мохнатого тленка. 
mload mob 30703
end   
if (%random.100% < 75)
  detach 30712 %self.id%
end
~
#30713
зашли к муравью пожирающему труп~
0 r 100
~
wait 1s
mecho _Черный муравей перестал обгладывать труп рыжего муравья и к чему-то принюхался.
wait 1s
msend       %actor% _Черный муравей громко клацнул челюстями, заметив Вас.
mechoaround %actor% _Черный муравей громко клацнул челюстями, заметив %actor.vname%.
mkill %actor%
~
#30714
зашли к яицебилу~
0 r 100
~
if (!%self.fighting%) &&  (%random.3% == 2)
  wait 1s
  mecho _Черный муравей поднял с пола уцелевшее яйцо и с силой швырнул его в стену.
  wait 1s
  mecho _От удара об стену яйцо разбилось вдребезги, образовав кровавое месиво.
end
~
#30715
зашли к раненому муравью~
0 r 100
~
wait 1s
msend       %actor% _Раненый муравей корчась протянул к Вам лапки, моля о помощи.
mechoaround %actor% _Раненый муравей корчась протянул к %actor.dname% лапки, моля о помощи.
wait 1s
mecho _Черный муравей победно выпрямил усики и наступил лапой на горло раненого муравья.
wait 1s
mecho  Раненый муравей захрипел, пытаясь выкарабкаться из под лапы.
wait 1s
mecho _Черный муравей нагнулся и резко откусил рыжему муравью голову.
mjunk all
calcuid zamena 30745 room
attach 30716 %zamena.id%
exec 30716 %zamena.id%
~
#30716
заменяем муравья трупом~
2 z 100
~
wload obj 30705
calcuid murovey 30711 mob
wpurge %murovey%
~
#30717
зашли к лесному клопу~
0 r 100
~
if (!%self.fighting%) &&  (%random.5% == 4)
  wait 1s
  msend       %actor% _Огромный клоп испуганно отпрыгнул от Вас в сторону и выпустил струю удушливого газа.
  mechoaround %actor% _Огромный клоп испуганно отпрыгнул от %actor.rname% в сторону и выпустил струю удушливого газа.
  wait 1s
  mdamage %actor% 30
  msend       %actor% _Не в силах дышать, вы схватились за горло! Кожа ваша стала зеленоватой.
  mechoaround %actor% _Не в силах дышать, %actor.name% схватил%actor.u% за горло.
  wait 1s
  mechoaround %actor% _Лицо %actor.rname% стало зеленым, как у болотной жабы.
end
~
#30718
зашли в центр березняка~
2 e 100
~
wait 1s
wecho _Ветки на вершине березы затрещали и из листвы показалось какое-то безобразное рыло.
wait 1s
wsend       %actor% _С пронзительным свистом огромная туша прыгнула на Вас с дерева, едва не раздавив в лепешку.
wechoaround %actor% _С пронзительным свистом огромная туша прыгнула на %actor.vname% с дерева, едва не раздавив в лепешку.
wdamage %actor% 50
wload mob 30717
wforce толстый уби %actor%
detach 30718 %self.id%
~
#30719
убили толстого клопа~
0 f 100
~
if (%world.curobjs(30708)% < 5) &&  (%random.4% == 3)
  mload obj 30708
end
~
#30720
вошли на каменное плато~
2 e 33
~
wait 1
halt
if (%actor.affect(полет)% == 1) || (%direction% != west)
  halt
end
switch %random.3%
  case 3
    wsend %actor%  Не устояв на шатких камнях, Вы больно упали, разбив об огромный валун свой прекрасный нос.
    wechoaround %actor%  Не устояв на шатких камнях, %actor.name% больно упал%actor.g%, разбив об огромный валун свой прекрасный нос.
    wdamage %actor% 20
  break
  case 2
    wsend %actor%  Не удержавшись на камнях, Вы с криком полетели вниз, сильно ободрав руки и ноги.
    wechoaround %actor%  Не удержавшись на камнях, %actor.name% с криком полетел%actor.g% вниз, сильно ободрав руки и ноги.
    wdamage %actor% 40
    wforce %actor.name% сесть
  break
  case 1
    wsend %actor%  Вы споткнулись об небольшой камень и вывернули себе лодыжку.
    wechoaround %actor%  %actor.name% споткнул%actor.u% об небольшой камень и вывернул%actor.g% себе лодыжку.
    wdamage %actor% 30
    default
      wsend %actor%  Поскользнувшись, Вы упали лбом на огромный валун, от чего тот разлетелся вдребезги.
      wechoaround %actor%  Поскользнувшись, %actor.name% упал%actor.g% лбом на огромный валун, от чего тот разлетелся вдребезги.
      wdamage %actor% 15
    done
~
#30721
зашли к муравьишки (приветствие)~
0 r 100
~
if (!%self.fighting%)
  wait 2s
  говор Человечек, человечек! Не трожь меня!
  wait 2s
  mecho _Муравьишка в страхе вжался в камень, пытаясь с ним слиться.
  wait 2s
  говор Ты же не будешь бить меня, как те черные...
  wait 1s
  mecho _Из глаз муравьишки хлынули ручьем слезы.
  wait 3s
  говор Они, они украли мою сестренку! Она была такой маленькой, кругленькой, как яичко!
  wait 2s
  говор Эх, если бы я был большой и сильный как ты, я бы вернул ее!
  wait 2s
  говор Но, но быть может ты сможешь помочь мне?
  wait 1s
  mecho _Глаза муравьишки загорелись надеждой.
end
~
#30722
репоп в зоне~
2 f 100
~
calcuid vhod 30701 room
detach 30700 %vhod.id%
attach 30700 %vhod.id%
calcuid leshiy 30701 mob
detach 30702 %leshiy.id%
detach 30703 %leshiy.id%
attach 30702 %leshiy.id%
attach 30703 %leshiy.id%
detach 30705 %leshiy.id%
detach 30723 %leshiy.id%
detach 30735 %leshiy.id%
rdelete questor307 %leshiy.id%
calcuid murov 30718 mob
detach 30721 %murov.id%
detach 30724 %murov.id%
attach 30721 %murov.id%
attach 30724 %murov.id%
detach 30733 %murov.id% 
rdelete koko %murov.id%
calcuid vorota 30714 room
detach 30725 %vorota.id%
detach 30726 %vorota.id%
calcuid berloga 30704 room
detach 30734 %berloga.id%
wdoor 30714 west purge
wdoor 30763 east purge
wdoor 30701 north purge
wdoor 30708 north purge
wdoor 30710 south purge
~
#30723
у лешего (квест1 сделан)~
0 r 100
~
if !(%actor.id% == %questor307.id%)
  halt
end   
if %world.curmobs(30723)% < 1
  говор Молодец, ты уничтожил их королеву...с остальными муравьями,
  говор думаю я и сам справлюсь.
  wait 1s
  говор Теперь пора вернуть и моих белок.
  wait 1s
  mecho _Леший загадочно взмахнул рукой.
  wait 1s
  calcuid berloga 30704 room
  attach 30734 %berloga.id%
  exec 30734 %berloga.id%
  calcuid leshiy 30701 mob
  attach 30735 %leshiy.id%
  г ступай!
end
~
#30724
говорим муравьишке ДА (подквест)~
0 d 1
да помогу~
if %koko%
  halt
end
if (!%self.fighting%)
  makeuid koko %actor.id%
  global koko
  wait 1s
  mecho _Лицо муравьишки расплылось в улыбке.
  wait 1s
  говор Хорошо! Хорошо! Сейчас, я объясню тебе как проникнуть в их логово!
  wait 2s
  говор Черные выстроили свой муравейник в большом стволе, на западе леса.
  wait 1s
  говор Однажды,  когда моя родня еще жила с ними в мире, я гулял возле их логова...
  wait 2s
  говор И увидел, как Черные подходят к стволу, тогда я затаился в кустах и подслушал...
  wait 2s
  говор Когда Черные подошли к воротам в стволе, один из них по-особому стукнул в ворота.
  wait 2s
  говор примерно вот так!
  wait 1s
  mecho _Муравьишка сжал кулачок и начал бить себе в голову -Тук - Тык- Тук.
  wait 2s
  говор Потом из ворот спросили - "Кто там?" и один из черных сказал - "Свои".
  говор После чего ворота открылись и пропустили их.
  wait 3s
  говор Возможно, эти тайные слова помогут тебе спасти мою сестренку.
  calcuid vorota 30714 room
  attach 30725 %vorota.id%
  attach 30726 %vorota.id%
  detach 30721 %self.id%
end
detach 30724 %self.id%
~
#30725
стучим в ворота~
2 c 0
стучать~
if !(%actor.id% == %koko.id%) &&  !(%arg.contains(ворота)%) 
  return 0
  halt
end
wsend       %actor% _Вы с силой стукнули по створкам ворот особым образом.
wechoaround %actor% _%actor.name% с силой стукнул%actor.g% по створкам ворот особым образом.
wait 1s
wecho _Услышав удары, хриплый голос за воротами произнес: "Кто там?"
calcuid svoi 30714 room
attach 30726 %svoi.id%
~
#30726
говорим - свои~
2 d 1
свои~
wait 2s
wecho _Створки ворот со скрипом разошлись в стороны.
wdoor 30714 west flags 0
wdoor 30714 west room 30763
wdoor 30763 east flags 0
wdoor 30763 east room 30714
calcuid vorota 30714 room
detach 30725 %vorota.id%
calcuid svoi 30714 room
detach 30726 %svoi.id%
~
#30727
убили всадника~
0 f 100
~
if (%world.curobjs(30710)% <5) &&  (%random.6% ==5)
  mload obj 30710
end
~
#30728
убили кузнечика~
0 f 100
~
if (%world.curobjs(30711)% < 3) &&  (%random.3% == 2)
  mload obj 30711
end
~
#30729
убили матку~
0 f 100
~
if (%world.curobjs(30712)% < 2) &&  (%random.4% == 3)
  mload obj 30712
end
~
#30730
зашли к матке~
0 q 100
~
wait 1s
говор Так это тебя к нам послал Леший!
wait 1s
mecho _Черная матка улыбнулась, обнажив острые зубы.
wait 1s
говор Неужто он не мог найти никого поприличней. Ну что же...  украшу твоими ушами трон.
mkill %actor%
~
#30731
одели челюсть~
1 j 100
~
osend       %actor% _Зубастая челюсть в Ваших руках громко щелкнула, в предвкушении битвы.
oechoaround %actor% _Зубастая челюсть в руках %actor.rname% громко щелкнула, в предвкушении битвы.
~
#30732
зашли к мохнолапому~
0 r 100
~
if !%self.fighting%
  wait 1s
  mecho  _Мохнолапый муравей, почуяв неладное, спрятал яйцо в брюшной карман.
  mload obj 30713
  mkill %actor%
  calcuid murov 30718 mob
  attach 30733 %murov.id%
end
detach 30732 %self.id%
~
#30733
даем яйцо муравьишке (подквест готов)~
0 j 100
~
if %object.vnum% == 30713
  wait 1s
  say Человечек, ты спас мою сестренку!!! 
  wait 1s
  mecho _Муравьишка заботливо спрятал яйцо под камень.
  mjunk all
  wait 1s
  say Как я могу отблагодарить тебя...
  wait 1s
  say Хотя постой, совсем недавно я выкопал странную штуку под этим камнем.
  say Быть может она тебе пригодится!
  wait 1s
  eval nagrog %random.50%
  if (%world.curobjs(30714)% < 3) && (%nagrog% > 25)
    mecho  _Муравьишка скрылся за камнем, вернувшись с огромной плитой на плечах.
    mload obj 30714
    wait 1s
    говор На вот!
    дат плит %actor.name%
  elseif (%world.curobjs(30715)% < 3) && (%nagrog% < 25)
    mecho  _Муравьишка скрылся за камнем, вернувшись с огромной палкой на плечах.
    mload obj 30715
    wait 1s
    говор На вот!
    дат меч %actor.name%
  else
    mecho  _Муравьишка скрылся за камнем, вернувшись с мешочком в лапах.
    mload obj 30716
    wait 1s
    говор На вот!
    дат мешоч %actor.name%
  end
  detach 30733 %self.id% 
end
~
#30734
создаем пентаграмму~
2 z 100
~
wportal 30815 2
~
#30735
даем связку лешему (конец квеста)~
0 j 100
~
wait 1
if (%object.vnum% != 30809)
  гнев
  drop all
  halt
end
wait 1
mpurge %object%
wait 1s
говор Белочки мои! Родненькие!
wait 1s
mecho Лохматый Леший бросил связку на землю и сделал загадочный жест.
wait 1s
mecho Белки выросли у Вас на глазах.
mload mob 30813
mload mob 30813
mload mob 30813
wait 1s
mecho Лохматый Леший ласково потрепал их за хвост.
wait 1s
говор Ну, а теперь бегите в лес.
mecho Зубастые белки выбежали из берлоги.
while (%exist.mob(30813)%)
  calcuid belka 30813 mob
  attach 30813 %belka.id%
  exec 30813 %belka.id%
done
wait 2s
говор Спасибо. Выручил%actor.g% ты меня!
говор теперь и моя очередь.
if (%world.curobjs(1710)% < 1) && (%random.1000% <= 100)
  mload obj 1710
  mecho Леший вытащил откуда-то толстую замызганную книгу и протянул Вам.
elseif (%world.curobjs(404)% < 1) && (%random.1000% <= 451)
  mload obj 404
  mecho Леший вытащил откуда-то связку замызганых кусков бересты и протянул Вам.
elseif (%world.curobjs(30717)% < 5) && (%random.1000% <= 500)
  mecho Леший снял с себя старый кафтан и протянул его Вам.
  mload obj 30717
elseif (%world.curobjs(30715)% < 3) && (%random.1000% <= 300)
  mecho Леший вытащил из-за пазухи бересту и протянул ее Вам.
  mload obj 30718
else
  mecho Леший вытащил из-за пазухи мешочек и протянул его Вам.
  eval temp %actor.gold(+2000)%
end
дать all .%actor.iname%
брос all
detach 30735 %self.id%
~
#30736
Убираем триг с толстой тли~
0 n 100
~
if (%random.100% < 51)
  detach 30707 %self.id%
  detach 30712 %self.id%
end
~
$~
