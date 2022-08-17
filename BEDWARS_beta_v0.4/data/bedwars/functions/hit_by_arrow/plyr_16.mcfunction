#Guizhi

execute store result score @s Tmp run data get entity @s Health
tellraw @p[tag=plyr_16] [{"text":" [BED WARS]  ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" 剩餘","color":"white"},{"score":{"name":"@s","objective":"Tmp"},"color":"green"},{"text":"滴血量","color":"white"}]
scoreboard players reset @s Tmp
advancement revoke @s only bedwars:hit_by_arrow/plyr_16
