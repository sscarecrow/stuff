# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit cmake-utils git-2

DESCRIPTION="Small and fast JSON parser (and primitive memory-hungry writter) \
for Qt. intended to use with memory-mapped files. allows “partial” parsing and \
very fast record skipping (without actual parsing)"
HOMEPAGE="http://gitorious.org/k8jsonqt"
EGIT_REPO_URI="git://gitorious.org/+qutim-developers/${PN}qt/qutim-developers-${PN}.git"

LICENSE="GPL-2"
SLOT="2"
KEYWORDS=""
IUSE="" 
