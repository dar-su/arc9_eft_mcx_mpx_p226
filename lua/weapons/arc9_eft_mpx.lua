AddCSLuaFile()

SWEP.Base = "arc9_base"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_smg")
-- SWEP.SubCategory = "_Not for your eyesss"
SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Darsu", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "Battlestate Games LTD", 
    [ARC9:GetPhrase("eft_trivia_help") .. "3"] = "Mal0", 
    [ARC9:GetPhrase("eft_trivia_arc9") .. "4"] = "Arctic",
}

SWEP.PrintName = "SIG MPX"
SWEP.Class = ARC9:GetPhrase("eft_class_weapon_smg")
SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = "SIG Sauer",
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = "9x19mm Parabellum",
    [ARC9:GetPhrase("eft_trivia_act") .. "3"] = ARC9:GetPhrase("eft_trivia_act_gas"),
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = ARC9:GetPhrase("eft_trivia_country_germ"),
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "2015"
}

SWEP.Description = [[The SIG Sauer MPX submachine gun boasts an unprecedented operation speed in the familiar form factor of the AR platform. Short-stroke gas piston allows SIG MPX to use the full range of 9 mm ammunition without any adjustments to the gas valve. The full-sized mount provides the means of installing a wide range of scopes and sighting devices.]]


-- SWEP.StandardPresets = {}

SWEP.BarrelLength = 17
SWEP.Slot = 2
SWEP.WorldModel = "models/weapons/w_smg_mac10.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_sig_mpx.mdl"
SWEP.ViewModelFOVBase = 65
SWEP.MirrorVMWM = true
SWEP.DefaultBodygroups = "00000000000000"


------------------------- [[[           STATS            ]]] -------------------------

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



--          Spread
SWEP.Spread = 6.88 * ARC9.MOAToAcc
SWEP.SpreadAddHipFire = 0.02
SWEP.SpreadMultMove = 1.5
SWEP.SpreadAddMove = 0.015


--          Recoil
-- touch these

SWEP.Recoil = 0.33 -- general multiplier of main recoil

SWEP.RecoilUp   = 4.25   -- up recoil
SWEP.RecoilSide = 1 -- sideways recoil
SWEP.RecoilRandomUp   = 0.75 -- random up/down
SWEP.RecoilRandomSide = 1.25   -- random left/right

SWEP.RecoilAutoControl = 4 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 1.1 -- general multiplier for it

local EFT_VisualRecoilUp_BURST_SEMI   = 0.15   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.6   --   when fullautoing
local EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.08   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 1 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = -7 -- same but in sights only

SWEP.VisualRecoilDampingConst = 200  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.25 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.VisualRecoilCenter = Vector(2, 14, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
local EFT_ShotsToSwitchToFullAutoBehaviur = 3 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.145 -- camera roll each shot + makes camera go more up when fullautoing

-- dont touch this i guess

SWEP.RecoilMultHipFire = 1
SWEP.RecoilMultCrouch = 0.75
SWEP.RecoilUpMultFirstShot = 0.85
SWEP.RecoilUpMultRecoil = 1.2

SWEP.RecoilDissipationRate = 5
SWEP.RecoilAutoControlMultHipFire = 0.75
SWEP.RecoilAutoControl_DontTryToReturnBack = true
SWEP.RecoilResetTime = 0.03
SWEP.RecoilFullResetTime = 0.2

SWEP.UseVisualRecoil = true 
SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilMultCrouch = 0.75

SWEP.VisualRecoilDampingConstMultFirstShot = 3

-- SWEP.VisualRecoilThinkFunc = function(springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING, recamount)
--     return springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING
-- end

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount, self)
    local fullauto = math.Clamp(recamount - EFT_ShotsToSwitchToFullAutoBehaviur, 0, 3) * 0.33333333
    up = Lerp(fullauto, EFT_VisualRecoilUp_BURST_SEMI, up)
    side = Lerp(fullauto, EFT_VisualRecoilSide_BURST_SEMI, side)

    if recamount < 2 then
        if self:GetSightAmount() < 0.2 then up = 1 end -- only for visual when hipfiring
    end

    return up, side, roll, punch
