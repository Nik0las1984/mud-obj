#12300
приветствие волхва 12300~
0 r 100
~
set incomer %actor%
global incomer
wait 1s
%echo% Волхв осмотрел Вас с головы до пят.
wait 1s
if %actor.class%==2
  say  А знаешь ты выглядишь достаточно проворным, только опыта конечно маловато, но опыт - дело наживное
  say Вот пожалуй ты мне сможешь помочь... если захочешь.
else
  say Ну что ты меня осматриваешь? Я вижу что ты вошел, но дела мне до тебя нет.
  say Потому что помочь ты мне ничем не сможешь. Если не веришь - иди на север и сам убедись в этом.
end
~
#12301
умер мельник 12301~
0 f 100
~
if !%exist.obj(12305)%
  %load% obj 12305
end
~
#12302
лезем в яму 12302~
2 c 1
лезть спуститься слезть~
if %arg%!=яма
  %send% %actor% Куда это Вы хотите %cmd%?
else
  %echoaround% %actor% %actor.name% начал%actor.q% уверенно спускаться в яму.
  %send% %actor% Вы начали спускаться в яму.
  %teleport% %actor% 12338 followers
  %echoaround% %actor% %actor.name% спрыгнул%actor.q% сюда сверху.
end
~
#12303
Вылезаем из ямы 12303~
2 c 1
вылезти выбраться~
if %arg%!=яма
  %send% %actor% Откуда это Вы хотите %cmd%?
else
  %echoaround% %actor% %actor.name% начал%actor.q% взбираться вверх.
  %send% %actor% Вы предприняли попытку вылезти из ямы.
  %teleport% %actor% 12337 followers
  %echoaround% %actor% %actor.name% выбрал%actor.u% сюда из ямы.
end
~
#12304
приветствие кузнеца 12304~
0 r 100
~
wait 2s
say Ого! У нас гости! Сам забрел сюда или волхв послал?
~
#12305
Кузнецу дали что-нибудь12305~
0 j 100
~
wait 1s
set objname %object.name%
if %object.vnum%==12308 && %actor%==%questor123%
  say Эка я его приложил знатно! Думал в лепешку - золото все ж таки
  say метал-то ковкий, а оно чегой-то на куски рассыпалось.
  эм покрутил в руках осколки яйца пытаясь понять как их спаять.
  say А больше осколков не было?
  эм с надеждой взглянул на Вас
  say Тут вот видишь - еще маленького кусочка не хватает.
  дум
  wait 1s
  say Слушай, раз такое дело, то можно поступить так
  say Я золото раскатаю потоньше и им покрою форму железную
  say Будет все выгллядеть как и прежде - никто не догадается
  хих
  say Только вот для формы-основы мне руда нужна.
  вопр .%actor.name%
  set hasParts 1
  global hasParts
  %purge% %object%
end
if %object.vnum%==12311
  if %actor%==%questor123% && %hasParts% == 1
    say Ога! Отличная руда для основы  яйца  - сейчас все сделаем
    %echo% - кузнец сноровисто выплавил в горне немного жидкого металла и залил его
    %echo% в специальную формочку.
    %echo% - Потом расплавил осколки золотой скорлупы, смешал расплав со ртутью
    %echo% и этой амальгамой покрыл остывшую к тому времени железную форму-основу.
    %echo% - Примерно через пару часов он уже любовался на позолоченное яичко.
    %load% obj 12306
    %purge% %object%
    дать яйцо .%questor123.name%
    say Вот держи! Волхв и так тупой, а когда золото видит - вообще остатки разума теряет...
    say Ни в жисть он не догадается, что яйцо не целиком золотое.
    set hasEgg 1
    global hasEgg
  else
    say Кусочек очень маленький - ничего путного из него выплавить не удастся...
    if %actor%==%questor123%
      say Вот если бы немного золота к нему...
    end
    дать кусок .%actor.name%
  end
