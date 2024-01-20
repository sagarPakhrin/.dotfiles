P = function(v)
  print(vim.inspect(v))
  return v
end

RELOAD = function(module)
  return require("plenary.reload").reload_module(module)
end

R = function(name)
  RELOAD(name)
  return require(name)
end

return {
  P = P,
  R = R,
}
