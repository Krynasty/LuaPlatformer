platformer = {} -- an array of cuirrent platforms on the screen. 

function initPlatform(arg)
	image = love.graphics.newImage('/assets/platforms/white.png')
	platform = { h = 29, w = 80, x = 100, y = 400, img = image}
	 -- fill, x, y, width, height
	maxPlatformNum = 3
	isSpawned = True
end


function updatePlatform(dt)
	for i, platform in ipairs(platformer) do 
		platform.x = platform.x + 100
	end

	newPlatform = {x = platform.x, y =platform.y, image = image}
	table.insert(platformer, newPlatform)

	if not isSpawned then
		platformer = {}
	end

end

function drawPlatform()


	for i, platform in ipairs(platformer) do
		love.graphics.setColor(255,255,255,255) -- this color code is White.
		love.graphics.newImage('/assets/platforms/white.png')
	end
	-- love.graphics.rectangle("fill", playerX, playerY, playerWidth, playerHeight) 
end




