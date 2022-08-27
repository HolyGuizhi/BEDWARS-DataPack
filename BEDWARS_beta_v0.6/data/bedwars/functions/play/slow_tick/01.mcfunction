#Guizhi

# 中斷遊戲
execute unless entity @a[team=red] unless entity @a[team=blue] unless entity @a[team=yellow] unless entity @a[team=green] run scoreboard players set error num 1
execute if score error num matches 1 run function bedwars:play/interrupt

# Sharpness
execute as @a run function bedwars:play/sharpness

# Next
schedule function bedwars:play/slow_tick/02 1t
scoreboard players reset slowtick
