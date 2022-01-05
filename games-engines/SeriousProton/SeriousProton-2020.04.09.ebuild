# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils

DESCRIPTION="."
HOMEPAGE="https://daid.github.io/SeriousProton/"
SRC_URI="https://github.com/daid/SeriousProton/archive/EE-${PV}.tar.gz -> SeriousProton-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="media-libs/libsfml"
DEPEND="${RDEPEND}"

S="${WORKDIR}/SeriousProton-EE-${PV}"

src_configure() {
	cmake-utils_src_configure
}
