#include <a_samp>

// ===== CONFIGURAÇÕES DO SPAWN =====
#define SPAWN_X 1958.3783
#define SPAWN_Y -2184.0986
#define SPAWN_Z 13.5469
#define SPAWN_A 90.0

// ===== FUNÇÃO PARA EQUIPAR O JOGADOR =====
stock EquiparJogador(playerid)
{
    SetPlayerSkin(playerid, 298);
    SetPlayerArmour(playerid, 100.0);

    ResetPlayerWeapons(playerid);

    GivePlayerWeapon(playerid, 25, 500);   // Shotgun
    GivePlayerWeapon(playerid, 30, 2500);  // AK-47
    GivePlayerWeapon(playerid, 31, 2500);  // M4
    GivePlayerWeapon(playerid, 22, 150);   // Pistola

    return 1;
}

// ===== GAMEMODE INIT =====
public OnGameModeInit()
{
    SetGameModeText("Matinha RP");
    ShowPlayerMarkers(1);
    ShowNameTags(1);
    EnableStuntBonusForAll(0);

    // Criar NRG-500 no aeroporto
    AddStaticVehicle(522, 1955.0, -2180.0, 13.5, 0.0, 1, 1);
    AddStaticVehicle(522, 1960.0, -2180.0, 13.5, 0.0, 1, 1);
    AddStaticVehicle(522, 1965.0, -2180.0, 13.5, 0.0, 1, 1);
    AddStaticVehicle(522, 1970.0, -2180.0, 13.5, 0.0, 1, 1);
    AddStaticVehicle(522, 1975.0, -2180.0, 13.5, 0.0, 1, 1);

    print("=======================================");
    print(" Gamemode Matinha RP carregada com sucesso!");
    print(" Spawn no aeroporto com armas e NRG-500");
    print("=======================================");

    return 1;
}

// ===== AO JOGADOR CONECTAR =====
public OnPlayerConnect(playerid)
{
    SendClientMessage(playerid, -1, "Bem-vindo ao Matinha RP! Você spawnará no aeroporto.");
    return 1;
}

// ===== DEFINIR SPAWN =====
public OnPlayerRequestClass(playerid, classid)
{
    SetSpawnInfo(
        playerid,
        0,
        298,
        SPAWN_X,
        SPAWN_Y,
        SPAWN_Z,
        SPAWN_A,
        0, 0, 0, 0, 0, 0
    );
    SpawnPlayer(playerid);
    return 1;
}

// ===== AO JOGADOR SPAWNAR =====
public OnPlayerSpawn(playerid)
{
    EquiparJogador(playerid);
    SetPlayerPos(playerid, SPAWN_X, SPAWN_Y, SPAWN_Z);
    SetPlayerFacingAngle(playerid, SPAWN_A);
    SetCameraBehindPlayer(playerid);

    return 1;
}

// ===== AO JOGADOR MORRER =====
public OnPlayerDeath(playerid, killerid, reason)
{
    SetTimerEx("RespawnJogador", 1000, false, "i", playerid);
    return 1;
}

forward RespawnJogador(playerid);
public RespawnJogador(playerid)
{
    SpawnPlayer(playerid);
    return 1;
}
