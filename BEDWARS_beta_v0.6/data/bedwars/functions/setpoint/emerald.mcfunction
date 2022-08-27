#Guizhi

execute store result score message_flag num run gamerule sendCommandFeedback
execute if score message_flag num matches 1 run gamerule sendCommandFeedback false

execute unless score playing num matches 1 align xz run summon armor_stand ~0.5 ~1 ~0.5 {Tags:["bedwars","emerald_block","anti-stuck"],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"emerald_block",Count:1b}],Marker:1b}
execute unless score playing num matches 1 align xz run summon armor_stand ~0.5 ~3 ~0.5 {Tags:["bedwars","emerald"],Invisible:1b,NoGravity:1b,CustomName:'{"text":"綠寶石生成點","color":"green","bold":true}',CustomNameVisible:1b,Marker:1b}
execute unless score playing num matches 1 align xz run summon armor_stand ~0.5 ~3.3 ~0.5 {Tags:["bedwars","emerald_tier"],Invisible:1b,NoGravity:1b,CustomName:'[{"text":"等級 "},{"text":"I","color":"gold"}]',CustomNameVisible:1b,Marker:1b}
execute unless score playing num matches 1 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" 設置了1個綠寶石生成點！","color":"white"}]
execute unless score playing num matches 1 as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
