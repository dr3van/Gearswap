-- MNK
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(0)

    sets.idle = {
        ammo="Iron Gobbet",
        head="Whirlpool Mask",
        neck="Wiglen Gorget",
        ear1="Hearty Earring",
        ear2="Ethereal Earring",
        body="Shned. Tabard +1",
        hands=gear.taeon.hands.tp,
        ring1="Sheltered Ring",
        ring2="Paguroidea Ring",
        back="Shadow Mantle",
        waist="Black Belt",
        legs="Shned. Tights +1",
        feet="Herald's Gaiters"
    }
    sets.idle.regen = set_combine(sets.idle, {})
    sets.idle.DT = set_combine(sets.idle, {})
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {})

    sets.JA = {}
    sets.JA["Hundred Fists"] = {
        legs="Mel. Hose +2"
    }
    sets.JA["Boost"] = { hands="Tpl. Gloves +1" }
    sets.JA["Dodge"] = { feet="Tpl. Gaiters +1" }
    sets.JA["Focus"] = { head="Tpl. Crown +1" }
    sets.JA["Chakra"] = {
        ammo="Iron Gobbet",
        head="Whirlpool Mask",
        body="Tpl. Cyclas +1",
        hands="Mel. Gloves +2",
        back="Melee Cape",
        legs="Nahtirah Trousers",
        feet=gear.taeon.feet.tp
    }
    sets.JA["Chi Blast"] = {
        head="Whirlpool Mask",
        ear1="Lifestorm Earring",
        body="Espial Gambison",
        hands=gear.taeon.hands.tp,
        ring1="Aquasoul Ring",
        ring2="Aquasoul Ring",
        back="Melee Cape",
        legs="Espial Hose",
        feet=gear.taeon.feet.tp
    }
    sets.JA["Counterstance"] = { feet="Mel. Gaiters +2" }
    sets.JA["Footwork"] = { feet="Tantra Gaiters +2" }
    sets.JA["Mantra"] = { feet="Mel. Gaiters +2" }
    sets.JA["Formless Strikes"] = { body="Mel. Cyclas +2" }
    sets.JA["Perfect Counter"] = { head="Tantra Crown +2" }
    sets.JA["Impetus"] = { body="Tantra Cyclas +2" }
    sets.JA["Inner Strength"] = {}

    sets.combat = {
        ammo="Hagneia Stone",
        head="Whirlpool Mask",
        neck="Asperity Necklace",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        body="Shned. Tabard +1",
        hands=gear.taeon.hands.tp,
        ring1="Rajas Ring",
        ring2="Epona's Ring",
        back="Atheling Mantle",
        waist="Windbuffet Belt +1",
        legs="Espial Hose",
        feet=gear.taeon.feet.tp
    }
    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat, {})
    sets.combat.defensive = set_combine(sets.combat, {})

    -- WS sets

    sets.WS = {
        ammo="Thew Bomblet",
        head="Whirlpool Mask",
        neck="Fotia Gorget",
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        body="Shned. Tabard +1",
        hands=gear.taeon.hands.tp,
        ring1="Rajas Ring",
        ring2="Epona's Ring",
        back="Atheling Mantle",
        waist="Fotia Belt",
        legs="Nahtirah Trousers",
        feet=gear.taeon.feet.tp
    }
    sets.WS['Victory Smite'] = set_combine(sets.WS, {
        back="Rancorous Mantle"
    })

    send_command('input /macro book 4;wait .1;input /macro set 3')
end