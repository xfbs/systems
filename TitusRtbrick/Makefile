# languages
PACKAGES += ruby
PACKAGES += python3

# build tools
PACKAGES += build-essential
PACKAGES += git
PACKAGES += meson
PACKAGES += ninja-build
PACKAGES += pkg-config
PACKAGES += cmake
PACKAGES += llvm clang clang-tools clang-format clang-tidy
PACKAGES += flex flex-doc
PACKAGES += bison bison-doc
PACKAGES += gdb lldb

# tools (dev)
PACKAGES += binwalk
PACKAGES += cloc
PACKAGES += htop
PACKAGES += powertop iotop atop
PACKAGES += gradle
PACKAGES += lxc-utils lxd
#PACKAGES += docker.io docker-compose
PACKAGES += units
PACKAGES += doxygen
PACKAGES += graphviz

# libraries
PACKAGES += fuse libfuse-dev
PACKAGES += libssl-dev
PACKAGES += libgtk-3-0 libgtk-3-dev
PACKAGES += bzip2 libbz2-dev
PACKAGES += libncurses5-dev libncurses5 ncurses-doc
PACKAGES += libelf-dev
PACKAGES += libjansson-dev libjansson-doc
PACKAGES += libpthread-workqueue0
PACKAGES += libkqueue0
PACKAGES += libblocksruntime0
PACKAGES += libzmq3-dev libczmq-dev
PACKAGES += libarchive-dev

# tools (network)
PACKAGES += nmap
PACKAGES += wget
PACKAGES += curl
PACKAGES += aria2
PACKAGES += magic-wormhole
PACKAGES += wireguard
PACKAGES += openconnect
PACKAGES += openvpn

# tools (misc)
PACKAGES += tmux
PACKAGES += tree
PACKAGES += stow
PACKAGES += bash-completion
PACKAGES += qemu
PACKAGES += jq
PACKAGES += oathtool
PACKAGES += pv
PACKAGES += zsh

# editors
PACKAGES += vim
PACKAGES += neovim

# apps
PACKAGES += texlive-full

default: packages

# install updates
updates:
	apt update
	apt upgrade

# install packages
packages: updates
	apt install -y $(PACKAGES)
