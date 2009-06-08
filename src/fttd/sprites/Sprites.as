package fttd.sprites {
public class Sprites {
	

	public static const SPR_SELECT_TILE:int = 752;
	public static const SPR_DOT:int = 774; // corner marker for lower/raise land
	public static const SPR_DOT_SMALL:int = 4078;
	public static const SPR_WHITE_POINT:int = 4079;

	/* ASCII */
	public static const SPR_ASCII_SPACE:int = 2;
	public static const SPR_ASCII_SPACE_SMALL:int = 226;
	public static const SPR_ASCII_SPACE_BIG:int = 450;

	public static const SPR_LARGE_SMALL_WINDOW:int = 682;

	/* Extra graphic spritenumbers */
	public static const SPR_OPENTTD_BASE:int = 4896;
	public static const OPENTTD_SPRITE_COUNT:int = 149;

	/* Halftile-selection sprites */
	public static const SPR_HALFTILE_SELECTION_FLAT:int = SPR_OPENTTD_BASE;
	public static const SPR_HALFTILE_SELECTION_DOWN:int = SPR_OPENTTD_BASE + 4;
	public static const SPR_HALFTILE_SELECTION_UP:int = SPR_OPENTTD_BASE + 8;

	public static const SPR_SQUARE:int = SPR_OPENTTD_BASE + 38; // coloured square (used for newgrf compatibility)
	public static const SPR_BLOT:int = SPR_OPENTTD_BASE + 39; // coloured circle (mainly used as vehicle profit marker and for server compatibility)
	public static const SPR_LOCK:int = SPR_OPENTTD_BASE + 40; // lock icon (for password protected servers)
	public static const SPR_BOX_EMPTY:int = SPR_OPENTTD_BASE + 41;
	public static const SPR_BOX_CHECKED:int = SPR_OPENTTD_BASE + 42;
	public static const SPR_WARNING_SIGN:int = SPR_OPENTTD_BASE + 43; // warning sign (shown if there are any newgrf errors)
	public static const SPR_WINDOW_RESIZE:int = SPR_OPENTTD_BASE + 44; // resize icon
	/* Arrow icons pointing in all 4 directions */
	public static const SPR_ARROW_DOWN:int = SPR_OPENTTD_BASE + 45;
	public static const SPR_ARROW_UP:int = SPR_OPENTTD_BASE + 46;
	public static const SPR_ARROW_LEFT:int = SPR_OPENTTD_BASE + 47;
	public static const SPR_ARROW_RIGHT:int = SPR_OPENTTD_BASE + 48;
	public static const SPR_HOUSE_ICON:int = SPR_OPENTTD_BASE + 49;
	public static const SPR_SHARED_ORDERS_ICON:int = SPR_OPENTTD_BASE + 50;
	public static const SPR_PIN_UP:int = SPR_OPENTTD_BASE + 51; // pin icon
	public static const SPR_PIN_DOWN:int = SPR_OPENTTD_BASE + 52;

	public static const SPR_CIRCLE_FOLDED:int = SPR_OPENTTD_BASE + 147; // (+) icon
	public static const SPR_CIRCLE_UNFOLDED:int = SPR_OPENTTD_BASE + 148; // (-) icon

	/* on screen keyboard icons */
	public static const SPR_OSK_LEFT:int = SPR_OPENTTD_BASE + 138;
	public static const SPR_OSK_RIGHT:int = SPR_OPENTTD_BASE + 139;
	public static const SPR_OSK_CAPS:int = SPR_OPENTTD_BASE + 140;
	public static const SPR_OSK_SHIFT:int = SPR_OPENTTD_BASE + 141;
	public static const SPR_OSK_BACKSPACE:int = SPR_OPENTTD_BASE + 142;
	public static const SPR_OSK_SPECIAL:int = SPR_OPENTTD_BASE + 143;

	/* Clone vehicles stuff */
	public static const SPR_CLONE_TRAIN:int = SPR_OPENTTD_BASE + 106;
	public static const SPR_CLONE_ROADVEH:int = SPR_OPENTTD_BASE + 107;
	public static const SPR_CLONE_SHIP:int = SPR_OPENTTD_BASE + 108;
	public static const SPR_CLONE_AIRCRAFT:int = SPR_OPENTTD_BASE + 109;

	public static const SPR_SELL_TRAIN:int = SPR_OPENTTD_BASE +  93;
	public static const SPR_SELL_ROADVEH:int = SPR_OPENTTD_BASE +  94;
	public static const SPR_SELL_SHIP:int = SPR_OPENTTD_BASE +  95;
	public static const SPR_SELL_AIRCRAFT:int = SPR_OPENTTD_BASE +  96;
	public static const SPR_SELL_ALL_TRAIN:int = SPR_OPENTTD_BASE +  97;
	public static const SPR_SELL_ALL_ROADVEH:int = SPR_OPENTTD_BASE +  98;
	public static const SPR_SELL_ALL_SHIP:int = SPR_OPENTTD_BASE +  99;
	public static const SPR_SELL_ALL_AIRCRAFT:int = SPR_OPENTTD_BASE + 100;
	public static const SPR_REPLACE_TRAIN:int = SPR_OPENTTD_BASE + 101;
	public static const SPR_REPLACE_ROADVEH:int = SPR_OPENTTD_BASE + 102;
	public static const SPR_REPLACE_SHIP:int = SPR_OPENTTD_BASE + 103;
	public static const SPR_REPLACE_AIRCRAFT:int = SPR_OPENTTD_BASE + 104;
	public static const SPR_SELL_CHAIN_TRAIN:int = SPR_OPENTTD_BASE + 105;

	public static const SPR_GROUP_CREATE_TRAIN:int = SPR_OPENTTD_BASE + 114;
	public static const SPR_GROUP_CREATE_ROADVEH:int = SPR_OPENTTD_BASE + 115;
	public static const SPR_GROUP_CREATE_SHIP:int = SPR_OPENTTD_BASE + 116;
	public static const SPR_GROUP_CREATE_AIRCRAFT:int = SPR_OPENTTD_BASE + 117;
	public static const SPR_GROUP_DELETE_TRAIN:int = SPR_OPENTTD_BASE + 118;
	public static const SPR_GROUP_DELETE_ROADVEH:int = SPR_OPENTTD_BASE + 119;
	public static const SPR_GROUP_DELETE_SHIP:int = SPR_OPENTTD_BASE + 120;
	public static const SPR_GROUP_DELETE_AIRCRAFT:int = SPR_OPENTTD_BASE + 121;
	public static const SPR_GROUP_RENAME_TRAIN:int = SPR_OPENTTD_BASE + 122;
	public static const SPR_GROUP_RENAME_ROADVEH:int = SPR_OPENTTD_BASE + 123;
	public static const SPR_GROUP_RENAME_SHIP:int = SPR_OPENTTD_BASE + 124;
	public static const SPR_GROUP_RENAME_AIRCRAFT:int = SPR_OPENTTD_BASE + 125;
	public static const SPR_GROUP_REPLACE_ON_TRAIN:int = SPR_OPENTTD_BASE + 126;
	public static const SPR_GROUP_REPLACE_ON_ROADVEH:int = SPR_OPENTTD_BASE + 127;
	public static const SPR_GROUP_REPLACE_ON_SHIP:int = SPR_OPENTTD_BASE + 128;
	public static const SPR_GROUP_REPLACE_ON_AIRCRAFT:int = SPR_OPENTTD_BASE + 129;
	public static const SPR_GROUP_REPLACE_OFF_TRAIN:int = SPR_OPENTTD_BASE + 130;
	public static const SPR_GROUP_REPLACE_OFF_ROADVEH:int = SPR_OPENTTD_BASE + 131;
	public static const SPR_GROUP_REPLACE_OFF_SHIP:int = SPR_OPENTTD_BASE + 132;
	public static const SPR_GROUP_REPLACE_OFF_AIRCRAFT:int = SPR_OPENTTD_BASE + 133;

	public static const SPR_SWITCH_TOOLBAR:int = SPR_OPENTTD_BASE + 144;

	public static const SPR_SIGNALS_BASE:int = SPR_OPENTTD_BASE + OPENTTD_SPRITE_COUNT;
	public static const PRESIGNAL_SPRITE_COUNT:int = 48;
	public static const PRESIGNAL_AND_SEMAPHORE_SPRITE_COUNT:int = 112;
	public static const PRESIGNAL_SEMAPHORE_AND_PBS_SPRITE_COUNT:int = 240;

	public static const SPR_CANALS_BASE:int = SPR_SIGNALS_BASE + PRESIGNAL_SEMAPHORE_AND_PBS_SPRITE_COUNT;
	public static const CANALS_SPRITE_COUNT:int = 65;

	/* Sprites for the Aqueduct. */
	public static const SPR_AQUEDUCT_BASE:int = SPR_CANALS_BASE + CANALS_SPRITE_COUNT;
	public static const SPR_AQUEDUCT_RAMP_SW:int = SPR_AQUEDUCT_BASE + 0;
	public static const SPR_AQUEDUCT_RAMP_SE:int = SPR_AQUEDUCT_BASE + 1;
	public static const SPR_AQUEDUCT_RAMP_NE:int = SPR_AQUEDUCT_BASE + 2;
	public static const SPR_AQUEDUCT_RAMP_NW:int = SPR_AQUEDUCT_BASE + 3;
	public static const SPR_AQUEDUCT_MIDDLE_X:int = SPR_AQUEDUCT_BASE + 4;
	public static const SPR_AQUEDUCT_MIDDLE_Y:int = SPR_AQUEDUCT_BASE + 5;
	public static const SPR_AQUEDUCT_PILLAR_X:int = SPR_AQUEDUCT_BASE + 6;
	public static const SPR_AQUEDUCT_PILLAR_Y:int = SPR_AQUEDUCT_BASE + 7;
	public static const AQUEDUCT_SPRITE_COUNT:int = 8;

	/* Sprites for 'highlighting' tracks on sloped land. */
	public static const SPR_TRACKS_FOR_SLOPES_BASE:int = SPR_AQUEDUCT_BASE + AQUEDUCT_SPRITE_COUNT;
	public static const SPR_TRACKS_FOR_SLOPES_RAIL_BASE:int = SPR_TRACKS_FOR_SLOPES_BASE + 0;
	public static const SPR_TRACKS_FOR_SLOPES_MONO_BASE:int = SPR_TRACKS_FOR_SLOPES_BASE + 4;
	public static const SPR_TRACKS_FOR_SLOPES_MAGLEV_BASE:int = SPR_TRACKS_FOR_SLOPES_BASE + 8;
	public static const TRACKS_FOR_SLOPES_SPRITE_COUNT:int = 12;

	public static const SPR_SLOPES_BASE:int = SPR_TRACKS_FOR_SLOPES_BASE + TRACKS_FOR_SLOPES_SPRITE_COUNT;
	public static const SPR_SLOPES_INCLINED_OFFSET:int = 15;
	public static const SPR_SLOPES_VIRTUAL_BASE:int = SPR_SLOPES_BASE - SPR_SLOPES_INCLINED_OFFSET; // The original foundations (see SPR_FOUNDATION_BASE below) are mapped before the additional foundations.
	public static const SPR_TRKFOUND_BLOCK_SIZE:int = 22; // The normal track foundation sprites are organized in blocks of 22.
	public static const NORMAL_FOUNDATION_SPRITE_COUNT:int = 74;
	/* Halftile foundations */
	public static const SPR_HALFTILE_FOUNDATION_BASE:int = SPR_SLOPES_BASE + NORMAL_FOUNDATION_SPRITE_COUNT;
	public static const SPR_HALFTILE_BLOCK_SIZE:int = 4; // The half tile foundation sprites are organized in blocks of 4.
	public static const NORMAL_AND_HALFTILE_FOUNDATION_SPRITE_COUNT:int = 90;

	public static const SPR_AUTORAIL_BASE:int = SPR_HALFTILE_FOUNDATION_BASE + NORMAL_AND_HALFTILE_FOUNDATION_SPRITE_COUNT;
	public static const AUTORAIL_SPRITE_COUNT:int = 55;

	public static const SPR_ELRAIL_BASE:int = SPR_AUTORAIL_BASE + AUTORAIL_SPRITE_COUNT;
	public static const ELRAIL_SPRITE_COUNT:int = 48;

	public static const SPR_2CCMAP_BASE:int = SPR_ELRAIL_BASE + ELRAIL_SPRITE_COUNT;
	public static const TWOCCMAP_SPRITE_COUNT:int = 256;

	/* shore tiles - action 05-0D */
	public static const SPR_SHORE_BASE:int = SPR_2CCMAP_BASE + TWOCCMAP_SPRITE_COUNT;
	public static const SPR_SHORE_SPRITE_COUNT:int = 18;
	public static const SPR_ORIGINALSHORE_START:int = 4062;
	public static const SPR_ORIGINALSHORE_END:int = 4069;

	public static const SPR_AIRPORTX_BASE:int = SPR_SHORE_BASE + SPR_SHORE_SPRITE_COUNT; // The sprites used for other airport angles
	public static const SPR_NEWAIRPORT_TARMAC:int = SPR_AIRPORTX_BASE;
	public static const SPR_NSRUNWAY1:int = SPR_AIRPORTX_BASE + 1;
	public static const SPR_NSRUNWAY2:int = SPR_AIRPORTX_BASE + 2;
	public static const SPR_NSRUNWAY3:int = SPR_AIRPORTX_BASE + 3;
	public static const SPR_NSRUNWAY4:int = SPR_AIRPORTX_BASE + 4;
	public static const SPR_NSRUNWAY_END:int = SPR_AIRPORTX_BASE + 5;
	public static const SPR_NEWHANGAR_S:int = SPR_AIRPORTX_BASE + 6;
	public static const SPR_NEWHANGAR_S_WALL:int = SPR_AIRPORTX_BASE + 7;
	public static const SPR_NEWHANGAR_W:int = SPR_AIRPORTX_BASE + 8;
	public static const SPR_NEWHANGAR_W_WALL:int = SPR_AIRPORTX_BASE + 9;
	public static const SPR_NEWHANGAR_N:int = SPR_AIRPORTX_BASE + 10;
	public static const SPR_NEWHANGAR_E:int = SPR_AIRPORTX_BASE + 11;
	public static const SPR_NEWHELIPAD:int = SPR_AIRPORTX_BASE + 12;
	public static const SPR_GRASS_RIGHT:int = SPR_AIRPORTX_BASE + 13;
	public static const SPR_GRASS_LEFT:int = SPR_AIRPORTX_BASE + 14;
	public static const AIRPORTX_SPRITE_COUNT:int = 15;

	public static const SPR_ROADSTOP_BASE:int = SPR_AIRPORTX_BASE + AIRPORTX_SPRITE_COUNT; // The sprites used for drive-through road stops
	public static const SPR_BUS_STOP_DT_Y_W:int = SPR_ROADSTOP_BASE;
	public static const SPR_BUS_STOP_DT_Y_E:int = SPR_ROADSTOP_BASE + 1;
	public static const SPR_BUS_STOP_DT_X_W:int = SPR_ROADSTOP_BASE + 2;
	public static const SPR_BUS_STOP_DT_X_E:int = SPR_ROADSTOP_BASE + 3;
	public static const SPR_TRUCK_STOP_DT_Y_W:int = SPR_ROADSTOP_BASE + 4;
	public static const SPR_TRUCK_STOP_DT_Y_E:int = SPR_ROADSTOP_BASE + 5;
	public static const SPR_TRUCK_STOP_DT_X_W:int = SPR_ROADSTOP_BASE + 6;
	public static const SPR_TRUCK_STOP_DT_X_E:int = SPR_ROADSTOP_BASE + 7;
	public static const ROADSTOP_SPRITE_COUNT:int = 8;

	/* Tramway sprites */
	public static const SPR_TRAMWAY_BASE:int = SPR_ROADSTOP_BASE + ROADSTOP_SPRITE_COUNT;
	public static const SPR_TRAMWAY_OVERLAY:int = SPR_TRAMWAY_BASE + 4;
	public static const SPR_TRAMWAY_TRAM:int = SPR_TRAMWAY_BASE + 27;
	public static const SPR_TRAMWAY_SLOPED_OFFSET:int = 11;
	public static const SPR_TRAMWAY_BUS_STOP_DT_Y_W:int = SPR_TRAMWAY_BASE + 25;
	public static const SPR_TRAMWAY_BUS_STOP_DT_Y_E:int = SPR_TRAMWAY_BASE + 23;
	public static const SPR_TRAMWAY_BUS_STOP_DT_X_W:int = SPR_TRAMWAY_BASE + 24;
	public static const SPR_TRAMWAY_BUS_STOP_DT_X_E:int = SPR_TRAMWAY_BASE + 26;
	public static const SPR_TRAMWAY_PAVED_STRAIGHT_Y:int = SPR_TRAMWAY_BASE + 46;
	public static const SPR_TRAMWAY_PAVED_STRAIGHT_X:int = SPR_TRAMWAY_BASE + 47;
	public static const SPR_TRAMWAY_BACK_WIRES_STRAIGHT:int = SPR_TRAMWAY_BASE + 55;
	public static const SPR_TRAMWAY_FRONT_WIRES_STRAIGHT:int = SPR_TRAMWAY_BASE + 56;
	public static const SPR_TRAMWAY_BACK_WIRES_SLOPED:int = SPR_TRAMWAY_BASE + 72;
	public static const SPR_TRAMWAY_FRONT_WIRES_SLOPED:int = SPR_TRAMWAY_BASE + 68;
	public static const SPR_TRAMWAY_TUNNEL_WIRES:int = SPR_TRAMWAY_BASE + 80;
	public static const SPR_TRAMWAY_BRIDGE:int = SPR_TRAMWAY_BASE + 107;
	public static const TRAMWAY_SPRITE_COUNT:int = 113;

	/* One way road sprites */
	public static const SPR_ONEWAY_BASE:int = SPR_TRAMWAY_BASE + TRAMWAY_SPRITE_COUNT;
	public static const ONEWAY_SPRITE_COUNT:int = 6;

	/* Flags sprites (in same order as enum NetworkLanguage) */
	public static const SPR_FLAGS_BASE:int = SPR_ONEWAY_BASE + ONEWAY_SPRITE_COUNT;
	public static const FLAGS_SPRITE_COUNT:int = 36;

	/* Not really a sprite, but an empty bounding box. Used to construct bounding boxes, that help sorting the sprites, but do not have a sprite associated. */
	public static const SPR_EMPTY_BOUNDING_BOX:int = SPR_FLAGS_BASE + FLAGS_SPRITE_COUNT;
	public static const EMPTY_BOUNDING_BOX_SPRITE_COUNT:int = 1;

	/* From where can we start putting NewGRFs? */
	public static const SPR_NEWGRFS_BASE:int = SPR_EMPTY_BOUNDING_BOX + EMPTY_BOUNDING_BOX_SPRITE_COUNT;

	/* Manager face sprites */
	public static const SPR_GRADIENT:int = 874; // background gradient behind manager face

	/* Icon showing company colour. */
	public static const SPR_PLAYER_ICON:int = 747;

	/* is itself no foundation sprite, because tileh 0 has no foundation */
	public static const SPR_FOUNDATION_BASE:int = 989;

	/* Shadow cell */
	public static const SPR_SHADOW_CELL:int = 1004;

	/* Unmovables spritenumbers */
	public static const SPR_UNMOVABLE_TRANSMITTER:int = 2601;
	public static const SPR_UNMOVABLE_LIGHTHOUSE:int = 2602;
	public static const SPR_TINYHQ_NORTH:int = 2603;
	public static const SPR_TINYHQ_EAST:int = 2604;
	public static const SPR_TINYHQ_WEST:int = 2605;
	public static const SPR_TINYHQ_SOUTH:int = 2606;
	public static const SPR_SMALLHQ_NORTH:int = 2607;
	public static const SPR_SMALLHQ_EAST:int = 2608;
	public static const SPR_SMALLHQ_WEST:int = 2609;
	public static const SPR_SMALLHQ_SOUTH:int = 2610;
	public static const SPR_MEDIUMHQ_NORTH:int = 2611;
	public static const SPR_MEDIUMHQ_NORTH_WALL:int = 2612;
	public static const SPR_MEDIUMHQ_EAST:int = 2613;
	public static const SPR_MEDIUMHQ_EAST_WALL:int = 2614;
	public static const SPR_MEDIUMHQ_WEST:int = 2615;
	public static const SPR_MEDIUMHQ_WEST_WALL:int = 2616; // very tiny piece of wall
	public static const SPR_MEDIUMHQ_SOUTH:int = 2617;
	public static const SPR_LARGEHQ_NORTH_GROUND:int = 2618;
	public static const SPR_LARGEHQ_NORTH_BUILD:int = 2619;
	public static const SPR_LARGEHQ_EAST_GROUND:int = 2620;
	public static const SPR_LARGEHQ_EAST_BUILD:int = 2621;
	public static const SPR_LARGEHQ_WEST_GROUND:int = 2622;
	public static const SPR_LARGEHQ_WEST_BUILD:int = 2623;
	public static const SPR_LARGEHQ_SOUTH:int = 2624;
	public static const SPR_HUGEHQ_NORTH_GROUND:int = 2625;
	public static const SPR_HUGEHQ_NORTH_BUILD:int = 2626;
	public static const SPR_HUGEHQ_EAST_GROUND:int = 2627;
	public static const SPR_HUGEHQ_EAST_BUILD:int = 2628;
	public static const SPR_HUGEHQ_WEST_GROUND:int = 2629;
	public static const SPR_HUGEHQ_WEST_BUILD:int = 2630;
	public static const SPR_HUGEHQ_SOUTH:int = 2631;
	public static const SPR_CONCRETE_GROUND:int = 1420;
	public static const SPR_STATUE_COMPANY:int = 2632;
	public static const SPR_BOUGHT_LAND:int = 4790;

	/* sprites for rail and rail stations*/
	public static const SPR_RAIL_SNOW_OFFSET:int = 26;
	public static const SPR_MONO_SNOW_OFFSET:int = 26;
	public static const SPR_MGLV_SNOW_OFFSET:int = 26;

	public static const SPR_ORIGINAL_SIGNALS_BASE:int = 1275;

	public static const SPR_RAIL_SINGLE_Y:int = 1005;
	public static const SPR_RAIL_SINGLE_X:int = 1006;
	public static const SPR_RAIL_SINGLE_NORTH:int = 1007;
	public static const SPR_RAIL_SINGLE_SOUTH:int = 1008;
	public static const SPR_RAIL_SINGLE_EAST:int = 1009;
	public static const SPR_RAIL_SINGLE_WEST:int = 1010;
	public static const SPR_RAIL_TRACK_Y:int = 1011;
	public static const SPR_RAIL_TRACK_X:int = 1012;
	public static const SPR_RAIL_TRACK_BASE:int = 1018;
	public static const SPR_RAIL_TRACK_N_S:int = 1035;
	public static const SPR_RAIL_TRACK_Y_SNOW:int = 1037;
	public static const SPR_RAIL_TRACK_X_SNOW:int = 1038;
	public static const SPR_RAIL_DEPOT_SE_1:int = 1063;
	public static const SPR_RAIL_DEPOT_SE_2:int = 1064;
	public static const SPR_RAIL_DEPOT_SW_1:int = 1065;
	public static const SPR_RAIL_DEPOT_SW_2:int = 1066;
	public static const SPR_RAIL_DEPOT_NE:int = 1067;
	public static const SPR_RAIL_DEPOT_NW:int = 1068;
	public static const SPR_RAIL_PLATFORM_Y_FRONT:int = 1069;
	public static const SPR_RAIL_PLATFORM_X_REAR:int = 1070;
	public static const SPR_RAIL_PLATFORM_Y_REAR:int = 1071;
	public static const SPR_RAIL_PLATFORM_X_FRONT:int = 1072;
	public static const SPR_RAIL_PLATFORM_BUILDING_X:int = 1073;
	public static const SPR_RAIL_PLATFORM_BUILDING_Y:int = 1074;
	public static const SPR_RAIL_PLATFORM_PILLARS_Y_FRONT:int = 1075;
	public static const SPR_RAIL_PLATFORM_PILLARS_X_REAR:int = 1076;
	public static const SPR_RAIL_PLATFORM_PILLARS_Y_REAR:int = 1077;
	public static const SPR_RAIL_PLATFORM_PILLARS_X_FRONT:int = 1078;
	public static const SPR_RAIL_ROOF_STRUCTURE_X_TILE_A:int = 1079; // First half of the roof structure
	public static const SPR_RAIL_ROOF_STRUCTURE_Y_TILE_A:int = 1080;
	public static const SPR_RAIL_ROOF_STRUCTURE_X_TILE_B:int = 1081; // Second half of the roof structure
	public static const SPR_RAIL_ROOF_STRUCTURE_Y_TILE_B:int = 1082;
	public static const SPR_RAIL_ROOF_GLASS_X_TILE_A:int = 1083; // First half of the roof glass
	public static const SPR_RAIL_ROOF_GLASS_Y_TILE_A:int = 1084;
	public static const SPR_RAIL_ROOF_GLASS_X_TILE_B:int = 1085; // second half of the roof glass
	public static const SPR_RAIL_ROOF_GLASS_Y_TILE_B:int = 1086;
	public static const SPR_MONO_SINGLE_Y:int = 1087;
	public static const SPR_MONO_SINGLE_X:int = 1088;
	public static const SPR_MONO_SINGLE_NORTH:int = 1089;
	public static const SPR_MONO_SINGLE_SOUTH:int = 1090;
	public static const SPR_MONO_SINGLE_EAST:int = 1091;
	public static const SPR_MONO_SINGLE_WEST:int = 1092;
	public static const SPR_MONO_TRACK_Y:int = 1093;
	public static const SPR_MONO_TRACK_BASE:int = 1100;
	public static const SPR_MONO_TRACK_N_S:int = 1117;
	public static const SPR_MGLV_SINGLE_Y:int = 1169;
	public static const SPR_MGLV_SINGLE_X:int = 1170;
	public static const SPR_MGLV_SINGLE_NORTH:int = 1171;
	public static const SPR_MGLV_SINGLE_SOUTH:int = 1172;
	public static const SPR_MGLV_SINGLE_EAST:int = 1173;
	public static const SPR_MGLV_SINGLE_WEST:int = 1174;
	public static const SPR_MGLV_TRACK_Y:int = 1175;
	public static const SPR_MGLV_TRACK_BASE:int = 1182;
	public static const SPR_MGLV_TRACK_N_S:int = 1199;
	public static const SPR_WAYPOINT_X_1:int = SPR_OPENTTD_BASE + 78;
	public static const SPR_WAYPOINT_X_2:int = SPR_OPENTTD_BASE + 79;
	public static const SPR_WAYPOINT_Y_1:int = SPR_OPENTTD_BASE + 80;
	public static const SPR_WAYPOINT_Y_2:int = SPR_OPENTTD_BASE + 81;
	public static const OFFSET_TILEH_IMPOSSIBLE:int = 0;
	public static const OFFSET_TILEH_1:int = 14;
	public static const OFFSET_TILEH_2:int = 15;
	public static const OFFSET_TILEH_3:int = 22;
	public static const OFFSET_TILEH_4:int = 13;
	public static const OFFSET_TILEH_6:int = 21;
	public static const OFFSET_TILEH_7:int = 17;
	public static const OFFSET_TILEH_8:int = 12;
	public static const OFFSET_TILEH_9:int = 23;
	public static const OFFSET_TILEH_11:int = 18;
	public static const OFFSET_TILEH_12:int = 20;
	public static const OFFSET_TILEH_13:int = 19;
	public static const OFFSET_TILEH_14:int = 16;

	/* Track fences */
	public static const SPR_TRACK_FENCE_FLAT_X:int = 1301;
	public static const SPR_TRACK_FENCE_FLAT_Y:int = 1302;
	public static const SPR_TRACK_FENCE_FLAT_VERT:int = 1303;
	public static const SPR_TRACK_FENCE_FLAT_HORZ:int = 1304;
	public static const SPR_TRACK_FENCE_SLOPE_SW:int = 1305;
	public static const SPR_TRACK_FENCE_SLOPE_SE:int = 1306;
	public static const SPR_TRACK_FENCE_SLOPE_NE:int = 1307;
	public static const SPR_TRACK_FENCE_SLOPE_NW:int = 1308;

	/* Base sprites for elrail.
	 * Offsets via an enum are used so a complete list of absolute
	 * sprite numbers is unnecessary.
	 */
	public static const SPR_WIRE_BASE:int = SPR_ELRAIL_BASE +  0;
	public static const SPR_PYLON_BASE:int = SPR_ELRAIL_BASE + 28;

	/* sprites for roads */
	public static const SPR_ROAD_PAVED_STRAIGHT_Y:int = 1313;
	public static const SPR_ROAD_PAVED_STRAIGHT_X:int = 1314;

	/* sprites for airports and airfields*/
	/* Small airports are AIRFIELD, everything else is AIRPORT */
	public static const SPR_HELIPORT:int = 2633;
	public static const SPR_AIRPORT_APRON:int = 2634;
	public static const SPR_AIRPORT_AIRCRAFT_STAND:int = 2635;
	public static const SPR_AIRPORT_TAXIWAY_NS_WEST:int = 2636;
	public static const SPR_AIRPORT_TAXIWAY_EW_SOUTH:int = 2637;
	public static const SPR_AIRPORT_TAXIWAY_XING_SOUTH:int = 2638;
	public static const SPR_AIRPORT_TAXIWAY_XING_WEST:int = 2639;
	public static const SPR_AIRPORT_TAXIWAY_NS_CTR:int = 2640;
	public static const SPR_AIRPORT_TAXIWAY_XING_EAST:int = 2641;
	public static const SPR_AIRPORT_TAXIWAY_NS_EAST:int = 2642;
	public static const SPR_AIRPORT_TAXIWAY_EW_NORTH:int = 2643;
	public static const SPR_AIRPORT_TAXIWAY_EW_CTR:int = 2644;
	public static const SPR_AIRPORT_RUNWAY_EXIT_A:int = 2645;
	public static const SPR_AIRPORT_RUNWAY_EXIT_B:int = 2646;
	public static const SPR_AIRPORT_RUNWAY_EXIT_C:int = 2647;
	public static const SPR_AIRPORT_RUNWAY_EXIT_D:int = 2648;
	public static const SPR_AIRPORT_RUNWAY_END:int = 2649; // We should have different ends
	public static const SPR_AIRPORT_TERMINAL_A:int = 2650;
	public static const SPR_AIRPORT_TOWER:int = 2651;
	public static const SPR_AIRPORT_CONCOURSE:int = 2652;
	public static const SPR_AIRPORT_TERMINAL_B:int = 2653;
	public static const SPR_AIRPORT_TERMINAL_C:int = 2654;
	public static const SPR_AIRPORT_HANGAR_FRONT:int = 2655;
	public static const SPR_AIRPORT_HANGAR_REAR:int = 2656;
	public static const SPR_AIRFIELD_HANGAR_FRONT:int = 2657;
	public static const SPR_AIRFIELD_HANGAR_REAR:int = 2658;
	public static const SPR_AIRPORT_JETWAY_1:int = 2659;
	public static const SPR_AIRPORT_JETWAY_2:int = 2660;
	public static const SPR_AIRPORT_JETWAY_3:int = 2661;
	public static const SPR_AIRPORT_PASSENGER_TUNNEL:int = 2662;
	public static const SPR_AIRPORT_FENCE_Y:int = 2663;
	public static const SPR_AIRPORT_FENCE_X:int = 2664;
	public static const SPR_AIRFIELD_TERM_A:int = 2665;
	public static const SPR_AIRFIELD_TERM_B:int = 2666;
	public static const SPR_AIRFIELD_TERM_C_GROUND:int = 2667;
	public static const SPR_AIRFIELD_TERM_C_BUILD:int = 2668;
	public static const SPR_AIRFIELD_APRON_A:int = 2669;
	public static const SPR_AIRFIELD_APRON_B:int = 2670;
	public static const SPR_AIRFIELD_APRON_C:int = 2671;
	public static const SPR_AIRFIELD_APRON_D:int = 2672;
	public static const SPR_AIRFIELD_RUNWAY_NEAR_END:int = 2673;
	public static const SPR_AIRFIELD_RUNWAY_MIDDLE:int = 2674;
	public static const SPR_AIRFIELD_RUNWAY_FAR_END:int = 2675;
	public static const SPR_AIRFIELD_WIND_1:int = 2676;
	public static const SPR_AIRFIELD_WIND_2:int = 2677;
	public static const SPR_AIRFIELD_WIND_3:int = 2678;
	public static const SPR_AIRFIELD_WIND_4:int = 2679;
	public static const SPR_AIRPORT_RADAR_1:int = 2680;
	public static const SPR_AIRPORT_RADAR_2:int = 2681;
	public static const SPR_AIRPORT_RADAR_3:int = 2682;
	public static const SPR_AIRPORT_RADAR_4:int = 2683;
	public static const SPR_AIRPORT_RADAR_5:int = 2684;
	public static const SPR_AIRPORT_RADAR_6:int = 2685;
	public static const SPR_AIRPORT_RADAR_7:int = 2686;
	public static const SPR_AIRPORT_RADAR_8:int = 2687;
	public static const SPR_AIRPORT_RADAR_9:int = 2688;
	public static const SPR_AIRPORT_RADAR_A:int = 2689;
	public static const SPR_AIRPORT_RADAR_B:int = 2690;
	public static const SPR_AIRPORT_RADAR_C:int = 2691;
	public static const SPR_AIRPORT_HELIPAD:int = SPR_OPENTTD_BASE + 86;
	public static const SPR_AIRPORT_HELIDEPOT_OFFICE:int = 2095;

	/* Road Stops
	 * Road stops have a ground tile and 3 buildings, one on each side
	 * (except the side where the entry is). These are marked _A _B and _C */
	public static const SPR_BUS_STOP_NE_GROUND:int = 2692;
	public static const SPR_BUS_STOP_SE_GROUND:int = 2693;
	public static const SPR_BUS_STOP_SW_GROUND:int = 2694;
	public static const SPR_BUS_STOP_NW_GROUND:int = 2695;
	public static const SPR_BUS_STOP_NE_BUILD_A:int = 2696;
	public static const SPR_BUS_STOP_SE_BUILD_A:int = 2697;
	public static const SPR_BUS_STOP_SW_BUILD_A:int = 2698;
	public static const SPR_BUS_STOP_NW_BUILD_A:int = 2699;
	public static const SPR_BUS_STOP_NE_BUILD_B:int = 2700;
	public static const SPR_BUS_STOP_SE_BUILD_B:int = 2701;
	public static const SPR_BUS_STOP_SW_BUILD_B:int = 2702;
	public static const SPR_BUS_STOP_NW_BUILD_B:int = 2703;
	public static const SPR_BUS_STOP_NE_BUILD_C:int = 2704;
	public static const SPR_BUS_STOP_SE_BUILD_C:int = 2705;
	public static const SPR_BUS_STOP_SW_BUILD_C:int = 2706;
	public static const SPR_BUS_STOP_NW_BUILD_C:int = 2707;
	public static const SPR_TRUCK_STOP_NE_GROUND:int = 2708;
	public static const SPR_TRUCK_STOP_SE_GROUND:int = 2709;
	public static const SPR_TRUCK_STOP_SW_GROUND:int = 2710;
	public static const SPR_TRUCK_STOP_NW_GROUND:int = 2711;
	public static const SPR_TRUCK_STOP_NE_BUILD_A:int = 2712;
	public static const SPR_TRUCK_STOP_SE_BUILD_A:int = 2713;
	public static const SPR_TRUCK_STOP_SW_BUILD_A:int = 2714;
	public static const SPR_TRUCK_STOP_NW_BUILD_A:int = 2715;
	public static const SPR_TRUCK_STOP_NE_BUILD_B:int = 2716;
	public static const SPR_TRUCK_STOP_SE_BUILD_B:int = 2717;
	public static const SPR_TRUCK_STOP_SW_BUILD_B:int = 2718;
	public static const SPR_TRUCK_STOP_NW_BUILD_B:int = 2719;
	public static const SPR_TRUCK_STOP_NE_BUILD_C:int = 2720;
	public static const SPR_TRUCK_STOP_SE_BUILD_C:int = 2721;
	public static const SPR_TRUCK_STOP_SW_BUILD_C:int = 2722;
	public static const SPR_TRUCK_STOP_NW_BUILD_C:int = 2723;

	/* Sprites for docks
	 * Docks consist of two tiles, the sloped one and the flat one */
	public static const SPR_DOCK_SLOPE_NE:int = 2727;
	public static const SPR_DOCK_SLOPE_SE:int = 2728;
	public static const SPR_DOCK_SLOPE_SW:int = 2729;
	public static const SPR_DOCK_SLOPE_NW:int = 2730;
	public static const SPR_DOCK_FLAT_X:int = 2731; // for NE and SW
	public static const SPR_DOCK_FLAT_Y:int = 2732; // for NW and SE
	public static const SPR_BUOY:int = 4076; // XXX this sucks;

	/* Sprites for road */
	public static const SPR_ROAD_Y:int = 1332;
	public static const SPR_ROAD_X:int = 1333;
	public static const SPR_ROAD_Y_SNOW:int = 1351;
	public static const SPR_ROAD_X_SNOW:int = 1352;

	public static const SPR_EXCAVATION_X:int = 1414;
	public static const SPR_EXCAVATION_Y:int = 1415;

	/* Landscape sprites */
	public static const SPR_FLAT_BARE_LAND:int = 3924;
	public static const SPR_FLAT_1_THIRD_GRASS_TILE:int = 3943;
	public static const SPR_FLAT_2_THIRD_GRASS_TILE:int = 3962;
	public static const SPR_FLAT_GRASS_TILE:int = 3981;
	public static const SPR_FLAT_ROUGH_LAND:int = 4000;
	public static const SPR_FLAT_ROUGH_LAND_1:int = 4019;
	public static const SPR_FLAT_ROUGH_LAND_2:int = 4020;
	public static const SPR_FLAT_ROUGH_LAND_3:int = 4021;
	public static const SPR_FLAT_ROUGH_LAND_4:int = 4022;
	public static const SPR_FLAT_ROCKY_LAND_1:int = 4023;
	public static const SPR_FLAT_ROCKY_LAND_2:int = 4042;
	public static const SPR_FLAT_WATER_TILE:int = 4061;
	public static const SPR_FLAT_1_QUART_SNOWY_TILE:int = 4493;
	public static const SPR_FLAT_2_QUART_SNOWY_TILE:int = 4512;
	public static const SPR_FLAT_3_QUART_SNOWY_TILE:int = 4531;
	public static const SPR_FLAT_SNOWY_TILE:int = 4550;

	/* Hedge, Farmland-fence sprites */
	public static const SPR_HEDGE_BUSHES:int = 4090;
	public static const SPR_HEDGE_BUSHES_WITH_GATE:int = 4096;
	public static const SPR_HEDGE_FENCE:int = 4102;
	public static const SPR_HEDGE_BLOOMBUSH_YELLOW:int = 4108;
	public static const SPR_HEDGE_BLOOMBUSH_RED:int = 4114;
	public static const SPR_HEDGE_STONE:int = 4120;

	/* Farmland sprites, only flat tiles listed, various stages */
	public static const SPR_FARMLAND_BARE:int = 4126;
	public static const SPR_FARMLAND_STATE_1:int = 4145;
	public static const SPR_FARMLAND_STATE_2:int = 4164;
	public static const SPR_FARMLAND_STATE_3:int = 4183;
	public static const SPR_FARMLAND_STATE_4:int = 4202;
	public static const SPR_FARMLAND_STATE_5:int = 4221;
	public static const SPR_FARMLAND_STATE_6:int = 4240;
	public static const SPR_FARMLAND_STATE_7:int = 4259;
	public static const SPR_FARMLAND_HAYPACKS:int = 4278;

	/* Water-related sprites */
	public static const SPR_SHIP_DEPOT_SE_FRONT:int = 4070;
	public static const SPR_SHIP_DEPOT_SW_FRONT:int = 4071;
	public static const SPR_SHIP_DEPOT_NW:int = 4072;
	public static const SPR_SHIP_DEPOT_NE:int = 4073;
	public static const SPR_SHIP_DEPOT_SE_REAR:int = 4074;
	public static const SPR_SHIP_DEPOT_SW_REAR:int = 4075;
	/* here come sloped water sprites */
	public static const SPR_WATER_SLOPE_Y_UP:int = SPR_CANALS_BASE + 0; // Water flowing negative Y direction
	public static const SPR_WATER_SLOPE_X_DOWN:int = SPR_CANALS_BASE + 1; // positive X
	public static const SPR_WATER_SLOPE_X_UP:int = SPR_CANALS_BASE + 2; // negative X
	public static const SPR_WATER_SLOPE_Y_DOWN:int = SPR_CANALS_BASE + 3; // positive Y
	/* sprites for the shiplifts
	 * there are 4 kinds of shiplifts, each of them is 3 tiles long.
	 * the four kinds are running in the X and Y direction and
	 * are "lowering" either in the "+" or the "-" direction.
	 * the three tiles are the center tile (where the slope is)
	 * and a bottom and a top tile */
	public static const SPR_SHIPLIFT_BASE:int = SPR_CANALS_BASE +  4;
	public static const SPR_SHIPLIFT_Y_UP_CENTER_REAR:int = SPR_CANALS_BASE +  4;
	public static const SPR_SHIPLIFT_X_DOWN_CENTER_REAR:int = SPR_CANALS_BASE +  5;
	public static const SPR_SHIPLIFT_X_UP_CENTER_REAR:int = SPR_CANALS_BASE +  6;
	public static const SPR_SHIPLIFT_Y_DOWN_CENTER_REAR:int = SPR_CANALS_BASE +  7;
	public static const SPR_SHIPLIFT_Y_UP_CENTER_FRONT:int = SPR_CANALS_BASE +  8;
	public static const SPR_SHIPLIFT_X_DOWN_CENTER_FRONT:int = SPR_CANALS_BASE +  9;
	public static const SPR_SHIPLIFT_X_UP_CENTER_FRONT:int = SPR_CANALS_BASE + 10;
	public static const SPR_SHIPLIFT_Y_DOWN_CENTER_FRONT:int = SPR_CANALS_BASE + 11;
	public static const SPR_SHIPLIFT_Y_UP_BOTTOM_REAR:int = SPR_CANALS_BASE + 12;
	public static const SPR_SHIPLIFT_X_DOWN_BOTTOM_REAR:int = SPR_CANALS_BASE + 13;
	public static const SPR_SHIPLIFT_X_UP_BOTTOM_REAR:int = SPR_CANALS_BASE + 14;
	public static const SPR_SHIPLIFT_Y_DOWN_BOTTOM_REAR:int = SPR_CANALS_BASE + 15;
	public static const SPR_SHIPLIFT_Y_UP_BOTTOM_FRONT:int = SPR_CANALS_BASE + 16;
	public static const SPR_SHIPLIFT_X_DOWN_BOTTOM_FRONT:int = SPR_CANALS_BASE + 17;
	public static const SPR_SHIPLIFT_X_UP_BOTTOM_FRONT:int = SPR_CANALS_BASE + 18;
	public static const SPR_SHIPLIFT_Y_DOWN_BOTTOM_FRONT:int = SPR_CANALS_BASE + 19;
	public static const SPR_SHIPLIFT_Y_UP_TOP_REAR:int = SPR_CANALS_BASE + 20;
	public static const SPR_SHIPLIFT_X_DOWN_TOP_REAR:int = SPR_CANALS_BASE + 21;
	public static const SPR_SHIPLIFT_X_UP_TOP_REAR:int = SPR_CANALS_BASE + 22;
	public static const SPR_SHIPLIFT_Y_DOWN_TOP_REAR:int = SPR_CANALS_BASE + 23;
	public static const SPR_SHIPLIFT_Y_UP_TOP_FRONT:int = SPR_CANALS_BASE + 24;
	public static const SPR_SHIPLIFT_X_DOWN_TOP_FRONT:int = SPR_CANALS_BASE + 25;
	public static const SPR_SHIPLIFT_X_UP_TOP_FRONT:int = SPR_CANALS_BASE + 26;
	public static const SPR_SHIPLIFT_Y_DOWN_TOP_FRONT:int = SPR_CANALS_BASE + 27;
	public static const SPR_CANAL_DIKES_BASE:int = SPR_CANALS_BASE + 52;

	/* Sprites for tunnels and bridges */
	public static const SPR_TUNNEL_ENTRY_REAR_RAIL:int = 2365;
	public static const SPR_TUNNEL_ENTRY_REAR_MONO:int = 2373;
	public static const SPR_TUNNEL_ENTRY_REAR_MAGLEV:int = 2381;
	public static const SPR_TUNNEL_ENTRY_REAR_ROAD:int = 2389;

	/* Level crossings */
	public static const SPR_CROSSING_OFF_X_RAIL:int = 1370;
	public static const SPR_CROSSING_OFF_X_MONO:int = 1382;
	public static const SPR_CROSSING_OFF_X_MAGLEV:int = 1394;

	/* bridge type sprites */
	public static const SPR_PILLARS_BASE:int = SPR_OPENTTD_BASE + 14;

	/* Wooden bridge (type 0) */
	public static const SPR_BTWDN_RAIL_Y_REAR:int = 2545;
	public static const SPR_BTWDN_RAIL_X_REAR:int = 2546;
	public static const SPR_BTWDN_ROAD_Y_REAR:int = 2547;
	public static const SPR_BTWDN_ROAD_X_REAR:int = 2548;
	public static const SPR_BTWDN_Y_FRONT:int = 2549;
	public static const SPR_BTWDN_X_FRONT:int = 2550;
	public static const SPR_BTWDN_Y_PILLAR:int = 2551;
	public static const SPR_BTWDN_X_PILLAR:int = 2552;
	public static const SPR_BTWDN_MONO_Y_REAR:int = 4360;
	public static const SPR_BTWDN_MONO_X_REAR:int = 4361;
	public static const SPR_BTWDN_MGLV_Y_REAR:int = 4400;
	public static const SPR_BTWDN_MGLV_X_REAR:int = 4401;
	/* ramps */
	public static const SPR_BTWDN_ROAD_RAMP_Y_DOWN:int = 2529;
	public static const SPR_BTWDN_ROAD_RAMP_X_DOWN:int = 2530;
	public static const SPR_BTWDN_ROAD_RAMP_X_UP:int = 2531; // for some weird reason the order is swapped
	public static const SPR_BTWDN_ROAD_RAMP_Y_UP:int = 2532; // between X and Y.
	public static const SPR_BTWDN_ROAD_Y_SLOPE_UP:int = 2533;
	public static const SPR_BTWDN_ROAD_X_SLOPE_UP:int = 2534;
	public static const SPR_BTWDN_ROAD_Y_SLOPE_DOWN:int = 2535;
	public static const SPR_BTWDN_ROAD_X_SLOPE_DOWN:int = 2536;
	public static const SPR_BTWDN_RAIL_RAMP_Y_DOWN:int = 2537;
	public static const SPR_BTWDN_RAIL_RAMP_X_DOWN:int = 2538;
	public static const SPR_BTWDN_RAIL_RAMP_X_UP:int = 2539; // for some weird reason the order is swapped
	public static const SPR_BTWDN_RAIL_RAMP_Y_UP:int = 2540; // between X and Y.
	public static const SPR_BTWDN_RAIL_Y_SLOPE_UP:int = 2541;
	public static const SPR_BTWDN_RAIL_X_SLOPE_UP:int = 2542;
	public static const SPR_BTWDN_RAIL_Y_SLOPE_DOWN:int = 2543;
	public static const SPR_BTWDN_RAIL_X_SLOPE_DOWN:int = 2544;
	public static const SPR_BTWDN_MONO_RAMP_Y_DOWN:int = 4352;
	public static const SPR_BTWDN_MONO_RAMP_X_DOWN:int = 4353;
	public static const SPR_BTWDN_MONO_RAMP_X_UP:int = 4354; // for some weird reason the order is swapped
	public static const SPR_BTWDN_MONO_RAMP_Y_UP:int = 4355; // between X and Y.
	public static const SPR_BTWDN_MONO_Y_SLOPE_UP:int = 4356;
	public static const SPR_BTWDN_MONO_X_SLOPE_UP:int = 4357;
	public static const SPR_BTWDN_MONO_Y_SLOPE_DOWN:int = 4358;
	public static const SPR_BTWDN_MONO_X_SLOPE_DOWN:int = 4359;
	public static const SPR_BTWDN_MGLV_RAMP_Y_DOWN:int = 4392;
	public static const SPR_BTWDN_MGLV_RAMP_X_DOWN:int = 4393;
	public static const SPR_BTWDN_MGLV_RAMP_X_UP:int = 4394; // for some weird reason the order is swapped
	public static const SPR_BTWDN_MGLV_RAMP_Y_UP:int = 4395; // between X and Y.
	public static const SPR_BTWDN_MGLV_Y_SLOPE_UP:int = 4396;
	public static const SPR_BTWDN_MGLV_X_SLOPE_UP:int = 4397;
	public static const SPR_BTWDN_MGLV_Y_SLOPE_DOWN:int = 4398;
	public static const SPR_BTWDN_MGLV_X_SLOPE_DOWN:int = 4399;

	/* Steel Girder with arches
	 * BTSGA == Bridge Type Steel Girder Arched
	 * This is bridge type number 2 */
	public static const SPR_BTSGA_RAIL_X_REAR:int = 2499;
	public static const SPR_BTSGA_RAIL_Y_REAR:int = 2500;
	public static const SPR_BTSGA_ROAD_X_REAR:int = 2501;
	public static const SPR_BTSGA_ROAD_Y_REAR:int = 2502;
	public static const SPR_BTSGA_X_FRONT:int = 2503;
	public static const SPR_BTSGA_Y_FRONT:int = 2504;
	public static const SPR_BTSGA_X_PILLAR:int = 2505;
	public static const SPR_BTSGA_Y_PILLAR:int = 2506;
	public static const SPR_BTSGA_MONO_X_REAR:int = 4324;
	public static const SPR_BTSGA_MONO_Y_REAR:int = 4325;
	public static const SPR_BTSGA_MGLV_X_REAR:int = 4364;
	public static const SPR_BTSGA_MGLV_Y_REAR:int = 4365;

	/* BTSUS == Suspension bridge
	 * TILE_* denotes the different tiles a suspension bridge
	 * can have
	 * TILE_A and TILE_B are the "beginnings" and "ends" of the
	 *   suspension system. they have small rectangluar endcaps
	 * TILE_C and TILE_D look almost identical to TILE_A and
	 *   TILE_B, but they do not have the "endcaps". They form the
	 *   middle part
	 * TILE_E is a condensed configuration of two pillars. while they
	 *   are usually 2 pillars apart, they only have 1 pillar separation
	 *   here
	 * TILE_F is an extended configuration of pillars. they are
	 *   plugged in when pillars should be 3 tiles apart
	 */
	public static const SPR_BTSUS_ROAD_Y_REAR_TILE_A:int = 2453;
	public static const SPR_BTSUS_ROAD_Y_REAR_TILE_B:int = 2454;
	public static const SPR_BTSUS_Y_FRONT_TILE_A:int = 2455;
	public static const SPR_BTSUS_Y_FRONT_TILE_B:int = 2456;
	public static const SPR_BTSUS_ROAD_Y_REAR_TILE_D:int = 2457;
	public static const SPR_BTSUS_ROAD_Y_REAR_TILE_C:int = 2458;
	public static const SPR_BTSUS_Y_FRONT_TILE_D:int = 2459;
	public static const SPR_BTSUS_Y_FRONT_TILE_C:int = 2460;
	public static const SPR_BTSUS_ROAD_X_REAR_TILE_A:int = 2461;
	public static const SPR_BTSUS_ROAD_X_REAR_TILE_B:int = 2462;
	public static const SPR_BTSUS_X_FRONT_TILE_A:int = 2463;
	public static const SPR_BTSUS_X_FRONT_TILE_B:int = 2464;
	public static const SPR_BTSUS_ROAD_X_REAR_TILE_D:int = 2465;
	public static const SPR_BTSUS_ROAD_X_REAR_TILE_C:int = 2466;
	public static const SPR_BTSUS_X_FRONT_TILE_D:int = 2467;
	public static const SPR_BTSUS_X_FRONT_TILE_C:int = 2468;
	public static const SPR_BTSUS_RAIL_Y_REAR_TILE_A:int = 2469;
	public static const SPR_BTSUS_RAIL_Y_REAR_TILE_B:int = 2470;
	public static const SPR_BTSUS_RAIL_Y_REAR_TILE_D:int = 2471;
	public static const SPR_BTSUS_RAIL_Y_REAR_TILE_C:int = 2472;
	public static const SPR_BTSUS_RAIL_X_REAR_TILE_A:int = 2473;
	public static const SPR_BTSUS_RAIL_X_REAR_TILE_B:int = 2474;
	public static const SPR_BTSUS_RAIL_X_REAR_TILE_D:int = 2475;
	public static const SPR_BTSUS_RAIL_X_REAR_TILE_C:int = 2476;
	public static const SPR_BTSUS_Y_PILLAR_TILE_A:int = 2477;
	public static const SPR_BTSUS_Y_PILLAR_TILE_B:int = 2478;
	public static const SPR_BTSUS_Y_PILLAR_TILE_D:int = 2479;
	public static const SPR_BTSUS_Y_PILLAR_TILE_C:int = 2480;
	public static const SPR_BTSUS_X_PILLAR_TILE_A:int = 2481;
	public static const SPR_BTSUS_X_PILLAR_TILE_B:int = 2482;
	public static const SPR_BTSUS_X_PILLAR_TILE_D:int = 2483;
	public static const SPR_BTSUS_X_PILLAR_TILE_C:int = 2484;
	public static const SPR_BTSUS_RAIL_Y_REAR_TILE_E:int = 2485;
	public static const SPR_BTSUS_RAIL_X_REAR_TILE_E:int = 2486;
	public static const SPR_BTSUS_ROAD_Y_REAR_TILE_E:int = 2487;
	public static const SPR_BTSUS_ROAD_X_REAR_TILE_E:int = 2488;
	public static const SPR_BTSUS_Y_FRONT_TILE_E:int = 2489;
	public static const SPR_BTSUS_X_FRONT_TILE_E:int = 2490;
	public static const SPR_BTSUS_Y_PILLAR_TILE_E:int = 2491;
	public static const SPR_BTSUS_X_PILLAR_TILE_E:int = 2492;
	public static const SPR_BTSUS_RAIL_X_REAR_TILE_F:int = 2493;
	public static const SPR_BTSUS_RAIL_Y_REAR_TILE_F:int = 2494;
	public static const SPR_BTSUS_ROAD_X_REAR_TILE_F:int = 2495;
	public static const SPR_BTSUS_ROAD_Y_REAR_TILE_F:int = 2496;
	public static const SPR_BTSUS_X_FRONT:int = 2497;
	public static const SPR_BTSUS_Y_FRONT:int = 2498;
	public static const SPR_BTSUS_MONO_Y_REAR_TILE_A:int = 4334;
	public static const SPR_BTSUS_MONO_Y_REAR_TILE_B:int = 4335;
	public static const SPR_BTSUS_MONO_Y_REAR_TILE_D:int = 4336;
	public static const SPR_BTSUS_MONO_Y_REAR_TILE_C:int = 4337;
	public static const SPR_BTSUS_MONO_X_REAR_TILE_A:int = 4338;
	public static const SPR_BTSUS_MONO_X_REAR_TILE_B:int = 4339;
	public static const SPR_BTSUS_MONO_X_REAR_TILE_D:int = 4340;
	public static const SPR_BTSUS_MONO_X_REAR_TILE_C:int = 4341;
	public static const SPR_BTSUS_MONO_Y_REAR_TILE_E:int = 4342;
	public static const SPR_BTSUS_MONO_X_REAR_TILE_E:int = 4343;
	public static const SPR_BTSUS_MONO_X_REAR_TILE_F:int = 4344;
	public static const SPR_BTSUS_MONO_Y_REAR_TILE_F:int = 4345;
	public static const SPR_BTSUS_MGLV_Y_REAR_TILE_A:int = 4374;
	public static const SPR_BTSUS_MGLV_Y_REAR_TILE_B:int = 4375;
	public static const SPR_BTSUS_MGLV_Y_REAR_TILE_D:int = 4376;
	public static const SPR_BTSUS_MGLV_Y_REAR_TILE_C:int = 4377;
	public static const SPR_BTSUS_MGLV_X_REAR_TILE_A:int = 4378;
	public static const SPR_BTSUS_MGLV_X_REAR_TILE_B:int = 4379;
	public static const SPR_BTSUS_MGLV_X_REAR_TILE_D:int = 4380;
	public static const SPR_BTSUS_MGLV_X_REAR_TILE_C:int = 4381;
	public static const SPR_BTSUS_MGLV_Y_REAR_TILE_E:int = 4382;
	public static const SPR_BTSUS_MGLV_X_REAR_TILE_E:int = 4383;
	public static const SPR_BTSUS_MGLV_X_REAR_TILE_F:int = 4384;
	public static const SPR_BTSUS_MGLV_Y_REAR_TILE_F:int = 4385;

	/* cantilever bridges
	 * They have three different kinds of tiles:
	 * END(ing), MID(dle), BEG(ginning) */
	public static const SPR_BTCAN_RAIL_X_BEG:int = 2507;
	public static const SPR_BTCAN_RAIL_X_MID:int = 2508;
	public static const SPR_BTCAN_RAIL_X_END:int = 2509;
	public static const SPR_BTCAN_RAIL_Y_END:int = 2510;
	public static const SPR_BTCAN_RAIL_Y_MID:int = 2511;
	public static const SPR_BTCAN_RAIL_Y_BEG:int = 2512;
	public static const SPR_BTCAN_ROAD_X_BEG:int = 2513;
	public static const SPR_BTCAN_ROAD_X_MID:int = 2514;
	public static const SPR_BTCAN_ROAD_X_END:int = 2515;
	public static const SPR_BTCAN_ROAD_Y_END:int = 2516;
	public static const SPR_BTCAN_ROAD_Y_MID:int = 2517;
	public static const SPR_BTCAN_ROAD_Y_BEG:int = 2518;
	public static const SPR_BTCAN_X_FRONT_BEG:int = 2519;
	public static const SPR_BTCAN_X_FRONT_MID:int = 2520;
	public static const SPR_BTCAN_X_FRONT_END:int = 2521;
	public static const SPR_BTCAN_Y_FRONT_END:int = 2522;
	public static const SPR_BTCAN_Y_FRONT_MID:int = 2523;
	public static const SPR_BTCAN_Y_FRONT_BEG:int = 2524;
	public static const SPR_BTCAN_X_PILLAR_BEG:int = 2525;
	public static const SPR_BTCAN_X_PILLAR_MID:int = 2526;
	public static const SPR_BTCAN_Y_PILLAR_MID:int = 2527;
	public static const SPR_BTCAN_Y_PILLAR_BEG:int = 2528;
	public static const SPR_BTCAN_MONO_X_BEG:int = 4346;
	public static const SPR_BTCAN_MONO_X_MID:int = 4347;
	public static const SPR_BTCAN_MONO_X_END:int = 4348;
	public static const SPR_BTCAN_MONO_Y_END:int = 4349;
	public static const SPR_BTCAN_MONO_Y_MID:int = 4350;
	public static const SPR_BTCAN_MONO_Y_BEG:int = 4351;
	public static const SPR_BTCAN_MGLV_X_BEG:int = 4386;
	public static const SPR_BTCAN_MGLV_X_MID:int = 4387;
	public static const SPR_BTCAN_MGLV_X_END:int = 4388;
	public static const SPR_BTCAN_MGLV_Y_END:int = 4389;
	public static const SPR_BTCAN_MGLV_Y_MID:int = 4390;
	public static const SPR_BTCAN_MGLV_Y_BEG:int = 4391;

	/* little concrete bridge */
	public static const SPR_BTCON_RAIL_X:int = 2493;
	public static const SPR_BTCON_RAIL_Y:int = 2494;
	public static const SPR_BTCON_ROAD_X:int = 2495;
	public static const SPR_BTCON_ROAD_Y:int = 2496;
	public static const SPR_BTCON_X_FRONT:int = 2497;
	public static const SPR_BTCON_Y_FRONT:int = 2498;
	public static const SPR_BTCON_X_PILLAR:int = 2505;
	public static const SPR_BTCON_Y_PILLAR:int = 2506;
	public static const SPR_BTCON_MONO_X:int = 4344;
	public static const SPR_BTCON_MONO_Y:int = 4345;
	public static const SPR_BTCON_MGLV_X:int = 4384;
	public static const SPR_BTCON_MGLV_Y:int = 4385;

	/* little steel girder bridge */
	public static const SPR_BTGIR_RAIL_X:int = 2553;
	public static const SPR_BTGIR_RAIL_Y:int = 2554;
	public static const SPR_BTGIR_ROAD_X:int = 2555;
	public static const SPR_BTGIR_ROAD_Y:int = 2556;
	public static const SPR_BTGIR_X_FRONT:int = 2557;
	public static const SPR_BTGIR_Y_FRONT:int = 2558;
	public static const SPR_BTGIR_X_PILLAR:int = 2505;
	public static const SPR_BTGIR_Y_PILLAR:int = 2506;
	public static const SPR_BTGIR_MONO_X:int = 4362;
	public static const SPR_BTGIR_MONO_Y:int = 4363;
	public static const SPR_BTGIR_MGLV_X:int = 4402;
	public static const SPR_BTGIR_MGLV_Y:int = 4403;

	/* tubular bridges
	 * tubular bridges have 3 kinds of tiles:
	 *  a start tile (with only half a tube on the far side, marked _BEG
	 *  a middle tile (full tunnel), marked _MID
	 *  and an end tile (half a tube on the near side, maked _END
	 */
	public static const SPR_BTTUB_X_FRONT_BEG:int = 2559;
	public static const SPR_BTTUB_X_FRONT_MID:int = 2560;
	public static const SPR_BTTUB_X_FRONT_END:int = 2561;
	public static const SPR_BTTUB_Y_FRONT_END:int = 2562;
	public static const SPR_BTTUB_Y_FRONT_MID:int = 2563;
	public static const SPR_BTTUB_Y_FRONT_BEG:int = 2564;
	public static const SPR_BTTUB_X_PILLAR_BEG:int = 2565;
	public static const SPR_BTTUB_X_PILLAR_MID:int = 2566;
	public static const SPR_BTTUB_Y_PILLAR_MID:int = 2567;
	public static const SPR_BTTUB_Y_PILLAR_BEG:int = 2568;
	public static const SPR_BTTUB_X_RAIL_REAR_BEG:int = 2569;
	public static const SPR_BTTUB_X_RAIL_REAR_MID:int = 2570;
	public static const SPR_BTTUB_X_RAIL_REAR_END:int = 2571;
	public static const SPR_BTTUB_Y_RAIL_REAR_BEG:int = 2572;
	public static const SPR_BTTUB_Y_RAIL_REAR_MID:int = 2573;
	public static const SPR_BTTUB_Y_RAIL_REAR_END:int = 2574;
	public static const SPR_BTTUB_X_ROAD_REAR_BEG:int = 2575;
	public static const SPR_BTTUB_X_ROAD_REAR_MID:int = 2576;
	public static const SPR_BTTUB_X_ROAD_REAR_END:int = 2577;
	public static const SPR_BTTUB_Y_ROAD_REAR_BEG:int = 2578;
	public static const SPR_BTTUB_Y_ROAD_REAR_MID:int = 2579;
	public static const SPR_BTTUB_Y_ROAD_REAR_END:int = 2580;
	public static const SPR_BTTUB_X_MONO_REAR_BEG:int = 2581;
	public static const SPR_BTTUB_X_MONO_REAR_MID:int = 2582;
	public static const SPR_BTTUB_X_MONO_REAR_END:int = 2583;
	public static const SPR_BTTUB_Y_MONO_REAR_BEG:int = 2584;
	public static const SPR_BTTUB_Y_MONO_REAR_MID:int = 2585;
	public static const SPR_BTTUB_Y_MONO_REAR_END:int = 2586;
	public static const SPR_BTTUB_X_MGLV_REAR_BEG:int = 2587;
	public static const SPR_BTTUB_X_MGLV_REAR_MID:int = 2588;
	public static const SPR_BTTUB_X_MGLV_REAR_END:int = 2589;
	public static const SPR_BTTUB_Y_MGLV_REAR_BEG:int = 2590;
	public static const SPR_BTTUB_Y_MGLV_REAR_MID:int = 2591;
	public static const SPR_BTTUB_Y_MGLV_REAR_END:int = 2592;


	/* ramps (for all bridges except wood and tubular?)*/
	public static const SPR_BTGEN_RAIL_X_SLOPE_DOWN:int = 2437;
	public static const SPR_BTGEN_RAIL_X_SLOPE_UP:int = 2438;
	public static const SPR_BTGEN_RAIL_Y_SLOPE_DOWN:int = 2439;
	public static const SPR_BTGEN_RAIL_Y_SLOPE_UP:int = 2440;
	public static const SPR_BTGEN_RAIL_RAMP_X_UP:int = 2441;
	public static const SPR_BTGEN_RAIL_RAMP_X_DOWN:int = 2442;
	public static const SPR_BTGEN_RAIL_RAMP_Y_UP:int = 2443;
	public static const SPR_BTGEN_RAIL_RAMP_Y_DOWN:int = 2444;
	public static const SPR_BTGEN_ROAD_X_SLOPE_DOWN:int = 2445;
	public static const SPR_BTGEN_ROAD_X_SLOPE_UP:int = 2446;
	public static const SPR_BTGEN_ROAD_Y_SLOPE_DOWN:int = 2447;
	public static const SPR_BTGEN_ROAD_Y_SLOPE_UP:int = 2448;
	public static const SPR_BTGEN_ROAD_RAMP_X_UP:int = 2449;
	public static const SPR_BTGEN_ROAD_RAMP_X_DOWN:int = 2450;
	public static const SPR_BTGEN_ROAD_RAMP_Y_UP:int = 2451;
	public static const SPR_BTGEN_ROAD_RAMP_Y_DOWN:int = 2452;
	public static const SPR_BTGEN_MONO_X_SLOPE_DOWN:int = 4326;
	public static const SPR_BTGEN_MONO_X_SLOPE_UP:int = 4327;
	public static const SPR_BTGEN_MONO_Y_SLOPE_DOWN:int = 4328;
	public static const SPR_BTGEN_MONO_Y_SLOPE_UP:int = 4329;
	public static const SPR_BTGEN_MONO_RAMP_X_UP:int = 4330;
	public static const SPR_BTGEN_MONO_RAMP_X_DOWN:int = 4331;
	public static const SPR_BTGEN_MONO_RAMP_Y_UP:int = 4332;
	public static const SPR_BTGEN_MONO_RAMP_Y_DOWN:int = 4333;
	public static const SPR_BTGEN_MGLV_X_SLOPE_DOWN:int = 4366;
	public static const SPR_BTGEN_MGLV_X_SLOPE_UP:int = 4367;
	public static const SPR_BTGEN_MGLV_Y_SLOPE_DOWN:int = 4368;
	public static const SPR_BTGEN_MGLV_Y_SLOPE_UP:int = 4369;
	public static const SPR_BTGEN_MGLV_RAMP_X_UP:int = 4370;
	public static const SPR_BTGEN_MGLV_RAMP_X_DOWN:int = 4371;
	public static const SPR_BTGEN_MGLV_RAMP_Y_UP:int = 4372;
	public static const SPR_BTGEN_MGLV_RAMP_Y_DOWN:int = 4373;

	/* Vehicle view sprites */
	public static const SPR_CENTRE_VIEW_VEHICLE:int = 683;
	public static const SPR_SEND_TRAIN_TODEPOT:int = 685;
	public static const SPR_SEND_ROADVEH_TODEPOT:int = 686;
	public static const SPR_SEND_AIRCRAFT_TODEPOT:int = 687;
	public static const SPR_SEND_SHIP_TODEPOT:int = 688;

	public static const SPR_IGNORE_SIGNALS:int = 689;
	public static const SPR_SHOW_ORDERS:int = 690;
	public static const SPR_SHOW_VEHICLE_DETAILS:int = 691;
	public static const SPR_REFIT_VEHICLE:int = 692;
	public static const SPR_FORCE_VEHICLE_TURN:int = 715;

	/* Vehicle sprite-flags (red/green) */
	public static const SPR_FLAG_VEH_STOPPED:int = 3090;
	public static const SPR_FLAG_VEH_RUNNING:int = 3091;

	public static const SPR_VEH_BUS_SW_VIEW:int = 3097;
	public static const SPR_VEH_BUS_SIDE_VIEW:int = 3098;

	/* Rotor sprite numbers */
	public static const SPR_ROTOR_STOPPED:int = 3901;
	public static const SPR_ROTOR_MOVING_1:int = 3902;
	public static const SPR_ROTOR_MOVING_3:int = 3904;

	/* Town/house sprites */
	public static const SPR_LIFT:int = 1443;

	/* used in town_land.h
	 * CNST1..3 = Those are the different stages of construction
	 * The last 2 hexas correspond to the type of building it represent, if any */
	public static const SPR_CNST1_TALLOFFICE_00:int = 1421;
	public static const SPR_CNST2_TALLOFFICE_00:int = 1422;
	public static const SPR_CNST3_TALLOFFICE_00:int = 1423;
	public static const SPR_GROUND_TALLOFFICE_00:int = 1424;
	public static const SPR_BUILD_TALLOFFICE_00:int = 1425; // temperate
	public static const SPR_CNST1_OFFICE_01:int = 1426;
	public static const SPR_CNST2_OFFICE_01:int = 1427;
	public static const SPR_BUILD_OFFICE_01:int = 1428; // temperate
	public static const SPR_GROUND_OFFICE_01:int = 1429;
	public static const SPR_CNST1_SMLBLCKFLATS_02:int = 1430; // Small Block of Flats
	public static const SPR_CNST2_SMLBLCKFLATS_02:int = 1431;
	public static const SPR_BUILD_SMLBLCKFLATS_02:int = 1432; // temperate
	public static const SPR_GROUND_SMLBLCKFLATS_02:int = 1433;
	public static const SPR_CNST1_TEMPCHURCH:int = 1434;
	public static const SPR_CNST2_TEMPCHURCH:int = 1435;
	public static const SPR_BUILD_TEMPCHURCH:int = 1436;
	public static const SPR_GROUND_TEMPCHURCH:int = 1437;
	public static const SPR_CNST1_LARGEOFFICE_04:int = 1440;
	public static const SPR_CNST2_LARGEOFFICE_04:int = 1441;
	public static const SPR_BUILD_LARGEOFFICE_04:int = 1442; // temperate, sub-arctic;
	public static const SPR_BUILD_LARGEOFFICE_04_SNOW:int = 4569; // same;
	/* These are in fact two houses for the same houseID.  so V1 and V2 */
	public static const SPR_CNST1_TOWNHOUSE_06_V1:int = 1444;
	public static const SPR_CNST2_TOWNHOUSE_06_V1:int = 1445;
	public static const SPR_BUILD_TOWNHOUSE_06_V1:int = 1446; // 1st variation
	public static const SPR_GRND_TOWNHOUSE_06_V1:int = 1447;
	public static const SPR_CNST1_TOWNHOUSE_06_V2:int = 1501; // used as ground;
	public static const SPR_CNST1_TOWNHOUSE_06_V2_P:int = 1502; // pipes extensions for previous
	public static const SPR_CNST2_TOWNHOUSE_06_V2_G:int = 1503; // Ground of cnst stage 2
	public static const SPR_CNST2_TOWNHOUSE_06_V2:int = 1504; // real cnst stage 2
	public static const SPR_GRND_TOWNHOUSE_06_V2:int = 1505;
	public static const SPR_BUILD_TOWNHOUSE_06_V2:int = 1506; // 2nd variation
	public static const SPR_CNST1_HOTEL_07_NW:int = 1448;
	public static const SPR_CNST2_HOTEL_07_NW:int = 1449;
	public static const SPR_BUILD_HOTEL_07_NW:int = 1450;
	public static const SPR_CNST1_HOTEL_07_SE:int = 1451;
	public static const SPR_CNST2_HOTEL_07_SE:int = 1452;
	public static const SPR_BUILD_HOTEL_07_SE:int = 1453;
	public static const SPR_STATUE_HORSERIDER_09:int = 1454;
	public static const SPR_FOUNTAIN_0A:int = 1455;
	public static const SPR_PARKSTATUE_0B:int = 1456;
	public static const SPR_PARKALLEY_0C:int = 1457;
	public static const SPR_CNST1_OFFICE_0D:int = 1458;
	public static const SPR_CNST2_OFFICE_0D:int = 1459;
	public static const SPR_BUILD_OFFICE_0D:int = 1460;
	public static const SPR_CNST1_SHOPOFFICE_0E:int = 1461;
	public static const SPR_CNST2_SHOPOFFICE_0E:int = 1462;
	public static const SPR_BUILD_SHOPOFFICE_0E:int = 1463;
	public static const SPR_CNST1_SHOPOFFICE_0F:int = 1464;
	public static const SPR_CNST2_SHOPOFFICE_0F:int = 1465;
	public static const SPR_BUILD_SHOPOFFICE_0F:int = 1466;

	/* Easter egg/disaster sprites */
	public static const SPR_BLIMP:int = 3905; // Zeppelin
	public static const SPR_BLIMP_CRASHING:int = 3906;
	public static const SPR_BLIMP_CRASHED:int = 3907;
	public static const SPR_UFO_SMALL_SCOUT:int = 3908; // XCOM - UFO Defense
	public static const SPR_UFO_SMALL_SCOUT_DARKER:int = 3909;
	public static const SPR_SUB_SMALL_NE:int = 3910; // Silent Service
	public static const SPR_SUB_SMALL_SE:int = 3911;
	public static const SPR_SUB_SMALL_SW:int = 3912;
	public static const SPR_SUB_SMALL_NW:int = 3913;
	public static const SPR_SUB_LARGE_NE:int = 3914;
	public static const SPR_SUB_LARGE_SE:int = 3915;
	public static const SPR_SUB_LARGE_SW:int = 3916;
	public static const SPR_SUB_LARGE_NW:int = 3917;
	public static const SPR_F_15:int = 3918; // F-15 Strike Eagle
	public static const SPR_F_15_FIRING:int = 3919;
	public static const SPR_UFO_HARVESTER:int = 3920; // XCOM - UFO Defense
	public static const SPR_XCOM_SKYRANGER:int = 3921;
	public static const SPR_AH_64A:int = 3922; // Gunship
	public static const SPR_AH_64A_FIRING:int = 3923;

	/* main_gui.c */
	public static const SPR_IMG_TERRAFORM_UP:int = 694;
	public static const SPR_IMG_TERRAFORM_DOWN:int = 695;
	public static const SPR_IMG_DYNAMITE:int = 703;
	public static const SPR_IMG_ROCKS:int = 4084;
	public static const SPR_IMG_LIGHTHOUSE_DESERT:int = 4085; // XXX - is Desert image on the desert-climate
	public static const SPR_IMG_TRANSMITTER:int = 4086;
	public static const SPR_IMG_LEVEL_LAND:int = SPR_OPENTTD_BASE + 91;
	public static const SPR_IMG_BUILD_CANAL:int = SPR_OPENTTD_BASE + 88;
	public static const SPR_IMG_BUILD_RIVER:int = SPR_OPENTTD_BASE + 136;
	public static const SPR_IMG_BUILD_LOCK:int = SPR_CANALS_BASE + 64;
	public static const SPR_IMG_PAUSE:int = 726;
	public static const SPR_IMG_FASTFORWARD:int = SPR_OPENTTD_BASE + 90;
	public static const SPR_IMG_SETTINGS:int = 751;
	public static const SPR_IMG_SAVE:int = 724;
	public static const SPR_IMG_SMALLMAP:int = 708;
	public static const SPR_IMG_TOWN:int = 4077;
	public static const SPR_IMG_SUBSIDIES:int = 679;
	public static const SPR_IMG_COMPANY_LIST:int = 1299;
	public static const SPR_IMG_COMPANY_FINANCE:int = 737;
	public static const SPR_IMG_COMPANY_GENERAL:int = 743;
	public static const SPR_IMG_GRAPHS:int = 745;
	public static const SPR_IMG_COMPANY_LEAGUE:int = 684;
	public static const SPR_IMG_SHOW_COUNTOURS:int = 738;
	public static const SPR_IMG_SHOW_VEHICLES:int = 739;
	public static const SPR_IMG_SHOW_ROUTES:int = 740;
	public static const SPR_IMG_INDUSTRY:int = 741;
	public static const SPR_IMG_PLANTTREES:int = 742;
	public static const SPR_IMG_TRAINLIST:int = 731;
	public static const SPR_IMG_TRUCKLIST:int = 732;
	public static const SPR_IMG_SHIPLIST:int = 733;
	public static const SPR_IMG_AIRPLANESLIST:int = 734;
	public static const SPR_IMG_ZOOMIN:int = 735;
	public static const SPR_IMG_ZOOMOUT:int = 736;
	public static const SPR_IMG_BUILDRAIL:int = 727;
	public static const SPR_IMG_BUILDROAD:int = 728;
	public static const SPR_IMG_BUILDWATER:int = 729;
	public static const SPR_IMG_BUILDAIR:int = 730;
	public static const SPR_IMG_LANDSCAPING:int = 4083;
	public static const SPR_IMG_MUSIC:int = 713;
	public static const SPR_IMG_MESSAGES:int = 680;
	public static const SPR_IMG_QUERY:int = 723;
	public static const SPR_IMG_SIGN:int = 4082;
	public static const SPR_IMG_BUY_LAND:int = 4791;

	/* OPEN TRANSPORT TYCOON in gamescreen */
	public static const SPR_OTTD_O:int = 4842;
	public static const SPR_OTTD_P:int = 4841;
	public static const SPR_OTTD_E:int = SPR_OPENTTD_BASE + 12;
	public static const SPR_OTTD_D:int = SPR_OPENTTD_BASE + 13;
	public static const SPR_OTTD_N:int = 4839;
	public static const SPR_OTTD_T:int = 4836;
	public static const SPR_OTTD_R:int = 4837;
	public static const SPR_OTTD_A:int = 4838;
	public static const SPR_OTTD_S:int = 4840;
	public static const SPR_OTTD_Y:int = 4843;
	public static const SPR_OTTD_C:int = 4844;

	public static const SPR_HIGHSCORE_CHART_BEGIN:int = 4804;
	public static const SPR_TYCOON_IMG1_BEGIN:int = 4814;
	public static const SPR_TYCOON_IMG2_BEGIN:int = 4824;

	/* Industry sprites */
	public static const SPR_IT_SUGAR_MINE_SIEVE:int = 4775;
	public static const SPR_IT_SUGAR_MINE_CLOUDS:int = 4784;
	public static const SPR_IT_SUGAR_MINE_PILE:int = 4780;
	public static const SPR_IT_TOFFEE_QUARRY_TOFFEE:int = 4766;
	public static const SPR_IT_TOFFEE_QUARRY_SHOVEL:int = 4767;
	public static const SPR_IT_BUBBLE_GENERATOR_SPRING:int = 4746;
	public static const SPR_IT_BUBBLE_GENERATOR_BUBBLE:int = 4747;
	public static const SPR_IT_TOY_FACTORY_STAMP_HOLDER:int = 4717;
	public static const SPR_IT_TOY_FACTORY_STAMP:int = 4718;
	public static const SPR_IT_TOY_FACTORY_CLAY:int = 4719;
	public static const SPR_IT_TOY_FACTORY_ROBOT:int = 4720;
	public static const SPR_IT_POWER_PLANT_TRANSFORMERS:int = 2054;

	/* small icons of cargo available in station waiting*/
	public static const SPR_CARGO_PASSENGER:int = 4297;
	public static const SPR_CARGO_COAL:int = 4298;
	public static const SPR_CARGO_MAIL:int = 4299;
	public static const SPR_CARGO_OIL:int = 4300;
	public static const SPR_CARGO_LIVESTOCK:int = 4301;
	public static const SPR_CARGO_GOODS:int = 4302;
	public static const SPR_CARGO_GRAIN:int = 4303;
	public static const SPR_CARGO_WOOD:int = 4304;
	public static const SPR_CARGO_IRON_ORE:int = 4305;
	public static const SPR_CARGO_STEEL:int = 4306;
	public static const SPR_CARGO_VALUES_GOLD:int = 4307; // shared between temperate and arctic
	public static const SPR_CARGO_FRUIT:int = 4308;
	public static const SPR_CARGO_COPPER_ORE:int = 4309;
	public static const SPR_CARGO_WATERCOLA:int = 4310; // shared between desert and toyland
	public static const SPR_CARGO_DIAMONDS:int = 4311;
	public static const SPR_CARGO_FOOD:int = 4312;
	public static const SPR_CARGO_PAPER:int = 4313;
	public static const SPR_CARGO_RUBBER:int = 4314;
	public static const SPR_CARGO_CANDY:int = 4315;
	public static const SPR_CARGO_SUGAR:int = 4316;
	public static const SPR_CARGO_TOYS:int = 4317;
	public static const SPR_CARGO_COTTONCANDY:int = 4318;
	public static const SPR_CARGO_FIZZYDRINK:int = 4319;
	public static const SPR_CARGO_TOFFEE:int = 4320;
	public static const SPR_CARGO_BUBBLES:int = 4321;
	public static const SPR_CARGO_PLASTIC:int = 4322;
	public static const SPR_CARGO_BATTERIES:int = 4323;

	/* Effect vehicles */
	public static const SPR_BULLDOZER_NE:int = 1416;
	public static const SPR_BULLDOZER_SE:int = 1417;
	public static const SPR_BULLDOZER_SW:int = 1418;
	public static const SPR_BULLDOZER_NW:int = 1419;

	public static const SPR_SMOKE_0:int = 2040;
	public static const SPR_SMOKE_1:int = 2041;
	public static const SPR_SMOKE_2:int = 2042;
	public static const SPR_SMOKE_3:int = 2043;
	public static const SPR_SMOKE_4:int = 2044;

	public static const SPR_DIESEL_SMOKE_0:int = 3073;
	public static const SPR_DIESEL_SMOKE_1:int = 3074;
	public static const SPR_DIESEL_SMOKE_2:int = 3075;
	public static const SPR_DIESEL_SMOKE_3:int = 3076;
	public static const SPR_DIESEL_SMOKE_4:int = 3077;
	public static const SPR_DIESEL_SMOKE_5:int = 3078;

	public static const SPR_STEAM_SMOKE_0:int = 3079;
	public static const SPR_STEAM_SMOKE_1:int = 3080;
	public static const SPR_STEAM_SMOKE_2:int = 3081;
	public static const SPR_STEAM_SMOKE_3:int = 3082;
	public static const SPR_STEAM_SMOKE_4:int = 3083;

	public static const SPR_ELECTRIC_SPARK_0:int = 3084;
	public static const SPR_ELECTRIC_SPARK_1:int = 3085;
	public static const SPR_ELECTRIC_SPARK_2:int = 3086;
	public static const SPR_ELECTRIC_SPARK_3:int = 3087;
	public static const SPR_ELECTRIC_SPARK_4:int = 3088;
	public static const SPR_ELECTRIC_SPARK_5:int = 3089;

	public static const SPR_CHIMNEY_SMOKE_0:int = 3701;
	public static const SPR_CHIMNEY_SMOKE_1:int = 3702;
	public static const SPR_CHIMNEY_SMOKE_2:int = 3703;
	public static const SPR_CHIMNEY_SMOKE_3:int = 3704;
	public static const SPR_CHIMNEY_SMOKE_4:int = 3705;
	public static const SPR_CHIMNEY_SMOKE_5:int = 3706;
	public static const SPR_CHIMNEY_SMOKE_6:int = 3707;
	public static const SPR_CHIMNEY_SMOKE_7:int = 3708;

	public static const SPR_EXPLOSION_LARGE_0:int = 3709;
	public static const SPR_EXPLOSION_LARGE_1:int = 3710;
	public static const SPR_EXPLOSION_LARGE_2:int = 3711;
	public static const SPR_EXPLOSION_LARGE_3:int = 3712;
	public static const SPR_EXPLOSION_LARGE_4:int = 3713;
	public static const SPR_EXPLOSION_LARGE_5:int = 3714;
	public static const SPR_EXPLOSION_LARGE_6:int = 3715;
	public static const SPR_EXPLOSION_LARGE_7:int = 3716;
	public static const SPR_EXPLOSION_LARGE_8:int = 3717;
	public static const SPR_EXPLOSION_LARGE_9:int = 3718;
	public static const SPR_EXPLOSION_LARGE_A:int = 3719;
	public static const SPR_EXPLOSION_LARGE_B:int = 3720;
	public static const SPR_EXPLOSION_LARGE_C:int = 3721;
	public static const SPR_EXPLOSION_LARGE_D:int = 3722;
	public static const SPR_EXPLOSION_LARGE_E:int = 3723;
	public static const SPR_EXPLOSION_LARGE_F:int = 3724;

	public static const SPR_EXPLOSION_SMALL_0:int = 3725;
	public static const SPR_EXPLOSION_SMALL_1:int = 3726;
	public static const SPR_EXPLOSION_SMALL_2:int = 3727;
	public static const SPR_EXPLOSION_SMALL_3:int = 3728;
	public static const SPR_EXPLOSION_SMALL_4:int = 3729;
	public static const SPR_EXPLOSION_SMALL_5:int = 3730;
	public static const SPR_EXPLOSION_SMALL_6:int = 3731;
	public static const SPR_EXPLOSION_SMALL_7:int = 3732;
	public static const SPR_EXPLOSION_SMALL_8:int = 3733;
	public static const SPR_EXPLOSION_SMALL_9:int = 3734;
	public static const SPR_EXPLOSION_SMALL_A:int = 3735;
	public static const SPR_EXPLOSION_SMALL_B:int = 3736;

	public static const SPR_BREAKDOWN_SMOKE_0:int = 3737;
	public static const SPR_BREAKDOWN_SMOKE_1:int = 3738;
	public static const SPR_BREAKDOWN_SMOKE_2:int = 3739;
	public static const SPR_BREAKDOWN_SMOKE_3:int = 3740;

	public static const SPR_BUBBLE_0:int = 4748;
	public static const SPR_BUBBLE_1:int = 4749;
	public static const SPR_BUBBLE_2:int = 4750;
	public static const SPR_BUBBLE_GENERATE_0:int = 4751;
	public static const SPR_BUBBLE_GENERATE_1:int = 4752;
	public static const SPR_BUBBLE_GENERATE_2:int = 4753;
	public static const SPR_BUBBLE_GENERATE_3:int = 4754;
	public static const SPR_BUBBLE_BURST_0:int = 4755;
	public static const SPR_BUBBLE_BURST_1:int = 4756;
	public static const SPR_BUBBLE_BURST_2:int = 4757;
	public static const SPR_BUBBLE_ABSORB_0:int = 4758;
	public static const SPR_BUBBLE_ABSORB_1:int = 4759;
	public static const SPR_BUBBLE_ABSORB_2:int = 4760;
	public static const SPR_BUBBLE_ABSORB_3:int = 4761;
	public static const SPR_BUBBLE_ABSORB_4:int = 4762;

	/* Electrified rail build menu */
	public static const SPR_BUILD_NS_ELRAIL:int = SPR_ELRAIL_BASE + 36;
	public static const SPR_BUILD_X_ELRAIL:int = SPR_ELRAIL_BASE + 37;
	public static const SPR_BUILD_EW_ELRAIL:int = SPR_ELRAIL_BASE + 38;
	public static const SPR_BUILD_Y_ELRAIL:int = SPR_ELRAIL_BASE + 39;
	public static const SPR_BUILD_TUNNEL_ELRAIL:int = SPR_ELRAIL_BASE + 44;

	/* airport_gui.c */
	public static const SPR_IMG_AIRPORT:int = 744;

	/* dock_gui.c */
	public static const SPR_IMG_SHIP_DEPOT:int = 748;
	public static const SPR_IMG_SHIP_DOCK:int = 746;
	public static const SPR_IMG_BOUY:int = 693;
	public static const SPR_IMG_AQUEDUCT:int = SPR_OPENTTD_BASE + 145;

	/* music_gui.c */
	public static const SPR_IMG_SKIP_TO_PREV:int = 709;
	public static const SPR_IMG_SKIP_TO_NEXT:int = 710;
	public static const SPR_IMG_STOP_MUSIC:int = 711;
	public static const SPR_IMG_PLAY_MUSIC:int = 712;

	/* road_gui.c */
	public static const SPR_IMG_ROAD_Y_DIR:int = 1309;
	public static const SPR_IMG_ROAD_X_DIR:int = 1310;
	public static const SPR_IMG_AUTOROAD:int = SPR_OPENTTD_BASE + 82;
	public static const SPR_IMG_ROAD_DEPOT:int = 1295;
	public static const SPR_IMG_BUS_STATION:int = 749;
	public static const SPR_IMG_TRUCK_BAY:int = 750;
	public static const SPR_IMG_BRIDGE:int = 2594;
	public static const SPR_IMG_ROAD_TUNNEL:int = 2429;
	public static const SPR_IMG_REMOVE:int = 714;
	public static const SPR_IMG_ROAD_ONE_WAY:int = SPR_OPENTTD_BASE + 134;
	public static const SPR_IMG_TRAMWAY_Y_DIR:int = SPR_TRAMWAY_BASE + 0;
	public static const SPR_IMG_TRAMWAY_X_DIR:int = SPR_TRAMWAY_BASE + 1;
	public static const SPR_IMG_AUTOTRAM:int = SPR_OPENTTD_BASE + 84;

	/* rail_gui.c */
	public static const SPR_IMG_RAIL_NS:int = 1251;
	public static const SPR_IMG_RAIL_NE:int = 1252;
	public static const SPR_IMG_RAIL_EW:int = 1253;
	public static const SPR_IMG_RAIL_NW:int = 1254;
	public static const SPR_IMG_AUTORAIL:int = SPR_OPENTTD_BASE + 53;
	public static const SPR_IMG_AUTOELRAIL:int = SPR_OPENTTD_BASE + 57;
	public static const SPR_IMG_AUTOMONO:int = SPR_OPENTTD_BASE + 63;
	public static const SPR_IMG_AUTOMAGLEV:int = SPR_OPENTTD_BASE + 69;

	public static const SPR_IMG_WAYPOINT:int = SPR_OPENTTD_BASE + 76;

	public static const SPR_IMG_DEPOT_RAIL:int = 1294;
	public static const SPR_IMG_DEPOT_ELRAIL:int = SPR_OPENTTD_BASE + 61;
	public static const SPR_IMG_DEPOT_MONO:int = SPR_OPENTTD_BASE + 67;
	public static const SPR_IMG_DEPOT_MAGLEV:int = SPR_OPENTTD_BASE + 73;

	public static const SPR_IMG_RAIL_STATION:int = 1298;
	public static const SPR_IMG_RAIL_SIGNALS:int = 1291;

	public static const SPR_IMG_SIGNAL_ELECTRIC_NORM:int = 1287;
	public static const SPR_IMG_SIGNAL_ELECTRIC_ENTRY:int = SPR_SIGNALS_BASE +  12;
	public static const SPR_IMG_SIGNAL_ELECTRIC_EXIT:int = SPR_SIGNALS_BASE +  28;
	public static const SPR_IMG_SIGNAL_ELECTRIC_COMBO:int = SPR_SIGNALS_BASE +  44;
	public static const SPR_IMG_SIGNAL_ELECTRIC_PBS:int = SPR_SIGNALS_BASE + 124;
	public static const SPR_IMG_SIGNAL_ELECTRIC_PBS_OWAY:int = SPR_SIGNALS_BASE + 140;
	public static const SPR_IMG_SIGNAL_SEMAPHORE_NORM:int = SPR_SIGNALS_BASE +  60;
	public static const SPR_IMG_SIGNAL_SEMAPHORE_ENTRY:int = SPR_SIGNALS_BASE +  76;
	public static const SPR_IMG_SIGNAL_SEMAPHORE_EXIT:int = SPR_SIGNALS_BASE +  92;
	public static const SPR_IMG_SIGNAL_SEMAPHORE_COMBO:int = SPR_SIGNALS_BASE + 108;
	public static const SPR_IMG_SIGNAL_SEMAPHORE_PBS:int = SPR_SIGNALS_BASE + 188;
	public static const SPR_IMG_SIGNAL_SEMAPHORE_PBS_OWAY:int = SPR_SIGNALS_BASE + 204;
	public static const SPR_IMG_SIGNAL_CONVERT:int = SPR_OPENTTD_BASE + 135;

	public static const SPR_IMG_TUNNEL_RAIL:int = 2430;
	public static const SPR_IMG_TUNNEL_MONO:int = 2431;
	public static const SPR_IMG_TUNNEL_MAGLEV:int = 2432;

	public static const SPR_IMG_CONVERT_RAIL:int = SPR_OPENTTD_BASE + 55;
	public static const SPR_IMG_CONVERT_ELRAIL:int = SPR_OPENTTD_BASE + 59;
	public static const SPR_IMG_CONVERT_MONO:int = SPR_OPENTTD_BASE + 65;
	public static const SPR_IMG_CONVERT_MAGLEV:int = SPR_OPENTTD_BASE + 71;

	/* intro_gui.c, genworld_gui.c */
	public static const SPR_SELECT_TEMPERATE:int = 4882;
	public static const SPR_SELECT_TEMPERATE_PUSHED:int = 4883;
	public static const SPR_SELECT_SUB_ARCTIC:int = 4884;
	public static const SPR_SELECT_SUB_ARCTIC_PUSHED:int = 4885;
	public static const SPR_SELECT_SUB_TROPICAL:int = 4886;
	public static const SPR_SELECT_SUB_TROPICAL_PUSHED:int = 4887;
	public static const SPR_SELECT_TOYLAND:int = 4888;
	public static const SPR_SELECT_TOYLAND_PUSHED:int = 4889;

	
	
}
}