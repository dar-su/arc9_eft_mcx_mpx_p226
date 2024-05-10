AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_pist")

SWEP.PrintName = "SIG P226R"

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_pist")
SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = "SIG Sauer",
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = "9x19mm Parabellum",
    [ARC9:GetPhrase("eft_trivia_act") .. "3"]= ARC9:GetPhrase("eft_trivia_act_recoil"),
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = ARC9:GetPhrase("eft_trivia_country_germ"),
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "2011 ?"
}

SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Darsu", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "Battlestate Games LTD", 
    [ARC9:GetPhrase("eft_trivia_help") .. "3"] = "Mal0", 
    [ARC9:GetPhrase("eft_trivia_arc9") .. "4"] = "Arctic",
}

SWEP.Description = [[The P226R is a full-sized, service-type pistol made by SIG Sauer. Chambered in 9x19mm Parabellum, it features a Picatinny rail mount on the underside of the frame. Its the standard service weapon of Navy SEALs.]]


-- SWEP.StandardPresets = {
-- }

SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_p226.mdl"
SWEP.WorldModel = "models/weapons/w_pist_glock18.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
-- SWEP.DefaultBodygroups = "0001110101101"
SWEP.DefaultBodygroups = "00000000000000"
SWEP.BarrelLength = 25

SWEP.RecoilMultHipFire = 1.1
SWEP.RecoilAutoControlMultHipFire = 0.5

-------------------------- DAMAGE PROFILE

-- default pst ghz

SWEP.DamageMax = 54/2
SWEP.DamageMin = 30/2
SWEP.PhysBulletMuzzleVelocity = 457 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      20 *2.54/100/0.0254
SWEP.PenetrationDelta = 33/100
SWEP.ArmorPiercing =    33/100
SWEP.RicochetChance =   5/100


SWEP.DamageLookupTable = {
    {   10/0.0254, 
    54/2     },

    {   100 /0.0254, 
    43.77/2     },

    {   200 /0.0254, 
    40.34/2     },

    {   300 /0.0254, 
    37.92/2     },

    {   400 /0.0254, 
    35.98/2     },

    {   500 /0.0254, 
    34.32/2     },

    {   600 /0.0254, 
    32.96/2     },

    {   700 /0.0254, 
    31.9/2     },

    {   800 /0.0254, 
    31.12/2     },

    {   900 /0.0254, 
    30.65/2     },

    {   1000 /0.0254, 
    30.51/2     },
}


-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.

SWEP.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_p226_15.mdl" -- Set to a string or table to drop this magazine when reloading.
-- SWEP.DropMagazineSounds = {
--     "arc9_eft_shared/weap_magdrop_plastic.ogg"
-- } -- Table of sounds a dropped magazine should play.
SWEP.DropMagazineAmount = 0 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.66*0.85
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(90, 180, 90)
SWEP.DropMagazineVelocity = Vector(0, 0, 0)

SWEP.Overheat = true
SWEP.HeatCapacity = 100
SWEP.HeatDissipation = 2
SWEP.HeatLockout = false
-------------------------- FIREMODES

SWEP.RPM = 450 -- idk ?
SWEP.Firemodes = { { Mode = 1 } }

--          Recoil
-- touch these

SWEP.Recoil = 1 -- general multiplier of main recoil

SWEP.RecoilUp   = 1   -- up recoil
SWEP.RecoilSide = 0.5 -- sideways recoil
SWEP.RecoilRandomUp   = 0.2 -- random up/down
SWEP.RecoilRandomSide = 0.2   -- random left/right

SWEP.RecoilAutoControl = 10 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 1 -- general multiplier for it

local EFT_VisualRecoilUp_BURST_SEMI   = 1.5   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 1.5   --   when fullautoing
local EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.005   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 2 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 15 -- same but in sights only

