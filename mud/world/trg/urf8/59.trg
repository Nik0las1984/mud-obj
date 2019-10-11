#5900
РЕПОП ЗОНЫ~
2 f 100
~
context 59
unset quester
unset state
unset steps
calcuid bedroom 5966 room
detach 5904 %bedroom.id%
wdoor 5960 north purge
wdoor 5908 east purge
while (%world.curmobs(5902)%+%world.curmobs(5907)%+%world.curmobs(5908)% >= 1)
  if %exist.mob(5902)%
    calcuid gonka 5902 mob
    %purge% %gonka%
  end
  if %exist.mob(5907)%
    calcuid mouse 5907 mob
    %purge% %mouse%
  end
  if %exist.mob(5908)%
    calcuid skel 5908 mob
    %purge% %skel%
  end
done
if (%exist.mob(5904)%)
  calcuid mother 5904 mob
  detach 5911 %mother.id%
  attach 5911 %mother.id%
end
if (%exist.mob(5901)%)
  calcuid mertv 5901 mob
  %purge% %mertv%
  wat 5927 wload mob 5901 
end
if (%exist.mob(5903)%)
  calcuid drakon 5903 mob
  %purge% %drakon%
  wat 5943 wload mob 5903
end
if (%exist.mob(5905)%)
  calcuid docha 5905 mob
  %purge% %docha%
end
if (%exist.obj(5907)%)
  calcuid lovka 5907 obj
  %purge% %lovka%
end
if (%exist.mob(5906)%)
  calcuid madangel 5906 mob
  %purge% %madangel%
end
context 4000
set warlockstory 0
worlds warlockstory
~
#5901
Приветствие квестера~
0 r 100
~
*Приветствие квестера | моб | Great-All PC | 100
context 59
wait 1s
кашл
wait 1s
if ((%state% == конец) || (%state% == пора))
  поклон .%actor.name%
  halt
end
%echo% Не прошло и полгода как старик обратил на Вас внимание.
wait 5
if (%quester% != %actor.iname%)
  say Долгих лет жизни тебе
  %echo% "Неужели пожаловал%actor.g% таки избранн%actor.w%?" - тихонько пробубнил %self.name%.
  wait 5
  say Поведай-ка мне, что предпочтешь ты - свет или тьму?
  вопр .%actor.name%
  halt
