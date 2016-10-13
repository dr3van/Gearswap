-- DNC
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1, 1)

    -- 24% DT
    -- 20% PDT
    sets.idle = {
        ammo=gear.ammo.dt,
        head=gear.ambuscade.skadi.head,
        neck=gear.neck.dt,
        ear1=gear.ears.idle_left,
        ear2=gear.ears.idle_right,
        body=gear.ambuscade.skadi.body,
        hands=gear.ambuscade.skadi.hands,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back="Shadow Mantle",
        waist=gear.waist.pdt,
        legs=gear.ambuscade.skadi.legs,
        feet=gear.ambuscade.skadi.feet
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

    sets.precast = {}
    sets.precast.FC = {}

    sets.midcast = {}

    sets.combat = {
        ammo="Honed Tathlum",
        head=gear.herculean.head.tp,
        neck=gear.neck.tp,
        ear1=gear.ears.dw_left,
        ear2=gear.ears.dw_right,
        body=gear.taeon.body.tp,
        hands=gear.taeon.hands.tp,
        ring1="Rajas Ring",
        ring2="K'ayres Ring",
        back="Atheling Mantle",
        waist=gear.waist.nohaste,
        legs=gear.herculean.legs.tp,
        feet=gear.herculean.feet.tp
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat.midacc, {})
    sets.combat.defensive = set_combine(sets.combat, {})
    
    -- WS sets
    sets.WS = {
        ammo="Honed Tathlum",
        head=gear.lustratio.head.A,
        neck=gear.neck.ws,
        ear1="Brutal Earring",
        ear2=gear.ears.ws,
        body=gear.taeon.body.ws,
        hands=gear.lustratio.hands.A,
        ring1="Rajas Ring",
        ring2="K'ayres Ring",
        back="Atheling Mantle",
        waist=gear.waist.ws,
        legs=gear.herculean.legs.ws,
        feet=gear.herculean.feet.ws
    }

    send_command('input /macro book 1;wait .1;input /macro set 1')
end