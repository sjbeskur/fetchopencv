
cmake_minimum_required(VERSION 3.10)

# Set your project name here
project( casey-ocv )

# Set the C++ standard to use (change to your preferred version)
set(CMAKE_CXX_STANDARD 17)

# Add your source files here (replace "main.cpp" with your actual source files)
set(SOURCES src/main.cpp )

# Add headers, if any (replace "dummy.hpp" with your actual header files)
set(HEADERS include/dummy.hpp)

include(FetchContent)
include(cmake/opencv.cmake)

message("------------->" ${HEADERS})
add_executable(MyApp ${SOURCES} include/dummy.hpp)
target_include_directories(MyApp PRIVATE
        ${OPENCV_CONFIG_FILE_INCLUDE_DIR}
        ${OPENCV_MODULE_opencv_core_LOCATION}/include
        ${OPENCV_MODULE_opencv_highgui_LOCATION}/include
        ${OPENCV_MODULE_opencv_imgproc_LOCATION}/include
        ${OPENCV_MODULE_opencv_imgcodecs_LOCATION}/include
        ${OPENCV_MODULE_opencv_videoio_LOCATION}/include
        include
        )
target_link_libraries(MyApp opencv_core opencv_highgui opencv_imgproc opencv_features2d)

# Set any additional compiler flags if needed
# For example:
# target_compile_options(${PROJECT_NAME} PRIVATE -Wall -Wextra)

# If you have any external libraries to link against, use the following format:
# find_package(YourLibrary REQUIRED)
# target_link_libraries(${PROJECT_NAME} PRIVATE YourLibrary::YourLibrary)

# Optionally, you can enable testing with Google Test

# add_test(NAME MyTest COMMAND MyTestExecutable)

