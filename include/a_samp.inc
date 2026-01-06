// a_samp.inc mínimo para SA-MP
#define MAX_PLAYERS 500
#define MAX_VEHICLES 2000

#define INVALID_PLAYER_ID 255
#define INVALID_VEHICLE_ID 65535

stock SetGameModeText(const text[])
stock SetPlayerSkin(playerid, skinid)
stock ShowPlayerMarkers(show)
stock ShowNameTags(show)
stock EnableStuntBonusForAll(toggle)
stock AddStaticVehicle(modelid, Float:x, Float:y, Float:z, Float:angle, color1, color2)
stock SendClientMessage(playerid, color, const text[])
stock SetSpawnInfo(playerid, team, skin, Float:x, Float:y, Float:z, Float:angle, weapon1, weapon2, weapon3, color1, color2, color3)
stock SpawnPlayer(playerid)
stock SetPlayerPos(playerid, Float:x, Float:y, Float:z)
stock SetPlayerFacingAngle(playerid, Float:angle)
stock SetCameraBehindPlayer(playerid)
stock ResetPlayerWeapons(playerid)
stock GivePlayerWeapon(playerid, weaponid, ammo)
stock SetPlayerArmour(playerid, Float:armour)
stock SetTimerEx(callback[], interval, repeating, const params[])
