init()
{
    level thread onPlayerConnect();
}

onPlayerConnect()
{
    for(;;)
    {
        level waittill("connected", player);
        player thread onPlayerSpawned();
    }
}

onPlayerSpawned()
{
    self endon("disconnect");
    level endon("game_ended");
    for(;;)
    {
        self waittill("spawned_player");
        firstbox();
    }
}

firstbox()
{
    wait 5;
		
    self iprintln("^:Firstbox ^:Patch");
    level.magicboxweapons = [];

        var_1 = maps\mp\_utility::getmapname();
        switch ( var_1 )
        {
            case "mp_zombie_lab":
            if( level.wavecounter <= 19 ) //Removes all weapons except wanted ones till Round 20
            {
                addmagicboxweapon( "iw5_exocrossbowzm", "npc_crossbow_base_static_holo", &"ZOMBIES_CROSSBOW", "none", "none", "none" );
                addmagicboxweapon( "iw5_mahemzm", "npc_mahem_base_holo", &"ZOMBIES_MAHEM", "none", "none", "none" );
                addmagicboxweapon( "distraction_drone_zombie", "dlc_distraction_drone_01_holo", &"ZOMBIES_DISTRACTION_DRONE", "none", "none", "none", 2 );
                //addmagicboxweapon( "dna_aoe_grenade_zombie", "npc_exo_launcher_grenade_holo", &"ZOMBIES_DNA_AOE", "none", "none", "none", 2 );
            }    
            /*DO NOT EDIT THIS PART*/
            if( level.wavecounter > 19 ) //Puts all weapons back at Round 21
            {
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
                }
                break;

            case "mp_zombie_brg":
            if( level.wavecounter <= 19 )
            {
                addmagicboxweapon( "iw5_exocrossbowzm", "npc_crossbow_base_static_holo", &"ZOMBIES_CROSSBOW", "none", "none", "none" );
                addmagicboxweapon( "iw5_mahemzm", "npc_mahem_base_holo", &"ZOMBIES_MAHEM", "none", "none", "none" );
                addmagicboxweapon( "distraction_drone_zombie", "dlc_distraction_drone_01_holo", &"ZOMBIES_DISTRACTION_DRONE", "none", "none", "none", 2 );
                //addmagicboxweapon( "dna_aoe_grenade_zombie", "npc_exo_launcher_grenade_holo", &"ZOMBIES_DNA_AOE", "none", "none", "none", 2 );
            }
            /*DO NOT EDIT THIS PART*/
            if( level.wavecounter > 19 ) 
            {
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
                addmagicboxweapon( "iw5_microwavezm", "dlc_npc_microwave_gun_holo", &"ZOMBIES_MWG", "none", "none", "none", 1 );                
            }                
                break;

            case "mp_zombie_ark":
            if( level.wavecounter <= 19 )
            {
                addmagicboxweapon( "iw5_linegunzm", "npc_zom_line_gun_holo", &"ZOMBIE_WEAPON_LINEGUN_PICKUP", "none", "none", "none", 2 );
                addmagicboxweapon( "iw5_fusionzm", "npc_fusion_shotgun_base_holo", &"ZOMBIES_FUSION_RIFLE", "none", "none", "none", 2 );
                addmagicboxweapon( "distraction_drone_zombie", "dlc_distraction_drone_01_holo", &"ZOMBIES_DISTRACTION_DRONE", "none", "none", "none", 2 );
                //addmagicboxweapon( "dna_aoe_grenade_zombie", "npc_exo_launcher_grenade_holo", &"ZOMBIES_DNA_AOE", "none", "none", "none", 2 );
            }    
            /*DO NOT EDIT THIS PART*/
            if( level.wavecounter > 19 ) 
            {
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
                addmagicboxweapon( "repulsor_zombie", "dlc3_repulsor_device_01_holo", &"ZOMBIE_DLC3_REPULSOR", "none", "none", "none", 2);
                addmagicboxweapon( "iw5_dlcgun3zm", "npc_m1_irons_base_static_holo", &"ZOMBIE_WEAPONDLC3_GUN", "none", "none", "none" );
                addmagicboxweapon( "iw5_dlcgun2zm", "npc_lmg_shotgun_base_static_holo", &"ZOMBIE_WEAPONDLC2_GUN", "none", "none", "none" );                                               
            }
                break;

            case "mp_zombie_h2o":
            if( level.wavecounter <= 19 )
            {            
                addmagicboxweapon( "iw5_tridentzm", "npc_zom_trident_base_holo", &"ZOMBIE_WEAPON_TRIDENT_PICKUP", "none", "none", "none", 2 ); 
                addmagicboxweapon( "iw5_dlcgun4zm", "npc_blunderbuss_base_holo", &"ZOMBIE_WEAPONDLC4_GUN", "none", "none", "none", 2 ); 
                addmagicboxweapon( "distraction_drone_zombie", "dlc_distraction_drone_01_holo", &"ZOMBIES_DISTRACTION_DRONE", "none", "none", "none", 2 );
                //addmagicboxweapon( "dna_aoe_grenade_zombie", "npc_exo_launcher_grenade_holo", &"ZOMBIES_DNA_AOE", "none", "none", "none", 2 );
            }
            /*DO NOT EDIT THIS PART*/    
            if( level.wavecounter > 19 ) 
            {
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
                addmagicboxweapon( "iw5_tridentzm", "npc_zom_trident_base_holo", &"ZOMBIE_WEAPON_TRIDENT_PICKUP", "none", "none", "none", 2  );
                addmagicboxweapon( "iw5_dlcgun4zm", "npc_blunderbuss_base_holo", &"ZOMBIE_WEAPONDLC4_GUN", "none", "none", "none", 2 );     
                addmagicboxweapon( "repulsor_zombie", "dlc3_repulsor_device_01_holo", &"ZOMBIE_DLC3_REPULSOR", "none", "none", "none", 2);
                addmagicboxweapon( "iw5_dlcgun3zm", "npc_m1_irons_base_static_holo", &"ZOMBIE_WEAPONDLC3_GUN", "none", "none", "none" );
                addmagicboxweapon( "iw5_dlcgun2zm", "npc_lmg_shotgun_base_static_holo", &"ZOMBIE_WEAPONDLC2_GUN", "none", "none", "none" );                                             
            }
                break;
                    return;
        }
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
