#include <iostream>
#include <Erlang.hpp>


int main(int argc, char ** argv)
{
    double a = 1;
    int m = 5;
    Erlang Erlang_inst;


    std::cout << "a\tm\tErlang B\tErlang C"<< std::endl<< std::endl;
    for (int i = 1; i < 11; i++) {
        a = 0.1*i*5;

        std::cout << a << "\t";
        std::cout << m << "\t";

        Erlang_inst.set_param(a, m);

        Erlang_inst.B_formula();
        std::cout << Erlang_inst.blocking_rate_ << "\t";

        Erlang_inst.C_formula();
        std::cout << Erlang_inst.blocking_rate_ << "\n";

    }

    return 0;

}
