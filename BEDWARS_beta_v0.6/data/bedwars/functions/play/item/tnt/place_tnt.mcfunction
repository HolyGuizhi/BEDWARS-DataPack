#Guizhi

scoreboard players set tntloop num 0
advancement revoke @s only bedwars:place_tnt

# 完整範圍偵測
execute positioned ~ ~0.5 ~ run function bedwars:play/item/tnt/search/main

# 精確視線偵測(已棄用)
# execute if score playing num matches 1 anchored eyes positioned ^ ^ ^0.01 run function bedwars:play/item/tnt/loop
