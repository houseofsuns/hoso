# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="URW Classico (Optima) Font for texlive"
HOMEPAGE="http://www.ctan.org/tex-archive/fonts/urw/classico"
SRC_URI="http://mirror.ctan.org/fonts/urw/classico/uop.zip"

LICENSE="Aladdin"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="app-text/texlive"
RDEPEND="${DEPEND}"

src_unpack() {
	unpack ${A}
	mkdir -p "${WORKDIR}/${P}/"
	mv "${WORKDIR}/tex" "${WORKDIR}/${P}/"
	mv "${WORKDIR}/fonts" "${WORKDIR}/${P}/"
	mv "${WORKDIR}/doc" "${WORKDIR}/${P}/"
}

src_install() {
	TEXMFDIST=`texconfig conf | grep TEXMFDIST  | cut -f2 -d'='`
	dodir ${TEXMFDIST}
	cp -R "${S}/tex" "${D}/${TEXMFDIST}"
	cp -R "${S}/fonts" "${D}/${TEXMFDIST}"
	cp -R "${S}/doc" "${D}/${TEXMFDIST}"
	mkdir -p "${D}/etc/texmf/updmap.d/"
	echo "Map uop.map" > "${D}/etc/texmf/updmap.d/optima.cfg"
}

pkg_postinst() {
	if [ "$ROOT" = "/" ] ; then
		/usr/sbin/texmf-update
	fi
}

pkg_postrm() {
	if [ "$ROOT" = "/" ] ; then
		/usr/sbin/texmf-update
	fi
}
