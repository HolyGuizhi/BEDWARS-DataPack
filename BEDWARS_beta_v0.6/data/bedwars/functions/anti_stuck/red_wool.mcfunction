#Guizhi

advancement revoke @s only bedwars:cant_place/redwool

tag @s add place_red_wool
execute if score playing num matches 1 anchored eyes as @e[tag=anti-stuck,distance=..7] at @s run function bedwars:anti_stuck/return/red_wool
tag @s remove place_red_wool
