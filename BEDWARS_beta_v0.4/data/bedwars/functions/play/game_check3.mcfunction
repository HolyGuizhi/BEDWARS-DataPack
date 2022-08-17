#Guizhi

# 藥水
clear @a glass_bottle

# 物品限制
execute as @a[tag=!op] unless predicate bedwars:check_item run item replace entity @s weapon.mainhand with air

# Gamerules
gamerule doMobSpawning false
gamerule doMobLoot false
gamerule keepInventory true
gamerule mobGriefing false
gamerule doLimitedCrafting true
difficulty normal
