TAP_PACKAGE=1

PKGDIR=$PWD
BUILDDIR=$PWD/build


config()
{
    rm -rf ${BUILDDIR}
    mkdir -p ${BUILDDIR}
    cd ${BUILDDIR}
    echo $PWD
    cmake3 -DCMAKE_BUILD_TYPE=Release ..
}


build()
{
    cd ${BUILDDIR}
    default_build
}


install()
{
    install_ups
    cd ${BUILDDIR}
    make install -e DESTDIR=${PREFIX}
}
