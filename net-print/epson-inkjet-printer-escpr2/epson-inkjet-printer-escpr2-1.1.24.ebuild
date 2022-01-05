# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DSC_src="f/03/00/12/09/62/e2fa6d004f02fac23117a90a1f24f10c982205e2"

DESCRIPTION="Epson Inkjet Printer Driver (ESC/P-R) 2"
HOMEPAGE="https://download.ebz.epson.net/dsc/search/01/search/?OSC=LX"
SRC_URI="https://download3.ebz.epson.net/dsc/${DSC_src}/epson-inkjet-printer-escpr2-${PV}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86 ~arm ~arm64"
IUSE="escprlib"

RDEPEND="net-print/cups
		 !net-print/epson-inkjet-printer-escpr2-bin"
DEPEND="${RDEPEND}"

PATCHES=(
	# Shamelessly copied from:
	# https://aur.archlinux.org/packages/epson-inkjet-printer-escpr2/
	# Patch URL: https://aur.archlinux.org/cgit/aur.git/tree/bug_x86_64.patch?h=epson-inkjet-printer-escpr2
	"${FILESDIR}/bug_x86_64.patch"
)

src_configure() {
	econf --disable-shared

	# Makefile calls ls to generate a file list which is included in Makefile.am
	# Set the collation to C to avoid automake being called automatically
	unset LC_ALL
	export LC_COLLATE=C
}

src_install() {
	emake -C ppd DESTDIR="${D}" install
	if use escprlib ; then
		emake -C escprlib DESTDIR="${D}" install
	fi
	emake -C src DESTDIR="${D}" install
	einstalldocs

	# See https://src.fedoraproject.org/rpms/epson-inkjet-printer-escpr2/blob/master/f/epson-inkjet-printer-escpr2.spec
	# Hack ppd files so that they use the open source v1 driver instead of
	# the v2 binary blob them
	for ppd in "${D}"/usr/share/ppd/epson-inkjet-printer-escpr2/*.ppd; do
		sed -i "s|epson-escpr-wrapper2|epson-escpr-wrapper|g" "$ppd" || die
	done

	# Remove binary blob
	rm "${D}/usr/libexec/cups/filter/epson-escpr2" || die
	rm "${D}/usr/libexec/cups/filter/epson-escpr-wrapper2" || die
}
