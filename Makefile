SRC=.config/i3 .config/dunst .config/gtk-3.0 .Xresources .gtkrc-2.0
DOTFILES=$(notdir $(SRC))

define DOT
$(notdir $(1)):
	ln -fs $(shell pwd)/$(1) $(HOME)/$(1)
endef

all: $(DOTFILES)



$(foreach i,$(SRC),$(eval $(call DOT,$(i))))

.PHONY: $(DOTFILES)
