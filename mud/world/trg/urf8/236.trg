#23600
Разговоры младшего сына~
0 q 100
~
wait 1s
say Завтра придут соседские мужики, оставайся! Пойдем на поле вместе с нечистью биться!
say Хочешь узнать, как я, калека биться пойду? Ха!
say Скажу по секрету, я знаю как над землей парить. Вот так и полечу я рядом с братом своим!
~
#23601
Разговоры старшего сына~
0 q 100
~
wait 1s
say Батя сказал что позвал мужиков с соседних дворов,
say Непонятную нечисть бить, которая завелась на нашем поле.
say А я думаю, что мы бы сами справились.
пож
~
#23602
Вошли к дочке~
0 q 100
~
wait 1s
mecho Дочь купца поправила тугую косу.
wait 2s
say Приходил ко мне свататься прыщавый юноша. Сказал что прогонит всех мышей с поля.
say А теперь на поле непонятно что. Батенька уже соседей позвал на подмогу,
say но мои братья, чую, задумали сами там нечисть порубать. Боюсь я за них.
say Вот если бы помог кто ...
mecho Дочь купца с надеждой посмотрела на Вас.
attach 23604 %self.id%
~
#23603
Вор кладет стаф в сундук~
0 b 10
~
восток
север
север
wait 1
отпереть большой.сундук
открыть большой.сундук
пол все боль.сунду
пол 500 кун боль.сунду
закрыть большой.сундук
запереть большой.сундук
say Похоже я все спрятал.
хи
wait 1s
w
~
#23604
Берем Квест~
0 d 1
хорошо помогу~
if %actor.vnum% != -1
  say Не поможешь освободить поле?
  halt
end
wait 1
if %questor236.id% ==  %actor.id%
  say Если хочешь помочь, то сделай то, что я попросила.
  halt
end
if %questor236%
  wait 2
  say Я уже попросила помочь мне %questor236.vname%.
  say Ну а тебе предлагаю подождать у нас на хуторе.
  halt
end
if (%world.curmobs(23616)% == 0)
  halt
end
set temp236 1
set questor236 %actor%
calcuid nkoldun 23616 mob
attach 23605 %nkoldun.id%
global questor236
remote questor236 %nkoldun.id%
remote temp236 %nkoldun.id%
wait 1s
ул
say Помоги очистить наше поле. 
say Удачи тебе! И возвращайся с хорошими вестями!
attach 23610 %self.id%
detach 23602 %self.id%
~
#23605
Входим к колдуну~
0 q 100
~
wait 5
взд
if %temp236% == 0
  say Не отвлекай меня. Я и так не могу зелье найти.
  halt
end
say Ой хорошо! Надеюсь ты поможешь мне исправить мою ошибку.
say Перепутал я склянки, и заместо уменьшения увеличил здешних насекомых.
say Я было попытался привязать их к кольям, для изучений и чтоб народ не пугали.
say Но со всеми справиться сил не хватило.
wait 1s
взд
say Свататься приходил я к дочке купеческой. Дюже нравится она мне.
say Но теперь после такого позора не посмею я боле к ней явиться.
say Убей увеличенных насекомых и я пойду дальше со спокойной совестью.
attach 23606 %self.id%
detach 23605 %self.id%
~
#23606
Повторный заход колдуну~
0 q 100
~
wait 1s
if (%exist.mob(23613)% || %exist.mob(23614)% || %exist.mob(23615)%)
  say Чутье подсказывает мне, что еще не все порождения убиты.
  halt
end
wait 3
say Чуствую, что поле теперь чисто. Теперь я могу покинуть это место.
if (%questor236.iname%)
  say Уважаю тебя, %questor236.iname%.
  say Коль помог%actor.q% ты мне справиться с моей ошибкой, я в долгу не останусь.
  say На вот, возьми немного кун. Тебе они нужнее.
  wait 1s
  set temp %questor236.gold(+200)%
else
  say Подожду %questor236.vname%. Негоже уходить не поблагодарив.
  halt
