-- Debug System options

local function replenish()
    if Game.battle then
        for _,party in ipairs(Game.battle.party) do
            party:heal(math.huge)
        end
    else
        for i, chara in ipairs(Game.party) do
            local prev_health = chara:getHealth()
            chara:heal(math.huge, false)
            local amount = chara:getHealth() - prev_health

            if not Game:isLight() and Game.world.healthbar then
                local actionbox = Game.world.healthbar.action_boxes[i]
                local text = HPText("+" .. amount, Game.world.healthbar.x + actionbox.x + 69, Game.world.healthbar.y + actionbox.y + 15)
                text.layer = WORLD_LAYERS["ui"] + 1
                Game.world:addChild(text)
            end
        end

        Assets.stopAndPlaySound("power")
    end
end

local function createAchListImage()
    local achievements_sorted = {}
    for _,v in pairs(Kristal.callEvent("getAchievements")) do
        table.insert(achievements_sorted, v)
    end
    table.sort(achievements_sorted, function(a,b) return a.index < b.index end)

    local progress_color_bg = {0.2,0.2,0.2}
    local progress_color = {1,1,1}

    local line_height = 90
    local ach_list_canvas = love.graphics.newCanvas(480, line_height * #achievements_sorted - 10)
    ach_list_canvas:setFilter("nearest", "nearest")

    Draw.setCanvas(ach_list_canvas)
    love.graphics.clear(0, 0, 0, 1)
    love.graphics.setFont(Assets.getFont("plain"))
    for i, ach in ipairs(achievements_sorted) do
        local rel_y = (i - 1) * line_height

        local frame = Assets.getTexture("achievements/frames/" .. ach.rarity)
        local hide = ach.hidden and not ach.earned
        local percent_color = hide and {0.5, 0.5, 0.5} or {1, 1, 1}
        local body_color = ach.earned and {1, 1, 1} or {0.5, 0.5, 0.5}
        local name = hide and "???" or ach.name
        local desc = (hide and ach.hint) and ach.hint or ach.desc

        love.graphics.draw(frame, 0, rel_y, 0, 2, 2)

        love.graphics.setColor(body_color)
        if not hide and ach.icon then
            -- TODO: implement animating
            local icon = Assets.getTexture(ach.icon)
            love.graphics.draw(icon, 8, rel_y + 8, 0, 2, 2)
        end
        love.graphics.print(name, 90, rel_y + 5)
        love.graphics.print(desc, 90, rel_y + 25)

        if type(ach.completion) == "number" then
            local completion_percent = ach.progress / ach.completion

            love.graphics.setColor(progress_color_bg)
            love.graphics.rectangle("fill", 90, rel_y + 60, 150, 12)

            love.graphics.setColor(progress_color)
            love.graphics.rectangle("fill", 90, rel_y + 60, (completion_percent * 150), 12)
            love.graphics.setColor(percent_color)
            local completion_percent_2 = completion_percent * 100
            love.graphics.print(tostring(completion_percent_2).."%", 245, rel_y + 57)
        end

        love.graphics.setColor(1, 1, 1)
    end
    Draw.setCanvas()

    local ach_list_im = ach_list_canvas:newImageData()
    local ach_list_im_file = "saves/"..Mod.info.id.."/ach_list_"..os.date("%Y-%m-%d-%H%M%S")..".png"
    local ach_list_im_file_full = love.filesystem.getSaveDirectory() .. "/" .. ach_list_im_file
    ach_list_im:encode("png", ach_list_im_file)
    ach_list_im:release()
    ach_list_canvas:release()

    Kristal.Console:log("Ach. list saved to " .. ach_list_im_file_full)
    love.system.openURL("file://"..ach_list_im_file_full)
end

---@param debug DebugSystem
function Mod:registerDebugOptions(debug)
    local in_game = function() return Kristal.getState() == Game end
    local in_battle = function() return in_game() and Game.state == "BATTLE" end
    local in_overworld = function() return in_game() and Game.state == "OVERWORLD" end
    local in_minigame = function() return in_game() and Game.state == "MINIGAME" end

    debug:registerOption("main", "Open Party Menu", "Change the current party.", function ()
        debug:enterMenu("party_menu", 1)
    end, in_overworld)

    debug:registerMenu("party_menu", "Which menu?")

    debug:registerOption("party_menu", "Normal", "Contains unlocked members.", function ()
        Game.world:openMenu(DarkPartyMenu())
        debug:returnMenu()
        debug:closeMenu()
    end, in_overworld)

    debug:registerOption("party_menu", "Full", "Contains ALL members.", function ()
        Game.world:openMenu(DarkPartyMenu(true))
        debug:returnMenu()
        debug:closeMenu()
    end, in_overworld)

    -- Stole this idea from ULCA Deltarune
    debug:registerOption("main", "Replenish Party", "Replenishes health.", replenish, in_game)

    debug:registerOption("main", "Create Ach. List Image", "Just for muscle flexing. LMAO", createAchListImage, in_game)
    debug:registerOption("main", "Start Minigame", "Start a minigame.", function() debug:enterMenu("minigame_menu", 0) end, in_overworld)

    debug:registerMenu("minigame_menu", "Minigame Select", "search")
    for id,_ in pairs(Mod.minigames) do
        debug:registerOption("minigame_menu", id, "Start this minigame.", function()
            Mod:startMinigame(id)
            debug:closeMenu()
        end)
    end

    debug:registerOption("main", "End Minigame", "End the current minigame.", function()
		Game.minigame:endMinigame()
		debug:closeMenu()
	end, in_minigame)

    debug:registerOption("main", "Funky", "Enter the  Funky  Menu.", function() debug:enterMenu("funky_menu", 1) end)

    debug:registerMenu("funky_menu", "Funky Menu")
    debug:registerOption("funky_menu", "Hi", "nice to meet u", function() print("hi") end)
    debug:registerOption("funky_menu", "Bye", "bye", function() print("bye") end)
    debug:registerOption("funky_menu", "Quit", "quit", function() print("quit") end)
    debug:registerOption("funky_menu", "Funker", function() return debug:appendBool("Toggle Funky Mode.....", Game.stage:getFX("funky_mode")) end, function()
        if Game.stage:getFX("funky_mode") then
            Game.stage:removeFX("funky_mode")
        else
            Game.stage:addFX(ShaderFX(Mod.wave_shader, {
                ["wave_sine"] = function() return Kristal.getTime() * 1200 end,
                ["wave_mag"] = 10,
                ["wave_height"] = 1,
                ["texsize"] = {SCREEN_WIDTH, SCREEN_HEIGHT}
            }), "funky_mode")
        end
    end)
end
