# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7..10} )
DISTUTILS_USE_SETUPTOOLS=no

inherit distutils-r1 prefix

EGIT_REPO_URI="/home/markus/q/gentoo/gsource/gs-pypi/"
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
