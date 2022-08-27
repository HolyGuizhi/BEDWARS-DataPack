#Guizhi

advancement revoke @s only bedwars:cant_place/yellowwool

tag @s add place_yellow_wool
execute if score playing num matches 1 anchored eyes as @e[tag=anti-stuck,distance=..7] at @s run function bedwars:anti_stuck/return/yellow_wool
tag @s remove place_yellow_wool