elseif (%state% == взят)
  set state сказ
  worlds state
  хмур .%actor.name%
  say Чего ты тут ходишь? Я ведь тебе все уже объяснил!
  wait 5
  задум
  say Погоди-ка! Ты что же, не понимаешь о чем речь?
  чесат
  say Как же так, ведь ты был%actor.g% избран%actor.g% еще до рождения
  say Тебе было предначертано...
  тоска
  say Тогда слушай историю, да не перебивай
  emot хорошенько прокашлялся, готовясь к длинному повествованию
  wait 2s
  say Еще в прошлом веке, в этих краях кипела жизнь
  say Небольшая деревушка распологалась к востоку от леса
  say И родился в ней как-то мальчонка с глазами как у кошки
  say В те языческие времена никто и подумать ничего плохого не мог
  say Однако вырос мальчонка, изучил множество магических книг 
  say и научился общаться со смертью, оживлять умерших животных
  say да поднимать из падали всякой нечисть себе на службу
  say Жить то он продолжал в деревне, помогал как мог соседям
  say Никто его и не трогал - даже жена у него как-то завелась,
  say волшебника деревенского дочь
  emot вздохнул и перевел дыхание
  say Однако ж пришла пора появиться другой вере на земле русской
  say И начали христиане недовольствовать, что по деревне то тут,
  say то там бегают нечистивые создания, порождения зло, как будто
  say А случился в один из годов неурожай, так и вовсе выгнали
  say из деревни чернокнижника. Жена то с ним, конечно, ушла
  say Поселились они в лесу, силами светлыми и темными расчистили
  say эту поляну, возвели башню чтобы издалека на родные края
  say посматривать. Однако башню и жильцам деревушки стало видно
  say Стали они бояться проклятий страшных от чернокнижника и
  say в другой неурожайный год решили таки сжить его со свету.
  say Волшебник деревенский, отец жены чернокнижника, собрал людей,
  say призвал защитницу небесную, да и пошел к башне.
  wait 3
  плак
  say Да вот же беда случилась - чернокнижника то не было в то
  say время в башне - оставив беременную жену следить за хозяйством,
  say отправился он в страну заморскую, тридевятое царство, плащ
  say заколдовать по-особому тамошнему упырю. Надо ведь зарабатывать
  say как-то на жизнь.
  say Обозленных сельчан не смог уже остановить даже волшебник
  say Закололи они жену чернокнижника, да всячески труп ее изуродовали
  say Чтобы чернокнижнику не вздумалось ее оживить по возвращению
  вздох
  say Но не учли они возросших с годами сил чернокнижника
  say Вернувшись из странствий и увидев сельчанами содеянное,
  say осерчал на них чернокнижник люто, пошел к деревушке, да и 
  say тряхнул ее так, что вся деревня под землю-матушку и ушла.
  say Только кладбище и уцелело. Я как раз там в ту пору был
  say Трясло так, что думал земля уж разваливается
  дрожа
  say Погоревав о смерти жены, решил чернокнижник все же попытаться 
  say вернуть ее к жизни, но сил своих не рассчитав, сам и приставился
  say как только вздох ее услыхал.
  wait 3
  say Жена ожила, ожил и родился ее ребенок, растет медленно, зато 
  say сила в ребенке не человеческая, но божественная таится.
  say Однако ж и после всего этого нет спокойной жизни нам на поляне
  say То ли волшебник деревенский ляпнул чего-то в геену проваливаясь,
  say то ли небесная защитница сама ополоумела от увиденного,
  say но повадилась теперь защитница эта охотиться за ребенком
  say Изловила и пленила оставшихся помощников неживых
  say Житья не дает, того и гляди начнет башню разбирать по кирпичикам
  зябко
  wait 3
  say Однако ж умирая, чернокнижник успел сказать мне, что время
  say настанет когда избранник его явится сюда, соберет его слуг
  say оставшихся и поможет нам избавиться от сумашедшей защитницы
  say Я то был в учениках его, да так недоучкой и остался
  вздох
  say Как видишь, придется тебе теперь помогать нам, судьба такая
  say Теперь ступай, у меня тут еще дела остались. Остерегайся только
  say хранителей защитницы - они нападают на всех кого встретят.
  halt
elseif ((%state% == сказ) || (%state% == огреб) || (%state% == дочь))
  хмур .%actor.name%
  say Чего ты тут ходишь? Я ведь тебе все уже объяснил!
  wait 5
  %echo% %self.iname% буквально вытолкал Вас обратно на лестницу.
  eval temp %actor.position(8)%
  %force% %actor% down
elseif (%state% == доне)
  хлоп
  say Вот это бой, вот это бой!
  say Ты выполнил%actor.g% предначертанное, избранн%actor.w%
  say И теперь заслуживаешь достойного поощрения
  eval temp %actor.exp(+50000)%
  wait 3
  say Не, ну Вы это видели? Девчонка, а жахнула как...
  wait 3
  emot вдруг опомнился и постарался успокоиться
  say Кхм. Сделала она все как я ее и учил
  say Мы ведь все были уверены, что смерть защитницы неизбежна
  emot старается сохранять серьезность выражения лица
  wait 1s
  say Тебе же положена награда, о которой и не мечтает большинство
  say молодых чернокнижников.
  wait 1s
  if (%actor.can_get_spell(поднять труп)%)
    if (!%actor.spelltype(поднять труп)%)
      mspellturn %actor% поднять.труп set
      say Поднять труп - важное заклинание для чернокнижника
      пожат %actor.name%
    else
      say Погоди, дак ты уже знаешь как поднимать трупы!
      say Давай хоть деньжат тогда подкину тебе
      %echo% С этими словами %self.iname% достал из сундука горстку кун и вручил Вам.
      eval temp %actor.gold(+500)%
    end
    eval temp %actor.setquest(5900 %date.yday%)%
  else
    вздох
    say Однако, вижу теперь, не готов%actor.q% ты еще знать это заклинание
    say Приходи позже, обязательно изучишь!
  end
  wait 3
  say Теперь в наших краях вновь зацветет жизнь, &Wжизнь после смерти&n!
  wait 2s
  say Зайди, кстати, еще к вдовушке - она может помочь тебе выбраться отсюда
  set state пора
  worlds state
  %door% 5908 east purge
  eval temproom 5900
  while %temproom% < 5963
    eval rnd %random.4%
    switch %rnd%
      case 1
        mat %temproom% mload mob 5902
      break
      case 2
        mat %temproom% mload mob 5907
      break
      case 3
        mat %temproom% mload mob 5908
      break
      case default
      break
    done
    eval temproom %temproom%+1
  done
