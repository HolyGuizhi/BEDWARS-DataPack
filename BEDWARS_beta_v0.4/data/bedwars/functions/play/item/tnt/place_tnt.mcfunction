#Guizhi

scoreboard players set tntloop num 0

execute if score playing num matches 1 unless predicate bedwars:sneaking positioned ~ ~1.625 ~ positioned ^ ^ ^0.01 run function bedwars:play/item/tnt/loop
execute if score playing num matches 1 if predicate bedwars:sneaking positioned ~ ~1.25 ~ positioned ^ ^ ^0.01 run function bedwars:play/item/tnt/loop

advancement revoke @s only bedwars:place_tnt
