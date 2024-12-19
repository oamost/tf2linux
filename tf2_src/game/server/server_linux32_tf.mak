ifneq "$(LINUX_TOOLS_PATH)" ""
TOOL_PATH = $(LINUX_TOOLS_PATH)/
endif

NAME=server_tf
SRCROOT=../..
TARGET_PLATFORM=linux32
TARGET_PLATFORM_EXT=
USE_VALVE_BINDIR=0
PWD:=$(shell $(TOOL_PATH)pwd)
# If no configuration is specified, "release" will be used.
ifeq "$(CFG)" ""
	CFG = debug
endif

#
#
# CFG=debug
#
#

ifeq "$(CFG)" "debug"

GCC_ExtraCompilerFlags=
GCC_ExtraLinkerFlags=
GCC_CustomVersionScript=
EntryPoint=
IgnoreAllDefaultLibraries=no
BufferSecurityCheck=Yes
SymbolVisibility=hidden
TreatWarningsAsErrors=false
OptimizerLevel=-gdwarf-4 -g2 $(OptimizerLevel_CompilerSpecific)
SystemLibraries=
DLL_EXT=.so
SYM_EXT=.dbg
FORCEINCLUDES= 
DEFINES= -w -DVPC -DDEBUG -D_DEBUG -DGNUC -DPOSIX -DCOMPILER_GCC -D_DLL_EXT=.so -D_LINUX -DLINUX -DPOSIX -D_POSIX -DDLLNAME=server -DBINK_VIDEO -DGL_GLEXT_PROTOTYPES -DDX_TO_GL_ABSTRACTION -DUSE_SDL -DDEV_BUILD -DFRAME_POINTER_OMISSION_DISABLED -DREPLAY_ENABLED -DGAME_DLL -DVECTOR -DVERSION_SAFE_STEAM_API_INTERFACES -DPROTECTED_THINGS_ENABLE -Dsprintf=use_Q_snprintf_instead_of_sprintf -Dstrncpy=use_Q_strncpy_instead -D_snprintf=use_Q_snprintf_instead -DSWDS -DUSES_ECON_ITEMS -DUSE_NAV_MESH -DTF_DLL -DENABLE_GC_MATCHMAKING -DGLOWS_ENABLE -DUSE_DYNAMIC_ASSET_LOADING -DNEXT_BOT -D_EXTERNAL_DLL_EXT=.so -DVPCGAMECAPS=VALVE -DPROJECTDIR=/run/media/dt/5126d622-6bab-492e-9d3d-c8f1263ce69c/tf2linux/tf2_src/game/server -D_DLL_EXT=.so -DSOURCE1=1 -DVPCGAME=valve -D_LINUX=1 -D_POSIX=1 -DLINUX=1 -DPOSIX=1 
INCLUDEDIRS += ../../common ../../public ../../public/tier0 ../../public/tier1 ../../thirdparty/SDL2 ../../game/server/generated_proto_tf ../../thirdparty/protobuf-2.6.1/src ./ ../../game/shared ../../utils/common ../../game/shared/econ ../../game/server/NextBot ../../game/server/generated_proto_tf ../../thirdparty/protobuf-2.6.1/src ../../gcsdk/steamextra ../../game/shared/hl2 ./tf ./tf/vgui ../../statemachine ../../game/shared/Multiplayer ../../game/shared/tf 
CONFTYPE=dll
IMPORTLIBRARY=
GAMEOUTPUTFILE=../../../game/tf/bin/server.so
TARGETCOPIES=
OUTPUTFILE=$(OBJ_DIR)/server.so


POSTBUILDCOMMAND=/bin/true



