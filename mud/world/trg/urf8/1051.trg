#105100
Приветствие стражников~
0 q 100
~
wait 1
say Здравствуй, чужестранец!
mecho _- Мы рады тебя видеть!
ул
wait 1
say Поспеши со своими друзьями к вождю.
mecho _- Сегодня будет знатный пир.
mecho _- Наши воины пришли с победой из похода на земли северян.
detach 105100 %self.id%
~
#105101
Приветствие северянина~
0 q 100
~
wait 1
emot при виде вас схватился за оружие
wait 1
emot присмотрелся к вам, и убрал руку с рукояти меча.
say Я вижу вы не хазары, а значит вы не радуетесь их победе.
wait 1s
say Значит вы поможете мне!
mecho _- Я тайно прибыл в их лагерь, воспользовавшись сумятицей их приготовления к пиршеству.
wait 1s
say Они захватили в плен мою сестру.
mecho _- Сейчас она, скорее всего в шатре их вождя.
mecho _- Я бы и сам освободил ее, но ее опоили дурманящим зельем и она никого не узнает.
mecho _- Если ты сумеешь достать отрезвляющий отвар и приведешь сюда ко мне сестру
mecho _- Моей наградой ты останешься доволен.
calcuid sever 105113 mob
attach 105103 %sever.id%
detach 105101 %self.id%
~
#105102
Северянка бубнит~
0 bq 40
~
wait 1
switch %random.5%
  case 1
    say бр-пт..хв..же..эу..пр
  break
  case 2
    say гр.. ом-ак. жы.. гу.. гу
  break
  case 3
    хих
  break
  case 4
    хох
  break
  case 5
    say кр..хр..хр...ах..та
  break
done
~
#105103
Поим северянку~
0 c 1
напоить поить~
wait 1
if !%arg.contains(девушку)% && !%arg.contains(северянку)%
  msend %actor% Напоить - дело хорошоее... Да только обстановка не располагает.
  msend %actor% Да и с кем вы напиваться собрались?
  halt
end
set potion %actor.eq(17)%
if %potion.vnum% != 105100
  msend %actor% Чем Вы собираетесь ее напоить?
  halt
end
calcuid otvar 105100 obj
wait 1
mpurge %otvar%
wait 1s
msend %actor% Вы напоили девушку-северянку отрезвляющим отваром.
mechoaround %actor% %actor.name% напоил%actor.g% девушку-северянку отрезвляющим отваром.
wait 2s
detach 105102 %self.id%
mtransform 105129
mecho _Глаза северянки прояснились и она стала испуганно оглядываться по сторонам.
wait 1s
say Где я?
wait 1s
say Кто вы?
wait 2
say Что со мной произошло?
calcuid sever 105112 mob
attach 105105 %sever.id%
attach 105104 %self.id%
detach 105103 %self.id%
~
#105104
Северянка следует~
0 d 1
пойдем пошли~
wait 1
emot испуганно посмотрела по сторонам
say Кругом полно хазар... пойдем поосторжней.
stand 
follow .%actor.name%
~
#105105
Привели северянку к сеерянину~
0 g 100
~
if %actor.vnum% != 105129
  halt
end
set questor105100 %actor.leader%
mforce questmob105101 follow я
emot изадал радостный возглас
wait 1
mecho Северянин бросился к девушке, они обнялись и повернулись к вам.
wait 1s
say Мы уходим из этого проклятого лагеря, чтобы навсегда забыть о случившемся.
say Спасибо тебе, и прими мою благодарность.
switch %random.6%
  case 1
    mload obj 105112
    дать все .%questor105100.name%
  break
  case 2
    mload obj 1598
    дать все .%questor105100.name%
  break
  default
    mload obj 105127
    дать кошель .%questor105100.name%
  done
  calcuid sestra 105129 mob
  wait 1
  mpurge %sestra%
  wait 1
  mecho Сказав так, северянин нкинул на плечи сестры темный плащ и они быстро удалились.
  wait 1
  mpurge %self%
~
#105106
Крестьянин просит есть~
0 q 100
~
wait 1
mechoaround %actor% Крестьянин оглянулся и что-то прошептал %actor.dname%.
msend %actor% Крестьянин прошептал Вам : 'Добрый челвоек.. Хоть корку хлеба.. умираю от голода - надсмотрщик голодом морит...'
mecho Крестьянин испуганно оглянулся на надсмотрщика и заткнулся.
attach 105107 %self.id%
detach 105106 %self.id%
~
#105107
Крестьянину дали еду~
0 j 100
~
wait 1
if %object.type% != 19
  mecho Крестьянин с обидой посмотрел на вас.
  drop all
  halt
