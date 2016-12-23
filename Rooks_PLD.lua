-- PLD
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1, 1)

    combat_sets = {'DPS', 'midacc', 'highacc', 'defensive', 'stp', 'turtle' }
    combat_sets_description = { 'Physical DPS', 'Moderate physical accuracy', 'High physical accuracy', 'Defensive', 'Store TP', 'Turtle' }
    combat_index_max = 5


    sets.weapons = {}
    sets.weapons['Excalibur'] = { main="Excalibur" }
    sets.weapons['Burtgang'] = { main="Burtgang" }
    sets.weapons['Ragnarok'] = { main="Ragnarok" }
    sets.weapons['Aegis'] = { sub="Aegis" }
    sets.weapons['Ochain'] = { sub="Ochain" }
    sets.weapons['Dagger'] = { main="Malevolence" }

    sets.idle = {
        ammo=gear.ammo.dt,
        head=gear.ambuscade.ares.head,
        neck="Creed Collar",
        ear1=gear.ears.idle_left,
        ear2=gear.ears.idle_right,
        body=gear.jse.artifact.pld.body,
        hands=gear.ambuscade.ares.hands,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back="Shadow Mantle",
        waist=gear.waist.pdt,
        legs=gear.carmine.legs.D,
        feet=gear.souveran.feet.D
    }
    sets.idle.base = set_combine(sets.idle, {})
    sets.idle.regen = set_combine(sets.idle, {
        neck="Creed Collar",
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
    sets.idle.MDT = set_combine(sets.idle.DT, {
    })
    sets.resting = set_combine(sets.idle, {})

    sets.precast.FC = {
        ammo=gear.ammo.fc,
        head=gear.jse.empyrean.pld.head,
        ear1="Loquac. Earring",
        body=gear.jse.artifact.pld.body,
        hands=gear.hands.melee_fc,
        ring1=gear.ring.fc_left,
        ring2=gear.ring.fc_right,
        waist=gear.waist.highhaste,
        legs=gear.eschite.legs.D,
        feet=gear.odyssean.feet.fc
    }

    sets.combat = {
        ammo="Hasty Pinion +1",
        head=gear.odyssean.head.tp,
        neck=gear.neck.sword,
        ear1=gear.ears.melee_left,
        ear2=gear.ears.melee_right,
        body=gear.ambuscade.ares.body,
        hands=gear.ambuscade.ares.hands,
        ring1="Rajas Ring",
        ring2="Chirich Ring",
        back=gear.jsecapes.amb.pld.tp,
        waist=gear.waist.highhaste,
        legs=gear.ambuscade.ares.legs,
        feet=gear.ambuscade.ares.feet
    }
    sets.combat.DPS = set_combine(sets.combat, {
    })
    sets.combat.midacc = set_combine(sets.combat, {
    })
    sets.combat.highacc = set_combine(sets.combat.midacc, {
        ear1="Mache Earring",
        ear2="Mache Earring",
        ring1="Ramuh Ring +1",
        ring2="Ramuh Ring +1"
    })
    sets.combat.defensive = set_combine(sets.combat, {
        ammo="Hasty Pinion +1",
        head=gear.odyssean.head.tp,
        neck=gear.neck.sword,
        ear1=gear.ears.melee_left,
        ear2=gear.ears.melee_right,
        body=gear.ambuscade.ares.body,
        hands=gear.ambuscade.ares.hands,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back=gear.jsecapes.amb.pld.tp,
        waist=gear.waist.highhaste,
        legs=gear.ambuscade.ares.legs,
        feet=gear.ambuscade.ares.feet
    })

    sets.combat.stp = {
        ammo="Jukukik Feather",
        head=gear.ambuscade.phorcys.head,
        neck="Lissome Necklace",
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.ambuscade.phorcys.body,
        hands=gear.ambuscade.phorcys.hands,
        ring1="Rajas Ring",
        ring2="Chirich Ring",
        back=gear.jsecapes.amb.pld.tp,
        waist=gear.waist.highhaste,
        legs=gear.odyssean.legs.tp,
        feet=gear.ambuscade.phorcys.feet
    }

    -- WS sets

    sets.WS = {
        ammo=gear.ammo.haste,
        head=gear.odyssean.head.ws,
        neck=gear.neck.ws,
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        body=gear.ambuscade.ares.body,
        hands=gear.odyssean.hands.ws,
        ring1="Rajas Ring",
        ring2="Ifrit Ring",
        back=gear.jsecapes.amb.pld.ws,
        waist=gear.waist.ws,
        legs=gear.odyssean.legs.ws,
        feet=gear.ambuscade.ares.feet
    }

    sets.WS.single_hit = set_combine(sets.WS, {
        head=gear.odyssean.head.ws,
        neck=gear.neck.ws,
        ear1=gear.ears.wsd,
        ear2="Moonshade Earring",
        body=gear.ambuscade.ares.body,
        hands=gear.odyssean.hands.ws,
        ring1="Rajas Ring",
        ring2="Ifrit Ring",
        back=gear.jsecapes.amb.pld.wsd,
        waist=gear.waist.ws,
        legs=gear.odyssean.legs.ws,
        feet=gear.ambuscade.ares.feet
    })

    sets.WS['Savage Blade'] = set_combine(sets.single_hit, {
        legs=gear.valorous.legs.wsd
    })
    sets.WS['Circle Blade'] = set_combine(sets.single_hit, {
        legs=gear.valorous.legs.wsd
    })


    -- replace: ammo, neck, ring2, back, waist, legs
    -- improve: hands, legs
    -- head: 5%
    -- ear1: 2%
    -- body: 7%
    -- hands: 2%
    -- legs: 2%
    -- feet: 5%
    -- total: 23%
    sets.WS['Atonement'] = set_combine(sets.single_hit, {
        ammo=gear.ammo.haste,
        head=gear.odyssean.head.ws,
        neck=gear.neck.ws,
        ear1=gear.ears.wsd,
        ear2="Moonshade Earring",
        body="Phorcys Korazin",
        hands=gear.odyssean.hands.ws,
        ring1="Mujin Band",
        ring2="Chirich Ring",
        back=gear.jsecapes.amb.pld.wsd,
        waist=gear.waist.ws,
        legs=gear.valorous.legs.wsd,
        feet=gear.ambuscade.ares.feet
    })

    sets.WS['Knights of Round'] = set_combine(sets.single_hit, {
        head=gear.ambuscade.ares.head,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        hands=gear.ambuscade.ares.hands
    })

    sets.WS.Requiescat = set_combine(sets.WS, {
        body=gear.ambuscade.ares.body,
        hands=gear.souveran.hands.A,
        ring1="Levia. Ring",
        ring2="Levia. Ring"
    })


    sets.WS.Realmrazer = set_combine(sets.WS, {
        body=gear.ambuscade.ares.body,
        hands=gear.souveran.hands.A,
        ring1="Levia. Ring",
        ring2="Levia. Ring"
    })

    sets.WS['Aeolian Edge'] = set_combine(sets.WS, {
        ear1=gear.ears.mab_left,
        ear2=gear.ears.mab_right,
        ring1="Shiva Ring",
        ring2="Shiva Ring",
        back="Toro Cape",
        legs=gear.eschite.legs.D
    })

    sets.WS['Torcleaver'] = {
        ammo="Seething Bomblet +1",
        head=gear.odyssean.head.ws,
        neck=gear.neck.ws,
        ear1="Brutal Earring",
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

    sets.enmity = {
        ammo=gear.ammo.enmity,
        head="Loess Barbuta",
        neck=gear.neck.enmity,
        ear2=gear.ears.enmity_right,
        body=gear.jse.empyrean.pld.body,
        hands=gear.jse.relic.pld.hands,
        ring1=gear.ring.enmity_left,
        ring2=gear.ring.enmity_right,
        back="Fierabras's Mantle",
        waist="Creed Baudrier",
        legs=gear.jse.relic.pld.legs,
        feet=gear.eschite.feet.A
    }

    sets.maxHP = {
        ammo="Egoist's Tathlum",
        head=gear.souveran.head.C,
        neck=gear.neck.hp,
        ear1="Calamitous Earring",
        ear2="Ethereal Earring",
        body=gear.jse.artifact.pld.body,
        hands=gear.jse.relic.pld.hands,
        ring1="Meridian Ring",
        ring2="Eihwaz Ring",
        back="Fierabras's Mantle",
        waist="Oneiros Belt",
        legs=gear.jse.empyrean.pld.legs,
        feet=gear.eschite.feet.A
    }

    sets.JA = set_combine(sets.enmity, {})
    sets.JA['Invincible'] = set_combine(sets.enmity, { legs=gear.jse.relic.pld.legs })
    sets.JA['Holy Circle'] = set_combine(sets.enmity, { feet=gear.jse.artifact.pld.feet })
    sets.JA['Shield Bash'] = set_combine(sets.enmity, { hands=gear.jse.relic.pld.hands })
    sets.JA['Sentinel'] = set_combine(sets.enmity, { feet=gear.jse.relic.pld.feet })
    sets.JA['Cover'] = set_combine(sets.enmity, { body=gear.jse.relic.pld.body })
    sets.JA['Rampart'] = set_combine(sets.enmity, { head=gear.jse.relic.pld.head })
    sets.JA['Fealty'] = set_combine(sets.enmity, { body=gear.jse.relic.pld.body })
    sets.JA['Chivalry'] = set_combine(sets.enmity, { hands=gear.jse.relic.pld.hands })
    sets.JA['Divine Emblem'] = set_combine(sets.enmity, { feet=gear.jse.empyrean.pld.feet })
    sets.JA['Sepulcher'] = set_combine(sets.enmity, {})
    sets.JA['Palisade'] = set_combine(sets.enmity, {})
    sets.JA['Intervene'] = set_combine(sets.enmity, {})

    -- Subjob stuff
    sets.JA['Provoke'] = set_combine(sets.enmity, {})
    sets.JA['Animated Flourish'] = set_combine(sets.enmity, {})


    sets.base_magic_accuracy = {}
    sets.base_magic_recast = {}

    sets.magic_accuracy = {}
    sets.magic_recast = {}

    sets.midcast['Healing Magic'] = set_combine(sets.enmity, {
        waist="Asklepian Belt",
        legs=gear.carmine.legs.D,
    })

    sets.precast.CureSpell = {
        body="Jumalik Mail"
    }

    sets.midcast.CureSpell = set_combine(sets.midcast['Healing Magic'], {
        head=gear.souveran.head.C,
        neck=gear.neck.cure_potency,
        ear1="Nourishing Earring +1",
        ear2="Nourishing Earring",
        body="Jumalik Mail",
        hands="Macabre Gauntlets +1",
        ring1="Meridian Ring",
        ring2="Eihwaz Ring",
        back="Fierabras's Mantle",
        feet=gear.eschite.feet.A
    })

    sets.midcast['Enhancing Magic'] = {
        neck="Colossus's Torque",
        legs=gear.carmine.legs.D
    }

    -- Enlight: 2×floor( (Divine Magic Skill+85)÷13 ) + floor( (Divine Magic Skill+85)÷26 ) + Enlight Job Points
    -- 404 A- + 16 merits + 5 gifts = 425
    -- Current gear: +58 = 483
    -- 2 × floor( (483+85)÷13 ) + floor((483+85)÷26 )
    -- 2 × floor( (568)÷13 ) + floor((568)÷26 )
    -- 2 × floor(43) + floor(21)
    -- 86 + 21 + JP(8)
    -- 115
    sets.midcast['Divine Magic'] = {
        head="Jumalik helm",
        neck="Henic Torque",
        body=gear.jse.artifact.pld.body,
        back=gear.back.divine,
        waist="Asklepian Belt"
    }

    sets.midcast['Flash'] = set_combine(sets.enmity, {
        body=gear.jse.relic.pld.body
    })

    -- skill is 350 base: 334 + 16 merits
    -- progression is: 28.5, 57, 85.5, 114
    -- skill needed is: 329, 357, 386, 414
    -- current skill: 375
    -- 28 + floor((enh - 300.5) / 28.5)
    -- 28 + floor(74.5 / 28.5)
    -- 28 + floor(2.6...)
    -- 28 + 2
    -- 30
    -- hands: +4
    -- cape: +5
    -- feet: +4
    -- total: 44 
    sets.midcast['Phalanx'] = set_combine(sets.midcast['Enhancing Magic'], {
        hands=gear.souveran.hands.A,
        back=gear.jsecapes.pld,
        feet=gear.souveran.feet.D
    })

    sets.midcast['Reprisal'] = set_combine(sets.maxHP, {})

    send_command('input /macro book 1;wait .1;input /macro set 1')
end