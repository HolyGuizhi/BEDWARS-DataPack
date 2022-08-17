#Guizhi

scoreboard players add tntloop num 1

execute unless block ~ ~ ~ #bedwars:penetratable run summon marker ~ ~ ~ {Tags:["bedwars","TNT_marker"]}
execute unless block ~ ~ ~ #bedwars:penetratable run scoreboard players set tntloop num 3000

execute if score tntloop num matches ..1001 positioned ^ ^ ^0.01 run function bedwars:play/item/tnt/loop
