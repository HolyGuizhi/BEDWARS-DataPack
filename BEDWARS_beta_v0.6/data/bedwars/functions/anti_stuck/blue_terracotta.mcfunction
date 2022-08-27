#Guizhi

advancement revoke @s only bedwars:cant_place/blueterracotta

tag @s add place_blue_terracotta
execute if score playing num matches 1 anchored eyes as @e[tag=anti-stuck,distance=..7] at @s run function bedwars:anti_stuck/return/blue_terracotta
tag @s remove place_blue_terracotta
