#24100
дуб здоровуется~
0 r 100
~
wait 1s
г Приветсвую вас в нашем лесу!
г Хозяин в печали и велел никого к себе не пускать!
wait 1s
mecho  Дуб-стражник скрестил ветви, преградив вам путь на восток.
~
#24101
выстругивание самострела~
0 j 100
~
wait 1
if %object.vnum% == 24105
  wait 1
  mpurge %object%
  msend %actor% - Погоди чуток, щас мы тебе самострел сладим!
  mecho Седой отшельник начал строгать и полировать упругую кость.
  wait 1s
  if %world.curobj(24116)% < 5
    mload obj 24116
    msend %actor% - Хороший самострел получился. Вот держи!
    mecho Седой отшельник радостно крякнул.
    дат самострел %actor.name%
  end
else
  msend %actor% - Боюсь, что из этого самострел не получится!
  eval getobject %object.name%
  if %getobject.car% == кость
    wait 1
    mpurge %object%
  else
    броси %getobject.car%.%getobject.cdr%
  end
end
~
#24102
хрюкающий кабан~
0 b 100
~
if %random.13% == 1
  mecho Кабан разразился радостным похрюкиванием, отыскав что-то в траве.
end
~
#24103
пчеловод~
0 q 100
~
mecho  Медведь-пчеловод приветливо вам улыбнулся..
wait 1s
msend %actor% - Пчелы моя страсть!
msend %actor% - Хотите угощу липовым медком?
wait 1s
mecho  Медведь-пчеловод захихикал и вернулся к своим пчелам.
~
#24104
приветсвие отшельника~
0 q 100
~
mecho  Седой отшельник, кряхтя, приподнялся.
wait 1s
msend %actor% - Здравствуй путник, что же ты забыл в этом глухом месте?
msend %actor% - А, так ты наверно за чудо-самострелом пришел?
msend %actor% - Хочу тебя огорчить, я давно перестал их делать,
msend %actor% - стар я стал и не могу сам материал для него добыть.
mecho  Седой отшельник закашлялся.
wait 1s
msend %actor% - Хотя ты можешь попытаться отыскать пригодный материал сам,
msend %actor% - лучше всего какую-нибудь крепкую кость, думаю.
mecho  Седой отшельник вздохнул и принялся что-то выстругивать.
~
#24105
приветствие лешего~
0 q 100
~
*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *
*  если вошел выполняющий квест 6401* 
if %actor.quested(640101)% 
  if !%actor.quested(640103)% && %actor.quested(640101)%
    *первый раз входим к лешему после путивля
    wait 1s
    эм затравленно огляделся
    wait 1s
    %send% %actor% _Заприметив Вас, леший несколько оживился.
    wait 1s
    %echoaround% %actor% Заприметив %actor.rname%, несколько оживился. 
    say Слушай, путник, что я тебе расскажу!
    mecho - Заведено у нас, нечистых, так:
    mecho - Стоит матери сказать недоброе слово о своем ребенке
    mecho - Тут же леший, или кикимора, или бес хватают этого дитя
    mecho - И волокут к себе в логово,
    mecho - Ну потом душу вынимают, или в русалок превращают
    mecho - Это уж каждый сам во что горазд.
    эм начал заметно нервничать
    wait 1s
    mecho - Вот и угораздило меня недавно утащить к себе проклятое дитя.
    mecho - Как только начал я из него душу-то вынимать
    mecho - А он такой крик поднял, какого в этом лесу отродясь не слыхали!
    mecho - А этому лесу лет тыща минимум!
    mecho - Ждал я ждал, пока мальчишка уснет
    mecho - Да не тут-то было!
    mecho - Кричит, за бороду меня щиплет, даже водяного - соседа моего - перепугал до смерти.
    эм был почти готов расплакаться
    wait 1s
    mecho - Я тут вот чего придумал!
    mecho - Надо мальца этого усыпить!
    mecho - Слышал я, что у Брянского боярина дочка родилась.
    mecho - И привезли из стран заморских волшебную погремушку,
    mecho - Чтоб дитя не плакало и скорее засыпало, а мамаше меньше хлопот.
    mecho - Вот думаю, может эта погремушка заморская его угомонит?
    mecho - Может добудешь, а? 
    mecho - А я тебя озолочу! Всеми дарами лесными осыплю!
    mecho - Согласен? Или нет?
    *атач трига ответа лешему
    attach 24113 %self.id% 
  end
  if !%actor.quested(640109)% && %actor.quested(640108)%
    *3 задание (должны прийти с рыбой)
    *проверяем на месте ли лошадь 
    *set x 0 
    calcuid lmob 62807 mob  
    if %lmob.realroom% == 24144
      *foreach i %lroom.npc% 
      *if i.vnum == 62807
      *wecho ggggggggggggggggggg %i.iname%
      *set p %i%
      *set x 1
      *end
      *done  
      *if %x% > 0
      wait 1s 
      эм взглянул на повозку с рыбой и облизнулся
      mecho - Молодец, выполнил таки задание!
      mecho - Сдержу я свое обещание, негоже мне честному лешему людям врать! 
      хи
      wait 1s
      mecho - Вот мальчик твой, забирай ради всех нечистых
      эм перекрестился наоборот
      wait 1s
      mecho - Рыбу я у тебя забираю, а тебя жду в гости на праздник!
      wait 1s
      *удаляем лошадку
      %purge% %lmob.id% 
      mecho - Будешь званным гостем!
      mecho - Теперь слушай как туда попасть
      mecho - Под гремячьей башней, известного тебе города, есть подземный ход
      mecho - Ведет он на древнее, совсем збытое кладбище
      mecho - Много там людей похоронено еще с тех времен когда там города-то еще не было
      mecho - Как сейчас помню те времена
      эм закатил глаза и ударился в воспоминания
      wait 3s
      mecho - И людей там хоронили, и нечисть всякую
      mecho - Оборотней там, ведьм и прочих нежитей
      mecho - А как встают они из могилы, так и празднуют прямо там свое рождение в иной ипостаси
      mecho - С тех пор так и повелось - праздники наши там справлять
      mecho - Ты главное ничего не бойся
      wait 1s
      %send% %actor% _Вдруг поднял леший свой корявый посох и начал тюкать им по Вашей голове .
      %echoaround% %actor% Вдруг поднял леший свой корявый посох и начал тюкать %actor.rname% по голове. 
      mecho _Губы лешего шептали одному ему ведомые слова.
      %send% %actor% _Вы поняли что над Вами творится заклятие.
      %echoaround% %actor% Вы поняли что над %actor.vname% творится заклятие. 
      mecho _Все кончилось быстро, словно и не начиналось.
      wait 2s
      mecho - А теперь иди, неси мальчишку к матери, пока он с голоду не помер
      mecho - Кормить то мне нечем его было!
      mecho - Я его чтоб не хулиганил в берестяной короб завернул.
      mecho - Ты смотри его оттуда не вытаскивай, а то обратно ко мне прибежит!
      эм перекрестился наоборот
      wait 1s
      %actor.setquest(640108)%
      *установка финального флага
      %actor.setquest(640105)%
      *разрешение на свадьбу
      %actor.setquest(640109)% 
      *лоад мальчишки в кооробе
      mload obj 64032
      дать коро %actor.name%
    end
  end
