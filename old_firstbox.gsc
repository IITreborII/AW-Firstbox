init()
{
    level thread firstbox();
    level.mapName = maps\mp\_utility::getmapname();
}

firstbox()
{
    level endon( "game_ended" );
    level waittill( "zombie_wave_started" );
    iPrintLn( "Firstbox Patch" );
    level.magicboxweapons = [];
    
    switch ( level.mapName )
    {
    case "mp_zombie_lab":
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_exocrossbowzm", "npc_crossbow_base_static_holo", &"ZOMBIES_CROSSBOW", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_mahemzm", "npc_mahem_base_holo", &"ZOMBIES_MAHEM", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "distraction_drone_zombie", "dlc_distraction_drone_01_holo", &"ZOMBIES_DISTRACTION_DRONE", "none", "none", "none", 2 );
        break;

    case "mp_zombie_brg":
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_exocrossbowzm", "npc_crossbow_base_static_holo", &"ZOMBIES_CROSSBOW", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_mahemzm", "npc_mahem_base_holo", &"ZOMBIES_MAHEM", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "distraction_drone_zombie", "dlc_distraction_drone_01_holo", &"ZOMBIES_DISTRACTION_DRONE", "none", "none", "none", 2 );       
        break;

    case "mp_zombie_ark":
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_linegunzm", "npc_zom_line_gun_holo", &"ZOMBIE_WEAPON_LINEGUN_PICKUP", "none", "none", "none", 2 );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_fusionzm", "npc_fusion_shotgun_base_holo", &"ZOMBIES_FUSION_RIFLE", "none", "none", "none", 2 );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "distraction_drone_zombie", "dlc_distraction_drone_01_holo", &"ZOMBIES_DISTRACTION_DRONE", "none", "none", "none", 2 );
        break;

    case "mp_zombie_h2o":        
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_tridentzm", "npc_zom_trident_base_holo", &"ZOMBIE_WEAPON_TRIDENT_PICKUP", "none", "none", "none", 2 ); 
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_dlcgun4zm", "npc_blunderbuss_base_holo", &"ZOMBIE_WEAPONDLC4_GUN", "none", "none", "none", 2 ); 
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "distraction_drone_zombie", "dlc_distraction_drone_01_holo", &"ZOMBIES_DISTRACTION_DRONE", "none", "none", "none", 2 );
        break;
            return;
        }
    level thread checkWave();
}

checkWave()
{
 while (true)
    {
        level waittill( "zombie_wave_ended" );
        if ( level.wavecounter >= 15 ) 
        {
            returnBox();
        }
    }
}

