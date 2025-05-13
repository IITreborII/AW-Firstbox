init()
{
    level thread mapweaponnamestonumbers();
    initmagicboxweapons();
    level thread firstbox(); 
}

firstbox()
{
    level endon("game_ended");
    level waittill("zombie_wave_started");
    iPrintLn("Firstbox Patch");
    
    common_scripts\utility::flag_wait("magic_box_init");
    getMapName = maps\mp\_utility::getmapname();

    level.original_magicboxweapons = [];
    foreach(idx, weapon in level.magicboxweapons) {
        level.original_magicboxweapons[idx] = weapon;
    }

    switch(getMapName)
    {
        case "mp_zombie_lab":
            level.ordered_weapons = [
                "iw5_rhinozm_mp",  
                "dna_aoe_grenade_zombie_mp",
                "iw5_mahemzm_mp"
            ];
            break;

        case "mp_zombie_brg":
            level.ordered_weapons = [
                "iw5_fusionzm_mp",  
                "dna_aoe_grenade_zombie_mp",
                "iw5_mahemzm_mp"
            ];
            break;

        case "mp_zombie_ark":
            level.ordered_weapons = [
                "iw5_fusionzm_mp",  
                "dna_aoe_grenade_zombie_mp",
                "iw5_linegunzm_mp"
            ];
            break;

        case "mp_zombie_h2o":
            level.ordered_weapons = [
                "iw5_rhinozm_mp",  
                "dna_aoe_grenade_zombie_mp",
                "iw5_tridentzm_mp"
            ];
            break;
                return;
    }

    // Give Weapon in exact order (Doesnt work yet lol)
    level.magicboxweapons = [];
    foreach(baseName in level.ordered_weapons) {
        foreach(idx, weapon in level.original_magicboxweapons) {
            if(weapon["baseName"] == baseName) {
                level.magicboxweapons[level.magicboxweapons.size] = weapon;
                break;
            }
        }
    }

    level.custom_box_index = 0;
    level thread returnBox();
}

returnBox()
{
    level waittill("zombie_wave_ended");
    iPrintLn("Firstbox Off");

    while(true) {
        if(level.zombie_round_number >= 20 && !level.box_restored) {
            level.magicboxweapons = [];
            foreach(idx, weapon in level.original_magicboxweapons) {
                level.magicboxweapons[idx] = weapon;
            }
            level.box_restored = true;
            level.custom_box_index = 0;
            break;
        }
        wait 5;
    }
}

selectmagicboxweapon(var_0, var_1)
{
    if(!level.box_restored && level.zombie_round_number < 20) 
    {
        if(isdefined(level.ordered_weapons) && level.ordered_weapons.size > 0) {

            weapon_index = level.custom_box_index % level.ordered_weapons.size;
            weapon_name = level.ordered_weapons[weapon_index];
            
            foreach(weapon in level.magicboxweapons) {
                if(weapon["baseName"] == weapon_name) {
                    level.custom_box_index++;
                    return weapon;
                }
            }
        }
    }
    
    // Original random selection
    var_2 = [];
    var_4 = var_0 getweaponslistall();
    var_5 = [];

    foreach (var_7 in var_4)
        var_5[var_5.size] = getweaponbasename(var_7);

    foreach (var_14, var_10 in level.magicboxweapons)
    {
        var_11 = 1;

        foreach (var_7 in var_5)
        {
            if (var_10["baseName"] == var_7)
            {
                var_11 = 0;
                break;
            }
        }

        if (var_1.lastweapon == var_10["baseName"])
            var_11 = 0;

        if (islimitreached(var_10))
            var_11 = 0;

        if (isdefined(var_10["forceSelect"]))
        {
            if (var_10["forceSelect"] <= level.magicboxuses)
            {
                level.magicboxweapons[var_14]["forceSelect"] = undefined;
                var_2 = [var_10];
                break;
            }
            else
                var_11 = 0;
        }

        if (var_11)
            var_2[var_2.size] = var_10;
    }

    if (var_2.size > 0)
        return var_2[randomint(var_2.size)];
    
    return level.magicboxweapons[randomint(level.magicboxweapons.size)];
}

