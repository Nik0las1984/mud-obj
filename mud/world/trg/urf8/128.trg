#12800
деревня - вошли к старосте~
0 q 100
~
wait 1
if ((%actor.class% == 7) && !(%actor.skill(врата)%))
  осм %actor.name%
  if %actor.sex% == 1
    г Добрый день волшебник!
  elseif %actor.sex% == 2
    г Добрый день волшебница!
  end
  г Опустел наш и без того небольшой поселок.
  вздох
  г Хочешь выслушать про нашу беду?
end
if ((%actor.class% == 7) && (%actor.skill(врата)%))
  пожа %actor.name%
  if (%actor.sex% == 1)
    г Здраствуй брат!
  end
  if (%actor.sex% == 2)
    г Здраствуй сестра!
  end
  г Заходи к нам почаще, не забывай своих братьев.
end
~
#12801
деревня - согласились помочь старосте~
0 d 0
да конечно хочу слушаю выслушаю ага~
if ((%actor.class% == 7) && !(%actor.skill(врата)%))
  г Какой-то зверь завелся в окрестностях.
  г Убивает всех людей, кого только сможет!
  г Находим от убитых только внутренности по деревьям развешенные.
  г Пытались найти его, но либо не могли поймать, либо погибали.
  г Поэтому поосторожнее броди здесь.
  г А лучше всего уходи быстрее!
  г Почти все наши уже с места снялись, пошли искать место новое для поселка.
  calcuid sosn128 12859 room
  attach 12807 %sosn128.id%
  detach 12800 %self.id%
  detach 12801 %self.id%
end
~
#12802
деревня - убили волка оборотня~
0 f 100
~
mecho Волк-оборотень упал бездыханным трупом к Вашим ногам.
mecho Тело волка-обортня начало менять свою форму.
mecho Мертвый волк-оборотень превратился в девушку-красавицу.
mload obj 12802
~
#12803
деревня - вернулись с победой к старосте~
0 q 100
~
if (%world.curmobs(12803)% > 0 )
  halt
end
wait 1
if ((%actor.class% == 7) && !(%actor.skill(врата)%))
  msend %actor.name% Вы рассказали старосте про то, что с Вами произошло.
  msend %actor.name% Про то, как оборотень, выпрыгнувший на Вас, оказался 
  msend %actor.name% на самом деле девушкой, живущей в домике на юге деревни.
  mechoaround %actor% %actor.name% принялся взахлеб рассказывать про свои приключения.
  wait 2s
  дум
  wait 1s
  кив %actor.name%
  г Эта девушка была обучена менять форму, но мы не знали,
  г что она  потеряет контроль над собой.
  г Никто из нас даже подумать не мог на нее!
  г И что человек способен так жестоко убивать своих же!
  if (%actor.sex% == 1)
    г Теперь ты наш брат и любой из нас окажет тебе посильную помощь.
  end
  if (%actor.sex% == 2)
    г Теперь ты наша сестра и любой из нас окажет тебе посильную помощь.
  end
  пожа %actor.name%
  wait 2s
  дум
  г Кстати, надо сходить к ней домой, посмотреть, может что найду интересное.
  calcuid sosn128 12800 mob
  detach 12809 %sosn128.id%
  attach 12804 %sosn128.id%
  attach 12805 %sosn128.id%
  attach 12806 %sosn128.id%
  detach 12803 %self.id%
end
~
#12804
деревня - зашли к волшебнику~
0 q 100
~
wait 1
if ((%actor.class% == 7) && !(%actor.skill(врата)%))
  улы %actor.name%
  if (%actor.sex% == 1)
    г Здраствуй, брат волшебник!
  end
  if (%actor.sex% == 2)
    г Здраствуй сестра, волшебница!
  end
  г Я обучаю здешних жителей магии и колдовству.
  г Тому, что осталось от наших далеких предков.
  г А предки наши далекие были сами древние боги.
  г А мы прямые наследники их знаний, что смогли сохранить.
  г И тебя я, думаю, могу научить кое-чему особому.
  г Есть ли у тебя желание пойти ко мне в ученики?
