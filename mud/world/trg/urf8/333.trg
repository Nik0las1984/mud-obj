#33300
У рыбки указателя~
0 q 100
~
wait 2s
mecho _Рыбка моргнула и махнула хвостом на юг.
~
#33301
у владыки морей 1~
0 q 100
~
wait 1
mecho Царь морской увидел Вас, нахмурился, и грозно поднял свой трезубец!!!
wait 1
встать
mkill %actor%
~
#33302
у скупой русалки~
0 q 100
~
wait 3s
mecho Русалка предложила уважаемым посетителям что-нибудь купить.
~
#33303
У красивой невольницы~
0 q 100
~
wait 3s
mecho  _Девица расплакалась, когда вы зашли к ней, потом взглянула на
mecho  _Вас повнимательней, упала на колени и взмолилась!!!
say Спасите меня! И мой отец, известный знаток магии, вознаградит вас!
~
#33304
У умной невольницы~
0 q 100
~
wait 3s
mecho  _Девушка внимательно взглянула на Вас.
say О! Вы прибыли с Земли! Может быть Вы сможете спасти меня и моих сестер?
say Мой отец отблагодарит Вас, поверьте!
~
#33305
У роскошной невольницы~
0 q 100
~
wait 3s
mecho  _Девушка высокомерно взглянула на Вас.
say Мой отец не пожалеет никаких денег, чтобы спасти меня!
say Сделай это! И ты не пожалеешь!
~
#33306
У красивой невольницы 2~
0 c 1
освободить спасти~
if !%arg.contains(пленница)% && !%arg.contains(красивая)%
  return 0
  halt
end
wait    1
msend       %actor% Вы развязали путы этой бедной девушки.
mechoaround %actor% %actor.name% освободил%actor.g% невольницу.
mload obj 33311
дат лок %actor.name%
mecho  _Она встрепенулась, когда вы освободили ее, превратилась в рыбку
mecho   _и уплыла в неизвестном направлении.
wait 1
mecho Через несколько мгновений вы услышали короткие предсмертные вскрики
mecho _других невольниц. Они все мертвы теперь....
calcuid nevolnica 33322 mob
mpurge %nevolnica%
calcuid nevolnii 33323 mob
mpurge %nevolnii%
calcuid nevolnic 33321 mob
mpurge %nevolnic%
end
~
#33307
У умной  невольницы 2~
0 c 1
освободить спасти~
if !%arg.contains(пленница)% && !%arg.contains(умная)%
  return 0
  halt
end
wait    1
msend       %actor% Вы развязали путы этой бедной девушки.
mechoaround %actor% %actor.name% освободил%actor.g% невольницу.
mload obj 33310
дат лок %actor.name%
mecho  _Она встрепенулась, когда вы освободили ее, превратилась в рыбку
mecho   _и уплыла в неизвестном направлении.
wait 1
mecho Через несколько мгновений вы услышали короткие предсмертные вскрики
mecho _других невольниц. Они все мертвы теперь....
calcuid nevolnn 33321 mob
mpurge %nevolnn%
calcuid nevolnnn 33323 mob
mpurge %nevolnnn%
calcuid nevolni 33322 mob
mpurge %nevolni%
end
~
#33308
У роскошной  невольницы 2~
0 c 1
освободить спасти~
if !%arg.contains(пленница)% && !%arg.contains(роскошн)%
  return 0
  halt
end
wait    1
msend       %actor% Вы развязали путы этой бедной девушки.
mechoaround %actor% %actor.name% освободил%actor.g% невольницу.
mload obj 33309
дат лок %actor.name%
mecho  _Она встрепенулась, когда вы освободили ее, превратилась в рыбку
mecho   _и уплыла в неизвестном направлении.
wait 1
mecho  Через несколько мгновений вы услышали короткие предсмертные вскрики
mecho _других невольниц. Они все мертвы теперь....
calcuid nevoll 33321 mob
mpurge %nevoll%
calcuid nevol 33322 mob
mpurge %nevol%
calcuid nevollll 33323 mob
mpurge %nevollll%
end
~
#33309
померла огромная мурена~
0 f 100
~
if (%world.curobjs(33312)% < 5) && (%random.3% == 1)
  mload obj 33312
end
~
#33310
призываем штормик~
0 k 100
~
if ( %world.curmobs(33315)% <= 4 )
  say О силы моря! О Ветры и Вьюги! Ко мне!
  wait 1
  mecho Вода в комнате вспенилась, забурлила. Шторм пришел на помощь!!!
  mload mob 33315 
  mload mob 33315 
  mload mob 33315 
  detach 33310 %self.id%
end
~
#33311
дейстаие у наложницы 1~
0 c 0
взять овладеть поиметь отиметь трахнуть изнасиловать~
if !(%arg.contains(наложница)%) 
  return 0
  halt
end
msend       %actor% Вы попытались снять с нее всю одежду.
mechoaround %actor% %actor.name% похотливо покосился на девушку и полез к ней с руками.
wait 2s
msend %firstchar% .- Зря вы это....
встать
mkill %actor%
end
~
#33312
дейстаие у наложницы 2~
0 c 0
очаровать обольстить развлечь поцеловать щипнуть~
if !(%arg.contains(наложница)%) 
  return 0
  halt
