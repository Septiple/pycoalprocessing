local pipes = {
    north = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/soil-extractormk01/long-pipe-north.png",
        priority = "low",
        width = 30,
        height = 44
    },
    south = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/soil-extractormk01/pipe-south.png",
        priority = "extra-high",
        width = 40,
        height = 45
    }
}

RECIPE {
    type = "recipe",
    name = "soil-extractormk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"soil-extractormk02", 1},
        {"processing-unit", 20},
        {"niobium-plate", 30},
        {"electric-engine-unit", 6},
    },
    results = {
        {"soil-extractormk03", 1}
    }
}

ITEM {
    type = "item",
    name = "soil-extractormk03",
    icon = "__pycoalprocessinggraphics__/graphics/icons/soil-extractormk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-cp-buildings-mk03",
    order = "g",
    place_result = "soil-extractormk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "soil-extractormk03",
    icon = "__pycoalprocessinggraphics__/graphics/icons/soil-extractormk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "soil-extractormk03"},
    fast_replaceable_group = "soil-extractormk01",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.48, -3.48}, {3.48, 3.48}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"soil-extraction"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "600kW",
    animation = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/soil-extractormk01/soil-extractormk03.png",
        width = 235,
        height = 266,
        frame_count = 30,
        line_length = 6,
        animation_speed = 0.8,
        shift = {0.16, -0.609}
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {0, 1}, {0, -1}, nil, nil, pipes),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {4.0, 0.0}}}
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessinggraphics__/sounds/soil-extractormk01.ogg"},
        idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/soil-extractormk01.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
