require("prototypes.recipe.recipe")
require("config")

function shuffle(a)
   local n = #a
   local t
   local k
   while(n > 0) do
      t = a[n]
      k = math.random(n)
      a[n] = a[k]
      a[k] = t
      n = n - 1
   end
   return a
end

sp1 = shuffle(sp1)
sp2 = shuffle(sp2)
sp3 = shuffle(sp3)
spm = shuffle(spm)
spph = shuffle(spph)

data:extend(
{
  {
    type = "recipe",
    name = "science-pack-1",
    energy_required = 5,
    ingredients =
    {
      {sp1[1], 1},
      {sp1[2], 1}
    },
    result = "science-pack-1"
  },
  {
    type = "recipe",
    name = "science-pack-2",
    energy_required = 6,
    ingredients =
    {
      {sp2[1], 1},
      {sp2[2], 1}
    },
    result = "science-pack-2"
  },
  {
    type = "recipe",
    name = "science-pack-3",
    enabled = false,
    energy_required = 12,
    ingredients =
    {
      {sp3[1], 1},
      {sp3[2], 1},
      {sp3[3], 1},
    },
    result = "science-pack-3"
  },
  {
    type = "recipe",
    name = "military-science-pack",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {spm[1], 1},
      {spm[2], 1},
      {spm[3], 1}
    },
    result_count = 2,
    result = "military-science-pack",
  },
  {
    type = "recipe",
    name = "production-science-pack",
    enabled = false,
    energy_required = 14,
    ingredients =
    {
      {spph[1], 1},
      {spph[2], 1},
      {spph[3], 1}
    },
    result_count = 2,
    result = "production-science-pack",
  },
  {
    type = "recipe",
    name = "high-tech-science-pack",
    enabled = false,
    energy_required = 14,
    ingredients =
    {
      {spph[4], 1},
      {spph[5], 1},
      {spph[6], 1},
      {spph[7], 1}
    },
    result_count = 2,
    result = "high-tech-science-pack",
  }
}
)