else
  if %world.curmobs(24117)%>0
    mecho  Леший приподнялся, глотнув браги из мутной бутылки.
    wait 1s
    msend %actor% - Эээ, как ты тут очутился?
    msend %actor% - Опять дуб на посту заснул, ну я ему щас всыплю!
    mecho  Леший вышел из берлоги и тут же вбежал обратно.
    wait 1s
    msend %actor% - Аааа, зачем ты убил моего стража? Кто теперь меня охранять будет?
    msend %actor% - Хотя.....
    mecho  Леший начал что-то обдумывать, да так что даже пожелтел.
    wait 1s
    mecho  Леший лукаво подмигнул.
    msend %actor% - Ну вот что, если у тебя хватило сил убить моего охранника, 
    msend %actor% - то уж точно хватит убить моего соседа Водяного. 
    msend %actor% - Надоел этот окаянный, каждую весну из леса болото делает.
    msend %actor% - Уже и прогуляться опасно, понавелось пакости всякой болотной. 
    msend %actor% - Да ты наверно и сам с ней встречался, пока до меня добрался. 
    msend %actor% - Так что убей Водяного, будет тебе от меня щедрая плата. 
    wait 1s
    mecho  Леший глотнул браги и его глаза помутнели еще больше.
  end
else
  mecho Леший вскочил, вслушался вокруг.
  wait 1s
  say Убили Зеленый дух моего леса, как я теперь буду жить.
  say Лучше и мне умереть, но перед смертью я отомщу всем!
  mkill %actor%
