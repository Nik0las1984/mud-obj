#13700
приветствие ~
0 r 100
~
wait 1
say Приветствую Вас, путники!
wait 1s
say Давно уже люди мимо не хаживали, да и нечего здесь делать.
wait 1s
say Когда-то был этот город и богат и гостеприимен... 
say а теперь взяла над ним власть жестокая Сальвия...
say Теперь и гостей не принимает, и местных под гнетом держит
say А кто входил в город, назад уже не возвращался
wait 1s
say Не знаю уж, по своей ли воле они там остаются или случилось что
say Сам туда давно не захожу, да и вам не советую
wait 2s
say Ну что, не передумали еще? Открывать ворота?
attach 13701 %self.id%
~
#13701
страж ворот дает квест~
0 d 0
открывай давай открывать готовы да~
if !%quest137%
  set quest137 %actor%
  global quest137
  calcuid truent 13701 mob
  remote quest137 %truent.id%
end
wait 1
взд
say Ну хорошо, если вы так уверены в своих силах...
mecho Страж ворот задумчиво посмотрел на Вас
wait 1s
mecho Страж ворот достал из кармана большой ключ и подошел к воротам
wait 5
mload obj 13708
отпер ворота
mjunk all
wait 1
откр ворота
say Идите
detach 13701 %self.id%
~
#13702
вход в город~
2 e 100
~
wait 1
if %direction% != north
  halt
end
wait 5s
wdoor 13701 s purge
wdoor 13701 s room 13702
wdoor 13701 s flags abcd
wdoor 13701 s name ворота
wdoor 13701 s description ворота
wdoor 13701 s key 13708
wdoor 13702 n purge
wdoor 13702 n room 13701
wdoor 13702 n flags abcd
wdoor 13702 n name ворота
wdoor 13702 n description ворота
wdoor 13702 n key 13708
wecho _Ворота за Вашей спиной с грохотом закрылись.
~
#13703
Выдача весточки для сторожа~
0 q 100
~
wait 1
if %actor.id% != %quest137.id%
  halt
end
switch %actor.class%
  case 0
    case 1
      case 6
        case 7
          case 8
            case 13
              if %actor.sex% == 1
                say Здравствуй, волшебник!
              elseif %actor.sex%  == 2
                say Здравствуй, волшебница!
              else
                say Здравствуй, хз чо!
              end
            break
            case 2
              case 3
                case 4
                  case 5
                    case 9
                      case 10
                        case 11
                          case 12
                            if %actor.sex% == 1
                              say Здравствуй, воин!
                            elseif %actor.sex%  == 2
                              say Здравствуй, воительница!
                            else
                              say Здравствуй, хз чо!
                            end
                          break
                          default
                            say Здравствуй!
                          done 
                          say Раз забрел%actor.g% ты сюда, выслушай меня!
                          wait 1s
                          say Свершил я долгий переход от Киева в этот город к брату своему
                          say Он здесь сторожем работает на кладбище...
                          wait 1s
                          say Да не в лучший момент я сюда попал, переполох был... Злые чары тут витают...
                          say Тех, кто не поддался воле новой правительницы, согнали в эту часть города 
                          say и постепенно сживали с миру... и меня заодно
                          wait 1s
                          say Нашел я тут свое прибежище, да только весточку бы брату передать
                          wait 1s
                          say Ты храбрый человек, не откажи в помощи
                          say На вот - возьми! Отдашь брату моему если встретишь.
                          mload obj 13700
                          дать вест .%actor.iname%
                          detach 13703 %self.id% 
~
#13704
Заходим на кладбище~
0 r 100
~
wait 1
say Что вы здесь делаете?
say Кладбище - не место для прогулок
ворчать
wait 1s
say Идите вон посмотрите город, только будьте осторожнее
say Стражники приезжих не любят...
~
#13705
рассказ про цветок~
0 j 100
~
wait 1
if %object.vnum% != 13700
  дум
  say Это мне еще зачем?
  drop %object.name%
  halt
