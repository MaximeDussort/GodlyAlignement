# Vérifie si la jauge est en dessous de -75
execute if score #global Soleil_Lune matches ..-76 run function godlyalignement:soleil_lune/below_minus_75

# Vérifie si la jauge est au-dessus de 75
execute if score #global Soleil_Lune matches 76.. run function godlyalignement:soleil_lune/above_75

# Vérifie si la jauge est entre -75 et 75
execute if score #global Soleil_Lune matches -75..75 run function godlyalignement:soleil_lune/between