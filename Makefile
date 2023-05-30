all: sync

sync:
	mkdir -p ~/.emacs.d
	mkdir -p ~/.config/alacritty
	mkdir -p ~/.config/git
	mkdir -p ~/.local/share/fonts

	[ -f ~/.bash_aliases ] || ln -s $(PWD)/.bash_aliases ~/.bash_aliases
	[ -f ~/.emacs.d ] || git clone https://github.com/demixire/.emacs.d.git || ln -s $(PWD)/e ~/.emacs.d
	[ -f ~/.config/alacritty/alacritty.yml ] || ln -s $(PWD)/alacritty.yml ~/.config/alacritty/alacritty.yml
	[ -f ~/.config/alacritty/color.yml ] || ln -s $(PWD)/alacritty_color.yml ~/.config/alacritty/color.yml
	[ -f ~/.config/git/config ] || ln -s $(PWD)/gitconfig ~/.config/git/config
	[ -f ~/.local/share/fonts ] || cp -r $(PWD)/fonts/* ~/.local/share/fonts
	cat update_bashrc >> ~/.bashrc

clean:
	rm -f ~/.bash_aliases
	rm -f ~/.emacs.d
	rm -f ~/.config/alacritty/alacritty.yml
	rm -f ~/.config/alacritty/color.yml
	rm -f ~/.config/git
	rm -f ~/.local/share/fonts

.PHONY: all clean sync