end

SWEP.RecoilKickAffectPitch = true
SWEP.RecoilKickDamping = 10

--          Heating

SWEP.Malfunction = true 
SWEP.MalfunctionNeverLastShoot = false 
SWEP.MalfunctionMeanShotsToFail = 583
SWEP.MalfunctionMeanShotsToFailMultHot = -0.2
SWEP.Overheat = true
SWEP.HeatCapacity = 240
SWEP.HeatDissipation = 2.5
SWEP.HeatPerShot = 1
SWEP.HeatLockout = false


--          Firemodes

SWEP.RPM = 910
-- SWEP.Firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
SWEP.Firemodes = {
    { Mode = -1, PoseParam = 1},
    { Mode = 1, PoseParam = 2 }
}

--          Speed

SWEP.AimDownSightsTime = 0.33
SWEP.SprintToFireTime = 0.35

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.5
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1


--          Other

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

--          Generic stats

SWEP.Ammo = "pistol"
SWEP.ChamberSize = 0 -- no mag
SWEP.ClipSize = 1 -- actual chamber (no mag)
SWEP.SupplyLimit = 4
SWEP.SecondarySupplyLimit = 4
SWEP.ReloadInSights = true
SWEP.DropMagazineSounds = {}
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.53
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(-180, 180-20, 0)
SWEP.DropMagazineVelocity = Vector(0, -30, 0)
SWEP.Bash = false
SWEP.PrimaryBash = false
SWEP.TracerNum = 0
SWEP.TracerColor = Color(255, 225, 200)



------------------------- [[[           Other            ]]] -------------------------

--          Positions and offsets

SWEP.IronSights = {
    Pos = Vector(-4.28, -5, 0.85),
    Ang = Angle(0, 0.09, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -4, -0.37)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(50, 10, -45)
SWEP.SprintPos = Vector(4, -5, 0)

SWEP.NearWallAng = Angle(0, 55, 0)
SWEP.NearWallPos = Vector(0, 0, -15)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15.5, 27, 5)
SWEP.CustomizeSnapshotFOV = 95
SWEP.CustomizeRotateAnchor = Vector(15.5, -4.28, -5.23)


--          Third person stuff

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "physgun"

SWEP.WorldModelOffset = {
    Pos = Vector(-13, 5.4, -6),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-6, 5, -4), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN


--          Effects

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 0.3
SWEP.CamQCA_Mult_ADS = 0.05

SWEP.MuzzleParticle = "muzzleflash_smg"

SWEP.CaseEffectQCA = 2
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x19.mdl"
SWEP.ShellScale = 1
SWEP.ShellCorrectAng = Angle(0, 180, 180)
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)


SWEP.BulletBones = {
    [1] = "patron_in_weapon",
    [2] = "patron_001",
    [3] = "patron_002",
    [4] = "patron_003",
    [5] = "patron_004",
    [6] = "patron_005",
    [7] = "patron_006",
    [8] = "patron_007",
    [9] = "patron_008",
    [10] = "patron_009",
    [11] = "patron_010",
    [12] = "patron_011",
    [13] = "patron_012",
    [14] = "patron_013",
    [15] = "patron_014",
    [16] = "patron_015",
    [17] = "patron_016",
    [18] = "patron_017",
    [19] = "patron_018",
    [20] = "patron_019",
    [21] = "patron_020",
    [22] = "patron_021",
    [23] = "patron_022",
    [24] = "patron_023",
    [25] = "patron_024",
    [26] = "patron_025",
    [27] = "patron_026",
    [28] = "patron_027",
    [29] = "patron_028",
    [30] = "patron_029",
    [31] = "patron_030",
    
}

------------------------- [[[           Sounds            ]]] -------------------------

