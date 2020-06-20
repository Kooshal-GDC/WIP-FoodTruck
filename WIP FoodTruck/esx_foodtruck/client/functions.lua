-- Registration of decor properties
-- decor property for grill ( boolean )
DecorRegister("inUse", 2)
-- decor property for food ( boolean )
DecorRegister("pickedup", 2)

--[ functions for grill prop ]--

function registerCookingGrill(grill) 
	DecorSetBool(grill, "inUse", false)
end 

function isGrillUsable(grill)
    -- returns true/false
    return DecorExistOn(grill, "inUse")
end

function isGrillOccupied(grill)
    -- returns true/false
    return DecorGetBool(grill, "inUse")
end

function setGrillOccupied(grill, status)
    -- set inUse value to true/false
    DecorSetBool(grill, "inUse", status)
end

--[ functions for food prop ]--

function registerCookedFood(food)
    DecorSetBool(food, "pickedup", false)
end

function isFoodPickable(food)
    -- check if it has pickedup property
    if DecorExistOn(food, "pickedup") then
        -- check if it has not been picked up yet ( for debugging )
        if not isFoodPickedUp(food) then
            return true
        end
    end
    -- return false if cannot be picked up
    return false
end

function isFoodPickedUp(food)
    -- if not picked up return false by default
    return DecorGetBool(food, "pickedup")
end

function PickUpFood(food)
    -- change pickedup value and delete food
    DecorSetBool(food, "pickedup", true)
    SetEntityAsMissionEntity(food, false, true)
	DeleteObject(food)
end