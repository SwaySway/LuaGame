
--Variables
debug = true
x = 50
y = 50
speed = 500
height = nil
width = nil
red = 141
green = 223
blue = 253
picture = nil --Variable to store image from directory
backgroundlogo = nil
center_x = nil
center_y = nil


function love.load(arg)
	love.window.setMode(800, 600, {resizable=true, vsync=false, minwidth=400, minheight=300})
	picture = love.graphics.newImage("assets/pokeball.png")
	backgroundlogo = love.graphics.newImage("assets/pokelogo.png")
	-- height = love.graphics.getHeight()
	-- width = love.graphics.getWidth()
	--love.graphics.re
end

function love.update(dt)

	height = love.graphics.getHeight() - 90
	width = love.graphics.getWidth() - 90
	center_x = ((width)/2) - 220
	center_y = ((height)/2) - 110

	if love.keyboard.isDown("right") and x < width then
		x = x + (speed * dt)
	end
	if love.keyboard.isDown("left") and x > 0 then
		x = x - (speed * dt)
	end
	if love.keyboard.isDown("up") and y > 0 then
		y = y - (speed * dt)
	end
	if love.keyboard.isDown("down") and y < height then
		y = y + (speed * dt)
	end



end


function love.draw(dt)
love.graphics.setBackgroundColor( red, green, blue )
love.graphics.print({"Height: "..height.." ","Width: "..width.." ","x:"..x.." ","y:"..y," center_x: "..center_x," center_y:"..center_y})
love.graphics.draw(backgroundlogo, center_x, center_y)
love.graphics.draw(picture, x, y)

end
