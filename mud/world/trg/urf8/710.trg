* BRusMUD trigger file v1.0
#71000
пояснения~
2 0 0
~
Мост через ров
   Широкий мост ведет через небольшой, недавно вырытый ров, призванный защищать
город он набегов шаек местных разбойников, которые за последнее времz стали
настолько сильны, что несколько раз разбивали посылаемые против них войска. Из-за того, что ров недавно был обновлен, а воды из него выкачана, то теперь его дно покрывает глубокий слой грzзи, ступив в которые довольно сложно выбратьсz.
Белобог сказал : 'сперва лесостепь - потом широколиственные леса'
Белобог сказал : 'потом мимо истоков Оки'
Белобог сказал : 'ты должен примерно закончить у города Елец'
Белобог сказал : 'вот думаю может на Новосиль свернуть или на Елец'
Белобог сказал : 'если идти на новосиль как раз исток Оки пройдешь'
Белобог сказал : 'если на Елец - делай тогда правую обочину степной'
Белобог сказал : 'там видишь справа уже почти граница со степью'
Белобог сказал : 'О! Сделай дорогу до Дона'
Белобог сказал : 'видишь севернее Ельца'
Вы сказали : 'до истоков дона или за ельцом'
Белобог сказал : 'за Ельцом'
Белобог сказал : 'оставь местечко типа тут рzдом Елеу'
Белобог сказал : 'оставь местечко типа тут рzдом Елец'
Белобог сказал : 'по направлению на Рzзань'
...
Аука
Лесной дух, имеет сходство с лешим. Как и леший, любит сбивать 
людей с дороги. Однако из-под его чар можно освободиться, сказав 
любимую поговорку леших - ⌠Шел, нашел, потерял⌠. Только 4 октября не 
действуют никакие способы борьбы с Аукой. В этот день лешие беснуются
....
Боли-бошка
Лукавый и хитрый лесной дух, живущий в ягодных зарослях. Появляется перед человеком в виде
бедного и немощного старичка и просит помочь отыскать потерянную им сумку. Нельзя
соглашаться - иначе начнешь думать о потере, разболится голова, будешь долго блуждать
по лесу.
....
Лярва
Злобный дух, человек, не получивший должного погребения. Бродят по ночам и насылают безумие.
Вселившись в женское тело, становяться распутными девками, не отвечающими за свои поступки.
По славянским поверьям злобный дух, чудовище, обитатель ада, порождение духа не получившего
должного погребения. Они бродят по ночам и насылают на людей безумие. 




~
#71001
болитбашка~
2 e0 75
~
wait 1
if %random.35% == 23
wsend %actor% Кажется, вы все же нашли тропку, ведущую прочь из леса.
eval exit 71010+%random.50%
wteleport %actor% %exit% horse
halt
end
wecho 'У Вас жутко разболелась голова!'


~
#71002
приветствиеБоли-бошки~
0 q0 100
~
wait 2
груст
say Эй, мил человек, помоги в беде, не оставь старика немощного!
say Потерял я в этом лесу сумку, найти никак немогу, корешки там, да травы,
say Очень мне от ломи в костях полезные, сделай милость, отыщи, ужо я тебя награжу!
груст


~
#71003
попалисьБоли-бошке~
0 d0 0
да согласен хорошо помогу найду~
wait 1
say Вон где-то в той стороне я ее потерял...
послать .%actor.name%
mechoaround %actor% Выпучив глаза, %actor.name% пош%actor.y% в указаном направлении. 
msend %actor% Вы выпучив глаза поперлись в указаном направлении.
mteleport %actor% 71074


~
$
$