end
~
#12805
деревня - согласились обучиться древнему знанию~
0 d 0
есть да хочу желаю~
if ((%actor.class% == 7) && !(%actor.skill(врата)%))
  г Если ты хочешь у меня учиться, то тогда тебе надо пройти испытание.
  г Вот, возьми этот камешек и найди погреб в самом старом деревенском доме.
  г Бросишь его в погребе, и он приведет тебя в древний храм наших предков.
  г Главное, найди коробку с ярким красным рисунком креста на ней и принеси ее мне.
  брос все
  mload obj 12801
  дать каме %actor.name%
  брос все
  detach 12804 %self.id%
  detach 12805 %self.id%
end
~
#12806
деревня - вставляем имплантант у волшебника~
0 j 100
~
if (%object.vnum% != 12822)
  брос все
  halt
end
if ((%actor.class% == 7) && !(%actor.skill(врата)%))
  wait 1
  mpurge %object%
  кив
  г Молодчина! Теперь ничего не бойся.
  улы
  wait 2s
  msend %actor.name% Старик волшебник приставил принесенный вами цилиндрик к вашему глазу.
  mechoaround %actor% Старик волшебник что-то воткнул  в глаз %actor.rname%.
  msend %actor.name% Что-то больно укололо Вас в глаз.
  msend %actor.name% На пару секунд вы потеряли сознание.
  mechoaround %actor% %actor.name% со стоном упал%actor.g% на пол.
  wait 2s
  mecho Ваше сознание прояснилось.
  mechoaround %actor% %actor.name% встал%actor.g% на ноги.
  г Вот и все. Пользуйся новообретенными возможностями с умом.
  г И не причиняй зла людям.
  mskillturn %actor% врата set
  dg_affect %actor% интеллект подчинить_разум -15 0
  %actor.setquest(12800)%
end
~
#12807
деревня - подошли к трем соснам~
2 e 100
~
wait 1
if ((%actor.class% == 7) && !(%actor.skill(врата)%))
  wload mob 12803
  wecho с сосны спрыгнул ужасный зверь и набросился на вас.
  wdoor 12802 w room 12860
  wforce волк128 удар %actor.name%
  calcuid star128 12802 mob
  attach 12803 %star128.id%
  detach 12807 %self.id%
end
~
#12808
деревня - вошли к девушке~
0 q 100
~
wait 1
if ((%actor.class% == 7) && (%actor.skill(врата)%))
  прихор  
  ск %actor.name% Говорят, что в этом доме до меня жила женщина, которая была сущим дьяволом
  halt
end
эмоц волком смотрит на Вас. Видать не любят чужих в этом поселке
~
#12809
деревня - вошли до квеста к волшебнику~
0 q 100
~
wait 1
if ((%actor.class% == 7) && (%actor.skill(врата)%))
  улы %actor.name%
  if (%actor.sex% == 1)
    г Я приветствую своего ученика.
  end
  if (%actor.sex% == 2)
    г Я приветствую свою ученицу.
  end
  halt
end
см %actor.name%
г Уходи, чужак. Не отвлекай меня от дел.
~
#12810
подземелье - в погребе бросили камень~
1 h 100
~
if (%actor.realroom% != 12820)
  halt
end
if (%actor.class% != 7)
  halt
end
if (%actor.skill(врата)%)
  halt
end
wait 1
osend %actor.name% Упав на дерево шарик начал вращаться, поднялся в воздух и поплыл через стену.
osend %actor.name% Ничего не понимая вы прошли сквозь стену за ним.
wait 1s
osend %actor.name% Вы пошли на юг.
oechoaround %actor% %actor.name% куда-то побежал%actor.g% прямо сквозь стену.
wait 2
oteleport .%actor.name% 12817
wait 2
osend %actor.name% Голос старого волшебника из поселка возник у Вас прямо в голове.
osend %actor.name% Волшебник сказал Вам : 'В любой момент ты можешь вернуться обратно'
osend %actor.name% Волшебник сказал Вам : 'Просто пройди с того места, где ты сейчас стоишь, на север'
osend %actor.name% Волшебник сказал Вам : 'Но в этом случае ты провалишь испытание,'
osend %actor.name% Волшебник сказал Вам : 'придя без нужного предмета!'
opurge %self%
~
#12811
подземелье - подобрали ключ-карту~
1 g 100
~
calcuid sosn128 12817 room
attach 12812 %sosn128.id%
~
#12812
подземелье - вошли в комнату с дверью имея ключ-карту~
2 e 100
~
wait 2
wecho Красный огонек мигнул зеленым и дверь на восток открылась.
wdoor 12817 e room 12813
detach 12812 %self.id%
~
#12813
подземелье - пробуем вынести что-то запрещенное~
2 e 100
~
wait 1
eval bron128 %actor.eq(5)%
eval laser128 %actor.eq(18)%
if (%actor.haveobj(12811)% || (%bron128.vnum%==12811))
  wteleport %actor.name% 12817
  wsend %actor.name% Вы попытались выйти.
  wsend %actor.name% Энерго-броня упирается во что-то невидимое и тянет Вас обратно.
  halt
