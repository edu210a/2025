local Core = {
  NumberGenerator = Random.new(1),
  CreateWall = function(position: Vector3, size: Vector3, rotation: Vector3)
    local Part = Instance.new("Part")
    Part.Anchored = true
    Part.Shape = Enum.PartTye.Block
    Part.Position = position
    Part.Size = size
    Part.Rotation = rotation
    Part.Material = Enum.Material.Plaster
    Part.Parent = workspace
  end
}

function WallTrial(position: Vector3)
  local px = Core.NumberGenerator:NextInteger(-100, 100)
  local pz = Core.NumberGenerator:NextInteger(-100, 100)
  local sv = Core.NumberGenerator:NextInteger(10, 30)
  local sb = Core.NumberGenerator:NextInteger(0, 1)
  local sx = (sb == 0) and sv or 1
  local sz = (sb == 1) and sv or 1
  local rb = Core.NumberGenerator:NextInteger(0, 1)
  local rx = (rb == 0) and 180 or 0

  Core.CreateWall(Vector3.new(px, 5, pz), Vector3.new(sx, 10, sz), Vector3.new(rx, 0, 0))
end