SWEP.VisualRecoilDampingConst = 600  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 10 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 2 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = -0.5 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.31 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.VisualRecoilCenter = Vector(2, 20, 2) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
-- SWEP.VisualRecoilCenterHipFire = Vector(2, 25, 2)
local EFT_ShotsToSwitchToFullAutoBehaviur = 2 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.25 -- camera roll each shot + makes camera go more up when fullautoing

-- dont touch this i guess

SWEP.RecoilMultHipFire = 1
SWEP.RecoilMultCrouch = 0.75
SWEP.RecoilUpMultFirstShot = 1
SWEP.RecoilUpMultRecoil = 1

SWEP.RecoilDissipationRate = 5
SWEP.RecoilAutoControlMultHipFire = 0.75
SWEP.RecoilAutoControl_DontTryToReturnBack = true
SWEP.RecoilResetTime = 0.03
SWEP.RecoilFullResetTime = 0.2

SWEP.UseVisualRecoil = true 
SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilMultCrouch = 0.75

SWEP.VisualRecoilDampingConstMultFirstShot = 0.3

-- SWEP.VisualRecoilThinkFunc = function(springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING, recamount)
--     return springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING
-- end

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount, self)
    local fullauto = math.Clamp(recamount - EFT_ShotsToSwitchToFullAutoBehaviur, 0, 3) * 0.33333333
    up = Lerp(fullauto, EFT_VisualRecoilUp_BURST_SEMI, up)
    side = Lerp(fullauto, EFT_VisualRecoilSide_BURST_SEMI, side)

    if recamount < 2 then
        if self:GetSightAmount() < 0.2 then up = 3 end -- only for visual when hipfiring
    end

    return up, side, roll, punch
end

SWEP.RecoilKickAffectPitch = true
SWEP.RecoilKickDamping = 10


-------------------------- SPREAD

SWEP.Spread = 9.97 * ARC9.MOAToAcc
SWEP.SpreadAddHipFire = 0.02
SWEP.SpreadMultMove = 1.5
SWEP.SpreadAddMove = 0.015

-------------------------- HANDLING

SWEP.Malfunction = true 
SWEP.MalfunctionNeverLastShoot = true 
SWEP.MalfunctionMeanShotsToFail = 333*2
SWEP.MalfunctionWait = -1 -- oh god why the fuck 0 is 0.5???????

SWEP.FreeAimRadius = 2
SWEP.FreeAimRadiusSights = 0

SWEP.Sway = 1
SWEP.SwayMove = 0.5
SWEP.SwayMidAir = 10
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultHipFire = 0.2
SWEP.SwayMultSights = 0.25
SWEP.HoldBreathTime = 40
SWEP.RestoreBreathTime = 30
SWEP.BreathInSound = false 
SWEP.BreathOutSound = false
SWEP.BreathRunOutSound = "arc9_eft_shared/bear3_breath_sprint.ogg"

SWEP.AimDownSightsTime = 0.1 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.35 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

-------------------------- MELEE

SWEP.Bash = false
SWEP.PrimaryBash = false
-------------------------- TRACERS

SWEP.TracerNum = 0 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-4.28, -8, 2.0),
    Ang = Angle(0, 0.07, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(-1, 0, 8),
        Ang = Angle(0, 0, -145),
    },
    Magnification = 1.1,
}

SWEP.ViewModelFOVBase = 62

SWEP.ActivePos = Vector(-0.5, -2.5, -.45)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(0, 20.6,  -15.2)
SWEP.SprintPos = Vector(0.5, -5.1, -13.5)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(21.7, 25, 3.5)
SWEP.CustomizeSnapshotFOV = 70
SWEP.CustomizeRotateAnchor = Vector(21.6, -4.28, -5.23)

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeNPC = "pistol"

SWEP.HoldTypeCustomize = "physgun"
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER

SWEP.WorldModelOffset = {
    Pos = Vector(-15.5, 5.5, -4),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-4, 8, -5), -- rpg
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN


-------------------------- RECOIL





-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_pistol" -- Used for some muzzle effects.

SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x19.mdl"
SWEP.ShellCorrectAng = Angle(0, 180, 180)
SWEP.ShellScale = 1
SWEP.CaseEffectQCA = 2
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 0.3 -- Intensity for QC camera movement.
SWEP.CamQCA_Mult_ADS = 0.05 -- Intensity for QC camera movement in ADS.

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag1",
    [3] = "patron_in_mag2",
    [4] = "patron_in_mag3",
    [6] = "patron_in_mag5",
    [10] = "patron_in_mag9",
    [12] = "patron_in_mag11",
    [16] = "patron_in_mag15",
    [20] = "patron_in_mag19"
}

-------------------------- SOUNDS

local path = "weapons/darsu_eft/p226/"
local pathgenericpistol = "weapons/darsu_eft/generic_pistol/"

SWEP.ShootSound = { path .. "p226_fire_close.ogg", path .. "p226_fire_close2.ogg" }
SWEP.ShootSoundIndoor = { path .. "pm_indoor_close1.ogg", path .. "pm_indoor_close2.ogg" }
SWEP.DistantShootSound = { path .. "p226_fire_distant.ogg", path .. "p226_fire_distant2.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "pm_indoor_distant1.ogg", path .. "pm_indoor_distant2.ogg" }

SWEP.ShootSoundSilenced = path .. "p226_fire_silenced_close.ogg"
SWEP.ShootSoundSilencedIndoor = path .. "p226_fire_silenced_indoor_close.ogg"
SWEP.DistantShootSoundSilenced = path .. "p226_fire_silenced_distant.ogg"
SWEP.DistantShootSoundSilencedIndoor = path .. "p226_fire_silenced_indoor_distant.ogg"

SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = ""-- we will have own in sound tables

SWEP.DryFireSound = "arc9_eft_shared/weap_trigger_empty.ogg"

SWEP.SuppressEmptySuffix = true 

SWEP.EnterSightsSound = ARC9EFT.ADSPistol
SWEP.ExitSightsSound = ARC9EFT.ADSPistol

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()

    local ending = ""

    -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
    -- local rand = 0
    local nomag = false

    if elements["eft_mag_p226_15"] then ending = 0 
    elseif elements["eft_mag_p226_20"] then ending = 1 
    else nomag = true end

    local empty = swep:Clip1() == 0 and !nomag
    
    -- 0 looking
    -- 1 slide check  (!empty)
    -- 2 mag checking  (!nomag)
    
    if anim == "inspect" or anim == "inspect_empty" then
        swep.EFTInspectnum = swep.EFTInspectnum or 0
        if IsFirstTimePredicted() then
            swep.EFTInspectnum = swep.EFTInspectnum + 1
        end
        local rand = swep.EFTInspectnum
        if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end
        -- if empty and rand == 0 then swep.EFTInspectnum = 1 rand = 1 end

        if rand == 2 and !nomag then -- mag
            ending = "_mag_" .. ending
            
            if ARC9EFTBASE and SERVER then
                net.Start("arc9eftmagcheck")
                net.WriteBool(false ) -- accurate or not based on mag type
                net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
                net.WriteUInt(swep:GetCapacity(), 9)
                net.Send(swep:GetOwner())
            end
        else
            if nomag then rand = 0 end
            ending = rand
        end

        return anim .. ending
    elseif anim == "reload" then
        return anim .. (empty and "_empty" or "") .. ending
    end

    if anim == "fix" then
        rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
        -- rand = 4

        if SERVER and ARC9EFTBASE then
            net.Start("arc9eftjam")
            net.WriteUInt(rand, 3)
            net.Send(swep:GetOwner())
        end

        return "jam" .. rand
    end

    -- print("nomag:", nomag, "rand:", rand, "anim:", anim, "ending:", ending)
end

local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local slidelock = {"arc9_eft_shared/pistol_jam_slidelock_try1.ogg", "arc9_eft_shared/pistol_jam_slidelock_try2.ogg", "arc9_eft_shared/pistol_jam_slidelock_try3.ogg"}
local slidelockgrab = {"arc9_eft_shared/pistol_jam_slidelock_grab1.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab2.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab3.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local rst_single = {
    { s = randspin, t = 0.05 },
    { s = randspin, t = 0.4 },
    { s = pathgenericpistol .. "grach_slider_in.ogg", t = 0.9 },
    { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 1.1},
    { s = randspin, t = 1.53 },
    { s =  pathgenericpistol .. "generic_jam_shell_ remove_medium3.ogg", t = 2.4  },
    { s = randspin, t = 2.4 },
    { s =  pathgenericpistol .. "pm_catch_slider.ogg", t = 2.9 },
    { s = randspin, t = 3.08 },
}

local rst_def = {
    { s = randspin, t = 0.1 },
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.46 }, -- eft devs redarded
    { s =  pathgenericpistol .. "mpx_weap_magout_plastic.ogg", t = 0.55 },
    { s = pouchin, t = 1.2 },
    { s = pouchout, t = 1.6 },
    { s = randspin, t = 1.7 },
    { s =  pathgenericpistol .. "mpx_weap_magin_plastic.ogg", t = 2.45 },
    { s = randspin, t = 3.12 },
}
local rst_def2 = {
    { s = randspin, t = 0.1 },
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.46 }, -- eft devs redarded
    { s =  pathgenericpistol .. "mpx_weap_magout_plastic.ogg", t = 0.55 },
    { s = pouchin, t = 1.2 },
    { s = pouchout, t = 1.6 },
    { s = randspin, t = 1.95 },
    { s =  pathgenericpistol .. "mpx_weap_magin_plastic.ogg", t = 2.72 },
    { s = randspin, t = 3.4 },
}

