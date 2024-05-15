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

SWEP.PrintName = "SIG MCX SPEAR"

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_ar")
SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = "SIG Sauer",
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = "6.8x51mm",
    [ARC9:GetPhrase("eft_trivia_act") .. "3"] = ARC9:GetPhrase("eft_trivia_act_gas"),
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = ARC9:GetPhrase("eft_trivia_country_belg"),
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "2019"
}

SWEP.Description = [[The MCX SPEAR is a multi-caliber assault rifle designed and manufactured by SIG Sauer based on the MCX assault rifle. Primarily chambered in the new 6.8x51mm (.277 FURY) ammunition. Designed specifically for the US Military to replace the M4 carbine.]]

-- SWEP.StandardPresets = {
--     "[FDE]XQAAAQD1AgAAAAAAAAA9iIIiM7tuo1AtT00OeFDsU2rlYJ15CM1C4md+X5XeE7okicXf5Qdptd/zIVoENlkZu2XZaV/pXptKi0Lj2AHHZO5ea09FzOG7slK+pggac8H90loZ/OGoiJ7PQyEYm88KlTQ2CeT5jU744FrNh4Xe6x2+OeIfq7qQHJgGbEpOvCqWJQHARTZean5LQHQqtg+4VRPF2LC0h5QC2t2xJdTxRyvtxqgpWHu9ziiVBp9Faf8Jg/5fzxKL516NKURdmsJoh+XZ1a6aZ0tvi9F0njucFKdFF8OBPws7PtUVUbQ+iezt9mZagsU1aM2s1uTTTpcf7ZfFOQA=",
--     "[Face]XQAAAQBDAwAAAAAAAAA9iIIiM7tuo1AtT00OeFDsU2rlYJ15CM1C4md+X5XeE7okicXf5Qdptd/zIVoENlkZu2XZaV/pXptKi0Lj2AHHZO5ea09FzOG7slK+pggac8H90loZ/OGoiJ7PQyEYm88KlTQ2CeT5jU+WzYaNRhxra+KvCcWyxasuyU4oEOY72naNrfp+BVIJDhfJfPsd4UnLKzH8xbK2Q7Ne7RO6wgQAfDzr9Jo7MPgyX6eHlGNe0lA/QqL5arX7NpWk2wmv0JawB95Tq/19vS7aO3jOYQ/OC7p0ZRMEugJjgffd0wwMin9wb4GEgx7eAWiBU4wHKwlSsSN7/srgcoAK9DNugUJoW6Os27AlCSD4kCTfyjrfqWtfVWzjLCTUMQA="
-- }
    
SWEP.Slot = 3
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_spear.mdl"
SWEP.ViewModelFOVBase = 62
SWEP.MirrorVMWM = true
SWEP.DefaultBodygroups = "0000000000000"

SWEP.BarrelLength = 50
------------------------- [[[           STATS            ]]] -------------------------

--          Damage

SWEP.DamageMax = 80
SWEP.DamageMin = 54.15
SWEP.PhysBulletMuzzleVelocity = 899 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      36 *2.54/100/0.0254
SWEP.PenetrationDelta = 49/100
SWEP.ArmorPiercing =    49/100
SWEP.RicochetChance =   20/100

SWEP.DamageLookupTable = {
    {   10/0.0254 * 1, 
    80 	 * 1     },

    {   100 /0.0254 * 1, 
    76.53 * 1     },

    {   200 /0.0254 * 1, 
    73.26 	 * 1     },

    {   300 /0.0254 * 1, 
    70.16 	 * 1     },

    {   400 /0.0254 * 1, 
    67.19 * 1     },

    {   500 /0.0254 * 1, 
    63.84 * 1     },

    {   600 /0.0254 * 1, 
    60.54 * 1     },

    {   700 /0.0254 * 1, 
    57.89 * 1     },

    {   800 /0.0254 * 1, 
    56.19 * 1     },

    {   900 /0.0254 * 1, 
    55.01 * 1     },

    {   1000 /0.0254 * 1, 
    54.15 * 1     },
}

--          Spread
SWEP.Spread = 1.48 * ARC9.MOAToAcc
SWEP.SpreadAddHipFire = 0.02
SWEP.SpreadMultMove = 1.5
SWEP.SpreadAddMove = 0.015


--          Recoil
-- touch these

SWEP.Recoil = 1.2 -- general multiplier of main recoil

