#Guizhi

# 校正位置
execute store result score @s Tmp run data get entity @s Pos[0] 1
scoreboard players operation @s Tmp *= 10 num
execute unless score @s Tmp matches 0.. run scoreboard players operation @s Tmp -= 5 num
execute if score @s Tmp matches 0.. run scoreboard players operation @s Tmp += 5 num
execute store result entity @s Pos[0] double 0.1 run scoreboard players get @s Tmp

execute store result score @s Tmp run data get entity @s Pos[2] 1
scoreboard players operation @s Tmp *= 10 num
execute unless score @s Tmp matches 0.. run scoreboard players operation @s Tmp -= 5 num
execute if score @s Tmp matches 0.. run scoreboard players operation @s Tmp += 5 num
execute store result entity @s Pos[2] double 0.1 run scoreboard players get @s Tmp