local path = "weapons/darsu_eft/mcxmpx/"

SWEP.ShootPitchVariation = 0
SWEP.DistantShootVolume = 0.05
SWEP.DistantShootVolumeActual = 0.05

SWEP.ShootSound = { path .. "fire_new/mpx_outdoor_close_loop1.ogg", path .. "fire_new/mpx_outdoor_close_loop2.ogg", path .. "fire_new/mpx_outdoor_close_loop3.ogg", path .. "fire_new/mpx_outdoor_close_loop4.ogg" }
SWEP.LayerSound = path .. "fire_new/mpx_outdoor_close_loop_tail.ogg"

SWEP.ShootSoundSilenced = { path .. "fire_new/mpx_outdoor_close_silenced_loop1.ogg", path .. "fire_new/mpx_outdoor_close_silenced_loop2.ogg", path .. "fire_new/mpx_outdoor_close_silenced_loop3.ogg", path .. "fire_new/mpx_outdoor_close_silenced_loop4.ogg" }
SWEP.LayerSoundSilenced = path .. "fire_new/mpx_outdoor_close_silenced_loop_tail.ogg"

SWEP.ShootSoundIndoor = { path .. "fire_new/mpx_indoor_close_loop1.ogg", path .. "fire_new/mpx_indoor_close_loop2.ogg", path .. "fire_new/mpx_indoor_close_loop3.ogg", path .. "fire_new/mpx_indoor_close_loop4.ogg" }
SWEP.LayerSoundIndoor = path .. "fire_new/mpx_indoor_close_loop_tail.ogg"

SWEP.ShootSoundSilencedIndoor = { path .. "fire_new/mpx_indoor_close_silenced_loop1.ogg", path .. "fire_new/mpx_indoor_close_silenced_loop2.ogg", path .. "fire_new/mpx_indoor_close_silenced_loop3.ogg", path .. "fire_new/mpx_indoor_close_silenced_loop4.ogg" }
SWEP.LayerSoundSilencedIndoor = path .. "fire_new/mpx_indoor_close_silenced_loop_tail.ogg"

SWEP.DistantShootSound = { path .. "fire_new/mcx_outdoor_distant1.ogg", path .. "fire_new/mcx_outdoor_distant2.ogg" }
SWEP.DistantShootSoundSilenced = { path .. "fire_new/mcx_outdoor_silenced_distant1.ogg", path .. "fire_new/mcx_outdoor_silenced_distant2.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "fire_new/mpx_indoor_distant_loop1.ogg", path .. "fire_new/mpx_indoor_distant_loop2.ogg" }
SWEP.DistantShootSoundSilencedIndoor = { path .. "fire_new/mpx_indoor_distant_silenced_loop1.ogg", path .. "fire_new/mpx_indoor_distant_silenced_loop2.ogg" }


SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = "" -- we will have own in sound tables
SWEP.DryFireSound = "" -- we will have own in sound tables


SWEP.EnterSightsSound = ARC9EFT.ADSSMG
SWEP.ExitSightsSound = ARC9EFT.ADSSMG


SWEP.SuppressEmptySuffix = true 

------------------------- [[[           Hooks & functions            ]]] -------------------------



------------------------- [[[           Animations            ]]] -------------------------

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_001",
        "patron_002",
        "patron_003",
        "patron_004",
        "patron_005",
        "patron_006",
        "patron_007",
        "patron_008",
        "patron_009",
        "patron_010",
        "patron_011",
        "patron_012",
        "patron_013",
        "patron_014",
        "patron_015",
        "patron_016",
        "patron_017",
        "patron_018",
        "patron_019",
        "patron_020",
        "patron_021",
        "patron_022",
        "patron_023",
        "patron_024",
        "patron_025",
        "patron_026",
        "patron_027",
        "patron_028",
        "patron_029",
        "patron_030",
        
    },
}


