#Guizhi

advancement revoke @s only bedwars:cant_place/yellowterracotta

tag @s add place_yellow_terracotta
execute if score playing num matches 1 anchored eyes as @e[tag=anti-stuck,distance=..7] at @s run function bedwars:anti_stuck/return/yellow_terracotta
tag @s remove place_yellow_terracotta
