# Créer des marqueurs de spawn autour des joueurs
execute as @a at @s run summon area_effect_cloud ~10 ~ ~10 {Duration:1,Tags:["passive_spawn"]}
execute as @a at @s run summon area_effect_cloud ~-10 ~ ~10 {Duration:1,Tags:["passive_spawn"]}
execute as @a at @s run summon area_effect_cloud ~10 ~ ~-10 {Duration:1,Tags:["passive_spawn"]}
execute as @a at @s run summon area_effect_cloud ~-10 ~ ~-10 {Duration:1,Tags:["passive_spawn"]}
execute as @a at @s run summon area_effect_cloud ~15 ~ ~ {Duration:1,Tags:["passive_spawn"]}

# Pour chaque marqueur, essayer de faire apparaître un animal aléatoire
execute at @e[type=area_effect_cloud,tag=passive_spawn,limit=5,sort=random] run function godlyalignement:vie_mort/spawn_random_passive
playsound minecraft:item.brush.brushing.generic master @a ~ ~ ~ 1 1 1

# Nettoyage
kill @e[type=area_effect_cloud,tag=passive_spawn]