# increase_hostile_spawns.mcfunction

# Vérifier si c'est la nuit ou si on est dans un endroit sombre
# On utilise une approche compatible avec 1.20.1
execute store result score %current_time random run time query daytime
execute if score %current_time random matches 13000..23000 run scoreboard players set %can_spawn random 1

# Si on est dans une dimension où il fait toujours sombre, on active aussi
execute as @a at @s if predicate godlyalignement:in_nether run scoreboard players set %can_spawn random 1
execute as @a at @s if predicate godlyalignement:in_end run scoreboard players set %can_spawn random 1

# Si les conditions sont réunies, on tente de faire apparaître des monstres
execute if score %can_spawn random matches 1 run function godlyalignement:vie_mort/do_hostile_spawn
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 0.2 1 0.2

# Réinitialiser le score
scoreboard players set %can_spawn random 0