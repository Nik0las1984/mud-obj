#25100
войтинужник~
2 c 100
открыть~
if %cmd%==открыть && %arg.contains(двер)% 
  calcuid nuzroom 25167 wld
  if %nuzroom.people%>0
    wecho С обратной стороны послышалось шевеленье и возглас "Занято!".
  else
    wechoaround %actor% %actor.name% прошел в строение.
    wsend %actor.name% Вы оказались в нужнике.
    wechoaround %actor% %actor.name% вошел в строение.
    wteleport %actor.name% 25167
    wpurge %nuzroom%
  end
else
  oecho Чаво ?
  halt
end
~
#25101
встречапеченегкнязь~
0 r 100
~
wait 1s
if !%hero251%
  mecho - Урус, в недобрый час для нашего народа встретились мы, так что извини что
  mecho встречаю не по обычаю, но такие уж у нас дела. 
  wait 1s
  mecho - Посмотри вокруг, кто со мной, только молодежь, да старики, вот и все что
  mecho осталось от моего рода. Жаркая битва шла с хазарами, что внезапно напали
  mecho на наши земли, бились три дня и три ночи, да и сейчас продолжается. Но
  mecho похоже одолевают нас, придется нам уходить с этих мест.
  wait 1s
  mecho - Наверное больше не будем насаждать вашему народу, но хазары и вас не
  mecho оставят в покое, готовьтесь к битве. Много народов ведут они, с ними
  mecho неведомые воины с головой обмотанной белой тряпкой, черного цвета
  mecho кожей, и большие животные.
  wait 1s
  взд
  mecho  - Нам срочно надо переправиться через Днепр, и только здесь имеется 
  mecho брод, по которому можно пройти с повозками и скотом. Но не пропускает
  mecho нас ваш старшина ополчения, не верит, думает, что на киевских землях 
  mecho мы вновь займемся разбоем.
  wait 1s
  дум
  mecho - Поверь, сейчас не до этого, вывести бы остатки рода, вот что надо мне.
  mecho Если сможешь убедить старшину, принести его грамоту с разрешением на
  mecho переправу по броду, отдам что осталось.
  wait 1s
  mecho - Да, постой, хочу предупредить тебя, между нами и Переяславлем где-то
  mecho засели в засаде дикие наши однородцы, что решили в такое время заняться
  mecho разбоем. Никого не щадят. Мы к ним не имеем никакого отношения, были бы
  mecho у меня опытные воины, сам бы их разогнал. Будь осторожен.
  wait 1s
  attach 25102 %self.id%
else
  if (%actor% == %hero251%)
    удивл
    wait 2s
    say Ты еще не добыл грамоту?
  else
    mecho - Вах, вах, совсем плохо дело.
    mecho Обещал%hero251.g% %hero251.name% помочь мне и моему роду да где-то пропал%hero251.g%.
    wait 2s
    дум
    mecho Даже и не знаю что делать, боюсь скоро враги наши появятся, последнего
    mecho мужчину в роду убьют - конец славному роду Кхаритов.
    wait 2s
    грусть
  end
end
~
#25102
сказатьдакнязю~
0 d 1
да помогу~
wait 1 
say Отлично, я буду ждать тебя здесь.
if %world.curmobs(25107)% > 0
  set hero251 %actor%
  global hero251
  calcuid z251 25107 mob
  attach 25108 %z251.id%
  attach 25106 %z251.id%
  remote hero251 %z251.id%
  detach 25103 %z251.id%
  detach 25102 %self.id%
