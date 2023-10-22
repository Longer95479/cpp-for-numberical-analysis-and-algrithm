import math

def f(x):
    return x*math.exp(x) - 1;

x_last = 0.4;
x = 0.6;

while(True):
    x_next = x - f(x)/(f(x) - f(x_last))*(x - x_last);
    x_last = x;
    x = x_next;

    print(x_last, x);

    if math.fabs(x-x_last) < 0.5e-5:
        break;


