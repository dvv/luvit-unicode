local exports = { }

local String = require('string')
local UTF8 = require('../').utf8
--p(UTF8, unicode)

exports['sanity'] = function (test)
  test.is_callable(UTF8.sub)
  test.not_equal(String.sub('Привет, Мир!', 2, 3), 'ри')
  test.equal(UTF8.sub('Привет, Мир!', 2, 3), 'ри')
  test.equal(UTF8.len('Привет, Мир!'), 12)
  test.done()
end

return exports
