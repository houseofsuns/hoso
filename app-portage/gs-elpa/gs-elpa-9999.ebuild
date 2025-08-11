# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9..12} )
DISTUTILS_USE_PEP517=no

inherit distutils-r1 prefix

EGIT_REPO_URI="https://github.com/houseofsuns/gs-elpa.git"
inherit git-r3

DESCRIPTION="g-sorcery backend for elisp packages"
HOMEPAGE="https://gitweb.gentoo.org/proj/gs-elpa.git
	https://github.com/jauhien/gs-elpa"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="app-portage/g-sorcery[${PYTHON_USEDEP}]
	dev-python/sexpdata[${PYTHON_USEDEP}]"
BDEPEND="${RDEPEND}"

src_prepare() {
	hprefixify setup.py
	default
}

python_install_all() {
	distutils-r1_python_install_all
	doman docs/*.8
}
