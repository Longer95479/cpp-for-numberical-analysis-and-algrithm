import math

# quesion 1
print('question 1');
x = 0.5;
for i in range(10):
    x = x - (x * math.exp(x) - 1) / (math.exp(x) + x*math.exp(x));
    print(i+1, x);

# quesion 2
print('question 2');
x = 1.0;
for i in range(10):
    x = x - (x*x*x - x - 1) / (3*x*x - 1);
    print(i+1, x);

# quesion
print('question 3');
x = 0.75;
for i in range(10):
    x = x - ((x-1)*(x-1)*(2*x-1)) / (2*(x-1)*(2*x-1) + 2*(x-1)*(x-1));
    print(i+1, x);



