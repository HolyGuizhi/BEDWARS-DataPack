#Guizhi

execute if score playing num matches 1 run function bedwars:play/tick
execute unless score playing num matches 1 run function bedwars:unplay/tick

execute as @a unless score @s leftgame matches 0 at @s run function bedwars:login
