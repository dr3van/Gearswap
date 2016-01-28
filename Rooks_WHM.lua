-- WHM
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(0)

    sets.idle = {
        main="Ababinili +1",
        sub="Bugard strap +1",
        ammo="Iron Gobbet",
        head="Wivre Hairpin",
        neck="Wiglen Gorget",
        ear1="Hearty Earring",
        ear2="Ethereal Earring",
        body="Piety Briault +1",
        hands=gear.telchine.hands,
        ring1="Sheltered Ring",
        ring2="Paguroidea Ring",
        back="Umbra Cape",
        waist=gear.waist.macc,
        legs="Nares Trews",
        feet="Herald's Gaiters"
    }
    sets.idle.regen = set_combine(sets.idle, {})
    sets.idle.DT = set_combine(sets.idle, {
        head=gear.telchine.head,
        hands=gear.telchine.hands,
        legs=gear.telchine.legs,
        feet=gear.telchine.feet
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
    sets.JA['Martyr'] = {}
    sets.JA['Devotion'] = {}

    sets.precast = {}
    sets.precast.FC = {
        ammo="Incantor Stone",
        head="Nahtirah Hat",
        ear2=gear.ears.fc_right,
        hands="Repartie Gloves",
        ring1=gear.ring.FC_left,
        back="Swith Cape",
        waist=gear.waist.fc,
        legs="Orvail Pants +1",
        feet="Chelona Boots +1"
    }

    sets.precast.FC['Healing Magic'] = set_combine(sets.precast.FC, {
        legs="Ebers Pantaloons"
    })

    sets.combat = {
        ammo="Jukukik Feather",
        neck="Asperity Necklace",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        ring1="Rajas ring",
        ring2="K'ayres Ring",
        back="Rancorous Mantle",
        waist="Cetl Belt"
    }
    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat, {})
    sets.combat.defensive = set_combine(sets.combat, {})


    -- WS sets

    sets.WS = set_combine(sets.combat, {
        ammo="Jukukik Feather",
        neck="Fotia Gorget",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        ring1="Rajas ring",
        ring2="K'ayres Ring",
        back="Rancorous Mantle",
        waist="Fotia Belt"
    })

    -- Magic sets

    sets.precast.CureSpell = set_combine(sets.precast.FC, {
        main="Ababinili +1",
        sub="Bugard strap +1",
        feet=gear.vanya.feet.D
    })
    sets.precast.CuragaSpell = set_combine(sets.precast.CureSpell, {})

    sets.midcast = {}
    sets.midcast.CureSpell = {
        main="Ababinili +1",
        sub="Bugard strap +1",
        ammo="Aqua Sachet",
        head="Telchine Cap",
        neck="Colossus's torque",
        ear1="Roundel Earring",
        ear2="Lifestorm Earring",
        body="Ebers Bliaud",
        hands="Theophany Mitts +1",
        ring1="Sirona's Ring",
        ring2="Ephedra Ring",
        back="Oretania's Cape +1",
        waist=gear.waist.conserve_mp,
        legs="Ebers Pantaloons",
        feet=gear.vanya.feet.D
    }
    sets.midcast.CuragaSpell = set_combine(sets.midcast.CureSpell, {})
    sets.midcast.RegenSpell = {
        body="Piety Briault +1",
        hands="Ebers Mitts",
        legs="Theophany Pantaloons +1"
    }

    sets.midcast['Enhancing Magic'] = {
        main="Ababinili +1",
        sub="Bugard strap +1",
        neck="Colossus's torque",
        body=gear.telchine.body,
        back=gear.back.conserve_mp,
        waist="Austerity Belt",
        legs="Ebers Pantaloons",
        feet="Ebers Duckbills"
    }

    sets.macc = {
        main=gear.weapons.mage.macc,
        sub="Bugard strap +1",
        ammo="Aqua Sachet",
        head=gear.helios.head.macc,
        neck=gear.neck.macc,
        ear1=gear.ears.macc_mnd,
        ear2=gear.ears.macc_int,
        body=gear.helios.body.macc,
        hands=gear.telchine.hands,
        ring1=gear.ring.macc,
        ring2="Aquasoul Ring",
        back=gear.back.macc,
        waist=gear.waist.macc,
        legs=gear.helios.legs.macc,
        feet=gear.vanya.feet.D
    }
    sets.midcast['Divine Magic'] = set_combine(sets.macc, {})
    sets.midcast['Enfeebling Magic'] = set_combine(sets.macc, {})

    sets.midcast['Healing Magic'] = {
        main="Ababinili +1",
        sub="Bugard strap +1",
        ammo="Aqua Sachet",
        head="Ebers Cap",
        neck="Colossus's torque",
        ear1="Roundel Earring",
        ear2="Lifestorm Earring",
        body="Ebers Bliaud",
        hands="Theophany Mitts +1",
        ring1="Sirona's Ring",
        ring2="Ephedra Ring",
        back="Oretania's Cape +1",
        waist="Austerity Belt",
        legs="Ebers Pantaloons",
        feet="Vanya Clogs"
    }

    -- Specific spells
    sets.midcast['Sneak'] = set_combine(sets.midcast['Enhancing Magic'], {
        back="Skulker's Cape"
    })
    sets.midcast['Invisible'] = set_combine(sets.midcast['Enhancing Magic'], {
        back="Skulker's Cape"
    })

    sets.midcast['Cursna'] = {
        main="Ababinili +1",
        sub="Bugard strap +1",
        ammo="Aqua Sachet",
        head="Telchine Cap",
        neck="Colossus's torque",
        ear2="Lifestorm Earring",
        body="Ebers Bliaud",
        hands="Theophany Mitts +1",
        ring1="Sirona's Ring",
        ring2="Ephedra Ring",
        back="Oretania's Cape +1",
        waist="Austerity Belt",
        legs="Theophany Pantaloons +1",
        feet="Vanya Clogs"
    }

    send_command('input /macro book 3;wait .1;input /macro set 1')
end