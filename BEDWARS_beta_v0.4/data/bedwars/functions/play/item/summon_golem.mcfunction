#Guizhi

# 召喚屬於該隊伍的鐵巨人
tag @s add bedwars
execute if entity @p[scores={summon_golem=1..},team=blue] run team join blue @s
execute if entity @p[scores={summon_golem=1..},team=red] run team join red @s
execute if entity @p[scores={summon_golem=1..},team=yellow] run team join yellow @s
execute if entity @p[scores={summon_golem=1..},team=green] run team join green @s
data modify entity @s CustomNameVisible set value 1

execute if entity @p[scores={summon_golem=1..},tag=plyr_01] run tag @s add plyr_01
execute if entity @p[scores={summon_golem=1..},tag=plyr_02] run tag @s add plyr_02
execute if entity @p[scores={summon_golem=1..},tag=plyr_03] run tag @s add plyr_03
execute if entity @p[scores={summon_golem=1..},tag=plyr_04] run tag @s add plyr_04
execute if entity @p[scores={summon_golem=1..},tag=plyr_05] run tag @s add plyr_05
execute if entity @p[scores={summon_golem=1..},tag=plyr_06] run tag @s add plyr_06
execute if entity @p[scores={summon_golem=1..},tag=plyr_07] run tag @s add plyr_07
execute if entity @p[scores={summon_golem=1..},tag=plyr_08] run tag @s add plyr_08
execute if entity @p[scores={summon_golem=1..},tag=plyr_09] run tag @s add plyr_09
execute if entity @p[scores={summon_golem=1..},tag=plyr_10] run tag @s add plyr_10
execute if entity @p[scores={summon_golem=1..},tag=plyr_11] run tag @s add plyr_11
execute if entity @p[scores={summon_golem=1..},tag=plyr_12] run tag @s add plyr_12
execute if entity @p[scores={summon_golem=1..},tag=plyr_13] run tag @s add plyr_13
execute if entity @p[scores={summon_golem=1..},tag=plyr_14] run tag @s add plyr_14
execute if entity @p[scores={summon_golem=1..},tag=plyr_15] run tag @s add plyr_15
execute if entity @p[scores={summon_golem=1..},tag=plyr_16] run tag @s add plyr_16

# 收尾
scoreboard players reset @a[scores={summon_golem=1..}] summon_golem
data modify entity @s DeathTime set value 19
attribute @s generic.max_health base set 40
