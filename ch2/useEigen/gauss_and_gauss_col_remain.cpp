#include <Eigen/Core>
#include <Eigen/Dense>
#include <iostream>

#define COLS 3
#define ROWS 3

int main(int argc, char ** argv)
{
	Eigen::MatrixXd A(ROWS, COLS);
	// A << 1e-8,	2,		3,
	// 	 -1,	3.712,	4.623,
	// 	 -2,	1.072,	5.643;
	A << 4,		-2,		4,
		 -2,	17,		10,
		 -4,	10,		9;
	
	Eigen::MatrixXd b(ROWS, 1);
	// b << 1,
	// 	 2,
	// 	 3;
	b << 10,
		 3,
		 7;

	Eigen::MatrixXd Ab(ROWS,COLS+1);
	Ab << A, b;
	

	std::cout << "Ab = \n" << Ab << std::endl;
	std::cout << "Ab_abs = \n" << Ab.cwiseAbs() << std::endl << std::endl;

	Eigen::Index max_row;
	Eigen::Index max_col;
	for(int k = 0; k < COLS-1; k++){
		// find max row, whose main element is max in its column.
		if(!Ab(Eigen::seq(k,ROWS-1),k).cwiseAbs().maxCoeff(&max_row, &max_col))
			break;
		// we should map the max_row index of block to that of total matrix Ab.
		max_row += k;

		std::cout << "k = " << k << "\n";
		std::cout << "max row = " << max_row << "\n";

		// exchange row
		if(max_row != k) {
			std::cout << "exchanging line..." << "\n";
			Eigen::MatrixXd row_temp(1,COLS+1);
			row_temp = Ab(k, Eigen::placeholders::all);
			Ab(k, Eigen::placeholders::all) = Ab(max_row, Eigen::placeholders::all);
			Ab(max_row, Eigen::placeholders::all) = row_temp;
		}

		// update element
		std::cout << "subblock to be update = \n";
		for(auto row: Ab(Eigen::seq(k+1,ROWS-1), Eigen::placeholders::all).rowwise()) {
			// std::cout << row(0,Eigen::seq(k,COLS)) << std::endl;
			row(0,Eigen::seq(k,COLS)) += -row(0,k)/Ab(k,k) * Ab(k,Eigen::seq(k,COLS));
		}
		
		std::cout << "Ab = \n" << Ab << "\n\n";

	}

	Eigen::VectorXd x(ROWS);
	for(int k = 0; k < ROWS; k++) {
		int j = ROWS-1-k;
		for(int i = j+1; i < COLS; i++){
			Ab(j,COLS) -= Ab(j,i)*x(i,0);
		}
		x(j,0) = Ab(j,COLS)/Ab(j,j);	// I wrote A(j,j), which should be written as Ab(j,j). It cost my time.
	}

	std::cout << "x = \n" << x << std::endl;
	std::cout << "Ax = \n" << A*x << std::endl;


	return 0;

}

