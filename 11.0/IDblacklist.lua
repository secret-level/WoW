-- BigDebuffs_Mainline.lua

addon.Spells = {

    -- Blacklist Offensive Debuffs

    -- DEATH KNIGHT

    [233397] = { type = DEBUFF_OFFENSIVE }, -- Delirium
    [48743] = { type = DEBUFF_OFFENSIVE }, -- Death Pact
    [454824] = { type = DEBUFF_OFFENSIVE }, -- Subduing Grasp
    [383312] = { type = DEBUFF_OFFENSIVE }, -- Abomination Limb
    [317898] = { type = DEBUFF_OFFENSIVE }, -- Blinding Sleet (50 % slow)
    [444828] = { type = DEBUFF_OFFENSIVE }, -- Chains of Ice (5 % more dmg taken)
    [51714] = { type = DEBUFF_OFFENSIVE }, -- Razorice
    [458169] = { type = DEBUFF_OFFENSIVE }, -- Hyperpyrexia (small dot)
    [211793] = { type = DEBUFF_OFFENSIVE }, -- Remorseless Winter
    [376974] = { type = DEBUFF_OFFENSIVE }, -- Everfrost
    [374557] = { type = DEBUFF_OFFENSIVE }, -- Brittle
    [458478] = { type = DEBUFF_OFFENSIVE }, -- Incite Terror
    [391568] = { type = DEBUFF_OFFENSIVE }, -- Insidious Chill
    [377445] = { type = DEBUFF_OFFENSIVE }, -- Unholy Aura
    -- [356528] = { type = DEBUFF_OFFENSIVE }, -- Necrotic Wound
    [390271] = { type = DEBUFF_OFFENSIVE }, -- Coil of Devastation
    [392490] = { type = DEBUFF_OFFENSIVE }, -- Enfeeble
    [199721] = { type = DEBUFF_OFFENSIVE }, -- Decomposing Aura
    [206930] = { type = DEBUFF_OFFENSIVE }, -- Heart Strike (20 % slow)
    [458687] = { type = DEBUFF_OFFENSIVE }, -- Blooddrinker (15 % dmg reduction)

    -- DEMON HUNTER

    -- DRUID

    [6795] = { type = DEBUFF_OFFENSIVE }, -- Growl
    [391722] = { type = DEBUFF_OFFENSIVE }, -- Sabertooth
    [236021] = { type = DEBUFF_OFFENSIVE }, -- Ferocious Wound
    [393957] = { type = DEBUFF_OFFENSIVE }, -- Waning Twilight
    [450214] = { type = DEBUFF_OFFENSIVE }, -- Stellar Amplification

    -- EVOKER

    -- HUNTER

    [450884] = { type = DEBUFF_OFFENSIVE }, -- Lunar Storm (10 % increased dmg taken)
    [450845] = { type = DEBUFF_OFFENSIVE }, -- Sideline (Sentinel 3 sec slow)
    [269576] = { type = DEBUFF_OFFENSIVE }, -- Master Marksman (small bleed on crit)
    [459560] = { type = DEBUFF_OFFENSIVE }, -- Laceration (small pet bleed)
    [2649] = { type = DEBUFF_OFFENSIVE }, -- Growl

    -- MAGE

    -- MONK

    [113746] = { type = DEBUFF_OFFENSIVE }, -- Mystic Touch
    [228287] = { type = DEBUFF_OFFENSIVE }, -- Mark of the Crane
    [451433] = { type = DEBUFF_OFFENSIVE }, -- Acclamation
    [201787] = { type = DEBUFF_OFFENSIVE }, -- Heavy-Handed Strikes
    [117952] = { type = DEBUFF_OFFENSIVE }, -- Crackling Jade Lightning
    [116189] = { type = DEBUFF_OFFENSIVE }, -- Provoke

    -- PALADIN

    -- PRIEST

    -- ROGUE (missing combat, lvl 80)

    -- [360194] = { type = DEBUFF_OFFENSIVE }, -- Deathmark (make bigger, 2 min big bleed)
    -- [212183] = { type = DEBUFF_OFFENSIVE }, -- Smoke Bomb (make bigger)
    [207736] = { type = DEBUFF_OFFENSIVE }, -- Shadowy Duel (make bigger, replace offensive buff)
    [394036] = { type = DEBUFF_OFFENSIVE }, -- Serrated Bone Spike (small stackable perma bleed)
    [394021] = { type = DEBUFF_OFFENSIVE }, -- Mutilated Flesh (small bleed from mutilate)
    [381628] = { type = DEBUFF_OFFENSIVE }, -- Internal Bleeding (small bleed from kidney shot/rupture)
    [256148] = { type = DEBUFF_OFFENSIVE }, -- Iron Wire (garrote dmg reduction)
    [316220] = { type = DEBUFF_OFFENSIVE }, -- Find Weakness
    [457129] = { type = DEBUFF_OFFENSIVE }, -- Deathstalker's Mark


    -- SHAMAN

    [57724] = { type = DEBUFF_OFFENSIVE }, -- Sated

    -- WARLOCK

    [387847] = { type = DEBUFF_OFFENSIVE }, -- Fel Armor (stagger)
    [234153] = { type = DEBUFF_OFFENSIVE }, -- Drain Life
    [17877] = { type = DEBUFF_OFFENSIVE }, -- Shadowburn
    [196414] = { type = DEBUFF_OFFENSIVE }, -- Eradication
    [387402] = { type = DEBUFF_OFFENSIVE }, -- Fel Sunder (5 % more dmg taken, magic debuff)
    [270569] = { type = DEBUFF_OFFENSIVE }, -- Wicked Maw
    -- [30213] = { type = DEBUFF_OFFENSIVE }, -- Legion Strike
    [434424] = { type = DEBUFF_OFFENSIVE }, -- Cloven Soul

    -- WARRIOR
}