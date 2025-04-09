# verify_all_bars.mcfunction optimisé

# Ne vérifier qu'une fois par joueur (ou utiliser le tag debug)
execute as @r run function godlyalignement:soleil_lune/verify
execute as @r run function godlyalignement:vie_mort/verify
execute as @r run function godlyalignement:ordre_chaos/verify