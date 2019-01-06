def func(x)
  if Math.cos(x**3 - 5) != 0
    (Math::E**x) / Math.tan(x**3 - 5) + x**2
  else
    raise('ERROR! with this argument, tangent does not exist!')
  end
end