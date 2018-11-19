-- setup the variables for the player 
function initPlayer()
--screen variables
	screenHeight = love.graphics.getHeight()
	screenWidth = love.graphics.getWidth()
--Player Vars
	playerHeight = 20
    playerWidth = 20
    playerX = (screenWidth / 2) - (playerWidth / 2)
    playerY = screenHeight - playerHeight  
    
    isGrounded = screenHeight - playerHeight		
    mSpeed = 6
    ySpeed = 0
    jumpHeight = 12
    gravity = 20
end

--Update the player 
function updatePlayer(dt)
-- Move left
	if love.keyboard.isDown("a") then
		if playerX >= 0 then
			playerX = playerX - (mSpeed)
		end
-- Move right
	elseif love.keyboard.isDown("d") then
		if playerX <= (screenWidth - playerWidth) then
			playerX = playerX + (mSpeed)
		end
	end

--Jump
	if love.keyboard.isDown("space") then
		if ySpeed == 0 then
			ySpeed = jumpHeight
		end
	end

--sets the speed of jumping and gravity
	if ySpeed ~= 1 then 
		playerY = playerY - ySpeed
		ySpeed = ySpeed - gravity * dt
	end		
end

--Draw the player.
function drawPlayer()
	love.graphics.setColor(255,255,255,255) -- this color code is White.
	love.graphics.rectangle("fill", playerX, playerY, playerWidth, playerHeight) 
end

