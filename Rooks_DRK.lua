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
        neck=gear.neck.sword,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.ambuscade.ares.body,
        hands=gear.ambuscade.ares.hands,
        ring1="Rajas Ring",
        ring2="K'ayres Ring",
        back="Atheling Mantle",
        waist=gear.waist.highhaste,
        legs=gear.ambuscade.ares.legs,
        feet=gear.ambuscade.ares.feet
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {
        back="Letalis Mantle",
    })
    sets.combat.highacc = set_combine(sets.combat.midacc, {
        back="Letalis Mantle"
    })
    sets.combat.defensive = set_combine(sets.combat, {})

    -- WS sets

    sets.WS = {
        ammo="Seething Bomblet +1",
        head=gear.argosy.head.A,
        neck=gear.neck.ws,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.argosy.body.A,
        hands=gear.argosy.hands.A,
        ring1="Rajas Ring",
        ring2="Ifrit Ring",
        back="Atheling Mantle",
        waist=gear.waist.ws,
        legs=gear.odyssean.legs.ws,
        feet=gear.argosy.feet.A
	}

    send_command('input /macro book 10;wait .1;input /macro set 10')
end