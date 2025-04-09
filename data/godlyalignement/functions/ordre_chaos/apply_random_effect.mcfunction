# Sélection d'un effet positif aléatoire
summon area_effect_cloud ~ ~ ~ {Tags:["effect_random"]}
execute store result score %effect random run data get entity @e[type=area_effect_cloud,tag=effect_random,limit=1] UUID[1] 1
scoreboard players set %effect_count random 12
scoreboard players operation %effect random %= %effect_count random
scoreboard players add %effect random 1
kill @e[type=area_effect_cloud,tag=effect_random]

# Application de l'effet sélectionné à tous les joueurs
execute if score %effect random matches 1 run effect give @a minecraft:speed 45 1
execute if score %effect random matches 2 run effect give @a minecraft:haste 45 1
execute if score %effect random matches 3 run effect give @a minecraft:strength 45 1
execute if score %effect random matches 4 run effect give @a minecraft:instant_health 1 1
execute if score %effect random matches 5 run effect give @a minecraft:jump_boost 45 1
execute if score %effect random matches 6 run effect give @a minecraft:regeneration 45 1
execute if score %effect random matches 7 run effect give @a minecraft:resistance 45 1
execute if score %effect random matches 8 run effect give @a minecraft:fire_resistance 45 1
execute if score %effect random matches 9 run effect give @a minecraft:water_breathing 45 1
execute if score %effect random matches 10 run effect give @a minecraft:invisibility 45 0
execute if score %effect random matches 11 run effect give @a minecraft:night_vision 45 0
execute if score %effect random matches 12 run effect give @a minecraft:absorption 45 1

# Message pour indiquer qu'un effet a été donné
tellraw @a {"text":"Le Chaos fais des siennes...","color":"#740000"}
execute as @a run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1
    