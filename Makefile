DOTFILES = $(HOME)/Dotfiles
SECRETS  = $(HOME)/.secrets
FONTS    = $(HOME)/.fonts

all: dotfiles secrets fonts

dotfiles: $(DOTFILES)
secrets: $(SECRETS)
fonts: $(FONTS)

$(DOTFILES):
	git clone git@github.com:xfbs/dotfiles $(DOTFILES)

$(SECRETS):
	git clone git@gitlab.com:xfbs/secrets $(SECRETS)

$(FONTS):
	git clone git@gitlab.com:xfbs/fonts $(FONTS)
	fc-cache -vf
