find_path(GLUT_INCLUDE_DIR NAMES GL/glut.h PATHS ${CMAKE_SOURCE_DIR}/external/freeglut/include)
find_library(GLUT_LIBRARY NAMES freeglut PATHS ${CMAKE_SOURCE_DIR}/external/freeglut/lib)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(GLUT DEFAULT_MSG GLUT_LIBRARY GLUT_INCLUDE_DIR)

mark_as_advanced(GLUT_INCLUDE_DIR GLUT_LIBRARY)