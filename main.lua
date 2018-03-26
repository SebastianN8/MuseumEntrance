-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Sebastian N
-- Created on: March 26
--
-- this program decides if the user can get into a museum with discount or not
-----------------------------------------------------------------------------------------

-- Display elements
display.setDefault('background', 0.5, 0, 0.1)
local myTitle = display.newText('Can you get a discount at the museum?', display.contentCenterX, 200, native.SystemFont, 100)

-- Elements for the day
local dayText = display.newText('What day is it today?', display.contentCenterX/2, 400, native.SystemFont, 100)
local myDay = native.newTextField(display.contentCenterX + 160, 400, 400, 150)
myDay.id = 'The actual day'

-- Elements for the age
local ageText = display.newText('What is your age?', display.contentCenterX/3 + 110, 600, native.SystemFont, 100)
local yourAge = native.newTextField(display.contentCenterX + 50, 600, 400, 150)

-- Initiation Button
local myButton = display.newImageRect('./Assets/Sprites/enterButton.png', 300, 200)
myButton.x = display.contentCenterX + 600
myButton.y = 500
myButton.id = 'The initiator'

-- Answer statement
local myResult = display.newText('', display.contentCenterX, 900, native.SystemFont, 90)

-- Function
local function museumEntrance(event)
	-- Variables
	local dayToday = (myDay.text)
	local theAge = tonumber(yourAge.text)

	-- If statement
	if (dayToday == 'Tuesday' or dayToday == 'Thursday') or (theAge > 12 and theAge < 21) then
		myResult.text = 'You can get into the museum with a discount'
	else
		myResult.text = 'You cannot get into the museum with a discount'
	end
end

myButton:addEventListener('touch', museumEntrance)
