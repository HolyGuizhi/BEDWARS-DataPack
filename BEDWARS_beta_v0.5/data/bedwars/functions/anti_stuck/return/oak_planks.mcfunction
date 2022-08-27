#Guizhi

execute store result score @s Tmp run fill ~-1 ~-0.5 ~-1 ~1 ~1 ~1 air replace oak_planks
execute if score @s Tmp matches 1.. run give @p[tag=place_oak_planks] oak_planks{game:1b} 1
execute if score @s Tmp matches 1.. run tellraw @p[tag=place_oak_planks] [{"text":" [BEDWARS] ","color":"gold"},{"text":" 您無法在此建築此方塊 ","color":"gray","bold":true}]