end
wait 1
mpurge %object%
mecho _Крестьянин набросился на съестное и с чавканьем сожрал все до последней крошки.
wait 1s
mecho Надсмотрищик сильно хлестнул крестьянина.
emot передернулся от боли
wait 1s
тоск
calcuid nadsm 105109 mob
attach 105108 %nadsm.id%
detach 105107 %self.id%
~
#105108
Надсмотрщик убит~
0 f 100
~
calcuid peon 105107 mob
exec 105109 %peon.id%
~
#105109
Крестьянин благодарит~
0 z 100
~
wait 2s
emot расширившимися от испуга глазами посмотрел на труп надсмотрщика
wait 1
say За то, что ты избавил меня от тяжкого гнета, я подарю тебе вот это
mload obj 105101
set char %random.pc%
give tooth1051 %char.name%
say С этим крестьянским амулетом - тебе поможет любой хазарин-работяга в нашем поселке.
mecho _- А мне пора убегать - смерть надсмотрщика мне не простят
wait 1
mpurge %self%
~
#105110
Дали амулет лесорубу~
0 j 100
~
wait 1
if %object.vnum% != 105101
  дум .%actor.name%
  drop %object.name%
  halt
end
wait 1
mpurge %object%
wait 1s
emot осмотрел гнилой зуб
wait 1
ухм
wait 2
say Этот амулет, говорит о том, что ты помог кому-то из наших.
say Что я мог для тебя сделать?
вопрос .%actor.name%
attach 105111 %self.id%
detach 105110 %self.id%
~
#105111
Сказали лесорубу~
0 d 0
сделай~
wait 1
if (!%speech.contains(переправу)% && !%speech.contains(мост)%)
  say Чего сделать-то?
  mecho _- Гроб разве сколотить? Так тебе он пока, вроде, без надобности.
  mecho _- Али впрок запасаешь?
  halt
end
wait 2
emot посмотрел на другой берег ручья
пожать
say Как скажешь...
mecho Лесоруб принялся рубить дерево.
wait 2 
mecho Тук-тук....
wait 3s
mecho Тук-тук....
wait 3s
mecho Тук-тук....
wait 4s
mecho Тук-тук....
wait 2s
mecho Тук-тук....
wait 2s
mecho ___&RХРРРЯСЬ!!!!&n
mecho Огромное дерево рухнуло, уперевшись вершиной в противоположный берег.
mdoor 105139 w room 105140
wait 2
ухм
detach 105111 %self.id%
~
#105112
Приветствие старика хазарина~
0 q 100
~
wait 1
say Ну наконец-то... 
mecho _- Я и не надеялся, что дождусь, когда сюда забредет кто-либо.
mecho _- Вы просто должны выслушать меня и постараться помочь!
wait 2
emot с мольбой взглянул на Вас
attach 105113 %self.id%
detach 105112 %self.id%
~
#105113
Разговор со стариком-хазарином~
0 d 1
слушаю слушаем продолжай говори~
wait 1
if %actor.vnum% != -1
  halt
end
say Там, за моей спиной находиться наше старое заброшенное кладбище.
mecho _- Но забыто оно не просто из-за скверных обычаев моего народа.
mecho _- Страшное проклятие висит над усыпальницей наших предков!
wait 1
say Я расскажу сейчас все по порядку. Пожалуйста выслушай меня.
wait 3s
say Когда-то за южной оградой этого кладбища находилось капище племени,
mecho _- наши шаманы совершали необходимые ритуалы там у алтаря Аспандиата, Бога коней.
wait 1
say В то время мы, хазары, вели кровопролитную войну с косогами... 
mecho _- Однажды мы ворвались в косожский лагерь и вырезали всех,
mecho _- кроме мальчишки, сумевшего удрать.
wait 1s
say Мы-то надеялись, что с косогами покончено навсегда. 
wait 2s
say Но по прошествии десятка лет тот самый уцелевший косог сумел отомстить нам за своих.
mecho _- Проникнув на капище он заманил туда маленького мальчика-хазарина
mecho _- Обманом он уговорил его  засыпать землей и глиной изображение священных небесных коней
mecho _- Высеченное на алтаре.
wait 2s
say Неподалеку оттуда был дед этого глупого мальчонки, увидев, как святотатствует его внук,
mecho _- Он схватил его и бросился бежать в селение, известить шаманов о нависшей беде.
mecho _- Но они не успели!
mecho _- Косог, ставший великим ведуном, совершил свой обряд над засыпанным алтарем
mecho _- И нежить встала из могил!
зяб
wait 2s
say С тех пор никто не может пробраться к капищу,
mecho _- Чтобы расчистить алтарь и совершить очистительный ритуал,
mecho _- А до тех пор пока это не произойдет,
mecho _- Нежить и нечисть безраздельно будет хозяйничать на могилах наших отцов.
wait 2s
say Если бы ты согласился нам помочь - хазары не осталось бы в долгу.
attach 105114 %self.id%
detach 105113 %self.id%
~
#105114
Выдача квеста старика-хазарина~
0 d 1
согласен согласна помогу~
wait 1
if %actor.vnum% != -1
  halt
