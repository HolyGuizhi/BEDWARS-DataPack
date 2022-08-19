#Guizhi

# 出生
execute as @s[tag=!bedwars] run function bedwars:play/item/summon_golem

# 對其他隊伍的目標憤怒
execute as @s[team=blue] run data modify entity @s AngryAt set from entity @p[gamemode=survival,team=!blue] UUID
execute as @s[team=red] run data modify entity @s AngryAt set from entity @p[gamemode=survival,team=!red] UUID
execute as @s[team=yellow] run data modify entity @s AngryAt set from entity @p[gamemode=survival,team=!yellow] UUID
execute as @s[team=green] run data modify entity @s AngryAt set from entity @p[gamemode=survival,team=!green] UUID

# 計算時間(60秒)
scoreboard players add @s times 1
execute if score @s times matches 1800.. run kill @s
