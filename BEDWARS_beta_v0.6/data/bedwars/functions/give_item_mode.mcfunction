#Guizhi

execute store result score message_flag num run gamerule sendCommandFeedback
execute if score message_flag num matches 1 run gamerule sendCommandFeedback false

# 0:多玩家可同時吸到隊伍資源生成點物資(預設)  1:多玩家無法同時吸到隊伍資源生成點物資
execute if score pick_sameitem num matches 1 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" 隊伍資源生成點所生成的物資","color":"white"},{"text":"可以","color":"gold"},{"text":"同時被多位玩家獲取 ","color":"white"}]
execute if score pick_sameitem num matches 1 run scoreboard players set pick_sameitem num -1

execute if score pick_sameitem num matches 0 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" 隊伍資源生成點所生成的物資","color":"white"},{"text":"無法","color":"gold"},{"text":"同時被多位玩家獲取 ","color":"white"}]
execute if score pick_sameitem num matches 0 run scoreboard players set pick_sameitem num 1

execute unless score pick_sameitem num matches 1 run scoreboard players set pick_sameitem num 0
execute as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
