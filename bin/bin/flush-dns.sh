#! /bin/zsh

flush-dns() {
	sudo dscacheutil -flushcache
	sudo killall -HUP mDNSResponder
}

