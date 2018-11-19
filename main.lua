-- built in love 0.10.2 in x64 architecture. 
-- platformer 2D
--requires
require "scripts/player"
require "scripts/platform"
require "scripts/collision"

-- instances


function love.load()
	--Load function for player
	initPlayer()
	initPlatform()

end

function love.draw()
	--The Player
	drawPlayer()
	drawPlatform()
end


function love.update(dt)
	--Player movement
	updatePlayer(dt)
	updatePlatform(dt)
	checkCollisions()
end


function love.keypressed(key)
  if debug and key == "escape" then
		love.event.push("quit")
	end
end


