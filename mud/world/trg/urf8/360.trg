#36000
зашли к емеле~
0 q 100
~
wait 1s
if (%actor.sex% == 1)
  say Здравствуй добрый молодец.
else
  say Здравствуй красна девица.
end
say Как замечательно, что я встретил тебя в этом краю.
wait 1s
рад
wait 1s
say Беда у меня приключилась одна. 
say Злобный сотник царя Гороха прознал, что в водах местных, чистых да глубоких,
say щука водится, да не простая, а та, что желания исполнять может!
say И он решил поймать ее, да не просто так, а для нужд своих корыстных.
say Одно не знает он, что боги запретили щуке исполнять желания смертных,
say (в сторону) ибо это хреново влияет на игровой процесс!
wait 1s
взд
wait 1s
say Сам то он жопорук на всю голову, может только шапку носить, да вино пить. 
say Вот и послал за ней рыбаков, чтобы они изловили её.
say А мужикам то что? Им лишь бы монеты платил, а щук они на своем веку не одну сотню поймали.
wait 1s
груст
wait 1s
say А у меня нету столько денег, чтобы рыбаков перекупить.
say Вот и ищу добродетелей, чтобы опередили они рыбаков, и принесли щуку мне!
say А я уж выпущу ее в Ильмень-озеро, чтобы подальше уплыла она от людей злых, да желаний их корыстных!
say Ну что, поможешь мне поймать щуку?   
вопр .%actor.name% 
~
#36001
Помогаем Емеле~
0 d 100
помогу~
wait 2s
say Вот это здорово!
say Как знал, что ты мне поможешь!
wait 1s
рад
wait 1s
say Чтобы щука далась тебе в руки, скажи, что ты от меня.
say Ну ступай скорей, а то рыбаки опередят тебя.
say И все пропало!
detach 36000 %self.id%
attach 36002 %self.id%
detach 36001 %self.id%
~
#36002
Зашли к Емеле после взятия квеста~
0 d 100
помогу~
wait 1
пожать
~
#36003
Заходим к сотнику~
0 q 100
~
wait 1s
осм .%actor.name% 
wait 1s
if %actor.sex% == 1
  say Хм, что-то не очень ты похож на рыбака.
else
  say Хм, что-то не очень ты похожа на рыбачку.
end
say Ну да ладно, не суть важно.
say Дело у меня к тебе есть.
wait 1s
миг .%actor.name%
wait 1s
say Говорят здесь недалеко водоем небольшой есть, в нем живет щука, которая мне нужна. Почему нужна тебе знать не надобно.
say Послал я за ней рыбаков местных, да что-то не дождусь их никак.
wait 1s
say В общем, готов ты взяться добыть мне щуку?
say Если согласишься, денег не пожалею!
вопр .%actor.name%
~
#36004
Помогаем сотнику~
0 d 100
готов~
wait 1s
say Ну вот и хорошо!
say Ступай скорее за щукой!
say А я тебя буду ждать здесь с новостями.
detach 36003 %self.id%
detach 36004 %self.id%
~
#36005
Ловим щуку~
2 d 100
я от емели~
if %world.curobjs(36020)% >= 1
  halt
else
  wait 2s
  wecho _Большая, красивая рыба медленно поднялась к поверхности воды!
  wait 1s
  wecho Щука сказала : 'Я вижу Вы от Емели'
  wecho Щука сказала : 'Это хорошо, а то шныряют тут всякие...'
  wecho Щука сказала : 'По мою душу наверно приходили'
  wecho Щука сказала : 'Все хотят от меня только одного - исполнения желаний'
  wait 1s
  wecho Щука тяжело вздохнула.
  wait 1s
  wecho Щука сказала : 'Хотя боги уже давно запретили мне волшебством пользоваться'
  wecho Щука сказала : 'А они все не могут успокоится!'
  wecho Щука сказала : 'Уплывать от сюда надо подальше, куда-нибудь в глубину Ильменя.'
  wecho Щука сказала : 'Отнесите меня Емеле, а уж он меня в Ильмень-озеро выпустит. '
  wload obj 36020
  wforce %actor.name% вз щук
  detach 36006 %self.id%
  detach 36005 %self.id%
end
~
#36006
Зашли в комнату с щукой~
2 e 100
~
if %world.curobjs(36020)% >= 1
  halt
else
  wait 2s
  wecho _Чуть слышный всплеск воды привлек Ваше внимание.
end
~
#36007
Отдаем щуку Емеле~
0 j 100
~
wait 1s
if (%object.vnum%==36020)
  mpurge %object%
  ул
  wait 1s
  say Спасибо Вам огромное!
  say Немедленно схожу и отпущу ее в Ильмень!
  say А вот Ваша награда.
  %self.gold(+2000)%
  дать 2000 кун .%actor.name%
  wait 1s
  пока
  mpurge %self.id%
else
  say Зачем мне это?
  бр все
end
~
#36008
Даем щуку сотнику~
0 j 100
~
wait 1s
if (%object.vnum%==36020)
  mpurge %object%
  ул
  wait 1s
  say Ну наконец-то! Что же ты так долго!
  wait 1s
  emot начал внимательно осматривать щуку
  wait 1s
  say Действительно! Она!
  wait 1s
  восторг
  wait 1s
  say Ну что ж, загадаю-ка я пожалуй...ммм...гору золо...
  wait 2s
  mecho _Продолжить он не успел, потому что щука вдруг встрепенулась в его руках.
  mecho _Дотянулась до лица, и едва не оттяпав ему пол уха, что-то недовольно зашептала!
  wait 1s
  хох
  wait 2s
  say Ну ты мать даешь! Не может она видите-ли желание исполнить.
  say Сейчас я тебя на сковородку кину, сразу все сможешь!
  say Так что давай исполняй, пока я не передумал.
  wait 1s
  say Итак! Желаю гору золота!
  wait 2s
  mecho _&YВнезапно поднялся ураган!&n
  wait 1s
  mecho _&KНалетели свинцовые тучи!&n  
  wait 1s
  mecho _&CЗаметались по небу громы и молнии!&n
  wait 2s
  mecho _&RИ Кара Божья настигла сотника.&n
  mload mob 36023
  calcuid kara 36023 mob
  exec 36011 %kara.id%
else
  say Я что просил? А ты что принес?
  пл
  бр все
end
~
#36009
Репоп~
2 f 100
~
calcuid fish 36061 room
attach 36005 %fish.id%
attach 36006 %fish.id%
~
#36010
Помер сотник~
0 f 100
~
if (%world.curobjs(36021)% < 3) && (%random.5% == 1)
  mload obj 36021
elseif (%world.curobjs(1733)% < 1) && (%random.7% == 2)
  mload obj 1733
end
~
#36011
Кара карает!~
0 z 100
~
dg_cast 'г бог' сотник
mpurge %self.id%
~
$~
