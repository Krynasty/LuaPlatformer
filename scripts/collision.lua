function checkCollisions(dt)
	-- When it hits the ground, it reverts back to the bottom of the 
	if playerY > isGrounded then
		ySpeed = 0
	elseif  
    	playerX < platform.x + platform.w and
        playerX + platform.w > platform.x and
        playerY < platform.y + platform.h and
        playerY + platform.h > platform.y then
    	
    	ySpeed = 0
    end

end


