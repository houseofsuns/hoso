# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

PYTHON_COMPAT=( python{2_6,2_7,3_2,3_3,3_4,3_5,3_6,3_7,3_8} )

inherit distutils-r1

DOCS="README LICENSE"

DESCRIPTION="wsgitools is a set of tools working with WSGI including classes for filtering content, middlewares for caching, logging and tracebacks as well as two backends for SCGI."
HOMEPAGE="http://subdivi.de/~helmut/wsgitools/"
SRC_URI="http://subdivi.de/~helmut/wsgitools/dist/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
