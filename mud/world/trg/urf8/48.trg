#4800
зашел в первую локацию сада~
2 e 100
~
wait 2
wecho Вы вспомнили народную песню: "Ягода малина в лес меня манила..."
wecho И Вам вдруг захотелось отведать малины!
~
#4801
Пуржим малину зимой-весной~
1 n 100
~
if (%weather.season% == зима) || (%weather.season% == весна)
  wait 1
  %purge% %self%
end
~
$~