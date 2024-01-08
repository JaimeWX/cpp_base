#include <iostream>
#include <eigen3/Eigen/Dense>

using namespace Eigen;
using namespace std;

int main(int argc, char **argv) 
{
    ArrayXXf a(3, 3);
    ArrayXXf b(3, 3);
    a << 1, 2, 3,
            4, 5, 6,
            7, 8, 9;
    b << 1, 2, 3,
            1, 2, 3,
            1, 2, 3;
    cout << "a + b = " << endl << a + b << endl << endl;
    cout << "a - 2 = " << endl << a - 2 << endl;
    cout << "a * b = " << endl << a * b << endl;
    cout << "a / b = " << endl << a / b << endl;

    return 0;
}
