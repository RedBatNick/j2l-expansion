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


// Line Blocks.
newSkinnableObject(oSolidLineU, "solidlineup");
newSkinnableObject(oSolidLineR, "solidlineright");
newSkinnableObject(oSolidLineL, "solidlineleft");
newSkinnableObject(oSolidLineD, "solidlinedown");


// Mini Line Blocks.
newSkinnableObject(oMiniSolidLineU, "minisolidlineup");
newSkinnableObject(oMiniSolidLineR, "minisolidlineright");
newSkinnableObject(oMiniSolidLineL, "minisolidlineleft");
newSkinnableObject(oMiniSolidLineD, "minisolidlinedown");


// Slopes.
newSkinnableObject(oSlope, "slopeblock");
newSkinnableObject(oSlopeUpRight, "slopeupright");
newSkinnableObject(oSlopeUpLeft, "slopedownright");
newSkinnableObject(oSlopeDownLeft, "slopedownleft");
newSkinnableObject(oSlopeDownRight, "slopeupleft");


// Conveyors.
newSkinnableObject(oSlideBlock, "slideblock");
newSkinnableObject(oSlideBlockU, "slideblockup");
newSkinnableObject(oSlideBlockR, "slideblockright");
newSkinnableObject(oSlideBlockL, "slideblockleft");
newSkinnableObject(oSlideBlockD, "slideblockdown");


// Platforms.
newSkinnableObject(oPlatform, "platform");
newSkinnableObject(oPlatformSideways, "platform");

newSkinnableObject(oSnaplessPlatform, "snaplessplatform");
newSkinnableObject(oSnaplessPlatformSideways, "snaplessplatform");

newSkinnableObject(oSnapform, "snapform");
newSkinnableObject(oSnapformSideways, "snapform");

newSkinnableObject(oDisappearPlatform, "disappearplatform");
newSkinnableObject(oDisappearPlatformSideways, "disappearplatform");


// Spikes.
newSkinnableObject(oSpikeUp, "spikeup");
newSkinnableObject(oSpikeRight, "spikeright");
newSkinnableObject(oSpikeLeft, "spikeleft");
newSkinnableObject(oSpikeDown, "spikedown");


// Mini Spikes.
newSkinnableObject(oMiniSpikeUp, "miniup");
newSkinnableObject(oMiniSpikeRight, "miniright");
newSkinnableObject(oMiniSpikeLeft, "minileft");
newSkinnableObject(oMiniSpikeDown, "minidown");


// Thin Spikes.
newSkinnableObject(oSpikeUpThin, "spikeupthin");
newSkinnableObject(oSpikeRightThin, "spikerightthin");
newSkinnableObject(oSpikeLeftThin, "spikeleftthin");
newSkinnableObject(oSpikeDownThin, "spikedownthin");


// Mini Thin Spikes.
newSkinnableObject(oMiniSpikeUpThin, "minispikeupthin");
newSkinnableObject(oMiniSpikeRightThin, "minispikerightthin");
newSkinnableObject(oMiniSpikeLeftThin, "minispikeleftthin");
newSkinnableObject(oMiniSpikeDownThin, "minispikedownthin");


// Flat Spikes.
newSkinnableObject(oSpikeUpRightFlat, "spikeuprightflat");
newSkinnableObject(oSpikeDownRightFlat, "spikedownrightflat");
newSkinnableObject(oSpikeDownLeftFlat, "spikedownleftflat");
newSkinnableObject(oSpikeUpLeftFlat, "spikeupleftflat");


// Mini Flat Spikes.
newSkinnableObject(oMiniSpikeUpFlat, "minispikeupflat");
newSkinnableObject(oMiniSpikeRightFlat, "minispikerightflat");
newSkinnableObject(oMiniSpikeLeftFlat, "minispikeleftflat");
newSkinnableObject(oMiniSpikeDownFlat, "minispikedownflat");


// Line Spikes.
newSkinnableObject(oSpikeUpLine, "spikeupline");
newSkinnableObject(oSpikeRightLine, "spikerightline");
newSkinnableObject(oSpikeLeftLine, "spikeleftline");
newSkinnableObject(oSpikeDownLine, "spikedownline");
newSkinnableObject(oSpikeUpLineHalf, "spikeuplinehalf");
newSkinnableObject(oSpikeRightLineHalf, "spikerightlinehalf");
newSkinnableObject(oSpikeLeftLineHalf, "spikeleftlinehalf");
newSkinnableObject(oSpikeDownLineHalf, "spikedownlinehalf");


// Mini Line Spikes.
newSkinnableObject(oMiniSpikeUpLine, "minispikeupline");
newSkinnableObject(oMiniSpikeRightLine, "minispikerightline");
newSkinnableObject(oMiniSpikeLeftLine, "minispikeleftline");
newSkinnableObject(oMiniSpikeDownLine, "minispikedownline");
newSkinnableObject(oMiniSpikeUpLineHalf, "minispikeuplinehalf");
newSkinnableObject(oMiniSpikeRightLineHalf, "minispikerightlinehalf");
newSkinnableObject(oMiniSpikeLeftLineHalf, "minispikeleftlinehalf");
newSkinnableObject(oMiniSpikeDownLineHalf, "minispikedownlinehalf");


