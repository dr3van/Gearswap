-- SAM
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1, 1)

	sets.idle = {
        ammo=gear.ammo.dt,
		head="Loess Barbuta",
        neck=gear.neck.dt,
        ear1=gear.ears.idle_left,
        ear2=gear.ears.idle_right,
        body=gear.ambuscade.phorcys.body,
        hands=gear.founder.hands,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back="Shadow Mantle",
        waist=gear.waist.pdt,
        legs=gear.ambuscade.phorcys.legs,
        feet="Danzo Sune-Ate"
	}
    sets.idle.base = set_combine(sets.idle, {})
    sets.idle.regen = set_combine(sets.idle, {
        head=gear.valorous.head,
        neck=gear.neck.regen,
        ring1=gear.ring.regen_left,
        ring2=gear.ring.regen_right
    })
    sets.idle.DT = set_combine(sets.idle, {
        feet=gear.founder.feet
    })
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {})

    sets.JA = {}
    sets.JA["Meikyo Shisui"] = {}
    sets.JA["Meditate"] = {
        head="Myn. Kabuto +1",
        hands="Sao. Kote +2"
        back=gear.jsecapes.amb.sam
    }
    sets.JA["Warding Circle"] = { head="Myn. Kabuto +1" }
    sets.JA["Third Eye"] = { legs="Saotome Haidate" }
    sets.JA["Sekkanoki"] = { hands="Unkai Kote +2" }
    sets.JA["Shikikoyo"] = {}
    sets.JA["Blade Bash"] = {}
    sets.JA["Sengikori"] = { feet="Unkai Sune-Ate +2"}

    sets.combat = {
        ammo="Jukukik Feather",
        head=gear.valorous.head.tp,
        neck=gear.neck.acc,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.ambuscade.phorcys.body,
        hands=gear.ambuscade.phorcys.hands,
        ring1="Rajas Ring",
        ring2="Chirich Ring",
        back="Letalis Mantle",
        waist="Dynamic Belt +1",
        legs=gear.ambuscade.phorcys.legs,
        feet=gear.ambuscade.phorcys.feet
    }

	sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {
        ear1=gear.ears.melee_acc_left,
        ear2=gear.ears.melee_acc_right
    })
    sets.combat.highacc = set_combine(sets.combat.midacc, {
        ammo=gear.ammo.haste,
        head=gear.ambuscade.phorcys.head,
        ring1="Ramuh ring +1",
        ring2="Ramuh ring +1"
    })
    sets.combat.defensive = set_combine(sets.combat, {})

    -- WS sets

    sets.WS = {
        ammo="Thew Bomblet",
        head=gear.valorous.head.ws,
        neck=gear.neck.ws,
        ear1=gear.ears.wsd,
        ear2=gear.ears.ws,
        body=gear.ambuscade.phorcys.body,
        hands=gear.valorous.hands,
        ring1="Ifrit Ring",
        ring2="Ifrit Ring +1",
        back="Atheling Mantle",
        waist=gear.waist.ws,
        legs=gear.valorous.legs.wsd,
        feet=gear.ambuscade.phorcys.feet
	}

    sets.WS["Tachi: Fudo"] = set_combine(sets.WS, {})
    sets.WS["Tachi: Rana"] = set_combine(sets.WS, {})
    sets.WS["Tachi: Kasha"] = set_combine(sets.WS, {})
    sets.WS["Tachi: Gekko"] = set_combine(sets.WS, {})
    sets.WS["Tachi: Yukikaze"] = set_combine(sets.WS, {})

    send_command('input /macro book 9;wait .1;input /macro set 1')
end