SWEP.Hook_TranslateAnimation = function(swep, anim)
        local elements = swep:GetElements()
    
        local ending = ""
    
        -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
        -- local rand = 0
        local nomag = false
    
        if elements["eft_mpx_mag_20"] or elements["eft_mpx_mag_30"] or elements["eft_mpx_mag_41"] then ending = 0
        elseif elements["eft_mpx_mag_50"] then ending = 1
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
            if empty and rand == 0 then swep.EFTInspectnum = 1 rand = 1 end

            if rand == 2 and !nomag then -- mag
                ending = "_mag_" .. ending
                
                if ARC9EFTBASE and SERVER then
                    net.Start("arc9eftmagcheck")
                    net.WriteBool(elements["eft_mpx_mag_30"] and true or false) -- accurate or not based on mag type
                    net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
                    net.WriteUInt(swep:GetCapacity(), 9)
                    net.Send(swep:GetOwner())
                end
            else
                if nomag and rand == 2 then rand = 0 end
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
        return anim
    end
    
    local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
    local slidelock = {"arc9_eft_shared/pistol_jam_slidelock_try1.ogg", "arc9_eft_shared/pistol_jam_slidelock_try2.ogg", "arc9_eft_shared/pistol_jam_slidelock_try3.ogg"}
    local slidelockgrab = {"arc9_eft_shared/pistol_jam_slidelock_grab1.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab2.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab3.ogg"}
    local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
    local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}
    
    local rst_single = {
        { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.03},
        { s = randspin, t = 0.31 },
        { s = path .. "mpx_weap_bolt_out.ogg", t = 0.48 },
        { s = path .. "mpx_weap_bolt_in.ogg", t = 0.83 },
        { s = randspin, t = 1.03 },
        { s = randspin, t = 1.59 },
        { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 1.92},
        { s =  path .. "ak74_round_in_chamber.ogg", t = 2.42  },
        { s = "arc9_eft_shared/weap_handon.ogg", t = 3.06},
        { s = randspin, t = 3.43 },
        { s = "arc9_eft_shared/weap_bolt_catch_button.ogg", t = 3.7 },
        { s =  path .. "mpx_weap_bolt_in_fast.ogg", t = 3.82 },
        { s = randspin, t = 4.12 },
    }
    


    local rst_def = {
        { s = randspin, t = 0.05 },    
        { s =  path .. "mpx_weap_magrelease_button.ogg", t = 0.43 },
        { s =  path .. "mpx_weap_magout_plastic.ogg", t = 0.62 },
        { s = pouchin, t = 1.18 },
        { s = randspin, t = 1.2 },
        { s = pouchout, t = 1.32 },
        { s =  path .. "mpx_weap_magin_plastic.ogg", t = 1.77 },
        { s = randspin, t = 2.37},
    }
    local rst_empty = {
        { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.05},
        { s =  path .. "mpx_weap_magrelease_button.ogg", t = 0.25 },
        { s =  path .. "mp7_mag_out.ogg", t = 0.35 },
        { s = randspin, t = 0.74 },
        { s = pouchout, t = 0.91 },
        { s =  path .. "mpx_weap_magin_plastic.ogg", t = 1.45 },
        { s = randspin, t = 1.72 },
        { s = "arc9_eft_shared/weap_bolt_catch_button.ogg", t = 2.21 },
        { s =  path .. "mpx_weap_bolt_in_fast.ogg", t = 2.3 },
        { s = randspin, t = 2.72 },
        {hide = 0, t = 0},
        {hide = 1, t = 0.53},
        {hide = 0, t = 1.1}
    }
    local rst_def1 = {
        { s = randspin, t = 0.05 },    
        { s =  path .. "mpx_weap_magrelease_button.ogg", t = 0.43 },
        { s =  path .. "mpx_weap_magout_plastic.ogg", t = 0.62 },
        { s = pouchin, t = 1.18 },
        { s = randspin, t = 1.2 },
        { s = pouchout, t = 1.32+0.05 },
        { s =  path .. "mpx_weap_magin_plastic.ogg", t = 1.77+0.1 },
        { s = randspin, t = 2.37+0.1 },
    }
    local rst_empty1 = {
        { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.05},
        { s =  path .. "mpx_weap_magrelease_button.ogg", t = 0.25 },
        { s =  path .. "mp7_mag_out.ogg", t = 0.35 },
        { s = randspin, t = 0.74 },
        { s = pouchout, t = 0.91+0.05 },
        { s =  path .. "mpx_weap_magin_plastic.ogg", t = 1.45+0.1 },
        { s = randspin, t = 1.72+0.1 },
        { s = "arc9_eft_shared/weap_bolt_catch_button.ogg", t = 2.21+0.1 },
        { s =  path .. "mpx_weap_bolt_in_fast.ogg", t = 2.3+0.1 },
        { s = randspin, t = 2.72+0.1 },
        {hide = 0, t = 0},
        {hide = 1, t = 0.53},
        {hide = 0, t = 1.1}
    }
    


    local rst_magcheck = {
        { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.03},
        { s =  path .. "mpx_weap_magrelease_button.ogg", t = 0.42 },
        { s =  path .. "mpx_weap_magout_plastic.ogg", t = 0.53 },
        { s = randspin, t = 0.78 },
        { s = randspin, t = 1.18 },
        { s = randspin, t = 1.58 },
        { s =  path .. "mpx_weap_magin_plastic.ogg", t = 1.85 },
        { s = randspin, t = 2.27},
    }
    local rik_magcheck = {
        { t = 0, lhik = 1 },
        { t = 0.14, lhik = 0 },
        { t = 0.85, lhik = 0 },
        { t = 1, lhik = 1 },
    }
    local rik_look = {
        { t = 0, lhik = 1 },
        -- { t = 0.1, lhik = 0 },
        -- { t = 0.8, lhik = 0 },
        { t = 1, lhik = 1 },
    }
    local rik_single = {
        { t = 0, lhik = 1 },
        { t = 0.07, lhik = 0 },
        { t = 0.28, lhik = 0 },
        { t = 0.36, lhik = 1 },
        { t = 0.69, lhik = 1 },
        { t = 0.77, lhik = 0 },
        { t = 0.97, lhik = 1 },
        { t = 1, lhik = 1 },
    }
    local rik_def = {
        { t = 0, lhik = 1 },
        { t = 0.08, lhik = 0 },
        { t = 0.86, lhik = 0 },
        { t = 1, lhik = 1 },
    }
    local rik_empty = {
        { t = 0, lhik = 1 },
        { t = 0.1, lhik = 0 },
        { t = 0.84, lhik = 0 },
        { t = 0.97, lhik = 1 },
        { t = 1, lhik = 1 },
    }
    local rik_ready = {
        { t = 0, lhik = 1 },
        { t = 0.001, lhik = 0 },
        { t = 0.7, lhik = 0 },
        { t = 0.92, lhik = 1 },
        { t = 1, lhik = 1 },
    }

    SWEP.Animations = {
        ["idle"] = {
            Source = "idle",
            RareSource = {"tooidle0", "tooidle1", "tooidle2"},
            RareSourceChance = 0.0001,
            Time = 1000, -- reset when done soundstables!!!!!!!!
        },
    
        ["ready"] = {
            Source = {"ready0", "ready1", "ready2"},
            EventTable = {
                { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
                { s = path .. "mpx_weap_bolt_out.ogg", t = 0.47 },
                { s = path .. "mpx_weap_bolt_in.ogg", t = 0.79 },
            },
            IKTimeLine = rik_ready,
        },

        ["draw"] = {
            Source = "draw",
            EventTable = {
                { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
            }
        },
        ["draw_empty"] = {
            Source = "draw_empty",
            EventTable = {
                { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
            }
        },

        ["holster"] = {
            Source = "holster",
            EventTable = {
                { s =  "arc9_eft_shared/weap_out.ogg", t = 0 },
            }
        },
        ["holster_empty"] = {
            Source = "holster_empty",
            EventTable = {
                { s =  "arc9_eft_shared/weap_out.ogg", t = 0 },
            }
        },
    
        ["fire"] = {
            Source = "fire",
            EventTable = {
                { s = path .. "p90_trigger_hammer.ogg", t = 0 },
            }
        },
        ["fire_empty"] = {
            Source = "fire_last",
            EventTable = {
                { s = path .. "p90_trigger_hammer.ogg", t = 0 },
            }
        },
        ["dryfire"] = {
            Source = "fire_dry",
            EventTable = {
                { s = path .. "p90_trigger_empty.ogg", t = 0 },
            }
        },
        ["dryfire_empty"] = {
            Source = "fire_dry_empty",
            EventTable = {
                { s = path .. "p90_trigger_empty.ogg", t = 0 },
            }
        },
    
        ["reload"] = {
            Source = "reload_single",
            MinProgress = 0.85,
            FireASAP = true,
            EventTable = rst_single,
            IKTimeLine = rik_single
        },
    
        ["reload0"] = {
            Source = "reload0",
            MinProgress = 0.85,
            FireASAP = true,
            EventTable = rst_def,
            IKTimeLine = rik_def
        },
        ["reload1"] = {
            Source = "reload1",
            MinProgress = 0.85,
            FireASAP = true,
            EventTable = rst_def1,
            IKTimeLine = rik_def
        },
    
        ["reload_empty0"] = {
            Source = "reload_empty0", 
            MinProgress = 0.85,
            FireASAP = true,
            MagSwapTime = 1,
            EventTable = rst_empty,
            IKTimeLine = rik_empty
        },
        ["reload_empty1"] = {
            Source = "reload_empty1", 
            MinProgress = 0.85,
            FireASAP = true,
            MagSwapTime = 1,
            EventTable = rst_empty1,
            IKTimeLine = rik_empty
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
                { s = randspin, t = 0.1 },
                { s = randspin, t = 0.6 },
                { s = "arc9_eft_shared/weap_handoff.ogg", t = 1.04},

                { s = randspin, t = 1.04 },
                { s =  path .. "ak74_round_out.ogg", t = 1.42 },
                { s = randspin, t = 1.79 },
                { s = randspin, t = 2 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.11, lhik = 0 },
                { t = 0.26, lhik = 0 },
                { t = 0.4, lhik = 1 },
                { t = 1, lhik = 1 },
            },
            -- EjectAt = 1.97
        },        
        
        ["jam3"] = {
            Source = "jam_hardjam",
            EventTable = {
                { s = randspin, t = 0.1 },
                { s = randspin, t = 0.6 },
                { s = "arc9_eft_shared/weap_handoff.ogg", t = 1.04},

                { s = slidelockgrab, t = 1.61 },
                { s = slidelockgrab, t = 1.93 },
                { s = slidelockgrab, t = 2.36 },
                { s = randspin, t = 2.73 },
                { s = randspin, t = 2.93 },
                { s = slidelockgrab, t = 3.57 },
                { s = slidelockgrab, t = 3.95 },
                { s =  path .. "mpx_weap_bolt_out.ogg", t = 4.25 },
                { s =  path .. "mpx_weap_bolt_in.ogg", t = 4.47 },
                { s = randspin, t = 4.81 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.05, lhik = 0 },
                { t = 0.14, lhik = 0 },
                { t = 0.19, lhik = 1 },
                { t = 0.25, lhik = 0 },
                { t = 0.5, lhik = 0 },
                { t = 0.6, lhik = 1 },
                { t = 1, lhik = 1 },
            },
            EjectAt = 4.05
        },      
        
        ["jam2"] = {
            Source = "jam_feed",
            EventTable = {
                { s = randspin, t = 0.1 },
                { s = randspin, t = 0.6 },
                { s = "arc9_eft_shared/weap_handoff.ogg", t = 1.04},

                { s =  path .. "weap_bolt_handle_out.ogg", t = 1.6 },
                { s = slidelockgrab, t = 1.68 },
                { s =  path .. "mpx_weap_bolt_out.ogg", t = 1.89 },
                { s = randspin, t = 2.2 },
                -- { s =  path .. "ak74_round_out.ogg", t = 2.24 },
                { s =  path .. "mpx_weap_bolt_in.ogg", t = 2.5 },
                { s = randspin, t = 2.78 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.08, lhik = 0 },
                { t = 0.22, lhik = 0 },
                { t = 0.32, lhik = 1 },
                { t = 0.41, lhik = 0 },
                { t = 0.87, lhik = 0 },
                { t = 0.98, lhik = 1 },
                { t = 1, lhik = 1 },
            },
            -- EjectAt = 2.52
        },        
        
        ["jam4"] = {
            Source = "jam_softjam",
            EventTable = {
                { s = randspin, t = 0.1 },
                { s = randspin, t = 0.6 },
                { s = "arc9_eft_shared/weap_handoff.ogg", t = 1.04},

                { s = randspin, t = 1.19 },
                { s = slidelockgrab, t = 1.66 },
                { s =  path .. "mpx_weap_bolt_out.ogg", t = 1.96 },
                { s =  path .. "mpx_weap_bolt_in.ogg", t = 2.22 },
                { s = randspin, t = 2.41 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.1, lhik = 0 },
                { t = 0.22, lhik = 0 },
                { t = 0.33, lhik = 1 },
                { t = 0.46, lhik = 0 },
                { t = 0.81, lhik = 0 },
                { t = 0.95, lhik = 1 },
                { t = 1, lhik = 1 },
            },
            EjectAt = 2.85
        },
    
        ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
            Source = "idle",
        },
        ["inspect_empty"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
            Source = "idle_empty",
        },
    
        ["inspect1"] = {
            Source = "look",
            EventTable = {
                { s = randspin, t = 0.15 },
                { s = "arc9_eft_shared/weapon_generic_pistol_spin4.ogg", t = 1.26 },
                { s = randspin, t = 2.34 },
            },
            IKTimeLine = rik_look
        },
        ["inspect_empty"] = {
            Source = "look_empty",
            EventTable = {
                { s = randspin, t = 0.15 },
                { s = "arc9_eft_shared/weapon_generic_pistol_spin4.ogg", t = 1.26 },
                { s = randspin, t = 2.34 },
            },
            IKTimeLine = rik_look
        },
    

        ["inspect_mag_0"] = {
            Source = "check_0",
            EventTable = rst_magcheck,
            IKTimeLine = rik_magcheck
        },
        ["inspect_empty_mag_0"] = {
            Source = "check_0_empty",
            EventTable = rst_magcheck,
            IKTimeLine = rik_magcheck
        },
        ["inspect_mag_1"] = {
            Source = "check_1",
            EventTable = rst_magcheck,
            IKTimeLine = rik_magcheck
        },
        ["inspect_empty_mag_1"] = {
            Source = "check_1_empty",
            EventTable = rst_magcheck,
            IKTimeLine = rik_magcheck
        },

        ["inspect0"] = {
            Source = "check_chamber",
            EventTable = {
                { s = randspin, t = 0.05 },
                { s = "arc9_eft_shared/weap_bolt_handle_out.ogg", t = 0.61 },
                { s = "arc9_eft_shared/weap_bolt_handle_in.ogg", t = 1.23 },
                { s = randspin, t = 1.53 },
                { s = randspin, t = 2.11 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.14, lhik = 0 },
                { t = 0.75, lhik = 0 },
                { t = 0.95, lhik = 1 },
                { t = 1, lhik = 1 },
            },
        },

        ["firemode_1"] = {
            Source = "firemode1",
            EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.25 } }
        },
        ["firemode_2"] = {
            Source = "firemode0",
            EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.25 } }
        },
        ["firemode_1_empty"] = {
            Source = "firemode1_empty",
            EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.25 } }
        },
        ["firemode_2_empty"] = {
            Source = "firemode0_empty",
            EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.25 } }
        },
    

    }

