global.skinnable_objects = ds_map_create();

// Menu.
newSkinnableSprite(sSidebar, "sidebar");
newSkinnableSprite(sMenu, "menu");
newSkinnableSprite(sPopup, "popup");


// Player.
newSkinnableSprite(sPlayerIdle, "playeridle");
newSkinnableSprite(sPlayerRunning, "playerrunning");
newSkinnableSprite(sPlayerJump, "playerjump");
newSkinnableSprite(sPlayerFall, "playerfall");
newSkinnableSprite(sPlayerSliding, "playersliding");
newSkinnableSprite(sPlayerClimbBack, "playerclimbback");
newSkinnableSprite(sPlayerClimbVer, "playerclimbver");
newSkinnableSprite(sPlayerClimbHor, "playerclimbhor");

newSkinnableSprite(sLunarkid, "lunarkid");
newSkinnableSprite(sLinekid, "linekid");

newSkinnableSprite(sPlayerBlood, "blood",0);
newSkinnableSprite(sPlayerBullet, "bullet");


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
newSkinnableObject(oSlopeDownRight, "slopedownright");
newSkinnableObject(oSlopeDownLeft, "slopedownleft");
newSkinnableObject(oSlopeUpLeft, "slopeupleft");


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
newSkinnableObject(oMiniSpikeUpThin, "miniupthin");
newSkinnableObject(oMiniSpikeRightThin, "minirightthin");
newSkinnableObject(oMiniSpikeLeftThin, "minileftthin");
newSkinnableObject(oMiniSpikeDownThin, "minidownthin");


// Flat Spikes.
newSkinnableObject(oSpikeUpRightFlat, "spikeuprightflat");
newSkinnableObject(oSpikeDownRightFlat, "spikedownrightflat");
newSkinnableObject(oSpikeDownLeftFlat, "spikedownleftflat");
newSkinnableObject(oSpikeUpLeftFlat, "spikeupleftflat");


// Mini Flat Spikes.
newSkinnableObject(oMiniSpikeUpFlat, "miniupflat");
newSkinnableObject(oMiniSpikeRightFlat, "minirightflat");
newSkinnableObject(oMiniSpikeLeftFlat, "minileftflat");
newSkinnableObject(oMiniSpikeDownFlat, "minidownflat");


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
newSkinnableObject(oMiniSpikeUpLine, "miniupline");
newSkinnableObject(oMiniSpikeRightLine, "minirightline");
newSkinnableObject(oMiniSpikeLeftLine, "minileftline");
newSkinnableObject(oMiniSpikeDownLine, "minidownline");
newSkinnableObject(oMiniSpikeUpLineHalf, "miniuplinehalf");
newSkinnableObject(oMiniSpikeRightLineHalf, "minirightlinehalf");
newSkinnableObject(oMiniSpikeLeftLineHalf, "minileftlinehalf");
newSkinnableObject(oMiniSpikeDownLineHalf, "minidownlinehalf");


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
newSkinnableObject(oApple, "apple", 1/15);
newSkinnableObject(oEggplant, "eggplant");
newSkinnableObject(oBananas, "bananas");


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
newSkinnableObject(oUpdraft, "updraft");


// Booster.
newSkinnableObject(oBoosterUp, "boosterup");
newSkinnableObject(oBoosterUpRefresher, "boosteruprefresher");
newSkinnableObject(oBoosterUpApple, "boosterupapple");

newSkinnableObject(oBoosterDown, "boosterdown");
newSkinnableObject(oBoosterDownRefresher, "boosterdownrefresher");
newSkinnableObject(oBoosterDownApple, "boosterdownapple");


// Vines.
newSkinnableObject(oVineU, "walljumpU");
newSkinnableObject(oVineR, "walljumpR");
newSkinnableObject(oVineL, "walljumpL");
newSkinnableObject(oVineD, "walljumpD");

newSkinnableObject(oRiseVineU, "risevineU");
newSkinnableObject(oRiseVineR, "risevineR");
newSkinnableObject(oRiseVineL, "risevineL");
newSkinnableObject(oRiseVineD, "risevineD");

newSkinnableObject(oIceVineU, "icevineU");
newSkinnableObject(oIceVineR, "icevineR");
newSkinnableObject(oIceVineL, "icevineL");
newSkinnableObject(oIceVineD, "icevineD");

newSkinnableObject(oFlipVineU, "flipvineU");
newSkinnableObject(oFlipVineR, "flipvineR");
newSkinnableObject(oFlipVineL, "flipvineL");
newSkinnableObject(oFlipVineD, "flipvineD");