end
mpurge %object%
рад
эмо прочитал весточку
wait 2s
say Брат мой... мой брат!!! А я уж грешным делом думал, что нет его в живых уж больше...
wait 2s
say Вы принесли хорошие вести, спасибо Вам.
wait 1s
say Раз уж взялись Вы за дела добрые, помогите еще. Сальвия злая...
say и местных и приезжих подчиняет, а кто сопротивляется - пропадает
wait 1s
say есть на нее одна управа... цветок нужен волшебный
say Разбила она тот цветок на три части, раскидала эти части по городу
say Если найдете их и принесете мне, я смогу собрать его воедино.
wait 1
say Бутон хрустальный закинула куда-то за рощей, листок отдала хозяину 
say Таверны "Мертвый воин". Он его спрятал как надо.
say А стебель здесь где-то на кладбище.
say Может быть, вот этот ключ вам поможет сыскать его.
mload obj 13729
give ключ .%actor.name%
wait 1s
say Идите же...
detach 13704 %self.id%
detach 13705 %self.id%
~
#13706
достаем бутон~
2 c 0
ворошить раздвинуть разворошить~
wait 1
if !%arg.contains(трав)%
  wsend    %actor% Что Вы хотите ворошить?
  halt
end
wsend %actor% Вы запустили руку в траву и начали ее ворошить.
wechoaround %actor% %actor.name% запустил%actor.g% руку в траву и начал%actor.g% ее ворошить.
wait 1s
wecho __В траве заблестел какой-то предмет... Вот он - хрустальный бутон.
wload obj 13702
wload mob 13710
wait 1 
wecho __Вдруг поднялся сильный ветер, сбивающий Вас с ног и появилась Душа Рощи.
calcuid target 13710 mob
wforce %target% kill .%actor.name%
detach 13706 %self.id%
~
#13707
падает стебель~
0 f 100
~
if %world.curmobs(13714)% <= 1
  mload obj 13701
end
~
#13708
хозяин таверны приветствует и предлагает пиво~
0 q 100
~
wait 1
say Здрав будь, путник!
say Не устал ли с дороги?
wait 1s
say Вовремя ты зашел, я как раз выставил свежее холодное пиво.
wait 1
say И закуски сытные ароматные...
wait 1s
mecho Хозяин таверны улыбнулся во весь рот и вытер о фартук руки.
wait 1s
say Такого пива как у меня ты ни-и-ико-о-огда и ни-и-и-игде не пробовал.
wait 1s
say Уж я это точно знаю.
say Давай я налью тебе пивка, а пока ты будешь пить, я тебе о городе расскажу.
wait 1s
say Да не стесняйся же!!!
say Тебе даже платить не придется. Я напою всю твою свиту за свой счет! 
wait 2s
say Наливать?
attach 13709 %self.id%
~
#13709
хотите пива? я вот пиво не люблю!~
0 d 1
да наливай нет~
wait 1
if  (%speech% == нет) 
  say ах так?
  крич Хэй, друзья, тут мое пиво оскорбляют! Покажите, как гостеприимство нужно ценить!!!
  wait 4     
  mecho _Сбежались все посетители Таверны и начали Вас избивать.
  wait 1s
  mecho _Вы сопротивлялись сколько могли пока не потеряли сознание...
end
if (%speech% == да) || (%speech% == наливай)
  say Вот это другой разговор.
  эмо пересчитал Вас
  wait 1s     
  эмо достал из-под прилавка кружки и начал наливать пиво
  mecho _Прохладное пиво... легкая пена... пьянящий аромат...  
  wait 1s 
  mecho _Вот чего не хватало Вам для счастья.
  wait 2s
  эмо наконец-то закончил разливать пиво и протянул Вам полную кружку
  wait 10
  mecho _Вы отхлебнули пива из кружки и сознание начало медленно покидать Вас.
  wait 1s
end
wait 1s 
eval charlist %self.pc%
foreach target %charlist%
  if %target.rentable%
    mteleport %target% 13760 horse     
    wait 1
    msend %target%  _Постепенно Вы пришли в сознание... Вы оказались в каком-то коридоре.
  end 
