#Guizhi

advancement revoke @s only bedwars:cant_place/oakplanks

tag @s add place_oak_planks
execute if score playing num matches 1 anchored eyes as @e[tag=anti-stuck,distance=..7] at @s run function bedwars:anti_stuck/return/oak_planks
tag @s remove place_oak_planks
