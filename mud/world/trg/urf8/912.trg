#91200
<912 Enter command>~
2 c 0
лезть залезть влезть~
if (%actor.vnum% != -1)
  halt
end
if !%arg.contains(лаз)%
  return 0
  halt
end
if !%actor.rentable%
  wsend %actor% &RВ связи с боевыми действиями эвакуация временно прекращена.&n
  halt
end
wait 1
wsend %actor% Встав на корточки, Вы протиснулись в лаз...
wechoaround %actor% %actor.name% встал%actor.g% на четвереньки и полез%actor.q% в лаз...
wteleport %actor% 91200
wechoaround %actor% %actor.name% приполз%actor.q% с юга...
~
#91201
<912 Send enter message>~
2 z 100
~
return 0
wechoaround %actor% %actor.name% приполз%actor.q% с юга...
~
#91202
<912 Enter command>~
2 c 0
лезть залезть влезть~
if (%actor.vnum% != -1)
  halt
end
if !%arg.contains(лаз)%
  return 0
  halt
end
wait 1
wsend %actor%       Встав на корточки, Вы протиснулись в лаз...
wechoaround %actor% %actor.name% встал%actor.g% на четвереньки и полез%actor.q% в лаз...
wteleport %actor% 91204
calcuid   trgroom 91204 room
attach    91203 %trgroom.id%
run       91203 %trgroom.id%
~
#91203
<912 Send enter message>~
2 z 100
~
return 0
wechoaround %actor% %actor.name% приполз%actor.q% с запада...
~
#91204
<912 Load Gorinya>~
0 n 100
~
if (%world.curobjs(91207)% < 4) && (%random.50% <= 12)
  mload obj 91207
elseif (%world.curobjs(91208)% < 4) && (%random.50% <= 12)
  mload obj 91208
elseif (%world.curobjs(91213)% < 4) && (%random.50% <= 12)
  mload obj 91213
end
wear дымч
~
#91205
<912 Gorinya killed>~
0 f 100
~
if (%world.curobjs(91217)% < 7) && (%random.100% <= 10)
  mload obj 91217
elseif (%world.curobjs(91219)% < 7) && (%random.100% <= 10)
  mload obj 91219
end
calcuid questroom 91241 room
attach  91212 %questroom.id%
run     91212 %questroom.id%
~
#91206
<912 Gorinya keeper killed>~
0 f 100
~
if (%world.curobjs(91218)% < 4) && (%random.3% == 1)
  mload obj 91218
end
if (%world.curobjs(91220)% < 4) && (%random.3% == 1)
  mload obj 91220
end
~
#91207
<912 Three headed zmey killed>~
0 f 100
~
if (%world.curobjs(91221)% < 4) && (%random.33% <= 2)
  mload obj 91221
elseif (%world.curobjs(91222)% < 4) && (%random.33% <= 2)
  mload obj 91222
end
~
#91208
<912 Sirin killed>~
0 f 100
~
if (%world.curobjs(91223)% < 4) && (%random.100% < 20)
  mload obj 91223
end
~
#91209
<912 Gryphon killed>~
0 f 100
~
if (%world.curobjs(91214)% < 10) && (%random.20% <= 4)
  mload obj 91214
end
~
#91210
<912 Zone reset>~
2 f 100
~
calcuid questroom 91241 room
attach  91211 %questroom.id%
detach  91213 %questroom.id%
detach  91214 %questroom.id%
detach  91215 %questroom.id%
run     91211 %questroom.id%
~
#91211
<912 Zreset quest room>~
2 z 100
~
if %exist.mob(91211)%
  calcuid perun 91211 mob
  %purge% %perun%
end
detach 91216 %self.id%
~
#91212
<912 Load valun>~
2 z 100
~
wload   obj 91200
attach 91213 %self.id%
~
#91213
<912 Command PUSH VALUN>~
2 c 0
двинуть двигать толкнуть толкать~
if %actor.vnum% != -1
  halt
end
if !%arg.contains(валун)%
  return 1
  halt
end
wait 1
if %actor.str% < 25
  wsend %actor% Слишком тяжелый...
  wechoaround %actor% %actor.name% попытал%actor.u% сдвинуть валун...
  halt
