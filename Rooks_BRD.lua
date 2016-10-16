-- BRD
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(0, 1)

	sets.idle = {
        main=gear.weapons.mage.macc,
        sub="Bugard Strap +1",
        range="Gjallarhorn",
		head=gear.telchine.head,
		neck=gear.neck.dt,
        ear1=gear.ears.idle_left,
        ear2=gear.ears.idle_right,
        body=gear.body.mage_idle,
        hands=gear.lustratio.hands.A,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back=gear.waist.mage_idle,
        waist=gear.waist.pdt,
        legs=gear.telchine.legs,
        feet="Aoidos' Cothrn. +2"
	}
    sets.idle.base = set_combine(sets.idle, {})
    sets.idle.regen = set_combine(sets.idle, {
        neck=gear.neck.regen,
        ring1=gear.ring.regen_left,
        ring2=gear.ring.regen_right,
    })
    sets.idle.DT = set_combine(sets.idle, {})
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle.DT, {
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

	sets.precast = {}
	sets.precast.FC = {
        head="Nahtirah Hat",
        ear2=gear.ears.fc_right,
        hands="Repartie Gloves",
        back="Swith Cape",
        waist="Witful Belt",
        legs="Orvail Pants +1",
        feet="Chelona Boots +1"
	}
    sets.precast.FC['Singing'] = set_combine(sets.precast.FC, {
        main="Felibre's Dague",
        head="Aoidos' Calot +2",
        neck="Aoidos' Matinee",
        hands="Schellenband",
        legs="Gendewitha Spats",
        feet=gear.telchine.feet
    })

    sets.combat = {
        head=gear.telchine.head,
        neck=gear.neck.tp,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.telchine.body,
        hands=gear.telchine.hands,
        ring1="Rajas Ring",
        ring2="K'ayres Ring",
        back="Atheling Mantle",
        waist="Cetl Belt",
        legs=gear.telchine.legs,
        feet=gear.telchine.feet
    }

	sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat, {})
    sets.combat.defensive = set_combine(sets.combat, {})

    -- WS sets

    sets.WS = {
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

    -- Song specific
    sets.midcast['Singing'] = {
        head="Aoidos' Calot +2",
        neck=gear.neck.dt,
        ear1=gear.ears.idle_left,
        ear2=gear.ears.idle_right,
        body="Aoidos' Hngrln. +2",
        hands="Ad. Mnchtte. +2",
        ring1=gear.ring.MDTRing,
        ring2=gear.ring.BDTRing,
        back="Umbra Cape",
        waist="Pya'ekue Belt +1",
        legs="Aoidos' Rhing. +2",
        feet="Aoidos' Cothrn. +2"
    }

    sets.midcast.songs = {}

    sets.midcast.songs.buff = set_combine(sets.midcast['Singing'], {})
    sets.midcast.songs.debuff = set_combine(sets.midcast['Singing'], {})

    sets.midcast.songs['Requiem'] = set_combine(sets.midcast.debuff, {})
    sets.midcast.songs['Foe Requiem'] = set_combine(sets.midcast.songs['Requiem'], {})
    sets.midcast.songs['Foe Requiem II'] = set_combine(sets.midcast.songs['Requiem'], {})
    sets.midcast.songs['Foe Requiem III'] = set_combine(sets.midcast.songs['Requiem'], {})
    sets.midcast.songs['Foe Requiem IV'] = set_combine(sets.midcast.songs['Requiem'], {})
    sets.midcast.songs['Foe Requiem V'] = set_combine(sets.midcast.songs['Requiem'], {})
    sets.midcast.songs['Foe Requiem VI'] = set_combine(sets.midcast.songs['Requiem'], {})
    sets.midcast.songs['Foe Requiem VII'] = set_combine(sets.midcast.songs['Requiem'], {})

    sets.midcast.songs['Lullaby'] = set_combine(sets.midcast.debuff, {})
    sets.midcast.songs['Foe Lullaby'] = set_combine(sets.midcast.songs['Lullaby'], {})
    sets.midcast.songs['Foe Lullaby II'] = set_combine(sets.midcast.songs['Lullaby'], {})
    sets.midcast.songs['Horde Lullaby'] = set_combine(sets.midcast.songs['Lullaby'], {})
    sets.midcast.songs['Horde Lullaby II'] = set_combine(sets.midcast.songs['Lullaby'], {})

    sets.midcast.songs['Elegy'] = set_combine(sets.midcast.debuff, {})
    sets.midcast.songs['Battlefield Elegy'] = set_combine(sets.midcast.songs['Elegy'], {})
    sets.midcast.songs['Carnage'] = set_combine(sets.midcast.songs['Elegy'], {})

    sets.midcast.songs['Threnody'] = set_combine(sets.midcast.debuff, {})
    sets.midcast.songs['Fire Threnody'] = set_combine(sets.midcast.songs['Threnody'], {})
    sets.midcast.songs['Ice Threnody'] = set_combine(sets.midcast.songs['Threnody'], {})
    sets.midcast.songs['Wind Threnody'] = set_combine(sets.midcast.songs['Threnody'], {})
    sets.midcast.songs['Earth Threnody'] = set_combine(sets.midcast.songs['Threnody'], {})
    sets.midcast.songs['Ltng. Threnody'] = set_combine(sets.midcast.songs['Threnody'], {})
    sets.midcast.songs['Water Threnody'] = set_combine(sets.midcast.songs['Threnody'], {})
    sets.midcast.songs['Light Threnody'] = set_combine(sets.midcast.songs['Threnody'], {})
    sets.midcast.songs['Dark Threnody'] = set_combine(sets.midcast.songs['Threnody'], {})
    sets.midcast.songs['Fire Threnody II'] = set_combine(sets.midcast.songs['Threnody'], {})
    sets.midcast.songs['Ice Threnody II'] = set_combine(sets.midcast.songs['Threnody'], {})
    sets.midcast.songs['Wind Threnody II'] = set_combine(sets.midcast.songs['Threnody'], {})
    sets.midcast.songs['Earth Threnody II'] = set_combine(sets.midcast.songs['Threnody'], {})
    sets.midcast.songs['Ltng. Threnody II'] = set_combine(sets.midcast.songs['Threnody'], {})
    sets.midcast.songs['Water Threnody II'] = set_combine(sets.midcast.songs['Threnody'], {})
    sets.midcast.songs['Light Threnody II'] = set_combine(sets.midcast.songs['Threnody'], {})
    sets.midcast.songs['Dark Threnody II'] = set_combine(sets.midcast.songs['Threnody'], {})

    sets.midcast.songs['Finale'] = set_combine(sets.midcast.debuff, {})
    sets.midcast.songs['Magic Finale'] = set_combine(sets.midcast.songs['Finale'], {})

    sets.midcast.songs['Nocturne'] = set_combine(sets.midcast.debuff, {})
    sets.midcast.songs['Pining Nocturne'] = set_combine(sets.midcast.songs['Nocturne'], {})

    sets.midcast.songs['Virelai'] = set_combine(sets.midcast.debuff, {})
    sets.midcast.songs["Maiden's Virelai"] = set_combine(sets.midcast.songs['Virelai'], {})


    sets.midcast.songs['Paeon'] = set_combine(sets.midcast.buff, {})
    sets.midcast.songs["Army's Paeon"] = set_combine(sets.midcast.songs['Paeon'], {})
    sets.midcast.songs["Army's Paeon II"] = set_combine(sets.midcast.songs['Paeon'], {})
    sets.midcast.songs["Army's Paeon III"] = set_combine(sets.midcast.songs['Paeon'], {})
    sets.midcast.songs["Army's Paeon IV"] = set_combine(sets.midcast.songs['Paeon'], {})
    sets.midcast.songs["Army's Paeon V"] = set_combine(sets.midcast.songs['Paeon'], {})
    sets.midcast.songs["Army's Paeon VI"] = set_combine(sets.midcast.songs['Paeon'], {})

    sets.midcast.songs['Ballad'] = set_combine(sets.midcast.buff, {})
    sets.midcast.songs["Mage's Ballad"] = set_combine(sets.midcast.songs['Ballad'], {})
    sets.midcast.songs["Mage's Ballad II"] = set_combine(sets.midcast.songs['Ballad'], {})
    sets.midcast.songs["Mage's Ballad III"] = set_combine(sets.midcast.songs['Ballad'], {})

    sets.midcast.songs['Minne'] = set_combine(sets.midcast.buff, {})
    sets.midcast.songs["Knight's Minne"] = set_combine(sets.midcast.songs['Minne'], {})
    sets.midcast.songs["Knight's Minne II"] = set_combine(sets.midcast.songs['Minne'], {})
    sets.midcast.songs["Knight's Minne III"] = set_combine(sets.midcast.songs['Minne'], {})
    sets.midcast.songs["Knight's Minne IV"] = set_combine(sets.midcast.songs['Minne'], {})
    sets.midcast.songs["Knight's Minne V"] = set_combine(sets.midcast.songs['Minne'], {})

    sets.midcast.songs['Minuet'] = set_combine(sets.midcast.buff, {})
    sets.midcast.songs['Valor Minuet'] = set_combine(sets.midcast.songs['Minuet'], {})
    sets.midcast.songs['Valor Minuet II'] = set_combine(sets.midcast.songs['Minuet'], {})
    sets.midcast.songs['Valor Minuet III'] = set_combine(sets.midcast.songs['Minuet'], {})
    sets.midcast.songs['Valor Minuet IV'] = set_combine(sets.midcast.songs['Minuet'], {})
    sets.midcast.songs['Valor Minuet V'] = set_combine(sets.midcast.songs['Minuet'], {})

    sets.midcast.songs['Madrigal'] = set_combine(sets.midcast.buff, {})
    sets.midcast.songs['Sword Madrigal'] = set_combine(sets.midcast.songs['Madrigal'], {})
    sets.midcast.songs['Blade Madrigal'] = set_combine(sets.midcast.songs['Madrigal'], {})

    sets.midcast.songs['Prelude'] = set_combine(sets.midcast.buff, {})
    sets.midcast.songs["Hunter's Prelude"] = set_combine(sets.midcast.songs['Prelude'], {})
    sets.midcast.songs["Archer's Prelude"] = set_combine(sets.midcast.songs['Prelude'], {})

    sets.midcast.songs['Mambo'] = set_combine(sets.midcast.buff, {})
    sets.midcast.songs['Sheepfoe Mambo'] = set_combine(sets.midcast.songs['Mambo'], {})
    sets.midcast.songs['Dragonfoe Mambo'] = set_combine(sets.midcast.songs['Mambo'], {})

    sets.midcast.songs['March'] = set_combine(sets.midcast.buff, {})
    sets.midcast.songs['Advancing March'] = set_combine(sets.midcast.songs['March'], {})
    sets.midcast.songs['Victory March'] = set_combine(sets.midcast.songs['March'], {})

    sets.midcast.songs['Etude'] = set_combine(sets.midcast.buff, {})
    sets.midcast.songs['Sinewy Etude'] = set_combine(sets.midcast.songs['Etude'], {})
    sets.midcast.songs['Dextrous Etude'] = set_combine(sets.midcast.songs['Etude'], {})
    sets.midcast.songs['Vivacious Etude'] = set_combine(sets.midcast.songs['Etude'], {})
    sets.midcast.songs['Quick Etude'] = set_combine(sets.midcast.songs['Etude'], {})
    sets.midcast.songs['Learned Etude'] = set_combine(sets.midcast.songs['Etude'], {})
    sets.midcast.songs['Spirited Etude'] = set_combine(sets.midcast.songs['Etude'], {})
    sets.midcast.songs['Enchanting Etude'] = set_combine(sets.midcast.songs['Etude'], {})
    sets.midcast.songs['Herculean Etude'] = set_combine(sets.midcast.songs['Etude'], {})
    sets.midcast.songs['Uncanny Etude'] = set_combine(sets.midcast.songs['Etude'], {})
    sets.midcast.songs['Vital Etude'] = set_combine(sets.midcast.songs['Etude'], {})
    sets.midcast.songs['Swift Etude'] = set_combine(sets.midcast.songs['Etude'], {})
    sets.midcast.songs['Sage Etude'] = set_combine(sets.midcast.songs['Etude'], {})
    sets.midcast.songs['Logical Etude'] = set_combine(sets.midcast.songs['Etude'], {})
    sets.midcast.songs['Bewitching Etude'] = set_combine(sets.midcast.songs['Etude'], {})

    sets.midcast.songs['Carol'] = set_combine(sets.midcast.buff, {})
    sets.midcast.songs['Fire Carol'] = set_combine(sets.midcast.songs['Carol'], {})
    sets.midcast.songs['Ice Carol'] = set_combine(sets.midcast.songs['Carol'], {})
    sets.midcast.songs['Wind Carol'] = set_combine(sets.midcast.songs['Carol'], {})
    sets.midcast.songs['Earth Carol'] = set_combine(sets.midcast.songs['Carol'], {})
    sets.midcast.songs['Lightning Carol'] = set_combine(sets.midcast.songs['Carol'], {})
    sets.midcast.songs['Water Carol'] = set_combine(sets.midcast.songs['Carol'], {})
    sets.midcast.songs['Light Carol'] = set_combine(sets.midcast.songs['Carol'], {})
    sets.midcast.songs['Dark Carol'] = set_combine(sets.midcast.songs['Carol'], {})
    sets.midcast.songs['Fire Carol II'] = set_combine(sets.midcast.songs['Carol'], {})
    sets.midcast.songs['Ice Carol II'] = set_combine(sets.midcast.songs['Carol'], {})
    sets.midcast.songs['Wind Carol II'] = set_combine(sets.midcast.songs['Carol'], {})
    sets.midcast.songs['Earth Carol II'] = set_combine(sets.midcast.songs['Carol'], {})
    sets.midcast.songs['Lightning Carol II'] = set_combine(sets.midcast.songs['Carol'], {})
    sets.midcast.songs['Water Carol II'] = set_combine(sets.midcast.songs['Carol'], {})
    sets.midcast.songs['Light Carol II'] = set_combine(sets.midcast.songs['Carol'], {})
    sets.midcast.songs['Dark Carol II'] = set_combine(sets.midcast.songs['Carol'], {})

    sets.midcast.songs['Mazurka'] = set_combine(sets.midcast.buff, {})
    sets.midcast.songs['Raptor Mazurka'] = set_combine(sets.midcast.songs['Mazurka'], {})
    sets.midcast.songs['Chocobo Mazurka'] = set_combine(sets.midcast.songs['Mazurka'], {})

     sets.midcast.songs['Fowl Aubade'] = set_combine(sets.midcast.buff, {})
    sets.midcast.songs['Herb Pastoral'] = set_combine(sets.midcast.buff, {})
    sets.midcast.songs['Shining Fantasia'] = set_combine(sets.midcast.buff, {})
    sets.midcast.songs['Gold Capriccio'] = set_combine(sets.midcast.buff, {})
    sets.midcast.songs['Warding Round'] = set_combine(sets.midcast.buff, {})
    sets.midcast.songs["Scop's Operetta"] = set_combine(sets.midcast.buff, {})
    sets.midcast.songs["Puppet's Operetta"] = set_combine(sets.midcast.buff, {})
    sets.midcast.songs["Sentinel's Scherzo"] = set_combine(sets.midcast.buff, {})
    sets.midcast.songs["Goddess's Hymnus"] = set_combine(sets.midcast.buff, {})

    send_command('input /macro book 13;wait .1;input /macro set 1')
end