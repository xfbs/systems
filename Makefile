DOTFILES = $(HOME)/Dotfiles
SECRETS  = $(HOME)/.secrets

all: dotfiles secrets

dotfiles: $(DOTFILES)
secrets: $(SECRETS)

$(DOTFILES):
	git clone git@github.com:xfbs/dotfiles $(DOTFILES)

$(SECRETS):
	git clone git@gitlab.com:xfbs/secrets $(SECRETS)
