#Guizhi

execute store result score message_flag num run gamerule sendCommandFeedback
execute if score message_flag num matches 1 run gamerule sendCommandFeedback false

execute unless score playing num matches 1 positioned ~ ~ ~ run kill @e[type=armor_stand,limit=1,sort=nearest,tag=emerald_block]
execute unless score playing num matches 1 positioned ~ ~2 ~ run kill @e[type=armor_stand,limit=1,sort=nearest,tag=emerald]
execute unless score playing num matches 1 positioned ~ ~2.3 ~ run kill @e[type=armor_stand,limit=1,sort=nearest,tag=emerald_tier]
execute unless score playing num matches 1 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" 移除了一個綠寶石生成點。","color":"white"}]
execute unless score playing num matches 1 run playsound entity.armor_stand.break ambient @a ~ ~ ~