------------------------- [[[           Attachments            ]]] -------------------------

SWEP.AttachmentElements = {
    ["eft_mpx_ch_1x"] = { Bodygroups = { {2, 2} } },
    ["eft_mpx_ch_2x"] = { Bodygroups = { {2, 3} } },
    ["eft_mpx_ch_sch"] = { Bodygroups = { {2, 1} } },

    ["eft_mpx_rec"] = { Bodygroups = { {1, 1} } },
    ["eft_mpx_mag_30"] = { Bodygroups = { {4, 1} } },
}

SWEP.missingpartsnotifsent = 0

function SWEP:HookP_BlockFire()
    if  !self:GetValue("HasBolt") or 
        !self:GetValue("HasReceiver") or
        !self:GetValue("HasGrip") or
        !self:GetValue("HasHG") or
        !self:GetValue("HasBarrel") or
        !self:GetValue("HasAmmoooooooo") then
            if SERVER and self.missingpartsnotifsent < CurTime() then
                self.missingpartsnotifsent = CurTime() + 3
                net.Start("arc9eftmissingparts")
                net.Send(self:GetOwner())
            end
            return true 
    end
end

function SWEP:Hook_RedPrintName()
    if  !self:GetValue("HasBolt") or 
        !self:GetValue("HasReceiver") or
        !self:GetValue("HasGrip") or
        !self:GetValue("HasHG") or
        !self:GetValue("HasBarrel") or
        !self:GetValue("HasAmmoooooooo") then
            return true 
    end
