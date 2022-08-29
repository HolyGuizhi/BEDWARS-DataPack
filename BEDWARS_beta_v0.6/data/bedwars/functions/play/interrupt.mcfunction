#Guizhi

function bedwars:play/end_game

execute store result score message_flag num run gamerule sendCommandFeedback
execute if score message_flag num matches 1 run gamerule sendCommandFeedback false

title @a title {"text":"- 遊戲中斷 -","color":"red"}
execute if score error num matches 1 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" 場上已無任何玩家 ","color":"red"}]
scoreboard players reset error
execute as @a at @s run playsound entity.player.levelup ambient @s ~ ~ ~

tellraw @a {"text":"===================================================","color":"gold"}
tellraw @s {"text":">> 獲勝隊伍："}
tellraw @a {"text":"     ( 遊戲中斷 無獲勝隊伍 )","color":"red"}
tellraw @s {"text":">> 玩家戰績："}
execute as @a run tellraw @s [{"text":"     擊殺數：","color":"gold"},{"score":{"name":"@s","objective":"GameKillCount"},"color":"white"},{"text":" / ","color":"white"},{"text":"死亡次數：","color":"gold"},{"score":{"name":"@s","objective":"GameDeathCount"},"color":"white"},{"text":" / ","color":"white"},{"text":"破壞床數：","color":"gold"},{"score":{"name":"@s","objective":"destroy_beds"},"color":"white"}]
tellraw @a {"text":"===================================================","color":"gold"}