end
end
~
#24106
приветствие водяного~
0 q 100
~
if %world.curmobs(24122)%>0
  mecho  Водяной изучающе оглядел Вас.
  wait 1s
  msend %actor% - Приветствую, не часто меня посещают гости.
  msend %actor% - С чем пожаловали, неужто просто на живого Водяника полюбоваться?
  msend %actor% - Можете даже меня пощупать!
  mecho  Водяной захихикал и поднес к Вашему лицу свою перепончатую руку.
  wait 1s
  msend %actor% - Вы наверно немалый путь преодолели, пока до меня добрались?
  msend %actor% - Если хотите подзаработать могу помочь...
  mecho  Водяной хитро улыбнулся.
  wait 1s
  msend %actor% - Есть у меня сосед Леший, надоел уже пескарь окаяный.
  msend %actor% - Каждый год, как рыба в озере нерестится, его медведи
  msend %actor% - всю рыбу на мелководье съедают, житья уже нет от них!
  msend %actor% - Убей Лешего и медведи сюда больше не сунутся,
  msend %actor% - а я уж отблагодарю тебя чем смогу!
  mecho  Водяной развел руками, демонстрируя то, чем он собирается отблагодарить.
else
  say Кто-то убил мою любимую жабу.
  взд
  wait 1s
  ярость
  say Всех убью, один останусь.
  mkill %actor%
end
~
#24107
ДалиПредметЛешему~
0 j 100
~
if ((%object.vnum% != 24122) && (%object.vnum% != 24124) && (%object.vnum% != 40028) && (%object.vnum% != 24115))
  say Мне это не нужно.
  return 0
  halt