end
~
#5902
Взобраться на постамент~
2 c 1
взобраться лезть~
if %arg.contains(постамент)%
  %echo% Держась на скользкий край постамента, Вы смогли подтянуться и взобраться на него.
  wait 3
  %teleport% %actor% 5918
else
  %send% %actor% Куда бы это?
end
~
#5903
Общаемся с квестером~
0 d 100
*~
context 59
if ((%actor.name% == %quester%) || (%actor.vnum% != -1))
  вопрос .%actor.name%
  halt
end
wait 1
switch %speech%
  case свет
    вздох
    say Гмм, правильно, конечно, мыслишь
    say Но не такого ответа я ждал от тебя
    груст
  break
  case тьма
    case тьму
      set quester %actor.iname%
      set state взят
      eval steps 0
      worlds quester
      worlds state
      worlds steps
      рад .%actor.name%
      say Я так и знал, что Учитель рассказывал о тебе!
      say Ума не приложу как он так все рассчитал
      сиять
      say Раз уж ты избранн%actor.w%, должно тебе знать уже все
      say Так что не буду задерживать, отправляйся немедленно
      wait 1s
      say А, да, чуть не забыл
      say Тебе ведь положено иметь с собой некоторые вещи
      say Хотя я не знаю зачем этот хлам может пригодиться
      wait 3
      %echo% %self.iname% отпер и открыл сундук, достал какие-то вещи.
      %echo% %self.iname% закрыл и запер сундук.
      wait 3
      %load% obj 5901
      %load% obj 5903
      %load% obj 5904
      %load% obj 5905
      дать all .%actor.name%
      wait 3
      %echo% %self.iname% буквально вытолкал Вас обратно на лестницу.
      eval temp %actor.position(8)%
      %force% %actor% down
      wait 1s
      кричат Если вдруг чего непонятно будет - возвращайся, растолкую!
    break
  done
