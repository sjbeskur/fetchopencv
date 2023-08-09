# FindOpenCV.cmake

# Try finding an installed OpenCV
# find_package(OpenCV QUIET)
# if (OpenCV_FOUND )
#     message(STATUS "OpenCV was found ^%^@%$!#$$)$)")
# endif()

#if (NOT OpenCV_FOUND)
    message(STATUS "OpenCV not found, using FetchContent")

    FetchContent_Declare(
        opencv
        GIT_REPOSITORY https://github.com/opencv/opencv.git
        GIT_TAG 4.6.0
        GIT_SHALLOW TRUE
        GIT_PROGRESS TRUE
    )
    FetchContent_MakeAvailable(opencv)

   # include_directories(${OpenCV_INCLUDE_DIRS})
#    find_package(OpenCV REQUIRED)
    
    # set(OpenCV_FOUND TRUE CACHE INTERNAL "OpenCV found")
    # set(OpenCV_INCLUDE_DIRS ${opencv_SOURCE_DIR}/modules/core/include ${opencv_BINARY_DIR} CACHE INTERNAL "OpenCV include dirs")
    set(OpenCV_LIBRARIES opencv_core opencv_imgproc opencv_highgui CACHE INTERNAL "OpenCV libraries")

#endif()

message(STATUS "OpenCV found")
message(STATUS "OpenCV include dirs: ${OpenCV_INCLUDE_DIRS}")
message(STATUS "OpenCV libraries: ${OpenCV_LIBRARIES}")
