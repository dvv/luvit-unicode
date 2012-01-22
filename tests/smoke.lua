local exports = { }

local String = require('string')
local U = require('../')

exports['sanity'] = function (test)
  test.is_callable(U.utf8.sub)
  test.not_equal(String.sub('Привет, Мир!', 2, 3), 'ри')
  test.equal(U.utf8.sub('Привет, Мир!', 2, 3), 'ри')
  test.equal(U.utf8.len('Привет, Мир!'), 12)
  test.done()
end

exports['surrogates'] = function (test)
  -- '𝌆'.length === 2 in JavaScript
  test.equal(U.utf8.len('𝌆'), 2)
  test.equal(U.ascii.len('𝌆'), 4)
  test.done()
end

return exports
