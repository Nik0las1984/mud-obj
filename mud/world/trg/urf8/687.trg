#68700
дали голову демону~
0 j 100
~
if %object.vnum% == 68611
  wait 1s
  mecho %self.name% воскликнул: Моя Голова!
  mecho %self.name% воскликнул: Теперь я свободен от власти этой ведьмы!
  wait 1s
  mecho Безголовый призрак медленно растворился...
  calcuid demid 68613 mob
  attach 68701 %demid.id%
  set hero %actor%
  remote hero %demid.id% 
  detach 68605 %demid.id%
  mteleport %self% 68760
  wait 1
  mpurge %self%
end
~
#68701
Награда демида  за выполнение~
0 q 100
~
if %actor% != %hero%
  wait 2s
  halt
end
say Неужели тебе это удалось ?
say Никогда не думал что у кого-нибудь получится прогнать этого демона.
say Держи, честно заслужил!
if (%random.100% < 2)
  mload obj 103
  дать чекуш .%actor.name%
else
  msend %actor% %self.name% дал вам увесистый кошелек.
  mechoaround %actor% %self.name% дал %actor.tname% увесистый кошелек.
  %actor.gold(+10000)%
  msend %actor% Это составило 10000 кун.
end
detach 68701 %self.id%
~
#68702
Водяной~
0 r 100
~
wait 1s
say Здраствуй путник, что надобно тебе ?
wait 10s
~
#68703
Водяной ответ~
0 d 0
живая вода~
wait 1s
mecho Водяной глубоко вздохнул.
wait 1s
say Что ж, помогу тебе %actor.name%, но помоги и ты мне.
say Завелся леший в нашем лесу, никакой жизни нам не дает, пакости всякие
say устраивает. Помоги нам избавиться от него, вот взамен и получишь воду живую.
wait 2t
halt
~
#68704
леший умер -  лоадим награду водяного~
0 f 100
~
calcuid vodan 68718 mob
detach 68702 %vodan.id%    
detach 68703 %vodan.id% 
attach 68705 %vodan.id%
~
#68705
водяной дает живую воду~
0 r 100
~
say Свою часть уговора ты выполнил%actor.g%.
wait 1s
mecho Водяной достал бутыль с живой водой.
wait 1s
say Вот возьми, как я и обещал.
mload obj 68702
дать бутыль %actor.name%
wait 1s
бро бутыль
detach 68705 %self.id%
~
#68706
демон  рип~
0 f 100
~
mecho %self.name% воскликнул: Ты победил меня, но я  еще вернусь!!!
mecho Безголовый призрак медленно растворился... 
if %random.4% ==  1 && %world.curobjs(68713)% < 2
  mload obj 68713
end
~
$~
