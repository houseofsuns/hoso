# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="6"

DESCRIPTION="Wurzel Klasse fuer LaTeX fuer aeltere Wurzeln"
HOMEPAGE="http://www.wurzel.org"
SRC_URI="http://www.wurzel.org/distfiles/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""
RESTRICT="mirror"

DEPEND="virtual/latex-base"
RDEPEND="${DEPEND}"

pkg_postinst() {
	einfo "Rebuilding tex filename database"
	texhash --quiet ${TEXMFLOCAL}
}

pkg_postrm() {
	TEXMFLOCAL=`texconfig conf | grep TEXMFLOCAL  | cut -f2 -d'='`
	einfo "Rebuilding tex filename database"
	texhash --quiet ${TEXMFLOCAL}
}
