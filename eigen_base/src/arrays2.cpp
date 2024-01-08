#include <iostream>
#include <eigen3/Eigen/Dense>

using namespace Eigen;
using namespace std;

int main(int argc, char **argv) {
    ArrayXXf a = ArrayXXf::Random(2,2);     // 初始化2X2  Array
    a *= 2;
    cout << "a = " << endl
         << a << endl;
    cout << "a.abs() = " << endl
         << a.abs() << endl;
    cout << "a.abs().sqrt() =" << endl
         << a.abs().sqrt() << endl;
    cout << "a.min(a.abs().sqrt()) = " << endl
         << a.min(a.abs().sqrt()) << endl;
    return 0;
}

