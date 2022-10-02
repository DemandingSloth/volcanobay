minetest.register_node('volcanobay:setts', {
	description = 'Setts (Belgian Block)',
	tiles = {'volcanobay_setts.png'},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node('volcanobay:gneiss', {
	description = 'Slate',
	tiles = {'volcanobay_gneiss.png'},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'volcanobay:setts 6',
	recipe = {
		{'default:cobble', 'default:cobble', ''              },
		{'',               'default:cobble', 'default:cobble'},
		{'default:cobble', 'default:cobble', ''              },
	}
})

minetest.register_craft({
	output = 'default:cobble',
	recipe = {
		{'volcanobay:setts'},
	}
})

minetest.register_craft({
	type = 'cooking',
	output = 'volcanobay:gneiss',
	recipe = 'default:stone',
})
