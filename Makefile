all:
	ln -s "$(pwd)/parakeet-install.py" parakeet-kernel
	mkdir -p ~/.local/bin
	mv parakeet-kernel ~/.local/bin/
