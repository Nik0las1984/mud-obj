#63200
на мостке~
2 e 50
~
wait 1
wsend %actor%  Мосток закачался, и Вы едва не свалились в воду.
wechoaround %actor%  Мосток закачался, и Вы едва не свалились в воду.
%fchar.move(-30)%
end
~
#63201
изгой пристает~
0 h 100
~
wait 1
рад %actor.name%
say Ой, какая хорошенькая девочка!
say Не бойся, иди ко мне, дядя тебя не обидит!
щуп %actor.name%
wait 1
убит  %actor.name%
end
~
$~
