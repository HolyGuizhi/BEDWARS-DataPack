#Guizhi (已棄用)

scoreboard players add tntloop num 1

execute unless block ~ ~ ~ #bedwars:penetratable run scoreboard players set tntloop num 3000
execute unless block ~ ~ ~ #bedwars:penetratable run function bedwars:play/item/tnt/search/main

execute if score tntloop num matches ..1001 positioned ^ ^ ^0.1 run function bedwars:play/item/tnt/loop
