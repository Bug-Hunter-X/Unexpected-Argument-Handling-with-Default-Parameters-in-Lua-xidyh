local function foo(a, b)
  if a == nil then
    a = 10
  end
  if b == nil then
    b = 20
  end
  return a + b
end

print(foo(nil, nil)) -- Output: 30
print(foo(100, nil)) -- Output: 120
print(foo(nil, 200)) -- Output: 210
print(foo(100, 200)) -- Output: 300

-- Unexpected behavior:
print(foo(nil, 200, 300)) -- Output: 210, ignores extra arguments