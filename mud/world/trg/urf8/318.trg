#31800
встречавоин~
0 q 100
~
msend %actor% Добрый день.
msend %actor% Ты зашел на ристалище - место где можешь померяться
msend %actor% силами с другими. Но знай, ристалище не место для
msend %actor% подлости и ненависти. Все должно быть честно и по
msend %actor% правилам. Если противник помер на ристалище,
msend %actor% не используй это.
msend %actor% Смерть и нападение на ристалище не приводит к возможности
msend %actor% мести, вещи проигравшего остаются с ним, но получают
msend %actor% повреждения от ударов и магии.
~
#31801
Не даем затыкать ванрумы~
0 b 20
*~
foreach victim %self.pc%
  mforce %victim% просн
  mforce %victim% stand
  if (%self.realroom% == 31800)
    mforce %victim% north
  else
    mforce %victim% south
  end
  msend %victim% Покрытый рубцами воин вытолкал вас прочь.
  %victim.wait(3)%
done
~
$~
