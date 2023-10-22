#include <iostream>
#include <Eigen/Core>
#include <Eigen/Dense>


int main(int argc, char** argv)
{
	Eigen::Vector2d x_2d(1.2000, 1.7000);
	Eigen::Vector2d F_2d;
	Eigen::Matrix<double, 2, 2>A;
	
	for(int i = 0; i < 2; i++) {
		double x = x_2d(0,0);
		double y = x_2d(1,0);

		A(0,0) = 6 * x*x;
		A(0,1) = -2 * y;
		A(1,0) = y*y*y;
		A(1,1) = 3*x*y*y - 1;

		F_2d(0,0) = 2*x*x*x - y*y -1;
		F_2d(1,0) = x*y*y*y - y -4;

		x_2d = x_2d - A.inverse() * F_2d;

		std::cout << "X = " << x_2d << std::endl << "F(X) = " << F_2d  << std::endl << std::endl;
	}

	return 0;
}

