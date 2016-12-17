-- WHM
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(0, 1)

    sets.idle = {
        main=gear.weapons.mage.refresh,
        sub=gear.grip.dt,
        ammo=gear.ammo.dt,
        head=gear.head.mage_refresh,
        neck=gear.neck.dt,
        ear1=gear.ears.idle_left,
        ear2=gear.ears.idle_right,
        body=gear.body.mage_idle,
        hands="Fanatic Gloves",
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back=gear.back.mage_idle,
        waist=gear.waist.mage_idle,
        legs=gear.legs.mage_pdt,
        feet="Herald's Gaiters"
    }
    sets.idle.base = set_combine(sets.idle, {})
    sets.idle.regen = set_combine(sets.idle, {
        ring1=gear.ring.regen_left,
        ring2=gear.ring.regen_right,
        legs="Nares Trews"
    })
    sets.idle.DT = set_combine(sets.idle, {
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        feet=gear.vanya.feet.D
    })
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle.regen, {
        main=gear.weapons.mage.refresh,
        sub=gear.grip.dt,
        head=gear.head.mage_refresh,
        ear1="Relaxing Earring",
        body="Chelona Blazer",
        feet="Chelona Boots +1"
    })

    sets.JA = {}
    sets.JA['Martyr'] = {}
    sets.JA['Devotion'] = {}

    sets.precast = {}
    sets.precast.FC = {
        ammo=gear.ammo.fc,
        head="Nahtirah Hat",
        ear2=gear.ears.fc_right,
        body=gear.body.mage_fc,
        hands="Fanatic's Gloves",
        ring1=gear.ring.fc_left,
        ring2=gear.ring.fc_right,
        back=gear.back.fc,
        waist=gear.waist.fc,
        legs="Orvail Pants +1",
        feet="Chelona Boots +1"
    }

    sets.precast.FC['Healing Magic'] = set_combine(sets.precast.FC, {
        legs="Ebers Pantaloons"
    })

    sets.combat = {
        ammo="Hasty Pinion +1",
        head="Telchine Cap",
        neck="Sanctity Necklace",
        ear1="Mache Earring",
        ear2="Mache Earring",
        body="Onca Suit",
        hands="",
        ring1="Ramuh Ring +1",
        ring2="Ramuh Ring +1",
        back="Rancorous Mantle",
        waist="Windbuffet Belt +1",
        legs="",
        feet=""
    }
    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat, {})
    sets.combat.defensive = set_combine(sets.combat, {})


    -- WS sets

    sets.WS = set_combine(sets.combat, {
        ammo=gear.ammo.haste,
        neck=gear.neck.ws,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        ring1="Ifrit Ring",
        ring2="Ifrit Ring +1",
        back="Rancorous Mantle",
        waist=gear.waist.ws
    })

    sets.WS['Mystic Boon'] = set_combine(sets.WS, {
        ear1=gear.ears.wsd,
        ear2=gear.ears.ws,
        ring1="Levia. Ring",
        ring2="Levia. Ring",

    })

    -- Magic sets

    sets.precast.CureSpell = set_combine(sets.precast.FC, {
        main="Ababinili +1",
        feet=gear.vanya.feet.D
    })
    sets.precast.CuragaSpell = set_combine(sets.precast.CureSpell, {})

    sets.midcast = {}
    sets.midcast.CureSpell = {
        main="Ababinili +1",
        ammo="Aqua Sachet",
        head="Telchine Cap",
        neck="Colossus's torque",
        ear1="Roundel Earring",
        ear2="Lifestorm Earring",
        body="Ebers Bliaud",
        hands="Theophany Mitts +1",
        ring1=gear.ring.healing_left,
        ring2=gear.ring.healing_right,
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
        sub=gear.grip.enhancing,
        neck="Colossus's torque",
        body=gear.telchine.body,
        back=gear.back.conserve_mp,
        waist=gear.waist.conserve_mp,
        legs="Ebers Pantaloons",
        feet="Ebers Duckbills"
    }

    sets.midcast.BarSpell = {
        main="Beneficus",
        head="Ebers Cap",
        body="Ebers Bliaud",
        hands="Ebers Mitts",
        legs="Clr. Pantaln. +2",
        feet="Ebers Duckbills",
    }

    sets.midcast['Barfira'] = sets.midcast.BarSpell
    sets.midcast['Barblizzara'] = sets.midcast.BarSpell
    sets.midcast['Baraera'] = sets.midcast.BarSpell
    sets.midcast['Barstonra'] = sets.midcast.BarSpell
    sets.midcast['Barthundra'] = sets.midcast.BarSpell
    sets.midcast['Barwatera'] = sets.midcast.BarSpell

    sets.macc = {
        main=gear.weapons.mage.macc,
        sub=gear.grip.macc,
        ammo="Aqua Sachet",
        head="Befouled Crown",
        neck=gear.neck.macc,
        ear1=gear.ears.macc_mnd,
        ear2=gear.ears.macc_int,
        body=gear.vanya.body.C,
        hands=gear.telchine.hands,
        ring1="Levia. Ring",
        ring2="Levia. Ring",
        back=gear.back.macc,
        waist=gear.waist.macc,
        legs="Miasmic Pants",
        feet="Medium's Sabots"
    }
    sets.midcast['Divine Magic'] = set_combine(sets.macc, {})
    sets.midcast['Enfeebling Magic'] = set_combine(sets.macc, {})

    sets.midcast['Healing Magic'] = {
        main="Ababinili +1",
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
        waist=gear.waist.conserve_mp,
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
        ammo="Aqua Sachet",
        head="Telchine Cap",
        neck="Colossus's torque",
        ear2="Lifestorm Earring",
        body="Ebers Bliaud",
        hands="Fanatic's Gloves",
        ring1="Sirona's Ring",
        ring2="Ephedra Ring",
        back="Oretania's Cape +1",
        waist=gear.waist.conserve_mp,
        legs="Theophany Pantaloons +1",
        feet="Vanya Clogs"
    }

    send_command('input /macro book 3;wait .1;input /macro set 1')
end