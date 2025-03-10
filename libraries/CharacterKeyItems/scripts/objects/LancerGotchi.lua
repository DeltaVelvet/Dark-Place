local LancerGotchi, super = Class(Object)

function LancerGotchi:init(x, y)
    super.init(self, x, y)
    self.parallax_x = 0
    self.parallax_y = 0
	
    self.lancer = ActorSprite("lancergotchi")
    self.lancer:setScale(2)
    self:addChild(self.lancer)

    self.movecon = 4
    self.con = 0

    self.minx = 100 + x 
    self.maxx = 400 + x 
    self.maxy = 280 + y

    self.x = (self.minx + 150)
    self.y = self.maxy

    self.sleeptimer = 0
    self.remmovecon = 0
	
    self.timer = Timer()
    self:addChild(self.timer)
	
    self.timer:every(3, function()
        self.remmovecon = self.movecon
        self.movecon = math.floor(Utils.random(5))
        if self.movecon == self.remmovecon then
            self.movecon = math.floor(Utils.random(5))
        end
        self.con = 0
        if self.sleeptimer >= 900 then
            self.movecon = 10
            self.lancer:setAnimation("sleep")
        end
    end)
end

function LancerGotchi:update()
    super.update(self)

    self.sleeptimer = self.sleeptimer + DTMULT

    if self.movecon == 0 or self.movecon == 1 then
        if self.con == 0 then
            if self.movecon == 0 then
                ---@diagnostic disable-next-line: missing-fields
                self:setPhysics({
                    speed_x = -4,
                })
                self.lancer:setSprite("walk/left")
			end
            if self.movecon == 1 then
                ---@diagnostic disable-next-line: missing-fields
                self:setPhysics({
                    speed_x = 4,
                })
                self.lancer:setSprite("walk/right")
			end
            self.con = 1
            self.contimer = 0
            self.contimermax = 30
            self.flipchance = Utils.random(2)
            if self.flipchance == 2 then
                self.lancer:setAnimation(Utils.pick{"walk/down", "up_flip"})
			end
		end
        if self.con == 1 then
            self.stop = 0
            self.contimer = self.contimer + DTMULT
            if self.x < self.minx then
                self.stop = 1
                self.lancer:setSprite("walk/down")
            elseif self.x > self.maxx then
                self.stop = 1
                self.lancer:setSprite("walk/down")
            elseif self.contimer > self.contimermax then
                self.stop = 1
                self.lancer:setSprite("walk/down")
            end
            if self.stop == 1 then
                ---@diagnostic disable-next-line: missing-fields
                self:setPhysics({
                    speed_x = 0,
                })
                self.lancer:setAnimation(Utils.pick{"walk/down", "walk/down", "up_flip"})
                self.con = 2
			end
		end
	end
    if self.movecon == 2 or self.movecon == 3 then
        if self.con == 0 then
            if self.movecon == 3 then
                ---@diagnostic disable-next-line: missing-fields
                self:setPhysics({
                    speed_y = -8,
                    gravity = 1,
                    speed_x = love.math.random(-4, 4),
                })
                self.y = self.y - 4 * DTMULT
            end
            self.spincount = 0
            self.spintimer = 0
            self.spinmax = 8
            self.con = 1
            self.lancer:setSprite("walk/down")
        end
        if self.con == 1 then
            if self.y >= self.maxy then
                ---@diagnostic disable-next-line: missing-fields
                self:setPhysics({
                    speed_y = 0,
                    gravity = 0,
                })
                self.y = self.maxy
            elseif self.x <= self.minx then
                self.y = self.y + 4 * DTMULT
                self.physics.speed_x = self.physics.speed_x + DTMULT
            elseif self.x >= self.maxx then
                self.y = self.y - 4 * DTMULT
                self.physics.speed_x = self.physics.speed_x - DTMULT
            end
            self.spintimer = self.spintimer + DTMULT
            if self.spintimer >= 3 then
                self.lancer:setSprite("walk")
                if self.lancer.facing == "down" then
                    self.lancer:setFacing("left")
                elseif self.lancer.facing == "left" then
                    self.lancer:setFacing("up")
                elseif self.lancer.facing == "up" then
                    self.lancer:setFacing("right")
                elseif self.lancer.facing == "right" then
                    self.lancer:setFacing("down")
                end
                self.spincount = self.spincount + DTMULT
                self.spintimer = 0
            end
            if self.spincount >= 8 then
                ---@diagnostic disable-next-line: missing-fields
                self:setPhysics({
                    speed_x = 0,
                    speed_y = 0,
                    gravity = 0,
                })
                self.con = 2
                self.y = self.maxy
            end
        end
    end
    if self.movecon == 4 then
        if self.con == 0 then
            self.lancer:setAnimation("wave")
            self.wavetimer = 0
            self.con = 1
            ---@diagnostic disable-next-line: missing-fields
            self:setPhysics({
                speed = 0,
                speed_x = 0,
                gravity = 0,
            })
        end
        if self.con == 1 then
            self.wavetimer = self.wavetimer + DTMULT
            if self.wavetimer >= 40 then
                self.con = 2
            end
        end
    end
    if self.movecon == 10 then
        ---@diagnostic disable-next-line: missing-fields
        self:setPhysics({
            speed = 0,
            speed_x = 0,
            gravity = 0,
        })
    end
    if self.movecon == 11 then
        self.lancer:setAnimation("stone")
        ---@diagnostic disable-next-line: missing-fields
        self:setPhysics({
            speed_x = 0,
            gravity = 0,
        })
    end
end

return LancerGotchi