-- RUN
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1, 1)

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
        legs=gear.carmine.legs.D,
        feet=gear.ambuscade.skadi.feet
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

    sets.enmity = {
        ammo=gear.ammo.enmity,          -- 2
        neck=gear.neck.enmity,          -- 5
        body="Emet Harness",            -- 9
        ring1=gear.ring.enmity_left,    -- 5
        ring2=gear.ring.enmity_right,   -- 5
        waist="Goading Belt",           -- 3
        feet="Rager Ledel. +1"          -- 7
    }

    sets.JA = {}
    sets.JA['Ignis'] = set_combine(sets.enmity, {})
    sets.JA['Gelus'] = set_combine(sets.enmity, {})
    sets.JA['Flabra'] = set_combine(sets.enmity, {})
    sets.JA['Tellus'] = set_combine(sets.enmity, {})
    sets.JA['Sulpor'] = set_combine(sets.enmity, {})
    sets.JA['Unda'] = set_combine(sets.enmity, {})
    sets.JA['Lux'] = set_combine(sets.enmity, {})
    sets.JA['Tenebrae'] = set_combine(sets.enmity, {})

    sets.JA['Swipe'] = set_combine(sets.enmity, {
        ammo="Seething Bomblet +1",
        head=gear.herculean.head.mab,
        neck=gear.neck.mab,
        ear1=gear.ears.mab_left,
        ear2=gear.ears.mab_right,
        body="Samnuha Coat",
        hands="Leyline Gloves",
--        ring1="",
--        ring2="",
        back="Toro Cape",
        waist=gear.waist.mab,
        legs="Shned. Tights +1",
        feet=gear.herculean.feet.mab
    })
    sets.JA['Lunge'] = set_combine(sets.JA['Swipe'], {})

    sets.JA['Vallation'] = set_combine(sets.enmity, {})
    sets.JA['Swordplay'] = set_combine(sets.enmity, {})
    sets.JA['Pflug'] = set_combine(sets.enmity, {})
    sets.JA['Valiance'] = set_combine(sets.enmity, {
        hands="Leyline Gloves"
    })
    sets.JA['Embolden'] = set_combine(sets.enmity, {})
    sets.JA['Gambit'] = set_combine(sets.enmity, {})
    sets.JA['Liement'] = set_combine(sets.enmity, {})
    sets.JA['One For All'] = set_combine(sets.enmity, {})
    sets.JA['Elemental Sforzo'] = set_combine(sets.enmity, {})

    sets.precast.FC = {
        ammo=gear.ammo.fc,
        head=gear.jse.artifact.run.head,
        ear2=gear.ears.fc_right,
        body="Samnuha Coat",
        hands=gear.hands.melee_fc,
        ring1=gear.ring.fc_left,
        ring2=gear.ring.fc_right,
        waist=gear.waist.highhaste,
        legs="Orvail Pants +1",
        feet= "Chelona Boots +1"
    }

    sets.midcast['Enhancing Magic'] = set_combine(sets.enmity, {
        neck="Colossus's Torque",
        legs=gear.carmine.legs.D
    })

    sets.midcast['Flash'] = set_combine(sets.enmity, {})


    sets.combat = {
        ammo="Seething Bomblet +1",
        head=gear.herculean.head.tp,
        neck=gear.neck.stp,
        ear1=gear.ears.da,
        ear2="Sherida Earring",
        body=gear.ambuscade.skadi.body,
        hands=gear.herculean.hands.tp,
        ring1="Chirich Ring",
        ring2="Epona's Ring",
        back="Letalis Mantle",
        waist=gear.waist.nohaste,
        legs=gear.herculean.legs.tp,
        feet=gear.herculean.feet.tp
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {
        back="Letalis Mantle"
    })
    sets.combat.highacc = set_combine(sets.combat.midacc, {})
    sets.combat.defensive = set_combine(sets.combat, {})


    -- WS sets

    sets.WS = {
        ammo="Seething Bomblet +1",
        head=gear.herculean.head.ws,
        neck=gear.neck.ws,
        ear1=gear.ears.ws,
        ear2="Sherida Earring",
        body=gear.ambuscade.skadi.body,
        hands=gear.herculean.hands.ws,
        ring1="Ifrit Ring +1",
        ring2="Epona's Ring",
        back="Letalis Mantle",
        waist=gear.waist.ws,
        legs=gear.herculean.legs.ws,
        feet=gear.herculean.feet.ws
    }

    sets.WS['Resolution'] = set_combine(sets.WS, {
        hands=gear.herculean.hands.ws
    })
    sets.WS['Dimidiation'] = set_combine(sets.WS, {
        ammo="Jukukik Feather",
        ring1="Ramuh Ring +1",
        ring2="Ramuh Ring +1"
    })

    send_command('input /macro book 12;wait .1;input /macro set 1')
end