-- WAR
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(0, 1)

    sets.idle = {
        ammo="Angha Gem",
        head="Jumalik helm",
        neck="Wiglen Gorget",
        ear1="Hearty Earring",
        ear2="Ethereal Earring",
        body=gear.acro.body.tp,
        hands=gear.yorium.hands.idle,
        ring1="Sheltered Ring",
        ring2="Paguroidea Ring",
        back="Shadow Mantle",
        waist="Flume Belt +1",
        legs=gear.yorium.legs.idle,
        feet="Hermes' Sandals"
    }

    sets.idle.regen = set_combine(sets.idle, {})
    sets.idle.DT = set_combine(sets.idle, {})
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {})

    sets.JA = {}
    sets.JA["Mighty Strikes"] = { hands="War. Mufflers +2" }
    sets.JA["Brazen Rush"] = {}

--    sets.JA["Aggressor"] = {
--        head="Pummeler's Mask",
--        body="Agoge Lorica"
--    }
--    sets.JA["Berserk"] = {
--        body="Pummeler's Lorica",
--        feet="War. Calligae +2"
--    }
    sets.JA["Blood Rage"] = { body="Rvg. Lorica +2" }
    sets.JA["Defender"] = {}
    sets.JA["Provoke"] = {}
    sets.JA["Restraint"] = { hands="Rvg. Mufflers +2" }
--    sets.JA["Retaliation"] = {
--        hands="Pummeler's Mufflers",
--        feet="Rvg. Calligae +2"
--    }
    sets.JA["Tomahawk"] = { feet="War. Calligae +2" }
    sets.JA["Warcry"] = { head="War. Mask +2" }
    sets.JA["Warrior's Charge"] = { legs="Warrior's Cuisses +2" }

    sets.combat = {
        ammo="Ravager's Orb",
        head="Yaoyotl Helm",
        neck="Portus Collar",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        body=gear.acro.body.tp,
        hands=gear.souveran.hands.A,
        ring1="Rajas Ring",
        ring2="K'ayres Ring",
        back="Atheling Mantle",
        waist="Cetl Belt",
        legs=gear.odysseean.legs.highacc,
        feet=gear.acro.feet.tp
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat, {})
    sets.combat.defensive = set_combine(sets.combat, {})

    -- WS sets

    sets.WS = {
        ammo="Ravager's Orb",
        head=gear.lustratio.head.A,
        neck="Fotia Gorget",
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        body=gear.acro.body.tp,
        hands=gear.souveran.hands.A,
        ring1="Rajas Ring",
        ring2="Ifrit Ring",
        back="Buquwik Cape",
        waist="Fotia Belt",
        legs=gear.odysseean.legs.highacc,
        feet=gear.lustratio.feet.D
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