AddCSLuaFile()

SWEP.Base = "arc9_base"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_ar")
-- SWEP.SubCategory = "_Not for your eyesss"
SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Darsu", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "Battlestate Games LTD", 
    [ARC9:GetPhrase("eft_trivia_help") .. "3"] = "Mal0", 
    [ARC9:GetPhrase("eft_trivia_arc9") .. "4"] = "Arctic",
}

SWEP.PrintName = "SIG MCX"
SWEP.Class = ARC9:GetPhrase("eft_class_weapon_ar")
SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = "SIG Sauer",
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = "7.62x35mm (.300 Blackout)",
    [ARC9:GetPhrase("eft_trivia_act") .. "3"] = ARC9:GetPhrase("eft_trivia_act_gas"),
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = ARC9:GetPhrase("eft_trivia_country_germ"),
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "2015"
}

SWEP.Description = [[The .300 Blackout MCX line, designed and manufactured by SIG Sauer, is available in both semi-automatic and automatic versions and features a short-stroke gas piston system, which is inherited from the earlier SIG MPX submachine gun. The .300 Blackout ammo and the MCX are compatible with all AR-15 magazines.]]


-- SWEP.StandardPresets = {}

SWEP.BarrelLength = 38
SWEP.Slot = 2
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_sig_mcx.mdl"
SWEP.ViewModelFOVBase = 65
SWEP.MirrorVMWM = true
SWEP.DefaultBodygroups = "00000000000000"


------------------------- [[[           STATS            ]]] -------------------------

--          Damage default 300 blk bcp

SWEP.DamageMax = 60 * 0.5
SWEP.DamageMin = 42.11 * 0.5
SWEP.PhysBulletMuzzleVelocity = 605  /0.0254
SWEP.HeatPerShotMult = 1.3

SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      30 *2.54/100/0.0254
SWEP.PenetrationDelta = 36/100
SWEP.ArmorPiercing =    36/100
SWEP.RicochetChance =   30/100

SWEP.DamageLookupTable = {
    {   10/0.0254 * 1, 
    60 * 0.5     },

    {   100 /0.0254 * 1, 
    55.53 * 0.5     },

    {   200 /0.0254 * 1, 
    51.16 * 0.5     },

    {   300 /0.0254 * 1, 
    48.4 * 0.5     },

    {   400 /0.0254 * 1, 
    46.8 * 0.5     },

    {   500 /0.0254 * 1, 
    45.6 * 0.5     },

    {   600 /0.0254 * 1, 
    44.7 * 0.5     },

    {   700 /0.0254 * 1, 
    43.92 *0.5     },

    {   800 /0.0254 * 1, 
    43.24 * 0.5     },

    {   900 /0.0254 * 1, 
    42.65 * 0.5     },

    {   1000 /0.0254 * 1, 
    42.11 * 0.5     },
}


--          Spread
SWEP.Spread = 0.344 * ARC9.MOAToAcc
SWEP.SpreadAddHipFire = 0.02
SWEP.SpreadMultMove = 1.5
SWEP.SpreadAddMove = 0.015


--          Recoil
-- touch these

SWEP.Recoil = 1 -- general multiplier of main recoil

SWEP.RecoilUp   = 4.5   -- up recoil
SWEP.RecoilSide = 0.6 -- sideways recoil
SWEP.RecoilRandomUp   = 0.3 -- random up/down
SWEP.RecoilRandomSide = 0.5   -- random left/right

SWEP.RecoilAutoControl = 3.7 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 1 -- general multiplier for it

local EFT_VisualRecoilUp_BURST_SEMI   = 0.1   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.5   --   when fullautoing
local EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.1   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 2 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 15 -- same but in sights only

