
#include <iostream>
#include <string>
//  #include <opencv2/opencv.hpp>
#include <opencv2/core.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>

#include "dummy.hpp"

using namespace cv;
using namespace std;

int main(int argc, char **argv)
{

    // Read the image file as
    std::string image_path = "lena.jpg";
    cv::Mat image = imread(image_path, IMREAD_COLOR);

    // Error Handling
    if (image.empty())
    {
        cout << "Image File "
             << "Not Found" << endl;

        // wait for any key press
        cin.get();
        return -1;
    }

    // Show Image inside a window with
    // the name provided
    imshow("Window Name", image);

    // Wait for any keystroke
    waitKey(0);
    return 0;
}
