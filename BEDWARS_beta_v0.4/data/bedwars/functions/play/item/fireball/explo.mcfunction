#Guizhi

# 爆掉方塊
scoreboard players reset @s Tmp
execute store result score @s Tmp run execute if entity @e[type=fireball,distance=..3]
execute unless score @s Tmp matches 1.. run function bedwars:play/item/tnt/explo_layer1
kill @s[type=marker]
