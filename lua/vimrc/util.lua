local M = {}

M['unloadLuaNamespace'] = function(prefix)
  local prefixWithDot = prefix .. '.'
  for key, value in pairs(package.loaded) do
    if key == prefix or key:sub(1, #prefixWithDot) == prefixWithDot then
      package.loaded[key] = nil
    end
  end
end

return M

