#Guizhi

# 冷卻5秒 此期間遭擊殺 資源會轉移至最後一次攻擊自己的玩家
scoreboard players add @s Time 1

# 此5秒內 如果在飛空氣中將無法丟掉身上資源
execute as @s[scores={drop_iron=1..}] if block ~ ~-0.5 ~ air run function bedwars:play/hurt_by/set_iron
execute as @s[scores={drop_gold=1..}] if block ~ ~-0.5 ~ air run function bedwars:play/hurt_by/set_gold
execute as @s[scores={drop_diamond=1..}] if block ~ ~-0.5 ~ air run function bedwars:play/hurt_by/set_diamond
execute as @s[scores={drop_emerald=1..}] if block ~ ~-0.5 ~ air run function bedwars:play/hurt_by/set_emerald

# 5秒後重製
execute if score @s Time matches 100.. run scoreboard players reset @s KillByPlyr
execute if score @s Time matches 100.. run scoreboard players reset @s Time
