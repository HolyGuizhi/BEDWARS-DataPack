#Guizhi

execute store result score message_flag num run gamerule sendCommandFeedback
execute if score message_flag num matches 1 run gamerule sendCommandFeedback false

team join spec @a

team join blue @r[team=spec]
team join red @r[team=spec]
team join blue @r[team=spec]
team join red @r[team=spec]
team join blue @r[team=spec]
team join red @r[team=spec]
team join blue @r[team=spec]
team join red @r[team=spec]
team join blue @r[team=spec]
team join red @r[team=spec]
team join blue @r[team=spec]
team join red @r[team=spec]
team join blue @r[team=spec]
team join red @r[team=spec]
team join blue @r[team=spec]
team join red @r[team=spec]
team join blue @r[team=spec]
team join red @r[team=spec]
team join blue @r[team=spec]
team join red @r[team=spec]

tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" 隨機分隊完畢！","color":"white"}]
execute as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
