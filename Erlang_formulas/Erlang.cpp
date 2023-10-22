#include <Erlang.hpp>

void Erlang::B_formula(void)
{
    double a = call_volume_;
    int m = num_of_channels_;

    double denominator = 0;
    for (int k = 0; k < m+1; k++) {
        denominator += pow(a,k)/tgamma(k+1);
    }

    double numerator = 0;
    numerator = pow(a,m)/tgamma(m+1);

    blocking_rate_ = numerator / denominator;

}


void Erlang::C_formula(void)
{
    double a = call_volume_;
    int m = num_of_channels_;

    double denominator = 0;
    for (int k = 0; k < m+1; k++) {
        denominator += pow(a,k)/tgamma(k+1);
    }
    denominator *= tgamma(m+1)*(1-a/m);
    denominator += pow(a,m);

    double numerator;
    numerator = pow(a,m);

    blocking_rate_ = numerator / denominator;

}

void Erlang::set_param(double call_volume, int num_of_channels)
{
    call_volume_ = call_volume;
    num_of_channels_ = num_of_channels;
}

