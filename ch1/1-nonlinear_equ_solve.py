import math

a = 1.0;
b = 2.0;

while(b-a > 0.5e-5):      
    mid = (a+b)/2;         
    f_a = math.sin(a) - a*a*0.5;       
    f_b = math.sin(b) - b*b*0.5;       
    f_mid = math.sin(mid) - mid*mid*0.5;       
    if f_mid == 0:       
        break;       
    else:       
        if f_a*f_mid > 0:                                            
            a = mid;                                                  
        else:                                                        
            b = mid; 
    print(a,b,(a+b)/2);

print('end');
        


