#60600
Дорожный требует мзду.~
0 r 100
~
wait 1
рад
say Да ты смотри какие у нас гости!
say Мы гостям рады!
wait 1
ухм
щекот %actor.name%
wait 2
say Только вот за гостеприимство платить надо
дум
say Думаю немного.. кун эдак 100
ухм
~
#60601
Дорожный получил мзду.~
0 m 100
~
if %amount% < 100 then
  wait 1
  ухм
  say Жадность фраера сгубила...
  атак %actor.name%
else
  wait 1s
  say - Приятно иметь дело с людьми, понимающими нужды простого народа
  ухм
  wait 1s   
  say Можете проходить.. гостями будете!
  щекот %actor.name%
  mecho Разбойник отошел в сторону, освободив Вам дорогу.
end
mload mob 60612
mpurge злой
~
#60602
Входим к главарю~
0 r 100
~
wait 1
say Во дела! На ловца и зверь бежит!
чел
wait 2
say Раньше бывало на дороге путничков часами поджидать приходилось
say А теперь они сами ко мне в дом захаживают!
ухм     
атак %actor.name%
~
#60603
помогу старухе~
0 d 1
помогу~
wait 1s 
плак
say Я знала, что вы не сможете мне отказать..
say Морской царь живет в Ильмень-озере, дорога к нему трудна и опасна
взд
wait 3
say Возможно в пути Вам пригодится вот это..
mload obj 60611
дат все .%actor.name%
detach 60607 %self.id%
detach 60603 %self.id%       
end 
~
#60604
вошли после смерти не того царя~
0 r 100
~
wait 1
взд
say Сердцем я чуяла, что близки Вы к победе были.. да не смогли царя обхитрить
wait 180
плак    
*%world.zreset(606)%
~
#60605
дали старухе печать царя~
0 j 100
~
wait 1
*log Trigger run (60605)
if %object.vnum% != 60716
  брос все
  halt
end
wait 1
mpurge %object%
switch %random.10%
  case 1
    say Мне не надобно даже доказательств смерти царя - я все сердцем чувствовала!
    say К тому же мои сыновья воротились домой! Я теперь самая счастливая мать! 
    say Ты заслужил свою награду 
    mecho _Старуха взяла что-то из сумы.
    mload obj 205
    дать все .%actor.name%
  break
  case 2
    say Мне не надобно даже доказательств смерти царя - я все сердцем чувствовала!
    say К тому же мои сыновья воротились домой! Я теперь самая счастливая мать!
    say Ты заслужил свою награду
    mecho  Старуха взяла что-то из сумы.
    mload obj 540
    дать все .%actor.name%
  break
  case 3
    say Мне не надобно даже доказательств смерти царя - я все сердцем чувствовала!
    say К тому же мои сыновья воротились домой! Я теперь самая счастливая мать!
    say Ты заслужил свою награду
    mecho  Старуха взяла что-то из сумы.
    mload obj 586
    дать все .%actor.name%
  break
  default
    say Мне не надобно даже доказательств смерти царя - я все сердцем чувствовала!
    say К тому же мои сыновья воротились домой! Я теперь самая счастливая мать! 
    say Ты заслужил свою награду 
    wait 10
    mecho _Старуха достала что-то из кармана.
    %self.gold(10000)%
    дать 10000 кун .%actor.name%
  done
  *%world.zreset(606)%
~
#60606
Доить корову~
2 c 0
доить~
if (%arg% == корову)
  foreach i %self.npc%
    if (%i.vnum% == 60606)
      wsend %actor% Вы принялись доить корову.       
      wait 5
      wsend %actor% Вы надоили огромную крынку молока.
      wechoaround %actor% %actor.iname% начал%actor.g% доить корову.
      wechoaround  %actor% %actor.iname% надоил%actor.g% огромную крынку молока.
      wload obj  60610
      halt
    end
  done
  %send% %actor% Если бы она тут еще была...
else
  wsend %actor% Ну и кого ты собрал%actor.u% доить?
end
~
#60607
Полубезумная дает квест~
0 r 100
~
wait 1
плак
mecho Старуха всхлипнула и запричитала: "сыночки мои, кровиночки.."
wait 2
ужас %actor.name%
say Нет у меня больше ничего! Все забрали! Бог сыновей отнял, а люди добро нажитое.
плак
wait 7
say Сыновья в полон к морскому царю попали! Каждую ночь они мне сняться!
say Одурманил их царь морской и забыли они про дом отчий.
say И некому чары с них снять, напомнить им, что мать ждет их, кручиниться..
wait 7
плак
say А на днях в дом мой разбойники нагрянули, все что было вынесли
say Да мне не много и надо то, а вот жаль лишь что забрали кольцо..
say Кольцо с кровавым камушком - это память о муже моем..
взд
wait 7
say Муж то мой был известный на всю округу ведун и знахарь
say И было у него множество вещей диковинных, да книг загадочных
say Многое из этого добра пропало и было украдено, многое да не все..
дум
wait 10
say Помоги мне сыновей вернуть - отблагодарю тебя настолько
say На сколько щедрость материнская велика бывает..
вопр %actor.name%    
~
#60608
лоад сыновей~
2 e 100
~
wload mob 60609
wload mob 60610
wload mob 60611
detach 60608 %self.id%
~
#60609
убили старушку~
0 f 100
~
*%world.zreset(606)%
mecho Безутешная старуха прошептала : 'За что же меня бедную ?'
~
$~