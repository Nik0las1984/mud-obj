#71900
вход к юному леснику~
0 r 100
*~
wait 10
взд
г Привет тебе %actor.iname%.
wait 20
г Вижу силен ты, да ловок.
г Не откажи бедному леснику, помоги с разбойниками дорожными управиться.
г Четверо лихих людей собрали вокруг себя сброд с окрестных деревень и
г давай друг дружку мутузить, да проезжий люд обижать.
г Найди на них управу, а я в свою очередь отблагодарю тебя чем смогу.
detach 71900 %self.id%
~
#71901
юный лесник дает награду~
0 j 100
*~
switch %object.vnum%
  case 71901
    wait 10
    mpurge %object%
    г Спасибо, доблестный воин, ты помог мне, а я награжу тебя за это.
    дум
    ул
    wait 20
    switch %random.80%
    break
    case 1
      mecho _Юный лесник снял с себя пояс и протянул его Вам.
      wait 20
      mload obj 71910
      дать пояс %actor.iname%
      г Вот завалялось тут у меня кой-чего, на, забирай.
    break
    case 2
      mecho _Юный лесник снял с себя перчатки и протянул их Вам.
      wait 20
      mload obj 71907
      дать перчатки %actor.iname%
      г Вот завалялось тут у меня кой-чего, на, забирай.
    break
    case 3
      mecho _Юный лесник достал сапоги и протянул их Вам.
      wait 20
      mload obj 71908
      дать сапоги %actor.iname%
      г Вот завалялось тут у меня кой-чего, на, забирай.
    break
    case 4
      mecho _Юный лесник достал поножи и протянул их Вам.
      wait 20
      mload obj 71906
      дать поножи %actor.iname%
      г Вот завалялось тут у меня кой-чего, на, забирай.
    break
    case 5
      mecho _Юный лесник достал наручи и протянул их Вам.
      wait 20
      mload obj 71905
      дать наручи %actor.iname%
      г Вот завалялось тут у меня кой-чего, на, забирай.
    break
    case 6
      mecho _Юный лесник снял куртку и протянул ее Вам.
      wait 20
      mload obj 71911
      дать куртка %actor.iname%
      г Вот завалялось тут у меня кой-чего, на, забирай.
    break
    case 7
      mecho _Юный лесник снял плащ и протянул его Вам.
      wait 1s
      mload obj 71909
      дать плащ %actor.iname%
      г Вот завалялось тут у меня кой-чего, на, забирай.
    break
    case 8
      mecho _Юный лесник достал косынку и протянул ее Вам.
      wait 20
      mload obj 71912
      дать косынка %actor.iname%
      г Вот завалялось тут у меня кой-чего, на, забирай.
    break
    default 
      wait 20
      mload obj 71914
      дать драгоценн %actor.iname%
      г Вот возьми, это тебе пригодится!. 
    break 
  done
  default
    хму
    брос %object.name%
  break
done   
~
#71902
дровосек родился~
0 n 100
*~
if (%world.curobjs(71900)% < 6) && (%random.1000% <= 150)
  mload obj 71900
end
~
#71903
филин умер~
0 f 100
*~
if (%world.curobjs(71913)% < 6) && (%random.1000% <= 30)
  mload obj 71913
end
~
#71904
главарь умер~
0 f 100
*~
mload obj 71901
end
~
$~