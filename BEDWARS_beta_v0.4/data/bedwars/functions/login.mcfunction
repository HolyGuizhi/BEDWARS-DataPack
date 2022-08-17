#Guizhi

tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 歡迎遊玩 BED WARS！  輸入 ","color":"white"},{"text":"/function .cmd:commands","color":"yellow"},{"text":" 查看與使用指令","color":"white"}]

execute store result score Tmp Tmp run datapack list enabled
execute if score Tmp Tmp matches 3.. run tellraw @s [{"text":"\n [BED WARS] ","color":"gold"},{"text":" 敬告，偵測到有其他正在運作的資料包，","bold":true,"color":"red"}]
execute if score Tmp Tmp matches 3.. run tellraw @s [{"text":".               ","color":"gold"},{"text":" 這有可能會造成此資料包無法正常運作，","bold":true,"color":"red"}]
execute if score Tmp Tmp matches 3.. run tellraw @s [{"text":".               ","color":"gold"},{"text":" 除非您瞭解這樣不會造成影響，否則不建議這麼做。","bold":true,"color":"red"}]

# 正在進行遊戲
execute if score playing num matches 1 run clear @s
execute if score playing num matches 1 run team join spec @s
execute if score playing num matches 1 run tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 正在進行遊戲中...","bold":true,"color":"aqua"}]

# Setting
attribute @s generic.armor base set 0
attribute @s generic.attack_damage base set 1.0
title @s reset

# Tags
tag @s remove plyr_01
tag @s remove plyr_02
tag @s remove plyr_03
tag @s remove plyr_04
tag @s remove plyr_05
tag @s remove plyr_06
tag @s remove plyr_07
tag @s remove plyr_08
tag @s remove plyr_09
tag @s remove plyr_10
tag @s remove plyr_11
tag @s remove plyr_12
tag @s remove plyr_13
tag @s remove plyr_14
tag @s remove plyr_15
tag @s remove plyr_16

# 收尾
playsound entity.experience_orb.pickup ambient @s ~ ~ ~
scoreboard players set @s leftgame 0
