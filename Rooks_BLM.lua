-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(0)

    sets.idle = {
        main=gear.weapons.BLM.Nuke,
        sub="Zuuxowu Grip",
        ammo="Iron Gobbet",
        head="Wivre Hairpin",
        neck="Wiglen Gorget",
        ear1="Hearty Earring",
        ear2="Ethereal Earring",
        body="Vrikodara Jupon",
        hands="Yaoyotl Gloves",
        ring1="Sheltered Ring",
        ring2="Paguroidea Ring",
        back="Shadow Mantle",
        waist="Ocean Sash",
        legs="Nares Trews",
        feet="Herald's Gaiters"
    }
    sets.idle.regen = set_combine(sets.idle, {})
    sets.idle.DT = set_combine(sets.idle, {
        head="Nahtirah Hat",
        legs=gear.helios.legs.MAB,
        feet=gear.helios.feet.MAB
    })
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {
        main="Rsv.Cpt. Mace",
        sub="Legion Scutum",
        head="Wivre Hairpin",
        neck="Eidolon Pendant",
        ear1="Relaxing Earring",
        body="Chelona Blazer",
        back="Vita Cape",
        legs="Nisse Slacks",
        feet="Chelona Boots +1"        
    })

    sets.JA = {}

    sets.precast.FC = {
        head="Nahtirah Hat",
        ear2="Loquac. Earring",
        body=gear.helios.body.MAB,
        hands="Repartie Gloves",
        ring1=gear.ring.FC_left,
        back="Swith Cape",
        waist="Witful Belt",
        legs="Orvail Pants +1",
        feet="Chelona Boots +1"
    }

    sets.precast.FC['Elemental Magic'] = set_combine(sets.precast.FC, {
        head="Wicce Petasos",
        neck="Stoicheion Medal"
    })

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
        back="Rancorous Mantle",
        waist="Cetl Belt",
        legs="Weath. Pants +1",
        feet="Weath. Souliers +1"
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat, {})
    sets.combat.defensive = set_combine(sets.combat, {})

    -- WS sets

    sets.WS = {
        ammo="Jukukik Feather",
        head="Weath. Corona +1",
        neck="Fotia Gorget",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        body="Weather. Robe +1",
        hands="Weath. Cuffs +1",
        ring1="Rajas ring",
        ring2="K'ayres Ring",
        back="Rancorous Mantle",
        waist="Fotia Belt",
        legs="Weath. Pants +1",
        feet="Weath. Souliers +1"
    }

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
        feet="Weath. Souliers +1"
    }


    sets.midcast['Enhancing Magic'] = set_combine(sets.magic_recast, {
    })

    sets.midcast['Enfeebling Magic'] = set_combine(sets.magic_accuracy, {})


    sets.midcast['Elemental Magic'] = set_combine(sets.magic_accuracy, {
        main=gear.weapons.BLM.Nuke,
        sub="Zuuxowu Grip",
        ammo="Dosis Tathlum",
        head="Kaabnax Hat",
        neck="Eddy Necklace",
        ear1="Novio Earring",
        ear2="Hecate's Earring",
        body=gear.helios.body.MAB,
        hands=gear.helios.hands.MAB,
        ring1="Shiva Ring",
        ring2="Shiva Ring",
        back="Toro Cape",
        waist="Wanion Belt",
        legs=gear.helios.legs.MAB,
        feet=gear.helios.feet.MAB
    })

    sets.MPReturn = { body="Spaekona's Coat" }

    sets.midcast['Dark Magic'] = set_combine(sets.magic_accuracy, {
    })

    -- Specific spells
    sets.midcast['Sneak'] = set_combine(sets.midcast['Enhancing Magic'], {
        back="Skulker's Cape"
    })
    sets.midcast['Invisible'] = set_combine(sets.midcast['Enhancing Magic'], {
        back="Skulker's Cape"
    })

    send_command('input /macro book 8;wait .1;input /macro set 1')
end

function job_midcast(spell)
    mp_efficiency = 1
    if buffactive['Manawell'] or spell.mppaftercast > 0.50 then 
        mp_efficiency = 0
    end
    base_midcast(spell)

    if spell.skill == 'Elemental Magic' then
        if mp_efficiency == 1 then
            equip(set_combine(sets.midcast['Elemental Magic'], sets.MPReturn))
        end
    end
end

function weathercheck(spell_element,set)
    if not set then return end
    if spell_element == world.weather_element or spell_element == world.day_element then
        equip(set,sets.Obis[spell_element])
    else
        equip(set)
    end
    if set[spell_element] then equip(set[spell_element]) end
end