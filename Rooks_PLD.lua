-- PLD
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1, 1)

    combat_sets = {'DPS', 'highacc', 'defensive', 'hp' }
    combat_sets_description = { 'Physical DPS', 'High physical accuracy', 'Defensive', 'HP' }
    combat_index_max = 4


    sets.weapons = {}
    sets.weapons['Excalibur'] = { main="Excalibur" }
    sets.weapons['Burtgang'] = { main="Burtgang" }
    sets.weapons['Ragnarok'] = { main="Ragnarok" }
    sets.weapons['Aegis'] = { sub="Aegis" }
    sets.weapons['Ochain'] = { sub="Ochain" }

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
        back=gear.back.dt,
        waist=gear.waist.pdt,
        legs=gear.carmine.legs.D,
        feet=gear.souveran.feet.C
    }
    sets.idle.base = set_combine(sets.idle, {})
    sets.idle.regen = set_combine(sets.idle, {
        ammo=gear.ammo.refresh,
        head=gear.valorous.head,
        neck="Creed Collar",
        body="Jumalik Mail",
        hands=gear.odyssean.hands.refresh,
        ring1=gear.ring.regen_left,
        ring2=gear.ring.regen_right,
    })
    sets.idle.DT = set_combine(sets.idle, {
        neck=gear.neck.dt,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back=gear.back.dt,
        waist="Creed Baudrier",
        feet=gear.jse.artifact.pld.feet

    })

    sets.maxHP = {
        ammo="Egoist's Tathlum",
        head=gear.souveran.head.C,
        neck=gear.neck.hp,
        ear1="Etiolation Earring",
        ear2="Ethereal Earring",
        body=gear.jse.artifact.pld.body,
        hands=gear.souveran.hands.C,
        ring1="Moonbeam Ring",
        ring2="Moonbeam Ring",
        back=gear.back.hp,
        waist="Gold Moogle Belt",
        legs=gear.jse.artifact.pld.legs,
        feet=gear.souveran.feet.C
    }

    sets.idle.PDT = set_combine(sets.idle.DT, {
        waist=gear.waist.pdt
    })
    sets.idle.MDT = set_combine(sets.maxHP, {
    })
    sets.resting = set_combine(sets.idle, {})


    -- FC: 58%
    -- QC: 5% 
    sets.precast.FC = {
        ammo=gear.ammo.fc,               -- 0% FC 2% QC
        head=gear.carmine.head.D,        -- 14% FC 0% QC
        neck=gear.neck.fc,               -- 5% FC 0% QC
        ear1=gear.ears.fc_left,          -- 1% FC 0% QC
        ear2=gear.ears.fc_right,         -- 2% FC 0% QC
        body=gear.jse.artifact.pld.body, -- 5% FC 0% QC
        hands=gear.hands.melee_fc,       -- 8% FC 0% QC
        ring1=gear.ring.fc_left,         -- 0% FC 2% QC
        ring2=gear.ring.fc_right,        -- 0% FC 1% QC
        back=gear.jse.capes.ambuscade.pld.fc, -- 10% FC 0% QC
        waist=gear.waist.maxhaste,      -- 0% FC 0% QC
        legs=gear.eschite.legs.D,        -- 5% FC 0% QC
        feet=gear.odyssean.feet.fc       -- 8% FC 0% QC
    }

    sets.combat = {
        ammo="Jukukik Feather",
        head=gear.ambuscade.phorcys.head,
        neck="Lissome Necklace",
        ear1=gear.ears.acc_left,
        ear2=gear.ears.da,
        body=gear.ambuscade.phorcys.body,
        hands=gear.ambuscade.phorcys.hands,
        ring1="Regal Ring",
        ring2="Chirich Ring",
        back=gear.jse.capes.ambuscade.pld.tp,
        waist=gear.waist.highhaste,
        legs=gear.odyssean.legs.tp,
        feet=gear.ambuscade.phorcys.feet
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
        head=gear.jse.artifact.pld.head,
        neck=gear.neck.dt,
        ear1=gear.ears.acc_left,
        ear2=gear.ears.da,
        body=gear.ambuscade.ares.body,
        hands=gear.jse.artifact.pld.hands,
        ring1="Regal Ring",
        ring2="Moonbeam Ring",
        back=gear.jse.capes.ambuscade.pld.tp,
        waist="Dynamic Belt +1",
        legs=gear.jse.artifact.pld.legs,
        feet=gear.ambuscade.ares.feet
    })

    sets.combat.hp = {
        ammo="Egoist's Tathlum",
        head=gear.odyssean.head.tp,
        neck="Sanctity Necklace",
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.jse.artifact.pld.body,
        hands=gear.souveran.hands.C,
        ring1="Moonbeam Ring",
        ring2="Moonbeam Ring",
        back=gear.jse.capes.ambuscade.pld.tp,
        waist="Dynamic Belt +1",
        legs=gear.odyssean.legs.tp,
        feet=gear.ambuscade.phorcys.feet
    }

    sets.combat.purehp = set_combine(sets.maxHP, {})

    sets.combat.mdb = {
        ammo=gear.ammo.dt,
        head=gear.ambuscade.phorcys.head,
        neck="Dualism Collar +1",
        ear1=gear.ears.acc_left,
        ear2=gear.ears.da,
        body=gear.jse.artifact.pld.body,
        hands=gear.souveran.hands.C,
        ring1="Ramuh Ring +1",
        ring2="Chirich Ring",
        back=gear.jse.capes.ambuscade.pld.tp,
        waist="Creed Baudrier",
        legs=gear.ambuscade.phorcys.legs,
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
        ring1="Regal Ring",
        ring2="Ifrit Ring +1",
        back=gear.jse.capes.ambuscade.pld.ws,
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
        ring1="Regal Ring",
        ring2="Ifrit Ring +1",
        back=gear.jse.capes.ambuscade.pld.wsd,
        waist=gear.waist.ws,
        legs=gear.odyssean.legs.ws,
        feet=gear.ambuscade.ares.feet
    })

    sets.WS['Savage Blade'] = set_combine(sets.WS.single_hit, {
        legs=gear.valorous.legs.wsd
    })
    sets.WS['Circle Blade'] = set_combine(sets.WS.single_hit, {
        legs=gear.valorous.legs.wsd
    })


    -- replace: ammo, neck, ring2, back, waist, legs
    -- improve: hands, legs
    -- head: 7%
    -- ear1: 2%
    -- body: 7%
    -- hands: 4%
    -- back: 10%
    -- legs: 2%
    -- feet: 6%
    -- total: 38%
    sets.WS['Atonement'] = {
        ammo=gear.ammo.haste,
        head=gear.odyssean.head.ws,
        neck=gear.neck.ws,
        ear1=gear.ears.wsd,
        ear2="Moonshade Earring",
        body="Phorcys Korazin",
        hands=gear.odyssean.hands.wsd,
        ring1="Mujin Band",
        ring2="Chirich Ring",
        back=gear.jse.capes.ambuscade.pld.wsd,
        waist=gear.waist.ws,
        legs=gear.valorous.legs.wsd,
        feet=gear.ambuscade.ares.feet
    }

    sets.WS['Knights of Round'] = set_combine(sets.WS.single_hit, {
        head=gear.ambuscade.ares.head,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        hands=gear.ambuscade.ares.hands
    })

    sets.WS.Requiescat = set_combine(sets.WS, {
        body=gear.ambuscade.ares.body,
        ring1="Levia. Ring",
        ring2="Levia. Ring"
    })

    sets.WS['Chant du Cygne'] = {
        ammo="Jukukik Feather",
        head=gear.lustratio.head.A,
        neck=gear.neck.ws,
        ear1="Mache Earring",
        ear2="Mache Earring",
        body=gear.ambuscade.phorcys.body,
        hands=gear.odyssean.hands.wsd,
        ring1="Regal Ring",
        ring2="Ramuh Ring +1",
        back=gear.jse.capes.ambuscade.pld.tp,
        waist=gear.waist.ws,
        legs=gear.odyssean.legs.qa,
        feet=gear.lustratio.feet.D
    }

    sets.WS.Realmrazer = set_combine(sets.WS, {
        body=gear.ambuscade.ares.body,
        ring1="Levia. Ring",
        ring2="Levia. Ring"
    })

    sets.WS['Aeolian Edge'] = set_combine(sets.WS, {
        ear1=gear.ears.mab_left,
        ear2=gear.ears.mab_right,
        ring1="Regal Ring",
        ring2="Shiva Ring",
        back=gear.jse.capes.ambuscade.pld.nuke,
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
        ring1="Regal Ring",
        ring2="Titan Ring +1",
        back=gear.jse.capes.ambuscade.pld.wsd,
        waist=gear.waist.ws,
        legs=gear.ambuscade.ares.legs,
        feet=gear.ambuscade.ares.feet
    }

    sets.enmity = {
        ammo=gear.ammo.enmity,          -- 2
        head="Loess Barbuta",           -- 9~14
        neck=gear.neck.enmity,          -- 5
        ear1="Hearty Earring",          -- 0
        ear2=gear.ears.enmity_right,    -- 2
        body=gear.souveran.body.C,      -- 17
        hands=gear.jse.relic.pld.hands, -- 8
        ring1=gear.ring.enmity_left,    -- 5
        ring2=gear.ring.enmity_right,   -- 5
        back="Fierabras's Mantle",      -- 5
        waist="Creed Baudrier",         -- 5
        legs=gear.souveran.legs.C,      -- 7
        feet=gear.eschite.feet.A        -- 15
    }
                                        -- 85~90 total

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

    sets.precast.CureSpell = set_combine(sets.precast.FC, {
        body="Jumalik Mail"
    })

    sets.midcast.CureSpell = {
        head=gear.souveran.head.C,
        neck=gear.neck.cure_potency,
        ear1="Nourishing Earring +1",
        ear2="Nourishing Earring",
        body=gear.souveran.body.C,
        hands=gear.souveran.hands.C,
        ring1="Moonbeam Ring",
        ring2="Moonbeam Ring",
        back="Fierabras's Mantle",
        waist="Creed Baudrier",
        legs=gear.souveran.legs.C,
        feet=gear.souveran.feet.C
    }


    sets.midcast['Enhancing Magic'] = {
        head=gear.carmine.head.D,
        neck=gear.neck.magic_skill,
        waist="Olympus Sash",
        legs=gear.carmine.legs.D
    }

    -- Enlight: 2×floor( (Divine Magic Skill+85)÷13 ) + floor( (Divine Magic Skill+85)÷26 ) + Enlight Job Points
    -- 404 A- + 16 merits + 13 gifts = 433
    -- Current gear: +80 = 513
    -- 2 × floor( (513+85)÷13 ) + floor((513+85)÷26 )
    -- 2 × floor( (598)÷13 ) + floor((598)÷26 )
    -- 2 × floor(46) + floor(23)
    -- 92 + 23 + JP(20)
    -- 135
    sets.midcast['Divine Magic'] = {
        head="Jumalik helm",
        neck=gear.neck.magic_skill,
        body=gear.jse.artifact.pld.body,
        hands="Eschite Gauntlets",
        ring1=gear.ring.magic_skill_left,
        ring2=gear.ring.magic_skill_right,
        back=gear.back.divine,
        waist="Asklepian Belt"
    }

    sets.midcast.nuking = {
        ammo="Dosis Tathlum",
        head="Jumalik helm",
        neck=gear.neck.magic_skill,
        ear1=gear.ears.mab_left,
        ear2=gear.ears.mab_right,
        body=gear.odyssean.body.nuke,
        hands="Leyline Gloves",
        ring1=gear.ring.magic_skill_left,
        ring2=gear.ring.magic_skill_right,
        back=gear.jse.capes.ambuscade.pld.nuke,
        waist="Eschan Stone",
        legs=gear.eschite.legs.D,
        feet=gear.odyssean.feet.nuke
    }
    sets.midcast['Banish'] = set_combine(sets.midcast.nuking, {})
    sets.midcast['Banish II'] = set_combine(sets.midcast.nuking, {})
    sets.midcast['Holy'] = set_combine(sets.midcast.nuking, {})
    sets.midcast['Holy II'] = set_combine(sets.midcast.nuking, {})



    sets.midcast['Flash'] = set_combine(sets.enmity, {
        body=gear.jse.artifact.pld.body
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
        hands=gear.souveran.hands,
        back=gear.jse.capes.reive.pld,
        feet=gear.souveran.feet
    })

    sets.midcast['Reprisal'] = set_combine(sets.maxHP, {})

    send_command('input /macro book 1;wait .1;input /macro set 1')
end