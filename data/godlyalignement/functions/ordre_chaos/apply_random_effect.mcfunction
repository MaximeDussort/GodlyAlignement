# ordre_chaos/apply_random_effect.mcfunction optimisé

# Utiliser un système moins coûteux pour la sélection d'effet
scoreboard players set %effect_max random 12
function godlyalignement:system/get_random_value
scoreboard players operation %effect random = %result random
scoreboard players add %effect random 1

# Utiliser une technique d'application d'effet plus efficace
execute if score %effect random matches 1 run effect give @a minecraft:speed 45 1
execute if score %effect random matches 2 run effect give @a minecraft:haste 45 1
execute if score %effect random matches 3..4 run function godlyalignement:ordre_chaos/effects_group1
execute if score %effect random matches 5..8 run function godlyalignement:ordre_chaos/effects_group2
execute if score %effect random matches 9..12 run function godlyalignement:ordre_chaos/effects_group3

# Message et son seulement si un effet a été appliqué
tellraw @a {"text":"Le Chaos fait des siennes...","color":"#740000"}
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 0.3 1 0.3