end
wait 1s
say Надеюсь, купеческая дочка не будет в обиде за мою ошибку.
say А ее отец с братьями мне этого точно никогда не простят.
say Пойду искать счастья в других местах. Возможно, где-то там мне повезет больше.
wait 1
switch %actor.class%
  * лекарь
  case 0
    if (!%actor.spelltype(освящение)%) && (%actor.can_get_spell(освящение)%)
      mspellturn %actor% освящение set
      say Вот, знай теперь освящение, %actor.iname%. Пригодится в жизни.
    end
  break
  * колдун
  case 1
    if (!%actor.spelltype(оцепенение)%) && (%actor.can_get_spell(оцепенение)%)
      mspellturn %actor% оцепенение set
      say Вот, знай теперь оцепенение, %actor.iname%, пригодится как-нибудь.
    end
  break
  * наемник
  case 4
    if %random.1000% <= 150
      say Держи вот еще, вдруг тебе пригодится это рецепт.
      mload obj 1754
      дать свиток .%actor.name%
    end
  break
  * дружинник
  case 5
    if (!%actor.skill(лидерство)%) && (%actor.can_get_skill(лидерство)%)
      mskillturn %actor% лидерство set
      say Дружинник ты, к магии не приучен. Ну может умение быть везде лидером тебе пригодится.
    end
  break
  * кудесник
  case 6
    if (!%actor.spelltype(оцепенение)%) && (%actor.can_get_spell(оцепенение)%)
      mspellturn %actor% оцепенение set
      say Вот, знай теперь оцепенение, %actor.name%, пригодится когда-нибудь.
    end
  break
  * волшебник
  case 7
    if (!%actor.spelltype(оцепенение)%) && (%actor.can_get_spell(оцепенение)%)
      mspellturn %actor% оцепенение set
      say Вот, знай теперь оцепенение, %actor.name%, пригодится в жизни.
    end
  break
  * чернокнижник
  case 8
    if (!%actor.spell(поднять труп)% && (%actor.can_get_spell(поднять труп)%)
      say Вот держи, может тебе пригодятся эти знания, только не используй их другим во зло
      mspellturn %actor% поднять.труп set
    end
  break
  * витязь
  case 9
    if (!%actor.spelltype(ускорение)%) && (%actor.can_get_spell(ускорение)%)
      mspellturn %actor% ускорение set
      say Вот, знай теперь ускорение, %actor.name%, дабы был быстрей врагов своих.
    end
  break
  * купец
  case 12
    if (!%actor.spelltype(слово возврата)%) && (%actor.can_get_spell(слово возврата)%)
      mspellturn %actor% слово.возврата set
      say Вот, знай теперь слово возврата, %actor.name%. 
    end
  break
  default
  break
done
wait 1
say Теперь прощай!
wait 1s
mecho Неудачливый колдун поднял руки, прошептал что-то и исчез.
wait 5
if (%world.curobjs(23603)% < 10 && %random.1000% <= 500)
  %echo% В воздухе хлопнуло и на землю опустилось золотистое перо.
  %load% obj 23603 
elseif (%world.curobjs(547)% < 1)
  %echo% Перед исчезновением, колдун, хмуро ворча, выбросил какую-то книжку.
  %load% obj 547
end
mpurge %self%
~
#23607
Убили колда~
0 f 100
~
mecho Неудачливый колдун помер, падая он уронил все колбочки с полки.
mecho Одна из них разбилась и шалаш озарила яркая вспышка света.
mecho Удивительная тишина наступила на поле.  
mecho 
while %exist.mob(23613)%
  calcuid ripa 23613 mob
  mpurge %ripa%
done
while %exist.mob(23614)%
  calcuid ripa 23614 mob
  mpurge %ripa%
done
while %exist.mob(23615)%
  calcuid ripa 23615 mob
  mpurge %ripa%
done
~
#23608
Рипаем Монстров~
0 z 100
~
mpurge %self%
~
#23609
Вор Открывает Сундук~
0 d 1
верни отдай~
wait 1
say Так и быть, открою свой сундук на некоторое время.
say Можешь забрать все, что там есть.
n
n
e
wait 1s
отпереть большой.сундук
открыть большой.сундук
поло все большой.сундук
поло 500 кун большой.сундук
say Сундук открыл, как и обещал. Можете все забрать, мне то оно не нужно.
ул
w
~
#23610
Сдача Квеста~
0 q 100
~
wait 1
if %exist.mob(23616)%
  say Чует мое сердце, не все монстры еще убиты!
  halt
end
if %actor.id% != %questor236.id%
  say Не тебя я просила о помощи. Так что еще подожду.
  улыб .%actor.name%
  * detach 23610 %self.id%
  halt
end
say Слава богам! Управил%actor.u% ты с этим заданием!
say За помощь твою возьми немного кун.
%self.gold(500)%
give 500 кун .%actor.name%
if %world.curobjs(23602)% < 10
  say Подожди! За то, что не отказа%actor.q% в моей просьбе возьми эту ленточку. Вдруг пригодится.
  mload obj 23602
  дать шелк.лент .%actor.name%
end
detach 23602 %self.id%
detach 23604 %self.id%
detach 23610 %self.id%
~
#23611
Репоп 236~
2 f 100
~
eval nkoldun %world.mob(23616)%
attach 23605 %nkoldun%
detach 23606 %nkoldun%
~
#23612
Открываем сундук~
1 p 100
~

~
#23613
Смерть младшего сына~
0 f 100
~
if %random.1000% <= 80
  %load% obj 1701
end
~
#23614
Смерть старшего сына~
0 f 100
~
if %random.1000% <= 200
  %load% obj 520
end
~
$~