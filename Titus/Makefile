# languages
PACKAGES += ruby
PACKAGES += python3
#PACKAGES += default-jdk default-jdk-doc
#PACKAGES += nodejs

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
PACKAGES += ffmpeg
PACKAGES += qemu
PACKAGES += jq
PACKAGES += oathtool
PACKAGES += pv
PACKAGES += zsh
PACKAGES += weechat
#PACKAGES += redshift redshift-gtk

# editors
PACKAGES += vim
PACKAGES += neovim

# fonts
PACKAGES += fonts-ebgaramond
PACKAGES += fonts-ebgaramond-extra

# apps
PACKAGES += firefox
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

default: repositories updates packages

#repositories: /etc/apt/sources.list.d/virtualbox.list /etc/apt/sources.list.d/neovim.list /etc/apt/sources.list.d/jonathonf-vim.list /etc/apt/sources.list.d/chwien-gradle.list
#repositories: /etc/apt/sources.list.d/virtualbox.list /etc/apt/sources.list.d/neovim.list /etc/apt/sources.list.d/jonathonf-vim.list /etc/apt/sources.list.d/weechat.list /etc/apt/sources.list.d/chwien-gradle.list
repositories:

/etc/apt/sources.list.d/virtualbox.list:
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A2F683C52980AECF
	echo "deb https://download.virtualbox.org/virtualbox/debian bionic contrib" > $@

/etc/apt/sources.list.d/jonathonf-vim.list:
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F06FC659
	echo "deb http://ppa.launchpad.net/jonathonf/vim/ubuntu bionic main" > $@
	echo "deb-src http://ppa.launchpad.net/jonathonf/vim/ubuntu bionic main" >> $@

/etc/apt/sources.list.d/neovim.list:
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8231B6DD
	echo "deb http://ppa.launchpad.net/neovim-ppa/stable/ubuntu bionic main" > $@
	echo "deb-src http://ppa.launchpad.net/neovim-ppa/stable/ubuntu bionic main" >> $@

/etc/apt/sources.list.d/chwien-gradle.list:
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9D06AF36
	echo "deb http://ppa.launchpad.net/cwchien/gradle/ubuntu bionic main" > $@
	echo "deb-src http://ppa.launchpad.net/cwchien/gradle/ubuntu bionic main" >> $@

/etc/apt/sources.list.d/weechat.list:
	apt-key adv --keyserver keys.gnupg.net --recv-keys 11E9DE8848F2B65222AA75B8D1820DB22A11534E
	echo "deb https://weechat.org/ubuntu bionic main" > $@

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

SWIFT_URL = "https://swift.org/builds/swift-5.0.1-release/ubuntu1804/swift-5.0.1-RELEASE/swift-5.0.1-RELEASE-ubuntu18.04.tar.gz"

swift: swift.tar.gz
	tar -C ~/.local --strip-components 2 -xvf swift.tar.gz
	rm swift.tar.gz

swift.tar.gz: swift.tar.gz.sig
	curl $(SWIFT_URL) -o swift.tar.gz
	wget -q -O - https://swift.org/keys/all-keys.asc | gpg --import -
	gpg --verify "swift.tar.gz.sig"

swift.tar.gz.sig:
	curl $(SWIFT_URL).sig -o swift.tar.gz.sig
