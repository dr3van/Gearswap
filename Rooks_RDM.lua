-- RDM
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(0)

    sets.idle = {
        ammo="Iron Gobbet",
        head="Dls. Chapeau +2",
        neck="Wiglen Gorget",
        ear1="Hearty Earring",
        ear2="Ethereal Earring",
        body="Estq. Sayon +2",
        hands="Espial bracers",
        ring1="Sheltered Ring",
        ring2="Paguroidea Ring",
        back="Umbra Cape",
        waist="Flume Belt +1",
        legs="Blood Cuisses",
        feet="Espial Socks"
    }

    sets.idle.regen = set_combine(sets.idle, {})
    sets.idle.DT = set_combine(sets.idle, {})
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {
        head="Dls. Chapeau +2",
        neck="Eidolon Pendant",
        ear1="Relaxing Earring",
        body="Estq. Sayon +2",
        back="Vita Cape",
        waist="Austerity Belt",
        legs="Nisse Slacks",
        feet="Chelona Boots +1"
    })

    sets.precast.FC = {
        head="Atrophy Chapeau",
        ear1="Loquac. Earring",
        ear2="Estq. Earring",
        body="Dls. Tabard +2",
        hands="Repartie Gloves",
        back="Swith Cape",
        waist="Witful Belt",
        legs="Orvail Pants +1",
        feet="Chelona Boots +1"
    }

    sets.combat = {
        ammo="Jukukik Feather",
        head="Weath. Corona +1",
        neck="Asperity Necklace",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        body="Weather. Robe +1",
        hands="Weath. Cuffs +1",
        ring1="Rajas ring",
        ring2="K'ayres Ring",
        back="Atheling Mantle",
        waist="Cetl Belt",
        legs="Weath. Pants +1",
        feet="Weath. Souliers +1"
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {
        neck="Portus Collar",
        back="Letalis Mantle"
    })
    sets.combat.highacc = set_combine(sets.combat.midacc, {})
    sets.combat.defensive = set_combine(sets.combat, {})


    sets.JA = {}
    sets.JA["Chainspell"] = { body="Dls. Tabard +2" }
    sets.JA["Saboteur"] = { feet="Estq. Ganthrt. +2" }

    -- WS sets

    sets.WS = {
        ammo="Jukukik Feather",
        head="Nahtirah Hat",
        neck="Fotia Gorget",
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        body="Weather. Robe +1",
        hands="Espial Bracers",
        ring1="Rajas ring",
        ring2="Pyrosoul Ring",
        back="Atheling Mantle",
        waist="Fotia Belt",
        legs="Espial Hose",
        feet="Espial Socks"
    }

    -- Magic sets
    sets.magic_recast = {}
    sets.magic_accuracy = {
        head="Weath. Corona +1",
        neck="Eddy Necklace",
        ear1="Lifestorm Earring",
        ear2="Psystorm Earring",
        body="Weather. Robe +1",
        hands="Yaoyotl Gloves",
        ring1="Sangoma Ring",
        ring2="Shiva Ring",
        back="Refraction Cape",
        waist="Witch Sash",
        legs="Weath. Pants +1",
        feet="Vitivation Boots"
    }

    sets.midcast['Enfeebling Magic'] = set_combine(sets.magic_accuracy, {
        body="Estq. Sayon +2"
    })

    sets.midcast['Enfeebling Magic']['White Magic'] = set_combine(sets.midcast['Enfeebling Magic'], {
        ring2="Aquasoul Ring",
    })

    sets.midcast['Enfeebling Magic']['Black Magic'] = set_combine(sets.midcast['Enfeebling Magic'], {
    })

    sets.midcast['Healing Magic'] = {
        head="Weath. Corona +1",
        neck="Phalaina Locket",
        ear1="Lifestorm Earring",
        ear2="Roundel Earring",
        body="Weather. Robe +1",
        hands="Bokwus Gloves",
        ring1="Aquasoul Ring",
        ring2="Aquasoul Ring",
        back="Tempered Cape",
        waist="Austerity Belt",
        legs="Atrophy Tights",
        feet="Weath. Souliers +1"
    }

    sets.midcast['Enhancing Magic'] = set_combine(sets.magic_recast, {
        body="Dls. Tabard +2",
        hands="Vitivation Gloves",
        back="Estoqueur's Cape",
        waist="Austerity Belt",
        legs="Atrophy Tights",
        feet="Estq. Houseaux +2"
    })

    sets.midcast['Elemental Magic'] = set_combine(sets.magic_accuracy, {
        head="Atrophy Chapeau",
        ear1="Novio Earring",
        ear2="Hecate's Earring",
        body="Helios Jacket",
        hands="Helios Gloves",
        ring1="Icesoul Ring",
        ring2="Icesoul Ring",
        feet="Helios Boots"
    })

    sets.midcast['Dark Magic'] = set_combine(sets.magic_accuracy, {
    })

    -- Specific spells
    sets.midcast['Refresh'] = set_combine(sets.midcast['Enhancing Magic'], {
        legs="Estqr. Fuseau +2"
    })
    sets.midcast['Refresh II'] = set_combine(sets.midcast['Enhancing Magic'], {
        legs="Estqr. Fuseau +2"
    })
    sets.midcast['Sneak'] = set_combine(sets.midcast['Enhancing Magic'], {
        back="Skulker's Cape"
    })
    sets.midcast['Invisible'] = set_combine(sets.midcast['Enhancing Magic'], {
        back="Skulker's Cape"
    })
    sets.midcast['Paralyze II'] = set_combine(sets.midcast['Enfeebling Magic']['White Magic'], {
        feet="Vitivation Boots"
    })
    sets.midcast['Slow II'] = set_combine(sets.midcast['Enfeebling Magic']['White Magic'], {
        head="Dls. Chapeau +2"
    })
    sets.midcast['Dia III'] = set_combine(sets.midcast['Enfeebling Magic']['White Magic'], {
        head="Dls. Chapeau +2"
    })

    send_command('input /macro book 2;wait .1;input /macro set 1')
end

function job_precast(spell)
    if buffactive['Chainspell'] or buffactive['Spontaneity'] then
        midcast(spell)
    else
        base_precast(spell)
    end
end

function job_midcast(spell)
    if spell.skill == 'Enfeebling Magic' then
        if spell.type == 'White Magic' then
            equip(sets.midcast['Enfeebling Magic']['White Magic'])
        else
            equip(sets.midcast['Enfeebling Magic']['Black Magic'])
        end
    else
        base_midcast(spell)
    end
end