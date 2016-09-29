-- WAR
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(0, 1)

    sets.idle = {
        ammo=gear.ammo.dt,
        head=gear.ambuscade.ares.head,
        neck=gear.neck.dt,
        ear1="Hearty Earring",
        ear2="Ethereal Earring",
        body=gear.souveran.body.A,
        hands=gear.ambuscade.ares.hands,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back="Shadow Mantle",
        waist=gear.waist.pdt,
        legs=gear.odyssean.legs.dt,
        feet="Hermes' Sandals"
    }

    sets.idle.base = set_combine(sets.idle, {})
    sets.idle.regen = set_combine(sets.idle, {
        ring1=gear.ring.regen_left,
        ring2=gear.ring.regen_right
    })
    sets.idle.DT = set_combine(sets.idle, {
        feet=gear.ambuscade.ares.feet
    })
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {})

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
    sets.JA["Provoke"] = {}
    sets.JA["Restraint"] = { hands=gear.jse.empyrean.war.hands }
    sets.JA["Retaliation"] = {
        hands=gear.jse.artifact.war.hands,
        feet=gear.jse.empyrean.war.feet
    }
    sets.JA["Tomahawk"] = { feet=gear.jse.relic.war.feet }
    sets.JA["Warcry"] = { head=gear.jse.relic.war.head }
    sets.JA["Warrior's Charge"] = { legs=gear.jse.relic.war.legs }

    sets.combat = {
        ammo="Ravager's Orb",
        head=gear.ambuscade.ares.head,
        neck=gear.neck.acc,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.souveran.body.A,
        hands=gear.souveran.hands.A,
        ring1="Rajas Ring",
        ring2="K'ayres Ring",
        back=gear.jsecapes.amb.pld.tp,
        waist=gear.waist.highhaste,
        legs=gear.souveran.legs.D,
        feet=gear.ambuscade.ares.feet
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat, {})
    sets.combat.defensive = set_combine(sets.combat, {})

    -- WS sets

    sets.WS = {
        ammo="Ravager's Orb",
        head=gear.argosy.head.A,
        neck="Fotia Gorget",
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        body=gear.argosy.body.A,
        hands=gear.argosy.hands.A,
        ring1="Rajas Ring",
        ring2="Ifrit Ring",
        back="Atheling Mantle",
        waist="Fotia Belt",
        legs=gear.odyssean.legs.ws,
        feet=gear.argosy.feet.A
    }

    sets.WS.Resolution = set_combine(sets.WS, {
        ear1="Brutal Earring",
        ear2="Moonshade Earring"
    })

    sets.WS.Resolution.MightyStrikes = set_combine(sets.WS.Resolution, {
        feet="Rvg. Calligae +2"
    })

    send_command('input /macro book 5;wait .1;input /macro set 1')
end

function job_precast(spell)
    if buffactive.mightystrikes then
        if spell.type == 'WeaponSkill' then
            if sets.WS[spell.name] then
                if sets.WS[spell.name]["MightyStrikes"] then
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