end
if %object.vnum%==12312
  if %actor%==%questor123% && %hasEgg%!=1
    say Не, этот кусок на форму не пойдет - тяжелой она получится
    say другого куска нет?
    дать кусок .%questor123.name%
  else
    say Замечательная руда, подожди немного - сейчас попробую что-нибудь сделать для тебя.
    set prize хренсмаслом
    wait 3s
    if %random.100%<10
      switch %random.3%
        case 1
          if %world.curobjs(12317)%<%world.maxobj(12317)%
            %load% obj 12317
            set prize меч
          end
        break
        case 2
          if %world.curobjs(12318)%<%world.maxobj(12318)%
            %load% obj 12318
            set prize щит
          end
        break
        case 3
          if %world.curobjs(12319)%<%world.maxobj(12319)%
            %load% obj 12319
            set prize доспех
          end
        break
      done
      if %world.curobjs(12316)%<%world.maxobj(12316)% && %actor%==%questor123%
        %load% obj 12316
        set prize кинжал
      end
    end
    if %prize% == хренсмаслом
      груст
      say Знаешь, а руда была хороша лишь на первый взгляд 
      say на самом деле дрянь - почти целиком пустая порода - ничего не получилось...
    else
      %echo% - Кузнец принялся за работу и через некоторое время держал в руках отличный %prize%
      say Вот держи - с тебя 30 кун
      if %actor.gold%<30
        хму
        say Ты что думал? я работать буду бесплатно? Нет денег - нет товара!
        %purge% %prize%
      else
        %actor.gold(-30)%
        дать %prize% .%actor.name%
      end
    end
  end
end
~
#12306
убили хозяйку~
0 f 100
~
if %world.curobjs(12343)%<%world.maxobj(12343)% && %random.100%<=5
  %load% obj 12343
end
~
#12307
долбим жилу в яме 12307~
2 c 1
долбить~
if %arg%!=жилу && %arg%!=жила
  %send% %actor% Что Вы хотите %cmd%?
  halt
end
if %actor.eq(16)% && %actor.eq(16)%==%world.obj(12314)%
  %send% %actor% - Вы начали неистово колотить киркой по жиле рудного камня
  %send% %actor% - и, прежде чем кирка сломалась, Вам удалось отколупнуть небольшой кусочек руды.
  %purge% кирка
  if %world.curobjs(12312)%==0
    %load% obj 12312
  end
else
  %send% %actor% Инструмент бы Вам какой...
end
~
#12308
убили крестьянина на огороде~
0 f 100
~
if %world.curobjs(12344)%<%world.maxobj(12344)% && %random.100%<=5
  %load% obj 12344
end
~
#12309
находим осколки яйца 12309~
2 c 1
разгрести копаться покопаться ворошить раскопать~
if %arg% != куча && %arg% != зола && %arg% != золу && %arg% != кучу
  %send% %actor% Что это Вы хотите %cmd%?
  halt
end
if %actor% == %questor123%
  if !%exist.obj(12308)%
    %load% obj 12308
    %send% %actor% - в золе что-то тускло блеснуло!..
  end
else
  %send% %actor% Ну, и на кого Вы стали похожи теперь? Все выпачкались! Что хоть найти то хотели?
end
~
#12310
входим к охотнику-родноверу 12310~
0 q 100
~
wait 1s
say Чего тебе здесь надо? Иди своей дорогой!
рыч
say Я в ваш хутор не хожу и вы не мешайте мне здесь охотиться
say Как хорошо все это время было, когда все ваши разъехались
say А сейчас смотрю опять чтоль заселяться здесь надумали - каждый день
say почти кто-нибудь да приходит!
паника
say Еще раз говорю - пошли вон отсюда, пока стрелу грудиной не поймали!
~
#12311
убили охотника родновера 12311~
0 f 100
~
if %random.100%<10
  switch %random.3%
    case 1
      if %world.curobjs(12325)%<%world.maxobj(12325)%
        %load% obj 12325
      end
    break
    case 2
      if %world.curobjs(12326)%<%world.maxobj(12326)%
        %load% obj 12326
      end
    break
    case 3
      if %world.curobjs(12327)%<%world.maxobj(12327)%
        %load% obj 12327
      end
    break
    default
    break
  done
end
~
#12312
потрошим тушку 12312~
1 c 2
потрошить~
if %arg%!=тушку
  %send% %actor% Что это Вы собрались %cmd% ?
  halt
end
if %actor%==%questor123%
  if %actor.eq(16)% && %actor.eq(16)%==%world.obj(12328)%
    %send% %actor% В желудке у птицы оказалось золотое яйцо.
    %load% obj 12307
    %purge% тушка
  else
    %send% %actor% Вашим ножом тяжело выпотрошить эту птицу.
  end
else
  %send% %actor% Изрезав птицу на мелкие куски, пух и перья, Вы ничего в ней не нашли интересного - это обычная птица!
  %purge% тушка
