#30400
у входа в ворота~
0 r 100
~
if ((%actor.clan% !=лб) && (%direction% == west))
  wait 1s
  if (%actor.canbeseen%)
    кричать Внимание! %actor.name% пытается проникнуть в замок!
  else
    кричать Внимание! Кто-то невидимый пытается проникуть в замок!
  end
  рыч %actor.name%
end
~
#30401
Клан Стаф~
0 c 0
доспехи~
wait 1
say Для тебя у меня ничего нет, прогуляйся к мятельнику.
halt
drop all
if %actor.bank% < 600
  :задумчиво почесал лапой за ухом
  говор %actor.name%, у тебя нехватает денег на экипировку
  halt
end
говор Сейчас, погоди минутку я соберу все что тебе необходимо
wait 1s
eval buffer %actor.bank(-600)%
mload obj 30409
mload obj 30410
mload obj 30411
mload obj 30412
mload obj 30413
mload obj 30414
mload obj 30415
mload obj 30416
mload obj 30417
mload obj 30418
mload obj 30418
mload obj 30418
mload obj 30418
mload obj 30446
mload obj 30446
put all меш
give меш .%actor.name%
говор Вот, держи
ул .%actor.name%
~
#30402
зашли в клетку к гридню~
0 r 100
~
wait 1s
eval grid  %random.4%
if %grid% == 3
  говор Не видел%actor.g% ли ты Филата? Он обещал сделать самогонное устройство!
elseif %grid% == 2
  if (%actor.realroom% == %self.realroom%)
    msend       %actor% _Пьяный гридень подполз к Вам поближе чтоб рассмотреть.
    mechoaround %actor% _Пьяный гридень подполз к %actor.dname% поближе чтоб рассмотреть.
    wait 1s
    говор А ну отвечай куда дел Филата?
  end
elseif %grid% == 1
  говор Если встретишь нашего казначея Мальяна, передай, что казну я всю уже пропил.
  хих
else
  говор Есть чем опохмелиться?
end
~
#30403
зашли в клетку к дьяку~
0 r 100
~
if %actor.religion% == 1
  wait 1s
  говор Алилуя!
else
  msend       %actor% _Молодой дьяк больно ударил Вас библией!
  mechoaround %actor% _Молодой дьяк больно ударил %actor.rname% библией! 
  говор Изыди Сатана!
end
~
#30404
у голодного воя~
0 ab 10
~
mecho _Голодный вой вытащил из сапога ложку и зачерпнул ей из котла.
wait 1s
mecho _Толстый кашевар с силой ударил воя по голове.
wait 1s
говор Пухлый! если ты меня щас не накормишь, то я умру с голода.
wait 1s
mforce толстый говор Это я то пухлый! а ну вали от сюда!
mforce толстый говор Ступай к конюху, он тебе отборного овса положит!
mforce толстый хох
wait 1s
руг
~
#30405
зашли в клетку к конюху~
0 r 100
~
wait 1s
mecho _Седой конюх прекратил ковыряться в носу.
wait 1s
говор Если ты тоже хочешь моего змея летучего,
говор Плати пять сотен кун. Не зря же я его высиживал!
хих
wait 1s
говор Ну а лося боевого так и быть я тебе даром отдам.
~
#30406
сказали конюху "лося"~
0 d 0
лося~
if %world.curmobs(30410)% >4
  wait 1s
  говор Ой, совсем я запамятывал, лосей то всех твои побратимы уже разобрали.
  wait 1s
  mecho _Конюх досадно развел руками и принялся ковырятся в носу.
else
  wait 1s
  г Сейчас! Сейчас!
  wait 1s
  mecho _Конюх вывел из стойла мохнатого лося и начал прикручивать к его шлему боевые рога.
  mload mob 30410
  wait 1s
  г Бери, только не забывай кормить его каждый день мхом!
  проща лось
