# automatically generated by g-sorcery
# please do not edit this file

EAPI=8

REALNAME="enum34"
REALVERSION="1.1.10"
DIGEST_SOURCES="yes"
PYTHON_COMPAT=( python{3_9,3_10,3_11} )
DISTUTILS_USE_PEP517=standalone

inherit python-r1 gs-pypi

DESCRIPTION="Python 3.4 Enum backported to 3.3, 3.2, 3.1, 2.7, 2.6, 2.5, and 2.4"

HOMEPAGE="https://bitbucket.org/stoneleaf/enum34"
LICENSE="BSD"
SRC_URI="https://files.pythonhosted.org/packages/source/e/${REALNAME}/${REALNAME}-${REALVERSION}.tar.gz"
SOURCEFILE="${REALNAME}-${REALVERSION}.tar.gz"
RESTRICT="test"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPENDENCIES=""
BDEPEND="${DEPENDENCIES}"
RDEPEND="${DEPENDENCIES}"
