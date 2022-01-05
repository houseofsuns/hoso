# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="6"

DESCRIPTION="Wurzel Meta-Klasse fuer LaTeX"
HOMEPAGE="http://www.wurzel.org"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="+references +watermark"
RESTRICT="mirror"

DEPEND=""
RDEPEND="app-text/wurzel-style
	app-text/wurzel-old
	app-text/wurzel-mp
	app-text/wurzel-misc
	app-text/wurzel-xml
	watermark? ( app-text/wurzel-watermark )
	references? ( app-text/wurzel-references )
"
