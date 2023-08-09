# Fetch OpenCV

#[[
The Issue with OpenCV and FetchContent is described here:
https://stackoverflow.com/questions/64156798/including-opencv-with-fetchcontent-does-not-work

With workaround here:
https://github.com/opencv/opencv/issues/20548

There are OPENCV_MODULE_opencv_{module_name}_LOCATION variables that point to the source directory of the module, so they can be used to get the included directories.
And OPENCV_CONFIG_FILE_INCLUDE_DIR is for opencv2/opencv_modules.hpp header.

]]

include(FetchContent)

message(STATUS "Fetching OpenCV from: https://github.com/opencv/opencv.git")

FetchContent_Declare(
    opencv
    GIT_REPOSITORY https://github.com/opencv/opencv.git
    GIT_TAG 4.6.0
    GIT_SHALLOW TRUE
    GIT_PROGRESS TRUE
)
FetchContent_MakeAvailable(opencv)






# Try finding an installed OpenCV
# find_package(OpenCV QUIET)
# if (OpenCV_FOUND )
#     message(STATUS "OpenCV was found ^%^@%$!#$$)$)")
# endif()
#if (NOT OpenCV_FOUND)
# message(STATUS "OpenCV not found, using FetchContent")
# 
#endif()

# set(OpenCV_FOUND TRUE CACHE INTERNAL "OpenCV found")
# set(OpenCV_INCLUDE_DIRS ${opencv_SOURCE_DIR}/modules/core/include ${opencv_BINARY_DIR} CACHE INTERNAL "OpenCV include dirs")
#set(OpenCV_LIBRARIES opencv_core opencv_imgproc opencv_highgui CACHE INTERNAL "OpenCV libraries")
#message(STATUS "OpenCV found")
#message(STATUS "OpenCV include dirs: ${OpenCV_INCLUDE_DIRS}")
#message(STATUS "OpenCV libraries: ${OpenCV_LIBRARIES}")