end
~
#12313
Сдаем квесты волхву 12313~
0 j 100
~
wait 1
if %actor%==%questor123%
  if %object.vnum%==12305
    %purge% яйцо
    set firstEgg ага
    global firstEgg
  elseif %object.vnum%==12306
    say Это какое-то странное!
    эм недоверчиво осмотрел яйцо и даже поколупал его пальцем
    say Ну да ладно, наверное так должно быть
    %purge% яйцо
    set secondEgg угу
    global secondEgg
  elseif %object.vnum%==12307
    %purge% яйцо
    set thirdEgg да
    global thirdEgg
  elseif %object.vnum%==12333
    say Да ты герой у нас! 
    say Такой молодой, а столько уже дел натворил - будет что внукам рассказывать
    say если доживешь до внуков
    хих
    wait 1 
    say Ну что ж - все что мы могли - сделали, теперь остается только ждать
    say может снимется порча с нашего хутора и станут здесь вновь
    say селиться люди...
    wait 1
    say А тебе за все подвиги твои ратные, конечно же полагается награда
    say ну, например, вот такая
    if  %actor.level%<15 && %actor.skill(заколоть)%>0 && %actor.skill(заколоть)%<80 && %random.100%<=10
      %skilladd% %actor.name% 'заколоть' 5
      %send% %actor% Волхв стал делать пассы руками и вы почувствовали себя опытнее.
    else
      %send% %actor% Волхв полез в дорожную котомку и что-то отуда достал.
      set prize хренсмаслом
      if %random.100%<10
        if %world.curobjs(12334)%<%world.maxobj(12334)%
          %load% obj 12334
          set prize алтын
        elseif %world.curobjs(12335)%<%world.maxobj(12335)%
          %load% obj 12335
          set prize сапоги
        elseif %world.curobjs(12336)%<%world.maxobj(12336)%
          %load% obj 12336
          set prize лал.камень
        end
      end
      if %prize% != хренсмаслом
        дать %prize% .%actor.name%
      else
        %send% %actor% Волхв сложил руны, что-то прошептал и Вас накрыло белое облако.
        dg_cast 'освящение' %actor.name% 
      end
      detach 12313 %self.id%
    end
  else
    halt
  end
  if %firstEgg%==ага && %secondEgg%==угу && %thirdEgg%==да
    %echo% Волхв удовлетворенно потер руки и сказал: Ну сейчас начнется!
    эм медленно стал тереть яйца
    
    if %actor.gold%>5
      %actor.gold(-5)
    end
    say Хм, странно, я вижу только что твои деньги оказываются у меня - а больше ничего не происходит.
    дум
    wait 3s
    say Не смотри на меня - я не знаю что делать, думал если соберем яйца, то все само собой образуется.
    say А ничего не происходит! Может яйца поддельные? Вот это очень какое-то странное!
    паника
    say Ладно, не хотел я этого, но да видать делать нечего придется рассказать, раз так не получается...
    say Видишь ли, староста наш, как все беды начались, сдуру принял христианство и ушел в монахи
    say замаливать грехи. Построил себе скит за ручьем и на люди не выходит.
    say Говорят, что прежде чем податься в святые, сумел он к себе в погреб заманить главного призрака.
    say Вот кабы ты сумел с призраком разделаться - может и остальные бы от нашего хутора отстали?!
    дум
  else
    say Это не все - ищи дальше, их должно быть ТРИ!
  end
end
~
#12314
рубим дерево 12314~
1 c 4
рубить~
if %arg%!=дерево
  %send% %actor% Что это Вы намереваетесь %cmd%?
  halt
end
if !%actor.eq(16)% || %actor.eq(16)%!=%world.obj(12315)%
  %send% %actor% Нет, этим вы не срубите даже засохшее дерево...
  halt
end
if %actor%==%questor123%
  %send% %actor% Вы изловчились и парой мощных ударов сумели повалить этот сухостой, однако топор окончательно доломали...
  %purge% зазубренный.топор
  %echoaround% %actor% %actor.name% с двух ударов сруби%actor.q% дерево
  %load% obj 12330
  %purge% засохшее.дерево
else
  %send% %actor% Размахнувшись со всей дури Вы окончательно сломали топор, оставив при этом глубокую зарубку на стволе засохшего дерева
  %purge% зазубренный.топор
end
~
#12315
делаем переправу 12315~
2 c 1
сделать смастерить~
if %arg%!=переправу
  %send% %actor% Что это Вы намереваетесь %cmd%?
  halt
end
if %actor.haveobj(12330)%
  %send% %actor% Вы перекинули бревно через ручей и теперь можно пройти по нему на другой берег.
  %echoaround% %actor% %actor.name% перекинул%actor.q% бревно через ручей.
  %door% 12345 south room 12346
  %door% 12346 north room 12345
  %purge% бревно
  %load% obj 12342
else
  %send% %actor% Из чего это Вы собираетесь мастерить?