SWEP.RecoilUp   = 2   -- up recoil
SWEP.RecoilSide = 0.75 -- sideways recoil
SWEP.RecoilRandomUp   = 0.75 -- random up/down
SWEP.RecoilRandomSide = 0.55   -- random left/right

SWEP.RecoilAutoControl = 4 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 1.1 -- general multiplier for it

local EFT_VisualRecoilUp_BURST_SEMI   = 0.1   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.35   --   when fullautoing
local EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.06   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 2 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 6 -- same but in sights only

SWEP.VisualRecoilDampingConst = 100  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.1 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.VisualRecoilCenter = Vector(2, 14, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
local EFT_ShotsToSwitchToFullAutoBehaviur = 2 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.5 -- camera roll each shot + makes camera go more up when fullautoing

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
SWEP.MalfunctionMeanShotsToFail = 1000
SWEP.MalfunctionMeanShotsToFailMultHot = -0.2
SWEP.Overheat = true
SWEP.HeatCapacity = 100
SWEP.HeatDissipation = 2.5
SWEP.HeatPerShot = 1
SWEP.HeatLockout = false


--          Firemodes

SWEP.RPM = 800
-- SWEP.Firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
SWEP.Firemodes = {
    { Mode = -1, PoseParam = 2 },
    { Mode = 1, PoseParam = 1 },
}

--          Speed

SWEP.AimDownSightsTime = 0.33
SWEP.SprintToFireTime = 0.35

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.75
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

SWEP.Ammo = "357"
SWEP.ChamberSize = 0 -- no mag
SWEP.ClipSize = 1 -- actual chamber (no mag)
SWEP.SupplyLimit = 4
SWEP.SecondarySupplyLimit = 4
SWEP.ReloadInSights = true
SWEP.DropMagazineSounds = { }
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.6
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(90, 180, 90)
SWEP.DropMagazineVelocity = Vector(0, -12, 0)
SWEP.Bash = false
SWEP.PrimaryBash = false
SWEP.TracerNum = 0
SWEP.TracerColor = Color(255, 225, 200)



------------------------- [[[           Other            ]]] -------------------------

--          Positions and offsets

SWEP.IronSights = {
    Pos = Vector(-4.3, -7, 1.09 ),
    Ang = Angle(0, 0.1, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -3.1, -.35)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(50, 10, -45)
SWEP.SprintPos = Vector(4, -5, 0)

SWEP.NearWallAng = Angle(0, 55, 0)
SWEP.NearWallPos = Vector(0, 0, -15)

SWEP.CrouchPos = Vector(0, -1, -0)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(18.5, 28, 3.7)
SWEP.CustomizeSnapshotFOV = 95
SWEP.CustomizeRotateAnchor = Vector(22, -4.3, -3.7)


--          Third person stuff

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "physgun"

SWEP.WorldModelOffset = {
    Pos = Vector(-8.3, 5.5, -6),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-4, 4, -4), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN


--          Effects

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 1
SWEP.CamQCA_Mult_ADS = 0.05

SWEP.MuzzleParticle = "muzzleflash_m14"

SWEP.CaseEffectQCA = 2
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/762x51.mdl"
SWEP.ShellScale = 1
SWEP.ShellVelocity = 1
SWEP.ShellCorrectAng = Angle(0, 180, 180)
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag0",
    [3] = "patron_in_mag1",
    [4] = "patron_in_mag2",
    [5] = "patron_in_mag3",
    [6] = "patron_in_mag4",
}

-- SWEP.HideBones = { -- please do it later
--     "vm_mag2",
--     "tag_mag2"
-- }

-- SWEP.ReloadHideBoneTables = {
--     [1] = {
--         "vm_mag",
--         "tag_mag"
--     },
--     [2] = {
--         "vm_mag2",
--         "tag_mag2"
--     }
-- }




------------------------- [[[           Sounds            ]]] -------------------------

local path = "weapons/darsu_eft/spear/"

SWEP.ShootPitchVariation = 0
SWEP.DistantShootVolume = 0.05
SWEP.DistantShootVolumeActual = 0.05


SWEP.ShootSound = { path .. "fire_new/mcx_spear_outdoor_close_loop1.ogg", path .. "fire_new/mcx_spear_outdoor_close_loop2.ogg", path .. "fire_new/mcx_spear_outdoor_close_loop3.ogg", path .. "fire_new/mcx_spear_outdoor_close_loop4.ogg" }
SWEP.LayerSound = path .. "fire_new/mcx_spear_outdoor_close_loopt.ogg"

SWEP.ShootSoundSilenced = { path .. "fire_new/mcx_spear_outdoor_silenced_close_loop1.ogg", path .. "fire_new/mcx_spear_outdoor_silenced_close_loop2.ogg", path .. "fire_new/mcx_spear_outdoor_silenced_close_loop3.ogg", path .. "fire_new/mcx_spear_outdoor_silenced_close_loop4.ogg" }
SWEP.LayerSoundSilenced = path .. "fire_new/mcx_spear_outdoor_silenced_close_loopt.ogg"

SWEP.ShootSoundIndoor = { path .. "fire_new/mcx_spear_indoor_close_loop1.ogg", path .. "fire_new/mcx_spear_indoor_close_loop2.ogg", path .. "fire_new/mcx_spear_indoor_close_loop3.ogg", path .. "fire_new/mcx_spear_indoor_close_loop4.ogg" }
SWEP.LayerSoundIndoor = path .. "fire_new/mcx_spear_indoor_close_loopt.ogg"

SWEP.ShootSoundSilencedIndoor = { path .. "fire_new/mcx_spear_indoor_silenced_close_loop1.ogg", path .. "fire_new/mcx_spear_indoor_silenced_close_loop2.ogg", path .. "fire_new/mcx_spear_indoor_silenced_close_loop3.ogg", path .. "fire_new/mcx_spear_indoor_silenced_close_loop4.ogg" }
SWEP.LayerSoundSilencedIndoor = path .. "fire_new/mcx_spear_indoor_silenced_close_loopt.ogg"

SWEP.DistantShootSound = { path .. "fire_new/mcx_spear_outdoor_distant_loop1.ogg", path .. "fire_new/mcx_spear_outdoor_distant_loop2.ogg" }
SWEP.DistantShootSoundSilenced = { path .. "fire_new/mcx_spear_outdoor_silenced_distant_loop1.ogg", path .. "fire_new/mcx_spear_outdoor_silenced_distant_loop2.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "fire_new/mcx_spear_indoor_distant_loop1.ogg", path .. "fire_new/mcx_spear_indoor_distant_loop2.ogg" }
SWEP.DistantShootSoundSilencedIndoor = { path .. "fire_new/mcx_spear_indoor_silenced_distant_loop1.ogg", path .. "fire_new/mcx_spear_indoor_silenced_distant_loop2.ogg" }


SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = "" -- we will have own in sound tables
SWEP.DryFireSound = "" -- we will have own in sound tables


SWEP.EnterSightsSound = ARC9EFT.ADSRifle
SWEP.ExitSightsSound = ARC9EFT.ADSRifleOut


SWEP.SuppressEmptySuffix = true 
------------------------- [[[           Hooks & functions            ]]] -------------------------

-- -- Anti integrated zeroing
-- local sposoffset, sangoffset = Vector(0, 0, -0.05), Angle(0, 0.5, 0)

-- function SWEP:GetSightPositions()
--     local s = self:GetSight()

--     if self:GetValue("FoldSights") then
--         return s.Pos, s.Ang
--     else
--         return s.Pos + sposoffset, s.Ang + sangoffset
--     end
-- end

------------------------- [[[           Animations            ]]] -------------------------


SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()
    if !IsFirstTimePredicted() then return end

    local ending = ""
    local mag = ""
    local nomag = false 

    if elements["eft_ar10_mag_pmag20"] then mag = "_0"
    elseif elements["eft_ar10_mag_kac10"] then mag = "_1"
    elseif elements["eft_ar10_mag_kac20"] then mag = "_2"
    elseif elements["eft_ar10_mag_l7_20"] then mag = "_3"
    elseif elements["eft_ar10_mag_l7_25"] then mag = "_4"
    else nomag = true end
    
    local empty = swep:Clip1() == 0

    -- 0 looking
    -- 1 mag check  (!nomag)
    -- 2 slide checking  (!empty)
    
    if anim == "inspect" then
        if empty then anim = "inspect_empty" end

        swep.EFTInspectnum = (swep.EFTInspectnum or 0) + 1
        local rand = swep.EFTInspectnum
        if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end
        
        if rand == 2 and nomag then rand = 0 swep.EFTInspectnum = 0 end
        
        if rand == 2 and ARC9EFTBASE and SERVER then
            net.Start("arc9eftmagcheck")
            net.WriteBool(false) -- accurate or not based on mag type
            net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
            net.WriteUInt(swep:GetCapacity(), 9)
            net.Send(swep:GetOwner())
            rand = rand .. mag
        end

        return anim .. rand
    end
    
    if anim == "reload" or anim == "reload_empty" then
        if nomag then return "reload_single" end
        if empty then return "reload_empty" .. mag end
        return anim .. mag
    end

    if anim == "fix" then
        local rand = math.Truncate(util.SharedRandom("hi", 1, 3.99))
        -- 0 = misfire, 1 = eject, 2 = feed, 3 = bolt, 4 = bolt 
        if ARC9EFTBASE and SERVER then
            timer.Simple(0.25, function()
                if IsValid(swep) and IsValid(swep:GetOwner()) then
                    net.Start("arc9eftjam")
                    net.WriteUInt(rand, 3)
                    net.Send(swep:GetOwner())
                end
            end)
        end
        
        return "jam" .. rand
    end
end

-- function SWEP:ShotgunReloadHook()
--     local elements = self:GetElements()
--     local nomag = !(elements["eft_axmc_mag308"] or elements["eft_axmc_mag338"])

--     if self:Clip1() == self:GetMaxClip1() or nomag then return false end

--     return true
-- end

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_in_mag0",
        "patron_in_mag1",
        "patron_in_mag2",
    },
}

