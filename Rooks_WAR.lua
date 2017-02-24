-- WAR
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(0, 1)

    combat_sets = {'DPS', 'midacc', 'highacc', 'defensive', 'tank' }
    combat_sets_description = { 'Physical DPS', 'Moderate physical accuracy', 'High physical accuracy', 'Defensive', 'Tank' }
    combat_index_max = 5

    sets.idle = {
        ammo=gear.ammo.dt,
        head=gear.ambuscade.ares.head,
        neck=gear.neck.dt,
        ear1="Hearty Earring",
        ear2="Ethereal Earring",
        body=gear.souveran.body.C,
        hands=gear.ambuscade.ares.hands,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back="Shadow Mantle",
        waist=gear.waist.pdt,
        legs=gear.ambuscade.ares.legs,
        feet="Hermes' Sandals"
    }

    sets.idle.base = set_combine(sets.idle, {})
    sets.idle.regen = set_combine(sets.idle, {
        head=gear.valorous.head,
        neck=gear.neck.regen,
        ring1=gear.ring.regen_left,
        ring2=gear.ring.regen_right
    })
    sets.idle.DT = set_combine(sets.idle, {
        feet=gear.ambuscade.ares.feet
    })
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {})

    sets.maxHP = {
        head=gear.souveran.head.C,
        neck=gear.neck.hp,
        ear1="Calamitous Earring",
        ear2="Ethereal Earring",
        body=gear.souveran.body.C,
        hands=gear.souveran.hands.C,
        ring1="Meridian Ring",
        ring2="Eihwaz Ring",
        back="Fierabras's Mantle",
        waist="Oneiros Belt",
        legs=gear.souveran.legs.C,
        feet=gear.souveran.feet.C
    }

    sets.enmity = {
        ammo=gear.ammo.enmity,          -- 2
        head=gear.jse.artifact.war.head, -- 9
        neck=gear.neck.enmity,          -- 5
        ear1="Hearty Earring",          -- 0
        ear2=gear.ears.enmity_right,    -- 2
        body=gear.souveran.body.C,      -- 17
        hands=gear.souveran.hands.C,    -- 7
        ring1=gear.ring.enmity_left,    -- 5
        ring2=gear.ring.enmity_right,   -- 5
        back="Fierabras's Mantle",      -- 5
        waist="Goading Belt",           -- 3
        legs=gear.souveran.legs.C,      -- 7
        feet=gear.eschite.feet.A        -- 15
    }
    -- Total: 82

    sets.JA = {}
    sets.JA["Mighty Strikes"] = { hands=gear.jse.relic.war.hands }
    sets.JA["Brazen Rush"] = {}
    sets.JA["Aggressor"] = {
        head=gear.jse.artifact.war.head,
        body=gear.jse.relic.war.body
    }
    sets.JA["Berserk"] = {
        body=gear.jse.artifact.war.body,
        feet=gear.jse.relic.war.feet
    }
    sets.JA["Blood Rage"] = { body=gear.jse.empyrean.war.body }
    sets.JA["Defender"] = {}
    sets.JA["Provoke"] = set_combine(sets.enmity, {})
    sets.JA["Restraint"] = { hands=gear.jse.empyrean.war.hands }
    sets.JA["Retaliation"] = {
        hands=gear.jse.artifact.war.hands,
        feet=gear.jse.empyrean.war.feet
    }
    sets.JA["Tomahawk"] = {
        ammo="Throwing Tomahawk",
        feet=gear.jse.relic.war.feet
    }
    sets.JA["Warcry"] = { head=gear.jse.relic.war.head }
    sets.JA["Warrior's Charge"] = { legs=gear.jse.relic.war.legs }

    sets.combat = {
        ammo="Seething Bomblet +1",
        head=gear.odyssean.head.tp,
        neck=gear.neck.tp,
        ear1=gear.ears.acc_left,
        ear2=gear.ears.da,
        body=gear.ambuscade.phorcys.body,
        hands=gear.ambuscade.phorcys.hands,
        ring1="Rajas Ring",
        ring2="Chirich Ring",
        back=gear.jse.capes.ambuscade.war.tp,
        waist="Ioskeha Belt",
        legs=gear.odyssean.legs.stp,
        feet=gear.ambuscade.phorcys.feet
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat.midacc, {
        ammo="Seething Bomblet +1",
        head=gear.ambuscade.phorcys.head,
        neck=gear.neck.acc,
        ear1=gear.ears.melee_acc_left,
        ear2=gear.ears.melee_acc_right,
        body=gear.ambuscade.phorcys.body,
        hands=gear.ambuscade.phorcys.hands,
        ring1="Ramuh Ring +1",
        ring2="Ramuh Ring +1",
        back=gear.jse.capes.ambuscade.war.tp,
        waist="Dynamic Belt +1",
        legs=gear.ambuscade.phorcys.legs,
        feet=gear.odyssean.feet.tp
    })
    sets.combat.defensive = set_combine(sets.combat, {
        ammo=gear.ammo.haste,
        head=gear.odyssean.head.tp,
        neck=gear.neck.acc,
        ear1=gear.ears.acc_left,
        ear2=gear.ears.da,
        body=gear.ambuscade.ares.body,
        hands=gear.ambuscade.ares.hands,
        ring1="Rajas Ring",
        ring2="Chirich Ring",
        back=gear.jse.capes.ambuscade.war.tp,
        waist=gear.waist.highhaste,
        legs=gear.ambuscade.ares.legs,
        feet=gear.ambuscade.ares.feet
    })
    sets.combat.tank = set_combine(sets.combat, {
        ammo=gear.ammo.haste,
        head=gear.jse.artifact.war.head,
        neck=gear.neck.dt,
        ear1=gear.ears.acc_left,
        ear2=gear.ears.da,
        body=gear.ambuscade.ares.body,
        hands=gear.ambuscade.ares.hands,
        ring1=gear.ring.dt_left,
        ring2="Chirich Ring",
        back=gear.jse.capes.ambuscade.war.tp,
        waist="Ioskeha Belt",
        legs=gear.ambuscade.ares.legs,
        feet=gear.odyssean.feet.dt
    })

    -- WS sets

    sets.WS = {
        ammo="Seething Bomblet +1",
        head=gear.argosy.head.A,
        neck=gear.neck.ws,
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        body=gear.argosy.body.A,
        hands=gear.argosy.hands.A,
        ring1="Ifrit Ring",
        ring2="Ifrit Ring +1",
        back=gear.jse.capes.ambuscade.war.ws,
        waist=gear.waist.ws,
        legs=gear.argosy.legs.A,
        feet=gear.argosy.feet.A
    }

    sets.WS.singlehit = set_combine(sets.WS, {
        ammo=gear.ammo.wsdmg,
        head=gear.odyssean.head.ws,
        neck=gear.neck.ws,
        ear1=gear.ears.wsd,
        ear2=gear.ears.ws,
        body=gear.ambuscade.ares.body,
        hands=gear.ambuscade.ares.hands,
        ring1="Ifrit Ring",
        ring2="Ifrit Ring +1",
        back=gear.jse.capes.ambuscade.war.ws,
        waist=gear.waist.ws,
        legs=gear.odyssean.legs.ws,
        feet=gear.ambuscade.ares.feet
    })

    sets.WS['Power Slash'] = {
        ammo=gear.ammo.wsdmg,
        head=gear.odyssean.head.ws,
        neck=gear.neck.ws,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.ambuscade.ares.body,
        hands=gear.odyssean.hands.ws,
        ring1="Ifrit Ring +1",
        ring2="Titan Ring +1",
        back=gear.jse.capes.ambuscade.war.ws,
        waist=gear.waist.ws,
        legs=gear.ambuscade.ares.legs,
        feet=gear.ambuscade.ares.feet
    }

    sets.WS['Scourge'] = {
        ammo=gear.ammo.wsdmg,
        head=gear.odyssean.head.ws,
        neck=gear.neck.ws,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.ambuscade.ares.body,
        hands=gear.odyssean.hands.ws,
        ring1="Ifrit Ring +1",
        ring2="Titan Ring +1",
        back=gear.jse.capes.ambuscade.war.ws,
        waist=gear.waist.ws,
        legs=gear.ambuscade.ares.legs,
        feet=gear.ambuscade.ares.feet
    }

    sets.WS['Ground Strike'] = {
        ammo=gear.ammo.wsdmg,
        head=gear.odyssean.head.ws,
        neck=gear.neck.ws,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.ambuscade.ares.body,
        hands=gear.odyssean.hands.ws,
        ring1="Ifrit Ring +1",
        ring2="Ifrit Ring",
        back=gear.jse.capes.ambuscade.war.ws,
        waist=gear.waist.ws,
        legs=gear.ambuscade.ares.legs,
        feet=gear.ambuscade.ares.feet
    }

    sets.WS['Resolution'] = set_combine(sets.WS, {
        ear1="Brutal Earring",
        ear2="Moonshade Earring"
    })

    sets.WS.Resolution.MightyStrikes = set_combine(sets.WS.Resolution, {
        feet=gear.jse.empyrean.war.feet
    })

    send_command('input /macro book 5;wait .1;input /macro set 1')
end

function job_precast(spell)
    if buffactive.mightystrikes then
        if spell.type == 'WeaponSkill' then
            if sets.WS[spell.name] then
                if sets.WS[spell.name]["MightyStrikes"] then
                    windower.add_to_chat(123, "Using MS Reso build")
                    equip(sets.WS[spell.name]["MightyStrikes"])
                else
                    equip(sets.WS[spell.name])
                end
            else
                equip(sets.WS)
            end
        end
    else
        base_precast(spell)
    end
end