#84500
корчмарь приветствует~
0 q 25
~
wait 1s
mecho Корчмарь обернулся и приоткрыл дверь в заднюю комнату.
г Роза, подожди пока разогревать рыбу!
г Ко мне пришли!
wait 4
mechoaround %actor% Корчмарь снова повернулся к %actor.dname%.
msend %actor% Корчмарь снова повернулся к Вам лицом.
wait 4
if (%actor.sex% == 1)
  г Чем могу служить, молодой человек?
end
if (%actor.sex% == 2)
  г Чем могу служить, моя дорогая?
end
~
#84501
знахарь приветствует~
0 q 15
~
wait 1s
mecho Старый знахарь отхлебнул чего-то из бутыли и крякнул.
wait 4
switch %random.4%
  case 1
    г Кхм.. шафрановая-то помягче идет..
  break
  case 2
    г Кхм.. калгановая-то посильней забирает..
  break
  case 3
    г Кхм.. одуванчиковая-то больно горька..
  break
  case 4
    г Кхм.. на курином помете слишком в нос шибает..
  break
done
wait 4
mecho Старый знахарь задумчиво поскреб грязную бороду.
ул %actor.name%
~
#84502
волшебница приветствует~
0 q 25
~
wait 1s
mecho Юная волшебница горько вздохнула.
wait 4
switch %random.4%
  case 1
    г Вычислить путь звезды и развести сады
    г И укротить тайфун - все может магия..
  break
  case 2
    г Есть у меня диплом, только вот дело в том
    г Что всемогущий маг лишь на бумаге я..
  break
  case 3
    г Даром преподаватели время со мною тратили
    г Даром со мною мучился самый искусный маг..
  break
  case 4
    г Мудрых преподавателей слушала невнимательно
    г Все, что ни задавали мне делала кое-как..
  break
done
wait 4
тоск
mecho Юная волшебница только теперь заметила, что кто-то пришел.
г Вы ко мне?
~
#84503
староста приветствует~
0 r 15
~
wait 4
switch %random.4%
  case 1
    г Восемь да один.. эээ.. 
    дум
    wait 1s
    г Девять!
    рад
  break
  case 2
    г Девять да один.. эээ..
    дум
    wait 1s
    г Десять!
    рад
  break
  case 3
    г Десять да один.. эээ..
    дум
    wait 1s
    эм растеряно посмотрел на растопыренные пальцы рук
    эм закряхтел и принялся снимать лапоть
    wait 1s
    г Одиннадцать!
    рад
  break
  case 4
    г Пять дэ два.. эээ..
    дум
    wait 1s
    г Ну, скажем, восемь..
    кив 
  break
done
~
#84504
халявная кормежка~
0 q 100
~
wait 1
if %actor.level% >= 10 || (%actor.gold% >= 20) || (%actor.bank% >= 20) 
  halt
end
wait  1
msend %actor% Хозяйка сказала Вам:
if %actor.sex% == 1
  msend %actor% - Эх ты горемычный, голодный наверное, %actor.name%.
elseif
  %actor.sex% == 2
  msend %actor% - Эх ты горемычная, голодная наверное, %actor.name%.
end
msend %actor% - Что мы нехристи чтоли, чтоб не накормить. 
msend   %actor% - Сейчас, подожди...
dg_cast 'насыщение' %actor.name%
~
#84505
балалаечник поет~
0 b 12
~
wait 4
mecho Балалаечник тренькнул по струнам и запел:
wait 4
switch %random.4%
  case 1
    mecho Балалаечник пропел : 'Бывааали дни весееелые.'
    mecho Балалаечник пропел : 'Гуляяял я молодееец.'
    mecho Балалаечник пропел : 'Не знааал тоски-кручиинушки,'
    mecho Балалаечник пропел : 'Был вооольный удалеец.'
    wait 4
    пляс
  break
  case 2
    mecho Балалаечник пропел : 'Ах мой миленький, хорошенький Емелька,'
    mecho Балалаечник пропел : 'Поработала я нынче всю недельку.'
    mecho Балалаечник пропел : 'Тюря тюря тюря тюря тюря тюря-ря'
    mecho Балалаечник пропел : 'Тюря тюря тюря тюря тюря-ря.'
    wait 4
    ухм
  break
  case 3
    mecho Балалаечник пропел : 'Уродилася я,'
    mecho Балалаечник пропел : 'Что в поле былинка.'
    mecho Балалаечник пропел : 'Разнесчастная я,'
    mecho Балалаечник пропел : 'Божия кровинка.'
    wait 4
    всхлип
  break
  case 4
    mecho Балалаечник пропел : 'Конь боевой с походным вьюком'
    mecho Балалаечник пропел : 'У церкви ржет, кого-то ждет.'
    mecho Балалаечник пропел : 'В ограде матка плачет с внуком.'
    mecho Балалаечник пропел : 'Красотка слезы горьки льет.'
    wait 4
    груст
  break
done
wait 1s
calcuid devka1 84514 mob 
calcuid devka2 84535 mob 
exec 84506 %devka1.id%
wait 1
exec 84506 %devka2.id%
~
#84506
девки хлопают~
0 z 0
~
if (%random.2% == 1)
  смея
else
  визж
end
апл балалаечник
~
#84507
зажиточный мужик бухтит~
0 q 100
~
wait 4
привет %actor.iname%
wait 4
г Хочешь подзаработать, %actor.iname%?
wait 4
г Есть у меня для тебя порученье.
г Собака под мой амбар подрылась, да видать там издохла.
г Смрад стоит - подойти не могу, тошно.
причит
г Ты бы вытащил%actor.g% ее оттуда, а я б уж тебя отблагодарил.
~
#84508
прием падалины~
0 j 100
~
wait 4
if (%object.vnum% == 84509)
  wait 1
  mpurge %object%
  г Ох, ну зачем ты сюда эту гадость принес%actor.q%!
  укор %actor.iname%
  г Забирай вот плату поскорей, да проваливай.
  гадость
  %self.gold(+50)%
  дать 50 кун %actor.iname%
else
  г Это мне и даром не надо.
  дать %object.name% %actor.name%
end
detach 84507 %self.id%
detach 84508 %self.id%
~
#84509
лезть нора~
2 c 1
лезть пролезть~
if !(%arg.contains(нора)%) 
  wsend %actor% Куда лезем?
  halt
end
wsend %actor% Задержав дыхание вы полезли в нору.
wechoaround %actor% %actor.name% задержал дыхание и полез%actor.q% в нору.
wait 1s
wteleport %actor.name% 84561
wsend %actor% Ну и запашок!
~
#84510
подбираем падалину~
1 g 100
~
wait 1
if (%world.curmobs(84503)% == 1)
  osend %actor% Злая сука зарычала и бросилась на вас!
  oechoaround %actor% Злая сука зарычала и бросилась на %actor.rname%!
  calcuid suka 84503 mob
  set podobral %actor%
  global podobral
  remote podobral %suka.id%
  exec 84511 %suka.id%
  rdelete podobral %self.id%
end
~
#84511
злая сука агрит~
0 z 0
~
*mecho Цель - %podobral.iname%
wait 4
рыч %podobral.name%
mkill %podobral%
~
$~