end
~
#12316
входим к монаху 12316~
0 r 100
~
if %actor%==%questor123%
  wait 2s
  эм осмотрел Вас тяжелым взглядом
  say Все воруешь?
  груст
  %echo% Выслушав Вас, монах промолвил:
  say Ты волхву особенно не верь, он сам не ведает что творит и тебя на верную гибель
  say посылает. Не одолеть тебе того, кто сидит в погребе моего бывшего дома. Не дам я тебе ключ.
  say Не будет на моей совести твоей погибели.
  wait 5s
  say Ну раз ты так просишь и уверен в успехе, я пожалуй соглашусь тебе помочь, но сперва докажи,
  say что не сложишь голову ни за грош.
  wait 1
  say Страшно меня по ночам черти искушают! А живут они известно где - в омуте!
  say Изведи этого беса и принеси мне доказательства своей победы над ним,
  say тогда поверю, что и с главным призраком ты сможешь справиться.
  detach 12316 %self.id%
end
~
#12317
убиваем призрак висельника 12317~
0 f 100
~
if !%exist.obj(12331)%
  %load% obj 12331
end
~
#12318
мутим воду 12318~
2 c 1
мутить~
if %arg%!=воду && %arg%!=вода
  %send% %actor% Что Вы хотите %cmd%?
  halt
end
if %actor.eq(16)% && %actor.eq(16)%==%world.obj(12331)%
  %send% %actor% -Вы стали мутить воду в омуте веревкой висельника
  wait 1s
  %send% %actor% -черти очень этого не любят
  wait 2s
  %send% %actor% - ну вот и доигрались, один из чертей выпрыгнул из омута как из табакерки
  %load% mob 12307
  %purge% веревка.висельника
else
  %send% %actor% То, чем Вы собираетесь мутить воду, очень легко застудить и потом будут проблемы... большие проблемы.
end
~
#12319
убиваем черта 12319~
0 f 100
~
if !%exist.obj(12332)%
  %load% obj 12332
end
set killer %actor%
remote killer %world.mob(12305)%
~
#12320
даем рога и копыта монаху 12320~
0 j 100
~
wait 2
if %object.vnum%==12332
  if %actor%==%killer%
    %echo% - Монах погладил седую бороду и задумчиво произнес
    say А ты оказался сноровистее чем я думал.
    say Ну что ж, ты сам выбрал свою судьбу
    say Вот тебе ключ от погреба
    %load% obj 12329
    дать ключ .%actor.name%
    say Но учти, то что находится там, гораздо опаснее этого молодого черта
    эм монах покосился на рога и копыта
    крест
  else
    say Что же ты меня обмануть хочешь?
    say Ведь это не ты черта одолел?
    say Ты желаешь, чтоб я тебя на верную смерть послал и грех на свою душу взял?
    say Не дам я тебе ключа!
    say Уходи отсюда!
  end
end
~
#12321
равшан лечит 12321~
0 k 90
~
if %world.curmobs(12308)%>0
  eval nachalneg %world.mob(12308)%
  if %nachalneg.hitp%<%nachalneg.maxhitp%
    say шекельме-беклеме-шайтанама
    say Спасти насяльнике!
    dg_cast 'исцеление' военачальник
  end
end
~
#12322
убит военачальник 12322~
0 f 100
~
if !%exist.obj(12333)%
  %load% obj 12333
end
~
#12324
триггер новгородского крестьянина   12324~
0 r 100
~
%send% %actor% Кто-то сзади Вас крепко обнял и прошептал на ухо:
%send% %actor% "Так вон оно что, Михалыч"
~
#12325
убит новгородский крестьянин 12325~
0 f 100
~
if %world.curobjs(12309)%<%world.maxobj(12309)% && %random.100%<=5
  %load% obj 12309
end
~
#12326
убит новгородский ушкуйник 12326~
0 f 100
~
if %world.curobjs(12338)%<%world.maxobj(12338)% && %random.100%<=5
  %load% obj 12338
end
~
#12327
убили кузнеца 12327~
0 f 100
~
if %world.curobjs(12340)%<%world.maxobj(12340)% && %random.100%<=5
  %load% obj 12340
end
~
#12328
убили монаха  12328~
0 f 100
~
if %world.curobjs(12341)%<%world.maxobj(12341)% && %random.100%<=5
  %load% obj 12341