local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local rst_magcheck = {
    { s = randspin, t = 0.1 },
    { s = "arc9_eft_shared/weap_magrelease_button.ogg", t = 0.52 },
    { s = "arc9_eft_shared/weap_magout_plastic.ogg", t = 0.63 },
    { s = path .. "fiveseven_mag_rattle2.ogg", t = 2.08 },
    { s = "arc9_eft_shared/weap_magin_plastic.ogg", t = 2.47 },
    { s = randspin, t = 2.85 },
}
local rst_chamber = {
    { s = randspin, t = 0.1 },
    { s = path .. "p90_bolt_handle_grab.ogg", t = 0.55 },
    { s = path .. "rsass_bolt_out.ogg", t = 0.81 },
    { s = path .. "rsass_bolt_in.ogg", t = 1.73 },
    -- { s = "arc9_eft_shared/weap_bolt_handle_in.ogg", t = 1.73},
    { s = randspin, t = 1.99 },
}

local rst_reload = {
    { s = randspin, t = 0.11 },
    { s = "arc9_eft_shared/weap_magrelease_button.ogg", t = 0.5 },
    { s = "arc9_eft_shared/weap_magout_plastic.ogg", t = 0.64 },
    { s = pouchin, t = 1.26 },
    { s = pouchout, t = 1.42 },
    { s = randspin, t = 1.6 },
    { s = path .. "fiveseven_mag_rattle2.ogg", t = 2.06 },
    { s = "arc9_eft_shared/weap_magin_plastic.ogg", t = 2.51 },
    { s = randspin, t = 2.87 },
}
local rst_reload10 = {
    { s = randspin, t = 0.11 },
    { s = "arc9_eft_shared/weap_magrelease_button.ogg", t = 0.5 },
    { s = "arc9_eft_shared/weap_magout_plastic.ogg", t = 0.64 },
    { s = pouchin, t = 1.26 },
    { s = pouchout, t = 1.3 },
    { s = "arc9_eft_shared/weap_magin_plastic.ogg", t = 2.29 },
    { s = randspin, t = 2.66 },
}
local rst_reload4 = {
    { s = randspin, t = 0.11 },
    { s = "arc9_eft_shared/weap_magrelease_button.ogg", t = 0.5 },
    { s = "arc9_eft_shared/weap_magout_plastic.ogg", t = 0.64 },
    { s = pouchin, t = 1.26 },
    { s = pouchout, t = 1.59 },
    { s = randspin, t = 1.77 },
    { s = path .. "fiveseven_mag_rattle2.ogg", t = 2.4 },
    { s = "arc9_eft_shared/weap_magin_plastic.ogg", t = 2.65 },
    { s = randspin, t = 3.14 },
}


