VERSION := 1.1a

ROOT    := $(shell pwd)
PATH    := $(ROOT)/.luvit:$(PATH)

all: module

test: module
	checkit tests/*

module: build/slnunicode/unicode.luvit

build/slnunicode/unicode.luvit: build/slnunicode/slnunico.c
	$(CC) $(shell luvit-config --cflags | sed 's/ -Werror / /') -DluaI_openlib=luaL_openlib -shared -o $@ $^

build/slnunicode/slnunico.c:
	mkdir -p build
	wget -qct3 --no-check-certificate http://files.luaforge.net/releases/sln/slnunicode/$(VERSION)/slnunicode-$(VERSION).tar.gz -O - | tar -xzpf - -C build
	mv build/slnunicode-$(VERSION) $(@D)
	#sed 's/luaI_openlib/luaL_openlib/g' $@ > $(@).tmp
	#mv $(@).tmp $@

clean:
	rm -fr build

.PHONY: all module clean
.SILENT:
