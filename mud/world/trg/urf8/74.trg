#7400
приветствие Моховичка~
0 r 100
~
wait 2
mecho Старичок поднял голову и поздоровался.
if %actor.sex% == 1
  say Здравствуй, сынок.
else 
  say Здравствуй, доченька.
end
if %actor% == %questor74%
  halt
end
mecho _- Зря ты приш%actor.y% в это глухое место.
mecho _- Дальше гиблое болото. Ни один человек туда не пойдет без особой на то причины.
wait 1
mecho Старик вдруг о чем-то вспомнил.
say Ой, да я и не представился. Нечасто у меня тут гости.
mecho _- Я местный сторож этих болот и всего живущего тут зверья.. Люди прозвали меня старичком-моховичком и я не обижаюсь.
mecho _- Послушай доброго мого совета и не ходи дальше, там не безопасно. Даже я больше туда не хожу. Но дело твое, я предупредил.
mecho Старик замолк.
if %questor74%
  halt
end
wait 2s
say Но коли уж решишь там голову сложить - быть по-твоему.
mecho _- Только тогда уж помоги мне в одном деле, а я хорошо заплачу. Денег мне не жаль.
attach 7401 %self.id%
~
#7401
выдача квеста болотником~
0 d 1
ладно согласен согласна помогу~
wait 1
if %actor.vnum% != -1
  halt
end
if %actor% == %questor74%
  say Я же уже попросил тебя о помощи. Не желаешь помочь - дело твое.
  halt
end
if %questor74%
  дум .%actor.name%
  say Есть у меня одно поручение, но я уже попросил прохожего помочь мне, а он и согласился.
  say Так что ступай себе, и смотри - не ходи на болота.
  halt
end
set questor74 %actor%
global questor74
calcuid swampghost 7401 mob
remote questor74 %swampghost.id% 
прыг   
say Хорошо, но я не заставляю.
mecho _- Когда-то я был властелином этих болот и все твари мне подчинялись.
mecho _- Но появился в моих водах хитрый и алчный водяной.
mecho _- Он долго мутил здесь воду и пытался перебрать власть себе.
mecho _- Пока у меня были мои чудесные сапоги, я мог еще ему противостоять,
mecho _- но он подстерег меня и стащил один из них с моей ноги.
взд
wait 1s
say Понимаешь, одного сапога мало чтобы удержать меня над водой. 
mecho _- Теперь я не могу безопасно ходить по болоту, ведь там много трясин.
mecho _- Верни мне мой сапог и убей или прогони водяного, а я отплачу.
mecho _- Думаю ты сможешь найти его возле острова, а сапог он наверно прячет у себя в логове.
mecho _- Что на полдень от острова, за топким болотом.
mecho _- Ступай и береги себя.
detach 7400 %self.id%
~
#7402
награда болотника~
0 j 100
~
wait 1
if %actor.vnum% != -1
  halt
end
if %object.vnum% != 7401
  тоск
  say И зачем же ты мне это притащил%actor.g%, горе луковое?!
  drop %object.name%
  halt
end
wait 1
mpurge %object%
say Ой спасибо тебе!
mecho _- А я уж думал, что в живых тебя нет давно.
: одел сапог на ногу и запрыгал от радости, ну совсем как дитя малое.
wait 2
say Вот держи эту лопату и возвращаяся к тому месту где с водяным сражался.
mecho _- Там один душегуб зарыл все свое сокровище и больше не возвращался. Выкопаеш клад и забирай себе.
mecho _- Уж извини что не иду с тобой, но мне надо уладить все дела, а их много насобиралось.
mecho _- Да и дорогу ты знаешь, поди не заблудишся. 
mload obj 7402
give заступ .%actor.name%
wait 1s
if ((%world.curobjs(516)% < 1) && (%random.1000% <= 200))
  say Да, вот еще завалялась у меня одна безделица - может тебе пригодится.
  mload obj 516
  give берест .%actor.name%
end
detach 7401 %self.id%
detach 7402 %self.id%
~
#7403
рытье клада~
2 c 1
раскопать копать выкопать~
wait 1
if !%arg.contains(клад)% && !%arg.contains(тайник)%
  wsend %actor% _Копать от забора и до обеда!
  wsend %actor% _Вот только что именно?
  halt
end
set zastup %actor.eq(18)%
if %zastup.vnum% != 7402
  wsend %actor% Вы остервенело принялись рыть землю ногтями.
  wsend %actor% Нет бы заступ какой взять, что ли.
  halt
end
wait 1
wsend %actor% Вы принялись ковырять землю заступом.
wechoaround %actor% %actor.name% начал%actor.g% ковырять землю заступом.
wait 2s
wforce %actor% пот
eval %actor.move(10)%
wecho Внезапно земля просела, обнажив ход куда-то вглубь земли.
wdoor 7433 d room 7490
detach 7403 %self.id%
~
#7404
открыть ящик~
1 c 4
сломать~
wait 1
if !%arg.contains(замок)% && !%arg.contains(ящик)%
  osend %actor% _Вечно бы им что-то ломать да разбивать!
  osend %actor% _И хоть бы знали - что именно.
  halt
end
wait 1
set zastup %actor.eq(16)%
set zastupname %zastup.name%
set zastup %actor.eq(18)%
set zastupname2 %zastup.name%
if !%zastupname.contains(топор)% && !%zastupname2.contains(топор)%
  osend %actor% Вы принялись яростнно пинать ящик ногами.
  osend %actor% Пожалуй, следовало заранее запастись инструментом.
  halt
end
osend %actor% Вы сильным ударом сбили замок со ржавого ящика.
oechoaround %actor% %actor.name% одним сильным ударом сбил%actor.g% замок с ящика.
otransform 7415
~
#7405
Помер водяной~
0 f 100
~
foreach killer %self.pc%
  if %killer.id% == %questor74.id%
    mload obj 7400
    halt
  end
done
~
#7406
Репоп зоны 74~
2 f 100
~
calcuid island 7433 room
attach 7403 %island.id%
wdoor 7433 d purge
~
$~
