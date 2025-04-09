# Générer un nombre aléatoire entre 1 et 5
summon area_effect_cloud ~ ~ ~ {Tags:["passive_random"]}
execute store result score %passive_type random run data get entity @e[type=area_effect_cloud,tag=passive_random,limit=1] UUID[0] 1
scoreboard players operation %passive_type random %= %passive_count random
scoreboard players add %passive_type random 1
kill @e[type=area_effect_cloud,tag=passive_random]

# Faire apparaître l'animal correspondant 
# (S'assurer que le bloc en-dessous est approprié pour l'apparition)
execute if block ~ ~-1 ~ #minecraft:valid_spawn run function godlyalignement:vie_mort/do_passive_spawn