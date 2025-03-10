return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.10.1",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 20,
  height = 24,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 9,
  nextobjectid = 68,
  properties = {
    ["border"] = "castle",
    ["music"] = "deltarune/castletown_empty",
    ["name"] = "Test Map - Room 1"
  },
  tilesets = {
    {
      name = "castle",
      firstgid = 1,
      filename = "../../tilesets/castle.tsx",
      exportfilename = "../../tilesets/castle.lua"
    },
    {
      name = "devroom-objects",
      firstgid = 61,
      filename = "../../tilesets/devroom-objects.tsx",
      exportfilename = "../../tilesets/devroom-objects.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 20,
      height = 24,
      id = 1,
      name = "tiles",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 22, 13, 23, 23, 13, 23, 23, 23, 13, 23, 23, 13, 24, 0, 0, 0, 0, 0, 0,
        0, 22, 23, 21, 23, 23, 23, 23, 23, 23, 23, 21, 23, 24, 0, 0, 0, 0, 0, 0,
        0, 26, 27, 27, 27, 27, 23, 23, 23, 27, 27, 27, 27, 28, 0, 0, 0, 0, 0, 0,
        0, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 0, 0, 0, 0, 0, 0,
        0, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 0, 0, 0, 0, 0, 0,
        0, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 7, 7, 7, 7, 7, 7,
        0, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 15, 15, 15, 15, 15, 15,
        0, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 0, 0, 0, 0, 0, 0,
        0, 14, 15, 15, 11, 11, 11, 11, 11, 11, 11, 15, 15, 16, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 14, 15, 11, 11, 11, 15, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 2, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 2, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 2, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 2, 3, 4, 0, 0, 0, 0, 0, 0, 0, 18, 19, 20, 0,
        0, 0, 0, 0, 0, 0, 2, 3, 4, 0, 0, 0, 0, 0, 0, 0, 22, 23, 24, 0,
        0, 0, 0, 0, 0, 0, 2, 3, 4, 0, 0, 0, 0, 0, 0, 0, 22, 9, 24, 0,
        0, 0, 0, 0, 0, 0, 2, 3, 4, 0, 0, 0, 0, 0, 0, 0, 6, 7, 8, 0,
        0, 0, 0, 0, 0, 0, 2, 3, 4, 0, 0, 0, 0, 0, 0, 0, 10, 11, 12, 0,
        7, 7, 7, 7, 7, 7, 11, 11, 11, 7, 7, 7, 7, 7, 7, 7, 11, 11, 12, 0,
        11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 15, 15, 15, 15, 16, 0,
        11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 0, 0, 0, 0, 0, 0,
        11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 0, 0, 0, 0, 0, 0,
        15, 15, 15, 15, 15, 15, 11, 11, 11, 15, 15, 15, 15, 16, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 10, 11, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "imagelayer",
      image = "../../../../assets/sprites/tilesets/aroombetween.png",
      id = 7,
      name = "Image Layer 1",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 600,
      offsety = 40,
      parallaxx = 1,
      parallaxy = 1,
      repeatx = false,
      repeaty = false,
      properties = {}
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 20,
      height = 24,
      id = 2,
      name = "decal",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 30, 31, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 34, 35, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 38, 39, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 20,
      height = 24,
      id = 6,
      name = "elevator",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 43, 44, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 49, 50, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 55, 56, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "collision",
      class = "",
      visible = true,
      opacity = 0.5,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 2,
          name = "",
          type = "",
          shape = "rectangle",
          x = 560,
          y = 120,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 160,
          width = 200,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 560,
          y = 280,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 280,
          width = 200,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 440,
          y = 360,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 400,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 680,
          width = 280,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "",
          type = "",
          shape = "rectangle",
          x = 560,
          y = 800,
          width = 40,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 920,
          width = 240,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 680,
          width = 240,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 400,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 360,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 120,
          width = 40,
          height = 240,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 440,
          width = 40,
          height = 240,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 640,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 24,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 600,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "",
          type = "",
          shape = "rectangle",
          x = 760,
          y = 640,
          width = 40,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 26,
          name = "",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 800,
          width = 160,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 48,
          name = "",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 440,
          width = 40,
          height = 100,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 49,
          name = "",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 580,
          width = 40,
          height = 100,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 50,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 500,
          width = 200,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 51,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 580,
          width = 200,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 49,
          name = "",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 920,
          width = 200,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 53,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 80,
          width = 219.996,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 54,
          name = "",
          type = "",
          shape = "rectangle",
          x = 339.997,
          y = 80,
          width = 220.003,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 19,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 840,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "starwalker",
            ["cond"] = "not Game:getFlag(\"ostarwalker_inparty\", false) and not Game:getFlag(\"ostarwalker_killed\", false)",
            ["cutscene"] = "room1.star"
          }
        },
        {
          id = 27,
          name = "savepoint",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 210,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["text1"] = "* A known music now echoes in the air.",
            ["text2"] = "* The power of receiving a copyright strike might fill you soon."
          }
        },
        {
          id = 28,
          name = "squeak",
          type = "",
          shape = "rectangle",
          x = 680,
          y = 600,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 29,
          name = "script",
          type = "",
          shape = "rectangle",
          x = 800,
          y = 200,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "room1.transition",
            ["once"] = false
          }
        },
        {
          id = 33,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 440,
          y = 80,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "room1.wall",
            ["once"] = true
          }
        },
        {
          id = 35,
          name = "npc",
          type = "",
          shape = "point",
          x = 460,
          y = 160,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "wall",
            ["cutscene"] = "room1.guardian",
            ["flagcheck"] = "wall_hit"
          }
        },
        {
          id = 39,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = -40,
          y = 720,
          width = 40,
          height = 200,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "room3",
            ["marker"] = "entry"
          }
        },
        {
          id = 40,
          name = "NPC",
          type = "",
          shape = "point",
          x = 380,
          y = 140,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "sans",
            ["cutscene"] = "room1.sans"
          }
        },
        {
          id = 43,
          name = "npc",
          type = "",
          shape = "point",
          x = 560,
          y = 740,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "tako",
            ["cutscene"] = "room1.wah"
          }
        },
        {
          id = 44,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 680,
          y = 120,
          width = 93.5,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {
            ["text1"] = "* A room between...",
            ["text2"] = "* There is a room between..."
          }
        },
        {
          id = 45,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 258,
          y = 110,
          width = 84,
          height = 5,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "elevator",
            ["marker"] = "entry"
          }
        },
        {
          id = 47,
          name = "npc",
          type = "",
          shape = "point",
          x = 200,
          y = 740,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "dog",
            ["cutscene"] = "room1.plaedmc2"
          }
        },
        {
          id = 52,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = -10,
          y = 540,
          width = 10,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["facing"] = "right",
            ["marker"] = "entry_j",
            ["shop"] = "jeku_shop"
          }
        },
        {
          id = 48,
          name = "NPC",
          type = "",
          shape = "point",
          x = 80,
          y = 130,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "diagonal_mario",
            ["cutscene"] = "room1.diagonal_mario"
          }
        },
        {
          id = 50,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 960,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "room_lighttransition",
            ["marker"] = "entry"
          }
        },
        {
          id = 54,
          name = "script",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 520,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["cond"] = "Game:getFlag(\"fun\", 0) > 40 and Game:getFlag(\"fun\", 0) < 50",
            ["cutscene"] = "room1.sans_under_attack",
            ["once"] = false
          }
        },
        {
          id = 55,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 80,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "room1.blankie_wall"
          }
        },
        {
          id = 56,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 80,
          width = 39.2829,
          height = 40,
          rotation = 0,
          gid = 105,
          visible = true,
          properties = {
            ["flagcheck"] = "blankie_acquired"
          }
        },
        {
          id = 57,
          name = "npc",
          type = "",
          shape = "point",
          x = 470,
          y = 340,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "skid",
            ["cond"] = "os.date(\"*t\").month == 10"
          }
        },
        {
          id = 58,
          name = "npc",
          type = "",
          shape = "point",
          x = 530,
          y = 340,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "pump",
            ["cond"] = "os.date(\"*t\").month == 10"
          }
        },
        {
          id = 59,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 450,
          y = 320,
          width = 100,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "room1.spooky",
            ["cond"] = "os.date(\"*t\").month == 10"
          }
        },
        {
          id = 60,
          name = "beanspot",
          type = "",
          shape = "point",
          x = 360,
          y = 800,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["inc_flag"] = "darkess_beans",
            ["name"] = "Darkess Bean"
          }
        },
        {
          id = 61,
          name = "beanspot",
          type = "",
          shape = "point",
          x = 160,
          y = 840,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["inc_flag"] = "darkess_beans",
            ["name"] = "Darkess Bean"
          }
        },
        {
          id = 62,
          name = "beanspot",
          type = "",
          shape = "point",
          x = 720,
          y = 720,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["inc_flag"] = "darkess_beans",
            ["name"] = "Darkess Bean"
          }
        },
        {
          id = 63,
          name = "beanspot",
          type = "",
          shape = "point",
          x = 360,
          y = 360,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["inc_flag"] = "darkess_beans",
            ["name"] = "Darkess Bean"
          }
        },
        {
          id = 65,
          name = "beanspot",
          type = "",
          shape = "point",
          x = 200,
          y = 320,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["inc_flag"] = "darkess_beans",
            ["name"] = "Darkess Bean"
          }
        },
        {
          id = 66,
          name = "beanspot",
          type = "",
          shape = "point",
          x = 640,
          y = 240,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["inc_flag"] = "darkess_beans",
            ["name"] = "Darkess Bean"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "markers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 20,
          name = "spawn",
          type = "",
          shape = "point",
          x = 300,
          y = 250,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 30,
          name = "entry",
          type = "",
          shape = "point",
          x = 760,
          y = 240,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 37,
          name = "entry2",
          type = "",
          shape = "point",
          x = 40,
          y = 840,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 46,
          name = "entry_elevator",
          type = "",
          shape = "point",
          x = 300,
          y = 152,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 53,
          name = "entry_j",
          type = "",
          shape = "point",
          x = 30,
          y = 570,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 51,
          name = "entry3",
          type = "",
          shape = "point",
          x = 300,
          y = 920,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
