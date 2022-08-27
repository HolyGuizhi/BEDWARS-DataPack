#Guizhi

# 鑽石
execute as @s[tag=diamond] at @s run function bedwars:play/resources/diamond
execute as @s[tag=diamond_block] at @s run tp @s ~ ~ ~ ~2 ~

# 綠寶石
execute as @s[tag=emerald] at @s run function bedwars:play/resources/emerald
execute as @s[tag=emerald_block] at @s run tp @s ~ ~ ~ ~2 ~

# 資源
execute as @s[tag=resource] at @s run function bedwars:play/resources/home
execute as @s[tag=cant_pickup,nbt={OnGround:1b}] at @s run function bedwars:play/resources/give_item

# 床
execute as @s[tag=bed] at @s run function bedwars:play/beds

# 其他
execute as @s[type=tnt] run function bedwars:play/item/tnt/main
execute as @s[type=villager] at @s facing entity @p[gamemode=survival,distance=..5] feet run tp @s ~ ~ ~ ~ ~
execute as @s[type=arrow,nbt={inGround:1b}] run kill @s
execute as @s[type=experience_orb] run kill @s
execute as @s[type=egg] at @s run function bedwars:play/item/egg
execute as @s[type=item,tag=!bedwars] run function bedwars:play/item/drop_item
execute as @s[type=fireball] at @s run function bedwars:play/item/fireball/loop
execute as @s[type=snowball] at @s run function bedwars:play/item/snowball
execute as @s[type=silverfish] run function bedwars:play/item/silverfish_loop
execute as @s[type=iron_golem] at @s run function bedwars:play/item/golem