end
msend       %actor% Вы попытались развлечь девушку.
mechoaround %actor% %actor.name% стал строить из себя клоуна.
wait 2s
say Не смешно...
вста
mkill %actor%
end
~
#33313
у огромной мурены~
0 r 100
~
wait 1
mecho  _Мурена взглянула на Вас с презрением.
mecho Огромная мурена кинулась в атаку!
mkill .%actor.name%
~
#33314
у  мурены~
0 q 100
~
wait 1
msend %actor% Мурена внимательно осмотрела Вас.
mechoaround %actor%  Мурена внимательно осмотрела %actor.rname%, проверяя на добропорядочность.
wait 1
mecho _Мурена скептически скривила свою рожу.
mecho _Мурена кинулась в атаку.
mkill .%actor.name%
~
#33315
у  черпашки~
0 q 100
~
wait 1
mecho _Черепашка недоумевающе взглянула на Вас.
wait 1
say Еда!!!
встать
mkill %random.pc%
~
#33316
сообщение в городе~
2 e 100
~
wait 3s
wecho _Кругом деловая суета богатого оживленного города.
~
#33317
сообщение в дворце~
2 e 100
~
wait 3s
wecho _Слышны дикие завывания.
~
#33318
померла спрут~
0 f 100
~
if (%world.curobjs(33313)% < 5) && (%random.3% == 1)
  mload obj 33313
end
~
#33319
померла спрут 2~
0 f 100
~
if (%world.curobjs(33314)% < 5) && (%random.3% == 1)
  mload obj 33314
end
~
#33320
помер шторм~
0 f 100
~
if (%world.curobjs(551)% < 1) && (%random.6% == 1)
  mload obj 551
end
~
#33321
помер Царь морской~
0 f 100
~
if (%world.curobjs(33315)% == 0) && (%random.100% < 21)
  mload obj 33315
end
if (%world.curobjs(33316)% == 0) && (%random.100% < 21)
  mload obj 33316
end
if (%world.curobjs(33317)% == 0) && (%random.100% < 21)
  mload obj 33317
end
if (%world.curobjs(507)% == 0) && (%random.100% < 26)
  mload obj 507
end
if (%world.curobjs(505)% == 0) && (%random.100% < 26)
  mload obj 505
end
mload obj 33303
end
~
#33322
помер вихрь~
0 f 100
~
if (%world.curobjs(205)% < 30) && ( %random.20% == 7 )
  mload obj 205
end
~
#33323
тригер моба-тренера~
0 d 0
готов да буду учить учиться~
wait 1s
msend %actor%   Старый воин-учитель задумался, словно оценивая Вас.
say Дай прикинуть, какие умения тебе могут быть доступны...
mecho Взгляд Учителя стал проникать в Вашу душу....
wait 1s
if %actor.level% < 25
  say Хм... Мне кажется, что то слишком мал%actor.a%, чтоб я чему-то научил тебя, приходи как станешь опытнее.
  set     Add1Exp 5000
  set Add1Exp  %actor.exp(+%Add1Exp%)%
  msend %actor%   Старый учитель беззлобно рассмеялся и медленно исчез.
  mpurge %self%
  halt
end
wait 1s
ул
wait 1s
mecho Старый воин задумался, вспоминая былые приключения и сражения.
wait 1s
makeuid killer %actor.id%
calcuid questor 33327 mob
remote  killer %questor.id%
*лекарь
if  (%actor.class% == 0)
  exec 33325 %questor.id% 
  wait 1s
end
*боевой маг
if  (%actor.class% == 1)
  exec 33326 %questor.id% 
  wait 1s
end
*вор
if (%actor.class% == 2)
  exec 33327 %questor.id% 
  wait 1s
end
*богатырь
if (%actor.class% == 3)
  exec 33328 %questor.id% 
  wait 1s
end
*наемник
if (%actor.class% == 4)
  exec 33329 %questor.id% 
  wait 1s
end
*дружинник
if (%actor.class% == 5)
  exec 33330 %questor.id% 
  wait 1s
end
*маг-кудесник
if (%actor.class% == 6)
  exec 33331 %questor.id% 
  wait 1s
end
*маг-волшебник
if (%actor.class% == 7)
  exec 33332 %questor.id% 
  wait 1s
end
*маг-некромант
if (%actor.class% == 8)
  exec 33333 %questor.id% 
  wait 1s
end
*витязь
if (%actor.class% == 9)
  exec 33334 %questor.id% 
  wait 1s
end
*охотник
if (%actor.class% == 10)
  exec 33335 %questor.id% 
  wait 1s
end
*кузнец
if (%actor.class% == 11)
  exec 33336 %questor.id% 
  wait 1s
end
*купец
if (%actor.class% == 12)
  exec 33337 %questor.id% 
  wait 1s
end
*волхв
if (%actor.class% == 13)
  say Извини, но я - воин, а не захудалый волхвишко. Тебя учить я не могу.
  mecho Старый учитель нанес Вам пару ударов на всякий случай.
  mdamage %actor% 15
  say Нет.. Ты ничему не научишься... В боевых делах ты бестолочь.