end
say Вам надо расчистить алтарь от земли, но этого мало...
mecho _- чтобы завершить очищение надо произнести первое слово древнего заклятья.
mecho _- Только, увы, никто не помнит его,
mecho _- ходят легенды, что она записано где-то, но никто не знает где именно...
вздох
wait 1s
say Но я буду ждать вас так долго как это потребуется, и верить в вашу удачу.
attach 105119 %self.id%
detach 105114 %self.id%
~
#105115
Приветствие косога~
0 q 100
~
wait 1
say Слава небесам!
ул
wait 1s
say Хоть кто-то сумел пройти сюда - значит я не зря верил все эти годы,
mecho _- что мне удасться завершить начатое!
wait 3
say Я вижу, вы чужестранцы, а не эти мерзкие хазары, вы ведь их тоже ненавидите?
mecho _- Значит, вы согласитесь мне помочь?!
wait 2
say Много лет назад я почти исполнил свою месть за кровавую бойню,
mecho _- которую хазары устроили моему народу.
mecho _- Но не вовремя подошедший старый хрыч, увел мальчишку и я не успел завершить ритуал.
mecho _- Нежить я поднял, но вот направить ее в лагерь мне не удается.
wait 2s
say Чтобы завершить начатое мне нужна капля крови знатного хазарина
mecho _- А также последнее слово в древнем заклятье, которое использовали хазарские шаманы
mecho _- на этом кладбище.
mecho _- Если вы мне поможете - я вас щедро отблагодарю.
attach 105120 %self.id%
detach 105115 %self.id%
~
#105116
Убили косога~
0 f 100
~
calcuid altar 105192 room
attach 105117 %altar.id%
mload obj 105125
~
#105117
Очистить алтарь~
2 c 1
очистить расчистить~
wait 1
if !%arg.contains(алтарь)%
  wsend %actor% Что вы хотите расчистить?
  halt
end
wsend %actor% Вы очистили алтарь от слежавшейся земли.
wechoaround %actor% %actor.name% очистил%actor.g% алтарь от слежавшейся земли.
wait 2s
wecho &CВнезапно алтарь задрожал и засветился мерцающим сиянием, словно ожидая чего-то еще.&n
calcuid altar 105128 obj
wait 1
wpurge %altar%
wload obj 105129
attach 105118 %self.id%
detach 105117 %self.id%
~
#105118
Произнесли первое слово заклятья~
2 d 1
шульхан~
wait 1
if %actor.vnum% != -1
  halt
end
wecho __Земля задрожала у вас под ногами
wecho __&cПорыв ветра пронесся над кронами деревьев унося стоны и крики исчезающей нежити.&n
set questor105101 %actor%
global questor105101
calcuid oldman 105126 mob
remote questor105101 %oldman.id%
detach 105118 %self.id%
~
#105119
Сдача квеста старику - хазарину~
0 r 100
~
wait 1
if %actor.id% != %questor105101.id%
  halt
end
wait 2
рад
wait 1s
say Вы сделали невозможное -  очистили от скверны наше кладбище.
mecho _- Отныне память о вас будет жить в веках  среди хазар.
mecho _- Примите же это в знак нашей признательности
switch %random.5%
  case 1
    mload obj 581
  break
  *case 2
  *say Надо бы тебе чего-нить дать, только нету нифига
  *break
  default
    %self.gold(+5000)%
    give 5000 кун .%actor.name%
  done
  mecho Старик быстрыми шагами направился в селение, чтобы сообщить радостную весть соплеменникам.
  wait 1
  mpurge %self%
