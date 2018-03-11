INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_DVBTX dvbtx)

FIND_PATH(
    DVBTX_INCLUDE_DIRS
    NAMES dvbtx/api.h
    HINTS $ENV{DVBTX_DIR}/include
        ${PC_DVBTX_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    DVBTX_LIBRARIES
    NAMES gnuradio-dvbtx
    HINTS $ENV{DVBTX_DIR}/lib
        ${PC_DVBTX_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(DVBTX DEFAULT_MSG DVBTX_LIBRARIES DVBTX_INCLUDE_DIRS)
MARK_AS_ADVANCED(DVBTX_LIBRARIES DVBTX_INCLUDE_DIRS)