CPPFILES= \
    ../../common/crypto.cpp \
    ../../common/language.cpp \
    ../../common/randoverride.cpp \
    ../../common/steamid.cpp \
    ../../game/server/generated_proto_tf/base_gcmessages.pb.cc \
    ../../game/server/generated_proto_tf/econ_gcmessages.pb.cc \
    ../../game/server/generated_proto_tf/gcsystemmsgs.pb.cc \
    ../../game/server/generated_proto_tf/steammessages.pb.cc \
    ../../game/server/generated_proto_tf/tf_gcmessages.pb.cc \
    ../../game/server/serverbenchmark_base.cpp \
    ../../game/server/tf/serverbenchmark_tf.cpp \
    ../../game/server/tf/tf_gc_api.cpp \
    ../../game/server/tf/tf_gc_server.cpp \
    ../../game/server/tf/tf_voteissues.cpp \
    ../../game/server/tf/workshop/maps_workshop.cpp \
    ../../game/server/vote_controller.cpp \
    ../../game/shared/achievementmgr.cpp \
    ../../game/shared/achievements_hlx.cpp \
    ../../game/shared/achievement_saverestore.cpp \
    ../../game/shared/activitylist.cpp \
    ../../game/shared/ammodef.cpp \
    ../../game/shared/animation.cpp \
    ../../game/shared/baseachievement.cpp \
    ../../game/shared/basecombatcharacter_shared.cpp \
    ../../game/shared/basecombatweapon_shared.cpp \
    ../../game/shared/baseentity_shared.cpp \
    ../../game/shared/basegrenade_shared.cpp \
    ../../game/shared/baseparticleentity.cpp \
    ../../game/shared/baseplayer_shared.cpp \
    ../../game/shared/baseprojectile.cpp \
    ../../game/shared/baseviewmodel_shared.cpp \
    ../../game/shared/base_playeranimstate.cpp \
    ../../game/shared/beam_shared.cpp \
    ../../game/shared/collisionproperty.cpp \
    ../../game/shared/death_pose.cpp \
    ../../game/shared/debugoverlay_shared.cpp \
    ../../game/shared/decals.cpp \
    ../../game/shared/econ/attribute_manager.cpp \
    ../../game/shared/econ/econ_claimcode.cpp \
    ../../game/shared/econ/econ_dynamic_recipe.cpp \
    ../../game/shared/econ/econ_entity.cpp \
    ../../game/shared/econ/econ_entity_creation.cpp \
    ../../game/shared/econ/econ_holidays.cpp \
    ../../game/shared/econ/econ_item.cpp \
    ../../game/shared/econ/econ_item_constants.cpp \
    ../../game/shared/econ/econ_item_interface.cpp \
    ../../game/shared/econ/econ_item_inventory.cpp \
    ../../game/shared/econ/econ_item_preset.cpp \
    ../../game/shared/econ/econ_item_schema.cpp \
    ../../game/shared/econ/econ_item_system.cpp \
    ../../game/shared/econ/econ_item_tools.cpp \
    ../../game/shared/econ/econ_item_view.cpp \
    ../../game/shared/econ/econ_quests.cpp \
    ../../game/shared/econ/econ_wearable.cpp \
    ../../game/shared/econ/item_selection_criteria.cpp \
    ../../game/shared/econ/localization_provider.cpp \
    ../../game/shared/effect_dispatch_data.cpp \
    ../../game/shared/ehandle.cpp \
    ../../game/shared/entitylist_base.cpp \
    ../../game/shared/EntityParticleTrail_Shared.cpp \
    ../../game/shared/env_detail_controller.cpp \
    ../../game/shared/env_wind_shared.cpp \
    ../../game/shared/eventlist.cpp \
    ../../game/shared/func_ladder.cpp \
    ../../game/shared/gamemovement.cpp \
    ../../game/shared/gamerules.cpp \
    ../../game/shared/gamerules_register.cpp \
    ../../game/shared/GameStats.cpp \
    ../../game/shared/gamestringpool.cpp \
    ../../game/shared/gamevars_shared.cpp \
    ../../game/shared/gc_clientsystem.cpp \
    ../../game/shared/gc_replicated_convars.cpp \
    ../../game/shared/hintmessage.cpp \
    ../../game/shared/hintsystem.cpp \
    ../../game/shared/hl2/survival_gamerules.cpp \
    ../../game/shared/igamesystem.cpp \
    ../../game/shared/interval.cpp \
    ../../game/shared/lobby.cpp \
    ../../game/shared/mapentities_shared.cpp \
    ../../game/shared/ModelSoundsCache.cpp \
    ../../game/shared/movevars_shared.cpp \
    ../../game/shared/mp_shareddefs.cpp \
    ../../game/shared/Multiplayer/multiplayer_animstate.cpp \
    ../../game/shared/multiplay_gamerules.cpp \
    ../../game/shared/obstacle_pushaway.cpp \
    ../../game/shared/particlesystemquery.cpp \
    ../../game/shared/particle_parse.cpp \
    ../../game/shared/physics_main_shared.cpp \
    ../../game/shared/physics_saverestore.cpp \
    ../../game/shared/physics_shared.cpp \
    ../../game/shared/playerclass_info_parse.cpp \
    ../../game/shared/point_bonusmaps_accessor.cpp \
    ../../game/shared/point_posecontroller.cpp \
    ../../game/shared/precache_register.cpp \
    ../../game/shared/predictableid.cpp \
    ../../game/shared/props_shared.cpp \
    ../../game/shared/querycache.cpp \
    ../../game/shared/ragdoll_shared.cpp \
    ../../game/shared/replay_gamestats_shared.cpp \
    ../../game/shared/rope_helpers.cpp \
    ../../game/shared/saverestore.cpp \
    ../../game/shared/SceneCache.cpp \
    ../../game/shared/sceneentity_shared.cpp \
    ../../game/shared/sequence_Transitioner.cpp \
    ../../game/shared/sheetsimulator.cpp \
    ../../game/shared/simtimer.cpp \
    ../../game/shared/singleplay_gamerules.cpp \
    ../../game/shared/SoundEmitterSystem.cpp \
    ../../game/shared/soundenvelope.cpp \
    ../../game/shared/Sprite.cpp \
    ../../game/shared/SpriteTrail.cpp \
    ../../game/shared/steamworks_gamestats.cpp \
    ../../game/shared/studio_shared.cpp \
    ../../game/shared/takedamageinfo.cpp \
    ../../game/shared/teamplayroundbased_gamerules.cpp \
    ../../game/shared/teamplay_gamerules.cpp \
    ../../game/shared/teamplay_round_timer.cpp \
    ../../game/shared/test_ehandle.cpp \
    ../../game/shared/tf/achievements_tf.cpp \
    ../../game/shared/tf/achievements_tf_demoman.cpp \
    ../../game/shared/tf/achievements_tf_engineer.cpp \
    ../../game/shared/tf/achievements_tf_halloween.cpp \
    ../../game/shared/tf/achievements_tf_heavy.cpp \
    ../../game/shared/tf/achievements_tf_maps.cpp \
    ../../game/shared/tf/achievements_tf_medic.cpp \
    ../../game/shared/tf/achievements_tf_mvm.cpp \
    ../../game/shared/tf/achievements_tf_pyro.cpp \
    ../../game/shared/tf/achievements_tf_scout.cpp \
    ../../game/shared/tf/achievements_tf_sniper.cpp \
    ../../game/shared/tf/achievements_tf_soldier.cpp \
    ../../game/shared/tf/achievements_tf_spy.cpp \
    ../../game/shared/tf/baseobject_shared.cpp \
    ../../game/shared/tf/entity_bonuspack.cpp \
    ../../game/shared/tf/entity_capture_flag.cpp \
    ../../game/shared/tf/entity_halloween_pickup.cpp \
    ../../game/shared/tf/halloween/eyeball_boss/teleport_vortex.cpp \
    ../../game/shared/tf/halloween/tf_weapon_spellbook.cpp \
    ../../game/shared/tf/passtime_convars.cpp \
    ../../game/shared/tf/passtime_game_events.cpp \
    ../../game/shared/tf/quest_objective_manager.cpp \
    ../../game/shared/tf/quest_objective_trackers.cpp \
    ../../game/shared/tf/shared_object_tracker.cpp \
    ../../game/shared/tf/tf_classdata.cpp \
    ../../game/shared/tf/tf_condition.cpp \
    ../../game/shared/tf/tf_dropped_weapon.cpp \
    ../../game/shared/tf/tf_duckleaderboard.cpp \
    ../../game/shared/tf/tf_fx_shared.cpp \
    ../../game/shared/tf/tf_gamemovement.cpp \
    ../../game/shared/tf/tf_gamerules.cpp \
    ../../game/shared/tf/tf_gamestats_shared.cpp \
    ../../game/shared/tf/tf_gcmessages.cpp \
    ../../game/shared/tf/tf_generic_bomb.cpp \
    ../../game/shared/tf/tf_halloween_souls_pickup.cpp \
    ../../game/shared/tf/tf_item.cpp \
    ../../game/shared/tf/tf_item_inventory.cpp \
    ../../game/shared/tf/tf_item_powerup_bottle.cpp \
    ../../game/shared/tf/tf_item_schema.cpp \
    ../../game/shared/tf/tf_item_system.cpp \
    ../../game/shared/tf/tf_item_wearable.cpp \
    ../../game/shared/tf/tf_ladder_data.cpp \
    ../../game/shared/tf/tf_lobby_server.cpp \
    ../../game/shared/tf/tf_logic_halloween_2014.cpp \
    ../../game/shared/tf/tf_logic_player_destruction.cpp \
    ../../game/shared/tf/tf_logic_robot_destruction.cpp \
    ../../game/shared/tf/tf_mann_vs_machine_stats.cpp \
    ../../game/shared/tf/tf_mapinfo.cpp \
    ../../game/shared/tf/tf_matchmaking_shared.cpp \
    ../../game/shared/tf/tf_match_description.cpp \
    ../../game/shared/tf/tf_obj_baseupgrade_shared.cpp \
    ../../game/shared/tf/tf_party.cpp \
    ../../game/shared/tf/tf_playeranimstate.cpp \
    ../../game/shared/tf/tf_playerclass_info_parse.cpp \
    ../../game/shared/tf/tf_playerclass_shared.cpp \
    ../../game/shared/tf/tf_player_shared.cpp \
    ../../game/shared/tf/tf_projectile_base.cpp \
    ../../game/shared/tf/tf_projectile_energy_ring.cpp \
    ../../game/shared/tf/tf_projectile_nail.cpp \
    ../../game/shared/tf/tf_pumpkin_bomb.cpp \
    ../../game/shared/tf/tf_quest_restriction.cpp \
    ../../game/shared/tf/tf_revive.cpp \
    ../../game/shared/tf/tf_robot_destruction_robot.cpp \
    ../../game/shared/tf/tf_shareddefs.cpp \
    ../../game/shared/tf/tf_target_dummy.cpp \
    ../../game/shared/tf/tf_upgrades_shared.cpp \
    ../../game/shared/tf/tf_usermessages.cpp \
    ../../game/shared/tf/tf_viewmodel.cpp \
    ../../game/shared/tf/tf_wardata.cpp \
    ../../game/shared/tf/tf_weaponbase.cpp \
    ../../game/shared/tf/tf_weaponbase_grenadeproj.cpp \
    ../../game/shared/tf/tf_weaponbase_gun.cpp \
    ../../game/shared/tf/tf_weaponbase_melee.cpp \
    ../../game/shared/tf/tf_weaponbase_merasmus_grenade.cpp \
    ../../game/shared/tf/tf_weaponbase_rocket.cpp \
    ../../game/shared/tf/tf_weapon_bat.cpp \
    ../../game/shared/tf/tf_weapon_bonesaw.cpp \
    ../../game/shared/tf/tf_weapon_bottle.cpp \
    ../../game/shared/tf/tf_weapon_buff_item.cpp \
    ../../game/shared/tf/tf_weapon_club.cpp \
    ../../game/shared/tf/tf_weapon_compound_bow.cpp \
    ../../game/shared/tf/tf_weapon_fireaxe.cpp \
    ../../game/shared/tf/tf_weapon_fists.cpp \
    ../../game/shared/tf/tf_weapon_flamethrower.cpp \
    ../../game/shared/tf/tf_weapon_flaregun.cpp \
    ../../game/shared/tf/tf_weapon_grapplinghook.cpp \
    ../../game/shared/tf/tf_weapon_grenadelauncher.cpp \
    ../../game/shared/tf/tf_weapon_grenade_pipebomb.cpp \
    ../../game/shared/tf/tf_weapon_invis.cpp \
    ../../game/shared/tf/tf_weapon_jar.cpp \
    ../../game/shared/tf/tf_weapon_knife.cpp \
    ../../game/shared/tf/tf_weapon_laser_pointer.cpp \
    ../../game/shared/tf/tf_weapon_lunchbox.cpp \
    ../../game/shared/tf/tf_weapon_mechanical_arm.cpp \
    ../../game/shared/tf/tf_weapon_medigun.cpp \
    ../../game/shared/tf/tf_weapon_minigun.cpp \
    ../../game/shared/tf/tf_weapon_parachute.cpp \
    ../../game/shared/tf/tf_weapon_parse.cpp \
    ../../game/shared/tf/tf_weapon_particle_cannon.cpp \
    ../../game/shared/tf/tf_weapon_passtime_gun.cpp \
    ../../game/shared/tf/tf_weapon_pda.cpp \
    ../../game/shared/tf/tf_weapon_pipebomblauncher.cpp \
    ../../game/shared/tf/tf_weapon_pistol.cpp \
    ../../game/shared/tf/tf_weapon_raygun.cpp \
    ../../game/shared/tf/tf_weapon_revolver.cpp \
    ../../game/shared/tf/tf_weapon_rocketlauncher.cpp \
    ../../game/shared/tf/tf_weapon_shotgun.cpp \
    ../../game/shared/tf/tf_weapon_shovel.cpp \
    ../../game/shared/tf/tf_weapon_smg.cpp \
    ../../game/shared/tf/tf_weapon_sniperrifle.cpp \
    ../../game/shared/tf/tf_weapon_sword.cpp \
    ../../game/shared/tf/tf_weapon_syringegun.cpp \
    ../../game/shared/tf/tf_weapon_throwable.cpp \
    ../../game/shared/tf/tf_weapon_wrench.cpp \
    ../../game/shared/tf/tf_wearable_item_demoshield.cpp \
    ../../game/shared/tf/tf_wearable_levelable_item.cpp \
    ../../game/shared/tf/tf_wheel_of_doom.cpp \
    ../../game/shared/tf/trigger_catapult_shared.cpp \
    ../../game/shared/usercmd.cpp \
    ../../game/shared/usermessages.cpp \
    ../../game/shared/util_shared.cpp \
    ../../game/shared/vehicle_viewblend_shared.cpp \
    ../../game/shared/voice_gamemgr.cpp \
    ../../game/shared/weapon_ifmbase.cpp \
    ../../game/shared/weapon_ifmbasecamera.cpp \
    ../../game/shared/weapon_ifmsteadycam.cpp \
    ../../game/shared/weapon_parse.cpp \
    ../../game/shared/weapon_proficiency.cpp \
    ../../game/shared/workshop/ugc_utils.cpp \
    ../../public/bone_setup.cpp \
    ../../public/collisionutils.cpp \
    ../../public/dt_send.cpp \
    ../../public/dt_utlvector_common.cpp \
    ../../public/dt_utlvector_send.cpp \
    ../../public/editor_sendcommand.cpp \
    ../../public/filesystem_helpers.cpp \
    ../../public/haptics/haptic_msgs.cpp \
    ../../public/interpolatortypes.cpp \
    ../../public/keyframe/keyframe.cpp \
    ../../public/map_utils.cpp \
    ../../public/networkvar.cpp \
    ../../public/registry.cpp \
    ../../public/rope_physics.cpp \
    ../../public/scratchpad3d.cpp \
    ../../public/ScratchPadUtils.cpp \
    ../../public/server_class.cpp \
    ../../public/simple_physics.cpp \
    ../../public/SoundParametersInternal.cpp \
    ../../public/stringregistry.cpp \
    ../../public/studio.cpp \
    ../../public/tier0/memoverride.cpp \
    ai_activity.cpp \
    ai_baseactor.cpp \
    ai_basehumanoid.cpp \
    ai_basenpc.cpp \
    ai_basenpc_flyer.cpp \
    ai_basenpc_flyer_new.cpp \
    ai_basenpc_movement.cpp \
    ai_basenpc_physicsflyer.cpp \
    ai_basenpc_schedule.cpp \
    ai_basenpc_squad.cpp \
    ai_behavior.cpp \
    ai_behavior_assault.cpp \
    ai_behavior_fear.cpp \
    ai_behavior_follow.cpp \
    ai_behavior_lead.cpp \
    ai_behavior_rappel.cpp \
    ai_behavior_standoff.cpp \
    ai_blended_movement.cpp \
    ai_condition.cpp \
    AI_Criteria.cpp \
    ai_default.cpp \
    ai_dynamiclink.cpp \
    ai_event.cpp \
    ai_goalentity.cpp \
    ai_hint.cpp \
    ai_hull.cpp \
    ai_initutils.cpp \
    AI_Interest_Target.cpp \
    ai_link.cpp \
    ai_localnavigator.cpp \
    ai_looktarget.cpp \
    ai_memory.cpp \
    ai_motor.cpp \
    ai_moveprobe.cpp \
    ai_moveshoot.cpp \
    ai_movesolver.cpp \
    ai_namespaces.cpp \
    ai_navigator.cpp \
    ai_network.cpp \
    ai_networkmanager.cpp \
    ai_node.cpp \
    ai_pathfinder.cpp \
    ai_planesolver.cpp \
    ai_playerally.cpp \
    ai_relationship.cpp \
    AI_ResponseSystem.cpp \
    ai_route.cpp \
    ai_saverestore.cpp \
    ai_schedule.cpp \
    ai_scriptconditions.cpp \
    ai_senses.cpp \
    ai_sentence.cpp \
    ai_speech.cpp \
    ai_speechfilter.cpp \
    ai_squad.cpp \
    ai_squadslot.cpp \
    ai_tacticalservices.cpp \
    ai_task.cpp \
    ai_trackpather.cpp \
    ai_utils.cpp \
    ai_waypoint.cpp \
    baseanimating.cpp \
    BaseAnimatingOverlay.cpp \
    basecombatcharacter.cpp \
    basecombatweapon.cpp \
    baseentity.cpp \
    baseflex.cpp \
    basegrenade_concussion.cpp \
    basegrenade_contact.cpp \
    basegrenade_timed.cpp \
    basemultiplayerplayer.cpp \
    basetempentity.cpp \
    baseviewmodel.cpp \
    base_transmit_proxy.cpp \
    bitstring.cpp \
    bmodels.cpp \
    buttons.cpp \
    cbase.cpp \
    client.cpp \
    colorcorrection.cpp \
    colorcorrectionvolume.cpp \
    CommentarySystem.cpp \
    controlentities.cpp \
    cplane.cpp \
    CRagdollMagnet.cpp \
    damagemodifier.cpp \
    doors.cpp \
    dynamiclight.cpp \
    effects.cpp \
    EffectsServer.cpp \
    entityblocker.cpp \
    EntityDissolve.cpp \
    EntityFlame.cpp \
    entitylist.cpp \
    EntityParticleTrail.cpp \
    entity_tools_server.cpp \
    EnvBeam.cpp \
    EnvFade.cpp \
    EnvHudHint.cpp \
    EnvLaser.cpp \
    EnvMessage.cpp \
    envmicrophone.cpp \
    EnvShake.cpp \
    EnvSpark.cpp \
    env_debughistory.cpp \
    env_effectsscript.cpp \
    env_entity_maker.cpp \
    env_particlescript.cpp \
    env_player_surface_trigger.cpp \
    env_projectedtexture.cpp \
    env_screenoverlay.cpp \
    env_texturetoggle.cpp \
    env_tonemap_controller.cpp \
    env_zoom.cpp \
    EventLog.cpp \
    event_tempentity_tester.cpp \
    explode.cpp \
    filters.cpp \
    fire.cpp \
    fire_smoke.cpp \
    fish.cpp \
    fogcontroller.cpp \
    fourwheelvehiclephysics.cpp \
    func_areaportal.cpp \
    func_areaportalbase.cpp \
    func_areaportalwindow.cpp \
    func_break.cpp \
    func_breakablesurf.cpp \
    func_dust.cpp \
    func_ladder_endpoint.cpp \
    func_lod.cpp \
    func_movelinear.cpp \
    func_occluder.cpp \
    func_reflective_glass.cpp \
    func_smokevolume.cpp \
    game.cpp \
    gamedll_replay.cpp \
    gamehandle.cpp \
    gameinterface.cpp \
    GameStats_BasicStatsFunctions.cpp \
    gametrace_dll.cpp \
    gameweaponmanager.cpp \
    game_ui.cpp \
    genericactor.cpp \
    genericmonster.cpp \
    gib.cpp \
    globals.cpp \
    globalstate.cpp \
    grenadethrown.cpp \
    guntarget.cpp \
    hierarchy.cpp \
    hl2/Func_Monitor.cpp \
    hl2/te_gaussexplosion.cpp \
    hltvdirector.cpp \
    h_ai.cpp \
    h_export.cpp \
    info_camera_link.cpp \
    info_overlay_accessor.cpp \
    init_factory.cpp \
    intermission.cpp \
    item_world.cpp \
    lightglow.cpp \
    lights.cpp \
    logicauto.cpp \
    logicentities.cpp \
    logicrelay.cpp \
    logic_measure_movement.cpp \
    logic_navigation.cpp \
    mapentities.cpp \
    maprules.cpp \
    MaterialModifyControl.cpp \
    message_entity.cpp \
    modelentities.cpp \
    monstermaker.cpp \
    movehelper_server.cpp \
    movement.cpp \
    movie_explosion.cpp \
    nav_area.cpp \
    nav_colors.cpp \
    nav_edit.cpp \
    nav_entities.cpp \
    nav_file.cpp \
    nav_generate.cpp \
    nav_ladder.cpp \
    nav_merge.cpp \
    nav_mesh.cpp \
    nav_mesh_factory.cpp \
    nav_node.cpp \
    nav_simplify.cpp \
    ndebugoverlay.cpp \
    NextBot/NavMeshEntities/func_nav_prerequisite.cpp \
    NextBot/NextBot.cpp \
    NextBot/NextBotBodyInterface.cpp \
    NextBot/NextBotComponentInterface.cpp \
    NextBot/NextBotGroundLocomotion.cpp \
    NextBot/NextBotIntentionInterface.cpp \
    NextBot/NextBotInterface.cpp \
    NextBot/NextBotLocomotionInterface.cpp \
    NextBot/NextBotManager.cpp \
    NextBot/NextBotVisionInterface.cpp \
    NextBot/Path/NextBotChasePath.cpp \
    NextBot/Path/NextBotPath.cpp \
    NextBot/Path/NextBotPathFollow.cpp \
    NextBot/Player/NextBotPlayer.cpp \
    NextBot/Player/NextBotPlayerBody.cpp \
    NextBot/Player/NextBotPlayerLocomotion.cpp \
    NextBot/simple_bot.cpp \
    npc_vehicledriver.cpp \
    particle_fire.cpp \
    particle_light.cpp \
    particle_smokegrenade.cpp \
    particle_system.cpp \
    pathcorner.cpp \
    pathtrack.cpp \
    physconstraint.cpp \
    physics.cpp \
    physics_bone_follower.cpp \
    physics_cannister.cpp \
    physics_fx.cpp \
    physics_impact_damage.cpp \
    physics_main.cpp \
    physics_npc_solver.cpp \
    physics_prop_ragdoll.cpp \
    physobj.cpp \
    phys_controller.cpp \
    plasma.cpp \
    player.cpp \
    playerinfomanager.cpp \
    playerlocaldata.cpp \
    player_command.cpp \
    player_lagcompensation.cpp \
    player_pickup.cpp \
    player_resource.cpp \
    plugin_check.cpp \
    pointanglesensor.cpp \
    PointAngularVelocitySensor.cpp \
    pointhurt.cpp \
    pointteleport.cpp \
    point_camera.cpp \
    point_devshot_camera.cpp \
    point_playermoveconstraint.cpp \
    point_spotlight.cpp \
    point_template.cpp \
    props.cpp \
    RagdollBoogie.cpp \
    ragdoll_manager.cpp \
    recipientfilter.cpp \
    rope.cpp \
    saverestore_gamedll.cpp \
    sceneentity.cpp \
    scratchpad_gamedll_helpers.cpp \
    scripted.cpp \
    scriptedtarget.cpp \
    sendproxy.cpp \
    ServerNetworkProperty.cpp \
    shadowcontrol.cpp \
    SkyCamera.cpp \
    slideshow_display.cpp \
    smokestack.cpp \
    smoke_trail.cpp \
    sound.cpp \
    soundent.cpp \
    soundscape.cpp \
    soundscape_system.cpp \
    spotlightend.cpp \
    sprite_perfmonitor.cpp \
    stdafx.cpp \
    steamjet.cpp \
    subs.cpp \
    sun.cpp \
    tactical_mission.cpp \
    tanktrain.cpp \
    te.cpp \
    team.cpp \
    team_control_point.cpp \
    team_control_point_master.cpp \
    team_control_point_round.cpp \
    team_objectiveresource.cpp \
    team_train_watcher.cpp \
    TemplateEntities.cpp \
    tempmonster.cpp \
    tesla.cpp \
    testfunctions.cpp \
    testtraceline.cpp \
    test_proxytoggle.cpp \
    test_stressentities.cpp \
    textstatsmgr.cpp \
    te_armorricochet.cpp \
    te_basebeam.cpp \
    te_beamentpoint.cpp \
    te_beaments.cpp \
    te_beamfollow.cpp \
    te_beamlaser.cpp \
    te_beampoints.cpp \
    te_beamring.cpp \
    te_beamringpoint.cpp \
    te_beamspline.cpp \
    te_bloodsprite.cpp \
    te_bloodstream.cpp \
    te_breakmodel.cpp \
    te_bspdecal.cpp \
    te_bubbles.cpp \
    te_bubbletrail.cpp \
    te_clientprojectile.cpp \
    te_decal.cpp \
    te_dynamiclight.cpp \
    te_effect_dispatch.cpp \
    te_energysplash.cpp \
    te_explosion.cpp \
    te_fizz.cpp \
    te_footprintdecal.cpp \
    te_glassshatter.cpp \
    te_glowsprite.cpp \
    te_impact.cpp \
    te_killplayerattachments.cpp \
    te_largefunnel.cpp \
    te_muzzleflash.cpp \
    te_particlesystem.cpp \
    te_physicsprop.cpp \
    te_playerdecal.cpp \
    te_projecteddecal.cpp \
    te_showline.cpp \
    te_smoke.cpp \
    te_sparks.cpp \
    te_sprite.cpp \
    te_spritespray.cpp \
    te_worlddecal.cpp \
    tf/bot/behavior/demoman/tf_bot_prepare_stickybomb_trap.cpp \
    tf/bot/behavior/demoman/tf_bot_stickybomb_sentrygun.cpp \
    tf/bot/behavior/engineer/mvm_engineer/tf_bot_mvm_engineer_build_sentry.cpp \
    tf/bot/behavior/engineer/mvm_engineer/tf_bot_mvm_engineer_build_teleporter.cpp \
    tf/bot/behavior/engineer/mvm_engineer/tf_bot_mvm_engineer_idle.cpp \
    tf/bot/behavior/engineer/mvm_engineer/tf_bot_mvm_engineer_teleport_spawn.cpp \
    tf/bot/behavior/engineer/tf_bot_engineer_build.cpp \
    tf/bot/behavior/engineer/tf_bot_engineer_building.cpp \
    tf/bot/behavior/engineer/tf_bot_engineer_build_dispenser.cpp \
    tf/bot/behavior/engineer/tf_bot_engineer_build_sentrygun.cpp \
    tf/bot/behavior/engineer/tf_bot_engineer_build_teleport_entrance.cpp \
    tf/bot/behavior/engineer/tf_bot_engineer_build_teleport_exit.cpp \
    tf/bot/behavior/engineer/tf_bot_engineer_move_to_build.cpp \
    tf/bot/behavior/medic/tf_bot_medic_heal.cpp \
    tf/bot/behavior/medic/tf_bot_medic_retreat.cpp \
    tf/bot/behavior/missions/tf_bot_mission_destroy_sentries.cpp \
    tf/bot/behavior/missions/tf_bot_mission_reprogrammed.cpp \
    tf/bot/behavior/missions/tf_bot_mission_suicide_bomber.cpp \
    tf/bot/behavior/nav_entities/tf_bot_nav_ent_destroy_entity.cpp \
    tf/bot/behavior/nav_entities/tf_bot_nav_ent_move_to.cpp \
    tf/bot/behavior/nav_entities/tf_bot_nav_ent_wait.cpp \
    tf/bot/behavior/scenario/capture_point/tf_bot_capture_point.cpp \
    tf/bot/behavior/scenario/capture_point/tf_bot_defend_point.cpp \
    tf/bot/behavior/scenario/capture_point/tf_bot_defend_point_block_capture.cpp \
    tf/bot/behavior/scenario/capture_the_flag/tf_bot_attack_flag_defenders.cpp \
    tf/bot/behavior/scenario/capture_the_flag/tf_bot_deliver_flag.cpp \
    tf/bot/behavior/scenario/capture_the_flag/tf_bot_escort_flag_carrier.cpp \
    tf/bot/behavior/scenario/capture_the_flag/tf_bot_fetch_flag.cpp \
    tf/bot/behavior/scenario/creep_wave/tf_bot_creep_wave.cpp \
    tf/bot/behavior/scenario/payload/tf_bot_payload_block.cpp \
    tf/bot/behavior/scenario/payload/tf_bot_payload_guard.cpp \
    tf/bot/behavior/scenario/payload/tf_bot_payload_push.cpp \
    tf/bot/behavior/scenario/raid/tf_bot_companion.cpp \
    tf/bot/behavior/scenario/raid/tf_bot_guard_area.cpp \
    tf/bot/behavior/scenario/raid/tf_bot_mob_rush.cpp \
    tf/bot/behavior/scenario/raid/tf_bot_squad_attack.cpp \
    tf/bot/behavior/scenario/raid/tf_bot_wander.cpp \
    tf/bot/behavior/sniper/tf_bot_sniper_attack.cpp \
    tf/bot/behavior/sniper/tf_bot_sniper_lurk.cpp \
    tf/bot/behavior/spy/tf_bot_spy_attack.cpp \
    tf/bot/behavior/spy/tf_bot_spy_backstab.cpp \
    tf/bot/behavior/spy/tf_bot_spy_escape.cpp \
    tf/bot/behavior/spy/tf_bot_spy_hide.cpp \
    tf/bot/behavior/spy/tf_bot_spy_infiltrate.cpp \
    tf/bot/behavior/spy/tf_bot_spy_leave_spawn_room.cpp \
    tf/bot/behavior/spy/tf_bot_spy_lurk.cpp \
    tf/bot/behavior/spy/tf_bot_spy_sap.cpp \
    tf/bot/behavior/squad/tf_bot_escort_squad_leader.cpp \
    tf/bot/behavior/tf_bot_approach_object.cpp \
    tf/bot/behavior/tf_bot_attack.cpp \
    tf/bot/behavior/tf_bot_behavior.cpp \
    tf/bot/behavior/tf_bot_dead.cpp \
    tf/bot/behavior/tf_bot_destroy_enemy_sentry.cpp \
    tf/bot/behavior/tf_bot_escort.cpp \
    tf/bot/behavior/tf_bot_get_ammo.cpp \
    tf/bot/behavior/tf_bot_get_health.cpp \
    tf/bot/behavior/tf_bot_melee_attack.cpp \
    tf/bot/behavior/tf_bot_move_to_vantage_point.cpp \
    tf/bot/behavior/tf_bot_mvm_deploy_bomb.cpp \
    tf/bot/behavior/tf_bot_retreat_to_cover.cpp \
    tf/bot/behavior/tf_bot_scenario_monitor.cpp \
    tf/bot/behavior/tf_bot_seek_and_destroy.cpp \
    tf/bot/behavior/tf_bot_tactical_monitor.cpp \
    tf/bot/behavior/tf_bot_taunt.cpp \
    tf/bot/behavior/tf_bot_use_item.cpp \
    tf/bot/behavior/tf_bot_use_teleporter.cpp \
    tf/bot/behavior/training/tf_bot_training.cpp \
    tf/bot/map_entities/tf_bot_generator.cpp \
    tf/bot/map_entities/tf_bot_hint.cpp \
    tf/bot/map_entities/tf_bot_hint_engineer_nest.cpp \
    tf/bot/map_entities/tf_bot_hint_entity.cpp \
    tf/bot/map_entities/tf_bot_hint_sentrygun.cpp \
    tf/bot/map_entities/tf_bot_hint_teleporter_exit.cpp \
    tf/bot/map_entities/tf_bot_proxy.cpp \
    tf/bot/map_entities/tf_bot_roster.cpp \
    tf/bot/map_entities/tf_spawner.cpp \
    tf/bot/map_entities/tf_spawner_boss.cpp \
    tf/bot/tf_bot.cpp \
    tf/bot/tf_bot_body.cpp \
    tf/bot/tf_bot_locomotion.cpp \
    tf/bot/tf_bot_manager.cpp \
    tf/bot/tf_bot_squad.cpp \
    tf/bot/tf_bot_vision.cpp \
    tf/bot_npc/bot_npc.cpp \
    tf/bot_npc/bot_npc_archer.cpp \
    tf/bot_npc/bot_npc_body.cpp \
    tf/bot_npc/bot_npc_decoy.cpp \
    tf/bot_npc/bot_npc_mini.cpp \
    tf/bot_npc/bot_npc_minion.cpp \
    tf/entity_ammopack.cpp \
    tf/entity_armor.cpp \
    tf/entity_bird.cpp \
    tf/entity_currencypack.cpp \
    tf/entity_forcerespawn.cpp \
    tf/entity_game_text_tf.cpp \
    tf/entity_healthkit.cpp \
    tf/entity_intermission.cpp \
    tf/entity_passtime_ball_spawn.cpp \
    tf/entity_roundwin.cpp \
    tf/entity_rune.cpp \
    tf/entity_tfstart.cpp \
    tf/entity_training_annotations.cpp \
    tf/func_achievement.cpp \
    tf/func_capture_zone.cpp \
    tf/func_changeclass.cpp \
    tf/func_flag_alert.cpp \
    tf/func_forcefield.cpp \
    tf/func_nogrenades.cpp \
    tf/func_no_build.cpp \
    tf/func_passtime_goal.cpp \
    tf/func_passtime_goalie_zone.cpp \
    tf/func_passtime_no_ball_zone.cpp \
    tf/func_powerupvolume.cpp \
    tf/func_regenerate.cpp \
    tf/func_respawnflag.cpp \
    tf/func_respawnroom.cpp \
    tf/func_suggested_build.cpp \
    tf/halloween/eyeball_boss/eyeball_behavior/eyeball_boss_approach_target.cpp \
    tf/halloween/eyeball_boss/eyeball_behavior/eyeball_boss_behavior.cpp \
    tf/halloween/eyeball_boss/eyeball_behavior/eyeball_boss_emerge.cpp \
    tf/halloween/eyeball_boss/eyeball_behavior/eyeball_boss_emote.cpp \
    tf/halloween/eyeball_boss/eyeball_behavior/eyeball_boss_idle.cpp \
    tf/halloween/eyeball_boss/eyeball_behavior/eyeball_boss_launch_rockets.cpp \
    tf/halloween/eyeball_boss/eyeball_behavior/eyeball_boss_notice.cpp \
    tf/halloween/eyeball_boss/eyeball_behavior/eyeball_boss_stunned.cpp \
    tf/halloween/eyeball_boss/eyeball_behavior/eyeball_boss_teleport.cpp \
    tf/halloween/eyeball_boss/eyeball_boss.cpp \
    tf/halloween/ghost/ghost.cpp \
    tf/halloween/halloween_base_boss.cpp \
    tf/halloween/halloween_behavior/headless_hatman_attack.cpp \
    tf/halloween/halloween_behavior/headless_hatman_dying.cpp \
    tf/halloween/halloween_behavior/headless_hatman_emerge.cpp \
    tf/halloween/halloween_behavior/headless_hatman_terrify.cpp \
    tf/halloween/halloween_gift_spawn_locations.cpp \
    tf/halloween/headless_hatman.cpp \
    tf/halloween/headless_hatman_body.cpp \
    tf/halloween/merasmus/merasmus.cpp \
    tf/halloween/merasmus/merasmus_behavior/merasmus_aoe_attack.cpp \
    tf/halloween/merasmus/merasmus_behavior/merasmus_attack.cpp \
    tf/halloween/merasmus/merasmus_behavior/merasmus_disguise.cpp \
    tf/halloween/merasmus/merasmus_behavior/merasmus_dying.cpp \
    tf/halloween/merasmus/merasmus_behavior/merasmus_reveal.cpp \
    tf/halloween/merasmus/merasmus_behavior/merasmus_staff_attack.cpp \
    tf/halloween/merasmus/merasmus_behavior/merasmus_stunned.cpp \
    tf/halloween/merasmus/merasmus_behavior/merasmus_teleport.cpp \
    tf/halloween/merasmus/merasmus_behavior/merasmus_throwing_grenade.cpp \
    tf/halloween/merasmus/merasmus_behavior/merasmus_zap.cpp \
    tf/halloween/merasmus/merasmus_body.cpp \
    tf/halloween/merasmus/merasmus_dancer.cpp \
    tf/halloween/merasmus/merasmus_trick_or_treat_prop.cpp \
    tf/halloween/spell/tf_spell_pickup.cpp \
    tf/halloween/zombie/zombie.cpp \
    tf/halloween/zombie/zombie_behavior/zombie_attack.cpp \
    tf/halloween/zombie/zombie_behavior/zombie_spawn.cpp \
    tf/halloween/zombie/zombie_behavior/zombie_special_attack.cpp \
    tf/halloween/zombie/zombie_spawner.cpp \
    tf/minigames/tf_duel.cpp \
    tf/nav_mesh/tf_nav_area.cpp \
    tf/nav_mesh/tf_nav_interface.cpp \
    tf/nav_mesh/tf_nav_mesh.cpp \
    tf/nav_mesh/tf_nav_mesh_edit.cpp \
    tf/nav_mesh/tf_path_follower.cpp \
    tf/passtime_ballcontroller.cpp \
    tf/passtime_ballcontroller_homing.cpp \
    tf/passtime_ballcontroller_playerseek.cpp \
    tf/player_vs_environment/archer_proxy.cpp \
    tf/player_vs_environment/boss_alpha/behavior/boss_alpha_behavior.cpp \
    tf/player_vs_environment/boss_alpha/behavior/boss_alpha_chase_victim.cpp \
    tf/player_vs_environment/boss_alpha/behavior/boss_alpha_get_off_me.cpp \
    tf/player_vs_environment/boss_alpha/behavior/boss_alpha_guard_spot.cpp \
    tf/player_vs_environment/boss_alpha/behavior/boss_alpha_launch_grenades.cpp \
    tf/player_vs_environment/boss_alpha/behavior/boss_alpha_launch_rockets.cpp \
    tf/player_vs_environment/boss_alpha/behavior/boss_alpha_lost_victim.cpp \
    tf/player_vs_environment/boss_alpha/behavior/boss_alpha_nuke_attack.cpp \
    tf/player_vs_environment/boss_alpha/behavior/boss_alpha_stunned.cpp \
    tf/player_vs_environment/boss_alpha/behavior/boss_alpha_tactical_monitor.cpp \
    tf/player_vs_environment/boss_alpha/behavior/boss_alpha_wait_for_players.cpp \
    tf/player_vs_environment/boss_alpha/boss_alpha.cpp \
    tf/player_vs_environment/monster_resource.cpp \
    tf/player_vs_environment/tf_base_boss.cpp \
    tf/player_vs_environment/tf_boss_battle_logic.cpp \
    tf/player_vs_environment/tf_mann_vs_machine_logic.cpp \
    tf/player_vs_environment/tf_point_weapon_mimic.cpp \
    tf/player_vs_environment/tf_population_manager.cpp \
    tf/player_vs_environment/tf_populators.cpp \
    tf/player_vs_environment/tf_populator_interface.cpp \
    tf/player_vs_environment/tf_populator_spawners.cpp \
    tf/player_vs_environment/tf_tank_boss.cpp \
    tf/player_vs_environment/tf_tank_boss_body.cpp \
    tf/player_vs_environment/tf_upgrades.cpp \
    tf/raid/tf_raid_logic.cpp \
    tf/te_tfblood.cpp \
    tf/tf_ammo_pack.cpp \
    tf/tf_autobalance.cpp \
    tf/tf_bot_temp.cpp \
    tf/tf_client.cpp \
    tf/tf_entity_spawner.cpp \
    tf/tf_eventlog.cpp \
    tf/tf_extra_map_entity.cpp \
    tf/tf_filters.cpp \
    tf/tf_fx.cpp \
    tf/tf_gameinterface.cpp \
    tf/tf_gamestats.cpp \
    tf/tf_glow.cpp \
    tf/tf_hltvdirector.cpp \
    tf/tf_logic_on_holiday.cpp \
    tf/tf_obj.cpp \
    tf/tf_objective_resource.cpp \
    tf/tf_obj_catapult.cpp \
    tf/tf_obj_dispenser.cpp \
    tf/tf_obj_sapper.cpp \
    tf/tf_obj_sentrygun.cpp \
    tf/tf_obj_spy_trap.cpp \
    tf/tf_obj_teleporter.cpp \
    tf/tf_passtime_ball.cpp \
    tf/tf_passtime_logic.cpp \
    tf/tf_player.cpp \
    tf/tf_playerclass.cpp \
    tf/tf_playermove.cpp \
    tf/tf_player_resource.cpp \
    tf/tf_powerup.cpp \
    tf/tf_projectile_arrow.cpp \
    tf/tf_projectile_energy_ball.cpp \
    tf/tf_projectile_flare.cpp \
    tf/tf_projectile_rocket.cpp \
    tf/tf_props.cpp \
    tf/tf_pushentity.cpp \
    tf/tf_tactical_mission.cpp \
    tf/tf_taunt_prop.cpp \
    tf/tf_team.cpp \
    tf/tf_triggers.cpp \
    tf/tf_turret.cpp \
    tf/tf_wartracker.cpp \
    tf/tf_weapon_builder.cpp \
    tf/trigger_catapult.cpp \
    tf/trigger_passtime_ball.cpp \
    timedeventmgr.cpp \
    toolframework_server.cpp \
    trains.cpp \
    triggers.cpp \
    trigger_area_capture.cpp \
    util.cpp \
    variant_t.cpp \
    vehicle_base.cpp \
    vehicle_baseserver.cpp \
    vguiscreen.cpp \
    waterbullet.cpp \
    WaterLODControl.cpp \
    wcedit.cpp \
    weight_button.cpp \
    world.cpp \


LIBFILES = \
    ../../lib/public/linux32/tier1.a \
    ../../lib/common/linux32/replay_common.a \
    ../../thirdparty/protobuf-2.6.1/bin/linux32/libprotobuf.a \
    ../../lib/public/linux32/choreoobjects.a \
    ../../lib/public/linux32/dmxloader.a \
    ../../lib/public/linux32/mathlib.a \
    ../../lib/public/linux32/particles.a \
    ../../lib/public/linux32/tier2.a \
    ../../lib/public/linux32/tier3.a \
    ../../lib/public/linux32/gcsdk.a \
    ../../lib/public/linux32/vpklib.a \
    ../../lib/common/$(CRYPTOPPDIR)/libcrypto.a \
    ../../lib/common/$(CRYPTOPPDIR)/libcryptopp.a \
    -L../../lib/public/linux32 -ltier0 \
    -L../../lib/public/linux32 -lvstdlib \
    -L../../lib/public/linux32 -lsteam_api \


