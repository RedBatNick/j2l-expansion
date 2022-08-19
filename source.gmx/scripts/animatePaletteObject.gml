//draw object animations
var block = obj == oEditBlock
var miniblock = obj == oEditMiniBlock
var platform = obj == oPlatform or obj == oPlatformSideways
var slope = obj == oSlopeUpRight or obj == oSlopeUpLeft or obj == oSlopeDownLeft or obj == oSlopeDownRight
var conveyor = obj == oSlideBlockU or obj == oSlideBlockR or obj == oSlideBlockL or obj == oSlideBlockD 

var spike = obj == oSpikeUp or obj == oSpikeRight or obj == oSpikeLeft or obj == oSpikeDown
var minispike = obj == oMiniSpikeUp or obj == oMiniSpikeRight or obj == oMiniSpikeLeft or obj == oMiniSpikeDown

var fruit = obj == oApple

var killerblock = obj == oKillerBlock
var minikillerblock = obj == oMiniKillerBlock

var gravarrow = obj == oGravityArrowUp or obj == oGravityArrowDown or obj = oGravityArrowRight or obj = oGravityArrowLeft

var warp = obj == oWarp
    
var frame = 0
if block frame = floor((global.count mod (global.blockframes/global.blockanimspeed))*global.blockanimspeed)
if miniblock frame = floor((global.count mod (global.miniblockframes/global.miniblockanimspeed))*global.miniblockanimspeed)
if platform frame = floor((global.count mod (global.platformframes/global.platformanimspeed))*global.platformanimspeed)
if slope frame = floor((global.count mod (global.slopeblockframes/global.slopeblockanimspeed))*global.slopeblockanimspeed)
if conveyor frame = floor((global.count mod (global.slideblockframes/global.slideblockanimspeed))*global.slideblockanimspeed)

if spike frame = floor((global.count mod (global.spikeframes/global.spikeanimspeed))*global.spikeanimspeed)
if minispike frame = floor((global.count mod (global.minispikeframes/global.minispikeanimspeed))*global.minispikeanimspeed)

if killerblock frame = floor((global.count mod (global.killerblockframes/global.killerblockanimspeed))*global.killerblockanimspeed)
if minikillerblock frame = floor((global.count mod (global.minikillerblockframes/global.minikillerblockanimspeed))*global.minikillerblockanimspeed)

if gravarrow frame = floor((global.count mod (global.gravarrowframes/global.gravarrowanimspeed))*global.gravarrowanimspeed)

if warp frame = floor((global.count mod (global.warpframes/global.warpanimspeed))*global.warpanimspeed)

