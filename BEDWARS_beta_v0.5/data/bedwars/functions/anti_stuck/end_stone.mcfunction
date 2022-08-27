#Guizhi

advancement revoke @s only bedwars:cant_place/endstone

tag @s add place_end_stone
execute if score playing num matches 1 anchored eyes as @e[tag=anti-stuck,distance=..7] at @s run function bedwars:anti_stuck/return/end_stone
tag @s remove place_end_stone
