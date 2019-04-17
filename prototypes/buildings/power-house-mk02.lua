local pipe_left = {
    north = {
        filename = "__pycoalprocessing__/graphics/entity/power-house/north-left.png",
        priority = "low",
        width = 64,
        height = 64
    }
}

local pipe_mid = {
    north = {
        filename = "__pycoalprocessing__/graphics/entity/power-house/north-mid.png",
        priority = "low",
        width = 64,
        height = 64
    }
}

local pipe_right = {
    north = {
        filename = "__pycoalprocessing__/graphics/entity/power-house/north-right.png",
        priority = "low",
        width = 64,
        height = 64
    }
}

RECIPE {
    type = "recipe",
    name = "power-house-mk02",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"power-house", 1},
        {"nexelit-plate", 15},
        {"advanced-circuit", 10},
        {"fast-transport-belt", 30},
        {"steel-plate", 15},
    },
    results = {
        {"power-house-mk02", 1}
    }
}

ITEM {
    type = "item",
    name = "power-house-mk02",
    icon = "__pycoalprocessing__/graphics/icons/power-house-mk02.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-cp-buildings-mk02",
    order = "t",
    place_result = "power-house-mk02",
    stack_size = 5
}

ENTITY {
    type = "assembling-machine",
    name = "power-house-mk02",
    icon = "__pycoalprocessing__/graphics/icons/power-house-mk02.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "power-house-mk02"},
    fast_replaceable_group = "power-house",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"combustion"},
    crafting_speed = 2,
    energy_source =
    {
      type = "burner",
      fuel_category = "chemical",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_second_per_watt = 1e-06,
      smoke =
      {
        {
            name = "smoke",
            north_position = {2.1, -1.9},
            east_position = {2.1, -1.9},
            west_position = {2.1, -1.9},
            south_position = {2.1, -1.9},
            frequency = 90,
            starting_vertical_speed = 0.03,
            slow_down_factor = 1,
            starting_frame_deviation = 60
        },
        {
            name = "turbine-smoke",
            north_position = {1.9, -3.0},
            east_position = {1.9, -3.0},
            west_position = {1.9, -3.0},
            south_position = {1.9, -3.0},
            frequency = 90,
            starting_vertical_speed = 0.02,
            slow_down_factor = 1,
            starting_frame_deviation = 60
        },
      },
    },
    energy_usage = "300kW",
    ingredient_count = 20,
    animation = {
        filename = "__pycoalprocessing__/graphics/entity/power-house/powerhouse-anim-mk02.png",
        width = 233,
        height = 234,
        frame_count = 30,
        line_length = 6,
        animation_speed = 0.4,
        shift = {0.156, -0.165}
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {-0.1, 1.1}, {-0.00, -0.89}, {0.55, 0.15}, {-0.5, 0.15}, pipe_left),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.0, -3.9}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {0.1, 1.1}, {-0.00, -0.89}, {0.55, 0.15}, {-0.5, 0.15}, pipe_mid),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, -3.9}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {-0, 1.1}, {-0.00, -0.89}, {0.55, 0.15}, {-0.5, 0.15}, pipe_right),
            pipe_connections = {{type = "input", position = {1.0, -3.9}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {-0.1, 1.1}, {-0.00, -0.89}, {0.55, 0.15}, {-0.5, 0.15}, pipe_left),
            pipe_connections = {{type = "output", position = {-1.0, 3.9}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {0.1, 1.1}, {-0.00, -0.89}, {0.55, 0.15}, {-0.5, 0.15}, pipe_mid),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.0, 3.9}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessing__/sounds/power-house.ogg"},
        idle_sound = {filename = "__pycoalprocessing__/sounds/power-house.ogg", volume = 0.65},
        apparent_volume = 2.5
    }
}