end
~
#25103
встречастаршина1~
0 q 100
~
mecho - Добрый день, путник.
mecho - Куда путь держишь? Если в степь, то будь осторожен, что-то там творится.
mecho Не далее как пару дней назад вынесло к нам несколько лошадей степных без
mecho седоков. Видано ли такое, степные скакуны к нам прибивалось.
wait 1s
mecho - А сегодня печенежского князя посланников принял - просят получить
mecho охранную грамоту на проход по нашим землям и переправу по броду.
mecho - Что я, не помню как они нас обманом завлекали в ловушки, выманивали
mecho дружину, а затем нападали на беззащитный город, грабили, брали в полон.
wait 1s
mecho - Нет, уж дудки. собрал я часть ополчения на этом берегу, не дадим
mecho печенегам переправится.
wait 2s
if %world.curmobs(25110)% > 0
  mecho - От себя лично могу пообещать за голову печенежского князя приличную
  mecho награду. Если сможешь его одолеть, нам поможешь.
end
wait 3s
if %world.curmobs(25114)% > 0
  mecho - Есть еще вот одно дело, недалеко от сторожевых башен видели группу
  mecho печенегов, явно занимающихся лихим делом, боюсь хотят напасть на
  mecho окрестности. Притаились они где-то рядом, будь внимателен. А если
  mecho убьешь их и главное их шамана, принеси доказательство его смерти,
  mecho я награжу тебя за это.
end
~
#25104
встречарыбак~
0 q 100
~
wait 1
if %world.curmobs(25103)% > 0
  msend %actor% Уставший рыбак заметил ваше присутствие и поднял голову.
  tell %actor.name% Добрый день!
  wait 1s
  смотреть %actor.name%
  wait 1s
  tell %actor.name% Есть к тебе дело, думаю сможешь его сделать. И мне поможешь и сам не прогадаешь.
  tell %actor.name% Видишь западнее реку, там на берегу есть мелководье, на котором водятся сомы.
  tell %actor.name% Сомы огромные, вот такие.
  msend %actor% Рыбак развел свои руки, как будто обнимает огромное дерево.
  wait 1s
  tell %actor.name% в обхвате, длиной ну саженей 10 бывают.
  tell %actor.name% Огромные черти, но вкусные.
  улыб
  wait 1s
  tell %actor.name% И дорогие. Плюс есть особые свойства, говорят вылечивает от многих хворей.
  tell %actor.name% В общем, неси сома, сделаем общее дело.
  wait 1s
  msend %actor% Уставший рыбак продолжил заниматься своими делами.
end
~
#25105
далисомарыбаку~
0 j 100
~
wait 1
eval objname %object.iname%
eval objname2 %objname.cdr%
eval objname3 %objname.car%
if %objname3%.%objname2.car%.%objname2.cdr% == труп.огромного.сома
  wait 1
  mpurge %object%
  tell %actor.name% Какой красавец то, удержать то невозможно какой огромный.
  tell %actor.name% Наверное тяжело было его вытащить, такой сам кого хочешь утащит.
  wait 1s
  хих
  wait 1s
  mecho Усталый рыбак осмотрел сома.
  wait 1s
  say Такс, получится пару пудов отличной вырезки, еще пуд требухи.
  say Итого, кун 400 можно получить на кухне воеводы несомненно, так что вот твоя доля.
  %self.gold(+200)%
  дать 200 кун %actor.name%
  wait 2
  if %world.curobjs(25104)% < 10
    mload obj 25104
    mecho Усталый рыбак взрезал брюхо сома, что-то там поперебирал, что-то выкинул.
    дать пузырь %actor.name%
    tell %actor.name% Рыбий пузырь данного сома имеет массу интересных возможностей.
  end
  tell %actor.name% Ладно, пойду помаленьку.
  tell %actor.name% Спасибо, не поминай лихом.
  wait 1
  mpurge %self%
else
  say  Зачем мне это?
  eval getobject %object.name%
  if  %getobject.car% == труп
    mpurge %object%
  else
    броси %getobject.car%.%getobject.cdr%
  end
