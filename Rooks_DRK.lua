-- DRK 
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
        neck=gear.neck.dt,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back=gear.back.dt,
        waist="Nierenschutz",
        legs=gear.odyssean.legs.dt,
        feet=gear.souveran.feet.D

    })
    sets.idle.PDT = set_combine(sets.idle.DT, {
        waist=gear.waist.pdt
    })
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {})


    sets.combat = {
        ammo="Hasty Pinion +1",
        head=gear.odyssean.head.tp,
        neck=gear.neck.acc,
        ear1=gear.ears.melee_left,
        ear2=gear.ears.melee_right,
        body=gear.ambuscade.ares.body,
        hands=gear.ambuscade.phorcys.hands,
        ring1="Rajas Ring",
        ring2="Chirich Ring",
        back=gear.jsecapes.amb.drk.tp,
        waist=gear.waist.highhaste,
        legs=gear.ambuscade.ares.legs,
        feet=gear.ambuscade.phorcys.feet
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat.midacc, {
        ammo="Hasty Pinion +1",
        head=gear.odyssean.head.tp,
        neck=gear.neck.acc,
        ear1=gear.ears.melee_left,
        ear2=gear.ears.melee_right,
        body=gear.ambuscade.phorcys.body,
        hands=gear.ambuscade.phorcys.hands,
        ring1="Chirich Ring",
        ring2="Ramuh Ring +1",
        back=gear.jsecapes.amb.drk.tp,
        waist="Dynamic Belt +1",
        legs=gear.ambuscade.phorcys.legs,
        feet=gear.ambuscade.phorcys.feet
    })
    sets.combat.defensive = set_combine(sets.combat, {
        ammo="Hasty Pinion +1",
        head=gear.odyssean.head.tp,
        neck=gear.neck.acc,
        ear1=gear.ears.melee_left,
        ear2=gear.ears.melee_right,
        body=gear.ambuscade.ares.body,
        hands=gear.ambuscade.ares.hands,
        ring1="Rajas Ring",
        ring2="Chirich Ring",
        back=gear.jsecapes.amb.drk.tp,
        waist=gear.waist.highhaste,
        legs=gear.ambuscade.ares.legs,
        feet=gear.ambuscade.ares.feet
    })

    sets.precast.FC = {
        ear1="Loquac. Earring",
        hands=gear.hands.melee_fc,
        ring1=gear.ring.fc_left,
        ring2=gear.ring.fc_right,
        legs=gear.eschite.legs.D
    }

    -- WS sets

    sets.WS = {
        ammo="Seething Bomblet +1",
        head=gear.argosy.head.A,
        neck=gear.neck.ws,
        ear1=gear.ears.melee_left,
        ear2=gear.ears.melee_right,
        body=gear.argosy.body.A,
        hands=gear.argosy.hands.A,
        ring1="Rajas Ring",
        ring2="Ifrit Ring",
        back=gear.jsecapes.amb.drk.ws,
        waist=gear.waist.ws,
        legs=gear.odyssean.legs.ws,
        feet=gear.argosy.feet.A
	}

    sets.WS['Torcleaver'] = {
        ammo="Seething Bomblet +1",
        head=gear.odyssean.head.ws,
        neck=gear.neck.ws,
        ear1="Brutal Earring",
        ear2=gear.ears.ws,
        body=gear.ambuscade.ares.body,
        hands=gear.ambuscade.ares.hands,
        ring1="Rajas Ring",
        ring2="Ifrit Ring",
        back=gear.jsecapes.amb.drk.ws,
        waist=gear.waist.ws,
        legs=gear.odyssean.legs.ws,
        feet=gear.ambuscade.ares.feet
    }

    sets.magic_accuracy = {
        head="Befouled Crown",
        neck=gear.neck.macc,
        ear1=gear.ears.macc_mnd,
        ear2=gear.ears.macc_int,
        body=gear.founder.body,
        hands=gear.hands.melee_macc,
        ring1="Shiva Ring",
        ring2="Shiva Ring",
        back="Toro Cape",
        legs=gear.eschite.legs.D,
        feet="Igno. Sollerets +1"
    }

    sets.midcast['Enfeebling Magic'] = set_combine(sets.magic_accuracy, {})
    sets.midcast['Elemental Magic'] = set_combine(sets.magic_accuracy, {})
    sets.midcast['Dark Magic'] = set_combine(sets.magic_accuracy, {
        back=gear.jsecapes.drk,
        legs=gear.eschite.legs.D
    })

    sets.midcast.DrainAspir = set_combine(sets.midcast['Dark Magic'], {
    })
    sets.midcast['Drain'] = set_combine(sets.midcast.DrainAspir, {})
    sets.midcast['Drain II'] = set_combine(sets.midcast.DrainAspir, {})
    sets.midcast['Drain III'] = set_combine(sets.midcast.DrainAspir, {})
    sets.midcast['Aspir'] = set_combine(sets.midcast.DrainAspir, {})
    sets.midcast['Aspir II'] = set_combine(sets.midcast.DrainAspir, {})

    sets.JA['Last Resort'] = { back=gear.jsecapes.amb.drk }

    send_command('input /macro book 10;wait .1;input /macro set 1')
end