-- WHM
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(0)

    sets.idle = {
        ammo="Iron Gobbet",
        head="Wivre Hairpin",
        neck="Wiglen Gorget",
        ear1="Hearty Earring",
        ear2="Ethereal Earring",
        body="Orison Bliaud +2",
        hands="Orison Mitts +2",
        ring1="Sheltered Ring",
        ring2="Paguroidea Ring",
        back="Shadow Mantle",
        waist="Ocean Sash",
        legs="Nares Trews",
        feet="Herald's Gaiters"
    }
    sets.idle.regen = set_combine(sets.idle, {})
    sets.idle.DT = set_combine(sets.idle, {})
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {
        main="Rsv.Cpt. Mace",
        sub="Legion Scutum",
        head="Wivre Hairpin",
        neck="Eidolon Pendant",
        ear1="Relaxing Earring",
        body="Chelona Blazer",
        hands="Nares Cuffs",
        back="Vita Cape",
        legs="Nisse Slacks",
        feet="Chelona Boots +1"
    })

    sets.JA = {}
    sets.JA['Martyr'] = {}
    sets.JA['Devotion'] = {}

    sets.precast = {}
    sets.precast.FC = {
        head="Nahtirah Hat",
        ear2="Loquac. Earring",
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

    -- Magic sets

    sets.precast.CureSpell = set_combine(sets.precast.FC, {
        feet="Cure Clogs"
    })
    sets.precast.CuragaSpell = set_combine(sets.precast.CureSpell, {})

    sets.midcast = {}
    sets.midcast.CureSpell = {
        head="Orison Cap +2",
        neck="healing Torque",
        ear1="Roundel Earring",
        body="Orison Bliaud +2",
        hands="Healer's Mitts +1",
        legs="Orsn. Pantaln. +2",
        feet="Wayfarer Clogs"
    }
    sets.midcast.CuragaSpell = set_combine(sets.midcast.CureSpell, {})

    sets.midcast['Enhancing Magic'] = set_combine(sets.magic_recast, {})
    sets.midcast['Enfeebling Magic'] = set_combine(sets.magic_accuracy, {})

    sets.midcast['Healing Magic'] = {
        head="Orison Cap +2",
        neck="Phalaina Locket",
        ear1="Roundel Earring",
        ear2="Orison Earring",
        body="Orison Bliaud +2",
        hands="Bokwus Gloves",
        ring1="Sirona's Ring",
        ring2="Aquasoul Ring",
        back="Tempered Cape",
        waist="Cleric's Belt",
        legs="Nares Trews",
        feet="Weath. Souliers +1"
    }

    -- Specific spells
    sets.midcast['Sneak'] = set_combine(sets.midcast['Enhancing Magic'], {
        legs="Skulker's Cape"
    })
    sets.midcast['Invisible'] = set_combine(sets.midcast['Enhancing Magic'], {
        back="Skulker's Cape"
    })

    send_command('input /macro book 3;wait .1;input /macro set 1')
end