~
#105120
Выдача кеста у косога~
0 d 1
согласен берусь возьмусь~
wait 1
if %actor.vnum% != -1
  halt
end
set questor105102 %actor%
global questor105102
wait 2
кив
say Очень хорошо...
mecho _- Я так и знал, что вам захочется насладиться видом растерзанных нежитью хазар.
wait 1s
say Итак, найдите каплю крови родовитого хазарина.
mecho _- Сделать это несложно - возле кладбища шатается один выживший из ума старик,
mecho _- одержимый идеей помешать мне
хих
wait 2s
say А вот найти последнее слово древнего заклятия - задача посложнее.
mecho _- Я не представляю где оно может быть записано.
mecho _- Как только все будет готово - приходите сюда и мы вместе завершим обряд мщения.
attach 105122 %self.id%
detach 105120 %self.id%
~
#105121
Убили старика-хазарина~
0 f 100
~
mload obj 105126
~
#105122
дали каплю крови косогу~
0 j 100
~
wait 1
if %object.vnum% != 105126
  say Это не то, что мне нужно.
  drop %object.name%
  halt
end
wait 1
mpurge %object%
say Замечательно!
mecho _- Это именно то, что нужно!
mecho _- Долго  я ждал этого момента. Начнем же!
emot что-то бормоча начал размазывать каплю голубой благородной крови по алтарю
mecho __Внезапно земля задрожала у вас под ногами...
крича Слово, скорей говорите последнее слово заклятия!
attach 105123 %self.id%
detach 105122 %self.id%
~
#105123
Сказали второе слово заклятия у косога~
0 d 1
шульхан аль-хараим шаббат шлемазл арух~
wait 1
if %speech% != арух
  кричать Нет, нет! Что ты наделал%actor.g%!
  mload mob 105123
  mload mob 105119
  mload mob 105119
  mload mob 105125
  calcuid ghoul 105125 mob
  exec 105132 %ghoul.id%
  detach 105116 %self.id%
  detach 105123 %self.id%
  halt
end
mecho _Яркая вспышка ослепила вас на мгновенье и древний алтарь разлетелся на куски.
mecho _Из могил по всему кладбищу выползла нежить и направилась на север, к поселку.
calcuid room1 105108 room
calcuid room2 105126 room
calcuid room3 105136 room
calcuid room4 105114 room
exec 105124 %room1.id%
exec 105124 %room2.id%
exec 105124 %room3.id%
exec 105124 %room4.id%
хохот
wait 2s
say Пока переждите здесь - я думаю на полное истребление этого проклятого племени
mecho _- потребуется около получаса.
wait 1s
say А пока я должен выполнить свое обещание и наградить вас за проделанную работу.
switch %random.6%
  case 1
    say Надо бы тебе чего-нить дать, только нету нифига
  break
  case 2
    say Надо бы тебе чего-нить дать, только нету нифига
  break
  default
    %self.gold(+5000)%
    give 5000 кун .%actor.name%
  done
