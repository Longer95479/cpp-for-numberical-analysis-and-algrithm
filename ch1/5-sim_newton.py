import numpy as np

# solve F(X) = 0

def F(X):
    x = X[0,0];
    y = X[1,0];
    z = X[2,0];
    return np.mat([[x*y-z*z-1], [x*y*z+y*y-x*x-2], [np.exp(x)+z-np.exp(y)-3]]);

x = np.mat([[1.0], [1.0], [1.0]]);

A = np.mat([[1,1,-2],[-1,3,1],[np.exp(1), -np.exp(1), 1]]);
H = A.I;

for i in range(10):
    F_x = F(x);
    x_next = x - H*F_x;

    r = x_next - x;
    F_next = F(x_next)
    
    y = F_next - F_x;

    H = H + (r - H*y)*(r.T*H)/(r.T*H*y);
    x = x_next;

print(x);
print(F(x));

