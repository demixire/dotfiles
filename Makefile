all: sync

sync:
	mkdir -p ~/.config/alacritty
	mkdir -p ~/.config/git
	mkdir -p ~/.local/share/fonts

	[ -f ~/.bashrc ] || ln -s $(PWD)/.bashrc ~/.bashrc
	[ -f ~/.bash_aliases ] || ln -s $(PWD)/.bash_aliases ~/.bash_aliases
	[ -f ~/.config/alacritty/alacritty.yml ] || ln -s $(PWD)/alacritty.yml ~/.config/alacritty/alacritty.yml
	[ -f ~/.config/git/config ] || ln -s $(PWD)/gitconfig ~/.config/git/config
	[ -f ~/.local/share/fonts ] || cp -r $(PWD)/fonts/* ~/.local/share/fonts

clean:
	rm -f ~/.bashrc
	rm -f ~/.bash_aliases
	rm -f ~/.config/alacritty/alacritty.yml
	rm -f ~/.config/git
	rm -f ~/.local/share/fonts

.PHONY: all clean sync
