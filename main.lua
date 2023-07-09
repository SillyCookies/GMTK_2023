scenes = require("scenes")
font = love.graphics.newFont(18)
function love.load()

mybutton = {x=(WIN_WIDTH - BUTTON_WIDTH)/2, y=WIN_HEIGHT-50, width=BUTTON_WIDTH, height=BUTTON_HEIGHT, text = love.graphics.newText(font, "Begin")}
current_scene = {
    draw = function()
	    love.graphics.print(introduction)
	    draw_button(mybutton)
	end,
	mousepressed = function(self, x, y, button)
	    if button == 1 then --Left click
            if is_button_pressed(mybutton, x, y) then
			    scene_switch(cafe_intro)
		    end	
        end
	end
	}
end

function love.keypressed()
current_scene.line_number = current_scene.line_number + 1
if current_scene.line_number == #current_scene.lines then 
	scene_switch(current_scene:get_next_scene())
end
end

function love.update(dt)
end

function love.draw()
current_scene:draw()
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
    current_scene = new_scene
end



function is_button_pressed(button, x, y)
	if x >= button.x and x <= button.x+button.width and y >= button.y and y <= button.y+button.height then --Detect if the click was inside the button
		return true --This is what triggers the pop-up image
    end
end		
		

function love.mousepressed(x, y, button ,istouch)
    current_scene:mousepressed(x, y, button)
end



introduction = {"This is a story of two people meeting, and how their relationship develops. You control the music driving their story."}


BUTTON_WIDTH = 80
BUTTON_HEIGHT = 40
WIN_WIDTH, WIN_HEIGHT = love.window.getMode()
Scene = {
    romantic_button = {x=20, y=WIN_HEIGHT-50, width=BUTTON_WIDTH, height=BUTTON_HEIGHT, text=love.graphics.newText(font, "Track 1")},
	happy_button = {x=(WIN_WIDTH - BUTTON_WIDTH)/2, y=WIN_HEIGHT-50, width=BUTTON_WIDTH, height=BUTTON_HEIGHT, text=love.graphics.newText(font, "Track 2")},
	tense_button = {x=WIN_WIDTH - 20 - BUTTON_WIDTH, y=WIN_HEIGHT-50, width=BUTTON_WIDTH, height=BUTTON_HEIGHT, text=love.graphics.newText(font, "Track 3")}
}

function Scene.new(lines)
    local o = {}
    o.lines = lines
	setmetatable(o, {__index=Scene})
	o.line_number = 1
	return o
end

function Scene:mousepressed(x, y, button)
    if is_button_pressed(self.romantic_button, x, y) then
	    mood = "romantic"
	elseif is_button_pressed(self.happy_button, x, y) then
	    mood = "happy"
    elseif is_button_pressed(self.tense_button, x, y) then
	    mood = "tense"
    end	
end

function Scene:get_next_scene()
	if self.lines[mood] == nil then
	    
		return Scene.new(scenes[self.lines.next])
	else 
	    return Scene.new(self.lines[mood])
	end
end

function Scene:draw()
   draw_button(self.romantic_button)
   draw_button(self.happy_button)
   draw_button(self.tense_button)
   yoffset= 0
   for i , line in ipairs(self.lines) do
      if i > self.line_number then	
	     break
      end			
      line_text = love.graphics.newText(font, line)
      love.graphics.draw(line_text, 0, yoffset)
      yoffset = yoffset + line_text:getHeight()
   end
end



cafe_intro = Scene.new(scenes.Cafe)


