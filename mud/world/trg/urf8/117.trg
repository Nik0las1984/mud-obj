#11700
Девочка-припевочка плачет~
0 q 100
~
wait 1
плак
wait 1
эмоц всхлипнула, вытерла носик и с мольбой посмотрела на Вас.
wait 1
say Будьте добры, помогите мне! Хозяин Леса украл в нашем селе
wait 1
say Крест-Камень - древнюю святыню нашего рода.
wait 1
say Теперь все жители села старше 12 лет хворают тяжелым недугом.
say Пока Крест-Камень не вернется в село все они обречены на страдания.
wait 1
say Если Вы сумеете вернуть нашу реликвию я готова отдать Вам 
wait 1
say все самое ценное, что у меня есть!
wait 1
эмоц взглянула на Вас и густо покраснела.
~
#11701
смерть хозяина леса~
0 f 100
~
mecho Хозяин Леса рухнул как подкошенный.
mecho И в тот же миг поднялся страшный ветер сбивающий Вас с ног.
mecho Но через секунду все утихло и солнышко показалось из-за тучи.
calcuid devochka 11700 mob
detach 11700 %devochka.id%
attach 11702 %devochka.id%
if %world.curobjs(11703)% <5
  mload obj 11703
end
~
#11702
благодарность припевочки~
0 j 100
~
wait 1
if (%object.vnum% != 11703)
  брос все
  halt
end
wait 1
mpurge %object%
wait 1
switch %random.4%
  case 1
    say Спасибо Вам огромное, а теперь я, как и обещала, отблагодарю Вас!
    mload obj 11702
  break
  case 2
    say Спасибо большое, я теперь Ваша вечная должница!
    if %random.7% > %world.curobjs(11704)%
      mload obj 11704
    end
  break
  case 3
    say Спасибо большое-пребольшое! Теперь все мои родные спасены!
    mload obj 11705
  break
  default
    if %random.1000% <= 100
      msend %actor% Спасибо тебе!
      msend %actor% За это я покажу тебе как варить чудесное зелье, меня этому бабушка научила.
      msend %actor% Оно сделает тебя легче перышка.
      эмоц о чем-то задумалась.
      wait 1s
      msend %actor% Только никому об этом не говори, а то она меня сильно накажет.
      mskillturn %actor% воспаряющий_отвар set
      halt
    end
    say Спасибо Вам!
    wait 10
    say Для всего нашего села - ты теперь желанный гость!
    %send% %self.iname% протянула Вам немного кун.
    eval temp %actor.gold(+500)%
  break
done
дать all .%actor.name%
detach 11702 %self.id%
~
#11704
Хозяин леса хиляется~
0 p 100
~
mecho Ветви деревьев наклонились к Хозяину леса и отдали ему свою энергию.
%self.hitp% = %self.maxhitp%
~
#11705
кинули муравьиные яйца~
1 h 100
~
if (%actor.realroom% == 11717)
  oecho "Нет! Только не муравьи!!!",- закричал Хозяин Леса..
  calcuid hozyain 11701 mob
  detach 11704 %hozyain.id%
end
wait 1
opurge %self%
~
#11706
вошли к человеку-дереву~
0 g 40
~
if %actor.vnum% == -1
  then
  say О! Еще один искатель Крест-Камня!
  say Нет! тебе никогда до него не добраться!
  wait 1
  хох
  wait 1
  say Наш хозяин ничего не боится!
  wait 1
  дум
  say Ну... или почти ничего! Хотя эти мелкие твари...
end
~
#11707
Сопелку нельзя использовать на 24+~
1 j 100
~
if %actor.level% > 24
  osend %actor% _В вашем-то возрасте на дудочках играть? 
  osend %actor% ___Совсем с ума спятили...
  return 0
  halt
end
~
#11708
Лоад книги !онгенная стрела! по квесту~
2 d 0
Словом крепким, правильным заклинаю - покажись потаенное.~
wait 1
set text Словом крепким, правильным заклинаю - покажись потаенное. 
if %speech% != %text%
  halt
end
if !%actor.haveobj(33940)%
  wsend %actor% По вершинам елей пронесся порыв ветра, но спустя мгновение все стихло, и ничего не произошло.
  halt
end
wait 1s
wecho _Внезапно по ельнику пронесся ветер.
wait 2
wecho _Земля в колдовском круге заволновалась, расступилась и вытолкнула на поверхность странный темный камень.
wload obj 563
calcuid scroll 33940 obj
wait 1
wpurge %scroll%
wsend %actor% Кожаный свиток мгновенно истлел и рассыпался в ваших руках.
~
$~