end
wait 1
set ovnum %object.vnum%
mpurge %object%
******* Если дал предмет выполняющий квест 6401 *****
if %actor.quested(640101)%
  if  %ovnum% == 24122    
    *дали записку от яги
    if %actor.quested(640106)% && !%actor.quested(640107)%
      *если признак выполнения задания 1 
      wait 1s 
      mecho - Молодец, выполни%actor.g%!
      mecho - Бывать теперь свадьбе великой!
      хи  
      wait 1s
      mecho - Вот тебе второе задание:  
      mecho - Негоже мне жениху в обносках ходить!
      mecho - Добудь мне зелен-кафтан яшмой, да черным опалом украшенный.
      mecho - Да чтоб красного атласа был!
      mecho - Кафтан тот не простой, а волшебный! И время его не берет, 
      mecho - И в огне не горит, и в воде не тонет.
      mecho - Впрочем тебе то лишнее знать ни к чему!
      wait 1s
      mecho - Знаю был он закопан со смертью старого князя на кладбище близ Волхова.
      mecho - Вот там и ищи у местной нечисти
      mecho - Может умрун в нем щеголяет, а может еще кто...
      mecho - Мне не ведомо...
      mecho - Твоя задача найти и принести мне, а то не видать тебе мальчишки!
      mecho - И жизни своей тоже не видать!
      mecho - А коли выполнишь все и мальчишку получишь
      mecho - И приглашу я тебя на свадьбу свою!
      ул
      wait 1s
      эм мечтательно закатил глаза
      mecho - Ну что вста%actor.g%? иди!  
      mecho - Не забывай есть еще поручения!
      *установка флага выполнения задания 2
      %actor.setquest(640107)%  
      *%purge% %object.id%      
      halt
    end
  end
  if  %ovnum% == 24124
    
    *если дли кафтан
    if %actor.quested(640107)% && !%actor.quested(640108)%
      *если признак выполнения задания 2
      wait 1s 
      mecho - Ну угоди%actor.q%!
      эм завороженно уставился на кафтан
      wait 1s
      mecho - Коли выполнишь последнюю просьбу быть тебе званным гостем на моей свадьбе!
      mecho - Теперь слушай дальше!
      wait 1s
      mecho - Собирается на праздник много нечисти разной.
      mecho - И лесной и водяной. И как правило собирается голодной.
      mecho - Ну с ягодами, да грибами, кабанами да зайцами проблем нет,
      mecho - А вот с рыбой тяжело!
      mecho - Ну не растет она в моем лесу!
      эм огорченно причмокнул
      wait 1s
      mecho - А с водяным мы местным не дружим - давно воюем
      mecho - Он каждую весну из леса болото делает, пройти нельзя
      эм рассерженно помахал кулаком в сторону болота
      wait 1s
      mecho - Ну так вот...  
      mecho - Слышал я, на берегу Сейма есть рыбачий поселок
      mecho - И ловят местные рыбаки чудо-рыбу - златоперого карпа
      mecho - Вот бы ты мне принес%actor.q%, гостей попотчивать
      mecho - Ну а коли тяжело будет, купи повозку
      mecho - Да не скупись!
      mecho - Расплата с лихвой твои расходы окупит!
      ухм 
      wait 1s
      mecho - Так что иди! 
      mecho - Да поторапливайся! 
      *%purge% %object.id%
      *установка флага выполнения задания 3
      %actor.setquest(640108)%
      halt
    end
    
  end
  if  %ovnum% == 40028
    
    *если дали погремушку
    if %actor.quested(640104)% && !%actor.quested(640105)%
      *если признак выполнения ветвления с погремушкой
      wait 1s
      рад 
      mecho - Молодец! 
      mecho - Да, это та самая погремушка про которую бес рассказывал! 
      wait 1s
      mecho _Вдруг леший куда-то исчез.
      mecho _И через миг из-за пня доносилось мелодичная песня заморской погремушки.
      wait 5s
      mecho _И опять раздался вопль по всей округе: 
      mecho &YУУУ-ААА!!! Не хочуууу!!! Не будууууууу!&n
      wait 1s
      mecho _Из-за пня вылетел ошалелый леший.
      mecho - Нет, не помогает!
      mecho - Что делать-то, что делать-то?! Он меня со свету сживет!
      эм начал дрожать крупной дрожью
      wait 1s
      mecho - Ну вот что!
      mecho - Отдам я его тебе!
      mecho - Отнесешь матери - она тебя наградит!
      mecho - Ну, а если не наградит, то покормит.
      mecho - Всем хорошо, и у меня в лесу тихо!
      дум
      wait 1s
      mecho - Да, так и сделаю!
      mecho - Вот, держи!
      mecho - Я его чтоб не хулиганил в берестяной короб завернул.
      mecho - Ты смотри его оттуда не вытаскивай, а то обратно ко мне прибежит!
      эм перекрестился наоборот
      *установка финального флага
      %actor.setquest(640105)%
      *%purge% %object.id% 
      *лоад мальчишки в кооробе
      mload obj 64032
      дать коро %actor.name%
    end
  end 
else
  ***** Обычный вариант (дал предмет не квестер 6401) *****
  wait 1
  if  %ovnum% != 24115
    дум
    say Боюсь, что это не то, что я хотел от тебя увидеть!
    say Уходи и не возвращайся, без доказательств его смерти!
    брос все
    halt
  end
  wait 1
  wiat 5   
  say Молодец! Вот удружил!
  say Пусть же Зеленый Дух прояснит твой разум!
  mecho Леший сделал пару замысловатых жестов.
  wait 1s
  if (( %actor.level% > 22 ) && ( %random.100% < 20 ))
    msend %actor%  Леший дал вам несколько наставлений.
    eval buffer %actor.exp(+50000)%
  end
  if (( %world.curobjs(24121)% < 5 ) && ( %random.100% <= 20 ))
    mload obj 24121
    дать перст %actor.name%
  else
    eval buffer %self.gold(+3000)%
    give 3000 кун %actor.name%
  end
  say Чем богаты.
  вздох
