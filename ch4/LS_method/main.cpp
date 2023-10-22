#include <iostream>
#include <cmath>
#include <Eigen/Core>
#include <Eigen/Dense>

// x^(M-1) + x^(M-2) + ...
#define M 5

/* N points */
#define N 7

int main(int argc, char ** argv)
{
    
    Eigen::VectorXd X(N);
    X << 3, 4, 5, 6, 7, 8, 9;

    Eigen::VectorXd F(N);
    F << 2.01, 2.98, 3.50, 5.02, 5.47, 6.02, 7.05;

    Eigen::MatrixXd J(N,M);
    for (int row = 0; row < F.rows(); row++) {
        for (int col = 0; col < M; col++) {
            J(row, col) = std::pow(X(row),col);
        }
    }

    Eigen::MatrixXd H(M,M);
    H = J.transpose() * J;

    Eigen::VectorXd a(M);
    a = H.colPivHouseholderQr().solve(J.transpose()*F);

    Eigen::VectorXd y(N);
    for (int i = 0; i < N; i++) {
        y(i) = 0;
        for (int j = 0; j < a.rows(); j++){
            y(i) += a(j) * pow(X(i),j);
        }
    }

    std::cout << "a = " << a.transpose() << std::endl;
    std::cout << "x = " << X.transpose() << std::endl;
    std::cout << "F = " << F.transpose() << std::endl;
    std::cout << "y = " << y.transpose() << std::endl;
    std::cout << "error = " << (F-y).transpose() << std::endl;

    return 0;

}
