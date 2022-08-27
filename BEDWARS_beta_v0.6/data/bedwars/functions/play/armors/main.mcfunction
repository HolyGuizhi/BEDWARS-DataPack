#Guizhi

# 0:普通皮革 1:保護I皮革 2:保護II皮革 3:保護III皮革
# 4:普通鎖鏈 5:保護I鎖鏈 6:保護II鎖鏈 7:保護III鎖鏈
# 8:普通鐵裝 9:保護I鐵裝 10:保護II鐵裝 11:保護III鐵裝
# 12:普通鑽裝 13:保護I鑽裝 14:保護II鑽裝 15:保護III鑽裝

attribute @s generic.armor base set 0.0

# Item shop 升級裝備
execute store success score @s Tmp run clear @s chainmail_chestplate 1
execute if score @s Tmp matches 1.. if score @s Armor matches 4.. run give @s iron_ingot 40
execute if score @s Tmp matches 1.. if score @s Armor matches ..3 run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute if score @s Tmp matches 1.. if score @s Armor matches ..3 run scoreboard players operation @s Armor %= 4 num
execute if score @s Tmp matches 1.. if score @s Armor matches ..3 run scoreboard players add @s Armor 4

execute store success score @s Tmp run clear @s iron_chestplate{normal:1b} 1
execute if score @s Tmp matches 1.. if score @s Armor matches 8.. run give @s gold_ingot 12
execute if score @s Tmp matches 1.. if score @s Armor matches ..7 run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute if score @s Tmp matches 1.. if score @s Armor matches ..7 run scoreboard players operation @s Armor %= 4 num
execute if score @s Tmp matches 1.. if score @s Armor matches ..7 run scoreboard players add @s Armor 8

execute store success score @s Tmp run clear @s diamond_chestplate 1
execute if score @s Tmp matches 1.. if score @s Armor matches 12.. run give @s emerald 6
execute if score @s Tmp matches 1.. if score @s Armor matches ..11 run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute if score @s Tmp matches 1.. if score @s Armor matches ..11 run scoreboard players operation @s Armor %= 4 num
execute if score @s Tmp matches 1.. if score @s Armor matches ..11 run scoreboard players add @s Armor 12

scoreboard players reset @s Tmp

# Armors
execute as @s[team=blue] unless predicate bedwars:blue_armor run item replace entity @s armor.head with air
execute as @s[team=red] unless predicate bedwars:red_armor run item replace entity @s armor.head with air
execute as @s[team=yellow] unless predicate bedwars:yellow_armor run item replace entity @s armor.head with air
execute as @s[team=green] unless predicate bedwars:green_armor run item replace entity @s armor.head with air

execute as @s[scores={Armor=0}] unless predicate bedwars:enchant_0/leather run function bedwars:play/armors/lvl_00
execute as @s[scores={Armor=1}] unless predicate bedwars:enchant_1/leather run function bedwars:play/armors/lvl_01
execute as @s[scores={Armor=2}] unless predicate bedwars:enchant_2/leather run function bedwars:play/armors/lvl_02
execute as @s[scores={Armor=3}] unless predicate bedwars:enchant_3/leather run function bedwars:play/armors/lvl_03

execute as @s[scores={Armor=4}] unless predicate bedwars:enchant_0/chainmail run function bedwars:play/armors/lvl_04
execute as @s[scores={Armor=5}] unless predicate bedwars:enchant_1/chainmail run function bedwars:play/armors/lvl_05
execute as @s[scores={Armor=6}] unless predicate bedwars:enchant_2/chainmail run function bedwars:play/armors/lvl_06
execute as @s[scores={Armor=7}] unless predicate bedwars:enchant_3/chainmail run function bedwars:play/armors/lvl_07

execute as @s[scores={Armor=8}] unless predicate bedwars:enchant_0/iron run function bedwars:play/armors/lvl_08
execute as @s[scores={Armor=9}] unless predicate bedwars:enchant_1/iron run function bedwars:play/armors/lvl_09
execute as @s[scores={Armor=10}] unless predicate bedwars:enchant_2/iron run function bedwars:play/armors/lvl_10
execute as @s[scores={Armor=11}] unless predicate bedwars:enchant_3/iron run function bedwars:play/armors/lvl_11

execute as @s[scores={Armor=12}] unless predicate bedwars:enchant_0/diamond run function bedwars:play/armors/lvl_12
execute as @s[scores={Armor=13}] unless predicate bedwars:enchant_1/diamond run function bedwars:play/armors/lvl_13
execute as @s[scores={Armor=14}] unless predicate bedwars:enchant_2/diamond run function bedwars:play/armors/lvl_14
execute as @s[scores={Armor=15}] unless predicate bedwars:enchant_3/diamond run function bedwars:play/armors/lvl_15
