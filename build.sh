TERMUX_PKG_HOMEPAGE=https://github.com/X-sella/jsonviewer
TERMUX_PKG_DESCRIPTION="Interactive JSON tree viewer with expand/collapse support (Python + Textual)"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="X-sella <exittheodore@gmail.com>"
TERMUX_PKG_VERSION=1.0.0
TERMUX_PKG_SRCURL=https://github.com/X-sella/jsonviewer/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=de204b7e77a830172b68151358a03013f9d2708f7463287d0362ec5689e6fc13
TERMUX_PKG_DEPENDS="python, python-rich, python-textual"

termux_step_make_install() {
    install -Dm700 src/jsonviewer.py $TERMUX_PREFIX/bin/jsonviewer
}