~
#5904
Девчонка просыпается~
2 e 100
~
wait 2s
%echo% _- Папа?
wait 1s
%echo% Внезапно подушки и звериные шкуры зашевелились.
%echo% Маленькая заспанная девчушка вылезла из под большой шкуры медведя.
%load% mob 5905
calcuid docha 5905 mob
wait 1s
%force% %docha% икать
%force% %docha% say Простите, мне, наверное, просто приснился сон.
%force% %docha% вздох
%force% %docha% say Ой! А Вы что, чернокнижник?
detach 5904 %self.id%
~
#5905
Шарики работают~
1 h 100
~
switch %self.vnum%
  case 5901
    if (%self.room% != 5908)
      %echo% Вы бросили %self.vname%.
      %echo% %self.iname% отскочил от земли и запрыгнул обратно к Вам в руки.
      return 0
      halt
    else
      %echo% &yВы разбили %self.vname%, и земля начала дрожать !&n 
      if %actor.affect(верхом или под седлом)%
        %force% %actor% соскоч
      end
      %actor.position(6)%
      %send% %actor% Вас повалило на землю.
      %echo% Одно из трухлявых деревьев на востоке рухнуло, расчистив собой проход.
      %door% 5908 east room 5909
    end
  break
  case 5903
    if (%self.room% != 5943)
      %echo% Вы бросили %self.vname%.
      %echo% %self.iname% отскочил от земли и запрыгнул обратно к Вам в руки.
      return 0
      halt
    else
      if (%exist.mob(5903)%)
        %echo% Вы метнули %self.vname% в цепь. 
        %echo% Мгновенно раскалившись от скорости, %self.iname% лопнул. 
        %echo% &RМагическая стрела огня, вылетевшая из шарика, разбила цепь.&n 
        calcuid drakon 5903 mob
        attach 5908 %drakon.id%
        exec 5908 %drakon.id%
      end
    end
  break
  case 5904
    if (%self.room% != 5927)
      %echo% Вы бросили %self.vname%.
      %echo% %self.iname% отскочил от земли и запрыгнул обратно к Вам в руки.
      return 0
      halt
    else
      if (%exist.mob(5901)%)
        calcuid mertv 5901 mob
        %echo% Вы разбили %self.vname%, тьма вырвалась наружу. 
        %echo% &bЧерное облако покрыло %mertv.vname% с головы до пят.&n
        dg_cast 'исцеление' %mertv.name%
        %echo% %mertv.iname% выглядит лучше.
        detach 5907 %mertv.id%
        attach 5908 %mertv.id%
        exec 5908 %mertv.id%
      end
    end
  break
  case 5905
    if (%self.room% != 5935)
      %echo% Вы бросили %self.vname%.
      %echo% %self.iname% отскочил от земли и запрыгнул обратно к Вам в руки.
      return 0
      halt
    else
      if (%exist.obj(5900)%)
        calcuid gruda 5900 obj
        %purge% %gruda%
      end
      %echo% Вы бросили %self.vname% в пруд, магия воздуха вырвалась из него.
      if (%self.carried_by%)
        set playa %self.carried_by%
        dg_cast 'дышать водой' .%playa.iname%
      end
      %echo% &CПузырь воздуха подхватил груду костей со дна пруда.&n 
      %echo% Белая костяная гончая появилась над водой. 
      %load% mob 5902
      calcuid gruda 5902 mob
      eval savior %actor%
      remote savior %gruda.id%
      attach 5908 %gruda.id%
      exec 5908 %gruda.id%
    end
  break
done
return 0
%purge% %self%
~
#5906
Шарики хотят работать~
2 e 100
~
switch %self.vnum%
  case 5908
    if (%exist.obj(5901)%)
      calcuid sphere 5901 obj
    end
  break
  case 5943
    if (%exist.obj(5903)%)
      calcuid sphere 5903 obj
    end
  break
  case 5927
    if (%exist.obj(5904)%)
      calcuid sphere 5904 obj
    end
  break
  case 5935
    if (%exist.obj(5905)%)
      calcuid sphere 5905 obj
    end
  break
done
wait 1
if %sphere%
  %echo% %sphere.iname% вдруг начал%sphere.g% выпрыгивать у Вас из рук.
end
~
#5907
Приветствие мертвяка~
0 r 100
~
eval temp %self.hitp(200)%
wait 1s
eval rnd %random.2%
switch %rnd%
  case 1
    %echo% %self.iname% закашлялся и забился в судорогах.
  break
  case 2
    %echo% %self.iname% прохрипел что-то и схватился за горло.
  break
