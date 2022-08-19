global.skinnable_objects = ds_map_create();

// Menu.
newSkinnableSprite(sMenu, "menu");
newSkinnableSprite(sSidebar, "sidebar");
newSkinnableSprite(sPopup, "popup");


// Player.
newSkinnableSprite(sPlayerIdle, "playeridle");
newSkinnableSprite(sPlayerRunning, "playerrunning");
newSkinnableSprite(sPlayerJump, "playerjump");
newSkinnableSprite(sPlayerFall, "playerfall");
newSkinnableSprite(sPlayerSliding, "playersliding");

newSkinnableSprite(sLunarkid, "lunarkid");
newSkinnableSprite(sLinekid, "linekid");

newSkinnableObject(sPlayerBullet, "bullet");
newSkinnableSprite(sPlayerBlood, "blood");


// Blocks.
newSkinnableObject(oEditBlock, "block");
newSkinnableObject(oEditMiniBlock, "miniblock");
newSkinnableObject(oSlipBlock, "slipblock");

newSkinnableObject(oSlideBlock, "slideblock");
newSkinnableObject(oSlideBlockU, "slideblockup");
newSkinnableObject(oSlideBlockR, "slideblockright");
newSkinnableObject(oSlideBlockL, "slideblockleft");
newSkinnableObject(oSlideBlockD, "slideblockdown");


// Slopes.
newSkinnableObject(oSlope, "slopeblock");
newSkinnableObject(oSlopeUpRight, "slopeupright");
newSkinnableObject(oSlopeUpLeft, "slopeupleft");
newSkinnableObject(oSlopeDownLeft, "slopedownleft");
newSkinnableObject(oSlopeDownRight, "slopedownright");


// Platforms.
newSkinnableObject(oPlatform, "platform");
newSkinnableObject(oPlatformSideways, "platform");
newSkinnableObject(oSnapform, "snapform");
newSkinnableObject(oSnapformSideways, "snapform");
newSkinnableObject(oDisappearPlatform, "disappearplatform");
newSkinnableObject(oDisappearPlatformSideways, "disappearplatform");


// Spikes.
newSkinnableObject(oSpikeUp, "spikeup");
newSkinnableObject(oSpikeRight, "spikeright");
newSkinnableObject(oSpikeLeft, "spikeleft");
newSkinnableObject(oSpikeDown, "spikedown");


// Minispikes.
newSkinnableObject(oMiniSpikeUp, "miniup");
newSkinnableObject(oMiniSpikeRight, "miniright");
newSkinnableObject(oMiniSpikeLeft, "minileft");
newSkinnableObject(oMiniSpikeDown, "minidown");


// Fruit.
newSkinnableObject(oApple, "apple");
newSkinnableObject(oEggplant, "eggplant");
newSkinnableObject(oBanana, "banana");


// Killerblocks.
newSkinnableObject(oKillerBlock, "killerblock");
newSkinnableObject(oMiniKillerBlock, "minikillerblock");


// Water.
newSkinnableObject(oWater, "water1");
newSkinnableObject(oWater2, "water2");
newSkinnableObject(oWater3, "water3");
newSkinnableObject(oWaterNekoron, "waterNekoron");
newSkinnableObject(oWaterCatharsis, "waterCatharsis");
newSkinnableObject(oWaterDisappear, "waterDisappear");


// Vines.
newSkinnableObject(oVineR, "walljumpR");
newSkinnableObject(oVineL, "walljumpL");


// Refreshers.
newSkinnableObject(oJumpRefresher, "jumprefresher");

newSkinnableObject(oShootRefresherR, "shootrefresherR");
newSkinnableObject(oShootRefresherL, "shootrefresherL");


// Gravity.
newSkinnableObject(oGravityArrowUp, "gravityarrowup");
newSkinnableObject(oGravityArrowRight, "gravityarrowright");
newSkinnableObject(oGravityArrowLeft, "gravityarrowleft");
newSkinnableObject(oGravityArrowDown, "gravityarrowdown");


// Saves.
newSkinnableObject(oSave, "save");
newSkinnableObject(oSaveFlip, "save");


// Markers. 
newSkinnableObject(oBulletBlocker, "bulletblocker");


// Warps.
newSkinnableObject(oPlayerStart, "playerstart");
newSkinnableObject(oWarp, "warp");
