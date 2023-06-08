execute as @e[type=marker,tag=showcase1] at @s run kill @e[type=block_display,limit=2,sort=nearest,distance=..1,tag=showcase]
execute as @e[type=marker,tag=showcase1] at @s run kill @e[type=item_display,limit=1,sort=nearest,distance=..1,tag=showcase]
execute as @e[type=marker,tag=showcase1] at @s run kill @e[type=interaction,limit=1,sort=nearest,distance=..1,tag=showcase] 
execute as @e[type=marker,tag=showcase1] at @s run particle minecraft:block minecraft:glass ~ ~1 ~ .125 .125 .125 0 60
execute as @e[type=marker,tag=showcase1] at @s if block ~ ~2 ~ air run playsound minecraft:block.glass.break ambient @a[distance=..5] ~ ~1 ~ 1 1
execute as @e[type=marker,tag=showcase1] at @s run kill @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:oak_button"}},sort=nearest,limit=1]
execute as @e[type=marker,tag=showcase1,limit=1] at @s if entity @p[distance=..5,gamemode=survival] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Showcase","color":"yellow","italic":false}'},SkullOwner:{Id:[I;-2147039857,-724415339,-1171732274,248536439],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWU4Y2M5YWQ3YTg4NmFjZTRiZjQ5MTA1MmQwODQyMzYwMmU1N2NkNDA5MmY1ZjM1ZWMwY2FhODVkOWQyNGJkIn19fQ=="}]}}}}}
execute as @e[type=marker,tag=showcase1] at @s run kill @s