#include <iostream>
#include <cmath>
#include <vector>
#include <Eigen/Core>
#include <Eigen/Dense>


#define A       0
#define B       1
#define ERROR   1e-4

/* define the integrand */
inline double f(double x)
{
    // return std::pow(x,3);

    /* NOTE HRER */
    if (x == 0)
        return 1;
    else
        return std::sin(x)/x;
}


int main(int argc, char ** argv)
{
    std::vector<std::vector<double>> T_table(1,std::vector<double>(1,0));

    *(T_table.begin()->begin()) = (B-A)*(f(A)+f(B))*0.5;

    for(int k = 0;;k++) {
        /* 扩展T-数表 */
        for (auto &T_row: T_table) {
            T_row.push_back(0);
        }
        T_table.push_back(std::vector<double>(1,0));

        double N = std::pow(2,k);
        double h = (B-A)/N;

        double sum = 0;
        for (int i = 0; i < N; i++) {
            sum += f(A + h*(i+0.5));
        }

        /* 计算T数表的第一行最后一个值 */
        *((T_table.begin()->begin())+k+1) = 0.5*(*((T_table.begin()->begin())+k))
                                            + 0.5*h*sum;
        /* 习题册公式有误，其 k 应改为 k+1 */
        /* 从右上往左下更新T表 */
        for (int m = 1; m < k+2; m++) {
            T_table.at(m).at(k+1-m) = (std::pow(4,m)*T_table.at(m-1).at(k+2-m) - T_table.at(m-1).at(k+1-m))
                                    / (std::pow(4,m) - 1);
        }

        double err = std::fabs(*T_table.at(k+1).begin() - *T_table.at(k).begin());
        if(err < ERROR) {
            std::cout << "given err = " << ERROR << std::endl;
            std::cout << "actual err = " << err << std::endl << std::endl;
            break;
        }

    }

    for(auto &T_row: T_table) {
        for (auto &T: T_row) {
            std::cout << T << "\t";
        }
        std::cout << std::endl;
    }

    return 0;

}
