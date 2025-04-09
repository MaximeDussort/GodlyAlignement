# Tirage aléatoire pour déterminer si on applique un effet (1 chance sur 100)
scoreboard players set %max random 100
summon area_effect_cloud ~ ~ ~ {Tags:["random"]}
execute store result score %result random run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
scoreboard players operation %result random %= %max random
kill @e[type=area_effect_cloud,tag=random]

# Si le résultat est 0 (1 chance sur 100), on applique un effet aléatoire
execute if score %result random matches 0 run function godlyalignement:ordre_chaos/apply_random_effect