end
~
#12329
Сказали волхву помогу 12329~
0 d 1
смогу помогу хочу~
wait 1s
if %incomer%==%actor%
  if %actor.class%==2
    say Мы жили в самом лучшем краю, а все остальные селения завидовали нам.
    say Только в колодец нашего хутора так долго плевали, что он почти высох...
    say Только у нас кривой кочергой можно вывести на чистую воду...
    say Ну да чего я тут растекаюсь мыслию по древу - ты ведь и сам все слышал про наш хутор.
    wait 1
    say Этим чудным достижениям мы были обязаны древнему артефакту, хранившемуся в доме старосты.
    say Артефакт этот был подарен нашему голове правителем далекого царства, когда он 
    say с посольством проезжал мимо наших земель  - случилось им заночевать в нашем хуторе.
    say Уж не знаю, как угодил хуторской староста этому правителю, но на утро тот был очень доволен
    wait 1
    say Вот с тех пор нам везло. Наши мужики всегда выигрывали в лапту у мужиков из других деревень.
    say А наших пацанят никогда не ловили, когда те лезли за яблоками в сады наших соседей.
    wait 1
    say И, как я уже говорил, все остальные нам завидовали, а зависть ужасная штука - и наш хутор сглазили...
    say Жители соседних селений сбросились по алтыну и наняли очень известного татя, чтобы он выкрал древний артефакт.
    say Украсть его не получилось, вернее он его выкрал, но далеко унести не сумел - как только он выбрался из дома, 
    say его хватил удар, и он окаменел, но выронил артефакт из рук. Дальнейшая судьба нашего сокровища неизвестна.
    wait 1
    say С тех пор все у нас пошло наперекосяк - то пожар, то недород. Вот народ и стал все бросать и уезжать отсюда
    say А последней каплей стало нашествие давно умерших хуторян. Наши предки стали являться нам чуть ли не средь бела дня.
    say Вот после этого убежали последние из тех, кто еще оставался.
    wait 1
    say Я поэтому и подумал, раз тот тать заварил всю эту кашу, может другой тать сможет все это расхлебать?
    set questor123 %actor%
    global questor123
    remote questor123 %world.mob(12303)%
    remote questor123 %world.mob(12305)%
    remote questor123 %world.room(12340)%
    remote questor123 %world.obj(12322)%
    remote questor123 %world.obj(12300)%
    detach 12300 %self.id%
    detach 12329 %self.id%
  else
    say Ты что не русский? Я же тебе сказал понятно: вот именно ты - мне помочь НЕ СМОЖЕШЬ!
    say Хочешь приключений - иди, они там есть, но больше я с тобой разговаривать не желаю!
  end
end
~
#12330
Говорим с кузнецом 12330~
0 d 1
сам волхв~
if %speech%==сам
  say Ну что ж, молодчина, что нашел сам - только вот на продажу 
  say пока нет ничего - хворал всю неделю, руды не завез, а тот запас
  say что есть - храню на "черный день".
  halt
end
if %speech%==волхв
  if %actor%!=%questor123%
    say Да ладно заливать то,
    say а то я волхва не знаю!
    say Не в жжисть бы он такую образину не подрядил бы в помощники
    эм отвернулся и что-то пробурчал
  else
    say Вот ему все неймется! Да умерло - так умерло!
    say Нет больше хутора, и не вернуть ничего и никого!
    say А что я? Да я вот сюда отселился, после того, как кузня моя там на хуторе
    say ни с того ни с сего разваливаться прямо на глазах начала.
    wait 1
    say Здесь место хорошее, руда болотная близко, леса сколько хочешь, а заказы...
    say Есть заказы! У меня брат в Новгороде живет, он там с Ганзейскими купцами 
    say дружбу водит - вот от него заказы и получаю, на жизнь хватает.
    say А переезжать из этих мест не хочу. Ни к чему уж. Здесь родился, здесь и помру.
    wait 1
    взд
    wait 2s
    say Ну что ты на меня так смотришь? Да знаю я, знаю про яйца.
    say И видел даже одно из них. Еще в старой кузне на хуторе
    say случайно его нашел возле горна. Сам не ведаю как оно там оказалось!
    крест
    wait 1s
    say А когда кузница рушиться началась - я в сердцах по тому яйцу и треснул молотом,
    say ибо все зло от них - из-за них поганых на хуторе беды все начались,
    say да и кинул его в горнило. А уж там и балка начала трещать - еле успел выбежать.
    wait 1
    say Не верю я волхву, что дескать коли соберем яйца вместе - то жизнь наладится.
    wait 1s
    дум
    wait 1s
    say однако ж, попробовать можно, только я туда больше не ходок - особенно после
    say того, как ко мне покойный батюшка там появился, как раз в аккурат перед тем, 
    say как я яйцо нашел возле горна.
    wait 1
    say Ты это если чего найдешь - приноси, может смогу починить...
    detach 12304 %self.id%
    detach 12330 %self.id%
  end
end
~
#12399
Ресет зоны~
2 f 100
~
%door% 12345 south purge
%door% 12346 north purge
~
$~