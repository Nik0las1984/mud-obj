#30500
вошли к морскому конунгу~
0 z 100
~
wait 1       
mecho _Морской конунг проснулся от скрипа двери.
if (!%waken%)
  say Эй, Вы сухопутные тролли! Из-за вас я не могу уснуть!
  set waken 1
  global waken
  wait 1s
  eval troll %random.pc%
  if (%troll.canbeseen%)
    say Ты еще здесь, троллья морда?! Ну, сам%troll.g% напросил%troll.u%... Умри!
    воор топор
    mkill %troll%
  end
else
  say Да дайте же мне поспать, мерзкие сухопутные тролли!
  wait 3
  eval troll %random.pc%
  if (%troll.canbeseen%)
    воор топор
    mkill %troll%
  end
end
~
#30501
вошли к дружиннику (30513) у ворот~
0 q 100
~
if (%direction% == south)
  wait 1s
  гов Добро пожаловать в нашу заставу!
  wait 1s
  улыб
  wait 1s
  гов На ночь советую остановиться в корчме, всех кто будет слоняться
  гов можем принять за вражьих лазутчиков и случайно убить.
  wait 1s
  ухм
end
~
#30502
вошли к дружиннику (30532) у ворот~
0 q 100
~
if (%direction% == north)
  wait 1s
  гов Добро пожаловать в нашу заставу!
  wait 1s
  улыб
  wait 1s
  гов На ночь советую остановиться в корчме, всех кто будет слоняться
  гов можем принять за вражьих лазучиков и случайно убить.
  wait 1s
  ухм
end
~
#30503
вошли к чернокожему воину~
0 q 100
~
wait 1s       
mecho _Чернокожий воин скрестил руки, заградив собой дверь.
say Хозяина велела к себе не пускать.
~
#30504
зашли в клетку к шрамолицему (30504) ночью~
0 q 100
~
mecho _Шрамолицый воин протер спросони глаза.
wait 2
mecho _Шрамолицый воин заорал во всю глотку: "Лазутчики! Лазутчики!"
msend %actor% _Шрамолицый воин выхватил из сапога нож и набросился на Вас.
mechoaround %actor% _Шрамолицый воин выхватил из сапога нож и набросился на %actor.vname%.
mkill %actor%
~
#30505
вошли к воеводе~
0 q 100
~
if (%direction% == south)
  wait 1s
  говор Добро пожаловать путник!
  wait 1s
  говор Если ты направляешься в Ладогу, то будь осторожен
  говор поговаривают, что на дороге опять появились разбойники,
  говор я высылал отряды, но лагерь мы их так и не нашли.
  wait 1s
  взд
end
~
#30506
убили золоторогого тура~
0 f 100
~
if (%world.curobjs(30516)% < 4) &&  (%random.100% == 7)
  mload obj 30516
end
~
#30508
убили купца~
0 f 100
~
if (%world.curobjs(30517)% < 10) &&  (%random.7% ==3)
  mload obj 30517
end
~
#30509
Вошли в комнату конунга~
2 g 100
~
if (!%exist.mob(30511)%)
  halt
end
calcuid konung 30511 mob
wait 1
if (%konung.position% == 4)
  eval temp %konung.position(8)%
  exec 30500 %konung%
end
~
$~