~
#105124
Загрузка нежити в поселке~
2 z 100
~
wecho Внезапно раздались жуткие вопли и прямо из-под земли полезла жуткая нежить!
wload mob 105120
wload mob 105121
wload mob 105122
wload mob 105123
~
#105125
Приветствие раввина~
0 q 100
~
wait 1
say Таки я вижу вы удивлены, увидев здесь меня.
mecho _- Меня послал раввинат разобраться с тем, что происходит на старом кладбище хазар.
mecho _- Я провел здесь очень много времени выясняя причину произошедшего
mecho _- Однако, когда я узнал истину, передо мной встала неразрешимая задача.
вздох
wait 3s
say Таки я не могу вернуться назад не выполнив данного мне поручения,
mecho _- но я не могу его выполнить, не нарушив при этом обеты Моисея
взд
wait 1s
say Все дело в том, что старик-хазарин считает, этого безумного косога 
mecho _- последним из племени, полагая, что с его смертью кладбище будет очищено от нежити.
mecho _- Он заблуждается!
mecho _- Косожский род давно возродился, и на место убитого будут вновь и вновь приходить
mecho _- новые ведуны, засыпая алтарь и поднимая нежить.
взд
wait 2s
say Таки есть только один способ раз и навсегда избавиться от подобного
mecho _- освятить землю кладбища.
mecho _- Но для этого ритуала мне никогда не добыть необходимые компоненты!
mecho _- Я дал клятву не убивать никого, даже гоев,
mecho _- а для обряда необходима кровь знатного хазарина,
mecho _- а также кольцо предательств и третье слово старинного заклятья
взд
wait 3s
say Если бы вы смогли мне помочь и взять на себя... э..
mecho _- некоторую часть этой работы - я провел бы обряд освящения, а вас щедро наградил
вопрос .%actor.name%
attach 105126 %self.id%
detach 105125 %self.id%
~
#105126
Выдача квеста у раввина~
0 d 1
согласен согласна возьмусь берусь сделаю~
wait 1
mecho Раввин впервые за время вашего разговора улыбнулся.
wait 1s
say Родовитее старика-хазарина нет во всем племени
mecho _- его кровь должна обладать самой большой магической силой.
mecho _- Кольцо предательств вещь чрезвычайно редкая, 
mecho _- возможно она уже у косога, а может у какой-либо твари.
mecho _- А вот третье слово заклятья я даже и не знаю где взять
взд
wait 1s
say Так или иначе я буду вас ждать здесь. Удачи!
set qring105100 0
set blood105100 0
global qring105100
global blood105100
attach 105127 %self.id%
detach 105126 %self.id%
~
#105127
Оплата квеста раввина~
0 j 100
~
wait 1
switch %object.vnum%
  case 105125
    wait 1
    mpurge %object%
    set qring105100 1
    global qring105100
    if !%blood105100%
      say Прекрасно!
      say Осталось лишь раздобыть каплю крови родовитого хазарина.
      ул
      halt
    end
  break
  case 105126
    wait 1
    mpurge %object%
    set blood105100 1
    global blood105100
    if !%qring105100%
      say Прекрасно!
      say Осталось лишь добыть кольцо предательств.
      ул
      halt
    end
  break
  default
    say Хм.. это мне совсем не нужно.
    give %object.name% .%actor.name%
    drop all
    halt
  end
done
wait 1s
say Да! да!
mecho _- Таки вы сделали это! Я не зря верил в вас!
mecho _- Гои тоже иногда бывают полезны...
mecho _- Особенно если дело касается убийства других гоев!
mecho _- Теперь я освящу землю кладбища и она не будет зависеть от состояния алтаря.
wait 2s
mecho Раввин аккуратно помазал кольцо предательств каплей голубой благородной крови,
mecho __положил его на ╚Каббалу╩ и начал читать молитву.
wait 2s
mecho &WОбернувшись, вы увидели как над кладбищем повис густой белый туман&n
mecho __&Wземля загудела у вас под ногами&n
wait 1
say Скорее произнесите третье слова заклятья - иначе освящение будет не полным!
attach 105128 %self.id%
detach 105127 %self.id%
~
#105128
Сказали третье слово заклятия у раввина~
0 d 1
шульхан аль-хараим шаббат шлемазл арух~
wait 1
if ( %speech% != шаббат )
  mecho Земля затряслась, из-под нее донесся грозный рокот.
  wait 1
  крича Нет, нет! Это не то слово! Скорей, вспомни нужное!
  halt
end
mecho __&CЯркая молния ударила в дерево, растущее на центральной аллее кладбища, разломив его надвое.
wait 2s
улыб
say Ну вот и все, я сделал все, что должен был сделать и могу возвращаться домой.
mecho _- Но прежде я должен вас поблагодарить - вот возьмите за ваши хлопоты
wait 2
switch %random.5%
  case 1
    mload obj 577
    дать книг .%actor.name%
  break
  *case 2
  *say Надо бы тебе чего-нить дать, только нету нифига
  *break
  default
    %self.gold(+5000)%
    give 5000 кун .%actor.name%
  done
  wait 2
  пока
  mecho Раввин скрылся за поворотом тропинки.
  wait 1
  mpurge %self%
~
#105129
Репоп и лоад раввина~
2 f 100
~
if ( %random.100% <= 30 )
  wat 105196 wload mob 105128
end
calcuid altar 105192 room
detach 105117 %altar.id%
detach 105118 %altar.id%
wdoor 105139 w purge
~
#105130
Трансформация надгробий~
1 n 100
~
wait 2s
if ( %world.curobjs(105136)% == 0 )
  otransform 105136
  halt
end
~
#105131
Убит шаман~
0 f 100
~
mload obj 105100
~
#105132
Загрузка твари у косога~
0 z 100
~
wait 1
mecho Земля раздалась, и жуткая нежить выбралась наружу!
хохот
mdamage kosog1051 2001
mkill kosog1051
~
#105133
Загрузка оружия~
0 n 100
~
mload obj 105137
~
$~