end
if (%actor.haveobj(12812)% || (%laser128.vnum%==12812))
  wteleport %actor.name% 12817
  wsend %actor.name% Вы попытались выйти.
  wsend %actor.name% Лазерная винтовка упирается во что-то невидимое и тянет Вас обратно.
  halt
end
if %actor.haveobj(12810)
  wteleport %actor.name% 12817
  wsend %actor.name% Вы попытались выйти.
  wsend %actor.name% Ключ-карта упирается во что-то невидимое и тянет Вас обратно.
  halt
end
~
#12820
убежище - вошли в медицинскую комнату~
0 q 100
~
wait 1
if %actor.class% != 7
  log &R%actor.name% дрынится читом в сказке для волшей!&n
  halt
end
eval robot128 %world.curmobs(12821)%+%world.curmobs(12822)%
if (%robot128% > 0)
  mecho Голем очень больно уколол Вас.
  mecho Вы почувствовали себя гораздо лучше.
  mecho Ваше сознание затуманилось.
  dg_affect %actor.name% интеллект подчинить_разум -15 0
  dg_affect %actor.name% мудрость подчинить_разум -15 5000
  dg_affect %actor.name% интеллект подчинить_разум -15 5000
  set %actor.hitp(2000)%
  halt
end
г У реципиента отмечено привыкание к препарату.
г Запрещается дальнейшее использование.
~
#12821
убежище - по чару наносится дамаг в бою~
0 k 100
~
mecho Голем СМЕРТЕЛЬНО ударил Вас.
eval dmg128 150+%random.20%
mdamage %actor% %dmg128%
~
#12822
убежище - отдаем энергокристал охраннику~
0 j 100
~
wait 1
if (%object.vnum% != 12821)
  г Этот обьект не является дополнительным энергомодулем.
  брос все
  halt
end
mload mob 12824
mpurge кристал
mecho Голем-охранник вставил кристал в какое-то углубление.
mpurge предупреждающий
~
#12823
убежище - по охраннику наносится дамаг~
0 p 100
~
mecho Голем-охранник не чувствителен к повреждениям нанесенным Вами.
mecho Видимо для него надо что-то значительно сильнее.
%self.hitp(%self.maxhitp%)%
~
#12824
убежище - вошли в комнату с охранником~
0 q 100
~
wait 1
г Опасность для жизнедеятельности всех живых организмов.
г Отключен радиоактивный щит.
г Доступ в отсек управления запрещен.
г Для исправления необходим дополнительный энергомодуль.
~
#12825
убежище - бросили гранату~
1 h 100
~
wait 1
%actor.wait(1)%
oecho Граната взорвалась.
foreach target %self.all%
  if ((%target.vnum% == 12821) || (%target.vnum% == 12822))
    eval buf %target.hitp(-1300)%
    oecho Голем напрасно оказался рядом!
  end
  if ((%target.vnum% == 12823) || (%target.vnum% == 12824))
    oecho Голем-охранник не чувствителен к повреждениям нанесенным Вами.
    oecho Видимо для него надо что-то значительно сильнее.
  end
done
wait 1
opurge %self%
~
#12830
репоп зоны~
2 f 100
~
wait 1
calcuid sosn128 12859 room
detach 12807 %sosn128.id%
calcuid sosn128 12817 room
detach 12812 %sosn128.id%
wdoor 12817 e purge
wdoor 12802 w purge
wdoor 12802 w room 12803
context 4000
set defendermagestory 0
worlds defendermagestory
~
$~