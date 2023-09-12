init()
{
    level waittill( "zombie_wave_ended" );
    level.magicboxweapons = [];

        var_1 = maps\mp\_utility::getmapname();
        switch ( var_1 )
        {
            case "mp_zombie_lab":
                overrideBoxWeapons( "iw5_rhinozm", "npc_rhino_base_static_holo", &"ZOMBIES_RHINO", "none", "none", "none" );
                overrideBoxWeapons( "iw5_exocrossbowzm", "npc_crossbow_base_static_holo", &"ZOMBIES_CROSSBOW", "none", "none", "none" );
                overrideBoxWeapons( "iw5_mahemzm", "npc_mahem_base_holo", &"ZOMBIES_MAHEM", "none", "none", "none" );
                overrideBoxWeapons( "distraction_drone_zombie", "dlc_distraction_drone_01_holo", &"ZOMBIES_DISTRACTION_DRONE", "none", "none", "none", 2 );
                overrideBoxWeapons( "dna_aoe_grenade_zombie", "npc_exo_launcher_grenade_holo", &"ZOMBIES_DNA_AOE", "none", "none", "none", 2 );
                break;

            case "mp_zombie_brg":
                overrideBoxWeapons( "iw5_rhinozm", "npc_rhino_base_static_holo", &"ZOMBIES_RHINO", "none", "none", "none" );
                overrideBoxWeapons( "iw5_exocrossbowzm", "npc_crossbow_base_static_holo", &"ZOMBIES_CROSSBOW", "none", "none", "none" );
                overrideBoxWeapons( "iw5_mahemzm", "npc_mahem_base_holo", &"ZOMBIES_MAHEM", "none", "none", "none" );
                overrideBoxWeapons( "distraction_drone_zombie", "dlc_distraction_drone_01_holo", &"ZOMBIES_DISTRACTION_DRONE", "none", "none", "none", 2 );
                overrideBoxWeapons( "dna_aoe_grenade_zombie", "npc_exo_launcher_grenade_holo", &"ZOMBIES_DNA_AOE", "none", "none", "none", 2 );
                break;

            case "mp_zombie_ark":
                overrideBoxWeapons( "iw5_linegunzm", "npc_zom_line_gun_holo", &"ZOMBIE_WEAPON_LINEGUN_PICKUP", "none", "none", "none", 2 );
                overrideBoxWeapons( "dna_aoe_grenade_zombie", "npc_exo_launcher_grenade_holo", &"ZOMBIES_DNA_AOE", "none", "none", "none", 2 );
                overrideBoxWeapons( "iw5_rhinozm", "npc_rhino_base_static_holo", &"ZOMBIES_RHINO", "none", "none", "none" );
                overrideBoxWeapons( "distraction_drone_zombie", "dlc_distraction_drone_01_holo", &"ZOMBIES_DISTRACTION_DRONE", "none", "none", "none", 2 );
                break;

            case "mp_zombie_h2o":
                overrideBoxWeapons( "iw5_tridentzm", "npc_zom_trident_base_holo", &"ZOMBIE_WEAPON_TRIDENT_PICKUP", "none", "none", "none", 2 ); 
                overrideBoxWeapons( "iw5_dlcgun4zm", "npc_blunderbuss_base_holo", &"ZOMBIE_WEAPONDLC4_GUN", "none", "none", "none", 2 ); 
                overrideBoxWeapons( "dna_aoe_grenade_zombie", "npc_exo_launcher_grenade_holo", &"ZOMBIES_DNA_AOE", "none", "none", "none", 2 ); 
                overrideBoxWeapons( "distraction_drone_zombie", "dlc_distraction_drone_01_holo", &"ZOMBIES_DISTRACTION_DRONE", "none", "none", "none", 2 );
                break;

            default:
                return;
        }
    }

overrideBoxWeapons( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    if ( !isdefined( level.magicboxweapons ) )
        level.magicboxweapons = [];

    var_8 = level.magicboxweapons.size;
    level.magicboxweapons[var_8]["baseNameNoMP"] = var_0;
    level.magicboxweapons[var_8]["baseName"] = var_0 + "_mp";
    level.magicboxweapons[var_8]["fullName"] = var_0 + "_mp";
    level.magicboxweapons[var_8]["displayModel"] = var_1;
    level.magicboxweapons[var_8]["displayString"] = var_2;
    level.magicboxweapons[var_8]["attachment1"] = var_3;
    level.magicboxweapons[var_8]["attachment2"] = var_4;
    level.magicboxweapons[var_8]["attachment3"] = var_5;
    level.magicboxweapons[var_8]["limit"] = var_6;

    if ( isdefined( var_7 ) )
        level.magicboxweapons[var_8]["forceSelect"] = randomint( var_7 );

    if ( !maps\mp\zombies\_util::iszombieequipment( level.magicboxweapons[var_8]["baseName"] ) )
        level.magicboxweapons[var_8]["fullName"] = maps\mp\gametypes\_class::buildweaponname( var_0, var_3, var_4, var_5, 0, 0 );
}
