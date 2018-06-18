local Axis = {
  hp_max = 1,
  physical = true,
  weight = 50,
  collisionbox = {-1.5, 0, -1.5, 1.5, 1.5, 1.5},
  visual = "mesh",
  visual_size = {x=12, y=12,},
  mesh = "axis.x",
  textures = {"axis.png"}, -- number of required textures depends on visual
  colors = {}, -- number of required colors depends on visual
  spritediv = {x=1, y=1},
  initial_sprite_basepos = {x=0, y=0},
  is_visible = true,
  makes_footstep_sound = false,
  automatic_rotate = false,
  c = 0,
}


local Box = {
  hp_max = 1,
  physical = true,
  weight = 50,
  collisionbox = {-1.5, 0, -1.5, 1.5, 1.5, 1.5},
  visual = "mesh",
  visual_size = {x=12, y=12,},
  mesh = "box.x",
  textures = {"unwrap_helper.jpg"}, -- number of required textures depends on visual
  colors = {}, -- number of required colors depends on visual
  spritediv = {x=1, y=1},
  initial_sprite_basepos = {x=0, y=0},
  is_visible = true,
  makes_footstep_sound = false,
  automatic_rotate = false,
  s = 0,
}


minetest.register_entity("attachtest:axis", Axis)
minetest.register_entity("attachtest:box", Box)


local lastAxis = nil
local lastBox = nil


minetest.register_chatcommand("spawn", {
	params = "<text>",
	description = "",
	func = function(name , text)
    if text == "axis" then
      lastAxis = minetest.add_entity(minetest.get_player_by_name(name):get_pos(), "attachtest:axis")
    elseif text == "box" then
      lastBox = minetest.add_entity(minetest.get_player_by_name(name):get_pos(), "attachtest:box")
    end
	end,
})


minetest.register_chatcommand("attach", {
	params = "<text>",
	description = "",
	func = function(name , text)
    if text == "ab" then
      lastBox:set_attach(lastAxis, "", {x=0,y=0,z=0}, {x=0,y=0,z=0})
      lastBox:set_properties({visual_size = {x=0.6, y=0.6}})
    elseif text == "ba" then
      lastAxis:set_attach(lastBox, "", {x=0,y=0,z=0}, {x=0,y=0,z=0})
      lastAxis:set_properties({visual_size = {x=0.6, y=0.6}})
    end
	end,
})


minetest.register_chatcommand("boxPX", {
	params = "<x>",
	description = "",
	func = function(name , text)
    local pos = lastBox:get_attach_position()
    pos.x = tonumber(text)
    lastBox:set_attach_position(pos)
    update = true
	end,
})

minetest.register_chatcommand("boxPY", {
	params = "<y>",
	description = "",
	func = function(name , text)
    local pos = lastBox:get_attach_position()
    pos.y = tonumber(text)
    lastBox:set_attach_position(pos)
    update = true
	end,
})

minetest.register_chatcommand("boxPZ", {
	params = "<z>",
	description = "",
	func = function(name , text)
    local pos = lastBox:get_attach_position()
    pos.z = tonumber(text)
    lastBox:set_attach_position(pos)
    update = true
	end,
})


minetest.register_chatcommand("axisPX", {
	params = "<x>",
	description = "",
	func = function(name , text)
    local pos = lastAxis:get_attach_position()
    pos.x = tonumber(text)
    lastAxis:set_attach_position(pos)
    update = true
	end,
})

minetest.register_chatcommand("axisPY", {
	params = "<y>",
	description = "",
	func = function(name , text)
    local pos = lastAxis:get_attach_position()
    pos.y = tonumber(text)
    lastAxis:set_attach_position(pos)
    update = true
	end,
})

minetest.register_chatcommand("axisPZ", {
	params = "<z>",
	description = "",
	func = function(name , text)
    local pos = lastAxis:get_attach_position()
    pos.z = tonumber(text)
    lastAxis:set_attach_position(pos)
    update = true
	end,
})





minetest.register_chatcommand("boxRX", {
	params = "<x>",
	description = "",
	func = function(name , text)
    local rot = lastBox:get_attach_rotation()
    rot.x = tonumber(text)
    lastBox:set_attach_rotation(rot)
    update = true
	end,
})

minetest.register_chatcommand("boxRY", {
	params = "<y>",
	description = "",
	func = function(name , text)
    local rot = lastBox:get_attach_rotation()
    rot.y = tonumber(text)
    lastBox:set_attach_rotation(rot)
    update = true
	end,
})

minetest.register_chatcommand("boxRZ", {
	params = "<z>",
	description = "",
	func = function(name , text)
    local rot = lastBox:get_attach_rotation()
    rot.z = tonumber(text)
    lastBox:set_attach_rotation(rot)
    update = true
	end,
})


minetest.register_chatcommand("axisRX", {
	params = "<x>",
	description = "",
	func = function(name , text)
    local rot = lastAxis:get_attach_rotation()
    rot.x = tonumber(text)
    lastAxis:set_attach_rotation(rot)
    update = true
	end,
})

minetest.register_chatcommand("axisRY", {
	params = "<y>",
	description = "",
	func = function(name , text)
    local rot = lastAxis:get_attach_rotation()
    rot.y = tonumber(text)
    lastAxis:set_attach_rotation(rot)
    update = true
	end,
})

minetest.register_chatcommand("axisRZ", {
	params = "<z>",
	description = "",
	func = function(name , text)
    local rot = lastAxis:get_attach_rotation()
    rot.z = tonumber(text)
    lastAxis:set_attach_rotation(rot)
    update = true
	end,
})



minetest.register_on_joinplayer(function(player)
	--minetest.chat_send_all("Commands:  /spawn axis,  /spawn box  /mode 45,  /mode spinX,  /mode spinY,  /mode spinZ,  /rotation <x> <y> <z> (- do not work),  /setRotX <x>,  /setRotY <y>,  /setRotZ [z]  /help,  /attach ab,  /attach ba")
end)