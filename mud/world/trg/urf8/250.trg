#25000
приветствие~
0 r 100
~
wait 1
msend %actor% Лодочник сказал тебе:
msend %actor% - Здраве тебе, %actor.name%!
msend %actor% - Я могу перевезти тебя через реку на южный берег за 10 кун.
msend %actor% - Могу и на другой берег Днепра, что далеко отсюда, за 100 кун.
~
#25001
перевоз~
0 m 1
~
wait 1
switch %amount%
  case 10
    msend %actor.name% Лодочник неторопливо залез в лодку, затем Вам помог разместиться в ней.
    wait 1s
    msend %actor.name% Вы поплыли на лодке через реку на южный берег.
    mechoaround %actor% %actor.name% залез%actor.q% в лодку с лодочником.
    mechoaround %actor% %actor.name% уплыл%actor.g% на лодке с лодочником.
    wait 1s
    msend %actor.name% Вы приплыли к южному берегу реки.
    msend %actor.name% Лодочник сел в лодку и поплыл назад.
    mteleport %actor% 25120
    wait 1s
    %echoaround% %actor% %actor.name% приплыл%actor.g% с лодочником.
    %echoaround% %actor% %actor.name% вылез%actor.q% из лодки.
    %echoaround% %actor% Лодочник сел в лодку и поплыл назад.
    wait 1s
    mat 25065 %echo% Лодочник приплыл назад.
  break
  case 100
    msend %actor.name% Лодочник неторопливо залез в лодку, затем Вам помог разместиться в ней.
    wait 1s
    msend %actor.name% Вы поплыли на лодке.
    msend %actor.name% Сначала вдоль берега в устье Днепра, затем и через Днепр. 
    mechoaround %actor% %actor.name% залез%actor.q% в лодку с лодочником.
    mechoaround %actor% %actor.name% уплыл%actor.g% на лодке с лодочником.
    wait 1s
    msend %actor.name% Вы приплыли к рыбацкой деревне.
    msend %actor.name% Лодочник сел в лодку и поплыл назад.
    mteleport %actor% 33027
    wait 1s
    %echoaround% %actor% %actor.name% приплыл%actor.g% с лодочником.
    %echoaround% %actor% %actor.name% вылез%actor.q% из лодки.
    %echoaround% %actor% Лодочник сел в лодку и поплыл назад.
    wait 1s
    mat 25065 %echo% Лодочник приплыл назад.
  break
  default
    msend %actor% Что-то не то.
    msend %actor% Я называл необходимую сумму, а это непонятно что. 
    дать %amount% кун .%actor.name%
  break    
done
~
#25002
входстражникночью~
0 r 100
~
wait 1
say Привет, путник.
say Ты попал к доброму граду Переяславлю, что построен по приказу Великого князя.
say Ночью вход в город закрыт.
шепт %actor.name% Ведутся секретные строительные работы.
мигн %actor%
~
#25003
входстражникднем~
0 r 100
~
wait 1
say Привет, путник.
say Ты попал к доброму граду Переяславлю, что построен по приказу Великого князя.
say Запомни, ночью вход в город закрыт.
~
#25004
входвоевода~
0 r 100
~
wait 1s
дум
say Добрый день, путник.
say Ты попал к доброму граду Переяславлю, что построен по приказу Великого князя.
say Приграничный город у нас, потому порядки жесткие, много воинов, люди недоверчивые.
wait 1s
say Вот и сейчас на южном берегу Трубежа опять половцы были замечены.
say Не знаем зачем и явились, но с повозками, со всем скарбом.
wait 1s
взох
say Одни от степняков неприятности. 
say Будь осторожен, но если разберешься что там и к чему, потом приходи, расскажи.
~
#25005
сунули на лапу стражнику~
0 m 100
~
wait 1s
emot смущенно закашлялся и отвернулся
mtransform 25019
wait 5s
emot принялся насвистывать что-то незамысловатое
wait 5s
emot прекратил свист и снова повернулся к воротам
mtransform 25008
~
#25006
Вход к мастеру-лучнику~
0 q 100
~
wait 1
msend %actor% Мастер-лучник посмотрел в Вашу сторону, затем что-то проворчал себе под нос.
mechoaround %actor% Мастер-лучник посмотрел на %actor.vname%, затем что-то проворчал себе под нос.
* если вошедший охтник 18 и выше левела
if %actor.skill(смастерить лук)% > 0
  halt
