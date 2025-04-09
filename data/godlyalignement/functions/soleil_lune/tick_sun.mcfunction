# Avancer le temps de façon ralentie (facteur de ralentissement: 2)
# On soustrait 1 tick tous les 2 ticks de jeu
scoreboard players add %day_counter timer 1
execute if score %day_counter timer matches 2.. run time add 1
execute if score %day_counter timer matches 2.. run scoreboard players set %day_counter timer 0 