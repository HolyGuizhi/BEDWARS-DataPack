#Guizhi

particle explosion ~ ~ ~ 0 0 0 0 1 force

execute store result score @s Tmp run data get entity @s Motion[0] 3
scoreboard players operation @s Tmp *= -1 num
execute store result entity @s Motion[0] double 0.1 run scoreboard players get @s Tmp

execute store result score @s Tmp run data get entity @s Motion[1] 3
scoreboard players operation @s Tmp *= -1 num
execute store result entity @s Motion[1] double 0.1 run scoreboard players get @s Tmp

execute store result score @s Tmp run data get entity @s Motion[2] 3
scoreboard players operation @s Tmp *= -1 num
execute store result entity @s Motion[2] double 0.1 run scoreboard players get @s Tmp

tag @s add AT
