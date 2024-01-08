#include <iostream>
#include <Eigen/Dense>

using namespace Eigen;

/*
    什么时候应该使用固定尺寸（例如Matrix4f），什么时候应该使用动态尺寸（例如MatrixXf）？
        在可能的地方使用固定尺寸来显示非常小的尺寸，在需要的地方使用动态尺寸来显示较大的尺寸。
        对于小尺寸，尤其是对于小于（大约）16的尺寸，使用固定尺寸对性能有极大的好处，因为它使Eigen避免了动态内存分配并展开了循环
*/

/*
    矩阵的当前大小可以通过rows（），cols（）和size（）检索。这些方法分别返回行数，列数和系数数。
    调整动态大小矩阵的大小是通过resize（）方法完成的。
    动态矩阵可以随意调整矩阵大小，固定尺寸的矩阵无法调整大小。
*/

int main() 
{
    MatrixXd m(2, 5);
    m.resize(4, 3);
    std::cout << "The matrix m is of size "
              << m.rows() << "x" << m.cols() << std::endl;
    std::cout << "It has " << m.size() << " coefficients" << std::endl;
    VectorXd v(2);
    v.resize(5);
    std::cout << "The vector v is of size " << v.size() << std::endl;
    std::cout << "As a matrix, v is of size "
              << v.rows() << "x" << v.cols() << std::endl;
}
