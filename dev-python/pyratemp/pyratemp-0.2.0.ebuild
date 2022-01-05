# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI="3"

inherit distutils

DOCS="LICENSE NEWS README"

DESCRIPTION="A small but fast and easy to use stand-alone template engine written in pure python."
HOMEPAGE="http://www.simple-is-better.org/template/pyratemp.html"
SRC_URI="http://www.simple-is-better.org/template/${P}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="dev-python/simplejson"
DEPEND="${RDEPEND}"

PYTHON_MODNAME="pyratemp"

src_prepare() {
	mkdir pyratemp
	mv *.py pyratemp/
	cp ${FILESDIR}/setup.py .
	distutils_src_prepare
}