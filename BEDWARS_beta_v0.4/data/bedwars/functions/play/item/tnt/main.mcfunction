#Guizhi

execute store result score @s num run data get entity @s Fuse 1
execute if score @s num matches ..2 at @s run function bedwars:play/item/tnt/explo_layer0
