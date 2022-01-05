# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

DESCRIPTION="Software for computing the cohomology of finite p-groups."
HOMEPAGE="http://users.minet.uni-jena.de/cohomology/documentation/"
SRC_URI="http://users.minet.uni-jena.de/cohomology/p_group_cohomology-2.1.5.spkg -> p_group_cohomology-2.1.5.tar.bz2"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x64-macos"

LICENSE="GPL-2"
SLOT="0"
IUSE="doc"

DEPEND=""
RDEPEND=""
S="${WORKDIR}/${P}/src"

src_prepare() {
	export SAGE_LOCAL="/usr/"
	sed -i -e 's|$(SAGE_LOCAL)/|$(D)/$(SAGE_LOCAL)/|' Makefile
	sed -i -e 's|#Cleaning|echo $(SAGE_LOCAL) #Cleaning|' Makefile
	sed -i -e "s|os.path.join(\"mtx2.2.4\",\"src\"),|\"${D}/${SAGE_LOCAL}/lib/\", os.path.join(\"mtx2.2.4\",\"src\"),|" setup.py
	sed -i -e "s|extra_compile_args=\[\"-O3\"\],|library_dirs=[\"${D}/${SAGE_LOCAL}/lib/\"], extra_compile_args=[\"-O3\"],|" setup.py
	sed -i -e "s|name = \"pGroupCohomology\",|options = {\"install\": {\"root\": \"${D}\"}}, name = \"pGroupCohomology\",|" setup.py
	sed -i -e "s|tar_base = os.path.join(SAGE_LOCAL,'pGroupCohomology')|tar_base = os.path.join('${D}', SAGE_LOCAL[1:],'pGroupCohomology')|" setup.py
	sed -i -e "s|data_base = os.path.join(SAGE_SHARE,'pGroupCohomology')|data_base = os.path.join('${D}', SAGE_SHARE[1:],'pGroupCohomology')|" setup.py
	sed -i -e "s|os.mkdir(data_base)|os.makedirs(data_base)|" setup.py
}

src_compile() {
	mkdir lib
	mkdir bin
	export RANLIB="ranlib"
	export SAGE_LOCAL="/usr/"
	emake
}

src_install() {
	export CP="cp"
	export D="${D}"
	export SAGE_LOCAL="/usr/"
	export SINGULARPATH="${D}/usr/share/singular/LIB"
	mkdir -p "${D}/${SAGE_LOCAL}/lib"
	mkdir -p "${D}/${SAGE_LOCAL}/bin"
	mkdir -p "${D}/usr/share/singular/LIB"
	emake install
	python2 setup.py install || die
	# FIXME add doc support
}
