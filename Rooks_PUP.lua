-- PUP
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1, 1)

    sets.idle = {
        head=gear.herculean.head.tp,
        neck=gear.neck.dt,
        ear1=gear.ears.idle_left,
        ear2=gear.ears.idle_right,
        body="Samnuha Coat",
        hands=gear.herculean.hands.tp,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back="Shadow Mantle",
        waist="Porous Rope",
        legs=gear.herculean.legs.tp,
        feet="Hermes' Sandals"
    }
    sets.idle.base = set_combine(sets.idle, {})
    sets.idle.regen = set_combine(sets.idle, {
        neck=gear.neck.regen,
        ring1=gear.ring.regen_left,
        ring2=gear.ring.regen_right,
    })
    sets.idle.DT = set_combine(sets.idle, {
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
    })
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {})

    sets.JA = {}

    sets.combat = {
        head=gear.herculean.head.tp,
        neck=gear.neck.acc,
        ear1=gear.ears.melee_acc_left,
        ear2=gear.ears.melee_acc_right,
        body="Samnuha Coat",
        hands=gear.herculean.hands.tp,
        ring1="Chirich Ring",
        ring2="Epona's Ring",
        back="Letalis Mantle",
        waist="Windbuffet Belt +1",
        legs=gear.herculean.legs.tp,
        feet=gear.herculean.feet.tp
    }
    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {
        waist="Eschan Stone",
        ring1="Ramuh Ring +1",
        ring2="Ramuh Ring +1",
    })
    sets.combat.highacc = set_combine(sets.combat.midacc, {})
    sets.combat.defensive = set_combine(sets.combat, {})

    -- WS sets

    sets.WS = {
        head=gear.herculean.head.ws,
        neck=gear.neck.ws,
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        body="Samnuha Coat",
        hands=gear.herculean.hands.tp,
        ring1="Ifrit Ring +1",
        ring2="Epona's Ring",
        back="Atheling Mantle",
        waist=gear.waist.ws,
        legs=gear.herculean.legs.ws,
        feet=gear.herculean.feet.ws
    }
    sets.WS['Victory Smite'] = set_combine(sets.WS, {
        back="Rancorous Mantle"
    })

    send_command('input /macro book 18;wait .1;input /macro set 1')

end
