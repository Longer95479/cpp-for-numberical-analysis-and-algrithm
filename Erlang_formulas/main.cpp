#include <iostream>
#include <Erlang.hpp>


int main(int argc, char ** argv)
{
    /* 话务量强度 */
    double a;
    /*信道数*/
    int m = 5;

    /* 实例化 Erlang 类 */
    Erlang Erlang_inst;

    /* 使用 Erlang B 公式和 Erlang C 公式计算不同话务量下的阻塞率，并打印 */
    std::cout << "a\tm\tErlang B\tErlang C"<< std::endl<< std::endl;
    for (int i = 1; i < 11; i++) {
        a = 0.1*i*5;

        std::cout << a << "\t";
        std::cout << m << "\t";

        /* 设置话务量和信道数 */
        Erlang_inst.set_param(a, m);

        /* 使用 Erlang B 公式计算阻塞率 */
        Erlang_inst.B_formula();
        std::cout << Erlang_inst.blocking_rate_ << "\t";

        /* 使用 Erlang C 公式计算阻塞率 */
        Erlang_inst.C_formula();
        std::cout << Erlang_inst.blocking_rate_ << "\n";

    }
    std::cout << std::endl;    

    return 0;

}
