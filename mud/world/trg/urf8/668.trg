#66800
Открытие ворот~
2 c 0
надавить нажать вдавить~
wait 1s
wsend %actor% Подойдя к стене, Вы с силой вдавили в нее выступающий камень.
wechoaround %actor% Подойдя к стене, %actor.iname% вдавил%actor.g% в нее камень. 
wait 1s
wat 66801 wecho От куда-то донесся сильный скрежет.
wat 66802 wecho От куда-то донесся сильный скрежет.
wait 1s
wat 66801 wecho С сильным скрипом ворота медленно распахнулись.
wat 66802 wecho С сильным скрипом ворота медленно распахнулись.
wdoor 66801 east room 66802
wdoor 66802 west room 66801  
calcuid delete_item 66801 room
detach 66800 %delete_item.id% 
~
#66801
Телохранитель_агр~
0 r 100
~
wait 1s
msend %actor% Телохранитель истошно завопил и бросился на Вас!
mechoaround %actor% Телохранитель истошно завопил и бросился на %actor.vname%!
mkill %actor%
~
#66802
Охранник_агр~
0 r 100
~
wait 1s
г А! Еще один пожаловал.
г За ключом небось?
г Так знай, что ты его не получишь!
г Ну подходи. Ты не перв%actor.w% и не последн%actor.w%!
wait 1s
msend %actor.name% Охранник дико вопя бросился на вас!
msendaround %actor.name% Охранник дико вопя бросился на %actor.vname% ! 
атак %actor.name%
~
#66803
Управляющий дает квест_1~
0 r 100
~
if (%quest668.name% = nil)
  wait 1s
  взд   
  г Ты не похож%actor.g% на налетчика.
  дум
  wait 1s
  г Помоги мне, спаси от этих налетчиков. 
  г Они же все добро уволокут, ничего не оставят!
  г А уж я не поскуплюсь на вознаграждение! 
  г Ну так как, поможешь?
end
~
#66804
Управляющий дает квест_2~
0 d 0
да~
if (%quest668.name% = nil)
  wait 1s
  set quest668 %actor%
  worlds quest668
  г Так вот слушай.
  г День начинался очень хорошо. Как всегда было много посетителей.
  г Я просто сбивался с ног, только что бы все получили то, чего желают.
  г Но вот недавно явились эти. Они что-то сделали с охраной!
  г Почти всех постояльцев уже увели. А кто остался, так забаррикадировался со своей охраной в комнатах.
  г Оставшиеся налетчики сейчас рыщут по дому и тащат все, что попадается на глаза.
  г Хорошо что я тут заперся!
  г А теперь ты открыл%actor.g% дверь и просто обязан%actor.g% помочь мне с ними!
  эмо сильно задрожал
  wait 1s
  г Всеми налетчика командовал такой здоровый бугай... вот он похоже у них и главный.
  г Убей его и тогда, быстрее всего все другие разбегутся в диком страхе!
  г  В доказательство того, что он мертв, ты должен принести его голову.
  wait 1s
  г Ну вот и все, что я хотел тебе сказать.
  г Ну. Иди же.
  calcuid delete_item 66800 mob
  detach 66803 %delete_item.id% 
  detach 66804 %delete_item.id%
  отдых
~
#66805
Управляющий принимает квест~
0 j 100
~
wait 1
if (%actor% != %quest668%)
  г А ты кто такой %actor.name%? Я тебя не знаю... и ничего ты от меня награды не получишь!
  halt
end
if (%actor% == %quest668%)
  if (%object.vnum% == 66802)
    wait 1
    mpurge %object%
    wait 1s
    г Ай, спасибо тебе!
    г Помог%actor.q% ты мне, очень помог.
    г А теперь извини, мне необходимо как можно быстрее привести дела в порядок.
    wait 1s 
    г Вот твое вознаграждение.
    set pray668 %random.6%
    if (%pray668% == 1) && (%world.curobjs(66800)% < 3)
      mload obj 66800
      г Этот кулон мне подарил мой отец...
      г Пусть же теперь он принадлежит тебе.
      дать кулон %actor.name%
    end
    if (%pray668% == 2) && (%world.curobjs(66827)% < 3)
      mload obj 66827
      г Это колечко мне досталось от моей матушки...
      г А теперь оно твое!
      дать колечко %actor.name%
    end
    if (%pray668% == 3) && (%world.curobjs(66828)% < 3) 
      mload obj 66828
      г Вот, этот плащ мне подарил  мне мой знакомый купец!
      г Хм... а может и продал. Не помню.
      г Как бы то ни было, он твой.
      дать синий %actor.name%
    end
    if (%pray668% == 4) && (%world.curobjs(66829)% < 3)
      mload obj 66829
      г Вот, этот плащ мне подарил  мне один из сильнейших витязей!
      г Этот плащ не раз спасал его, так поможет и тебе.
      дать красный %actor.name%
    end
    if (%pray668% > 4) 
      mload obj 66825
      г Вот, держи.
      дать награда .%actor.name%
      г Это пока все, что я могу предложить.
    end
    wait 1s
    пока   
  end
end
~
#66806
Умирает глава~
0 f 100
~
г Как же так!
г Я не должен умереть от руки какого-то проходимца!
г НЕЕЕЕТ!
mload obj 66802
~
#66807
Репоп~
2 f 100
~
calcuid repop_1 66800 mob
attach 66803 %repop_1.id% 
attach 66804 %repop_1.id%
wdoor 66801 east purge room 66802
wdoor 66802 west purge room 66801
calcuid delete_item 66801 room
attach 66800 %delete_item.id% 
set quest668 nil
worlds quest668
~
#66808
убили наемника~
0 f 100
*~
if (%world.curobjs(66804)% < 6) && (%random.100% <= 5)
  mload obj 66804
end
if (%world.curobjs(66805)% < 6) && (%random.100% <= 5)
  mload obj 66805
end
if (%world.curobjs(66806)% < 6) && (%random.100% <= 5)
  mload obj 66806
end
if (%world.curobjs(66807)% < 6) && (%random.100% <= 5)
  mload obj 66807
end
if (%world.curobjs(66808)% < 6) && (%random.100% <= 5)
  mload obj 66808
end
~
#66809
убили колдуна~
0 f 100
*~
if (%world.curobjs(66809)% < 6) && (%random.100% <= 5)
  mload obj 66809
end
if (%world.curobjs(66810)% < 6) && (%random.100% <= 5)
  mload obj 66810
end
if (%world.curobjs(66811)% < 6) && (%random.100% <= 5)
  mload obj 66811
end
~
$~