newSkinnableObject(oStickyVineU, "stickyvineU");
newSkinnableObject(oStickyVineR, "stickyvineR");
newSkinnableObject(oStickyVineL, "stickyvineL");
newSkinnableObject(oStickyVineD, "stickyvineD");

newSkinnableObject(oLowGravVineU, "lowgravvineU");
newSkinnableObject(oLowGravVineR, "lowgravvineR");
newSkinnableObject(oLowGravVineL, "lowgravvineL");
newSkinnableObject(oLowGravVineD, "lowgravvineD");

newSkinnableObject(oFireVineU, "firevineU", 1/5);
newSkinnableObject(oFireVineR, "firevineR", 1/5);
newSkinnableObject(oFireVineL, "firevineL", 1/5);
newSkinnableObject(oFireVineD, "firevineD", 1/5);

newSkinnableObject(oZeroGravVineU, "zerogravvineU");
newSkinnableObject(oZeroGravVineR, "zerogravvineR");
newSkinnableObject(oZeroGravVineL, "zerogravvineL");
newSkinnableObject(oZeroGravVineD, "zerogravvineD");

newSkinnableObject(oAutoVineU, "autovineU",1/5);
newSkinnableObject(oAutoVineR, "autovineR",1/5);
newSkinnableObject(oAutoVineL, "autovineL",1/5);
newSkinnableObject(oAutoVineD, "autovineD",1/5);

newSkinnableObject(oReverseVineU, "reversevineU");
newSkinnableObject(oReverseVineR, "reversevineR");
newSkinnableObject(oReverseVineL, "reversevineL");
newSkinnableObject(oReverseVineD, "reversevineD");


// Refreshers.
newSkinnableObject(oJumpRefresher, "jumprefresher");
newSkinnableObject(oJumpDefresher, "jumpdefresher", 1/15);
newSkinnableObject(oHighJumpRefresher, "highjumprefresher", 1/15);
newSkinnableObject(oLowJumpRefresher, "lowjumprefresher", 1/15);
newSkinnableObject(oFlipJumpRefresher, "flipjumprefresher", 1/15);
newSkinnableObject(oJumpTelefresher, "jumptelerefresher", 1/15);
newSkinnableObject(oFastJumpRefresher, "fastjumprefresher", 1/15);
newSkinnableObject(oSwitchJumpRefresher, "switchjumprefresher", 1/15);
newSkinnableObject(oSlowJumpRefresher, "slowjumprefresher", 1/15);


newSkinnableSprite(oShootRefresherR, "shootrefresherR", 0);
newSkinnableSprite(oShootRefresherL, "shootrefresherL", 0);


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
newSkinnableObject(oFieldLowGrav, "fieldlowgrav", 0.3);
newSkinnableObject(oFieldHighGrav, "fieldhighgrav", 0.3);
newSkinnableObject(oFieldZeroGrav, "fieldzerograv", 0.3);
newSkinnableObject(oFieldAntiGrav, "fieldantigrav", 0.3);

newSkinnableObject(oFieldHighSpeed, "fieldhighspeed", 0.3);
newSkinnableObject(oFieldLowSpeed, "fieldlowspeed", 0.3);
newSkinnableObject(oFieldAutoSpeed, "fieldautospeed", 0.3);
newSkinnableObject(oFieldBuffSpeed, "fieldbuffspeed", 0.3);

newSkinnableObject(oFieldDotkidOn, "fielddotkidon");
newSkinnableObject(oFieldDotkidOff, "fielddotkidoff");
newSkinnableObject(oFieldDotkidShoot, "fielddotkidshoot");

newSkinnableObject(oFieldTripleJumpOn, "fieldtriplejumpon");
newSkinnableObject(oFieldTripleJumpOff, "fieldtriplejumpoff");
newSkinnableObject(oFieldTripleJumpShoot, "fieldtriplejumpshoot");


// Saves.
newSkinnableSprite(oSave, "save", 0);
newSkinnableSprite(oSaveFlip, "save", 0);


// Markers. 
newSkinnableObject(oBulletBlocker, "bulletblocker");
//newSkinnableObject(oAlignMarker, "alignmarker");


// Warps.
newSkinnableObject(oPlayerStart, "playerstart");
newSkinnableObject(oWarp, "warp");


// Triggers.
newSkinnableObject(oFreeTrigger, "trigger");


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
newSkinnableObject(oFieldTripleJumpOnMini, "fieldtripleon");