local rst_empty = {
    { s = randspin, t = 0.1 },    
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.35 }, -- eft devs redarded
    { s =  pathgenericpistol .. "mpx_weap_magout_plastic.ogg", t = 0.4 },
    { s =  randspin, t = 0.53 },
    { s =  randspin, t = 1.04 },
    { s = pouchout, t = 1.15 },
    { s =  pathgenericpistol .. "mpx_weap_magin_plastic.ogg", t = 1.8 },
    { s = randspin, t = 2.24 },  
    { s =  pathgenericpistol .. "pm_catch_slider.ogg", t = 2.75 },
    { s = randspin, t = 2.95 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.66},
    {hide = 0, t = 1.15}
}
local rst_empty2 = {
    { s = randspin, t = 0.1 },    
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.35 }, -- eft devs redarded
    { s =  pathgenericpistol .. "mpx_weap_magout_plastic.ogg", t = 0.4 },
    { s =  randspin, t = 0.53 },
    { s =  randspin, t = 1.04 },
    { s = pouchout, t = 1.2 },
    { s =  pathgenericpistol .. "mpx_weap_magin_plastic.ogg", t = 2.2 },
    { s = randspin, t = 2.4 },  
    { s =  pathgenericpistol .. "pm_catch_slider.ogg", t = 3.1 },
    { s = randspin, t = 3.15 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.66},
    {hide = 0, t = 1.15}
}

