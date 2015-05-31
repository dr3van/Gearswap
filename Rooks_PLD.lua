-- PLD
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1)

    sets.weapons = {}
    sets.weapons['Excalibur'] = { main="Excalibur" }
    sets.weapons['Aegis'] = { sub="Aegis" }
    sets.weapons['Ochain'] = { sub="Ochain" }
    sets.weapons['Dagger'] = { main="Eminent Dagger" }

    sets.idle = {
        ammo="Angha Gem",
        head="Rev. Coronet +1",
        neck="Creed Collar",
        ear1="Hearty Earring",
        ear2="Ethereal Earring",
        body="Cab. Surcoat +1",
        hands=gear.yorium.hands.idle,
        ring1="Sheltered Ring",
        ring2="Paguroidea Ring",
        back="Shadow Mantle",
        waist="Flume Belt +1",
        legs="Blood Cuisses",
        feet=gear.acro.feet.tp
    }
    sets.idle.regen = set_combine(sets.idle, {})
    sets.idle.DT = set_combine(sets.idle, {
        neck="Twilight Torque",
        ring1=gear.ring.MDTRing,
        ring2=gear.ring.dt_right,
        back="Mollusca Mantle",
        waist="Nierenschutz",
        legs="Rev. Breeches"

    })
    sets.idle.PDT = set_combine(sets.idle.DT, {
        waist="Flume Belt +1"
    })
    sets.idle.MDT = set_combine(sets.idle.DT, {
    })
    sets.resting = set_combine(sets.idle, {})

    sets.twilight = {
        head="Twilight Helm",
        body="Twilight Mail"
    }

    sets.precast.FC = {
        head="Creed Armet +2",
        ear1="Loquac. Earring",
        legs="Blood Cuisses"
    }

    sets.combat = {
        ammo="Jukukik Feather",
        head="Yaoyotl Helm",
        neck="Asperity Necklace",
        ear1="Steelflash Earring",
        ear2="Bladeborn Earring",
        body=gear.acro.body.tp,
        hands=gear.acro.hands.tp,
        ring1="Rajas Ring",
        ring2="K'ayres Ring",
        back="Letalis Mantle",
        waist="Cetl Belt",
        legs=gear.acro.legs.tp,
        feet=gear.acro.feet.tp
    }
    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat.midacc, {})
    sets.combat.defensive = set_combine(sets.combat, {
        ear1="Brutal Earring",
        ear2="Ethereal Earring",
        body="Cab. Surcoat +1",
        hands="Cab. Gauntlets",
        legs="Cab. Breeches",
    })

    -- WS sets

    sets.WS = {
        ammo="Jukukik Feather",
        head="Yaoyotl Helm",
        neck="Fotia Gorget",
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        body=gear.acro.body.tp,
        hands=gear.acro.hands.tp,
        ring1="Rajas Ring",
        ring2="Ifrit Ring",
        back="Buquwik Cape",
        waist="Fotia Belt",
        legs=gear.acro.legs.tp,
        feet=gear.acro.feet.tp
    }


    sets.WS['Knights of Round'] = set_combine(sets.WS, {
        ear1="Steelflash Earring",
        ear2="Bladeborn Earring",
    })

    sets.WS.Requiescat = set_combine(sets.WS, {
        body="Miki. Breastplate",
        ring1="Aquasoul Ring",
        ring2="Aquasoul Ring",
        back="Atheling Mantle"
    })

    sets.WS['Aeolian Edge'] = set_combine(sets.WS, {
        ear1="Novio Earring",
        ear2="Hecate's Earring",
        ring1="Shiva Ring",
        ring2="Shiva Ring",
        back="Toro Cape"
    })

    sets.enmity = {
        ammo="Iron Gobbet",
        head="Bahamut's Mask",
        neck="Invidia Torque",
        body="Creed Cuirass +2",
        hands=gear.yorium.hands.idle,
        ring2="Provocare Ring",
        back="Fierabras's Mantle",
        waist="Creed Baudrier",
        legs="Cab. Breeches",
        feet="Creed Sabatons +2"
    }

    sets.JA = set_combine(sets.enmity, {})
    sets.JA['Invincible'] = set_combine(sets.enmity, { legs="Cab. Breeches" })
    sets.JA['Holy Circle'] = set_combine(sets.enmity, { feet="Glt. Leggings +1" })
    sets.JA['Shield Bash'] = set_combine(sets.enmity, { hands="Cab. Gauntlets" })
    sets.JA['Sentinel'] = set_combine(sets.enmity, { feet="Cab. Leggings" })
    sets.JA['Cover'] = set_combine(sets.enmity, { body="Cab. Surcoat +1" })
    sets.JA['Rampart'] = set_combine(sets.enmity, { head="Valor Coronet" })
    sets.JA['Fealty'] = set_combine(sets.enmity, { body="Cab. Surcoat +1" })
    sets.JA['Chivalry'] = set_combine(sets.enmity, { hands="Cab. Gauntlets" })
    sets.JA['Divine Emblem'] = set_combine(sets.enmity, { feet="Creed Sabatons +2" })
    sets.JA['Sepulcher'] = set_combine(sets.enmity, {})
    sets.JA['Palisade'] = set_combine(sets.enmity, {})
    sets.JA['Intervene'] = set_combine(sets.enmity, {})

    -- Subjob stuff
    sets.JA['Provoke'] = set_combine(sets.enmity, {})
    sets.JA['Animated Flourish'] = set_combine(sets.enmity, {})


    sets.base_magic_accuracy = {}
    sets.base_magic_recast = {}

    sets.magic_accuracy = {}
    sets.magic_recast = {}

    sets.midcast['Healing Magic'] = {
        head="Valor Coronet",
        neck="Phalaina Locket",
        body="Cab. Surcoat +1",
        hands="Cab. Gauntlets",
        ring1="K'ayres Ring",
        ring2="Meridian Ring",
        back="Fierabras's Mantle",
        waist="Ocean Sash",
        legs="Cab. Breeches",
        feet="Cab. Leggings"
    }

    sets.midcast['Enhancing Magic'] = {
        neck="Colossus's Torque",
        legs="Rev. Breeches"
    }

    sets.midcast['Flash'] = set_combine(sets.enmity, {
        body="Cab. Surcoat +1"
    })

    send_command('input /macro book 1;wait .1;input /macro set 1')
end