end
wait 1s
пока
msend %actor%   Старый учитель улыбнулся и медленно исчез.
mpurge %self%
~
#33324
входиш к старому войну~
0 r 100
~
wait 1s
say Привет! Ты никак угробил%actor.g% Царя морского? Неслабо...
say Спасибо, век не забуду...
say И отблагодарить мож кое-как смогу....
say Воин я старый, опытный.. Научить кое-чему смогу.
~
#33325
лекарь~
0 z 100
~
*log &Y%killer.name% апает скилл у владыки морей!&n
eval skl %actor.remort%*5+90
if (%killer.skill(лидерство)%+5 <= %skl%)
  eval addskl 5
else
  eval addskl %skl%-%killer.skill(лидерство)%
end
if !%killer.skill(лидерство)%
  say Раньше я ходил с одним очень опытным человеком..
  say И он мне показывал все возможные причуды в нашем путешествии
  say И я кое чему у него научился, могу и тебя научить!
  ait 1s
  mskillturn %killer% лидерство set
  wait 1s
  say Вот так.. может быть теперь ты станешь лучше разбираться в умении "лидерство".
elseif %killer.skill(лидерство)% < %skl%
  say Раньше я ходил с одним очень опытным человеком..
  say И он мне показывал все возможные причуды в нашем путешествии
  say И я кое чему у него научился, могу и тебя научить!
  wait 1s
  mskilladd %killer% лидерство %addskl%
  wait 1s
  say Вот так.. может быть теперь ты станешь лучше разбираться в умении "лидерство".
else
  say Кажется мне, что во всех умениях ты достаточно развит%killer.g%.
  say Нечему мне тебя учить более..
end
~
#33326
боевой маг~
0 z 100
~
*log &Y%killer.name% апает скилл у владыки морей!&n
eval skl %actor.remort%*5+90
if (%killer.skill(опознание)%+5 <= %skl%)
  eval addskl 5
else
  eval addskl %skl%-%killer.skill(опознание)%
end
if !%killer.skill(опознание)%
  say В моих путешествиях меня поразил один человек..
  say Он запросто распознавал мои вещи, даже не глядя на них!
  say И я кое чему у него научился, могу и тебя научить!
  ait 1s
  mskillturn %killer% опознание set
  wait 1s
  say Вот так.. может быть теперь ты станешь лучше разбираться в умении "опознание".
elseif %killer.skill(опознание)% < %skl%
  say В моих путешествиях меня поразил один человек..
  say Он запросто распознавал мои вещи, даже не глядя на них!
  say И я кое чему у него научился, могу и тебя научить!
  wait 1s
  mskilladd %killer% опознание %addskl%
  wait 1s
  say Вот так.. может быть теперь ты станешь лучше разбираться в умении "опознание".
else
  say Кажется мне, что во всех умениях ты достаточно развит%killer.g%.
  say Нечему мне тебя учить более..
end
~
#33327
вор~
0 z 100
~
*log &Y%killer.name% апает скилл у владыки морей!&n
eval skl %actor.remort%*5+90
if (%killer.skill(заколоть)%+5 <= %skl%)
  eval addskl 5
else
  eval addskl %skl%-%killer.skill(заколоть)%
end
if (%killer.skill(подножка)%+5 <= %skl%)
  eval addskl2 5
else
  eval addskl2 %skl%-%killer.skill(подножка)%
end
if !%killer.skill(заколоть)%
  say В одной из кабацких драк меня поразила быстрота и ловкость, с которой один из
  say местных воров убивал противников. Он делал это с помощью удара в спину.
  say Он мгновенно появлялся у них из-за спины и наносил коварный удар.
  say Я долго учился у него, чтоб уметь так сражаться.
  say Я покажу тебе этот удар.
  wait 1s
  mecho Старый учитель на мгновение исчез.
  mecho Кто-то нанес Вам УЖАСНЫЙ удар в спину!!!
  mskillturn %killer% заколоть set
  mdamage %killer% 200
  mecho Старый учитель появился снова.
  wait 1s
  say Вот так.. может быть теперь ты станешь лучше разбираться в умении "заколоть".
elseif %killer.skill(заколоть)% < %skl%
  say В одной из кабацких драк меня поразила быстрота и ловкость, с которой один из
  say местных воров убивал противников. Он делал это с помощью удара в спину.
  say Он мгновенно появлялся у них из-за спины и наносил коварный удар.
  say Я долго учился у него, чтоб уметь так сражаться.
  say Я покажу тебе этот удар.
  wait 1s
  mecho Старый учитель на мгновение исчез.
  mecho Кто-то нанес Вам УЖАСНЫЙ удар в спину!!!
  mskilladd %killer% заколоть %addskl%
  mdamage %killer% 200
  mecho Старый учитель появился снова.
  wait 1s
  say Вот так.. может быть теперь ты станешь лучше разбираться в умении "заколоть".
