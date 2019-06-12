# languages
PACKAGES += ruby
PACKAGES += default-jdk default-jdk-doc
PACKAGES += nodejs

# tools (dev)
PACKAGES += build-essential
PACKAGES += binwalk
PACKAGES += cloc
PACKAGES += htop
PACKAGES += git
PACKAGES += meson
PACKAGES += ninja-build
PACKAGES += pkg-config

# libraries
PACKAGES += libssl-dev

# tools (network)
PACKAGES += nmap
PACKAGES += wget
PACKAGES += curl
PACKAGES += aria2
PACKAGES += magic-wormhole
PACKAGES += transmission

# tools (misc)
PACKAGES += tmux
PACKAGES += tree
PACKAGES += stow
PACKAGES += bash-completion
PACKAGES += ffmpeg
PACKAGES += qemu
PACKAGES += jq

# tools (vpn)
PACKAGES += openconnect
PACKAGES += openvpn

# editors
PACKAGES += vim
PACKAGES += neovim

# fonts
PACKAGES += fonts-ebgaramond
PACKAGES += fonts-ebgaramond-extra 

# apps
PACKAGES += firefox
PACKAGES += texlive-full

default: updates packages

# install updates
updates:
	apt update
	apt upgrade

# install packages
packages:
	apt install -y $(PACKAGES)

RUSTUP=$(HOME)/.cargo/bin/rustup
CARGO=$(HOME)/.cargo/bin/cargo

rust: rust-toolchains rust-crates

# install rustup
rustup: $(RUSTUP)
	
$(RUSTUP):
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

rust-toolchains: $(RUSTUP)
	$(RUSTUP) toolchain install nightly

rust-crates: $(RUSTUP)
	$(CARGO) install cargo-edit

# load custom dconf configuration.
dconf:
	dconf dump / > dconf.bak
	echo dconf.conf | dconf load /
