#include <iostream>
#include <Eigen/Dense>

using namespace Eigen;
using namespace std;

/*
    矩阵转置，共轭，共轭转置
*/

int main(int argc, char const *argv[])
{
    MatrixXcf a = MatrixXcf::Random(2,2);
    cout << "Here is the matrix a\n" << a << endl;
    cout << "Here is the matrix a^T\n" << a.transpose() << endl;
    cout << "Here is the conjugate of a\n" << a.conjugate() << endl;
    cout << "Here is the matrix a^*\n" << a.adjoint() << endl;
    return 0;
}



