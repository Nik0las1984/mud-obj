#68200
черный плащ приветствует~
0 r 100
~
удив
wait 1
эмоц посмотрел на Вас из под низко надвинутого на глаза капюшона.
wait 1
say Вы то что здесь забыли? Мертвых тревожить грешно!
say Тем более неупокоенных
wait 1
say Это место не для прогулок. Здесь захоронены тела черниговских ратников.
say Но обычным кладбищем место это назвать нельзя!
say Душа черного князя не может найти себе приюта и на том свете.
wait 1
say А все дело в том, что незадолго до гибели черного князя
say У него было украдено обручальное кольцо. И князь поклялся, что найдет его!
say Да вот не успел! Смерть пришла за ним раньше! Но данная клятва
say Не отпускает душу князя с земли.
wait 10
say Хочешь спросить откуда я знаю эту легенду?
хох
say Да я самый сильный чернокнижник в Черниговском княжестве.
say На этом кладбище я собираю останки и готовлю из них эликсир бессмертия.
say Раньше я думал, что печень Черного князя мне поможет в поиске рецепта,
say Но я ошибся - мне нужно нечто совершенно иное! Мне нужна особая печень!
wait 3
ухм
say Кстати, а я даже знаю где обручальное кольцо Черного князя.
хих
say Да-да... я же излазил тут все вдоль и поперек!
say Я единственный из живых, кто прошел по всем черниговским курганам.
wait 1                                                             
say Ладно... вы меня утомили... идите своей дорогой! 
say Мне нужно продолжить поиск рецепта...
~
#68201
смерть черного князя~
0 f 100
~
return 0
mecho Призрак черного князя исчез в ослепительной вспышке!
mecho И в тот же миг откуда-то сверху раздался голос:
mecho Возьми в благодарность за помощь!
mecho Что-то сверкнуло на месте падения призрака.
switch %random.4%
  case 1
    mload obj 68203
  break
  case 2
    mload obj 68204
  break
  case 3
    mload obj 218
  break
  default
    mload obj 68205
  break
done
if %random.1000% <= 10
  mload obj 103
end
~
#68202
убили волхва~
0 f 100
~
if (%world.curobjs(68206)% < 10) && (%random.100% <= 5)
  mload obj 68206
end
~
#68203
дали ЧП кости~
0 j 100
~
if !(%object.vnum% == 754)
  say Наивный! Неужель ты думаешь, что я не попробывал вот это для своего дела?
  say Нет! это вещь совершенно бесполезная. Мне нужно нечто совершенно иное!!!
  emot грозно нахмурился
  drop %object.name%
  halt
end
wait 1    
say Клянусь тьмой! Такую печень я вижу в первый раз!
say И кажется это именно то, что я так долго искал!!!
wait 1
say Теперь, используя их, я смогу сварить эликсир бессмертия!
хох
say Теперь мне не нужна душа черного князя
say Если хочешь можешь отпустить ее с земли
wait 2
say Только вряд ли вы даже доберетесь до его могилы
say Я так думаю, что вашим костям, тоже смогу найти применение
ухм
wait 1
mload obj 68200
дать ключ %actor.name%
say Вот ключ от сундука в монастырской сторожке   
wait 1
say А теперь убирайся прочь и не мешай мне готовиться обрести бессмертие!   
detach 68200 %self.id%
detach 68203 %self.id%
~
#68204
Призрак хиляется~
0 p 100
~
mecho Тьма окутала призрак и полностью восстановила его силы.
%self.hitp% = %self.maxhitp%
~
#68205
кинули обручальное кольцо~
1 h 100
~
if (%actor.realroom% == 68232)
  oecho Кольцо! Ты нашел его! Я сдержал слово! Я могу теперь умереть!
  if (%exist.mob(68200)%)
    calcuid prizrak 68200 mob
    detach 68204 %prizrak.id%
  end
end
wait 1
opurge %self%
~
#68206
вошли к призраку волхва~
0 g 70
~
if %actor.vnum% == -1
  then
  say Ты не спасешь душу князя!
  say Ухо-ди-и-и...
  wait 1
  хох
  wait 1
  say Живым здесь не место!!! 
  wait 1
  mkill %actor%
end
~
#68207
убили дружинника~
0 f 100
~
if (%world.curobjs(68207)% < 10) && (%random.100% <= 5)
  mload obj 68207
end
~
#68208
убили лучника~
0 f 100
~
if (%world.curobjs(68208)% < 10) && (%random.100% <= 5)
  mload obj 68208
end
~
#68209
убили витязя~
0 f 100
~
if (%world.curobjs(68209)% < 10) && (%random.100% <= 5)
  mload obj 68209
end
~
#68210
убили богатыря~
0 f 100
~
if (%world.curobjs(68210)% < 10) && (%random.100% <= 5)
  mload obj 68210
end
~
$~