SWEP.VisualRecoilDampingConst = 100  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = 0.05 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.VisualRecoilCenter = Vector(2, 14, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
local EFT_ShotsToSwitchToFullAutoBehaviur = 2 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.65 -- camera roll each shot + makes camera go more up when fullautoing

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

SWEP.RPM = 770
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

SWEP.Ammo = "ar2"
SWEP.ChamberSize = 0 -- no mag
SWEP.ClipSize = 1 -- actual chamber (no mag)
SWEP.SupplyLimit = 4
SWEP.SecondarySupplyLimit = 4
SWEP.ReloadInSights = true
SWEP.DropMagazineSounds = {}
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.6
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(-180, 90, 0)
SWEP.DropMagazineVelocity = Vector(0, -50, 0)
SWEP.Bash = false
SWEP.PrimaryBash = false
SWEP.TracerNum = 0
SWEP.TracerColor = Color(255, 225, 200)



------------------------- [[[           Other            ]]] -------------------------

--          Positions and offsets

SWEP.IronSights = {
    Pos = Vector(-4.28, -5, 1.37),
    Ang = Angle(0, 0.09, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -4.1, -0.27)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(50, 10, -45)
SWEP.SprintPos = Vector(4, -5, 0)

SWEP.NearWallAng = Angle(0, 55, 0)
SWEP.NearWallPos = Vector(0, 0, -15)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15.5, 30, 5)
SWEP.CustomizeSnapshotFOV = 95
SWEP.CustomizeRotateAnchor = Vector(19, -4.28, -5.23)


--          Third person stuff

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "physgun"

SWEP.WorldModelOffset = {
    Pos = Vector(-8.3, 5.5, -6),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-5, 5, -4), -- rpg
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

SWEP.MuzzleParticle = "muzzleflash_1"

SWEP.CaseEffectQCA = 2
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/300blk.mdl"
SWEP.ShellScale = 1
SWEP.ShellCorrectAng = Angle(0, 180, 180)
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)


SWEP.BulletBones = {
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag0",
    [3] = "patron_in_mag1",
    [4] = "patron_in_mag2",
    [5] = "patron_in_mag3",
}

------------------------- [[[           Sounds            ]]] -------------------------

local path = "weapons/darsu_eft/mcxmpx/"

SWEP.ShootPitchVariation = 0
SWEP.DistantShootVolume = 0.05
SWEP.DistantShootVolumeActual = 0.05

SWEP.ShootSound = { path .. "fire_new/mcx_outdoor_close1.ogg", path .. "fire_new/mcx_outdoor_close2.ogg", path .. "fire_new/mcx_outdoor_close3.ogg", path .. "fire_new/mcx_outdoor_close4.ogg" }
SWEP.LayerSound = path .. "fire_new/mcx_outdoor_close_tail.ogg"

SWEP.ShootSoundSilenced = { path .. "fire_new/mcx_outdoor_silenced_close1.ogg", path .. "fire_new/mcx_outdoor_silenced_close2.ogg", path .. "fire_new/mcx_outdoor_silenced_close3.ogg", path .. "fire_new/mcx_outdoor_silenced_close4.ogg" }
SWEP.LayerSoundSilenced = path .. "fire_new/mcx_outdoor_silenced_close_tail.ogg"

SWEP.ShootSoundIndoor = { path .. "fire_new/mcx_indoor_close1.ogg", path .. "fire_new/mcx_indoor_close2.ogg", path .. "fire_new/mcx_indoor_close3.ogg", path .. "fire_new/mcx_indoor_close4.ogg" }
SWEP.LayerSoundIndoor = path .. "fire_new/mcx_indoor_close_tail.ogg"

SWEP.ShootSoundSilencedIndoor = { path .. "fire_new/mcx_indoor_silenced_close1.ogg", path .. "fire_new/mcx_indoor_silenced_close2.ogg", path .. "fire_new/mcx_indoor_silenced_close3.ogg", path .. "fire_new/mcx_indoor_silenced_close4.ogg" }
SWEP.LayerSoundSilencedIndoor = path .. "fire_new/mcx_indoor_silenced_close_tail.ogg"

SWEP.DistantShootSound = { path .. "fire_new/mcx_outdoor_distant1.ogg", path .. "fire_new/mcx_outdoor_distant2.ogg" }
SWEP.DistantShootSoundSilenced = { path .. "fire_new/mcx_outdoor_silenced_distant1.ogg", path .. "fire_new/mcx_outdoor_silenced_distant2.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "fire_new/mcx_indoor_distant1.ogg", path .. "fire_new/mcx_indoor_distant2.ogg" }
SWEP.DistantShootSoundSilencedIndoor = { path .. "fire_new/mcx_indoor_silenced_distant1.ogg", path .. "fire_new/mcx_indoor_silenced_distant2.ogg" }


SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = "" -- we will have own in sound tables
SWEP.DryFireSound = "" -- we will have own in sound tables


SWEP.EnterSightsSound = ARC9EFT.ADSRifle
SWEP.ExitSightsSound = ARC9EFT.ADSRifleOut


SWEP.SuppressEmptySuffix = true 

------------------------- [[[           Hooks & functions            ]]] -------------------------



------------------------- [[[           Animations            ]]] -------------------------

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_in_mag0",
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3"
    },
}