islimitreached( var_0 )
{
    if ( !isdefined( var_0["limit"] ) )
        return 0;

    var_1 = level.ondeckweapons;

    foreach (var_3 in level.players)
    {
        var_4 = var_3 getweaponslistall();
        var_1 = common_scripts\utility::array_combine( var_1, var_4 );
    }

    var_6 = 0;
    var_7 = var_0["limit"];

    foreach (var_9 in var_1)
    {
        var_10 = getweaponbasename(var_9);

        if (var_10 == var_0["baseName"])
            var_6++;
    }

    return var_6 >= var_7;
}

mapweaponnamestonumbers()
{
    level.weaponnamemap = [];
    level.weaponnamemap["iw5_rw1zm_mp"] = 1;
    level.weaponnamemap["iw5_vbrzm_mp"] = 2;
    level.weaponnamemap["iw5_gm6zm_mp"] = 3;
    level.weaponnamemap["iw5_rhinozm_mp"] = 4;
    level.weaponnamemap["iw5_lsatzm_mp"] = 5;
    level.weaponnamemap["iw5_asawzm_mp"] = 6;
    level.weaponnamemap["iw5_ak12zm_mp"] = 7;
    level.weaponnamemap["iw5_bal27zm_mp"] = 8;
    level.weaponnamemap["iw5_himarzm_mp"] = 9;
    level.weaponnamemap["iw5_asm1zm_mp"] = 10;
    level.weaponnamemap["iw5_sn6zm_mp"] = 11;
    level.weaponnamemap["iw5_sac3zm_mp"] = 12;
    level.weaponnamemap["iw5_fusionzm_mp"] = 13;
    level.weaponnamemap["distraction_drone_zombie_mp"] = 14;
    level.weaponnamemap["dna_aoe_grenade_zombie_mp"] = 15;
    level.weaponnamemap["iw5_exocrossbowzm_mp"] = 16;
    level.weaponnamemap["iw5_mahemzm_mp"] = 17;
    level.weaponnamemap["iw5_em1zm_mp"] = 18;
    level.weaponnamemap["iw5_dlcgun1zm_mp"] = 19;
    level.weaponnamemap["iw5_arx160zm_mp"] = 20;
    level.weaponnamemap["iw5_mp11zm_mp"] = 21;
    level.weaponnamemap["explosive_drone_zombie_mp"] = 22;
    level.weaponnamemap["contact_grenade_zombies_mp"] = 23;
    level.weaponnamemap["iw5_hbra3zm_mp"] = 24;
    level.weaponnamemap["iw5_hmr9zm_mp"] = 25;
    level.weaponnamemap["iw5_maulzm_mp"] = 26;
    level.weaponnamemap["iw5_m182sprzm_mp"] = 27;
    level.weaponnamemap["iw5_uts19zm_mp"] = 28;
    level.weaponnamemap["contact_grenade_throw_zombies_mp"] = 29;
    level.weaponnamemap["explosive_drone_throw_zombie_mp"] = 30;
    level.weaponnamemap["distraction_drone_throw_zombie_mp"] = 31;
    level.weaponnamemap["dna_aoe_grenade_throw_zombie_mp"] = 32;
    level.weaponnamemap["iw5_titan45zm_mp"] = 33;
    level.weaponnamemap["LastStand"] = 34;
    level.weaponnamemap["iw5_microwavezm_mp"] = 35;
    level.weaponnamemap["iw5_linegunzm_mp"] = 36;
    level.weaponnamemap["frag_grenade_zombies_mp"] = 37;
    level.weaponnamemap["frag_grenade_throw_zombies_mp"] = 38;
    level.weaponnamemap["iw5_dlcgun2zm_mp"] = 39;
    level.weaponnamemap["iw5_dlcgun3zm_mp"] = 40;
    level.weaponnamemap["teleport_zombies_mp"] = 41;
    level.weaponnamemap["repulsor_zombie_mp"] = 42;
    level.weaponnamemap["iw5_tridentzm_mp"] = 43;
    level.weaponnamemap["iw5_dlcgun4zm_mp"] = 44;
    level.weaponnamemap["iw5_exominigunzm_mp"] = 45;
    level.weaponnamemap["playermech_rocket_zm_mp"] = 46;
    level.weaponnamemap["iw5_juggernautrocketszm_mp"] = 47;
    level.weaponnamemap["playermech_rocket_swarm_zm_mp"] = 48;
}