end
~
#30407
конюху дали денег~
0 m 1
~
if %amount% < 500 
  wait 1s
  дум
  говор Обмануть старика удумал%actor.g%, все воеводе расскажу!
else
  wait 1s
  говор Вот тебе браслетик волшебный!
  mload obj 30402
  дат браслет %actor.name%
  говор Три дня и три ночи я вырезал его из ствола самой толстой липы.
  wait 1s
  говор Когда тебе мой ручной змей понадобится,
  говор Просто погладь браслет правой рукой.
  wait 1s
  msend       %actor% _Конюх потерял к Вам всякий интерес и принялся ковыряться в носу.
  mechoaround %actor% _Конюх потерял к %actor.dname% всякий интерес и принялся ковыряться в носу.
~
#30408
трем браслет~
1 c 3
гладить~
if !(%arg.contains(браслет)%) 
  osend       %actor% А что это вы хотите погладить?
  return 0
  halt
end
if (%actor.clan%==лб)
  osend       %actor% _Вы стали гладить браслет правой рукой.
  oechoaround %actor% _%actor.name% стал%actor.g% гладить браслет правой рукой.
  wait 1s
  oecho _Браслет увеличился и вскоре на землю опустился огромный крылатый змей.
  oload mob 30413
  calcuid bras 30402 obj
  opurge %bras%
else
  osend       %actor% _Вы стали гладить браслет правой рукой, но ничего не произошло.
  oechoaround %actor% _%actor.name% стал%actor.g% гладить браслет правой рукой, но ничего не произошло.
end
~
#30409
гладим змея~
0 c 0
гладить~
if !(%arg.contains(змея)%) 
  msend       %actor% А кого это вы хотите так сильно погладить?
  return 0
  halt
end
if (%actor.clan%==лб)
  msend       %actor% _Вы погладили крылатого змея.
  mechoaround %actor% _%actor.name% погладил%actor.g% крылатого змея.
  wait 1s
  говор О нет! Опять превращаться в эту деревяшку!
  плак
  wait 1s
  mecho _Змей стал уменьшаться, пока не правратился в крохотный браслет.
  mload obj 30402
  wait 1
  mpurge %self%
else
  msend       %actor% _Вы погладили крылатого змея, ему это явно понравилось.
  mechoaround %actor% _%actor.name% погладил%actor.g% крылатого змея и тот радостно замурлыкал.
end
~
#30410
пройти в комнату старших~
2 c 0
отдыхать~
if %actor.clanrank%>2
  wsend %actor% У Вас нет прав заходить туда.
  halt
end
wsend %actor% Вы попросили что бы Вас не беспокоили и пошли отдыхать.
wechoaround %actor% %actor.name% попросил что бы его не беспокоили и ушел отдыхать.
wteleport %actor.name% 30447
~
#30411
Пурж клан стафа~
1 gj 100
~
wait 1
if (%actor.clan% == лб)
  halt
end
osend %actor.name% Вспыхнув белым светом %self.iname% исчез%self.q%...
wait 1
%purge% %self% 
~
#30412
палач казнит преступников~
2 ab 10
~
eval palach  %random.4%
if %palach% == 3
  wait 1s
  wecho _Двое крепких парней привели связанного человека.
  wload mob 30418
  wload mob 30418
  wload mob 30415
  wait 1s
  wecho _Один из парней произнес: 
  wecho _"Виновен в воровстве, наказать лишением правой руки".
  wait 1s
  wecho _Парни привязали руку татя к пню. 
  wait 1s
  wecho _Палач занес над рукой топор. 
  wait 1s
  wforce тать говор Ребят, а может договоримся?
  wait 1s
  wforce палач говор Конечно! Тебе как по локать или всю сразу?
  wecho _Крепкии парни дружно загогатали. 
  wait 1s
  wecho _Палач резко опустил топор. 
  wait 1s
  wecho _ХРЯСЬ 
  wait 1s
  wload obj 30404
  wecho _Отрубленная рука отлетела в сторону. 
  wforce палач говор Унесите!
  wait 1s
  wecho _Парни схватили вопящего татя и потащили прочь. 
  calcuid target 30418 mob 
  wpurge %target%
  calcuid target 30418 mob 
  wpurge %target%
  calcuid target 30415 mob 
  wpurge %target%
