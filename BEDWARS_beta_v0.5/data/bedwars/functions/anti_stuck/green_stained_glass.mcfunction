#Guizhi

advancement revoke @s only bedwars:cant_place/greenglass

tag @s add place_green_stained_glass
execute if score playing num matches 1 anchored eyes as @e[tag=anti-stuck,distance=..7] at @s run function bedwars:anti_stuck/return/green_stained_glass
tag @s remove place_green_stained_glass