end
~
#24108
награда за голову лешего~
0 j 100
~
wait 1
if %object.vnum% == 24114
  wait 1
  mpurge %object%
  wiat 5   
  msend %actor% - Молодец! Вот удружил!
  msend %actor% - Пусть же Дух Воды прояснит твой разум!
  mecho Водяной сделал пару замысловатых жестов.
  wait 1s
  if %sctor.level% > 22
    msend %actor%  Луший дал вам несколько наставлений.
    eval buffer %actor.exp(+50000)%
  end
  if %world.curobjs(24120)% < %world.maxobj(24120)%
    if (%random.100% <= 20)
      mload obj 24120
      дать ожер .%actor.name%
    else
      eval buffer %self.gold(+3000)%
      give 3000 кун %actor.name%
    end
  else
    eval buffer %self.gold(+3000)%
    give 3000 кун %actor.name%
  end
  say Чем богаты.
  вздох
  mjunk all
  *detach 24108 %self.id%
else
  wait 5
  msend %actor% - Боюсь, что это не то, что я хотел от тебя увидеть!
  msend %actor% - Уходи и не возвращайся, без доказательств его смерти!
  бро все
end
~
#24109
смертьлешего~
0 f 100
~
if %world.curobjs(24114)% < 1 && %world.curobjs(24115)% < 1
  mload obj 24114
end
~
#24110
смертьводяного~
0 f 100
~
if %world.curobjs(24114)% < 1 && %world.curobjs(24115)% < 1
  mload obj 24115
end
~
#24111
смертьвеликана~
0 f 100
~
mload obj 24105
~
#24112
укуспса~
0 k 50
~
if %random.5% == 1 
  mechoaround %actor% Черный пес изловчился и укусил %actor.rname% за ногу!
  msend %actor% Черный пес изловчился и укусил ваc за ногу!
  mdamage %actor% 50
  dg_cast 'яд' %actor.name%
end
~
#24113
ОтветЛешему~
0 d 0
да нет~
if %actor.quested(640101)%
  *если сказал выполняющий квест
  %actor.setquest(640103)%
  switch %speech%
    case да
      if !%actor.quested(640104)% && !%actor.quested(640106)%
        wait 1s
        эм засиял от счастья
        wait 1s
        mecho - Так иди скорее, а я тут подожду,
        mecho - Покараулю мальца, чтоб не убег!
        %actor.setquest(640104)%
      break
    end
    *
    case нет
      if !%actor.quested(640104)% && !%actor.quested(640106)%
        wait 1s
        дум
        wait 1s
        эм словно что-то вспомнив, насторожился.
        %send% %actor% _Леший начал подозрительно Вас разглядывать.
        %echoaround% %actor% Леший начал подозрительно разглядывать %actor.rname%.
        wait 1s
        mecho - Аааа, так не ты ли тот смельчак что грозился мальца вызволить?
        mecho - Тут вчера бес в гости заходил, да все потешался:
        mecho - Мол, говорит, придет смельчак и сживет тебя со свету,
        mecho - Пообещал мол он матери мальца от меня вызволить.
        mecho - Ну, теперь ясно кто ты есть такой!
        эм уселся в раздумьях на пень
        wait 1s
        mecho - Ну вот что!
        mecho - Убивать я тебя не буду - хилый ты больно.
        mecho - А коли ум есть - выполнишь мои поручения,
        mecho - Тогда и отдам тебе мальчишку.
        mecho - Все равно толку мне от него мало, хлопот больше.
        mecho - Идет?
        *атач трига идет_лешему
        attach 24115 %self.id%
      break
    done
    detach 24113 %self.id%
  else
    пож
  end
~
#24114
РезетЗоны~
0 cfg 0
~
*
~
#24115
ИдетЛешему~
0 d 0
идет да конечно~
if %actor.quested(640103)%
  wait 1s
  кив
  %actor.setquest(640106)%
  *установка признака выполнения задания 1
  mecho - Поручений будет три.
  mecho - Да чтоб все сделал в точности как говорят!
  эм воинственно помахал посохом из какой-то коряги
  wait 1s
  mecho - Итак...
  mecho - Тут недалеко живет Ягинична, костяная нога.
  mecho - Лет двести назад обещал я ей сватов заслать,
  mecho - И подарками одарить. 
  mecho - А просила она тогда ткань дорогующую, белоснежную как лебяжий пух.
  mecho - А недавно завел я купца одного в глухой лес, где он и помер.
  взд
  wait 1s
  mecho - А в товарах его была ткань, красоты неписанной,
  mecho - Сияет словно снег в ясный день.
  mecho - Вот и твое первое задание: 
  mecho - Отнеси ткань эту, что белее снега Яге - Костяной ноге. 
  эм полез куда-то за пень, оказавшийся сундуком
  wait 3s
  mload obj 24123
  дать все %actor.name%
  mecho - Да не замарай!
  эм погрозил корявым посохом
  wait 1s
  mecho - Можешь даже ничего ей не говорить, она девушка умная - все сама поймет.
  mecho - Все запомнил?
  mecho - Теперь иди!
  detach 24115 %self.id%
