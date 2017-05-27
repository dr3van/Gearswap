-- SMN
-- Sets
function get_sets()
    include('Rooks-Include.lua')
    init_get_sets(1, 1)

    idle_sets = { 'base', 'regen', 'DT', 'perp', 'favor' }
    idle_sets_description = { 'Idle base', 'Idle regen', 'Idle DT', 'Idle Perpetuation', 'Idle Favor' }
    idle_index_max = 5


    combat_sets = {'DPS', 'highacc', 'defensive', 'pet' }
    combat_sets_description = { 'Physical DPS', 'High physical accuracy', 'Defensive', 'pet' }
    combat_index_max = 4

    sets.idle = {
        head=gear.jse.artifact.smn.head,
        neck=gear.neck.dt,
        ear1=gear.ears.idle_left,
        ear2=gear.ears.idle_right,
        body=gear.body.mage_idle,
        hands=gear.ambuscade.nashira.hands,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back=gear.back.mage_idle,
        waist=gear.waist.mage_idle,
        legs=gear.ambuscade.nashira.legs,
        feet="Herald's Gaiters"
    }
    sets.idle.base = set_combine(sets.idle, {})
    sets.idle.regen = set_combine(sets.idle, {
        head=gear.jse.artifact.smn.head,
        ring1=gear.ring.regen_left,
        ring2=gear.ring.regen_right,
        legs=gear.legs.mage_refresh
    })
    sets.idle.DT = set_combine(sets.idle, {
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right
    })
    sets.idle.perp = set_combine(sets.idle.regen, {
        head=gear.jse.empyrean.smn.head,
        neck="Caller's Pendant",
        ear1="Andoaa Earring",
        ear2="Evans Earring",
        body=gear.jse.empyrean.smn.body,
        hands=gear.jse.relic.smn.hands,
        ring1="Varar Ring +1",
        ring2="Varar Ring",
        back=gear.jse.capes.ambuscade.smn.phys_rage,
        waist="Kuku Stone",
        legs=gear.legs.mage_refresh,
        feet=gear.apogee.feet.C
    })
    sets.idle.favor = set_combine(sets.idle.perp, {})
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle.regen, {})

    sets.precast = {}
    sets.precast.FC = {
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
        feet=gear.merlinic.feet.fc
    }

    sets.JA['Mana Cede'] = { hands=gear.jse.empyrean.smn.hands }

    -- All -BP timer and blood boon gear goes here
    sets.precast.BloodPact = {
        head=gear.jse.relic.smn.head,
        neck="Consummation Torque",
        ear1="Evans Earring",
        body=gear.apogee.body.C,
        hands=gear.jse.relic.smn.hands,
        back=gear.jse.capes.reive.smn,
        waist="Jaq'ij Sash",
        legs=gear.jse.relic.smn.legs,
        feet=gear.jse.relic.smn.feet
    }
    sets.precast.BloodPactRage = set_combine(sets.precast.BloodPact, {})
    sets.precast.BloodPactWard = set_combine(sets.precast.BloodPact, {})

    sets.pet.midcast.BloodPact = {
    }

    sets.pet.midcast.BloodPactRage = set_combine(sets.pet.midcast.BloodPact, {
        head=gear.apogee.head.C,
        neck="Consummation Torque",
        ear1="Gelos Earring",
        ear2="Esper Earring",
        body=gear.apogee.body.C,
        hands=gear.merlinic.hands.bp,
        ring1="Varar Ring +1",
        ring2="Varar Ring",
        back=gear.jse.capes.ambuscade.smn.phys_rage,
        waist="Mujin Obi",
        legs="Enticer's Pants",
        feet=gear.apogee.feet.C
    })
    sets.pet.midcast.BloodPactRage.physical = set_combine(sets.pet.midcast.BloodPactRage, {
        back=gear.jse.capes.ambuscade.smn.phys_rage
    })
    sets.pet.midcast.BloodPactRage.magical = set_combine(sets.pet.midcast.BloodPactRage, {
        back=gear.jse.capes.ambuscade.smn.mag_rage
    })
    sets.pet.midcast.BloodPactRage.breath = set_combine(sets.pet.midcast.BloodPactRage, {
        back=gear.jse.capes.ambuscade.smn.mag_rage
    })

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
    sets.pet.midcast['Searing Light'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Poison Nails'] = set_combine(sets.pet.midcast.BloodPactRage, {})
    sets.pet.midcast['Meteorite'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Holy Mist'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})

    ---- Ifrit
    sets.pet.midcast['Inferno'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Punch'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Fire II'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Burning Strike'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Double Punch'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Fire IV'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Flaming Crush'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Meteor Strike'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Conflag Strike'] = set_combine(sets.pet.midcast.BloodPactRage.breath, {})

    ---- Shiva
    sets.pet.midcast['Diamond Dust'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Axe Kick'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Blizzard II'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Double Slap'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Blizzard IV'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Rush'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Heavenly Strike'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})

    ---- Garuda
    sets.pet.midcast['Aerial Blast'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Claw'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Aero II'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Aero IV'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Predator Claws'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Wind Blade'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})

    ---- Titan
    sets.pet.midcast['Earthen Fury'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Rock Throw'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Stone II'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Rock Buster'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Megalith Throw'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Stone IV'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Mountain Buster'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Geocrush'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Crag Throw'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})

    ---- Ramuh
    sets.pet.midcast['Judgment Bolt'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Shock Strike'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Thunder II'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Thunderspark'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Thunder IV'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Chaotic Strike'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Thunderstorm'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Volt Strike'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})

    ---- Leviathan
    sets.pet.midcast['Tidal Wave'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Barracuda Dive'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Water II'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Tail Whip'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Water IV'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Spinning Dive'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Grand Fall'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})

    ---- Cait Sith
    sets.pet.midcast['Regal Scratch'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Level ? Holy'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Regal Gash'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})

    ---- Fenrir
    sets.pet.midcast['Howling Moon'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Moonlit Charge'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Crescent Fang'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Eclipse Bite'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Lunar Bay'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Impact'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})

    ---- Diabolos
    sets.pet.midcast['Ruinous Omen'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Camisado'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})
    sets.pet.midcast['Nether Blast'] = set_combine(sets.pet.midcast.BloodPactRage.breath, {})
    sets.pet.midcast['Night Terror'] = set_combine(sets.pet.midcast.BloodPactRage.magical, {})
    sets.pet.midcast['Blindside'] = set_combine(sets.pet.midcast.BloodPactRage.physical, {})


    -- Wards
    ---- Carbuncle
    sets.pet.midcast['Healing Ruby'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Shining Ruby'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Glittering Ruby'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Healing Ruby II'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Soothing Ruby'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Pacifying Ruby'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Healing Ruby'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})

    ---- Ifrit
    sets.pet.midcast['Crimson Howl'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Inferno Howl'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})

    ---- Shiva
    sets.pet.midcast['Frost Armor'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Sleepga'] = set_combine(sets.pet.midcast.BloodPactWard.debuff, {})
    sets.pet.midcast['Diamond Storm'] = set_combine(sets.pet.midcast.BloodPactWard.debuff, {})
    sets.pet.midcast['Crystal Blessing'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})

    ---- Garuda
    sets.pet.midcast['Aerial Armor'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Whispering Wind'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Hastega'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Fleet Wind'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Hastega II'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})

    ---- Titan
    sets.pet.midcast['Earthen Ward'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Earthen Armor'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})

    ---- Ramuh
    sets.pet.midcast['Rolling Thunder'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Lightning Armor'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Shock Squall'] = set_combine(sets.pet.midcast.BloodPactWard.debuff, {})

    ---- Leviathan
    sets.pet.midcast['Slowga'] = set_combine(sets.pet.midcast.BloodPactWard.debuff, {})
    sets.pet.midcast['Spring Water'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Tidal Roar'] = set_combine(sets.pet.midcast.BloodPactWard.debuff, {})
    sets.pet.midcast['Soothing Current'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})

    ---- Cait Sith
    sets.pet.midcast["Altana's Favor"] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Raise II'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Mewing Lullaby'] = set_combine(sets.pet.midcast.BloodPactWard.debuff, {})
    sets.pet.midcast['Reraise II'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Eerie Eye'] = set_combine(sets.pet.midcast.BloodPactWard.debuff, {})

    ---- Fenrir
    sets.pet.midcast['Lunar Cry'] = set_combine(sets.pet.midcast.BloodPactWard.debuff, {})
    sets.pet.midcast['Lunar Roar'] = set_combine(sets.pet.midcast.BloodPactWard.debuff, {})
    sets.pet.midcast['Ecliptic Growl'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Ecliptic Howl'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Heavenward Howl'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})

    ---- Diabolos
    sets.pet.midcast['Somnolence'] = set_combine(sets.pet.midcast.BloodPactWard.debuff, {})
    sets.pet.midcast['Nightmare'] = set_combine(sets.pet.midcast.BloodPactWard.debuff, {})
    sets.pet.midcast['Ultimate Terror'] = set_combine(sets.pet.midcast.BloodPactWard.debuff, {})
    sets.pet.midcast['Noctoshield'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Dream Shroud'] = set_combine(sets.pet.midcast.BloodPactWard.buff, {})
    sets.pet.midcast['Pavor Nocturnus'] = set_combine(sets.pet.midcast.BloodPactWard.debuff, {})


    sets.combat = {
        head=gear.ambuscade.nashira.head,
        neck="Sanctity Necklace",
        ear1="Mache Earring",
        ear2="Mache Earring",
        body=gear.ambuscade.nashira.body,
        hands=gear.ambuscade.nashira.hands,
        ring1="Ramuh Ring +1",
        ring2="Ramuh Ring +1",
        back=gear.jse.capes.ambuscade.smn.ws,
        waist="Windbuffet Belt +1",
        legs=gear.ambuscade.nashira.legs,
        feet=gear.ambuscade.nashira.feet
    }
    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat, {})
    sets.combat.defensive = set_combine(sets.combat, {})

    sets.WS = {
        head=gear.ambuscade.nashira.head,
        neck="Sanctity Necklace",
        ear1="Mache Earring",
        ear2="Mache Earring",
        body=gear.ambuscade.nashira.body,
        hands=gear.ambuscade.nashira.hands,
        ring1="Ramuh Ring +1",
        ring2="Ramuh Ring +1",
        back=gear.jse.capes.ambuscade.smn.ws,
        waist="Windbuffet Belt +1",
        legs=gear.ambuscade.nashira.legs,
        feet=gear.ambuscade.nashira.feet
    }

    send_command('input /macro book 14;wait .1;input /macro set 1')
end

function job_aftercast(spell)
    if spell and spell.type == "SummonerPact" then
        idle(1)
    elseif spell and spell.name == "Release" then
        base_aftercast(spell)
    else
        if pet.isvalid then
            idle()
        else
            base_aftercast(spell)
        end
    end
end

function idle(summoned)
    if pet.isvalid then
        if buffactive["Avatar's Favor"] then
            if sets.idle.favor[pet.name] then
                equip(sets.idle.favor[pet.name])
            else
                equip(sets.idle.favor)
            end
        else
            if sets.idle.perp[pet.name] then
                equip(sets.idle.perp[pet.name])
            else
                equip(sets.idle.perp)
            end
        end
    else
        if summoned then
            equip(sets.idle.perp)
        end
    end
end