end
~
#25106
встречастаршина2~
0 r 100
~
wait 1
if %world.curmobs(25114)% > 0
  mecho - Есть еще вот одно дело, недалеко от сторожевых башен видели группу
  mecho печенегов, явно занимающихся лихим делом, боюсь хотят напасть на
  mecho окрестности. Притаились они где-то рядом, будь внимателен. А если
  mecho убьешь их и главное их шамана, принеси доказательство его смерти,
  mecho я награжу тебя за это.
end
if ( %actor.id% == %hero251.id% )
  wait 1s
  гнев
  wait 1s
  mecho - Так, говорят ты был у печенегов, с их князем разговаривал, договорился с ним
  mecho о чем то. Пожалеешь ведь, не то это племя, чтобы оставлять свои жестокие
  mecho привычки бить в спину, не верю я им.
  wait 1s
  mecho  - Просят переправится, охранную грамоту.
  wait 1s
  mecho - Нет и еще раз нет, грамоту они получат только из моего трупа.
end
~
#25107
лоадкнязь~
0 n 100
~
eval hero251 blank
remote hero251 %self.id%
attach 25101 %self.id%
attach 25102 %self.id%
attach 25111 %self.id%
~
#25108
смертьстаршины~
0 f 100
~
if %actor.vnum% != -1
  set killer %actor.leader%
else
  set killer %actor%
end
if ((%killer.id% != %hero251.id%) || (%world.curmobs(25110)% == 0))
  halt
end
mecho Старшина перед смертью приподнялся на локте.
mecho Старшина сказал: Да простит меня бог!
mecho Старшина сказал: Не просто так я не пропускал печенегов на другую сторону реки.
mecho Старшина сказал: Приходил купец ко мне от хазар, сказал чтобы я не верил печенегам.
mecho Старшина сказал: И показал он моей дочке красивое иноземное зеркало в дорогой оправе.
mecho Старшина сказал: Сказал денег стоит очень много, но мне подарит если буду стоять на своем с печенегами.
mecho Старшина с хрипом вздохнул, сплюнув кровью.
mecho Старшина сказал: Поступай с грамотой как хочешь, воевода то не против печенегов пропустить.
mload obj 25103
calcuid p251 25110 mob
attach 25109 %p251.id%
~
#25109
далиграмотукнязю~
0 j 100
~
wait 1
if (( %object.vnum% == 25103 ) && ( %actor.id% == %hero251.id% ))
  wait 1
  mpurge %object%
  say Отлично, как я рад, ты нас спас%actor.q%!
  mecho Князь подпрыгнул от радости.
  say В награду получи, что у меня сейчас есть.
  *say В награду за помощь отдаю самое ценное в моем роду и наши накидки,
  *say помогающие в степи и главное с которыми тебе дадут приют в любом печенежском роде.
  send %actor% %self.iname% протянул Вам мешок с деньгами.
  eval temp %actor.gold(+4000)%
  wait 2s
  if ((%world.curobjs(25107)% < 2) && (%random.1000% <= 200))
    mload obj 25107
    mecho Князь достал из ларца кольцо.
    дать all .%actor.name%
  end
  say Ладно, %actor.iname%, некогда теперь, поскакал я смотреть переправу.
  mpurge %self%
else
  wait 1s
  say Откуда у тебя это?
  дум
  wait 1s
  кричать Стража, убить этого уруса!
  mkill %actor%