elseif %palach% == 2
  wait 1s
  wecho _Двое крепких парней привели связанного человека.
  wload mob 30418
  wload mob 30418
  wload mob 30416
  wait 1s
  wecho _Один из парней произнес: 
  wecho _"Виновен в конокрадстве, наказать лишением правой ноги".
  wait 1s
  wecho _Парни привязали ногу конокрада к пню. 
  wait 1s
  wecho _Палач занес над ногой топор. 
  wait 1s
  wforce конокрад говор Не надо Брат!
  wait 1s
  wforce палач говор Не брат ты мне! Гнида черножопая!
  wecho _Крепкии парни дружно загогатали. 
  wait 1s
  wecho _Палач резко опустил топор. 
  wait 1s
  wecho _ХРЯСЬ 
  wait 1s
  wload obj 30405
  wecho _Отрубленная нога отлетела в сторону. 
  wforce палач говор Унесите!
  wait 1s
  wecho _Парни схватили вопящего конокрада и потащили прочь. 
  calcuid target 30418 mob 
  wpurge %target%
  calcuid target 30418 mob 
  wpurge %target%
  calcuid target 30416 mob 
  wpurge %target%
elseif %palach% == 1
  wait 1s
  wecho _Двое крепких парней привели связанного человека.
  wload mob 30418
  wload mob 30418
  wload mob 30417
  wait 1s
  wecho _Один из парней произнес: 
  wecho _"Пойман при попытке убить княжего мужа, наказать лишением головы".
  wait 1s
  wecho _Парни привязали голову душегуба к пню. 
  wait 1s
  wecho _Палач занес над головой топор. 
  wait 1s
  wforce душегуб говор Свидемся на том свете, чертяка!
  wforce душегуб плюн палач
  wait 1s
  wforce палач говор Все там будем!
  wforce палач ухм
  wecho _Крепкии парни дружно загогатали. 
  wait 1s
  wecho _Палач резко опустил топор. 
  wait 1s
  wecho _ХРЯСЬ 
  wait 1s
  wload obj 30403
  wecho _Отрубленная голова отлетела в сторону. 
  wforce палач говор Унесите!
  wait 1s
  wecho _Парни схватили обезглавленное тело и потащили прочь. 
  calcuid target 30418 mob 
  wpurge %target%
  calcuid target 30418 mob 
  wpurge %target%
  calcuid target 30417 mob 
  wpurge %target%
else
  wait 1s
  wecho _Палач вытащил из кармана точильный камень и провел им по лезвию топора.
  wait 1s
  wforce палач улы
end
~
#30413
зашли в клетку к чучелу~
1 t 100
~
if (%direction% == south)
  wait 1s
  %send% %actor%       Перейдя мост, Вы сразу замечаете утыканное стрелами чучело кашевара.
  %send% %actor%       На чучеле есть едва заметная надпись: "Пни пухлого".
end
~
#30414
Данко кидает себе свет~
0 b 100
~
dg_cast 'свет' %self.iname%
~
#30415
вход к владыке морей~
0 q 100
~
wait 1
mecho Царь морской увидел Вас, нахмурился, и грозно поднял свой трезубец!!!
wait 1
встать
mkill %actor%
~
#30416
призыв шторма~
0 k 100
~
if ( %world.curmobs(30422)% <= 4 )
  say О силы моря! О Ветры и Вьюги! Ко мне!
  wait 1
  mecho Вода в комнате вспенилась, забурлила. Шторм пришел на помощь!!!
  mload mob 30422 
  mload mob 30422 
  mload mob 30422 
  detach 30416 %self.id%
end
~
$~
