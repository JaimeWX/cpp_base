#include <Eigen/Dense>
#include <iostream>
using namespace std;

//! 块操作方法作为表达式的右值
//! matrix.block(i,j,p,q)
//! Block of size (p,q), starting at (i,j)
int main()
{
  Eigen::MatrixXf m(4,4);
  m <<  1, 2, 3, 4,
        5, 6, 7, 8,
        9,10,11,12,
       13,14,15,16;
  // cout << "Block in the middle" << endl;
  // cout << m.block<2,2>(1,1) << endl << endl;
  // for (int i = 1; i <= 3; ++i)
  // {
  //   cout << "Block of size " << i << "x" << i << endl;
  //   cout << m.block(0,0,i,i) << endl << endl;
  // }
  cout << m.block(1,2,2,2) << endl << endl;
}