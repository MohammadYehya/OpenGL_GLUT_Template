cmake_minimum_required(VERSION 3.10)
project(OpenGL_GLUT_Template)

set(CMAKE_CXX_STANDARD 17)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake")

find_package(OpenGL REQUIRED)
find_package(GLUT REQUIRED)

include_directories(${OPENGL_INCLUDE_DIR} ${GLUT_INCLUDE_DIR} include)

add_executable(App src/main.cpp)

target_link_libraries(App ${OPENGL_LIBRARIES} ${GLUT_LIBRARY} ${CMAKE_SOURCE_DIR}/external/freeglut/bin/x64/freeglut.dll)

add_custom_command(TARGET App POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_if_different
        "../external/freeglut/bin/x64/freeglut.dll"
        $<TARGET_FILE_DIR:App>)