local rst_reloadempty = {
    { s = randspin, t = 0.12 },
    { s = "arc9_eft_shared/weap_magrelease_button.ogg", t = 0.3 },
    { s = "arc9_eft_shared/weap_magout_plastic.ogg", t = 0.47 },
    { s = pouchout, t = 0.99 },
    { s = randspin, t = 1.06 },
    { s = path .. "fiveseven_mag_rattle2.ogg", t = 1.47 },
    { s = "arc9_eft_shared/weap_magin_plastic.ogg", t = 1.92 },
    { s = randspin, t = 2.3 },
    { s = "arc9_eft_shared/weap_bolt_catch_button.ogg", t = 2.58 },
    { s = "arc9_eft_shared/weap_bolt_in_fast.ogg", t = 2.78 },
    { s = randspin, t = 3.05 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.6},
    {hide = 0, t = 1.1}
}
-- local rst_reloadempty10 = {
--     { s = randspin, t = 0.12 },
--     { s = "arc9_eft_shared/weap_magrelease_button.ogg", t = 0.3 },
--     { s = "arc9_eft_shared/weap_magout_plastic.ogg", t = 0.47 },
--     { s = pouchout, t = 0.99 },
--     { s = randspin, t = 1.06 },
--     { s = "arc9_eft_shared/weap_magin_plastic.ogg", t = 1.92 },
--     { s = randspin, t = 2.3 },
--     { s = "arc9_eft_shared/weap_bolt_catch_button.ogg", t = 2.58 },
--     { s = "arc9_eft_shared/weap_bolt_in_fast.ogg", t = 2.78 },
--     { s = randspin, t = 3.05 },
--     {hide = 0, t = 0},
--     {hide = 1, t = 0.6},
--     {hide = 0, t = 1.05}
-- }
-- local rst_reloadempty4 = {
--     { s = randspin, t = 0.12 },
--     { s = "arc9_eft_shared/weap_magrelease_button.ogg", t = 0.3 },
--     { s = "arc9_eft_shared/weap_magout_plastic.ogg", t = 0.47 },
--     { s = pouchout, t = 0.99 },
--     { s = randspin, t = 1.06 },
--     { s = "arc9_eft_shared/weap_magin_plastic.ogg", t = 1.92 },
--     { s = randspin, t = 2.3 },
--     { s = "arc9_eft_shared/weap_bolt_catch_button.ogg", t = 2.7 },
--     { s = "arc9_eft_shared/weap_bolt_in_fast.ogg", t = 2.75 },
--     { s = randspin, t = 3.11 },
--     {hide = 0, t = 0},
--     {hide = 1, t = 0.6},
--     {hide = 0, t = 1.05}
-- }


