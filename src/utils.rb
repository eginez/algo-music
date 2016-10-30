def ring_with_intervals(min, max, step=1)
  rng = (min..max)
  nums = Array.new()
  rng.step(step) { |x| nums << x }
  return (ring) + nums
end
