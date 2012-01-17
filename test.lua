#!/usr/bin/env luvit

local String = require('string')
local UTF8 = require('./')
UTF8 = unicode.utf8
--p(UTF8, unicode)

-- sanity --
--assert(not _G.unicode)
assert(UTF8.sub)

assert(String.sub('Привет, Мир!', 2, 3) ~= 'ри')
assert(UTF8.sub('Привет, Мир!', 2, 3) == 'ри')
assert(UTF8.len('Привет, Мир!') == 12)