local rst_magcheck = {
    { s = randspin, t = 0.1 },
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.23},
    { s =  pathgenericpistol .. "mpx_weap_magout_plastic.ogg", t = 0.33 },
    { s = randspin, t = 0.48 },
    { s = randspin, t = 0.98 },
    { s =  pathgenericpistol .. "mpx_weap_magin_plastic.ogg", t = 2.8 },
    { s = randspin, t = 3.3 },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        RareSource = {"too_idle1","too_idle2","too_idle3"},
        RareSourceChance = 0.0015,
    },

    ["ready"] = {
        Source = {"ready0", "ready1", "ready2"},
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
            { s = pathgenericpistol .. "grach_slider_in.ogg", t = 0.58 },
            { s = pathgenericpistol .. "pm_slider_out.ogg", t = 0.75 },
        },
    },

    ["draw"] = {
        Source = "draw",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
        }
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
        }
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            { s =  "arc9_eft_shared/pm_holster.ogg", t = 0 },
        }
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        EventTable = {
            { s =  "arc9_eft_shared/pm_holster.ogg", t = 0 },
        }
    },

    ["fire"] = {
        Source = "fire",
        EventTable = {
            { s = pathgenericpistol .. "pm_trigger_hammer.ogg", t = 0 },
        }
    },
    ["fire_empty"] = {
        Source = "fire_last",
        EventTable = {
            { s = pathgenericpistol .. "pm_catch_slider.ogg", t = 0.05 },
        }
    },
    ["dryfire"] = {
        Source = "fire_dry",
    },
    ["dryfire_empty"] = {
        Source = "fire_dry_empty",
    },

    ["reload"] = {
        Source = "reload_single",
        MinProgress = 0.9,
        FireASAP = true,
        EventTable = rst_single
    },

    ["reload0"] = {
        Source = "reload0",
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        EventTable = rst_def
    },
    ["reload1"] = {
        Source = "reload1",
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        EventTable = rst_def2
    },

    ["reload_empty0"] = {
        Source = {"reload_empty0_0", "reload_empty0_1"}, 
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        EventTable = rst_empty
    },
    ["reload_empty1"] = {
        Source = {"reload_empty1_0", "reload_empty1_1"}, 
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        EventTable = rst_empty2
    },

    ["toggle"] = {
        Source = "mod_switch",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["switchsights"] = {
        Source = "mod_switch",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["toggle_empty"] = {
        Source = "mod_switch_empty",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["switchsights_empty"] = {
        Source = "mod_switch_empty",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },



    
    ["jam1"] = {
        Source = "jam_shell",
        EventTable = {
            { s = randspin, t = 0.15 },
            { s = randspin, t = 0.79 },
            { s = randspin, t = 1.36 },

            { s = slidelockgrab, t = 2 },
            { s = randspin, t = 2.3 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 2.39 },
            { s =  pathgenericpistol .. "pm_slider_out.ogg", t = 2.65 },
            { s = randspin, t = 3 },
            { s = ARC9EFT.Shells9mm, t = 3.1 },
        },
        -- EjectAt = 1.97
    },        
    
    ["jam3"] = {
        Source = "jam_hardjam",
        EventTable = {
            { s = randspin, t = 0.15 },
            { s = randspin, t = 0.79 },
            { s = randspin, t = 1.36 },

            { s = slidelockgrab, t = 1.92 },
            { s = slidelockgrab, t = 2.28 },
            { s = slidelockgrab, t = 2.7 },
            { s = randspin, t = 2.94 },
            { s =  pathgenericpistol .. "pm_slider_out.ogg", t = 3.87 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 3.95 },
            { s =  pathgenericpistol .. "grach_slider_in.ogg", t = 4.14 },
            { s = randspin, t = 4.51 },
        },
        EjectAt = 3.95
    },      
    
    ["jam2"] = {
        Source = "jam_feed",
        EventTable = {
            { s = randspin, t = 0.15 },
            { s = randspin, t = 0.79 },
            { s = randspin, t = 1.36 },

            { s = slidelockgrab, t = 1.95 },
            { s =  pathgenericpistol .. "pm_slider_out.ogg", t = 2.33 },
            { s = randspin, t = 2.75 },
            { s = randspin, t = 2.95 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 3.16 },
            { s = randspin, t = 3.58 },
            { s =  pathgenericpistol .. "grach_slider_in.ogg", t = 3.76 },
            { s = randspin, t = 4.13 },
            { s = ARC9EFT.Shells9mm, t = 4.3 },
        },
        -- EjectAt = 2.52
    },        
    
    ["jam4"] = {
        Source = "jam_softjam",
        EventTable = {
            { s = randspin, t = 0.15 },
            { s = randspin, t = 0.79 },
            { s = randspin, t = 1.36 },
            
            { s = slidelockgrab, t = 1.97 },
            { s =  pathgenericpistol .. "pm_slider_out.ogg", t = 2.38 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 2.44 },
            { s =  pathgenericpistol .. "grach_slider_in.ogg", t = 2.62 },
            { s = randspin, t = 2.97 },
        },
        EjectAt = 2.44
    },

    ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle",
    },
    ["inspect_empty"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle_empty",
    },

    ["inspect1"] = {
        Source = "inspect",
        EventTable = {
            { s = randspin, t = 0.09 },
            { s = randspin, t = 1.44 },
            { s = randspin, t = 2.76 },
        }
    },

    ["inspect_empty"] = {
        Source = "inspect_empty",
        EventTable = {
            { s = randspin, t = 0.09 },
            { s = randspin, t = 1.44 },
            { s = randspin, t = 2.76 },
        }
    },

    ["inspect_mag_0"] = {
        Source = "magcheck0",
        EventTable = rst_magcheck,
    },
    ["inspect_empty_mag_0"] = {
        Source = "magcheck0_empty",
        EventTable = rst_magcheck,
    },
    ["inspect_mag_1"] = {
        Source = "magcheck1",
        EventTable = rst_magcheck,
    },
    ["inspect_empty_mag_1"] = {
        Source = "magcheck1_empty",
        EventTable = rst_magcheck,
    },

    ["inspect0"] = {
        Source = "checkchamber",
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = pathgenericpistol .. "grach_slider_in.ogg", t = 0.56 },
            { s = pathgenericpistol .. "pm_slider_out.ogg", t = 1.16 },
            { s = randspin, t = 1.38 },
        }
    },
    ["inspect_empty0"] = {
        Source = "checkchamber_empty",
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = randspin, t = 1.0 },
        }
    },
}

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3",
        "patron_in_mag5",
        "patron_in_mag9",
        "patron_in_mag11",
        "patron_in_mag15",
        "patron_in_mag19",
    },
}


