#ifndef ERLANG_HPP_
#define ERLANG_HPP_

#include <cmath>

class Erlang
{
private:
    double call_volume_;
    int num_of_channels_;

public:
    double blocking_rate_;

    Erlang(double call_volume, int num_of_channels)
    : call_volume_(call_volume), num_of_channels_(num_of_channels){}

    Erlang(){}

    void B_formula(void);
    void C_formula(void);

    void set_param(double call_volume, int num_of_channels);

};

#endif
