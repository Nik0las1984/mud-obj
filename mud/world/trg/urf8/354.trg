#35400
приветствие старосты~
0 q 100
~
wait 1s
осм %actor.iname%
wait 1
вст
г Здраве будьте, находчики!
шляп
отд
wait 1
г С чем пожаловали? Дело пытаете, аль от дела лытаете?
~
#35401
квестит староста~
0 d 0
дело пытаем~
if (%speech.car% == дело && %speech.cdr% == пытаем)
  wait 1s
  : недоверчиво на Вас покосился
  wait 1
  г Ну так есть у меня для Вас работа.
  г Неспокойно у нас, немирье с хозяином реки.
  г От века жили с ним в мире, мы его силу чтили,
  г И он нас не обижал, попусту не гневался.
  wait 1
  г Но вот начали его русалки нам сети рвать,
  г Начали лодки топить, да людей на дно тянуть.
  г А недавно утонувшие начали на берег выходить,
  г В дома ломиться, людей в реку утаскивать.
  wait 1
  : серьезно о чем-то задумался
  wait 3
  : решительно махнул рукой
  г Нельзя так больше жить - не будет нам жизни рядом с Водяным!
  wait 1
  взд
  wait 1
  г Избавь от него реку, а я отблагодарю за работу!
  set q354 %actor%
  if (%exist.mob(35409)%)
    * q354q1: 1 - квест купца выполнен, 2 - мейн квест взят у старосты, но квест купца не пыполнен *
    set q354q1 2
    calcuid vodyanoy 35409 mob
    remote q354q1 %vodyanoy.id%
  end
  global q354
  attach 35402 %self.id%
  if (%exist.mob(35411)%)
    calcuid kupec 35411 mob
    attach 35403 %kupec.id%
    remote q354 %kupec.id%
  end
  detach 35400 %self.id%
  detach 35401 %self.id%
end
~
#35402
награждает староста~
0 j 100
~
wait 1
: внимательно осмотрел %object.vname%
wait 1s
eval objstr %object.iname%
if (%objstr.contains(труп)%)
  %purge% %object.id%
  if (%objstr.contains(водяного)%)
    г Вот и нет больше водяного...
    wait 1s
    взд
    wait 1s
    г Ну что ж, как обещал, награжу...
    eval rnd %random.1000%
    if (%rnd% <= 300 && %world.curobjs(200)% < 50) /// руна твердыни
      %load% obj 200
      дать руна .%actor.name%
    else
      %self.gold(+2500)%
      дать 2500 кун .%actor.iname%
    end
    if (%exist.mob(35411)%)
      detach 35403 %world.mob(35411)%
      detach 35404 %world.mob(35411)%
    end
    detach 35402 %self.id%
  else
    ужас .%actor.iname%
    шеп .%actor.iname% Кажется ты убил не того, кого надо!
    укор .%actor.iname%
  end
elseif (%object.vnum% == 35410)
  удив
  г КАК?!
  г Неужели, мудрейшая женщина нашей деревни могла так нас предать?
  плак
  wait 1s
  взд
  %purge% %object%
  if (%actor.sex% == 2)
    г Благодарю тебя, странница, что помогла нам с хозяином реки решить все миром.
  else
    г Благодарю тебя, странник, что помог нам с хозяином реки решить все миром.
  end
  г Как я рад, что мы смогли избежать кровопролития!
  wait 1s
  eval rnd %random.1000%
  if (%rnd% <= 400)
    if (%world.curobjs(35415)% < 10)
      г Держи вот кольцо это
      %echo% Староста с трудом стянул с пальца какое-то кольцо, больше напоминающее камень с дыркой.
      %load% obj 35415
      дать кольц %actor.name%
    else
      г Жалко только, наградить тебя нечем...
      взд
    end
  end
  if (%rnd% > 600)
    if (%world.curobjs(35416)% < 10)
      г Держи вот, оберег мой в награду за труды твои. В сетях однажды мне попался...
      хих
      %echo% Староста снял с себя темный оберег.
      %load% obj 35416
      дать оберег %actor.name%
    else
      г Обидно только, что наградить тебя нечем, за заслуги твои...
    end
  end
  detach 35402 %self.id%
else
  г Сдается мне не это я просил тебя принести.
  дать %objstr.car% .%actor.iname%
end
~
#35403
приветствие купца~
0 r 100
~
if (%actor.iname% == %q354.iname%)
  wait 1
  г Кто здесь?!
  wait 1s
  г Человек или навь?!
  attach 35404 %self.id%