-------------------------- ATTACHMENTS

SWEP.missingpartsnotifsent = 0

function SWEP:HookP_BlockFire()
    if  !self:GetValue("HasBarrel") or 
        !self:GetValue("HasAmmoooooooo") or 
        !self:GetValue("HasGrip") or 
        !self:GetValue("HasSlide") then
            
            if SERVER and self.missingpartsnotifsent < CurTime() then
                self.missingpartsnotifsent = CurTime() + 3
                net.Start("arc9eftmissingparts")
                net.Send(self:GetOwner())
            end
            return true 
    end
end

function SWEP:Hook_RedPrintName()
    if  !self:GetValue("HasBarrel") or 
        !self:GetValue("HasAmmoooooooo") or 
        !self:GetValue("HasGrip") or 
        !self:GetValue("HasSlide") then
            return true 
    end
end

SWEP.AttachmentElements = {
    ["eft_slide_p226_std"]    = { Bodygroups = { {1, 1} } },
    ["eft_slide_p226_emp"]    = { Bodygroups = { {1, 4} } },
    ["eft_slide_p226_leg"]    = { Bodygroups = { {1, 3} } },
    ["eft_slide_p226_stain"]    = { Bodygroups = { {1, 2} } },
    ["eft_slide_p226_axel"]    = { Bodygroups = { {1, 5} } },

    ["eft_grip_p226_std"]    = { Bodygroups = { {4, 1} } },
    ["eft_grip_p226_axel"]    = { Bodygroups = { {4, 6} } },
    ["eft_grip_p226_emp"]    = { Bodygroups = { {4, 3} } },
    ["eft_grip_p226_hog"]    = { Bodygroups = { {4, 4} } },
    ["eft_grip_p226_fde"]    = { Bodygroups = { {4, 7} } },
    ["eft_grip_p226_stain"]    = { Bodygroups = { {4, 2} } },
    ["eft_grip_p226_g10"]    = { Bodygroups = { {4, 5} } },

    ["eft_barrel_p226_std"]    = { Bodygroups = { {2, 1} } },
    ["eft_barrel_p226_thr"]    = { Bodygroups = { {2, 2} } },
    ["eft_muzzle_p226_std"]    = { Bodygroups = { {3, 1} } },
    ["eft_muzzle_p226_tjs"]    = { Bodygroups = { {3, 2} } },

    ["eft_rs_p226_std"]    = { Bodygroups = { {5, 1} } },
    ["eft_rs_p226_merp"]    = { Bodygroups = { {5, 2} } },
    ["eft_rs_p226_mount"]    = { Bodygroups = { {5, 3} } },
    ["eft_rs_p226_rmr"]    = { Bodygroups = { {5, 4} } },
    ["eft_fs_p226_std"]    = { Bodygroups = { {6, 1} } },
    ["eft_fs_p226_merp"]    = { Bodygroups = { {6, 2} } },

    ["eft_mag_p226_15"]    = { Bodygroups = { {7, 1}, {10, 0} } },
    ["eft_mag_p226_20"]    = { Bodygroups = { {7, 2}, {10, 1} } },

    ["eft_mount_p226_bridge"]    = { Bodygroups = { {8, 1} } },
}

