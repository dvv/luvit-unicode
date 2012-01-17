UTF-8 library for [Luvit](https://github.com/luvit/luvit)
====

A simple wrapper exposing [UTF-8](http://luaforge.net/projects/sln/) helpers.

Example
-------

```lua
local UTF8 = require('utf8')
assert(UTF8.sub('Привет, Мир!', 2, 3) == 'ри')
assert(UTF8.len('Привет, Мир!') == 12)
```

License
-------

[MIT](utf8/license.txt), for [slnunicode](http://lists.luaforge.net/pipermail/luarocks-developers/2011-February/002342.html)