elseif !%killer.skill(подножка)%
  say Знаешь, бывал я во многих переделках, и знаю много всего.
  say Но могу точно сказать тебе следующее.
  say В бою очень важно уложить противника на попу.
  say Хоть и говорят что "лежачего не бьют", но это только у них, у честных дураков.
  say Ты же, как вор, должен знать, что жертву легче поразить, когда она беспомощна.
  wait 1s
  mecho Старый учитель сделал Вам подножку.
  %killer.position(6)%
  %killer.wait(2)%
  mecho Тут же он нанес Вам УЖАСНЫЙ удар!!!
  mskillturn %killer% подножка set
  mdamage %killer% 50
  wait 1s
  say Вот так.. может быть теперь ты станешь лучше разбираться в умении "подножка".
elseif %killer.skill(подножка)% < %skl%
  say Знаешь, бывал я во многих переделках, и знаю много всего.
  say Но могу точно сказать тебе следующее.
  say В бою очень важно уложить противника на попу.
  say Хоть и говорят что "лежачего не бьют", но это только у них, у честных дураков.
  say Ты же, как вор, должен знать, что жертву легче поразить, когда она беспомощна.
  wait 1s
  mecho Старый учитель сделал Вам подножку.
  %killer.position(6)%
  %killer.wait(2)%
  mecho Тут же он нанес Вам УЖАСНЫЙ удар!!!
  mskilladd %killer% подножка %addskl2%
  mdamage %killer% 50
  wait 1s
  say Вот так.. может быть теперь ты станешь лучше разбираться в умении "подножка".
else
  say Кажется мне, что во всех умениях ты достаточно развит%killer.g%.
  say Нечему мне тебя учить более..
end
~
#33328
богатырь~
0 z 100
~
*log &Y%killer.name% апает скилл у владыки морей!&n
eval skl %actor.remort%*5+90
if (%killer.skill(богатырский молот)%+5 <= %skl%)
  eval addskl 5
else
  eval addskl %skl%-%killer.skill(богатырский молот)%
end
if (%killer.skill(кулачный бой)%+5 <= %skl%)
  eval addskl2 5
else
  eval addskl2 %skl%-%killer.skill(кулачный бой)%
end
if !%killer.skill(богатырский молот)%
  say Богатырская сила в тебе видна могучая.
  say Посему попробую научить тебя приему славному - "богатырский молот".
  say Главное тут, замахнуться со всей дури, да и врезать промеж глаз ворогу.
  say Примерно вот так!
  mecho Учитель подошел к Вам и резко замахнулся!
  mecho Богатырский удар Учителя пришелся Вам по вкусу...
  mskillturn %killer% богатырский.молот set
  mdamage %killer% 200
  say Может быть теперь ты поймешь все преимущества богатырского удара.
elseif %killer.skill(богатырский молот)% < %skl%
  say Богатырская сила в тебе видна могучая.
  say Посему попробую научить тебя приему славному - "богатырский молот".
  say Главное тут, замахнуться со всей дури, да и врезать промеж глаз ворогу.
  say Примерно вот так!
  mecho Учитель подошел к Вам и резко замахнулся!
  mecho Богатырский удар Учителя пришелся Вам по вкусу...
  mskilladd %killer% богатырский.молот %addskl%
  mdamage %killer% 200
  say Может быть теперь ты поймешь некоторые особенности богатырского удара.
elseif !%killer.skill(кулачный бой)%
  say Богатырская сила в тебе видна могучая.
  say Посему попробую научить тебя приему славному - "кулачный удар".
  say Главное тут, выбрать оружие потяжелее, да и врезать промеж глаз ворогу.
  say Примерно вот так!
  mecho Учитель подошел к Вам и резко замахнулся здоровым кулаком!
  mecho Удар Учителя оглушил Вас и порадовал весьма...
  mskillturn %killer% кулачный set
  mdamage %killer% 200
  say Может быть теперь ты поймешь все преимущества умения "кулачный бой".
elseif %killer.skill(кулачный бой)% < %skl%
  say Богатырская сила в тебе видна могучая.
  say Посему попробую научить тебя приему славному - "кулачный бой".
  say Главное тут, выбрать оружие потяжелее, да и врезать промеж глаз ворогу.
  say Примерно вот так!
  mecho Учитель подошел к Вам и резко замахнулся здоровым кулаком!
  mecho Удар Учителя оглушил Вас и порадовал весьма...
  mskilladd %killer% кулачный %addskl2%
  mdamage %killer% 200
  say Может быть теперь ты поймешь все преимущества умения "кулачный бой".
else
  say Кажется мне, что во всех умениях ты достаточно развит%killer.g%.
  say Нечему мне тебя учить более..
end
~
#33329
наемник~
0 z 100
~
*log &Y%killer.name% апает скилл у владыки морей!&n
eval skl %actor.remort%*5+90
if (%killer.skill(проникающее)%+5 <= %skl%)
  eval addskl 5
else
  eval addskl %skl%-%killer.skill(проникающее)%
end
if (%killer.skill(подножка)%+5 <= %skl%)
  eval addskl2 5
else
  eval addskl2 %skl%-%killer.skill(подножка)%
end
if !%killer.skill(проникающее оружие)%
  mskillturn %killer% проникающее set
elseif %killer.skill(проникающее оружие)% < %skl%
  say Вижу я, в жилах у тебя течет кровь наемника.
  дум
  say Немало повидал я такого брата на своем веку...
  say Главное для них - это как следует уметь обращаться с оружием своим.
  say Я покажу тебе ряд приемов, а ты смотри в оба глаза.
  mecho Учитель вынул из-за пазухи кинжал и начал его крутить, вертеть...
  mecho Несколько раз он перекладывал его с руки на руку, наносил невидимые удары...
  mecho В какой-то момент Вы уловили и запомнили несколько его движений...
  mecho Вы стали опытнее в умении "проникающее оружие".
  mskilladd %killer% проникающее %addskl%
elseif !%killer.skill(подножка)%
  say Знаешь, бывал я во многих переделках, и знаю много всего.
  say Но могу точно сказать тебе следующее.
  say В бою очень важно усадить противника на попу.
  say Хоть и говорят что "лежачего не бьют", но это только у них, у честных дураков.
  say Ты же, как убийца, должен знать, что жертву легче поразить, когда она беспомощна.
  wait 1s
  mecho Старый учитель сделал Вам подножку.
  %killer.position(6)%
  %killer.wait(2)%
  mecho Тут же он нанес Вам УЖАСНЫЙ удар!!!
  mskillturn %killer% подножка set
  mdamage %killer% 50
  wait 1s
  say Вот так.. может быть теперь ты станешь лучше разбираться в умении "подножка".
elseif %killer.skill(подножка)% < %skl%
  say Знаешь, бывал я во многих переделках, и знаю много всего.
  say Но могу точно сказать тебе следующее.
  say В бою очень важно уложить противника на попу.
  say Хоть и говорят что "лежачего не бьют", но это только у них, у честных дураков.
  say Ты же, как убийца, должен знать, что жертву легче поразить, когда она беспомощна.
  wait 1s
  mecho Старый учитель сделал Вам подножку.
  %killer.position(6)%
  %killer.wait(2)%
  mecho Тут же он нанес Вам УЖАСНЫЙ удар!!!
  mskilladd %killer% подножка %addskl2%
  mdamage %killer% 50
  wait 1s
  say Вот так.. может быть теперь ты станешь лучше разбираться в умении "подножка".
else
  say Кажется мне, что во всех умениях ты достаточно развит%killer.g%.
  say Нечему мне тебя учить более..
end
~
#33330
друж~
0 z 100
~
*log &Y%killer.name% апает скилл у владыки морей!&n
eval skl %actor.remort%*5+90
if (%killer.skill(сбить)%+5 <= %skl%)
  eval addskl 5
else
  eval addskl %skl%-%killer.skill(сбить)%
end
if (%killer.skill(спасти)%+5 <= %skl%)
  eval addskl2 5
else
  eval addskl2 %skl%-%killer.skill(спасти)%
end
if !%killer.skill(сбить)%
  say Хмм... дружинник ты конечно никудышный....
  say Ну не встречал я еще дружинников без умения "сбить"...
  say А повидал я немало...
  say И понял я, что умение "сбить" среди прочих умений дружинника - самое архиважное.
  say Как грится, "один на попе не воин..." ну или что-то в этом духе.
  say А посему смотри, что я тебе щас покажу...
  mecho Учитель легким, но коварным ударом сбил Вас с ног!!!
  %killer.position(6)%
  %killer.wait(2)%
  mecho Учитель сильным прямолинейным ударом сбил Вас с ног!!!
  %killer.position(6)%
  %killer.wait(2)%
  say Воо... посиди и подумай.. мож научишься чему в этом славном умении "сбить".
  mskillturn %killer% сбить set
elseif %killer.skill(сбить)% < %skl%
  say Хмм... дружинник ты что надо....
  say Встречал я правда и посильнее и поумнее чем ты...
  say И понял я, что умение "сбить" среди прочих умений дружинника - самое архиважное.
  say Как грится, "один на попе не воин..." ну или что-то в этом духе.
  say А посему смотри, что я тебе щас покажу...
  mecho Учитель легким, но коварным ударом сбил Вас с ног!!!
  %killer.position(6)%
  %killer.wait(2)%
  mecho Учитель сильным прямолинейным ударом сбил Вас с ног!!!
  %killer.position(6)%
  %killer.wait(2)%
  say Воо... посиди и подумай.. мож научишься чему в этом славном умении "сбить".
  mskilladd %killer% сбить %addskl%
elseif !%killer.skill(спасти)%
  say Вижу я, что с умением "спасти" ты совсем не в ладах.
  say А между тем от него зачастую зависит жизнь не только твоя, но и твоих друзей.
  say Расскажу я тебе историю одну, а ты запоминай...
  mecho Учитель начал свой рассказ.
  mecho Учитель рассказал о битвах многочисленных, в коих он побывал...
  mecho Рассказал о тех случаях, когда спасал друзей от верной гибели...
  mecho Потом он встал и показал Вам несколько приемов, необходимых для улучшенного спасания
  mecho Кажется, вы познакомились с умением "спасти".
  mskillturn %killer% спасти set
elseif %killer.skill(спасти)% < %skl%
  say Вижу я, что с умением "спасти" ты знаком.
  дум
  say Расскажу я тебе историю одну, а ты запоминай...
  mecho Учитель начал свой рассказ.
  mecho Учитель рассказал о битвах многочисленных, в коих он побывал...
  mecho Рассказал о тех случаях, когда спасал друзей от верной гибели...
  mecho Потом он встал и показал Вам несколько приемов, необходимых для улучшенного спасания
  mecho Кажется, вы лучше стали разбираться в умении "спасти".
  mskilladd %killer% спасти %addskl2%
else
  say Кажется мне, что во всех умениях ты достаточно развит%killer.g%.
  say Нечему мне тебя учить более..
end
~
#33331
кудес~
0 z 100
~
*log &Y%killer.name% апает скилл у владыки морей!&n
eval skl %actor.remort%*5+90
if (%killer.skill(опознание)%+5 <= %skl%)
  eval addskl 5
else
  eval addskl %skl%-%killer.skill(опознание)%
end
if !%killer.skill(опознание)%
  say В моих путешествиях меня поразил один человек..
  say Он запросто распознавал мои вещи, даже не глядя на них!
  say И я кое-чему у него научился, могу и тебя научить!
  wait 1s
  mskillturn %killer% опознание set
  wait 1s
  say Вот так.. может быть теперь ты станешь лучше разбираться в умении "опознание".
elseif %killer.skill(опознание)% < %skl%
  say В моих путешествиях меня поразил один человек..
  say Он запросто распознавал мои вещи, даже не глядя на них!
  say И я кое-чему у него научился, могу и тебя научить!
  wait 1s
  mskilladd %killer% опознание %addskl%
  wait 1s
  say Вот так.. может быть теперь ты станешь лучше разбираться в умении "опознание".
else
  say Кажется мне, что во всех умениях ты достаточно развит%killer.g%.
  say Нечему мне тебя учить более..
end          
~
#33332
волш~
0 z 100
~
*log &Y%killer.name% апает скилл у владыки морей!&n
eval skl %actor.remort%*5+90
if (%killer.skill(опознание)%+5 <= %skl%)
  eval addskl 5
else
  eval addskl %skl%-%killer.skill(опознание)%
end
if !%killer.skill(опознание)%
  say В моих путешествиях меня поразил один человек..
  say Он запросто распознавал мои вещи, даже не глядя на них!
  say И я кое-чему у него научился, могу и тебя научить!
  wait 1s
  mskillturn %killer% опознание set
  wait 1s
  say Вот так.. может быть теперь ты станешь лучше разбираться в умении "опознание".
elseif %killer.skill(опознание)% < %skl%
  say В моих путешествиях меня поразил один человек..
  say Он запросто распознавал мои вещи, даже не глядя на них!
  say И я кое-чему у него научился, могу и тебя научить!
  wait 1s
  mskilladd %killer% опознание %addskl%
  wait 1s
  say Вот так.. может быть теперь ты станешь лучше разбираться в умении "опознание".
else
  say Кажется мне, что во всех умениях ты достаточно развит%killer.g%.
  say Нечему мне тебя учить более..
end
~
#33333
некрос~
0 z 100
~
*log &Y%killer.name% апает скилл у владыки морей!&n
eval skl %actor.remort%*5+90
if (%killer.skill(опознание)%+5 <= %skl%)
  eval addskl 5
else
  eval addskl %skl%-%killer.skill(опознание)%
end
if !%killer.skill(опознание)%
  say В моих путешествиях меня поразил один человек..
  say Он запросто распознавал мои вещи, даже не глядя на них!
  say И я кое-чему у него научился, могу и тебя научить!
  wait 1s
  mskillturn %killer% опознание set
  wait 1s
  say Вот так.. может быть теперь ты станешь лучше разбираться в умении "опознание".
elseif %killer.skill(опознание)% < %skl%
  say В моих путешествиях меня поразил один человек..
  say Он запросто распознавал мои вещи, даже не глядя на них!
  say И я кое-чему у него научился, могу и тебя научить!
  wait 1s
  mskilladd %killer% опознание %addskl%
  wait 1s
  say Вот так.. может быть теперь ты станешь лучше разбираться в умении "опознание".
else
  say Кажется мне, что во всех умениях ты достаточно развит%killer.g%.
  say Нечему мне тебя учить более..
end
~
#33334
витя~
0 z 100
~
*log &Y%killer.name% апает скилл у владыки морей!&n
eval skl %actor.remort%*5+90
if (%killer.skill(сбить)%+5 <= %skl%)
  eval addskl 5
else
  eval addskl %skl%-%killer.skill(сбить)%
end
if (%killer.skill(точный стиль)%+5 <= %skl%)
  eval addskl2 5
else
  eval addskl2 %skl%-%killer.skill(точный стиль)%
end
if !%killer.skill(сбить)%
  say Хмм... витязь ты конечно никудышный....
  say Ну не встречал я еще витязей без умения "сбить"...
  say А повидал я немало...
  say И понял я, что умение "сбить" среди прочих умений витязя - самое архиважное.
  say Как грится, "один на попе не воин..." ну или что-то в этом духе.
  say А посему смотри, что я тебе щас покажу...
  mecho Учитель легким, но коварным ударом сбил Вас с ног!!!
  %killer.position(6)%
  %killer.wait(2)%
  mecho Учитель сильным прямолинейным ударом сбил Вас с ног!!!
  %killer.position(6)%
  %killer.wait(2)%
  say Воо... посиди и подумай.. мож научишься чему в этом славном умении "сбить".
  mskillturn %killer% сбить set
