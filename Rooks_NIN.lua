-- NIN
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1)

    sets.idle = {
        ammo="Iron Gobbet",
        head=gear.taeon.head.tp,
        neck=gear.neck.regen,
        ear1=gear.ears.idle_left,
        ear2=gear.ears.idle_right,
        body=gear.taeon.body.tp,
        hands=gear.taeon.hands.tp,
        ring1=gear.ring.regen_left,
        ring2=gear.ring.regen_right,
        back="Shadow Mantle",
        waist=gear.waist.pdt,
        legs=gear.taeon.legs.tp,
        feet="Hachi. Kyahan +1"
    }

    sets.idle.DT = set_combine(sets.idle, {
        neck=gear.neck.dt,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back=gear.back.dt,
    })
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})

    sets.combat = {
        ammo="Jukukik Feather",
        head=gear.taeon.head.tp,
        neck=gear.neck.ws,
        ear1="Brutal Earring",
        ear2="Suppanomimi",
        body=gear.taeon.body.tp,
        hands=gear.taeon.hands.tp,
        ring1="Rajas Ring",
        ring2="K'ayres Ring",
        back="Atheling Mantle",
        waist=gear.waist.nohaste,
        legs=gear.taeon.legs.tp,
        feet=gear.herculean.feet.tp
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat.midacc, {})
    sets.combat.defensive = set_combine(sets.combat, {
        neck=gear.neck.dt,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back=gear.back.dt,
    })

    sets.JA = {}

    -- WS sets

    sets.WS = {
        ammo="Jukukik Feather",
        head=gear.taeon.head.tp,
        neck=gear.neck.ws,
        ear1="Brutal Earring",
        ear2=gear.ears.ws,
        body=gear.taeon.body.tp,
        hands=gear.taeon.hands.tp,
        ring1="Rajas Ring",
        ring2="Ifrit Ring",
        back="Atheling Mantle",
        waist=gear.waist.ws,
        legs=gear.taeon.legs.tp,
        feet=gear.herculean.feet.tp
    }

    send_command('input /macro book 7;wait .1;input /macro set 1')

end