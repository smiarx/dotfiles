DOTFILES=~/.config/i3 ~/.config/dunst ~/.config/gtk-3.0 ~/.gtk-2.0
SRC=$(notdir $(DOTFILES))


define DOT
$(notdir $(1)):
	ln -fs $$(shell pwd)/$$@ $(1)
endef

all: $(SRC)


$(foreach i,$(DOTFILES),$(eval $(call DOT,$(i))))

.PHONY: $(filter-out Makefile, $(wildcard *))
