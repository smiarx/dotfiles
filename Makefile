SRC=.config/i3/ .config/dunst/ .config/gtk-3.0/ .condif/sway/ .Xresources .gtkrc-2.0 .config/vimb/config .vimrc .zshrc .profile .zprofile .gitconfig
DOTFILES=$(notdir $(SRC))

define DOT
$(notdir $(1)):
	ln -s $(shell pwd)/$(1) $(HOME)/$(1) 2> /dev/null || echo "File exists"
endef

all: $(DOTFILES)



$(foreach i,$(SRC),$(eval $(call DOT,$(i))))

.PHONY: $(DOTFILES)