done
~
#5908
Благодарности отпущенных~
0 z 100
~
context 59
wait 1s
switch %self.vnum%
  case 5901
    eval steps %steps%+1
    worlds steps
    say Благодарю тебя, о, избранн%actor.w%!
    say Позволь представиться, меня зовут Гуль
    say Меня оживил Учитель перед самым отъездом
    say в тридевятое царство и дал строгий наказ
    say ждать тебя здесь не смотря ни на что.
    say Эта свихнувшаяся небесная защитница чуть
    say было не сломила уже мой дух - приходится
    say питаться исключительно крысами, а кто их
    say знает, где они шляются в этом мертвом лесу?
    гадос
    wait 3
    if (%exist.mob(5905)%)
      say Скажи когда будет пора выдвигаться на бой
      say Подсоблю чем смогу
      attach 5913 %self.id%
    else
      say Тебе нужно найти жену и дочь Учителя -
      say они живут где-то рядом с поляной,
      say скрываются под пеленой непроглядной тьмы
      wait 3
      say После этого за мной и приходи, подсоблю чем смогу
    end
  break
  case 5902
    eval steps %steps%+1
    worlds steps
    %echo% К вашему удивлению, %self.iname% заговорила человеческим голосом. 
    say Благодарю тебя, о, избранн%actor.w%!
    say Учитель наделил меня исключительным нюхом 
    say чтобы я могла помочь тебе отыскать укрытие
    say его жены и ребенка.
    %echo% %self.iname% начала принюхиваться к земле.
    wait 1s
    say Следуй за мной!
    wait 3
    attach 5909 %self.id%
    east
  break
  case 5903
    detach 5910 %self.id%
    eval steps %steps%+1
    worlds steps
    %echo% %self.iname% взметнулся в небо, облетел поляну кругом.
    %echo% Затем он камнем кинулся вниз, мягко приземлился рядом с вами.
    wait 3
    %echo% К вашему удивлению, %self.iname% заговорил человеческим голосом. 
    say Благодарю тебя, о, избранн%actor.w%!
    say Когда ты будешь готов%actor.g% к сражению с защитницей,
    say приводи своих помощников сюда
    say Думаю, я смогу вызвать ее на открытый бой
    attach 5917 %self.id%
  break
done
~
#5909
Гончая ищет землянку~
0 br 100
~
wait 3
if ((%savior.realroom% != %self.realroom%) || %self.fighting%)
  halt
end
if (%self.realroom% != 5960)
  eval rnd %random.3%
  switch %rnd%
    case 1
      %echo% %self.iname% направила череп по ветру.
    break
    case 2
      %echo% %self.iname% начала принюхиваться к земле.
    break
    case 3
      %echo% %self.iname% замерла на миг, и вдруг рванула в северном направлении.
    break
  done
  north
  halt
else
  %echo% %self.iname% осторожно прошлась вдоль стены леса.
  wait 1s
  %echo% %self.iname% поднялась на задние лапы ударила во что-то.
  %echo% Широкая дверь распахнулась внутрь жилища.
  %door% 5960 north room 5963
  wait 3
  %echo% Весело повиляв хвостом, %self.iname% рванула в дом.
  north
end
wait 1s
if (%self.realroom% == %actor.realroom%)
  say Я буду ждать вас здесь. Скажи когда будет пора идти
else
  крич Я буду ждать вас в доме. Скажи когда будет пора идти
end
detach 5909 %self.id%
~
#5910
Дракон пытается улететь~
0 b 30
~
%echo% %self.iname% попытался улететь ввысь.
%echo% Стальная цепь, тянущаяся к его лапе от развесистого дуба, натянулась.
%echo% %self.iname% продолжил кружиться над деревом.
~
#5911
Приветствие жены чернока~
0 r 100
~
*Приветствие жены чернока | моб | Great-All PC | 100
context 59
wait 1
if ((%state% == доне) || (%state% == пора))
  say А вот и наш%actor.g% победоносн%actor.w% избранн%actor.w%!
  say Благодарю тебя за доброе дело, %actor.name%
  emot подошла к Вам и крепко обняла
  wait 1s
  say Если хочешь, можешь войти в этот портал
  say Мы используем его для добычи свежего мяса
  say Только осторожно, там водятся ядовитые змеи
  say Да и кабанчики там злые, хотя и очень вкусные
  wait 1
  %echo% %self.iname% сложила руки в молитвенном жесте, испрашивая у Богов врата...
  calcuid portroom 5964 room
  attach 5925 %portroom.id%
  exec 5925 %portroom.id%
  detach 5925 %portroom.id%
  set state конец
  worlds state
  halt
