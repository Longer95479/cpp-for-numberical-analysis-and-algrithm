#include <iostream>
#include <Eigen/Core>
#include <Eigen/Dense>
#include <chrono>

void F(Eigen::Vector2d& F_2d, Eigen::Vector2d& x_2d)
{
	double x1 = x_2d(0,0);
	double x2 = x_2d(1,0);
	
	F_2d(0,0) = 4*x1*x1 + x2*x2 + 2*x1*x2 - x2 - 2;
	F_2d(1,0) = 2*x1*x1 + 3*x1*x2 + x2*x2 - 3;
}

int main(int argc, char** argv)
{
	Eigen::Vector2d x_2d(0.6,1.1);
	Eigen::Vector2d F_2d;
	Eigen::Vector2d x_next_2d;
	Eigen::Vector2d F_next_2d;
	Eigen::Vector2d r_2d;
	Eigen::Vector2d y_2d;
	Eigen::Matrix<double, 2, 2>A;
	
	double x1 = x_2d(0,0);
	double x2 = x_2d(1,0);

	A(0,0) = 8*x1 + 2*x2;
	A(0,1) = 2*x2 + 2*x1 - 1;
	A(1,0) = 4*x1 + 3*x2;
	A(1,1) = 3*x1 + 2*x2;
	
	std::chrono::steady_clock::time_point t1 = std::chrono::steady_clock::now();

	for(;;) {
		F(F_2d, x_2d);
		x_next_2d = x_2d - A.inverse()*F_2d;
		F(F_next_2d, x_next_2d);

		r_2d = x_next_2d - x_2d;
		y_2d = F_next_2d - F_2d;

		A = A + (y_2d - A*r_2d)/(r_2d.transpose()*r_2d) * r_2d.transpose();

		std::cout << "X = " << x_2d << std::endl << "F(X) = " << F_2d  << std::endl << std::endl;

		if(r_2d.norm() <= 0.5e-5)
			break;

		x_2d = x_next_2d;
	}
	
	std::chrono::steady_clock::time_point t2 = std::chrono::steady_clock::now();
	std::chrono::duration<double> time_used = std::chrono::duration_cast<std::chrono::duration<double>>(t2 - t1);
	std::cout << "solve time cost = " << time_used.count() << "seconds." << std::endl;

	return 0;
}

