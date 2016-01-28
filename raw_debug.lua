-- Debug!

function get_sets()
end

function precast(spell)
   windower.add_to_chat(123, "precast")
    if(spell.type) then
        windower.add_to_chat(123, "--- "..spell.type)
	else
        windower.add_to_chat(123, "--- No type")
    end
    if(spell.skill) then
        windower.add_to_chat(123, "--- "..spell.skill)
	else
        windower.add_to_chat(123, "--- No skill")
    end
    if(spell.name) then
        windower.add_to_chat(123, "--- "..spell.name)
	else
        windower.add_to_chat(123, "--- No name")
    end
   windower.add_to_chat(123, "precast")
end
function midcast(spell)
   windower.add_to_chat(123, "midcast")
    if(spell.type) then
        windower.add_to_chat(123, "--- "..spell.type)
	else
        windower.add_to_chat(123, "--- No type")
    end
    if(spell.skill) then
        windower.add_to_chat(123, "--- "..spell.skill)
	else
        windower.add_to_chat(123, "--- No skill")
    end
    if(spell.name) then
        windower.add_to_chat(123, "--- "..spell.name)
	else
        windower.add_to_chat(123, "--- No name")
    end
   windower.add_to_chat(123, "midcast")
end

function aftercast(spell)
    windower.add_to_chat(123, "aftercast")
    if(spell.type) then
        windower.add_to_chat(123, "--- "..spell.type)
	else
        windower.add_to_chat(123, "--- No type")
    end
    if(spell.skill) then
        windower.add_to_chat(123, "--- "..spell.skill)
	else
        windower.add_to_chat(123, "--- No skill")
    end
    if(spell.name) then
        windower.add_to_chat(123, "--- "..spell.name)
	else
        windower.add_to_chat(123, "--- No name")
    end
   windower.add_to_chat(123, "aftercast")
end

function pet_midcast(spell)
   windower.add_to_chat(123, "pet_midcast")
    if(spell.type) then
        windower.add_to_chat(123, "--- "..spell.type)
	else
        windower.add_to_chat(123, "--- No type")
    end
    if(spell.skill) then
        windower.add_to_chat(123, "--- "..spell.skill)
	else
        windower.add_to_chat(123, "--- No skill")
    end
    if(spell.name) then
        windower.add_to_chat(123, "--- "..spell.name)
	else
        windower.add_to_chat(123, "--- No name")
    end
   windower.add_to_chat(123, "pet_midcast")
end

function pet_aftercast(spell)
   windower.add_to_chat(123, "pet_aftercast")
    if(spell.type) then
        windower.add_to_chat(123, "--- "..spell.type)
	else
        windower.add_to_chat(123, "--- No type")
    end
    if(spell.skill) then
        windower.add_to_chat(123, "--- "..spell.skill)
	else
        windower.add_to_chat(123, "--- No skill")
    end
    if(spell.name) then
        windower.add_to_chat(123, "--- "..spell.name)
	else
        windower.add_to_chat(123, "--- No name")
    end
   windower.add_to_chat(123, "pet_aftercast")
end