LIBFILENAMES = \
    ../../lib/common/$(CRYPTOPPDIR)/libcrypto.a \
    ../../lib/common/$(CRYPTOPPDIR)/libcryptopp.a \
    ../../lib/common/linux32/replay_common.a \
    ../../lib/public/linux32/choreoobjects.a \
    ../../lib/public/linux32/dmxloader.a \
    ../../lib/public/linux32/gcsdk.a \
    ../../lib/public/linux32/libsteam_api.so \
    ../../lib/public/linux32/libtier0.so \
    ../../lib/public/linux32/libvstdlib.so \
    ../../lib/public/linux32/mathlib.a \
    ../../lib/public/linux32/particles.a \
    ../../lib/public/linux32/tier1.a \
    ../../lib/public/linux32/tier2.a \
    ../../lib/public/linux32/tier3.a \
    ../../lib/public/linux32/vpklib.a \
    ../../thirdparty/protobuf-2.6.1/bin/linux32/libprotobuf.a \



OTHER_DEPENDENCIES = \
	$(abspath ../../game/server/generated_proto_tf/base_gcmessages.pb.cc) \
	$(abspath ../../game/server/generated_proto_tf/base_gcmessages.pb.h) \
	$(abspath ../../game/server/generated_proto_tf/econ_gcmessages.pb.cc) \
	$(abspath ../../game/server/generated_proto_tf/econ_gcmessages.pb.h) \
	$(abspath ../../game/server/generated_proto_tf/tf_gcmessages.pb.cc) \
	$(abspath ../../game/server/generated_proto_tf/tf_gcmessages.pb.h) \
	$(abspath ../../game/server/generated_proto_tf/gcsystemmsgs.pb.cc) \
	$(abspath ../../game/server/generated_proto_tf/gcsystemmsgs.pb.h) \
	$(abspath ../../game/server/generated_proto_tf/steammessages.pb.cc) \
	$(abspath ../../game/server/generated_proto_tf/steammessages.pb.h)


-include $(OBJ_DIR)/_other_deps.P


# Include the base makefile now.
include $(SRCROOT)/devtools/makefile_base_posix.mak



ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/crypto.P
endif