elseif %killer.skill(сбить)% < %skl%
  say Хмм... витязь ты что надо....
  say Встречал я правда и посильнее и поумнее чем ты...
  say И понял я, что умение "сбить" среди прочих умений витязя - самое архиважное.
  say Как грится, "один на попе не воин..." ну или что-то в этом духе.
  say А посему смотри, что я тебе щас покажу...
  mecho Учитель легким, но коварным ударом сбил Вас с ног!!!
  %killer.position(6)%
  %killer.wait(2)%
  mecho Учитель сильным прямолинейным ударом сбил Вас с ног!!!
  %killer.position(6)%
  %killer.wait(2)%
  say Воо... посиди и подумай.. мож научишься чему в этом славном умении "сбить".
  mskilladd %killer% сбить %addskl%
elseif !%killer.skill(точный стиль)%
  say Нда... витязей я повидал немало на своем веку...
  say Но такого тупого, чтоб не знал умения "точный стиль".. встречаю впервые.
  say Пойми же, что умение точным ударом поразить противника в жизненно важные места -
  say - пригодится всегда и тебе и твоим друзьям.
  say Попытаюсь научить тебя кое-чему в этом умении..
  mecho Учитель покопался в памяти и начал свой рассказ.
  mecho Он рассказал Вам о разных видах животных, где у них уязвимые места.
  mecho Учитель детально описал Вам строение человека и указал жизненно важные части тела.
  mecho Вы почувствовали себя несколько более сведущим в умении "точный стиль".
  mskillturn %killer% точный.стиль set
elseif %killer.skill(точный стиль)% < %skl%
  say Нда... витязей я повидал немало на своем веку...
  say И знаю отлично, что умение точным ударом поразить противника в жизненно важные места -
  say - это умения пригодится всегда и тебе и твоим друзьям.
  say Попытаюсь научить тебя кое-чему в этом умении..
  mecho Учитель покопался в памяти и начал свой рассказ.
  mecho Он рассказал Вам о разных видах животных, где у них уязвимые места.
  mecho Учитель детально описал Вам строение человека и указал жизненно важные части тела.
  mecho Вы почувствовали себя несколько более сведущим в умении "точный стиль".
  mskilladd %killer% точный.стиль %addskl2%
else
  say Кажется мне, что во всех умениях ты достаточно развит%killer.g%.
  say Нечему мне тебя учить более..
end
~
#33335
охот~
0 z 100
~
*log &Y%killer.name% апает скилл у владыки морей!&n
eval skl %actor.remort%*5+90
if (%killer.skill(маскировка)%+5 <= %skl%)
  eval addskl 5
else
  eval addskl %skl%-%killer.skill(маскировка)%
end
if (%killer.skill(луки)%+5 <= %skl%)
  eval addskl2 5
else
  eval addskl2 %skl%-%killer.skill(луки)%
end
if !%killer.skill(луки)%
  say Хм.. да Вы, гость дорогой, оригинал..
  say Охотника без умения "луки" я еще не встречал...
  хох
  say Ладно.. Сжалюсь над Вами.. поведаю о том, что любой ребенок знает..
  mecho Учитель быстро описал Вам преимущества использования луков.
  mecho А также описал ряд приемов их удачного использования.
  mecho Вы познакомились с умением "луки".
  mskillturn %killer% луки set
elseif %killer.skill(луки)% < %skl%
  say Хм.. да ты охотник опытный.
  дум
  say Ладно.. Есть у меня пара приемов из умения "луки", которых и ты не знаешь.
  mecho Учитель быстро описал Вам преимущества разных видов луков.
  mecho Учитель обучил Вас, как учитывать влияние погоды на полет стрелы.
  mecho Учитель рассказал Вам, как надо стрелять с лука, верхом на коне.
  mecho Вы стали гораздо опытнее в умении "луки".
  mskilladd %killer% луки %addskl2%
elseif %killer.skill(маскировка)% < %skl%
  say Расскажу я тебе одну историю, а ты на ус мотай...
  mecho Учитель рассказал Вам о встрече с одним из величайших охотников,
  mecho который мог так маскироваться, что дикие животные не замечали его,
  mecho и он мог ловить их руками...
  mecho Учитель поведал Вам несколько приемов, чтобы научиться так маскироваться.
  mecho Возможно, вы стали более опытны в умении "маскировка".
  mskilladd %killer% маскировка %addskl%
else
  say Кажется мне, что во всех умениях ты достаточно развит%killer.g%.
  say Нечему мне тебя учить более..
end
end
~
#33336
кузя~
0 z 100
~
*log &Y%killer.name% апает скилл у владыки морей!&n
eval skl %actor.remort%*5+90
if (%killer.skill(секиры)%+5 <= %skl%)
  eval addskl 5
else
  eval addskl %skl%-%killer.skill(секиры)%
end
if (%killer.skill(короткие лезвия)%+5 <= %skl%)
  eval addskl2 5
else
  eval addskl2 %skl%-%killer.skill(короткие лезвия)%
