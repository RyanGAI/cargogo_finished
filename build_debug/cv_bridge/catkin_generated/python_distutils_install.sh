#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/kal5-1/cargogo/src/vision_opencv/cv_bridge"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/kal5-1/cargogo/install_debug/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/kal5-1/cargogo/install_debug/lib/python2.7/dist-packages:/home/kal5-1/cargogo/build_debug/cv_bridge/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/kal5-1/cargogo/build_debug/cv_bridge" \
    "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" \
    "/home/kal5-1/cargogo/src/vision_opencv/cv_bridge/setup.py" \
    build --build-base "/home/kal5-1/cargogo/build_debug/cv_bridge" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/kal5-1/cargogo/install_debug" --install-scripts="/home/kal5-1/cargogo/install_debug/bin"