$(OBJ_DIR)/crypto.o : $(abspath ../../common/crypto.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/language.P
endif

$(OBJ_DIR)/language.o : $(abspath ../../common/language.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/randoverride.P
endif

$(OBJ_DIR)/randoverride.o : $(abspath ../../common/randoverride.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/steamid.P
endif

$(OBJ_DIR)/steamid.o : $(abspath ../../common/steamid.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/base_gcmessages.pb.P
endif

$(OBJ_DIR)/base_gcmessages.pb.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/base_gcmessages.pb.o : $(abspath ../../game/server/generated_proto_tf/base_gcmessages.pb.cc) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/econ_gcmessages.pb.P
endif

$(OBJ_DIR)/econ_gcmessages.pb.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/econ_gcmessages.pb.o : $(abspath ../../game/server/generated_proto_tf/econ_gcmessages.pb.cc) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/gcsystemmsgs.pb.P
endif

$(OBJ_DIR)/gcsystemmsgs.pb.o : $(abspath ../../game/server/generated_proto_tf/gcsystemmsgs.pb.cc) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/steammessages.pb.P
endif

$(OBJ_DIR)/steammessages.pb.o : $(abspath ../../game/server/generated_proto_tf/steammessages.pb.cc) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_gcmessages.pb.P
endif

$(OBJ_DIR)/tf_gcmessages.pb.o : $(abspath ../../game/server/generated_proto_tf/tf_gcmessages.pb.cc) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/serverbenchmark_base.P
endif

$(OBJ_DIR)/serverbenchmark_base.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/serverbenchmark_base.o : $(abspath ../../game/server/serverbenchmark_base.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/serverbenchmark_tf.P
endif

$(OBJ_DIR)/serverbenchmark_tf.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/serverbenchmark_tf.o : $(abspath ../../game/server/tf/serverbenchmark_tf.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_gc_api.P
endif

$(OBJ_DIR)/tf_gc_api.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_gc_api.o : $(abspath ../../game/server/tf/tf_gc_api.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_gc_server.P
endif

$(OBJ_DIR)/tf_gc_server.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_gc_server.o : $(abspath ../../game/server/tf/tf_gc_server.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_voteissues.P
endif

$(OBJ_DIR)/tf_voteissues.o : $(abspath ../../game/server/tf/tf_voteissues.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/maps_workshop.P
endif

$(OBJ_DIR)/maps_workshop.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/maps_workshop.o : $(abspath ../../game/server/tf/workshop/maps_workshop.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/vote_controller.P
endif

$(OBJ_DIR)/vote_controller.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/vote_controller.o : $(abspath ../../game/server/vote_controller.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/achievementmgr.P
endif

$(OBJ_DIR)/achievementmgr.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/achievementmgr.o : $(abspath ../../game/shared/achievementmgr.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/achievements_hlx.P
endif

$(OBJ_DIR)/achievements_hlx.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/achievements_hlx.o : $(abspath ../../game/shared/achievements_hlx.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/achievement_saverestore.P
endif

$(OBJ_DIR)/achievement_saverestore.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/achievement_saverestore.o : $(abspath ../../game/shared/achievement_saverestore.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/activitylist.P
endif

$(OBJ_DIR)/activitylist.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/activitylist.o : $(abspath ../../game/shared/activitylist.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ammodef.P
endif

$(OBJ_DIR)/ammodef.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ammodef.o : $(abspath ../../game/shared/ammodef.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/animation.P
endif

$(OBJ_DIR)/animation.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/animation.o : $(abspath ../../game/shared/animation.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/baseachievement.P
endif

$(OBJ_DIR)/baseachievement.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/baseachievement.o : $(abspath ../../game/shared/baseachievement.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/basecombatcharacter_shared.P
endif

$(OBJ_DIR)/basecombatcharacter_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/basecombatcharacter_shared.o : $(abspath ../../game/shared/basecombatcharacter_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/basecombatweapon_shared.P
endif

$(OBJ_DIR)/basecombatweapon_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/basecombatweapon_shared.o : $(abspath ../../game/shared/basecombatweapon_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/baseentity_shared.P
endif

$(OBJ_DIR)/baseentity_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/baseentity_shared.o : $(abspath ../../game/shared/baseentity_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/basegrenade_shared.P
endif

$(OBJ_DIR)/basegrenade_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/basegrenade_shared.o : $(abspath ../../game/shared/basegrenade_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/baseparticleentity.P
endif

$(OBJ_DIR)/baseparticleentity.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/baseparticleentity.o : $(abspath ../../game/shared/baseparticleentity.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/baseplayer_shared.P
endif

$(OBJ_DIR)/baseplayer_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/baseplayer_shared.o : $(abspath ../../game/shared/baseplayer_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/baseprojectile.P
endif

$(OBJ_DIR)/baseprojectile.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/baseprojectile.o : $(abspath ../../game/shared/baseprojectile.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/baseviewmodel_shared.P
endif

$(OBJ_DIR)/baseviewmodel_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/baseviewmodel_shared.o : $(abspath ../../game/shared/baseviewmodel_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

$(OBJ_DIR)/_custombuildstep_10.touchfile : $(abspath ../../game/shared/base_gcmessages.proto) server_linux32_tf.mak $(abspath ../../game/shared/base_gcmessages.proto)
	 @echo "Running Protocol Buffer Compiler on base_gcmessages.proto...";mkdir -p $(OBJ_DIR) 2> /dev/null;
	 mkdir ../../game/server/generated_proto_tf 2> /dev/null;../../thirdparty/protobuf-2.6.1/bin/linux32/protoc --proto_path=../../thirdparty/protobuf-2.6.1/src --proto_path=../../game/shared/ --proto_path=../../gcsdk --proto_path=../../game/shared  --cpp_out=../../game/server/generated_proto_tf ../../game/shared/base_gcmessages.proto
	 @touch $(OBJ_DIR)/_custombuildstep_10.touchfile

$(abspath ../../game/server/generated_proto_tf/base_gcmessages.pb.cc) : $(OBJ_DIR)/_custombuildstep_10.touchfile server_linux32_tf.mak
	 @touch ../../game/server/generated_proto_tf/base_gcmessages.pb.cc

$(abspath ../../game/server/generated_proto_tf/base_gcmessages.pb.h) : $(OBJ_DIR)/_custombuildstep_10.touchfile server_linux32_tf.mak
	 @touch ../../game/server/generated_proto_tf/base_gcmessages.pb.h


ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/base_playeranimstate.P
endif

$(OBJ_DIR)/base_playeranimstate.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/base_playeranimstate.o : $(abspath ../../game/shared/base_playeranimstate.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/beam_shared.P
endif

$(OBJ_DIR)/beam_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/beam_shared.o : $(abspath ../../game/shared/beam_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/collisionproperty.P
endif

$(OBJ_DIR)/collisionproperty.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/collisionproperty.o : $(abspath ../../game/shared/collisionproperty.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/death_pose.P
endif

$(OBJ_DIR)/death_pose.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/death_pose.o : $(abspath ../../game/shared/death_pose.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/debugoverlay_shared.P
endif

$(OBJ_DIR)/debugoverlay_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/debugoverlay_shared.o : $(abspath ../../game/shared/debugoverlay_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/decals.P
endif

$(OBJ_DIR)/decals.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/decals.o : $(abspath ../../game/shared/decals.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/attribute_manager.P
endif

$(OBJ_DIR)/attribute_manager.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/attribute_manager.o : $(abspath ../../game/shared/econ/attribute_manager.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/econ_claimcode.P
endif

$(OBJ_DIR)/econ_claimcode.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/econ_claimcode.o : $(abspath ../../game/shared/econ/econ_claimcode.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/econ_dynamic_recipe.P
endif

$(OBJ_DIR)/econ_dynamic_recipe.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/econ_dynamic_recipe.o : $(abspath ../../game/shared/econ/econ_dynamic_recipe.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/econ_entity.P
endif

$(OBJ_DIR)/econ_entity.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/econ_entity.o : $(abspath ../../game/shared/econ/econ_entity.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/econ_entity_creation.P
endif

$(OBJ_DIR)/econ_entity_creation.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/econ_entity_creation.o : $(abspath ../../game/shared/econ/econ_entity_creation.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

$(OBJ_DIR)/_custombuildstep_11.touchfile : $(abspath ../../game/shared/econ/econ_gcmessages.proto) server_linux32_tf.mak $(abspath ../../game/shared/econ/econ_gcmessages.proto)
	 @echo "Running Protocol Buffer Compiler on econ_gcmessages.proto...";mkdir -p $(OBJ_DIR) 2> /dev/null;
	 mkdir ../../game/server/generated_proto_tf 2> /dev/null;../../thirdparty/protobuf-2.6.1/bin/linux32/protoc --proto_path=../../thirdparty/protobuf-2.6.1/src --proto_path=../../game/shared/econ/ --proto_path=../../gcsdk --proto_path=../../game/shared  --cpp_out=../../game/server/generated_proto_tf ../../game/shared/econ/econ_gcmessages.proto
	 @touch $(OBJ_DIR)/_custombuildstep_11.touchfile

$(abspath ../../game/server/generated_proto_tf/econ_gcmessages.pb.cc) : $(OBJ_DIR)/_custombuildstep_11.touchfile server_linux32_tf.mak
	 @touch ../../game/server/generated_proto_tf/econ_gcmessages.pb.cc

$(abspath ../../game/server/generated_proto_tf/econ_gcmessages.pb.h) : $(OBJ_DIR)/_custombuildstep_11.touchfile server_linux32_tf.mak
	 @touch ../../game/server/generated_proto_tf/econ_gcmessages.pb.h


ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/econ_holidays.P
endif

$(OBJ_DIR)/econ_holidays.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/econ_holidays.o : $(abspath ../../game/shared/econ/econ_holidays.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/econ_item.P
endif

$(OBJ_DIR)/econ_item.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/econ_item.o : $(abspath ../../game/shared/econ/econ_item.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/econ_item_constants.P
endif

$(OBJ_DIR)/econ_item_constants.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/econ_item_constants.o : $(abspath ../../game/shared/econ/econ_item_constants.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/econ_item_interface.P
endif

$(OBJ_DIR)/econ_item_interface.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/econ_item_interface.o : $(abspath ../../game/shared/econ/econ_item_interface.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/econ_item_inventory.P
endif

$(OBJ_DIR)/econ_item_inventory.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/econ_item_inventory.o : $(abspath ../../game/shared/econ/econ_item_inventory.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/econ_item_preset.P
endif

$(OBJ_DIR)/econ_item_preset.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/econ_item_preset.o : $(abspath ../../game/shared/econ/econ_item_preset.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/econ_item_schema.P
endif

$(OBJ_DIR)/econ_item_schema.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/econ_item_schema.o : $(abspath ../../game/shared/econ/econ_item_schema.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/econ_item_system.P
endif

$(OBJ_DIR)/econ_item_system.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/econ_item_system.o : $(abspath ../../game/shared/econ/econ_item_system.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/econ_item_tools.P
endif

$(OBJ_DIR)/econ_item_tools.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/econ_item_tools.o : $(abspath ../../game/shared/econ/econ_item_tools.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/econ_item_view.P
endif

$(OBJ_DIR)/econ_item_view.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/econ_item_view.o : $(abspath ../../game/shared/econ/econ_item_view.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/econ_quests.P
endif

$(OBJ_DIR)/econ_quests.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/econ_quests.o : $(abspath ../../game/shared/econ/econ_quests.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/econ_wearable.P
endif

$(OBJ_DIR)/econ_wearable.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/econ_wearable.o : $(abspath ../../game/shared/econ/econ_wearable.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/item_selection_criteria.P
endif

$(OBJ_DIR)/item_selection_criteria.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/item_selection_criteria.o : $(abspath ../../game/shared/econ/item_selection_criteria.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/localization_provider.P
endif

$(OBJ_DIR)/localization_provider.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/localization_provider.o : $(abspath ../../game/shared/econ/localization_provider.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/effect_dispatch_data.P
endif

$(OBJ_DIR)/effect_dispatch_data.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/effect_dispatch_data.o : $(abspath ../../game/shared/effect_dispatch_data.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ehandle.P
endif

$(OBJ_DIR)/ehandle.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ehandle.o : $(abspath ../../game/shared/ehandle.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/entitylist_base.P
endif

$(OBJ_DIR)/entitylist_base.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/entitylist_base.o : $(abspath ../../game/shared/entitylist_base.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/EntityParticleTrail_Shared.P
endif

$(OBJ_DIR)/EntityParticleTrail_Shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/EntityParticleTrail_Shared.o : $(abspath ../../game/shared/EntityParticleTrail_Shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/env_detail_controller.P
endif

$(OBJ_DIR)/env_detail_controller.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/env_detail_controller.o : $(abspath ../../game/shared/env_detail_controller.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/env_wind_shared.P
endif

$(OBJ_DIR)/env_wind_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/env_wind_shared.o : $(abspath ../../game/shared/env_wind_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/eventlist.P
endif

$(OBJ_DIR)/eventlist.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/eventlist.o : $(abspath ../../game/shared/eventlist.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_ladder.P
endif

$(OBJ_DIR)/func_ladder.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_ladder.o : $(abspath ../../game/shared/func_ladder.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/gamemovement.P
endif

$(OBJ_DIR)/gamemovement.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/gamemovement.o : $(abspath ../../game/shared/gamemovement.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/gamerules.P
endif

$(OBJ_DIR)/gamerules.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/gamerules.o : $(abspath ../../game/shared/gamerules.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/gamerules_register.P
endif

$(OBJ_DIR)/gamerules_register.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/gamerules_register.o : $(abspath ../../game/shared/gamerules_register.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/GameStats.P
endif

$(OBJ_DIR)/GameStats.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/GameStats.o : $(abspath ../../game/shared/GameStats.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/gamestringpool.P
endif

$(OBJ_DIR)/gamestringpool.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/gamestringpool.o : $(abspath ../../game/shared/gamestringpool.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/gamevars_shared.P
endif

$(OBJ_DIR)/gamevars_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/gamevars_shared.o : $(abspath ../../game/shared/gamevars_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/gc_clientsystem.P
endif

$(OBJ_DIR)/gc_clientsystem.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/gc_clientsystem.o : $(abspath ../../game/shared/gc_clientsystem.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/gc_replicated_convars.P
endif

$(OBJ_DIR)/gc_replicated_convars.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/gc_replicated_convars.o : $(abspath ../../game/shared/gc_replicated_convars.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/hintmessage.P
endif

$(OBJ_DIR)/hintmessage.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/hintmessage.o : $(abspath ../../game/shared/hintmessage.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/hintsystem.P
endif

$(OBJ_DIR)/hintsystem.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/hintsystem.o : $(abspath ../../game/shared/hintsystem.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/survival_gamerules.P
endif

$(OBJ_DIR)/survival_gamerules.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/survival_gamerules.o : $(abspath ../../game/shared/hl2/survival_gamerules.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/igamesystem.P
endif

$(OBJ_DIR)/igamesystem.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/igamesystem.o : $(abspath ../../game/shared/igamesystem.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/interval.P
endif

$(OBJ_DIR)/interval.o : $(abspath ../../game/shared/interval.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/lobby.P
endif

$(OBJ_DIR)/lobby.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/lobby.o : $(abspath ../../game/shared/lobby.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/mapentities_shared.P
endif

$(OBJ_DIR)/mapentities_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/mapentities_shared.o : $(abspath ../../game/shared/mapentities_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ModelSoundsCache.P
endif

$(OBJ_DIR)/ModelSoundsCache.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ModelSoundsCache.o : $(abspath ../../game/shared/ModelSoundsCache.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/movevars_shared.P
endif

$(OBJ_DIR)/movevars_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/movevars_shared.o : $(abspath ../../game/shared/movevars_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/mp_shareddefs.P
endif

$(OBJ_DIR)/mp_shareddefs.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/mp_shareddefs.o : $(abspath ../../game/shared/mp_shareddefs.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/multiplayer_animstate.P
endif

$(OBJ_DIR)/multiplayer_animstate.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/multiplayer_animstate.o : $(abspath ../../game/shared/Multiplayer/multiplayer_animstate.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/multiplay_gamerules.P
endif

$(OBJ_DIR)/multiplay_gamerules.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/multiplay_gamerules.o : $(abspath ../../game/shared/multiplay_gamerules.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/obstacle_pushaway.P
endif

$(OBJ_DIR)/obstacle_pushaway.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/obstacle_pushaway.o : $(abspath ../../game/shared/obstacle_pushaway.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/particlesystemquery.P
endif

$(OBJ_DIR)/particlesystemquery.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/particlesystemquery.o : $(abspath ../../game/shared/particlesystemquery.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/particle_parse.P
endif

$(OBJ_DIR)/particle_parse.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/particle_parse.o : $(abspath ../../game/shared/particle_parse.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/physics_main_shared.P
endif

$(OBJ_DIR)/physics_main_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/physics_main_shared.o : $(abspath ../../game/shared/physics_main_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/physics_saverestore.P
endif

$(OBJ_DIR)/physics_saverestore.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/physics_saverestore.o : $(abspath ../../game/shared/physics_saverestore.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/physics_shared.P
endif

$(OBJ_DIR)/physics_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/physics_shared.o : $(abspath ../../game/shared/physics_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/playerclass_info_parse.P
endif

$(OBJ_DIR)/playerclass_info_parse.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/playerclass_info_parse.o : $(abspath ../../game/shared/playerclass_info_parse.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/point_bonusmaps_accessor.P
endif

$(OBJ_DIR)/point_bonusmaps_accessor.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/point_bonusmaps_accessor.o : $(abspath ../../game/shared/point_bonusmaps_accessor.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/point_posecontroller.P
endif

$(OBJ_DIR)/point_posecontroller.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/point_posecontroller.o : $(abspath ../../game/shared/point_posecontroller.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/precache_register.P
endif

$(OBJ_DIR)/precache_register.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/precache_register.o : $(abspath ../../game/shared/precache_register.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/predictableid.P
endif

$(OBJ_DIR)/predictableid.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/predictableid.o : $(abspath ../../game/shared/predictableid.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/props_shared.P
endif

$(OBJ_DIR)/props_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/props_shared.o : $(abspath ../../game/shared/props_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/querycache.P
endif

$(OBJ_DIR)/querycache.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/querycache.o : $(abspath ../../game/shared/querycache.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ragdoll_shared.P
endif

$(OBJ_DIR)/ragdoll_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ragdoll_shared.o : $(abspath ../../game/shared/ragdoll_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/replay_gamestats_shared.P
endif

$(OBJ_DIR)/replay_gamestats_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/replay_gamestats_shared.o : $(abspath ../../game/shared/replay_gamestats_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/rope_helpers.P
endif

$(OBJ_DIR)/rope_helpers.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/rope_helpers.o : $(abspath ../../game/shared/rope_helpers.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/saverestore.P
endif

$(OBJ_DIR)/saverestore.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/saverestore.o : $(abspath ../../game/shared/saverestore.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/SceneCache.P
endif

$(OBJ_DIR)/SceneCache.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/SceneCache.o : $(abspath ../../game/shared/SceneCache.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/sceneentity_shared.P
endif

$(OBJ_DIR)/sceneentity_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/sceneentity_shared.o : $(abspath ../../game/shared/sceneentity_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/sequence_Transitioner.P
endif

$(OBJ_DIR)/sequence_Transitioner.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/sequence_Transitioner.o : $(abspath ../../game/shared/sequence_Transitioner.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/sheetsimulator.P
endif

$(OBJ_DIR)/sheetsimulator.o : $(abspath ../../game/shared/sheetsimulator.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/simtimer.P
endif

$(OBJ_DIR)/simtimer.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/simtimer.o : $(abspath ../../game/shared/simtimer.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/singleplay_gamerules.P
endif

$(OBJ_DIR)/singleplay_gamerules.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/singleplay_gamerules.o : $(abspath ../../game/shared/singleplay_gamerules.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/SoundEmitterSystem.P
endif

$(OBJ_DIR)/SoundEmitterSystem.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/SoundEmitterSystem.o : $(abspath ../../game/shared/SoundEmitterSystem.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/soundenvelope.P
endif

$(OBJ_DIR)/soundenvelope.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/soundenvelope.o : $(abspath ../../game/shared/soundenvelope.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/Sprite.P
endif

$(OBJ_DIR)/Sprite.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/Sprite.o : $(abspath ../../game/shared/Sprite.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/SpriteTrail.P
endif

$(OBJ_DIR)/SpriteTrail.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/SpriteTrail.o : $(abspath ../../game/shared/SpriteTrail.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/steamworks_gamestats.P
endif

$(OBJ_DIR)/steamworks_gamestats.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/steamworks_gamestats.o : $(abspath ../../game/shared/steamworks_gamestats.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/studio_shared.P
endif

$(OBJ_DIR)/studio_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/studio_shared.o : $(abspath ../../game/shared/studio_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/takedamageinfo.P
endif

$(OBJ_DIR)/takedamageinfo.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/takedamageinfo.o : $(abspath ../../game/shared/takedamageinfo.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/teamplayroundbased_gamerules.P
endif

$(OBJ_DIR)/teamplayroundbased_gamerules.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/teamplayroundbased_gamerules.o : $(abspath ../../game/shared/teamplayroundbased_gamerules.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/teamplay_gamerules.P
endif

$(OBJ_DIR)/teamplay_gamerules.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/teamplay_gamerules.o : $(abspath ../../game/shared/teamplay_gamerules.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/teamplay_round_timer.P
endif

$(OBJ_DIR)/teamplay_round_timer.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/teamplay_round_timer.o : $(abspath ../../game/shared/teamplay_round_timer.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/test_ehandle.P
endif

$(OBJ_DIR)/test_ehandle.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/test_ehandle.o : $(abspath ../../game/shared/test_ehandle.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/achievements_tf.P
endif

$(OBJ_DIR)/achievements_tf.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/achievements_tf.o : $(abspath ../../game/shared/tf/achievements_tf.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/achievements_tf_demoman.P
endif

$(OBJ_DIR)/achievements_tf_demoman.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/achievements_tf_demoman.o : $(abspath ../../game/shared/tf/achievements_tf_demoman.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/achievements_tf_engineer.P
endif

$(OBJ_DIR)/achievements_tf_engineer.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/achievements_tf_engineer.o : $(abspath ../../game/shared/tf/achievements_tf_engineer.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/achievements_tf_halloween.P
endif

$(OBJ_DIR)/achievements_tf_halloween.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/achievements_tf_halloween.o : $(abspath ../../game/shared/tf/achievements_tf_halloween.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/achievements_tf_heavy.P
endif

$(OBJ_DIR)/achievements_tf_heavy.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/achievements_tf_heavy.o : $(abspath ../../game/shared/tf/achievements_tf_heavy.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/achievements_tf_maps.P
endif

$(OBJ_DIR)/achievements_tf_maps.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/achievements_tf_maps.o : $(abspath ../../game/shared/tf/achievements_tf_maps.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/achievements_tf_medic.P
endif

$(OBJ_DIR)/achievements_tf_medic.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/achievements_tf_medic.o : $(abspath ../../game/shared/tf/achievements_tf_medic.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/achievements_tf_mvm.P
endif

$(OBJ_DIR)/achievements_tf_mvm.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/achievements_tf_mvm.o : $(abspath ../../game/shared/tf/achievements_tf_mvm.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/achievements_tf_pyro.P
endif

$(OBJ_DIR)/achievements_tf_pyro.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/achievements_tf_pyro.o : $(abspath ../../game/shared/tf/achievements_tf_pyro.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/achievements_tf_scout.P
endif

$(OBJ_DIR)/achievements_tf_scout.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/achievements_tf_scout.o : $(abspath ../../game/shared/tf/achievements_tf_scout.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/achievements_tf_sniper.P
endif

$(OBJ_DIR)/achievements_tf_sniper.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/achievements_tf_sniper.o : $(abspath ../../game/shared/tf/achievements_tf_sniper.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/achievements_tf_soldier.P
endif

$(OBJ_DIR)/achievements_tf_soldier.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/achievements_tf_soldier.o : $(abspath ../../game/shared/tf/achievements_tf_soldier.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/achievements_tf_spy.P
endif

$(OBJ_DIR)/achievements_tf_spy.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/achievements_tf_spy.o : $(abspath ../../game/shared/tf/achievements_tf_spy.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/baseobject_shared.P
endif

$(OBJ_DIR)/baseobject_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/baseobject_shared.o : $(abspath ../../game/shared/tf/baseobject_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/entity_bonuspack.P
endif

$(OBJ_DIR)/entity_bonuspack.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/entity_bonuspack.o : $(abspath ../../game/shared/tf/entity_bonuspack.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/entity_capture_flag.P
endif

$(OBJ_DIR)/entity_capture_flag.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/entity_capture_flag.o : $(abspath ../../game/shared/tf/entity_capture_flag.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/entity_halloween_pickup.P
endif

$(OBJ_DIR)/entity_halloween_pickup.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/entity_halloween_pickup.o : $(abspath ../../game/shared/tf/entity_halloween_pickup.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/teleport_vortex.P
endif

$(OBJ_DIR)/teleport_vortex.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/teleport_vortex.o : $(abspath ../../game/shared/tf/halloween/eyeball_boss/teleport_vortex.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_spellbook.P
endif

$(OBJ_DIR)/tf_weapon_spellbook.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_spellbook.o : $(abspath ../../game/shared/tf/halloween/tf_weapon_spellbook.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/passtime_convars.P
endif

$(OBJ_DIR)/passtime_convars.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/passtime_convars.o : $(abspath ../../game/shared/tf/passtime_convars.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/passtime_game_events.P
endif

$(OBJ_DIR)/passtime_game_events.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/passtime_game_events.o : $(abspath ../../game/shared/tf/passtime_game_events.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/quest_objective_manager.P
endif

$(OBJ_DIR)/quest_objective_manager.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/quest_objective_manager.o : $(abspath ../../game/shared/tf/quest_objective_manager.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/quest_objective_trackers.P
endif

$(OBJ_DIR)/quest_objective_trackers.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/quest_objective_trackers.o : $(abspath ../../game/shared/tf/quest_objective_trackers.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/shared_object_tracker.P
endif

$(OBJ_DIR)/shared_object_tracker.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/shared_object_tracker.o : $(abspath ../../game/shared/tf/shared_object_tracker.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_classdata.P
endif

$(OBJ_DIR)/tf_classdata.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_classdata.o : $(abspath ../../game/shared/tf/tf_classdata.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_condition.P
endif

$(OBJ_DIR)/tf_condition.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_condition.o : $(abspath ../../game/shared/tf/tf_condition.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_dropped_weapon.P
endif

$(OBJ_DIR)/tf_dropped_weapon.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_dropped_weapon.o : $(abspath ../../game/shared/tf/tf_dropped_weapon.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_duckleaderboard.P
endif

$(OBJ_DIR)/tf_duckleaderboard.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_duckleaderboard.o : $(abspath ../../game/shared/tf/tf_duckleaderboard.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_fx_shared.P
endif

$(OBJ_DIR)/tf_fx_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_fx_shared.o : $(abspath ../../game/shared/tf/tf_fx_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_gamemovement.P
endif

$(OBJ_DIR)/tf_gamemovement.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_gamemovement.o : $(abspath ../../game/shared/tf/tf_gamemovement.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_gamerules.P
endif

$(OBJ_DIR)/tf_gamerules.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_gamerules.o : $(abspath ../../game/shared/tf/tf_gamerules.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_gamestats_shared.P
endif

$(OBJ_DIR)/tf_gamestats_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_gamestats_shared.o : $(abspath ../../game/shared/tf/tf_gamestats_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_gcmessages.P
endif

$(OBJ_DIR)/tf_gcmessages.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_gcmessages.o : $(abspath ../../game/shared/tf/tf_gcmessages.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

$(OBJ_DIR)/_custombuildstep_12.touchfile : $(abspath ../../game/shared/tf/tf_gcmessages.proto) server_linux32_tf.mak $(abspath ../../game/shared/tf/tf_gcmessages.proto)
	 @echo "Running Protocol Buffer Compiler on tf_gcmessages.proto...";mkdir -p $(OBJ_DIR) 2> /dev/null;
	 mkdir ../../game/server/generated_proto_tf 2> /dev/null;../../thirdparty/protobuf-2.6.1/bin/linux32/protoc --proto_path=../../thirdparty/protobuf-2.6.1/src --proto_path=../../game/shared/tf/ --proto_path=../../gcsdk --proto_path=../../game/shared  --cpp_out=../../game/server/generated_proto_tf ../../game/shared/tf/tf_gcmessages.proto
	 @touch $(OBJ_DIR)/_custombuildstep_12.touchfile

$(abspath ../../game/server/generated_proto_tf/tf_gcmessages.pb.cc) : $(OBJ_DIR)/_custombuildstep_12.touchfile server_linux32_tf.mak
	 @touch ../../game/server/generated_proto_tf/tf_gcmessages.pb.cc

$(abspath ../../game/server/generated_proto_tf/tf_gcmessages.pb.h) : $(OBJ_DIR)/_custombuildstep_12.touchfile server_linux32_tf.mak
	 @touch ../../game/server/generated_proto_tf/tf_gcmessages.pb.h


ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_generic_bomb.P
endif

$(OBJ_DIR)/tf_generic_bomb.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_generic_bomb.o : $(abspath ../../game/shared/tf/tf_generic_bomb.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_halloween_souls_pickup.P
endif

$(OBJ_DIR)/tf_halloween_souls_pickup.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_halloween_souls_pickup.o : $(abspath ../../game/shared/tf/tf_halloween_souls_pickup.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_item.P
endif

$(OBJ_DIR)/tf_item.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_item.o : $(abspath ../../game/shared/tf/tf_item.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_item_inventory.P
endif

$(OBJ_DIR)/tf_item_inventory.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_item_inventory.o : $(abspath ../../game/shared/tf/tf_item_inventory.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_item_powerup_bottle.P
endif

$(OBJ_DIR)/tf_item_powerup_bottle.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_item_powerup_bottle.o : $(abspath ../../game/shared/tf/tf_item_powerup_bottle.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_item_schema.P
endif

$(OBJ_DIR)/tf_item_schema.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_item_schema.o : $(abspath ../../game/shared/tf/tf_item_schema.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_item_system.P
endif

$(OBJ_DIR)/tf_item_system.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_item_system.o : $(abspath ../../game/shared/tf/tf_item_system.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_item_wearable.P
endif

$(OBJ_DIR)/tf_item_wearable.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_item_wearable.o : $(abspath ../../game/shared/tf/tf_item_wearable.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_ladder_data.P
endif

$(OBJ_DIR)/tf_ladder_data.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_ladder_data.o : $(abspath ../../game/shared/tf/tf_ladder_data.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_lobby_server.P
endif

$(OBJ_DIR)/tf_lobby_server.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_lobby_server.o : $(abspath ../../game/shared/tf/tf_lobby_server.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_logic_halloween_2014.P
endif

$(OBJ_DIR)/tf_logic_halloween_2014.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_logic_halloween_2014.o : $(abspath ../../game/shared/tf/tf_logic_halloween_2014.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_logic_player_destruction.P
endif

$(OBJ_DIR)/tf_logic_player_destruction.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_logic_player_destruction.o : $(abspath ../../game/shared/tf/tf_logic_player_destruction.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_logic_robot_destruction.P
endif

$(OBJ_DIR)/tf_logic_robot_destruction.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_logic_robot_destruction.o : $(abspath ../../game/shared/tf/tf_logic_robot_destruction.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_mann_vs_machine_stats.P
endif

$(OBJ_DIR)/tf_mann_vs_machine_stats.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_mann_vs_machine_stats.o : $(abspath ../../game/shared/tf/tf_mann_vs_machine_stats.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_mapinfo.P
endif

$(OBJ_DIR)/tf_mapinfo.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_mapinfo.o : $(abspath ../../game/shared/tf/tf_mapinfo.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_matchmaking_shared.P
endif

$(OBJ_DIR)/tf_matchmaking_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_matchmaking_shared.o : $(abspath ../../game/shared/tf/tf_matchmaking_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_match_description.P
endif

$(OBJ_DIR)/tf_match_description.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_match_description.o : $(abspath ../../game/shared/tf/tf_match_description.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_obj_baseupgrade_shared.P
endif

$(OBJ_DIR)/tf_obj_baseupgrade_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_obj_baseupgrade_shared.o : $(abspath ../../game/shared/tf/tf_obj_baseupgrade_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_party.P
endif

$(OBJ_DIR)/tf_party.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_party.o : $(abspath ../../game/shared/tf/tf_party.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_playeranimstate.P
endif

$(OBJ_DIR)/tf_playeranimstate.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_playeranimstate.o : $(abspath ../../game/shared/tf/tf_playeranimstate.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_playerclass_info_parse.P
endif

$(OBJ_DIR)/tf_playerclass_info_parse.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_playerclass_info_parse.o : $(abspath ../../game/shared/tf/tf_playerclass_info_parse.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_playerclass_shared.P
endif

$(OBJ_DIR)/tf_playerclass_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_playerclass_shared.o : $(abspath ../../game/shared/tf/tf_playerclass_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_player_shared.P
endif

$(OBJ_DIR)/tf_player_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_player_shared.o : $(abspath ../../game/shared/tf/tf_player_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_projectile_base.P
endif

$(OBJ_DIR)/tf_projectile_base.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_projectile_base.o : $(abspath ../../game/shared/tf/tf_projectile_base.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_projectile_energy_ring.P
endif

$(OBJ_DIR)/tf_projectile_energy_ring.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_projectile_energy_ring.o : $(abspath ../../game/shared/tf/tf_projectile_energy_ring.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_projectile_nail.P
endif

$(OBJ_DIR)/tf_projectile_nail.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_projectile_nail.o : $(abspath ../../game/shared/tf/tf_projectile_nail.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_pumpkin_bomb.P
endif

$(OBJ_DIR)/tf_pumpkin_bomb.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_pumpkin_bomb.o : $(abspath ../../game/shared/tf/tf_pumpkin_bomb.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_quest_restriction.P
endif

$(OBJ_DIR)/tf_quest_restriction.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_quest_restriction.o : $(abspath ../../game/shared/tf/tf_quest_restriction.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_revive.P
endif

$(OBJ_DIR)/tf_revive.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_revive.o : $(abspath ../../game/shared/tf/tf_revive.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_robot_destruction_robot.P
endif

$(OBJ_DIR)/tf_robot_destruction_robot.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_robot_destruction_robot.o : $(abspath ../../game/shared/tf/tf_robot_destruction_robot.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_shareddefs.P
endif

$(OBJ_DIR)/tf_shareddefs.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_shareddefs.o : $(abspath ../../game/shared/tf/tf_shareddefs.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_target_dummy.P
endif

$(OBJ_DIR)/tf_target_dummy.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_target_dummy.o : $(abspath ../../game/shared/tf/tf_target_dummy.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_upgrades_shared.P
endif

$(OBJ_DIR)/tf_upgrades_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_upgrades_shared.o : $(abspath ../../game/shared/tf/tf_upgrades_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_usermessages.P
endif

$(OBJ_DIR)/tf_usermessages.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_usermessages.o : $(abspath ../../game/shared/tf/tf_usermessages.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_viewmodel.P
endif

$(OBJ_DIR)/tf_viewmodel.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_viewmodel.o : $(abspath ../../game/shared/tf/tf_viewmodel.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_wardata.P
endif

$(OBJ_DIR)/tf_wardata.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_wardata.o : $(abspath ../../game/shared/tf/tf_wardata.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weaponbase.P
endif

$(OBJ_DIR)/tf_weaponbase.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weaponbase.o : $(abspath ../../game/shared/tf/tf_weaponbase.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weaponbase_grenadeproj.P
endif

$(OBJ_DIR)/tf_weaponbase_grenadeproj.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weaponbase_grenadeproj.o : $(abspath ../../game/shared/tf/tf_weaponbase_grenadeproj.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weaponbase_gun.P
endif

$(OBJ_DIR)/tf_weaponbase_gun.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weaponbase_gun.o : $(abspath ../../game/shared/tf/tf_weaponbase_gun.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weaponbase_melee.P
endif

$(OBJ_DIR)/tf_weaponbase_melee.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weaponbase_melee.o : $(abspath ../../game/shared/tf/tf_weaponbase_melee.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weaponbase_merasmus_grenade.P
endif

$(OBJ_DIR)/tf_weaponbase_merasmus_grenade.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weaponbase_merasmus_grenade.o : $(abspath ../../game/shared/tf/tf_weaponbase_merasmus_grenade.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weaponbase_rocket.P
endif

$(OBJ_DIR)/tf_weaponbase_rocket.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weaponbase_rocket.o : $(abspath ../../game/shared/tf/tf_weaponbase_rocket.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_bat.P
endif

$(OBJ_DIR)/tf_weapon_bat.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_bat.o : $(abspath ../../game/shared/tf/tf_weapon_bat.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_bonesaw.P
endif

$(OBJ_DIR)/tf_weapon_bonesaw.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_bonesaw.o : $(abspath ../../game/shared/tf/tf_weapon_bonesaw.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_bottle.P
endif

$(OBJ_DIR)/tf_weapon_bottle.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_bottle.o : $(abspath ../../game/shared/tf/tf_weapon_bottle.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_buff_item.P
endif

$(OBJ_DIR)/tf_weapon_buff_item.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_buff_item.o : $(abspath ../../game/shared/tf/tf_weapon_buff_item.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_club.P
endif

$(OBJ_DIR)/tf_weapon_club.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_club.o : $(abspath ../../game/shared/tf/tf_weapon_club.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_compound_bow.P
endif

$(OBJ_DIR)/tf_weapon_compound_bow.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_compound_bow.o : $(abspath ../../game/shared/tf/tf_weapon_compound_bow.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_fireaxe.P
endif

$(OBJ_DIR)/tf_weapon_fireaxe.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_fireaxe.o : $(abspath ../../game/shared/tf/tf_weapon_fireaxe.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_fists.P
endif

$(OBJ_DIR)/tf_weapon_fists.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_fists.o : $(abspath ../../game/shared/tf/tf_weapon_fists.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_flamethrower.P
endif

$(OBJ_DIR)/tf_weapon_flamethrower.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_flamethrower.o : $(abspath ../../game/shared/tf/tf_weapon_flamethrower.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_flaregun.P
endif

$(OBJ_DIR)/tf_weapon_flaregun.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_flaregun.o : $(abspath ../../game/shared/tf/tf_weapon_flaregun.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_grapplinghook.P
endif

$(OBJ_DIR)/tf_weapon_grapplinghook.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_grapplinghook.o : $(abspath ../../game/shared/tf/tf_weapon_grapplinghook.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_grenadelauncher.P
endif

$(OBJ_DIR)/tf_weapon_grenadelauncher.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_grenadelauncher.o : $(abspath ../../game/shared/tf/tf_weapon_grenadelauncher.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_grenade_pipebomb.P
endif

$(OBJ_DIR)/tf_weapon_grenade_pipebomb.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_grenade_pipebomb.o : $(abspath ../../game/shared/tf/tf_weapon_grenade_pipebomb.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_invis.P
endif

$(OBJ_DIR)/tf_weapon_invis.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_invis.o : $(abspath ../../game/shared/tf/tf_weapon_invis.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_jar.P
endif

$(OBJ_DIR)/tf_weapon_jar.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_jar.o : $(abspath ../../game/shared/tf/tf_weapon_jar.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_knife.P
endif

$(OBJ_DIR)/tf_weapon_knife.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_knife.o : $(abspath ../../game/shared/tf/tf_weapon_knife.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_laser_pointer.P
endif

$(OBJ_DIR)/tf_weapon_laser_pointer.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_laser_pointer.o : $(abspath ../../game/shared/tf/tf_weapon_laser_pointer.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_lunchbox.P
endif

$(OBJ_DIR)/tf_weapon_lunchbox.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_lunchbox.o : $(abspath ../../game/shared/tf/tf_weapon_lunchbox.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_mechanical_arm.P
endif

$(OBJ_DIR)/tf_weapon_mechanical_arm.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_mechanical_arm.o : $(abspath ../../game/shared/tf/tf_weapon_mechanical_arm.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_medigun.P
endif

$(OBJ_DIR)/tf_weapon_medigun.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_medigun.o : $(abspath ../../game/shared/tf/tf_weapon_medigun.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_minigun.P
endif

$(OBJ_DIR)/tf_weapon_minigun.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_minigun.o : $(abspath ../../game/shared/tf/tf_weapon_minigun.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_parachute.P
endif

$(OBJ_DIR)/tf_weapon_parachute.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_parachute.o : $(abspath ../../game/shared/tf/tf_weapon_parachute.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_parse.P
endif

$(OBJ_DIR)/tf_weapon_parse.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_parse.o : $(abspath ../../game/shared/tf/tf_weapon_parse.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_particle_cannon.P
endif

$(OBJ_DIR)/tf_weapon_particle_cannon.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_particle_cannon.o : $(abspath ../../game/shared/tf/tf_weapon_particle_cannon.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_passtime_gun.P
endif

$(OBJ_DIR)/tf_weapon_passtime_gun.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_passtime_gun.o : $(abspath ../../game/shared/tf/tf_weapon_passtime_gun.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_pda.P
endif

$(OBJ_DIR)/tf_weapon_pda.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_pda.o : $(abspath ../../game/shared/tf/tf_weapon_pda.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_pipebomblauncher.P
endif

$(OBJ_DIR)/tf_weapon_pipebomblauncher.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_pipebomblauncher.o : $(abspath ../../game/shared/tf/tf_weapon_pipebomblauncher.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_pistol.P
endif

$(OBJ_DIR)/tf_weapon_pistol.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_pistol.o : $(abspath ../../game/shared/tf/tf_weapon_pistol.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_raygun.P
endif

$(OBJ_DIR)/tf_weapon_raygun.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_raygun.o : $(abspath ../../game/shared/tf/tf_weapon_raygun.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_revolver.P
endif

$(OBJ_DIR)/tf_weapon_revolver.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_revolver.o : $(abspath ../../game/shared/tf/tf_weapon_revolver.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_rocketlauncher.P
endif

$(OBJ_DIR)/tf_weapon_rocketlauncher.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_rocketlauncher.o : $(abspath ../../game/shared/tf/tf_weapon_rocketlauncher.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_shotgun.P
endif

$(OBJ_DIR)/tf_weapon_shotgun.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_shotgun.o : $(abspath ../../game/shared/tf/tf_weapon_shotgun.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_shovel.P
endif

$(OBJ_DIR)/tf_weapon_shovel.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_shovel.o : $(abspath ../../game/shared/tf/tf_weapon_shovel.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_smg.P
endif

$(OBJ_DIR)/tf_weapon_smg.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_smg.o : $(abspath ../../game/shared/tf/tf_weapon_smg.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_sniperrifle.P
endif

$(OBJ_DIR)/tf_weapon_sniperrifle.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_sniperrifle.o : $(abspath ../../game/shared/tf/tf_weapon_sniperrifle.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_sword.P
endif

$(OBJ_DIR)/tf_weapon_sword.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_sword.o : $(abspath ../../game/shared/tf/tf_weapon_sword.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_syringegun.P
endif

$(OBJ_DIR)/tf_weapon_syringegun.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_syringegun.o : $(abspath ../../game/shared/tf/tf_weapon_syringegun.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_throwable.P
endif

$(OBJ_DIR)/tf_weapon_throwable.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_throwable.o : $(abspath ../../game/shared/tf/tf_weapon_throwable.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_wrench.P
endif

$(OBJ_DIR)/tf_weapon_wrench.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_wrench.o : $(abspath ../../game/shared/tf/tf_weapon_wrench.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_wearable_item_demoshield.P
endif

$(OBJ_DIR)/tf_wearable_item_demoshield.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_wearable_item_demoshield.o : $(abspath ../../game/shared/tf/tf_wearable_item_demoshield.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_wearable_levelable_item.P
endif

$(OBJ_DIR)/tf_wearable_levelable_item.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_wearable_levelable_item.o : $(abspath ../../game/shared/tf/tf_wearable_levelable_item.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_wheel_of_doom.P
endif

$(OBJ_DIR)/tf_wheel_of_doom.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_wheel_of_doom.o : $(abspath ../../game/shared/tf/tf_wheel_of_doom.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/trigger_catapult_shared.P
endif

$(OBJ_DIR)/trigger_catapult_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/trigger_catapult_shared.o : $(abspath ../../game/shared/tf/trigger_catapult_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/usercmd.P
endif

$(OBJ_DIR)/usercmd.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/usercmd.o : $(abspath ../../game/shared/usercmd.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/usermessages.P
endif

$(OBJ_DIR)/usermessages.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/usermessages.o : $(abspath ../../game/shared/usermessages.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/util_shared.P
endif

$(OBJ_DIR)/util_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/util_shared.o : $(abspath ../../game/shared/util_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/vehicle_viewblend_shared.P
endif

$(OBJ_DIR)/vehicle_viewblend_shared.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/vehicle_viewblend_shared.o : $(abspath ../../game/shared/vehicle_viewblend_shared.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/voice_gamemgr.P
endif

$(OBJ_DIR)/voice_gamemgr.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/voice_gamemgr.o : $(abspath ../../game/shared/voice_gamemgr.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/weapon_ifmbase.P
endif

$(OBJ_DIR)/weapon_ifmbase.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/weapon_ifmbase.o : $(abspath ../../game/shared/weapon_ifmbase.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/weapon_ifmbasecamera.P
endif

$(OBJ_DIR)/weapon_ifmbasecamera.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/weapon_ifmbasecamera.o : $(abspath ../../game/shared/weapon_ifmbasecamera.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/weapon_ifmsteadycam.P
endif

$(OBJ_DIR)/weapon_ifmsteadycam.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/weapon_ifmsteadycam.o : $(abspath ../../game/shared/weapon_ifmsteadycam.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/weapon_parse.P
endif

$(OBJ_DIR)/weapon_parse.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/weapon_parse.o : $(abspath ../../game/shared/weapon_parse.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/weapon_proficiency.P
endif

$(OBJ_DIR)/weapon_proficiency.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/weapon_proficiency.o : $(abspath ../../game/shared/weapon_proficiency.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ugc_utils.P
endif

$(OBJ_DIR)/ugc_utils.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ugc_utils.o : $(abspath ../../game/shared/workshop/ugc_utils.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

$(OBJ_DIR)/_custombuildstep_13.touchfile : $(abspath ../../gcsdk/gcsystemmsgs.proto) server_linux32_tf.mak $(abspath ../../gcsdk/gcsystemmsgs.proto)
	 @echo "Running Protocol Buffer Compiler on gcsystemmsgs.proto...";mkdir -p $(OBJ_DIR) 2> /dev/null;
	 mkdir ../../game/server/generated_proto_tf 2> /dev/null;../../thirdparty/protobuf-2.6.1/bin/linux32/protoc --proto_path=../../thirdparty/protobuf-2.6.1/src --proto_path=../../gcsdk/ --proto_path=../../gcsdk --proto_path=../../game/shared  --cpp_out=../../game/server/generated_proto_tf ../../gcsdk/gcsystemmsgs.proto
	 @touch $(OBJ_DIR)/_custombuildstep_13.touchfile

$(abspath ../../game/server/generated_proto_tf/gcsystemmsgs.pb.cc) : $(OBJ_DIR)/_custombuildstep_13.touchfile server_linux32_tf.mak
	 @touch ../../game/server/generated_proto_tf/gcsystemmsgs.pb.cc

$(abspath ../../game/server/generated_proto_tf/gcsystemmsgs.pb.h) : $(OBJ_DIR)/_custombuildstep_13.touchfile server_linux32_tf.mak
	 @touch ../../game/server/generated_proto_tf/gcsystemmsgs.pb.h


$(OBJ_DIR)/_custombuildstep_14.touchfile : $(abspath ../../gcsdk/steammessages.proto) server_linux32_tf.mak $(abspath ../../gcsdk/steammessages.proto)
	 @echo "Running Protocol Buffer Compiler on steammessages.proto...";mkdir -p $(OBJ_DIR) 2> /dev/null;
	 mkdir ../../game/server/generated_proto_tf 2> /dev/null;../../thirdparty/protobuf-2.6.1/bin/linux32/protoc --proto_path=../../thirdparty/protobuf-2.6.1/src --proto_path=../../gcsdk/ --proto_path=../../gcsdk --proto_path=../../game/shared  --cpp_out=../../game/server/generated_proto_tf ../../gcsdk/steammessages.proto
	 @touch $(OBJ_DIR)/_custombuildstep_14.touchfile

$(abspath ../../game/server/generated_proto_tf/steammessages.pb.cc) : $(OBJ_DIR)/_custombuildstep_14.touchfile server_linux32_tf.mak
	 @touch ../../game/server/generated_proto_tf/steammessages.pb.cc

$(abspath ../../game/server/generated_proto_tf/steammessages.pb.h) : $(OBJ_DIR)/_custombuildstep_14.touchfile server_linux32_tf.mak
	 @touch ../../game/server/generated_proto_tf/steammessages.pb.h


ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/bone_setup.P
endif

$(OBJ_DIR)/bone_setup.o : $(abspath ../../public/bone_setup.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/collisionutils.P
endif

$(OBJ_DIR)/collisionutils.o : $(abspath ../../public/collisionutils.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/dt_send.P
endif

$(OBJ_DIR)/dt_send.o : $(abspath ../../public/dt_send.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/dt_utlvector_common.P
endif

$(OBJ_DIR)/dt_utlvector_common.o : $(abspath ../../public/dt_utlvector_common.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/dt_utlvector_send.P
endif

$(OBJ_DIR)/dt_utlvector_send.o : $(abspath ../../public/dt_utlvector_send.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/editor_sendcommand.P
endif

$(OBJ_DIR)/editor_sendcommand.o : $(abspath ../../public/editor_sendcommand.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/filesystem_helpers.P
endif

$(OBJ_DIR)/filesystem_helpers.o : $(abspath ../../public/filesystem_helpers.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/haptic_msgs.P
endif

$(OBJ_DIR)/haptic_msgs.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/haptic_msgs.o : $(abspath ../../public/haptics/haptic_msgs.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/interpolatortypes.P
endif

$(OBJ_DIR)/interpolatortypes.o : $(abspath ../../public/interpolatortypes.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/keyframe.P
endif

$(OBJ_DIR)/keyframe.o : $(abspath ../../public/keyframe/keyframe.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/map_utils.P
endif

$(OBJ_DIR)/map_utils.o : $(abspath ../../public/map_utils.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/networkvar.P
endif

$(OBJ_DIR)/networkvar.o : $(abspath ../../public/networkvar.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/registry.P
endif

$(OBJ_DIR)/registry.o : $(abspath ../../public/registry.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/rope_physics.P
endif

$(OBJ_DIR)/rope_physics.o : $(abspath ../../public/rope_physics.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/scratchpad3d.P
endif

$(OBJ_DIR)/scratchpad3d.o : $(abspath ../../public/scratchpad3d.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ScratchPadUtils.P
endif

$(OBJ_DIR)/ScratchPadUtils.o : $(abspath ../../public/ScratchPadUtils.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/server_class.P
endif

$(OBJ_DIR)/server_class.o : $(abspath ../../public/server_class.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/simple_physics.P
endif

$(OBJ_DIR)/simple_physics.o : $(abspath ../../public/simple_physics.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/SoundParametersInternal.P
endif

$(OBJ_DIR)/SoundParametersInternal.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/SoundParametersInternal.o : $(abspath ../../public/SoundParametersInternal.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/stringregistry.P
endif

$(OBJ_DIR)/stringregistry.o : $(abspath ../../public/stringregistry.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/studio.P
endif

$(OBJ_DIR)/studio.o : $(abspath ../../public/studio.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/memoverride.P
endif

$(OBJ_DIR)/memoverride.o : $(abspath ../../public/tier0/memoverride.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_activity.P
endif

$(OBJ_DIR)/ai_activity.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_activity.o : $(abspath ai_activity.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_baseactor.P
endif

$(OBJ_DIR)/ai_baseactor.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_baseactor.o : $(abspath ai_baseactor.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_basehumanoid.P
endif

$(OBJ_DIR)/ai_basehumanoid.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_basehumanoid.o : $(abspath ai_basehumanoid.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_basenpc.P
endif

$(OBJ_DIR)/ai_basenpc.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_basenpc.o : $(abspath ai_basenpc.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_basenpc_flyer.P
endif

$(OBJ_DIR)/ai_basenpc_flyer.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_basenpc_flyer.o : $(abspath ai_basenpc_flyer.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_basenpc_flyer_new.P
endif

$(OBJ_DIR)/ai_basenpc_flyer_new.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_basenpc_flyer_new.o : $(abspath ai_basenpc_flyer_new.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_basenpc_movement.P
endif

$(OBJ_DIR)/ai_basenpc_movement.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_basenpc_movement.o : $(abspath ai_basenpc_movement.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_basenpc_physicsflyer.P
endif

$(OBJ_DIR)/ai_basenpc_physicsflyer.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_basenpc_physicsflyer.o : $(abspath ai_basenpc_physicsflyer.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_basenpc_schedule.P
endif

$(OBJ_DIR)/ai_basenpc_schedule.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_basenpc_schedule.o : $(abspath ai_basenpc_schedule.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_basenpc_squad.P
endif

$(OBJ_DIR)/ai_basenpc_squad.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_basenpc_squad.o : $(abspath ai_basenpc_squad.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_behavior.P
endif

$(OBJ_DIR)/ai_behavior.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_behavior.o : $(abspath ai_behavior.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_behavior_assault.P
endif

$(OBJ_DIR)/ai_behavior_assault.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_behavior_assault.o : $(abspath ai_behavior_assault.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_behavior_fear.P
endif

$(OBJ_DIR)/ai_behavior_fear.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_behavior_fear.o : $(abspath ai_behavior_fear.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_behavior_follow.P
endif

$(OBJ_DIR)/ai_behavior_follow.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_behavior_follow.o : $(abspath ai_behavior_follow.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_behavior_lead.P
endif

$(OBJ_DIR)/ai_behavior_lead.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_behavior_lead.o : $(abspath ai_behavior_lead.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_behavior_rappel.P
endif

$(OBJ_DIR)/ai_behavior_rappel.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_behavior_rappel.o : $(abspath ai_behavior_rappel.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_behavior_standoff.P
endif

$(OBJ_DIR)/ai_behavior_standoff.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_behavior_standoff.o : $(abspath ai_behavior_standoff.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_blended_movement.P
endif

$(OBJ_DIR)/ai_blended_movement.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_blended_movement.o : $(abspath ai_blended_movement.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_condition.P
endif

$(OBJ_DIR)/ai_condition.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_condition.o : $(abspath ai_condition.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/AI_Criteria.P
endif

$(OBJ_DIR)/AI_Criteria.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/AI_Criteria.o : $(abspath AI_Criteria.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_default.P
endif

$(OBJ_DIR)/ai_default.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_default.o : $(abspath ai_default.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_dynamiclink.P
endif

$(OBJ_DIR)/ai_dynamiclink.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_dynamiclink.o : $(abspath ai_dynamiclink.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_event.P
endif

$(OBJ_DIR)/ai_event.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_event.o : $(abspath ai_event.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_goalentity.P
endif

$(OBJ_DIR)/ai_goalentity.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_goalentity.o : $(abspath ai_goalentity.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_hint.P
endif

$(OBJ_DIR)/ai_hint.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_hint.o : $(abspath ai_hint.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_hull.P
endif

$(OBJ_DIR)/ai_hull.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_hull.o : $(abspath ai_hull.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_initutils.P
endif

$(OBJ_DIR)/ai_initutils.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_initutils.o : $(abspath ai_initutils.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/AI_Interest_Target.P
endif

$(OBJ_DIR)/AI_Interest_Target.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/AI_Interest_Target.o : $(abspath AI_Interest_Target.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_link.P
endif

$(OBJ_DIR)/ai_link.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_link.o : $(abspath ai_link.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_localnavigator.P
endif

$(OBJ_DIR)/ai_localnavigator.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_localnavigator.o : $(abspath ai_localnavigator.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_looktarget.P
endif

$(OBJ_DIR)/ai_looktarget.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_looktarget.o : $(abspath ai_looktarget.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_memory.P
endif

$(OBJ_DIR)/ai_memory.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_memory.o : $(abspath ai_memory.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_motor.P
endif

$(OBJ_DIR)/ai_motor.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_motor.o : $(abspath ai_motor.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_moveprobe.P
endif

$(OBJ_DIR)/ai_moveprobe.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_moveprobe.o : $(abspath ai_moveprobe.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_moveshoot.P
endif

$(OBJ_DIR)/ai_moveshoot.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_moveshoot.o : $(abspath ai_moveshoot.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_movesolver.P
endif

$(OBJ_DIR)/ai_movesolver.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_movesolver.o : $(abspath ai_movesolver.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_namespaces.P
endif

$(OBJ_DIR)/ai_namespaces.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_namespaces.o : $(abspath ai_namespaces.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_navigator.P
endif

$(OBJ_DIR)/ai_navigator.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_navigator.o : $(abspath ai_navigator.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_network.P
endif

$(OBJ_DIR)/ai_network.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_network.o : $(abspath ai_network.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_networkmanager.P
endif

$(OBJ_DIR)/ai_networkmanager.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_networkmanager.o : $(abspath ai_networkmanager.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_node.P
endif

$(OBJ_DIR)/ai_node.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_node.o : $(abspath ai_node.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_pathfinder.P
endif

$(OBJ_DIR)/ai_pathfinder.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_pathfinder.o : $(abspath ai_pathfinder.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_planesolver.P
endif

$(OBJ_DIR)/ai_planesolver.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_planesolver.o : $(abspath ai_planesolver.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_playerally.P
endif

$(OBJ_DIR)/ai_playerally.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_playerally.o : $(abspath ai_playerally.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_relationship.P
endif

$(OBJ_DIR)/ai_relationship.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_relationship.o : $(abspath ai_relationship.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/AI_ResponseSystem.P
endif

$(OBJ_DIR)/AI_ResponseSystem.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/AI_ResponseSystem.o : $(abspath AI_ResponseSystem.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_route.P
endif

$(OBJ_DIR)/ai_route.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_route.o : $(abspath ai_route.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_saverestore.P
endif

$(OBJ_DIR)/ai_saverestore.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_saverestore.o : $(abspath ai_saverestore.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_schedule.P
endif

$(OBJ_DIR)/ai_schedule.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_schedule.o : $(abspath ai_schedule.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_scriptconditions.P
endif

$(OBJ_DIR)/ai_scriptconditions.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_scriptconditions.o : $(abspath ai_scriptconditions.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_senses.P
endif

$(OBJ_DIR)/ai_senses.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_senses.o : $(abspath ai_senses.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_sentence.P
endif

$(OBJ_DIR)/ai_sentence.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_sentence.o : $(abspath ai_sentence.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_speech.P
endif

$(OBJ_DIR)/ai_speech.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_speech.o : $(abspath ai_speech.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_speechfilter.P
endif

$(OBJ_DIR)/ai_speechfilter.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_speechfilter.o : $(abspath ai_speechfilter.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_squad.P
endif

$(OBJ_DIR)/ai_squad.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_squad.o : $(abspath ai_squad.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_squadslot.P
endif

$(OBJ_DIR)/ai_squadslot.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_squadslot.o : $(abspath ai_squadslot.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_tacticalservices.P
endif

$(OBJ_DIR)/ai_tacticalservices.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_tacticalservices.o : $(abspath ai_tacticalservices.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_task.P
endif

$(OBJ_DIR)/ai_task.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_task.o : $(abspath ai_task.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_trackpather.P
endif

$(OBJ_DIR)/ai_trackpather.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_trackpather.o : $(abspath ai_trackpather.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_utils.P
endif

$(OBJ_DIR)/ai_utils.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_utils.o : $(abspath ai_utils.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ai_waypoint.P
endif

$(OBJ_DIR)/ai_waypoint.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ai_waypoint.o : $(abspath ai_waypoint.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/baseanimating.P
endif

$(OBJ_DIR)/baseanimating.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/baseanimating.o : $(abspath baseanimating.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/BaseAnimatingOverlay.P
endif

$(OBJ_DIR)/BaseAnimatingOverlay.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/BaseAnimatingOverlay.o : $(abspath BaseAnimatingOverlay.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/basecombatcharacter.P
endif

$(OBJ_DIR)/basecombatcharacter.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/basecombatcharacter.o : $(abspath basecombatcharacter.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/basecombatweapon.P
endif

$(OBJ_DIR)/basecombatweapon.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/basecombatweapon.o : $(abspath basecombatweapon.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/baseentity.P
endif

$(OBJ_DIR)/baseentity.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/baseentity.o : $(abspath baseentity.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/baseflex.P
endif

$(OBJ_DIR)/baseflex.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/baseflex.o : $(abspath baseflex.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/basegrenade_concussion.P
endif

$(OBJ_DIR)/basegrenade_concussion.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/basegrenade_concussion.o : $(abspath basegrenade_concussion.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/basegrenade_contact.P
endif

$(OBJ_DIR)/basegrenade_contact.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/basegrenade_contact.o : $(abspath basegrenade_contact.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/basegrenade_timed.P
endif

$(OBJ_DIR)/basegrenade_timed.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/basegrenade_timed.o : $(abspath basegrenade_timed.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/basemultiplayerplayer.P
endif

$(OBJ_DIR)/basemultiplayerplayer.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/basemultiplayerplayer.o : $(abspath basemultiplayerplayer.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/basetempentity.P
endif

$(OBJ_DIR)/basetempentity.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/basetempentity.o : $(abspath basetempentity.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/baseviewmodel.P
endif

$(OBJ_DIR)/baseviewmodel.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/baseviewmodel.o : $(abspath baseviewmodel.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/base_transmit_proxy.P
endif

$(OBJ_DIR)/base_transmit_proxy.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/base_transmit_proxy.o : $(abspath base_transmit_proxy.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/bitstring.P
endif

$(OBJ_DIR)/bitstring.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/bitstring.o : $(abspath bitstring.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/bmodels.P
endif

$(OBJ_DIR)/bmodels.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/bmodels.o : $(abspath bmodels.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/buttons.P
endif

$(OBJ_DIR)/buttons.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/buttons.o : $(abspath buttons.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/cbase.P
endif

$(OBJ_DIR)/cbase.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/cbase.o : $(abspath cbase.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/client.P
endif

$(OBJ_DIR)/client.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/client.o : $(abspath client.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/colorcorrection.P
endif

$(OBJ_DIR)/colorcorrection.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/colorcorrection.o : $(abspath colorcorrection.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/colorcorrectionvolume.P
endif

$(OBJ_DIR)/colorcorrectionvolume.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/colorcorrectionvolume.o : $(abspath colorcorrectionvolume.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/CommentarySystem.P
endif

$(OBJ_DIR)/CommentarySystem.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/CommentarySystem.o : $(abspath CommentarySystem.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/controlentities.P
endif

$(OBJ_DIR)/controlentities.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/controlentities.o : $(abspath controlentities.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/cplane.P
endif

$(OBJ_DIR)/cplane.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/cplane.o : $(abspath cplane.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/CRagdollMagnet.P
endif

$(OBJ_DIR)/CRagdollMagnet.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/CRagdollMagnet.o : $(abspath CRagdollMagnet.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/damagemodifier.P
endif

$(OBJ_DIR)/damagemodifier.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/damagemodifier.o : $(abspath damagemodifier.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/doors.P
endif

$(OBJ_DIR)/doors.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/doors.o : $(abspath doors.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/dynamiclight.P
endif

$(OBJ_DIR)/dynamiclight.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/dynamiclight.o : $(abspath dynamiclight.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/effects.P
endif

$(OBJ_DIR)/effects.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/effects.o : $(abspath effects.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/EffectsServer.P
endif

$(OBJ_DIR)/EffectsServer.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/EffectsServer.o : $(abspath EffectsServer.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/entityblocker.P
endif

$(OBJ_DIR)/entityblocker.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/entityblocker.o : $(abspath entityblocker.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/EntityDissolve.P
endif

$(OBJ_DIR)/EntityDissolve.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/EntityDissolve.o : $(abspath EntityDissolve.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/EntityFlame.P
endif

$(OBJ_DIR)/EntityFlame.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/EntityFlame.o : $(abspath EntityFlame.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/entitylist.P
endif

$(OBJ_DIR)/entitylist.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/entitylist.o : $(abspath entitylist.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/EntityParticleTrail.P
endif

$(OBJ_DIR)/EntityParticleTrail.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/EntityParticleTrail.o : $(abspath EntityParticleTrail.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/entity_tools_server.P
endif

$(OBJ_DIR)/entity_tools_server.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/entity_tools_server.o : $(abspath entity_tools_server.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/EnvBeam.P
endif

$(OBJ_DIR)/EnvBeam.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/EnvBeam.o : $(abspath EnvBeam.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/EnvFade.P
endif

$(OBJ_DIR)/EnvFade.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/EnvFade.o : $(abspath EnvFade.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/EnvHudHint.P
endif

$(OBJ_DIR)/EnvHudHint.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/EnvHudHint.o : $(abspath EnvHudHint.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/EnvLaser.P
endif

$(OBJ_DIR)/EnvLaser.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/EnvLaser.o : $(abspath EnvLaser.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/EnvMessage.P
endif

$(OBJ_DIR)/EnvMessage.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/EnvMessage.o : $(abspath EnvMessage.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/envmicrophone.P
endif

$(OBJ_DIR)/envmicrophone.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/envmicrophone.o : $(abspath envmicrophone.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/EnvShake.P
endif

$(OBJ_DIR)/EnvShake.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/EnvShake.o : $(abspath EnvShake.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/EnvSpark.P
endif

$(OBJ_DIR)/EnvSpark.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/EnvSpark.o : $(abspath EnvSpark.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/env_debughistory.P
endif

$(OBJ_DIR)/env_debughistory.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/env_debughistory.o : $(abspath env_debughistory.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/env_effectsscript.P
endif

$(OBJ_DIR)/env_effectsscript.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/env_effectsscript.o : $(abspath env_effectsscript.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/env_entity_maker.P
endif

$(OBJ_DIR)/env_entity_maker.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/env_entity_maker.o : $(abspath env_entity_maker.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/env_particlescript.P
endif

$(OBJ_DIR)/env_particlescript.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/env_particlescript.o : $(abspath env_particlescript.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/env_player_surface_trigger.P
endif

$(OBJ_DIR)/env_player_surface_trigger.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/env_player_surface_trigger.o : $(abspath env_player_surface_trigger.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/env_projectedtexture.P
endif

$(OBJ_DIR)/env_projectedtexture.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/env_projectedtexture.o : $(abspath env_projectedtexture.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/env_screenoverlay.P
endif

$(OBJ_DIR)/env_screenoverlay.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/env_screenoverlay.o : $(abspath env_screenoverlay.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/env_texturetoggle.P
endif

$(OBJ_DIR)/env_texturetoggle.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/env_texturetoggle.o : $(abspath env_texturetoggle.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/env_tonemap_controller.P
endif

$(OBJ_DIR)/env_tonemap_controller.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/env_tonemap_controller.o : $(abspath env_tonemap_controller.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/env_zoom.P
endif

$(OBJ_DIR)/env_zoom.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/env_zoom.o : $(abspath env_zoom.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/EventLog.P
endif

$(OBJ_DIR)/EventLog.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/EventLog.o : $(abspath EventLog.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/event_tempentity_tester.P
endif

$(OBJ_DIR)/event_tempentity_tester.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/event_tempentity_tester.o : $(abspath event_tempentity_tester.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/explode.P
endif

$(OBJ_DIR)/explode.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/explode.o : $(abspath explode.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/filters.P
endif

$(OBJ_DIR)/filters.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/filters.o : $(abspath filters.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/fire.P
endif

$(OBJ_DIR)/fire.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/fire.o : $(abspath fire.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/fire_smoke.P
endif

$(OBJ_DIR)/fire_smoke.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/fire_smoke.o : $(abspath fire_smoke.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/fish.P
endif

$(OBJ_DIR)/fish.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/fish.o : $(abspath fish.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/fogcontroller.P
endif

$(OBJ_DIR)/fogcontroller.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/fogcontroller.o : $(abspath fogcontroller.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/fourwheelvehiclephysics.P
endif

$(OBJ_DIR)/fourwheelvehiclephysics.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/fourwheelvehiclephysics.o : $(abspath fourwheelvehiclephysics.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_areaportal.P
endif

$(OBJ_DIR)/func_areaportal.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_areaportal.o : $(abspath func_areaportal.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_areaportalbase.P
endif

$(OBJ_DIR)/func_areaportalbase.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_areaportalbase.o : $(abspath func_areaportalbase.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_areaportalwindow.P
endif

$(OBJ_DIR)/func_areaportalwindow.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_areaportalwindow.o : $(abspath func_areaportalwindow.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_break.P
endif

$(OBJ_DIR)/func_break.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_break.o : $(abspath func_break.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_breakablesurf.P
endif

$(OBJ_DIR)/func_breakablesurf.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_breakablesurf.o : $(abspath func_breakablesurf.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_dust.P
endif

$(OBJ_DIR)/func_dust.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_dust.o : $(abspath func_dust.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_ladder_endpoint.P
endif

$(OBJ_DIR)/func_ladder_endpoint.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_ladder_endpoint.o : $(abspath func_ladder_endpoint.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_lod.P
endif

$(OBJ_DIR)/func_lod.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_lod.o : $(abspath func_lod.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_movelinear.P
endif

$(OBJ_DIR)/func_movelinear.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_movelinear.o : $(abspath func_movelinear.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_occluder.P
endif

$(OBJ_DIR)/func_occluder.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_occluder.o : $(abspath func_occluder.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_reflective_glass.P
endif

$(OBJ_DIR)/func_reflective_glass.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_reflective_glass.o : $(abspath func_reflective_glass.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_smokevolume.P
endif

$(OBJ_DIR)/func_smokevolume.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_smokevolume.o : $(abspath func_smokevolume.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/game.P
endif

$(OBJ_DIR)/game.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/game.o : $(abspath game.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/gamedll_replay.P
endif

$(OBJ_DIR)/gamedll_replay.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/gamedll_replay.o : $(abspath gamedll_replay.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/gamehandle.P
endif

$(OBJ_DIR)/gamehandle.o : $(abspath gamehandle.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/gameinterface.P
endif

$(OBJ_DIR)/gameinterface.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/gameinterface.o : $(abspath gameinterface.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/GameStats_BasicStatsFunctions.P
endif

$(OBJ_DIR)/GameStats_BasicStatsFunctions.o : $(abspath GameStats_BasicStatsFunctions.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/gametrace_dll.P
endif

$(OBJ_DIR)/gametrace_dll.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/gametrace_dll.o : $(abspath gametrace_dll.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/gameweaponmanager.P
endif

$(OBJ_DIR)/gameweaponmanager.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/gameweaponmanager.o : $(abspath gameweaponmanager.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/game_ui.P
endif

$(OBJ_DIR)/game_ui.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/game_ui.o : $(abspath game_ui.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/genericactor.P
endif

$(OBJ_DIR)/genericactor.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/genericactor.o : $(abspath genericactor.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/genericmonster.P
endif

$(OBJ_DIR)/genericmonster.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/genericmonster.o : $(abspath genericmonster.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/gib.P
endif

$(OBJ_DIR)/gib.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/gib.o : $(abspath gib.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/globals.P
endif

$(OBJ_DIR)/globals.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/globals.o : $(abspath globals.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/globalstate.P
endif

$(OBJ_DIR)/globalstate.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/globalstate.o : $(abspath globalstate.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/grenadethrown.P
endif

$(OBJ_DIR)/grenadethrown.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/grenadethrown.o : $(abspath grenadethrown.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/guntarget.P
endif

$(OBJ_DIR)/guntarget.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/guntarget.o : $(abspath guntarget.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/hierarchy.P
endif

$(OBJ_DIR)/hierarchy.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/hierarchy.o : $(abspath hierarchy.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/Func_Monitor.P
endif

$(OBJ_DIR)/Func_Monitor.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/Func_Monitor.o : $(abspath hl2/Func_Monitor.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_gaussexplosion.P
endif

$(OBJ_DIR)/te_gaussexplosion.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_gaussexplosion.o : $(abspath hl2/te_gaussexplosion.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/hltvdirector.P
endif

$(OBJ_DIR)/hltvdirector.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/hltvdirector.o : $(abspath hltvdirector.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/h_ai.P
endif

$(OBJ_DIR)/h_ai.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/h_ai.o : $(abspath h_ai.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/h_export.P
endif

$(OBJ_DIR)/h_export.o : $(abspath h_export.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/info_camera_link.P
endif

$(OBJ_DIR)/info_camera_link.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/info_camera_link.o : $(abspath info_camera_link.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/info_overlay_accessor.P
endif

$(OBJ_DIR)/info_overlay_accessor.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/info_overlay_accessor.o : $(abspath info_overlay_accessor.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/init_factory.P
endif

$(OBJ_DIR)/init_factory.o : $(abspath init_factory.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/intermission.P
endif

$(OBJ_DIR)/intermission.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/intermission.o : $(abspath intermission.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/item_world.P
endif

$(OBJ_DIR)/item_world.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/item_world.o : $(abspath item_world.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/lightglow.P
endif

$(OBJ_DIR)/lightglow.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/lightglow.o : $(abspath lightglow.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/lights.P
endif

$(OBJ_DIR)/lights.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/lights.o : $(abspath lights.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/logicauto.P
endif

$(OBJ_DIR)/logicauto.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/logicauto.o : $(abspath logicauto.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/logicentities.P
endif

$(OBJ_DIR)/logicentities.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/logicentities.o : $(abspath logicentities.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/logicrelay.P
endif

$(OBJ_DIR)/logicrelay.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/logicrelay.o : $(abspath logicrelay.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/logic_measure_movement.P
endif

$(OBJ_DIR)/logic_measure_movement.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/logic_measure_movement.o : $(abspath logic_measure_movement.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/logic_navigation.P
endif

$(OBJ_DIR)/logic_navigation.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/logic_navigation.o : $(abspath logic_navigation.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/mapentities.P
endif

$(OBJ_DIR)/mapentities.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/mapentities.o : $(abspath mapentities.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/maprules.P
endif

$(OBJ_DIR)/maprules.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/maprules.o : $(abspath maprules.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/MaterialModifyControl.P
endif

$(OBJ_DIR)/MaterialModifyControl.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/MaterialModifyControl.o : $(abspath MaterialModifyControl.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/message_entity.P
endif

$(OBJ_DIR)/message_entity.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/message_entity.o : $(abspath message_entity.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/modelentities.P
endif

$(OBJ_DIR)/modelentities.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/modelentities.o : $(abspath modelentities.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/monstermaker.P
endif

$(OBJ_DIR)/monstermaker.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/monstermaker.o : $(abspath monstermaker.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/movehelper_server.P
endif

$(OBJ_DIR)/movehelper_server.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/movehelper_server.o : $(abspath movehelper_server.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/movement.P
endif

$(OBJ_DIR)/movement.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/movement.o : $(abspath movement.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/movie_explosion.P
endif

$(OBJ_DIR)/movie_explosion.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/movie_explosion.o : $(abspath movie_explosion.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/nav_area.P
endif

$(OBJ_DIR)/nav_area.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/nav_area.o : $(abspath nav_area.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/nav_colors.P
endif

$(OBJ_DIR)/nav_colors.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/nav_colors.o : $(abspath nav_colors.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/nav_edit.P
endif

$(OBJ_DIR)/nav_edit.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/nav_edit.o : $(abspath nav_edit.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/nav_entities.P
endif

$(OBJ_DIR)/nav_entities.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/nav_entities.o : $(abspath nav_entities.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/nav_file.P
endif

$(OBJ_DIR)/nav_file.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/nav_file.o : $(abspath nav_file.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/nav_generate.P
endif

$(OBJ_DIR)/nav_generate.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/nav_generate.o : $(abspath nav_generate.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/nav_ladder.P
endif

$(OBJ_DIR)/nav_ladder.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/nav_ladder.o : $(abspath nav_ladder.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/nav_merge.P
endif

$(OBJ_DIR)/nav_merge.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/nav_merge.o : $(abspath nav_merge.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/nav_mesh.P
endif

$(OBJ_DIR)/nav_mesh.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/nav_mesh.o : $(abspath nav_mesh.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/nav_mesh_factory.P
endif

$(OBJ_DIR)/nav_mesh_factory.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/nav_mesh_factory.o : $(abspath nav_mesh_factory.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/nav_node.P
endif

$(OBJ_DIR)/nav_node.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/nav_node.o : $(abspath nav_node.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/nav_simplify.P
endif

$(OBJ_DIR)/nav_simplify.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/nav_simplify.o : $(abspath nav_simplify.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ndebugoverlay.P
endif

$(OBJ_DIR)/ndebugoverlay.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ndebugoverlay.o : $(abspath ndebugoverlay.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_nav_prerequisite.P
endif

$(OBJ_DIR)/func_nav_prerequisite.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_nav_prerequisite.o : $(abspath NextBot/NavMeshEntities/func_nav_prerequisite.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/NextBot.P
endif

$(OBJ_DIR)/NextBot.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/NextBot.o : $(abspath NextBot/NextBot.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/NextBotBodyInterface.P
endif

$(OBJ_DIR)/NextBotBodyInterface.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/NextBotBodyInterface.o : $(abspath NextBot/NextBotBodyInterface.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/NextBotComponentInterface.P
endif

$(OBJ_DIR)/NextBotComponentInterface.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/NextBotComponentInterface.o : $(abspath NextBot/NextBotComponentInterface.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/NextBotGroundLocomotion.P
endif

$(OBJ_DIR)/NextBotGroundLocomotion.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/NextBotGroundLocomotion.o : $(abspath NextBot/NextBotGroundLocomotion.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/NextBotIntentionInterface.P
endif

$(OBJ_DIR)/NextBotIntentionInterface.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/NextBotIntentionInterface.o : $(abspath NextBot/NextBotIntentionInterface.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/NextBotInterface.P
endif

$(OBJ_DIR)/NextBotInterface.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/NextBotInterface.o : $(abspath NextBot/NextBotInterface.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/NextBotLocomotionInterface.P
endif

$(OBJ_DIR)/NextBotLocomotionInterface.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/NextBotLocomotionInterface.o : $(abspath NextBot/NextBotLocomotionInterface.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/NextBotManager.P
endif

$(OBJ_DIR)/NextBotManager.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/NextBotManager.o : $(abspath NextBot/NextBotManager.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/NextBotVisionInterface.P
endif

$(OBJ_DIR)/NextBotVisionInterface.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/NextBotVisionInterface.o : $(abspath NextBot/NextBotVisionInterface.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/NextBotChasePath.P
endif

$(OBJ_DIR)/NextBotChasePath.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/NextBotChasePath.o : $(abspath NextBot/Path/NextBotChasePath.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/NextBotPath.P
endif

$(OBJ_DIR)/NextBotPath.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/NextBotPath.o : $(abspath NextBot/Path/NextBotPath.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/NextBotPathFollow.P
endif

$(OBJ_DIR)/NextBotPathFollow.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/NextBotPathFollow.o : $(abspath NextBot/Path/NextBotPathFollow.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/NextBotPlayer.P
endif

$(OBJ_DIR)/NextBotPlayer.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/NextBotPlayer.o : $(abspath NextBot/Player/NextBotPlayer.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/NextBotPlayerBody.P
endif

$(OBJ_DIR)/NextBotPlayerBody.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/NextBotPlayerBody.o : $(abspath NextBot/Player/NextBotPlayerBody.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/NextBotPlayerLocomotion.P
endif

$(OBJ_DIR)/NextBotPlayerLocomotion.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/NextBotPlayerLocomotion.o : $(abspath NextBot/Player/NextBotPlayerLocomotion.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/simple_bot.P
endif

$(OBJ_DIR)/simple_bot.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/simple_bot.o : $(abspath NextBot/simple_bot.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/npc_vehicledriver.P
endif

$(OBJ_DIR)/npc_vehicledriver.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/npc_vehicledriver.o : $(abspath npc_vehicledriver.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/particle_fire.P
endif

$(OBJ_DIR)/particle_fire.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/particle_fire.o : $(abspath particle_fire.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/particle_light.P
endif

$(OBJ_DIR)/particle_light.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/particle_light.o : $(abspath particle_light.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/particle_smokegrenade.P
endif

$(OBJ_DIR)/particle_smokegrenade.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/particle_smokegrenade.o : $(abspath particle_smokegrenade.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/particle_system.P
endif

$(OBJ_DIR)/particle_system.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/particle_system.o : $(abspath particle_system.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/pathcorner.P
endif

$(OBJ_DIR)/pathcorner.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/pathcorner.o : $(abspath pathcorner.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/pathtrack.P
endif

$(OBJ_DIR)/pathtrack.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/pathtrack.o : $(abspath pathtrack.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/physconstraint.P
endif

$(OBJ_DIR)/physconstraint.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/physconstraint.o : $(abspath physconstraint.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/physics.P
endif

$(OBJ_DIR)/physics.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/physics.o : $(abspath physics.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/physics_bone_follower.P
endif

$(OBJ_DIR)/physics_bone_follower.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/physics_bone_follower.o : $(abspath physics_bone_follower.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/physics_cannister.P
endif

$(OBJ_DIR)/physics_cannister.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/physics_cannister.o : $(abspath physics_cannister.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/physics_fx.P
endif

$(OBJ_DIR)/physics_fx.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/physics_fx.o : $(abspath physics_fx.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/physics_impact_damage.P
endif

$(OBJ_DIR)/physics_impact_damage.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/physics_impact_damage.o : $(abspath physics_impact_damage.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/physics_main.P
endif

$(OBJ_DIR)/physics_main.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/physics_main.o : $(abspath physics_main.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/physics_npc_solver.P
endif

$(OBJ_DIR)/physics_npc_solver.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/physics_npc_solver.o : $(abspath physics_npc_solver.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/physics_prop_ragdoll.P
endif

$(OBJ_DIR)/physics_prop_ragdoll.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/physics_prop_ragdoll.o : $(abspath physics_prop_ragdoll.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/physobj.P
endif

$(OBJ_DIR)/physobj.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/physobj.o : $(abspath physobj.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/phys_controller.P
endif

$(OBJ_DIR)/phys_controller.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/phys_controller.o : $(abspath phys_controller.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/plasma.P
endif

$(OBJ_DIR)/plasma.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/plasma.o : $(abspath plasma.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/player.P
endif

$(OBJ_DIR)/player.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/player.o : $(abspath player.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/playerinfomanager.P
endif

$(OBJ_DIR)/playerinfomanager.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/playerinfomanager.o : $(abspath playerinfomanager.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/playerlocaldata.P
endif

$(OBJ_DIR)/playerlocaldata.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/playerlocaldata.o : $(abspath playerlocaldata.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/player_command.P
endif

$(OBJ_DIR)/player_command.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/player_command.o : $(abspath player_command.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/player_lagcompensation.P
endif

$(OBJ_DIR)/player_lagcompensation.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/player_lagcompensation.o : $(abspath player_lagcompensation.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/player_pickup.P
endif

$(OBJ_DIR)/player_pickup.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/player_pickup.o : $(abspath player_pickup.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/player_resource.P
endif

$(OBJ_DIR)/player_resource.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/player_resource.o : $(abspath player_resource.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/plugin_check.P
endif

$(OBJ_DIR)/plugin_check.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/plugin_check.o : $(abspath plugin_check.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/pointanglesensor.P
endif

$(OBJ_DIR)/pointanglesensor.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/pointanglesensor.o : $(abspath pointanglesensor.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/PointAngularVelocitySensor.P
endif

$(OBJ_DIR)/PointAngularVelocitySensor.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/PointAngularVelocitySensor.o : $(abspath PointAngularVelocitySensor.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/pointhurt.P
endif

$(OBJ_DIR)/pointhurt.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/pointhurt.o : $(abspath pointhurt.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/pointteleport.P
endif

$(OBJ_DIR)/pointteleport.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/pointteleport.o : $(abspath pointteleport.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/point_camera.P
endif

$(OBJ_DIR)/point_camera.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/point_camera.o : $(abspath point_camera.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/point_devshot_camera.P
endif

$(OBJ_DIR)/point_devshot_camera.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/point_devshot_camera.o : $(abspath point_devshot_camera.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/point_playermoveconstraint.P
endif

$(OBJ_DIR)/point_playermoveconstraint.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/point_playermoveconstraint.o : $(abspath point_playermoveconstraint.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/point_spotlight.P
endif

$(OBJ_DIR)/point_spotlight.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/point_spotlight.o : $(abspath point_spotlight.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/point_template.P
endif

$(OBJ_DIR)/point_template.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/point_template.o : $(abspath point_template.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/props.P
endif

$(OBJ_DIR)/props.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/props.o : $(abspath props.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/RagdollBoogie.P
endif

$(OBJ_DIR)/RagdollBoogie.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/RagdollBoogie.o : $(abspath RagdollBoogie.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ragdoll_manager.P
endif

$(OBJ_DIR)/ragdoll_manager.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ragdoll_manager.o : $(abspath ragdoll_manager.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/recipientfilter.P
endif

$(OBJ_DIR)/recipientfilter.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/recipientfilter.o : $(abspath recipientfilter.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/rope.P
endif

$(OBJ_DIR)/rope.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/rope.o : $(abspath rope.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/saverestore_gamedll.P
endif

$(OBJ_DIR)/saverestore_gamedll.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/saverestore_gamedll.o : $(abspath saverestore_gamedll.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/sceneentity.P
endif

$(OBJ_DIR)/sceneentity.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/sceneentity.o : $(abspath sceneentity.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/scratchpad_gamedll_helpers.P
endif

$(OBJ_DIR)/scratchpad_gamedll_helpers.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/scratchpad_gamedll_helpers.o : $(abspath scratchpad_gamedll_helpers.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/scripted.P
endif

$(OBJ_DIR)/scripted.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/scripted.o : $(abspath scripted.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/scriptedtarget.P
endif

$(OBJ_DIR)/scriptedtarget.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/scriptedtarget.o : $(abspath scriptedtarget.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/sendproxy.P
endif

$(OBJ_DIR)/sendproxy.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/sendproxy.o : $(abspath sendproxy.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ServerNetworkProperty.P
endif

$(OBJ_DIR)/ServerNetworkProperty.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ServerNetworkProperty.o : $(abspath ServerNetworkProperty.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/shadowcontrol.P
endif

$(OBJ_DIR)/shadowcontrol.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/shadowcontrol.o : $(abspath shadowcontrol.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/SkyCamera.P
endif

$(OBJ_DIR)/SkyCamera.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/SkyCamera.o : $(abspath SkyCamera.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/slideshow_display.P
endif

$(OBJ_DIR)/slideshow_display.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/slideshow_display.o : $(abspath slideshow_display.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/smokestack.P
endif

$(OBJ_DIR)/smokestack.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/smokestack.o : $(abspath smokestack.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/smoke_trail.P
endif

$(OBJ_DIR)/smoke_trail.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/smoke_trail.o : $(abspath smoke_trail.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/sound.P
endif

$(OBJ_DIR)/sound.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/sound.o : $(abspath sound.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/soundent.P
endif

$(OBJ_DIR)/soundent.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/soundent.o : $(abspath soundent.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/soundscape.P
endif

$(OBJ_DIR)/soundscape.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/soundscape.o : $(abspath soundscape.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/soundscape_system.P
endif

$(OBJ_DIR)/soundscape_system.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/soundscape_system.o : $(abspath soundscape_system.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/spotlightend.P
endif

$(OBJ_DIR)/spotlightend.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/spotlightend.o : $(abspath spotlightend.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/sprite_perfmonitor.P
endif

$(OBJ_DIR)/sprite_perfmonitor.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/sprite_perfmonitor.o : $(abspath sprite_perfmonitor.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/stdafx.P
endif

$(OBJ_DIR)/cbase.h.gch : cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_PCH) $(POST_COMPILE_FILE)

$(OBJ_DIR)/cbase.h.P : $(OBJ_DIR)/cbase.h.gch

vpath cbase.h . $(INCLUDEDIRS)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
include $(OBJ_DIR)/cbase.h.P
endif

$(OBJ_DIR)/cbase.h : cbase.h $(OBJ_DIR)/cbase.h.gch $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	cp -f $< $(OBJ_DIR)/cbase.h

$(OBJ_DIR)/stdafx.o : $(abspath stdafx.cpp) $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak $(OTHER_DEPENDENCIES)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/steamjet.P
endif

$(OBJ_DIR)/steamjet.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/steamjet.o : $(abspath steamjet.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/subs.P
endif

$(OBJ_DIR)/subs.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/subs.o : $(abspath subs.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/sun.P
endif

$(OBJ_DIR)/sun.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/sun.o : $(abspath sun.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tactical_mission.P
endif

$(OBJ_DIR)/tactical_mission.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tactical_mission.o : $(abspath tactical_mission.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tanktrain.P
endif

$(OBJ_DIR)/tanktrain.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tanktrain.o : $(abspath tanktrain.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te.P
endif

$(OBJ_DIR)/te.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te.o : $(abspath te.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/team.P
endif

$(OBJ_DIR)/team.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/team.o : $(abspath team.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/team_control_point.P
endif

$(OBJ_DIR)/team_control_point.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/team_control_point.o : $(abspath team_control_point.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/team_control_point_master.P
endif

$(OBJ_DIR)/team_control_point_master.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/team_control_point_master.o : $(abspath team_control_point_master.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/team_control_point_round.P
endif

$(OBJ_DIR)/team_control_point_round.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/team_control_point_round.o : $(abspath team_control_point_round.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/team_objectiveresource.P
endif

$(OBJ_DIR)/team_objectiveresource.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/team_objectiveresource.o : $(abspath team_objectiveresource.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/team_train_watcher.P
endif

$(OBJ_DIR)/team_train_watcher.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/team_train_watcher.o : $(abspath team_train_watcher.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/TemplateEntities.P
endif

$(OBJ_DIR)/TemplateEntities.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/TemplateEntities.o : $(abspath TemplateEntities.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tempmonster.P
endif

$(OBJ_DIR)/tempmonster.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tempmonster.o : $(abspath tempmonster.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tesla.P
endif

$(OBJ_DIR)/tesla.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tesla.o : $(abspath tesla.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/testfunctions.P
endif

$(OBJ_DIR)/testfunctions.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/testfunctions.o : $(abspath testfunctions.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/testtraceline.P
endif

$(OBJ_DIR)/testtraceline.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/testtraceline.o : $(abspath testtraceline.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/test_proxytoggle.P
endif

$(OBJ_DIR)/test_proxytoggle.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/test_proxytoggle.o : $(abspath test_proxytoggle.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/test_stressentities.P
endif

$(OBJ_DIR)/test_stressentities.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/test_stressentities.o : $(abspath test_stressentities.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/textstatsmgr.P
endif

$(OBJ_DIR)/textstatsmgr.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/textstatsmgr.o : $(abspath textstatsmgr.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_armorricochet.P
endif

$(OBJ_DIR)/te_armorricochet.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_armorricochet.o : $(abspath te_armorricochet.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_basebeam.P
endif

$(OBJ_DIR)/te_basebeam.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_basebeam.o : $(abspath te_basebeam.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_beamentpoint.P
endif

$(OBJ_DIR)/te_beamentpoint.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_beamentpoint.o : $(abspath te_beamentpoint.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_beaments.P
endif

$(OBJ_DIR)/te_beaments.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_beaments.o : $(abspath te_beaments.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_beamfollow.P
endif

$(OBJ_DIR)/te_beamfollow.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_beamfollow.o : $(abspath te_beamfollow.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_beamlaser.P
endif

$(OBJ_DIR)/te_beamlaser.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_beamlaser.o : $(abspath te_beamlaser.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_beampoints.P
endif

$(OBJ_DIR)/te_beampoints.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_beampoints.o : $(abspath te_beampoints.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_beamring.P
endif

$(OBJ_DIR)/te_beamring.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_beamring.o : $(abspath te_beamring.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_beamringpoint.P
endif

$(OBJ_DIR)/te_beamringpoint.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_beamringpoint.o : $(abspath te_beamringpoint.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_beamspline.P
endif

$(OBJ_DIR)/te_beamspline.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_beamspline.o : $(abspath te_beamspline.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_bloodsprite.P
endif

$(OBJ_DIR)/te_bloodsprite.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_bloodsprite.o : $(abspath te_bloodsprite.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_bloodstream.P
endif

$(OBJ_DIR)/te_bloodstream.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_bloodstream.o : $(abspath te_bloodstream.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_breakmodel.P
endif

$(OBJ_DIR)/te_breakmodel.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_breakmodel.o : $(abspath te_breakmodel.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_bspdecal.P
endif

$(OBJ_DIR)/te_bspdecal.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_bspdecal.o : $(abspath te_bspdecal.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_bubbles.P
endif

$(OBJ_DIR)/te_bubbles.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_bubbles.o : $(abspath te_bubbles.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_bubbletrail.P
endif

$(OBJ_DIR)/te_bubbletrail.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_bubbletrail.o : $(abspath te_bubbletrail.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_clientprojectile.P
endif

$(OBJ_DIR)/te_clientprojectile.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_clientprojectile.o : $(abspath te_clientprojectile.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_decal.P
endif

$(OBJ_DIR)/te_decal.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_decal.o : $(abspath te_decal.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_dynamiclight.P
endif

$(OBJ_DIR)/te_dynamiclight.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_dynamiclight.o : $(abspath te_dynamiclight.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_effect_dispatch.P
endif

$(OBJ_DIR)/te_effect_dispatch.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_effect_dispatch.o : $(abspath te_effect_dispatch.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_energysplash.P
endif

$(OBJ_DIR)/te_energysplash.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_energysplash.o : $(abspath te_energysplash.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_explosion.P
endif

$(OBJ_DIR)/te_explosion.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_explosion.o : $(abspath te_explosion.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_fizz.P
endif

$(OBJ_DIR)/te_fizz.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_fizz.o : $(abspath te_fizz.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_footprintdecal.P
endif

$(OBJ_DIR)/te_footprintdecal.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_footprintdecal.o : $(abspath te_footprintdecal.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_glassshatter.P
endif

$(OBJ_DIR)/te_glassshatter.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_glassshatter.o : $(abspath te_glassshatter.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_glowsprite.P
endif

$(OBJ_DIR)/te_glowsprite.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_glowsprite.o : $(abspath te_glowsprite.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_impact.P
endif

$(OBJ_DIR)/te_impact.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_impact.o : $(abspath te_impact.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_killplayerattachments.P
endif

$(OBJ_DIR)/te_killplayerattachments.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_killplayerattachments.o : $(abspath te_killplayerattachments.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_largefunnel.P
endif

$(OBJ_DIR)/te_largefunnel.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_largefunnel.o : $(abspath te_largefunnel.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_muzzleflash.P
endif

$(OBJ_DIR)/te_muzzleflash.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_muzzleflash.o : $(abspath te_muzzleflash.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_particlesystem.P
endif

$(OBJ_DIR)/te_particlesystem.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_particlesystem.o : $(abspath te_particlesystem.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_physicsprop.P
endif

$(OBJ_DIR)/te_physicsprop.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_physicsprop.o : $(abspath te_physicsprop.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_playerdecal.P
endif

$(OBJ_DIR)/te_playerdecal.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_playerdecal.o : $(abspath te_playerdecal.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_projecteddecal.P
endif

$(OBJ_DIR)/te_projecteddecal.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_projecteddecal.o : $(abspath te_projecteddecal.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_showline.P
endif

$(OBJ_DIR)/te_showline.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_showline.o : $(abspath te_showline.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_smoke.P
endif

$(OBJ_DIR)/te_smoke.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_smoke.o : $(abspath te_smoke.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_sparks.P
endif

$(OBJ_DIR)/te_sparks.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_sparks.o : $(abspath te_sparks.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_sprite.P
endif

$(OBJ_DIR)/te_sprite.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_sprite.o : $(abspath te_sprite.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_spritespray.P
endif

$(OBJ_DIR)/te_spritespray.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_spritespray.o : $(abspath te_spritespray.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_worlddecal.P
endif

$(OBJ_DIR)/te_worlddecal.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_worlddecal.o : $(abspath te_worlddecal.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_prepare_stickybomb_trap.P
endif

$(OBJ_DIR)/tf_bot_prepare_stickybomb_trap.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_prepare_stickybomb_trap.o : $(abspath tf/bot/behavior/demoman/tf_bot_prepare_stickybomb_trap.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_stickybomb_sentrygun.P
endif

$(OBJ_DIR)/tf_bot_stickybomb_sentrygun.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_stickybomb_sentrygun.o : $(abspath tf/bot/behavior/demoman/tf_bot_stickybomb_sentrygun.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_mvm_engineer_build_sentry.P
endif

$(OBJ_DIR)/tf_bot_mvm_engineer_build_sentry.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_mvm_engineer_build_sentry.o : $(abspath tf/bot/behavior/engineer/mvm_engineer/tf_bot_mvm_engineer_build_sentry.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_mvm_engineer_build_teleporter.P
endif

$(OBJ_DIR)/tf_bot_mvm_engineer_build_teleporter.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_mvm_engineer_build_teleporter.o : $(abspath tf/bot/behavior/engineer/mvm_engineer/tf_bot_mvm_engineer_build_teleporter.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_mvm_engineer_idle.P
endif

$(OBJ_DIR)/tf_bot_mvm_engineer_idle.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_mvm_engineer_idle.o : $(abspath tf/bot/behavior/engineer/mvm_engineer/tf_bot_mvm_engineer_idle.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_mvm_engineer_teleport_spawn.P
endif

$(OBJ_DIR)/tf_bot_mvm_engineer_teleport_spawn.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_mvm_engineer_teleport_spawn.o : $(abspath tf/bot/behavior/engineer/mvm_engineer/tf_bot_mvm_engineer_teleport_spawn.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_engineer_build.P
endif

$(OBJ_DIR)/tf_bot_engineer_build.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_engineer_build.o : $(abspath tf/bot/behavior/engineer/tf_bot_engineer_build.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_engineer_building.P
endif

$(OBJ_DIR)/tf_bot_engineer_building.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_engineer_building.o : $(abspath tf/bot/behavior/engineer/tf_bot_engineer_building.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_engineer_build_dispenser.P
endif

$(OBJ_DIR)/tf_bot_engineer_build_dispenser.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_engineer_build_dispenser.o : $(abspath tf/bot/behavior/engineer/tf_bot_engineer_build_dispenser.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_engineer_build_sentrygun.P
endif

$(OBJ_DIR)/tf_bot_engineer_build_sentrygun.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_engineer_build_sentrygun.o : $(abspath tf/bot/behavior/engineer/tf_bot_engineer_build_sentrygun.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_engineer_build_teleport_entrance.P
endif

$(OBJ_DIR)/tf_bot_engineer_build_teleport_entrance.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_engineer_build_teleport_entrance.o : $(abspath tf/bot/behavior/engineer/tf_bot_engineer_build_teleport_entrance.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_engineer_build_teleport_exit.P
endif

$(OBJ_DIR)/tf_bot_engineer_build_teleport_exit.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_engineer_build_teleport_exit.o : $(abspath tf/bot/behavior/engineer/tf_bot_engineer_build_teleport_exit.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_engineer_move_to_build.P
endif

$(OBJ_DIR)/tf_bot_engineer_move_to_build.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_engineer_move_to_build.o : $(abspath tf/bot/behavior/engineer/tf_bot_engineer_move_to_build.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_medic_heal.P
endif

$(OBJ_DIR)/tf_bot_medic_heal.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_medic_heal.o : $(abspath tf/bot/behavior/medic/tf_bot_medic_heal.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_medic_retreat.P
endif

$(OBJ_DIR)/tf_bot_medic_retreat.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_medic_retreat.o : $(abspath tf/bot/behavior/medic/tf_bot_medic_retreat.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_mission_destroy_sentries.P
endif

$(OBJ_DIR)/tf_bot_mission_destroy_sentries.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_mission_destroy_sentries.o : $(abspath tf/bot/behavior/missions/tf_bot_mission_destroy_sentries.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_mission_reprogrammed.P
endif

$(OBJ_DIR)/tf_bot_mission_reprogrammed.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_mission_reprogrammed.o : $(abspath tf/bot/behavior/missions/tf_bot_mission_reprogrammed.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_mission_suicide_bomber.P
endif

$(OBJ_DIR)/tf_bot_mission_suicide_bomber.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_mission_suicide_bomber.o : $(abspath tf/bot/behavior/missions/tf_bot_mission_suicide_bomber.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_nav_ent_destroy_entity.P
endif

$(OBJ_DIR)/tf_bot_nav_ent_destroy_entity.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_nav_ent_destroy_entity.o : $(abspath tf/bot/behavior/nav_entities/tf_bot_nav_ent_destroy_entity.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_nav_ent_move_to.P
endif

$(OBJ_DIR)/tf_bot_nav_ent_move_to.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_nav_ent_move_to.o : $(abspath tf/bot/behavior/nav_entities/tf_bot_nav_ent_move_to.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_nav_ent_wait.P
endif

$(OBJ_DIR)/tf_bot_nav_ent_wait.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_nav_ent_wait.o : $(abspath tf/bot/behavior/nav_entities/tf_bot_nav_ent_wait.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_capture_point.P
endif

$(OBJ_DIR)/tf_bot_capture_point.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_capture_point.o : $(abspath tf/bot/behavior/scenario/capture_point/tf_bot_capture_point.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_defend_point.P
endif

$(OBJ_DIR)/tf_bot_defend_point.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_defend_point.o : $(abspath tf/bot/behavior/scenario/capture_point/tf_bot_defend_point.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_defend_point_block_capture.P
endif

$(OBJ_DIR)/tf_bot_defend_point_block_capture.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_defend_point_block_capture.o : $(abspath tf/bot/behavior/scenario/capture_point/tf_bot_defend_point_block_capture.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_attack_flag_defenders.P
endif

$(OBJ_DIR)/tf_bot_attack_flag_defenders.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_attack_flag_defenders.o : $(abspath tf/bot/behavior/scenario/capture_the_flag/tf_bot_attack_flag_defenders.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_deliver_flag.P
endif

$(OBJ_DIR)/tf_bot_deliver_flag.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_deliver_flag.o : $(abspath tf/bot/behavior/scenario/capture_the_flag/tf_bot_deliver_flag.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_escort_flag_carrier.P
endif

$(OBJ_DIR)/tf_bot_escort_flag_carrier.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_escort_flag_carrier.o : $(abspath tf/bot/behavior/scenario/capture_the_flag/tf_bot_escort_flag_carrier.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_fetch_flag.P
endif

$(OBJ_DIR)/tf_bot_fetch_flag.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_fetch_flag.o : $(abspath tf/bot/behavior/scenario/capture_the_flag/tf_bot_fetch_flag.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_creep_wave.P
endif

$(OBJ_DIR)/tf_bot_creep_wave.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_creep_wave.o : $(abspath tf/bot/behavior/scenario/creep_wave/tf_bot_creep_wave.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_payload_block.P
endif

$(OBJ_DIR)/tf_bot_payload_block.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_payload_block.o : $(abspath tf/bot/behavior/scenario/payload/tf_bot_payload_block.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_payload_guard.P
endif

$(OBJ_DIR)/tf_bot_payload_guard.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_payload_guard.o : $(abspath tf/bot/behavior/scenario/payload/tf_bot_payload_guard.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_payload_push.P
endif

$(OBJ_DIR)/tf_bot_payload_push.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_payload_push.o : $(abspath tf/bot/behavior/scenario/payload/tf_bot_payload_push.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_companion.P
endif

$(OBJ_DIR)/tf_bot_companion.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_companion.o : $(abspath tf/bot/behavior/scenario/raid/tf_bot_companion.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_guard_area.P
endif

$(OBJ_DIR)/tf_bot_guard_area.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_guard_area.o : $(abspath tf/bot/behavior/scenario/raid/tf_bot_guard_area.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_mob_rush.P
endif

$(OBJ_DIR)/tf_bot_mob_rush.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_mob_rush.o : $(abspath tf/bot/behavior/scenario/raid/tf_bot_mob_rush.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_squad_attack.P
endif

$(OBJ_DIR)/tf_bot_squad_attack.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_squad_attack.o : $(abspath tf/bot/behavior/scenario/raid/tf_bot_squad_attack.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_wander.P
endif

$(OBJ_DIR)/tf_bot_wander.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_wander.o : $(abspath tf/bot/behavior/scenario/raid/tf_bot_wander.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_sniper_attack.P
endif

$(OBJ_DIR)/tf_bot_sniper_attack.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_sniper_attack.o : $(abspath tf/bot/behavior/sniper/tf_bot_sniper_attack.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_sniper_lurk.P
endif

$(OBJ_DIR)/tf_bot_sniper_lurk.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_sniper_lurk.o : $(abspath tf/bot/behavior/sniper/tf_bot_sniper_lurk.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_spy_attack.P
endif

$(OBJ_DIR)/tf_bot_spy_attack.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_spy_attack.o : $(abspath tf/bot/behavior/spy/tf_bot_spy_attack.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_spy_backstab.P
endif

$(OBJ_DIR)/tf_bot_spy_backstab.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_spy_backstab.o : $(abspath tf/bot/behavior/spy/tf_bot_spy_backstab.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_spy_escape.P
endif

$(OBJ_DIR)/tf_bot_spy_escape.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_spy_escape.o : $(abspath tf/bot/behavior/spy/tf_bot_spy_escape.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_spy_hide.P
endif

$(OBJ_DIR)/tf_bot_spy_hide.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_spy_hide.o : $(abspath tf/bot/behavior/spy/tf_bot_spy_hide.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_spy_infiltrate.P
endif

$(OBJ_DIR)/tf_bot_spy_infiltrate.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_spy_infiltrate.o : $(abspath tf/bot/behavior/spy/tf_bot_spy_infiltrate.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_spy_leave_spawn_room.P
endif

$(OBJ_DIR)/tf_bot_spy_leave_spawn_room.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_spy_leave_spawn_room.o : $(abspath tf/bot/behavior/spy/tf_bot_spy_leave_spawn_room.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_spy_lurk.P
endif

$(OBJ_DIR)/tf_bot_spy_lurk.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_spy_lurk.o : $(abspath tf/bot/behavior/spy/tf_bot_spy_lurk.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_spy_sap.P
endif

$(OBJ_DIR)/tf_bot_spy_sap.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_spy_sap.o : $(abspath tf/bot/behavior/spy/tf_bot_spy_sap.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_escort_squad_leader.P
endif

$(OBJ_DIR)/tf_bot_escort_squad_leader.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_escort_squad_leader.o : $(abspath tf/bot/behavior/squad/tf_bot_escort_squad_leader.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_approach_object.P
endif

$(OBJ_DIR)/tf_bot_approach_object.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_approach_object.o : $(abspath tf/bot/behavior/tf_bot_approach_object.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_attack.P
endif

$(OBJ_DIR)/tf_bot_attack.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_attack.o : $(abspath tf/bot/behavior/tf_bot_attack.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_behavior.P
endif

$(OBJ_DIR)/tf_bot_behavior.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_behavior.o : $(abspath tf/bot/behavior/tf_bot_behavior.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_dead.P
endif

$(OBJ_DIR)/tf_bot_dead.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_dead.o : $(abspath tf/bot/behavior/tf_bot_dead.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_destroy_enemy_sentry.P
endif

$(OBJ_DIR)/tf_bot_destroy_enemy_sentry.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_destroy_enemy_sentry.o : $(abspath tf/bot/behavior/tf_bot_destroy_enemy_sentry.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_escort.P
endif

$(OBJ_DIR)/tf_bot_escort.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_escort.o : $(abspath tf/bot/behavior/tf_bot_escort.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_get_ammo.P
endif

$(OBJ_DIR)/tf_bot_get_ammo.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_get_ammo.o : $(abspath tf/bot/behavior/tf_bot_get_ammo.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_get_health.P
endif

$(OBJ_DIR)/tf_bot_get_health.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_get_health.o : $(abspath tf/bot/behavior/tf_bot_get_health.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_melee_attack.P
endif

$(OBJ_DIR)/tf_bot_melee_attack.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_melee_attack.o : $(abspath tf/bot/behavior/tf_bot_melee_attack.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_move_to_vantage_point.P
endif

$(OBJ_DIR)/tf_bot_move_to_vantage_point.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_move_to_vantage_point.o : $(abspath tf/bot/behavior/tf_bot_move_to_vantage_point.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_mvm_deploy_bomb.P
endif

$(OBJ_DIR)/tf_bot_mvm_deploy_bomb.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_mvm_deploy_bomb.o : $(abspath tf/bot/behavior/tf_bot_mvm_deploy_bomb.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_retreat_to_cover.P
endif

$(OBJ_DIR)/tf_bot_retreat_to_cover.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_retreat_to_cover.o : $(abspath tf/bot/behavior/tf_bot_retreat_to_cover.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_scenario_monitor.P
endif

$(OBJ_DIR)/tf_bot_scenario_monitor.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_scenario_monitor.o : $(abspath tf/bot/behavior/tf_bot_scenario_monitor.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_seek_and_destroy.P
endif

$(OBJ_DIR)/tf_bot_seek_and_destroy.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_seek_and_destroy.o : $(abspath tf/bot/behavior/tf_bot_seek_and_destroy.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_tactical_monitor.P
endif

$(OBJ_DIR)/tf_bot_tactical_monitor.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_tactical_monitor.o : $(abspath tf/bot/behavior/tf_bot_tactical_monitor.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_taunt.P
endif

$(OBJ_DIR)/tf_bot_taunt.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_taunt.o : $(abspath tf/bot/behavior/tf_bot_taunt.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_use_item.P
endif

$(OBJ_DIR)/tf_bot_use_item.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_use_item.o : $(abspath tf/bot/behavior/tf_bot_use_item.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_use_teleporter.P
endif

$(OBJ_DIR)/tf_bot_use_teleporter.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_use_teleporter.o : $(abspath tf/bot/behavior/tf_bot_use_teleporter.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_training.P
endif

$(OBJ_DIR)/tf_bot_training.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_training.o : $(abspath tf/bot/behavior/training/tf_bot_training.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_generator.P
endif

$(OBJ_DIR)/tf_bot_generator.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_generator.o : $(abspath tf/bot/map_entities/tf_bot_generator.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_hint.P
endif

$(OBJ_DIR)/tf_bot_hint.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_hint.o : $(abspath tf/bot/map_entities/tf_bot_hint.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_hint_engineer_nest.P
endif

$(OBJ_DIR)/tf_bot_hint_engineer_nest.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_hint_engineer_nest.o : $(abspath tf/bot/map_entities/tf_bot_hint_engineer_nest.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_hint_entity.P
endif

$(OBJ_DIR)/tf_bot_hint_entity.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_hint_entity.o : $(abspath tf/bot/map_entities/tf_bot_hint_entity.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_hint_sentrygun.P
endif

$(OBJ_DIR)/tf_bot_hint_sentrygun.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_hint_sentrygun.o : $(abspath tf/bot/map_entities/tf_bot_hint_sentrygun.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_hint_teleporter_exit.P
endif

$(OBJ_DIR)/tf_bot_hint_teleporter_exit.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_hint_teleporter_exit.o : $(abspath tf/bot/map_entities/tf_bot_hint_teleporter_exit.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_proxy.P
endif

$(OBJ_DIR)/tf_bot_proxy.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_proxy.o : $(abspath tf/bot/map_entities/tf_bot_proxy.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_roster.P
endif

$(OBJ_DIR)/tf_bot_roster.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_roster.o : $(abspath tf/bot/map_entities/tf_bot_roster.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_spawner.P
endif

$(OBJ_DIR)/tf_spawner.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_spawner.o : $(abspath tf/bot/map_entities/tf_spawner.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_spawner_boss.P
endif

$(OBJ_DIR)/tf_spawner_boss.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_spawner_boss.o : $(abspath tf/bot/map_entities/tf_spawner_boss.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot.P
endif

$(OBJ_DIR)/tf_bot.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot.o : $(abspath tf/bot/tf_bot.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_body.P
endif

$(OBJ_DIR)/tf_bot_body.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_body.o : $(abspath tf/bot/tf_bot_body.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_locomotion.P
endif

$(OBJ_DIR)/tf_bot_locomotion.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_locomotion.o : $(abspath tf/bot/tf_bot_locomotion.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_manager.P
endif

$(OBJ_DIR)/tf_bot_manager.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_manager.o : $(abspath tf/bot/tf_bot_manager.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_squad.P
endif

$(OBJ_DIR)/tf_bot_squad.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_squad.o : $(abspath tf/bot/tf_bot_squad.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_vision.P
endif

$(OBJ_DIR)/tf_bot_vision.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_vision.o : $(abspath tf/bot/tf_bot_vision.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/bot_npc.P
endif

$(OBJ_DIR)/bot_npc.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/bot_npc.o : $(abspath tf/bot_npc/bot_npc.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/bot_npc_archer.P
endif

$(OBJ_DIR)/bot_npc_archer.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/bot_npc_archer.o : $(abspath tf/bot_npc/bot_npc_archer.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/bot_npc_body.P
endif

$(OBJ_DIR)/bot_npc_body.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/bot_npc_body.o : $(abspath tf/bot_npc/bot_npc_body.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/bot_npc_decoy.P
endif

$(OBJ_DIR)/bot_npc_decoy.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/bot_npc_decoy.o : $(abspath tf/bot_npc/bot_npc_decoy.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/bot_npc_mini.P
endif

$(OBJ_DIR)/bot_npc_mini.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/bot_npc_mini.o : $(abspath tf/bot_npc/bot_npc_mini.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/bot_npc_minion.P
endif

$(OBJ_DIR)/bot_npc_minion.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/bot_npc_minion.o : $(abspath tf/bot_npc/bot_npc_minion.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/entity_ammopack.P
endif

$(OBJ_DIR)/entity_ammopack.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/entity_ammopack.o : $(abspath tf/entity_ammopack.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/entity_armor.P
endif

$(OBJ_DIR)/entity_armor.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/entity_armor.o : $(abspath tf/entity_armor.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/entity_bird.P
endif

$(OBJ_DIR)/entity_bird.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/entity_bird.o : $(abspath tf/entity_bird.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/entity_currencypack.P
endif

$(OBJ_DIR)/entity_currencypack.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/entity_currencypack.o : $(abspath tf/entity_currencypack.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/entity_forcerespawn.P
endif

$(OBJ_DIR)/entity_forcerespawn.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/entity_forcerespawn.o : $(abspath tf/entity_forcerespawn.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/entity_game_text_tf.P
endif

$(OBJ_DIR)/entity_game_text_tf.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/entity_game_text_tf.o : $(abspath tf/entity_game_text_tf.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/entity_healthkit.P
endif

$(OBJ_DIR)/entity_healthkit.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/entity_healthkit.o : $(abspath tf/entity_healthkit.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/entity_intermission.P
endif

$(OBJ_DIR)/entity_intermission.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/entity_intermission.o : $(abspath tf/entity_intermission.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/entity_passtime_ball_spawn.P
endif

$(OBJ_DIR)/entity_passtime_ball_spawn.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/entity_passtime_ball_spawn.o : $(abspath tf/entity_passtime_ball_spawn.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/entity_roundwin.P
endif

$(OBJ_DIR)/entity_roundwin.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/entity_roundwin.o : $(abspath tf/entity_roundwin.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/entity_rune.P
endif

$(OBJ_DIR)/entity_rune.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/entity_rune.o : $(abspath tf/entity_rune.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/entity_tfstart.P
endif

$(OBJ_DIR)/entity_tfstart.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/entity_tfstart.o : $(abspath tf/entity_tfstart.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/entity_training_annotations.P
endif

$(OBJ_DIR)/entity_training_annotations.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/entity_training_annotations.o : $(abspath tf/entity_training_annotations.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_achievement.P
endif

$(OBJ_DIR)/func_achievement.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_achievement.o : $(abspath tf/func_achievement.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_capture_zone.P
endif

$(OBJ_DIR)/func_capture_zone.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_capture_zone.o : $(abspath tf/func_capture_zone.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_changeclass.P
endif

$(OBJ_DIR)/func_changeclass.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_changeclass.o : $(abspath tf/func_changeclass.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_flag_alert.P
endif

$(OBJ_DIR)/func_flag_alert.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_flag_alert.o : $(abspath tf/func_flag_alert.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_forcefield.P
endif

$(OBJ_DIR)/func_forcefield.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_forcefield.o : $(abspath tf/func_forcefield.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_nogrenades.P
endif

$(OBJ_DIR)/func_nogrenades.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_nogrenades.o : $(abspath tf/func_nogrenades.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_no_build.P
endif

$(OBJ_DIR)/func_no_build.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_no_build.o : $(abspath tf/func_no_build.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_passtime_goal.P
endif

$(OBJ_DIR)/func_passtime_goal.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_passtime_goal.o : $(abspath tf/func_passtime_goal.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_passtime_goalie_zone.P
endif

$(OBJ_DIR)/func_passtime_goalie_zone.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_passtime_goalie_zone.o : $(abspath tf/func_passtime_goalie_zone.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_passtime_no_ball_zone.P
endif

$(OBJ_DIR)/func_passtime_no_ball_zone.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_passtime_no_ball_zone.o : $(abspath tf/func_passtime_no_ball_zone.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_powerupvolume.P
endif

$(OBJ_DIR)/func_powerupvolume.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_powerupvolume.o : $(abspath tf/func_powerupvolume.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_regenerate.P
endif

$(OBJ_DIR)/func_regenerate.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_regenerate.o : $(abspath tf/func_regenerate.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_respawnflag.P
endif

$(OBJ_DIR)/func_respawnflag.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_respawnflag.o : $(abspath tf/func_respawnflag.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_respawnroom.P
endif

$(OBJ_DIR)/func_respawnroom.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_respawnroom.o : $(abspath tf/func_respawnroom.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/func_suggested_build.P
endif

$(OBJ_DIR)/func_suggested_build.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/func_suggested_build.o : $(abspath tf/func_suggested_build.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/eyeball_boss_approach_target.P
endif

$(OBJ_DIR)/eyeball_boss_approach_target.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/eyeball_boss_approach_target.o : $(abspath tf/halloween/eyeball_boss/eyeball_behavior/eyeball_boss_approach_target.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/eyeball_boss_behavior.P
endif

$(OBJ_DIR)/eyeball_boss_behavior.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/eyeball_boss_behavior.o : $(abspath tf/halloween/eyeball_boss/eyeball_behavior/eyeball_boss_behavior.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/eyeball_boss_emerge.P
endif

$(OBJ_DIR)/eyeball_boss_emerge.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/eyeball_boss_emerge.o : $(abspath tf/halloween/eyeball_boss/eyeball_behavior/eyeball_boss_emerge.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/eyeball_boss_emote.P
endif

$(OBJ_DIR)/eyeball_boss_emote.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/eyeball_boss_emote.o : $(abspath tf/halloween/eyeball_boss/eyeball_behavior/eyeball_boss_emote.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/eyeball_boss_idle.P
endif

$(OBJ_DIR)/eyeball_boss_idle.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/eyeball_boss_idle.o : $(abspath tf/halloween/eyeball_boss/eyeball_behavior/eyeball_boss_idle.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/eyeball_boss_launch_rockets.P
endif

$(OBJ_DIR)/eyeball_boss_launch_rockets.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/eyeball_boss_launch_rockets.o : $(abspath tf/halloween/eyeball_boss/eyeball_behavior/eyeball_boss_launch_rockets.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/eyeball_boss_notice.P
endif

$(OBJ_DIR)/eyeball_boss_notice.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/eyeball_boss_notice.o : $(abspath tf/halloween/eyeball_boss/eyeball_behavior/eyeball_boss_notice.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/eyeball_boss_stunned.P
endif

$(OBJ_DIR)/eyeball_boss_stunned.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/eyeball_boss_stunned.o : $(abspath tf/halloween/eyeball_boss/eyeball_behavior/eyeball_boss_stunned.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/eyeball_boss_teleport.P
endif

$(OBJ_DIR)/eyeball_boss_teleport.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/eyeball_boss_teleport.o : $(abspath tf/halloween/eyeball_boss/eyeball_behavior/eyeball_boss_teleport.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/eyeball_boss.P
endif

$(OBJ_DIR)/eyeball_boss.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/eyeball_boss.o : $(abspath tf/halloween/eyeball_boss/eyeball_boss.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ghost.P
endif

$(OBJ_DIR)/ghost.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/ghost.o : $(abspath tf/halloween/ghost/ghost.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/halloween_base_boss.P
endif

$(OBJ_DIR)/halloween_base_boss.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/halloween_base_boss.o : $(abspath tf/halloween/halloween_base_boss.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/headless_hatman_attack.P
endif

$(OBJ_DIR)/headless_hatman_attack.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/headless_hatman_attack.o : $(abspath tf/halloween/halloween_behavior/headless_hatman_attack.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/headless_hatman_dying.P
endif

$(OBJ_DIR)/headless_hatman_dying.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/headless_hatman_dying.o : $(abspath tf/halloween/halloween_behavior/headless_hatman_dying.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/headless_hatman_emerge.P
endif

$(OBJ_DIR)/headless_hatman_emerge.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/headless_hatman_emerge.o : $(abspath tf/halloween/halloween_behavior/headless_hatman_emerge.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/headless_hatman_terrify.P
endif

$(OBJ_DIR)/headless_hatman_terrify.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/headless_hatman_terrify.o : $(abspath tf/halloween/halloween_behavior/headless_hatman_terrify.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/halloween_gift_spawn_locations.P
endif

$(OBJ_DIR)/halloween_gift_spawn_locations.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/halloween_gift_spawn_locations.o : $(abspath tf/halloween/halloween_gift_spawn_locations.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/headless_hatman.P
endif

$(OBJ_DIR)/headless_hatman.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/headless_hatman.o : $(abspath tf/halloween/headless_hatman.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/headless_hatman_body.P
endif

$(OBJ_DIR)/headless_hatman_body.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/headless_hatman_body.o : $(abspath tf/halloween/headless_hatman_body.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/merasmus.P
endif

$(OBJ_DIR)/merasmus.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/merasmus.o : $(abspath tf/halloween/merasmus/merasmus.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/merasmus_aoe_attack.P
endif

$(OBJ_DIR)/merasmus_aoe_attack.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/merasmus_aoe_attack.o : $(abspath tf/halloween/merasmus/merasmus_behavior/merasmus_aoe_attack.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/merasmus_attack.P
endif

$(OBJ_DIR)/merasmus_attack.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/merasmus_attack.o : $(abspath tf/halloween/merasmus/merasmus_behavior/merasmus_attack.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/merasmus_disguise.P
endif

$(OBJ_DIR)/merasmus_disguise.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/merasmus_disguise.o : $(abspath tf/halloween/merasmus/merasmus_behavior/merasmus_disguise.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/merasmus_dying.P
endif

$(OBJ_DIR)/merasmus_dying.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/merasmus_dying.o : $(abspath tf/halloween/merasmus/merasmus_behavior/merasmus_dying.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/merasmus_reveal.P
endif

$(OBJ_DIR)/merasmus_reveal.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/merasmus_reveal.o : $(abspath tf/halloween/merasmus/merasmus_behavior/merasmus_reveal.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/merasmus_staff_attack.P
endif

$(OBJ_DIR)/merasmus_staff_attack.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/merasmus_staff_attack.o : $(abspath tf/halloween/merasmus/merasmus_behavior/merasmus_staff_attack.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/merasmus_stunned.P
endif

$(OBJ_DIR)/merasmus_stunned.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/merasmus_stunned.o : $(abspath tf/halloween/merasmus/merasmus_behavior/merasmus_stunned.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/merasmus_teleport.P
endif

$(OBJ_DIR)/merasmus_teleport.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/merasmus_teleport.o : $(abspath tf/halloween/merasmus/merasmus_behavior/merasmus_teleport.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/merasmus_throwing_grenade.P
endif

$(OBJ_DIR)/merasmus_throwing_grenade.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/merasmus_throwing_grenade.o : $(abspath tf/halloween/merasmus/merasmus_behavior/merasmus_throwing_grenade.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/merasmus_zap.P
endif

$(OBJ_DIR)/merasmus_zap.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/merasmus_zap.o : $(abspath tf/halloween/merasmus/merasmus_behavior/merasmus_zap.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/merasmus_body.P
endif

$(OBJ_DIR)/merasmus_body.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/merasmus_body.o : $(abspath tf/halloween/merasmus/merasmus_body.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/merasmus_dancer.P
endif

$(OBJ_DIR)/merasmus_dancer.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/merasmus_dancer.o : $(abspath tf/halloween/merasmus/merasmus_dancer.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/merasmus_trick_or_treat_prop.P
endif

$(OBJ_DIR)/merasmus_trick_or_treat_prop.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/merasmus_trick_or_treat_prop.o : $(abspath tf/halloween/merasmus/merasmus_trick_or_treat_prop.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_spell_pickup.P
endif

$(OBJ_DIR)/tf_spell_pickup.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_spell_pickup.o : $(abspath tf/halloween/spell/tf_spell_pickup.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/zombie.P
endif

$(OBJ_DIR)/zombie.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/zombie.o : $(abspath tf/halloween/zombie/zombie.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/zombie_attack.P
endif

$(OBJ_DIR)/zombie_attack.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/zombie_attack.o : $(abspath tf/halloween/zombie/zombie_behavior/zombie_attack.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/zombie_spawn.P
endif

$(OBJ_DIR)/zombie_spawn.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/zombie_spawn.o : $(abspath tf/halloween/zombie/zombie_behavior/zombie_spawn.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/zombie_special_attack.P
endif

$(OBJ_DIR)/zombie_special_attack.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/zombie_special_attack.o : $(abspath tf/halloween/zombie/zombie_behavior/zombie_special_attack.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/zombie_spawner.P
endif

$(OBJ_DIR)/zombie_spawner.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/zombie_spawner.o : $(abspath tf/halloween/zombie/zombie_spawner.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_duel.P
endif

$(OBJ_DIR)/tf_duel.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_duel.o : $(abspath tf/minigames/tf_duel.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_nav_area.P
endif

$(OBJ_DIR)/tf_nav_area.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_nav_area.o : $(abspath tf/nav_mesh/tf_nav_area.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_nav_interface.P
endif

$(OBJ_DIR)/tf_nav_interface.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_nav_interface.o : $(abspath tf/nav_mesh/tf_nav_interface.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_nav_mesh.P
endif

$(OBJ_DIR)/tf_nav_mesh.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_nav_mesh.o : $(abspath tf/nav_mesh/tf_nav_mesh.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_nav_mesh_edit.P
endif

$(OBJ_DIR)/tf_nav_mesh_edit.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_nav_mesh_edit.o : $(abspath tf/nav_mesh/tf_nav_mesh_edit.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_path_follower.P
endif

$(OBJ_DIR)/tf_path_follower.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_path_follower.o : $(abspath tf/nav_mesh/tf_path_follower.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/passtime_ballcontroller.P
endif

$(OBJ_DIR)/passtime_ballcontroller.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/passtime_ballcontroller.o : $(abspath tf/passtime_ballcontroller.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/passtime_ballcontroller_homing.P
endif

$(OBJ_DIR)/passtime_ballcontroller_homing.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/passtime_ballcontroller_homing.o : $(abspath tf/passtime_ballcontroller_homing.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/passtime_ballcontroller_playerseek.P
endif

$(OBJ_DIR)/passtime_ballcontroller_playerseek.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/passtime_ballcontroller_playerseek.o : $(abspath tf/passtime_ballcontroller_playerseek.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/archer_proxy.P
endif

$(OBJ_DIR)/archer_proxy.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/archer_proxy.o : $(abspath tf/player_vs_environment/archer_proxy.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/boss_alpha_behavior.P
endif

$(OBJ_DIR)/boss_alpha_behavior.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/boss_alpha_behavior.o : $(abspath tf/player_vs_environment/boss_alpha/behavior/boss_alpha_behavior.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/boss_alpha_chase_victim.P
endif

$(OBJ_DIR)/boss_alpha_chase_victim.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/boss_alpha_chase_victim.o : $(abspath tf/player_vs_environment/boss_alpha/behavior/boss_alpha_chase_victim.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/boss_alpha_get_off_me.P
endif

$(OBJ_DIR)/boss_alpha_get_off_me.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/boss_alpha_get_off_me.o : $(abspath tf/player_vs_environment/boss_alpha/behavior/boss_alpha_get_off_me.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/boss_alpha_guard_spot.P
endif

$(OBJ_DIR)/boss_alpha_guard_spot.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/boss_alpha_guard_spot.o : $(abspath tf/player_vs_environment/boss_alpha/behavior/boss_alpha_guard_spot.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/boss_alpha_launch_grenades.P
endif

$(OBJ_DIR)/boss_alpha_launch_grenades.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/boss_alpha_launch_grenades.o : $(abspath tf/player_vs_environment/boss_alpha/behavior/boss_alpha_launch_grenades.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/boss_alpha_launch_rockets.P
endif

$(OBJ_DIR)/boss_alpha_launch_rockets.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/boss_alpha_launch_rockets.o : $(abspath tf/player_vs_environment/boss_alpha/behavior/boss_alpha_launch_rockets.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/boss_alpha_lost_victim.P
endif

$(OBJ_DIR)/boss_alpha_lost_victim.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/boss_alpha_lost_victim.o : $(abspath tf/player_vs_environment/boss_alpha/behavior/boss_alpha_lost_victim.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/boss_alpha_nuke_attack.P
endif

$(OBJ_DIR)/boss_alpha_nuke_attack.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/boss_alpha_nuke_attack.o : $(abspath tf/player_vs_environment/boss_alpha/behavior/boss_alpha_nuke_attack.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/boss_alpha_stunned.P
endif

$(OBJ_DIR)/boss_alpha_stunned.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/boss_alpha_stunned.o : $(abspath tf/player_vs_environment/boss_alpha/behavior/boss_alpha_stunned.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/boss_alpha_tactical_monitor.P
endif

$(OBJ_DIR)/boss_alpha_tactical_monitor.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/boss_alpha_tactical_monitor.o : $(abspath tf/player_vs_environment/boss_alpha/behavior/boss_alpha_tactical_monitor.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/boss_alpha_wait_for_players.P
endif

$(OBJ_DIR)/boss_alpha_wait_for_players.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/boss_alpha_wait_for_players.o : $(abspath tf/player_vs_environment/boss_alpha/behavior/boss_alpha_wait_for_players.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/boss_alpha.P
endif

$(OBJ_DIR)/boss_alpha.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/boss_alpha.o : $(abspath tf/player_vs_environment/boss_alpha/boss_alpha.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/monster_resource.P
endif

$(OBJ_DIR)/monster_resource.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/monster_resource.o : $(abspath tf/player_vs_environment/monster_resource.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_base_boss.P
endif

$(OBJ_DIR)/tf_base_boss.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_base_boss.o : $(abspath tf/player_vs_environment/tf_base_boss.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_boss_battle_logic.P
endif

$(OBJ_DIR)/tf_boss_battle_logic.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_boss_battle_logic.o : $(abspath tf/player_vs_environment/tf_boss_battle_logic.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_mann_vs_machine_logic.P
endif

$(OBJ_DIR)/tf_mann_vs_machine_logic.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_mann_vs_machine_logic.o : $(abspath tf/player_vs_environment/tf_mann_vs_machine_logic.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_point_weapon_mimic.P
endif

$(OBJ_DIR)/tf_point_weapon_mimic.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_point_weapon_mimic.o : $(abspath tf/player_vs_environment/tf_point_weapon_mimic.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_population_manager.P
endif

$(OBJ_DIR)/tf_population_manager.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_population_manager.o : $(abspath tf/player_vs_environment/tf_population_manager.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_populators.P
endif

$(OBJ_DIR)/tf_populators.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_populators.o : $(abspath tf/player_vs_environment/tf_populators.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_populator_interface.P
endif

$(OBJ_DIR)/tf_populator_interface.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_populator_interface.o : $(abspath tf/player_vs_environment/tf_populator_interface.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_populator_spawners.P
endif

$(OBJ_DIR)/tf_populator_spawners.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_populator_spawners.o : $(abspath tf/player_vs_environment/tf_populator_spawners.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_tank_boss.P
endif

$(OBJ_DIR)/tf_tank_boss.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_tank_boss.o : $(abspath tf/player_vs_environment/tf_tank_boss.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_tank_boss_body.P
endif

$(OBJ_DIR)/tf_tank_boss_body.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_tank_boss_body.o : $(abspath tf/player_vs_environment/tf_tank_boss_body.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_upgrades.P
endif

$(OBJ_DIR)/tf_upgrades.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_upgrades.o : $(abspath tf/player_vs_environment/tf_upgrades.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_raid_logic.P
endif

$(OBJ_DIR)/tf_raid_logic.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_raid_logic.o : $(abspath tf/raid/tf_raid_logic.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/te_tfblood.P
endif

$(OBJ_DIR)/te_tfblood.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/te_tfblood.o : $(abspath tf/te_tfblood.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_ammo_pack.P
endif

$(OBJ_DIR)/tf_ammo_pack.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_ammo_pack.o : $(abspath tf/tf_ammo_pack.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_autobalance.P
endif

$(OBJ_DIR)/tf_autobalance.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_autobalance.o : $(abspath tf/tf_autobalance.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_bot_temp.P
endif

$(OBJ_DIR)/tf_bot_temp.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_bot_temp.o : $(abspath tf/tf_bot_temp.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_client.P
endif

$(OBJ_DIR)/tf_client.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_client.o : $(abspath tf/tf_client.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_entity_spawner.P
endif

$(OBJ_DIR)/tf_entity_spawner.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_entity_spawner.o : $(abspath tf/tf_entity_spawner.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_eventlog.P
endif

$(OBJ_DIR)/tf_eventlog.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_eventlog.o : $(abspath tf/tf_eventlog.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_extra_map_entity.P
endif

$(OBJ_DIR)/tf_extra_map_entity.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_extra_map_entity.o : $(abspath tf/tf_extra_map_entity.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_filters.P
endif

$(OBJ_DIR)/tf_filters.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_filters.o : $(abspath tf/tf_filters.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_fx.P
endif

$(OBJ_DIR)/tf_fx.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_fx.o : $(abspath tf/tf_fx.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_gameinterface.P
endif

$(OBJ_DIR)/tf_gameinterface.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_gameinterface.o : $(abspath tf/tf_gameinterface.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_gamestats.P
endif

$(OBJ_DIR)/tf_gamestats.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_gamestats.o : $(abspath tf/tf_gamestats.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_glow.P
endif

$(OBJ_DIR)/tf_glow.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_glow.o : $(abspath tf/tf_glow.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_hltvdirector.P
endif

$(OBJ_DIR)/tf_hltvdirector.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_hltvdirector.o : $(abspath tf/tf_hltvdirector.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_logic_on_holiday.P
endif

$(OBJ_DIR)/tf_logic_on_holiday.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_logic_on_holiday.o : $(abspath tf/tf_logic_on_holiday.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_obj.P
endif

$(OBJ_DIR)/tf_obj.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_obj.o : $(abspath tf/tf_obj.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_objective_resource.P
endif

$(OBJ_DIR)/tf_objective_resource.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_objective_resource.o : $(abspath tf/tf_objective_resource.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_obj_catapult.P
endif

$(OBJ_DIR)/tf_obj_catapult.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_obj_catapult.o : $(abspath tf/tf_obj_catapult.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_obj_dispenser.P
endif

$(OBJ_DIR)/tf_obj_dispenser.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_obj_dispenser.o : $(abspath tf/tf_obj_dispenser.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_obj_sapper.P
endif

$(OBJ_DIR)/tf_obj_sapper.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_obj_sapper.o : $(abspath tf/tf_obj_sapper.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_obj_sentrygun.P
endif

$(OBJ_DIR)/tf_obj_sentrygun.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_obj_sentrygun.o : $(abspath tf/tf_obj_sentrygun.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_obj_spy_trap.P
endif

$(OBJ_DIR)/tf_obj_spy_trap.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_obj_spy_trap.o : $(abspath tf/tf_obj_spy_trap.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_obj_teleporter.P
endif

$(OBJ_DIR)/tf_obj_teleporter.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_obj_teleporter.o : $(abspath tf/tf_obj_teleporter.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_passtime_ball.P
endif

$(OBJ_DIR)/tf_passtime_ball.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_passtime_ball.o : $(abspath tf/tf_passtime_ball.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_passtime_logic.P
endif

$(OBJ_DIR)/tf_passtime_logic.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_passtime_logic.o : $(abspath tf/tf_passtime_logic.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_player.P
endif

$(OBJ_DIR)/tf_player.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_player.o : $(abspath tf/tf_player.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_playerclass.P
endif

$(OBJ_DIR)/tf_playerclass.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_playerclass.o : $(abspath tf/tf_playerclass.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_playermove.P
endif

$(OBJ_DIR)/tf_playermove.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_playermove.o : $(abspath tf/tf_playermove.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_player_resource.P
endif

$(OBJ_DIR)/tf_player_resource.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_player_resource.o : $(abspath tf/tf_player_resource.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_powerup.P
endif

$(OBJ_DIR)/tf_powerup.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_powerup.o : $(abspath tf/tf_powerup.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_projectile_arrow.P
endif

$(OBJ_DIR)/tf_projectile_arrow.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_projectile_arrow.o : $(abspath tf/tf_projectile_arrow.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_projectile_energy_ball.P
endif

$(OBJ_DIR)/tf_projectile_energy_ball.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_projectile_energy_ball.o : $(abspath tf/tf_projectile_energy_ball.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_projectile_flare.P
endif

$(OBJ_DIR)/tf_projectile_flare.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_projectile_flare.o : $(abspath tf/tf_projectile_flare.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_projectile_rocket.P
endif

$(OBJ_DIR)/tf_projectile_rocket.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_projectile_rocket.o : $(abspath tf/tf_projectile_rocket.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_props.P
endif

$(OBJ_DIR)/tf_props.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_props.o : $(abspath tf/tf_props.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_pushentity.P
endif

$(OBJ_DIR)/tf_pushentity.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_pushentity.o : $(abspath tf/tf_pushentity.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_tactical_mission.P
endif

$(OBJ_DIR)/tf_tactical_mission.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_tactical_mission.o : $(abspath tf/tf_tactical_mission.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_taunt_prop.P
endif

$(OBJ_DIR)/tf_taunt_prop.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_taunt_prop.o : $(abspath tf/tf_taunt_prop.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_team.P
endif

$(OBJ_DIR)/tf_team.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_team.o : $(abspath tf/tf_team.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_triggers.P
endif

$(OBJ_DIR)/tf_triggers.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_triggers.o : $(abspath tf/tf_triggers.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_turret.P
endif

$(OBJ_DIR)/tf_turret.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_turret.o : $(abspath tf/tf_turret.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_wartracker.P
endif

$(OBJ_DIR)/tf_wartracker.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_wartracker.o : $(abspath tf/tf_wartracker.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/tf_weapon_builder.P
endif

$(OBJ_DIR)/tf_weapon_builder.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/tf_weapon_builder.o : $(abspath tf/tf_weapon_builder.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/trigger_catapult.P
endif

$(OBJ_DIR)/trigger_catapult.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/trigger_catapult.o : $(abspath tf/trigger_catapult.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/trigger_passtime_ball.P
endif

$(OBJ_DIR)/trigger_passtime_ball.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/trigger_passtime_ball.o : $(abspath tf/trigger_passtime_ball.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/timedeventmgr.P
endif

$(OBJ_DIR)/timedeventmgr.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/timedeventmgr.o : $(abspath timedeventmgr.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/toolframework_server.P
endif

$(OBJ_DIR)/toolframework_server.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/toolframework_server.o : $(abspath toolframework_server.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/trains.P
endif

$(OBJ_DIR)/trains.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/trains.o : $(abspath trains.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/triggers.P
endif

$(OBJ_DIR)/triggers.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/triggers.o : $(abspath triggers.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/trigger_area_capture.P
endif

$(OBJ_DIR)/trigger_area_capture.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/trigger_area_capture.o : $(abspath trigger_area_capture.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/util.P
endif

$(OBJ_DIR)/util.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/util.o : $(abspath util.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/variant_t.P
endif

$(OBJ_DIR)/variant_t.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/variant_t.o : $(abspath variant_t.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/vehicle_base.P
endif

$(OBJ_DIR)/vehicle_base.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/vehicle_base.o : $(abspath vehicle_base.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/vehicle_baseserver.P
endif

$(OBJ_DIR)/vehicle_baseserver.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/vehicle_baseserver.o : $(abspath vehicle_baseserver.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/vguiscreen.P
endif

$(OBJ_DIR)/vguiscreen.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/vguiscreen.o : $(abspath vguiscreen.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/waterbullet.P
endif

$(OBJ_DIR)/waterbullet.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/waterbullet.o : $(abspath waterbullet.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/WaterLODControl.P
endif

$(OBJ_DIR)/WaterLODControl.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/WaterLODControl.o : $(abspath WaterLODControl.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/wcedit.P
endif

$(OBJ_DIR)/wcedit.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/wcedit.o : $(abspath wcedit.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/weight_button.P
endif

$(OBJ_DIR)/weight_button.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/weight_button.o : $(abspath weight_button.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/world.P
endif

$(OBJ_DIR)/world.o : TARGET_PCH_FILE = $(OBJ_DIR)/cbase.h
$(OBJ_DIR)/world.o : $(abspath world.cpp) $(OBJ_DIR)/cbase.h.gch $(OBJ_DIR)/cbase.h $(PWD)/server_linux32_tf.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE_WITH_PCH) $(POST_COMPILE_FILE)


endif # (CFG=debug)