#10701
йолко тригует~
1 b 2
0~
wait 10 
switch %random.18%  
  case 1
    oecho &gПушистая елочка&n хитро потянула к вам свои лапы.       
  break
  case 2
    oecho &gПушистая елочка&n качнула веткой и зазвенела &Cколокольчиками&n&n&n&n&n.  
  break
  case 3
    oecho &gПушистая елочка&n игриво подмигнула вам &Yогоньком гирлянды&n. 
  break
  case 4
    oecho &gПушистая елочка&n запела: &Wнооооооооооовыыыыыыыый год к нам мчится! скоро все случится )) рипнутся все кому не спится!&n  
  break
  case 5
    oecho Вдруг из-под &gелочки&n выпрыгнул &w&Wбелый зайчик&n&n, пробежал вокруг нее два круга, и вновь скрылся в &Gпушистых ветвях&n. 
  break
  case 6
    oecho &gПушистая елочка&n начала примерять &mн&n&Wо&n&mв&n&Wу&n&mю&n &Wг&n&mи&n&Wр&n&mл&n&Wя&n&mн&nд&mу&n.   
  break
  case 7
    oecho &gПушистая елочка&n встряхнулась, на вас посыпались &w&Wхлопья снега&n&n.   
  break
  case 8
    oecho &gПушистая елочка&n достала откуда-то &bбутылку шампанского&n&n и стала себя им поливать. 
  break
  case 9
    oecho &rБелочка&n, сидящая в ветвях елки, подмигнула вам с намеком.           
  break
  case 10
    oecho &gПушистая елочка&n огляделась и завизжала от восторга при виде Вас.       
  break
  case 11
    oecho &gПушистая елочка&n сказала: &Wгде же Дед Мороз, ну где же Дед Мороз?!&n      
  break
  case 12
    oecho &gПушистая елочка&n начала внимательно оглядываться в поисках &rподарков&n.  
  break
  case 13
    oecho &gПушистая елочка&n отряхнулась и с новым энтузиазмом &Cз&n&Yа&n&Rм&n&Gи&n&Mг&n&cа&n&Wл&n&rа&n гирляндами.        
  break
  case 14
    oecho Из-под &gелки&n донеслось нетрезвое пение. 
  break
  case 15
    oecho &gПушистая елочка&n торжественно сообщила: &rВремя тоста изменить нельзя !&n
  break
  case 16
    oecho &gПушистая елочка&n взмахнула ветвями и взметнулась &Mр&n&cа&n&Rз&n&yн&n&Wо&n&Gц&n&mв&n&Gе&n&rт&n&Cн&n&rа&n&yя&n стая &Wогоньков&n.
  break
  case 17
    oecho &gПушистая елочка&n вздохнула: &cпоговори со мной, ну поговори со мной!&n  
  break
  case 18
    oecho &gПушистая елочка&n ласково обняла вас своими лапами.
  break
done
~
#10727
сакура осыпается~
1 gij 100
~
switch %random.10%
  case 1
    set word &Wлепестков&n
  break
  case 2
    set word &Yлепестков&n
  break
  case 3
    set word &mлепестков&n
  break
  case 4
    set word &Mлепестков&n
  break
  case 5
    set word &Rлепестков&n
  break
  case 6
    set word &rлепестков&n
  break
  case 7
    set word &Cлепестков&n
  break
  case 8
    set word &cлепестков&n
  break
  case 9
    set word &Bлепестков&n
  break
  case 10
    set word &bлепестков&n
  done
  wait 1
  oecho ___&KПорыв&n ветра сорвал с &gветочки&n несколько %word%.
~
#10782
Кошечка действует~
1 j 100
~
wait 2
oechoaround %actor% Игрушечная &Wмартовская &Kкошечка&n прижалась к &R%actor.dname%&n.
osend %actor% Игрушечная &Wмартовская &Kкошечка&n нежно прижалась к Вам.
~
$~
