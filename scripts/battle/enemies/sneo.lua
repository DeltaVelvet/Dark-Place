local SpamtonNEO, super = Class(EnemyBattler)

function SpamtonNEO:init()
    super:init(self)

    self.name = "Spamton NEO"
    self:setActor("spamtonneo")

    self.max_health = 9618
    self.health = 9618
    self.attack = 13
    self.defense = 1
    self.gold = 0

    self.waves = {
        "sneo/flyingheads",
        "sneo/firework_pipis",
    }

	self.boss = true
    self.difficulty = 1

    self.dialogue_offset = {-45, -24}
    self.spare_points = 0
    self.service_mercy = 5
    self.check_count = 0

    self.text = {
        "* Spamton turns to the audience and laughs.",
        "* Spamton appeals to the audience with a festive jig!",
        "* Spamton begs to the audience,\nSpamton prays to the audience.",
        "* There is no audience.",
        "* Spamton begs the audience to stop taking the furniture out of his room.",
        "* The air crackles with freedom.",
        "* It pulls the strings and makes them ring.",
        "* The stage lights are shattered.",
        "* Smells like rotten glass."
    }

    self.text_override = nil

    self:registerAct("Snap")
    self:registerAct("SnapAll", "", "all")
end

function SpamtonNEO:update()
    super:update(self)
end

function SpamtonNEO:onAct(battler, name)
	if name == "Check" then
	    if battler.chara.id == "YOU" then
            Assets.playSound("check")
        end
	    if self.check_count == 0 then
		    self.check_count = self.check_count + 1
		    return {
		    "* SPAMTON NEO - YOU WON'T FIND\nHIGHER ATTACK AND DEFENSE\nANYWHERE ELSE!!!",
		    '* THE SMOOTH TASTE OF NEO "WAKE\nUP AND TASTE THE [color:red]PAIN[color:reset]".'
		    }
		else
		    return {
		    "* Spamton Neo - Still without a heart,[wait:5] and still his own worst invention.",
		    }
		end
	elseif name == "Snap" then
        local upcount = 0
        for i,battler in ipairs(Game.battle.party) do
            if not battler.is_down then
                upcount = upcount + 1
            end
        end

        if upcount == 1 then 
            self:addMercy(4)
        else
            self:addMercy(2)
        end
		
		self.sprite:snapString()
		Assets.playSound("damage")

		if battler.chara.id == "kris" then
            Game.battle:startActCutscene(function(cutscene)
                if upcount == 1 then 
                    cutscene:text("* Kris snapped desperately!")
                else
                    cutscene:text("* Kris snapped a wire!")
                end
            end)
            return
		elseif battler.chara.id == "susie" then
            Game.battle:startActCutscene(function(cutscene)
                if upcount == 1 then 
                    cutscene:text("* Susie snapped desperately!")
                else
                    cutscene:text("* Susie snapped a wire!")
                end
            end)
            return
        elseif battler.chara.id == "ralsei" then
            Game.battle:startActCutscene(function(cutscene)
                if upcount == 1 then 
                    cutscene:text("* Ralsei snapped desperately!")
                else
                    cutscene:text("* Ralsei snapped a wire!")
                end
            end)
            return
		else
            Game.battle:startActCutscene(function(cutscene)
                if upcount == 1 then 
                    cutscene:text("* "..battler.chara:getName().." snapped desperately!")
                else
                    cutscene:text("* "..battler.chara:getName().." snapped a wire!")
                end
            end)
            return
		end
	elseif name == "SnapAll" then
		self:addMercy(5)
		Assets.playSound("damage")
		self.sprite:snapStrings(4)
		return {
		"* Everyone snapped wires!"
		}
	end
	return super:onAct(self, battler, name)
end

function SpamtonNEO:getXAction(battler)
	return "Snap"
end

function SpamtonNEO:isXActionShort(battler)
    return false
end

return SpamtonNEO