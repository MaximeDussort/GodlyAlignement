# vie_mort/tick_death.mcfunction optimisé

# Vérifier les conditions une seule fois
execute store result score %current_time random run time query daytime
execute if score %current_time random matches 13000..23000 run scoreboard players set %can_spawn random 1

# Ne vérifier les dimensions que pour un joueur aléatoire
execute as @r at @s if predicate godlyalignement:in_nether run scoreboard players set %can_spawn random 1
execute as @r at @s if predicate godlyalignement:in_end run scoreboard players set %can_spawn random 1

# Choisir un joueur cible pour le spawn plutôt que de faire plusieurs spawns
execute if score %can_spawn random matches 1 run tag @r add hostile_target
execute if score %can_spawn random matches 1 at @a[tag=hostile_target,limit=1] run function godlyalignement:vie_mort/do_hostile_spawn
tag @a remove hostile_target

# Jouer le son une seule fois
execute if score %can_spawn random matches 1 run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 0.2 1 0.2

# Réinitialiser le score
scoreboard players set %can_spawn random 0