local rst_look = {
    { s = randspin, t = 0.15 },
    { s = randspin, t = 1.3 },
    { s = randspin, t = 2.36 },
}
local rik_look = {
    { t = 0, lhik = 1 },
    { t = 0.4, lhik = 1 },
    { t = 0.57, lhik = 0 },
    { t = 0.77, lhik = 0 },
    { t = 0.92, lhik = 1 },
    { t = 1, lhik = 1 },
}
local rik_cham = {
    { t = 0, lhik = 1 },
    { t = 0.18, lhik = 0 },
    { t = 0.72, lhik = 0 },
    { t = 0.92, lhik = 1 },
    { t = 1, lhik = 1 },
}
local rik_mag = {
    { t = 0, lhik = 1 },
    { t = 0.12, lhik = 0 },
    { t = 0.8, lhik = 0 },
    { t = 1, lhik = 1 },
}

local rik_reload = {
    { t = 0, lhik = 1 },
    { t = 0.13, lhik = 0 },
    { t = 0.91, lhik = 0 },
    { t = 1, lhik = 1 },
}

local rik_reloadempty = {
    { t = 0, lhik = 1 },
    { t = 0.13, lhik = 0 },
    { t = 0.83, lhik = 0 },
    { t = 0.92, lhik = 1 },
    { t = 1, lhik = 1 },
}
local rik_reloadempty2 = {
    { t = 0, lhik = 1 },
    { t = 0.13, lhik = 0 },
    { t = 0.67, lhik = 0 },
    { t = 0.76, lhik = 1 },
    { t = 1, lhik = 1 },
}