end

SWEP.Attachments = {
    {
        PrintName = "Reciever",
        Category = "eft_mpx_upper",
        Installed = "eft_mpx_rec",
        Bone = "mod_reciever",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-4, 0, 0.5),
        SubAttachments = {
            {},
            {
                Installed = "eft_rearsight_mpx"
            },
            {
                Installed = "eft_mpx_barrel165",
                SubAttachments = {
                    {
                        Installed = "eft_mpx_muzzle_a2"
                    }
                }
            },
            {
                Installed = "eft_mpx_hg_gen1",
                SubAttachments = {
                    {
                        Installed = "eft_frontsight_mpx"
                    },
                    {
                        Installed = "eft_mount_mpx_2"
                    },
                    {
                        Installed = "eft_mount_mpx_2"
                    },
                    {
                        Installed = "eft_mount_mpx_4"
                    },
                }
            }
        }
    },
    {
        PrintName = "Pistol grip",
        Category = {"eft_ar15_pgrip", "eft_ar15_pgrip_m4", "eft_mpx_pgrip"},
        Installed = "eft_mpx_pgrip_std",
        Bone = "mod_pistol_grip",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Charging handle",
        Category = "eft_mpx_charge",
        Installed = "eft_mpx_ch_1x",
        Bone = "mod_charge",
        Icon_Offset = Vector(0.5, 0, 0.5),
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Stock",
        Category = "eft_mcx_stock",
        Bone = "mod_reciever",
        Pos = Vector(0, -8.55, 1.27),
        Ang = Angle(0, -90, 0),
        Installed = "eft_mcx_stock_colap",
    },
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_9x19",
        Bone = "mod_magazine",
        Integral = true,
        Installed = "eft_ammo_9x19_pst_gzh",
        Pos = Vector(0, -1, -6),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Magazine",
        Category = "eft_mag_mpx",
        Bone = "mod_magazine",
        Installed = "eft_mpx_mag_30",
        Icon_Offset = Vector(-1, 0, -3.5),
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_slot_mpx"},
        Bone = "mod_pistol_grip",
        Pos = Vector(0, -8, -5),
        Ang = Angle(0, 0, 0),
    },
}

SWEP.EFTErgo = 40
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