#include <iostream>
#include <eigen3/Eigen/Dense>

using namespace Eigen;
using namespace std;

int main(int argc, char **argv) {
    Matrix2i a;
    a << 1, 2, 3, 4;
    cout << "Here is the matrix a:\n" << a << endl;
//    a = a.transpose(); // !!! do NOT do this !!!       不要这样写代码，无法运行
    a.transposeInPlace();

    cout << "and the result of the aliasing effect:\n" << a << endl;
    return 0;
}
