#!/usr/bin/env luvit

local UTF8 = require('./')

-- sanity --
assert(UTF8)
assert(not _G.unicode)
assert(UTF8.sub)

assert(UTF8.sub('Привет, Мир!', 2, 3), 'ри')
--p(UTF8, UTF8.len('Привет, Мир!'), #('Привет, Мир!'))
assert(UTF8.len('Привет, Мир!') == 12)
