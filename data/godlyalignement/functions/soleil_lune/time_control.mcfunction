# time_control.mcfunction optimisé

# Comparaison optimisée pour le cycle jour/nuit
execute store result score %daytime timer run time query daytime

# Définir les phases du jour (pour ne pas recalculer à chaque fois)
execute if score %daytime timer matches 0..12000 run scoreboard players set %is_day timer 1
execute if score %daytime timer matches 12001..24000 run scoreboard players set %is_day timer 0

# Optimiser les ralentissements jour/nuit
execute if score #global Soleil_Lune matches 75.. if score %is_day timer matches 1 run function godlyalignement:soleil_lune/tick_sun
execute if score #global Soleil_Lune matches ..-75 if score %is_day timer matches 0 run function godlyalignement:soleil_lune/tick_moon