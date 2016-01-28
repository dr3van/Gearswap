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
        head=gear.jse.artifact.pld.head,
        neck="Creed Collar",
        ear1="Hearty Earring",
        ear2="Ethereal Earring",
        body=gear.jse.relic.pld.body,
        hands=gear.yorium.hands.idle,
        ring1="Sheltered Ring",
        ring2="Paguroidea Ring",
        back="Shadow Mantle",
        waist=gear.waist.pdt,
        legs="Blood Cuisses",
        feet=gear.souveran.feet.D
    }
    sets.idle.regen = set_combine(sets.idle, {})
    sets.idle.DT = set_combine(sets.idle, {
        neck="Twilight Torque",
        ring1=gear.ring.MDTRing,
        ring2=gear.ring.dt_right,
        back=gear.back.dt,
        waist="Nierenschutz",
        legs=gear.jse.artifact.pld.legs,
        feet=gear.souveran.feet.D

    })
    sets.idle.PDT = set_combine(sets.idle.DT, {
        waist=gear.waist.pdt
    })
    sets.idle.MDT = set_combine(sets.idle.DT, {
    })
    sets.resting = set_combine(sets.idle, {})

    sets.precast.FC = {
        ammo="Incantor Stone",
        head=gear.jse.empyrean.pld.head,
        ear1="Loquac. Earring",
        legs="Blood Cuisses"
    }

    sets.combat = {
        ammo="Jukukik Feather",
        head="Yaoyotl Helm",
        neck=gear.neck.sword,
        ear1="Steelflash Earring",
        ear2="Bladeborn Earring",
        body=gear.acro.body.tp,
        hands=gear.souveran.hands.A,
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
        body=gear.jse.relic.pld.body,
        hands=gear.souveran.hands.A,
        legs=gear.jse.relic.pld.legs,
        feet=gear.souveran.feet.D
    })

    -- WS sets

    sets.WS = {
        ammo="Jukukik Feather",
        head="Yaoyotl Helm",
        neck="Fotia Gorget",
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        body=gear.acro.body.tp,
        hands=gear.souveran.hands.A,
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
        body=gear.acro.body.tp,
        ring1="Aquasoul Ring",
        ring2="Aquasoul Ring",
        back="Atheling Mantle"
    })

    sets.WS['Aeolian Edge'] = set_combine(sets.WS, {
        ear1=gear.ears.mab_left,
        ear2=gear.ears.mab_right,
        ring1="Shiva Ring",
        ring2="Shiva Ring",
        back="Toro Cape"
    })

    sets.enmity = {
        ammo="Iron Gobbet",
        head="Bahamut's Mask",
        neck="Invidia Torque",
        body=gear.jse.empyrean.pld.body,
        hands=gear.yorium.hands.idle,
        ring2="Provocare Ring",
        back="Fierabras's Mantle",
        waist="Creed Baudrier",
        legs=gear.jse.relic.pld.legs,
        feet=gear.jse.empyrean.pld.feet
    }

    sets.JA = set_combine(sets.enmity, {})
    sets.JA['Invincible'] = set_combine(sets.enmity, { legs=gear.jse.relic.pld.legs })
    sets.JA['Holy Circle'] = set_combine(sets.enmity, { feet=gear.jse.artifact.pld.feet })
    sets.JA['Shield Bash'] = set_combine(sets.enmity, { hands=gear.jse.relic.pld.hands })
    sets.JA['Sentinel'] = set_combine(sets.enmity, { feet=gear.jse.relic.pld.feet })
    sets.JA['Cover'] = set_combine(sets.enmity, { body=gear.jse.relic.pld.body })
    sets.JA['Rampart'] = set_combine(sets.enmity, { head=gear.jse.relic.pld.head })
    sets.JA['Fealty'] = set_combine(sets.enmity, { body=gear.jse.relic.pld.body })
    sets.JA['Chivalry'] = set_combine(sets.enmity, { hands=gear.jse.relic.pld.hands })
    sets.JA['Divine Emblem'] = set_combine(sets.enmity, { feet=gear.jse.empyrean.pld.feet })
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
        head=gear.jse.relic.pld.head,
        neck="Phalaina Locket",
        body=gear.jse.relic.pld.body,
        hands=gear.jse.relic.pld.hands,
        ring1="K'ayres Ring",
        ring2="Meridian Ring",
        back="Fierabras's Mantle",
        waist="Ocean Sash",
        legs=gear.jse.relic.pld.legs,
        feet=gear.jse.relic.pld.feet
    }

    sets.midcast['Enhancing Magic'] = {
        neck="Colossus's Torque",
        legs=gear.jse.artifact.pld.legs
    }

    sets.midcast['Divine Magic'] = {
        body=gear.jse.artifact.pld.body,
        back=gear.back.divine
    }

    sets.midcast['Flash'] = set_combine(sets.enmity, {
        body=gear.jse.relic.pld.body
    })

    sets.midcast['Phalanx'] = set_combine(sets.midcast['Enhancing Magic'], {
        hands=gear.souveran.hands.A,
        back=gear.jsecapes.pld,
        feet=gear.souveran.feet.D,
    })


    send_command('input /macro book 1;wait .1;input /macro set 1')
end