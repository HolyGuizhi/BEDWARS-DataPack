#Guizhi

# 實體tick
execute as @e[type=armor_stand] run function bedwars:unplay/entity_tick

# 快速移除方塊
execute as @a if score @s clear_block matches 1.. at @s run function bedwars:unplay/remove_blocks

# 悅靈小彩蛋
execute at @e[type=allay] positioned ~ ~1 ~ as @e[type=#impact_projectiles,distance=..5,tag=!AT] at @s run function bedwars:unplay/temp

# 重設回傳訊息的gamerule
execute if score message_flag num matches 1 run gamerule sendCommandFeedback true
execute if score message_flag num matches 1 run scoreboard players reset message_flag num
