-- SAM
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1, 1)

	sets.idle = {
        ammo=gear.ammo.dt,
		head="Yaoyotl Helm",
        neck=gear.neck.dt,
        ear1=gear.ears.idle_left,
        ear2=gear.ears.idle_right,
        body=gear.acro.body.tp,
        hands=gear.acro.hands.tp,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back="Shadow Mantle",
        waist=gear.waist.pdt,
        legs="Acro Breeches",
        feet="Danzo Sune-Ate"
	}
    sets.idle.base = set_combine(sets.idle, {})
    sets.idle.regen = set_combine(sets.idle, {
        neck=gear.neck.regen,
        ring1=gear.ring.regen_left,
        ring2=gear.ring.regen_right,
    })
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
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
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
        neck=gear.neck.ws,
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        body=gear.acro.body.tp,
        hands=gear.acro.hands.tp,
        ring1="Rajas Ring",
        ring2="Ifrit Ring",
        back="Atheling Mantle",
        waist=gear.waist.ws,
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