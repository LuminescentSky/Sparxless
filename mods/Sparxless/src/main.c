#include <common.h>
#include <main_updates.h>
#include <multitap.h>
#include <shared_funcs.h>
#include <bg_colors.h>
#include <custom_text.h>
#include <sound.h>

//*
//* ~ MAIN EVERY FRAME HOOK (GAMESTATE CHECK) ~
//*
void MainFunc() {
    if (_gameState == GAMESTATE_GAMEPLAY && _spyro.health > 0) {
        _spyro.health = 0;
    }
}