SWEP.Animations = {
    ["idle"] = { 
        Source = "idle", 
        -- Time = 100,       -- REMOVE TIME !!!!!!!!   
    },

    ["idle_empty"] = { 
        Source = "idle_empty", 
    },

    ["ready"] = {
        Source = {"ready0", "ready1", "ready2"},
        EventTable = {
            { s = "arc9_eft_shared/weap_in.ogg", t = 0 },
            -- { s = path .. "p90_bolt_handle_grab.ogg", t = 0.55 },
            { s = path .. "rsass_bolt_out.ogg", t = 0.85 },
            { s = path .. "rsass_bolt_in.ogg", t = 1.11 },
            { s = randspin, t = 1.35 },   
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.001, lhik = 0 },
            { t = 0.7, lhik = 0 },
            { t = 0.85, lhik = 1 },
            { t = 1, lhik = 1 },
        }
    },

    ["draw"] = { Source = "draw", EventTable = { { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 } } },
    ["holster"] = { Source = "holster", EventTable = { { s = "arc9_eft_shared/weap_out.ogg", t = 0.05 } } },
    ["draw_empty"] = { Source = "draw_empty", EventTable = { { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 } } },
    ["holster_empty"] = { Source = "holster_empty", EventTable = { { s = "arc9_eft_shared/weap_out.ogg", t = 0.05 } } },


    ["fire"] = { Source = "fire", NoIdle = true, EventTable = { { s = "arc9_eft_shared/weap_trigger_hammer.ogg", t = 0 } } },
    ["fire_dry"] = { Source = "fire_dry", EventTable = { { s = "arc9_eft_shared/weap_trigger_hammer.ogg", t = 0 } } },
    ["fire_empty"] = { Source = "fire_last", NoIdle = true, EventTable = { { s = "arc9_eft_shared/weap_trigger_hammer.ogg", t = 0 } } },
    ["fire_dry_empty"] = { Source = "fire_dry_empty", EventTable = { { s = "arc9_eft_shared/weap_trigger_hammer.ogg", t = 0 } } },

    ["reload_0"] = {
        Source = "reload0",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reload,
        IKTimeLine = rik_reload
    },
    ["reload_empty_0"] = {
        Source = {"reload_empty0_0", "reload_empty0_1"},
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reloadempty,
        IKTimeLine = rik_reloadempty
    },
    ["1_reload_empty_0"] = { -- seperate cuz differeitn lhik
        Source = "reload_empty0_2",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reloadempty,
        IKTimeLine = rik_reloadempty2
    },
    
    ["reload_1"] = {
        Source = "reload1",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reload10,
        IKTimeLine = rik_reload
    },
    ["reload_empty_1"] = {
        Source = {"reload_empty1_0", "reload_empty1_1"},
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reloadempty,
        IKTimeLine = rik_reloadempty
    },
    ["1_reload_empty_1"] = {
        Source = "reload_empty1_2",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reloadempty,
        IKTimeLine = rik_reloadempty2
    },
    
    ["reload_2"] = {
        Source = "reload2",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reload,
        IKTimeLine = rik_reload
    },
    ["reload_empty_2"] = {
        Source = {"reload_empty2_0", "reload_empty2_1"},
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reloadempty,
        IKTimeLine = rik_reloadempty
    },
    ["1_reload_empty_2"] = {
        Source = "reload_empty2_2",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reloadempty,
        IKTimeLine = rik_reloadempty2
    },

    
    ["reload_3"] = {
        Source = "reload3",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reload,
        IKTimeLine = rik_reload
    },
    ["reload_empty_3"] = {
        Source = {"reload_empty3_0", "reload_empty3_1"},
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reloadempty,
        IKTimeLine = rik_reloadempty
    },
    ["1_reload_empty_3"] = {
        Source = "reload_empty3_2",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reloadempty,
        IKTimeLine = rik_reloadempty2
    },

    
    ["reload_4"] = {
        Source = "reload4",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reload4,
        IKTimeLine = rik_reload
    },
    ["reload_empty_4"] = {
        Source = {"reload_empty4_0", "reload_empty4_1"},
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reloadempty,
        IKTimeLine = rik_reloadempty
    },
    ["1_reload_empty_4"] = {
        Source = "reload_empty4_2",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reloadempty,
        IKTimeLine = rik_reloadempty2
    },


    
    ["reload_single"] = {
        Source = "reload_single",
        MinProgress = 0.95,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = {
            { s = randspin, t = 0.13 },
            { s = path .. "rsass_bolt_out.ogg", t = 0.48 },
            { s = path .. "rsass_bolt_in.ogg", t = 1.01 },
            { s = randspin, t = 1.31 },
            { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 2.25 },
            { s = path .. "generic_jam_shell_ remove_medium2.ogg", t = 3.14 },
            { s = randspin, t = 3.8 },
            { s = "arc9_eft_shared/weap_bolt_catch_button.ogg", t = 4.14 },
            { s = "arc9_eft_shared/weap_bolt_in_fast.ogg", t = 4.23 },
            { s = randspin, t = 4.66 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.06, lhik = 0 },
            { t = 0.88, lhik = 0 },
            { t = 0.86, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },    
    


    ["inspect1"] = {
        Source = "look",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_look,
        IKTimeLine = rik_look
    },
    ["inspect1_empty"] = {
        Source = "look_empty",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_look,
        IKTimeLine = rik_look
    },

    ["inspect2_0"] = {
        Source = "check_0",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect2_1"] = {
        Source = "check_1",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect2_2"] = {
        Source = "check_2",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect2_3"] = {
        Source = "check_3",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect2_4"] = {
        Source = "check_4",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect_empty2_0"] = {
        Source = "check_0_empty",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect_empty2_1"] = {
        Source = "check_1_empty",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect_empty2_2"] = {
        Source = "check_2_empty",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect_empty2_3"] = {
        Source = "check_3_empty",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect_empty2_4"] = {
        Source = "check_4_empty",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },

    ["inspect0"] = {
        Source = "check_chamber",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_chamber,
        IKTimeLine = rik_cham
    },

    ["inspect_empty0"] = {
        Source = "check_chamber_empty",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = randspin, t = 0.66 },
        },
        -- IKTimeLine = rik_cham
    },

    ["toggle"] = { Source = "mod_switch", EventTable = { { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 } } },
    ["switchsights"] = { Source = "mod_switch", EventTable = { { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 } } },

    ["toggle_empty"] = { Source = "mod_switch_empty", EventTable = { { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 } } },
    ["switchsights_empty"] = { Source = "mod_switch_empty", EventTable = { { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 } } },


    ["jam1"] = {
        Source = "jam_shell", -- jam shell
        EventTable = {
            { s = randspin, t = 0.02 },
            { s = randspin, t = 0.62 },
            { s = path .. "p90_bolt_handle_grab.ogg", t = 1.21 },
            { s = path .. "ar_jam_boltlock_try1.ogg", t = 1.45 },
            { s = path .. "ar_jam_boltlock_try2.ogg", t = 1.83 },
            { s = "arc9_eft_shared/weap_bolt_handle_in.ogg", t = 2.11},
            { s = path .. "ak74_round_out.ogg", t = 2.19 },
            { s = path .. "rsass_bolt_in.ogg", t = 2.3 },
            { s = randspin, t = 2.56 },
        },
        -- EjectAt = 4.7,        
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.26, lhik = 1 },
            { t = 0.39, lhik = 0 },
            { t = 0.8, lhik = 0 },
            { t = 0.9, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["jam2"] = {
        Source = "jam_feed", -- jam feed
        EventTable = {
            { s = randspin, t = 0.02 },
            { s = randspin, t = 0.62 },
            { s = path .. "p90_bolt_handle_grab.ogg", t = 1.3 },
            { s = path .. "ar_jam_boltlock_try1.ogg", t = 1.59 },
            { s = "arc9_eft_shared/weap_bolt_handle_in.ogg", t = 1.81},
            { s = randspin, t = 2.09 },
            { s = path .. "ak74_round_out.ogg", t = 2.21 },
            { s = path .. "rsass_bolt_out.ogg", t = 2.38 },
            { s = randspin, t = 2.66 },
        },
        -- EjectAt = 2.55,
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.27, lhik = 1 },
                { t = 0.4, lhik = 0 },
                { t = 0.8, lhik = 0 },
                { t = 0.9, lhik = 1 },
                { t = 1, lhik = 1 },
            },
    },
    ["jam3"] = {
        Source = "jam_hardjam", -- jam hard
        EventTable = {
            { s = randspin, t = 0.02 },
            { s = randspin, t = 0.62 },
            { s = path .. "p90_bolt_handle_grab.ogg", t = 1.28 },
            { s = path .. "ar_jam_boltlock_try3.ogg", t = 1.59 },
            { s = path .. "ar_jam_boltlock_try1.ogg", t = 1.96 },
            { s = randspin, t = 2.16 },
            { s = path .. "p90_bolt_handle_grab.ogg", t = 2.59 },
            { s = path .. "ar_jam_boltlock_try2.ogg", t = 2.84 },
            { s = path .. "ar_jam_boltlock_try3.ogg", t = 3.25 },
            { s = "arc9_eft_shared/weap_bolt_handle_in.ogg", t = 3.52},
            { s = path .. "ak74_round_out.ogg", t = 3.69 },
            { s = path .. "rsass_bolt_in.ogg", t = 3.74 },
            { s = randspin, t = 3.97 },
        },
        EjectAt = 3.69,
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.22, lhik = 1 },
            { t = 0.28, lhik = 0 },
            { t = 0.88, lhik = 0 },
            { t = 0.94, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    
    ["firemode_1"] = {
        Source = "firemode1",
        EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.2 } }
    },
    ["firemode_2"] = {
        Source = "firemode0",
        EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.2 } }
    },
    ["firemode_1_empty"] = {
        Source = "firemode1_empty",
        EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.2 } }
    },
    ["firemode_2_empty"] = {
        Source = "firemode0_empty",
        EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.2 } }
    },
}