// Hole Spikes.
newSkinnableObject(oSpikeUpHole, "spikeuphole");
newSkinnableObject(oSpikeRightHole, "spikerighthole");
newSkinnableObject(oSpikeLeftHole, "spikelefthole");
newSkinnableObject(oSpikeDownHole, "spikedownhole");


// Box Spikes.
newSkinnableObject(oSpikeUpRightBox, "spikeuprightbox");
newSkinnableObject(oSpikeDownRightBox, "spikedownrightbox");
newSkinnableObject(oSpikeDownLeftBox, "spikedownleftbox");
newSkinnableObject(oSpikeUpLeftBox, "spikeupleftbox");


// Curved Spikes.
newSkinnableObject(oSpikeUpRightCurved, "spikeuprightcurved");
newSkinnableObject(oSpikeUpLeftCurved, "spikeupleftcurved");
newSkinnableObject(oSpikeRightUpCurved, "spikerightupcurved");
newSkinnableObject(oSpikeRightDownCurved, "spikerightdowncurved");
newSkinnableObject(oSpikeLeftUpCurved, "spikeleftupcurved");
newSkinnableObject(oSpikeLeftDownCurved, "spikeleftdowncurved");
newSkinnableObject(oSpikeDownRightCurved, "spikedownrightcurved");
newSkinnableObject(oSpikeDownLeftCurved, "spikedownleftcurved");

// Fruit.
newSkinnableObject(oApple, "apple", 1 / 15);
newSkinnableObject(oEggplant, "eggplant");
newSkinnableObject(oBanana, "banana");


// Killer Lines.
newSkinnableObject(oKillerLineV, "killerlinev");
newSkinnableObject(oKillerLineH, "killerlineh");
newSkinnableObject(oKillerLineDA, "killerlineda");
newSkinnableObject(oKillerLineDB, "killerlinedb");


// Killer Blocks.
newSkinnableObject(oKillerBlock, "killerblock");
newSkinnableObject(oMiniKillerBlock, "minikillerblock");


// Water.
newSkinnableObject(oWater, "water1");
newSkinnableObject(oWater2, "water2");
newSkinnableObject(oWater3, "water3");
newSkinnableObject(oWaterNekoron, "nwater");
newSkinnableObject(oWaterCatharsis, "cwater");
newSkinnableObject(oWaterDisappear, "diswater");


// Vapor.
newSkinnableObject(oVaporUp, "vaporup");
newSkinnableObject(oVaporDown, "vapordown");


// Booster.
newSkinnableObject(oBoosterUp, "boosterup");
newSkinnableObject(oBoosterUpRefresher, "boosteruprefresher");
newSkinnableObject(oBoosterUpApple, "boosterupapple");


// Vines.
newSkinnableObject(oVineR, "walljumpR");
newSkinnableObject(oVineL, "walljumpL");


// Refreshers.
newSkinnableObject(oJumpRefresher, "jumprefresher");

//newSkinnableObject(oShootRefresherR, "shootrefresherR", 0);
//newSkinnableObject(oShootRefresherL, "shootrefresherL", 0);


// Gravity.
newSkinnableObject(oGravityArrowUp, "gravarrowup");
newSkinnableObject(oGravityArrowRight, "gravarrowright");
newSkinnableObject(oGravityArrowLeft, "gravarrowleft");
newSkinnableObject(oGravityArrowDown, "gravarrowdown");

newSkinnableObject(oGravityBlockUp, "gravblockup");
newSkinnableObject(oGravityBlockRight, "gravblockright");
newSkinnableObject(oGravityBlockLeft, "gravblockleft");
newSkinnableObject(oGravityBlockDown, "gravblockdown");


// Fields.
newSkinnableObject(oFieldDotkidOn, "fielddotkidon");
newSkinnableObject(oFieldDotkidOff, "fielddotkidoff");
newSkinnableObject(oFieldTripleOn, "fieldtripleon");
newSkinnableObject(oFieldTripleOff, "fieldtripleoff");


// Saves.
newSkinnableObject(oSave, "save", 0);
newSkinnableObject(oSaveFlip, "save", 0);


// Markers. 
newSkinnableObject(oBulletBlocker, "bulletblocker");
//newSkinnableObject(oAlignMarker, "alignmarker");


// Warps.
newSkinnableObject(oPlayerStart, "playerstart");
newSkinnableObject(oWarp, "warp");


// Triggers.
newSkinnableObject(oTrg, "trigger");


// Mini objects (for ctool)
newSkinnableObject(oWaterMini, "water1");
newSkinnableObject(oWater2Mini, "water2");
newSkinnableObject(oWater3Mini, "water3");
newSkinnableObject(oWaterCatharsisMini, "cwater");
newSkinnableObject(oWaterDisappearMini, "diswater");
newSkinnableObject(oVaporUpMini, "vaporup");
newSkinnableObject(oVaporDownMini, "vapordown");
newSkinnableObject(oBoosterUpMini, "boosterup");
newSkinnableObject(oGravityBlockUpMini, "gravblockup");
newSkinnableObject(oGravityBlockDownMini, "gravblockdown");
newSkinnableObject(oFieldDotkidOnMini, "fielddotkidon");
newSkinnableObject(oFieldDotkidOffMini, "fielddotkidoff");
newSkinnableObject(oFieldTripleOnMini, "fieldtripleon");
