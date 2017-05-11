-- SMN
-- Sets
function get_sets()
    include('Rooks-Include.lua')
    init_get_sets(1, 1)

    combat_sets = {'DPS', 'midacc', 'highacc', 'defensive', 'pet' }
    combat_sets_description = { 'Physical DPS', 'Moderate physical accuracy', 'High physical accuracy', 'Defensive', 'pet' }
    combat_index_max = 5

    sets.idle = {
        head=gear.head.mage_refresh,
        neck=gear.neck.dt,
        ear1=gear.ears.idle_left,
        ear2=gear.ears.idle_right,
        body=gear.body.mage_idle,
        hands=gear.merlinic.hands.dt,
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
    sets.resting = set_combine(sets.idle.regen, {})

    sets.precast = {}
    sets.precast.FC = {
        ammo=gear.ammo.fc,
        head=gear.merlinic.head.fc,
        neck=gear.neck.fc,
        ear1=gear.ears.fc_left,
        ear2=gear.ears.fc_right,
        body=gear.body.mage_fc,
        hands=gear.hands.mage_fc,
        ring1=gear.ring.fc_left,
        ring2=gear.ring.fc_right,
        back=gear.back.fc,
        waist=gear.waist.fc,
        legs=gear.psycloth.legs.D,
        feet="Chelona Boots +1"
    }

    -- All -BP timer gear goes here
    sets.precast.BloodPact = {
        head=gear.jse.relic.smn.head,
        ear1="Evans Earring",
        ear2="Caller's Earring",
        body="Shomonjijoe",
        hands=gear.jse.relic.smn.legs,
        legs=gear.jse.relic.smn.feet
    }
    sets.precast.BloodPactRage = set_combine(sets.precast.BloodPact, {})
    sets.precast.BloodPactWard = set_combine(sets.precast.BloodPact, {})

    sets.pet.midcast.BloodPact = {
    }

    sets.pet.midcast.BloodPactRage = set_combine(sets.pet.midcast.BloodPact, {
        waist="Mujin Obi"
    })
    sets.pet.midcast.BloodPactRage.physical = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast.BloodPactRage.magical = set_combine(sets.pet.midcast.BloodPactRage, {})

    sets.pet.midcast.BloodPactWard = set_combine(sets.pet.midcast.BloodPact, {
        head="Psycloth Tiara",
        neck=gear.neck.magic_skill,
        ear1="Andoaa Earring",
        ear2="Hearty Earring",  -- REPLACE ME
        body=gear.jse.empyrean.smn.body,
        hands=gear.jse.relic.smn.hands,
        ring1=gear.ring.magic_skill_left,
        ring2=gear.ring.magic_skill_right,
        back=gear.jse.capes.reive.smn,
        waist="Cimmerian Sash",
        legs=gear.jse.empyrean.smn.legs
    })

    sets.pet.midcast.BloodPactWard.buff = set_combine(sets.pet.midcast.BloodPactWard, {})
    sets.pet.midcast.BloodPactWard.debuff = set_combine(sets.pet.midcast.BloodPactWard, {})


    -- Rages
    ---- Carbuncle
    sets.pet.midcast['Searing Light'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Poison Nails'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Meteorite'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Holy Mist'] = set_combine(sets.pet.midcast.BloodPactRage, {})

    ---- Ifrit
    sets.pet.midcast['Inferno'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Punch'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Fire II'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Burning Strike'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Double Punch'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Fire IV'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Flaming Crush'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Meteor Strike'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Conflag Strike'] = set_combine(sets.pet.midcast.BloodPactRage, {})

    ---- Shiva
    sets.pet.midcast['Diamond Dust'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Axe Kick'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Blizzard II'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Double Slap'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Blizzard IV'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Rush'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Heavenly Strike'] = set_combine(sets.pet.midcast.BloodPactRage, {})

    ---- Garuda
    sets.pet.midcast['Aerial Blast'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Claw'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Aero II'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Aero IV'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Predator Claws'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Wind Blade'] = set_combine(sets.pet.midcast.BloodPactRage, {})

    ---- Titan
    ---- Ramuh
    ---- Leviathan
    ---- Cait Sith
    ---- Fenrir
    ---- Diabolos


    -- Wards
    ---- Carbuncle
    sets.pet.midcast['Healing Ruby'] = set_combine(sets.pet.midcast.BloodPactWard, {})
    sets.pet.midcast['Shining Ruby'] = set_combine(sets.pet.midcast.BloodPactWard, {})
    sets.pet.midcast['Glittering Ruby'] = set_combine(sets.pet.midcast.BloodPactWard, {})
    sets.pet.midcast['Healing Ruby II'] = set_combine(sets.pet.midcast.BloodPactWard, {})
    sets.pet.midcast['Soothing Ruby'] = set_combine(sets.pet.midcast.BloodPactWard, {})
    sets.pet.midcast['Pacifying Ruby'] = set_combine(sets.pet.midcast.BloodPactWard, {})
    sets.pet.midcast['Healing Ruby'] = set_combine(sets.pet.midcast.BloodPactWard, {})

    ---- Ifrit
    sets.pet.midcast['Crimson Howl'] = set_combine(sets.pet.midcast.BloodPactWard, {})
    sets.pet.midcast['Inferno Howl'] = set_combine(sets.pet.midcast.BloodPactWard, {})

    ---- Shiva
    sets.pet.midcast['Frost Armor'] = set_combine(sets.pet.midcast.BloodPactWard, {})
    sets.pet.midcast['Sleepga'] = set_combine(sets.pet.midcast.BloodPactWard, {})
    sets.pet.midcast['Diamond Storm'] = set_combine(sets.pet.midcast.BloodPactWard, {})
    sets.pet.midcast['Crystal Blessing'] = set_combine(sets.pet.midcast.BloodPactWard, {})

    ---- Garuda
    sets.pet.midcast['Aerial Armor'] = set_combine(sets.pet.midcast.BloodPactWard, {})
    sets.pet.midcast['Whispering Wind'] = set_combine(sets.pet.midcast.BloodPactWard, {})
    sets.pet.midcast['Hastega'] = set_combine(sets.pet.midcast.BloodPactWard, {})
    sets.pet.midcast['Fleet Wind'] = set_combine(sets.pet.midcast.BloodPactWard, {})
    sets.pet.midcast['Hastega II'] = set_combine(sets.pet.midcast.BloodPactWard, {})

    ---- Titan
    ---- Ramuh
    ---- Leviathan
    ---- Cait Sith
    ---- Fenrir
    ---- Diabolos




    sets.combat = {
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




    send_command('input /macro book 14;wait .1;input /macro set 1')
end