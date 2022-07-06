export OPENSIPS_VERSION=3.1
export OPENSIPS_BUILD=releases
export OPENSIPS_CLI=false

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 049AD65B
echo "deb https://apt.opensips.org buster ${OPENSIPS_VERSION}-${OPENSIPS_BUILD}" >/etc/apt/sources.list.d/opensips.list

apt-get -y update
wget http://ftp.de.debian.org/debian/pool/main/j/json-c/libjson-c3_0.12.1+ds-2+deb10u1_amd64.deb
dpkg -i libjson-c3_0.12.1+ds-2+deb10u1_amd64.deb

if [ ${OPENSIPS_CLI} = true ]; then \
    echo "deb https://apt.opensips.org buster cli-nightly" >/etc/apt/sources.list.d/opensips-cli.list \
    && apt-get -y update -qq && apt-get -y install opensips-cli \
;fi

apt-get -y install opensips-mysql-module opensips-regex-module opensips-restclient-module opensips-http-modules opensips-json-module make