end 
~
#24116
ДалиТканьЯге~
0 j 100
~
if %object.vnum% == 24123
  if %actor.quested(640101)%
    if %actor.quested(640106)% && ! %actor.quested(640107)%
      *если признак выполнения задания 1 а признак задания 2 - 0
      wait 1s
      эм 
      mecho - Ой, батюшки!
      mecho - Этож леший, ненаглядный мой, нашел что я просила!
      mecho - Я так долго этого ждала!
      эм осторожно, с нежностью начала поглаживать белоснежную ткань
      wait 1s
      mecho - Сейчас, сейчас, подожди! Я передам весточку с тобой.
      эм вытащила кусок бересты и начала что-то там царапать
      wait 1s
      mecho - Вот, держи!
      mload obj 24122
      дать записка %actor.name%
      %purge% %object.id%
    end
  else
    *если дали ткань не по квесту 6401
    *например взяли ее не от лешего, а прямо из ладоги (квест 3031)
    *
    *снимаем флаги квеста 3031
    %actor.unsetquest(303101)% 
    %actor.unsetquest(303103)% 
    wait 1s 
    mecho - Ой, батюшки!
    mecho - Такую ткань сто лет назад обещал мне подарить паршивец - леший!
    mecho - Да только с тех пор тишина... 
    эм осторожно, с нежностью начала поглаживать белоснежную ткань
    wait 1s
    mecho - Так и быть, сошью я тебе что-нибудь из нее!
    mecho - Не пропадать же добру такому!
    mecho - Снейчас подожди...
    wait 1s 
    эм взмахнула помелом и по избушке начали летать наперстки, да иголки
    %purge% %object.id%
    wait 5s 
    * * * *
    switch %random.5%
      case 1
        if %random.100% < 60 && %world.curobjs(24125)% < 10
          mload obj 24125
        else 
          mecho _Вдруг раздался треск разорванной ткани.
          wait 1s
          эм расстроенно рассматривала обрывки сияющего атласа
          say Непрочная ткань-то была у тебя.. Эээх жалко-то как!
        end 
      break
      case 2
        if %random.100% < 60 && %world.curobjs(24126)% < 10
          mload obj 24126
        else 
          mecho _Вдруг раздался треск разорванной ткани.
          wait 1s
          эм расстроенно рассматривала обрывки сияющего атласа
          say Непрочная ткань-то была у тебя.. Эээх жалко-то как!
        end 
      break
      case 3
        if %random.100% < 60 && %world.curobjs(24127)% < 10
          mload obj 24127
        else 
          mecho _Вдруг раздался треск разорванной ткани.
          wait 1s
          эм расстроенно рассматривала обрывки сияющего атласа
          say Непрочная ткань-то была у тебя.. Эээх жалко-то как!
        end 
      break
      case 4
        if %random.100% < 60 && %world.curobjs(24128)% < 10
          mload obj 24128
        else 
          mecho _Вдруг раздался треск разорванной ткани.
          wait 1s
          эм расстроенно рассматривала обрывки сияющего атласа
          say Непрочная ткань-то была у тебя.. Эээх жалко-то как!
        end 
      break
      case 5
        if %random.100% < 60 && %world.curobjs(24129)% < 10
          mload obj 24129
        else 
          mecho _Вдруг раздался треск разорванной ткани.
          wait 1s
          эм расстроенно рассматривала обрывки сияющего атласа
          say Непрочная ткань-то была у тебя.. Эээх жалко-то как!
        end 
      break
      default 
      break 
    done
    * * * *   
  end
  дать все %actor.name% 
end
~
$~
