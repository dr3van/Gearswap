-- SAM
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1)

	sets.idle = {
        ammo="Iron Gobbet",
		head="Yaoyotl Helm",
		neck="Wiglen Gorget",
        ear1="Hearty Earring",
        ear2="Ethereal Earring",
        body=gear.acro.body.tp,
        hands=gear.acro.hands.tp,
        ring1="Sheltered Ring",
        ring2="Paguroidea Ring",
        back="Shadow Mantle",
        waist="Flume Belt +1",
        legs="Acro Breeches",
        feet="Danzo Sune-Ate"
	}
    sets.idle.regen = set_combine(sets.idle, {})
    sets.idle.DT = set_combine(sets.idle, {})
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {})

    sets.JA = {}
    sets.JA["Meikyo Shisui"] = {}
    sets.JA["Meditate"] = { head="Myn. Kabuto +1", hands="Sao. Kote +2" }
    sets.JA["Warding Circle"] = { head="Myn. Kabuto +1" }
    sets.JA["Third Eye"] = { legs="Saotome Haidate" }
    sets.JA["Sekkanoki"] = { hands="Unkai Kote +2" }
    sets.JA["Shikikoyo"] = {}
    sets.JA["Blade Bash"] = {}
    sets.JA["Sengikori"] = { feet="Unkai Sune-Ate +2"}

    sets.combat = {
        ammo="Hagneia Stone",
        head="Yaoyotl Helm",
        neck="Asperity Necklace",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        body=gear.acro.body.tp,
        hands=gear.acro.hands.tp,
        ring1="Rajas Ring",
        ring2="K'ayres Ring",
        back="Atheling Mantle",
        waist="Cetl Belt",
        legs=gear.acro.legs.tp,
        feet="Whirlpool Greaves"
    }

	sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat.midacc, {})
    sets.combat.defensive = set_combine(sets.combat, {})

    -- WS sets

    sets.WS = {
        ammo="Thew Bomblet",
        head="Yaoyotl Helm",
        neck="Fotia Gorget",
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        body=gear.acro.body.tp,
        hands=gear.acro.hands.tp,
        ring1="Rajas Ring",
        ring2="Ifrit Ring",
        back="Atheling Mantle",
        waist="Fotia Belt",
        legs=gear.acro.legs.tp,
        feet="Whirlpool Greaves"
	}

    sets.WS["Tachi: Fudo"] = set_combine(sets.WS, {})
    sets.WS["Tachi: Rana"] = set_combine(sets.WS, {})
    sets.WS["Tachi: Kasha"] = set_combine(sets.WS, {})
    sets.WS["Tachi: Gekko"] = set_combine(sets.WS, {})
    sets.WS["Tachi: Yukikaze"] = set_combine(sets.WS, {})

    send_command('input /macro book 9;wait .1;input /macro set 1')
end

function precast(spell)
    base_precast(spell)
end

function midcast(spell)
    base_midcast(spell)
end

function aftercast(spell)
    base_aftercast(spell)
end

function self_command(command)
    base_self_command(command)
end