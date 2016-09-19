-- COR
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1, 1)

    send_command('bind f8 gs c toggle luzaf')
    luzaf_mode = 0

    bullets = {}
    bullets['Ranged Attack'] = "Adlivun Bullet"
    bullets['Quick Draw'] = "Adlivun Bullet"

    sets.idle = {
        head="Whirlpool Mask",
        neck="Wiglen Gorget",
        ear1="Hearty Earring",
        ear2="Ethereal Earring",
        body="Espial Gambison",
        hands="Espial Bracers",
        ring1="Sheltered Ring",
        ring2="Paguroidea Ring",
        back="Shadow Mantle",
        waist="Flume Belt +1",
        legs="Blood Cuisses",
        feet="Espial Socks"
    }
    sets.idle.regen = set_combine(sets.idle, {})
    sets.idle.DT = set_combine(sets.idle, {})
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {})

    sets.JA = {}
    sets.JA.rolls = {}

    sets.JA.rolls["Caster's Roll"] = set_combine(sets.JA.rolls, {legs="Navarch's Culottes +2"})
    sets.JA.rolls["Courser's Roll"] = set_combine(sets.JA.rolls, {feet="Navarch's Bottes +2"})
    sets.JA.rolls["Blitzer's Roll"] = set_combine(sets.JA.rolls, {head="Navarch's Tricorne +2"})
    sets.JA.rolls["Tactician's Roll"] = set_combine(sets.JA.rolls, {body="Navarch's Frac +2"})
    sets.JA.rolls["Allies' Roll"] = set_combine(sets.JA.rolls, {hands="Navarch's Gants +2"})

    sets.precast = {}
    sets.precast.FC = {
        ear1="Loquac. Earring",
        legs="Blood Cuisses"
    }

    sets.combat = {
        head="Whirlpool Mask",
        neck="Asperity Necklace",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        body="Espial Gambison",
        hands="Espial Bracers",
        ring1="Rajas Ring",
        ring2="Epona's Ring",
        back="Atheling Mantle",
        waist="Hurch'lan Sash",
        legs="Espial Hose",
        feet="Espial Socks"
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat, {})
    sets.combat.defensive = set_combine(sets.combat, {})

    sets.snapshot = {
        hands="Manibozho Gloves",
        legs="Nahtirah Trousers"
    }
    sets.ranged = {}
    sets.ranged.DPS = set_combine(sets.ranged, {})
    sets.ranged.midacc = set_combine(sets.ranged, {})
    sets.ranged.highacc = set_combine(sets.ranged, {})
    sets.ranged.defensive = set_combine(sets.ranged, {})

    -- Quickdraw!
    sets.JA['Quick Draw'] = {
        head="Thaumas Hat",
        neck="Fotia Gorget",
        ear1="Novio Earring",
        ear2="Hecate's Earring",
        body="Espial Gambison",
        hands="Espial Bracers",
        ring1="Strendu Ring",
        ring2="Stormsoul Ring",
        back="Atheling Mantle",
        waist="Fotia Belt",
        legs="Nahtirah Trousers",
        feet="Espial Socks"
    }

    -- WS sets

    sets.WS = {
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

    -- Roll info
    rolls = {
        ["Corsair's Roll"] = {lucky=5, unlucky=9, bonus="Experience Points"},
        ["Ninja Roll"] = {lucky=4, unlucky=8, bonus="Evasion"},
        ["Hunter's Roll"] = {lucky=4, unlucky=8, bonus="Accuracy"},
        ["Chaos Roll"] = {lucky=4, unlucky=8, bonus="Attack"},
        ["Magus's Roll"] = {lucky=2, unlucky=6, bonus="Magic Defense"},
        ["Healer's Roll"] = {lucky=3, unlucky=7, bonus="Cure Potency Received"},
        ["Puppet Roll"] = {lucky=4, unlucky=8, bonus="Pet Magic Accuracy/Attack"},
        ["Choral Roll"] = {lucky=2, unlucky=6, bonus="Spell Interruption Rate"},
        ["Monk's Roll"] = {lucky=3, unlucky=7, bonus="Subtle Blow"},
        ["Beast Roll"] = {lucky=4, unlucky=8, bonus="Pet Attack"},
        ["Samurai Roll"] = {lucky=2, unlucky=6, bonus="Store TP"},
        ["Evoker's Roll"] = {lucky=5, unlucky=9, bonus="Refresh"},
        ["Rogue's Roll"] = {lucky=5, unlucky=9, bonus="Critical Hit Rate"},
        ["Warlock's Roll"] = {lucky=4, unlucky=8, bonus="Magic Accuracy"},
        ["Fighter's Roll"] = {lucky=5, unlucky=9, bonus="Double Attack Rate"},
        ["Drachen Roll"] = {lucky=3, unlucky=7, bonus="Pet Accuracy"},
        ["Gallant's Roll"] = {lucky=3, unlucky=7, bonus="Defense"},
        ["Wizard's Roll"] = {lucky=5, unlucky=9, bonus="Magic Attack"},
        ["Dancer's Roll"] = {lucky=3, unlucky=7, bonus="Regen"},
        ["Scholar's Roll"] = {lucky=2, unlucky=6, bonus="Conserve MP"},
        ["Bolter's Roll"] = {lucky=3, unlucky=9, bonus="Movement Speed"},
        ["Caster's Roll"] = {lucky=2, unlucky=7, bonus="Fast Cast"},
        ["Courser's Roll"] = {lucky=3, unlucky=9, bonus="Snapshot"},
        ["Blitzer's Roll"] = {lucky=4, unlucky=9, bonus="Attack Delay"},
        ["Tactician's Roll"] = {lucky=5, unlucky=8, bonus="Regain"},
        ["Allies's Roll"] = {lucky=3, unlucky=10, bonus="Skillchain Damage"},
        ["Miser's Roll"] = {lucky=5, unlucky=7, bonus="Save TP"},
        ["Companion's Roll"] = {lucky=2, unlucky=10, bonus="Pet Regain and Regen"},
        ["Avenger's Roll"] = {lucky=4, unlucky=8, bonus="Counter Rate"},
    }

    send_command('input /macro book 17;wait .1;input /macro set 5')
end

-- Mechanics

function job_precast(spell)
    if spell.type == 'CorsairRoll' or spell.english == 'Double-Up' then
        if sets.JA.rolls[spell.name] then
            if luzaf_mode == 1 then
                equip(set_combine(sets.JA.rolls[spell.name], { ring1="Luzaf's Ring" }))
            else
                equip(sets.JA.rolls[spell.name])
            end
        else
            if luzaf_mode == 1 then
                equip(set_combine(sets.JA.rolls, { ring1="Luzaf's Ring" }))
            else
                equip(sets.JA.rolls)
            end
        end
        -- Slightly redundant but we don't care about Double-Up
        if spell.type == 'CorsairRoll' then
            windower.add_to_chat(123, ""..spell.name.." ["..rolls[spell.name]['bonus'].."] :: Lucky: "..rolls[spell.name]['lucky'].." Unlucky: "..rolls[spell.name]['unlucky'].."")
        end
    else
        base_precast(spell)
    end
end


function job_self_command(command)
    if command == 'toggle luzaf' then
        if luzaf_mode == 1 then
            luzaf_mode = 0
            send_command('@input /echo Turning off Luzaf')
        elseif luzaf_mode == 0 then
            luzaf_mode = 1
            send_command('@input /echo Luzaf on')
        end
    else
        base_self_command(command)
    end
    aftercast()
end