end
if (%actor.level%>=18 && %actor.class%==10)
  wait 1
  if (%actor.sex%==1)
    say Я вижу ты неплохой охотник, хочешь пойти ко мне в ученики?
  else
    say Вижу ты неплохая охотница, не желаешь пойти ко мне в ученицы?
  end
end
~
#25007
Выдача квеста у лучника~
0 d 1
пойду хочу согласен согласна~
wait 1
if %actor.skill(смастерить лук)% > 0
  halt
end
if %actor.id% ==  %questor270.id%
  say Мы с тобой уже обо всем переговорили. Что еще надобно?
  halt
end
if (%actor.level%>=18 && %actor.class%==10)
  wait 1s
  дум
  say Возможно из тебя и будет толк, но я тебя не знаю и раньше не видел - а ученики у меня в доме живут.
  say Пусть поручится за тебя кто-нибудь. Воевода, к примеру.
  mload obj 25007
  give записка %actor.name%
  say Вот тебе записка от меня.
  say Передай ее воеводе.
  set questor270 %actor%
end
~
#25008
Дали квеститем воеводе~
0 j 100
~
wait 1
if %object.vnum% == 25008
  wait 1
  mpurge %object%
  if %actor.vnum% != -1
    halt
  end
  if %actor.quested(25000)%
    say Хм... Видать, на тебя можно положиться.
    emot достал кусочек бересты и начал что-то на нем писать.
    say Отдай вот эту записку мастеру - тут сказано, что он может взять тебя в ученики.
    mload obj 25009
    give записка %actor.name%
    halt
  end
end
if ( %object.vnum% == 25007 )
  wait 1
  mpurge %object%
  if %actor.vnum% != -1
    halt
  end
  вопрос %actor.name%
  emot прочел записку
  wait 1s
  say Хм... Значит, мастер просит, чтобы я за тебя поручился...
  if %actor.skill(смастерить лук)% > 0
    say Извини, но я тебя не припоминаю, да и дела для тебя сейчас нет...
    halt
  end
  if (%actor.level% >= 18 && %actor.class%==10 )
    wait 2s
    say Я тебя тоже не знаю, хотя если бы ты оказал мне одну услугу...
    дум
    wait 2s
    say Я бы за тебя поручился. Дело не очень сложное:
    say Недавно видели со стен к северу от города лазутчика-степняка.
    say Подстрелить хотели, да успел удрать, лядащий.
    say Коли сумеешь его выследить - я поручусь за тебя перед мастером.
    %actor.setquest(25000)%
  else
    say Извини, но я тебя не припоминаю, да и дела для тебя сейчас нет...
    halt
  end
else
  say Это мне не нужно, оставь себе.
  give %object.name% %actor.name%
end
~
#25009
Сдали записку лучнику~
0 j 100
~
wait 1
if %object.vnum% != 25009
  дум
  бросить %object.name%
  halt
end
wait 1
mpurge %object%
if %actor.vnum% != -1
  halt
end
emot прочитал записку
if !%actor.quested(25000)%
  say Странно... 
  say Почерк-то нашего воеводы, да только говорится тут отнюдь не о тебе!
  дум
  halt
end
if (%actor.can_get_skill(смастерить лук)% && %actor.class%==10 )
  wait 1s
  say Ну что же, раз воевода ручается за тебя - я возьму тебя в ученики.
  msend %actor% Мастер рассказал вам об изготовлении наиболее простых луков.
  mechoaround %actor% Мастер-лучник принялся что-то втолковывать %actor.dname%.
  mskillturn %actor% смастерить.лук set
else
  взд
  say Тебя я ничему научить не смогу.
end
~
#25010
Запинали лазутчика~
0 f 100
~
if %actor.quested(25000)%
  mload obj 25008
end
~
#25011
Портал в Рязань~
2 z 100
~
wportal 73087 2
~
#25012
Портал в Ладогу~
2 z 100
~
wportal 30224 2
~
#25013
Платные порталы, касса~
0 m 1
~
wait 1
emot пересчитал%self.g% монеты
eval target 0
switch %amount%
  * Рязань
  case 3200
    eval target 73087
  break
  * Ладога
  case 8500
    eval target 30224
  break
  default
    дум
    say И чего же ты за эти деньги хочешь?
    give %amount% кун .%actor.name%
    halt
  done
  кив
  emot сделал%self.g% несколько странных жестов
  mechoaround %actor% %actor.name% исчез%actor.q% в клубах дыма.
  msend %actor% У вас закружилась голова, и на миг вы потеряли сознание...
  msend %actor% 
  mteleport %actor% %target% horse
  mechoaround %actor% %actor.name% появил%actor.u% здесь в клубах дыма.
~
$~
