-- THF
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
        feet="Jute Boots +1"
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
        ammo="Seething Bomblet +1",
        head=gear.herculean.head.tp,
        neck=gear.neck.tp,
        ear1="Sherida Earring",
        ear2="Brutal Earring",
        body=gear.ambuscade.skadi.body,
        hands="Floral Gauntlets",
        ring1="Chirich Ring",
        ring2="Epona's Ring",
        back=gear.jse.capes.ambuscade.thf.tp,
        waist="Windbuffet Belt +1",
        legs=gear.herculean.legs.tp,
        feet=gear.herculean.feet.tp
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat.midacc, {})

    sets.combat.TH = set_combine(sets.combat.highacc, {
        hands="Plun. Armlets +1",
        feet="Skulk. Poulaines +1"
    })

    -- Hijack this because I don't need defensive mode for what I do as thief
    sets.combat.defensive = set_combine(sets.combat.TH, {
        body=gear.taeon.body.tp
    })


    sets.JA = {}
    sets.JA['Box Step'] = set_combine(sets.combat.TH, {})


    -- WS sets

    sets.WS = {
        ammo="Seething Bomblet +1",
        head=gear.lustratio.head.A,
        neck=gear.neck.ws,
        ear1="Sherida Earring",
        ear2=gear.ears.ws,
        body=gear.ambuscade.skadi.body,
        hands=gear.herculean.hands.ws,
        ring1="Ramuh Ring +1",
        ring2="Epona's Ring",
        back=gear.jse.capes.ambuscade.thf.ws,
        waist=gear.waist.ws,
        legs=gear.herculean.legs.ws,
        feet=gear.lustratio.feet.D
    }

    sets.WS['Mandalic Stab'] = {
        ammo="Seething Bomblet +1",
        head=gear.lustratio.head.A,
        neck=gear.neck.ws,
        ear1="Sherida Earring",
        ear2=gear.ears.ws,
        body=gear.ambuscade.skadi.body,
        hands=gear.herculean.hands.ws,
        ring1="Ramuh Ring +1",
        ring2="Epona's Ring",
        back=gear.jse.capes.ambuscade.thf.ws,
        waist=gear.waist.ws,
        legs=gear.herculean.legs.ws,
        feet=gear.lustratio.feet.D
    }

    sets.WS['Aeolian Edge'] = {
        ammo="Seething Bomblet +1",
        head=gear.herculean.head.tp,
        neck=gear.neck.mab,
        ear1="Sherida Earring",
        ear2="Mache Earring",
        body="Samnuha Coat",
        hands=gear.ambuscade.skadi.hands,
        ring1="Ramuh Ring +1",
        ring2="Shiva Ring",
        back="Toro Cape",
        waist="Eschan Stone",
        legs=gear.herculean.legs.ws,
        feet=gear.herculean.feet.ws
    }

    send_command('input /macro book 6;wait .1;input /macro set 3')
end