end
wsend %actor%       Вы поднатужились и столкнули огромный валун...
wechoaround %actor% %actor.name% поднатужил%actor.u% и столкнул%actor.g% огромный валун с места...
wecho               Вашему взору открылось исполинское тело в богатырских доспехах...
calcuid stone 91200 obj
wpurge %stone%
wload    obj 91201
attach   91214 %self.id%
detach   91213 %self.id%
~
#91214
<912 Use DEAD water>~
2 c 0
лить смочить окропить~
if %actor.vnum% != -1
  halt
end
if !%arg.contains(мертвой)% && !%arg.contains(мертвую)%
  return 1
  halt
end
wait 1
if !%actor.haveobj(91000)%
  wsend %actor% У Вас этого нет !
  halt
end
wsend %actor% Вы окропили тело Перуна мертвой водой...
wechoaround   %actor% %actor.name% окропил%actor.g% тело Перуна мертвой водой...
wpurge  чаш.мертв.вод
attach  91215 %self.id%
detach  91214 %self.id%
~
#91215
<912 Use LIVE water>~
2 c 0
лить смочить окропить~
if (%actor.vnum% != -1)
  halt
end
eval skl 86+%actor.remort%*5
calcuid operun 91201 obj
if ((!%arg.contains(живой)%) && (!%arg.contains(живую)%))
  return 0
  halt
end
wait 1
if (!%actor.haveobj(91100)%)
  wsend %actor% У Вас этого нет !
  halt
end
calcuid zhivaja 91100 obj
wsend %actor%       Вы окропили тело Перуна живой водой...
wechoaround %actor% %actor.iname% окропил%actor.g% тело Перуна живой водой...
wpurge %zhivaja%
wpurge %operun%
wload   mob 91211
wecho   Древний Бог встал и потянулся, разминая затекшие от долгого сна мышцы.
wecho   - Спасибо тебе, %actor.iname%, что разбудил%actor.g% меня от вечного сна.
eval  AddExp 0
eval lvl 28 - (%actor.remort%/3)
eval rnd 12+%actor.remort%*2
if (%actor.level% < %lvl%)
  wecho   - Hо ты слишком мал%actor.a%, чтоб я чему-то научил тебя, приходи как станешь опытнее.
  set     AddExp 500000
  set AddExp  %actor.exp(+%AddExp%)%
  eval tmp %actor.setquest(912)%
  *     wpurge %operun%
  detach 91215 %self.id%
  halt
end
switch %random.5%
  case 1
    if (%world.curobjs(91202)% < 2)
      wload   obj 91202
      wforce великий.Перун взять масс.меч
      wforce великий.Перун дать  масс.меч .%actor.name%
    else
      eval AddExp 1000000
    end
  break
  case 2
    if (%world.curobjs(91203)% < 2)
      wload   obj 91203
      wforce великий.Перун взять плат.доспех
      wforce великий.Перун дать  плат.доспех .%actor.name%
    else
      eval AddExp 1000000
    end
  break
  case 3
    if (%world.curobjs(91204)% < 2)
      wload   obj 91204
      wforce великий.Перун взять ладанка.горсть
      wforce великий.Перун дать  ладанка.горсть .%actor.name%
    else
      eval AddExp 1000000
    end
  break
  case 4
    if (%world.curobjs(91205)% < 2)
      wload   obj 91205
      wforce великий.Перун взять пояс.платин
      wforce великий.Перун дать  пояс.плат .%actor.name%
    else
      eval AddExp 1000000
    end
  break
  case 5
    if (%world.curobjs(91206)% < 2)
      wload   obj 91206
      wforce великий.Перун взять кинж.платин
      wforce великий.Перун дать  кинж.платин .%actor.name%
    else
      eval AddExp 1000000
    end
  break
  default
  break
