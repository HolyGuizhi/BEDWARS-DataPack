#Guizhi

tag @s add get_num
execute if score plyr_num num matches 1 run tag @s add plyr_01
execute if score plyr_num num matches 2 run tag @s add plyr_02
execute if score plyr_num num matches 3 run tag @s add plyr_03
execute if score plyr_num num matches 4 run tag @s add plyr_04
execute if score plyr_num num matches 5 run tag @s add plyr_05
execute if score plyr_num num matches 6 run tag @s add plyr_06
execute if score plyr_num num matches 7 run tag @s add plyr_07
execute if score plyr_num num matches 8 run tag @s add plyr_08
execute if score plyr_num num matches 9 run tag @s add plyr_09
execute if score plyr_num num matches 10 run tag @s add plyr_10
execute if score plyr_num num matches 11 run tag @s add plyr_11
execute if score plyr_num num matches 12 run tag @s add plyr_12
execute if score plyr_num num matches 13 run tag @s add plyr_13
execute if score plyr_num num matches 14 run tag @s add plyr_14
execute if score plyr_num num matches 15 run tag @s add plyr_15
execute if score plyr_num num matches 16 run tag @s add plyr_16

scoreboard players add plyr_num num 1
execute unless score plyr_num num matches 17.. as @p[team=!spec,tag=!get_num] run function bedwars:play/init/plyrnum
