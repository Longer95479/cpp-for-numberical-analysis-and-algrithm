import math

print('newton');
x = 0.70;
for i in range(5):
    x = x - ((x-1)*(x-1)*(2*x-1)) / (2*(x-1)*(2*x-1) + 2*(x-1)*(x-1));    
    print(i+1, x); 

print('improved newton')
x = 0.70;
for i in range(5):                                                 
    x = x - 2*((x-1)*(x-1)*(2*x-1)) / (2*(x-1)*(2*x-1) + 2*(x-1)*(x-1));
    print(i+1, x); 