end
detach 25109 %self.id%
~
#25110
далистаршине~
0 j 100
~
wait 1
switch %object.vnum%
  * тюрбан
  case 25108
    say Молодец, больше значит шамана нет этого.
    mecho Старшина покрутил в руках тюрбан, посмотрел его со всех сторон.
    say От имени воеводы даю тебе награду.
    %self.gold(+1000)%
    дать 1000 кун %actor.name%
    wait 1
    mpurge %object%
    wait 2
    if %world.curobjs(25109)% < 2
      mload obj 25109
      say Занятная штука, держи у себя ее - может пригодится.
      дать тюрбан %actor.name%
    end
  break
  * голова
  case 25110
    wait 1
    mpurge %object% 
    say Как приятно видеть голову мертвого врага.
    say Правда, некоторые поговаривают, что Кхарит не занимался походами на Русь.
    say Но не верю я этому, степняк всегда смотрит на чужое добро.
    wait 1s
    mecho Старшина поднял голову князя за волосы и плюнул в мертвое лицо.
    wait 1s
    mforce %actor% хмур
    mforce %actor% say Нехорошо так поступать с мертвыми, пусть даже последними мерзавцами.
    wait 1s
    mecho Старшина услышал слова %actor.rname% и резко развернулся.
    wait 1s
    say А тебе какое дело, ты ведь этого хочешь?
    mecho С этими словами старшина достал из сумки мешок с деньгами.
    mload obj 25111
    бросить мешок
    say Вот бери и проваливай. И впредь не суйся не в свое дело.
    say А то вытолкаем взашей как последнего холопа.
    say Сделал дело, ступай смело.
    хох
    say Уничтожим теперь и остатки рода князя Кхарита, другим урок будет.
  break
  default
    say  Зачем мне это?
    eval getobject %object.name%
    if  %getobject.car% == труп
      *mpurge %object%
    else
      броси %getobject.car%.%getobject.cdr%
    end
  break
done
~
#25111
смертькнязя~
0 f 100
~
if %actor.vnum% != -1
  set killer %actor.leader%
else
  set killer %actor%
end
if ( %killer.id% == %hero251.id% )
  mecho Князь успел вымолвить несколько слов перед смертью.
  mecho Князь сказал: Последний шакал в самом глухом месте степи так не поступит!
  mecho Князь сказал: Да проклянут тебя духи степи, да возьмет тебя к себе шайтан.
end
mload obj 25110
eval hero251 blank
if (%exist.mob(25107)%)
  calcuid z251 25107 mob
  remote hero251 %z251.id%
  detach 25106 %z251.id%
end
~
#25112
встречалодочник~
0 r 100
~
wait 1
msend %actor% Мальчишка сказал тебе:
msend %actor% - Добрый день, %actor.name%, здоровья тебе!
msend %actor% - Я могу перевезти тебя через реку на Переяславльский берег за 10 кун.
~
#25113
далиденеглодочнику~
0 m 1
~
wait 1
if %amount% == 10
  msend %actor.name% Мальчишка шустро вскочил в лодку, помог Вам залезть в нее.
  wait 1s
  msend %actor% Вы поплыли на лодке через реку к северному берегу.
  mechoaround %actor% %actor.name% залез%actor.q% в лодку с мальчишкой.
  mechoaround %actor% %actor.name% уплыл%actor.g% на лодке с мальчишкой.
  wait 1s
  mteleport %actor% 25065
  msend %actor% Вы приплыли на Переяславльский берег и вылезли из лодки.
  msend %actor% Мальчишка быстро запрыгнул в лодку и поплыл назад.
  mechoaround %actor% %actor.name% приплыл%actor.g% с южного берега и вылез из лодки.
  mechoaround %actor% Мальчишка быстро запрыгнул в лодку и поплыл назад.
  wait 1s
  mecho Мальчишка-лодочник приплыл назад.
else
  msend %actor% Что-то не то.
  msend %actor% Я называл правильную сумму, подумай еще раз. 
  дать %amount% кун %actor.name%
end
~
#25114
смертьшамана~
0 f 100
~
if (%random.100% <= 25)
  mload obj 519
end
~
#25115
Репоп зоны окрестности Переяславля~
2 f 100
~
if %exist.mob(25107)%
  calcuid z251 25107 mob
  rdelete hero251 %z251.id%
end
if %exist.mob(25110)%
  calcuid knez 25110 mob
  rdelete hero251 %knez.id%
  detach 25101 %knez.id%
  detach 25102 %knez.id%
  detach 25111 %knez.id%
  attach 25111 %knez.id%
  attach 25101 %knez.id%
end
~
$~
