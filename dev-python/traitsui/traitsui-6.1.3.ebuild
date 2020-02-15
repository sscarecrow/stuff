# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_5 python3_6 python3_7)

inherit distutils-r1 flag-o-matic

DESCRIPTION="Contains a toolkit-independent GUI abstraction layer, which is used to support the 'visualization' features of the Traits package"
HOMEPAGE="https://docs.enthought.com/traitsui/"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+python doc +wx +pyqt5 +pyside +demo"

RDEPEND="
    dev-python/traits
    dev-python/six
    >=dev-python/pyface-6.0.0[wx=,pyqt5=,pyside=]

    wx? ( >=dev-python/wxpython-2.8.10 dev-python/numpy )
    pyqt5? ( dev-python/PyQt5 dev-python/pygments )
    pyside? ( >=dev-python/pyside-1.2 dev-python/pygments )
    demo? ( dev-python/configobj )
"

DEPEND="${RDEPEND}
	doc? ( dev-util/gtk-doc )
"

REQUIRED_USE="python? ( ${PYTHON_REQUIRED_USE} )"

python_compile() {
	distutils-r1_python_compile

}

python_compile_all() {
	use doc && setup.py build
}

python_test() {
	setup.py test
}

python_install_all() {
	distutils-r1_python_install_all
}