done
attach 13722 %self.id%
detach 13708 %self.id%
detach 13709 %self.id%
~
#13710
бутон разбивается при падении~
1 h 100
~
wait 1
oecho _Упав на землю хрустальный бутон разбился на миллиарды хрустальных капель...
opurge %self%
~
#13711
кто я где я~
0 r 100
~
wait 5
switch %random.4%
  case 1
    эмо с грустью посмотрел на Вас.
    say я жив? Скажите мне... 
    взд
  break
  case 2
    say где я? Как я здесь оказался?
    рыд
  break
  case 3
    выть
    say кто же я... и зачем я здесь...
  break
  case 4
    say мне холодно... согрейте меня, пожалуйста
    дрож
  break
done
~
#13712
речь духа богатого путника~
0 r 100
~
wait 1 
взд
say Ни при жизни покоя не давали... 
say Ни после смерти покоя мне нет!
wait 1s
say И зачем ты пришел сюда?
say Тоже поди цветок ищешь?
say И я вот искал... хотел я славы, а получил смерть...
wait 1s
say И даже не похоронил никто... Бедное мое тело
выть
wait 1s
say И тебя смерть ждет
атак .%actor.name%
~
#13713
поднимаем половик~
2 c 0
свернуть убрать поднять сдвинуть~
wait 1
if !%arg.contains(половик)%
  wsend %actor% _Что Вы хотите убрать?
  return 0
  halt
end
wsend %actor% Вы убрали половик с его места. 
wechoaround %actor% _%actor.name% морщась убрал%actor.g% половик. 
wait 1s
wecho _Перед Вами открылся спуск в подземный проход.
wdoor 13723 down room 13795
wait 5s
wecho _Половик распрямился и снова закрыл спуск вниз.
wdoor 13723 down purge
~
#13714
входим в зеркало~
2 c 100
войти~
wait 1
if !%arg.contains(зеркало)%
  wsend %actor% _Куда это Вы войти собрались?
  return 0
  halt
end
wsend %actor% _ Вы сделали шаг вперед. Зеркало расступилось перед Вами и Ваше сознание помутилось.
wechoaround %actor% _%actor.name% сделал%actor.g% шаг вперед и пропал%actor.g% за зеркальной гладью.
wait 1s
wteleport %actor% 13800
wsend %actor% _Вы пришли в себя, оказавшись в темном узком подземном ходе.
wechoaround %actor% _%actor.name% вылетел%actor.g% из зеркала и упал%actor.g% рядом с Вами.
~
#13715
разбираем камни~
2 c 100
раскидать~
wait 1
if !%arg.contains(земл)% && !%arg.contains(камни)%
  wsend %actor% _А что раскидывать будем?
  return 0
  halt
end
wsend %actor% _Вы начали раскидывать во все стороны землю и камни...
wechoaround %actor% _%actor.name% с остервенением раскидывает землю и камни...
wait 2s
wsend %actor% _Постепенно Вы расковыряли проход.
wechoaround %actor% _Постепенно %actor.iname% расковырял%actor.g% проход...
wdoor 13786 east room 13787
wdoor 13787 west room 13786
~
#13716
Открываем вход на второй этаж~
0 f 100
~
mecho _Дух богатого путника сказал : 'Спасибо тебе. Душу мою отпустил'
mecho _Дух богатого путника сказал : 'Ищи на балконе...'
*mecho _Дух богатого путника сказал : 'бедное мое тело...'
mdoor 13756 east room 13758
mdoor 13758 west room 13756
mecho _
mecho _Откуда-то снизу послышался звон и грохот, как-будто рушится стена.
mecho _
~
#13717
собираем цветочек~
0 j 100
~
wait 1
if ((%object.vnum% != 13701) && (%object.vnum% != 13702) && (%object.vnum% != 13703))
  say Зачем оно мне?
  бр все
  halt
end
switch %object.vnum%
  case 13701
    set item1 1
    global item1
  break
  case 13702
    set item2 1
    global item2
  break
  case 13703
    set item3 1
    global item3
  break
