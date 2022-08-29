#Guizhi

scoreboard players set playing num 0
scoreboard objectives setdisplay sidebar
schedule clear bedwars:play/resources/generator_tiers
schedule clear bedwars:play/resources/attention
schedule clear bedwars:play/slow_tick/02
schedule clear bedwars:play/slow_tick/03
# schedule clear bedwars:play/slow_tick/04

kill @e[tag=display]
kill @e[type=item,tag=bedwars]
kill @e[type=silverfish,tag=bedwars]
kill @e[type=iron_golem,tag=bedwars]
kill @e[type=fireball,tag=bedwars]
kill @e[type=tnt,tag=bedwars]
kill @e[type=marker,tag=bedwars]

execute as @e[tag=diamond] run data modify entity @s CustomName set value '{"text":"鑽石生成點","color":"aqua","bold":true}'
execute as @e[tag=emerald] run data modify entity @s CustomName set value '{"text":"綠寶石生成點","color":"green","bold":true}'
execute as @e[tag=diamond_tier] run data modify entity @s CustomName set value '[{"text":"等級 "},{"text":"I","color":"gold"}]'
execute as @e[tag=emerald_tier] run data modify entity @s CustomName set value '[{"text":"等級 "},{"text":"I","color":"gold"}]'
execute as @e[tag=resource] run data modify entity @s CustomNameVisible set value 1
execute as @e[tag=spawn] run data modify entity @s CustomNameVisible set value 1
execute as @a run attribute @s generic.attack_speed base set 4.0
execute as @a run attribute @s generic.attack_damage base set 1.0
execute as @a run attribute @s generic.armor base set 0.0

tag @a remove plyr_01
tag @a remove plyr_02
tag @a remove plyr_03
tag @a remove plyr_04
tag @a remove plyr_05
tag @a remove plyr_06
tag @a remove plyr_07
tag @a remove plyr_08
tag @a remove plyr_09
tag @a remove plyr_10
tag @a remove plyr_11
tag @a remove plyr_12
tag @a remove plyr_13
tag @a remove plyr_14
tag @a remove plyr_15
tag @a remove plyr_16

gamemode creative @a
gamerule doLimitedCrafting false
gamerule mobGriefing true
gamerule doMobLoot true
gamerule sendCommandFeedback true