end
if ((%state% == огреб) || (%state% == конец) || (%state% == дочь))
  halt
end
say Ну что, ребенок, проснулась?
вопрос
wait 1s
настор
%echo% %self.iname% начала мигать.
%echo% %self.iname% метнулась к противоположной стенке.
%echo% %self.iname% схватила сковороду, висящую на стене.
%echo% Последнее что Вы увидели - сковорода, летящая прямо Вам в лоб.
%echo% Вы ослепли !
eval temp %actor.wait(2)%
wait 2s
%echo% К Вам вернулась способность видеть.
wait 2s
%echo% Постепенно Вы пришли в себя...
wait 2s
if (%actor.sex% == 2)
  say Не зашибла, девица?
else
  say Не зашибла, сокол?
end
say Ты уж прости меня, времена у нас нынче неспокойные
say А гостей уже так давно не бывало, что я и позабыла
say Чего нужно говорить и как себя вести
wait 3
say Раз уж ты прибыл%actor.g% сюда, значит пришла пора
вздох
say А что если Вы не справитесь с этой... тварью?
say Я то, как видишь, слепая - от меня проку в бою не будет
say Об одном тебя прошу - обереги дитя мое, не оставь в беде
всхлип
say Она наверное еще отдыхает после охоты, посмотри в спальне
calcuid bedroom 5966 room
attach 5904 %bedroom.id%
set state огреб
worlds state
~
#5912
Девчонка приветствует~
0 d 1
*~
context 59
wait 3
switch %speech%
  case конечно
    case готов
      case да
        if (%state% == огреб)
          set state дочь
          worlds state
          сиять .%actor.iname%
          say Прямо как мой папа!
          say Когда я вырасту, я тоже стану чернокнижником!
          мечта
          say Меня Младой зовут, кстати, а ты - избранн%actor.w%, я знаю
          wait 3
          %echo% Вдруг лицо девочки потемнело. Стало по-взрослыму серьезным. 
        end
        wait 3
        if (%steps% < 3)
          say Прежде чем мы сможем вызвать на бой эту тварь,
          say Тебе нужно вызволить наших с мамой помощников
          say Приходи когда и дракон, и мертвяк будут готовы помочь нам
          say Насколько мне известно, дракон прикован к дубу на юго-западе
          say Мертвяк же прячется под кладбищем, что к востоку от поляны
          attach 5918 %self.id%
        else
          detach 5918 %self.id%
          say Я вижу, наши с мамой помощники уже на свободе
          say А это значит, что мы можем вызвать ее на бой
          say Подожди меня в прихожей - перед боем мне нужно приготовиться
          wait 5
          встать
          wait 5
          зеват
          wait 1s
          east
          wait 2s
          %echo% %self.iname% полезла разгребать игрушки, сложенные кучей в углу.
          %echo% %self.iname% достала из кучи игрушек пару свитков возврата.
          wait 1s
          south
          wait 5
          чесат костяная.гончая
          wait 5
          east
          wait 1s
          обнят жена.чернокнижника
          wait 2s
          вздох
          wait 5
          west
          wait 5
          след .%actor.iname%
          attach 5913 %self.id%
          calcuid gonka 5902 mob
          attach 5913 %gonka.id%
          calcuid mertv 5901 mob
          attach 5913 %mertv.id%
          detach 5912 %self.id%
        end
      break
      default
        чесат
        halt
      break
    done
~
#5913
Команда следовать~
0 d 1
следуй пойдем идем пора~
context 59
if (%steps% >= 3) && (%actor.vnum% == -1)
  встать
  след .%actor.name%
  if (%self.vnum% != 5905)
    dg_affect %self% зачарован подчинить_разум 1 10000
  end
