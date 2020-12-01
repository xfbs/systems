# languages
PACKAGES += ruby
PACKAGES += python3
PACKAGES += python3-pip

# build tools
PACKAGES += build-essential
PACKAGES += git
PACKAGES += meson
PACKAGES += ninja-build
PACKAGES += pkg-config
PACKAGES += cmake
PACKAGES += llvm clang clang-tools clang-format clang-tidy
PACKAGES += flex flex-doc
PACKAGES += bison # bison-doc
PACKAGES += gdb lldb

# tools (dev)
PACKAGES += binwalk
PACKAGES += cloc
PACKAGES += htop
PACKAGES += powertop iotop atop
#PACKAGES += gradle
#PACKAGES += lxc-utils lxd
#PACKAGES += docker.io docker-compose
PACKAGES += units
PACKAGES += doxygen
PACKAGES += graphviz
PACKAGES += docker docker-compose
PACKAGES += virt-manager
PACKAGES += qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virtinst libvirt-daemon virt-manager
PACKAGES += dnsutils
#PACKAGES += sshfs
PACKAGES += gcovr
PACKAGES += valgrind

# libraries
PACKAGES += fuse libfuse-dev
PACKAGES += libssl-dev
PACKAGES += libgtk-3-0 libgtk-3-dev
PACKAGES += bzip2 libbz2-dev
PACKAGES += libncurses5-dev libncurses5 ncurses-doc
PACKAGES += libelf-dev
PACKAGES += libjansson-dev libjansson-doc
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
PACKAGES += ffmpeg
PACKAGES += qemu
PACKAGES += jq
PACKAGES += oathtool
PACKAGES += pv
PACKAGES += zsh
PACKAGES += weechat
#PACKAGES += redshift redshift-gtk
PACKAGES += unbound

# editors
PACKAGES += vim
PACKAGES += neovim

# fonts
PACKAGES += fonts-ebgaramond
PACKAGES += fonts-ebgaramond-extra

# apps
#PACKAGES += firefox
PACKAGES += texlive-full
PACKAGES += vlc
PACKAGES += texstudio
#PACKAGES += virtualbox-6.0
PACKAGES += gnome-system-monitor
PACKAGES += seahorse
PACKAGES += gnome-disk-utility
#PACKAGES += gnome-terminal
PACKAGES += zeal
PACKAGES += baobab
#PACKAGES += devhelp
PACKAGES += transmission
PACKAGES += spotify-client

default: repositories updates packages

repositories: /etc/apt/sources.list.d/spotify.list

/etc/apt/sources.list.d/spotify.list: /usr/share/keyrings/repository-spotify-com-keyring.gpg
	echo "deb [signed-by=$<] http://repository.spotify.com stable non-free" > "$@"

/usr/share/keyrings/repository-spotify-com-keyring.gpg:
	curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | gpg --dearmor > "$@"

# install updates
updates:
	apt update
	apt upgrade

# install packages
packages:
	apt install -y $(PACKAGES)

RUSTUP=$(HOME)/.cargo/bin/rustup
CARGO=$(HOME)/.cargo/bin/cargo

rust: rust-toolchains rust-components rust-crates

# install rustup
rustup: $(RUSTUP)

$(RUSTUP):
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

rust-toolchains: $(RUSTUP)
	$(RUSTUP) toolchain install nightly

rust-components: $(RUSTUP)
	$(RUSTUP) component add rustfmt

rust-crates: $(RUSTUP)
	test -e $(HOME)/.cargo/bin/cargo-add || $(CARGO) install cargo-edit

# load custom dconf configuration.
dconf:
	dconf dump / > dconf.bak
	cat dconf.conf | dconf load /

pip:
	pip3 install pygments
