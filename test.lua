#!/usr/bin/env luvit

local String = require('string')
local UTF8 = require('./')

-- sanity --
assert(not _G.unicode)
assert(UTF8.sub)

--p(UTF8.sub('Привет, Мир!', 2, 3))
assert(String.sub('Привет, Мир!', 2, 3) ~= 'ри')
assert(UTF8.sub('Привет, Мир!', 2, 3) == 'ри')
--p(UTF8, UTF8.len('Привет, Мир!'), #('Привет, Мир!'))
assert(UTF8.len('Привет, Мир!') == 12)