returnBox()
{
    switch ( level.mapName ) 
        {
    case "mp_zombie_lab":
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_rw1zm", "npc_rw1_main_base_static_holo", &"ZOMBIES_RW1", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_vbrzm", "npc_vbr_base_static_holo", &"ZOMBIES_VBR", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_gm6zm", "npc_gm6_base_static_holo", &"ZOMBIES_GM6", "gm6scope", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_rhinozm", "npc_rhino_base_static_holo", &"ZOMBIES_RHINO", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_lsatzm", "npc_lsat_base_static_holo", &"ZOMBIES_LSAT", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_asawzm", "npc_ameli_base_static_holo", &"ZOMBIES_ASAW", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_ak12zm", "npc_ak12_base_static_holo", &"ZOMBIES_AK12", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_bal27zm", "npc_bal27_base_black_static_holo", &"ZOMBIES_BAL27", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_himarzm", "npc_himar_base_static_holo", &"ZOMBIES_IMR", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_asm1zm", "npc_asm1_base_static_holo", &"ZOMBIES_ASM1", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_sn6zm", "npc_sn6_base_black_static_holo", &"ZOMBIES_SN6", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_sac3zm", "npc_sac3_base_static_holo", &"ZOMBIES_SAC3", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_fusionzm", "npc_fusion_shotgun_base_holo", &"ZOMBIES_FUSION_RIFLE", "none", "none", "none", 2 );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "distraction_drone_zombie", "dlc_distraction_drone_01_holo", &"ZOMBIES_DISTRACTION_DRONE", "none", "none", "none", 2 );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "dna_aoe_grenade_zombie", "npc_exo_launcher_grenade_holo", &"ZOMBIES_DNA_AOE", "none", "none", "none", 2 );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_exocrossbowzm", "npc_crossbow_base_static_holo", &"ZOMBIES_CROSSBOW", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_mahemzm", "npc_mahem_base_holo", &"ZOMBIES_MAHEM", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_em1zm", "npc_em1_base_static_holo", &"ZOMBIES_EM1", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_dlcgun1zm", "npc_dear_base_static_holo", &"ZOMBIES_DLC_GUN_1", "none", "none", "none" );
            break;

    case "mp_zombie_brg":
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_rw1zm", "npc_rw1_main_base_static_holo", &"ZOMBIES_RW1", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_vbrzm", "npc_vbr_base_static_holo", &"ZOMBIES_VBR", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_gm6zm", "npc_gm6_base_static_holo", &"ZOMBIES_GM6", "gm6scope", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_rhinozm", "npc_rhino_base_static_holo", &"ZOMBIES_RHINO", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_lsatzm", "npc_lsat_base_static_holo", &"ZOMBIES_LSAT", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_asawzm", "npc_ameli_base_static_holo", &"ZOMBIES_ASAW", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_ak12zm", "npc_ak12_base_static_holo", &"ZOMBIES_AK12", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_bal27zm", "npc_bal27_base_black_static_holo", &"ZOMBIES_BAL27", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_himarzm", "npc_himar_base_static_holo", &"ZOMBIES_IMR", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_asm1zm", "npc_asm1_base_static_holo", &"ZOMBIES_ASM1", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_sn6zm", "npc_sn6_base_black_static_holo", &"ZOMBIES_SN6", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_sac3zm", "npc_sac3_base_static_holo", &"ZOMBIES_SAC3", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_fusionzm", "npc_fusion_shotgun_base_holo", &"ZOMBIES_FUSION_RIFLE", "none", "none", "none", 2 );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "distraction_drone_zombie", "dlc_distraction_drone_01_holo", &"ZOMBIES_DISTRACTION_DRONE", "none", "none", "none", 2 );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "dna_aoe_grenade_zombie", "npc_exo_launcher_grenade_holo", &"ZOMBIES_DNA_AOE", "none", "none", "none", 2 );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_exocrossbowzm", "npc_crossbow_base_static_holo", &"ZOMBIES_CROSSBOW", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_mahemzm", "npc_mahem_base_holo", &"ZOMBIES_MAHEM", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_em1zm", "npc_em1_base_static_holo", &"ZOMBIES_EM1", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_dlcgun1zm", "npc_dear_base_static_holo", &"ZOMBIES_DLC_GUN_1", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_microwavezm", "dlc_npc_microwave_gun_holo", &"ZOMBIES_MWG", "none", "none", "none", 1 );
            break;

    case "mp_zombie_ark":
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_rw1zm", "npc_rw1_main_base_static_holo", &"ZOMBIES_RW1", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_vbrzm", "npc_vbr_base_static_holo", &"ZOMBIES_VBR", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_gm6zm", "npc_gm6_base_static_holo", &"ZOMBIES_GM6", "gm6scope", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_rhinozm", "npc_rhino_base_static_holo", &"ZOMBIES_RHINO", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_lsatzm", "npc_lsat_base_static_holo", &"ZOMBIES_LSAT", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_asawzm", "npc_ameli_base_static_holo", &"ZOMBIES_ASAW", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_ak12zm", "npc_ak12_base_static_holo", &"ZOMBIES_AK12", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_bal27zm", "npc_bal27_base_black_static_holo", &"ZOMBIES_BAL27", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_himarzm", "npc_himar_base_static_holo", &"ZOMBIES_IMR", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_asm1zm", "npc_asm1_base_static_holo", &"ZOMBIES_ASM1", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_sn6zm", "npc_sn6_base_black_static_holo", &"ZOMBIES_SN6", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_sac3zm", "npc_sac3_base_static_holo", &"ZOMBIES_SAC3", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_fusionzm", "npc_fusion_shotgun_base_holo", &"ZOMBIES_FUSION_RIFLE", "none", "none", "none", 2 );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "distraction_drone_zombie", "dlc_distraction_drone_01_holo", &"ZOMBIES_DISTRACTION_DRONE", "none", "none", "none", 2 );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "dna_aoe_grenade_zombie", "npc_exo_launcher_grenade_holo", &"ZOMBIES_DNA_AOE", "none", "none", "none", 2 );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_exocrossbowzm", "npc_crossbow_base_static_holo", &"ZOMBIES_CROSSBOW", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_mahemzm", "npc_mahem_base_holo", &"ZOMBIES_MAHEM", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_em1zm", "npc_em1_base_static_holo", &"ZOMBIES_EM1", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_dlcgun1zm", "npc_dear_base_static_holo", &"ZOMBIES_DLC_GUN_1", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "repulsor_zombie", "dlc3_repulsor_device_01_holo", &"ZOMBIE_DLC3_REPULSOR", "none", "none", "none", 2);
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_dlcgun3zm", "npc_m1_irons_base_static_holo", &"ZOMBIE_WEAPONDLC3_GUN", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_dlcgun2zm", "npc_lmg_shotgun_base_static_holo", &"ZOMBIE_WEAPONDLC2_GUN", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_linegunzm", "npc_zom_line_gun_holo", &"ZOMBIE_WEAPON_LINEGUN_PICKUP", "none", "none", "none", 2 );
            break;

    case "mp_zombie_h2o":
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_rw1zm", "npc_rw1_main_base_static_holo", &"ZOMBIES_RW1", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_vbrzm", "npc_vbr_base_static_holo", &"ZOMBIES_VBR", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_gm6zm", "npc_gm6_base_static_holo", &"ZOMBIES_GM6", "gm6scope", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_rhinozm", "npc_rhino_base_static_holo", &"ZOMBIES_RHINO", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_lsatzm", "npc_lsat_base_static_holo", &"ZOMBIES_LSAT", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_asawzm", "npc_ameli_base_static_holo", &"ZOMBIES_ASAW", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_ak12zm", "npc_ak12_base_static_holo", &"ZOMBIES_AK12", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_bal27zm", "npc_bal27_base_black_static_holo", &"ZOMBIES_BAL27", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_himarzm", "npc_himar_base_static_holo", &"ZOMBIES_IMR", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_asm1zm", "npc_asm1_base_static_holo", &"ZOMBIES_ASM1", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_sn6zm", "npc_sn6_base_black_static_holo", &"ZOMBIES_SN6", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_sac3zm", "npc_sac3_base_static_holo", &"ZOMBIES_SAC3", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_fusionzm", "npc_fusion_shotgun_base_holo", &"ZOMBIES_FUSION_RIFLE", "none", "none", "none", 2 );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "distraction_drone_zombie", "dlc_distraction_drone_01_holo", &"ZOMBIES_DISTRACTION_DRONE", "none", "none", "none", 2 );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "dna_aoe_grenade_zombie", "npc_exo_launcher_grenade_holo", &"ZOMBIES_DNA_AOE", "none", "none", "none", 2 );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_exocrossbowzm", "npc_crossbow_base_static_holo", &"ZOMBIES_CROSSBOW", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_mahemzm", "npc_mahem_base_holo", &"ZOMBIES_MAHEM", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_em1zm", "npc_em1_base_static_holo", &"ZOMBIES_EM1", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_dlcgun1zm", "npc_dear_base_static_holo", &"ZOMBIES_DLC_GUN_1", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_tridentzm", "npc_zom_trident_base_holo", &"ZOMBIE_WEAPON_TRIDENT_PICKUP", "none", "none", "none", 2  );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_dlcgun4zm", "npc_blunderbuss_base_holo", &"ZOMBIE_WEAPONDLC4_GUN", "none", "none", "none", 2 );     
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "repulsor_zombie", "dlc3_repulsor_device_01_holo", &"ZOMBIE_DLC3_REPULSOR", "none", "none", "none", 2);
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_dlcgun3zm", "npc_m1_irons_base_static_holo", &"ZOMBIE_WEAPONDLC3_GUN", "none", "none", "none" );
        maps\mp\zombies\_wall_buys::addmagicboxweapon( "iw5_dlcgun2zm", "npc_lmg_shotgun_base_static_holo", &"ZOMBIE_WEAPONDLC2_GUN", "none", "none", "none" );
            break;
        }
    iPrintLn( "Firstbox Off" );
}
