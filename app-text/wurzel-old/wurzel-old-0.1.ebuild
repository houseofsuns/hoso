# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

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

src_install() {
	TEXMFLOCAL=`texconfig conf | grep TEXMFLOCAL  | cut -f2 -d'='`
	dodir ${TEXMFLOCAL}
	cp -R "${S}/tex-files/doc" "${D}/${TEXMFLOCAL}"
	cp -R "${S}/tex-files/tex" "${D}/${TEXMFLOCAL}"
	cp -R "${S}/tex-files/metapost" "${D}/${TEXMFLOCAL}"
	cp -R "${S}/tex-files/metafont" "${D}/${TEXMFLOCAL}"
	dodoc "${S}/doc/README"
}

pkg_postinst() {
	einfo "Rebuilding tex filename database"
	texhash --quiet ${TEXMFLOCAL}
}

pkg_postrm() {
	TEXMFLOCAL=`texconfig conf | grep TEXMFLOCAL  | cut -f2 -d'='`
	einfo "Rebuilding tex filename database"
	texhash --quiet ${TEXMFLOCAL}
}