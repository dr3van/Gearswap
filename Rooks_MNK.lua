-- MNK
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1, 1)

    sets.idle = {
        ammo=gear.ammo.dt,
        head=gear.herculean.head.tp,
        neck=gear.neck.dt,
        ear1=gear.ears.idle_left,
        ear2=gear.ears.idle_right,
        body=gear.taeon.body.tp,
        hands=gear.taeon.hands.tp,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back="Shadow Mantle",
        waist="Black Belt",
        legs=gear.herculean.legs.tp,
        feet="Herald's Gaiters"
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
    sets.JA["Hundred Fists"] = {
        legs="Mel. Hose +2"
    }
    sets.JA["Boost"] = { hands="Tpl. Gloves +1" }
    sets.JA["Dodge"] = { feet="Tpl. Gaiters +1" }
    sets.JA["Focus"] = { head="Tpl. Crown +1" }
    sets.JA["Chakra"] = {
        ammo="Iron Gobbet",
        head=gear.odyssean.head.tp,
        body="Tpl. Cyclas +1",
        hands="Mel. Gloves +2",
        back="Melee Cape",
        legs=gear.herculean.legs.tp,
        feet=gear.herculean.feet.tp
    }
    sets.JA["Chi Blast"] = {
        head=gear.herculean.head.tp,
        ear1="Lifestorm Earring",
        body=gear.taeon.body.tp,
        hands=gear.taeon.hands.tp,
        ring1="Aquasoul Ring",
        ring2="Aquasoul Ring",
        back="Melee Cape",
        legs=gear.herculean.legs.tp,
        feet=gear.herculean.feet.tp
    }
    sets.JA["Counterstance"] = { feet="Mel. Gaiters +2" }
    sets.JA["Footwork"] = { feet="Tantra Gaiters +2" }
    sets.JA["Mantra"] = { feet="Mel. Gaiters +2" }
    sets.JA["Formless Strikes"] = { body="Mel. Cyclas +2" }
    sets.JA["Perfect Counter"] = { head="Tantra Crown +2" }
    sets.JA["Impetus"] = { body="Tantra Cyclas +2" }
    sets.JA["Inner Strength"] = {}

    sets.combat = {
        ammo="Hagneia Stone",
        head=gear.herculean.head.tp,
        neck=gear.neck.acc,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.taeon.body.tp,
        hands=gear.taeon.hands.tp,
        ring1="Rajas Ring",
        ring2="Epona's Ring",
        back="Atheling Mantle",
        waist="Windbuffet Belt +1",
        legs=gear.herculean.legs.tp,
        feet=gear.herculean.feet.tp
    }
    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat, {})
    sets.combat.defensive = set_combine(sets.combat, {})

    -- WS sets

    sets.WS = {
        ammo="Thew Bomblet",
        head=gear.herculean.head.ws,
        neck=gear.neck.ws,
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        body=gear.taeon.body.ws,
        hands=gear.taeon.hands.ws,
        ring1="Rajas Ring",
        ring2="Epona's Ring",
        back="Atheling Mantle",
        waist=gear.waist.ws,
        legs=gear.herculean.legs.ws,
        feet=gear.herculean.feet.ws
    }
    sets.WS['Victory Smite'] = set_combine(sets.WS, {
        back="Rancorous Mantle"
    })

    send_command('input /macro book 4;wait .1;input /macro set 3')
end