------------------------- [[[           Attachments            ]]] -------------------------

SWEP.missingpartsnotifsent = 0

function SWEP:HookP_BlockFire()
    if  !self:GetValue("HasGrip") or 
        !self:GetValue("HasBarrel") or
        !self:GetValue("HasBolt") or
        !self:GetValue("HasHG") or
        !self:GetValue("HasGas") or
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
    if  !self:GetValue("HasGrip") or 
        !self:GetValue("HasBarrel") or
        !self:GetValue("HasBolt") or
        !self:GetValue("HasHG") or
        !self:GetValue("HasGas") or
        !self:GetValue("HasAmmoooooooo") then
            return true 
    end
end

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
--     if wep:GetValue("FoldSights") then
--         data.model:SetBodygroup(7, 2)
--     end
-- end

SWEP.AttachmentElements = {
    ["eft_spear_upper_std"] = { Bodygroups = { {1, 1} } },
    ["eft_spear_charge_std"] = { Bodygroups = { {4, 1} } },
    ["eft_spear_barrel_330"] = { Bodygroups = { {2, 1} } },
    ["eft_spear_hg_std"] = { Bodygroups = { {5, 1} } },
    ["eft_spear_mz_std"] = { Bodygroups = { {6, 1} } },
    ["eft_spear_gas_std"] = { Bodygroups = { {3, 1} } },
    ["eft_spear_silencer_std"] = { Bodygroups = { {7, 1} } },
    
    ["eft_ammo_68x51_fmj"] = { Bodygroups = { {8, 0} } },
    ["eft_ammo_68x51_hybrid"] = { Bodygroups = { {8, 1} } },

    ["eft_spear_blk"] = { Skin = 1 },
}


