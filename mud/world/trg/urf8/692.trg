#69200
Встретили темного стража~
0 r 100
~
*Предлогают нам взять главный квест.
if (%quest692.name% == %nil%)
  wait 1s
  хму   
  г Что ты тут делаешь %actor.iname% !? 
  смотр %actor.iname%
  г Тут живым нечего делать!
  wait 1s
  г Этот мост ведет в мир, куда дорога любому живому существу закрыта!
  г А я являюсь стражем этого моста, и тебя не пропущу!
  эмо преградил Вам дорогу, поднеся ужасного вида клинок к самому горлу.
  wait 7s 
  ухм
  г Да видно не из робкого десятка ты, как я погляжу, не испугался...
  wait 2s
  г Знаешь, если ты уж пришел сюда раньше срока положенного, то сделай кое-что для меня.
  г И я может тебя и пропущу туда, куда ты так стремишься попасть раньше других.
  хох
  wait 1s
end
~
#69201
Берем задание~
0 d 100
согласен~
*Берем главный квест
if (%quest692.name% = %nil%)
  set quest692 %actor%
  global quest692
  wait 1s
  г Ну вот и по рукам!
  ул
  wait 1s
  г Я страж моста в мир, куда дороги живым нет, охраняю путь в миры мертвых.
  г Все умершие попадают сюда.
  дум  
  г Ну не совсем конечно все.
  г А только те, кто за свою жизнь натворил злодеяний больше, чем благостных дел. 
  г Ну да ладно, не в этом дело, хотя смотри, и ты сюда попадешь.
  хох
  wait 2s
  г Ну что это я...
  г Не будем об этом, всему свое время...
  г А мне же от тебя надо вот что.
  wait 3s
  дум
  г Тут недалеко есть огромная скала, в той скале, полным полно пещер, да залов разных.
  г И вот в залах тех, непонятным мне образом стали собираться души мертвых.
  г Не порядок это, как они смогли мимо меня пройти, да не попасть туда, куда следует?
  гнев
  wait 2s
  г Разберись, почему они не попадают в мир мертвых, да заодним изведи их окончательно!
  г А разберешься приходи ко мне, отблагодарю так уж и быть.
  wait 1s 
  calcuid for_mb 69200 mob
  detach 69200 %for_mb.id%
  detach 69201 %for_mb.id%
end
~
#69202
Умер чародей~
0 f 100
~
mload obj 69205
~
#69203
Ползем через лаз~
2 c 100
ползти~
if !%arg.contains(лаз)% 
  wsend %actor% _Куда это Вы ползти собрались?!
  return 0
  halt 
end
wsend %actor% Измазав всю одежду, Вы все же пролезли через лаз.
wechoaround %actor% _%actor.name% полез%actor.q% в лаз..
wteleport %actor% 69208
wsend %actor% _Вы пролезли через лаз.
wechoaround %actor%  Кто-то вылез из лаза и начал усердно отряхивать свою одежду.
end
~
#69204
Ползем через лаз обратно~
2 c 100
ползти~
if !%arg.contains(лаз)% 
  wsend %actor% _Куда это Вы ползти собрались?!
  return 0
  halt 
end
wsend %actor% _Измазав всю одежду Вы все же пролезли через лаз.
wechoaround %actor% _%actor.name% полез%actor.q% в лаз..
wteleport %actor% 69207
wsend %actor% _Вы пролезли через лаз.
wechoaround %actor% _Кто-то вылез из лаза и начал усердно отряхивать свою одежду. 
end
~
#69205
Умер оживший камень у скалы~
0 f 100
~
mecho _Оживший камень разлетелся на маленькие осколки!
mecho  И, откуда ни возьмись, появилось странное создание, как будто сотканное из воздуха!
mload mob 69203
~
#69206
Двигаем камень~
2 c 100
сдвинуть~
if !%arg.contains(камень)% 
  wsend %actor% _Что это вы двигать хотите ?!
  return 0
  halt 
end
wsend %actor% _Упершись ногами в землю, вы сдвинули камень, освобождая проход.
wechoaround %actor% _%actor.name% сдвинул%actor.g% камень, освобождая проход.
wdoor 69228 east room 69229
wdoor 69229 west room 69228
wecho _Вот теперь и пройти можно.
end
~
#69207
Порыв ветра~
2 e 100
~
wait 1s
wecho _Вдруг налетел порывистый ветер и чуть-чуть не сдул вас с ног.
~
#69208
Умер оживший валун~
0 f 100
~
mecho  Каменная глыба разлетелась на мелкие осколки, и в воздухе появился озлобленный дух!
mload mob 69207
~
#69209
Умер страж туманного зала~
0 f 100
~
mload obj 69211
~
#69210
Умер страж светлого зала~
0 f 100
~
mload obj 69214
~
#69211
Умер страж темного зала~
0 f 100
~
mload obj 69216
~
#69212
Выполнили задание~
0 j 100
~
if (%actor.name% != %quest692.name% || %object.iname% != древняя рукопись)
  wait 1
  drop all
  wait 1
  хмур
  halt
end
wait 1s
эмо развернул рукопись и внимательно стал ее изучать
wait 3s
г Да, теперь понятно, почему души мертвых попадали в пещеры, их ...
г Хотя тебе это знать не обязательно.
г Но раз ты сделал дело, то и я не откажу тебе, пропущу туда, куда стремишься так.
дум
wait 1s
г Хотя знаешь, делать там тебе нечего, погибнешь, пропадешь.
г Но обещание свое я все же сдержу, но помни, назад дороги не будет!
wait 3s
эмо отошел с вашего пути, опустив свой ужасный клинок
wait 1s
mecho  Вы смело двинулись вперед по огромному, темному мосту ...
mteleport все 69284
mpurge %object%
~
#69213
Репоп~
2 f 100
~
set quest692 -1
global quest692
calcuid delete_trig 69200 mob
attach 69200 %delete_trig.id% 
attach 69201 %delete_trig.id%
attach 69212 %delete_trig.id%
calcuid delete_trig 69201 mob
attach 69202 %delete_trig.id%
calcuid delete_trig 69202 mob  
attach 69205 %delete_trig.id%
calcuid delete_trig 69206 mob  
attach 69208 %delete_trig.id%
calcuid delete_trig 69210 mob  
attach 69209 %delete_trig.id%
calcuid delete_trig 69211 mob  
attach 69210 %delete_trig.id% 
calcuid delete_trig 69213 mob  
attach 69211 %delete_trig.id%
wdoor 69228 east purge
wdoor 69229 west purge
~
$~