initmagicboxweapons()
{
    level.magicboxuses = 0;
    level.ondeckweapons = [];
    addmagicboxweapon( "iw5_rw1zm", "npc_rw1_main_base_static_holo", &"ZOMBIES_RW1", "none", "none", "none" );
    addmagicboxweapon( "iw5_vbrzm", "npc_vbr_base_static_holo", &"ZOMBIES_VBR", "none", "none", "none" );
    addmagicboxweapon( "iw5_gm6zm", "npc_gm6_base_static_holo", &"ZOMBIES_GM6", "gm6scope", "none", "none" );
    addmagicboxweapon( "iw5_rhinozm", "npc_rhino_base_static_holo", &"ZOMBIES_RHINO", "none", "none", "none" );
    addmagicboxweapon( "iw5_lsatzm", "npc_lsat_base_static_holo", &"ZOMBIES_LSAT", "none", "none", "none" );
    addmagicboxweapon( "iw5_asawzm", "npc_ameli_base_static_holo", &"ZOMBIES_ASAW", "none", "none", "none" );
    addmagicboxweapon( "iw5_ak12zm", "npc_ak12_base_static_holo", &"ZOMBIES_AK12", "none", "none", "none" );
    addmagicboxweapon( "iw5_bal27zm", "npc_bal27_base_black_static_holo", &"ZOMBIES_BAL27", "none", "none", "none" );
    addmagicboxweapon( "iw5_himarzm", "npc_himar_base_static_holo", &"ZOMBIES_IMR", "none", "none", "none" );
    addmagicboxweapon( "iw5_asm1zm", "npc_asm1_base_static_holo", &"ZOMBIES_ASM1", "none", "none", "none" );
    addmagicboxweapon( "iw5_sn6zm", "npc_sn6_base_black_static_holo", &"ZOMBIES_SN6", "none", "none", "none" );
    addmagicboxweapon( "iw5_sac3zm", "npc_sac3_base_static_holo", &"ZOMBIES_SAC3", "none", "none", "none" );
    addmagicboxweapon( "iw5_fusionzm", "npc_fusion_shotgun_base_holo", &"ZOMBIES_FUSION_RIFLE", "none", "none", "none", 2 );
    addmagicboxweapon( "distraction_drone_zombie", "dlc_distraction_drone_01_holo", &"ZOMBIES_DISTRACTION_DRONE", "none", "none", "none", 2 );
    addmagicboxweapon( "dna_aoe_grenade_zombie", "npc_exo_launcher_grenade_holo", &"ZOMBIES_DNA_AOE", "none", "none", "none", 2 );
    addmagicboxweapon( "iw5_exocrossbowzm", "npc_crossbow_base_static_holo", &"ZOMBIES_CROSSBOW", "none", "none", "none" );
    addmagicboxweapon( "iw5_mahemzm", "npc_mahem_base_holo", &"ZOMBIES_MAHEM", "none", "none", "none" );
    addmagicboxweapon( "iw5_em1zm", "npc_em1_base_static_holo", &"ZOMBIES_EM1", "none", "none", "none" );
    addmagicboxweapon( "iw5_dlcgun1zm", "npc_dear_base_static_holo", &"ZOMBIES_DLC_GUN_1", "none", "none", "none" );

    if ( isdefined( level.initmagicboxweaponsfunc ) )
        [[ level.initmagicboxweaponsfunc ]]();
}

addmagicboxweapon( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
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