SWEP.Attachments = {
    {
        PrintName = "Reciever",
        Category = "eft_spear_upper",
        Installed = "eft_spear_upper_std",
        Bone = "mod_reciever",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-4, 0, 0.5),
        SubAttachments = {
            {
                Installed = "eft_mount_30mm_alpha4",
                SubAttachments = {
                    {
                        Installed = "eft_scope_30mm_tango6t"
                    },
                }
            },
            {
                -- Installed = "eft_rearsight_mcx"
            },
            {
                Installed = "eft_spear_barrel_330",
                SubAttachments = {
                    {
                        Installed = "eft_spear_gas_std",
                    },
                    {
                        Installed = "eft_spear_mz_std",
                        SubAttachments = {
                            {
                                Installed = "eft_spear_silencer_std"
                            }
                        }
                    }
                },
            },
            {
                Installed = "eft_spear_hg_std",
                -- SubAttachments = {
                    -- {
                        -- Installed = "eft_frontsight_mcx"
                    -- },
                -- }
            }
        }
    },
    {
        PrintName = "Pistol grip",
        Category = {"eft_ar15_pgrip", "eft_ar15_pgrip_m4"},
        Installed = "eft_ar_pgrip_sig",
        Bone = "mod_pistol_grip",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Charging handle",
        Category = "eft_spear_charge",
        Installed = "eft_spear_charge_std",
        Bone = "mod_charge",
        Icon_Offset = Vector(0.5, 0, 0.5),
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Stock",
        Category = "eft_mcx_stock",
        Bone = "mod_reciever",
        Pos = Vector(0, -10.07, 1.34),
        Ang = Angle(0, -90, 0),
        Installed = "eft_mcx_stock_hinge",
        SubAttachments = {
            {
                Installed = "eft_spear_buffertube_ct",
                SubAttachments = {
                    {
                        Installed = "eft_ar_stock_magpul_slk"
                    },
                }
            },
        },
    },
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_68x51",
        Bone = "mod_magazine",
        Integral = true,
        Installed = "eft_ammo_68x51_fmj",
        Pos = Vector(0, -1, -6),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Magazine",
        Category = "eft_ar10_mag",
        Bone = "mod_magazine",
        Installed = "eft_ar10_mag_l7_20",
        Icon_Offset = Vector(-1, 0, -1),
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_slot_spear"},
        Bone = "mod_pistol_grip",
        Pos = Vector(0, -8, -5),
        Ang = Angle(0, 0, 0),
    },
}

SWEP.EFTErgo = 46
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