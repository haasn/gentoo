# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python{2_7,3_4,3_5} )

inherit distutils-r1

DESCRIPTION="Python wrapping of the Cap'n Proto library"
HOMEPAGE="http://jparyani.github.io/pycapnp/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

RDEPEND="dev-libs/capnproto"
DEPEND="${RDEPEND}
	dev-python/cython[${PYTHON_USEDEP}]
"
