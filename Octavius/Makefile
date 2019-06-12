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