end
~
#35404
квестит купец~
0 d 1
человек навь~
switch %speech%
  case человек
    г Челове-ек?!
    г Знавали мы таких человеков... Плавали!
    wait 1s
    г Вот что, человек! Помоги мне с моей бедой!
    груст %actor.iname%
    wait 1s
    г Вел я корабль с товаром, товар богатый, и корабль крепкий.
    г Напросился ко мне в попутчики немолодой знахарь с дочкой маленькой.
    г А торговля и не задалась. Ну, а со знахарем никого...
    г И сам он никто, так, человек ничейный.
    wait 1s
    г Продал я его на торгу у булгар. А дочку не трогал!
    г Сама она за борт упала! Это не я!
    wait 1s
    г А после начала она ко мне во снах приходить, куклу свою просить. 
    плак
    wait 3
    г Я уж и богам жертвы носил, и пращуров просил, а она все приходит!
    г И куклу отдать не могу, корабль о камень подводный разбился,
    г И сундук невесть где лежит.
    wait 1s
    г Найди ее! Все что есть отдам!
    attach 35405 %self.id%
  break
  case навь
    wait 1s
    рыч
    г НАВЬ! ОСТАВЬТЕ МЕНЯ В ПОКОЕ!!
    %echo% Глаза обезумевшего купца загорелись бешенством и он кинулся на Вас!
    убить %actor.iname%
  break
done
detach 35403 %self.id%
detach 35404 %self.id%
~
#35405
квест стаф берет купец~
0 j 100
~
wait 1
if (%object.vnum% != 35407)
  г Что ты мне подсовываешь? Зачем оно мне на дне морском надобно?
  г Подумай на досуге...
  give %%object.iname%.car% .%actor.iname%
  halt
end
г Вот она, куколка!
сия
wait 5
г Вот оно, избавление!
%echo% &KКупец нежно приласкал глинянную куколку. Пора отвернуться!&n
%purge% %object.id%
wait 1s
г Какую награду хочешь? Слово, али куны возьмешь?
вопр .%actor.iname%
attach 35406 %self.id%
detach 35405 %self.id%
~
#35406
награждает купец~
0 d 1
слово куны~
wait 1
switch %speech%
  case слово
    wait 1s
    г Тогда слушай
    : подплыл поближе к Вам
    wait 1s
    г Тут водяной живет недалеко
    г Так с ним торговые дела вести хорошо
    г Есть у него товар разный, с кораблей утонувших.
    г Он ведь драки не любит, миром все решить норовит.
    wait 1s
    г Но помни - не приведи тебя боги обидеть хоть одну из его русалок!
    г Запомнит, отомстит! 
  break
  case куны
    wait 1s
    if %random.1000% <= 200
      %load% obj 407
      г А нету у меня кун, вон книжку возьми лучше, почитаешь на досуге.
      дать книг %actor.name%
      хих
    else
      г А вот нету у меня ничего! Какое ж богатство, если я на дне сижу?
      улыб
    end
  break
done
wait 1s
: забормотал что-то невнятное
: сунул куклу запазуху и уснул
remote q354 %world.mob(35409)%
set q354q1 1
remote q354q1 %world.mob(35409)%
%load% mob 35434
%purge% %self.id%
detach 35406 %self.id%
~
#35407
приветствие водяного~
0 q 100
~
wait 1
г Человек! С чем пришел? С войной, али с миром?
г Что по-твоему лучше?
~
#35408
квестит водяной~
0 d 1
война мир~
switch %speech%
  case война
    г Война? Да любите вы это, уж слишком вы, люди, народец пакостный!
    г Кто моих русалок бил, сетями ловил? Кто воду травил? Люди! 
    г А ведь ничем их не обидел, рыбу в сети гнал, жемчуг позволял собирать.
    г А они, видно, большего пожелали!
    хмур
    wait 1s
    г Вот что, есть для тебя задание!
    г Ступай и изведи весь рыбацкую, что на берегу стоит!
    г И принеси мне тело их старейшины, что в дружбе мне клялся!
    г Пусть ракам объяснит, почему обманывал, почему мир отверг!
    г Не хотел на берегу спокойно жить, пусть у меня, в Ершовой слободе погостит!
    attach 35409 %self.id%
  break
  case мир
    wait 1s
    if (!%exist.mob(35411)% && !%exist.mob(35434)%)
      г Как вы, люди, убивающие себе подобных даже после смерти, можете говорить о МИРЕ?!
      плюн
      halt
    end
    if (%q354q1% != 1)
      г Неспокойно нынче в моей слободе от купца обезумевшего.
      г Помоги ему, потом приходи ко мне о мире говорить.
      if (%q354q1% != 2)
        set q354 %actor%
        global q354
        attach 35403 %world.mob(35411)%
        remote q354 %world.mob(35411)%
        detach 35400 %world.mob(35402)%
        detach 35401 %world.mob(35402)%
      end
      halt
    end
    удив
    г Мир?!
    wait 5
    г Даже не верится. Неужто одумались рыбаки, на мировую пошли?
    г А ведь сколько обид учинили, сколько против них сил потрачено...
    г И вот так забыть и простить?
    wait 5
    дум
    wait 1s
    г Вот что...
    г Есть в реке кое-кто постарше меня.
    г Сходи к старому омутнику, да спроси, как мне с рыбаками помириться?
    г Кто кому за обиду должен?
    : отодвинул густые заросли водорослей, открывая узкий проход на север
    %door% 35475 north room 35477
    %door% 35477 south room 35475
    attach 35410 %world.mob(35413)%
  break
