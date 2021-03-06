--Ian Smelser
--9/28/15
--Rotation, In Class

--Text
local portrait = display.newText("Portrait",display.contentWidth/2,display.contentHeight/2,nil,60)
local landscape = display.newText("Landscape",display.contentWidth/2,display.contentHeight/2,nil,60)


portrait:setFillColor(1,1,1)
portrait.alpha=1
landscape:setFillColor(1,1,1)
landscape.alpha=0

local function rotate(event)
	if (event.type =="landscapeRight" or event.type =="landscapeLeft") then
		local newAngle = landscape.rotation - event.delta
		transition.to( landscape, {time= 150, rotation = newAngle})
		transition.to( portrait, {rotation = newAngle})
		portrait.alpha = 0
		landscape.alpha = 1
	else
		local newAngle = portrait.rotation - event.delta
		transition.to( portrait, {time= 150, rotation = newAngle})
		transition.to( landscape, {rotation = newAngle})
		portrait.alpha = 1
		landscape.alpha = 0
	end
end

Runtime:addEventListener("orientation",rotate)