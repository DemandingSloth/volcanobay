volcanobay = {}

minetest.register_tool('volcanobay:admin_wand', {
	description = 'Admin Magic Wand',
	groups = {not_in_creative_inventory=1},
	inventory_image = 'default_torch_on_floor.png',
	wield_image = '',
	wield_scale = {x=1,y=1,z=1},
	liquids_pointable = true, -- it is ok to request information about liquids
	node_placement_prediction = nil,

	on_use = function(itemstack, user, pointed_thing)
		return volcanobay.wand(itemstack, user, pointed_thing)
	end,

	on_place = function(itemstack, placer, pointed_thing)
		return volcanobay.wand(itemstack, placer, pointed_thing, true)
	end,
})

volcanobay.wand = function(itemstack, user, pointed_thing, mode)
	local pos  = minetest.get_pointed_thing_position(pointed_thing, mode)
	if not pos then return end
	local objs = minetest.get_objects_inside_radius(pos, 0.6)
	print("Found " .. #objs .. " objects.")
	for i,obj in ipairs(objs) do
		if obj and obj:get_luaentity() then
			local props = obj:get_properties()
			--minetest.chat_send_all(string.format("%3d: ",i) ..
				--obj:get_luaentity().name .. " " .. dump(props.textures[1]))
			print(string.format("%3d: ",i) ..
				obj:get_luaentity().name .. " " .. dump(props.textures[1]))
		end
	end
end