end
if !%killer.skill(секиры)%
  say Встретил я однажды кузнеца знатного, в Царе-граде живущего...
  say Тот кузнец большой был мастер по топорам и секирам.
  say Обучил он меня нескольким приемам. Смотри же и запоминай.
  mecho Учитель достал откуда-то огромный топор.
  mecho Учитель принялся очень быстро крутить-вертеть топор, будто соломинку.
  mecho В какой-то момент Вам показалось, что Вы стали опытнее в умении "секиры".
  mskillturn %killer% секиры set
elseif %killer.skill(секиры)% < %skl%
  say Встретил я однажды кузнеца знатного, в Царе-граде живущего...
  say Тот кузнец большой был мастер по топорам и секирам.
  say Обучил он меня нескольким приемам. Смотри же и запоминай.
  mecho Учитель достал откуда-то огромный топор.
  mecho Учитель принялся очень быстро крутить-вертеть топор, будто соломинку.
  mecho В какой-то момент Вам показалось, что Вы стали опытнее в умении "топоры".
  mskilladd %killer% секиры %addskl%
elseif !%killer.skill(короткие лезвия)%
  say Встретил я однажды кузнеца знатного, в Царе-граде живущего...
  say Тот кузнец большой был мастер по бою на коротких мечах.
  say Обучил он меня нескольким приемам. Смотри же и запоминай.
  mecho Учитель достал откуда-то короткий меч.
  mecho Учитель принялся очень быстро крутить-вертеть меч, будто соломинку.
  mecho В какой-то момент Вам показалось, что Вы стали опытнее в умении "короткие лезвия".
  mskillturn %killer% короткие.лезвия set
elseif %killer.skill(короткие лезвия)% < %skl%
  say Встретил я однажды кузнеца знатного, в Царе-граде живущего...
  say Тот кузнец большой был мастер по бою на коротких мечах.
  say Обучил он меня нескольким приемам. Смотри же и запоминай.
  mecho Учитель достал откуда-то короткий меч.
  mecho Учитель принялся очень быстро крутить-вертеть меч, будто соломинку.
  mecho В какой-то момент Вам показалось, что Вы стали опытнее в умении "короткие лезвия".
  mskilladd %killer% короткие.лезвия %addskl2%
else
  say Кажется мне, что во всех умениях ты достаточно развит%killer.g%.
  say Нечему мне тебя учить более..
end
~
#33337
купец~
0 z 100
~
*log &Y%killer.name% апает скилл у владыки морей!&n
eval skl %actor.remort%*5+90
if (%killer.skill(метнуть)%+5 <= %skl%)
  eval addskl 5
else
  eval addskl %skl%-%killer.skill(метнуть)%
end
if !%killer.skill(метнуть)%
  say Нда... Не те седня пошли купцы... Купец нынче не тот.
  say Вот помню Гаврило-купец первой гильдии... То был вояка еще тот...
  say Мог метким броском кинжала сразить степняка на скаку.
  say А нынешний купец даже ложку в рот метает с трудом...
  say Слушай, и запоминай, горе луковое.
  mecho Учитель вкратце описал Вам основы умения "метнуть".
  mecho Вы твердо решили совершенствовать это умение по возможности.
  mskillturn %killer% метнуть set
elseif %killer.skill(метнуть)% < %skl%
  say Нда... Не те седня пошли купцы... Купец нынче не тот.
  say Вот помню Гаврило-купец первой гильдии... То был вояка еще тот...
  say Мог метким броском кинжала сразить степняка на скаку.
  say А нынешний купец даже ложку в рот метает с трудом...
  say Слушай, и запоминай, горе луковое.
  mecho Учитель долго рассказывал Вам о тайных особенностях умения "метнуть".
  mecho Он описал Вам, как надо метать разные виды оружия.
  mecho Он рассказал Вам, как удобнее метать из разных положений.
  mecho Вы поняли, что в умении "метнуть" прыгнули выше головы!
  mskilladd %killer% метнуть %addskl%
else
  say Кажется мне, что во всех умениях ты достаточно развит%killer.g%.
  say Нечему мне тебя учить более..
end
~
#33338
репоп трезубца~
0 z 100
репоп~
if %world.gameobjs(33300)% == 0
  %load% obj 33300
  воор трезу
end
~
#33339
трезубец2~
2 f 100
~
wait 1
if %exist.mob(33316)%
  calcuid lord 33316 mob
  attach 33338 %lord.id%
  exec 33338 %lord.id%
  detach 33338 %lord.id%
end
~
#33340
вход к царю - триг на комнату~
2 e 100
~
if %exist.mob(33316)%
  calcuid lord 33316 mob
  attach 33310 %lord.id%
end
~
#33341
помер призрак л.~
0 f 100
~
mload obj 33302
~
#33342
Всплываем из города~
2 c 0
всплыть плыть выплыть~
wait 1
if (!%arg.contains(вверх)% && !%arg.contains(наверх)%)
  wsend %actor% Куда это вы хотите проплыть?
  halt
end
wechoaround %actor% %actor.name% оттолкнул%actor.u% от дня и поплыл%actor.g% наверх через расщелину.
wsend %actor% Вы оттолкнулись от дна, и поплыли вверх к утесу.
wteleport %actor% 33263 horse
wechoaround %actor% %actor.name% выплыл%actor.g% из морских глубин!
~
$~