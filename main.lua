scenes = require("scenes")

function love.load()
font = love.graphics.newFont(18)
mybutton = {x = 200, y = 200, width = 80, height = 40, text = love.graphics.newText(font, "Begin")}
scene = {draw = function()
	love.graphics.print(introduction)
	draw_button(mybutton)
	end}
end

function love.keypressed()
scene.line_number = scene.line_number + 1

end

function love.update(dt)
end

function love.draw()
scene.draw()

end

function draw_button(button)
love.graphics.rectangle("line", button.x, button.y, button.width, button.height)
button_center_x = (button.x + button.width/2)
button_center_y = (button.y + button.height/2)
text_x = button_center_x - (button.text:getWidth()/2)
text_y = button_center_y - (button.text:getHeight()/2)
love.graphics.draw(button.text, text_x, text_y)
end

function scene_switch(new_scene)
scene = new_scene
end



function is_button_pressed(button, x, y)
	if x >= button.x and x <= button.x+button.width and y >= button.y and y <= button.y+button.height then --Detect if the click was inside the button
		return true --This is what triggers the pop-up image
    end
end		
		

function love.mousepressed(x, y, button ,istouch)
    if button == 1 then --Left click
        if is_button_pressed(mybutton, x, y) then
			scene_switch(cafe_intro)
		end	
    end
end

introduction = {"This is a story of two people meeting, and how their relationship develops. You control the music driving their story."}

cafe_intro = scenes.Cafe

cafe_intro.draw = function()
   yoffset= 0
   for i , line in ipairs(cafe_intro) do
      if i > cafe_intro.line_number then	
	 break
      end			
      line_text = love.graphics.newText(font, line)
      love.graphics.draw(line_text, 0, yoffset)
      yoffset = yoffset + line_text:getHeight() 
      
   end
end

cafe_intro.line_number = 1