end
~
#5914
Мышеловка срабатывает~
2 e 100
~
if (%exist.obj(5906)%)
  wait 3
  calcuid lovka 5906 obj
  %purge% %lovka%
  %echo% Оглядываясь по сторонам, Вы случайно задели лежащую на полу мышеловку.
  %echo% Мышеловка подпрыгнула и БОЛЬНО вцепилась Вам в ногу.
  eval dmg %random.50%+10
  %damage% %actor% %dmg%
  wait 3
  %echo% Хорошенько тряхнув ногой, Вы освободились от кусачей мышеловки.
  %load% obj 5907
end
~
#5915
Боевой триг защитницы~
0 k 100
~
if (%self.hitp% < 600)
  foreach victim %self.pc%
    if (%victim.maxhitp% < %victim.hitp%)
      %send% %victim% 'Будь тощей аки прежде' - мелькнула чужая мысль в Вашей голове.
      eval temp %victim.hitp(%victim.maxhitp%)%
    end
    eval percent %victim.hitp%*100/%victim.maxhitp%
    if (%percent% < 50)
      halt
    end
  done
  dg_cast 'исцеление' %self.name%
  %echo% %self.iname% издала непонятный звук.
end
~
#5916
Боевой триг дочки~
0 k 100
~
*Боевой триг дочки | моб | Fight | 100
if (!%exist.mob(5906)%)
  halt
end
eval rnd %random.10%
if (%rnd% < 4)
  eval leader %self.leader%
  if (%leader.realroom% != %self.realroom%)
    кричат Все в бой! Пути к отступлению нет!
  else
    шепта %leader.name% Она слишком сильна!
    шепта %leader.name% Попробуй убедить ее, что ты умираешь!
    шепта %leader.name% &MПритворись&n!
  end
end
if (%self.hitp% < 100)
  %echo% %self.iname% зачитала свиток возврата.
  %echo% %self.iname% исчезла.
  %teleport% %self% 5965
  wait 1s
  кричат Да притворись же что умираешь, избранн%actor.w%!
end
~
#5917
Готовы к битве? Входим к дракону~
0 r 100
~
wait 3
if ((%exist.mob(5901)%) && (%exist.mob(5902)%) && (%exist.mob(5905)%))
  calcuid mertv 5901 mob
  calcuid gonka 5902 mob
  calcuid docha 5905 mob
  if ((%mertv.realroom% == %self.realroom%) && (%gonka.realroom% == %self.realroom%) && (%docha.realroom% == %self.realroom%))
    след .%actor.name%
    say Итак, все в сборе
    say Отбросьте страх за свою жизнь
    say Ведь лучше умереть в бою, чем прятаться всю жизнь!
    %echo% С этими словами дракон взмыл вверх, скрылся за облаками.
    eval temp %actor.wait(1)%
    %teleport% %self% 5918
    wait 2s
    %teleport% %self% 5943
    %echo% Внезапно с неба упали костяной дракон, а за ним и небесная защитница.
    %load% mob 5906
    if (%gonka.realroom% == 5943)
      %echo% %gonka.iname% первая бросилась на врага!
      %force% %gonka% убить обезумевш
      %force% %mertv% убить обезумевш
      %force% %docha% убить обезумевш
      убить обезумевш
    end
    detach 5917 %self.id%
    halt
  end
end
say Когда же ты приведешь сюда всех своих соратников?
say Без их помощи нам ни за что не справиться с ней!
~
#5918
Вошли к дочке~
0 r 100
~
wait 3
say Ну что, избранн%actor.w%, готов%actor.g%?
вопрос .%actor.name%
~
#5919
Гонка входит в комнату~
0 bh 100
~
*Гонка входит в комнату | моб | Random, Greet-All | 100
context 59
if (%exist.mob(5906)%)
  calcuid madangel 5906 mob
  if (%self.realroom% == %madangel.realroom%)
    *%echo% %self.iname% бросилась на врага!
    пом .%quester%
    убить %madangel.name%
  end