done
wait 1
mpurge %object%
if %item1% != 1
  say Мне не хватает стебля - основы! Найди его!
  halt
elseif  %item2% != 1
  say А где же бутон? Ищи!
  halt
elseif  %item3% != 1
  say Не будет полноценного цветка без листа, впитывающего магию света... принеси его!
  halt
end
wait 1s
mecho _Сторож покрутил бутон и прошептал что-то. Вы расслышали только "...mysterium magnam".
wait 1s
mecho _Хрустальный бутон засиял ярким светом и все части слились воедино, превращаясь в цветок.
wait 1s
mload obj 13721
say Ну вот, одно дело сделано ...
say Осталось немного - найти потайной ход в дом этой проходимки и...
wait 2s
say Нужно посадить цветок в центре сада, а не то, что ты подумал
wait 1s
say Пойдешь?
attach 13718 %self.id%
detach 13717 %self.id%
~
#13718
выдача награды или цветка~
0 d 1
да нет пойду~
wait 1
if  (%speech% == нет) 
  say Ну ладно, сам справлюсь
  mjunk all
  wait 1s
  say Все равно ты хорошо потрудился
  say Вот твоя награда
  mload obj 13722
  дать мешочек .%actor.name%
  wait 1s
  say Завалялся тут у меня ключ один, должен он к воротам нашим подойти
  mload obj 13708
  дать ключ .%actor.name%
  wait 1s
  say Ну а я к брату пойду
  say Прощайте!
  mecho _Кладбищенский сторож тихо удалился
  wait 1
  mpurge %self%
  halt
end
if (%speech% == да) || (%speech% == пойду)
  say Храбрец!
  wait 1s
  say Так вот...
  say Вход в одном из домов, в каком - не знаю, придется тебе самому поискать.
  wait 1s
  say Сильна магия Сальвии, так что не попадись ей на глаза
  say Иначе отберет цветок и прощай свобода...
  wait 2s
  дать цвет .%actor.name%
  say Пойду к брату
  say Прощайте!
  mecho _Кладбищенский сторож тихо удалился
  wait 1
  calcuid room1 13723 room
  attach 13713 %room1.id%
  calcuid room1 13792 room
  attach 13714 %room1.id%
  mpurge %self%
  halt
end
detach 13717 %self.id%
detach 13718 %self.id%
~
#13719
Резет триггер~
2 f 100
~
calcuid barmen 13707 mob
attach 13708 %barmen.id%
detach 13709 %barmen.id%
calcuid wood 13783 room
attach 13706 %wood.id%
wait 1
calcuid wood 13723 room
detach 13713 %wood.id%
calcuid wood 13792 room
detach 13714 %wood.id%
wait 1
wdoor 13786 east purge
wdoor 13787 west purge
wdoor 13756 east purge
wdoor 13758 west purge
wdoor 13843 east purge
calcuid owner 13707 mob
detach 13722 %owner.id%
~
#13720
Боевой триг скелета~
0 k 65
~
if !%self.haveobj(13730)%
  mecho Скелет выломал у себя ребро!
  mload obj 13730
  воор ребро
end
~
#13721
Обкаст колдуна~
0 qt 100
~
wait 2
mecho Колдун злобно зыркнул на Вас и пробормотал заклинание.
dg_cast 'разбитые оковы' %self.name% 
detach 13721 %self.id%
~
#13722
Агротриг тирактирщика~
0 q 100
~
крича А-а-агаа! Они опять тут!
крича Бей их!!!
kill .%actor.name%
detach 13722 %self.id%
~
#13723
Самодивы танцуют и поют~
0 b 100
~
wait 3
switch %random.5%
  case 1
    эмо улыбнулась, глядя на Вас
  break
  case 2
    эмо закружилась в восхитительном танце
  break
  case 3
    say красивая Роща, живая, с Душой
  break
  case 4
    say Водичка в ручье волшебная, молодящая.
    хих
  break
  case 5
    ул
    хих
    эмо закричала: "девоньки - подруженьки!"
    эмо закричала: "Давайте играть!"
  break
done
~
$~