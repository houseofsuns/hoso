# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..14} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 prefix

EGIT_REPO_URI="https://github.com/houseofsuns/gs-pypi.git"
inherit git-r3

DESCRIPTION="g-sorcery backend for pypi packages"
HOMEPAGE="https://github.com/jauhien/gs-pypi"

LICENSE="GPL-2"
SLOT="0"

DEPEND=">=app-portage/g-sorcery-9999[bson(-),git(-),${PYTHON_USEDEP}]
	   dev-python/beautifulsoup4[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

src_prepare() {
	hprefixify setup.py
	default
}

python_install_all() {
	   distutils-r1_python_install_all
	   doman docs/*.8
}