end
foreach victim %self.all%
  if ((%victim.vnum% == 5910) || ((%victim.vnum% == 5911))
    *%echo% %self.iname% бросилась на врага!
    пом .%quester%
    убить %victim.name%
    halt
  end
done
~
#5920
Притвориться перед защитницей~
0 c 100
притвориться~
*Притвориться перед защитницей | моб | Command | 100 | притвориться
eval half %actor.maxhitp%
if (%actor.hitp% > %actor.maxhitp%/2+25)
  %echo% Вы слишком хорошо выглядите для того чтобы притворяться!
else
  %echo% Вы скорчили УЖАСНУЮ гримассу боли и повалились на землю.
  eval temp %actor.position(6)%
  eval temp %actor.wait(1)%
  if (%exist.mob(5905)%)
    calcuid docha 5905 mob
    exec 5921 %docha.id%
  end
end
~
#5921
Притворились, дочка наступает~
0 z 100
~
*Притворились, дочка наступает | моб | Auto | 100
if (%exist.mob(5906)%)
  calcuid madangel 5906 mob
  %teleport% %self% %madangel.realroom%
  %echo% %madangel.iname% расхохоталась - словно гром по небесам прокатился.
  %echo% Откуда ни возьмись, за спиной у нее появилась %self.iname%.
  %echo% &RКаменное проклятье&n %self.rname% отшибло сознание у %madangel.rname%.
  *%echo% %self.iname% создала &Rкруг пустоты&n и наслала его на небесную защитницу!
  %echo% Меткой магической стрелой %self.iname% снесла голову %madangel.dname%.
  %purge% %madangel%
  exec 5923 %docha.id%
end
~
#5922
Небесную защитницу таки рипнули~
0 f 100
~
*Небесную защитницу таки рипнули | моб | Death | 100
if (%exist.mob(5905)%)
  %echo% %self.iname% расхохоталась - словно гром по небесам прокатился.
  calcuid docha 5905 mob
  if (%docha.realroom% != %self.realroom%)
    %teleport% %docha% %self.realroom%
    %echo% Откуда ни возьмись, за спиной у нее появилась %docha.iname%.
  else
    %echo% Используя момент, за спиной у нее появилась %docha.iname%.
  end
  %echo% &RКаменное проклятье&n %docha.rname% отшибло сознание у %self.rname%.
  *%echo% %docha.iname% наслала на %self.vname% &Rкруг пустоты&n, который накрыл ее с головой.
  exec 5923 %docha.id%
end
~
#5923
Благодарности, награды~
0 z 100
~
*Благодарности, награды | моб | Auto | 100
context 59
while (%world.curmobs(5910)%+%world.curmobs(5911)% > 0)
  if (%exist.mob(5910)%)
    calcuid hran 5910 mob
    %echo% Налетевший ветер развеял хранителя, не оставив и следа.
    %purge% %hran%
  end
  if (%exist.mob(5911)%)
    calcuid hran 5911 mob
    %echo% Налетевший ветер развеял хранителя, не оставив и следа.
    %purge% %hran%
  end
done
wait 1s
%echo% %self.iname% отдала приказ.
if (%exist.mob(5901)%)
  calcuid mertv 5901 mob
  dg_affect %mertv% зачарован подчинить_разум 0 0
  %force% %mertv% след я
end
if (%exist.mob(5902)%)
  calcuid gonka 5902 mob
  dg_affect %gonka% зачарован подчинить_разум 0 0
  %force% %gonka% след я
end
if (%exist.mob(5903)%)
  calcuid drakon 5903 mob
  %force% %drakon% след я
end
след я
wait 1s
вздох
wait 1s
say Это был непростой бой
say Спасибо тебе за помощь!
say Теперь мы с мамой сможем вернуться в башню,
say которую папа для нас построил!
say Кстати, обязательно зайди к его ученику
say Он наверняка сможет научить тебя чему-то полезному
set state доне
worlds state
~
#5924
Приветствие умертвий~
0 r 100
~
context 59
if ((%actor.name% == %quester%) && ((%state% == пора) || (%state% == конец)))
  wait 3
  поклон .%actor.name%
end
~
#5925
Открываем портал в угодья~
2 z 100
~
wportal 11504 2
~
$~
