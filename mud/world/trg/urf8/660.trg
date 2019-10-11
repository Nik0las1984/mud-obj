#66000
Платные порталы, касса~
0 m 1
~
wait 1
emot пересчитал%self.g% монеты
eval target 0
switch %amount%
  * Великий Новгород
  case 4800
    eval target 60016
  break
  * Псков
  case 3900
    eval target 75063
  break
  default
    дум
    say И чего же ты за эти деньги хочешь?
    give %amount% кун .%actor.name%
    halt
  done
  эм кивнул%self.g% и что-то прошептал сыну
  wait 3
  set son %world.mob(66006)%
  if %random.3% == 1
    exec 66003 %son.id%
    wait 3
    укор
    г Ладно, смотри еще раз, как надо.
    emot сделал%self.g% несколько странных жестов
  else
    exec 66002 %son.id%
  end
  mechoaround %actor% %actor.name% исчез%actor.q% в клубах дыма.
  msend %actor% У вас закружилась голова, и на миг вы потеряли сознание...
  msend %actor% 
  mteleport %actor% %target% horse
  mechoaround %actor% %actor.name% появил%actor.u% здесь в клубах дыма.
  wait 3
  г Да, именно так. В общем-то, ничего сложного.
~
#66001
Дали деньги сыну~
0 m 1
~
emot воровато оглянулся на отца и быстро спрятал деньги в карман
~
#66002
Сын пытается поставить портал (удачно)~
0 z 100
~
emot сделал%self.g% несколько странных жестов
~
#66003
Сын пытается поставить портал (фейл)~
0 z 100
~
emot сделал%self.g% несколько странных жестов
mecho Раздался тихий треск - и только.
смущ
г Я не волшебник, я только учусь...
~
#66004
Портал в ВН~
2 z 100
~
wportal 60016 2
~
#66005
Портал в Псков~
2 z 100
~
wportal 75063 2
~
#66010
Ворожея приветствует~
0 r 100
~
wait 1
msend %actor% Ворожея сказала тебе:
msend %actor% - Да защитит тебя Белобог от всякого зла, %actor.name%!
msend %actor% - Вижу что не просто так ты сюда зашел! Могу тебе помочь!
msend %actor% - Коли ты дашь мне немного кун для жертвы Яриле
msend %actor% - Я помогу тебе мигом добраться до нужного русского города.
~
#66011
дали деньги ворожее~
0 m 1
~
if (%amount% < 200)
  say За такую лепту сам%actor.g% Ярило разгневай. А я не рискну!
  halt
end
wait 1
msend %actor% - Ворожея сказала тебе:
msend %actor% - Коли в Вышгород хочешь - принеси мне ветку и сочные ягоды.
msend %actor% - Если добудешь камушек и грибы, то смогу отправить тебя в Галич.
msend %actor% - А захочешь в Новгород Великий попасть - дай мне сердце и тварь.
~
#66012
даем ингры ворожее~
0 j 100
~
wait 1
If (%object.vnum%==713)
  If (%object.val1%>5)
    Say Отличная ветка! Подойдет для сотворения заклятья!
    If !(%self.haveobj(60067)%)
      Mload obj 60067
    Else
      Say Не... ветка у меня уже есть. Вторая не нужна пока.
    End
  Else
    Say Не... ветка не достаточна длинная! Такая не подойдет.
  End
End
If (%object.vnum%==705)
  If (%object.val1%>5)
    Say Замечательные сочные ягоды! В самый раз для заклинания!
    If !(%self.haveobj(60061)%)
      Mload obj 60061
    Else
      Say У меня уже есть ягоды! Еще одни пока не нужны!
    End
  Else
    Say Нет! Эти ягоды недостаточно сочные! Такие не подойдут.
  End
End
If (%object.vnum%==700)
  If (%object.val1%>5)
    Say Уу-у! Замечательные грибы!
    If !(%self.haveobj(60060)%)
      Mload obj 60060
    Else
      Say У меня уже есть гриб! Мне второй не нужен!
    End
  Else
    Say Не-е-ет! Этот грибок маленький и червивый. Такой не годится!
  End
End
If (%object.vnum%==721)
  If (%object.val1%>5)
    Say Отличный камушек!
    If !(%self.haveobj(60064)%)
      Mload obj 60064
    Else
      Say Камушек у меня уже есть! Второй пока не нужен!
    End
  Else
    Say Не..этот камушек с трещинкой, такой не подойдет!
  End
End
If (%object.vnum%==702)
  If (%object.val1%>10)
    Say Вот! Это подходящая тварь Божья!
    If !(%self.haveobj(60062)%)
      Mload obj 60062
    Else
      Say У меня уже есть мелкая тварь! Вторая пока не нужна!
    End
  Else
    Say Нет, это слишком мелкая тварь, покрупнее бы! Иначе не получится!
  End
End
If (%object.vnum%==756)
  If (%object.val1%>10)
    Say Отличное сердце! То, что нужно!
    If !(%self.haveobj(60063)%)
      Mload obj 60063
    Else
      Say У меня уже есть сердце! Мне второе пока не нужно!
    End
  Else
    Say Не-е-ет! Это какое-то хилое сердечко! Такое для заклятия не сгодится!
  End
End
Mpurge %object%
if (%self.haveobj(60067)% && %self.haveobj(60061)%)
  say Отлично! Сейчас я принесу жертву и сотворю заклятье!
  say С его помощью я перенесу Вас в Вышгород
  mecho Ворожея что-то пошептала над ингредиентами и поднесла их к идолу.
  брос все
  mat 63670 mecho Кто-то появился здесь в клубах сизого дыма.
  mteleport all 63670
  mjunk all
End
if (%self.haveobj(60064)% && %self.haveobj(60060)%)
  say Отлично! Сейчас я принесу жертву и сотворю заклятье!
  say С его помощью я перенесу Вас в Галич
  mecho Ворожея что-то пошептала над ингредиентами и поднесла их к идолу.
  брос все
  mat 34405 mecho Кто-то появился здесь в клубах сизого дыма.
  mteleport all 34405
  mjunk all
End
if (%self.haveobj(60062)% && %self.haveobj(60063)%)
  say Отлично! Сейчас я принесу жертву и сотворю заклятье!
  say С его помощью я перенесу Вас в Великий Новгород
  mecho Ворожея что-то пошептала над ингредиентами и поднесла их к идолу.
  брос все
  mat 60001 mecho Кто-то появился здесь в клубах сизого дыма.
  mteleport all 60001
  mjunk all
End
~
$~
