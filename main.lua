function love.load()
font = love.graphics.newFont(18)
mybutton = {x = 200, y = 200, width = 80, height = 40, text = love.graphics.newText(font, "Begin")}
end


function love.update(dt)
end

function love.draw()
love.graphics.print(introduction)
draw_button(mybutton)
end

function draw_button(button)
love.graphics.rectangle("line", button.x, button.y, button.width, button.height)
button_center_x = (button.x + button.width/2)
button_center_y = (button.y + button.height/2)
text_x = button_center_x - (button.text:getWidth()/2)
text_y = button_center_y - (button.text:getHeight()/2)
love.graphics.draw(button.text, text_x, text_y)
end


function is_button_pressed(button, x, y)
	if x >= button.x and x <= button.x+button.width and y >= button.y and y <= button.y+button.height then --Detect if the click was inside the button
       button.clicked = true --This is what triggers the pop-up image
    end
end		
		

function love.mousepressed(x, y, button ,istouch)
    if button == 1 then --Left click
        is_button_pressed(mybutton, x, y)
			
    end
end

introduction = "This is a story of two people meeting, and how their relationship develops. You control the music driving their story."
