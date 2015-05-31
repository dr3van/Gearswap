-- BST
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1)

    sets.idle = {
        ammo="Iron Gobbet",
        head="",
        neck="",
        ear1="Hearty Earring",
        ear2="Ethereal Earring",
        body="",
        hands="",
        ring1="Sheltered Ring",
        ring2="Paguroidea Ring",
        back="Shadow Mantle",
        waist="",
        legs="",
        feet=""
    }
    sets.idle.regen = set_combine(sets.idle, {})
    sets.idle.DT = set_combine(sets.idle, {})
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {})

    sets.JA = {}

    sets.precast = {}
    sets.precast.FC = {}

    sets.midcast = {}

    sets.combat = {
        ammo="",
        head="",
        neck="",
        ear1="",
        ear2="",
        body="",
        hands="",
        ring1="",
        ring2="",
        back="",
        waist="",
        legs="",
        feet=""
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat.midacc, {})
    sets.combat.defensive = set_combine(sets.combat, {})


    -- WS sets

    sets.WS = {
        ammo="",
        head="",
        neck="Fotia Gorget",
        ear1="",
        ear2="",
        body="",
        hands="",
        ring1="",
        ring2="",
        back="",
        waist="Fotia Belt",
        legs="",
        feet=""
    }

    send_command('input /macro book 1;wait .1;input /macro set 1')
end