SWEP.Attachments = {
    {
        PrintName = "Barrel",
        Category = "eft_p226_barrel",
        Bone = "mod_barrel",
        Pos = Vector(0, 0, 0.5),
        Ang = Angle(0, 0, 0),
        Installed = "eft_barrel_p226_std",
        -- SubAttachments = {
        --     {
        --         Installed = "eft_muzzle_m9a3_std",
        --     },
        -- }
    },
    {
        PrintName = "Reciever",
        Category = "eft_p226_slide",
        Bone = "mod_reciever",
        Pos = Vector(0, 2.9, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, -1.085, 0.185),
        Installed = "eft_slide_p226_std",
        SubAttachments = {
            {
                Installed = "eft_fs_p226_std",
            },
            {
                Installed = "eft_rs_p226_std",
            },
        }
    },
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_9x19",
        Bone = "mod_magazine",
        Integral = true,
        Installed = "eft_ammo_9x19_pst_gzh",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-0.85, 0, -3),
    },
    {
        PrintName = "Magazine",
        Category = "eft_p226_mag",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-0.85, 0, -1.5),
        Installed = "eft_mag_p226_15"
    },    
    {
        PrintName = "Tactical",
        Bone = "weapon",
        Category = {"eft_tactical_pistol", "eft_um3", "eft_p226_tac"},
        Pos = Vector(0, 23.23, -0.48),
        Ang = Angle(0, -90, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Pistol grip",
        Bone = "mod_pistol_grip",
        Category = "eft_p226_grip",
        Pos = Vector(0, 0, 0),
        Ang = Angle(90, -90, 90),
        Icon_Offset = Vector(0, 0, 0),
        Installed = "eft_grip_p226_std"
    },
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_p226"},

        Bone = "weapon",
        Pos = Vector(0, 16, -1),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        CosmeticOnly = false,
    },
}

SWEP.EFTErgo = 80
if ARC9EFTBASE then
    SWEP.AimDownSightsTimeHook = ARC9EFT.ErgoHook or nil
    SWEP.HoldBreathTimeHook = ARC9EFT.ErgoBreathHook or nil
    -- SWEP.HookP_TranslateSound = ARC9EFT.ErgoAdsVolume or nil
    SWEP.SpreadHook = ARC9EFT.SpreadBonus or nil
else
    print("Dum! install arc9 eft shared!!!!!!!!!!!!!!")
end
SWEP.AimDownSightsTimeMultShooting = 4

SWEP.RicochetSounds = ARC9EFT.RicochetSounds
SWEP.ShellSounds = ARC9EFT.Shells9mm