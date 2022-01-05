# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils

DESCRIPTION="A spaceship bridge simulator game."
HOMEPAGE="https://daid.github.io/EmptyEpsilon/"
# This bundles SeriousProton as the build system does not support using
# a separate SeriousProton instance (and currently EmptyEpsilon seems to
# be the only consumer).
SRC_URI="https://github.com/daid/EmptyEpsilon/archive/EE-${PV}.tar.gz -> EmptyEpsilon-${PV}.tar.gz
	https://github.com/daid/SeriousProton/archive/EE-${PV}.tar.gz -> SeriousProton-${PV}.tar.gz"

# EmptyEpsilon is mostly licensed under GPL, however the art ressources
# use Creative Commons and the bundled SeriousProton is MIT-licensed
LICENSE="GPL-2 CC-BY-SA-3.0 MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
media-libs/libsfml
media-libs/glu"
DEPEND="${RDEPEND}"

S="${WORKDIR}/EmptyEpsilon-EE-${PV}"

src_configure() {
	local version=( $(ver_rs 1- ' ') )
	local mycmakeargs=(
		-DSERIOUS_PROTON_DIR="${WORKDIR}/SeriousProton-EE-${PV}/"
		-DCPACK_PACKAGE_VERSION="${PV}"
		-DCPACK_PACKAGE_VERSION_MAJOR=${version[0]}
		-DCPACK_PACKAGE_VERSION_MINOR=${version[1]}
		-DCPACK_PACKAGE_VERSION_PATCH=${version[2]}
	)

	cmake-utils_src_configure
}

src_install() {
	cmake-utils_src_install
	# Fix for FHS-compliance
	mv "${D}/usr/script_reference.html" \
	   "${D}/usr/share/doc/EmptyEpsilon-${PV}/script_reference.html" || die
}
