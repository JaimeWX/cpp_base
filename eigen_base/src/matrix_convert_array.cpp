#include <iostream>
#include <Eigen/Dense>

using namespace Eigen;

int main() {
    Array44f a1, a2;
    Matrix4f m1, m2;
    m1 = a1 * a2;                     // coeffwise乘积，从数组到矩阵的隐式转换。
    a1 = m1 * m2;                     //矩阵乘积，从矩阵到数组的隐式转换。
    a2 = a1 + m1.array();             //禁止混合数组和矩阵，必须显式转换以后才可以相加
    m2 = a1.matrix() + m1;            //，并且需要显式转换。
    ArrayWrapper<Matrix4f> m1a(m1);   // m1a是m1.array（）的别名，它们共享相同的系数
    MatrixWrapper<Array44f> a1m(a1);

    std::cout << "a1: " << std::endl << a1 << std::endl;
    std::cout << "a2: " << std::endl << a2 << std::endl;
    std::cout << "m1: " << std::endl << m1 << std::endl;
    std::cout << "m2: " << std::endl << m2 << std::endl;
}

