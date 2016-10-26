-- DRG
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1, 1)

	sets.idle = {
        ammo=gear.ammo.dt,
		head=gear.ambuscade.ares.head,
		neck=gear.neck.dt,
        ear1=gear.ears.idle_left,
        ear2=gear.ears.idle_right,
        body=gear.ambuscade.ares.body,
        hands=gear.ambuscade.ares.hands,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back="Shadow Mantle",
        waist=gear.waist.pdt,
        legs=gear.carmine.legs.D,
        feet=gear.ambuscade.ares.feet
    }
    sets.idle.base = set_combine(sets.idle, {})
    sets.idle.regen = set_combine(sets.idle, {
        neck=gear.neck.regen,
        ring1=gear.ring.regen_left,
        ring2=gear.ring.regen_right,
    })
    sets.idle.DT = set_combine(sets.idle, {
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right
    })
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {})

    sets.combat = {
        ammo=gear.ammo.haste,
        head=gear.ambuscade.ares.head,
        neck=gear.neck.acc,
        ear1=gear.ears.melee_left,
        ear2=gear.ears.melee_right,
        body=gear.ambuscade.phorcys.body,
        hands=gear.ambuscade.phorcys.hands,
        ring1="Chirich Ring",
        ring2="Ramuh Ring +1",
        back="Letalis Mantle",
        waist=gear.waist.highhaste,
        legs=gear.ambuscade.phorcys.legs,
        feet=gear.ambuscade.phorcys.feet
    }

	sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat.midacc, {})
    sets.combat.defensive = set_combine(sets.combat, {})


    -- WS sets

    sets.WS = {
        ammo=gear.ammo.haste,
        head=gear.ambuscade.ares.head,
        neck=gear.neck.ws,
        ear1=gear.ears.melee_left,
        ear2=gear.ears.ws,
        body=gear.ambuscade.ares.body,
        hands=gear.ambuscade.ares.hands,
        ring1="Chirich Ring",
        ring2="Ramuh Ring +1",
        back="Letalis Mantle",
        waist=gear.waist.ws,
        legs=gear.ambuscade.ares.legs,
        feet=gear.ambuscade.ares.feet
	}

    sets.JumpBase = {
        ammo=gear.ammo.haste,
        head=gear.ambuscade.ares.head,
        neck=gear.neck.ws,
        ear1=gear.ears.melee_left,
        ear2=gear.ears.ws,
        body=gear.ambuscade.ares.body,
        hands=gear.ambuscade.ares.hands,
        ring1="Chirich Ring",
        ring2="Ramuh Ring +1",
        back="Letalis Mantle",
        waist=gear.waist.ws,
        legs=gear.ambuscade.ares.legs,
        feet=gear.ambuscade.ares.feet
    }

    sets.JA['Jump'] = set_combine(sets.JumpBase, {})
    sets.JA['High Jump'] = set_combine(sets.JumpBase, {})
    sets.JA['Spirit Jump'] = set_combine(sets.JumpBase, {})
    sets.JA['Soul Jump'] = set_combine(sets.JumpBase, {})
--    sets.JA['Spirit Jump'] = set_combine(sets.JumpBase, { legs="Lncr. Cuissots +2", feet="Lncr. Schynbld. +2" })
--    sets.JA['Soul Jump'] = set_combine(sets.JumpBase, { legs="Lncr. Cuissots +2" })

--    sets.JA['Spirit Link'] = { hands="Lancer's Vambraces" }
--    sets.JA['Angon'] = { hands="Wyrm Finger Gauntlets +2" }

    send_command('input /macro book 15;wait .1;input /macro set 1')
end