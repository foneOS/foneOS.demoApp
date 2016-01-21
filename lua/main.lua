scr = FoneOSScreen.new()

title = FoneOSTitle.new()
title:text("foneOS demo app")
scr:addTitle(title)

label = FoneOSLabel.new()
label:x(5)
label:y(30)
label:text("This message is from\na Lua script!\n\n" .. math.random())
scr:addLabel(label)

btn = FoneOSButton.new()
btn:x(5)
btn:y(200)
btn:text("Press me!")
btn:create()
btn:onActivate(function()
	fone.layout.test("Pressed!")
end)
scr:addButton(btn)

keyboard = FoneOSKeyboard.new()
scr:addKeyboard(keyboard)
keyboard:Draw(scr)



fone.layout.current(scr)
