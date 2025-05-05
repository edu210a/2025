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
