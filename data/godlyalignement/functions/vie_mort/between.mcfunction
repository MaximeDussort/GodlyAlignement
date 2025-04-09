# Action à effectuer lorsque Vie_Mort est entre -75 et 75
tellraw @s {"text":"Le cycle de la vie et de la mort continue.","color":"#ffffff", "hoverEvent":{"action":"show_text","value":"Aucun changement notable."}}

# Donne une immunité temporaire aux joueurs avec le tag 'ordered' (par exemple, Résistance)
execute as @a run effect give @s resistance 10 255 true