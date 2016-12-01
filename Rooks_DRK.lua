-- DRK 
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1, 1)

    use_obi = 1

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
        head="",
        neck=gear.neck.regen,
        body="Lugra Cloak",
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
        feet=gear.ambuscade.ares.feet

    })
    sets.idle.PDT = set_combine(sets.idle.DT, {
        waist=gear.waist.pdt
    })
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle.regen, {})

    -- Ragnarok STP values needed, /SAM (+15)
    -- 8-hit: 12.5%, 0
    -- 7-hit: 14.3%, 30
    -- 6-hit: 16.7%, 52
    -- 5-hit: 20.0%, 82
    -- 4-hit: 25.0%, 128

    sets.combat = {
        ammo="Seething Bomblet +1",
        head=gear.odyssean.head.tp,
        neck=gear.neck.tp,
        ear1=gear.ears.melee_left,
        ear2=gear.ears.melee_right,
        body=gear.ambuscade.phorcys.body,
        hands=gear.ambuscade.phorcys.hands,
        ring1="Rajas Ring",
        ring2="Chirich Ring",
        back=gear.jsecapes.amb.drk.tp,
        waist=gear.waist.highhaste,
        legs=gear.odyssean.legs.tp,
        feet=gear.ambuscade.phorcys.feet
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat.midacc, {
        ammo=gear.ammo.haste,
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
        legs=gear.odyssean.legs.tp,
        feet=gear.ambuscade.phorcys.feet
    })
    sets.combat.defensive = set_combine(sets.combat, {
        ammo=gear.ammo.haste,
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
        legs=gear.odyssean.legs.dt,
        feet=gear.ambuscade.ares.feet
    })

    sets.precast.FC = {
        ammo=gear.ammo.fc,
        ear1="Loquac. Earring",
        hands=gear.hands.melee_fc,
        ring1=gear.ring.fc_left,
        ring2=gear.ring.fc_right,
        waist=gear.waist.highhaste,
        legs=gear.eschite.legs.D,
        feet=gear.odyssean.feet.fc
    }

    sets.maxHP = {
        ammo="Egoist's Tathlum",
        head=gear.ambuscade.phorcys.head,
        neck=gear.neck.hp,
        ear1="Calamitous Earring",
        ear2="Ethereal Earring",
        body=gear.ambuscade.phorcys.body,
        hands=gear.ambuscade.phorcys.hands,
        ring1="Meridian Ring",
        ring2="Eihwaz Ring",
        waist="Oneiros Belt",
        legs=gear.ambuscade.phorcys.legs,
        feet=gear.eschite.feet.A
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
        ring2="Ifrit Ring +1",
        back=gear.jsecapes.amb.drk.ws,
        waist=gear.waist.ws,
        legs=gear.argosy.legs.D,
        feet=gear.argosy.feet.A
	}

    sets.WS['Scourge'] = {
        ammo="Seething Bomblet +1",
        head=gear.odyssean.head.ws,
        neck=gear.neck.ws,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.ambuscade.ares.body,
        hands=gear.odyssean.hands.ws,
        ring1="Ifrit Ring +1",
        ring2="Titan Ring +1",
        back=gear.jsecapes.amb.drk.wsd,
        waist=gear.waist.ws,
        legs=gear.ambuscade.ares.legs,
        feet=gear.ambuscade.ares.feet
    }

    sets.WS['Torcleaver'] = {
        ammo="Seething Bomblet +1",
        head=gear.odyssean.head.ws,
        neck=gear.neck.ws,
        ear1=gear.ears.wsd,
        ear2=gear.ears.ws,
        body=gear.ambuscade.ares.body,
        hands=gear.odyssean.hands.ws,
        ring1="Titan Ring",
        ring2="Titan Ring +1",
        back=gear.jsecapes.amb.drk.wsd,
        waist=gear.waist.ws,
        legs=gear.ambuscade.ares.legs,
        feet=gear.ambuscade.ares.feet
    }

    sets.WS['Resolution'] = set_combine(sets.WS, {
        ear1="Brutal Earring",
        ear2=gear.ears.ws,
        ring1="Ifrit Ring"
    })

    sets.magic_accuracy = {
        ammo=gear.ammo.mdmg,
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
        hands="Fall. Fin. Gaunt. +1",
        ring1=gear.ring.drain_aspir,
        back=gear.jsecapes.drk,
        waist="Casso Sash",
        legs=gear.eschite.legs.D
    })

    sets.midcast.DrainAspir = set_combine(sets.midcast['Dark Magic'], {
        head="",
        body="Lugra Cloak",
        waist=gear.waist.drain_aspir
    })
    sets.midcast['Drain'] = set_combine(sets.midcast.DrainAspir, {})
    sets.midcast['Drain II'] = set_combine(sets.midcast.DrainAspir, {})
    sets.midcast['Drain III'] = set_combine(sets.midcast.DrainAspir, {})
    sets.midcast['Aspir'] = set_combine(sets.midcast.DrainAspir, {})
    sets.midcast['Aspir II'] = set_combine(sets.midcast.DrainAspir, {})

    sets.JA['Last Resort'] = { back=gear.jsecapes.amb.drk }

    sets.midcast['Dread Spikes'] = set_combine(sets.maxHP, {})

    send_command('input /macro book 10;wait .1;input /macro set 1')
end