done
detach 35407 %self.id%
detach 35408 %self.id%
~
#35409
награждает водяной~
0 j 100
~
wait 1
: внимательно осмотрел %object.iname%
wait 1s
eval objstr %object.iname%
if (%objstr.contains(труп)%)
  %purge% %object.id%
  if (%objstr.contains(старосты)%)
    г Вот и нет людишек... Кроме вас!
    wait 1s
    : пристально посмотрел на Вас
    wait 1s
    г Ну да я слово держу. Вот, возьми. И уходи!
    eval rnd %random.1000%
    if (%rnd% <= 333)
      if (%world.curobjs(564)% < 1)
        %load% obj 564
        дать книга .%actor.name%
      else
        %echo% Водяной задумчиво посмотрел вокруг.
        г Хм, что-то забыл куда я ее положил... 
        г Приходи попозже, авось вспомню к тому времени.
      end
    end
    if (%rnd% > 333 && %rnd% <= 666)
      if (%world.curobjs(35420)% < 10)
        %load% obj 35420
        дать раков.мол .%actor.name%
      else
        г Хм, что-то забыл куда я ее положил... 
        г Приходи попозже, авось вспомню к тому времени.
      end
    end
    if (%rnd% > 666)
      if (%world.curobjs(35414)% < 10)
        %load% obj 35414
        дать морск.раков .%actor.name%
      else
        г Хм, что-то забыл куда я ее положил... 
        г Приходи попозже, авось вспомню к тому времени.
      end
    end
    detach 35409 %self.id%
  else
    ужас .%actor.iname%
    шеп .%actor.iname% Кажется ты убил не того, кого надо!
    укор .%actor.iname%
  end
  %purge% %object%
else
  г Сдается мне не это я просил тебя принести
  дать %objstr.car% .%actor.iname%
end
~
#35410
приветствие омутника~
0 r 100
~
wait 1
г Охохонюшки, и здесь покою нет. Люди пришли.
г А пройти вы сюда мимо водяного не могли.
г И значит нужно ему от меня что?
wait 1s
дум
wait 1s
г Ну и что он сейчас желать может?
г Сказывали мне бесенятки, что там наверху творится.
г Знаю я и как решить все проблемы. 
г Вот только стоит подумать хорошенько, а нужно ли решать?
вопр .%actor.iname%
attach 35411 %self.id%
~
#35411
квестит омутник~
0 d 1
да нет~
switch %speech%
  case да
    wait 1s
    г Вот и я так думаю, решить уж раз и навсегда.
    хих
    wait 1s
    г Ну вот подумай - кто рыбакам от утопленников амулеты делает?
    г Кто на двери-окна заговоры наклыдавает?
    г А кто русалкам зелья продает, чтоб утопленнички по земле ходить могли?
    г Выгодно-то все это кому?
    вопр .%actor.iname%
    wait 1s
    г Пра-авильно думаешь. Ну-ка, ПО МОЕМУ СЛОВУ ПОЯВИСЬ!
    : громко хлопнул в ладоши
    wait 1s
    %echo% Вдруг вода стала черная словно небо в безлунную ночь, а когда стала проясняться
    %echo% Вы увидели перед собой местную знахарку с гадкой ухмылкой на лице!
    eval znah %world.mob(35403)%
    %teleport% %znah.id% %self.realroom%
    wait 1s
    %force% %znah.id% убить .%actor.iname%
  break
  case нет
    %door% %self.realroom% south purge
    wait 1s
    г Ну и я так думаю... чего зря шебуршиться?
    г Ну а чтоб не беспокоили меня боле пусть будет так
    : громко хлопнул в ладоши и Вы заметили, как все вокруг померкло..
    eval pcs %self.pc%
    foreach pc %pcs%
      eval rndroom %random.88%
      if (rndroom == 88 || rndroom == 75 || rndroom == 39 || rndroom == 11)
        eval rndroom %rndroom%-1
      end
      eval rndroom %rndroom%+35400
      * Да простят меня кастеры, попавшие к аграм =) 
      %teleport% %pc% %rndroom%
      wait 1s
      %send% %pc% Очнулись вы черт знает где
    done
    %door% 35477 south purge
    %door% 35475 north purge
  break
done
detach 35410 %self.id%
detach 35411 %self.id%
~
#35412
ZONE RESET~
2 f 100
~
%door% 35477 south purge
%door% 35475 north purge
%door% 35488 south room 35487
~
#35413
Раскрываем раковину~
1 c 2
раскрыть~
wait 1s
if !%arg.contains(раковину)%
  %send% %actor% Что именно вы хотите раскрыть?
  halt
end
if %random.100% < 40
  %send% %actor% А внутри ничего, сплошное разочарование!
elseif %random.100% < 75
  %send% %actor% Оп-па, из раковины выпала маленькая жемчужина!
  %load% obj 35417
elseif %random.100% < 95
  %send% %actor% Оп-па, из раковины выпала красивая жемчужина!
  %load% obj 35418
elseif %random.100% <= 100
  %send% %actor% Ого-го, какую громадную жемчужину Вы нашли внутри раковины! Да Вы счастливчик!
  %load% obj 35419
end
wait 1
opurge %self%
~
#35414
Смерть знахарки~
0 f 100
~
if %random.1000% <= 200
  %load% obj 504
end
~
$~
