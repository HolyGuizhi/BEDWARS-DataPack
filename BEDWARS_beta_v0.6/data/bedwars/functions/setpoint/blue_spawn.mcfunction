#Guizhi

execute store result score message_flag num run gamerule sendCommandFeedback
execute if score message_flag num matches 1 run gamerule sendCommandFeedback false

execute unless score playing num matches 1 run kill @e[tag=spawn,team=blue]
execute unless score playing num matches 1 align xz run summon armor_stand ~0.5 ~1 ~0.5 {Tags:["bedwars","spawn","anti-stuck"],Invisible:1b,NoGravity:1b,Marker:1b,CustomName:'{"text":"重生點","color":"blue"}',CustomNameVisible:1b}
execute unless score playing num matches 1 positioned ~ ~1 ~ run team join blue @e[tag=spawn,sort=nearest,limit=1]
execute unless score playing num matches 1 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" 設置了藍隊玩家重生點！","color":"white"}]
execute unless score playing num matches 1 as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
