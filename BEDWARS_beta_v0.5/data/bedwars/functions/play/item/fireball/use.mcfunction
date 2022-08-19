#Guizhi

# 發射
execute store success score @s Tmp run clear @s fire_charge{game:1b} 1
execute if score @s Tmp matches 1 run scoreboard players add @s fireball_count 1
execute as @s[scores={use_fireball=1..}] unless predicate bedwars:sneaking positioned ~ ~1.63 ~ positioned ^ ^ ^0.5 run function bedwars:play/item/fireball/summon
execute as @s[scores={use_fireball=1..}] if predicate bedwars:sneaking positioned ~ ~1.25 ~ positioned ^ ^ ^0.5 run function bedwars:play/item/fireball/summon
scoreboard players reset @s use_fireball

# 提示 & 用完
title @s actionbar [{"text":"目前剩餘","color":"white"},{"score":{"name":"@s","objective":"fireball_count"},"color":"gold"},{"text":"發火焰彈","color":"white"}]
execute unless score @s fireball_count matches 1.. run clear @s carrot_on_a_stick{fireball:1b}
