# languages
PACKAGES += nodejs

# tools (dev)
PACKAGES += cloc
PACKAGES += htop
PACKAGES += git
PACKAGES += docker.io docker-compose

# libraries
PACKAGES += libssl1.0-dev

# tools (network)
PACKAGES += wget
PACKAGES += curl

# tools (misc)
PACKAGES += tree
PACKAGES += bash-completion
PACKAGES += jq
PACKAGES += software-properties-common apt-transport-https wget
PACKAGES += code

default: repositories updates packages

REPOS += vscode

repositories: $(REPOS:%=/etc/apt/sources.list.d/%.list)

/etc/apt/sources.list.d/vscode.list:
	wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
	echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > $@

# install updates
updates:
	apt update
	apt upgrade

# install packages
packages:
	apt install -y $(PACKAGES)