SWEP.Hook_TranslateAnimation = ARC9EFT.AR15_AnimsHook

SWEP.Animations = ARC9EFT.AR15_Anims


------------------------- [[[           Attachments            ]]] -------------------------

SWEP.AttachmentElements = {
    ["eft_mcx_rec"]    = { Bodygroups = { {1, 1} } },
    ["eft_mcx_ch"]    = { Bodygroups = { {2, 1} } },
    ["eft_mcx_barrel171"]    = { Bodygroups = { {3, 1} } },
    ["eft_mcx_barrel229"]    = { Bodygroups = { {3, 2} } },
    ["eft_mcx_gb"]    = { Bodygroups = { {4, 1} } },

    ["eft_ammo_300blk_ap"]    = { Bodygroups = { {5, 1} } },
    ["eft_ammo_300blk_m62"]    = { Bodygroups = { {5, 2} } },
    ["eft_ammo_300blk_bcp"]    = { Bodygroups = { {5, 0} } },
    ["eft_ammo_300blk_vmax"]    = { Bodygroups = { {5, 3} } },
    ["eft_ammo_300blk_whisper"]    = { Bodygroups = { {5, 4} } },
}

SWEP.missingpartsnotifsent = 0

function SWEP:HookP_BlockFire() return ARC9EFT.AR15_MissingParts(self) end
function SWEP:Hook_RedPrintName() return ARC9EFT.AR15_RedName(self) end


SWEP.Attachments = {
    {
        PrintName = "Reciever",
        Category = "eft_mcx_upper",
        Installed = "eft_mcx_rec",
        Bone = "mod_reciever",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-4, 0, 0.5),
        SubAttachments = {
            {},
            {
                Installed = "eft_rearsight_mcx"
            },
            {
                Installed = "eft_mcx_barrel229",
                SubAttachments = {
                    {
                        Installed = "eft_mcx_gb",
                    },
                    {
                        Installed = "eft_muzzle_ar10_sig_taperlok",
                        SubAttachments = {
                            {
                                Installed = "eft_muzzle_tlok_tpb"
                            }
                        }
                    }
                }
            },
            {
                Installed = "eft_mcx_hg_8",
                SubAttachments = {
                    {
                        Installed = "eft_frontsight_mcx"
                    },
                }
            }
        }
    },
    {
        PrintName = "Pistol grip",
        Category = {"eft_ar15_pgrip", "eft_ar15_pgrip_m4"},
        Installed = "eft_ar_pgrip_mcx",
        Bone = "mod_pistol_grip",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Charging handle",
        Category = "eft_mcx_charge",
        Installed = "eft_mcx_ch",
        Bone = "mod_charge",
        Icon_Offset = Vector(0.5, 0, 0.5),
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Stock",
        Category = "eft_mcx_stock",
        Bone = "mod_reciever",
        Pos = Vector(0, -8.45, 1.05),
        Ang = Angle(0, -90, 0),
        Installed = "eft_mcx_stock_light",
    },
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_300blk",
        Bone = "mod_magazine",
        Integral = true,
        Installed = "eft_ammo_300blk_bcp",
        Pos = Vector(0, -1, -6),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Magazine",
        Category = {"eft_ar15_mag", "eft_ar15_drum", "eft_ar15_quad"},
        Bone = "mod_magazine",
        Installed = "eft_mag_ar15_stanag_30",
        Icon_Offset = Vector(-1, 0, -3.5),
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_slot_mcx"},
        Bone = "mod_pistol_grip",
        Pos = Vector(0, -8, -5),
        Ang = Angle(0, 0, 0),
    },
}

SWEP.EFTErgo = 48
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
SWEP.ShellSounds = ARC9EFT.Shells556