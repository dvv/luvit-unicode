Unicode library for [Luvit](https://github.com/luvit/luvit)
====

A simple wrapper exposing [Unicode](http://luaforge.net/projects/sln/) helpers.

Example
-------

```lua
local UTF8 = require('unicode').utf8
assert(UTF8.sub('Привет, Мир!', 2, 3) == 'ри')
assert(UTF8.len('Привет, Мир!') == 12)
```

License
-------

[MIT](utf8/license.txt) for this module. [slnunicode](http://sln.luaforge.net) under [MIT/X11](http://lists.luaforge.net/pipermail/luarocks-developers/2011-February/002342.html)
