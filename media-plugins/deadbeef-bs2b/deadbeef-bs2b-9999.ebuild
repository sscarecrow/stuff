# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="bs2b DSP plugin for DeaDBeeF, using libbs2b."
HOMEPAGE="https://github.com/DeaDBeeF-Player/bs2b"
EGIT_REPO_URI="https://github.com/DeaDBeeF-Player/bs2b"

LICENSE="MIT"
SLOT="0"

DEPEND_COMMON="
	media-sound/deadbeef
	media-libs/libbs2b"

RDEPEND="${DEPEND_COMMON}"
DEPEND="${DEPEND_COMMON}"

src_install(){
	insinto /usr/$(get_libdir)/deadbeef
	doins ddb_bs2b.so
}