done
switch %actor.class%
  *лекарь
  case 0
    if ((!%actor.spelltype(защита богов)%) && (%actor.can_get_spell(защита богов)%) && (%random.100% < %rnd%))
      wspellturn %actor% защита.богов set
    else
      eval AddExp 1000000
    end
  break
  *колдун
  case 1
    if ((!%actor.spelltype(заколдовать оружие)%) && (%actor.can_get_spell(заколдовать оружие)%) && (%random.100% < %rnd%))
      wspellturn %actor% заколдовать.оружие set
    elseif ((!%actor.spelltype(суд богов)%) && (%actor.can_get_spell(суд богов)%) && (%random.100% < %rnd%))
      wspellturn %actor% суд.богов set
    else
      eval AddExp 1000000
    end
  break
  *тать
  case 2
    if     !%actor.skill(заколоть)%
      wskillturn %actor% заколоть set
    elseif %actor.skill(заколоть)% < %skl%
      wskilladd %actor% заколоть 5
    else
      eval  AddExp 1000000
    end
  break
  *богатырь
  case 3
    if    !%actor.skill(богатырский молот)%
      wskillturn %actor% богатырский.молот set
    elseif %actor.skill(богатырский молот)% < %skl%
      wskilladd  %actor% богатырский.молот 5
    elseif !%actor.skill(оглушить)%
      wskillturn %actor% оглушить set
    elseif %actor.skill(оглушить)% < %skl%
      wskilladd  %actor% оглушить 5
    else
      eval  AddExp 1000000
    end
  break
  *наемник
  case 4
    if    !%actor.skill(скрытый удар)%
      wskillturn %actor% скрытый.удар set
    elseif %actor.skill(скрытый удар)% < %skl%
      wskilladd  %actor% скрытый.удар 5
    elseif %actor.skill(заколоть)% < %skl%
      wskilladd  %actor% заколоть 5
    else
      eval  AddExp 1000000
    end
  break
  *дружинник
  case 5
    if    !%actor.skill(веерная защита)%
      wskillturn %actor% веерная.защита set
    elseif %actor.skill(веерная защита)% < %skl%
      wskilladd  %actor% веерная.защита 5
    elseif %actor.skill(обезоружить)% < %skl%
      wskilladd  %actor% обезоружить 5
    else
      eval  AddExp 1000000
    end
  break
  *кудесник
  case 6
    if ((!%actor.spelltype(магическое зеркало)%) && (%actor.can_get_spell(магическое зеркало)%) && (%random.100% < %rnd%))
      wspellturn %actor% магическое.зеркало set
    else
      eval AddExp 1000000
    end
  break
  *волшебник
  case 7
    if ((!%actor.spelltype(массовое оцепенение)%) && (%actor.can_get_spell(массовое оцепенение)%) && (%random.100% < %rnd%))
      wspellturn %actor% массовое.оцепенение set
    else
      eval AddExp 1000000
    end
  break
  *чернокнижник
  case 8
    if ((!%actor.spelltype(силы зла)%) && (%actor.can_get_spell(силы зла)%) && (%random.100% < %rnd%))
      wspellturn %actor% силы.зла set
    else
      eval AddExp 1000000
    end
  break
  *витязь
  case 9
    if ((!%actor.spelltype(массовое молчание)%) && (%actor.can_get_spell(массовое молчание)%))
      wspellturn %actor% массовое.молчание set
    elseif    !%actor.skill(двуручники)%
      wskillturn %actor% двуручники set
    elseif %actor.skill(двуручники)% < %skl%
      wskilladd  %actor% двуручники 5
    else
      eval  AddExp 1000000
    end
  break
  *охотник
  case 10
    if    !%actor.skill(доп выстрел)%
      wskillturn %actor% доп.выстрел set
    elseif %actor.skill(доп выстрел)% < %skl%
      wskilladd  %actor% доп.выстрел 5
    elseif %actor.skill(маскировка)%
      if %actor.skill(маскировка)% < %skl%
        wskilladd  %actor% маскировка 5
      else
        eval  AddExp 1000000
      end
    end
  break
  *кузнец
  case 11
    if !%actor.skill(железный ветер)%
      wskillturn %actor% железный.ветер set
    elseif %actor.skill(перековать)% < %skl%
      wskilladd  %actor% перековать 5
    else
      eval  AddExp 1000000
    end
  break
  *купец
  case 12
    if    !%actor.skill(осторожный стиль)%
      wskillturn %actor% осторожный.стиль set
    elseif %actor.skill(осторожный стиль)% < %skl%
      wskilladd  %actor% осторожный.стиль 5
    else
      eval  AddExp 1000000
    end
  break
  *волхв
  case 13
    if (!%actor.skill(сглазить)%)
      wskillturn %actor% сглазить set
    elseif %actor.skill(сглазить)% < %skl%
      wskilladd %actor% сглазить 5
    else
      eval  AddExp 1000000
    end
  break
  default 
  break
done
if %addexp%
  wsend %actor% Вы получили %addexp% очков опыта.
  eval tmp %actor.exp(+%AddExp%)%
end
eval tmp %actor.setquest(912)%
*   wpurge %operun%
attach 91216 %self.id%
exec 91216 %self.id%
detach 91215 %self.id%
~
#91216
Открываем портал после квеста~
2 e 100
~
%portal% 80001 1
~
$~
