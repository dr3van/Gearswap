-- RUN
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1, 1)

    sets.idle = {
        ammo="Iron Gobbet",
        head="Whirlpool Mask",
        neck="Wiglen Gorget",
        ear1="Hearty Earring",
        ear2="Ethereal Earring",
        body="Espial Gambison",
        hands=gear.taeon.hands.tp,
        ring1="Sheltered Ring",
        ring2="Paguroidea Ring",
        back="Shadow Mantle",
        waist="Flume Belt +1",
        legs="Blood Cuisses",
        feet=gear.taeon.feet.tp
    }

    sets.idle.regen = set_combine(sets.idle, {})
    sets.idle.DT = set_combine(sets.idle, {})
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {})

    sets.JA = {}
    sets.JA['Ignis'] = {}
    sets.JA['Gelus'] = {}
    sets.JA['Flabra'] = {}
    sets.JA['Tellus'] = {}
    sets.JA['Sulpor'] = {}
    sets.JA['Unda'] = {}
    sets.JA['Lux'] = {}
    sets.JA['Tenebrae'] = {}

    sets.JA['Lunge'] = {}
    sets.JA['Vallation'] = {}
    sets.JA['Swordplay'] = {}
    sets.JA['Pflug'] = {}
    sets.JA['Valiance'] = {}
    sets.JA['Embolden'] = {}
    sets.JA['Gambit'] = {}
    sets.JA['Liement'] = {}
    sets.JA['One For All'] = {}
    sets.JA['Elemental Sforzo'] = {}


    sets.combat = {
        ammo="Honed Tathlum",
        head="Whirlpool Mask",
        neck="Portus Collar",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        body="Espial Gambison",
        hands="Espial Bracers",
        ring1="Rajas Ring",
        ring2="Epona's Ring",
        back="Atheling Mantle",
        waist="Cetl Belt",
        legs="Espial Hose",
        feet="Espial Socks"
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {
        back="Letalis Mantle"
    })
    sets.combat.highacc = set_combine(sets.combat.midacc, {})
    sets.combat.defensive = set_combine(sets.combat, {})


    -- WS sets

    sets.WS = {
        ammo="Honed Tathlum",
        head="Whirlpool Mask",
        neck="Fotia Gorget",
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        body="Espial Gambison",
        hands="Espial Bracers",
        ring1="Rajas Ring",
        ring2="Epona's Ring",
        back="Atheling Mantle",
        waist="Fotia Belt",
        legs="Nahtirah Trousers",
        feet="Espial Socks"
    }

    send_command('input /macro book 12;wait .1;input /macro set 1')
end