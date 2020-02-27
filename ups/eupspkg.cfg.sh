TAP_PACKAGE=1

PKGDIR=$PWD
BUILDDIR=$PWD/build


build()
{
    cmake3
}


install()
{
    make install -e DESTDIR=${PREFIX}
    install_ups
}
