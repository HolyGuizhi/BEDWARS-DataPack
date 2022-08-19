#Guizhi

execute if entity @p[team=blue,scores={use_egg=1..}] run tag @s add blue
execute if entity @p[team=red,scores={use_egg=1..}] run tag @s add red
execute if entity @p[team=yellow,scores={use_egg=1..}] run tag @s add yellow
execute if entity @p[team=green,scores={use_egg=1..}] run tag @s add green
data modify entity @s Rotation[0] set from entity @p[scores={use_egg=1..}] Rotation[0]
scoreboard players reset @a use_egg
tag @s add bedwars
