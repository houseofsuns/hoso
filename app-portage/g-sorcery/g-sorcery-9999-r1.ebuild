# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9..12} )
DISTUTILS_USE_SETUPTOOLS=no

inherit distutils-r1 prefix

EGIT_REPO_URI="/home/markus/q/gentoo/gsource/g-sorcery/"
inherit git-r3

DESCRIPTION="framework for ebuild generators"
HOMEPAGE="https://gitweb.gentoo.org/proj/g-sorcery.git
	https://github.com/jauhien/g-sorcery"

LICENSE="GPL-2"
SLOT="0"
IUSE="bson git test"
RESTRICT="!test? ( test )"

RDEPEND="bson? ( dev-python/pymongo[${PYTHON_USEDEP}] )
	git? ( dev-vcs/git )
	sys-apps/portage[${PYTHON_USEDEP}]"
BDEPEND="${RDEPEND}"

src_prepare() {
	hprefixify setup.py
	default
}

python_test() {
	PYTHONPATH="." "${PYTHON}" scripts/run_tests.py || die
}

python_install_all() {
	distutils-r1_python_install_all

	doman docs/*.8

	docinto html
	dodoc docs/developer_instructions.html

	diropts -m0777
	keepdir /var/lib/g-sorcery
}
