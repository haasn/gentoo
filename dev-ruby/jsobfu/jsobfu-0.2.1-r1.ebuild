# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby20 ruby21 ruby22"
RUBY_FAKEGEM_RECIPE_DOC="rdoc"
RUBY_FAKEGEM_RECIPE_TEST="rspec"
RUBY_FAKEGEM_BINWRAP=""

inherit ruby-fakegem

DESCRIPTION="A Javascript code obfuscator"
HOMEPAGE="https://github.com/rapid7/jsobfu"

LICENSE="BSD"
SLOT="${PV}"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

ruby_add_rdepend "!dev-ruby/jsobfu:0
		>=dev-ruby/rkelly-remix-0.0.6:0"

all_ruby_prepare() {
	sed -i -e '/simplecov/ s:^:#:' \
		-e '/config.\(color\|tty\|formatter\)/ s:^:#:' \
		spec/spec_helper.rb || die

	sed -i -e '/rkelly-remix/,/name:/ s/=/~>/' ../metadata || die
}
