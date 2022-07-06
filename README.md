## Install OpenSIPs 3.x on Ubuntu

This script can be used to quickly install OpenSIPs on Ubuntu 21.

## Requirements

```
Ubuntu >= 21 (tested on Ubuntu 21.10)
```

## Configuration/setup

install.sh includes shell parameters that are used for installation. Currently, this script supports OpenSIPs 3.X and by default it will install version 3.1. If you wish to install another OpenSIPs release, simply update OPENSIPS_VERSION parameter to the version of your choosing. Please note that only version 3 variants are supported.

### CLI configuration

OpenSIPs includes a CLI and by default it is installed by this script. If you do not wish to install the CLI, you can set OPENSIPS_CLI=false


## Install

To install OpenSIPs run:

```
./install.sh
```