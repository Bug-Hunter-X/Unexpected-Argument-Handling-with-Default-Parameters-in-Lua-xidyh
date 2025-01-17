local function foo(a, b, ...)
  if a == nil then
    a = 10
  end
  if b == nil then
    b = 20
  end
  if select('#', ...) > 0 then
    error("Too many arguments passed to function 'foo'")
  end
  return a + b
end

print(foo(nil, nil)) -- Output: 30
print(foo(100, nil)) -- Output: 120
print(foo(nil, 200)) -- Output: 210
print(foo(100, 200)) -- Output: 300

-- Now it raises an error:
--print(foo(nil, 200, 300)) -- Error: Too many arguments passed to function 'foo'